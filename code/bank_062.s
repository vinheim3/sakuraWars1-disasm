; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $062", ROMX[$4000], BANK[$62]

	ld   bc, $0401                                   ; $4000: $01 $01 $04
	rst  $10                                         ; $4003: $d7
	inc  b                                           ; $4004: $04
	ld   hl, $0b04                                   ; $4005: $21 $04 $0b
	inc  bc                                          ; $4008: $03
	ld   h, h                                        ; $4009: $64
	ld   h, [hl]                                     ; $400a: $66
	sub  c                                           ; $400b: $91
	ld   a, b                                        ; $400c: $78
	ld   d, d                                        ; $400d: $52
	ld   [hl], l                                     ; $400e: $75
	ld   h, a                                        ; $400f: $67
	ld   e, c                                        ; $4010: $59
	ld   sp, hl                                      ; $4011: $f9
	dec  c                                           ; $4012: $0d
	dec  b                                           ; $4013: $05
	or   e                                           ; $4014: $b3
	ld   [hl], c                                     ; $4015: $71
	ld   [hl], h                                     ; $4016: $74
	ld   d, b                                        ; $4017: $50
	ld   a, [hl]                                     ; $4018: $7e
	sbc  d                                           ; $4019: $9a
	ld   [hl], h                                     ; $401a: $74
	sbc  [hl]                                        ; $401b: $9e
	inc  b                                           ; $401c: $04
	xor  e                                           ; $401d: $ab
	inc  bc                                          ; $401e: $03
	db   $e4                                         ; $401f: $e4
	ld   b, $0c                                      ; $4020: $06 $0c
	dec  c                                           ; $4022: $0d
	ld   h, c                                        ; $4023: $61
	sbc  l                                           ; $4024: $9d
	ld   h, l                                        ; $4025: $65
	ld   l, a                                        ; $4026: $6f
	sub  c                                           ; $4027: $91
	ld   [hl], c                                     ; $4028: $71
	ld   l, l                                        ; $4029: $6d
	sbc  [hl]                                        ; $402a: $9e
	halt                                             ; $402b: $76
	ld   e, c                                        ; $402c: $59
	rst  $38                                         ; $402d: $ff
	rst  $38                                         ; $402e: $ff
	dec  c                                           ; $402f: $0d
	nop                                              ; $4030: $00
	ld   a, [bc]                                     ; $4031: $0a
	inc  e                                           ; $4032: $1c
	inc  bc                                          ; $4033: $03
	inc  b                                           ; $4034: $04
	inc  b                                           ; $4035: $04
	ld   bc, $8503                                   ; $4036: $01 $03 $85
	inc  b                                           ; $4039: $04
	xor  e                                           ; $403a: $ab
	inc  bc                                          ; $403b: $03
	add  d                                           ; $403c: $82
	ld   a, h                                        ; $403d: $7c
	ld   e, b                                        ; $403e: $58
	inc  bc                                          ; $403f: $03
	jr   nz, jr_062_40bf                             ; $4040: $20 $7d

	ld   d, d                                        ; $4042: $52
	ld   d, d                                        ; $4043: $52
	ld   e, b                                        ; $4044: $58
	inc  bc                                          ; $4045: $03
	db   $20, $96                                    ; $4046: $20 $96
	sbc  a                                           ; $4048: $9f
	dec  c                                           ; $4049: $0d
	dec  b                                           ; $404a: $05
	or   e                                           ; $404b: $b3
	ld   [hl], c                                     ; $404c: $71
	ld   [hl], h                                     ; $404d: $74
	ld   d, b                                        ; $404e: $50
	ld   a, [hl]                                     ; $404f: $7e
	sbc  d                                           ; $4050: $9a
	ld   l, l                                        ; $4051: $6d
	sbc  b                                           ; $4052: $98
	ld   a, l                                        ; $4053: $7d
	ld   h, l                                        ; $4054: $65
	ld   a, b                                        ; $4055: $78
	ld   d, d                                        ; $4056: $52
	sbc  l                                           ; $4057: $9d
	sbc  a                                           ; $4058: $9f
	dec  c                                           ; $4059: $0d
	ld   [bc], a                                     ; $405a: $02
	rlca                                             ; $405b: $07
	adc  l                                           ; $405c: $8d
	ld   h, a                                        ; $405d: $67
	ld   e, h                                        ; $405e: $5c
	ld   a, l                                        ; $405f: $7d
	pop  bc                                          ; $4060: $c1
	db   $e3                                         ; $4061: $e3
	ld   l, [hl]                                     ; $4062: $6e
	halt                                             ; $4063: $76
	dec  b                                           ; $4064: $05
	pop  de                                          ; $4065: $d1
	ld   d, h                                        ; $4066: $54
	ld   e, a                                        ; $4067: $5f
	ld   [hl], a                                     ; $4068: $77
	sbc  a                                           ; $4069: $9f
	dec  c                                           ; $406a: $0d
	nop                                              ; $406b: $00
	ld   a, [bc]                                     ; $406c: $0a
	inc  e                                           ; $406d: $1c
	inc  bc                                          ; $406e: $03
	nop                                              ; $406f: $00
	nop                                              ; $4070: $00
	ld   bc, $4a03                                   ; $4071: $01 $03 $4a
	ld   [bc], a                                     ; $4074: $02
	or   h                                           ; $4075: $b4
	ld   a, l                                        ; $4076: $7d
	sbc  [hl]                                        ; $4077: $9e
	ld   e, b                                        ; $4078: $58
	ld   l, e                                        ; $4079: $6b
	sub  a                                           ; $407a: $97
	ld   e, l                                        ; $407b: $5d
	ld   [bc], a                                     ; $407c: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $407d: $cf
	dec  b                                           ; $407e: $05
	ld   a, [de]                                     ; $407f: $1a
	sub  [hl]                                        ; $4080: $96
	sbc  a                                           ; $4081: $9f
	dec  c                                           ; $4082: $0d
	inc  bc                                          ; $4083: $03
	ld   l, c                                        ; $4084: $69
	ld   [bc], a                                     ; $4085: $02
	and  b                                           ; $4086: $a0
	inc  b                                           ; $4087: $04
	ld   c, $5b                                      ; $4088: $0e $5b
	ld   a, b                                        ; $408a: $78
	inc  bc                                          ; $408b: $03
	adc  e                                           ; $408c: $8b
	ld   [bc], a                                     ; $408d: $02
	sub  [hl]                                        ; $408e: $96
	and  b                                           ; $408f: $a0
	ld   h, l                                        ; $4090: $65
	ld   [hl], h                                     ; $4091: $74
	sbc  c                                           ; $4092: $99
	dec  c                                           ; $4093: $0d
	sub  a                                           ; $4094: $97
	ld   h, l                                        ; $4095: $65
	ld   d, d                                        ; $4096: $52
	ld   a, h                                        ; $4097: $7c
	sub  [hl]                                        ; $4098: $96
	sbc  a                                           ; $4099: $9f
	dec  c                                           ; $409a: $0d
	nop                                              ; $409b: $00
	ld   a, [bc]                                     ; $409c: $0a
	ld   bc, $596e                                   ; $409d: $01 $6e $59
	sub  a                                           ; $40a0: $97
	sbc  [hl]                                        ; $40a1: $9e
	ld   l, l                                        ; $40a2: $6d
	adc  h                                           ; $40a3: $8c
	ld   a, c                                        ; $40a4: $79
	inc  bc                                          ; $40a5: $03
	db   $e4                                         ; $40a6: $e4
	ld   [bc], a                                     ; $40a7: $02
	and  c                                           ; $40a8: $a1
	ld   a, h                                        ; $40a9: $7c
	inc  b                                           ; $40aa: $04
	db   $e4                                         ; $40ab: $e4
	dec  b                                           ; $40ac: $05
	ld   h, [hl]                                     ; $40ad: $66
	ld   e, d                                        ; $40ae: $5a
	dec  c                                           ; $40af: $0d
	xor  e                                           ; $40b0: $ab
	ei                                               ; $40b1: $fb
	pop  de                                          ; $40b2: $d1
	ei                                               ; $40b3: $fb
	ld   h, a                                        ; $40b4: $67
	sbc  c                                           ; $40b5: $99
	ld   a, h                                        ; $40b6: $7c
	ld   a, e                                        ; $40b7: $7b
	sbc  a                                           ; $40b8: $9f
	dec  c                                           ; $40b9: $0d
	nop                                              ; $40ba: $00
	ld   a, [bc]                                     ; $40bb: $0a
	ld   b, $a5                                      ; $40bc: $06 $a5
	dec  h                                           ; $40be: $25

jr_062_40bf:
	rrca                                             ; $40bf: $0f
	nop                                              ; $40c0: $00
	ld   bc, $6301                                   ; $40c1: $01 $01 $63
	ld   e, l                                        ; $40c4: $5d
	sub  a                                           ; $40c5: $97
	ld   h, e                                        ; $40c6: $63
	and  c                                           ; $40c7: $a1
	sbc  [hl]                                        ; $40c8: $9e
	ld   e, c                                        ; $40c9: $59
	ld   a, b                                        ; $40ca: $78
	rst  $38                                         ; $40cb: $ff
	rst  $38                                         ; $40cc: $ff
	dec  c                                           ; $40cd: $0d
	ld   [hl], d                                     ; $40ce: $72
	ld   d, d                                        ; $40cf: $52
	ld   d, h                                        ; $40d0: $54
	ld   [hl], c                                     ; $40d1: $71
	ld   e, c                                        ; $40d2: $59
	sbc  b                                           ; $40d3: $98
	sbc  [hl]                                        ; $40d4: $9e
	rst  $10                                         ; $40d5: $d7
	xor  $fb                                         ; $40d6: $ee $fb
	xor  h                                           ; $40d8: $ac
	ei                                               ; $40d9: $fb
	and  b                                           ; $40da: $a0
	dec  c                                           ; $40db: $0d
	ld   e, b                                        ; $40dc: $58
	halt                                             ; $40dd: $76
	ld   h, l                                        ; $40de: $65
	ld   l, a                                        ; $40df: $6f
	sub  c                                           ; $40e0: $91
	ld   [hl], c                                     ; $40e1: $71
	ld   l, l                                        ; $40e2: $6d
	rst  $38                                         ; $40e3: $ff
	rst  $38                                         ; $40e4: $ff
	dec  c                                           ; $40e5: $0d
	nop                                              ; $40e6: $00
	ld   a, [bc]                                     ; $40e7: $0a
	inc  e                                           ; $40e8: $1c
	inc  bc                                          ; $40e9: $03
	ld   [bc], a                                     ; $40ea: $02
	ld   [bc], a                                     ; $40eb: $02
	dec  e                                           ; $40ec: $1d
	ld   b, b                                        ; $40ed: $40
	inc  de                                          ; $40ee: $13
	inc  bc                                          ; $40ef: $03
	inc  de                                          ; $40f0: $13
	ld   bc, $2901                                   ; $40f1: $01 $01 $29
	nop                                              ; $40f4: $00
	ld   bc, $5d63                                   ; $40f5: $01 $63 $5d
	sub  a                                           ; $40f8: $97
	ld   a, l                                        ; $40f9: $7d
	ld   l, e                                        ; $40fa: $6b
	ld   h, c                                        ; $40fb: $61
	adc  h                                           ; $40fc: $8c
	ld   [hl], l                                     ; $40fd: $75
	dec  c                                           ; $40fe: $0d
	ld   e, b                                        ; $40ff: $58
	ld   [hl], c                                     ; $4100: $71
	ld   l, a                                        ; $4101: $6f
	sub  l                                           ; $4102: $95
	ld   h, c                                        ; $4103: $61
	ld   l, a                                        ; $4104: $6f
	sub  l                                           ; $4105: $95
	ld   d, d                                        ; $4106: $52
	ld   h, [hl]                                     ; $4107: $66
	sub  c                                           ; $4108: $91
	ld   a, b                                        ; $4109: $78
	ld   d, d                                        ; $410a: $52
	sbc  l                                           ; $410b: $9d
	sbc  a                                           ; $410c: $9f
	dec  c                                           ; $410d: $0d
	adc  h                                           ; $410e: $8c
	ld   h, [hl]                                     ; $410f: $66
	adc  a                                           ; $4110: $8f
	ld   a, c                                        ; $4111: $79
	ld   [bc], a                                     ; $4112: $02
	ld   h, l                                        ; $4113: $65
	ld   d, [hl]                                     ; $4114: $56
	ld   a, b                                        ; $4115: $78
	ld   h, e                                        ; $4116: $63
	ld   d, d                                        ; $4117: $52
	sbc  a                                           ; $4118: $9f
	dec  c                                           ; $4119: $0d
	nop                                              ; $411a: $00
	ld   a, [bc]                                     ; $411b: $0a
	inc  e                                           ; $411c: $1c
	inc  bc                                          ; $411d: $03
	nop                                              ; $411e: $00
	nop                                              ; $411f: $00
	ld   bc, $4a03                                   ; $4120: $01 $03 $4a
	ld   [bc], a                                     ; $4123: $02
	or   h                                           ; $4124: $b4
	ld   a, l                                        ; $4125: $7d
	sbc  [hl]                                        ; $4126: $9e
	ld   e, b                                        ; $4127: $58
	ld   l, e                                        ; $4128: $6b
	sub  a                                           ; $4129: $97
	ld   e, l                                        ; $412a: $5d
	ld   [bc], a                                     ; $412b: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $412c: $cf
	dec  b                                           ; $412d: $05
	ld   a, [de]                                     ; $412e: $1a
	sub  [hl]                                        ; $412f: $96
	sbc  a                                           ; $4130: $9f
	dec  c                                           ; $4131: $0d
	inc  bc                                          ; $4132: $03
	ld   l, c                                        ; $4133: $69
	ld   [bc], a                                     ; $4134: $02
	and  b                                           ; $4135: $a0
	inc  b                                           ; $4136: $04
	ld   c, $5b                                      ; $4137: $0e $5b
	ld   a, b                                        ; $4139: $78
	inc  bc                                          ; $413a: $03
	adc  e                                           ; $413b: $8b
	ld   [bc], a                                     ; $413c: $02
	sub  [hl]                                        ; $413d: $96
	and  b                                           ; $413e: $a0
	ld   h, l                                        ; $413f: $65
	ld   [hl], h                                     ; $4140: $74
	sbc  c                                           ; $4141: $99
	dec  c                                           ; $4142: $0d
	sub  a                                           ; $4143: $97
	ld   h, l                                        ; $4144: $65
	ld   d, d                                        ; $4145: $52
	ld   a, h                                        ; $4146: $7c
	sub  [hl]                                        ; $4147: $96
	sbc  a                                           ; $4148: $9f
	dec  c                                           ; $4149: $0d
	nop                                              ; $414a: $00
	ld   a, [bc]                                     ; $414b: $0a
	ld   bc, $596e                                   ; $414c: $01 $6e $59
	sub  a                                           ; $414f: $97
	sbc  [hl]                                        ; $4150: $9e
	ld   l, l                                        ; $4151: $6d
	adc  h                                           ; $4152: $8c
	ld   a, c                                        ; $4153: $79
	inc  bc                                          ; $4154: $03
	db   $e4                                         ; $4155: $e4
	ld   [bc], a                                     ; $4156: $02
	and  c                                           ; $4157: $a1
	ld   a, h                                        ; $4158: $7c
	inc  b                                           ; $4159: $04
	db   $e4                                         ; $415a: $e4
	dec  b                                           ; $415b: $05
	ld   h, [hl]                                     ; $415c: $66
	ld   e, d                                        ; $415d: $5a
	dec  c                                           ; $415e: $0d
	xor  e                                           ; $415f: $ab
	ei                                               ; $4160: $fb
	pop  de                                          ; $4161: $d1
	ei                                               ; $4162: $fb
	ld   h, a                                        ; $4163: $67
	sbc  c                                           ; $4164: $99
	ld   a, h                                        ; $4165: $7c
	ld   a, e                                        ; $4166: $7b
	sbc  a                                           ; $4167: $9f
	dec  c                                           ; $4168: $0d
	nop                                              ; $4169: $00
	ld   a, [bc]                                     ; $416a: $0a
	ld   b, $a5                                      ; $416b: $06 $a5
	dec  h                                           ; $416d: $25
	ld   bc, $9166                                   ; $416e: $01 $66 $91
	sbc  [hl]                                        ; $4171: $9e
	ld   [bc], a                                     ; $4172: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4173: $cf
	dec  b                                           ; $4174: $05
	ld   a, [de]                                     ; $4175: $1a
	ld   a, h                                        ; $4176: $7c
	inc  bc                                          ; $4177: $03
	ld   c, e                                        ; $4178: $4b
	add  [hl]                                        ; $4179: $86
	dec  c                                           ; $417a: $0d
	ld   [bc], a                                     ; $417b: $02
	ld   a, a                                        ; $417c: $7f
	ld   [hl], c                                     ; $417d: $71
	ld   [hl], h                                     ; $417e: $74
	adc  l                                           ; $417f: $8d
	adc  h                                           ; $4180: $8c
	ld   h, l                                        ; $4181: $65
	sub  l                                           ; $4182: $95
	ld   d, h                                        ; $4183: $54
	ld   e, c                                        ; $4184: $59
	sbc  a                                           ; $4185: $9f
	dec  c                                           ; $4186: $0d
	nop                                              ; $4187: $00
	ld   a, [bc]                                     ; $4188: $0a
	dec  c                                           ; $4189: $0d
	nop                                              ; $418a: $00
	nop                                              ; $418b: $00
	rrca                                             ; $418c: $0f
	nop                                              ; $418d: $00
	ld   bc, $5423                                   ; $418e: $01 $23 $54
	inc  e                                           ; $4191: $1c
	dec  b                                           ; $4192: $05
	nop                                              ; $4193: $00
	nop                                              ; $4194: $00
	ld   bc, $f9a1                                   ; $4195: $01 $a1 $f9
	db   $10                                         ; $4198: $10
	rst  JumpTable                                         ; $4199: $df
	db   $ec                                         ; $419a: $ec
	and  e                                           ; $419b: $a3
	ld   a, l                                        ; $419c: $7d
	and  c                                           ; $419d: $a1
	ld   a, c                                        ; $419e: $79
	dec  c                                           ; $419f: $0d
	ld   [$7d00], sp                                 ; $41a0: $08 $00 $7d
	and  c                                           ; $41a3: $a1
	sub  d                                           ; $41a4: $92
	and  c                                           ; $41a5: $a1
	sbc  a                                           ; $41a6: $9f
	dec  c                                           ; $41a7: $0d
	ld   [hl], a                                     ; $41a8: $77
	ld   a, b                                        ; $41a9: $78
	ld   d, d                                        ; $41aa: $52
	ld   h, l                                        ; $41ab: $65
	ld   l, l                                        ; $41ac: $6d
	and  c                                           ; $41ad: $a1
	ld   sp, hl                                      ; $41ae: $f9
	dec  c                                           ; $41af: $0d
	nop                                              ; $41b0: $00
	ld   a, [bc]                                     ; $41b1: $0a
	rrca                                             ; $41b2: $0f
	inc  bc                                          ; $41b3: $03
	inc  b                                           ; $41b4: $04
	ld   bc, $8b03                                   ; $41b5: $01 $03 $8b
	ld   a, l                                        ; $41b8: $7d
	rst  $38                                         ; $41b9: $ff
	rst  $38                                         ; $41ba: $ff
	rst  $38                                         ; $41bb: $ff
	rst  $38                                         ; $41bc: $ff
	dec  c                                           ; $41bd: $0d
	ld   e, c                                        ; $41be: $59
	ld   e, l                                        ; $41bf: $5d
	ld   e, c                                        ; $41c0: $59
	ld   e, l                                        ; $41c1: $5d
	ld   h, l                                        ; $41c2: $65
	ld   e, c                                        ; $41c3: $59
	ld   h, [hl]                                     ; $41c4: $66
	ld   e, c                                        ; $41c5: $59
	rst  $38                                         ; $41c6: $ff
	rst  $38                                         ; $41c7: $ff
	dec  c                                           ; $41c8: $0d
	halt                                             ; $41c9: $76
	sbc  [hl]                                        ; $41ca: $9e
	ld   d, d                                        ; $41cb: $52
	ld   d, h                                        ; $41cc: $54
	ld   h, c                                        ; $41cd: $61
	halt                                             ; $41ce: $76
	ld   a, b                                        ; $41cf: $78
	and  c                                           ; $41d0: $a1
	ld   l, [hl]                                     ; $41d1: $6e
	ld   e, a                                        ; $41d2: $5f
	ld   [hl], a                                     ; $41d3: $77
	rst  $38                                         ; $41d4: $ff
	rst  $38                                         ; $41d5: $ff
	dec  c                                           ; $41d6: $0d
	nop                                              ; $41d7: $00
	ld   a, [bc]                                     ; $41d8: $0a
	inc  e                                           ; $41d9: $1c
	dec  b                                           ; $41da: $05
	ld   [bc], a                                     ; $41db: $02
	ld   [bc], a                                     ; $41dc: $02
	ld   bc, $fb50                                   ; $41dd: $01 $50 $fb
	ld   l, e                                        ; $41e0: $6b
	sbc  d                                           ; $41e1: $9a
	and  a                                           ; $41e2: $a7
	jp   nz, $9f92                                   ; $41e3: $c2 $92 $9f

	dec  c                                           ; $41e6: $0d
	cp   d                                           ; $41e7: $ba
	rst  JumpTable                                         ; $41e8: $df
	push af                                          ; $41e9: $f5
	sbc  [hl]                                        ; $41ea: $9e
	cp   d                                           ; $41eb: $ba
	rst  JumpTable                                         ; $41ec: $df
	push af                                          ; $41ed: $f5
	sbc  a                                           ; $41ee: $9f
	dec  c                                           ; $41ef: $0d
	ld   [bc], a                                     ; $41f0: $02
	and  l                                           ; $41f1: $a5
	inc  b                                           ; $41f2: $04
	add  hl, hl                                      ; $41f3: $29
	ld   e, c                                        ; $41f4: $59
	sub  a                                           ; $41f5: $97
	ld   [bc], a                                     ; $41f6: $02
	and  c                                           ; $41f7: $a1
	and  b                                           ; $41f8: $a0
	ld   [hl], d                                     ; $41f9: $72
	ld   e, a                                        ; $41fa: $5f
	sbc  c                                           ; $41fb: $99
	sbc  l                                           ; $41fc: $9d
	sbc  a                                           ; $41fd: $9f
	dec  c                                           ; $41fe: $0d
	nop                                              ; $41ff: $00
	ld   a, [bc]                                     ; $4200: $0a
	rrca                                             ; $4201: $0f
	inc  bc                                          ; $4202: $03
	nop                                              ; $4203: $00
	ld   bc, $546b                                   ; $4204: $01 $6b $54
	ld   h, l                                        ; $4207: $65
	ld   [hl], h                                     ; $4208: $74
	ld   l, a                                        ; $4209: $6f
	sub  l                                           ; $420a: $95
	ld   d, h                                        ; $420b: $54
	ld   l, [hl]                                     ; $420c: $6e
	ld   d, d                                        ; $420d: $52
	sbc  a                                           ; $420e: $9f
	dec  c                                           ; $420f: $0d
	ld   [bc], a                                     ; $4210: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4211: $cf
	dec  b                                           ; $4212: $05
	ld   a, [de]                                     ; $4213: $1a
	sbc  a                                           ; $4214: $9f
	dec  c                                           ; $4215: $0d
	nop                                              ; $4216: $00
	ld   a, [bc]                                     ; $4217: $0a
	dec  c                                           ; $4218: $0d
	nop                                              ; $4219: $00
	nop                                              ; $421a: $00
	rrca                                             ; $421b: $0f
	nop                                              ; $421c: $00
	ld   bc, $020c                                   ; $421d: $01 $0c $02
	rlca                                             ; $4220: $07
	sub  c                                           ; $4221: $91
	ld   h, $03                                      ; $4222: $26 $03
	rst  $38                                         ; $4224: $ff
	ld   bc, $2001                                   ; $4225: $01 $01 $20
	nop                                              ; $4228: $00
	ld   c, $4c                                      ; $4229: $0e $4c
	inc  e                                           ; $422b: $1c
	inc  bc                                          ; $422c: $03
	nop                                              ; $422d: $00
	nop                                              ; $422e: $00
	ld   bc, $5490                                   ; $422f: $01 $90 $54
	inc  bc                                          ; $4232: $03
	ld   l, h                                        ; $4233: $6c
	ld   h, l                                        ; $4234: $65
	sbc  [hl]                                        ; $4235: $9e
	inc  bc                                          ; $4236: $03
	and  e                                           ; $4237: $a3
	ld   e, l                                        ; $4238: $5d
	ld   [bc], a                                     ; $4239: $02
	ld   h, l                                        ; $423a: $65
	ld   d, [hl]                                     ; $423b: $56
	ld   [hl], h                                     ; $423c: $74
	dec  c                                           ; $423d: $0d
	ld   l, a                                        ; $423e: $6f
	sub  l                                           ; $423f: $95
	ld   d, h                                        ; $4240: $54
	ld   l, [hl]                                     ; $4241: $6e
	ld   d, d                                        ; $4242: $52
	sbc  [hl]                                        ; $4243: $9e
	ld   [$5d00], sp                                 ; $4244: $08 $00 $5d
	and  c                                           ; $4247: $a1
	sbc  a                                           ; $4248: $9f
	dec  c                                           ; $4249: $0d
	ld   h, [hl]                                     ; $424a: $66
	sub  c                                           ; $424b: $91
	sbc  [hl]                                        ; $424c: $9e
	inc  bc                                          ; $424d: $03
	ld   l, b                                        ; $424e: $68
	ld   a, h                                        ; $424f: $7c
	ld   b, $08                                      ; $4250: $06 $08
	sub  [hl]                                        ; $4252: $96
	sbc  a                                           ; $4253: $9f
	dec  c                                           ; $4254: $0d
	nop                                              ; $4255: $00
	ld   a, [bc]                                     ; $4256: $0a
	ld   b, $d1                                      ; $4257: $06 $d1
	ld   h, $0e                                      ; $4259: $26 $0e
	ld   c, h                                        ; $425b: $4c
	inc  e                                           ; $425c: $1c
	inc  bc                                          ; $425d: $03
	inc  bc                                          ; $425e: $03
	inc  bc                                          ; $425f: $03
	dec  e                                           ; $4260: $1d
	ld   b, b                                        ; $4261: $40
	inc  de                                          ; $4262: $13
	inc  bc                                          ; $4263: $03
	inc  de                                          ; $4264: $13
	ld   bc, $2803                                   ; $4265: $01 $03 $28
	nop                                              ; $4268: $00
	ld   bc, $0008                                   ; $4269: $01 $08 $00
	ld   e, l                                        ; $426c: $5d
	and  c                                           ; $426d: $a1
	sbc  a                                           ; $426e: $9f
	ld   h, a                                        ; $426f: $67
	ld   h, d                                        ; $4270: $62
	ld   d, d                                        ; $4271: $52
	sbc  l                                           ; $4272: $9d
	sbc  a                                           ; $4273: $9f
	dec  c                                           ; $4274: $0d
	cp   e                                           ; $4275: $bb
	pop  de                                          ; $4276: $d1
	db   $ec                                         ; $4277: $ec
	inc  bc                                          ; $4278: $03
	ld   c, d                                        ; $4279: $4a
	ld   [bc], a                                     ; $427a: $02
	or   h                                           ; $427b: $b4
	ld   h, [hl]                                     ; $427c: $66
	sub  c                                           ; $427d: $91
	ld   a, b                                        ; $427e: $78
	ld   d, d                                        ; $427f: $52
	sbc  a                                           ; $4280: $9f
	dec  c                                           ; $4281: $0d
	nop                                              ; $4282: $00
	dec  b                                           ; $4283: $05
	ld   b, b                                        ; $4284: $40
	rst  $38                                         ; $4285: $ff
	ld   bc, $0000                                   ; $4286: $01 $00 $00
	ld   bc, $9166                                   ; $4289: $01 $66 $91
	sbc  [hl]                                        ; $428c: $9e
	inc  bc                                          ; $428d: $03
	ld   l, b                                        ; $428e: $68
	ld   a, h                                        ; $428f: $7c
	ld   b, $08                                      ; $4290: $06 $08
	sub  [hl]                                        ; $4292: $96
	sbc  a                                           ; $4293: $9f
	dec  c                                           ; $4294: $0d
	nop                                              ; $4295: $00
	ld   a, [bc]                                     ; $4296: $0a
	ld   b, $d1                                      ; $4297: $06 $d1
	ld   h, $1c                                      ; $4299: $26 $1c
	inc  bc                                          ; $429b: $03
	nop                                              ; $429c: $00
	nop                                              ; $429d: $00
	ld   bc, $6803                                   ; $429e: $01 $03 $68
	ld   a, h                                        ; $42a1: $7c
	ld   b, $08                                      ; $42a2: $06 $08
	ld   a, l                                        ; $42a4: $7d
	sbc  [hl]                                        ; $42a5: $9e
	ld   bc, $0407                                   ; $42a6: $01 $07 $04
	rst  $28                                         ; $42a9: $ef
	ld   a, b                                        ; $42aa: $78
	inc  b                                           ; $42ab: $04
	rst  $28                                         ; $42ac: $ef
	ld   a, b                                        ; $42ad: $78
	ld   [bc], a                                     ; $42ae: $02
	jp   nz, $5661                                   ; $42af: $c2 $61 $56

	sbc  c                                           ; $42b2: $99
	dec  c                                           ; $42b3: $0d
	add  h                                           ; $42b4: $84
	ld   e, e                                        ; $42b5: $5b
	adc  l                                           ; $42b6: $8d
	ld   a, b                                        ; $42b7: $78
	inc  bc                                          ; $42b8: $03
	and  l                                           ; $42b9: $a5
	ld   bc, $9f08                                   ; $42ba: $01 $08 $9f
	dec  c                                           ; $42bd: $0d
	ld   h, c                                        ; $42be: $61
	sbc  d                                           ; $42bf: $9a
	ld   a, l                                        ; $42c0: $7d
	sbc  [hl]                                        ; $42c1: $9e
	ld   [hl], a                                     ; $42c2: $77
	ld   d, h                                        ; $42c3: $54
	ld   d, d                                        ; $42c4: $52
	ld   d, h                                        ; $42c5: $54
	ld   [bc], a                                     ; $42c6: $02
	jp   Jump_062_6559                               ; $42c7: $c3 $59 $65


	sub  a                                           ; $42ca: $97
	ld   sp, hl                                      ; $42cb: $f9
	dec  c                                           ; $42cc: $0d
	nop                                              ; $42cd: $00
	ld   a, [bc]                                     ; $42ce: $0a
	rrca                                             ; $42cf: $0f
	nop                                              ; $42d0: $00
	ld   bc, $0401                                   ; $42d1: $01 $01 $04
	rst  $28                                         ; $42d4: $ef
	sbc  [hl]                                        ; $42d5: $9e
	ld   [bc], a                                     ; $42d6: $02
	jp   nz, $5661                                   ; $42d7: $c2 $61 $56

	sbc  c                                           ; $42da: $99
	sbc  [hl]                                        ; $42db: $9e
	add  h                                           ; $42dc: $84
	ld   e, e                                        ; $42dd: $5b
	adc  l                                           ; $42de: $8d
	ld   a, b                                        ; $42df: $78
	inc  bc                                          ; $42e0: $03
	and  l                                           ; $42e1: $a5
	sbc  a                                           ; $42e2: $9f
	dec  c                                           ; $42e3: $0d
	ld   d, b                                        ; $42e4: $50
	ld   l, a                                        ; $42e5: $6f
	ld   h, c                                        ; $42e6: $61
	ld   l, a                                        ; $42e7: $6f
	ld   e, c                                        ; $42e8: $59
	sub  a                                           ; $42e9: $97
	ld   [bc], a                                     ; $42ea: $02
	jp   nz, $5661                                   ; $42eb: $c2 $61 $56

	sbc  c                                           ; $42ee: $99
	rst  $38                                         ; $42ef: $ff
	rst  $38                                         ; $42f0: $ff
	dec  c                                           ; $42f1: $0d
	halt                                             ; $42f2: $76
	sbc  [hl]                                        ; $42f3: $9e
	ld   d, d                                        ; $42f4: $52
	ld   d, h                                        ; $42f5: $54
	ld   h, c                                        ; $42f6: $61
	halt                                             ; $42f7: $76
	ld   a, l                                        ; $42f8: $7d
	rst  $38                                         ; $42f9: $ff
	rst  $38                                         ; $42fa: $ff
	dec  c                                           ; $42fb: $0d
	nop                                              ; $42fc: $00
	ld   a, [bc]                                     ; $42fd: $0a
	add  hl, de                                      ; $42fe: $19
	dec  b                                           ; $42ff: $05
	inc  bc                                          ; $4300: $03
	ld   [bc], a                                     ; $4301: $02
	ld   c, [hl]                                     ; $4302: $4e
	ld   sp, hl                                      ; $4303: $f9
	nop                                              ; $4304: $00
	nop                                              ; $4305: $00
	ld   d, h                                        ; $4306: $54
	ld   a, b                                        ; $4307: $78
	ld   h, e                                        ; $4308: $63
	sbc  d                                           ; $4309: $9a
	ld   [hl], h                                     ; $430a: $74
	sbc  c                                           ; $430b: $99
	ld   sp, hl                                      ; $430c: $f9
	nop                                              ; $430d: $00
	ld   bc, $7704                                   ; $430e: $01 $04 $77
	ld   a, h                                        ; $4311: $7c
	ld   [bc], a                                     ; $4312: $02
	inc  bc                                          ; $4313: $03
	ld   sp, hl                                      ; $4314: $f9
	nop                                              ; $4315: $00
	ld   [bc], a                                     ; $4316: $02
	rlca                                             ; $4317: $07
	sla  a                                           ; $4318: $cb $27
	ld   [bc], a                                     ; $431a: $02
	inc  bc                                          ; $431b: $03
	ld   bc, $2000                                   ; $431c: $01 $00 $20
	nop                                              ; $431f: $00
	rlca                                             ; $4320: $07
	ld   c, $28                                      ; $4321: $0e $28
	ld   [bc], a                                     ; $4323: $02
	inc  bc                                          ; $4324: $03
	ld   bc, $2001                                   ; $4325: $01 $01 $20
	nop                                              ; $4328: $00
	rlca                                             ; $4329: $07
	ld   b, [hl]                                     ; $432a: $46
	jr   z, @+$04                                    ; $432b: $28 $02

	inc  bc                                          ; $432d: $03
	ld   bc, $2002                                   ; $432e: $01 $02 $20
	nop                                              ; $4331: $00
	ld   b, $6c                                      ; $4332: $06 $6c
	daa                                              ; $4334: $27
	rrca                                             ; $4335: $0f
	inc  bc                                          ; $4336: $03
	nop                                              ; $4337: $00
	ld   bc, $599d                                   ; $4338: $01 $9d $59
	sub  a                                           ; $433b: $97
	ld   a, b                                        ; $433c: $78
	ld   d, d                                        ; $433d: $52
	ld   a, h                                        ; $433e: $7c
	ld   sp, hl                                      ; $433f: $f9
	dec  c                                           ; $4340: $0d
	pop  bc                                          ; $4341: $c1
	db   $e3                                         ; $4342: $e3
	ld   a, e                                        ; $4343: $7b
	db   $fc                                         ; $4344: $fc
	sbc  a                                           ; $4345: $9f
	dec  c                                           ; $4346: $0d
	inc  bc                                          ; $4347: $03
	ret  z                                           ; $4348: $c8

	ld   a, l                                        ; $4349: $7d
	sbc  [hl]                                        ; $434a: $9e
	ld   [bc], a                                     ; $434b: $02
	sub  l                                           ; $434c: $95
	inc  b                                           ; $434d: $04
	jr   jr_062_43aa                                 ; $434e: $18 $5a

	ld   [hl], d                                     ; $4350: $72
	ld   d, d                                        ; $4351: $52
	ld   l, l                                        ; $4352: $6d
	sbc  l                                           ; $4353: $9d
	sbc  a                                           ; $4354: $9f
	dec  c                                           ; $4355: $0d
	nop                                              ; $4356: $00
	ld   a, [bc]                                     ; $4357: $0a
	ld   bc, $6b58                                   ; $4358: $01 $58 $6b
	sub  a                                           ; $435b: $97
	ld   e, l                                        ; $435c: $5d
	ld   bc, $0207                                   ; $435d: $01 $07 $02
	ld   c, [hl]                                     ; $4360: $4e
	ld   bc, $6608                                   ; $4361: $01 $08 $66
	sub  c                                           ; $4364: $91
	ld   a, b                                        ; $4365: $78
	ld   d, d                                        ; $4366: $52
	dec  c                                           ; $4367: $0d
	ld   e, c                                        ; $4368: $59
	ld   h, l                                        ; $4369: $65
	sub  a                                           ; $436a: $97
	rst  $38                                         ; $436b: $ff
	rst  $38                                         ; $436c: $ff
	dec  c                                           ; $436d: $0d
	inc  b                                           ; $436e: $04
	rst  $28                                         ; $436f: $ef
	inc  b                                           ; $4370: $04
	dec  bc                                          ; $4371: $0b
	ld   a, c                                        ; $4372: $79
	ld   [bc], a                                     ; $4373: $02
	ld   c, [hl]                                     ; $4374: $4e
	and  b                                           ; $4375: $a0
	ld   d, h                                        ; $4376: $54
	ld   l, l                                        ; $4377: $6d
	ld   [hl], c                                     ; $4378: $71
	ld   [hl], h                                     ; $4379: $74
	ld   d, d                                        ; $437a: $52
	sbc  c                                           ; $437b: $99
	ld   a, h                                        ; $437c: $7c
	sbc  a                                           ; $437d: $9f
	dec  c                                           ; $437e: $0d
	nop                                              ; $437f: $00
	ld   a, [bc]                                     ; $4380: $0a
	ld   bc, $766e                                   ; $4381: $01 $6e $76
	ld   h, l                                        ; $4384: $65
	ld   l, l                                        ; $4385: $6d
	sub  a                                           ; $4386: $97
	sbc  [hl]                                        ; $4387: $9e
	inc  bc                                          ; $4388: $03
	xor  c                                           ; $4389: $a9
	ld   e, c                                        ; $438a: $59
	ld   h, l                                        ; $438b: $65
	sub  a                                           ; $438c: $97
	ld   sp, hl                                      ; $438d: $f9
	dec  c                                           ; $438e: $0d
	nop                                              ; $438f: $00
	ld   a, [bc]                                     ; $4390: $0a
	ld   b, $d8                                      ; $4391: $06 $d8
	jr   z, jr_062_43a4                              ; $4393: $28 $0f

	nop                                              ; $4395: $00
	ld   bc, $0201                                   ; $4396: $01 $01 $02
	ld   c, [hl]                                     ; $4399: $4e
	ld   h, [hl]                                     ; $439a: $66
	sub  c                                           ; $439b: $91
	ld   a, b                                        ; $439c: $78
	ld   d, d                                        ; $439d: $52
	ld   [hl], l                                     ; $439e: $75
	ld   h, a                                        ; $439f: $67
	ld   e, c                                        ; $43a0: $59
	ld   sp, hl                                      ; $43a1: $f9
	dec  c                                           ; $43a2: $0d
	ld   d, b                                        ; $43a3: $50

jr_062_43a4:
	adc  h                                           ; $43a4: $8c
	sbc  b                                           ; $43a5: $98
	inc  bc                                          ; $43a6: $03
	ld   h, l                                        ; $43a7: $65
	inc  bc                                          ; $43a8: $03
	ld   l, e                                        ; $43a9: $6b

jr_062_43aa:
	ld   e, l                                        ; $43aa: $5d
	ld   a, b                                        ; $43ab: $78
	ld   d, d                                        ; $43ac: $52
	ld   e, c                                        ; $43ad: $59
	sub  a                                           ; $43ae: $97
	sbc  [hl]                                        ; $43af: $9e
	dec  c                                           ; $43b0: $0d
	add  h                                           ; $43b1: $84
	ld   e, e                                        ; $43b2: $5b
	adc  l                                           ; $43b3: $8d
	ld   a, c                                        ; $43b4: $79
	ld   [bc], a                                     ; $43b5: $02
	jp   nz, $5661                                   ; $43b6: $c2 $61 $56

	sbc  c                                           ; $43b9: $99
	halt                                             ; $43ba: $76
	ld   e, c                                        ; $43bb: $59
	rst  $38                                         ; $43bc: $ff
	rst  $38                                         ; $43bd: $ff
	dec  c                                           ; $43be: $0d
	nop                                              ; $43bf: $00
	ld   a, [bc]                                     ; $43c0: $0a
	rrca                                             ; $43c1: $0f
	inc  bc                                          ; $43c2: $03
	nop                                              ; $43c3: $00
	ld   bc, $766e                                   ; $43c4: $01 $6e $76
	ld   h, l                                        ; $43c7: $65
	ld   l, l                                        ; $43c8: $6d
	sub  a                                           ; $43c9: $97
	sbc  [hl]                                        ; $43ca: $9e
	inc  bc                                          ; $43cb: $03
	xor  c                                           ; $43cc: $a9
	ld   e, c                                        ; $43cd: $59
	ld   h, l                                        ; $43ce: $65
	sub  a                                           ; $43cf: $97
	ld   sp, hl                                      ; $43d0: $f9
	dec  c                                           ; $43d1: $0d
	nop                                              ; $43d2: $00
	ld   a, [bc]                                     ; $43d3: $0a
	ld   b, $d8                                      ; $43d4: $06 $d8
	jr   z, jr_062_43e7                              ; $43d6: $28 $0f

	nop                                              ; $43d8: $00
	ld   bc, $0401                                   ; $43d9: $01 $01 $04
	rst  $28                                         ; $43dc: $ef
	inc  b                                           ; $43dd: $04
	dec  bc                                          ; $43de: $0b
	ld   a, c                                        ; $43df: $79
	ld   l, [hl]                                     ; $43e0: $6e
	sbc  d                                           ; $43e1: $9a
	ld   e, c                                        ; $43e2: $59
	ld   e, d                                        ; $43e3: $5a
	dec  c                                           ; $43e4: $0d
	ld   d, h                                        ; $43e5: $54
	ld   a, b                                        ; $43e6: $78

jr_062_43e7:
	ld   h, e                                        ; $43e7: $63
	sbc  d                                           ; $43e8: $9a
	ld   [hl], h                                     ; $43e9: $74
	ld   d, d                                        ; $43ea: $52
	sbc  c                                           ; $43eb: $99
	and  c                                           ; $43ec: $a1
	ld   h, [hl]                                     ; $43ed: $66
	sub  c                                           ; $43ee: $91
	dec  c                                           ; $43ef: $0d
	ld   a, b                                        ; $43f0: $78
	ld   d, d                                        ; $43f1: $52
	ld   [hl], l                                     ; $43f2: $75
	ld   h, a                                        ; $43f3: $67
	ld   e, c                                        ; $43f4: $59
	ld   sp, hl                                      ; $43f5: $f9
	dec  c                                           ; $43f6: $0d
	nop                                              ; $43f7: $00
	ld   a, [bc]                                     ; $43f8: $0a
	rrca                                             ; $43f9: $0f
	inc  bc                                          ; $43fa: $03
	nop                                              ; $43fb: $00
	ld   bc, $766e                                   ; $43fc: $01 $6e $76
	ld   h, l                                        ; $43ff: $65
	ld   l, l                                        ; $4400: $6d
	sub  a                                           ; $4401: $97
	sbc  [hl]                                        ; $4402: $9e
	inc  bc                                          ; $4403: $03
	xor  c                                           ; $4404: $a9
	ld   e, c                                        ; $4405: $59
	ld   h, l                                        ; $4406: $65
	sub  a                                           ; $4407: $97
	ld   sp, hl                                      ; $4408: $f9
	dec  c                                           ; $4409: $0d
	nop                                              ; $440a: $00
	ld   a, [bc]                                     ; $440b: $0a
	ld   b, $d2                                      ; $440c: $06 $d2
	dec  l                                           ; $440e: $2d
	rrca                                             ; $440f: $0f
	nop                                              ; $4410: $00
	ld   bc, $8401                                   ; $4411: $01 $01 $84
	ld   e, e                                        ; $4414: $5b
	adc  l                                           ; $4415: $8d
	ld   a, b                                        ; $4416: $78
	inc  bc                                          ; $4417: $03
	and  l                                           ; $4418: $a5
	rst  $38                                         ; $4419: $ff
	rst  $38                                         ; $441a: $ff
	dec  c                                           ; $441b: $0d
	ld   l, e                                        ; $441c: $6b
	sbc  d                                           ; $441d: $9a
	ld   a, l                                        ; $441e: $7d
	sbc  [hl]                                        ; $441f: $9e
	inc  b                                           ; $4420: $04
	ld   [hl], a                                     ; $4421: $77
	inc  bc                                          ; $4422: $03
	dec  de                                          ; $4423: $1b
	sbc  b                                           ; $4424: $98
	ld   [bc], a                                     ; $4425: $02
	inc  bc                                          ; $4426: $03
	ld   h, [hl]                                     ; $4427: $66
	sub  c                                           ; $4428: $91
	ld   a, b                                        ; $4429: $78
	ld   d, d                                        ; $442a: $52
	dec  c                                           ; $442b: $0d
	ld   [hl], l                                     ; $442c: $75
	ld   h, l                                        ; $442d: $65
	sub  l                                           ; $442e: $95
	ld   d, h                                        ; $442f: $54
	ld   e, c                                        ; $4430: $59
	sbc  a                                           ; $4431: $9f
	dec  c                                           ; $4432: $0d
	nop                                              ; $4433: $00
	ld   a, [bc]                                     ; $4434: $0a
	rrca                                             ; $4435: $0f
	inc  bc                                          ; $4436: $03
	nop                                              ; $4437: $00
	ld   bc, $9a6b                                   ; $4438: $01 $6b $9a
	sub  b                                           ; $443b: $90
	ld   [bc], a                                     ; $443c: $02
	ld   h, l                                        ; $443d: $65
	ld   d, [hl]                                     ; $443e: $56
	ld   l, l                                        ; $443f: $6d
	sbc  l                                           ; $4440: $9d
	sbc  a                                           ; $4441: $9f
	dec  c                                           ; $4442: $0d
	ld   [hl], l                                     ; $4443: $75
	sub  b                                           ; $4444: $90
	ld   a, e                                        ; $4445: $7b
	inc  b                                           ; $4446: $04
	ld   [hl], a                                     ; $4447: $77
	ld   a, h                                        ; $4448: $7c
	ld   a, b                                        ; $4449: $78
	ld   d, d                                        ; $444a: $52
	inc  b                                           ; $444b: $04
	xor  d                                           ; $444c: $aa
	ld   [hl], l                                     ; $444d: $75
	sub  b                                           ; $444e: $90
	dec  c                                           ; $444f: $0d
	ld   [bc], a                                     ; $4450: $02
	jp   nz, $5661                                   ; $4451: $c2 $61 $56

	sbc  c                                           ; $4454: $99
	sub  a                                           ; $4455: $97
	ld   h, l                                        ; $4456: $65
	ld   d, d                                        ; $4457: $52
	ld   a, h                                        ; $4458: $7c
	sub  [hl]                                        ; $4459: $96
	sbc  a                                           ; $445a: $9f
	dec  c                                           ; $445b: $0d
	nop                                              ; $445c: $00
	ld   a, [bc]                                     ; $445d: $0a
	ld   bc, $c803                                   ; $445e: $01 $03 $c8
	sbc  [hl]                                        ; $4461: $9e
	dec  b                                           ; $4462: $05
	pop  de                                          ; $4463: $d1
	ld   d, h                                        ; $4464: $54
	and  c                                           ; $4465: $a1
	ld   l, [hl]                                     ; $4466: $6e
	ld   e, a                                        ; $4467: $5f
	ld   [hl], a                                     ; $4468: $77
	rst  $38                                         ; $4469: $ff
	rst  $38                                         ; $446a: $ff
	dec  c                                           ; $446b: $0d
	ld   bc, $0207                                   ; $446c: $01 $07 $02
	ld   c, [hl]                                     ; $446f: $4e
	ld   bc, $6608                                   ; $4470: $01 $08 $66
	sub  c                                           ; $4473: $91
	ld   a, b                                        ; $4474: $78
	ld   d, d                                        ; $4475: $52
	ld   e, c                                        ; $4476: $59
	ld   h, l                                        ; $4477: $65
	sub  a                                           ; $4478: $97
	sbc  a                                           ; $4479: $9f
	dec  c                                           ; $447a: $0d
	inc  b                                           ; $447b: $04
	rst  $28                                         ; $447c: $ef
	inc  b                                           ; $447d: $04
	dec  bc                                          ; $447e: $0b
	ld   a, c                                        ; $447f: $79
	ld   [bc], a                                     ; $4480: $02
	ld   c, [hl]                                     ; $4481: $4e
	and  b                                           ; $4482: $a0
	ld   d, h                                        ; $4483: $54
	ld   l, l                                        ; $4484: $6d
	ld   [hl], c                                     ; $4485: $71
	ld   [hl], h                                     ; $4486: $74
	ld   d, d                                        ; $4487: $52
	sbc  c                                           ; $4488: $99
	ld   a, h                                        ; $4489: $7c
	sbc  a                                           ; $448a: $9f
	dec  c                                           ; $448b: $0d
	nop                                              ; $448c: $00
	ld   a, [bc]                                     ; $448d: $0a
	ld   bc, $766e                                   ; $448e: $01 $6e $76
	ld   h, l                                        ; $4491: $65
	ld   l, l                                        ; $4492: $6d
	sub  a                                           ; $4493: $97
	sbc  [hl]                                        ; $4494: $9e
	inc  bc                                          ; $4495: $03
	xor  c                                           ; $4496: $a9
	ld   e, c                                        ; $4497: $59
	ld   h, l                                        ; $4498: $65
	sub  a                                           ; $4499: $97
	ld   sp, hl                                      ; $449a: $f9
	dec  c                                           ; $449b: $0d
	nop                                              ; $449c: $00
	ld   a, [bc]                                     ; $449d: $0a
	ld   b, $d8                                      ; $449e: $06 $d8
	jr   z, jr_062_44bb                              ; $44a0: $28 $19

	dec  b                                           ; $44a2: $05
	inc  bc                                          ; $44a3: $03
	inc  b                                           ; $44a4: $04
	rst  $10                                         ; $44a5: $d7
	inc  b                                           ; $44a6: $04
	ld   hl, $0b04                                   ; $44a7: $21 $04 $0b
	inc  bc                                          ; $44aa: $03
	ld   h, h                                        ; $44ab: $64
	ld   e, d                                        ; $44ac: $5a
	rst  $38                                         ; $44ad: $ff
	rst  $38                                         ; $44ae: $ff
	nop                                              ; $44af: $00
	nop                                              ; $44b0: $00
	ld   [bc], a                                     ; $44b1: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44b2: $cf
	dec  b                                           ; $44b3: $05
	ld   a, [de]                                     ; $44b4: $1a
	ld   h, e                                        ; $44b5: $63
	and  c                                           ; $44b6: $a1
	ld   e, d                                        ; $44b7: $5a
	rst  $38                                         ; $44b8: $ff
	rst  $38                                         ; $44b9: $ff
	nop                                              ; $44ba: $00

jr_062_44bb:
	ld   bc, $ecdf                                   ; $44bb: $01 $df $ec
	and  e                                           ; $44be: $a3
	ld   h, e                                        ; $44bf: $63
	and  c                                           ; $44c0: $a1
	ld   e, d                                        ; $44c1: $5a
	rst  $38                                         ; $44c2: $ff
	rst  $38                                         ; $44c3: $ff
	nop                                              ; $44c4: $00
	ld   [bc], a                                     ; $44c5: $02
	rlca                                             ; $44c6: $07
	sub  b                                           ; $44c7: $90
	add  hl, hl                                      ; $44c8: $29
	ld   [bc], a                                     ; $44c9: $02
	inc  bc                                          ; $44ca: $03
	ld   bc, $2000                                   ; $44cb: $01 $00 $20
	nop                                              ; $44ce: $00
	rlca                                             ; $44cf: $07
	ld   b, h                                        ; $44d0: $44
	dec  hl                                          ; $44d1: $2b
	ld   [bc], a                                     ; $44d2: $02
	inc  bc                                          ; $44d3: $03
	ld   bc, $2001                                   ; $44d4: $01 $01 $20
	nop                                              ; $44d7: $00
	rlca                                             ; $44d8: $07
	pop  af                                          ; $44d9: $f1
	dec  hl                                          ; $44da: $2b
	ld   [bc], a                                     ; $44db: $02
	inc  bc                                          ; $44dc: $03
	ld   bc, $2002                                   ; $44dd: $01 $02 $20
	nop                                              ; $44e0: $00
	ld   b, $1b                                      ; $44e1: $06 $1b
	add  hl, hl                                      ; $44e3: $29
	inc  e                                           ; $44e4: $1c
	inc  bc                                          ; $44e5: $03
	nop                                              ; $44e6: $00
	nop                                              ; $44e7: $00
	ld   bc, $0008                                   ; $44e8: $01 $08 $00
	ld   e, l                                        ; $44eb: $5d
	and  c                                           ; $44ec: $a1
	ld   sp, hl                                      ; $44ed: $f9
	dec  c                                           ; $44ee: $0d
	adc  h                                           ; $44ef: $8c
	ld   h, [hl]                                     ; $44f0: $66
	adc  a                                           ; $44f1: $8f
	ld   a, c                                        ; $44f2: $79
	ld   [bc], a                                     ; $44f3: $02
	ld   h, l                                        ; $44f4: $65
	ld   d, [hl]                                     ; $44f5: $56
	ld   [hl], h                                     ; $44f6: $74
	sbc  c                                           ; $44f7: $99
	ld   sp, hl                                      ; $44f8: $f9
	dec  c                                           ; $44f9: $0d
	inc  bc                                          ; $44fa: $03
	ret  z                                           ; $44fb: $c8

	ld   a, l                                        ; $44fc: $7d
	sbc  [hl]                                        ; $44fd: $9e
	ld   a, b                                        ; $44fe: $78
	and  c                                           ; $44ff: $a1
	halt                                             ; $4500: $76
	ld   a, b                                        ; $4501: $78
	ld   e, l                                        ; $4502: $5d
	rst  $38                                         ; $4503: $ff
	rst  $38                                         ; $4504: $ff
	dec  c                                           ; $4505: $0d
	nop                                              ; $4506: $00
	ld   a, [bc]                                     ; $4507: $0a
	ld   bc, $ef04                                   ; $4508: $01 $04 $ef
	inc  b                                           ; $450b: $04
	dec  bc                                          ; $450c: $0b
	rst  $38                                         ; $450d: $ff
	rst  $38                                         ; $450e: $ff
	ld   [bc], a                                     ; $450f: $02
	ld   c, [hl]                                     ; $4510: $4e
	rst  $38                                         ; $4511: $ff
	rst  $38                                         ; $4512: $ff
	dec  c                                           ; $4513: $0d
	nop                                              ; $4514: $00
	inc  e                                           ; $4515: $1c
	inc  bc                                          ; $4516: $03
	rlca                                             ; $4517: $07
	rlca                                             ; $4518: $07
	ld   bc, $3706                                   ; $4519: $01 $06 $37
	ld   [bc], a                                     ; $451c: $02
	adc  [hl]                                        ; $451d: $8e
	ld   a, [$030d]                                  ; $451e: $fa $0d $03
	add  l                                           ; $4521: $85
	inc  b                                           ; $4522: $04
	xor  e                                           ; $4523: $ab
	inc  bc                                          ; $4524: $03
	add  d                                           ; $4525: $82
	ld   a, [$ffff]                                  ; $4526: $fa $ff $ff
	ld   h, [hl]                                     ; $4529: $66
	sub  c                                           ; $452a: $91
	ld   a, b                                        ; $452b: $78
	ld   d, d                                        ; $452c: $52
	ld   e, c                                        ; $452d: $59
	ld   h, l                                        ; $452e: $65
	sub  a                                           ; $452f: $97
	sbc  a                                           ; $4530: $9f
	dec  c                                           ; $4531: $0d
	nop                                              ; $4532: $00
	ld   a, [bc]                                     ; $4533: $0a
	ld   bc, $0008                                   ; $4534: $01 $08 $00
	ld   e, l                                        ; $4537: $5d
	and  c                                           ; $4538: $a1
	sbc  a                                           ; $4539: $9f
	dec  c                                           ; $453a: $0d
	inc  bc                                          ; $453b: $03
	add  l                                           ; $453c: $85
	inc  b                                           ; $453d: $04
	xor  e                                           ; $453e: $ab
	inc  bc                                          ; $453f: $03
	add  d                                           ; $4540: $82
	ld   a, h                                        ; $4541: $7c
	inc  bc                                          ; $4542: $03
	ld   c, e                                        ; $4543: $4b
	add  [hl]                                        ; $4544: $86
	ld   [bc], a                                     ; $4545: $02
	ld   a, a                                        ; $4546: $7f
	ld   e, e                                        ; $4547: $5b
	adc  h                                           ; $4548: $8c
	ld   h, l                                        ; $4549: $65
	sub  l                                           ; $454a: $95
	ld   d, h                                        ; $454b: $54
	sbc  a                                           ; $454c: $9f
	dec  c                                           ; $454d: $0d
	nop                                              ; $454e: $00
	ld   a, [bc]                                     ; $454f: $0a
	dec  c                                           ; $4550: $0d
	nop                                              ; $4551: $00
	nop                                              ; $4552: $00
	rrca                                             ; $4553: $0f
	nop                                              ; $4554: $00
	ld   bc, $9f06                                   ; $4555: $01 $06 $9f
	inc  l                                           ; $4558: $2c
	rrca                                             ; $4559: $0f
	nop                                              ; $455a: $00
	ld   bc, $0401                                   ; $455b: $01 $01 $04
	rst  $10                                         ; $455e: $d7
	inc  b                                           ; $455f: $04
	ld   hl, $0b04                                   ; $4560: $21 $04 $0b
	inc  bc                                          ; $4563: $03
	ld   h, h                                        ; $4564: $64
	ld   h, [hl]                                     ; $4565: $66
	sub  c                                           ; $4566: $91
	ld   a, b                                        ; $4567: $78
	ld   d, d                                        ; $4568: $52
	ld   [hl], l                                     ; $4569: $75
	ld   h, a                                        ; $456a: $67
	ld   e, c                                        ; $456b: $59
	ld   sp, hl                                      ; $456c: $f9
	dec  c                                           ; $456d: $0d
	inc  b                                           ; $456e: $04
	rst  $28                                         ; $456f: $ef
	inc  b                                           ; $4570: $04
	dec  bc                                          ; $4571: $0b
	ld   a, c                                        ; $4572: $79
	sub  [hl]                                        ; $4573: $96
	ld   [hl], c                                     ; $4574: $71
	ld   a, a                                        ; $4575: $7f
	sub  a                                           ; $4576: $97
	ld   [hl], c                                     ; $4577: $71
	ld   [hl], h                                     ; $4578: $74
	ld   b, $37                                      ; $4579: $06 $37
	ld   [bc], a                                     ; $457b: $02
	adc  [hl]                                        ; $457c: $8e
	and  b                                           ; $457d: $a0
	dec  c                                           ; $457e: $0d
	ld   d, h                                        ; $457f: $54
	ld   a, b                                        ; $4580: $78
	sbc  c                                           ; $4581: $99
	rst  $38                                         ; $4582: $ff
	rst  $38                                         ; $4583: $ff
	halt                                             ; $4584: $76
	ld   e, c                                        ; $4585: $59
	rst  $38                                         ; $4586: $ff
	rst  $38                                         ; $4587: $ff
	dec  c                                           ; $4588: $0d
	nop                                              ; $4589: $00
	ld   a, [bc]                                     ; $458a: $0a
	inc  e                                           ; $458b: $1c
	inc  bc                                          ; $458c: $03
	nop                                              ; $458d: $00
	nop                                              ; $458e: $00
	ld   bc, $ffff                                   ; $458f: $01 $ff $ff
	ld   a, b                                        ; $4592: $78
	sbc  c                                           ; $4593: $99
	adc  c                                           ; $4594: $89
	ld   [hl], a                                     ; $4595: $77
	sbc  a                                           ; $4596: $9f
	dec  c                                           ; $4597: $0d
	ld   h, [hl]                                     ; $4598: $66
	sub  c                                           ; $4599: $91
	sbc  [hl]                                        ; $459a: $9e
	inc  bc                                          ; $459b: $03
	add  l                                           ; $459c: $85
	inc  b                                           ; $459d: $04
	xor  e                                           ; $459e: $ab
	inc  bc                                          ; $459f: $03
	add  d                                           ; $45a0: $82
	ld   a, h                                        ; $45a1: $7c
	inc  bc                                          ; $45a2: $03
	ld   c, e                                        ; $45a3: $4b
	add  [hl]                                        ; $45a4: $86
	dec  c                                           ; $45a5: $0d
	ld   [bc], a                                     ; $45a6: $02
	ld   a, a                                        ; $45a7: $7f
	ld   e, e                                        ; $45a8: $5b
	adc  h                                           ; $45a9: $8c
	ld   h, l                                        ; $45aa: $65
	sub  l                                           ; $45ab: $95
	ld   d, h                                        ; $45ac: $54
	ld   e, c                                        ; $45ad: $59
	sbc  a                                           ; $45ae: $9f
	dec  c                                           ; $45af: $0d
	nop                                              ; $45b0: $00
	ld   a, [bc]                                     ; $45b1: $0a
	dec  c                                           ; $45b2: $0d
	nop                                              ; $45b3: $00
	nop                                              ; $45b4: $00
	rrca                                             ; $45b5: $0f
	nop                                              ; $45b6: $00
	ld   bc, $0f23                                   ; $45b7: $01 $23 $0f
	inc  e                                           ; $45ba: $1c
	ld   a, [bc]                                     ; $45bb: $0a
	nop                                              ; $45bc: $00
	nop                                              ; $45bd: $00
	ld   bc, $5896                                   ; $45be: $01 $96 $58
	sbc  [hl]                                        ; $45c1: $9e
	rst  JumpTable                                         ; $45c2: $df
	db   $ec                                         ; $45c3: $ec
	and  e                                           ; $45c4: $a3
	ld   a, c                                        ; $45c5: $79
	ld   [$9f00], sp                                 ; $45c6: $08 $00 $9f
	dec  c                                           ; $45c9: $0d
	ld   [hl], a                                     ; $45ca: $77
	ld   d, h                                        ; $45cb: $54
	ld   h, l                                        ; $45cc: $65
	ld   l, l                                        ; $45cd: $6d
	ld   sp, hl                                      ; $45ce: $f9
	db   $10                                         ; $45cf: $10
	inc  b                                           ; $45d0: $04
	ld   c, c                                        ; $45d1: $49
	ld   e, c                                        ; $45d2: $59
	sub  [hl]                                        ; $45d3: $96
	ld   d, h                                        ; $45d4: $54
	ld   e, c                                        ; $45d5: $59
	ld   sp, hl                                      ; $45d6: $f9
	dec  c                                           ; $45d7: $0d
	nop                                              ; $45d8: $00
	ld   a, [bc]                                     ; $45d9: $0a
	rrca                                             ; $45da: $0f
	inc  bc                                          ; $45db: $03
	inc  b                                           ; $45dc: $04
	ld   bc, $8b03                                   ; $45dd: $01 $03 $8b
	ld   a, l                                        ; $45e0: $7d
	rst  $38                                         ; $45e1: $ff
	rst  $38                                         ; $45e2: $ff
	rst  $38                                         ; $45e3: $ff
	rst  $38                                         ; $45e4: $ff
	dec  c                                           ; $45e5: $0d
	ld   e, c                                        ; $45e6: $59
	ld   e, l                                        ; $45e7: $5d
	ld   e, c                                        ; $45e8: $59
	ld   e, l                                        ; $45e9: $5d
	ld   h, l                                        ; $45ea: $65
	ld   e, c                                        ; $45eb: $59
	ld   h, [hl]                                     ; $45ec: $66
	ld   e, c                                        ; $45ed: $59
	rst  $38                                         ; $45ee: $ff
	rst  $38                                         ; $45ef: $ff
	dec  c                                           ; $45f0: $0d
	halt                                             ; $45f1: $76
	sbc  [hl]                                        ; $45f2: $9e
	ld   d, d                                        ; $45f3: $52
	ld   d, h                                        ; $45f4: $54
	ld   h, c                                        ; $45f5: $61
	halt                                             ; $45f6: $76
	ld   a, b                                        ; $45f7: $78
	and  c                                           ; $45f8: $a1
	ld   [hl], l                                     ; $45f9: $75
	ld   h, a                                        ; $45fa: $67
	ld   e, a                                        ; $45fb: $5f
	ld   [hl], a                                     ; $45fc: $77
	rst  $38                                         ; $45fd: $ff
	rst  $38                                         ; $45fe: $ff
	dec  c                                           ; $45ff: $0d
	nop                                              ; $4600: $00
	ld   a, [bc]                                     ; $4601: $0a
	inc  e                                           ; $4602: $1c
	ld   a, [bc]                                     ; $4603: $0a
	inc  bc                                          ; $4604: $03
	inc  bc                                          ; $4605: $03
	ld   bc, $5b84                                   ; $4606: $01 $84 $5b
	adc  l                                           ; $4609: $8d
	ld   a, b                                        ; $460a: $78
	inc  bc                                          ; $460b: $03
	and  l                                           ; $460c: $a5
	ld   l, l                                        ; $460d: $6d
	ld   c, a                                        ; $460e: $4f
	ei                                               ; $460f: $fb
	ld   [bc], a                                     ; $4610: $02
	sbc  l                                           ; $4611: $9d
	ld   [hl], c                                     ; $4612: $71
	ld   [hl], h                                     ; $4613: $74
	ld   e, l                                        ; $4614: $5d
	sbc  d                                           ; $4615: $9a
	sbc  c                                           ; $4616: $99
	dec  c                                           ; $4617: $0d
	ld   h, [hl]                                     ; $4618: $66
	sub  c                                           ; $4619: $91
	ld   a, e                                        ; $461a: $7b
	ei                                               ; $461b: $fb
	ld   e, c                                        ; $461c: $59
	sub  [hl]                                        ; $461d: $96
	sbc  a                                           ; $461e: $9f
	dec  c                                           ; $461f: $0d
	ld   l, l                                        ; $4620: $6d
	ld   h, l                                        ; $4621: $65
	ld   e, c                                        ; $4622: $59
	ld   a, c                                        ; $4623: $79
	ld   l, e                                        ; $4624: $6b
	ld   a, h                                        ; $4625: $7c
	inc  bc                                          ; $4626: $03
	and  l                                           ; $4627: $a5
	ld   a, l                                        ; $4628: $7d
	dec  b                                           ; $4629: $05
	ld   [hl], e                                     ; $462a: $73
	ld   l, [hl]                                     ; $462b: $6e
	sbc  a                                           ; $462c: $9f
	dec  c                                           ; $462d: $0d
	nop                                              ; $462e: $00
	ld   a, [bc]                                     ; $462f: $0a
	inc  e                                           ; $4630: $1c
	ld   a, [bc]                                     ; $4631: $0a
	inc  b                                           ; $4632: $04
	inc  b                                           ; $4633: $04
	ld   bc, $b305                                   ; $4634: $01 $05 $b3
	ld   [hl], c                                     ; $4637: $71
	ld   [hl], h                                     ; $4638: $74
	ld   [bc], a                                     ; $4639: $02
	and  c                                           ; $463a: $a1
	inc  bc                                          ; $463b: $03
	and  b                                           ; $463c: $a0
	ld   l, a                                        ; $463d: $6f
	sub  [hl]                                        ; $463e: $96
	ld   e, l                                        ; $463f: $5d
	ld   a, b                                        ; $4640: $78
	sbc  c                                           ; $4641: $99
	halt                                             ; $4642: $76
	dec  c                                           ; $4643: $0d
	ld   [hl], d                                     ; $4644: $72
	ld   d, d                                        ; $4645: $52
	ld   [bc], a                                     ; $4646: $02
	xor  [hl]                                        ; $4647: $ae
	and  b                                           ; $4648: $a0
	ld   [hl], d                                     ; $4649: $72
	ld   d, d                                        ; $464a: $52
	ld   [hl], h                                     ; $464b: $74
	inc  bc                                          ; $464c: $03
	add  b                                           ; $464d: $80
	ld   l, a                                        ; $464e: $6f
	adc  h                                           ; $464f: $8c
	ld   d, h                                        ; $4650: $54
	and  c                                           ; $4651: $a1
	ld   l, [hl]                                     ; $4652: $6e
	sbc  a                                           ; $4653: $9f
	dec  c                                           ; $4654: $0d
	ld   h, l                                        ; $4655: $65
	ld   e, c                                        ; $4656: $59
	ld   h, l                                        ; $4657: $65
	sbc  [hl]                                        ; $4658: $9e
	inc  b                                           ; $4659: $04
	ld   c, [hl]                                     ; $465a: $4e
	inc  b                                           ; $465b: $04
	and  b                                           ; $465c: $a0
	dec  b                                           ; $465d: $05
	pop  de                                          ; $465e: $d1
	dec  b                                           ; $465f: $05
	halt                                             ; $4660: $76
	ld   e, c                                        ; $4661: $59
	rst  $38                                         ; $4662: $ff
	rst  $38                                         ; $4663: $ff
	dec  c                                           ; $4664: $0d
	nop                                              ; $4665: $00
	ld   a, [bc]                                     ; $4666: $0a
	inc  e                                           ; $4667: $1c
	ld   a, [bc]                                     ; $4668: $0a
	nop                                              ; $4669: $00
	nop                                              ; $466a: $00
	ld   bc, $528c                                   ; $466b: $01 $8c $52
	ld   [hl], c                                     ; $466e: $71
	ld   l, l                                        ; $466f: $6d
	ld   a, b                                        ; $4670: $78
	db   $fc                                         ; $4671: $fc
	dec  c                                           ; $4672: $0d
	sbc  l                                           ; $4673: $9d
	ld   e, c                                        ; $4674: $59
	ld   [hl], c                                     ; $4675: $71
	ld   l, l                                        ; $4676: $6d
	sbc  [hl]                                        ; $4677: $9e
	ld   d, b                                        ; $4678: $50
	adc  h                                           ; $4679: $8c
	sbc  b                                           ; $467a: $98
	inc  b                                           ; $467b: $04
	rst  $28                                         ; $467c: $ef
	ld   [bc], a                                     ; $467d: $02
	ld   h, b                                        ; $467e: $60
	ld   e, a                                        ; $467f: $5f
	ld   a, c                                        ; $4680: $79
	sub  c                                           ; $4681: $91
	dec  c                                           ; $4682: $0d
	ld   [bc], a                                     ; $4683: $02
	ld   c, [hl]                                     ; $4684: $4e
	sbc  l                                           ; $4685: $9d
	ld   a, b                                        ; $4686: $78
	ld   d, d                                        ; $4687: $52
	sub  [hl]                                        ; $4688: $96
	ld   d, h                                        ; $4689: $54
	ld   a, c                                        ; $468a: $79
	ld   h, a                                        ; $468b: $67
	sbc  c                                           ; $468c: $99
	ld   l, d                                        ; $468d: $6a
	sbc  a                                           ; $468e: $9f
	dec  c                                           ; $468f: $0d
	nop                                              ; $4690: $00
	ld   a, [bc]                                     ; $4691: $0a
	rrca                                             ; $4692: $0f
	inc  bc                                          ; $4693: $03
	inc  b                                           ; $4694: $04
	ld   bc, $8d67                                   ; $4695: $01 $67 $8d
	adc  h                                           ; $4698: $8c
	ld   l, c                                        ; $4699: $69
	and  c                                           ; $469a: $a1
	inc  bc                                          ; $469b: $03
	add  l                                           ; $469c: $85
	inc  b                                           ; $469d: $04
	xor  e                                           ; $469e: $ab
	inc  bc                                          ; $469f: $03
	add  d                                           ; $46a0: $82
	sbc  a                                           ; $46a1: $9f
	dec  c                                           ; $46a2: $0d
	nop                                              ; $46a3: $00
	ld   a, [bc]                                     ; $46a4: $0a
	inc  e                                           ; $46a5: $1c
	ld   a, [bc]                                     ; $46a6: $0a
	nop                                              ; $46a7: $00
	nop                                              ; $46a8: $00
	ld   bc, $5252                                   ; $46a9: $01 $52 $52
	ld   [hl], c                                     ; $46ac: $71
	ld   [hl], h                                     ; $46ad: $74
	ld   h, c                                        ; $46ae: $61
	halt                                             ; $46af: $76
	sub  [hl]                                        ; $46b0: $96
	sbc  a                                           ; $46b1: $9f
	dec  c                                           ; $46b2: $0d
	ld   [bc], a                                     ; $46b3: $02
	and  c                                           ; $46b4: $a1
	ld   a, c                                        ; $46b5: $79
	ld   h, a                                        ; $46b6: $67
	and  c                                           ; $46b7: $a1
	ld   a, b                                        ; $46b8: $78
	sbc  a                                           ; $46b9: $9f
	dec  c                                           ; $46ba: $0d
	nop                                              ; $46bb: $00
	ld   a, [bc]                                     ; $46bc: $0a
	dec  c                                           ; $46bd: $0d
	nop                                              ; $46be: $00
	nop                                              ; $46bf: $00
	rrca                                             ; $46c0: $0f
	nop                                              ; $46c1: $00
	ld   bc, $020c                                   ; $46c2: $01 $0c $02
	ld   c, $32                                      ; $46c5: $0e $32
	inc  e                                           ; $46c7: $1c
	inc  bc                                          ; $46c8: $03
	inc  bc                                          ; $46c9: $03
	inc  bc                                          ; $46ca: $03
	dec  e                                           ; $46cb: $1d
	ld   b, b                                        ; $46cc: $40
	inc  de                                          ; $46cd: $13
	inc  bc                                          ; $46ce: $03
	inc  de                                          ; $46cf: $13
	ld   bc, $2803                                   ; $46d0: $01 $03 $28
	nop                                              ; $46d3: $00
	ld   bc, $0008                                   ; $46d4: $01 $08 $00
	ld   e, l                                        ; $46d7: $5d
	and  c                                           ; $46d8: $a1
	sbc  a                                           ; $46d9: $9f
	ld   [bc], a                                     ; $46da: $02
	sub  l                                           ; $46db: $95
	inc  bc                                          ; $46dc: $03
	jp   c, Jump_062_6d65                            ; $46dd: $da $65 $6d

	sbc  l                                           ; $46e0: $9d
	sbc  a                                           ; $46e1: $9f
	dec  c                                           ; $46e2: $0d
	cp   e                                           ; $46e3: $bb
	pop  de                                          ; $46e4: $d1
	db   $ec                                         ; $46e5: $ec
	inc  bc                                          ; $46e6: $03
	ld   c, d                                        ; $46e7: $4a
	ld   [bc], a                                     ; $46e8: $02
	or   h                                           ; $46e9: $b4
	ld   h, [hl]                                     ; $46ea: $66
	sub  c                                           ; $46eb: $91
	ld   a, b                                        ; $46ec: $78
	ld   d, d                                        ; $46ed: $52
	sbc  a                                           ; $46ee: $9f
	dec  c                                           ; $46ef: $0d
	nop                                              ; $46f0: $00
	ld   a, [bc]                                     ; $46f1: $0a
	rrca                                             ; $46f2: $0f
	nop                                              ; $46f3: $00
	ld   bc, $8301                                   ; $46f4: $01 $01 $83
	ld   d, h                                        ; $46f7: $54
	rst  $38                                         ; $46f8: $ff
	rst  $38                                         ; $46f9: $ff
	rst  $38                                         ; $46fa: $ff
	dec  c                                           ; $46fb: $0d
	ld   h, c                                        ; $46fc: $61
	sbc  d                                           ; $46fd: $9a
	ld   [hl], l                                     ; $46fe: $75
	ld   e, b                                        ; $46ff: $58
	sbc  l                                           ; $4700: $9d
	sbc  b                                           ; $4701: $98
	ld   e, c                                        ; $4702: $59
	ld   a, b                                        ; $4703: $78
	rst  $38                                         ; $4704: $ff
	rst  $38                                         ; $4705: $ff
	ld   sp, hl                                      ; $4706: $f9
	dec  c                                           ; $4707: $0d
	nop                                              ; $4708: $00
	ld   a, [bc]                                     ; $4709: $0a
	ld   b, $cd                                      ; $470a: $06 $cd
	cpl                                              ; $470c: $2f
	rrca                                             ; $470d: $0f
	nop                                              ; $470e: $00
	ld   bc, $0201                                   ; $470f: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4712: $cf
	dec  b                                           ; $4713: $05
	ld   a, [de]                                     ; $4714: $1a
	ld   h, e                                        ; $4715: $63
	and  c                                           ; $4716: $a1
	ld   h, [hl]                                     ; $4717: $66
	sub  c                                           ; $4718: $91
	ld   a, b                                        ; $4719: $78
	ld   d, d                                        ; $471a: $52
	ld   [hl], l                                     ; $471b: $75
	ld   h, a                                        ; $471c: $67
	ld   e, c                                        ; $471d: $59
	ld   sp, hl                                      ; $471e: $f9
	dec  c                                           ; $471f: $0d
	add  h                                           ; $4720: $84
	ld   e, e                                        ; $4721: $5b
	adc  l                                           ; $4722: $8d
	ld   a, b                                        ; $4723: $78
	inc  bc                                          ; $4724: $03
	and  l                                           ; $4725: $a5
	ld   [hl], c                                     ; $4726: $71
	ld   [hl], h                                     ; $4727: $74
	ld   d, d                                        ; $4728: $52
	ld   d, h                                        ; $4729: $54
	ld   a, h                                        ; $472a: $7c
	ld   a, l                                        ; $472b: $7d
	dec  c                                           ; $472c: $0d
	ld   b, $0d                                      ; $472d: $06 $0d
	inc  b                                           ; $472f: $04
	ld   e, [hl]                                     ; $4730: $5e
	ld   h, l                                        ; $4731: $65
	ld   l, l                                        ; $4732: $6d
	halt                                             ; $4733: $76
	ld   e, e                                        ; $4734: $5b
	ld   a, h                                        ; $4735: $7c
	add  b                                           ; $4736: $80
	adc  a                                           ; $4737: $8f
	ld   d, d                                        ; $4738: $52
	halt                                             ; $4739: $76
	ld   e, c                                        ; $473a: $59
	rst  $38                                         ; $473b: $ff
	rst  $38                                         ; $473c: $ff
	dec  c                                           ; $473d: $0d
	nop                                              ; $473e: $00
	ld   a, [bc]                                     ; $473f: $0a
	inc  e                                           ; $4740: $1c
	inc  bc                                          ; $4741: $03
	nop                                              ; $4742: $00
	nop                                              ; $4743: $00
	ld   bc, $9a6b                                   ; $4744: $01 $6b $9a
	ld   l, [hl]                                     ; $4747: $6e
	ld   [hl], c                                     ; $4748: $71
	ld   l, l                                        ; $4749: $6d
	sub  a                                           ; $474a: $97
	sbc  [hl]                                        ; $474b: $9e
	dec  c                                           ; $474c: $0d
	ld   b, $0d                                      ; $474d: $06 $0d
	inc  b                                           ; $474f: $04
	ld   e, [hl]                                     ; $4750: $5e
	ld   a, h                                        ; $4751: $7c
	ld   [bc], a                                     ; $4752: $02
	inc  bc                                          ; $4753: $03
	sub  b                                           ; $4754: $90
	ld   [bc], a                                     ; $4755: $02
	jp   nz, $5661                                   ; $4756: $c2 $61 $56

	sbc  c                                           ; $4759: $99
	ld   a, l                                        ; $475a: $7d
	ld   l, b                                        ; $475b: $68
	sub  [hl]                                        ; $475c: $96
	sbc  a                                           ; $475d: $9f
	dec  c                                           ; $475e: $0d
	nop                                              ; $475f: $00
	ld   a, [bc]                                     ; $4760: $0a
	ld   bc, $c803                                   ; $4761: $01 $03 $c8
	ld   a, l                                        ; $4764: $7d
	ld   a, e                                        ; $4765: $7b
	sbc  [hl]                                        ; $4766: $9e
	inc  bc                                          ; $4767: $03
	add  l                                           ; $4768: $85
	inc  b                                           ; $4769: $04
	xor  e                                           ; $476a: $ab
	inc  bc                                          ; $476b: $03
	add  d                                           ; $476c: $82
	ld   l, [hl]                                     ; $476d: $6e
	halt                                             ; $476e: $76
	dec  b                                           ; $476f: $05
	pop  de                                          ; $4770: $d1
	ld   d, h                                        ; $4771: $54
	ld   a, h                                        ; $4772: $7c
	sbc  a                                           ; $4773: $9f
	dec  c                                           ; $4774: $0d
	dec  b                                           ; $4775: $05
	or   e                                           ; $4776: $b3
	ld   [hl], c                                     ; $4777: $71
	ld   [hl], h                                     ; $4778: $74
	ld   [bc], a                                     ; $4779: $02
	and  c                                           ; $477a: $a1
	inc  b                                           ; $477b: $04
	sbc  [hl]                                        ; $477c: $9e
	ld   e, d                                        ; $477d: $5a
	dec  b                                           ; $477e: $05
	dec  d                                           ; $477f: $15
	ld   e, l                                        ; $4780: $5d
	ld   a, b                                        ; $4781: $78
	ld   [hl], c                                     ; $4782: $71
	ld   [hl], h                                     ; $4783: $74
	dec  c                                           ; $4784: $0d
	ld   d, b                                        ; $4785: $50
	ld   l, a                                        ; $4786: $6f
	ld   h, c                                        ; $4787: $61
	ld   l, a                                        ; $4788: $6f
	ld   [hl], l                                     ; $4789: $75
	ld   b, $37                                      ; $478a: $06 $37
	ld   [bc], a                                     ; $478c: $02
	adc  [hl]                                        ; $478d: $8e
	and  b                                           ; $478e: $a0
	rst  $38                                         ; $478f: $ff
	rst  $38                                         ; $4790: $ff
	dec  c                                           ; $4791: $0d
	nop                                              ; $4792: $00
	ld   a, [bc]                                     ; $4793: $0a
	ld   bc, $9e63                                   ; $4794: $01 $63 $9e
	inc  bc                                          ; $4797: $03
	add  l                                           ; $4798: $85
	inc  b                                           ; $4799: $04
	xor  e                                           ; $479a: $ab
	inc  bc                                          ; $479b: $03
	add  d                                           ; $479c: $82
	ld   a, h                                        ; $479d: $7c
	halt                                             ; $479e: $76
	ld   h, c                                        ; $479f: $61
	sbc  e                                           ; $47a0: $9b
	add  [hl]                                        ; $47a1: $86
	dec  c                                           ; $47a2: $0d
	ld   [bc], a                                     ; $47a3: $02
	ld   a, a                                        ; $47a4: $7f
	ld   e, l                                        ; $47a5: $5d
	sbc  l                                           ; $47a6: $9d
	sub  [hl]                                        ; $47a7: $96
	sbc  a                                           ; $47a8: $9f
	ld   [$5d00], sp                                 ; $47a9: $08 $00 $5d
	and  c                                           ; $47ac: $a1
	sbc  a                                           ; $47ad: $9f
	dec  c                                           ; $47ae: $0d
	nop                                              ; $47af: $00
	ld   a, [bc]                                     ; $47b0: $0a
	dec  c                                           ; $47b1: $0d
	nop                                              ; $47b2: $00
	nop                                              ; $47b3: $00
	rrca                                             ; $47b4: $0f
	nop                                              ; $47b5: $00
	ld   bc, $9f06                                   ; $47b6: $01 $06 $9f
	inc  l                                           ; $47b9: $2c
	rrca                                             ; $47ba: $0f
	nop                                              ; $47bb: $00
	ld   bc, $7801                                   ; $47bc: $01 $01 $78
	and  c                                           ; $47bf: $a1
	ld   l, [hl]                                     ; $47c0: $6e
	ld   e, c                                        ; $47c1: $59
	and  c                                           ; $47c2: $a1
	ld   l, [hl]                                     ; $47c3: $6e
	ld   [bc], a                                     ; $47c4: $02
	sbc  l                                           ; $47c5: $9d
	ld   d, d                                        ; $47c6: $52
	ld   a, b                                        ; $47c7: $78
	ld   e, d                                        ; $47c8: $5a
	sub  a                                           ; $47c9: $97
	dec  c                                           ; $47ca: $0d
	inc  bc                                          ; $47cb: $03
	adc  e                                           ; $47cc: $8b
	ld   a, l                                        ; $47cd: $7d
	rst  JumpTable                                         ; $47ce: $df
	db   $ec                                         ; $47cf: $ec
	and  e                                           ; $47d0: $a3
	ld   h, e                                        ; $47d1: $63
	and  c                                           ; $47d2: $a1
	ld   l, [hl]                                     ; $47d3: $6e
	ld   [hl], c                                     ; $47d4: $71
	ld   l, l                                        ; $47d5: $6d
	sbc  b                                           ; $47d6: $98
	dec  c                                           ; $47d7: $0d
	ld   h, l                                        ; $47d8: $65
	ld   [hl], h                                     ; $47d9: $74
	rst  $38                                         ; $47da: $ff
	rst  $38                                         ; $47db: $ff
	dec  c                                           ; $47dc: $0d
	nop                                              ; $47dd: $00
	ld   a, [bc]                                     ; $47de: $0a
	inc  e                                           ; $47df: $1c
	inc  bc                                          ; $47e0: $03
	ld   [bc], a                                     ; $47e1: $02
	ld   [bc], a                                     ; $47e2: $02
	dec  e                                           ; $47e3: $1d
	ld   b, b                                        ; $47e4: $40
	inc  de                                          ; $47e5: $13
	inc  bc                                          ; $47e6: $03
	inc  de                                          ; $47e7: $13
	ld   bc, $2901                                   ; $47e8: $01 $01 $29
	nop                                              ; $47eb: $00
	ld   bc, $0008                                   ; $47ec: $01 $08 $00
	ld   e, l                                        ; $47ef: $5d
	and  c                                           ; $47f0: $a1
	sbc  a                                           ; $47f1: $9f
	dec  c                                           ; $47f2: $0d
	add  e                                           ; $47f3: $83
	ld   h, h                                        ; $47f4: $64
	ld   e, a                                        ; $47f5: $5f
	ld   a, b                                        ; $47f6: $78
	ld   d, d                                        ; $47f7: $52
	ld   [hl], l                                     ; $47f8: $75
	ld   a, [$718c]                                  ; $47f9: $fa $8c $71
	ld   l, l                                        ; $47fc: $6d
	ld   e, l                                        ; $47fd: $5d
	sub  b                                           ; $47fe: $90
	ei                                               ; $47ff: $fb
	sbc  a                                           ; $4800: $9f
	dec  c                                           ; $4801: $0d
	inc  b                                           ; $4802: $04
	ld   a, e                                        ; $4803: $7b
	sbc  d                                           ; $4804: $9a
	ld   l, l                                        ; $4805: $6d
	ld   a, h                                        ; $4806: $7c
	ld   sp, hl                                      ; $4807: $f9
	dec  c                                           ; $4808: $0d
	nop                                              ; $4809: $00
	ld   a, [bc]                                     ; $480a: $0a
	inc  e                                           ; $480b: $1c
	inc  bc                                          ; $480c: $03
	nop                                              ; $480d: $00
	nop                                              ; $480e: $00
	ld   bc, $c803                                   ; $480f: $01 $03 $c8
	ld   a, l                                        ; $4812: $7d
	ld   a, e                                        ; $4813: $7b
	sbc  [hl]                                        ; $4814: $9e
	inc  bc                                          ; $4815: $03
	add  l                                           ; $4816: $85
	inc  b                                           ; $4817: $04
	xor  e                                           ; $4818: $ab
	inc  bc                                          ; $4819: $03
	add  d                                           ; $481a: $82
	ld   l, [hl]                                     ; $481b: $6e
	halt                                             ; $481c: $76
	dec  b                                           ; $481d: $05
	pop  de                                          ; $481e: $d1
	ld   d, h                                        ; $481f: $54
	ld   a, h                                        ; $4820: $7c
	sbc  a                                           ; $4821: $9f
	dec  c                                           ; $4822: $0d
	dec  b                                           ; $4823: $05
	or   e                                           ; $4824: $b3
	ld   [hl], c                                     ; $4825: $71
	ld   [hl], h                                     ; $4826: $74
	ld   [bc], a                                     ; $4827: $02
	and  c                                           ; $4828: $a1
	inc  b                                           ; $4829: $04
	sbc  [hl]                                        ; $482a: $9e
	ld   e, d                                        ; $482b: $5a
	dec  b                                           ; $482c: $05
	dec  d                                           ; $482d: $15
	ld   e, l                                        ; $482e: $5d
	ld   a, b                                        ; $482f: $78
	ld   [hl], c                                     ; $4830: $71
	ld   [hl], h                                     ; $4831: $74
	dec  c                                           ; $4832: $0d
	ld   d, b                                        ; $4833: $50
	ld   l, a                                        ; $4834: $6f
	ld   h, c                                        ; $4835: $61
	ld   l, a                                        ; $4836: $6f
	ld   [hl], l                                     ; $4837: $75
	ld   b, $37                                      ; $4838: $06 $37
	ld   [bc], a                                     ; $483a: $02
	adc  [hl]                                        ; $483b: $8e
	and  b                                           ; $483c: $a0
	rst  $38                                         ; $483d: $ff
	rst  $38                                         ; $483e: $ff
	dec  c                                           ; $483f: $0d
	nop                                              ; $4840: $00
	ld   a, [bc]                                     ; $4841: $0a
	ld   bc, $9e63                                   ; $4842: $01 $63 $9e
	inc  bc                                          ; $4845: $03
	add  l                                           ; $4846: $85
	inc  b                                           ; $4847: $04
	xor  e                                           ; $4848: $ab
	inc  bc                                          ; $4849: $03
	add  d                                           ; $484a: $82
	ld   a, h                                        ; $484b: $7c
	halt                                             ; $484c: $76
	ld   h, c                                        ; $484d: $61
	sbc  e                                           ; $484e: $9b
	add  [hl]                                        ; $484f: $86
	dec  c                                           ; $4850: $0d
	ld   [bc], a                                     ; $4851: $02
	ld   a, a                                        ; $4852: $7f
	ld   e, l                                        ; $4853: $5d
	sbc  l                                           ; $4854: $9d
	sub  [hl]                                        ; $4855: $96
	sbc  a                                           ; $4856: $9f
	ld   [$5d00], sp                                 ; $4857: $08 $00 $5d
	and  c                                           ; $485a: $a1
	sbc  a                                           ; $485b: $9f
	dec  c                                           ; $485c: $0d
	nop                                              ; $485d: $00
	ld   a, [bc]                                     ; $485e: $0a
	dec  c                                           ; $485f: $0d
	nop                                              ; $4860: $00
	nop                                              ; $4861: $00
	rrca                                             ; $4862: $0f
	nop                                              ; $4863: $00
	ld   bc, $9f06                                   ; $4864: $01 $06 $9f
	inc  l                                           ; $4867: $2c
	inc  hl                                          ; $4868: $23
	rrca                                             ; $4869: $0f
	inc  e                                           ; $486a: $1c
	ld   a, [bc]                                     ; $486b: $0a
	nop                                              ; $486c: $00
	nop                                              ; $486d: $00
	ld   bc, $5896                                   ; $486e: $01 $96 $58
	sbc  [hl]                                        ; $4871: $9e
	rst  JumpTable                                         ; $4872: $df
	db   $ec                                         ; $4873: $ec
	and  e                                           ; $4874: $a3
	ld   a, c                                        ; $4875: $79
	ld   [$9f00], sp                                 ; $4876: $08 $00 $9f
	dec  c                                           ; $4879: $0d
	ld   [hl], a                                     ; $487a: $77
	ld   d, h                                        ; $487b: $54
	ld   h, l                                        ; $487c: $65
	ld   l, l                                        ; $487d: $6d
	ld   sp, hl                                      ; $487e: $f9
	db   $10                                         ; $487f: $10
	inc  b                                           ; $4880: $04
	ld   c, c                                        ; $4881: $49
	ld   e, c                                        ; $4882: $59
	sub  [hl]                                        ; $4883: $96
	ld   d, h                                        ; $4884: $54
	ld   e, c                                        ; $4885: $59
	ld   sp, hl                                      ; $4886: $f9
	dec  c                                           ; $4887: $0d
	nop                                              ; $4888: $00
	ld   a, [bc]                                     ; $4889: $0a
	rrca                                             ; $488a: $0f
	inc  bc                                          ; $488b: $03
	inc  b                                           ; $488c: $04
	ld   bc, $8b03                                   ; $488d: $01 $03 $8b
	ld   a, l                                        ; $4890: $7d
	rst  $38                                         ; $4891: $ff
	rst  $38                                         ; $4892: $ff
	rst  $38                                         ; $4893: $ff
	rst  $38                                         ; $4894: $ff
	dec  c                                           ; $4895: $0d
	ld   e, c                                        ; $4896: $59
	ld   e, l                                        ; $4897: $5d
	ld   e, c                                        ; $4898: $59
	ld   e, l                                        ; $4899: $5d
	ld   h, l                                        ; $489a: $65
	ld   e, c                                        ; $489b: $59
	ld   h, [hl]                                     ; $489c: $66
	ld   e, c                                        ; $489d: $59
	rst  $38                                         ; $489e: $ff
	rst  $38                                         ; $489f: $ff
	dec  c                                           ; $48a0: $0d
	halt                                             ; $48a1: $76
	sbc  [hl]                                        ; $48a2: $9e
	ld   d, d                                        ; $48a3: $52
	ld   d, h                                        ; $48a4: $54
	ld   h, c                                        ; $48a5: $61
	halt                                             ; $48a6: $76
	ld   a, b                                        ; $48a7: $78
	and  c                                           ; $48a8: $a1
	ld   [hl], l                                     ; $48a9: $75
	ld   h, a                                        ; $48aa: $67
	ld   e, a                                        ; $48ab: $5f
	ld   [hl], a                                     ; $48ac: $77
	rst  $38                                         ; $48ad: $ff
	rst  $38                                         ; $48ae: $ff
	dec  c                                           ; $48af: $0d
	nop                                              ; $48b0: $00
	ld   a, [bc]                                     ; $48b1: $0a
	inc  e                                           ; $48b2: $1c
	ld   a, [bc]                                     ; $48b3: $0a
	inc  bc                                          ; $48b4: $03
	inc  bc                                          ; $48b5: $03
	ld   bc, $5b84                                   ; $48b6: $01 $84 $5b
	adc  l                                           ; $48b9: $8d
	ld   a, b                                        ; $48ba: $78
	inc  bc                                          ; $48bb: $03
	and  l                                           ; $48bc: $a5
	ld   l, l                                        ; $48bd: $6d
	ld   c, a                                        ; $48be: $4f
	ei                                               ; $48bf: $fb
	ld   [bc], a                                     ; $48c0: $02
	sbc  l                                           ; $48c1: $9d
	ld   [hl], c                                     ; $48c2: $71
	ld   [hl], h                                     ; $48c3: $74
	ld   e, l                                        ; $48c4: $5d
	sbc  d                                           ; $48c5: $9a
	sbc  c                                           ; $48c6: $99
	dec  c                                           ; $48c7: $0d
	ld   h, [hl]                                     ; $48c8: $66
	sub  c                                           ; $48c9: $91
	ld   a, e                                        ; $48ca: $7b
	ei                                               ; $48cb: $fb
	ld   e, c                                        ; $48cc: $59
	sub  [hl]                                        ; $48cd: $96
	sbc  a                                           ; $48ce: $9f
	dec  c                                           ; $48cf: $0d
	ld   l, l                                        ; $48d0: $6d
	ld   h, l                                        ; $48d1: $65
	ld   e, c                                        ; $48d2: $59
	ld   a, c                                        ; $48d3: $79
	ld   l, e                                        ; $48d4: $6b
	ld   a, h                                        ; $48d5: $7c
	inc  bc                                          ; $48d6: $03
	and  l                                           ; $48d7: $a5
	ld   a, l                                        ; $48d8: $7d
	dec  b                                           ; $48d9: $05
	ld   [hl], e                                     ; $48da: $73
	ld   l, [hl]                                     ; $48db: $6e
	sbc  a                                           ; $48dc: $9f
	dec  c                                           ; $48dd: $0d
	nop                                              ; $48de: $00
	ld   a, [bc]                                     ; $48df: $0a
	inc  e                                           ; $48e0: $1c
	ld   a, [bc]                                     ; $48e1: $0a
	inc  b                                           ; $48e2: $04
	inc  b                                           ; $48e3: $04
	ld   bc, $b305                                   ; $48e4: $01 $05 $b3
	ld   [hl], c                                     ; $48e7: $71
	ld   [hl], h                                     ; $48e8: $74
	ld   [bc], a                                     ; $48e9: $02
	and  c                                           ; $48ea: $a1
	inc  bc                                          ; $48eb: $03
	and  b                                           ; $48ec: $a0
	ld   l, a                                        ; $48ed: $6f
	sub  [hl]                                        ; $48ee: $96
	ld   e, l                                        ; $48ef: $5d
	ld   a, b                                        ; $48f0: $78
	sbc  c                                           ; $48f1: $99
	halt                                             ; $48f2: $76
	dec  c                                           ; $48f3: $0d
	ld   [hl], d                                     ; $48f4: $72
	ld   d, d                                        ; $48f5: $52
	ld   [bc], a                                     ; $48f6: $02
	xor  [hl]                                        ; $48f7: $ae
	and  b                                           ; $48f8: $a0
	ld   [hl], d                                     ; $48f9: $72
	ld   d, d                                        ; $48fa: $52
	ld   [hl], h                                     ; $48fb: $74
	inc  bc                                          ; $48fc: $03
	add  b                                           ; $48fd: $80
	ld   l, a                                        ; $48fe: $6f
	adc  h                                           ; $48ff: $8c
	ld   d, h                                        ; $4900: $54
	and  c                                           ; $4901: $a1
	ld   l, [hl]                                     ; $4902: $6e
	sbc  a                                           ; $4903: $9f
	dec  c                                           ; $4904: $0d
	ld   h, l                                        ; $4905: $65
	ld   e, c                                        ; $4906: $59
	ld   h, l                                        ; $4907: $65
	sbc  [hl]                                        ; $4908: $9e
	inc  b                                           ; $4909: $04
	ld   c, [hl]                                     ; $490a: $4e
	inc  b                                           ; $490b: $04
	and  b                                           ; $490c: $a0
	dec  b                                           ; $490d: $05
	pop  de                                          ; $490e: $d1
	dec  b                                           ; $490f: $05
	halt                                             ; $4910: $76
	ld   e, c                                        ; $4911: $59
	rst  $38                                         ; $4912: $ff
	rst  $38                                         ; $4913: $ff
	dec  c                                           ; $4914: $0d
	nop                                              ; $4915: $00
	ld   a, [bc]                                     ; $4916: $0a
	inc  e                                           ; $4917: $1c
	ld   a, [bc]                                     ; $4918: $0a
	nop                                              ; $4919: $00
	nop                                              ; $491a: $00
	ld   bc, $528c                                   ; $491b: $01 $8c $52
	ld   [hl], c                                     ; $491e: $71
	ld   l, l                                        ; $491f: $6d
	ld   a, b                                        ; $4920: $78
	db   $fc                                         ; $4921: $fc
	rst  $38                                         ; $4922: $ff
	rst  $38                                         ; $4923: $ff
	rst  $38                                         ; $4924: $ff
	rst  $38                                         ; $4925: $ff
	dec  c                                           ; $4926: $0d
	sbc  l                                           ; $4927: $9d
	ld   e, c                                        ; $4928: $59
	ld   [hl], c                                     ; $4929: $71
	ld   l, l                                        ; $492a: $6d
	sbc  [hl]                                        ; $492b: $9e
	ld   d, b                                        ; $492c: $50
	adc  h                                           ; $492d: $8c
	sbc  b                                           ; $492e: $98
	inc  b                                           ; $492f: $04
	rst  $28                                         ; $4930: $ef
	ld   [bc], a                                     ; $4931: $02
	ld   h, b                                        ; $4932: $60
	ld   e, a                                        ; $4933: $5f
	ld   a, c                                        ; $4934: $79
	sub  c                                           ; $4935: $91
	dec  c                                           ; $4936: $0d
	ld   [bc], a                                     ; $4937: $02
	ld   c, [hl]                                     ; $4938: $4e
	sbc  l                                           ; $4939: $9d
	ld   a, b                                        ; $493a: $78
	ld   d, d                                        ; $493b: $52
	sub  [hl]                                        ; $493c: $96
	ld   d, h                                        ; $493d: $54
	ld   a, c                                        ; $493e: $79
	ld   h, a                                        ; $493f: $67
	sbc  c                                           ; $4940: $99
	ld   l, d                                        ; $4941: $6a
	sbc  a                                           ; $4942: $9f
	dec  c                                           ; $4943: $0d
	nop                                              ; $4944: $00
	ld   a, [bc]                                     ; $4945: $0a
	rrca                                             ; $4946: $0f
	inc  bc                                          ; $4947: $03
	inc  b                                           ; $4948: $04
	ld   bc, $8d67                                   ; $4949: $01 $67 $8d
	adc  h                                           ; $494c: $8c
	ld   l, c                                        ; $494d: $69
	and  c                                           ; $494e: $a1
	inc  bc                                          ; $494f: $03
	add  l                                           ; $4950: $85
	inc  b                                           ; $4951: $04
	xor  e                                           ; $4952: $ab
	inc  bc                                          ; $4953: $03
	add  d                                           ; $4954: $82
	sbc  a                                           ; $4955: $9f
	dec  c                                           ; $4956: $0d
	nop                                              ; $4957: $00
	ld   a, [bc]                                     ; $4958: $0a
	inc  e                                           ; $4959: $1c
	ld   a, [bc]                                     ; $495a: $0a
	nop                                              ; $495b: $00
	nop                                              ; $495c: $00
	ld   bc, $5252                                   ; $495d: $01 $52 $52
	ld   [hl], c                                     ; $4960: $71
	ld   [hl], h                                     ; $4961: $74
	ld   h, c                                        ; $4962: $61
	halt                                             ; $4963: $76
	sub  [hl]                                        ; $4964: $96
	sbc  a                                           ; $4965: $9f
	dec  c                                           ; $4966: $0d
	ld   [bc], a                                     ; $4967: $02
	and  c                                           ; $4968: $a1
	ld   a, c                                        ; $4969: $79
	ld   h, a                                        ; $496a: $67
	and  c                                           ; $496b: $a1
	ld   a, b                                        ; $496c: $78
	sbc  a                                           ; $496d: $9f
	dec  c                                           ; $496e: $0d
	nop                                              ; $496f: $00
	ld   a, [bc]                                     ; $4970: $0a
	dec  c                                           ; $4971: $0d
	nop                                              ; $4972: $00
	nop                                              ; $4973: $00
	rrca                                             ; $4974: $0f
	nop                                              ; $4975: $00
	ld   bc, $020c                                   ; $4976: $01 $0c $02
	ld   c, $32                                      ; $4979: $0e $32
	dec  c                                           ; $497b: $0d
	inc  bc                                          ; $497c: $03
	inc  b                                           ; $497d: $04
	rrca                                             ; $497e: $0f
	nop                                              ; $497f: $00
	ld   bc, $8301                                   ; $4980: $01 $01 $83
	ld   d, h                                        ; $4983: $54
	rst  $38                                         ; $4984: $ff
	rst  $38                                         ; $4985: $ff
	rst  $38                                         ; $4986: $ff
	dec  c                                           ; $4987: $0d
	ld   h, c                                        ; $4988: $61
	sbc  d                                           ; $4989: $9a
	ld   [hl], l                                     ; $498a: $75
	ld   e, b                                        ; $498b: $58
	sbc  l                                           ; $498c: $9d
	sbc  b                                           ; $498d: $98
	ld   [hl], l                                     ; $498e: $75
	ld   h, a                                        ; $498f: $67
	ld   e, c                                        ; $4990: $59
	ld   a, e                                        ; $4991: $7b
	rst  $38                                         ; $4992: $ff
	rst  $38                                         ; $4993: $ff
	ld   sp, hl                                      ; $4994: $f9
	dec  c                                           ; $4995: $0d
	nop                                              ; $4996: $00
	ld   a, [bc]                                     ; $4997: $0a
	ld   b, $cd                                      ; $4998: $06 $cd
	cpl                                              ; $499a: $2f
	add  hl, de                                      ; $499b: $19
	dec  b                                           ; $499c: $05
	inc  bc                                          ; $499d: $03
	ld   [bc], a                                     ; $499e: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $499f: $cf
	dec  b                                           ; $49a0: $05
	ld   a, [de]                                     ; $49a1: $1a
	ld   h, e                                        ; $49a2: $63
	and  c                                           ; $49a3: $a1
	ld   e, d                                        ; $49a4: $5a
	rst  $38                                         ; $49a5: $ff
	rst  $38                                         ; $49a6: $ff
	nop                                              ; $49a7: $00
	nop                                              ; $49a8: $00
	xor  h                                           ; $49a9: $ac
	push af                                          ; $49aa: $f5
	bit  3, d                                        ; $49ab: $cb $5a
	rst  $38                                         ; $49ad: $ff
	rst  $38                                         ; $49ae: $ff
	nop                                              ; $49af: $00
	ld   bc, $d704                                   ; $49b0: $01 $04 $d7
	inc  b                                           ; $49b3: $04
	ld   hl, $0b04                                   ; $49b4: $21 $04 $0b
	inc  bc                                          ; $49b7: $03
	ld   h, h                                        ; $49b8: $64
	ld   e, d                                        ; $49b9: $5a
	rst  $38                                         ; $49ba: $ff
	rst  $38                                         ; $49bb: $ff
	nop                                              ; $49bc: $00
	ld   [bc], a                                     ; $49bd: $02
	rlca                                             ; $49be: $07
	adc  l                                           ; $49bf: $8d
	ld   l, $02                                      ; $49c0: $2e $02
	inc  bc                                          ; $49c2: $03
	ld   bc, $2000                                   ; $49c3: $01 $00 $20
	nop                                              ; $49c6: $00
	rlca                                             ; $49c7: $07
	ldh  [c], a                                      ; $49c8: $e2
	ld   l, $02                                      ; $49c9: $2e $02
	inc  bc                                          ; $49cb: $03
	ld   bc, $2001                                   ; $49cc: $01 $01 $20
	nop                                              ; $49cf: $00
	rlca                                             ; $49d0: $07
	ld   l, c                                        ; $49d1: $69
	cpl                                              ; $49d2: $2f
	ld   [bc], a                                     ; $49d3: $02
	inc  bc                                          ; $49d4: $03
	ld   bc, $2002                                   ; $49d5: $01 $02 $20
	nop                                              ; $49d8: $00
	ld   b, $13                                      ; $49d9: $06 $13
	ld   l, $1c                                      ; $49db: $2e $1c
	inc  bc                                          ; $49dd: $03
	nop                                              ; $49de: $00
	nop                                              ; $49df: $00
	ld   bc, $ffff                                   ; $49e0: $01 $ff $ff
	ld   d, h                                        ; $49e3: $54
	ld   a, b                                        ; $49e4: $78
	ld   h, e                                        ; $49e5: $63
	sbc  d                                           ; $49e6: $9a
	ld   [hl], h                                     ; $49e7: $74
	sbc  c                                           ; $49e8: $99
	ld   sp, hl                                      ; $49e9: $f9
	dec  c                                           ; $49ea: $0d
	ld   d, h                                        ; $49eb: $54
	ld   a, b                                        ; $49ec: $78
	rst  $38                                         ; $49ed: $ff
	ld   d, h                                        ; $49ee: $54
	ld   a, b                                        ; $49ef: $78
	sbc  c                                           ; $49f0: $99
	ld   sp, hl                                      ; $49f1: $f9
	db   $10                                         ; $49f2: $10
	rst  $38                                         ; $49f3: $ff
	rst  $38                                         ; $49f4: $ff
	ld   b, $37                                      ; $49f5: $06 $37
	ld   [bc], a                                     ; $49f7: $02
	adc  [hl]                                        ; $49f8: $8e
	dec  c                                           ; $49f9: $0d
	rst  $38                                         ; $49fa: $ff
	rst  $38                                         ; $49fb: $ff
	ld   a, [$9d10]                                  ; $49fc: $fa $10 $9d
	ld   e, c                                        ; $49ff: $59
	ld   [hl], c                                     ; $4a00: $71
	ld   l, l                                        ; $4a01: $6d
	sbc  l                                           ; $4a02: $9d
	ld   a, [$000d]                                  ; $4a03: $fa $0d $00
	ld   a, [bc]                                     ; $4a06: $0a
	inc  e                                           ; $4a07: $1c
	inc  bc                                          ; $4a08: $03
	rlca                                             ; $4a09: $07
	rlca                                             ; $4a0a: $07
	ld   bc, $ef04                                   ; $4a0b: $01 $04 $ef
	inc  b                                           ; $4a0e: $04
	dec  bc                                          ; $4a0f: $0b
	rst  $38                                         ; $4a10: $ff
	rst  $38                                         ; $4a11: $ff
	ld   [bc], a                                     ; $4a12: $02
	ld   c, [hl]                                     ; $4a13: $4e
	rst  $38                                         ; $4a14: $ff
	rst  $38                                         ; $4a15: $ff
	dec  c                                           ; $4a16: $0d
	ld   b, $37                                      ; $4a17: $06 $37
	ld   [bc], a                                     ; $4a19: $02
	adc  [hl]                                        ; $4a1a: $8e
	ld   a, [$030d]                                  ; $4a1b: $fa $0d $03
	add  l                                           ; $4a1e: $85
	inc  b                                           ; $4a1f: $04
	xor  e                                           ; $4a20: $ab
	inc  bc                                          ; $4a21: $03
	add  d                                           ; $4a22: $82
	ld   a, [$ffff]                                  ; $4a23: $fa $ff $ff
	ld   h, [hl]                                     ; $4a26: $66
	sub  c                                           ; $4a27: $91
	ld   a, b                                        ; $4a28: $78
	ld   d, d                                        ; $4a29: $52
	ld   e, c                                        ; $4a2a: $59
	ld   h, l                                        ; $4a2b: $65
	sub  a                                           ; $4a2c: $97
	sbc  a                                           ; $4a2d: $9f
	dec  c                                           ; $4a2e: $0d
	nop                                              ; $4a2f: $00
	ld   a, [bc]                                     ; $4a30: $0a
	ld   bc, $0008                                   ; $4a31: $01 $08 $00
	ld   e, l                                        ; $4a34: $5d
	and  c                                           ; $4a35: $a1
	sbc  a                                           ; $4a36: $9f
	dec  c                                           ; $4a37: $0d
	inc  bc                                          ; $4a38: $03
	add  l                                           ; $4a39: $85
	inc  b                                           ; $4a3a: $04
	xor  e                                           ; $4a3b: $ab
	inc  bc                                          ; $4a3c: $03
	add  d                                           ; $4a3d: $82
	ld   a, h                                        ; $4a3e: $7c
	inc  bc                                          ; $4a3f: $03
	ld   c, e                                        ; $4a40: $4b
	add  [hl]                                        ; $4a41: $86
	ld   [bc], a                                     ; $4a42: $02
	ld   a, a                                        ; $4a43: $7f
	ld   e, e                                        ; $4a44: $5b
	adc  h                                           ; $4a45: $8c
	ld   h, l                                        ; $4a46: $65
	sub  l                                           ; $4a47: $95
	ld   d, h                                        ; $4a48: $54
	sbc  a                                           ; $4a49: $9f
	dec  c                                           ; $4a4a: $0d
	nop                                              ; $4a4b: $00
	ld   a, [bc]                                     ; $4a4c: $0a
	dec  c                                           ; $4a4d: $0d
	nop                                              ; $4a4e: $00
	nop                                              ; $4a4f: $00
	rrca                                             ; $4a50: $0f
	nop                                              ; $4a51: $00
	ld   bc, $9f06                                   ; $4a52: $01 $06 $9f
	inc  l                                           ; $4a55: $2c
	rrca                                             ; $4a56: $0f
	nop                                              ; $4a57: $00
	ld   bc, $0201                                   ; $4a58: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a5b: $cf
	dec  b                                           ; $4a5c: $05
	ld   a, [de]                                     ; $4a5d: $1a
	ld   h, e                                        ; $4a5e: $63
	and  c                                           ; $4a5f: $a1
	sbc  [hl]                                        ; $4a60: $9e
	ld   h, [hl]                                     ; $4a61: $66
	sub  c                                           ; $4a62: $91
	ld   a, b                                        ; $4a63: $78
	ld   d, d                                        ; $4a64: $52
	ld   [hl], l                                     ; $4a65: $75
	ld   h, a                                        ; $4a66: $67
	ld   e, c                                        ; $4a67: $59
	ld   sp, hl                                      ; $4a68: $f9
	dec  c                                           ; $4a69: $0d
	inc  b                                           ; $4a6a: $04
	cp   [hl]                                        ; $4a6b: $be
	ld   a, h                                        ; $4a6c: $7c
	inc  b                                           ; $4a6d: $04
	dec  bc                                          ; $4a6e: $0b
	ld   [hl], l                                     ; $4a6f: $75
	sub  b                                           ; $4a70: $90
	sbc  [hl]                                        ; $4a71: $9e
	pop  de                                          ; $4a72: $d1
	or   b                                           ; $4a73: $b0
	ret  nc                                          ; $4a74: $d0

	push bc                                          ; $4a75: $c5
	ld   h, l                                        ; $4a76: $65
	ld   [hl], h                                     ; $4a77: $74
	dec  c                                           ; $4a78: $0d
	ld   d, h                                        ; $4a79: $54
	ld   a, b                                        ; $4a7a: $78
	ld   h, e                                        ; $4a7b: $63
	sbc  d                                           ; $4a7c: $9a
	ld   [hl], h                                     ; $4a7d: $74
	sbc  c                                           ; $4a7e: $99
	sbc  [hl]                                        ; $4a7f: $9e
	halt                                             ; $4a80: $76
	ld   e, c                                        ; $4a81: $59
	rst  $38                                         ; $4a82: $ff
	rst  $38                                         ; $4a83: $ff
	dec  c                                           ; $4a84: $0d
	nop                                              ; $4a85: $00
	ld   a, [bc]                                     ; $4a86: $0a
	inc  e                                           ; $4a87: $1c
	inc  bc                                          ; $4a88: $03
	ld   [bc], a                                     ; $4a89: $02
	ld   [bc], a                                     ; $4a8a: $02
	dec  e                                           ; $4a8b: $1d
	ld   b, b                                        ; $4a8c: $40
	inc  de                                          ; $4a8d: $13
	inc  bc                                          ; $4a8e: $03
	inc  de                                          ; $4a8f: $13
	ld   bc, $2901                                   ; $4a90: $01 $01 $29
	nop                                              ; $4a93: $00
	ld   bc, $9a6b                                   ; $4a94: $01 $6b $9a
	ld   a, l                                        ; $4a97: $7d
	ld   [bc], a                                     ; $4a98: $02
	sbc  l                                           ; $4a99: $9d
	ld   d, d                                        ; $4a9a: $52
	ld   h, a                                        ; $4a9b: $67
	ld   e, h                                        ; $4a9c: $5c
	sub  [hl]                                        ; $4a9d: $96
	sbc  [hl]                                        ; $4a9e: $9e
	dec  c                                           ; $4a9f: $0d
	ld   [$5d00], sp                                 ; $4aa0: $08 $00 $5d
	and  c                                           ; $4aa3: $a1
	sbc  a                                           ; $4aa4: $9f
	dec  c                                           ; $4aa5: $0d
	nop                                              ; $4aa6: $00
	ld   a, [bc]                                     ; $4aa7: $0a
	ld   b, $13                                      ; $4aa8: $06 $13
	ld   l, $0f                                      ; $4aaa: $2e $0f
	nop                                              ; $4aac: $00
	ld   bc, $ac01                                   ; $4aad: $01 $01 $ac
	push af                                          ; $4ab0: $f5
	bit  4, e                                        ; $4ab1: $cb $63
	and  c                                           ; $4ab3: $a1
	ld   h, [hl]                                     ; $4ab4: $66
	sub  c                                           ; $4ab5: $91
	ld   a, b                                        ; $4ab6: $78
	ld   d, d                                        ; $4ab7: $52
	ld   [hl], l                                     ; $4ab8: $75
	ld   h, a                                        ; $4ab9: $67
	ld   e, c                                        ; $4aba: $59
	ld   sp, hl                                      ; $4abb: $f9
	dec  c                                           ; $4abc: $0d
	inc  b                                           ; $4abd: $04
	cp   [hl]                                        ; $4abe: $be
	ld   a, h                                        ; $4abf: $7c
	inc  b                                           ; $4ac0: $04
	dec  bc                                          ; $4ac1: $0b
	ld   [hl], l                                     ; $4ac2: $75
	sub  b                                           ; $4ac3: $90
	inc  bc                                          ; $4ac4: $03
	ld   l, d                                        ; $4ac5: $6a
	add  a                                           ; $4ac6: $87
	adc  h                                           ; $4ac7: $8c
	ld   e, l                                        ; $4ac8: $5d
	ld   [hl], c                                     ; $4ac9: $71
	ld   [hl], h                                     ; $4aca: $74
	dec  c                                           ; $4acb: $0d
	inc  bc                                          ; $4acc: $03

jr_062_4acd:
	ld   l, d                                        ; $4acd: $6a
	add  a                                           ; $4ace: $87
	ld   h, a                                        ; $4acf: $67
	ld   e, h                                        ; $4ad0: $5c
	ld   [hl], h                                     ; $4ad1: $74
	ld   d, h                                        ; $4ad2: $54
	ld   a, b                                        ; $4ad3: $78
	ld   h, e                                        ; $4ad4: $63
	sbc  d                                           ; $4ad5: $9a
	ld   [hl], h                                     ; $4ad6: $74
	sbc  c                                           ; $4ad7: $99
	rst  $38                                         ; $4ad8: $ff
	rst  $38                                         ; $4ad9: $ff
	dec  c                                           ; $4ada: $0d
	nop                                              ; $4adb: $00
	ld   a, [bc]                                     ; $4adc: $0a
	inc  e                                           ; $4add: $1c
	inc  bc                                          ; $4ade: $03
	inc  bc                                          ; $4adf: $03
	inc  bc                                          ; $4ae0: $03
	ld   bc, $d6d6                                   ; $4ae1: $01 $d6 $d6
	sub  $ff                                         ; $4ae4: $d6 $ff
	sbc  [hl]                                        ; $4ae6: $9e
	ld   h, [hl]                                     ; $4ae7: $66
	sub  l                                           ; $4ae8: $95
	ld   d, h                                        ; $4ae9: $54
	ld   l, [hl]                                     ; $4aea: $6e
	and  c                                           ; $4aeb: $a1
	halt                                             ; $4aec: $76
	ld   h, l                                        ; $4aed: $65
	ld   [hl], h                                     ; $4aee: $74
	ld   a, l                                        ; $4aef: $7d
	dec  c                                           ; $4af0: $0d
	ld   e, b                                        ; $4af1: $58
	sub  b                                           ; $4af2: $90
	ld   h, l                                        ; $4af3: $65
	sbc  e                                           ; $4af4: $9b
	ld   d, d                                        ; $4af5: $52
	sbc  l                                           ; $4af6: $9d
	ld   a, e                                        ; $4af7: $7b
	sbc  a                                           ; $4af8: $9f
	dec  c                                           ; $4af9: $0d
	ld   [hl], l                                     ; $4afa: $75
	sub  b                                           ; $4afb: $90
	sbc  [hl]                                        ; $4afc: $9e
	ld   l, e                                        ; $4afd: $6b
	sbc  d                                           ; $4afe: $9a
	ld   a, l                                        ; $4aff: $7d
	ld   a, b                                        ; $4b00: $78
	ld   d, d                                        ; $4b01: $52
	ld   [hl], l                                     ; $4b02: $75
	ld   h, l                                        ; $4b03: $65
	sub  l                                           ; $4b04: $95
	ld   d, h                                        ; $4b05: $54
	sbc  a                                           ; $4b06: $9f
	dec  c                                           ; $4b07: $0d
	nop                                              ; $4b08: $00
	ld   a, [bc]                                     ; $4b09: $0a
	ld   bc, $6f50                                   ; $4b0a: $01 $50 $6f
	ld   h, c                                        ; $4b0d: $61
	ld   l, a                                        ; $4b0e: $6f
	ld   e, c                                        ; $4b0f: $59
	sub  a                                           ; $4b10: $97
	ld   [bc], a                                     ; $4b11: $02
	jp   nz, $5661                                   ; $4b12: $c2 $61 $56

	sbc  c                                           ; $4b15: $99
	dec  c                                           ; $4b16: $0d
	halt                                             ; $4b17: $76
	ld   d, d                                        ; $4b18: $52
	ld   d, h                                        ; $4b19: $54
	ld   h, c                                        ; $4b1a: $61
	halt                                             ; $4b1b: $76
	ld   a, l                                        ; $4b1c: $7d
	sbc  [hl]                                        ; $4b1d: $9e
	ld   [bc], a                                     ; $4b1e: $02
	jr   nz, jr_062_4acd                             ; $4b1f: $20 $ac

	inc  bc                                          ; $4b21: $03
	ld   c, e                                        ; $4b22: $4b
	ld   h, [hl]                                     ; $4b23: $66
	sub  c                                           ; $4b24: $91
	dec  c                                           ; $4b25: $0d
	ld   a, b                                        ; $4b26: $78
	ld   d, d                                        ; $4b27: $52
	ld   a, l                                        ; $4b28: $7d
	ld   l, b                                        ; $4b29: $68
	sub  [hl]                                        ; $4b2a: $96
	sbc  a                                           ; $4b2b: $9f
	dec  c                                           ; $4b2c: $0d
	nop                                              ; $4b2d: $00
	ld   a, [bc]                                     ; $4b2e: $0a
	ld   b, $13                                      ; $4b2f: $06 $13
	ld   l, $0f                                      ; $4b31: $2e $0f
	nop                                              ; $4b33: $00
	ld   bc, $0401                                   ; $4b34: $01 $01 $04
	rst  $10                                         ; $4b37: $d7
	inc  b                                           ; $4b38: $04
	ld   hl, $0b04                                   ; $4b39: $21 $04 $0b
	inc  bc                                          ; $4b3c: $03
	ld   h, h                                        ; $4b3d: $64
	sbc  [hl]                                        ; $4b3e: $9e
	ld   h, [hl]                                     ; $4b3f: $66
	sub  c                                           ; $4b40: $91
	ld   a, b                                        ; $4b41: $78
	ld   d, d                                        ; $4b42: $52
	ld   [hl], l                                     ; $4b43: $75
	ld   h, a                                        ; $4b44: $67
	ld   e, c                                        ; $4b45: $59
	ld   sp, hl                                      ; $4b46: $f9
	dec  c                                           ; $4b47: $0d
	inc  bc                                          ; $4b48: $03
	jr   nz, jr_062_4bc7                             ; $4b49: $20 $7c

	ld   [bc], a                                     ; $4b4b: $02
	rlca                                             ; $4b4c: $07
	adc  l                                           ; $4b4d: $8d
	ld   h, a                                        ; $4b4e: $67
	ld   e, h                                        ; $4b4f: $5c
	ld   [hl], l                                     ; $4b50: $75
	sbc  [hl]                                        ; $4b51: $9e
	ld   d, h                                        ; $4b52: $54
	ld   a, b                                        ; $4b53: $78
	ld   h, e                                        ; $4b54: $63
	sbc  d                                           ; $4b55: $9a
	ld   [hl], h                                     ; $4b56: $74
	sbc  c                                           ; $4b57: $99
	dec  c                                           ; $4b58: $0d
	halt                                             ; $4b59: $76
	ld   e, c                                        ; $4b5a: $59
	rst  $38                                         ; $4b5b: $ff
	rst  $38                                         ; $4b5c: $ff
	dec  c                                           ; $4b5d: $0d
	nop                                              ; $4b5e: $00
	ld   a, [bc]                                     ; $4b5f: $0a
	inc  e                                           ; $4b60: $1c
	inc  bc                                          ; $4b61: $03
	inc  bc                                          ; $4b62: $03
	inc  bc                                          ; $4b63: $03
	ld   bc, $ffff                                   ; $4b64: $01 $ff $ff
	ld   l, e                                        ; $4b67: $6b
	sbc  d                                           ; $4b68: $9a
	ld   a, l                                        ; $4b69: $7d
	sbc  [hl]                                        ; $4b6a: $9e

jr_062_4b6b:
	ld   a, b                                        ; $4b6b: $78
	ld   d, d                                        ; $4b6c: $52
	halt                                             ; $4b6d: $76
	dec  b                                           ; $4b6e: $05
	pop  de                                          ; $4b6f: $d1
	ld   d, h                                        ; $4b70: $54
	sbc  l                                           ; $4b71: $9d
	rst  $38                                         ; $4b72: $ff
	rst  $38                                         ; $4b73: $ff
	dec  c                                           ; $4b74: $0d
	ld   d, h                                        ; $4b75: $54
	ld   a, b                                        ; $4b76: $78
	ld   h, e                                        ; $4b77: $63
	sbc  d                                           ; $4b78: $9a
	sbc  c                                           ; $4b79: $99
	inc  bc                                          ; $4b7a: $03
	ld   c, a                                        ; $4b7b: $4f
	ld   a, c                                        ; $4b7c: $79
	sbc  [hl]                                        ; $4b7d: $9e
	inc  b                                           ; $4b7e: $04
	ld   c, $52                                      ; $4b7f: $0e $52
	add  c                                           ; $4b81: $81
	ld   e, e                                        ; $4b82: $5b
	ld   [hl], l                                     ; $4b83: $75
	ld   h, a                                        ; $4b84: $67
	dec  c                                           ; $4b85: $0d
	sub  b                                           ; $4b86: $90
	ld   a, h                                        ; $4b87: $7c
	sbc  a                                           ; $4b88: $9f
	sub  $d6                                         ; $4b89: $d6 $d6
	sub  $ff                                         ; $4b8b: $d6 $ff
	rst  $38                                         ; $4b8d: $ff
	rst  $38                                         ; $4b8e: $ff
	rst  $38                                         ; $4b8f: $ff
	dec  c                                           ; $4b90: $0d
	nop                                              ; $4b91: $00
	ld   a, [bc]                                     ; $4b92: $0a
	ld   b, $13                                      ; $4b93: $06 $13
	ld   l, $0f                                      ; $4b95: $2e $0f
	nop                                              ; $4b97: $00
	ld   bc, $8001                                   ; $4b98: $01 $01 $80
	ld   d, d                                        ; $4b9b: $52
	add  e                                           ; $4b9c: $83
	ld   d, h                                        ; $4b9d: $54
	adc  l                                           ; $4b9e: $8d
	ld   d, d                                        ; $4b9f: $52
	rst  $38                                         ; $4ba0: $ff
	ld   d, b                                        ; $4ba1: $50
	sbc  d                                           ; $4ba2: $9a
	ld   sp, hl                                      ; $4ba3: $f9
	dec  c                                           ; $4ba4: $0d
	rst  JumpTable                                         ; $4ba5: $df
	db   $ec                                         ; $4ba6: $ec
	and  e                                           ; $4ba7: $a3
	ld   h, e                                        ; $4ba8: $63
	and  c                                           ; $4ba9: $a1
	sbc  [hl]                                        ; $4baa: $9e
	dec  c                                           ; $4bab: $0d
	ld   d, b                                        ; $4bac: $50
	halt                                             ; $4bad: $76
	ld   [bc], a                                     ; $4bae: $02
	jr   nz, jr_062_4c23                             ; $4baf: $20 $72

	inc  bc                                          ; $4bb1: $03
	jr   z, @+$73                                    ; $4bb2: $28 $71

	ld   [hl], h                                     ; $4bb4: $74
	adc  h                                           ; $4bb5: $8c
	ld   h, a                                        ; $4bb6: $67
	sub  [hl]                                        ; $4bb7: $96
	sbc  a                                           ; $4bb8: $9f
	dec  c                                           ; $4bb9: $0d
	nop                                              ; $4bba: $00
	ld   a, [bc]                                     ; $4bbb: $0a
	inc  e                                           ; $4bbc: $1c
	inc  bc                                          ; $4bbd: $03
	inc  b                                           ; $4bbe: $04
	inc  b                                           ; $4bbf: $04
	ld   bc, $ffff                                   ; $4bc0: $01 $ff $ff
	ld   l, e                                        ; $4bc3: $6b
	sbc  d                                           ; $4bc4: $9a
	ld   e, d                                        ; $4bc5: $5a
	ld   a, e                                        ; $4bc6: $7b

jr_062_4bc7:
	sbc  [hl]                                        ; $4bc7: $9e
	inc  bc                                          ; $4bc8: $03
	ld   l, c                                        ; $4bc9: $69
	ld   [bc], a                                     ; $4bca: $02
	xor  d                                           ; $4bcb: $aa
	ld   a, h                                        ; $4bcc: $7c
	ld   [bc], a                                     ; $4bcd: $02
	jr   nz, jr_062_4c42                             ; $4bce: $20 $72

	ld   e, d                                        ; $4bd0: $5a
	dec  c                                           ; $4bd1: $0d
	ld   e, c                                        ; $4bd2: $59
	ld   d, d                                        ; $4bd3: $52
	sub  b                                           ; $4bd4: $90
	ld   e, l                                        ; $4bd5: $5d
	ld   [bc], a                                     ; $4bd6: $02
	sub  l                                           ; $4bd7: $95
	inc  b                                           ; $4bd8: $04
	jr   jr_062_4b6b                                 ; $4bd9: $18 $90

	ld   [hl], d                                     ; $4bdb: $72
	ld   e, c                                        ; $4bdc: $59
	ld   a, b                                        ; $4bdd: $78
	ld   d, d                                        ; $4bde: $52
	ld   a, h                                        ; $4bdf: $7c
	sub  [hl]                                        ; $4be0: $96
	sbc  a                                           ; $4be1: $9f
	dec  c                                           ; $4be2: $0d
	nop                                              ; $4be3: $00
	ld   a, [bc]                                     ; $4be4: $0a
	ld   bc, $0701                                   ; $4be5: $01 $01 $07
	inc  b                                           ; $4be8: $04
	dec  de                                          ; $4be9: $1b
	ld   e, l                                        ; $4bea: $5d
	inc  b                                           ; $4beb: $04
	xor  h                                           ; $4bec: $ac
	ld   d, d                                        ; $4bed: $52
	xor  a                                           ; $4bee: $af
	ret  nz                                          ; $4bef: $c0

	ei                                               ; $4bf0: $fb
	ld   bc, $0d08                                   ; $4bf1: $01 $08 $0d
	ld   [hl], h                                     ; $4bf4: $74
	sbc  [hl]                                        ; $4bf5: $9e
	ld   [bc], a                                     ; $4bf6: $02
	sbc  l                                           ; $4bf7: $9d
	ld   d, h                                        ; $4bf8: $54
	and  c                                           ; $4bf9: $a1
	ld   l, [hl]                                     ; $4bfa: $6e
	ld   e, a                                        ; $4bfb: $5f
	ld   [hl], a                                     ; $4bfc: $77
	rst  $38                                         ; $4bfd: $ff
	rst  $38                                         ; $4bfe: $ff
	dec  c                                           ; $4bff: $0d
	nop                                              ; $4c00: $00
	ld   a, [bc]                                     ; $4c01: $0a
	rlca                                             ; $4c02: $07
	rst  $30                                         ; $4c03: $f7
	jr   nc, jr_062_4c0a                             ; $4c04: $30 $04

	add  b                                           ; $4c06: $80
	ld   de, $ff01                                   ; $4c07: $11 $01 $ff

jr_062_4c0a:
	jr   nz, jr_062_4c10                             ; $4c0a: $20 $04

	add  b                                           ; $4c0c: $80
	ld   hl, $ff01                                   ; $4c0d: $21 $01 $ff

jr_062_4c10:
	jr   nz, jr_062_4c2d                             ; $4c10: $20 $1b

	inc  b                                           ; $4c12: $04
	add  b                                           ; $4c13: $80
	ld   a, c                                        ; $4c14: $79
	ld   bc, $20ff                                   ; $4c15: $01 $ff $20
	dec  de                                          ; $4c18: $1b
	inc  b                                           ; $4c19: $04
	add  b                                           ; $4c1a: $80
	ld   a, h                                        ; $4c1b: $7c
	ld   bc, $20ff                                   ; $4c1c: $01 $ff $20
	dec  de                                          ; $4c1f: $1b
	inc  b                                           ; $4c20: $04
	add  b                                           ; $4c21: $80
	scf                                              ; $4c22: $37

jr_062_4c23:
	ld   bc, $20ff                                   ; $4c23: $01 $ff $20
	dec  de                                          ; $4c26: $1b
	inc  b                                           ; $4c27: $04
	add  b                                           ; $4c28: $80
	ld   c, d                                        ; $4c29: $4a
	ld   bc, $20ff                                   ; $4c2a: $01 $ff $20

jr_062_4c2d:
	dec  de                                          ; $4c2d: $1b
	nop                                              ; $4c2e: $00
	rrca                                             ; $4c2f: $0f
	nop                                              ; $4c30: $00
	ld   bc, $6301                                   ; $4c31: $01 $01 $63
	ld   d, b                                        ; $4c34: $50
	rst  $38                                         ; $4c35: $ff
	rst  $38                                         ; $4c36: $ff
	dec  c                                           ; $4c37: $0d
	ld   a, b                                        ; $4c38: $78
	and  c                                           ; $4c39: $a1
	ld   [hl], l                                     ; $4c3a: $75
	ld   h, a                                        ; $4c3b: $67
	ld   e, c                                        ; $4c3c: $59
	sbc  [hl]                                        ; $4c3d: $9e
	ld   l, e                                        ; $4c3e: $6b
	sbc  d                                           ; $4c3f: $9a
	ld   sp, hl                                      ; $4c40: $f9
	dec  c                                           ; $4c41: $0d

jr_062_4c42:
	nop                                              ; $4c42: $00
	ld   a, [bc]                                     ; $4c43: $0a
	inc  e                                           ; $4c44: $1c
	inc  bc                                          ; $4c45: $03
	inc  bc                                          ; $4c46: $03
	inc  bc                                          ; $4c47: $03
	ld   bc, $599d                                   ; $4c48: $01 $9d $59
	sub  a                                           ; $4c4b: $97
	ld   a, b                                        ; $4c4c: $78
	ld   d, d                                        ; $4c4d: $52
	ld   e, c                                        ; $4c4e: $59
	sub  a                                           ; $4c4f: $97
	sbc  [hl]                                        ; $4c50: $9e
	ld   d, d                                        ; $4c51: $52
	ld   d, d                                        ; $4c52: $52
	sbc  l                                           ; $4c53: $9d
	sbc  a                                           ; $4c54: $9f
	dec  c                                           ; $4c55: $0d
	ld   [bc], a                                     ; $4c56: $02
	jr   nz, jr_062_4ccb                             ; $4c57: $20 $72

	ld   e, l                                        ; $4c59: $5d
	sub  a                                           ; $4c5a: $97
	ld   d, d                                        ; $4c5b: $52
	ld   b, $08                                      ; $4c5c: $06 $08
	ld   e, d                                        ; $4c5e: $5a
	ld   d, b                                        ; $4c5f: $50
	ld   [hl], c                                     ; $4c60: $71
	ld   l, l                                        ; $4c61: $6d
	adc  c                                           ; $4c62: $89
	ld   d, h                                        ; $4c63: $54
	ld   e, d                                        ; $4c64: $5a
	dec  c                                           ; $4c65: $0d
	dec  b                                           ; $4c66: $05
	inc  de                                          ; $4c67: $13
	ld   h, l                                        ; $4c68: $65
	ld   d, d                                        ; $4c69: $52
	ld   e, c                                        ; $4c6a: $59
	sub  b                                           ; $4c6b: $90
	ld   h, l                                        ; $4c6c: $65
	sbc  d                                           ; $4c6d: $9a
	ld   a, b                                        ; $4c6e: $78
	ld   d, d                                        ; $4c6f: $52
	ld   h, l                                        ; $4c70: $65
	sbc  a                                           ; $4c71: $9f
	dec  c                                           ; $4c72: $0d
	nop                                              ; $4c73: $00
	ld   a, [bc]                                     ; $4c74: $0a
	dec  b                                           ; $4c75: $05
	add  b                                           ; $4c76: $80
	halt                                             ; $4c77: $76
	ld   bc, $0001                                   ; $4c78: $01 $01 $00
	ld   bc, $9166                                   ; $4c7b: $01 $66 $91
	sbc  [hl]                                        ; $4c7e: $9e
	ld   [$5d00], sp                                 ; $4c7f: $08 $00 $5d
	and  c                                           ; $4c82: $a1
	sbc  a                                           ; $4c83: $9f
	dec  c                                           ; $4c84: $0d
	ld   [bc], a                                     ; $4c85: $02
	and  l                                           ; $4c86: $a5
	inc  b                                           ; $4c87: $04
	xor  d                                           ; $4c88: $aa
	ld   a, l                                        ; $4c89: $7d
	sbc  [hl]                                        ; $4c8a: $9e
	ld   h, d                                        ; $4c8b: $62
	ld   e, l                                        ; $4c8c: $5d
	sbc  e                                           ; $4c8d: $9b
	ld   d, h                                        ; $4c8e: $54
	ld   h, e                                        ; $4c8f: $63
	adc  h                                           ; $4c90: $8c
	ld   [hl], l                                     ; $4c91: $75
	ld   h, l                                        ; $4c92: $65
	ld   l, l                                        ; $4c93: $6d
	sbc  a                                           ; $4c94: $9f
	dec  c                                           ; $4c95: $0d
	sub  h                                           ; $4c96: $94
	ld   [hl], c                                     ; $4c97: $71
	ld   e, l                                        ; $4c98: $5d
	sbc  b                                           ; $4c99: $98
	inc  bc                                          ; $4c9a: $03
	and  a                                           ; $4c9b: $a7
	and  c                                           ; $4c9c: $a1
	ld   [hl], l                                     ; $4c9d: $75
	ld   a, e                                        ; $4c9e: $7b
	sbc  a                                           ; $4c9f: $9f
	dec  c                                           ; $4ca0: $0d
	nop                                              ; $4ca1: $00
	ld   a, [bc]                                     ; $4ca2: $0a
	dec  b                                           ; $4ca3: $05
	ld   b, b                                        ; $4ca4: $40
	ld   d, b                                        ; $4ca5: $50
	ld   bc, $0000                                   ; $4ca6: $01 $00 $00
	ld   bc, $9258                                   ; $4ca9: $01 $58 $92
	ld   h, a                                        ; $4cac: $67
	adc  l                                           ; $4cad: $8d
	ld   a, b                                        ; $4cae: $78
	ld   h, e                                        ; $4caf: $63
	ld   d, d                                        ; $4cb0: $52
	sbc  a                                           ; $4cb1: $9f
	dec  c                                           ; $4cb2: $0d
	nop                                              ; $4cb3: $00
	ld   a, [bc]                                     ; $4cb4: $0a
	dec  c                                           ; $4cb5: $0d
	nop                                              ; $4cb6: $00
	nop                                              ; $4cb7: $00
	rrca                                             ; $4cb8: $0f
	nop                                              ; $4cb9: $00
	ld   bc, $1e09                                   ; $4cba: $01 $09 $1e
	add  hl, hl                                      ; $4cbd: $29
	nop                                              ; $4cbe: $00
	nop                                              ; $4cbf: $00
	rrca                                             ; $4cc0: $0f
	nop                                              ; $4cc1: $00
	ld   bc, $5601                                   ; $4cc2: $01 $01 $56
	ld   sp, hl                                      ; $4cc5: $f9
	dec  c                                           ; $4cc6: $0d
	inc  b                                           ; $4cc7: $04
	ld   l, l                                        ; $4cc8: $6d
	sbc  [hl]                                        ; $4cc9: $9e
	ld   [bc], a                                     ; $4cca: $02

jr_062_4ccb:
	sub  l                                           ; $4ccb: $95
	ld   l, l                                        ; $4ccc: $6d
	ld   h, c                                        ; $4ccd: $61
	halt                                             ; $4cce: $76
	ld   d, b                                        ; $4ccf: $50
	sbc  b                                           ; $4cd0: $98
	adc  h                                           ; $4cd1: $8c
	ld   h, a                                        ; $4cd2: $67
	sub  [hl]                                        ; $4cd3: $96
	sbc  a                                           ; $4cd4: $9f
	dec  c                                           ; $4cd5: $0d
	nop                                              ; $4cd6: $00
	ld   a, [bc]                                     ; $4cd7: $0a
	inc  e                                           ; $4cd8: $1c
	inc  bc                                          ; $4cd9: $03
	rlca                                             ; $4cda: $07
	rlca                                             ; $4cdb: $07
	ld   bc, $fa56                                   ; $4cdc: $01 $56 $fa
	dec  c                                           ; $4cdf: $0d
	nop                                              ; $4ce0: $00
	ld   a, [bc]                                     ; $4ce1: $0a
	rrca                                             ; $4ce2: $0f
	nop                                              ; $4ce3: $00
	ld   bc, $0401                                   ; $4ce4: $01 $01 $04
	xor  h                                           ; $4ce7: $ac
	ld   d, d                                        ; $4ce8: $52
	xor  a                                           ; $4ce9: $af
	ret  nz                                          ; $4cea: $c0

	ei                                               ; $4ceb: $fb
	and  b                                           ; $4cec: $a0
	inc  bc                                          ; $4ced: $03
	and  b                                           ; $4cee: $a0
	ld   [hl], c                                     ; $4cef: $71
	ld   l, l                                        ; $4cf0: $6d
	dec  c                                           ; $4cf1: $0d
	ld   [bc], a                                     ; $4cf2: $02
	ld   d, b                                        ; $4cf3: $50
	inc  bc                                          ; $4cf4: $03
	ld   e, b                                        ; $4cf5: $58
	ld   [hl], c                                     ; $4cf6: $71
	ld   [hl], h                                     ; $4cf7: $74
	inc  bc                                          ; $4cf8: $03
	add  d                                           ; $4cf9: $82
	and  b                                           ; $4cfa: $a0
	sbc  a                                           ; $4cfb: $9f
	dec  c                                           ; $4cfc: $0d
	ld   l, e                                        ; $4cfd: $6b
	ld   a, h                                        ; $4cfe: $7c
	inc  bc                                          ; $4cff: $03
	add  d                                           ; $4d00: $82
	ld   a, h                                        ; $4d01: $7c
	ld   [bc], a                                     ; $4d02: $02
	jp   $9166                                       ; $4d03: $c3 $66 $91


	ld   a, b                                        ; $4d06: $78
	ld   d, d                                        ; $4d07: $52
	ld   [hl], l                                     ; $4d08: $75
	ld   h, a                                        ; $4d09: $67
	ld   e, c                                        ; $4d0a: $59
	ld   sp, hl                                      ; $4d0b: $f9
	dec  c                                           ; $4d0c: $0d
	nop                                              ; $4d0d: $00
	ld   a, [bc]                                     ; $4d0e: $0a
	rrca                                             ; $4d0f: $0f
	inc  bc                                          ; $4d10: $03
	rlca                                             ; $4d11: $07
	ld   bc, $a903                                   ; $4d12: $01 $03 $a9
	ld   sp, hl                                      ; $4d15: $f9
	db   $10                                         ; $4d16: $10
	ld   l, e                                        ; $4d17: $6b
	ld   a, h                                        ; $4d18: $7c
	inc  bc                                          ; $4d19: $03
	add  d                                           ; $4d1a: $82
	ld   sp, hl                                      ; $4d1b: $f9
	dec  c                                           ; $4d1c: $0d
	nop                                              ; $4d1d: $00
	ld   a, [bc]                                     ; $4d1e: $0a
	rrca                                             ; $4d1f: $0f
	nop                                              ; $4d20: $00
	ld   bc, $6301                                   ; $4d21: $01 $01 $63
	ld   d, b                                        ; $4d24: $50
	rst  $38                                         ; $4d25: $ff
	rst  $38                                         ; $4d26: $ff
	dec  c                                           ; $4d27: $0d
	ld   d, b                                        ; $4d28: $50
	sbc  [hl]                                        ; $4d29: $9e
	inc  b                                           ; $4d2a: $04
	ld   c, $03                                      ; $4d2b: $0e $03
	sub  b                                           ; $4d2d: $90
	ld   h, e                                        ; $4d2e: $63
	and  c                                           ; $4d2f: $a1
	ld   a, h                                        ; $4d30: $7c
	inc  bc                                          ; $4d31: $03
	sub  d                                           ; $4d32: $92
	inc  b                                           ; $4d33: $04
	ld   [$7471], a                                  ; $4d34: $ea $71 $74
	dec  c                                           ; $4d37: $0d
	ld   [bc], a                                     ; $4d38: $02
	sbc  l                                           ; $4d39: $9d
	ld   [hl], c                                     ; $4d3a: $71
	ld   [hl], h                                     ; $4d3b: $74
	adc  h                                           ; $4d3c: $8c
	ld   h, l                                        ; $4d3d: $65
	ld   l, l                                        ; $4d3e: $6d
	ld   e, a                                        ; $4d3f: $5f
	ld   [hl], a                                     ; $4d40: $77
	rst  $38                                         ; $4d41: $ff
	rst  $38                                         ; $4d42: $ff
	dec  c                                           ; $4d43: $0d
	nop                                              ; $4d44: $00
	ld   a, [bc]                                     ; $4d45: $0a
	inc  e                                           ; $4d46: $1c
	inc  bc                                          ; $4d47: $03
	nop                                              ; $4d48: $00
	nop                                              ; $4d49: $00
	ld   bc, $0a04                                   ; $4d4a: $01 $04 $0a
	inc  bc                                          ; $4d4d: $03
	jp   nc, $f97c                                   ; $4d4e: $d2 $7c $f9

	dec  c                                           ; $4d51: $0d
	ld   a, b                                        ; $4d52: $78
	sub  a                                           ; $4d53: $97
	sbc  [hl]                                        ; $4d54: $9e
	ld   d, d                                        ; $4d55: $52
	ld   d, d                                        ; $4d56: $52
	sbc  l                                           ; $4d57: $9d
	sbc  a                                           ; $4d58: $9f
	dec  c                                           ; $4d59: $0d
	adc  c                                           ; $4d5a: $89
	ld   [hl], c                                     ; $4d5b: $71
	halt                                             ; $4d5c: $76
	ld   e, e                                        ; $4d5d: $5b
	adc  h                                           ; $4d5e: $8c
	ld   h, l                                        ; $4d5f: $65
	sub  l                                           ; $4d60: $95
	ld   d, h                                        ; $4d61: $54
	sbc  a                                           ; $4d62: $9f
	dec  c                                           ; $4d63: $0d
	nop                                              ; $4d64: $00
	ld   a, [bc]                                     ; $4d65: $0a
	dec  c                                           ; $4d66: $0d
	nop                                              ; $4d67: $00
	nop                                              ; $4d68: $00
	rrca                                             ; $4d69: $0f
	nop                                              ; $4d6a: $00
	ld   bc, $4623                                   ; $4d6b: $01 $23 $46
	inc  e                                           ; $4d6e: $1c
	inc  bc                                          ; $4d6f: $03
	inc  bc                                          ; $4d70: $03
	inc  bc                                          ; $4d71: $03
	dec  e                                           ; $4d72: $1d
	ld   b, b                                        ; $4d73: $40
	inc  de                                          ; $4d74: $13
	inc  bc                                          ; $4d75: $03
	inc  de                                          ; $4d76: $13
	ld   bc, $2803                                   ; $4d77: $01 $03 $28
	nop                                              ; $4d7a: $00
	ld   bc, $9166                                   ; $4d7b: $01 $66 $91
	sbc  [hl]                                        ; $4d7e: $9e
	ld   [$5d00], sp                                 ; $4d7f: $08 $00 $5d
	and  c                                           ; $4d82: $a1
	sbc  a                                           ; $4d83: $9f
	dec  c                                           ; $4d84: $0d
	ld   [bc], a                                     ; $4d85: $02
	and  l                                           ; $4d86: $a5
	inc  b                                           ; $4d87: $04
	xor  d                                           ; $4d88: $aa
	ld   a, l                                        ; $4d89: $7d
	sbc  [hl]                                        ; $4d8a: $9e
	ld   h, d                                        ; $4d8b: $62
	ld   e, l                                        ; $4d8c: $5d
	sbc  e                                           ; $4d8d: $9b
	ld   d, h                                        ; $4d8e: $54
	ld   h, e                                        ; $4d8f: $63
	adc  h                                           ; $4d90: $8c
	ld   [hl], l                                     ; $4d91: $75
	ld   h, l                                        ; $4d92: $65
	ld   l, l                                        ; $4d93: $6d
	sbc  a                                           ; $4d94: $9f
	dec  c                                           ; $4d95: $0d
	sub  h                                           ; $4d96: $94
	ld   [hl], c                                     ; $4d97: $71
	ld   e, l                                        ; $4d98: $5d
	sbc  b                                           ; $4d99: $98
	inc  bc                                          ; $4d9a: $03
	and  a                                           ; $4d9b: $a7
	and  c                                           ; $4d9c: $a1
	ld   [hl], l                                     ; $4d9d: $75
	ld   a, e                                        ; $4d9e: $7b
	sbc  a                                           ; $4d9f: $9f
	dec  c                                           ; $4da0: $0d
	nop                                              ; $4da1: $00
	ld   a, [bc]                                     ; $4da2: $0a
	ld   d, $22                                      ; $4da3: $16 $22
	rrca                                             ; $4da5: $0f
	inc  bc                                          ; $4da6: $03
	inc  bc                                          ; $4da7: $03
	ld   bc, $9258                                   ; $4da8: $01 $58 $92
	ld   h, a                                        ; $4dab: $67
	adc  l                                           ; $4dac: $8d
	ld   a, b                                        ; $4dad: $78
	ld   h, e                                        ; $4dae: $63
	ld   d, d                                        ; $4daf: $52
	sbc  a                                           ; $4db0: $9f
	dec  c                                           ; $4db1: $0d
	nop                                              ; $4db2: $00
	ld   a, [bc]                                     ; $4db3: $0a
	dec  b                                           ; $4db4: $05
	add  b                                           ; $4db5: $80
	halt                                             ; $4db6: $76
	ld   bc, $0001                                   ; $4db7: $01 $01 $00
	dec  b                                           ; $4dba: $05
	ld   b, b                                        ; $4dbb: $40
	ld   d, b                                        ; $4dbc: $50
	ld   bc, $0000                                   ; $4dbd: $01 $00 $00
	add  hl, hl                                      ; $4dc0: $29
	nop                                              ; $4dc1: $00
	nop                                              ; $4dc2: $00
	nop                                              ; $4dc3: $00
	inc  bc                                          ; $4dc4: $03
	dec  d                                           ; $4dc5: $15
	ld   bc, $24aa                                   ; $4dc6: $01 $aa $24
	inc  b                                           ; $4dc9: $04
	add  b                                           ; $4dca: $80
	inc  sp                                          ; $4dcb: $33
	ld   bc, $20ff                                   ; $4dcc: $01 $ff $20
	inc  e                                           ; $4dcf: $1c
	nop                                              ; $4dd0: $00
	ld   c, $01                                      ; $4dd1: $0e $01
	rrca                                             ; $4dd3: $0f
	nop                                              ; $4dd4: $00
	ld   bc, $0102                                   ; $4dd5: $01 $02 $01
	and  c                                           ; $4dd8: $a1
	db   $fc                                         ; $4dd9: $fc
	sub  [hl]                                        ; $4dda: $96
	ld   e, l                                        ; $4ddb: $5d
	inc  b                                           ; $4ddc: $04
	ld   b, d                                        ; $4ddd: $42
	ld   l, l                                        ; $4dde: $6d
	sbc  a                                           ; $4ddf: $9f
	inc  b                                           ; $4de0: $04
	dec  c                                           ; $4de1: $0d
	inc  bc                                          ; $4de2: $03
	cp   $d1                                         ; $4de3: $fe $d1
	call nz, $ecc2                                   ; $4de5: $c4 $c2 $ec
	ld   a, [$610d]                                  ; $4de8: $fa $0d $61
	and  c                                           ; $4deb: $a1
	ld   a, b                                        ; $4dec: $78
	ld   [bc], a                                     ; $4ded: $02
	and  c                                           ; $4dee: $a1
	inc  b                                           ; $4def: $04
	sbc  [hl]                                        ; $4df0: $9e
	ld   a, h                                        ; $4df1: $7c
	ld   d, d                                        ; $4df2: $52
	ld   d, d                                        ; $4df3: $52
	inc  b                                           ; $4df4: $04
	xor  d                                           ; $4df5: $aa
	ld   a, l                                        ; $4df6: $7d
	sbc  [hl]                                        ; $4df7: $9e
	ld   a, b                                        ; $4df8: $78
	ld   a, c                                        ; $4df9: $79
	ld   e, c                                        ; $4dfa: $59
	dec  c                                           ; $4dfb: $0d
	ld   h, a                                        ; $4dfc: $67
	ld   a, [hl]                                     ; $4dfd: $7e
	sub  a                                           ; $4dfe: $97
	ld   h, l                                        ; $4dff: $65
	ld   d, d                                        ; $4e00: $52
	ld   [bc], a                                     ; $4e01: $02
	jp   Jump_062_505a                               ; $4e02: $c3 $5a $50


	sbc  b                                           ; $4e05: $98
	ld   l, e                                        ; $4e06: $6b
	ld   d, h                                        ; $4e07: $54
	ld   l, [hl]                                     ; $4e08: $6e
	ld   a, b                                        ; $4e09: $78
	sbc  a                                           ; $4e0a: $9f
	dec  c                                           ; $4e0b: $0d
	nop                                              ; $4e0c: $00
	ld   a, [bc]                                     ; $4e0d: $0a
	inc  d                                           ; $4e0e: $14
	ld   b, $01                                      ; $4e0f: $06 $01
	rrca                                             ; $4e11: $0f
	dec  b                                           ; $4e12: $05
	ld   bc, $0801                                   ; $4e13: $01 $01 $08
	nop                                              ; $4e16: $00
	ld   a, l                                        ; $4e17: $7d
	and  c                                           ; $4e18: $a1
	dec  c                                           ; $4e19: $0d
	ld   l, a                                        ; $4e1a: $6f
	sub  l                                           ; $4e1b: $95
	ld   [hl], c                                     ; $4e1c: $71
	halt                                             ; $4e1d: $76
	xor  c                                           ; $4e1e: $a9
	xor  c                                           ; $4e1f: $a9
	ld   e, c                                        ; $4e20: $59
	ld   sp, hl                                      ; $4e21: $f9
	dec  c                                           ; $4e22: $0d
	nop                                              ; $4e23: $00
	ld   a, [bc]                                     ; $4e24: $0a
	rrca                                             ; $4e25: $0f
	nop                                              ; $4e26: $00
	ld   bc, $7d01                                   ; $4e27: $01 $01 $7d
	ld   d, d                                        ; $4e2a: $52
	sbc  [hl]                                        ; $4e2b: $9e
	ld   [hl], a                                     ; $4e2c: $77
	ld   d, h                                        ; $4e2d: $54
	ld   l, h                                        ; $4e2e: $6c
	sbc  a                                           ; $4e2f: $9f
	dec  c                                           ; $4e30: $0d
	nop                                              ; $4e31: $00
	ld   a, [bc]                                     ; $4e32: $0a
	inc  d                                           ; $4e33: $14
	ld   a, [bc]                                     ; $4e34: $0a
	ld   bc, $051c                                   ; $4e35: $01 $1c $05
	ld   bc, $0101                                   ; $4e38: $01 $01 $01
	ld   e, b                                        ; $4e3b: $58
	ld   a, l                                        ; $4e3c: $7d
	sub  [hl]                                        ; $4e3d: $96
	ld   d, h                                        ; $4e3e: $54
	ld   h, e                                        ; $4e3f: $63
	and  c                                           ; $4e40: $a1
	sbc  a                                           ; $4e41: $9f
	dec  c                                           ; $4e42: $0d
	nop                                              ; $4e43: $00
	ld   a, [bc]                                     ; $4e44: $0a
	rrca                                             ; $4e45: $0f
	nop                                              ; $4e46: $00
	ld   bc, $0201                                   ; $4e47: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e4a: $cf
	dec  b                                           ; $4e4b: $05
	ld   a, [de]                                     ; $4e4c: $1a
	ld   h, e                                        ; $4e4d: $63
	and  c                                           ; $4e4e: $a1
	sbc  a                                           ; $4e4f: $9f
	dec  c                                           ; $4e50: $0d
	ld   e, b                                        ; $4e51: $58
	ld   a, l                                        ; $4e52: $7d
	sub  [hl]                                        ; $4e53: $96
	ld   d, h                                        ; $4e54: $54
	ld   h, d                                        ; $4e55: $62
	ld   h, h                                        ; $4e56: $64
	ld   d, d                                        ; $4e57: $52
	adc  h                                           ; $4e58: $8c
	ld   h, a                                        ; $4e59: $67
	sbc  a                                           ; $4e5a: $9f
	dec  c                                           ; $4e5b: $0d
	inc  b                                           ; $4e5c: $04
	ld   c, c                                        ; $4e5d: $49
	ld   e, c                                        ; $4e5e: $59
	ld   h, d                                        ; $4e5f: $62
	inc  b                                           ; $4e60: $04
	di                                               ; $4e61: $f3
	ld   [hl], l                                     ; $4e62: $75
	ld   h, a                                        ; $4e63: $67
	ld   e, c                                        ; $4e64: $59
	ld   sp, hl                                      ; $4e65: $f9
	dec  c                                           ; $4e66: $0d
	nop                                              ; $4e67: $00
	ld   a, [bc]                                     ; $4e68: $0a
	inc  e                                           ; $4e69: $1c
	dec  b                                           ; $4e6a: $05
	ld   bc, $0101                                   ; $4e6b: $01 $01 $01
	ld   [bc], a                                     ; $4e6e: $02
	and  l                                           ; $4e6f: $a5
	inc  b                                           ; $4e70: $04
	xor  d                                           ; $4e71: $aa
	sbc  [hl]                                        ; $4e72: $9e
	inc  bc                                          ; $4e73: $03
	ld   l, e                                        ; $4e74: $6b
	inc  b                                           ; $4e75: $04
	ld   [de], a                                     ; $4e76: $12
	ld   [hl], c                                     ; $4e77: $71
	ld   [hl], h                                     ; $4e78: $74
	inc  b                                           ; $4e79: $04
	db   $e3                                         ; $4e7a: $e3
	ld   h, l                                        ; $4e7b: $65
	ld   d, d                                        ; $4e7c: $52
	ld   h, c                                        ; $4e7d: $61
	halt                                             ; $4e7e: $76
	ld   e, d                                        ; $4e7f: $5a
	dec  c                                           ; $4e80: $0d
	ld   d, b                                        ; $4e81: $50
	sbc  c                                           ; $4e82: $99
	and  c                                           ; $4e83: $a1
	sub  d                                           ; $4e84: $92
	ld   e, a                                        ; $4e85: $5f
	ld   [hl], a                                     ; $4e86: $77
	sbc  [hl]                                        ; $4e87: $9e
	ld   h, c                                        ; $4e88: $61
	sbc  d                                           ; $4e89: $9a
	adc  h                                           ; $4e8a: $8c
	ld   l, l                                        ; $4e8b: $6d
	dec  c                                           ; $4e8c: $0d
	adc  h                                           ; $4e8d: $8c
	sbc  c                                           ; $4e8e: $99
	ld   [bc], a                                     ; $4e8f: $02
	jr   nz, jr_062_4e96                             ; $4e90: $20 $04

	xor  d                                           ; $4e92: $aa
	ld   e, c                                        ; $4e93: $59
	ld   e, c                                        ; $4e94: $59
	sbc  c                                           ; $4e95: $99

jr_062_4e96:
	inc  bc                                          ; $4e96: $03
	dec  c                                           ; $4e97: $0d
	ld   [bc], a                                     ; $4e98: $02
	jp   Jump_062_7b92                               ; $4e99: $c3 $92 $7b


	and  c                                           ; $4e9c: $a1
	rst  $38                                         ; $4e9d: $ff
	rst  $38                                         ; $4e9e: $ff
	dec  c                                           ; $4e9f: $0d
	nop                                              ; $4ea0: $00
	ld   a, [bc]                                     ; $4ea1: $0a
	inc  e                                           ; $4ea2: $1c
	dec  b                                           ; $4ea3: $05
	nop                                              ; $4ea4: $00
	nop                                              ; $4ea5: $00
	ld   bc, $508c                                   ; $4ea6: $01 $8c $50
	sbc  [hl]                                        ; $4ea9: $9e
	inc  bc                                          ; $4eaa: $03
	ld   l, l                                        ; $4eab: $6d
	dec  b                                           ; $4eac: $05
	add  hl, de                                      ; $4ead: $19
	halt                                             ; $4eae: $76
	ld   e, c                                        ; $4eaf: $59
	inc  bc                                          ; $4eb0: $03
	and  a                                           ; $4eb1: $a7
	adc  [hl]                                        ; $4eb2: $8e
	ld   h, c                                        ; $4eb3: $61
	halt                                             ; $4eb4: $76
	ld   a, c                                        ; $4eb5: $79
	dec  c                                           ; $4eb6: $0d
	ld   a, b                                        ; $4eb7: $78
	sbc  c                                           ; $4eb8: $99
	ld   e, a                                        ; $4eb9: $5f
	ld   [hl], a                                     ; $4eba: $77
	sbc  [hl]                                        ; $4ebb: $9e
	inc  bc                                          ; $4ebc: $03
	add  l                                           ; $4ebd: $85
	inc  b                                           ; $4ebe: $04
	xor  e                                           ; $4ebf: $ab
	inc  bc                                          ; $4ec0: $03
	add  d                                           ; $4ec1: $82
	ld   a, c                                        ; $4ec2: $79
	ld   a, l                                        ; $4ec3: $7d
	and  a                                           ; $4ec4: $a7
	jp   nz, $9759                                   ; $4ec5: $c2 $59 $97

	dec  c                                           ; $4ec8: $0d
	dec  b                                           ; $4ec9: $05
	jr   nz, jr_062_4f31                             ; $4eca: $20 $65

	halt                                             ; $4ecc: $76
	ld   e, l                                        ; $4ecd: $5d
	ld   e, c                                        ; $4ece: $59
	sub  a                                           ; $4ecf: $97
	inc  b                                           ; $4ed0: $04
	ld   c, $03                                      ; $4ed1: $0e $03
	sbc  l                                           ; $4ed3: $9d
	inc  b                                           ; $4ed4: $04
	and  [hl]                                        ; $4ed5: $a6
	sub  d                                           ; $4ed6: $92
	sbc  a                                           ; $4ed7: $9f
	dec  c                                           ; $4ed8: $0d
	nop                                              ; $4ed9: $00
	ld   a, [bc]                                     ; $4eda: $0a
	inc  e                                           ; $4edb: $1c
	dec  b                                           ; $4edc: $05
	ld   bc, $0101                                   ; $4edd: $01 $01 $01
	ld   [hl], a                                     ; $4ee0: $77
	ld   d, h                                        ; $4ee1: $54
	ld   sp, hl                                      ; $4ee2: $f9
	db   $10                                         ; $4ee3: $10
	inc  bc                                          ; $4ee4: $03
	ld   l, e                                        ; $4ee5: $6b
	inc  b                                           ; $4ee6: $04
	ld   [de], a                                     ; $4ee7: $12
	ld   [hl], c                                     ; $4ee8: $71
	ld   [hl], h                                     ; $4ee9: $74
	ld   e, l                                        ; $4eea: $5d
	sbc  d                                           ; $4eeb: $9a
	sbc  c                                           ; $4eec: $99
	ld   sp, hl                                      ; $4eed: $f9
	dec  c                                           ; $4eee: $0d
	nop                                              ; $4eef: $00
	ld   a, [bc]                                     ; $4ef0: $0a
	add  hl, de                                      ; $4ef1: $19
	dec  b                                           ; $4ef2: $05
	ld   [bc], a                                     ; $4ef3: $02
	ld   a, l                                        ; $4ef4: $7d
	ld   d, d                                        ; $4ef5: $52
	nop                                              ; $4ef6: $00
	nop                                              ; $4ef7: $00
	ld   h, c                                        ; $4ef8: $61
	halt                                             ; $4ef9: $76
	sbc  l                                           ; $4efa: $9d
	sbc  c                                           ; $4efb: $99
	nop                                              ; $4efc: $00
	ld   bc, $b007                                   ; $4efd: $01 $07 $b0
	ld   bc, $0302                                   ; $4f00: $01 $02 $03
	ld   bc, $2000                                   ; $4f03: $01 $00 $20
	nop                                              ; $4f06: $00
	rlca                                             ; $4f07: $07
	ld   b, d                                        ; $4f08: $42
	ld   bc, $0302                                   ; $4f09: $01 $02 $03
	ld   bc, $2001                                   ; $4f0c: $01 $01 $20
	nop                                              ; $4f0f: $00
	ld   b, $84                                      ; $4f10: $06 $84
	ld   bc, $000f                                   ; $4f12: $01 $0f $00
	ld   bc, $6701                                   ; $4f15: $01 $01 $67
	adc  l                                           ; $4f18: $8d
	adc  h                                           ; $4f19: $8c
	ld   l, c                                        ; $4f1a: $69
	and  c                                           ; $4f1b: $a1
	sbc  a                                           ; $4f1c: $9f
	dec  c                                           ; $4f1d: $0d
	ld   [bc], a                                     ; $4f1e: $02
	and  l                                           ; $4f1f: $a5
	inc  b                                           ; $4f20: $04
	xor  d                                           ; $4f21: $aa
	ld   a, l                                        ; $4f22: $7d
	ld   l, a                                        ; $4f23: $6f
	sub  l                                           ; $4f24: $95
	ld   [hl], c                                     ; $4f25: $71
	halt                                             ; $4f26: $76
	dec  c                                           ; $4f27: $0d
	inc  b                                           ; $4f28: $04
	di                                               ; $4f29: $f3
	ld   e, d                                        ; $4f2a: $5a
	ld   d, b                                        ; $4f2b: $50
	sbc  c                                           ; $4f2c: $99
	and  c                                           ; $4f2d: $a1
	ld   [hl], l                                     ; $4f2e: $75
	ld   h, a                                        ; $4f2f: $67
	sbc  a                                           ; $4f30: $9f

jr_062_4f31:
	dec  c                                           ; $4f31: $0d
	nop                                              ; $4f32: $00
	ld   a, [bc]                                     ; $4f33: $0a
	inc  e                                           ; $4f34: $1c
	dec  b                                           ; $4f35: $05
	ld   [bc], a                                     ; $4f36: $02
	ld   [bc], a                                     ; $4f37: $02
	ld   bc, $5050                                   ; $4f38: $01 $50 $50
	sbc  [hl]                                        ; $4f3b: $9e
	ld   l, e                                        ; $4f3c: $6b
	ld   d, h                                        ; $4f3d: $54
	ld   a, b                                        ; $4f3e: $78
	and  c                                           ; $4f3f: $a1
	ld   e, c                                        ; $4f40: $59
	rst  $38                                         ; $4f41: $ff
	rst  $38                                         ; $4f42: $ff
	dec  c                                           ; $4f43: $0d
	adc  c                                           ; $4f44: $89
	ld   a, b                                        ; $4f45: $78
	sbc  [hl]                                        ; $4f46: $9e
	ld   h, l                                        ; $4f47: $65
	sub  c                                           ; $4f48: $91
	ei                                               ; $4f49: $fb
	ld   a, b                                        ; $4f4a: $78
	ld   d, d                                        ; $4f4b: $52
	ld   a, b                                        ; $4f4c: $78
	db   $fc                                         ; $4f4d: $fc
	sbc  a                                           ; $4f4e: $9f
	dec  c                                           ; $4f4f: $0d
	nop                                              ; $4f50: $00
	ld   a, [bc]                                     ; $4f51: $0a
	add  hl, hl                                      ; $4f52: $29
	ld   bc, $1c00                                   ; $4f53: $01 $00 $1c
	dec  b                                           ; $4f56: $05
	ld   [bc], a                                     ; $4f57: $02
	ld   [bc], a                                     ; $4f58: $02
	dec  e                                           ; $4f59: $1d
	ld   b, b                                        ; $4f5a: $40
	dec  d                                           ; $4f5b: $15
	inc  bc                                          ; $4f5c: $03
	dec  d                                           ; $4f5d: $15
	ld   bc, $2902                                   ; $4f5e: $01 $02 $29
	nop                                              ; $4f61: $00
	ld   bc, $a178                                   ; $4f62: $01 $78 $a1
	sub  d                                           ; $4f65: $92
	sbc  [hl]                                        ; $4f66: $9e
	ld   d, b                                        ; $4f67: $50
	ld   e, c                                        ; $4f68: $59
	and  c                                           ; $4f69: $a1
	ld   a, h                                        ; $4f6a: $7c
	ld   e, c                                        ; $4f6b: $59
	ld   d, d                                        ; $4f6c: $52
	ld   a, b                                        ; $4f6d: $78
	sbc  a                                           ; $4f6e: $9f
	dec  c                                           ; $4f6f: $0d
	adc  c                                           ; $4f70: $89
	ld   a, b                                        ; $4f71: $78
	sbc  [hl]                                        ; $4f72: $9e
	ld   h, l                                        ; $4f73: $65
	sub  c                                           ; $4f74: $91
	ei                                               ; $4f75: $fb
	ld   a, b                                        ; $4f76: $78
	ld   d, d                                        ; $4f77: $52
	ld   a, b                                        ; $4f78: $78
	db   $fc                                         ; $4f79: $fc
	sbc  a                                           ; $4f7a: $9f
	dec  c                                           ; $4f7b: $0d
	nop                                              ; $4f7c: $00
	ld   a, [bc]                                     ; $4f7d: $0a
	add  hl, hl                                      ; $4f7e: $29
	ld   bc, $0f00                                   ; $4f7f: $01 $00 $0f
	nop                                              ; $4f82: $00
	ld   bc, $5201                                   ; $4f83: $01 $01 $52
	ld   d, d                                        ; $4f86: $52
	ld   [hl], l                                     ; $4f87: $75
	ld   h, a                                        ; $4f88: $67
	sub  [hl]                                        ; $4f89: $96
	sbc  a                                           ; $4f8a: $9f
	dec  c                                           ; $4f8b: $0d
	ld   e, b                                        ; $4f8c: $58
	inc  bc                                          ; $4f8d: $03
	ld   l, e                                        ; $4f8e: $6b
	inc  b                                           ; $4f8f: $04
	ld   [de], a                                     ; $4f90: $12
	ld   d, d                                        ; $4f91: $52
	ld   h, l                                        ; $4f92: $65
	adc  h                                           ; $4f93: $8c
	ld   h, a                                        ; $4f94: $67
	sub  [hl]                                        ; $4f95: $96
	sbc  a                                           ; $4f96: $9f
	dec  c                                           ; $4f97: $0d
	ld   [bc], a                                     ; $4f98: $02
	and  l                                           ; $4f99: $a5
	inc  b                                           ; $4f9a: $04
	xor  d                                           ; $4f9b: $aa
	ld   a, l                                        ; $4f9c: $7d
	inc  b                                           ; $4f9d: $04
	ld   c, c                                        ; $4f9e: $49
	and  b                                           ; $4f9f: $a0
	sub  d                                           ; $4fa0: $92
	sbc  c                                           ; $4fa1: $99
	and  c                                           ; $4fa2: $a1
	ld   [hl], l                                     ; $4fa3: $75
	ld   h, a                                        ; $4fa4: $67
	ld   e, c                                        ; $4fa5: $59
	ld   sp, hl                                      ; $4fa6: $f9
	dec  c                                           ; $4fa7: $0d
	nop                                              ; $4fa8: $00
	ld   a, [bc]                                     ; $4fa9: $0a
	inc  e                                           ; $4faa: $1c
	dec  b                                           ; $4fab: $05
	ld   bc, $1d01                                   ; $4fac: $01 $01 $1d
	ld   b, b                                        ; $4faf: $40
	dec  d                                           ; $4fb0: $15
	inc  bc                                          ; $4fb1: $03
	dec  d                                           ; $4fb2: $15
	ld   bc, $2802                                   ; $4fb3: $01 $02 $28
	nop                                              ; $4fb6: $00
	ld   bc, $546b                                   ; $4fb7: $01 $6b $54
	ld   e, c                                        ; $4fba: $59
	ld   a, [$580d]                                  ; $4fbb: $fa $0d $58
	ld   e, b                                        ; $4fbe: $58
	ld   e, e                                        ; $4fbf: $5b
	ld   a, c                                        ; $4fc0: $79
	sbc  [hl]                                        ; $4fc1: $9e
	inc  bc                                          ; $4fc2: $03
	ld   e, e                                        ; $4fc3: $5b
	ld   e, c                                        ; $4fc4: $59
	sbc  c                                           ; $4fc5: $99
	sbc  l                                           ; $4fc6: $9d
	db   $fc                                         ; $4fc7: $fc
	sbc  a                                           ; $4fc8: $9f
	dec  c                                           ; $4fc9: $0d
	nop                                              ; $4fca: $00
	ld   a, [bc]                                     ; $4fcb: $0a
	inc  e                                           ; $4fcc: $1c
	dec  b                                           ; $4fcd: $05
	dec  b                                           ; $4fce: $05
	dec  b                                           ; $4fcf: $05
	ld   bc, $a502                                   ; $4fd0: $01 $02 $a5
	inc  b                                           ; $4fd3: $04
	xor  d                                           ; $4fd4: $aa
	ld   a, l                                        ; $4fd5: $7d
	ld   a, b                                        ; $4fd6: $78
	sbc  [hl]                                        ; $4fd7: $9e
	inc  b                                           ; $4fd8: $04
	cp   [hl]                                        ; $4fd9: $be
	add  [hl]                                        ; $4fda: $86
	ld   a, h                                        ; $4fdb: $7c
	inc  bc                                          ; $4fdc: $03
	pop  de                                          ; $4fdd: $d1
	ld   [bc], a                                     ; $4fde: $02
	jr   nz, jr_062_4fe5                             ; $4fdf: $20 $04

	sbc  a                                           ; $4fe1: $9f
	sbc  a                                           ; $4fe2: $9f
	dec  c                                           ; $4fe3: $0d
	inc  b                                           ; $4fe4: $04

jr_062_4fe5:
	ld   a, a                                        ; $4fe5: $7f
	ld   [bc], a                                     ; $4fe6: $02
	ld   a, a                                        ; $4fe7: $7f
	ld   [bc], a                                     ; $4fe8: $02
	ld   e, b                                        ; $4fe9: $58
	ld   a, h                                        ; $4fea: $7c
	xor  c                                           ; $4feb: $a9
	push af                                          ; $4fec: $f5
	cp   c                                           ; $4fed: $b9
	push af                                          ; $4fee: $f5
	ld   a, h                                        ; $4fef: $7c
	inc  bc                                          ; $4ff0: $03
	dec  c                                           ; $4ff1: $0d
	inc  bc                                          ; $4ff2: $03
	ld   h, l                                        ; $4ff3: $65
	ld   h, b                                        ; $4ff4: $60
	halt                                             ; $4ff5: $76
	dec  c                                           ; $4ff6: $0d
	inc  bc                                          ; $4ff7: $03
	inc  h                                           ; $4ff8: $24
	ld   [bc], a                                     ; $4ff9: $02
	jr   nc, jr_062_5000                             ; $4ffa: $30 $04

	inc  sp                                          ; $4ffc: $33
	ld   a, b                                        ; $4ffd: $78
	and  c                                           ; $4ffe: $a1
	sub  d                                           ; $4fff: $92

jr_062_5000:
	sbc  a                                           ; $5000: $9f
	dec  c                                           ; $5001: $0d
	nop                                              ; $5002: $00
	ld   a, [bc]                                     ; $5003: $0a
	ld   bc, $936f                                   ; $5004: $01 $6f $93
	ei                                               ; $5007: $fb
	ld   h, c                                        ; $5008: $61
	halt                                             ; $5009: $76
	ld   [hl], l                                     ; $500a: $75
	sbc  [hl]                                        ; $500b: $9e
	ld   e, b                                        ; $500c: $58
	inc  bc                                          ; $500d: $03
	ld   l, e                                        ; $500e: $6b
	inc  b                                           ; $500f: $04
	ld   [de], a                                     ; $5010: $12
	ld   d, d                                        ; $5011: $52
	dec  c                                           ; $5012: $0d
	sub  [hl]                                        ; $5013: $96
	sbc  e                                           ; $5014: $9b
	ld   h, l                                        ; $5015: $65
	sub  e                                           ; $5016: $93
	ei                                               ; $5017: $fb
	ld   a, c                                        ; $5018: $79
	ld   a, b                                        ; $5019: $78
	sbc  a                                           ; $501a: $9f
	dec  c                                           ; $501b: $0d
	nop                                              ; $501c: $00
	ld   a, [bc]                                     ; $501d: $0a
	dec  c                                           ; $501e: $0d
	nop                                              ; $501f: $00
	nop                                              ; $5020: $00
	rrca                                             ; $5021: $0f
	nop                                              ; $5022: $00
	ld   bc, $5423                                   ; $5023: $01 $23 $54
	inc  e                                           ; $5026: $1c
	dec  b                                           ; $5027: $05
	nop                                              ; $5028: $00
	nop                                              ; $5029: $00
	ld   bc, $688c                                   ; $502a: $01 $8c $68
	ld   a, l                                        ; $502d: $7d
	sbc  [hl]                                        ; $502e: $9e
	inc  bc                                          ; $502f: $03
	dec  c                                           ; $5030: $0d
	inc  bc                                          ; $5031: $03
	ld   h, l                                        ; $5032: $65
	ld   h, b                                        ; $5033: $60
	ld   a, c                                        ; $5034: $79
	inc  b                                           ; $5035: $04
	adc  d                                           ; $5036: $8a
	inc  b                                           ; $5037: $04
	rst  JumpTable                                         ; $5038: $df
	ld   a, b                                        ; $5039: $78
	dec  c                                           ; $503a: $0d
	inc  b                                           ; $503b: $04
	sub  l                                           ; $503c: $95
	inc  b                                           ; $503d: $04
	ld   h, c                                        ; $503e: $61
	ld   a, h                                        ; $503f: $7c
	ld   l, a                                        ; $5040: $6f
	sub  l                                           ; $5041: $95
	ld   d, h                                        ; $5042: $54
	ld   l, l                                        ; $5043: $6d
	ld   [hl], d                                     ; $5044: $72
	and  b                                           ; $5045: $a0
	ld   e, b                                        ; $5046: $58
	ld   [bc], a                                     ; $5047: $02
	add  b                                           ; $5048: $80
	ld   d, d                                        ; $5049: $52
	dec  c                                           ; $504a: $0d
	ld   h, a                                        ; $504b: $67
	sbc  c                                           ; $504c: $99
	sbc  l                                           ; $504d: $9d
	sbc  a                                           ; $504e: $9f
	inc  b                                           ; $504f: $04
	adc  d                                           ; $5050: $8a
	inc  b                                           ; $5051: $04
	rst  JumpTable                                         ; $5052: $df
	ld   a, b                                        ; $5053: $78
	sub  b                                           ; $5054: $90
	and  c                                           ; $5055: $a1
	ld   a, l                                        ; $5056: $7d
	sbc  [hl]                                        ; $5057: $9e
	dec  c                                           ; $5058: $0d
	nop                                              ; $5059: $00

Jump_062_505a:
	ld   a, [bc]                                     ; $505a: $0a
	ld   bc, $020a                                   ; $505b: $01 $0a $02
	pop  af                                          ; $505e: $f1
	and  l                                           ; $505f: $a5
	and  $fb                                         ; $5060: $e6 $fb
	ld   d, $14                                      ; $5062: $16 $14
	db   $e3                                         ; $5064: $e3
	ei                                               ; $5065: $fb
	ret                                              ; $5066: $c9


	db   $ed                                         ; $5067: $ed
	ld   a, [bc]                                     ; $5068: $0a
	inc  bc                                          ; $5069: $03
	sbc  a                                           ; $506a: $9f
	dec  c                                           ; $506b: $0d
	ld   a, [bc]                                     ; $506c: $0a
	ld   [bc], a                                     ; $506d: $02
	dec  d                                           ; $506e: $15
	inc  de                                          ; $506f: $13
	ldh  [$ec], a                                    ; $5070: $e0 $ec
	ld   a, h                                        ; $5072: $7c
	db   $dd                                         ; $5073: $dd
	db   $ed                                         ; $5074: $ed
	ret                                              ; $5075: $c9


	inc  de                                          ; $5076: $13
	inc  d                                           ; $5077: $14
	inc  b                                           ; $5078: $04
	adc  a                                           ; $5079: $8f
	ld   a, [bc]                                     ; $507a: $0a
	inc  bc                                          ; $507b: $03
	sbc  a                                           ; $507c: $9f
	dec  c                                           ; $507d: $0d
	ld   a, [bc]                                     ; $507e: $0a
	ld   [bc], a                                     ; $507f: $02
	inc  de                                          ; $5080: $13
	ld   [de], a                                     ; $5081: $12
	ldh  [$ec], a                                    ; $5082: $e0 $ec
	ld   a, h                                        ; $5084: $7c
	set  0, h                                        ; $5085: $cb $c4
	ret                                              ; $5087: $c9


	ld   d, $15                                      ; $5088: $16 $15
	ld   [bc], a                                     ; $508a: $02
	inc  a                                           ; $508b: $3c
	ld   a, [bc]                                     ; $508c: $0a
	inc  bc                                          ; $508d: $03
	sub  d                                           ; $508e: $92
	sbc  a                                           ; $508f: $9f
	dec  c                                           ; $5090: $0d
	nop                                              ; $5091: $00
	ld   a, [bc]                                     ; $5092: $0a
	ld   bc, $5703                                   ; $5093: $01 $03 $57
	inc  b                                           ; $5096: $04
	sub  l                                           ; $5097: $95
	sbc  [hl]                                        ; $5098: $9e
	inc  bc                                          ; $5099: $03
	adc  $02                                         ; $509a: $ce $02
	inc  [hl]                                        ; $509c: $34
	ld   [bc], a                                     ; $509d: $02

Call_062_509e:
	cp   $02                                         ; $509e: $fe $02
	ld   e, c                                        ; $50a0: $59
	ld   a, c                                        ; $50a1: $79
	ld   d, b                                        ; $50a2: $50
	sbc  c                                           ; $50a3: $99
	ld   e, c                                        ; $50a4: $59
	sub  a                                           ; $50a5: $97
	sbc  a                                           ; $50a6: $9f
	dec  c                                           ; $50a7: $0d
	adc  c                                           ; $50a8: $89
	ld   a, b                                        ; $50a9: $78
	sbc  [hl]                                        ; $50aa: $9e
	ld   l, l                                        ; $50ab: $6d
	ld   a, h                                        ; $50ac: $7c
	adc  [hl]                                        ; $50ad: $8e
	ld   [hl], l                                     ; $50ae: $75
	sbc  a                                           ; $50af: $9f
	dec  c                                           ; $50b0: $0d
	nop                                              ; $50b1: $00
	ld   a, [bc]                                     ; $50b2: $0a
	dec  c                                           ; $50b3: $0d
	nop                                              ; $50b4: $00
	nop                                              ; $50b5: $00
	rrca                                             ; $50b6: $0f
	nop                                              ; $50b7: $00
	ld   bc, $7123                                   ; $50b8: $01 $23 $71
	ld   bc, $9166                                   ; $50bb: $01 $66 $91
	ld   d, b                                        ; $50be: $50
	sbc  [hl]                                        ; $50bf: $9e
	inc  b                                           ; $50c0: $04
	sub  l                                           ; $50c1: $95
	inc  b                                           ; $50c2: $04
	ld   h, c                                        ; $50c3: $61
	and  b                                           ; $50c4: $a0
	inc  bc                                          ; $50c5: $03
	ld   h, d                                        ; $50c6: $62
	adc  a                                           ; $50c7: $8f
	sub  [hl]                                        ; $50c8: $96
	ld   d, h                                        ; $50c9: $54
	sbc  a                                           ; $50ca: $9f
	dec  c                                           ; $50cb: $0d
	adc  h                                           ; $50cc: $8c
	ld   l, b                                        ; $50cd: $68
	ld   a, l                                        ; $50ce: $7d
	rst  $38                                         ; $50cf: $ff
	rst  $38                                         ; $50d0: $ff
	dec  c                                           ; $50d1: $0d
	nop                                              ; $50d2: $00
	ld   a, [bc]                                     ; $50d3: $0a
	add  hl, de                                      ; $50d4: $19
	dec  b                                           ; $50d5: $05
	inc  bc                                          ; $50d6: $03
	pop  af                                          ; $50d7: $f1
	and  l                                           ; $50d8: $a5
	and  $fb                                         ; $50d9: $e6 $fb
	and  b                                           ; $50db: $a0
	ld   d, $14                                      ; $50dc: $16 $14
	db   $e3                                         ; $50de: $e3
	ei                                               ; $50df: $fb
	ret                                              ; $50e0: $c9


	db   $ed                                         ; $50e1: $ed
	nop                                              ; $50e2: $00
	nop                                              ; $50e3: $00
	pop  af                                          ; $50e4: $f1
	and  l                                           ; $50e5: $a5
	and  $fb                                         ; $50e6: $e6 $fb
	and  b                                           ; $50e8: $a0
	dec  d                                           ; $50e9: $15
	inc  de                                          ; $50ea: $13
	db   $e3                                         ; $50eb: $e3
	ei                                               ; $50ec: $fb
	ret                                              ; $50ed: $c9


	db   $ed                                         ; $50ee: $ed
	nop                                              ; $50ef: $00
	ld   bc, $a5f1                                   ; $50f0: $01 $f1 $a5
	and  $fb                                         ; $50f3: $e6 $fb
	and  b                                           ; $50f5: $a0
	ld   d, $15                                      ; $50f6: $16 $15
	db   $e3                                         ; $50f8: $e3
	ei                                               ; $50f9: $fb
	ret                                              ; $50fa: $c9


	db   $ed                                         ; $50fb: $ed
	nop                                              ; $50fc: $00
	ld   [bc], a                                     ; $50fd: $02
	rlca                                             ; $50fe: $07
	ld   c, e                                        ; $50ff: $4b
	inc  bc                                          ; $5100: $03
	ld   [bc], a                                     ; $5101: $02
	inc  bc                                          ; $5102: $03
	ld   bc, $2000                                   ; $5103: $01 $00 $20
	nop                                              ; $5106: $00
	rlca                                             ; $5107: $07
	ld   l, [hl]                                     ; $5108: $6e
	inc  bc                                          ; $5109: $03
	ld   [bc], a                                     ; $510a: $02
	inc  bc                                          ; $510b: $03
	ld   bc, $2001                                   ; $510c: $01 $01 $20
	nop                                              ; $510f: $00
	rlca                                             ; $5110: $07
	adc  e                                           ; $5111: $8b
	inc  bc                                          ; $5112: $03
	ld   [bc], a                                     ; $5113: $02
	inc  bc                                          ; $5114: $03
	ld   bc, $2002                                   ; $5115: $01 $02 $20
	nop                                              ; $5118: $00
	ld   b, $a8                                      ; $5119: $06 $a8
	inc  bc                                          ; $511b: $03
	rrca                                             ; $511c: $0f
	nop                                              ; $511d: $00
	ld   bc, $f101                                   ; $511e: $01 $01 $f1
	and  l                                           ; $5121: $a5
	and  $fb                                         ; $5122: $e6 $fb
	and  b                                           ; $5124: $a0
	ld   d, $14                                      ; $5125: $16 $14
	db   $e3                                         ; $5127: $e3
	ei                                               ; $5128: $fb
	ret                                              ; $5129: $c9


	db   $ed                                         ; $512a: $ed
	ld   l, [hl]                                     ; $512b: $6e
	sbc  a                                           ; $512c: $9f
	dec  c                                           ; $512d: $0d
	nop                                              ; $512e: $00
	ld   a, [bc]                                     ; $512f: $0a
	db   $10                                         ; $5130: $10
	ld   [hl-], a                                    ; $5131: $32
	nop                                              ; $5132: $00
	dec  b                                           ; $5133: $05
	ld   b, b                                        ; $5134: $40
	rst  $38                                         ; $5135: $ff
	inc  bc                                          ; $5136: $03
	rst  $38                                         ; $5137: $ff
	ld   bc, $2801                                   ; $5138: $01 $01 $28
	nop                                              ; $513b: $00
	ld   b, $bc                                      ; $513c: $06 $bc
	inc  b                                           ; $513e: $04
	rrca                                             ; $513f: $0f
	nop                                              ; $5140: $00
	ld   bc, $f101                                   ; $5141: $01 $01 $f1
	and  l                                           ; $5144: $a5
	and  $fb                                         ; $5145: $e6 $fb
	and  b                                           ; $5147: $a0
	dec  d                                           ; $5148: $15
	inc  de                                          ; $5149: $13
	db   $e3                                         ; $514a: $e3
	ei                                               ; $514b: $fb
	ret                                              ; $514c: $c9


	db   $ed                                         ; $514d: $ed
	dec  c                                           ; $514e: $0d
	ld   l, [hl]                                     ; $514f: $6e
	ld   [hl], c                                     ; $5150: $71
	ld   e, a                                        ; $5151: $5f
	ld   sp, hl                                      ; $5152: $f9
	dec  c                                           ; $5153: $0d
	nop                                              ; $5154: $00
	ld   a, [bc]                                     ; $5155: $0a
	db   $10                                         ; $5156: $10
	ld   [hl-], a                                    ; $5157: $32
	nop                                              ; $5158: $00
	ld   b, $bc                                      ; $5159: $06 $bc
	inc  b                                           ; $515b: $04
	rrca                                             ; $515c: $0f
	nop                                              ; $515d: $00
	ld   bc, $f101                                   ; $515e: $01 $01 $f1
	and  l                                           ; $5161: $a5
	and  $fb                                         ; $5162: $e6 $fb
	and  b                                           ; $5164: $a0
	ld   d, $15                                      ; $5165: $16 $15
	db   $e3                                         ; $5167: $e3
	ei                                               ; $5168: $fb
	ret                                              ; $5169: $c9


	db   $ed                                         ; $516a: $ed
	dec  c                                           ; $516b: $0d
	ld   l, [hl]                                     ; $516c: $6e
	ld   [hl], c                                     ; $516d: $71
	ld   e, a                                        ; $516e: $5f
	ld   sp, hl                                      ; $516f: $f9
	dec  c                                           ; $5170: $0d
	nop                                              ; $5171: $00
	ld   a, [bc]                                     ; $5172: $0a
	db   $10                                         ; $5173: $10
	ld   [hl-], a                                    ; $5174: $32
	nop                                              ; $5175: $00
	ld   b, $bc                                      ; $5176: $06 $bc
	inc  b                                           ; $5178: $04
	rrca                                             ; $5179: $0f
	nop                                              ; $517a: $00
	ld   bc, $5001                                   ; $517b: $01 $01 $50
	sbc  [hl]                                        ; $517e: $9e
	inc  b                                           ; $517f: $04
	and  e                                           ; $5180: $a3
	sbc  d                                           ; $5181: $9a
	ld   l, l                                        ; $5182: $6d
	rst  $38                                         ; $5183: $ff
	rst  $38                                         ; $5184: $ff
	dec  c                                           ; $5185: $0d
	sub  b                                           ; $5186: $90
	ld   d, h                                        ; $5187: $54
	ld   [bc], a                                     ; $5188: $02
	jr   nz, jr_062_518d                             ; $5189: $20 $02

	sub  e                                           ; $518b: $93
	ld   [bc], a                                     ; $518c: $02

jr_062_518d:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $518d: $cf
	dec  b                                           ; $518e: $05
	ld   a, [de]                                     ; $518f: $1a
	ld   h, e                                        ; $5190: $63
	and  c                                           ; $5191: $a1
	ld   a, c                                        ; $5192: $79
	dec  c                                           ; $5193: $0d
	ld   [bc], a                                     ; $5194: $02
	jp   nz, Jump_062_7452                           ; $5195: $c2 $52 $74

	ld   h, c                                        ; $5198: $61
	sub  [hl]                                        ; $5199: $96
	ld   d, h                                        ; $519a: $54
	sbc  a                                           ; $519b: $9f
	dec  c                                           ; $519c: $0d
	nop                                              ; $519d: $00
	ld   a, [bc]                                     ; $519e: $0a
	inc  hl                                          ; $519f: $23
	ld   d, h                                        ; $51a0: $54
	dec  c                                           ; $51a1: $0d
	dec  b                                           ; $51a2: $05
	nop                                              ; $51a3: $00
	rrca                                             ; $51a4: $0f
	nop                                              ; $51a5: $00
	ld   bc, $6701                                   ; $51a6: $01 $01 $67
	adc  l                                           ; $51a9: $8d
	adc  h                                           ; $51aa: $8c
	ld   l, c                                        ; $51ab: $69
	and  c                                           ; $51ac: $a1
	ld   [bc], a                                     ; $51ad: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $51ae: $cf
	dec  b                                           ; $51af: $05
	ld   a, [de]                                     ; $51b0: $1a
	ld   h, e                                        ; $51b1: $63
	and  c                                           ; $51b2: $a1
	sbc  a                                           ; $51b3: $9f
	dec  c                                           ; $51b4: $0d
	inc  bc                                          ; $51b5: $03
	and  b                                           ; $51b6: $a0
	ld   [hl], c                                     ; $51b7: $71
	ld   [hl], h                                     ; $51b8: $74
	ld   e, l                                        ; $51b9: $5d
	sbc  c                                           ; $51ba: $99
	sub  b                                           ; $51bb: $90
	ld   a, h                                        ; $51bc: $7c
	sbc  [hl]                                        ; $51bd: $9e
	sub  b                                           ; $51be: $90
	ld   d, h                                        ; $51bf: $54
	ld   [bc], a                                     ; $51c0: $02
	jr   nz, jr_062_51c7                             ; $51c1: $20 $04

	add  hl, hl                                      ; $51c3: $29
	dec  c                                           ; $51c4: $0d
	ld   [bc], a                                     ; $51c5: $02
	ret  nc                                          ; $51c6: $d0

jr_062_51c7:
	ld   d, [hl]                                     ; $51c7: $56
	ld   [hl], h                                     ; $51c8: $74
	sub  b                                           ; $51c9: $90
	sub  a                                           ; $51ca: $97
	ld   d, [hl]                                     ; $51cb: $56
	adc  h                                           ; $51cc: $8c
	ld   l, c                                        ; $51cd: $69
	and  c                                           ; $51ce: $a1
	ld   e, c                                        ; $51cf: $59
	ld   sp, hl                                      ; $51d0: $f9
	dec  c                                           ; $51d1: $0d
	nop                                              ; $51d2: $00
	ld   a, [bc]                                     ; $51d3: $0a
	inc  e                                           ; $51d4: $1c
	dec  b                                           ; $51d5: $05
	nop                                              ; $51d6: $00
	nop                                              ; $51d7: $00
	ld   bc, $020a                                   ; $51d8: $01 $0a $02
	pop  af                                          ; $51db: $f1
	and  l                                           ; $51dc: $a5
	and  $fb                                         ; $51dd: $e6 $fb
	ld   d, $14                                      ; $51df: $16 $14
	db   $e3                                         ; $51e1: $e3
	ei                                               ; $51e2: $fb
	ret                                              ; $51e3: $c9


	db   $ed                                         ; $51e4: $ed
	ld   a, [bc]                                     ; $51e5: $0a
	inc  bc                                          ; $51e6: $03
	sbc  a                                           ; $51e7: $9f
	dec  c                                           ; $51e8: $0d
	ld   a, [bc]                                     ; $51e9: $0a
	ld   [bc], a                                     ; $51ea: $02
	dec  d                                           ; $51eb: $15
	inc  de                                          ; $51ec: $13
	ldh  [$ec], a                                    ; $51ed: $e0 $ec
	ld   a, h                                        ; $51ef: $7c
	db   $dd                                         ; $51f0: $dd
	db   $ed                                         ; $51f1: $ed
	ret                                              ; $51f2: $c9


	inc  de                                          ; $51f3: $13
	inc  d                                           ; $51f4: $14
	inc  b                                           ; $51f5: $04
	adc  a                                           ; $51f6: $8f
	ld   a, [bc]                                     ; $51f7: $0a
	inc  bc                                          ; $51f8: $03
	sbc  a                                           ; $51f9: $9f
	dec  c                                           ; $51fa: $0d
	ld   a, [bc]                                     ; $51fb: $0a
	ld   [bc], a                                     ; $51fc: $02
	inc  de                                          ; $51fd: $13
	ld   [de], a                                     ; $51fe: $12
	ldh  [$ec], a                                    ; $51ff: $e0 $ec
	ld   a, h                                        ; $5201: $7c
	set  0, h                                        ; $5202: $cb $c4
	ret                                              ; $5204: $c9


	ld   d, $15                                      ; $5205: $16 $15
	ld   [bc], a                                     ; $5207: $02
	inc  a                                           ; $5208: $3c
	ld   a, [bc]                                     ; $5209: $0a
	inc  bc                                          ; $520a: $03
	sub  d                                           ; $520b: $92
	sbc  a                                           ; $520c: $9f
	dec  c                                           ; $520d: $0d
	nop                                              ; $520e: $00
	ld   a, [bc]                                     ; $520f: $0a
	rrca                                             ; $5210: $0f
	nop                                              ; $5211: $00
	ld   bc, $0a01                                   ; $5212: $01 $01 $0a
	ld   [bc], a                                     ; $5215: $02
	pop  af                                          ; $5216: $f1
	and  l                                           ; $5217: $a5
	and  $fb                                         ; $5218: $e6 $fb
	ld   d, $14                                      ; $521a: $16 $14
	db   $e3                                         ; $521c: $e3
	ei                                               ; $521d: $fb
	ret                                              ; $521e: $c9


	db   $ed                                         ; $521f: $ed
	ld   a, [bc]                                     ; $5220: $0a
	inc  bc                                          ; $5221: $03
	sbc  a                                           ; $5222: $9f
	dec  c                                           ; $5223: $0d
	ld   a, [bc]                                     ; $5224: $0a
	ld   [bc], a                                     ; $5225: $02
	dec  d                                           ; $5226: $15
	inc  de                                          ; $5227: $13
	ldh  [$ec], a                                    ; $5228: $e0 $ec
	ld   a, h                                        ; $522a: $7c
	db   $dd                                         ; $522b: $dd
	db   $ed                                         ; $522c: $ed
	ret                                              ; $522d: $c9


	inc  de                                          ; $522e: $13
	inc  d                                           ; $522f: $14
	inc  b                                           ; $5230: $04
	adc  a                                           ; $5231: $8f
	ld   a, [bc]                                     ; $5232: $0a
	inc  bc                                          ; $5233: $03
	sbc  a                                           ; $5234: $9f
	dec  c                                           ; $5235: $0d
	ld   a, [bc]                                     ; $5236: $0a
	ld   [bc], a                                     ; $5237: $02
	inc  de                                          ; $5238: $13
	ld   [de], a                                     ; $5239: $12
	ldh  [$ec], a                                    ; $523a: $e0 $ec
	ld   a, h                                        ; $523c: $7c
	set  0, h                                        ; $523d: $cb $c4
	ret                                              ; $523f: $c9


	ld   d, $15                                      ; $5240: $16 $15
	ld   [bc], a                                     ; $5242: $02
	inc  a                                           ; $5243: $3c
	ld   a, [bc]                                     ; $5244: $0a
	inc  bc                                          ; $5245: $03
	rst  $38                                         ; $5246: $ff
	halt                                             ; $5247: $76
	sbc  a                                           ; $5248: $9f
	dec  c                                           ; $5249: $0d
	nop                                              ; $524a: $00
	ld   a, [bc]                                     ; $524b: $0a
	ld   bc, $599d                                   ; $524c: $01 $9d $59
	sbc  b                                           ; $524f: $98
	adc  h                                           ; $5250: $8c
	ld   h, l                                        ; $5251: $65
	ld   l, l                                        ; $5252: $6d
	sbc  a                                           ; $5253: $9f
	dec  c                                           ; $5254: $0d
	ld   [hl], l                                     ; $5255: $75
	ld   a, l                                        ; $5256: $7d
	sbc  [hl]                                        ; $5257: $9e
	sub  b                                           ; $5258: $90
	ld   d, h                                        ; $5259: $54
	ld   [bc], a                                     ; $525a: $02
	jr   nz, jr_062_5261                             ; $525b: $20 $04

	add  hl, hl                                      ; $525d: $29
	ld   [bc], a                                     ; $525e: $02
	ld   a, a                                        ; $525f: $7f
	ld   [hl], c                                     ; $5260: $71

jr_062_5261:
	ld   [hl], h                                     ; $5261: $74
	dec  c                                           ; $5262: $0d
	ld   e, e                                        ; $5263: $5b
	adc  h                                           ; $5264: $8c
	ld   h, a                                        ; $5265: $67
	sbc  a                                           ; $5266: $9f
	dec  c                                           ; $5267: $0d
	nop                                              ; $5268: $00
	ld   a, [bc]                                     ; $5269: $0a
	dec  c                                           ; $526a: $0d
	nop                                              ; $526b: $00
	nop                                              ; $526c: $00
	rrca                                             ; $526d: $0f
	nop                                              ; $526e: $00
	ld   bc, $7123                                   ; $526f: $01 $23 $71
	ld   bc, $6596                                   ; $5272: $01 $96 $65
	sbc  [hl]                                        ; $5275: $9e
	ld   h, e                                        ; $5276: $63
	ld   [hl], c                                     ; $5277: $71
	ld   h, e                                        ; $5278: $63
	halt                                             ; $5279: $76
	inc  b                                           ; $527a: $04
	sub  l                                           ; $527b: $95
	inc  b                                           ; $527c: $04
	ld   h, c                                        ; $527d: $61
	and  b                                           ; $527e: $a0
	dec  c                                           ; $527f: $0d
	inc  bc                                          ; $5280: $03
	ld   h, d                                        ; $5281: $62
	adc  a                                           ; $5282: $8f
	sbc  c                                           ; $5283: $99
	ld   l, h                                        ; $5284: $6c
	rst  $38                                         ; $5285: $ff
	rst  $38                                         ; $5286: $ff
	dec  c                                           ; $5287: $0d
	nop                                              ; $5288: $00
	ld   a, [bc]                                     ; $5289: $0a
	ld   b, $03                                      ; $528a: $06 $03
	inc  bc                                          ; $528c: $03
	ld   bc, $6803                                   ; $528d: $01 $03 $68
	ld   a, l                                        ; $5290: $7d
	rst  $38                                         ; $5291: $ff
	rst  $38                                         ; $5292: $ff
	dec  c                                           ; $5293: $0d
	nop                                              ; $5294: $00
	ld   a, [bc]                                     ; $5295: $0a
	add  hl, de                                      ; $5296: $19
	dec  b                                           ; $5297: $05
	inc  bc                                          ; $5298: $03
	dec  d                                           ; $5299: $15
	inc  de                                          ; $529a: $13
	ldh  [$ec], a                                    ; $529b: $e0 $ec
	ld   a, h                                        ; $529d: $7c
	db   $dd                                         ; $529e: $dd
	db   $ed                                         ; $529f: $ed
	ret                                              ; $52a0: $c9


	inc  de                                          ; $52a1: $13
	inc  d                                           ; $52a2: $14
	inc  b                                           ; $52a3: $04
	adc  a                                           ; $52a4: $8f
	nop                                              ; $52a5: $00
	nop                                              ; $52a6: $00
	ld   d, $14                                      ; $52a7: $16 $14
	ldh  [$ec], a                                    ; $52a9: $e0 $ec
	ld   a, h                                        ; $52ab: $7c
	db   $dd                                         ; $52ac: $dd
	db   $ed                                         ; $52ad: $ed
	ret                                              ; $52ae: $c9


	inc  de                                          ; $52af: $13
	inc  d                                           ; $52b0: $14
	inc  b                                           ; $52b1: $04
	adc  a                                           ; $52b2: $8f
	nop                                              ; $52b3: $00
	ld   bc, $1315                                   ; $52b4: $01 $15 $13
	ldh  [$ec], a                                    ; $52b7: $e0 $ec
	ld   a, h                                        ; $52b9: $7c
	db   $dd                                         ; $52ba: $dd
	db   $ed                                         ; $52bb: $ed
	ret                                              ; $52bc: $c9


	inc  de                                          ; $52bd: $13
	ld   [de], a                                     ; $52be: $12
	inc  b                                           ; $52bf: $04
	adc  a                                           ; $52c0: $8f
	nop                                              ; $52c1: $00
	ld   [bc], a                                     ; $52c2: $02
	rlca                                             ; $52c3: $07
	db   $10                                         ; $52c4: $10
	dec  b                                           ; $52c5: $05
	ld   [bc], a                                     ; $52c6: $02
	inc  bc                                          ; $52c7: $03
	ld   bc, $2000                                   ; $52c8: $01 $00 $20
	nop                                              ; $52cb: $00
	rlca                                             ; $52cc: $07
	dec  [hl]                                        ; $52cd: $35
	dec  b                                           ; $52ce: $05
	ld   [bc], a                                     ; $52cf: $02
	inc  bc                                          ; $52d0: $03
	ld   bc, $2001                                   ; $52d1: $01 $01 $20
	nop                                              ; $52d4: $00
	rlca                                             ; $52d5: $07
	ld   d, h                                        ; $52d6: $54
	dec  b                                           ; $52d7: $05
	ld   [bc], a                                     ; $52d8: $02
	inc  bc                                          ; $52d9: $03
	ld   bc, $2002                                   ; $52da: $01 $02 $20
	nop                                              ; $52dd: $00
	ld   b, $a8                                      ; $52de: $06 $a8
	inc  bc                                          ; $52e0: $03
	rrca                                             ; $52e1: $0f
	nop                                              ; $52e2: $00
	ld   bc, $1501                                   ; $52e3: $01 $01 $15
	inc  de                                          ; $52e6: $13
	ldh  [$ec], a                                    ; $52e7: $e0 $ec
	ld   a, h                                        ; $52e9: $7c
	db   $dd                                         ; $52ea: $dd
	db   $ed                                         ; $52eb: $ed
	ret                                              ; $52ec: $c9


	and  b                                           ; $52ed: $a0
	inc  de                                          ; $52ee: $13
	inc  d                                           ; $52ef: $14
	inc  b                                           ; $52f0: $04
	adc  a                                           ; $52f1: $8f
	ld   l, [hl]                                     ; $52f2: $6e
	sbc  a                                           ; $52f3: $9f
	dec  c                                           ; $52f4: $0d
	nop                                              ; $52f5: $00
	ld   a, [bc]                                     ; $52f6: $0a
	db   $10                                         ; $52f7: $10
	inc  sp                                          ; $52f8: $33
	nop                                              ; $52f9: $00
	dec  b                                           ; $52fa: $05
	ld   b, b                                        ; $52fb: $40
	rst  $38                                         ; $52fc: $ff
	inc  bc                                          ; $52fd: $03
	rst  $38                                         ; $52fe: $ff
	ld   bc, $2801                                   ; $52ff: $01 $01 $28
	nop                                              ; $5302: $00
	ld   b, $73                                      ; $5303: $06 $73
	dec  b                                           ; $5305: $05
	rrca                                             ; $5306: $0f
	nop                                              ; $5307: $00
	ld   bc, $1601                                   ; $5308: $01 $01 $16
	inc  d                                           ; $530b: $14
	ldh  [$ec], a                                    ; $530c: $e0 $ec
	ld   a, h                                        ; $530e: $7c
	db   $dd                                         ; $530f: $dd
	db   $ed                                         ; $5310: $ed
	ret                                              ; $5311: $c9


	and  b                                           ; $5312: $a0
	dec  c                                           ; $5313: $0d
	inc  de                                          ; $5314: $13
	inc  d                                           ; $5315: $14
	inc  b                                           ; $5316: $04
	adc  a                                           ; $5317: $8f
	ld   l, [hl]                                     ; $5318: $6e
	ld   [hl], c                                     ; $5319: $71
	ld   e, a                                        ; $531a: $5f
	ld   sp, hl                                      ; $531b: $f9
	dec  c                                           ; $531c: $0d
	nop                                              ; $531d: $00
	ld   a, [bc]                                     ; $531e: $0a
	db   $10                                         ; $531f: $10
	inc  sp                                          ; $5320: $33
	nop                                              ; $5321: $00
	ld   b, $73                                      ; $5322: $06 $73
	dec  b                                           ; $5324: $05
	rrca                                             ; $5325: $0f
	nop                                              ; $5326: $00
	ld   bc, $1501                                   ; $5327: $01 $01 $15
	inc  de                                          ; $532a: $13
	ldh  [$ec], a                                    ; $532b: $e0 $ec
	ld   a, h                                        ; $532d: $7c
	db   $dd                                         ; $532e: $dd
	db   $ed                                         ; $532f: $ed
	ret                                              ; $5330: $c9


	and  b                                           ; $5331: $a0
	dec  c                                           ; $5332: $0d
	inc  de                                          ; $5333: $13
	ld   [de], a                                     ; $5334: $12
	inc  b                                           ; $5335: $04
	adc  a                                           ; $5336: $8f
	ld   l, [hl]                                     ; $5337: $6e
	ld   [hl], c                                     ; $5338: $71
	ld   e, a                                        ; $5339: $5f
	ld   sp, hl                                      ; $533a: $f9
	dec  c                                           ; $533b: $0d
	nop                                              ; $533c: $00
	ld   a, [bc]                                     ; $533d: $0a
	db   $10                                         ; $533e: $10
	inc  sp                                          ; $533f: $33
	nop                                              ; $5340: $00
	ld   b, $73                                      ; $5341: $06 $73
	dec  b                                           ; $5343: $05
	ld   bc, $6903                                   ; $5344: $01 $03 $69
	ld   [bc], a                                     ; $5347: $02
	xor  d                                           ; $5348: $aa
	ld   a, c                                        ; $5349: $79
	rst  $38                                         ; $534a: $ff
	rst  $38                                         ; $534b: $ff
	dec  c                                           ; $534c: $0d
	nop                                              ; $534d: $00
	ld   a, [bc]                                     ; $534e: $0a
	add  hl, de                                      ; $534f: $19
	dec  b                                           ; $5350: $05
	inc  bc                                          ; $5351: $03
	inc  de                                          ; $5352: $13
	ld   [de], a                                     ; $5353: $12
	ldh  [$ec], a                                    ; $5354: $e0 $ec
	ld   a, h                                        ; $5356: $7c
	set  0, h                                        ; $5357: $cb $c4
	ret                                              ; $5359: $c9


	ld   d, $15                                      ; $535a: $16 $15
	ld   [bc], a                                     ; $535c: $02
	inc  a                                           ; $535d: $3c
	nop                                              ; $535e: $00
	nop                                              ; $535f: $00
	inc  de                                          ; $5360: $13
	inc  d                                           ; $5361: $14
	ldh  [$ec], a                                    ; $5362: $e0 $ec
	ld   a, h                                        ; $5364: $7c
	set  0, h                                        ; $5365: $cb $c4
	ret                                              ; $5367: $c9


	ld   d, $15                                      ; $5368: $16 $15
	ld   [bc], a                                     ; $536a: $02
	inc  a                                           ; $536b: $3c
	nop                                              ; $536c: $00
	ld   bc, $1213                                   ; $536d: $01 $13 $12
	ldh  [$ec], a                                    ; $5370: $e0 $ec
	ld   a, h                                        ; $5372: $7c
	set  0, h                                        ; $5373: $cb $c4
	ret                                              ; $5375: $c9


	dec  d                                           ; $5376: $15
	inc  de                                          ; $5377: $13
	ld   [bc], a                                     ; $5378: $02
	inc  a                                           ; $5379: $3c
	nop                                              ; $537a: $00
	ld   [bc], a                                     ; $537b: $02
	rlca                                             ; $537c: $07
	ret                                              ; $537d: $c9


	dec  b                                           ; $537e: $05
	ld   [bc], a                                     ; $537f: $02
	inc  bc                                          ; $5380: $03
	ld   bc, $2000                                   ; $5381: $01 $00 $20
	nop                                              ; $5384: $00
	rlca                                             ; $5385: $07
	db   $ed                                         ; $5386: $ed
	dec  b                                           ; $5387: $05
	ld   [bc], a                                     ; $5388: $02
	inc  bc                                          ; $5389: $03
	ld   bc, $2001                                   ; $538a: $01 $01 $20
	nop                                              ; $538d: $00
	rlca                                             ; $538e: $07
	dec  bc                                          ; $538f: $0b
	ld   b, $02                                      ; $5390: $06 $02
	inc  bc                                          ; $5392: $03
	ld   bc, $2002                                   ; $5393: $01 $02 $20
	nop                                              ; $5396: $00
	ld   b, $a8                                      ; $5397: $06 $a8
	inc  bc                                          ; $5399: $03
	rrca                                             ; $539a: $0f
	nop                                              ; $539b: $00
	ld   bc, $1301                                   ; $539c: $01 $01 $13
	ld   [de], a                                     ; $539f: $12
	ldh  [$ec], a                                    ; $53a0: $e0 $ec
	ld   a, h                                        ; $53a2: $7c
	set  0, h                                        ; $53a3: $cb $c4
	ret                                              ; $53a5: $c9


	ld   d, $15                                      ; $53a6: $16 $15
	ld   [bc], a                                     ; $53a8: $02
	inc  a                                           ; $53a9: $3c
	ld   l, [hl]                                     ; $53aa: $6e
	sbc  a                                           ; $53ab: $9f
	dec  c                                           ; $53ac: $0d
	nop                                              ; $53ad: $00
	ld   a, [bc]                                     ; $53ae: $0a
	db   $10                                         ; $53af: $10
	inc  [hl]                                        ; $53b0: $34
	nop                                              ; $53b1: $00
	dec  b                                           ; $53b2: $05
	ld   b, b                                        ; $53b3: $40
	rst  $38                                         ; $53b4: $ff
	inc  bc                                          ; $53b5: $03
	rst  $38                                         ; $53b6: $ff
	ld   bc, $2801                                   ; $53b7: $01 $01 $28
	nop                                              ; $53ba: $00
	ld   b, $29                                      ; $53bb: $06 $29
	ld   b, $0f                                      ; $53bd: $06 $0f
	nop                                              ; $53bf: $00
	ld   bc, $1301                                   ; $53c0: $01 $01 $13
	inc  d                                           ; $53c3: $14
	ldh  [$ec], a                                    ; $53c4: $e0 $ec
	ld   a, h                                        ; $53c6: $7c
	set  0, h                                        ; $53c7: $cb $c4
	ret                                              ; $53c9: $c9


	ld   d, $15                                      ; $53ca: $16 $15
	ld   [bc], a                                     ; $53cc: $02
	inc  a                                           ; $53cd: $3c
	dec  c                                           ; $53ce: $0d
	ld   l, [hl]                                     ; $53cf: $6e
	ld   [hl], c                                     ; $53d0: $71
	ld   e, a                                        ; $53d1: $5f
	ld   sp, hl                                      ; $53d2: $f9
	dec  c                                           ; $53d3: $0d
	nop                                              ; $53d4: $00
	ld   a, [bc]                                     ; $53d5: $0a
	db   $10                                         ; $53d6: $10
	inc  [hl]                                        ; $53d7: $34
	nop                                              ; $53d8: $00
	ld   b, $29                                      ; $53d9: $06 $29
	ld   b, $0f                                      ; $53db: $06 $0f
	nop                                              ; $53dd: $00
	ld   bc, $1301                                   ; $53de: $01 $01 $13
	ld   [de], a                                     ; $53e1: $12
	ldh  [$ec], a                                    ; $53e2: $e0 $ec
	ld   a, h                                        ; $53e4: $7c
	set  0, h                                        ; $53e5: $cb $c4
	ret                                              ; $53e7: $c9


	dec  d                                           ; $53e8: $15
	inc  de                                          ; $53e9: $13
	ld   [bc], a                                     ; $53ea: $02
	inc  a                                           ; $53eb: $3c
	dec  c                                           ; $53ec: $0d
	ld   l, [hl]                                     ; $53ed: $6e
	ld   [hl], c                                     ; $53ee: $71
	ld   e, a                                        ; $53ef: $5f
	ld   sp, hl                                      ; $53f0: $f9
	dec  c                                           ; $53f1: $0d
	nop                                              ; $53f2: $00
	ld   a, [bc]                                     ; $53f3: $0a
	db   $10                                         ; $53f4: $10
	inc  [hl]                                        ; $53f5: $34
	nop                                              ; $53f6: $00
	ld   b, $29                                      ; $53f7: $06 $29
	ld   b, $01                                      ; $53f9: $06 $01
	sub  [hl]                                        ; $53fb: $96
	ld   h, l                                        ; $53fc: $65
	sbc  [hl]                                        ; $53fd: $9e
	inc  bc                                          ; $53fe: $03
	ld   h, d                                        ; $53ff: $62
	adc  a                                           ; $5400: $8f
	ld   l, l                                        ; $5401: $6d
	ld   l, h                                        ; $5402: $6c
	sbc  a                                           ; $5403: $9f
	dec  c                                           ; $5404: $0d
	ld   [bc], a                                     ; $5405: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5406: $cf
	dec  b                                           ; $5407: $05
	ld   a, [de]                                     ; $5408: $1a
	ld   h, e                                        ; $5409: $63
	and  c                                           ; $540a: $a1
	ld   a, h                                        ; $540b: $7c
	inc  bc                                          ; $540c: $03
	ld   c, e                                        ; $540d: $4b
	add  [hl]                                        ; $540e: $86
	sub  b                                           ; $540f: $90
	ld   [hl], a                                     ; $5410: $77
	sbc  e                                           ; $5411: $9b
	ld   d, h                                        ; $5412: $54
	sbc  a                                           ; $5413: $9f
	dec  c                                           ; $5414: $0d
	nop                                              ; $5415: $00
	ld   a, [bc]                                     ; $5416: $0a
	inc  hl                                          ; $5417: $23
	ld   d, h                                        ; $5418: $54
	dec  c                                           ; $5419: $0d
	dec  b                                           ; $541a: $05
	nop                                              ; $541b: $00
	rrca                                             ; $541c: $0f
	nop                                              ; $541d: $00
	ld   bc, $7d01                                   ; $541e: $01 $01 $7d
	ld   d, d                                        ; $5421: $52
	sbc  [hl]                                        ; $5422: $9e
	ld   [bc], a                                     ; $5423: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5424: $cf
	dec  b                                           ; $5425: $05
	ld   a, [de]                                     ; $5426: $1a
	ld   h, e                                        ; $5427: $63
	and  c                                           ; $5428: $a1
	sbc  a                                           ; $5429: $9f
	dec  c                                           ; $542a: $0d
	nop                                              ; $542b: $00
	ld   a, [bc]                                     ; $542c: $0a
	rlca                                             ; $542d: $07
	xor  [hl]                                        ; $542e: $ae
	ld   b, $03                                      ; $542f: $06 $03
	rst  $38                                         ; $5431: $ff
	ld   bc, $2003                                   ; $5432: $01 $03 $20
	nop                                              ; $5435: $00
	inc  e                                           ; $5436: $1c
	dec  b                                           ; $5437: $05
	ld   [bc], a                                     ; $5438: $02
	ld   [bc], a                                     ; $5439: $02
	ld   bc, $9750                                   ; $543a: $01 $50 $97
	sub  a                                           ; $543d: $97
	sbc  a                                           ; $543e: $9f
	and  a                                           ; $543f: $a7
	jp   nz, EnqueueHDMATransfer                                   ; $5440: $c2 $7c $02

	sbc  l                                           ; $5443: $9d
	ld   d, h                                        ; $5444: $54
	ld   l, l                                        ; $5445: $6d
	ld   a, h                                        ; $5446: $7c
	halt                                             ; $5447: $76
	dec  c                                           ; $5448: $0d
	ld   l, a                                        ; $5449: $6f
	sub  l                                           ; $544a: $95
	ld   [hl], c                                     ; $544b: $71
	halt                                             ; $544c: $76
	ld   l, a                                        ; $544d: $6f
	sub  c                                           ; $544e: $91
	ld   d, h                                        ; $544f: $54
	ld   [hl], l                                     ; $5450: $75
	sbc  a                                           ; $5451: $9f
	dec  c                                           ; $5452: $0d
	nop                                              ; $5453: $00
	ld   a, [bc]                                     ; $5454: $0a
	ld   bc, $2802                                   ; $5455: $01 $02 $28
	ld   d, d                                        ; $5458: $52
	ld   e, a                                        ; $5459: $5f
	ld   [hl], a                                     ; $545a: $77
	sbc  [hl]                                        ; $545b: $9e
	sub  b                                           ; $545c: $90
	ld   d, h                                        ; $545d: $54
	ld   [bc], a                                     ; $545e: $02
	jr   nz, jr_062_5463                             ; $545f: $20 $02

	sub  e                                           ; $5461: $93
	dec  c                                           ; $5462: $0d

jr_062_5463:
	ld   [bc], a                                     ; $5463: $02
	ld   a, a                                        ; $5464: $7f
	ld   [hl], c                                     ; $5465: $71
	ld   [hl], h                                     ; $5466: $74
	dec  b                                           ; $5467: $05
	db   $10                                         ; $5468: $10
	ld   [hl], h                                     ; $5469: $74
	sbc  a                                           ; $546a: $9f
	dec  c                                           ; $546b: $0d
	nop                                              ; $546c: $00
	dec  b                                           ; $546d: $05
	ld   b, b                                        ; $546e: $40
	rst  $38                                         ; $546f: $ff
	ld   bc, $0000                                   ; $5470: $01 $00 $00
	ld   bc, $8c67                                   ; $5473: $01 $67 $8c
	and  c                                           ; $5476: $a1
	ld   a, b                                        ; $5477: $78
	sbc  a                                           ; $5478: $9f
	dec  c                                           ; $5479: $0d
	nop                                              ; $547a: $00
	ld   a, [bc]                                     ; $547b: $0a
	ld   b, $d3                                      ; $547c: $06 $d3
	inc  bc                                          ; $547e: $03
	inc  e                                           ; $547f: $1c
	dec  b                                           ; $5480: $05
	ld   bc, $1d01                                   ; $5481: $01 $01 $1d
	ld   b, b                                        ; $5484: $40
	dec  d                                           ; $5485: $15
	inc  bc                                          ; $5486: $03
	dec  d                                           ; $5487: $15
	ld   bc, $2803                                   ; $5488: $01 $03 $28
	nop                                              ; $548b: $00
	ld   bc, $5858                                   ; $548c: $01 $58 $58
	sbc  [hl]                                        ; $548f: $9e
	ld   h, c                                        ; $5490: $61
	sbc  d                                           ; $5491: $9a
	sub  d                                           ; $5492: $92
	sbc  [hl]                                        ; $5493: $9e
	ld   h, c                                        ; $5494: $61
	sbc  d                                           ; $5495: $9a
	sub  d                                           ; $5496: $92
	sbc  a                                           ; $5497: $9f
	dec  c                                           ; $5498: $0d
	nop                                              ; $5499: $00
	dec  b                                           ; $549a: $05
	ld   b, b                                        ; $549b: $40
	rst  $38                                         ; $549c: $ff
	ld   bc, $0000                                   ; $549d: $01 $00 $00
	ld   bc, $5858                                   ; $54a0: $01 $58 $58
	ld   e, e                                        ; $54a3: $5b
	ld   a, c                                        ; $54a4: $79
	sbc  a                                           ; $54a5: $9f
	dec  c                                           ; $54a6: $0d
	nop                                              ; $54a7: $00
	ld   a, [bc]                                     ; $54a8: $0a
	ld   b, $db                                      ; $54a9: $06 $db
	ld   b, $0d                                      ; $54ab: $06 $0d
	nop                                              ; $54ad: $00
	nop                                              ; $54ae: $00
	rrca                                             ; $54af: $0f
	nop                                              ; $54b0: $00
	ld   bc, $0b0c                                   ; $54b1: $01 $0c $0b
	inc  e                                           ; $54b4: $1c
	dec  b                                           ; $54b5: $05
	nop                                              ; $54b6: $00
	nop                                              ; $54b7: $00
	ld   bc, $7889                                   ; $54b8: $01 $89 $78
	inc  bc                                          ; $54bb: $03
	ld   l, b                                        ; $54bc: $68
	ld   a, l                                        ; $54bd: $7d
	sbc  [hl]                                        ; $54be: $9e
	ld   h, e                                        ; $54bf: $63
	ld   e, d                                        ; $54c0: $5a
	ld   h, l                                        ; $54c1: $65
	sub  b                                           ; $54c2: $90
	and  c                                           ; $54c3: $a1
	sub  d                                           ; $54c4: $92
	sbc  a                                           ; $54c5: $9f
	dec  c                                           ; $54c6: $0d
	ld   [bc], a                                     ; $54c7: $02
	and  l                                           ; $54c8: $a5
	ld   e, c                                        ; $54c9: $59
	sub  a                                           ; $54ca: $97
	ld   [bc], a                                     ; $54cb: $02
	sbc  l                                           ; $54cc: $9d
	ld   d, h                                        ; $54cd: $54
	sub  b                                           ; $54ce: $90
	and  c                                           ; $54cf: $a1
	and  b                                           ; $54d0: $a0
	sbc  [hl]                                        ; $54d1: $9e
	ld   h, e                                        ; $54d2: $63
	ld   e, d                                        ; $54d3: $5a
	ld   h, l                                        ; $54d4: $65
	ld   [hl], h                                     ; $54d5: $74
	dec  c                                           ; $54d6: $0d
	ld   e, e                                        ; $54d7: $5b
	ld   [hl], h                                     ; $54d8: $74
	inc  b                                           ; $54d9: $04
	db   $e3                                         ; $54da: $e3
	ld   h, l                                        ; $54db: $65
	ld   d, d                                        ; $54dc: $52
	and  c                                           ; $54dd: $a1
	sub  d                                           ; $54de: $92
	sbc  a                                           ; $54df: $9f
	dec  c                                           ; $54e0: $0d
	nop                                              ; $54e1: $00
	ld   a, [bc]                                     ; $54e2: $0a
	ld   bc, $020a                                   ; $54e3: $01 $0a $02
	ld   [hl], d                                     ; $54e6: $72
	ld   [hl], c                                     ; $54e7: $71
	ld   e, c                                        ; $54e8: $59
	ld   d, [hl]                                     ; $54e9: $56
	inc  b                                           ; $54ea: $04
	ld   e, l                                        ; $54eb: $5d
	ld   a, c                                        ; $54ec: $79
	ld   a, b                                        ; $54ed: $78
	sbc  c                                           ; $54ee: $99
	sub  [hl]                                        ; $54ef: $96
	ld   d, h                                        ; $54f0: $54
	ld   a, b                                        ; $54f1: $78
	db   $e4                                         ; $54f2: $e4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $54f3: $cf
	ld   a, [bc]                                     ; $54f4: $0a
	inc  bc                                          ; $54f5: $03
	sbc  a                                           ; $54f6: $9f
	dec  c                                           ; $54f7: $0d
	ld   a, [bc]                                     ; $54f8: $0a
	ld   [bc], a                                     ; $54f9: $02
	ld   [bc], a                                     ; $54fa: $02
	dec  b                                           ; $54fb: $05
	inc  b                                           ; $54fc: $04
	dec  c                                           ; $54fd: $0d
	ld   a, h                                        ; $54fe: $7c
	dec  b                                           ; $54ff: $05
	ld   h, [hl]                                     ; $5500: $66
	and  b                                           ; $5501: $a0
	ld   a, l                                        ; $5502: $7d
	ld   e, c                                        ; $5503: $59
	sbc  c                                           ; $5504: $99
	db   $e4                                         ; $5505: $e4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5506: $cf
	ld   a, [bc]                                     ; $5507: $0a
	inc  bc                                          ; $5508: $03
	sbc  a                                           ; $5509: $9f
	dec  c                                           ; $550a: $0d
	ld   a, [bc]                                     ; $550b: $0a
	ld   [bc], a                                     ; $550c: $02
	ld   e, b                                        ; $550d: $58
	sub  b                                           ; $550e: $90
	ld   h, l                                        ; $550f: $65
	ld   a, c                                        ; $5510: $79
	ld   a, b                                        ; $5511: $78
	sbc  c                                           ; $5512: $99
	db   $e4                                         ; $5513: $e4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5514: $cf
	ld   a, [bc]                                     ; $5515: $0a
	inc  bc                                          ; $5516: $03
	ld   a, h                                        ; $5517: $7c
	inc  d                                           ; $5518: $14
	ld   [hl], d                                     ; $5519: $72
	sub  d                                           ; $551a: $92
	sbc  a                                           ; $551b: $9f
	dec  c                                           ; $551c: $0d
	nop                                              ; $551d: $00
	ld   a, [bc]                                     ; $551e: $0a
	ld   bc, $7889                                   ; $551f: $01 $89 $78
	sbc  [hl]                                        ; $5522: $9e
	ld   l, l                                        ; $5523: $6d
	ld   a, h                                        ; $5524: $7c
	adc  [hl]                                        ; $5525: $8e
	ld   [hl], l                                     ; $5526: $75
	sbc  a                                           ; $5527: $9f
	dec  c                                           ; $5528: $0d
	nop                                              ; $5529: $00
	ld   a, [bc]                                     ; $552a: $0a
	rrca                                             ; $552b: $0f
	nop                                              ; $552c: $00
	ld   bc, $8c01                                   ; $552d: $01 $01 $8c
	ld   l, b                                        ; $5530: $68
	ld   a, l                                        ; $5531: $7d
	sbc  [hl]                                        ; $5532: $9e
	ld   [hl], d                                     ; $5533: $72
	ld   [hl], c                                     ; $5534: $71
	ld   e, c                                        ; $5535: $59
	ld   d, [hl]                                     ; $5536: $56
	inc  b                                           ; $5537: $04
	ld   e, l                                        ; $5538: $5d
	ld   e, c                                        ; $5539: $59
	rst  $38                                         ; $553a: $ff
	rst  $38                                         ; $553b: $ff
	dec  c                                           ; $553c: $0d
	ld   h, [hl]                                     ; $553d: $66
	sub  c                                           ; $553e: $91
	sbc  [hl]                                        ; $553f: $9e
	inc  bc                                          ; $5540: $03
	adc  $02                                         ; $5541: $ce $02
	inc  [hl]                                        ; $5543: $34
	ld   [bc], a                                     ; $5544: $02
	cp   $02                                         ; $5545: $fe $02
	ld   e, c                                        ; $5547: $59
	ld   l, [hl]                                     ; $5548: $6e
	ld   a, b                                        ; $5549: $78
	sbc  a                                           ; $554a: $9f
	dec  c                                           ; $554b: $0d
	nop                                              ; $554c: $00
	ld   a, [bc]                                     ; $554d: $0a
	dec  c                                           ; $554e: $0d
	nop                                              ; $554f: $00
	nop                                              ; $5550: $00
	rrca                                             ; $5551: $0f
	nop                                              ; $5552: $00
	ld   bc, $7123                                   ; $5553: $01 $23 $71
	ld   bc, $7172                                   ; $5556: $01 $72 $71
	ld   e, c                                        ; $5559: $59
	ld   d, [hl]                                     ; $555a: $56
	inc  b                                           ; $555b: $04
	ld   e, l                                        ; $555c: $5d
	ld   a, c                                        ; $555d: $79
	ld   a, b                                        ; $555e: $78
	sbc  b                                           ; $555f: $98
	ld   l, e                                        ; $5560: $6b
	ld   d, h                                        ; $5561: $54
	ld   a, b                                        ; $5562: $78
	db   $e4                                         ; $5563: $e4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5564: $cf
	ld   a, l                                        ; $5565: $7d
	dec  c                                           ; $5566: $0d
	rst  $38                                         ; $5567: $ff
	rst  $38                                         ; $5568: $ff
	rst  $38                                         ; $5569: $ff
	rst  $38                                         ; $556a: $ff
	dec  c                                           ; $556b: $0d
	nop                                              ; $556c: $00
	ld   a, [bc]                                     ; $556d: $0a
	add  hl, de                                      ; $556e: $19
	dec  b                                           ; $556f: $05
	inc  bc                                          ; $5570: $03
	db   $e4                                         ; $5571: $e4
	call nz, $00d8                                   ; $5572: $c4 $d8 $00
	nop                                              ; $5575: $00
	sbc  l                                           ; $5576: $9d
	sbc  b                                           ; $5577: $98
	ld   a, [hl]                                     ; $5578: $7e
	ld   h, l                                        ; $5579: $65
	nop                                              ; $557a: $00
	ld   bc, $7c90                                   ; $557b: $01 $90 $7c
	adc  c                                           ; $557e: $89
	ld   h, l                                        ; $557f: $65
	ld   h, h                                        ; $5580: $64
	ld   e, b                                        ; $5581: $58
	nop                                              ; $5582: $00
	ld   [bc], a                                     ; $5583: $02
	rlca                                             ; $5584: $07
	jr   nc, jr_062_5590                             ; $5585: $30 $09

	ld   [bc], a                                     ; $5587: $02
	inc  bc                                          ; $5588: $03
	ld   bc, $2000                                   ; $5589: $01 $00 $20
	nop                                              ; $558c: $00
	rlca                                             ; $558d: $07
	db   $fc                                         ; $558e: $fc
	rlca                                             ; $558f: $07

jr_062_5590:
	ld   [bc], a                                     ; $5590: $02
	inc  bc                                          ; $5591: $03
	ld   bc, $2001                                   ; $5592: $01 $01 $20
	nop                                              ; $5595: $00
	rlca                                             ; $5596: $07
	xor  c                                           ; $5597: $a9
	ld   [$0302], sp                                 ; $5598: $08 $02 $03
	ld   bc, $2002                                   ; $559b: $01 $02 $20
	nop                                              ; $559e: $00
	ld   b, $d1                                      ; $559f: $06 $d1
	rlca                                             ; $55a1: $07
	rrca                                             ; $55a2: $0f
	nop                                              ; $55a3: $00
	ld   bc, $ff01                                   ; $55a4: $01 $01 $ff
	rst  $38                                         ; $55a7: $ff
	rst  $38                                         ; $55a8: $ff
	rst  $38                                         ; $55a9: $ff
	rst  $38                                         ; $55aa: $ff
	rst  $38                                         ; $55ab: $ff
	ld   a, l                                        ; $55ac: $7d
	ld   [hl], c                                     ; $55ad: $71
	ld   a, [$020d]                                  ; $55ae: $fa $0d $02
	ld   h, l                                        ; $55b1: $65
	ld   d, [hl]                                     ; $55b2: $56
	ld   [hl], h                                     ; $55b3: $74
	ld   l, l                                        ; $55b4: $6d
	sub  a                                           ; $55b5: $97
	inc  b                                           ; $55b6: $04
	ld   b, d                                        ; $55b7: $42
	ld   l, a                                        ; $55b8: $6f
	sub  c                                           ; $55b9: $91
	ld   [hl], c                                     ; $55ba: $71
	ld   l, l                                        ; $55bb: $6d
	sub  [hl]                                        ; $55bc: $96
	sbc  a                                           ; $55bd: $9f
	dec  c                                           ; $55be: $0d
	ld   d, d                                        ; $55bf: $52
	ld   e, c                                        ; $55c0: $59
	and  c                                           ; $55c1: $a1
	sbc  [hl]                                        ; $55c2: $9e
	ld   d, d                                        ; $55c3: $52
	ld   e, c                                        ; $55c4: $59
	and  c                                           ; $55c5: $a1
	sbc  a                                           ; $55c6: $9f
	dec  c                                           ; $55c7: $0d
	nop                                              ; $55c8: $00
	ld   a, [bc]                                     ; $55c9: $0a
	ld   b, $9d                                      ; $55ca: $06 $9d
	rlca                                             ; $55cc: $07
	rrca                                             ; $55cd: $0f
	nop                                              ; $55ce: $00
	ld   bc, $9d01                                   ; $55cf: $01 $01 $9d
	sbc  b                                           ; $55d2: $98
	ld   a, [hl]                                     ; $55d3: $7e
	ld   h, l                                        ; $55d4: $65
	ld   e, c                                        ; $55d5: $59
	rst  $38                                         ; $55d6: $ff
	rst  $38                                         ; $55d7: $ff
	dec  c                                           ; $55d8: $0d
	ld   h, c                                        ; $55d9: $61
	sbc  d                                           ; $55da: $9a
	ld   [hl], l                                     ; $55db: $75
	ld   d, d                                        ; $55dc: $52
	ld   d, d                                        ; $55dd: $52
	ld   e, c                                        ; $55de: $59
	sbc  a                                           ; $55df: $9f
	dec  c                                           ; $55e0: $0d
	nop                                              ; $55e1: $00
	ld   a, [bc]                                     ; $55e2: $0a
	db   $10                                         ; $55e3: $10
	ld   [hl], $00                                   ; $55e4: $36 $00
	inc  hl                                          ; $55e6: $23
	ld   d, h                                        ; $55e7: $54
	dec  c                                           ; $55e8: $0d
	dec  b                                           ; $55e9: $05
	nop                                              ; $55ea: $00
	rrca                                             ; $55eb: $0f
	nop                                              ; $55ec: $00
	ld   bc, $7d01                                   ; $55ed: $01 $01 $7d
	ld   d, d                                        ; $55f0: $52
	sbc  [hl]                                        ; $55f1: $9e
	ld   [bc], a                                     ; $55f2: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $55f3: $cf
	dec  b                                           ; $55f4: $05
	ld   a, [de]                                     ; $55f5: $1a
	ld   h, e                                        ; $55f6: $63
	and  c                                           ; $55f7: $a1
	sbc  a                                           ; $55f8: $9f
	dec  c                                           ; $55f9: $0d
	nop                                              ; $55fa: $00
	ld   a, [bc]                                     ; $55fb: $0a
	inc  e                                           ; $55fc: $1c
	dec  b                                           ; $55fd: $05
	nop                                              ; $55fe: $00
	nop                                              ; $55ff: $00
	ld   bc, $5050                                   ; $5600: $01 $50 $50
	sbc  [hl]                                        ; $5603: $9e
	ld   e, b                                        ; $5604: $58
	ld   e, b                                        ; $5605: $58
	ld   e, e                                        ; $5606: $5b
	ld   a, c                                        ; $5607: $79
	rst  $38                                         ; $5608: $ff
	rst  $38                                         ; $5609: $ff
	dec  c                                           ; $560a: $0d
	nop                                              ; $560b: $00
	ld   a, [bc]                                     ; $560c: $0a
	db   $10                                         ; $560d: $10
	ld   [hl], $00                                   ; $560e: $36 $00
	inc  e                                           ; $5610: $1c
	dec  b                                           ; $5611: $05
	inc  bc                                          ; $5612: $03
	inc  bc                                          ; $5613: $03
	ld   bc, $9e9d                                   ; $5614: $01 $9d $9e
	sbc  l                                           ; $5617: $9d
	sbc  b                                           ; $5618: $98
	ld   a, [hl]                                     ; $5619: $7e
	ld   h, l                                        ; $561a: $65
	ld   sp, hl                                      ; $561b: $f9
	dec  c                                           ; $561c: $0d
	ld   bc, $7207                                   ; $561d: $01 $07 $72
	ld   [hl], c                                     ; $5620: $71
	ld   e, c                                        ; $5621: $59
	ld   d, [hl]                                     ; $5622: $56
	inc  b                                           ; $5623: $04
	ld   e, l                                        ; $5624: $5d
	ld   bc, $9208                                   ; $5625: $01 $08 $92
	ld   a, b                                        ; $5628: $78
	ld   e, l                                        ; $5629: $5d
	ld   [hl], h                                     ; $562a: $74
	dec  c                                           ; $562b: $0d
	ld   bc, $0307                                   ; $562c: $01 $07 $03
	xor  [hl]                                        ; $562f: $ae
	ld   d, [hl]                                     ; $5630: $56
	and  c                                           ; $5631: $a1
	inc  b                                           ; $5632: $04
	ld   e, l                                        ; $5633: $5d
	ld   bc, $9208                                   ; $5634: $01 $08 $92
	and  c                                           ; $5637: $a1
	ld   e, c                                        ; $5638: $59
	ld   a, [$000d]                                  ; $5639: $fa $0d $00
	ld   a, [bc]                                     ; $563c: $0a
	inc  e                                           ; $563d: $1c
	dec  b                                           ; $563e: $05
	ld   [bc], a                                     ; $563f: $02
	ld   [bc], a                                     ; $5640: $02
	ld   bc, $ffff                                   ; $5641: $01 $ff $ff
	ld   [hl], h                                     ; $5644: $74
	sbc  [hl]                                        ; $5645: $9e
	res  4, l                                        ; $5646: $cb $a5
	cp   d                                           ; $5648: $ba
	ld   a, b                                        ; $5649: $78
	db   $dd                                         ; $564a: $dd
	or   d                                           ; $564b: $b2
	sub  d                                           ; $564c: $92
	ld   e, a                                        ; $564d: $5f
	ld   [hl], a                                     ; $564e: $77
	dec  c                                           ; $564f: $0d
	rst  $38                                         ; $5650: $ff
	rst  $38                                         ; $5651: $ff
	dec  b                                           ; $5652: $05
	ld   a, [$5c67]                                  ; $5653: $fa $67 $5c
	sbc  c                                           ; $5656: $99
	sbc  l                                           ; $5657: $9d
	sbc  a                                           ; $5658: $9f
	dec  c                                           ; $5659: $0d
	nop                                              ; $565a: $00
	dec  b                                           ; $565b: $05
	ld   b, b                                        ; $565c: $40
	rst  $38                                         ; $565d: $ff
	inc  bc                                          ; $565e: $03
	rst  $38                                         ; $565f: $ff
	ld   bc, $2801                                   ; $5660: $01 $01 $28
	nop                                              ; $5663: $00
	ld   bc, $5490                                   ; $5664: $01 $90 $54
	ld   l, a                                        ; $5667: $6f
	sub  l                                           ; $5668: $95
	ld   [hl], c                                     ; $5669: $71
	halt                                             ; $566a: $76
	inc  bc                                          ; $566b: $03
	jp   nc, Jump_062_7c52                           ; $566c: $d2 $52 $7c

	ld   l, l                                        ; $566f: $6d
	ld   a, h                                        ; $5670: $7c
	adc  [hl]                                        ; $5671: $8e
	sbc  l                                           ; $5672: $9d
	sbc  a                                           ; $5673: $9f
	dec  c                                           ; $5674: $0d
	nop                                              ; $5675: $00
	ld   a, [bc]                                     ; $5676: $0a
	ld   b, $7d                                      ; $5677: $06 $7d
	rlca                                             ; $5679: $07
	rrca                                             ; $567a: $0f
	nop                                              ; $567b: $00
	ld   bc, $9001                                   ; $567c: $01 $01 $90
	ld   a, h                                        ; $567f: $7c
	adc  c                                           ; $5680: $89
	ld   h, l                                        ; $5681: $65
	ld   h, h                                        ; $5682: $64
	ld   e, b                                        ; $5683: $58
	ld   e, c                                        ; $5684: $59
	rst  $38                                         ; $5685: $ff
	rst  $38                                         ; $5686: $ff
	dec  c                                           ; $5687: $0d
	ld   h, c                                        ; $5688: $61
	sbc  d                                           ; $5689: $9a
	ld   [hl], l                                     ; $568a: $75
	ld   d, d                                        ; $568b: $52
	ld   d, d                                        ; $568c: $52
	ld   e, c                                        ; $568d: $59
	sbc  a                                           ; $568e: $9f
	dec  c                                           ; $568f: $0d
	nop                                              ; $5690: $00
	ld   a, [bc]                                     ; $5691: $0a
	db   $10                                         ; $5692: $10
	scf                                              ; $5693: $37
	nop                                              ; $5694: $00
	inc  hl                                          ; $5695: $23
	ld   d, h                                        ; $5696: $54
	dec  c                                           ; $5697: $0d
	dec  b                                           ; $5698: $05
	nop                                              ; $5699: $00
	rrca                                             ; $569a: $0f
	nop                                              ; $569b: $00
	ld   bc, $7d01                                   ; $569c: $01 $01 $7d
	ld   d, d                                        ; $569f: $52
	sbc  [hl]                                        ; $56a0: $9e
	ld   [bc], a                                     ; $56a1: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $56a2: $cf
	dec  b                                           ; $56a3: $05
	ld   a, [de]                                     ; $56a4: $1a
	ld   h, e                                        ; $56a5: $63
	and  c                                           ; $56a6: $a1
	sbc  a                                           ; $56a7: $9f
	dec  c                                           ; $56a8: $0d
	nop                                              ; $56a9: $00
	ld   a, [bc]                                     ; $56aa: $0a
	inc  e                                           ; $56ab: $1c
	dec  b                                           ; $56ac: $05
	nop                                              ; $56ad: $00
	nop                                              ; $56ae: $00
	ld   bc, $5050                                   ; $56af: $01 $50 $50
	sbc  [hl]                                        ; $56b2: $9e
	ld   e, b                                        ; $56b3: $58
	ld   e, b                                        ; $56b4: $58
	ld   e, e                                        ; $56b5: $5b
	ld   a, c                                        ; $56b6: $79
	rst  $38                                         ; $56b7: $ff
	rst  $38                                         ; $56b8: $ff
	dec  c                                           ; $56b9: $0d
	nop                                              ; $56ba: $00
	ld   a, [bc]                                     ; $56bb: $0a
	db   $10                                         ; $56bc: $10
	scf                                              ; $56bd: $37
	nop                                              ; $56be: $00
	inc  e                                           ; $56bf: $1c
	dec  b                                           ; $56c0: $05
	inc  bc                                          ; $56c1: $03
	inc  bc                                          ; $56c2: $03
	ld   bc, $9e90                                   ; $56c3: $01 $90 $9e
	sub  b                                           ; $56c6: $90
	ld   a, h                                        ; $56c7: $7c
	adc  c                                           ; $56c8: $89
	ld   h, l                                        ; $56c9: $65
	ld   h, h                                        ; $56ca: $64
	ld   e, b                                        ; $56cb: $58
	ld   sp, hl                                      ; $56cc: $f9
	dec  c                                           ; $56cd: $0d
	inc  bc                                          ; $56ce: $03
	jp   nc, Jump_062_5c67                           ; $56cf: $d2 $67 $5c

	ld   [hl], h                                     ; $56d2: $74
	inc  b                                           ; $56d3: $04
	sub  l                                           ; $56d4: $95
	ld   [bc], a                                     ; $56d5: $02
	ld   hl, $0479                                   ; $56d6: $21 $79 $04
	ld   b, l                                        ; $56d9: $45
	sbc  d                                           ; $56da: $9a
	add  [hl]                                        ; $56db: $86
	and  c                                           ; $56dc: $a1
	sub  d                                           ; $56dd: $92
	and  c                                           ; $56de: $a1
	sbc  a                                           ; $56df: $9f
	dec  c                                           ; $56e0: $0d
	nop                                              ; $56e1: $00
	dec  b                                           ; $56e2: $05
	ld   b, b                                        ; $56e3: $40
	rst  $38                                         ; $56e4: $ff
	inc  bc                                          ; $56e5: $03
	rst  $38                                         ; $56e6: $ff
	ld   bc, $2801                                   ; $56e7: $01 $01 $28
	nop                                              ; $56ea: $00
	ld   bc, $5490                                   ; $56eb: $01 $90 $54
	ld   l, a                                        ; $56ee: $6f
	sub  l                                           ; $56ef: $95
	ld   [hl], c                                     ; $56f0: $71
	halt                                             ; $56f1: $76
	dec  b                                           ; $56f2: $05
	ld   a, [$7c52]                                  ; $56f3: $fa $52 $7c
	ld   l, l                                        ; $56f6: $6d
	ld   a, h                                        ; $56f7: $7c
	adc  [hl]                                        ; $56f8: $8e
	sbc  l                                           ; $56f9: $9d
	sbc  a                                           ; $56fa: $9f
	dec  c                                           ; $56fb: $0d
	nop                                              ; $56fc: $00
	ld   a, [bc]                                     ; $56fd: $0a
	ld   b, $7d                                      ; $56fe: $06 $7d
	rlca                                             ; $5700: $07
	rrca                                             ; $5701: $0f
	nop                                              ; $5702: $00
	ld   bc, $e401                                   ; $5703: $01 $01 $e4
	call nz, Call_062_59d8                           ; $5706: $c4 $d8 $59
	rst  $38                                         ; $5709: $ff
	rst  $38                                         ; $570a: $ff
	dec  c                                           ; $570b: $0d
	ld   h, c                                        ; $570c: $61
	sbc  d                                           ; $570d: $9a
	ld   l, [hl]                                     ; $570e: $6e
	ld   a, b                                        ; $570f: $78
	sbc  a                                           ; $5710: $9f
	dec  c                                           ; $5711: $0d
	nop                                              ; $5712: $00
	ld   a, [bc]                                     ; $5713: $0a
	db   $10                                         ; $5714: $10
	dec  [hl]                                        ; $5715: $35
	nop                                              ; $5716: $00
	inc  hl                                          ; $5717: $23
	ld   d, h                                        ; $5718: $54
	dec  c                                           ; $5719: $0d
	dec  b                                           ; $571a: $05
	nop                                              ; $571b: $00
	rrca                                             ; $571c: $0f
	nop                                              ; $571d: $00
	ld   bc, $7d01                                   ; $571e: $01 $01 $7d
	ld   d, d                                        ; $5721: $52
	sbc  [hl]                                        ; $5722: $9e
	ld   [bc], a                                     ; $5723: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5724: $cf
	dec  b                                           ; $5725: $05
	ld   a, [de]                                     ; $5726: $1a
	ld   h, e                                        ; $5727: $63
	and  c                                           ; $5728: $a1
	sbc  a                                           ; $5729: $9f
	dec  c                                           ; $572a: $0d
	nop                                              ; $572b: $00
	ld   a, [bc]                                     ; $572c: $0a
	inc  e                                           ; $572d: $1c
	dec  b                                           ; $572e: $05
	nop                                              ; $572f: $00
	nop                                              ; $5730: $00
	ld   bc, $5050                                   ; $5731: $01 $50 $50
	sbc  [hl]                                        ; $5734: $9e
	ld   e, b                                        ; $5735: $58
	ld   e, b                                        ; $5736: $58
	ld   e, e                                        ; $5737: $5b
	ld   a, c                                        ; $5738: $79
	rst  $38                                         ; $5739: $ff
	rst  $38                                         ; $573a: $ff
	dec  c                                           ; $573b: $0d
	nop                                              ; $573c: $00
	ld   a, [bc]                                     ; $573d: $0a
	db   $10                                         ; $573e: $10
	dec  [hl]                                        ; $573f: $35
	nop                                              ; $5740: $00
	inc  e                                           ; $5741: $1c
	dec  b                                           ; $5742: $05
	ld   bc, $1d01                                   ; $5743: $01 $01 $1d
	ld   b, b                                        ; $5746: $40
	dec  d                                           ; $5747: $15
	inc  bc                                          ; $5748: $03
	dec  d                                           ; $5749: $15
	ld   bc, $2802                                   ; $574a: $01 $02 $28
	nop                                              ; $574d: $00
	ld   bc, $7158                                   ; $574e: $01 $58 $71
	ld   a, [$6f10]                                  ; $5751: $fa $10 $6f
	sub  l                                           ; $5754: $95
	ld   d, h                                        ; $5755: $54
	ld   [hl], a                                     ; $5756: $77
	xor  c                                           ; $5757: $a9
	xor  c                                           ; $5758: $a9
	sbc  l                                           ; $5759: $9d
	sbc  a                                           ; $575a: $9f
	dec  c                                           ; $575b: $0d
	pop  de                                          ; $575c: $d1
	call nz, $ecc2                                   ; $575d: $c4 $c2 $ec
	sub  d                                           ; $5760: $92
	sbc  a                                           ; $5761: $9f
	dec  c                                           ; $5762: $0d
	ld   h, [hl]                                     ; $5763: $66
	sub  c                                           ; $5764: $91
	sbc  [hl]                                        ; $5765: $9e
	inc  bc                                          ; $5766: $03
	ld   l, b                                        ; $5767: $68
	sub  b                                           ; $5768: $90
	ld   l, l                                        ; $5769: $6d
	ld   a, h                                        ; $576a: $7c
	adc  [hl]                                        ; $576b: $8e
	sbc  l                                           ; $576c: $9d
	sbc  a                                           ; $576d: $9f
	dec  c                                           ; $576e: $0d
	nop                                              ; $576f: $00
	ld   a, [bc]                                     ; $5770: $0a
	rrca                                             ; $5771: $0f
	nop                                              ; $5772: $00
	ld   bc, $0301                                   ; $5773: $01 $01 $03
	ld   l, b                                        ; $5776: $68
	ld   a, l                                        ; $5777: $7d
	sbc  [hl]                                        ; $5778: $9e
	ld   [bc], a                                     ; $5779: $02
	dec  b                                           ; $577a: $05
	inc  b                                           ; $577b: $04
	dec  c                                           ; $577c: $0d
	ld   a, h                                        ; $577d: $7c
	dec  b                                           ; $577e: $05
	ld   h, [hl]                                     ; $577f: $66
	and  b                                           ; $5780: $a0
	ld   a, l                                        ; $5781: $7d
	ld   e, c                                        ; $5782: $59
	sbc  c                                           ; $5783: $99
	db   $e4                                         ; $5784: $e4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5785: $cf
	dec  c                                           ; $5786: $0d
	ld   e, c                                        ; $5787: $59
	rst  $38                                         ; $5788: $ff
	rst  $38                                         ; $5789: $ff
	rst  $38                                         ; $578a: $ff
	rst  $38                                         ; $578b: $ff
	dec  c                                           ; $578c: $0d
	inc  bc                                          ; $578d: $03
	db   $f4                                         ; $578e: $f4
	inc  b                                           ; $578f: $04
	ld   e, c                                        ; $5790: $59
	ld   a, c                                        ; $5791: $79
	ld   [hl], l                                     ; $5792: $75
	sub  b                                           ; $5793: $90
	ld   [bc], a                                     ; $5794: $02
	ld   a, a                                        ; $5795: $7f
	ld   [hl], c                                     ; $5796: $71
	ld   [hl], h                                     ; $5797: $74
	adc  l                                           ; $5798: $8d
	sbc  c                                           ; $5799: $99
	ld   e, c                                        ; $579a: $59
	sbc  a                                           ; $579b: $9f
	dec  c                                           ; $579c: $0d
	nop                                              ; $579d: $00
	ld   a, [bc]                                     ; $579e: $0a
	dec  c                                           ; $579f: $0d
	nop                                              ; $57a0: $00
	nop                                              ; $57a1: $00
	rrca                                             ; $57a2: $0f
	nop                                              ; $57a3: $00
	ld   bc, $8923                                   ; $57a4: $01 $23 $89
	ld   bc, $0502                                   ; $57a7: $01 $02 $05
	inc  b                                           ; $57aa: $04
	dec  c                                           ; $57ab: $0d
	ld   a, h                                        ; $57ac: $7c
	dec  b                                           ; $57ad: $05
	ld   h, [hl]                                     ; $57ae: $66
	and  b                                           ; $57af: $a0
	ld   a, l                                        ; $57b0: $7d
	ld   e, c                                        ; $57b1: $59
	sbc  d                                           ; $57b2: $9a
	ld   l, e                                        ; $57b3: $6b
	ld   d, h                                        ; $57b4: $54
	ld   a, b                                        ; $57b5: $78
	dec  c                                           ; $57b6: $0d
	db   $e4                                         ; $57b7: $e4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $57b8: $cf
	ld   a, l                                        ; $57b9: $7d
	rst  $38                                         ; $57ba: $ff
	rst  $38                                         ; $57bb: $ff
	rst  $38                                         ; $57bc: $ff
	rst  $38                                         ; $57bd: $ff
	dec  c                                           ; $57be: $0d
	nop                                              ; $57bf: $00
	ld   a, [bc]                                     ; $57c0: $0a
	add  hl, de                                      ; $57c1: $19
	dec  b                                           ; $57c2: $05
	inc  bc                                          ; $57c3: $03
	inc  de                                          ; $57c4: $13
	ld   [bc], a                                     ; $57c5: $02
	ld   a, e                                        ; $57c6: $7b
	halt                                             ; $57c7: $76
	ld   [hl], c                                     ; $57c8: $71
	ld   e, l                                        ; $57c9: $5d
	sbc  b                                           ; $57ca: $98
	nop                                              ; $57cb: $00
	nop                                              ; $57cc: $00
	ld   h, l                                        ; $57cd: $65
	sub  l                                           ; $57ce: $95
	ld   d, h                                        ; $57cf: $54
	sub  h                                           ; $57d0: $94
	ld   h, e                                        ; $57d1: $63
	ld   h, l                                        ; $57d2: $65
	nop                                              ; $57d3: $00
	ld   bc, $5992                                   ; $57d4: $01 $92 $59
	and  c                                           ; $57d7: $a1
	nop                                              ; $57d8: $00
	ld   [bc], a                                     ; $57d9: $02
	rlca                                             ; $57da: $07
	ld   a, e                                        ; $57db: $7b
	dec  bc                                          ; $57dc: $0b
	ld   [bc], a                                     ; $57dd: $02
	inc  bc                                          ; $57de: $03
	ld   bc, $2000                                   ; $57df: $01 $00 $20
	nop                                              ; $57e2: $00
	rlca                                             ; $57e3: $07
	ld   d, d                                        ; $57e4: $52
	ld   a, [bc]                                     ; $57e5: $0a
	ld   [bc], a                                     ; $57e6: $02
	inc  bc                                          ; $57e7: $03
	ld   bc, $2001                                   ; $57e8: $01 $01 $20
	nop                                              ; $57eb: $00
	rlca                                             ; $57ec: $07
	db   $d3                                         ; $57ed: $d3
	ld   a, [bc]                                     ; $57ee: $0a
	ld   [bc], a                                     ; $57ef: $02
	inc  bc                                          ; $57f0: $03
	ld   bc, $2002                                   ; $57f1: $01 $02 $20
	nop                                              ; $57f4: $00
	ld   b, $27                                      ; $57f5: $06 $27
	ld   a, [bc]                                     ; $57f7: $0a
	rrca                                             ; $57f8: $0f
	nop                                              ; $57f9: $00
	ld   bc, $ff01                                   ; $57fa: $01 $01 $ff
	rst  $38                                         ; $57fd: $ff
	rst  $38                                         ; $57fe: $ff
	rst  $38                                         ; $57ff: $ff
	rst  $38                                         ; $5800: $ff
	rst  $38                                         ; $5801: $ff
	ld   a, l                                        ; $5802: $7d
	ld   [hl], c                                     ; $5803: $71
	ld   a, [$020d]                                  ; $5804: $fa $0d $02
	ld   h, l                                        ; $5807: $65
	ld   d, [hl]                                     ; $5808: $56
	ld   [hl], h                                     ; $5809: $74
	ld   l, l                                        ; $580a: $6d
	sub  a                                           ; $580b: $97
	inc  b                                           ; $580c: $04
	ld   b, d                                        ; $580d: $42
	ld   l, a                                        ; $580e: $6f
	sub  c                                           ; $580f: $91
	ld   [hl], c                                     ; $5810: $71
	ld   l, l                                        ; $5811: $6d
	sub  [hl]                                        ; $5812: $96
	sbc  a                                           ; $5813: $9f
	dec  c                                           ; $5814: $0d
	ld   d, d                                        ; $5815: $52
	ld   e, c                                        ; $5816: $59
	and  c                                           ; $5817: $a1
	sbc  [hl]                                        ; $5818: $9e
	ld   d, d                                        ; $5819: $52
	ld   e, c                                        ; $581a: $59
	and  c                                           ; $581b: $a1
	sbc  a                                           ; $581c: $9f
	dec  c                                           ; $581d: $0d
	nop                                              ; $581e: $00
	ld   a, [bc]                                     ; $581f: $0a
	ld   b, $f0                                      ; $5820: $06 $f0
	add  hl, bc                                      ; $5822: $09
	rrca                                             ; $5823: $0f
	nop                                              ; $5824: $00
	ld   bc, $6501                                   ; $5825: $01 $01 $65
	sub  l                                           ; $5828: $95
	ld   d, h                                        ; $5829: $54
	sub  h                                           ; $582a: $94
	ld   h, e                                        ; $582b: $63
	ld   h, l                                        ; $582c: $65
	ld   e, c                                        ; $582d: $59
	rst  $38                                         ; $582e: $ff
	rst  $38                                         ; $582f: $ff
	dec  c                                           ; $5830: $0d
	ld   h, c                                        ; $5831: $61
	sbc  d                                           ; $5832: $9a
	ld   [hl], l                                     ; $5833: $75
	ld   d, d                                        ; $5834: $52
	ld   d, d                                        ; $5835: $52
	ld   e, c                                        ; $5836: $59
	sbc  a                                           ; $5837: $9f
	dec  c                                           ; $5838: $0d
	nop                                              ; $5839: $00
	ld   a, [bc]                                     ; $583a: $0a
	db   $10                                         ; $583b: $10
	add  hl, sp                                      ; $583c: $39
	nop                                              ; $583d: $00
	inc  hl                                          ; $583e: $23
	ld   d, l                                        ; $583f: $55
	dec  c                                           ; $5840: $0d
	dec  b                                           ; $5841: $05
	nop                                              ; $5842: $00
	rrca                                             ; $5843: $0f
	nop                                              ; $5844: $00
	ld   bc, $7d01                                   ; $5845: $01 $01 $7d
	ld   d, d                                        ; $5848: $52
	sbc  [hl]                                        ; $5849: $9e
	ld   [bc], a                                     ; $584a: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $584b: $cf
	dec  b                                           ; $584c: $05
	ld   a, [de]                                     ; $584d: $1a
	ld   h, e                                        ; $584e: $63
	and  c                                           ; $584f: $a1
	sbc  a                                           ; $5850: $9f
	dec  c                                           ; $5851: $0d
	nop                                              ; $5852: $00
	ld   a, [bc]                                     ; $5853: $0a
	inc  e                                           ; $5854: $1c
	dec  b                                           ; $5855: $05
	nop                                              ; $5856: $00
	nop                                              ; $5857: $00
	ld   bc, $5050                                   ; $5858: $01 $50 $50
	sbc  [hl]                                        ; $585b: $9e
	ld   e, b                                        ; $585c: $58
	ld   e, b                                        ; $585d: $58
	ld   e, e                                        ; $585e: $5b
	ld   a, c                                        ; $585f: $79
	rst  $38                                         ; $5860: $ff
	rst  $38                                         ; $5861: $ff
	dec  c                                           ; $5862: $0d
	nop                                              ; $5863: $00
	ld   a, [bc]                                     ; $5864: $0a
	db   $10                                         ; $5865: $10
	add  hl, sp                                      ; $5866: $39
	nop                                              ; $5867: $00
	inc  e                                           ; $5868: $1c
	dec  b                                           ; $5869: $05
	ld   [bc], a                                     ; $586a: $02
	ld   [bc], a                                     ; $586b: $02
	ld   bc, $9565                                   ; $586c: $01 $65 $95
	ld   d, h                                        ; $586f: $54
	sub  h                                           ; $5870: $94
	ld   h, e                                        ; $5871: $63
	ld   h, l                                        ; $5872: $65
	ld   e, c                                        ; $5873: $59
	rst  $38                                         ; $5874: $ff
	rst  $38                                         ; $5875: $ff
	dec  c                                           ; $5876: $0d
	ld   l, a                                        ; $5877: $6f
	sub  l                                           ; $5878: $95
	ld   [hl], c                                     ; $5879: $71
	halt                                             ; $587a: $76
	sbc  [hl]                                        ; $587b: $9e
	ld   a, l                                        ; $587c: $7d
	ld   e, c                                        ; $587d: $59
	sbc  b                                           ; $587e: $98
	ld   a, c                                        ; $587f: $79
	ld   e, l                                        ; $5880: $5d
	ld   d, d                                        ; $5881: $52
	ld   a, b                                        ; $5882: $78
	sbc  a                                           ; $5883: $9f
	dec  c                                           ; $5884: $0d
	nop                                              ; $5885: $00
	dec  b                                           ; $5886: $05
	ld   b, b                                        ; $5887: $40
	rst  $38                                         ; $5888: $ff
	inc  bc                                          ; $5889: $03
	rst  $38                                         ; $588a: $ff
	ld   bc, $2801                                   ; $588b: $01 $01 $28
	nop                                              ; $588e: $00
	ld   bc, $5490                                   ; $588f: $01 $90 $54
	ld   l, a                                        ; $5892: $6f
	sub  l                                           ; $5893: $95
	ld   [hl], c                                     ; $5894: $71
	halt                                             ; $5895: $76
	xor  c                                           ; $5896: $a9
	xor  c                                           ; $5897: $a9
	ld   a, h                                        ; $5898: $7c
	ld   l, l                                        ; $5899: $6d
	ld   a, h                                        ; $589a: $7c
	adc  [hl]                                        ; $589b: $8e
	sbc  l                                           ; $589c: $9d
	sbc  a                                           ; $589d: $9f
	dec  c                                           ; $589e: $0d
	nop                                              ; $589f: $00
	ld   a, [bc]                                     ; $58a0: $0a
	ld   b, $ce                                      ; $58a1: $06 $ce
	add  hl, bc                                      ; $58a3: $09
	rrca                                             ; $58a4: $0f
	nop                                              ; $58a5: $00
	ld   bc, $9201                                   ; $58a6: $01 $01 $92
	ld   e, c                                        ; $58a9: $59
	and  c                                           ; $58aa: $a1
	ld   e, c                                        ; $58ab: $59
	rst  $38                                         ; $58ac: $ff
	rst  $38                                         ; $58ad: $ff
	dec  c                                           ; $58ae: $0d
	ld   h, c                                        ; $58af: $61
	sbc  d                                           ; $58b0: $9a
	ld   [hl], l                                     ; $58b1: $75
	ld   d, d                                        ; $58b2: $52
	ld   d, d                                        ; $58b3: $52
	ld   e, c                                        ; $58b4: $59
	sbc  a                                           ; $58b5: $9f
	dec  c                                           ; $58b6: $0d
	nop                                              ; $58b7: $00
	ld   a, [bc]                                     ; $58b8: $0a
	db   $10                                         ; $58b9: $10
	ld   a, [hl-]                                    ; $58ba: $3a
	nop                                              ; $58bb: $00
	inc  hl                                          ; $58bc: $23
	ld   d, l                                        ; $58bd: $55
	dec  c                                           ; $58be: $0d
	dec  b                                           ; $58bf: $05
	nop                                              ; $58c0: $00
	rrca                                             ; $58c1: $0f
	nop                                              ; $58c2: $00
	ld   bc, $7d01                                   ; $58c3: $01 $01 $7d
	ld   d, d                                        ; $58c6: $52
	sbc  [hl]                                        ; $58c7: $9e
	ld   [bc], a                                     ; $58c8: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58c9: $cf
	dec  b                                           ; $58ca: $05
	ld   a, [de]                                     ; $58cb: $1a
	ld   h, e                                        ; $58cc: $63
	and  c                                           ; $58cd: $a1
	sbc  a                                           ; $58ce: $9f
	dec  c                                           ; $58cf: $0d
	nop                                              ; $58d0: $00
	ld   a, [bc]                                     ; $58d1: $0a
	db   $10                                         ; $58d2: $10
	ld   a, [hl-]                                    ; $58d3: $3a
	nop                                              ; $58d4: $00
	inc  e                                           ; $58d5: $1c
	dec  b                                           ; $58d6: $05
	inc  bc                                          ; $58d7: $03
	inc  bc                                          ; $58d8: $03
	ld   bc, $5050                                   ; $58d9: $01 $50 $50
	sbc  [hl]                                        ; $58dc: $9e
	ld   e, b                                        ; $58dd: $58
	ld   e, b                                        ; $58de: $58
	ld   e, e                                        ; $58df: $5b
	ld   a, c                                        ; $58e0: $79
	rst  $38                                         ; $58e1: $ff
	rst  $38                                         ; $58e2: $ff
	sub  d                                           ; $58e3: $92
	ld   e, c                                        ; $58e4: $59
	and  c                                           ; $58e5: $a1
	ld   e, c                                        ; $58e6: $59
	ld   sp, hl                                      ; $58e7: $f9
	dec  c                                           ; $58e8: $0d
	sub  d                                           ; $58e9: $92
	sbc  [hl]                                        ; $58ea: $9e
	sub  d                                           ; $58eb: $92
	ld   e, c                                        ; $58ec: $59
	and  c                                           ; $58ed: $a1
	ld   a, b                                        ; $58ee: $78
	and  c                                           ; $58ef: $a1
	ld   e, c                                        ; $58f0: $59
	inc  bc                                          ; $58f1: $03
	and  b                                           ; $58f2: $a0
	ld   [hl], c                                     ; $58f3: $71
	ld   [hl], h                                     ; $58f4: $74
	ld   e, e                                        ; $58f5: $5b
	ld   l, l                                        ; $58f6: $6d
	sub  a                                           ; $58f7: $97
	dec  c                                           ; $58f8: $0d
	and  $ac                                         ; $58f9: $e6 $ac
	push af                                          ; $58fb: $f5
	ld   e, d                                        ; $58fc: $5a
	ld   a, b                                        ; $58fd: $78
	ld   a, [$a3ff]                                  ; $58fe: $fa $ff $a3
	xor  h                                           ; $5901: $ac
	push af                                          ; $5902: $f5
	ld   e, d                                        ; $5903: $5a
	ld   a, b                                        ; $5904: $78
	rst  $38                                         ; $5905: $ff
	rst  $38                                         ; $5906: $ff
	dec  c                                           ; $5907: $0d
	nop                                              ; $5908: $00
	ld   a, [bc]                                     ; $5909: $0a
	inc  e                                           ; $590a: $1c
	dec  b                                           ; $590b: $05
	ld   [bc], a                                     ; $590c: $02
	ld   [bc], a                                     ; $590d: $02
	ld   bc, $ffff                                   ; $590e: $01 $ff $ff
	ld   l, a                                        ; $5911: $6f
	sub  e                                           ; $5912: $93
	ei                                               ; $5913: $fb
	ld   [hl], h                                     ; $5914: $74
	ld   [bc], a                                     ; $5915: $02
	sbc  l                                           ; $5916: $9d
	ld   d, h                                        ; $5917: $54
	ld   [hl], h                                     ; $5918: $74
	sbc  c                                           ; $5919: $99
	inc  b                                           ; $591a: $04
	ld   a, d                                        ; $591b: $7a
	ld   [bc], a                                     ; $591c: $02
	ld   a, e                                        ; $591d: $7b
	sub  d                                           ; $591e: $92
	dec  c                                           ; $591f: $0d
	ld   a, b                                        ; $5920: $78
	ld   d, d                                        ; $5921: $52
	ld   [hl], c                                     ; $5922: $71
	ld   l, a                                        ; $5923: $6f
	sub  e                                           ; $5924: $93
	ei                                               ; $5925: $fb
	ld   a, e                                        ; $5926: $7b
	and  c                                           ; $5927: $a1
	sbc  a                                           ; $5928: $9f
	sub  b                                           ; $5929: $90
	ld   [hl], c                                     ; $592a: $71
	halt                                             ; $592b: $76
	dec  c                                           ; $592c: $0d
	nop                                              ; $592d: $00
	dec  b                                           ; $592e: $05
	ld   b, b                                        ; $592f: $40
	rst  $38                                         ; $5930: $ff
	inc  bc                                          ; $5931: $03
	rst  $38                                         ; $5932: $ff
	ld   bc, $2801                                   ; $5933: $01 $01 $28
	nop                                              ; $5936: $00
	ld   bc, $a802                                   ; $5937: $01 $02 $a8
	ld   [bc], a                                     ; $593a: $02
	ld   a, e                                        ; $593b: $7b
	ld   a, h                                        ; $593c: $7c
	xor  c                                           ; $593d: $a9
	xor  c                                           ; $593e: $a9
	sub  d                                           ; $593f: $92
	ld   [hl], d                                     ; $5940: $72
	ld   l, l                                        ; $5941: $6d
	ld   a, h                                        ; $5942: $7c
	adc  [hl]                                        ; $5943: $8e
	sbc  l                                           ; $5944: $9d
	sbc  a                                           ; $5945: $9f
	dec  c                                           ; $5946: $0d
	nop                                              ; $5947: $00
	ld   a, [bc]                                     ; $5948: $0a
	ld   b, $ce                                      ; $5949: $06 $ce
	add  hl, bc                                      ; $594b: $09
	rrca                                             ; $594c: $0f
	nop                                              ; $594d: $00
	ld   bc, $1301                                   ; $594e: $01 $01 $13
	ld   [bc], a                                     ; $5951: $02
	ld   a, e                                        ; $5952: $7b
	halt                                             ; $5953: $76
	ld   [hl], c                                     ; $5954: $71
	ld   e, l                                        ; $5955: $5d
	sbc  b                                           ; $5956: $98
	ld   e, c                                        ; $5957: $59
	rst  $38                                         ; $5958: $ff
	rst  $38                                         ; $5959: $ff
	dec  c                                           ; $595a: $0d
	ld   h, c                                        ; $595b: $61
	sbc  d                                           ; $595c: $9a
	ld   l, [hl]                                     ; $595d: $6e
	ld   a, b                                        ; $595e: $78
	sbc  a                                           ; $595f: $9f
	dec  c                                           ; $5960: $0d
	nop                                              ; $5961: $00
	ld   a, [bc]                                     ; $5962: $0a
	db   $10                                         ; $5963: $10
	jr   c, jr_062_5966                              ; $5964: $38 $00

jr_062_5966:
	inc  hl                                          ; $5966: $23
	ld   d, l                                        ; $5967: $55
	dec  c                                           ; $5968: $0d
	dec  b                                           ; $5969: $05
	nop                                              ; $596a: $00
	rrca                                             ; $596b: $0f
	nop                                              ; $596c: $00
	ld   bc, $7d01                                   ; $596d: $01 $01 $7d
	ld   d, d                                        ; $5970: $52
	sbc  [hl]                                        ; $5971: $9e
	ld   [bc], a                                     ; $5972: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5973: $cf
	dec  b                                           ; $5974: $05
	ld   a, [de]                                     ; $5975: $1a
	ld   h, e                                        ; $5976: $63
	and  c                                           ; $5977: $a1
	sbc  a                                           ; $5978: $9f
	dec  c                                           ; $5979: $0d
	nop                                              ; $597a: $00
	ld   a, [bc]                                     ; $597b: $0a
	db   $10                                         ; $597c: $10
	jr   c, jr_062_597f                              ; $597d: $38 $00

jr_062_597f:
	inc  e                                           ; $597f: $1c
	dec  b                                           ; $5980: $05
	ld   bc, $1d01                                   ; $5981: $01 $01 $1d
	ld   b, b                                        ; $5984: $40
	dec  d                                           ; $5985: $15
	inc  bc                                          ; $5986: $03
	dec  d                                           ; $5987: $15
	ld   bc, $2802                                   ; $5988: $01 $02 $28
	nop                                              ; $598b: $00
	ld   bc, $5050                                   ; $598c: $01 $50 $50
	sbc  [hl]                                        ; $598f: $9e
	ld   e, b                                        ; $5990: $58
	ld   e, b                                        ; $5991: $58
	ld   e, e                                        ; $5992: $5b
	ld   a, c                                        ; $5993: $79
	rst  $38                                         ; $5994: $ff
	rst  $38                                         ; $5995: $ff
	dec  c                                           ; $5996: $0d
	inc  de                                          ; $5997: $13
	ld   [bc], a                                     ; $5998: $02
	ld   a, e                                        ; $5999: $7b
	halt                                             ; $599a: $76
	ld   [hl], c                                     ; $599b: $71
	ld   e, l                                        ; $599c: $5d
	sbc  b                                           ; $599d: $98
	ld   e, c                                        ; $599e: $59
	sbc  a                                           ; $599f: $9f
	pop  de                                          ; $59a0: $d1
	call nz, $ecc2                                   ; $59a1: $c4 $c2 $ec
	sub  d                                           ; $59a4: $92
	sbc  a                                           ; $59a5: $9f
	dec  c                                           ; $59a6: $0d
	inc  de                                          ; $59a7: $13
	ld   [bc], a                                     ; $59a8: $02
	ld   a, e                                        ; $59a9: $7b
	ld   h, a                                        ; $59aa: $67
	ld   a, b                                        ; $59ab: $78
	sbc  l                                           ; $59ac: $9d
	ld   l, a                                        ; $59ad: $6f
	inc  d                                           ; $59ae: $14
	rla                                              ; $59af: $17
	ld   de, $3737                                   ; $59b0: $11 $37 $37
	sub  d                                           ; $59b3: $92
	sbc  a                                           ; $59b4: $9f
	dec  c                                           ; $59b5: $0d
	nop                                              ; $59b6: $00
	ld   a, [bc]                                     ; $59b7: $0a
	ld   bc, $c4d1                                   ; $59b8: $01 $d1 $c4
	jp   nz, Jump_062_7dec                           ; $59bb: $c2 $ec $7d

	ld   e, c                                        ; $59be: $59
	sbc  d                                           ; $59bf: $9a
	sbc  c                                           ; $59c0: $99
	sub  d                                           ; $59c1: $92
	and  c                                           ; $59c2: $a1
	sbc  a                                           ; $59c3: $9f
	dec  c                                           ; $59c4: $0d
	adc  c                                           ; $59c5: $89
	ld   a, b                                        ; $59c6: $78
	sbc  [hl]                                        ; $59c7: $9e
	inc  bc                                          ; $59c8: $03
	ld   l, c                                        ; $59c9: $69

jr_062_59ca:
	ld   [bc], a                                     ; $59ca: $02
	xor  d                                           ; $59cb: $aa
	ld   a, h                                        ; $59cc: $7c
	add  b                                           ; $59cd: $80
	halt                                             ; $59ce: $76
	ld   [hl], d                                     ; $59cf: $72
	sub  b                                           ; $59d0: $90
	dec  c                                           ; $59d1: $0d
	ld   l, l                                        ; $59d2: $6d
	ld   a, h                                        ; $59d3: $7c
	adc  [hl]                                        ; $59d4: $8e
	sbc  l                                           ; $59d5: $9d
	sbc  a                                           ; $59d6: $9f
	dec  c                                           ; $59d7: $0d

Call_062_59d8:
	nop                                              ; $59d8: $00
	ld   a, [bc]                                     ; $59d9: $0a
	rrca                                             ; $59da: $0f
	nop                                              ; $59db: $00
	ld   bc, $0301                                   ; $59dc: $01 $01 $03
	ld   l, b                                        ; $59df: $68
	ld   a, l                                        ; $59e0: $7d
	sbc  [hl]                                        ; $59e1: $9e
	ld   e, b                                        ; $59e2: $58
	sub  b                                           ; $59e3: $90
	ld   h, l                                        ; $59e4: $65
	ld   a, c                                        ; $59e5: $79
	ld   a, b                                        ; $59e6: $78
	sbc  c                                           ; $59e7: $99
	db   $e4                                         ; $59e8: $e4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $59e9: $cf
	dec  c                                           ; $59ea: $0d
	ld   e, c                                        ; $59eb: $59
	rst  $38                                         ; $59ec: $ff
	rst  $38                                         ; $59ed: $ff
	rst  $38                                         ; $59ee: $ff
	rst  $38                                         ; $59ef: $ff
	dec  c                                           ; $59f0: $0d
	inc  b                                           ; $59f1: $04
	ld   c, $04                                      ; $59f2: $0e $04
	ld   d, $02                                      ; $59f4: $16 $02
	xor  b                                           ; $59f6: $a8
	inc  b                                           ; $59f7: $04
	sub  l                                           ; $59f8: $95
	ld   [bc], a                                     ; $59f9: $02
	ld   hl, $0279                                   ; $59fa: $21 $79 $02
	ld   a, a                                        ; $59fd: $7f
	ld   [hl], c                                     ; $59fe: $71
	ld   [hl], h                                     ; $59ff: $74
	adc  l                                           ; $5a00: $8d
	sbc  c                                           ; $5a01: $99
	ld   e, c                                        ; $5a02: $59
	sbc  a                                           ; $5a03: $9f
	dec  c                                           ; $5a04: $0d
	nop                                              ; $5a05: $00
	ld   a, [bc]                                     ; $5a06: $0a
	dec  c                                           ; $5a07: $0d
	nop                                              ; $5a08: $00
	nop                                              ; $5a09: $00
	rrca                                             ; $5a0a: $0f
	nop                                              ; $5a0b: $00
	ld   bc, $2123                                   ; $5a0c: $01 $23 $21
	ld   bc, $9058                                   ; $5a0f: $01 $58 $90
	ld   h, l                                        ; $5a12: $65
	ld   a, c                                        ; $5a13: $79
	ld   a, b                                        ; $5a14: $78
	sbc  b                                           ; $5a15: $98
	ld   l, e                                        ; $5a16: $6b
	ld   d, h                                        ; $5a17: $54
	ld   a, b                                        ; $5a18: $78
	db   $e4                                         ; $5a19: $e4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a1a: $cf
	ld   a, l                                        ; $5a1b: $7d
	rst  $38                                         ; $5a1c: $ff
	rst  $38                                         ; $5a1d: $ff
	dec  c                                           ; $5a1e: $0d
	nop                                              ; $5a1f: $00
	ld   a, [bc]                                     ; $5a20: $0a
	add  hl, de                                      ; $5a21: $19
	dec  b                                           ; $5a22: $05
	inc  bc                                          ; $5a23: $03
	inc  b                                           ; $5a24: $04
	jr   c, jr_062_59ca                              ; $5a25: $38 $a3

	xor  $a5                                         ; $5a27: $ee $a5
	nop                                              ; $5a29: $00
	nop                                              ; $5a2a: $00
	inc  b                                           ; $5a2b: $04
	ld   c, $04                                      ; $5a2c: $0e $04
	ld   d, $02                                      ; $5a2e: $16 $02
	xor  b                                           ; $5a30: $a8
	ld   a, h                                        ; $5a31: $7c
	inc  bc                                          ; $5a32: $03
	cp   a                                           ; $5a33: $bf
	nop                                              ; $5a34: $00
	ld   bc, $5a59                                   ; $5a35: $01 $59 $5a
	adc  l                                           ; $5a38: $8d
	db   $e4                                         ; $5a39: $e4
	jp   nz, $0200                                   ; $5a3a: $c2 $00 $02

	rlca                                             ; $5a3d: $07
	add  sp, $0d                                     ; $5a3e: $e8 $0d
	ld   [bc], a                                     ; $5a40: $02
	inc  bc                                          ; $5a41: $03
	ld   bc, $2000                                   ; $5a42: $01 $00 $20
	nop                                              ; $5a45: $00
	rlca                                             ; $5a46: $07
	or   l                                           ; $5a47: $b5
	inc  c                                           ; $5a48: $0c
	ld   [bc], a                                     ; $5a49: $02
	inc  bc                                          ; $5a4a: $03
	ld   bc, $2001                                   ; $5a4b: $01 $01 $20
	nop                                              ; $5a4e: $00
	rlca                                             ; $5a4f: $07
	ld   d, c                                        ; $5a50: $51
	dec  c                                           ; $5a51: $0d
	ld   [bc], a                                     ; $5a52: $02
	inc  bc                                          ; $5a53: $03
	ld   bc, $2002                                   ; $5a54: $01 $02 $20
	nop                                              ; $5a57: $00
	ld   b, $8a                                      ; $5a58: $06 $8a
	inc  c                                           ; $5a5a: $0c
	rrca                                             ; $5a5b: $0f
	nop                                              ; $5a5c: $00
	ld   bc, $ff01                                   ; $5a5d: $01 $01 $ff
	rst  $38                                         ; $5a60: $ff
	rst  $38                                         ; $5a61: $ff
	rst  $38                                         ; $5a62: $ff
	rst  $38                                         ; $5a63: $ff
	rst  $38                                         ; $5a64: $ff
	ld   a, l                                        ; $5a65: $7d
	ld   [hl], c                                     ; $5a66: $71
	ld   a, [$020d]                                  ; $5a67: $fa $0d $02
	ld   h, l                                        ; $5a6a: $65
	ld   d, [hl]                                     ; $5a6b: $56
	ld   [hl], h                                     ; $5a6c: $74
	ld   l, l                                        ; $5a6d: $6d
	sub  a                                           ; $5a6e: $97
	inc  b                                           ; $5a6f: $04
	ld   b, d                                        ; $5a70: $42
	ld   l, a                                        ; $5a71: $6f
	sub  c                                           ; $5a72: $91
	ld   [hl], c                                     ; $5a73: $71
	ld   l, l                                        ; $5a74: $6d
	sub  [hl]                                        ; $5a75: $96
	sbc  a                                           ; $5a76: $9f
	dec  c                                           ; $5a77: $0d
	ld   d, d                                        ; $5a78: $52
	ld   e, c                                        ; $5a79: $59
	and  c                                           ; $5a7a: $a1
	sbc  [hl]                                        ; $5a7b: $9e
	ld   d, d                                        ; $5a7c: $52
	ld   e, c                                        ; $5a7d: $59
	and  c                                           ; $5a7e: $a1
	sbc  a                                           ; $5a7f: $9f
	dec  c                                           ; $5a80: $0d
	nop                                              ; $5a81: $00
	ld   a, [bc]                                     ; $5a82: $0a
	ld   b, $50                                      ; $5a83: $06 $50
	inc  c                                           ; $5a85: $0c
	rrca                                             ; $5a86: $0f
	nop                                              ; $5a87: $00
	ld   bc, $0401                                   ; $5a88: $01 $01 $04
	ld   c, $04                                      ; $5a8b: $0e $04
	ld   d, $02                                      ; $5a8d: $16 $02
	xor  b                                           ; $5a8f: $a8
	ld   a, h                                        ; $5a90: $7c
	inc  bc                                          ; $5a91: $03
	cp   a                                           ; $5a92: $bf
	ld   e, c                                        ; $5a93: $59
	rst  $38                                         ; $5a94: $ff
	rst  $38                                         ; $5a95: $ff
	dec  c                                           ; $5a96: $0d
	ld   h, c                                        ; $5a97: $61
	sbc  d                                           ; $5a98: $9a
	ld   [hl], l                                     ; $5a99: $75
	ld   d, d                                        ; $5a9a: $52
	ld   d, d                                        ; $5a9b: $52
	ld   e, c                                        ; $5a9c: $59
	sbc  a                                           ; $5a9d: $9f
	dec  c                                           ; $5a9e: $0d
	nop                                              ; $5a9f: $00
	ld   a, [bc]                                     ; $5aa0: $0a
	db   $10                                         ; $5aa1: $10
	dec  sp                                          ; $5aa2: $3b
	nop                                              ; $5aa3: $00
	inc  hl                                          ; $5aa4: $23
	ld   d, l                                        ; $5aa5: $55
	dec  c                                           ; $5aa6: $0d
	dec  b                                           ; $5aa7: $05
	nop                                              ; $5aa8: $00
	rrca                                             ; $5aa9: $0f
	nop                                              ; $5aaa: $00
	ld   bc, $7d01                                   ; $5aab: $01 $01 $7d
	ld   d, d                                        ; $5aae: $52
	sbc  [hl]                                        ; $5aaf: $9e
	ld   [bc], a                                     ; $5ab0: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ab1: $cf
	dec  b                                           ; $5ab2: $05
	ld   a, [de]                                     ; $5ab3: $1a
	ld   h, e                                        ; $5ab4: $63
	and  c                                           ; $5ab5: $a1
	sbc  a                                           ; $5ab6: $9f
	dec  c                                           ; $5ab7: $0d
	nop                                              ; $5ab8: $00
	ld   a, [bc]                                     ; $5ab9: $0a
	inc  e                                           ; $5aba: $1c
	dec  b                                           ; $5abb: $05
	nop                                              ; $5abc: $00
	nop                                              ; $5abd: $00
	ld   bc, $5050                                   ; $5abe: $01 $50 $50
	sbc  [hl]                                        ; $5ac1: $9e
	ld   e, b                                        ; $5ac2: $58
	ld   e, b                                        ; $5ac3: $58
	ld   e, e                                        ; $5ac4: $5b
	ld   a, c                                        ; $5ac5: $79
	rst  $38                                         ; $5ac6: $ff
	rst  $38                                         ; $5ac7: $ff
	dec  c                                           ; $5ac8: $0d
	and  c                                           ; $5ac9: $a1
	ld   sp, hl                                      ; $5aca: $f9
	db   $10                                         ; $5acb: $10
	inc  bc                                          ; $5acc: $03
	cp   a                                           ; $5acd: $bf
	rst  $38                                         ; $5ace: $ff
	rst  $38                                         ; $5acf: $ff
	dec  c                                           ; $5ad0: $0d
	ld   a, c                                        ; $5ad1: $79
	ld   h, l                                        ; $5ad2: $65
	ld   [hl], h                                     ; $5ad3: $74
	ld   a, l                                        ; $5ad4: $7d
	ld   [bc], a                                     ; $5ad5: $02
	ld   [hl], $52                                   ; $5ad6: $36 $52
	ld   a, b                                        ; $5ad8: $78
	rst  $38                                         ; $5ad9: $ff
	rst  $38                                         ; $5ada: $ff
	dec  c                                           ; $5adb: $0d
	nop                                              ; $5adc: $00
	ld   a, [bc]                                     ; $5add: $0a
	db   $10                                         ; $5ade: $10
	dec  sp                                          ; $5adf: $3b
	nop                                              ; $5ae0: $00
	inc  e                                           ; $5ae1: $1c
	dec  b                                           ; $5ae2: $05
	rlca                                             ; $5ae3: $07
	rlca                                             ; $5ae4: $07
	ld   bc, $9e50                                   ; $5ae5: $01 $50 $9e
	inc  b                                           ; $5ae8: $04
	ld   c, $04                                      ; $5ae9: $0e $04
	ld   d, $02                                      ; $5aeb: $16 $02
	xor  b                                           ; $5aed: $a8
	ld   a, h                                        ; $5aee: $7c
	inc  bc                                          ; $5aef: $03
	cp   a                                           ; $5af0: $bf
	sub  d                                           ; $5af1: $92
	ld   a, b                                        ; $5af2: $78
	sbc  a                                           ; $5af3: $9f
	dec  c                                           ; $5af4: $0d
	ld   h, c                                        ; $5af5: $61
	and  c                                           ; $5af6: $a1
	ld   a, b                                        ; $5af7: $78
	ld   [bc], a                                     ; $5af8: $02
	ld   [hl], $52                                   ; $5af9: $36 $52
	sub  b                                           ; $5afb: $90
	and  c                                           ; $5afc: $a1
	sbc  [hl]                                        ; $5afd: $9e
	ld   e, b                                        ; $5afe: $58
	sub  b                                           ; $5aff: $90
	ld   h, l                                        ; $5b00: $65
	ld   a, c                                        ; $5b01: $79
	dec  c                                           ; $5b02: $0d
	nop                                              ; $5b03: $00
	dec  b                                           ; $5b04: $05
	ld   b, b                                        ; $5b05: $40
	rst  $38                                         ; $5b06: $ff
	inc  bc                                          ; $5b07: $03
	rst  $38                                         ; $5b08: $ff
	ld   bc, $2801                                   ; $5b09: $01 $01 $28
	nop                                              ; $5b0c: $00
	ld   bc, $9a78                                   ; $5b0d: $01 $78 $9a
	add  [hl]                                        ; $5b10: $86
	and  c                                           ; $5b11: $a1
	ld   [hl], l                                     ; $5b12: $75
	sbc  a                                           ; $5b13: $9f
	and  e                                           ; $5b14: $a3
	xor  h                                           ; $5b15: $ac
	push af                                          ; $5b16: $f5
	sbc  [hl]                                        ; $5b17: $9e
	and  e                                           ; $5b18: $a3
	xor  h                                           ; $5b19: $ac
	push af                                          ; $5b1a: $f5
	sbc  a                                           ; $5b1b: $9f
	dec  c                                           ; $5b1c: $0d
	nop                                              ; $5b1d: $00
	ld   a, [bc]                                     ; $5b1e: $0a
	ld   b, $36                                      ; $5b1f: $06 $36
	inc  c                                           ; $5b21: $0c
	rrca                                             ; $5b22: $0f
	nop                                              ; $5b23: $00
	ld   bc, $5901                                   ; $5b24: $01 $01 $59
	ld   e, d                                        ; $5b27: $5a
	adc  l                                           ; $5b28: $8d
	db   $e4                                         ; $5b29: $e4
	jp   nz, $ff59                                   ; $5b2a: $c2 $59 $ff

	rst  $38                                         ; $5b2d: $ff
	dec  c                                           ; $5b2e: $0d
	ld   h, c                                        ; $5b2f: $61
	and  c                                           ; $5b30: $a1
	ld   a, b                                        ; $5b31: $78
	sub  b                                           ; $5b32: $90
	ld   a, h                                        ; $5b33: $7c
	adc  h                                           ; $5b34: $8c
	ld   [hl], l                                     ; $5b35: $75
	ld   d, b                                        ; $5b36: $50
	sbc  c                                           ; $5b37: $99
	and  c                                           ; $5b38: $a1
	ld   l, [hl]                                     ; $5b39: $6e
	ld   a, b                                        ; $5b3a: $78
	rst  $38                                         ; $5b3b: $ff
	rst  $38                                         ; $5b3c: $ff
	dec  c                                           ; $5b3d: $0d
	ld   h, c                                        ; $5b3e: $61
	sbc  d                                           ; $5b3f: $9a
	inc  bc                                          ; $5b40: $03
	and  b                                           ; $5b41: $a0
	ld   [hl], c                                     ; $5b42: $71
	ld   [hl], h                                     ; $5b43: $74
	ld   d, d                                        ; $5b44: $52
	ld   h, c                                        ; $5b45: $61
	ld   d, h                                        ; $5b46: $54
	sbc  a                                           ; $5b47: $9f
	dec  c                                           ; $5b48: $0d
	nop                                              ; $5b49: $00
	ld   a, [bc]                                     ; $5b4a: $0a
	db   $10                                         ; $5b4b: $10
	inc  a                                           ; $5b4c: $3c
	nop                                              ; $5b4d: $00
	inc  hl                                          ; $5b4e: $23
	ld   d, l                                        ; $5b4f: $55
	dec  c                                           ; $5b50: $0d
	dec  b                                           ; $5b51: $05
	nop                                              ; $5b52: $00
	rrca                                             ; $5b53: $0f
	nop                                              ; $5b54: $00
	ld   bc, $7d01                                   ; $5b55: $01 $01 $7d
	ld   d, d                                        ; $5b58: $52
	sbc  [hl]                                        ; $5b59: $9e
	ld   [bc], a                                     ; $5b5a: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b5b: $cf
	dec  b                                           ; $5b5c: $05
	ld   a, [de]                                     ; $5b5d: $1a
	ld   h, e                                        ; $5b5e: $63
	and  c                                           ; $5b5f: $a1
	sbc  a                                           ; $5b60: $9f
	dec  c                                           ; $5b61: $0d
	nop                                              ; $5b62: $00

jr_062_5b63:
	ld   a, [bc]                                     ; $5b63: $0a
	db   $10                                         ; $5b64: $10
	inc  a                                           ; $5b65: $3c
	nop                                              ; $5b66: $00
	inc  e                                           ; $5b67: $1c
	dec  b                                           ; $5b68: $05
	nop                                              ; $5b69: $00
	nop                                              ; $5b6a: $00
	ld   bc, $5050                                   ; $5b6b: $01 $50 $50
	sbc  [hl]                                        ; $5b6e: $9e
	ld   e, b                                        ; $5b6f: $58
	ld   e, b                                        ; $5b70: $58
	ld   e, e                                        ; $5b71: $5b
	ld   a, c                                        ; $5b72: $79
	rst  $38                                         ; $5b73: $ff
	rst  $38                                         ; $5b74: $ff
	dec  c                                           ; $5b75: $0d
	ld   [hl], c                                     ; $5b76: $71
	ld   [hl], h                                     ; $5b77: $74
	sbc  [hl]                                        ; $5b78: $9e
	ld   e, c                                        ; $5b79: $59
	ld   e, d                                        ; $5b7a: $5a
	adc  l                                           ; $5b7b: $8d
	sub  b                                           ; $5b7c: $90
	ld   l, a                                        ; $5b7d: $6f
	sub  d                                           ; $5b7e: $92
	and  c                                           ; $5b7f: $a1
	ld   e, c                                        ; $5b80: $59
	sbc  a                                           ; $5b81: $9f
	dec  c                                           ; $5b82: $0d
	nop                                              ; $5b83: $00
	ld   a, [bc]                                     ; $5b84: $0a
	inc  e                                           ; $5b85: $1c
	dec  b                                           ; $5b86: $05
	ld   [bc], a                                     ; $5b87: $02
	ld   [bc], a                                     ; $5b88: $02
	ld   bc, wRandomNumStruct                                   ; $5b89: $01 $a7 $c2
	ld   e, d                                        ; $5b8c: $5a
	adc  c                                           ; $5b8d: $89
	ld   h, l                                        ; $5b8e: $65
	ld   d, d                                        ; $5b8f: $52
	ld   a, h                                        ; $5b90: $7c
	ld   a, l                                        ; $5b91: $7d
	sbc  [hl]                                        ; $5b92: $9e
	dec  c                                           ; $5b93: $0d
	ld   e, b                                        ; $5b94: $58
	sub  b                                           ; $5b95: $90
	ld   l, a                                        ; $5b96: $6f
	ld   h, [hl]                                     ; $5b97: $66
	sub  c                                           ; $5b98: $91
	ld   a, b                                        ; $5b99: $78
	ld   e, l                                        ; $5b9a: $5d
	ld   [hl], h                                     ; $5b9b: $74
	sbc  [hl]                                        ; $5b9c: $9e
	ld   e, b                                        ; $5b9d: $58
	sub  b                                           ; $5b9e: $90
	ld   h, l                                        ; $5b9f: $65
	sub  d                                           ; $5ba0: $92
	sbc  a                                           ; $5ba1: $9f
	dec  c                                           ; $5ba2: $0d
	nop                                              ; $5ba3: $00
	dec  b                                           ; $5ba4: $05
	ld   b, b                                        ; $5ba5: $40
	rst  $38                                         ; $5ba6: $ff
	inc  bc                                          ; $5ba7: $03
	rst  $38                                         ; $5ba8: $ff
	ld   bc, $2801                                   ; $5ba9: $01 $01 $28
	nop                                              ; $5bac: $00
	ld   bc, $7c6d                                   ; $5bad: $01 $6d $7c
	adc  [hl]                                        ; $5bb0: $8e
	ld   [hl], l                                     ; $5bb1: $75
	sbc  a                                           ; $5bb2: $9f
	dec  c                                           ; $5bb3: $0d

jr_062_5bb4:
	nop                                              ; $5bb4: $00
	ld   a, [bc]                                     ; $5bb5: $0a
	ld   b, $36                                      ; $5bb6: $06 $36
	inc  c                                           ; $5bb8: $0c
	rrca                                             ; $5bb9: $0f
	nop                                              ; $5bba: $00
	ld   bc, $0401                                   ; $5bbb: $01 $01 $04
	jr   c, jr_062_5b63                              ; $5bbe: $38 $a3

	xor  $a5                                         ; $5bc0: $ee $a5
	ld   e, c                                        ; $5bc2: $59
	rst  $38                                         ; $5bc3: $ff
	rst  $38                                         ; $5bc4: $ff
	dec  c                                           ; $5bc5: $0d
	xor  h                                           ; $5bc6: $ac
	push af                                          ; $5bc7: $f5
	bit  4, e                                        ; $5bc8: $cb $63
	and  c                                           ; $5bca: $a1
	ld   a, h                                        ; $5bcb: $7c
	inc  b                                           ; $5bcc: $04
	and  e                                           ; $5bcd: $a3
	sbc  d                                           ; $5bce: $9a
	inc  b                                           ; $5bcf: $04
	sub  d                                           ; $5bd0: $92
	ld   l, [hl]                                     ; $5bd1: $6e
	ld   a, b                                        ; $5bd2: $78
	sbc  a                                           ; $5bd3: $9f
	dec  c                                           ; $5bd4: $0d
	ld   h, c                                        ; $5bd5: $61
	sbc  d                                           ; $5bd6: $9a
	ld   a, c                                        ; $5bd7: $79
	ld   h, l                                        ; $5bd8: $65
	sub  [hl]                                        ; $5bd9: $96
	ld   [hl], c                                     ; $5bda: $71
	halt                                             ; $5bdb: $76
	sbc  a                                           ; $5bdc: $9f
	dec  c                                           ; $5bdd: $0d
	nop                                              ; $5bde: $00
	ld   a, [bc]                                     ; $5bdf: $0a
	db   $10                                         ; $5be0: $10
	stop                                             ; $5be1: $10 $00
	inc  hl                                          ; $5be3: $23
	ld   d, l                                        ; $5be4: $55
	dec  c                                           ; $5be5: $0d
	dec  b                                           ; $5be6: $05
	nop                                              ; $5be7: $00
	rrca                                             ; $5be8: $0f
	nop                                              ; $5be9: $00
	ld   bc, $7d01                                   ; $5bea: $01 $01 $7d
	ld   d, d                                        ; $5bed: $52
	sbc  [hl]                                        ; $5bee: $9e
	ld   [bc], a                                     ; $5bef: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5bf0: $cf
	dec  b                                           ; $5bf1: $05
	ld   a, [de]                                     ; $5bf2: $1a
	ld   h, e                                        ; $5bf3: $63
	and  c                                           ; $5bf4: $a1
	sbc  a                                           ; $5bf5: $9f
	dec  c                                           ; $5bf6: $0d
	nop                                              ; $5bf7: $00
	ld   a, [bc]                                     ; $5bf8: $0a
	db   $10                                         ; $5bf9: $10
	stop                                             ; $5bfa: $10 $00
	inc  e                                           ; $5bfc: $1c
	dec  b                                           ; $5bfd: $05
	ld   bc, $1d01                                   ; $5bfe: $01 $01 $1d
	ld   b, b                                        ; $5c01: $40
	dec  d                                           ; $5c02: $15
	inc  bc                                          ; $5c03: $03
	dec  d                                           ; $5c04: $15
	ld   bc, $2802                                   ; $5c05: $01 $02 $28
	nop                                              ; $5c08: $00
	ld   bc, hScriptOpcodeParams+1                                   ; $5c09: $01 $a1 $ff
	rst  $38                                         ; $5c0c: $ff
	dec  c                                           ; $5c0d: $0d
	inc  b                                           ; $5c0e: $04
	jr   c, jr_062_5bb4                              ; $5c0f: $38 $a3

	xor  $a5                                         ; $5c11: $ee $a5
	ld   e, c                                        ; $5c13: $59
	sbc  a                                           ; $5c14: $9f
	pop  de                                          ; $5c15: $d1
	call nz, $ecc2                                   ; $5c16: $c4 $c2 $ec
	ld   a, [$6f0d]                                  ; $5c19: $fa $0d $6f
	sub  l                                           ; $5c1c: $95
	ld   d, h                                        ; $5c1d: $54
	ld   [hl], a                                     ; $5c1e: $77
	xor  c                                           ; $5c1f: $a9
	xor  c                                           ; $5c20: $a9
	sub  d                                           ; $5c21: $92
	and  c                                           ; $5c22: $a1
	sbc  a                                           ; $5c23: $9f
	ld   e, b                                        ; $5c24: $58
	ld   e, b                                        ; $5c25: $58
	ld   e, e                                        ; $5c26: $5b
	ld   a, c                                        ; $5c27: $79
	sbc  a                                           ; $5c28: $9f
	dec  c                                           ; $5c29: $0d
	nop                                              ; $5c2a: $00
	ld   a, [bc]                                     ; $5c2b: $0a
	rlca                                             ; $5c2c: $07
	add  c                                           ; $5c2d: $81
	ld   c, $03                                      ; $5c2e: $0e $03
	rst  $38                                         ; $5c30: $ff
	ld   bc, $2000                                   ; $5c31: $01 $00 $20
	nop                                              ; $5c34: $00
	ld   bc, $7889                                   ; $5c35: $01 $89 $78
	sbc  [hl]                                        ; $5c38: $9e
	ld   d, d                                        ; $5c39: $52
	sub  [hl]                                        ; $5c3a: $96
	ld   d, d                                        ; $5c3b: $52
	sub  [hl]                                        ; $5c3c: $96
	dec  c                                           ; $5c3d: $0d
	xor  c                                           ; $5c3e: $a9
	push af                                          ; $5c3f: $f5
	cp   c                                           ; $5c40: $b9
	push af                                          ; $5c41: $f5
	ld   a, h                                        ; $5c42: $7c
	rst  ToBoot                                         ; $5c43: $c7
	cp   d                                           ; $5c44: $ba
	ret                                              ; $5c45: $c9


	ld   [bc], a                                     ; $5c46: $02
	adc  b                                           ; $5c47: $88
	dec  b                                           ; $5c48: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5c49: $cf
	sub  d                                           ; $5c4a: $92
	sbc  a                                           ; $5c4b: $9f
	dec  c                                           ; $5c4c: $0d
	nop                                              ; $5c4d: $00
	ld   a, [bc]                                     ; $5c4e: $0a
	ld   b, $b3                                      ; $5c4f: $06 $b3
	ld   c, $1d                                      ; $5c51: $0e $1d
	ld   b, b                                        ; $5c53: $40
	dec  d                                           ; $5c54: $15
	inc  bc                                          ; $5c55: $03
	dec  d                                           ; $5c56: $15
	ld   bc, $2803                                   ; $5c57: $01 $03 $28
	nop                                              ; $5c5a: $00
	ld   bc, $5d62                                   ; $5c5b: $01 $62 $5d
	sbc  e                                           ; $5c5e: $9b
	ld   d, h                                        ; $5c5f: $54
	ld   h, e                                        ; $5c60: $63
	and  c                                           ; $5c61: $a1
	sub  d                                           ; $5c62: $92
	ld   [hl], c                                     ; $5c63: $71
	ld   l, l                                        ; $5c64: $6d
	ld   a, b                                        ; $5c65: $78
	sbc  a                                           ; $5c66: $9f

Jump_062_5c67:
	dec  c                                           ; $5c67: $0d
	adc  c                                           ; $5c68: $89
	ld   a, b                                        ; $5c69: $78
	sbc  [hl]                                        ; $5c6a: $9e
	ld   d, d                                        ; $5c6b: $52
	sub  [hl]                                        ; $5c6c: $96
	ld   d, d                                        ; $5c6d: $52
	sub  [hl]                                        ; $5c6e: $96
	dec  c                                           ; $5c6f: $0d
	xor  c                                           ; $5c70: $a9
	push af                                          ; $5c71: $f5
	cp   c                                           ; $5c72: $b9
	push af                                          ; $5c73: $f5
	ld   a, h                                        ; $5c74: $7c
	rst  ToBoot                                         ; $5c75: $c7
	cp   d                                           ; $5c76: $ba
	ret                                              ; $5c77: $c9


	ld   [bc], a                                     ; $5c78: $02
	adc  b                                           ; $5c79: $88
	dec  b                                           ; $5c7a: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5c7b: $cf
	sub  d                                           ; $5c7c: $92
	sbc  a                                           ; $5c7d: $9f
	dec  c                                           ; $5c7e: $0d
	nop                                              ; $5c7f: $00
	ld   a, [bc]                                     ; $5c80: $0a
	ld   b, $b3                                      ; $5c81: $06 $b3
	ld   c, $0d                                      ; $5c83: $0e $0d
	nop                                              ; $5c85: $00
	nop                                              ; $5c86: $00
	rrca                                             ; $5c87: $0f
	nop                                              ; $5c88: $00
	ld   bc, $0b0c                                   ; $5c89: $01 $0c $0b
	inc  e                                           ; $5c8c: $1c
	dec  b                                           ; $5c8d: $05
	nop                                              ; $5c8e: $00
	nop                                              ; $5c8f: $00
	ld   bc, $6596                                   ; $5c90: $01 $96 $65
	sbc  [hl]                                        ; $5c93: $9e
	inc  bc                                          ; $5c94: $03
	inc  e                                           ; $5c95: $1c
	inc  b                                           ; $5c96: $04
	ld   d, e                                        ; $5c97: $53
	ld   [hl], l                                     ; $5c98: $75
	ld   e, e                                        ; $5c99: $5b
	ld   l, l                                        ; $5c9a: $6d
	rst  $38                                         ; $5c9b: $ff
	rst  $38                                         ; $5c9c: $ff
	dec  c                                           ; $5c9d: $0d
	ld   l, e                                        ; $5c9e: $6b
	ld   h, c                                        ; $5c9f: $61
	ld   a, h                                        ; $5ca0: $7c
	cp   d                                           ; $5ca1: $ba
	and  l                                           ; $5ca2: $a5
	call nz, $a0c2                                   ; $5ca3: $c4 $c2 $a0
	sbc  [hl]                                        ; $5ca6: $9e
	and  a                                           ; $5ca7: $a7
	jp   nz, $0d7c                                   ; $5ca8: $c2 $7c $0d

	ld   [bc], a                                     ; $5cab: $02
	sbc  l                                           ; $5cac: $9d
	ld   d, h                                        ; $5cad: $54
	halt                                             ; $5cae: $76
	ld   e, b                                        ; $5caf: $58
	sbc  b                                           ; $5cb0: $98
	ld   a, c                                        ; $5cb1: $79
	inc  b                                           ; $5cb2: $04
	dec  de                                          ; $5cb3: $1b
	ld   e, c                                        ; $5cb4: $59
	ld   h, l                                        ; $5cb5: $65
	ld   [hl], h                                     ; $5cb6: $74
	ld   a, b                                        ; $5cb7: $78
	sbc  a                                           ; $5cb8: $9f
	dec  c                                           ; $5cb9: $0d
	nop                                              ; $5cba: $00
	ld   a, [bc]                                     ; $5cbb: $0a
	db   $10                                         ; $5cbc: $10
	dec  a                                           ; $5cbd: $3d
	nop                                              ; $5cbe: $00
	ld   bc, $7c61                                   ; $5cbf: $01 $61 $7c
	adc  h                                           ; $5cc2: $8c
	ld   d, [hl]                                     ; $5cc3: $56
	sub  d                                           ; $5cc4: $92
	ld   [hl], c                                     ; $5cc5: $71
	ld   l, l                                        ; $5cc6: $6d
	sbc  [hl]                                        ; $5cc7: $9e
	ld   [bc], a                                     ; $5cc8: $02
	jr   c, jr_062_5ccf                              ; $5cc9: $38 $04

	ld   d, d                                        ; $5ccb: $52
	ld   a, h                                        ; $5ccc: $7c
	ld   l, c                                        ; $5ccd: $69
	ld   d, d                                        ; $5cce: $52

jr_062_5ccf:
	add  c                                           ; $5ccf: $81
	dec  c                                           ; $5cd0: $0d
	halt                                             ; $5cd1: $76
	inc  b                                           ; $5cd2: $04
	dec  e                                           ; $5cd3: $1d
	ld   h, [hl]                                     ; $5cd4: $66
	ld   [hl], l                                     ; $5cd5: $75
	sbc  [hl]                                        ; $5cd6: $9e
	inc  d                                           ; $5cd7: $14
	ld   [bc], a                                     ; $5cd8: $02
	sub  e                                           ; $5cd9: $93
	ld   b, $5a                                      ; $5cda: $06 $5a
	inc  bc                                          ; $5cdc: $03
	xor  h                                           ; $5cdd: $ac
	ld   h, l                                        ; $5cde: $65
	ld   [hl], h                                     ; $5cdf: $74
	sbc  [hl]                                        ; $5ce0: $9e
	dec  c                                           ; $5ce1: $0d
	inc  bc                                          ; $5ce2: $03
	ld   l, b                                        ; $5ce3: $68
	ld   a, c                                        ; $5ce4: $79
	sbc  [hl]                                        ; $5ce5: $9e
	ld   [bc], a                                     ; $5ce6: $02
	ld   a, [hl-]                                    ; $5ce7: $3a
	ld   a, c                                        ; $5ce8: $79
	ld   b, $5a                                      ; $5ce9: $06 $5a
	inc  bc                                          ; $5ceb: $03
	xor  h                                           ; $5cec: $ac
	ld   h, a                                        ; $5ced: $67
	sbc  c                                           ; $5cee: $99
	and  c                                           ; $5cef: $a1
	sub  d                                           ; $5cf0: $92
	ld   [hl], l                                     ; $5cf1: $75
	sbc  a                                           ; $5cf2: $9f
	dec  c                                           ; $5cf3: $0d
	nop                                              ; $5cf4: $00
	ld   a, [bc]                                     ; $5cf5: $0a
	ld   bc, $7889                                   ; $5cf6: $01 $89 $78
	sbc  [hl]                                        ; $5cf9: $9e
	inc  bc                                          ; $5cfa: $03
	ld   l, e                                        ; $5cfb: $6b
	ld   [bc], a                                     ; $5cfc: $02
	ld   a, [$02a0]                                  ; $5cfd: $fa $a0 $02
	sbc  l                                           ; $5d00: $9d
	ld   d, h                                        ; $5d01: $54
	ld   [hl], l                                     ; $5d02: $75
	sbc  a                                           ; $5d03: $9f
	dec  c                                           ; $5d04: $0d
	nop                                              ; $5d05: $00
	ld   a, [bc]                                     ; $5d06: $0a
	ld   bc, $688c                                   ; $5d07: $01 $8c $68
	sbc  [hl]                                        ; $5d0a: $9e
	ld   a, [bc]                                     ; $5d0b: $0a
	ld   [bc], a                                     ; $5d0c: $02
	inc  bc                                          ; $5d0d: $03
	ld   a, [bc]                                     ; $5d0e: $0a
	db   $dd                                         ; $5d0f: $dd
	ret  nz                                          ; $5d10: $c0

	push af                                          ; $5d11: $f5
	sbc  [hl]                                        ; $5d12: $9e
	xor  $d1                                         ; $5d13: $ee $d1
	ei                                               ; $5d15: $fb
	ld   a, [bc]                                     ; $5d16: $0a
	inc  bc                                          ; $5d17: $03
	sbc  a                                           ; $5d18: $9f
	dec  c                                           ; $5d19: $0d
	inc  bc                                          ; $5d1a: $03
	ld   l, b                                        ; $5d1b: $68
	ld   a, c                                        ; $5d1c: $79
	sbc  [hl]                                        ; $5d1d: $9e
	ld   a, [bc]                                     ; $5d1e: $0a
	ld   [bc], a                                     ; $5d1f: $02
	inc  bc                                          ; $5d20: $03
	ld   bc, $c0dd                                   ; $5d21: $01 $dd $c0
	push af                                          ; $5d24: $f5
	ld   a, [bc]                                     ; $5d25: $0a
	inc  bc                                          ; $5d26: $03
	sbc  a                                           ; $5d27: $9f
	dec  c                                           ; $5d28: $0d
	inc  bc                                          ; $5d29: $03
	ld   l, c                                        ; $5d2a: $69
	ld   [bc], a                                     ; $5d2b: $02
	xor  d                                           ; $5d2c: $aa
	ld   a, c                                        ; $5d2d: $79
	sbc  [hl]                                        ; $5d2e: $9e
	ld   a, [bc]                                     ; $5d2f: $0a
	ld   [bc], a                                     ; $5d30: $02
	ld   [bc], a                                     ; $5d31: $02
	ld   [bc], a                                     ; $5d32: $02
	db   $dd                                         ; $5d33: $dd
	ret  nz                                          ; $5d34: $c0

	push af                                          ; $5d35: $f5
	sbc  [hl]                                        ; $5d36: $9e
	xor  $d1                                         ; $5d37: $ee $d1
	ei                                               ; $5d39: $fb
	ld   a, [bc]                                     ; $5d3a: $0a
	inc  bc                                          ; $5d3b: $03
	sbc  a                                           ; $5d3c: $9f
	dec  c                                           ; $5d3d: $0d
	nop                                              ; $5d3e: $00
	ld   a, [bc]                                     ; $5d3f: $0a
	ld   bc, $7889                                   ; $5d40: $01 $89 $78
	sbc  [hl]                                        ; $5d43: $9e
	ld   d, d                                        ; $5d44: $52
	ld   e, l                                        ; $5d45: $5d
	ld   [hl], l                                     ; $5d46: $75
	sbc  a                                           ; $5d47: $9f
	dec  c                                           ; $5d48: $0d
	nop                                              ; $5d49: $00
	ld   a, [bc]                                     ; $5d4a: $0a
	add  hl, de                                      ; $5d4b: $19
	inc  bc                                          ; $5d4c: $03
	inc  bc                                          ; $5d4d: $03
	inc  bc                                          ; $5d4e: $03
	ld   a, [bc]                                     ; $5d4f: $0a
	db   $dd                                         ; $5d50: $dd
	ret  nz                                          ; $5d51: $c0

	push af                                          ; $5d52: $f5
	sbc  [hl]                                        ; $5d53: $9e
	xor  $d1                                         ; $5d54: $ee $d1
	ei                                               ; $5d56: $fb
	nop                                              ; $5d57: $00
	nop                                              ; $5d58: $00
	inc  bc                                          ; $5d59: $03
	ld   a, [bc]                                     ; $5d5a: $0a
	db   $dd                                         ; $5d5b: $dd
	ret  nz                                          ; $5d5c: $c0

	push af                                          ; $5d5d: $f5
	nop                                              ; $5d5e: $00
	ld   bc, $0103                                   ; $5d5f: $01 $03 $01
	db   $dd                                         ; $5d62: $dd
	ret  nz                                          ; $5d63: $c0

	push af                                          ; $5d64: $f5
	sbc  [hl]                                        ; $5d65: $9e
	xor  $d1                                         ; $5d66: $ee $d1
	ei                                               ; $5d68: $fb
	nop                                              ; $5d69: $00
	ld   [bc], a                                     ; $5d6a: $02
	rlca                                             ; $5d6b: $07
	cp   b                                           ; $5d6c: $b8
	rrca                                             ; $5d6d: $0f
	ld   [bc], a                                     ; $5d6e: $02
	inc  bc                                          ; $5d6f: $03
	ld   bc, $2000                                   ; $5d70: $01 $00 $20
	nop                                              ; $5d73: $00
	rlca                                             ; $5d74: $07
	call z, $020f                                    ; $5d75: $cc $0f $02
	inc  bc                                          ; $5d78: $03
	ld   bc, $2001                                   ; $5d79: $01 $01 $20
	nop                                              ; $5d7c: $00
	rlca                                             ; $5d7d: $07
	call z, $020f                                    ; $5d7e: $cc $0f $02
	inc  bc                                          ; $5d81: $03
	ld   bc, $2002                                   ; $5d82: $01 $02 $20
	nop                                              ; $5d85: $00
	ld   b, $03                                      ; $5d86: $06 $03
	db   $10                                         ; $5d88: $10
	inc  e                                           ; $5d89: $1c
	dec  b                                           ; $5d8a: $05
	ld   bc, $0101                                   ; $5d8b: $01 $01 $01
	sub  [hl]                                        ; $5d8e: $96
	ld   [hl], c                                     ; $5d8f: $71
	ld   h, l                                        ; $5d90: $65
	sub  c                                           ; $5d91: $91
	sbc  a                                           ; $5d92: $9f
	xor  c                                           ; $5d93: $a9
	xor  c                                           ; $5d94: $a9
	ld   [hl], l                                     ; $5d95: $75
	sbc  a                                           ; $5d96: $9f
	dec  c                                           ; $5d97: $0d
	nop                                              ; $5d98: $00
	ld   a, [bc]                                     ; $5d99: $0a
	ld   b, $46                                      ; $5d9a: $06 $46
	db   $10                                         ; $5d9c: $10
	inc  e                                           ; $5d9d: $1c
	dec  b                                           ; $5d9e: $05
	rlca                                             ; $5d9f: $07
	rlca                                             ; $5da0: $07
	ld   bc, $916f                                   ; $5da1: $01 $6f $91
	ld   d, h                                        ; $5da4: $54
	sbc  [hl]                                        ; $5da5: $9e
	ld   l, a                                        ; $5da6: $6f
	sub  c                                           ; $5da7: $91
	ld   d, h                                        ; $5da8: $54
	sbc  a                                           ; $5da9: $9f
	dec  c                                           ; $5daa: $0d
	adc  h                                           ; $5dab: $8c
	ld   l, a                                        ; $5dac: $6f
	ld   e, d                                        ; $5dad: $5a
	ld   d, [hl]                                     ; $5dae: $56
	ld   [hl], h                                     ; $5daf: $74
	sbc  c                                           ; $5db0: $99
	sub  d                                           ; $5db1: $92
	and  c                                           ; $5db2: $a1
	ld   e, c                                        ; $5db3: $59
	sbc  a                                           ; $5db4: $9f
	dec  c                                           ; $5db5: $0d
	nop                                              ; $5db6: $00
	dec  b                                           ; $5db7: $05
	ld   b, b                                        ; $5db8: $40
	rst  $38                                         ; $5db9: $ff
	inc  bc                                          ; $5dba: $03
	rst  $38                                         ; $5dbb: $ff
	ld   bc, $2801                                   ; $5dbc: $01 $01 $28
	nop                                              ; $5dbf: $00
	ld   bc, $5490                                   ; $5dc0: $01 $90 $54
	ld   [bc], a                                     ; $5dc3: $02
	jr   nz, jr_062_5dc8                             ; $5dc4: $20 $02

	sub  e                                           ; $5dc6: $93
	ld   a, l                                        ; $5dc7: $7d

jr_062_5dc8:
	ld   h, [hl]                                     ; $5dc8: $66
	adc  a                                           ; $5dc9: $8f
	ld   e, c                                        ; $5dca: $59
	sub  a                                           ; $5dcb: $97
	sub  d                                           ; $5dcc: $92
	sbc  a                                           ; $5dcd: $9f
	dec  c                                           ; $5dce: $0d
	nop                                              ; $5dcf: $00
	ld   a, [bc]                                     ; $5dd0: $0a
	ld   b, $36                                      ; $5dd1: $06 $36
	rrca                                             ; $5dd3: $0f
	inc  e                                           ; $5dd4: $1c
	dec  b                                           ; $5dd5: $05
	rlca                                             ; $5dd6: $07
	rlca                                             ; $5dd7: $07
	dec  e                                           ; $5dd8: $1d
	ld   b, b                                        ; $5dd9: $40
	dec  d                                           ; $5dda: $15
	inc  bc                                          ; $5ddb: $03
	dec  d                                           ; $5ddc: $15
	ld   bc, $2901                                   ; $5ddd: $01 $01 $29
	nop                                              ; $5de0: $00
	ld   bc, $b2dd                                   ; $5de1: $01 $dd $b2
	ei                                               ; $5de4: $fb
	ld   [hl], c                                     ; $5de5: $71
	halt                                             ; $5de6: $76
	ld   h, l                                        ; $5de7: $65
	ld   [hl], h                                     ; $5de8: $74
	and  c                                           ; $5de9: $a1
	halt                                             ; $5dea: $76
	sbc  [hl]                                        ; $5deb: $9e
	dec  c                                           ; $5dec: $0d
	ld   l, a                                        ; $5ded: $6f
	sub  c                                           ; $5dee: $91
	ld   [hl], c                                     ; $5def: $71
	ld   l, a                                        ; $5df0: $6f
	sub  c                                           ; $5df1: $91
	halt                                             ; $5df2: $76
	sub  d                                           ; $5df3: $92
	ld   [hl], c                                     ; $5df4: $71
	ld   [hl], h                                     ; $5df5: $74
	sub  d                                           ; $5df6: $92
	sbc  a                                           ; $5df7: $9f
	dec  c                                           ; $5df8: $0d
	nop                                              ; $5df9: $00
	dec  b                                           ; $5dfa: $05
	ld   b, b                                        ; $5dfb: $40
	rst  $38                                         ; $5dfc: $ff
	inc  bc                                          ; $5dfd: $03
	rst  $38                                         ; $5dfe: $ff
	ld   bc, $2801                                   ; $5dff: $01 $01 $28
	nop                                              ; $5e02: $00
	ld   bc, $5490                                   ; $5e03: $01 $90 $54
	ld   [bc], a                                     ; $5e06: $02
	jr   nz, jr_062_5e0b                             ; $5e07: $20 $02

	sub  e                                           ; $5e09: $93
	ld   a, l                                        ; $5e0a: $7d

jr_062_5e0b:
	ld   h, [hl]                                     ; $5e0b: $66
	adc  a                                           ; $5e0c: $8f
	ld   e, c                                        ; $5e0d: $59
	sub  a                                           ; $5e0e: $97
	sub  d                                           ; $5e0f: $92
	sbc  a                                           ; $5e10: $9f
	dec  c                                           ; $5e11: $0d
	nop                                              ; $5e12: $00
	ld   a, [bc]                                     ; $5e13: $0a
	ld   b, $36                                      ; $5e14: $06 $36
	rrca                                             ; $5e16: $0f
	add  hl, de                                      ; $5e17: $19
	inc  bc                                          ; $5e18: $03
	inc  bc                                          ; $5e19: $03
	inc  bc                                          ; $5e1a: $03
	ld   bc, $c0dd                                   ; $5e1b: $01 $dd $c0
	push af                                          ; $5e1e: $f5
	nop                                              ; $5e1f: $00
	nop                                              ; $5e20: $00
	inc  bc                                          ; $5e21: $03
	ld   bc, $c0dd                                   ; $5e22: $01 $dd $c0
	push af                                          ; $5e25: $f5
	sbc  [hl]                                        ; $5e26: $9e
	xor  $d1                                         ; $5e27: $ee $d1
	ei                                               ; $5e29: $fb
	nop                                              ; $5e2a: $00
	ld   bc, $0202                                   ; $5e2b: $01 $02 $02
	db   $dd                                         ; $5e2e: $dd
	ret  nz                                          ; $5e2f: $c0

	push af                                          ; $5e30: $f5
	sbc  [hl]                                        ; $5e31: $9e
	xor  $d1                                         ; $5e32: $ee $d1
	ei                                               ; $5e34: $fb
	nop                                              ; $5e35: $00
	ld   [bc], a                                     ; $5e36: $02
	rlca                                             ; $5e37: $07
	add  h                                           ; $5e38: $84
	db   $10                                         ; $5e39: $10
	ld   [bc], a                                     ; $5e3a: $02
	inc  bc                                          ; $5e3b: $03
	ld   bc, $2000                                   ; $5e3c: $01 $00 $20
	nop                                              ; $5e3f: $00
	rlca                                             ; $5e40: $07
	call z, $020f                                    ; $5e41: $cc $0f $02
	inc  bc                                          ; $5e44: $03
	ld   bc, $2001                                   ; $5e45: $01 $01 $20
	nop                                              ; $5e48: $00
	rlca                                             ; $5e49: $07
	call z, $020f                                    ; $5e4a: $cc $0f $02
	inc  bc                                          ; $5e4d: $03
	ld   bc, $2002                                   ; $5e4e: $01 $02 $20
	nop                                              ; $5e51: $00
	ld   b, $03                                      ; $5e52: $06 $03
	db   $10                                         ; $5e54: $10
	inc  e                                           ; $5e55: $1c
	dec  b                                           ; $5e56: $05
	ld   bc, $0101                                   ; $5e57: $01 $01 $01
	xor  e                                           ; $5e5a: $ab
	call nz, $fbb2                                   ; $5e5b: $c4 $b2 $fb
	sbc  [hl]                                        ; $5e5e: $9e
	xor  e                                           ; $5e5f: $ab
	call nz, $fbb2                                   ; $5e60: $c4 $b2 $fb
	sbc  a                                           ; $5e63: $9f
	dec  c                                           ; $5e64: $0d
	nop                                              ; $5e65: $00
	ld   a, [bc]                                     ; $5e66: $0a
	ld   b, $99                                      ; $5e67: $06 $99
	db   $10                                         ; $5e69: $10
	add  hl, de                                      ; $5e6a: $19
	inc  bc                                          ; $5e6b: $03
	inc  bc                                          ; $5e6c: $03
	ld   [bc], a                                     ; $5e6d: $02
	ld   [bc], a                                     ; $5e6e: $02
	db   $dd                                         ; $5e6f: $dd
	ret  nz                                          ; $5e70: $c0

	push af                                          ; $5e71: $f5
	sbc  [hl]                                        ; $5e72: $9e
	xor  $d1                                         ; $5e73: $ee $d1
	ei                                               ; $5e75: $fb
	nop                                              ; $5e76: $00
	nop                                              ; $5e77: $00
	ld   [bc], a                                     ; $5e78: $02
	ld   [bc], a                                     ; $5e79: $02
	db   $dd                                         ; $5e7a: $dd
	ret  nz                                          ; $5e7b: $c0

	push af                                          ; $5e7c: $f5
	nop                                              ; $5e7d: $00
	ld   bc, $0103                                   ; $5e7e: $01 $03 $01
	db   $dd                                         ; $5e81: $dd
	ret  nz                                          ; $5e82: $c0

	push af                                          ; $5e83: $f5
	sbc  [hl]                                        ; $5e84: $9e
	xor  $d1                                         ; $5e85: $ee $d1
	ei                                               ; $5e87: $fb
	nop                                              ; $5e88: $00
	ld   [bc], a                                     ; $5e89: $02
	rlca                                             ; $5e8a: $07
	rst  $10                                         ; $5e8b: $d7
	db   $10                                         ; $5e8c: $10
	ld   [bc], a                                     ; $5e8d: $02
	inc  bc                                          ; $5e8e: $03
	ld   bc, $2000                                   ; $5e8f: $01 $00 $20
	nop                                              ; $5e92: $00
	rlca                                             ; $5e93: $07
	call z, $020f                                    ; $5e94: $cc $0f $02
	inc  bc                                          ; $5e97: $03
	ld   bc, $2001                                   ; $5e98: $01 $01 $20
	nop                                              ; $5e9b: $00
	rlca                                             ; $5e9c: $07
	call z, $020f                                    ; $5e9d: $cc $0f $02
	inc  bc                                          ; $5ea0: $03
	ld   bc, $2002                                   ; $5ea1: $01 $02 $20
	nop                                              ; $5ea4: $00
	ld   b, $03                                      ; $5ea5: $06 $03
	db   $10                                         ; $5ea7: $10
	inc  e                                           ; $5ea8: $1c
	dec  b                                           ; $5ea9: $05
	ld   bc, $0101                                   ; $5eaa: $01 $01 $01
	sub  [hl]                                        ; $5ead: $96
	ld   [hl], c                                     ; $5eae: $71
	ld   h, l                                        ; $5eaf: $65
	sub  c                                           ; $5eb0: $91
	sbc  a                                           ; $5eb1: $9f
	sub  b                                           ; $5eb2: $90
	ld   d, h                                        ; $5eb3: $54
	ld   l, a                                        ; $5eb4: $6f
	sub  l                                           ; $5eb5: $95
	ld   d, d                                        ; $5eb6: $52
	sub  d                                           ; $5eb7: $92
	ld   a, [$020d]                                  ; $5eb8: $fa $0d $02
	and  l                                           ; $5ebb: $a5
	inc  b                                           ; $5ebc: $04
	add  hl, hl                                      ; $5ebd: $29
	ld   a, l                                        ; $5ebe: $7d
	ld   [bc], a                                     ; $5ebf: $02
	and  l                                           ; $5ec0: $a5
	ld   a, h                                        ; $5ec1: $7c
	ld   [bc], a                                     ; $5ec2: $02
	ld   a, [hl-]                                    ; $5ec3: $3a
	ld   [bc], a                                     ; $5ec4: $02
	ld   a, [$fa92]                                  ; $5ec5: $fa $92 $fa
	dec  c                                           ; $5ec8: $0d
	adc  c                                           ; $5ec9: $89
	ld   a, b                                        ; $5eca: $78
	sbc  [hl]                                        ; $5ecb: $9e
	ld   d, d                                        ; $5ecc: $52
	ld   e, l                                        ; $5ecd: $5d
	ld   [hl], l                                     ; $5ece: $75
	sbc  a                                           ; $5ecf: $9f
	dec  c                                           ; $5ed0: $0d
	nop                                              ; $5ed1: $00
	ld   a, [bc]                                     ; $5ed2: $0a
	add  hl, de                                      ; $5ed3: $19
	inc  bc                                          ; $5ed4: $03
	inc  bc                                          ; $5ed5: $03
	ld   [bc], a                                     ; $5ed6: $02
	ld   [bc], a                                     ; $5ed7: $02
	db   $dd                                         ; $5ed8: $dd
	ret  nz                                          ; $5ed9: $c0

	push af                                          ; $5eda: $f5
	sbc  [hl]                                        ; $5edb: $9e
	xor  $d1                                         ; $5edc: $ee $d1
	ei                                               ; $5ede: $fb
	nop                                              ; $5edf: $00
	nop                                              ; $5ee0: $00
	ld   [bc], a                                     ; $5ee1: $02
	ld   [bc], a                                     ; $5ee2: $02
	db   $dd                                         ; $5ee3: $dd
	ret  nz                                          ; $5ee4: $c0

	push af                                          ; $5ee5: $f5
	nop                                              ; $5ee6: $00
	ld   bc, $0a03                                   ; $5ee7: $01 $03 $0a
	db   $dd                                         ; $5eea: $dd
	ret  nz                                          ; $5eeb: $c0

	push af                                          ; $5eec: $f5
	sbc  [hl]                                        ; $5eed: $9e
	xor  $d1                                         ; $5eee: $ee $d1
	ei                                               ; $5ef0: $fb
	nop                                              ; $5ef1: $00
	ld   [bc], a                                     ; $5ef2: $02
	rlca                                             ; $5ef3: $07
	ld   b, b                                        ; $5ef4: $40
	ld   de, $0302                                   ; $5ef5: $11 $02 $03
	ld   bc, $2000                                   ; $5ef8: $01 $00 $20
	nop                                              ; $5efb: $00
	rlca                                             ; $5efc: $07
	ld   d, [hl]                                     ; $5efd: $56
	ld   de, $0302                                   ; $5efe: $11 $02 $03
	ld   bc, $2001                                   ; $5f01: $01 $01 $20
	nop                                              ; $5f04: $00
	rlca                                             ; $5f05: $07
	ld   d, [hl]                                     ; $5f06: $56
	ld   de, $0302                                   ; $5f07: $11 $02 $03
	ld   bc, $2002                                   ; $5f0a: $01 $02 $20
	nop                                              ; $5f0d: $00
	ld   b, $ef                                      ; $5f0e: $06 $ef
	ld   de, $051c                                   ; $5f10: $11 $1c $05
	ld   bc, $0101                                   ; $5f13: $01 $01 $01
	sub  [hl]                                        ; $5f16: $96
	ld   h, l                                        ; $5f17: $65
	sbc  [hl]                                        ; $5f18: $9e
	ld   l, e                                        ; $5f19: $6b
	ld   a, h                                        ; $5f1a: $7c
	ld   l, a                                        ; $5f1b: $6f
	sub  l                                           ; $5f1c: $95
	ld   d, h                                        ; $5f1d: $54
	ld   h, l                                        ; $5f1e: $65
	sub  d                                           ; $5f1f: $92
	sbc  a                                           ; $5f20: $9f
	dec  c                                           ; $5f21: $0d
	nop                                              ; $5f22: $00
	ld   a, [bc]                                     ; $5f23: $0a
	ld   b, $33                                      ; $5f24: $06 $33
	ld   [de], a                                     ; $5f26: $12
	inc  e                                           ; $5f27: $1c
	dec  b                                           ; $5f28: $05
	rlca                                             ; $5f29: $07
	rlca                                             ; $5f2a: $07
	ld   bc, $aca3                                   ; $5f2b: $01 $a3 $ac
	push af                                          ; $5f2e: $f5
	ld   e, d                                        ; $5f2f: $5a
	ld   a, b                                        ; $5f30: $78
	db   $fc                                         ; $5f31: $fc
	sbc  a                                           ; $5f32: $9f
	dec  c                                           ; $5f33: $0d
	nop                                              ; $5f34: $00
	dec  b                                           ; $5f35: $05
	ld   b, b                                        ; $5f36: $40
	rst  $38                                         ; $5f37: $ff
	inc  bc                                          ; $5f38: $03
	rst  $38                                         ; $5f39: $ff
	ld   bc, $2801                                   ; $5f3a: $01 $01 $28
	nop                                              ; $5f3d: $00
	ld   bc, $6f8c                                   ; $5f3e: $01 $8c $6f
	ld   e, d                                        ; $5f41: $5a
	ld   d, [hl]                                     ; $5f42: $56
	ld   [hl], h                                     ; $5f43: $74
	sbc  c                                           ; $5f44: $99
	sub  d                                           ; $5f45: $92
	and  c                                           ; $5f46: $a1
	sbc  a                                           ; $5f47: $9f
	dec  c                                           ; $5f48: $0d
	sub  b                                           ; $5f49: $90
	ld   d, h                                        ; $5f4a: $54
	ld   [bc], a                                     ; $5f4b: $02
	jr   nz, jr_062_5f50                             ; $5f4c: $20 $02

	sub  e                                           ; $5f4e: $93
	ld   a, l                                        ; $5f4f: $7d

jr_062_5f50:
	ld   h, [hl]                                     ; $5f50: $66
	adc  a                                           ; $5f51: $8f
	ld   e, c                                        ; $5f52: $59
	sub  a                                           ; $5f53: $97
	sub  d                                           ; $5f54: $92
	sbc  a                                           ; $5f55: $9f
	dec  c                                           ; $5f56: $0d
	nop                                              ; $5f57: $00
	ld   a, [bc]                                     ; $5f58: $0a
	ld   bc, $5656                                   ; $5f59: $01 $56 $56
	ld   e, c                                        ; $5f5c: $59
	sbc  [hl]                                        ; $5f5d: $9e
	ld   [bc], a                                     ; $5f5e: $02
	and  l                                           ; $5f5f: $a5
	inc  b                                           ; $5f60: $04
	add  hl, hl                                      ; $5f61: $29
	ld   a, l                                        ; $5f62: $7d
	ld   h, e                                        ; $5f63: $63
	ld   [hl], c                                     ; $5f64: $71
	ld   e, e                                        ; $5f65: $5b
	halt                                             ; $5f66: $76
	ld   [bc], a                                     ; $5f67: $02
	ld   a, [hl-]                                    ; $5f68: $3a
	ld   a, h                                        ; $5f69: $7c
	dec  c                                           ; $5f6a: $0d
	inc  bc                                          ; $5f6b: $03
	ld   l, e                                        ; $5f6c: $6b
	ld   [bc], a                                     ; $5f6d: $02
	ld   a, [$7879]                                  ; $5f6e: $fa $79 $78
	and  c                                           ; $5f71: $a1
	ld   a, e                                        ; $5f72: $7b
	and  c                                           ; $5f73: $a1
	ld   [hl], l                                     ; $5f74: $75
	sbc  a                                           ; $5f75: $9f
	dec  c                                           ; $5f76: $0d
	ld   h, l                                        ; $5f77: $65
	ld   [hl], c                                     ; $5f78: $71
	ld   e, c                                        ; $5f79: $59
	sbc  b                                           ; $5f7a: $98
	ld   l, l                                        ; $5f7b: $6d
	ld   a, h                                        ; $5f7c: $7c
	adc  [hl]                                        ; $5f7d: $8e
	ld   [hl], l                                     ; $5f7e: $75
	sbc  a                                           ; $5f7f: $9f
	dec  c                                           ; $5f80: $0d
	nop                                              ; $5f81: $00
	ld   a, [bc]                                     ; $5f82: $0a
	ld   bc, $688c                                   ; $5f83: $01 $8c $68
	sbc  [hl]                                        ; $5f86: $9e
	ld   a, [bc]                                     ; $5f87: $0a
	ld   [bc], a                                     ; $5f88: $02
	ld   [bc], a                                     ; $5f89: $02
	ld   [bc], a                                     ; $5f8a: $02
	db   $dd                                         ; $5f8b: $dd
	ret  nz                                          ; $5f8c: $c0

	push af                                          ; $5f8d: $f5
	sbc  [hl]                                        ; $5f8e: $9e
	xor  $d1                                         ; $5f8f: $ee $d1
	ei                                               ; $5f91: $fb
	ld   a, [bc]                                     ; $5f92: $0a
	inc  bc                                          ; $5f93: $03
	sbc  a                                           ; $5f94: $9f
	dec  c                                           ; $5f95: $0d
	inc  bc                                          ; $5f96: $03
	ld   l, b                                        ; $5f97: $68
	ld   a, c                                        ; $5f98: $79
	sbc  [hl]                                        ; $5f99: $9e
	ld   a, [bc]                                     ; $5f9a: $0a
	ld   [bc], a                                     ; $5f9b: $02
	inc  bc                                          ; $5f9c: $03
	ld   bc, $c0dd                                   ; $5f9d: $01 $dd $c0
	push af                                          ; $5fa0: $f5
	ld   a, [bc]                                     ; $5fa1: $0a
	inc  bc                                          ; $5fa2: $03
	sbc  a                                           ; $5fa3: $9f
	dec  c                                           ; $5fa4: $0d
	inc  bc                                          ; $5fa5: $03
	ld   l, c                                        ; $5fa6: $69
	ld   [bc], a                                     ; $5fa7: $02
	xor  d                                           ; $5fa8: $aa
	ld   a, c                                        ; $5fa9: $79
	sbc  [hl]                                        ; $5faa: $9e
	ld   a, [bc]                                     ; $5fab: $0a
	ld   [bc], a                                     ; $5fac: $02
	inc  bc                                          ; $5fad: $03
	ld   a, [bc]                                     ; $5fae: $0a
	db   $dd                                         ; $5faf: $dd
	ret  nz                                          ; $5fb0: $c0

	push af                                          ; $5fb1: $f5
	sbc  [hl]                                        ; $5fb2: $9e
	xor  $d1                                         ; $5fb3: $ee $d1
	ei                                               ; $5fb5: $fb
	ld   a, [bc]                                     ; $5fb6: $0a
	inc  bc                                          ; $5fb7: $03
	sub  d                                           ; $5fb8: $92
	sbc  a                                           ; $5fb9: $9f
	dec  c                                           ; $5fba: $0d
	nop                                              ; $5fbb: $00
	ld   a, [bc]                                     ; $5fbc: $0a
	ld   b, $02                                      ; $5fbd: $06 $02
	ld   de, $051c                                   ; $5fbf: $11 $1c $05
	rlca                                             ; $5fc2: $07
	rlca                                             ; $5fc3: $07
	dec  e                                           ; $5fc4: $1d
	ld   b, b                                        ; $5fc5: $40
	dec  d                                           ; $5fc6: $15
	inc  bc                                          ; $5fc7: $03
	dec  d                                           ; $5fc8: $15
	ld   bc, $2901                                   ; $5fc9: $01 $01 $29
	nop                                              ; $5fcc: $00
	ld   bc, $9789                                   ; $5fcd: $01 $89 $97
	adc  c                                           ; $5fd0: $89
	sub  a                                           ; $5fd1: $97
	sbc  [hl]                                        ; $5fd2: $9e
	db   $dd                                         ; $5fd3: $dd
	ei                                               ; $5fd4: $fb
	ld   [hl], c                                     ; $5fd5: $71
	halt                                             ; $5fd6: $76
	ld   l, c                                        ; $5fd7: $69
	and  c                                           ; $5fd8: $a1
	halt                                             ; $5fd9: $76
	dec  c                                           ; $5fda: $0d
	nop                                              ; $5fdb: $00
	dec  b                                           ; $5fdc: $05
	ld   b, b                                        ; $5fdd: $40
	rst  $38                                         ; $5fde: $ff
	inc  bc                                          ; $5fdf: $03
	rst  $38                                         ; $5fe0: $ff
	ld   bc, $2801                                   ; $5fe1: $01 $01 $28
	nop                                              ; $5fe4: $00
	ld   bc, $916f                                   ; $5fe5: $01 $6f $91
	ld   [hl], c                                     ; $5fe8: $71
	ld   l, a                                        ; $5fe9: $6f
	sub  c                                           ; $5fea: $91
	halt                                             ; $5feb: $76
	sub  d                                           ; $5fec: $92
	sbc  c                                           ; $5fed: $99
	sbc  a                                           ; $5fee: $9f
	dec  c                                           ; $5fef: $0d
	sub  b                                           ; $5ff0: $90
	ld   d, h                                        ; $5ff1: $54
	ld   [bc], a                                     ; $5ff2: $02
	jr   nz, jr_062_5ff7                             ; $5ff3: $20 $02

	sub  e                                           ; $5ff5: $93
	ld   a, l                                        ; $5ff6: $7d

jr_062_5ff7:
	ld   h, [hl]                                     ; $5ff7: $66
	adc  a                                           ; $5ff8: $8f
	ld   e, c                                        ; $5ff9: $59
	sub  a                                           ; $5ffa: $97
	sub  d                                           ; $5ffb: $92
	ld   [hl], l                                     ; $5ffc: $75
	sbc  a                                           ; $5ffd: $9f
	dec  c                                           ; $5ffe: $0d
	nop                                              ; $5fff: $00
	ld   a, [bc]                                     ; $6000: $0a
	ld   b, $88                                      ; $6001: $06 $88
	ld   de, $0319                                   ; $6003: $11 $19 $03
	inc  bc                                          ; $6006: $03
	inc  bc                                          ; $6007: $03
	ld   bc, $c0dd                                   ; $6008: $01 $dd $c0
	push af                                          ; $600b: $f5
	nop                                              ; $600c: $00
	nop                                              ; $600d: $00
	inc  bc                                          ; $600e: $03
	ld   bc, $c0dd                                   ; $600f: $01 $dd $c0
	push af                                          ; $6012: $f5
	sbc  [hl]                                        ; $6013: $9e
	xor  $d1                                         ; $6014: $ee $d1
	ei                                               ; $6016: $fb
	nop                                              ; $6017: $00
	ld   bc, $0202                                   ; $6018: $01 $02 $02
	db   $dd                                         ; $601b: $dd
	ret  nz                                          ; $601c: $c0

	push af                                          ; $601d: $f5
	nop                                              ; $601e: $00
	ld   [bc], a                                     ; $601f: $02
	rlca                                             ; $6020: $07
	ld   l, l                                        ; $6021: $6d
	ld   [de], a                                     ; $6022: $12
	ld   [bc], a                                     ; $6023: $02
	inc  bc                                          ; $6024: $03
	ld   bc, $2000                                   ; $6025: $01 $00 $20
	nop                                              ; $6028: $00
	rlca                                             ; $6029: $07
	ld   d, [hl]                                     ; $602a: $56
	ld   de, $0302                                   ; $602b: $11 $02 $03
	ld   bc, $2001                                   ; $602e: $01 $01 $20
	nop                                              ; $6031: $00
	rlca                                             ; $6032: $07
	ld   d, [hl]                                     ; $6033: $56
	ld   de, $0302                                   ; $6034: $11 $02 $03
	ld   bc, $2002                                   ; $6037: $01 $02 $20
	nop                                              ; $603a: $00
	ld   b, $ef                                      ; $603b: $06 $ef
	ld   de, $051c                                   ; $603d: $11 $1c $05
	ld   bc, $0101                                   ; $6040: $01 $01 $01
	ld   d, b                                        ; $6043: $50
	halt                                             ; $6044: $76
	ld   [bc], a                                     ; $6045: $02
	jr   nz, jr_062_604a                             ; $6046: $20 $02

	sub  e                                           ; $6048: $93
	sub  d                                           ; $6049: $92

jr_062_604a:
	sbc  [hl]                                        ; $604a: $9e
	ld   e, d                                        ; $604b: $5a
	and  c                                           ; $604c: $a1
	ld   a, [hl]                                     ; $604d: $7e
	sbc  d                                           ; $604e: $9a
	ld   a, [$000d]                                  ; $604f: $fa $0d $00
	ld   a, [bc]                                     ; $6052: $0a
	ld   b, $85                                      ; $6053: $06 $85
	ld   [de], a                                     ; $6055: $12
	add  hl, de                                      ; $6056: $19
	inc  bc                                          ; $6057: $03
	inc  bc                                          ; $6058: $03
	inc  bc                                          ; $6059: $03
	ld   a, [bc]                                     ; $605a: $0a
	db   $dd                                         ; $605b: $dd
	ret  nz                                          ; $605c: $c0

	push af                                          ; $605d: $f5
	sbc  [hl]                                        ; $605e: $9e
	xor  $d1                                         ; $605f: $ee $d1
	ei                                               ; $6061: $fb
	nop                                              ; $6062: $00
	nop                                              ; $6063: $00
	inc  bc                                          ; $6064: $03
	ld   a, [bc]                                     ; $6065: $0a
	db   $dd                                         ; $6066: $dd
	ret  nz                                          ; $6067: $c0

	push af                                          ; $6068: $f5
	nop                                              ; $6069: $00
	ld   bc, $0202                                   ; $606a: $01 $02 $02
	db   $dd                                         ; $606d: $dd
	ret  nz                                          ; $606e: $c0

	push af                                          ; $606f: $f5
	sbc  [hl]                                        ; $6070: $9e
	xor  $d1                                         ; $6071: $ee $d1
	ei                                               ; $6073: $fb
	nop                                              ; $6074: $00
	ld   [bc], a                                     ; $6075: $02
	rlca                                             ; $6076: $07
	jp   $0212                                       ; $6077: $c3 $12 $02


	inc  bc                                          ; $607a: $03
	ld   bc, $2000                                   ; $607b: $01 $00 $20
	nop                                              ; $607e: $00
	rlca                                             ; $607f: $07
	ld   d, [hl]                                     ; $6080: $56
	ld   de, $0302                                   ; $6081: $11 $02 $03
	ld   bc, $2001                                   ; $6084: $01 $01 $20
	nop                                              ; $6087: $00
	rlca                                             ; $6088: $07
	ld   d, [hl]                                     ; $6089: $56
	ld   de, $0302                                   ; $608a: $11 $02 $03
	ld   bc, $2002                                   ; $608d: $01 $02 $20
	nop                                              ; $6090: $00
	ld   b, $ef                                      ; $6091: $06 $ef
	ld   de, $f607                                   ; $6093: $11 $07 $f6
	ld   [de], a                                     ; $6096: $12
	inc  bc                                          ; $6097: $03
	rst  $38                                         ; $6098: $ff
	ld   bc, $2000                                   ; $6099: $01 $00 $20
	nop                                              ; $609c: $00
	inc  e                                           ; $609d: $1c
	dec  b                                           ; $609e: $05
	nop                                              ; $609f: $00
	nop                                              ; $60a0: $00
	dec  e                                           ; $60a1: $1d
	ld   b, b                                        ; $60a2: $40
	dec  d                                           ; $60a3: $15
	inc  bc                                          ; $60a4: $03
	dec  d                                           ; $60a5: $15
	ld   bc, $2801                                   ; $60a6: $01 $01 $28
	nop                                              ; $60a9: $00
	ld   bc, $7196                                   ; $60aa: $01 $96 $71
	ld   h, l                                        ; $60ad: $65
	sub  c                                           ; $60ae: $91
	ld   a, [GetRandomNumInPreSpecifiedRange]                                  ; $60af: $fa $10 $0d
	ld   d, d                                        ; $60b2: $52
	ld   e, a                                        ; $60b3: $5f
	ld   l, l                                        ; $60b4: $6d
	ld   a, [$a90d]                                  ; $60b5: $fa $0d $a9
	push af                                          ; $60b8: $f5
	cp   c                                           ; $60b9: $b9
	push af                                          ; $60ba: $f5
	dec  b                                           ; $60bb: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $60bc: $cf
	inc  b                                           ; $60bd: $04
	dec  de                                          ; $60be: $1b
	sub  d                                           ; $60bf: $92
	ld   a, [$000d]                                  ; $60c0: $fa $0d $00
	ld   a, [bc]                                     ; $60c3: $0a
	ld   b, $20                                      ; $60c4: $06 $20
	inc  de                                          ; $60c6: $13
	inc  e                                           ; $60c7: $1c
	dec  b                                           ; $60c8: $05
	ld   bc, $1d01                                   ; $60c9: $01 $01 $1d
	ld   b, b                                        ; $60cc: $40
	dec  d                                           ; $60cd: $15
	inc  bc                                          ; $60ce: $03
	dec  d                                           ; $60cf: $15
	ld   bc, $2803                                   ; $60d0: $01 $03 $28
	nop                                              ; $60d3: $00
	ld   bc, $7196                                   ; $60d4: $01 $96 $71
	ld   h, l                                        ; $60d7: $65
	sub  c                                           ; $60d8: $91
	ld   a, [GetRandomNumInPreSpecifiedRange]                                  ; $60d9: $fa $10 $0d
	ld   d, d                                        ; $60dc: $52
	ld   e, a                                        ; $60dd: $5f
	ld   l, l                                        ; $60de: $6d
	ld   a, [$a90d]                                  ; $60df: $fa $0d $a9
	push af                                          ; $60e2: $f5
	cp   c                                           ; $60e3: $b9
	push af                                          ; $60e4: $f5
	dec  b                                           ; $60e5: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $60e6: $cf
	inc  b                                           ; $60e7: $04
	dec  de                                          ; $60e8: $1b
	sub  d                                           ; $60e9: $92
	ld   a, [$000d]                                  ; $60ea: $fa $0d $00
	ld   a, [bc]                                     ; $60ed: $0a
	ld   b, $20                                      ; $60ee: $06 $20
	inc  de                                          ; $60f0: $13
	inc  d                                           ; $60f1: $14
	rla                                              ; $60f2: $17
	ld   bc, $040c                                   ; $60f3: $01 $0c $04
	inc  e                                           ; $60f6: $1c
	dec  b                                           ; $60f7: $05
	inc  bc                                          ; $60f8: $03
	inc  bc                                          ; $60f9: $03
	ld   bc, $7150                                   ; $60fa: $01 $50 $71
	ld   a, [$0dfa]                                  ; $60fd: $fa $fa $0d
	nop                                              ; $6100: $00
	ld   a, [bc]                                     ; $6101: $0a
	dec  c                                           ; $6102: $0d
	nop                                              ; $6103: $00
	nop                                              ; $6104: $00
	rrca                                             ; $6105: $0f
	nop                                              ; $6106: $00
	ld   bc, $080c                                   ; $6107: $01 $0c $08
	ld   sp, $2040                                   ; $610a: $31 $40 $20
	inc  bc                                          ; $610d: $03
	jr   nz, jr_062_6111                             ; $610e: $20 $01

	inc  d                                           ; $6110: $14

jr_062_6111:
	add  hl, hl                                      ; $6111: $29
	nop                                              ; $6112: $00
	inc  c                                           ; $6113: $0c
	dec  bc                                          ; $6114: $0b
	inc  e                                           ; $6115: $1c
	dec  b                                           ; $6116: $05
	jr   nz, jr_062_6121                             ; $6117: $20 $08

	ld   bc, $ffff                                   ; $6119: $01 $ff $ff
	rst  $38                                         ; $611c: $ff
	rst  $38                                         ; $611d: $ff
	rst  $38                                         ; $611e: $ff
	rst  $38                                         ; $611f: $ff
	rst  $38                                         ; $6120: $ff

jr_062_6121:
	rst  $38                                         ; $6121: $ff
	dec  c                                           ; $6122: $0d
	ret  nc                                          ; $6123: $d0

	ret  nc                                          ; $6124: $d0

	ret  nc                                          ; $6125: $d0

	rst  $38                                         ; $6126: $ff
	rst  $38                                         ; $6127: $ff
	dec  c                                           ; $6128: $0d
	inc  bc                                          ; $6129: $03
	add  e                                           ; $612a: $83
	inc  b                                           ; $612b: $04
	sbc  b                                           ; $612c: $98
	sub  d                                           ; $612d: $92
	rst  $38                                         ; $612e: $ff
	rst  $38                                         ; $612f: $ff
	dec  c                                           ; $6130: $0d
	nop                                              ; $6131: $00
	ld   a, [bc]                                     ; $6132: $0a
	ld   bc, $7192                                   ; $6133: $01 $92 $71
	ld   a, a                                        ; $6136: $7f
	sbc  b                                           ; $6137: $98
	sbc  [hl]                                        ; $6138: $9e
	ld   b, $59                                      ; $6139: $06 $59
	ld   l, c                                        ; $613b: $69
	inc  bc                                          ; $613c: $03
	ld   h, d                                        ; $613d: $62
	adc  a                                           ; $613e: $8f
	ld   a, h                                        ; $613f: $7c
	inc  b                                           ; $6140: $04
	sub  l                                           ; $6141: $95
	inc  b                                           ; $6142: $04
	ld   h, c                                        ; $6143: $61
	dec  c                                           ; $6144: $0d
	ld   h, [hl]                                     ; $6145: $66
	sub  c                                           ; $6146: $91
	sbc  [hl]                                        ; $6147: $9e
	and  e                                           ; $6148: $a3
	xor  h                                           ; $6149: $ac
	push af                                          ; $614a: $f5
	ld   a, e                                        ; $614b: $7b
	and  c                                           ; $614c: $a1
	ld   a, b                                        ; $614d: $78
	rst  $38                                         ; $614e: $ff
	rst  $38                                         ; $614f: $ff
	dec  c                                           ; $6150: $0d
	nop                                              ; $6151: $00
	ld   a, [bc]                                     ; $6152: $0a
	dec  e                                           ; $6153: $1d
	ld   b, b                                        ; $6154: $40
	dec  d                                           ; $6155: $15
	inc  bc                                          ; $6156: $03
	dec  d                                           ; $6157: $15
	ld   bc, $2803                                   ; $6158: $01 $03 $28
	nop                                              ; $615b: $00
	ld   bc, $9e50                                   ; $615c: $01 $50 $9e
	ld   [$7d00], sp                                 ; $615f: $08 $00 $7d
	and  c                                           ; $6162: $a1
	sbc  a                                           ; $6163: $9f
	dec  c                                           ; $6164: $0d
	inc  bc                                          ; $6165: $03
	ld   l, e                                        ; $6166: $6b
	inc  b                                           ; $6167: $04
	ld   [de], a                                     ; $6168: $12
	ld   [hl], c                                     ; $6169: $71
	ld   [hl], h                                     ; $616a: $74
	sub  b                                           ; $616b: $90
	sbc  e                                           ; $616c: $9b
	ld   [hl], h                                     ; $616d: $74
	ld   e, b                                        ; $616e: $58
	ld   e, b                                        ; $616f: $58
	ld   e, e                                        ; $6170: $5b
	ld   a, c                                        ; $6171: $79
	ld   a, b                                        ; $6172: $78
	sbc  a                                           ; $6173: $9f
	dec  c                                           ; $6174: $0d
	nop                                              ; $6175: $00
	ld   a, [bc]                                     ; $6176: $0a
	dec  c                                           ; $6177: $0d
	nop                                              ; $6178: $00
	nop                                              ; $6179: $00
	rrca                                             ; $617a: $0f
	nop                                              ; $617b: $00
	ld   bc, $051c                                   ; $617c: $01 $1c $05
	nop                                              ; $617f: $00
	nop                                              ; $6180: $00
	ld   bc, $7196                                   ; $6181: $01 $96 $71
	rst  $38                                         ; $6184: $ff
	rst  $38                                         ; $6185: $ff
	halt                                             ; $6186: $76
	ld   a, [$780d]                                  ; $6187: $fa $0d $78
	ld   a, c                                        ; $618a: $79
	sbc  [hl]                                        ; $618b: $9e
	and  a                                           ; $618c: $a7
	jp   nz, $047d                                   ; $618d: $c2 $7d $04

	ld   c, $03                                      ; $6190: $0e $03
	sbc  l                                           ; $6192: $9d
	inc  b                                           ; $6193: $04
	and  [hl]                                        ; $6194: $a6
	sbc  a                                           ; $6195: $9f
	dec  c                                           ; $6196: $0d
	ld   [bc], a                                     ; $6197: $02
	and  l                                           ; $6198: $a5
	ld   [bc], a                                     ; $6199: $02
	sub  e                                           ; $619a: $93
	ld   a, l                                        ; $619b: $7d
	sbc  [hl]                                        ; $619c: $9e
	inc  bc                                          ; $619d: $03
	add  e                                           ; $619e: $83
	inc  b                                           ; $619f: $04
	sbc  b                                           ; $61a0: $98
	ld   h, l                                        ; $61a1: $65
	ld   l, l                                        ; $61a2: $6d
	ld   e, a                                        ; $61a3: $5f
	ld   [hl], a                                     ; $61a4: $77
	rst  $38                                         ; $61a5: $ff
	rst  $38                                         ; $61a6: $ff
	dec  c                                           ; $61a7: $0d
	nop                                              ; $61a8: $00
	ld   a, [bc]                                     ; $61a9: $0a
	ld   bc, $9a61                                   ; $61aa: $01 $61 $9a
	ld   [hl], l                                     ; $61ad: $75
	sbc  [hl]                                        ; $61ae: $9e
	ld   a, b                                        ; $61af: $78
	and  c                                           ; $61b0: $a1
	ld   e, c                                        ; $61b1: $59
	ld   [hl], d                                     ; $61b2: $72
	ld   e, c                                        ; $61b3: $59
	adc  a                                           ; $61b4: $8f
	ld   l, l                                        ; $61b5: $6d
	dec  c                                           ; $61b6: $0d
	ld   [bc], a                                     ; $61b7: $02
	and  c                                           ; $61b8: $a1
	ld   e, d                                        ; $61b9: $5a
	ld   h, a                                        ; $61ba: $67
	sbc  c                                           ; $61bb: $99
	and  c                                           ; $61bc: $a1
	sub  d                                           ; $61bd: $92
	sbc  a                                           ; $61be: $9f
	dec  c                                           ; $61bf: $0d
	ld   l, [hl]                                     ; $61c0: $6e
	ld   e, c                                        ; $61c1: $59
	sub  a                                           ; $61c2: $97
	rst  $38                                         ; $61c3: $ff
	rst  $38                                         ; $61c4: $ff
	dec  c                                           ; $61c5: $0d
	nop                                              ; $61c6: $00
	ld   a, [bc]                                     ; $61c7: $0a
	dec  c                                           ; $61c8: $0d
	nop                                              ; $61c9: $00
	nop                                              ; $61ca: $00
	rrca                                             ; $61cb: $0f
	nop                                              ; $61cc: $00
	ld   bc, $2a16                                   ; $61cd: $01 $16 $2a
	rrca                                             ; $61d0: $0f
	dec  b                                           ; $61d1: $05
	ld   bc, $0201                                   ; $61d2: $01 $01 $02
	and  l                                           ; $61d5: $a5
	inc  b                                           ; $61d6: $04
	xor  d                                           ; $61d7: $aa
	sbc  [hl]                                        ; $61d8: $9e
	ld   [$7d00], sp                                 ; $61d9: $08 $00 $7d
	and  c                                           ; $61dc: $a1
	ld   e, d                                        ; $61dd: $5a
	dec  c                                           ; $61de: $0d
	inc  bc                                          ; $61df: $03
	ld   l, e                                        ; $61e0: $6b
	inc  b                                           ; $61e1: $04
	ld   [de], a                                     ; $61e2: $12
	ld   [hl], c                                     ; $61e3: $71
	ld   [hl], h                                     ; $61e4: $74
	ld   e, l                                        ; $61e5: $5d
	sbc  d                                           ; $61e6: $9a
	ld   l, l                                        ; $61e7: $6d
	ld   h, c                                        ; $61e8: $61
	halt                                             ; $61e9: $76
	ld   a, l                                        ; $61ea: $7d
	dec  c                                           ; $61eb: $0d
	ldh  [c], a                                      ; $61ec: $e2
	pop  bc                                          ; $61ed: $c1
	ld   a, c                                        ; $61ee: $79
	ld   l, c                                        ; $61ef: $69
	ei                                               ; $61f0: $fb
	add  [hl]                                        ; $61f1: $86
	and  c                                           ; $61f2: $a1
	sbc  a                                           ; $61f3: $9f
	dec  c                                           ; $61f4: $0d
	nop                                              ; $61f5: $00
	ld   a, [bc]                                     ; $61f6: $0a
	ld   bc, $6803                                   ; $61f7: $01 $03 $68
	ld   a, l                                        ; $61fa: $7d
	sbc  [hl]                                        ; $61fb: $9e
	pop  de                                          ; $61fc: $d1
	call nz, $ecc2                                   ; $61fd: $c4 $c2 $ec
	dec  c                                           ; $6200: $0d
	sub  d                                           ; $6201: $92
	ld   [hl], c                                     ; $6202: $71
	ld   l, l                                        ; $6203: $6d
	sbc  c                                           ; $6204: $99
	ld   [hl], l                                     ; $6205: $75
	ld   d, l                                        ; $6206: $55
	db   $fc                                         ; $6207: $fc
	db   $fc                                         ; $6208: $fc
	db   $fc                                         ; $6209: $fc
	db   $fc                                         ; $620a: $fc
	db   $fc                                         ; $620b: $fc
	ld   a, [$000d]                                  ; $620c: $fa $0d $00
	ld   a, [bc]                                     ; $620f: $0a
	dec  b                                           ; $6210: $05
	add  b                                           ; $6211: $80
	inc  [hl]                                        ; $6212: $34
	ld   bc, $0001                                   ; $6213: $01 $01 $00
	add  hl, hl                                      ; $6216: $29
	nop                                              ; $6217: $00
	nop                                              ; $6218: $00
	nop                                              ; $6219: $00
	inc  bc                                          ; $621a: $03
	ld   de, $aa01                                   ; $621b: $11 $01 $aa
	inc  h                                           ; $621e: $24
	inc  b                                           ; $621f: $04
	add  b                                           ; $6220: $80
	ld   c, $01                                      ; $6221: $0e $01
	rst  $38                                         ; $6223: $ff
	jr   nz, jr_062_6242                             ; $6224: $20 $1c

	nop                                              ; $6226: $00
	ld   c, $01                                      ; $6227: $0e $01
	rrca                                             ; $6229: $0f
	nop                                              ; $622a: $00
	ld   bc, $0102                                   ; $622b: $01 $02 $01
	and  c                                           ; $622e: $a1
	db   $fc                                         ; $622f: $fc
	ld   d, d                                        ; $6230: $52
	ld   d, d                                        ; $6231: $52
	inc  bc                                          ; $6232: $03
	ld   d, $6e                                      ; $6233: $16 $6e
	ld   a, b                                        ; $6235: $78
	db   $fc                                         ; $6236: $fc
	sbc  a                                           ; $6237: $9f
	dec  c                                           ; $6238: $0d
	ld   h, c                                        ; $6239: $61
	and  c                                           ; $623a: $a1
	ld   a, b                                        ; $623b: $78
	inc  bc                                          ; $623c: $03
	ld   d, $79                                      ; $623d: $16 $79
	ld   a, l                                        ; $623f: $7d
	sbc  [hl]                                        ; $6240: $9e
	inc  b                                           ; $6241: $04

jr_062_6242:
	ld   c, c                                        ; $6242: $49
	ld   e, c                                        ; $6243: $59
	ld   d, d                                        ; $6244: $52
	ld   d, d                                        ; $6245: $52
	ld   h, c                                        ; $6246: $61
	halt                                             ; $6247: $76
	ld   e, d                                        ; $6248: $5a
	dec  c                                           ; $6249: $0d
	ld   [bc], a                                     ; $624a: $02
	ld   e, d                                        ; $624b: $5a
	ld   h, c                                        ; $624c: $61
	sbc  b                                           ; $624d: $98
	ld   l, e                                        ; $624e: $6b
	ld   d, h                                        ; $624f: $54
	ld   a, b                                        ; $6250: $78
	rst  $38                                         ; $6251: $ff
	rst  $38                                         ; $6252: $ff
	dec  c                                           ; $6253: $0d
	nop                                              ; $6254: $00
	ld   a, [bc]                                     ; $6255: $0a
	inc  d                                           ; $6256: $14
	ld   b, $01                                      ; $6257: $06 $01
	rrca                                             ; $6259: $0f
	ld   bc, $0101                                   ; $625a: $01 $01 $01
	ld   [$6300], sp                                 ; $625d: $08 $00 $63
	and  c                                           ; $6260: $a1
	sbc  a                                           ; $6261: $9f
	dec  c                                           ; $6262: $0d
	ld   e, b                                        ; $6263: $58
	ld   a, l                                        ; $6264: $7d
	sub  [hl]                                        ; $6265: $96
	ld   d, h                                        ; $6266: $54
	ld   h, d                                        ; $6267: $62
	ld   h, h                                        ; $6268: $64
	ld   d, d                                        ; $6269: $52
	adc  h                                           ; $626a: $8c
	ld   h, a                                        ; $626b: $67
	sbc  a                                           ; $626c: $9f
	dec  c                                           ; $626d: $0d
	nop                                              ; $626e: $00
	ld   a, [bc]                                     ; $626f: $0a
	rrca                                             ; $6270: $0f
	nop                                              ; $6271: $00
	ld   bc, $5001                                   ; $6272: $01 $01 $50
	sbc  [hl]                                        ; $6275: $9e
	ld   h, e                                        ; $6276: $63
	ld   e, l                                        ; $6277: $5d
	sub  a                                           ; $6278: $97
	ld   h, e                                        ; $6279: $63
	and  c                                           ; $627a: $a1
	sbc  a                                           ; $627b: $9f
	dec  c                                           ; $627c: $0d
	nop                                              ; $627d: $00
	ld   a, [bc]                                     ; $627e: $0a
	inc  d                                           ; $627f: $14
	ld   a, [bc]                                     ; $6280: $0a
	ld   bc, $000f                                   ; $6281: $01 $0f $00
	ld   bc, $010d                                   ; $6284: $01 $0d $01
	ld   bc, $6301                                   ; $6287: $01 $01 $63
	ld   e, l                                        ; $628a: $5d
	sub  a                                           ; $628b: $97
	ld   h, e                                        ; $628c: $63
	and  c                                           ; $628d: $a1
	sbc  a                                           ; $628e: $9f
	dec  c                                           ; $628f: $0d
	ld   e, b                                        ; $6290: $58
	ld   a, l                                        ; $6291: $7d
	sub  [hl]                                        ; $6292: $96
	ld   d, h                                        ; $6293: $54
	ld   h, d                                        ; $6294: $62
	ld   h, h                                        ; $6295: $64
	ld   d, d                                        ; $6296: $52
	adc  h                                           ; $6297: $8c
	ld   h, a                                        ; $6298: $67
	sbc  a                                           ; $6299: $9f
	dec  c                                           ; $629a: $0d
	inc  b                                           ; $629b: $04
	ld   c, c                                        ; $629c: $49
	ld   e, c                                        ; $629d: $59
	ld   h, d                                        ; $629e: $62
	inc  b                                           ; $629f: $04
	di                                               ; $62a0: $f3
	ld   [hl], l                                     ; $62a1: $75
	ld   h, a                                        ; $62a2: $67
	ld   e, c                                        ; $62a3: $59
	ld   sp, hl                                      ; $62a4: $f9
	dec  c                                           ; $62a5: $0d
	nop                                              ; $62a6: $00
	ld   a, [bc]                                     ; $62a7: $0a
	inc  e                                           ; $62a8: $1c
	ld   bc, $0000                                   ; $62a9: $01 $00 $00
	ld   bc, $6d8c                                   ; $62ac: $01 $8c $6d
	adc  h                                           ; $62af: $8c
	ld   l, l                                        ; $62b0: $6d
	sbc  [hl]                                        ; $62b1: $9e
	inc  bc                                          ; $62b2: $03
	ld   l, e                                        ; $62b3: $6b
	inc  b                                           ; $62b4: $04
	ld   [de], a                                     ; $62b5: $12
	ld   [hl], c                                     ; $62b6: $71
	ld   [hl], h                                     ; $62b7: $74
	dec  c                                           ; $62b8: $0d
	inc  b                                           ; $62b9: $04
	db   $e3                                         ; $62ba: $e3
	ld   h, l                                        ; $62bb: $65
	ld   d, d                                        ; $62bc: $52
	ld   h, c                                        ; $62bd: $61
	halt                                             ; $62be: $76
	ld   e, d                                        ; $62bf: $5a
	ld   d, b                                        ; $62c0: $50
	sbc  c                                           ; $62c1: $99
	and  c                                           ; $62c2: $a1
	ld   [hl], l                                     ; $62c3: $75
	ld   h, a                                        ; $62c4: $67
	ld   e, a                                        ; $62c5: $5f
	ld   [hl], a                                     ; $62c6: $77
	dec  c                                           ; $62c7: $0d
	ld   [bc], a                                     ; $62c8: $02
	jr   nz, jr_062_62cf                             ; $62c9: $20 $04

	xor  d                                           ; $62cb: $aa
	inc  bc                                          ; $62cc: $03
	dec  c                                           ; $62cd: $0d
	ld   [bc], a                                     ; $62ce: $02

jr_062_62cf:
	jp   $a178                                       ; $62cf: $c3 $78 $a1


	ld   [hl], l                                     ; $62d2: $75
	ld   h, a                                        ; $62d3: $67
	sub  [hl]                                        ; $62d4: $96
	rst  $38                                         ; $62d5: $ff
	rst  $38                                         ; $62d6: $ff
	dec  c                                           ; $62d7: $0d
	nop                                              ; $62d8: $00
	ld   a, [bc]                                     ; $62d9: $0a
	ld   bc, $9e50                                   ; $62da: $01 $50 $9e
	inc  bc                                          ; $62dd: $03
	add  l                                           ; $62de: $85
	inc  b                                           ; $62df: $04
	xor  e                                           ; $62e0: $ab
	inc  bc                                          ; $62e1: $03
	add  d                                           ; $62e2: $82
	ld   a, c                                        ; $62e3: $79
	ld   a, l                                        ; $62e4: $7d
	ld   d, b                                        ; $62e5: $50
	ld   l, l                                        ; $62e6: $6d
	ld   h, l                                        ; $62e7: $65
	ld   e, c                                        ; $62e8: $59
	sub  a                                           ; $62e9: $97
	dec  c                                           ; $62ea: $0d
	dec  b                                           ; $62eb: $05
	jr   nz, jr_062_6353                             ; $62ec: $20 $65

	ld   [hl], h                                     ; $62ee: $74
	ld   e, b                                        ; $62ef: $58
	ld   e, e                                        ; $62f0: $5b
	adc  h                                           ; $62f1: $8c
	ld   h, a                                        ; $62f2: $67
	ld   a, h                                        ; $62f3: $7c
	ld   [hl], l                                     ; $62f4: $75
	sbc  [hl]                                        ; $62f5: $9e
	inc  bc                                          ; $62f6: $03
	ld   l, l                                        ; $62f7: $6d
	dec  b                                           ; $62f8: $05
	add  hl, de                                      ; $62f9: $19
	ld   a, l                                        ; $62fa: $7d
	dec  c                                           ; $62fb: $0d
	inc  bc                                          ; $62fc: $03
	and  a                                           ; $62fd: $a7
	and  c                                           ; $62fe: $a1
	ld   [hl], l                                     ; $62ff: $75
	sub  b                                           ; $6300: $90
	inc  b                                           ; $6301: $04
	ld   c, $03                                      ; $6302: $0e $03
	sbc  l                                           ; $6304: $9d
	inc  b                                           ; $6305: $04
	and  [hl]                                        ; $6306: $a6
	ld   [hl], l                                     ; $6307: $75
	ld   h, a                                        ; $6308: $67
	sub  [hl]                                        ; $6309: $96
	sbc  a                                           ; $630a: $9f
	dec  c                                           ; $630b: $0d
	nop                                              ; $630c: $00
	ld   a, [bc]                                     ; $630d: $0a
	add  hl, de                                      ; $630e: $19
	dec  b                                           ; $630f: $05
	ld   [bc], a                                     ; $6310: $02
	inc  bc                                          ; $6311: $03
	ld   l, e                                        ; $6312: $6b
	inc  b                                           ; $6313: $04
	ld   [de], a                                     ; $6314: $12
	ld   d, h                                        ; $6315: $54
	nop                                              ; $6316: $00
	nop                                              ; $6317: $00
	ld   h, c                                        ; $6318: $61
	halt                                             ; $6319: $76
	sbc  l                                           ; $631a: $9d
	sbc  c                                           ; $631b: $99
	nop                                              ; $631c: $00
	ld   bc, $cd07                                   ; $631d: $01 $07 $cd
	ld   bc, $0302                                   ; $6320: $01 $02 $03
	ld   bc, $2000                                   ; $6323: $01 $00 $20
	nop                                              ; $6326: $00
	rlca                                             ; $6327: $07
	inc  c                                           ; $6328: $0c
	ld   bc, $0302                                   ; $6329: $01 $02 $03
	ld   bc, $2001                                   ; $632c: $01 $01 $20
	nop                                              ; $632f: $00
	ld   b, $6d                                      ; $6330: $06 $6d
	ld   bc, $000f                                   ; $6332: $01 $0f $00
	ld   bc, $6701                                   ; $6335: $01 $01 $67
	adc  l                                           ; $6338: $8d
	adc  h                                           ; $6339: $8c
	ld   l, c                                        ; $633a: $69
	and  c                                           ; $633b: $a1
	sbc  a                                           ; $633c: $9f
	dec  c                                           ; $633d: $0d
	ld   [bc], a                                     ; $633e: $02
	and  l                                           ; $633f: $a5
	inc  b                                           ; $6340: $04
	xor  d                                           ; $6341: $aa
	ld   a, l                                        ; $6342: $7d
	ld   l, a                                        ; $6343: $6f
	sub  l                                           ; $6344: $95
	ld   [hl], c                                     ; $6345: $71
	halt                                             ; $6346: $76
	dec  c                                           ; $6347: $0d
	inc  b                                           ; $6348: $04
	di                                               ; $6349: $f3
	ld   e, d                                        ; $634a: $5a
	ld   d, b                                        ; $634b: $50
	sbc  c                                           ; $634c: $99
	and  c                                           ; $634d: $a1
	ld   [hl], l                                     ; $634e: $75
	ld   h, a                                        ; $634f: $67
	sbc  a                                           ; $6350: $9f
	dec  c                                           ; $6351: $0d
	nop                                              ; $6352: $00

jr_062_6353:
	ld   a, [bc]                                     ; $6353: $0a
	inc  e                                           ; $6354: $1c
	ld   bc, $0404                                   ; $6355: $01 $04 $04
	dec  e                                           ; $6358: $1d
	ld   b, b                                        ; $6359: $40
	ld   de, $1103                                   ; $635a: $11 $03 $11
	ld   bc, $2902                                   ; $635d: $01 $02 $29
	nop                                              ; $6360: $00
	ld   bc, $546b                                   ; $6361: $01 $6b $54
	ld   [hl], l                                     ; $6364: $75
	ld   h, a                                        ; $6365: $67
	ld   e, c                                        ; $6366: $59
	rst  $38                                         ; $6367: $ff
	rst  $38                                         ; $6368: $ff
	dec  c                                           ; $6369: $0d
	inc  bc                                          ; $636a: $03
	ld   d, $03                                      ; $636b: $16 $03
	ld   [hl], b                                     ; $636d: $70
	ld   e, l                                        ; $636e: $5d
	ld   a, c                                        ; $636f: $79
	ld   [bc], a                                     ; $6370: $02
	ld   e, d                                        ; $6371: $5a
	ld   h, c                                        ; $6372: $61
	ld   h, l                                        ; $6373: $65
	ld   [hl], h                                     ; $6374: $74
	ld   h, l                                        ; $6375: $65
	adc  h                                           ; $6376: $8c
	ld   [hl], c                                     ; $6377: $71
	ld   [hl], h                                     ; $6378: $74
	dec  c                                           ; $6379: $0d
	ld   h, a                                        ; $637a: $67
	adc  l                                           ; $637b: $8d
	adc  h                                           ; $637c: $8c
	ld   l, c                                        ; $637d: $69
	and  c                                           ; $637e: $a1
	ld   [hl], l                                     ; $637f: $75
	ld   h, l                                        ; $6380: $65
	ld   l, l                                        ; $6381: $6d
	sbc  a                                           ; $6382: $9f
	ld   [hl], l                                     ; $6383: $75
	ld   a, l                                        ; $6384: $7d
	sbc  a                                           ; $6385: $9f
	dec  c                                           ; $6386: $0d
	nop                                              ; $6387: $00
	ld   a, [bc]                                     ; $6388: $0a
	dec  c                                           ; $6389: $0d
	nop                                              ; $638a: $00
	nop                                              ; $638b: $00
	rrca                                             ; $638c: $0f
	nop                                              ; $638d: $00
	ld   bc, $1e09                                   ; $638e: $01 $09 $1e
	add  hl, hl                                      ; $6391: $29
	ld   bc, $1c00                                   ; $6392: $01 $00 $1c
	ld   bc, $0303                                   ; $6395: $01 $03 $03
	ld   bc, $9e50                                   ; $6398: $01 $50 $9e
	inc  b                                           ; $639b: $04
	ld   c, c                                        ; $639c: $49
	ld   e, c                                        ; $639d: $59
	inc  b                                           ; $639e: $04
	di                                               ; $639f: $f3
	ld   e, d                                        ; $63a0: $5a
	ld   d, b                                        ; $63a1: $50
	sbc  c                                           ; $63a2: $99
	ld   a, b                                        ; $63a3: $78
	sub  a                                           ; $63a4: $97
	dec  c                                           ; $63a5: $0d
	inc  b                                           ; $63a6: $04
	ld   d, h                                        ; $63a7: $54
	ld   a, c                                        ; $63a8: $79
	ld   d, d                                        ; $63a9: $52
	ld   d, d                                        ; $63aa: $52
	and  c                                           ; $63ab: $a1
	ld   [hl], l                                     ; $63ac: $75
	ld   h, a                                        ; $63ad: $67
	sub  [hl]                                        ; $63ae: $96
	sbc  a                                           ; $63af: $9f
	dec  c                                           ; $63b0: $0d
	nop                                              ; $63b1: $00
	ld   a, [bc]                                     ; $63b2: $0a
	inc  e                                           ; $63b3: $1c
	ld   bc, $0404                                   ; $63b4: $01 $04 $04
	dec  e                                           ; $63b7: $1d
	ld   b, b                                        ; $63b8: $40
	ld   de, $1103                                   ; $63b9: $11 $03 $11
	ld   bc, $2902                                   ; $63bc: $01 $02 $29
	nop                                              ; $63bf: $00
	ld   bc, $1603                                   ; $63c0: $01 $03 $16
	inc  bc                                          ; $63c3: $03
	ld   [hl], b                                     ; $63c4: $70
	ld   e, l                                        ; $63c5: $5d
	ld   a, c                                        ; $63c6: $79
	ld   [bc], a                                     ; $63c7: $02
	ld   e, d                                        ; $63c8: $5a
	ld   h, c                                        ; $63c9: $61
	ld   h, l                                        ; $63ca: $65
	ld   [hl], h                                     ; $63cb: $74
	ld   h, l                                        ; $63cc: $65
	adc  h                                           ; $63cd: $8c
	ld   [hl], c                                     ; $63ce: $71
	ld   [hl], h                                     ; $63cf: $74
	dec  c                                           ; $63d0: $0d
	ld   h, a                                        ; $63d1: $67
	adc  l                                           ; $63d2: $8d
	adc  h                                           ; $63d3: $8c
	ld   l, c                                        ; $63d4: $69
	and  c                                           ; $63d5: $a1
	ld   [hl], l                                     ; $63d6: $75
	ld   h, l                                        ; $63d7: $65
	ld   l, l                                        ; $63d8: $6d
	sbc  a                                           ; $63d9: $9f
	dec  c                                           ; $63da: $0d
	ld   [hl], l                                     ; $63db: $75
	ld   a, l                                        ; $63dc: $7d
	sbc  [hl]                                        ; $63dd: $9e
	inc  bc                                          ; $63de: $03
	add  e                                           ; $63df: $83
	dec  b                                           ; $63e0: $05
	dec  c                                           ; $63e1: $0d
	ld   h, l                                        ; $63e2: $65
	adc  h                                           ; $63e3: $8c
	ld   h, a                                        ; $63e4: $67
	sbc  a                                           ; $63e5: $9f
	dec  c                                           ; $63e6: $0d
	nop                                              ; $63e7: $00
	ld   a, [bc]                                     ; $63e8: $0a
	dec  c                                           ; $63e9: $0d
	nop                                              ; $63ea: $00
	nop                                              ; $63eb: $00
	rrca                                             ; $63ec: $0f
	nop                                              ; $63ed: $00
	ld   bc, $1e09                                   ; $63ee: $01 $09 $1e
	add  hl, hl                                      ; $63f1: $29
	ld   bc, $0f00                                   ; $63f2: $01 $00 $0f
	nop                                              ; $63f5: $00
	ld   bc, $5201                                   ; $63f6: $01 $01 $52
	ld   d, d                                        ; $63f9: $52
	ld   [hl], l                                     ; $63fa: $75
	ld   h, a                                        ; $63fb: $67
	sub  [hl]                                        ; $63fc: $96
	sbc  a                                           ; $63fd: $9f
	dec  c                                           ; $63fe: $0d
	inc  b                                           ; $63ff: $04
	ld   l, l                                        ; $6400: $6d
	ld   [hl], l                                     ; $6401: $75
	ld   e, b                                        ; $6402: $58
	inc  b                                           ; $6403: $04
	db   $ec                                         ; $6404: $ec
	ld   a, c                                        ; $6405: $79
	dec  b                                           ; $6406: $05
	ld   d, $74                                      ; $6407: $16 $74
	sbc  c                                           ; $6409: $99
	ld   a, b                                        ; $640a: $78
	sub  a                                           ; $640b: $97
	sbc  a                                           ; $640c: $9f
	dec  c                                           ; $640d: $0d
	nop                                              ; $640e: $00
	ld   a, [bc]                                     ; $640f: $0a
	inc  e                                           ; $6410: $1c
	ld   bc, $0101                                   ; $6411: $01 $01 $01
	dec  e                                           ; $6414: $1d
	ld   b, b                                        ; $6415: $40
	ld   de, $1103                                   ; $6416: $11 $03 $11
	ld   bc, $2802                                   ; $6419: $01 $02 $28
	nop                                              ; $641c: $00
	ld   bc, $8f04                                   ; $641d: $01 $04 $8f
	inc  b                                           ; $6420: $04
	jr   jr_062_6498                                 ; $6421: $18 $75

	ld   h, a                                        ; $6423: $67
	ld   e, c                                        ; $6424: $59
	ld   a, [$500d]                                  ; $6425: $fa $0d $50
	sbc  b                                           ; $6428: $98
	ld   e, d                                        ; $6429: $5a
	halt                                             ; $642a: $76
	ld   d, h                                        ; $642b: $54
	ld   h, d                                        ; $642c: $62
	ld   h, h                                        ; $642d: $64
	ld   d, d                                        ; $642e: $52
	adc  h                                           ; $642f: $8c
	ld   h, a                                        ; $6430: $67
	sbc  a                                           ; $6431: $9f
	dec  c                                           ; $6432: $0d
	inc  bc                                          ; $6433: $03
	ld   e, e                                        ; $6434: $5b
	ld   e, c                                        ; $6435: $59
	sbc  b                                           ; $6436: $98
	adc  h                                           ; $6437: $8c
	ld   h, a                                        ; $6438: $67
	sbc  a                                           ; $6439: $9f
	dec  c                                           ; $643a: $0d
	nop                                              ; $643b: $00
	ld   a, [bc]                                     ; $643c: $0a
	inc  e                                           ; $643d: $1c
	ld   bc, $0000                                   ; $643e: $01 $00 $00
	ld   bc, $7803                                   ; $6441: $01 $03 $78
	inc  bc                                          ; $6444: $03
	ld   a, c                                        ; $6445: $79
	sbc  [hl]                                        ; $6446: $9e
	ld   [bc], a                                     ; $6447: $02
	ld   de, $4c03                                   ; $6448: $11 $03 $4c
	inc  b                                           ; $644b: $04
	sub  l                                           ; $644c: $95
	ld   [bc], a                                     ; $644d: $02
	ld   hl, $0d76                                   ; $644e: $21 $76 $0d
	inc  b                                           ; $6451: $04
	ld   d, $02                                      ; $6452: $16 $02
	xor  b                                           ; $6454: $a8
	inc  b                                           ; $6455: $04
	sub  l                                           ; $6456: $95
	ld   [bc], a                                     ; $6457: $02
	ld   hl, $03a0                                   ; $6458: $21 $a0 $03
	ld   a, h                                        ; $645b: $7c
	dec  b                                           ; $645c: $05
	ld   de, $6d65                                   ; $645d: $11 $65 $6d
	ld   h, [hl]                                     ; $6460: $66
	sub  c                                           ; $6461: $91
	dec  c                                           ; $6462: $0d
	ld   a, b                                        ; $6463: $78
	ld   d, d                                        ; $6464: $52
	ld   [hl], l                                     ; $6465: $75
	ld   h, a                                        ; $6466: $67
	ld   e, c                                        ; $6467: $59
	sbc  a                                           ; $6468: $9f
	dec  c                                           ; $6469: $0d
	nop                                              ; $646a: $00
	ld   a, [bc]                                     ; $646b: $0a
	inc  e                                           ; $646c: $1c
	ld   bc, $0404                                   ; $646d: $01 $04 $04
	ld   bc, $7c03                                   ; $6470: $01 $03 $7c
	dec  b                                           ; $6473: $05
	ld   de, $7465                                   ; $6474: $11 $65 $74
	inc  b                                           ; $6477: $04
	sbc  [hl]                                        ; $6478: $9e
	ld   e, c                                        ; $6479: $59
	ld   [hl], c                                     ; $647a: $71
	ld   l, l                                        ; $647b: $6d
	ld   a, h                                        ; $647c: $7c
	ld   [hl], l                                     ; $647d: $75
	ld   h, a                                        ; $647e: $67
	ld   e, d                                        ; $647f: $5a
	sbc  [hl]                                        ; $6480: $9e
	dec  c                                           ; $6481: $0d
	inc  bc                                          ; $6482: $03
	dec  bc                                          ; $6483: $0b
	ld   bc, $7614                                   ; $6484: $01 $14 $76
	sbc  [hl]                                        ; $6487: $9e
	ld   a, b                                        ; $6488: $78
	ld   e, l                                        ; $6489: $5d
	ld   a, b                                        ; $648a: $78
	ld   [hl], c                                     ; $648b: $71
	ld   [hl], h                                     ; $648c: $74
	ld   d, d                                        ; $648d: $52
	sbc  c                                           ; $648e: $99
	inc  b                                           ; $648f: $04
	sub  d                                           ; $6490: $92
	dec  c                                           ; $6491: $0d
	ld   e, d                                        ; $6492: $5a
	ld   d, b                                        ; $6493: $50
	sbc  c                                           ; $6494: $99
	and  c                                           ; $6495: $a1
	ld   [hl], l                                     ; $6496: $75
	ld   h, a                                        ; $6497: $67

jr_062_6498:
	sub  [hl]                                        ; $6498: $96
	sbc  a                                           ; $6499: $9f
	dec  c                                           ; $649a: $0d
	nop                                              ; $649b: $00
	ld   a, [bc]                                     ; $649c: $0a
	inc  e                                           ; $649d: $1c
	ld   bc, $0000                                   ; $649e: $01 $00 $00
	ld   bc, $5d78                                   ; $64a1: $01 $78 $5d
	ld   a, b                                        ; $64a4: $78
	ld   [hl], c                                     ; $64a5: $71
	ld   [hl], h                                     ; $64a6: $74
	ld   d, d                                        ; $64a7: $52
	sbc  c                                           ; $64a8: $99
	inc  b                                           ; $64a9: $04
	sub  d                                           ; $64aa: $92
	ld   a, l                                        ; $64ab: $7d
	ld   d, $72                                      ; $64ac: $16 $72
	sbc  a                                           ; $64ae: $9f
	dec  c                                           ; $64af: $0d
	inc  bc                                          ; $64b0: $03
	xor  c                                           ; $64b1: $a9
	ld   e, d                                        ; $64b2: $5a
	inc  b                                           ; $64b3: $04
	ld   c, c                                        ; $64b4: $49
	and  b                                           ; $64b5: $a0
	inc  bc                                          ; $64b6: $03
	and  b                                           ; $64b7: $a0
	ld   [hl], c                                     ; $64b8: $71
	ld   [hl], h                                     ; $64b9: $74
	ld   d, d                                        ; $64ba: $52
	ld   [hl], c                                     ; $64bb: $71
	ld   l, l                                        ; $64bc: $6d
	ld   a, h                                        ; $64bd: $7c
	ld   e, c                                        ; $64be: $59
	dec  c                                           ; $64bf: $0d
	inc  b                                           ; $64c0: $04
	inc  d                                           ; $64c1: $14
	ld   h, l                                        ; $64c2: $65
	ld   [hl], h                                     ; $64c3: $74
	adc  c                                           ; $64c4: $89
	ld   h, l                                        ; $64c5: $65
	ld   d, d                                        ; $64c6: $52
	and  c                                           ; $64c7: $a1
	ld   [hl], l                                     ; $64c8: $75
	ld   h, a                                        ; $64c9: $67
	sbc  a                                           ; $64ca: $9f
	dec  c                                           ; $64cb: $0d
	nop                                              ; $64cc: $00
	ld   a, [bc]                                     ; $64cd: $0a
	ld   bc, $6104                                   ; $64ce: $01 $04 $61
	inc  b                                           ; $64d1: $04
	sub  d                                           ; $64d2: $92
	ld   a, l                                        ; $64d3: $7d
	sbc  [hl]                                        ; $64d4: $9e
	dec  b                                           ; $64d5: $05
	and  e                                           ; $64d6: $a3
	ld   [bc], a                                     ; $64d7: $02
	sub  b                                           ; $64d8: $90
	ld   a, b                                        ; $64d9: $78
	ld   [bc], a                                     ; $64da: $02
	ld   de, $4c03                                   ; $64db: $11 $03 $4c
	sbc  [hl]                                        ; $64de: $9e
	dec  c                                           ; $64df: $0d
	inc  bc                                          ; $64e0: $03
	xor  a                                           ; $64e1: $af
	inc  b                                           ; $64e2: $04
	ld   d, $02                                      ; $64e3: $16 $02
	xor  b                                           ; $64e5: $a8
	ld   a, h                                        ; $64e6: $7c
	inc  b                                           ; $64e7: $04
	adc  a                                           ; $64e8: $8f
	sbc  [hl]                                        ; $64e9: $9e
	inc  bc                                          ; $64ea: $03
	xor  a                                           ; $64eb: $af
	inc  b                                           ; $64ec: $04
	ld   d, $02                                      ; $64ed: $16 $02
	xor  b                                           ; $64ef: $a8
	ld   a, h                                        ; $64f0: $7c
	pop  bc                                          ; $64f1: $c1
	and  l                                           ; $64f2: $a5
	and  $9e                                         ; $64f3: $e6 $9e
	dec  c                                           ; $64f5: $0d
	dec  b                                           ; $64f6: $05
	ret  nc                                          ; $64f7: $d0

	ld   [bc], a                                     ; $64f8: $02
	ld   b, $04                                      ; $64f9: $06 $04
	ld   e, l                                        ; $64fb: $5d
	sbc  [hl]                                        ; $64fc: $9e
	xor  l                                           ; $64fd: $ad
	db   $eb                                         ; $64fe: $eb
	cp   d                                           ; $64ff: $ba
	ld   a, h                                        ; $6500: $7c
	ld   e, l                                        ; $6501: $5d
	ld   [hl], d                                     ; $6502: $72
	sbc  [hl]                                        ; $6503: $9e
	ld   [hl], l                                     ; $6504: $75
	ld   h, a                                        ; $6505: $67
	sbc  a                                           ; $6506: $9f
	dec  c                                           ; $6507: $0d
	nop                                              ; $6508: $00
	ld   a, [bc]                                     ; $6509: $0a
	ld   bc, $9166                                   ; $650a: $01 $66 $91
	ld   d, b                                        ; $650d: $50
	sbc  [hl]                                        ; $650e: $9e
	ld   h, e                                        ; $650f: $63
	ld   [hl], c                                     ; $6510: $71
	ld   l, e                                        ; $6511: $6b
	ld   e, l                                        ; $6512: $5d
	dec  c                                           ; $6513: $0d
	inc  b                                           ; $6514: $04
	inc  d                                           ; $6515: $14
	ld   h, l                                        ; $6516: $65
	ld   a, c                                        ; $6517: $79
	ld   [bc], a                                     ; $6518: $02
	ld   a, a                                        ; $6519: $7f
	ld   e, e                                        ; $651a: $5b
	adc  h                                           ; $651b: $8c
	ld   h, l                                        ; $651c: $65
	sub  l                                           ; $651d: $95
	ld   d, h                                        ; $651e: $54
	sbc  a                                           ; $651f: $9f
	dec  c                                           ; $6520: $0d
	nop                                              ; $6521: $00
	ld   a, [bc]                                     ; $6522: $0a
	dec  c                                           ; $6523: $0d
	nop                                              ; $6524: $00
	nop                                              ; $6525: $00
	rrca                                             ; $6526: $0f
	nop                                              ; $6527: $00
	ld   bc, $4823                                   ; $6528: $01 $23 $48
	inc  e                                           ; $652b: $1c
	ld   bc, $0000                                   ; $652c: $01 $00 $00
	ld   bc, $688c                                   ; $652f: $01 $8c $68
	ld   a, l                                        ; $6532: $7d
	sbc  [hl]                                        ; $6533: $9e
	xor  h                                           ; $6534: $ac
	push af                                          ; $6535: $f5
	bit  4, e                                        ; $6536: $cb $63
	and  c                                           ; $6538: $a1
	ld   [hl], l                                     ; $6539: $75
	ld   h, a                                        ; $653a: $67
	sbc  a                                           ; $653b: $9f
	dec  c                                           ; $653c: $0d
	nop                                              ; $653d: $00
	ld   a, [bc]                                     ; $653e: $0a
	dec  c                                           ; $653f: $0d
	nop                                              ; $6540: $00
	nop                                              ; $6541: $00
	rrca                                             ; $6542: $0f
	nop                                              ; $6543: $00
	ld   bc, $0614                                   ; $6544: $01 $14 $06
	ld   bc, $ac01                                   ; $6547: $01 $01 $ac
	push af                                          ; $654a: $f5
	bit  4, e                                        ; $654b: $cb $63
	and  c                                           ; $654d: $a1
	sbc  a                                           ; $654e: $9f
	dec  c                                           ; $654f: $0d
	ld   [$7500], sp                                 ; $6550: $08 $00 $75
	ld   h, a                                        ; $6553: $67
	sbc  a                                           ; $6554: $9f
	dec  c                                           ; $6555: $0d
	nop                                              ; $6556: $00
	ld   a, [bc]                                     ; $6557: $0a
	inc  d                                           ; $6558: $14

Jump_062_6559:
	ld   a, [bc]                                     ; $6559: $0a
	ld   bc, $ac0e                                   ; $655a: $01 $0e $ac
	inc  e                                           ; $655d: $1c
	ld   b, $00                                      ; $655e: $06 $00
	nop                                              ; $6560: $00
	ld   bc, $f9a1                                   ; $6561: $01 $a1 $f9
	db   $10                                         ; $6564: $10
	ld   [$9f00], sp                                 ; $6565: $08 $00 $9f
	dec  c                                           ; $6568: $0d
	ld   h, e                                        ; $6569: $63
	ld   e, l                                        ; $656a: $5d
	sub  a                                           ; $656b: $97
	sub  b                                           ; $656c: $90
	ld   d, d                                        ; $656d: $52
	ld   [hl], c                                     ; $656e: $71
	ld   h, l                                        ; $656f: $65
	sub  l                                           ; $6570: $95
	ld   h, [hl]                                     ; $6571: $66
	sub  c                                           ; $6572: $91
	ld   a, e                                        ; $6573: $7b
	ei                                               ; $6574: $fb
	ld   e, c                                        ; $6575: $59
	sbc  a                                           ; $6576: $9f
	dec  c                                           ; $6577: $0d
	ld   a, b                                        ; $6578: $78
	and  c                                           ; $6579: $a1
	ld   e, c                                        ; $657a: $59
	inc  b                                           ; $657b: $04
	di                                               ; $657c: $f3
	ld   e, c                                        ; $657d: $59
	ld   sp, hl                                      ; $657e: $f9
	dec  c                                           ; $657f: $0d
	nop                                              ; $6580: $00
	ld   a, [bc]                                     ; $6581: $0a
	rrca                                             ; $6582: $0f
	nop                                              ; $6583: $00
	ld   bc, $0201                                   ; $6584: $01 $01 $02
	and  l                                           ; $6587: $a5
	sbc  [hl]                                        ; $6588: $9e
	ld   a, b                                        ; $6589: $78
	ld   e, l                                        ; $658a: $5d
	ld   a, b                                        ; $658b: $78
	ld   [hl], c                                     ; $658c: $71
	ld   l, l                                        ; $658d: $6d
	inc  b                                           ; $658e: $04
	sub  d                                           ; $658f: $92
	and  b                                           ; $6590: $a0
	inc  b                                           ; $6591: $04
	inc  d                                           ; $6592: $14
	ld   h, l                                        ; $6593: $65
	ld   [hl], h                                     ; $6594: $74
	ld   d, d                                        ; $6595: $52
	sbc  c                                           ; $6596: $99
	dec  c                                           ; $6597: $0d
	ld   a, h                                        ; $6598: $7c
	ld   [hl], l                                     ; $6599: $75
	ld   h, a                                        ; $659a: $67
	ld   e, d                                        ; $659b: $5a
	rst  $38                                         ; $659c: $ff
	rst  $38                                         ; $659d: $ff
	dec  c                                           ; $659e: $0d
	nop                                              ; $659f: $00
	ld   a, [bc]                                     ; $65a0: $0a
	ld   bc, $f5ac                                   ; $65a1: $01 $ac $f5
	bit  4, e                                        ; $65a4: $cb $63
	and  c                                           ; $65a6: $a1
	sbc  [hl]                                        ; $65a7: $9e
	ld   l, a                                        ; $65a8: $6f
	sub  l                                           ; $65a9: $95
	ld   [hl], c                                     ; $65aa: $71
	halt                                             ; $65ab: $76
	inc  b                                           ; $65ac: $04
	sub  l                                           ; $65ad: $95
	ld   [bc], a                                     ; $65ae: $02
	ld   hl, $0d7c                                   ; $65af: $21 $7c $0d
	inc  b                                           ; $65b2: $04
	dec  bc                                          ; $65b3: $0b
	and  b                                           ; $65b4: $a0
	ld   [bc], a                                     ; $65b5: $02
	sub  l                                           ; $65b6: $95
	ld   l, c                                        ; $65b7: $69
	ld   [hl], h                                     ; $65b8: $74
	ld   d, d                                        ; $65b9: $52
	ld   l, l                                        ; $65ba: $6d
	ld   l, [hl]                                     ; $65bb: $6e
	ld   e, a                                        ; $65bc: $5f
	adc  h                                           ; $65bd: $8c
	ld   h, a                                        ; $65be: $67
	ld   e, c                                        ; $65bf: $59
	ld   sp, hl                                      ; $65c0: $f9
	dec  c                                           ; $65c1: $0d
	nop                                              ; $65c2: $00
	ld   a, [bc]                                     ; $65c3: $0a
	rrca                                             ; $65c4: $0f
	ld   b, $00                                      ; $65c5: $06 $00
	ld   bc, $5252                                   ; $65c7: $01 $52 $52
	ld   l, d                                        ; $65ca: $6a
	sbc  [hl]                                        ; $65cb: $9e
	inc  b                                           ; $65cc: $04
	ld   b, l                                        ; $65cd: $45
	sbc  d                                           ; $65ce: $9a
	sub  [hl]                                        ; $65cf: $96
	sbc  a                                           ; $65d0: $9f
	dec  c                                           ; $65d1: $0d
	nop                                              ; $65d2: $00
	ld   a, [bc]                                     ; $65d3: $0a
	dec  c                                           ; $65d4: $0d
	nop                                              ; $65d5: $00
	nop                                              ; $65d6: $00
	rrca                                             ; $65d7: $0f
	nop                                              ; $65d8: $00
	ld   bc, $6b01                                   ; $65d9: $01 $01 $6b
	sbc  d                                           ; $65dc: $9a
	ld   [hl], l                                     ; $65dd: $75
	ld   a, l                                        ; $65de: $7d
	sbc  [hl]                                        ; $65df: $9e
	inc  bc                                          ; $65e0: $03
	add  e                                           ; $65e1: $83
	dec  b                                           ; $65e2: $05
	dec  c                                           ; $65e3: $0d
	ld   h, l                                        ; $65e4: $65
	adc  h                                           ; $65e5: $8c
	ld   h, a                                        ; $65e6: $67
	sbc  a                                           ; $65e7: $9f
	dec  c                                           ; $65e8: $0d
	ld   d, [hl]                                     ; $65e9: $56
	db   $fc                                         ; $65ea: $fc
	ld   [hl], c                                     ; $65eb: $71
	halt                                             ; $65ec: $76
	rst  $38                                         ; $65ed: $ff
	rst  $38                                         ; $65ee: $ff
	dec  c                                           ; $65ef: $0d
	nop                                              ; $65f0: $00
	ld   a, [bc]                                     ; $65f1: $0a
	inc  c                                           ; $65f2: $0c
	dec  bc                                          ; $65f3: $0b
	inc  e                                           ; $65f4: $1c
	ld   b, $00                                      ; $65f5: $06 $00
	nop                                              ; $65f7: $00
	ld   bc, $5477                                   ; $65f8: $01 $77 $54
	ld   l, [hl]                                     ; $65fb: $6e
	ld   sp, hl                                      ; $65fc: $f9
	dec  c                                           ; $65fd: $0d
	ld   a, b                                        ; $65fe: $78
	and  c                                           ; $65ff: $a1
	ld   e, c                                        ; $6600: $59
	ld   [bc], a                                     ; $6601: $02
	sub  l                                           ; $6602: $95
	ld   [hl], d                                     ; $6603: $72
	ld   e, c                                        ; $6604: $59
	ld   [hl], c                                     ; $6605: $71
	ld   l, l                                        ; $6606: $6d
	ld   e, c                                        ; $6607: $59
	ld   sp, hl                                      ; $6608: $f9
	dec  c                                           ; $6609: $0d
	nop                                              ; $660a: $00
	ld   a, [bc]                                     ; $660b: $0a
	add  hl, de                                      ; $660c: $19
	dec  b                                           ; $660d: $05
	inc  bc                                          ; $660e: $03
	dec  b                                           ; $660f: $05
	and  e                                           ; $6610: $a3
	ld   [bc], a                                     ; $6611: $02
	sub  b                                           ; $6612: $90
	ld   a, b                                        ; $6613: $78
	ld   [bc], a                                     ; $6614: $02
	ld   de, $4c03                                   ; $6615: $11 $03 $4c
	nop                                              ; $6618: $00
	nop                                              ; $6619: $00
	dec  b                                           ; $661a: $05
	ret  nc                                          ; $661b: $d0

	ld   [bc], a                                     ; $661c: $02
	ld   b, $04                                      ; $661d: $06 $04
	ld   e, l                                        ; $661f: $5d
	nop                                              ; $6620: $00
	ld   bc, $af03                                   ; $6621: $01 $03 $af
	inc  b                                           ; $6624: $04
	ld   d, $02                                      ; $6625: $16 $02
	xor  b                                           ; $6627: $a8
	ld   a, h                                        ; $6628: $7c
	pop  bc                                          ; $6629: $c1
	and  l                                           ; $662a: $a5
	and  $00                                         ; $662b: $e6 $00
	ld   [bc], a                                     ; $662d: $02
	rlca                                             ; $662e: $07
	ld   bc, $0206                                   ; $662f: $01 $06 $02
	inc  bc                                          ; $6632: $03
	ld   bc, $2000                                   ; $6633: $01 $00 $20
	nop                                              ; $6636: $00
	rlca                                             ; $6637: $07
	dec  h                                           ; $6638: $25
	inc  b                                           ; $6639: $04
	ld   [bc], a                                     ; $663a: $02
	inc  bc                                          ; $663b: $03
	ld   bc, $2001                                   ; $663c: $01 $01 $20
	nop                                              ; $663f: $00
	rlca                                             ; $6640: $07
	add  d                                           ; $6641: $82
	inc  b                                           ; $6642: $04
	ld   [bc], a                                     ; $6643: $02
	inc  bc                                          ; $6644: $03
	ld   bc, $2002                                   ; $6645: $01 $02 $20
	nop                                              ; $6648: $00
	ld   b, $fd                                      ; $6649: $06 $fd
	inc  b                                           ; $664b: $04
	rrca                                             ; $664c: $0f
	nop                                              ; $664d: $00
	ld   bc, $0501                                   ; $664e: $01 $01 $05
	ret  nc                                          ; $6651: $d0

	ld   [bc], a                                     ; $6652: $02
	ld   b, $04                                      ; $6653: $06 $04
	ld   e, l                                        ; $6655: $5d
	ld   e, d                                        ; $6656: $5a
	ld   d, b                                        ; $6657: $50
	sbc  c                                           ; $6658: $99
	halt                                             ; $6659: $76
	dec  c                                           ; $665a: $0d
	dec  b                                           ; $665b: $05
	pop  de                                          ; $665c: $d1
	ld   [hl], c                                     ; $665d: $71
	ld   l, l                                        ; $665e: $6d
	and  c                                           ; $665f: $a1
	ld   [hl], l                                     ; $6660: $75
	ld   h, a                                        ; $6661: $67
	ld   e, d                                        ; $6662: $5a
	rst  $38                                         ; $6663: $ff
	rst  $38                                         ; $6664: $ff
	dec  c                                           ; $6665: $0d
	nop                                              ; $6666: $00
	ld   a, [bc]                                     ; $6667: $0a
	inc  e                                           ; $6668: $1c
	ld   b, $03                                      ; $6669: $06 $03
	inc  bc                                          ; $666b: $03
	ld   bc, $d005                                   ; $666c: $01 $05 $d0
	ld   [bc], a                                     ; $666f: $02
	ld   b, $04                                      ; $6670: $06 $04
	ld   e, l                                        ; $6672: $5d
	ld   sp, hl                                      ; $6673: $f9
	db   $10                                         ; $6674: $10
	inc  b                                           ; $6675: $04
	dec  hl                                          ; $6676: $2b
	sub  a                                           ; $6677: $97
	ld   a, b                                        ; $6678: $78
	ld   d, d                                        ; $6679: $52
	ld   l, d                                        ; $667a: $6a
	sbc  a                                           ; $667b: $9f
	dec  c                                           ; $667c: $0d
	nop                                              ; $667d: $00
	ld   a, [bc]                                     ; $667e: $0a
	inc  e                                           ; $667f: $1c
	ld   b, $02                                      ; $6680: $06 $02
	ld   [bc], a                                     ; $6682: $02
	dec  e                                           ; $6683: $1d
	ld   b, b                                        ; $6684: $40
	ld   d, $03                                      ; $6685: $16 $03
	ld   d, $01                                      ; $6687: $16 $01
	ld   [bc], a                                     ; $6689: $02
	add  hl, hl                                      ; $668a: $29
	nop                                              ; $668b: $00
	ld   bc, $a178                                   ; $668c: $01 $78 $a1
	ld   l, [hl]                                     ; $668f: $6e
	sub  [hl]                                        ; $6690: $96
	sbc  [hl]                                        ; $6691: $9e
	reti                                             ; $6692: $d9


	push af                                          ; $6693: $f5
	ld   a, b                                        ; $6694: $78
	ld   d, h                                        ; $6695: $54
	ld   l, l                                        ; $6696: $6d
	ld   e, d                                        ; $6697: $5a
	ld   d, d                                        ; $6698: $52
	dec  c                                           ; $6699: $0d
	ld   e, c                                        ; $669a: $59
	ld   e, a                                        ; $669b: $5f
	sub  d                                           ; $669c: $92
	ld   e, d                                        ; $669d: $5a
	ld   [hl], c                                     ; $669e: $71
	ld   [hl], h                                     ; $669f: $74
	sub  [hl]                                        ; $66a0: $96
	ei                                               ; $66a1: $fb
	sbc  a                                           ; $66a2: $9f
	dec  c                                           ; $66a3: $0d
	nop                                              ; $66a4: $00
	ld   a, [bc]                                     ; $66a5: $0a
	ld   b, $d7                                      ; $66a6: $06 $d7
	inc  b                                           ; $66a8: $04
	rrca                                             ; $66a9: $0f
	nop                                              ; $66aa: $00
	ld   bc, $0301                                   ; $66ab: $01 $01 $03
	xor  a                                           ; $66ae: $af
	inc  b                                           ; $66af: $04
	ld   d, $02                                      ; $66b0: $16 $02
	xor  b                                           ; $66b2: $a8
	ld   a, h                                        ; $66b3: $7c
	pop  bc                                          ; $66b4: $c1
	and  l                                           ; $66b5: $a5
	and  $5a                                         ; $66b6: $e6 $5a
	ld   d, b                                        ; $66b8: $50
	sbc  c                                           ; $66b9: $99
	halt                                             ; $66ba: $76
	dec  c                                           ; $66bb: $0d
	dec  b                                           ; $66bc: $05
	pop  de                                          ; $66bd: $d1
	ld   [hl], c                                     ; $66be: $71
	ld   l, l                                        ; $66bf: $6d
	and  c                                           ; $66c0: $a1
	ld   [hl], l                                     ; $66c1: $75
	ld   h, a                                        ; $66c2: $67
	ld   e, d                                        ; $66c3: $5a
	rst  $38                                         ; $66c4: $ff
	rst  $38                                         ; $66c5: $ff
	dec  c                                           ; $66c6: $0d
	nop                                              ; $66c7: $00
	ld   a, [bc]                                     ; $66c8: $0a
	inc  e                                           ; $66c9: $1c
	ld   b, $05                                      ; $66ca: $06 $05
	dec  b                                           ; $66cc: $05
	dec  e                                           ; $66cd: $1d
	ld   b, b                                        ; $66ce: $40
	ld   d, $03                                      ; $66cf: $16 $03
	ld   d, $01                                      ; $66d1: $16 $01
	ld   [bc], a                                     ; $66d3: $02
	add  hl, hl                                      ; $66d4: $29
	nop                                              ; $66d5: $00
	ld   bc, $af03                                   ; $66d6: $01 $03 $af
	inc  b                                           ; $66d9: $04
	ld   d, $02                                      ; $66da: $16 $02
	xor  b                                           ; $66dc: $a8
	ld   a, h                                        ; $66dd: $7c
	pop  bc                                          ; $66de: $c1
	and  l                                           ; $66df: $a5
	and  $78                                         ; $66e0: $e6 $78
	and  c                                           ; $66e2: $a1
	ld   [hl], h                                     ; $66e3: $74
	dec  c                                           ; $66e4: $0d
	inc  b                                           ; $66e5: $04
	dec  hl                                          ; $66e6: $2b
	sub  a                                           ; $66e7: $97
	ld   a, b                                        ; $66e8: $78
	ld   d, d                                        ; $66e9: $52
	sub  [hl]                                        ; $66ea: $96
	sbc  a                                           ; $66eb: $9f
	dec  c                                           ; $66ec: $0d
	inc  b                                           ; $66ed: $04
	adc  h                                           ; $66ee: $8c
	ld   a, b                                        ; $66ef: $78
	ld   d, h                                        ; $66f0: $54
	ld   l, l                                        ; $66f1: $6d
	ld   e, d                                        ; $66f2: $5a
	ld   d, d                                        ; $66f3: $52
	ld   e, c                                        ; $66f4: $59
	ld   e, a                                        ; $66f5: $5f
	and  c                                           ; $66f6: $a1
	ld   a, b                                        ; $66f7: $78
	sub  [hl]                                        ; $66f8: $96
	ld   a, b                                        ; $66f9: $78
	sbc  a                                           ; $66fa: $9f
	dec  c                                           ; $66fb: $0d
	nop                                              ; $66fc: $00
	ld   a, [bc]                                     ; $66fd: $0a
	rrca                                             ; $66fe: $0f
	ld   bc, $1d04                                   ; $66ff: $01 $04 $1d
	ld   b, b                                        ; $6702: $40
	ld   de, $1103                                   ; $6703: $11 $03 $11
	ld   bc, $2901                                   ; $6706: $01 $01 $29
	nop                                              ; $6709: $00
	ld   bc, $5490                                   ; $670a: $01 $90 $54
	sbc  [hl]                                        ; $670d: $9e
	ld   [$6300], sp                                 ; $670e: $08 $00 $63
	and  c                                           ; $6711: $a1
	sbc  a                                           ; $6712: $9f
	dec  c                                           ; $6713: $0d
	ld   l, e                                        ; $6714: $6b
	ld   d, h                                        ; $6715: $54
	ld   h, [hl]                                     ; $6716: $66
	sub  c                                           ; $6717: $91
	ld   a, b                                        ; $6718: $78
	ld   d, d                                        ; $6719: $52
	ld   [hl], l                                     ; $671a: $75
	ld   h, l                                        ; $671b: $65
	sub  l                                           ; $671c: $95
	sbc  a                                           ; $671d: $9f
	dec  c                                           ; $671e: $0d
	nop                                              ; $671f: $00
	ld   a, [bc]                                     ; $6720: $0a
	ld   b, $41                                      ; $6721: $06 $41
	dec  b                                           ; $6723: $05
	inc  e                                           ; $6724: $1c
	ld   b, $00                                      ; $6725: $06 $00
	nop                                              ; $6727: $00
	ld   bc, $ffff                                   ; $6728: $01 $ff $ff
	and  c                                           ; $672b: $a1
	ld   sp, hl                                      ; $672c: $f9
	dec  c                                           ; $672d: $0d
	ld   [hl], a                                     ; $672e: $77
	ld   d, h                                        ; $672f: $54
	ld   h, l                                        ; $6730: $65
	ld   l, l                                        ; $6731: $6d
	and  c                                           ; $6732: $a1
	ld   l, [hl]                                     ; $6733: $6e
	ld   sp, hl                                      ; $6734: $f9
	dec  c                                           ; $6735: $0d
	nop                                              ; $6736: $00
	ld   a, [bc]                                     ; $6737: $0a
	rrca                                             ; $6738: $0f
	ld   bc, $1d04                                   ; $6739: $01 $04 $1d
	ld   b, b                                        ; $673c: $40
	ld   de, $1103                                   ; $673d: $11 $03 $11
	ld   bc, $2901                                   ; $6740: $01 $01 $29
	nop                                              ; $6743: $00
	ld   bc, $0008                                   ; $6744: $01 $08 $00
	ld   h, e                                        ; $6747: $63
	and  c                                           ; $6748: $a1
	sbc  a                                           ; $6749: $9f
	dec  c                                           ; $674a: $0d
	ld   h, l                                        ; $674b: $65
	ld   [hl], c                                     ; $674c: $71
	ld   e, c                                        ; $674d: $59
	sbc  b                                           ; $674e: $98
	ld   h, l                                        ; $674f: $65
	ld   [hl], h                                     ; $6750: $74
	ld   e, l                                        ; $6751: $5d
	ld   l, [hl]                                     ; $6752: $6e
	ld   h, e                                        ; $6753: $63
	ld   d, d                                        ; $6754: $52
	sub  [hl]                                        ; $6755: $96
	rst  $38                                         ; $6756: $ff
	rst  $38                                         ; $6757: $ff
	dec  c                                           ; $6758: $0d
	rst  $38                                         ; $6759: $ff
	rst  $38                                         ; $675a: $ff
	ld   h, l                                        ; $675b: $65
	ld   e, c                                        ; $675c: $59
	ld   l, l                                        ; $675d: $6d
	ld   a, b                                        ; $675e: $78
	ld   d, d                                        ; $675f: $52
	ld   [hl], l                                     ; $6760: $75
	ld   h, a                                        ; $6761: $67
	ld   a, e                                        ; $6762: $7b
	rst  $38                                         ; $6763: $ff
	rst  $38                                         ; $6764: $ff
	dec  c                                           ; $6765: $0d
	nop                                              ; $6766: $00
	ld   a, [bc]                                     ; $6767: $0a
	rrca                                             ; $6768: $0f
	ld   bc, $0102                                   ; $6769: $01 $02 $01
	xor  h                                           ; $676c: $ac
	push af                                          ; $676d: $f5
	bit  4, e                                        ; $676e: $cb $63
	and  c                                           ; $6770: $a1
	sbc  [hl]                                        ; $6771: $9e
	dec  b                                           ; $6772: $05
	and  e                                           ; $6773: $a3
	ld   [bc], a                                     ; $6774: $02
	sub  b                                           ; $6775: $90
	ld   a, b                                        ; $6776: $78
	ld   [bc], a                                     ; $6777: $02
	ld   de, $4c03                                   ; $6778: $11 $03 $4c
	and  b                                           ; $677b: $a0
	dec  c                                           ; $677c: $0d
	inc  b                                           ; $677d: $04
	sub  a                                           ; $677e: $97
	ld   h, l                                        ; $677f: $65
	ld   [hl], h                                     ; $6780: $74
	ld   [bc], a                                     ; $6781: $02
	inc  [hl]                                        ; $6782: $34
	ld   h, e                                        ; $6783: $63
	ld   d, d                                        ; $6784: $52
	sbc  a                                           ; $6785: $9f
	dec  c                                           ; $6786: $0d
	nop                                              ; $6787: $00
	ld   a, [bc]                                     ; $6788: $0a
	dec  c                                           ; $6789: $0d
	ld   b, $06                                      ; $678a: $06 $06
	ld   bc, $546b                                   ; $678c: $01 $6b $54
	sbc  [hl]                                        ; $678f: $9e
	ld   l, e                                        ; $6790: $6b
	ld   h, c                                        ; $6791: $61
	ld   [hl], l                                     ; $6792: $75
	xor  h                                           ; $6793: $ac
	ei                                               ; $6794: $fb
	rst  ToBoot                                         ; $6795: $c7
	push af                                          ; $6796: $f5
	ld   a, h                                        ; $6797: $7c
	inc  bc                                          ; $6798: $03
	sbc  $9d                                         ; $6799: $de $9d
	sbc  b                                           ; $679b: $98
	dec  c                                           ; $679c: $0d
	ld   a, c                                        ; $679d: $79
	ld   h, l                                        ; $679e: $65
	ld   [hl], h                                     ; $679f: $74
	ld   d, d                                        ; $67a0: $52
	sbc  c                                           ; $67a1: $99
	sub  d                                           ; $67a2: $92
	ld   [hl], d                                     ; $67a3: $72
	ld   [hl], l                                     ; $67a4: $75
	ld   h, a                                        ; $67a5: $67
	sbc  a                                           ; $67a6: $9f
	dec  c                                           ; $67a7: $0d
	nop                                              ; $67a8: $00
	ld   a, [bc]                                     ; $67a9: $0a
	inc  e                                           ; $67aa: $1c
	ld   b, $05                                      ; $67ab: $06 $05
	dec  b                                           ; $67ad: $05
	ld   bc, $fc50                                   ; $67ae: $01 $50 $fc
	ld   d, b                                        ; $67b1: $50
	sbc  [hl]                                        ; $67b2: $9e
	pop  de                                          ; $67b3: $d1
	xor  $6d                                         ; $67b4: $ee $6d
	ld   e, c                                        ; $67b6: $59
	sbc  a                                           ; $67b7: $9f
	dec  c                                           ; $67b8: $0d
	adc  h                                           ; $67b9: $8c
	ld   [hl], c                                     ; $67ba: $71
	ld   l, l                                        ; $67bb: $6d
	ld   e, l                                        ; $67bc: $5d
	ld   h, e                                        ; $67bd: $63
	ld   e, l                                        ; $67be: $5d
	sub  a                                           ; $67bf: $97
	ld   a, c                                        ; $67c0: $79
	sub  c                                           ; $67c1: $91
	ei                                               ; $67c2: $fb
	dec  c                                           ; $67c3: $0d
	ld   e, c                                        ; $67c4: $59
	ld   a, b                                        ; $67c5: $78
	sbc  l                                           ; $67c6: $9d
	ld   a, e                                        ; $67c7: $7b
	ei                                               ; $67c8: $fb
	ld   a, b                                        ; $67c9: $78
	rst  $38                                         ; $67ca: $ff
	rst  $38                                         ; $67cb: $ff
	adc  c                                           ; $67cc: $89
	sub  a                                           ; $67cd: $97
	sub  [hl]                                        ; $67ce: $96
	sbc  a                                           ; $67cf: $9f
	dec  c                                           ; $67d0: $0d
	nop                                              ; $67d1: $00
	ld   a, [bc]                                     ; $67d2: $0a
	rrca                                             ; $67d3: $0f
	ld   bc, $0102                                   ; $67d4: $01 $02 $01
	ld   [bc], a                                     ; $67d7: $02
	and  l                                           ; $67d8: $a5
	ld   [bc], a                                     ; $67d9: $02
	xor  d                                           ; $67da: $aa
	sbc  [hl]                                        ; $67db: $9e
	inc  bc                                          ; $67dc: $03
	ld   c, [hl]                                     ; $67dd: $4e
	inc  bc                                          ; $67de: $03
	ld   l, e                                        ; $67df: $6b
	ld   a, c                                        ; $67e0: $79
	inc  bc                                          ; $67e1: $03
	and  b                                           ; $67e2: $a0
	ld   l, a                                        ; $67e3: $6f
	inc  bc                                          ; $67e4: $03
	add  b                                           ; $67e5: $80
	ld   h, e                                        ; $67e6: $63
	ld   a, b                                        ; $67e7: $78
	ld   d, d                                        ; $67e8: $52
	ld   [hl], l                                     ; $67e9: $75
	dec  c                                           ; $67ea: $0d
	ld   e, l                                        ; $67eb: $5d
	ld   l, [hl]                                     ; $67ec: $6e
	ld   h, e                                        ; $67ed: $63
	ld   d, d                                        ; $67ee: $52
	ld   a, e                                        ; $67ef: $7b
	sbc  a                                           ; $67f0: $9f
	xor  h                                           ; $67f1: $ac
	push af                                          ; $67f2: $f5
	bit  4, e                                        ; $67f3: $cb $63
	and  c                                           ; $67f5: $a1
	sbc  a                                           ; $67f6: $9f
	dec  c                                           ; $67f7: $0d
	nop                                              ; $67f8: $00
	ld   a, [bc]                                     ; $67f9: $0a
	dec  c                                           ; $67fa: $0d
	nop                                              ; $67fb: $00
	nop                                              ; $67fc: $00
	rrca                                             ; $67fd: $0f
	nop                                              ; $67fe: $00
	ld   bc, $020c                                   ; $67ff: $01 $0c $02
	ld   c, $48                                      ; $6802: $0e $48
	inc  e                                           ; $6804: $1c
	ld   bc, $0000                                   ; $6805: $01 $00 $00
	ld   bc, $5063                                   ; $6808: $01 $63 $50
	sbc  [hl]                                        ; $680b: $9e
	ld   [$6300], sp                                 ; $680c: $08 $00 $63
	and  c                                           ; $680f: $a1
	sbc  a                                           ; $6810: $9f
	dec  c                                           ; $6811: $0d
	inc  bc                                          ; $6812: $03
	ld   l, b                                        ; $6813: $68
	ld   a, c                                        ; $6814: $79
	ld   [bc], a                                     ; $6815: $02
	ld   a, a                                        ; $6816: $7f
	ld   e, e                                        ; $6817: $5b
	adc  h                                           ; $6818: $8c
	ld   h, a                                        ; $6819: $67
	sub  [hl]                                        ; $681a: $96
	sbc  a                                           ; $681b: $9f
	dec  c                                           ; $681c: $0d
	nop                                              ; $681d: $00
	ld   a, [bc]                                     ; $681e: $0a
	dec  c                                           ; $681f: $0d
	nop                                              ; $6820: $00
	nop                                              ; $6821: $00
	rrca                                             ; $6822: $0f
	nop                                              ; $6823: $00
	ld   bc, $0a06                                   ; $6824: $01 $06 $0a
	add  hl, bc                                      ; $6827: $09
	rrca                                             ; $6828: $0f
	nop                                              ; $6829: $00
	ld   bc, $ac01                                   ; $682a: $01 $01 $ac
	push af                                          ; $682d: $f5
	bit  4, e                                        ; $682e: $cb $63
	and  c                                           ; $6830: $a1
	sbc  [hl]                                        ; $6831: $9e
	dec  b                                           ; $6832: $05
	and  e                                           ; $6833: $a3
	ld   [bc], a                                     ; $6834: $02
	sub  b                                           ; $6835: $90
	ld   a, b                                        ; $6836: $78
	ld   [bc], a                                     ; $6837: $02
	ld   de, $4c03                                   ; $6838: $11 $03 $4c
	and  b                                           ; $683b: $a0
	dec  c                                           ; $683c: $0d
	inc  b                                           ; $683d: $04
	sub  a                                           ; $683e: $97
	ld   h, l                                        ; $683f: $65
	ld   [hl], h                                     ; $6840: $74
	ld   [bc], a                                     ; $6841: $02
	inc  [hl]                                        ; $6842: $34
	ld   h, e                                        ; $6843: $63
	ld   d, d                                        ; $6844: $52
	sbc  a                                           ; $6845: $9f
	dec  c                                           ; $6846: $0d
	nop                                              ; $6847: $00
	ld   a, [bc]                                     ; $6848: $0a
	inc  e                                           ; $6849: $1c
	ld   b, $06                                      ; $684a: $06 $06
	ld   b, $01                                      ; $684c: $06 $01
	ld   a, b                                        ; $684e: $78
	sbc  [hl]                                        ; $684f: $9e
	ld   a, b                                        ; $6850: $78
	and  c                                           ; $6851: $a1
	ld   a, h                                        ; $6852: $7c
	ld   h, c                                        ; $6853: $61
	halt                                             ; $6854: $76
	ld   l, [hl]                                     ; $6855: $6e
	ld   sp, hl                                      ; $6856: $f9
	dec  c                                           ; $6857: $0d
	ld   d, b                                        ; $6858: $50
	sbc  [hl]                                        ; $6859: $9e
	ld   d, b                                        ; $685a: $50
	ld   l, l                                        ; $685b: $6d
	ld   d, d                                        ; $685c: $52
	sbc  [hl]                                        ; $685d: $9e
	dec  b                                           ; $685e: $05
	and  e                                           ; $685f: $a3
	ld   [bc], a                                     ; $6860: $02
	sub  b                                           ; $6861: $90
	ld   a, b                                        ; $6862: $78
	ld   [bc], a                                     ; $6863: $02
	ld   de, $4c03                                   ; $6864: $11 $03 $4c
	ld   a, b                                        ; $6867: $78
	and  c                                           ; $6868: $a1
	ld   [hl], h                                     ; $6869: $74
	dec  c                                           ; $686a: $0d
	inc  b                                           ; $686b: $04
	dec  hl                                          ; $686c: $2b
	sub  a                                           ; $686d: $97
	ld   a, b                                        ; $686e: $78
	ld   d, d                                        ; $686f: $52
	ld   l, d                                        ; $6870: $6a
	sbc  a                                           ; $6871: $9f
	dec  c                                           ; $6872: $0d
	nop                                              ; $6873: $00
	ld   a, [bc]                                     ; $6874: $0a
	add  hl, de                                      ; $6875: $19
	dec  b                                           ; $6876: $05
	inc  bc                                          ; $6877: $03
	xor  h                                           ; $6878: $ac
	ei                                               ; $6879: $fb
	rst  ToBoot                                         ; $687a: $c7
	push af                                          ; $687b: $f5
	inc  bc                                          ; $687c: $03
	sbc  $9d                                         ; $687d: $de $9d
	sbc  b                                           ; $687f: $98
	ld   a, c                                        ; $6880: $79
	ld   h, l                                        ; $6881: $65
	ld   [hl], h                                     ; $6882: $74
	sbc  c                                           ; $6883: $99
	ld   [hl], l                                     ; $6884: $75
	ld   h, l                                        ; $6885: $65
	sub  l                                           ; $6886: $95
	nop                                              ; $6887: $00
	nop                                              ; $6888: $00
	dec  b                                           ; $6889: $05
	and  h                                           ; $688a: $a4
	add  e                                           ; $688b: $83
	ld   e, e                                        ; $688c: $5b
	ld   a, c                                        ; $688d: $79
	ld   h, l                                        ; $688e: $65
	ld   [hl], h                                     ; $688f: $74
	sbc  c                                           ; $6890: $99
	ld   [hl], l                                     ; $6891: $75
	ld   h, l                                        ; $6892: $65
	sub  l                                           ; $6893: $95
	nop                                              ; $6894: $00
	ld   bc, $ef04                                   ; $6895: $01 $04 $ef
	ld   a, b                                        ; $6898: $78
	inc  b                                           ; $6899: $04
	rst  $28                                         ; $689a: $ef
	ld   a, b                                        ; $689b: $78
	inc  b                                           ; $689c: $04
	rlca                                             ; $689d: $07
	ld   [hl], h                                     ; $689e: $74
	sbc  c                                           ; $689f: $99
	ld   [hl], l                                     ; $68a0: $75
	ld   h, l                                        ; $68a1: $65
	sub  l                                           ; $68a2: $95
	nop                                              ; $68a3: $00
	ld   [bc], a                                     ; $68a4: $02
	rlca                                             ; $68a5: $07
	daa                                              ; $68a6: $27
	ld   [$0302], sp                                 ; $68a7: $08 $02 $03
	ld   bc, $2000                                   ; $68aa: $01 $00 $20
	nop                                              ; $68ad: $00
	rlca                                             ; $68ae: $07
	sbc  h                                           ; $68af: $9c
	ld   b, $02                                      ; $68b0: $06 $02
	inc  bc                                          ; $68b2: $03
	ld   bc, $2001                                   ; $68b3: $01 $01 $20
	nop                                              ; $68b6: $00
	rlca                                             ; $68b7: $07
	db   $ec                                         ; $68b8: $ec
	ld   b, $02                                      ; $68b9: $06 $02
	inc  bc                                          ; $68bb: $03
	ld   bc, $2002                                   ; $68bc: $01 $02 $20
	nop                                              ; $68bf: $00
	ld   b, $74                                      ; $68c0: $06 $74
	rlca                                             ; $68c2: $07
	rrca                                             ; $68c3: $0f
	nop                                              ; $68c4: $00
	ld   bc, $0501                                   ; $68c5: $01 $01 $05
	and  h                                           ; $68c8: $a4
	add  e                                           ; $68c9: $83
	ld   e, e                                        ; $68ca: $5b
	inc  bc                                          ; $68cb: $03
	sbc  $9d                                         ; $68cc: $de $9d
	sbc  b                                           ; $68ce: $98
	ld   a, c                                        ; $68cf: $79
	dec  c                                           ; $68d0: $0d
	ld   h, l                                        ; $68d1: $65
	ld   [hl], h                                     ; $68d2: $74
	sbc  c                                           ; $68d3: $99
	ld   [hl], l                                     ; $68d4: $75
	ld   h, l                                        ; $68d5: $65
	sub  l                                           ; $68d6: $95
	sbc  a                                           ; $68d7: $9f
	dec  c                                           ; $68d8: $0d
	nop                                              ; $68d9: $00
	ld   a, [bc]                                     ; $68da: $0a
	inc  e                                           ; $68db: $1c
	ld   b, $03                                      ; $68dc: $06 $03
	inc  bc                                          ; $68de: $03
	dec  e                                           ; $68df: $1d
	ld   b, b                                        ; $68e0: $40
	ld   d, $03                                      ; $68e1: $16 $03
	ld   d, $01                                      ; $68e3: $16 $01
	ld   bc, $0029                                   ; $68e5: $01 $29 $00
	ld   bc, $a405                                   ; $68e8: $01 $05 $a4
	add  e                                           ; $68eb: $83
	ld   e, e                                        ; $68ec: $5b
	ld   sp, hl                                      ; $68ed: $f9
	db   $10                                         ; $68ee: $10
	ld   l, e                                        ; $68ef: $6b
	sbc  d                                           ; $68f0: $9a
	ld   a, l                                        ; $68f1: $7d
	ld   a, b                                        ; $68f2: $78
	ld   d, d                                        ; $68f3: $52
	ld   l, [hl]                                     ; $68f4: $6e
	sbc  e                                           ; $68f5: $9b
	sbc  a                                           ; $68f6: $9f
	dec  c                                           ; $68f7: $0d
	ld   d, b                                        ; $68f8: $50
	ld   l, l                                        ; $68f9: $6d
	ld   d, d                                        ; $68fa: $52
	ld   a, l                                        ; $68fb: $7d
	ld   l, a                                        ; $68fc: $6f
	sub  c                                           ; $68fd: $91
	and  c                                           ; $68fe: $a1
	halt                                             ; $68ff: $76
	ret  nz                                          ; $6900: $c0

	xor  e                                           ; $6901: $ab
	db   $ed                                         ; $6902: $ed
	ld   [hl], l                                     ; $6903: $75
	dec  c                                           ; $6904: $0d
	dec  b                                           ; $6905: $05
	and  h                                           ; $6906: $a4
	add  e                                           ; $6907: $83
	ld   d, d                                        ; $6908: $52
	ld   [hl], h                                     ; $6909: $74
	sbc  c                                           ; $690a: $99
	ld   l, d                                        ; $690b: $6a
	sbc  a                                           ; $690c: $9f
	dec  c                                           ; $690d: $0d
	nop                                              ; $690e: $00
	ld   a, [bc]                                     ; $690f: $0a
	ld   b, $4a                                      ; $6910: $06 $4a
	rlca                                             ; $6912: $07
	rrca                                             ; $6913: $0f
	nop                                              ; $6914: $00
	ld   bc, $0401                                   ; $6915: $01 $01 $04
	rst  $28                                         ; $6918: $ef
	ld   a, b                                        ; $6919: $78
	inc  b                                           ; $691a: $04
	rst  $28                                         ; $691b: $ef
	ld   a, b                                        ; $691c: $78
	inc  b                                           ; $691d: $04
	rlca                                             ; $691e: $07
	ld   [hl], h                                     ; $691f: $74
	ld   a, l                                        ; $6920: $7d
	dec  c                                           ; $6921: $0d
	ld   e, c                                        ; $6922: $59
	ld   e, d                                        ; $6923: $5a
	adc  l                                           ; $6924: $8d
	ld   a, h                                        ; $6925: $7c
	inc  bc                                          ; $6926: $03
	ld   c, a                                        ; $6927: $4f
	ld   [hl], l                                     ; $6928: $75
	call z, $cce6                                    ; $6929: $cc $e6 $cc
	and  $0d                                         ; $692c: $e6 $0d
	ld   h, l                                        ; $692e: $65
	ld   [hl], h                                     ; $692f: $74
	sbc  c                                           ; $6930: $99
	and  c                                           ; $6931: $a1
	ld   [hl], l                                     ; $6932: $75
	ld   h, l                                        ; $6933: $65
	sub  l                                           ; $6934: $95
	sbc  a                                           ; $6935: $9f
	dec  c                                           ; $6936: $0d
	nop                                              ; $6937: $00
	ld   a, [bc]                                     ; $6938: $0a
	inc  e                                           ; $6939: $1c
	ld   b, $02                                      ; $693a: $06 $02
	ld   [bc], a                                     ; $693c: $02
	dec  e                                           ; $693d: $1d
	ld   b, b                                        ; $693e: $40
	ld   d, $03                                      ; $693f: $16 $03
	ld   d, $01                                      ; $6941: $16 $01
	ld   bc, $0029                                   ; $6943: $01 $29 $00
	ld   bc, $a178                                   ; $6946: $01 $78 $a1
	ld   l, [hl]                                     ; $6949: $6e
	sub  [hl]                                        ; $694a: $96
	ld   l, e                                        ; $694b: $6b
	sbc  d                                           ; $694c: $9a
	ld   a, l                                        ; $694d: $7d
	sbc  a                                           ; $694e: $9f
	dec  c                                           ; $694f: $0d
	ld   d, b                                        ; $6950: $50
	ld   l, l                                        ; $6951: $6d
	ld   d, d                                        ; $6952: $52
	ld   a, l                                        ; $6953: $7d
	sbc  [hl]                                        ; $6954: $9e
	ld   l, e                                        ; $6955: $6b
	and  c                                           ; $6956: $a1
	ld   a, b                                        ; $6957: $78
	ret                                              ; $6958: $c9


	db   $ec                                         ; $6959: $ec
	xor  l                                           ; $695a: $ad
	db   $eb                                         ; $695b: $eb
	inc  bc                                          ; $695c: $03
	ld   l, [hl]                                     ; $695d: $6e
	dec  c                                           ; $695e: $0d
	adc  l                                           ; $695f: $8d
	ld   l, l                                        ; $6960: $6d
	ld   d, d                                        ; $6961: $52
	ld   a, b                                        ; $6962: $78
	ld   h, c                                        ; $6963: $61
	halt                                             ; $6964: $76
	ld   a, l                                        ; $6965: $7d
	ld   h, l                                        ; $6966: $65
	ld   a, e                                        ; $6967: $7b
	ei                                               ; $6968: $fb
	sub  [hl]                                        ; $6969: $96
	sbc  a                                           ; $696a: $9f
	dec  c                                           ; $696b: $0d
	nop                                              ; $696c: $00
	ld   a, [bc]                                     ; $696d: $0a
	ld   b, $4a                                      ; $696e: $06 $4a
	rlca                                             ; $6970: $07
	rrca                                             ; $6971: $0f
	ld   bc, $0104                              ; $6972: $01 $04 $01
	ld   [$6300], sp                                 ; $6975: $08 $00 $63
	and  c                                           ; $6978: $a1
	sbc  a                                           ; $6979: $9f
	dec  c                                           ; $697a: $0d
	ld   l, a                                        ; $697b: $6f
	ld   e, d                                        ; $697c: $5a
	ld   d, h                                        ; $697d: $54
	sbc  [hl]                                        ; $697e: $9e
	ld   l, a                                        ; $697f: $6f
	ld   e, d                                        ; $6980: $5a
	ld   d, h                                        ; $6981: $54
	sbc  a                                           ; $6982: $9f
	xor  h                                           ; $6983: $ac
	ei                                               ; $6984: $fb
	rst  ToBoot                                         ; $6985: $c7
	push af                                          ; $6986: $f5
	ld   a, h                                        ; $6987: $7c
	dec  c                                           ; $6988: $0d
	inc  bc                                          ; $6989: $03
	sbc  $9d                                         ; $698a: $de $9d
	sbc  b                                           ; $698c: $98
	ld   [hl], l                                     ; $698d: $75
	ld   h, a                                        ; $698e: $67
	sub  [hl]                                        ; $698f: $96
	sbc  a                                           ; $6990: $9f
	ld   e, e                                        ; $6991: $5b
	ld   [hl], c                                     ; $6992: $71
	halt                                             ; $6993: $76
	sbc  a                                           ; $6994: $9f
	dec  c                                           ; $6995: $0d
	nop                                              ; $6996: $00
	ld   a, [bc]                                     ; $6997: $0a
	ld   b, $a9                                      ; $6998: $06 $a9
	rlca                                             ; $699a: $07
	rrca                                             ; $699b: $0f
	nop                                              ; $699c: $00
	ld   bc, $ff01                                   ; $699d: $01 $01 $ff
	rst  $38                                         ; $69a0: $ff
	rst  $38                                         ; $69a1: $ff
	rst  $38                                         ; $69a2: $ff
	rst  $38                                         ; $69a3: $ff
	rst  $38                                         ; $69a4: $ff
	rst  $38                                         ; $69a5: $ff
	rst  $38                                         ; $69a6: $ff
	rst  $38                                         ; $69a7: $ff
	rst  $38                                         ; $69a8: $ff
	dec  c                                           ; $69a9: $0d
	nop                                              ; $69aa: $00
	ld   a, [bc]                                     ; $69ab: $0a
	rrca                                             ; $69ac: $0f
	ld   bc, $0102                                   ; $69ad: $01 $02 $01
	ld   [$6300], sp                                 ; $69b0: $08 $00 $63
	and  c                                           ; $69b3: $a1
	sbc  a                                           ; $69b4: $9f
	dec  c                                           ; $69b5: $0d
	ld   l, e                                        ; $69b6: $6b
	ld   h, c                                        ; $69b7: $61
	ld   [hl], l                                     ; $69b8: $75
	xor  h                                           ; $69b9: $ac
	ei                                               ; $69ba: $fb
	rst  ToBoot                                         ; $69bb: $c7
	push af                                          ; $69bc: $f5
	ld   a, h                                        ; $69bd: $7c
	inc  bc                                          ; $69be: $03
	sbc  $9d                                         ; $69bf: $de $9d
	sbc  b                                           ; $69c1: $98
	ld   a, c                                        ; $69c2: $79
	dec  c                                           ; $69c3: $0d
	ld   h, l                                        ; $69c4: $65
	ld   [hl], h                                     ; $69c5: $74
	sbc  c                                           ; $69c6: $99
	sub  d                                           ; $69c7: $92
	ld   [hl], d                                     ; $69c8: $72
	ld   [hl], l                                     ; $69c9: $75
	ld   h, a                                        ; $69ca: $67
	sub  [hl]                                        ; $69cb: $96
	sbc  a                                           ; $69cc: $9f
	dec  c                                           ; $69cd: $0d
	nop                                              ; $69ce: $00
	ld   a, [bc]                                     ; $69cf: $0a
	inc  e                                           ; $69d0: $1c
	ld   b, $05                                      ; $69d1: $06 $05
	dec  b                                           ; $69d3: $05
	ld   bc, $a178                                   ; $69d4: $01 $78 $a1
	ld   l, [hl]                                     ; $69d7: $6e
	sub  [hl]                                        ; $69d8: $96
	sbc  [hl]                                        ; $69d9: $9e
	ld   h, e                                        ; $69da: $63
	ld   e, l                                        ; $69db: $5d
	sub  a                                           ; $69dc: $97
	db   $fc                                         ; $69dd: $fc
	sbc  a                                           ; $69de: $9f
	dec  c                                           ; $69df: $0d
	sbc  l                                           ; $69e0: $9d
	ld   e, c                                        ; $69e1: $59
	ld   [hl], c                                     ; $69e2: $71
	ld   l, l                                        ; $69e3: $6d
	sub  [hl]                                        ; $69e4: $96
	sbc  [hl]                                        ; $69e5: $9e
	inc  b                                           ; $69e6: $04
	sub  a                                           ; $69e7: $97
	ld   h, a                                        ; $69e8: $67
	sub  [hl]                                        ; $69e9: $96
	sbc  a                                           ; $69ea: $9f
	dec  c                                           ; $69eb: $0d
	ld   a, l                                        ; $69ec: $7d
	ld   d, d                                        ; $69ed: $52
	sbc  a                                           ; $69ee: $9f
	ld   [bc], a                                     ; $69ef: $02
	jr   z, @+$5b                                    ; $69f0: $28 $59

	ld   [hl], c                                     ; $69f2: $71
	ld   l, l                                        ; $69f3: $6d
	ld   a, b                                        ; $69f4: $78
	sbc  a                                           ; $69f5: $9f
	dec  c                                           ; $69f6: $0d
	nop                                              ; $69f7: $00
	ld   a, [bc]                                     ; $69f8: $0a
	rrca                                             ; $69f9: $0f
	ld   bc, $0102                                   ; $69fa: $01 $02 $01
	ld   [bc], a                                     ; $69fd: $02
	and  l                                           ; $69fe: $a5
	ld   [bc], a                                     ; $69ff: $02
	xor  d                                           ; $6a00: $aa
	sbc  [hl]                                        ; $6a01: $9e
	inc  bc                                          ; $6a02: $03
	ld   c, [hl]                                     ; $6a03: $4e
	inc  bc                                          ; $6a04: $03
	ld   l, e                                        ; $6a05: $6b
	ld   a, c                                        ; $6a06: $79
	inc  bc                                          ; $6a07: $03
	and  b                                           ; $6a08: $a0
	ld   l, a                                        ; $6a09: $6f
	inc  bc                                          ; $6a0a: $03
	add  b                                           ; $6a0b: $80
	ld   h, e                                        ; $6a0c: $63
	ld   a, b                                        ; $6a0d: $78
	ld   d, d                                        ; $6a0e: $52
	ld   [hl], l                                     ; $6a0f: $75
	dec  c                                           ; $6a10: $0d
	ld   e, l                                        ; $6a11: $5d
	ld   l, [hl]                                     ; $6a12: $6e
	ld   h, e                                        ; $6a13: $63
	ld   d, d                                        ; $6a14: $52
	ld   a, e                                        ; $6a15: $7b
	sbc  a                                           ; $6a16: $9f
	xor  h                                           ; $6a17: $ac
	push af                                          ; $6a18: $f5
	bit  4, e                                        ; $6a19: $cb $63
	and  c                                           ; $6a1b: $a1
	sbc  a                                           ; $6a1c: $9f
	dec  c                                           ; $6a1d: $0d
	nop                                              ; $6a1e: $00
	ld   a, [bc]                                     ; $6a1f: $0a
	dec  c                                           ; $6a20: $0d
	nop                                              ; $6a21: $00
	nop                                              ; $6a22: $00
	rrca                                             ; $6a23: $0f
	nop                                              ; $6a24: $00
	ld   bc, $020c                                   ; $6a25: $01 $0c $02
	ld   c, $48                                      ; $6a28: $0e $48
	inc  e                                           ; $6a2a: $1c
	ld   bc, $0000                                   ; $6a2b: $01 $00 $00
	ld   bc, $5063                                   ; $6a2e: $01 $63 $50
	sbc  [hl]                                        ; $6a31: $9e
	ld   [$6300], sp                                 ; $6a32: $08 $00 $63
	and  c                                           ; $6a35: $a1
	sbc  a                                           ; $6a36: $9f
	dec  c                                           ; $6a37: $0d
	inc  bc                                          ; $6a38: $03
	ld   l, b                                        ; $6a39: $68
	ld   a, c                                        ; $6a3a: $79
	ld   [bc], a                                     ; $6a3b: $02
	ld   a, a                                        ; $6a3c: $7f
	ld   e, e                                        ; $6a3d: $5b
	adc  h                                           ; $6a3e: $8c
	ld   h, a                                        ; $6a3f: $67
	sub  [hl]                                        ; $6a40: $96
	sbc  a                                           ; $6a41: $9f
	dec  c                                           ; $6a42: $0d
	nop                                              ; $6a43: $00
	ld   a, [bc]                                     ; $6a44: $0a
	dec  c                                           ; $6a45: $0d
	nop                                              ; $6a46: $00
	nop                                              ; $6a47: $00
	rrca                                             ; $6a48: $0f
	nop                                              ; $6a49: $00
	ld   bc, $0a06                                   ; $6a4a: $01 $06 $0a
	add  hl, bc                                      ; $6a4d: $09
	rrca                                             ; $6a4e: $0f
	nop                                              ; $6a4f: $00
	ld   bc, $ac01                                   ; $6a50: $01 $01 $ac
	push af                                          ; $6a53: $f5
	bit  4, e                                        ; $6a54: $cb $63
	and  c                                           ; $6a56: $a1
	sbc  a                                           ; $6a57: $9f
	dec  b                                           ; $6a58: $05
	and  e                                           ; $6a59: $a3
	ld   [bc], a                                     ; $6a5a: $02
	sub  b                                           ; $6a5b: $90
	ld   a, b                                        ; $6a5c: $78
	ld   [bc], a                                     ; $6a5d: $02
	ld   de, $4c03                                   ; $6a5e: $11 $03 $4c
	and  b                                           ; $6a61: $a0
	sbc  [hl]                                        ; $6a62: $9e
	dec  c                                           ; $6a63: $0d
	xor  h                                           ; $6a64: $ac
	ei                                               ; $6a65: $fb
	rst  ToBoot                                         ; $6a66: $c7
	push af                                          ; $6a67: $f5
	inc  bc                                          ; $6a68: $03
	sbc  $9d                                         ; $6a69: $de $9d
	sbc  b                                           ; $6a6b: $98
	ld   a, c                                        ; $6a6c: $79
	dec  c                                           ; $6a6d: $0d
	inc  bc                                          ; $6a6e: $03
	xor  [hl]                                        ; $6a6f: $ae
	ld   [hl], c                                     ; $6a70: $71
	ld   [hl], h                                     ; $6a71: $74
	ld   d, d                                        ; $6a72: $52
	sbc  c                                           ; $6a73: $99
	ld   [hl], l                                     ; $6a74: $75
	ld   h, l                                        ; $6a75: $65
	sub  l                                           ; $6a76: $95
	ld   d, h                                        ; $6a77: $54
	sbc  a                                           ; $6a78: $9f
	dec  c                                           ; $6a79: $0d
	nop                                              ; $6a7a: $00
	ld   a, [bc]                                     ; $6a7b: $0a
	inc  e                                           ; $6a7c: $1c
	ld   b, $03                                      ; $6a7d: $06 $03
	inc  bc                                          ; $6a7f: $03
	ld   bc, $9eaf                                   ; $6a80: $01 $af $9e
	xor  a                                           ; $6a83: $af
	or   b                                           ; $6a84: $b0
	call nz, $0dfa                                   ; $6a85: $c4 $fa $0d
	pop  de                                          ; $6a88: $d1
	sbc  [hl]                                        ; $6a89: $9e
	pop  de                                          ; $6a8a: $d1
	xor  $6d                                         ; $6a8b: $ee $6d
	ld   e, c                                        ; $6a8d: $59
	ld   a, [$a30d]                                  ; $6a8e: $fa $0d $a3
	ret  nc                                          ; $6a91: $d0

	ret  nc                                          ; $6a92: $d0

	ret  nc                                          ; $6a93: $d0

	ret  nc                                          ; $6a94: $d0

	rst  $38                                         ; $6a95: $ff
	rst  $38                                         ; $6a96: $ff
	dec  c                                           ; $6a97: $0d
	nop                                              ; $6a98: $00
	ld   a, [bc]                                     ; $6a99: $0a
	inc  e                                           ; $6a9a: $1c
	ld   b, $04                                      ; $6a9b: $06 $04
	inc  b                                           ; $6a9d: $04
	ld   bc, $527d                                   ; $6a9e: $01 $7d $52
	sbc  a                                           ; $6aa1: $9f
	inc  b                                           ; $6aa2: $04
	sub  a                                           ; $6aa3: $97
	ld   h, l                                        ; $6aa4: $65
	adc  h                                           ; $6aa5: $8c
	ld   h, a                                        ; $6aa6: $67
	sbc  a                                           ; $6aa7: $9f
	dec  c                                           ; $6aa8: $0d
	ld   h, d                                        ; $6aa9: $62
	adc  a                                           ; $6aaa: $8f
	and  c                                           ; $6aab: $a1
	ld   a, b                                        ; $6aac: $78
	ld   h, e                                        ; $6aad: $63
	ld   d, d                                        ; $6aae: $52
	sbc  a                                           ; $6aaf: $9f
	dec  c                                           ; $6ab0: $0d
	nop                                              ; $6ab1: $00
	ld   a, [bc]                                     ; $6ab2: $0a
	rrca                                             ; $6ab3: $0f
	ld   bc, $0100                                   ; $6ab4: $01 $00 $01
	ld   [bc], a                                     ; $6ab7: $02
	and  l                                           ; $6ab8: $a5
	ld   [bc], a                                     ; $6ab9: $02
	xor  d                                           ; $6aba: $aa
	sbc  [hl]                                        ; $6abb: $9e
	inc  bc                                          ; $6abc: $03
	ld   c, [hl]                                     ; $6abd: $4e
	inc  bc                                          ; $6abe: $03
	ld   l, e                                        ; $6abf: $6b
	ld   a, c                                        ; $6ac0: $79
	inc  bc                                          ; $6ac1: $03
	and  b                                           ; $6ac2: $a0
	ld   l, a                                        ; $6ac3: $6f
	inc  bc                                          ; $6ac4: $03
	add  b                                           ; $6ac5: $80
	ld   h, e                                        ; $6ac6: $63
	ld   a, b                                        ; $6ac7: $78
	ld   d, d                                        ; $6ac8: $52
	ld   [hl], l                                     ; $6ac9: $75
	dec  c                                           ; $6aca: $0d
	ld   e, l                                        ; $6acb: $5d
	ld   l, [hl]                                     ; $6acc: $6e
	ld   h, e                                        ; $6acd: $63
	ld   d, d                                        ; $6ace: $52
	ld   a, e                                        ; $6acf: $7b
	sbc  a                                           ; $6ad0: $9f
	xor  h                                           ; $6ad1: $ac
	push af                                          ; $6ad2: $f5
	bit  4, e                                        ; $6ad3: $cb $63
	and  c                                           ; $6ad5: $a1
	sbc  a                                           ; $6ad6: $9f
	dec  c                                           ; $6ad7: $0d
	nop                                              ; $6ad8: $00
	ld   a, [bc]                                     ; $6ad9: $0a
	dec  c                                           ; $6ada: $0d
	nop                                              ; $6adb: $00
	nop                                              ; $6adc: $00
	rrca                                             ; $6add: $0f
	nop                                              ; $6ade: $00
	ld   bc, $020c                                   ; $6adf: $01 $0c $02
	ld   c, $48                                      ; $6ae2: $0e $48
	inc  e                                           ; $6ae4: $1c
	ld   bc, $0101                                   ; $6ae5: $01 $01 $01
	dec  e                                           ; $6ae8: $1d
	ld   b, b                                        ; $6ae9: $40
	ld   de, $1103                                   ; $6aea: $11 $03 $11
	ld   bc, $2803                                   ; $6aed: $01 $03 $28
	nop                                              ; $6af0: $00
	ld   bc, $0008                                   ; $6af1: $01 $08 $00
	ld   h, e                                        ; $6af4: $63
	and  c                                           ; $6af5: $a1
	ld   h, a                                        ; $6af6: $67
	ld   h, d                                        ; $6af7: $62
	ld   d, d                                        ; $6af8: $52
	sbc  l                                           ; $6af9: $9d
	sbc  a                                           ; $6afa: $9f
	dec  c                                           ; $6afb: $0d
	ld   [bc], a                                     ; $6afc: $02
	jr   nz, @+$06                                   ; $6afd: $20 $04

	ld   e, [hl]                                     ; $6aff: $5e
	ld   [hl], l                                     ; $6b00: $75
	inc  b                                           ; $6b01: $04
	ld   c, $04                                      ; $6b02: $0e $04
	jr   jr_062_6b73                                 ; $6b04: $18 $6d

	sbc  b                                           ; $6b06: $98
	sub  [hl]                                        ; $6b07: $96
	ld   a, [$000d]                                  ; $6b08: $fa $0d $00
	ld   a, [bc]                                     ; $6b0b: $0a
	inc  e                                           ; $6b0c: $1c
	ld   bc, $0000                                   ; $6b0d: $01 $00 $00
	ld   bc, $5063                                   ; $6b10: $01 $63 $50
	sbc  [hl]                                        ; $6b13: $9e
	ld   [$6300], sp                                 ; $6b14: $08 $00 $63
	and  c                                           ; $6b17: $a1
	sbc  a                                           ; $6b18: $9f
	dec  c                                           ; $6b19: $0d
	inc  bc                                          ; $6b1a: $03
	ld   l, b                                        ; $6b1b: $68
	ld   a, c                                        ; $6b1c: $79
	ld   [bc], a                                     ; $6b1d: $02
	ld   a, a                                        ; $6b1e: $7f
	ld   e, e                                        ; $6b1f: $5b
	adc  h                                           ; $6b20: $8c
	ld   h, l                                        ; $6b21: $65
	sub  l                                           ; $6b22: $95
	ld   d, h                                        ; $6b23: $54
	sbc  a                                           ; $6b24: $9f
	dec  c                                           ; $6b25: $0d
	nop                                              ; $6b26: $00
	ld   a, [bc]                                     ; $6b27: $0a
	dec  c                                           ; $6b28: $0d
	nop                                              ; $6b29: $00
	nop                                              ; $6b2a: $00
	rrca                                             ; $6b2b: $0f
	nop                                              ; $6b2c: $00
	ld   bc, $0a06                                   ; $6b2d: $01 $06 $0a
	add  hl, bc                                      ; $6b30: $09
	inc  hl                                          ; $6b31: $23
	ld   b, [hl]                                     ; $6b32: $46
	inc  e                                           ; $6b33: $1c
	ld   bc, $0000                                   ; $6b34: $01 $00 $00
	ld   bc, $6803                                   ; $6b37: $01 $03 $68
	ld   a, l                                        ; $6b3a: $7d
	rst  JumpTable                                         ; $6b3b: $df
	db   $ec                                         ; $6b3c: $ec
	and  e                                           ; $6b3d: $a3
	ld   h, e                                        ; $6b3e: $63
	and  c                                           ; $6b3f: $a1
	ld   [hl], l                                     ; $6b40: $75
	ld   h, a                                        ; $6b41: $67
	sbc  a                                           ; $6b42: $9f
	dec  c                                           ; $6b43: $0d
	nop                                              ; $6b44: $00
	ld   a, [bc]                                     ; $6b45: $0a
	dec  c                                           ; $6b46: $0d
	nop                                              ; $6b47: $00
	nop                                              ; $6b48: $00
	rrca                                             ; $6b49: $0f
	nop                                              ; $6b4a: $00
	ld   bc, $0614                                   ; $6b4b: $01 $14 $06
	ld   bc, $df01                                   ; $6b4e: $01 $01 $df
	db   $ec                                         ; $6b51: $ec
	and  e                                           ; $6b52: $a3
	ld   h, e                                        ; $6b53: $63
	and  c                                           ; $6b54: $a1
	sbc  a                                           ; $6b55: $9f
	dec  c                                           ; $6b56: $0d
	ld   [$7500], sp                                 ; $6b57: $08 $00 $75

Jump_062_6b5a:
	ld   h, a                                        ; $6b5a: $67
	sbc  a                                           ; $6b5b: $9f
	dec  c                                           ; $6b5c: $0d
	nop                                              ; $6b5d: $00
	ld   a, [bc]                                     ; $6b5e: $0a
	inc  d                                           ; $6b5f: $14
	ld   a, [bc]                                     ; $6b60: $0a
	ld   bc, $aa0e                                   ; $6b61: $01 $0e $aa
	inc  e                                           ; $6b64: $1c
	inc  bc                                          ; $6b65: $03
	nop                                              ; $6b66: $00
	nop                                              ; $6b67: $00
	ld   bc, $9750                                   ; $6b68: $01 $50 $97
	ld   sp, hl                                      ; $6b6b: $f9
	db   $10                                         ; $6b6c: $10
	ld   [$5d00], sp                                 ; $6b6d: $08 $00 $5d
	and  c                                           ; $6b70: $a1
	sbc  a                                           ; $6b71: $9f
	dec  c                                           ; $6b72: $0d

jr_062_6b73:
	ld   h, e                                        ; $6b73: $63
	ld   e, l                                        ; $6b74: $5d
	sub  a                                           ; $6b75: $97
	sub  b                                           ; $6b76: $90
	ld   d, d                                        ; $6b77: $52
	ld   [hl], c                                     ; $6b78: $71
	ld   h, l                                        ; $6b79: $65
	sub  l                                           ; $6b7a: $95
	ld   h, [hl]                                     ; $6b7b: $66
	sub  c                                           ; $6b7c: $91
	ld   a, b                                        ; $6b7d: $78
	ld   d, d                                        ; $6b7e: $52
	sbc  a                                           ; $6b7f: $9f
	dec  c                                           ; $6b80: $0d
	inc  b                                           ; $6b81: $04
	ld   c, c                                        ; $6b82: $49
	ld   e, c                                        ; $6b83: $59
	inc  b                                           ; $6b84: $04
	di                                               ; $6b85: $f3
	ld   sp, hl                                      ; $6b86: $f9
	dec  c                                           ; $6b87: $0d
	nop                                              ; $6b88: $00
	ld   a, [bc]                                     ; $6b89: $0a
	rrca                                             ; $6b8a: $0f
	nop                                              ; $6b8b: $00
	ld   bc, $0201                                   ; $6b8c: $01 $01 $02
	and  l                                           ; $6b8f: $a5
	sbc  [hl]                                        ; $6b90: $9e
	ld   a, b                                        ; $6b91: $78
	ld   e, l                                        ; $6b92: $5d
	ld   a, b                                        ; $6b93: $78
	ld   [hl], c                                     ; $6b94: $71
	ld   l, l                                        ; $6b95: $6d
	inc  b                                           ; $6b96: $04
	sub  d                                           ; $6b97: $92
	and  b                                           ; $6b98: $a0
	inc  b                                           ; $6b99: $04
	inc  d                                           ; $6b9a: $14
	ld   h, l                                        ; $6b9b: $65
	ld   [hl], h                                     ; $6b9c: $74
	ld   d, d                                        ; $6b9d: $52
	sbc  c                                           ; $6b9e: $99
	dec  c                                           ; $6b9f: $0d
	ld   a, h                                        ; $6ba0: $7c
	ld   [hl], l                                     ; $6ba1: $75
	ld   h, a                                        ; $6ba2: $67
	ld   e, d                                        ; $6ba3: $5a
	rst  $38                                         ; $6ba4: $ff
	rst  $38                                         ; $6ba5: $ff
	dec  c                                           ; $6ba6: $0d
	nop                                              ; $6ba7: $00
	ld   a, [bc]                                     ; $6ba8: $0a
	ld   bc, $ecdf                                   ; $6ba9: $01 $df $ec
	and  e                                           ; $6bac: $a3
	ld   h, e                                        ; $6bad: $63
	and  c                                           ; $6bae: $a1
	sbc  [hl]                                        ; $6baf: $9e
	ld   l, a                                        ; $6bb0: $6f
	sub  l                                           ; $6bb1: $95
	ld   [hl], c                                     ; $6bb2: $71
	halt                                             ; $6bb3: $76
	inc  b                                           ; $6bb4: $04
	sub  l                                           ; $6bb5: $95
	ld   [bc], a                                     ; $6bb6: $02
	ld   hl, $0d7c                                   ; $6bb7: $21 $7c $0d
	inc  b                                           ; $6bba: $04
	dec  bc                                          ; $6bbb: $0b
	and  b                                           ; $6bbc: $a0
	ld   [bc], a                                     ; $6bbd: $02
	sub  l                                           ; $6bbe: $95
	ld   l, c                                        ; $6bbf: $69
	ld   [hl], h                                     ; $6bc0: $74
	ld   d, d                                        ; $6bc1: $52
	ld   l, l                                        ; $6bc2: $6d
	ld   l, [hl]                                     ; $6bc3: $6e
	ld   e, a                                        ; $6bc4: $5f
	adc  h                                           ; $6bc5: $8c
	ld   h, a                                        ; $6bc6: $67
	ld   e, c                                        ; $6bc7: $59
	ld   sp, hl                                      ; $6bc8: $f9
	dec  c                                           ; $6bc9: $0d
	nop                                              ; $6bca: $00
	ld   a, [bc]                                     ; $6bcb: $0a
	rrca                                             ; $6bcc: $0f
	inc  bc                                          ; $6bcd: $03
	nop                                              ; $6bce: $00
	ld   bc, $5252                                   ; $6bcf: $01 $52 $52
	sbc  l                                           ; $6bd2: $9d
	sub  [hl]                                        ; $6bd3: $96
	sbc  [hl]                                        ; $6bd4: $9e
	ld   [hl], a                                     ; $6bd5: $77
	ld   d, h                                        ; $6bd6: $54
	ld   l, h                                        ; $6bd7: $6c
	sbc  a                                           ; $6bd8: $9f
	dec  c                                           ; $6bd9: $0d
	nop                                              ; $6bda: $00
	ld   a, [bc]                                     ; $6bdb: $0a
	dec  c                                           ; $6bdc: $0d
	nop                                              ; $6bdd: $00
	nop                                              ; $6bde: $00
	rrca                                             ; $6bdf: $0f
	nop                                              ; $6be0: $00
	ld   bc, $6b01                                   ; $6be1: $01 $01 $6b
	sbc  d                                           ; $6be4: $9a
	ld   [hl], l                                     ; $6be5: $75
	ld   a, l                                        ; $6be6: $7d
	sbc  [hl]                                        ; $6be7: $9e
	inc  bc                                          ; $6be8: $03
	add  e                                           ; $6be9: $83
	dec  b                                           ; $6bea: $05
	dec  c                                           ; $6beb: $0d
	ld   h, l                                        ; $6bec: $65
	adc  h                                           ; $6bed: $8c
	ld   h, a                                        ; $6bee: $67
	sbc  a                                           ; $6bef: $9f
	dec  c                                           ; $6bf0: $0d
	ld   d, [hl]                                     ; $6bf1: $56
	db   $fc                                         ; $6bf2: $fc
	ld   [hl], c                                     ; $6bf3: $71
	halt                                             ; $6bf4: $76
	rst  $38                                         ; $6bf5: $ff
	rst  $38                                         ; $6bf6: $ff
	dec  c                                           ; $6bf7: $0d
	nop                                              ; $6bf8: $00
	ld   a, [bc]                                     ; $6bf9: $0a
	inc  c                                           ; $6bfa: $0c
	dec  bc                                          ; $6bfb: $0b
	inc  e                                           ; $6bfc: $1c
	inc  bc                                          ; $6bfd: $03
	nop                                              ; $6bfe: $00
	nop                                              ; $6bff: $00
	ld   bc, $5477                                   ; $6c00: $01 $77 $54
	ld   sp, hl                                      ; $6c03: $f9
	dec  c                                           ; $6c04: $0d
	ld   a, b                                        ; $6c05: $78
	ld   a, c                                        ; $6c06: $79
	ld   e, c                                        ; $6c07: $59
	ld   [bc], a                                     ; $6c08: $02
	sub  l                                           ; $6c09: $95
	ld   [hl], d                                     ; $6c0a: $72
	ld   e, c                                        ; $6c0b: $59
	ld   [hl], c                                     ; $6c0c: $71
	ld   l, l                                        ; $6c0d: $6d
	ld   sp, hl                                      ; $6c0e: $f9
	dec  c                                           ; $6c0f: $0d
	nop                                              ; $6c10: $00
	ld   a, [bc]                                     ; $6c11: $0a
	add  hl, de                                      ; $6c12: $19
	dec  b                                           ; $6c13: $05
	inc  bc                                          ; $6c14: $03
	inc  bc                                          ; $6c15: $03
	xor  a                                           ; $6c16: $af
	inc  b                                           ; $6c17: $04
	ld   d, $02                                      ; $6c18: $16 $02
	xor  b                                           ; $6c1a: $a8
	ld   a, h                                        ; $6c1b: $7c
	inc  b                                           ; $6c1c: $04
	adc  a                                           ; $6c1d: $8f
	nop                                              ; $6c1e: $00
	nop                                              ; $6c1f: $00
	xor  l                                           ; $6c20: $ad
	db   $eb                                         ; $6c21: $eb
	cp   d                                           ; $6c22: $ba
	ld   a, h                                        ; $6c23: $7c
	ld   e, l                                        ; $6c24: $5d
	ld   [hl], d                                     ; $6c25: $72
	nop                                              ; $6c26: $00
	ld   bc, $af03                                   ; $6c27: $01 $03 $af
	inc  b                                           ; $6c2a: $04
	ld   d, $02                                      ; $6c2b: $16 $02
	xor  b                                           ; $6c2d: $a8
	ld   a, h                                        ; $6c2e: $7c
	pop  bc                                          ; $6c2f: $c1
	and  l                                           ; $6c30: $a5
	and  $00                                         ; $6c31: $e6 $00
	ld   [bc], a                                     ; $6c33: $02
	rlca                                             ; $6c34: $07
	ld   c, $0c                                      ; $6c35: $0e $0c
	ld   [bc], a                                     ; $6c37: $02
	inc  bc                                          ; $6c38: $03
	ld   bc, $2000                                   ; $6c39: $01 $00 $20
	nop                                              ; $6c3c: $00
	rlca                                             ; $6c3d: $07
	dec  hl                                          ; $6c3e: $2b
	ld   a, [bc]                                     ; $6c3f: $0a
	ld   [bc], a                                     ; $6c40: $02
	inc  bc                                          ; $6c41: $03
	ld   bc, $2001                                   ; $6c42: $01 $01 $20
	nop                                              ; $6c45: $00
	rlca                                             ; $6c46: $07
	add  c                                           ; $6c47: $81
	ld   a, [bc]                                     ; $6c48: $0a
	ld   [bc], a                                     ; $6c49: $02
	inc  bc                                          ; $6c4a: $03
	ld   bc, $2002                                   ; $6c4b: $01 $02 $20
	nop                                              ; $6c4e: $00
	ld   b, $fd                                      ; $6c4f: $06 $fd
	ld   a, [bc]                                     ; $6c51: $0a
	rrca                                             ; $6c52: $0f
	nop                                              ; $6c53: $00
	ld   bc, $ad01                                   ; $6c54: $01 $01 $ad
	db   $eb                                         ; $6c57: $eb
	cp   d                                           ; $6c58: $ba
	ld   a, h                                        ; $6c59: $7c
	ld   e, l                                        ; $6c5a: $5d
	ld   [hl], d                                     ; $6c5b: $72
	ld   e, d                                        ; $6c5c: $5a
	ld   d, b                                        ; $6c5d: $50
	sbc  c                                           ; $6c5e: $99
	halt                                             ; $6c5f: $76
	dec  c                                           ; $6c60: $0d
	dec  b                                           ; $6c61: $05
	pop  de                                          ; $6c62: $d1
	ld   [hl], c                                     ; $6c63: $71
	ld   l, l                                        ; $6c64: $6d
	and  c                                           ; $6c65: $a1
	ld   [hl], l                                     ; $6c66: $75
	ld   h, a                                        ; $6c67: $67
	ld   e, a                                        ; $6c68: $5f
	ld   [hl], a                                     ; $6c69: $77
	rst  $38                                         ; $6c6a: $ff
	rst  $38                                         ; $6c6b: $ff
	dec  c                                           ; $6c6c: $0d
	nop                                              ; $6c6d: $00
	ld   a, [bc]                                     ; $6c6e: $0a
	inc  e                                           ; $6c6f: $1c
	inc  bc                                          ; $6c70: $03
	nop                                              ; $6c71: $00
	nop                                              ; $6c72: $00
	dec  e                                           ; $6c73: $1d
	ld   b, b                                        ; $6c74: $40
	inc  de                                          ; $6c75: $13
	inc  bc                                          ; $6c76: $03
	inc  de                                          ; $6c77: $13
	ld   bc, $2902                                   ; $6c78: $01 $02 $29
	nop                                              ; $6c7b: $00
	ld   bc, $ebad                                   ; $6c7c: $01 $ad $eb
	cp   d                                           ; $6c7f: $ba
	ld   a, h                                        ; $6c80: $7c
	ld   e, l                                        ; $6c81: $5d
	ld   [hl], d                                     ; $6c82: $72
	ld   sp, hl                                      ; $6c83: $f9
	db   $10                                         ; $6c84: $10
	dec  c                                           ; $6c85: $0d
	inc  bc                                          ; $6c86: $03
	jr   z, jr_062_6c8d                              ; $6c87: $28 $04

	ld   c, b                                        ; $6c89: $48
	ld   l, [hl]                                     ; $6c8a: $6e
	ld   e, a                                        ; $6c8b: $5f
	ld   [hl], a                                     ; $6c8c: $77

jr_062_6c8d:
	sbc  [hl]                                        ; $6c8d: $9e
	inc  bc                                          ; $6c8e: $03
	ret  z                                           ; $6c8f: $c8

	ld   a, h                                        ; $6c90: $7c
	inc  b                                           ; $6c91: $04
	sub  l                                           ; $6c92: $95
	ld   [bc], a                                     ; $6c93: $02
	ld   hl, $7d79                                   ; $6c94: $21 $79 $7d
	dec  c                                           ; $6c97: $0d
	ld   l, e                                        ; $6c98: $6b
	and  c                                           ; $6c99: $a1
	ld   a, b                                        ; $6c9a: $78
	sub  b                                           ; $6c9b: $90
	ld   a, h                                        ; $6c9c: $7c
	ld   a, b                                        ; $6c9d: $78
	ld   d, d                                        ; $6c9e: $52
	sbc  l                                           ; $6c9f: $9d
	ld   a, e                                        ; $6ca0: $7b
	sbc  a                                           ; $6ca1: $9f
	dec  c                                           ; $6ca2: $0d
	nop                                              ; $6ca3: $00
	ld   a, [bc]                                     ; $6ca4: $0a
	ld   b, $d7                                      ; $6ca5: $06 $d7
	ld   a, [bc]                                     ; $6ca7: $0a
	rrca                                             ; $6ca8: $0f
	nop                                              ; $6ca9: $00
	ld   bc, $0301                                   ; $6caa: $01 $01 $03
	xor  a                                           ; $6cad: $af
	inc  b                                           ; $6cae: $04
	ld   d, $02                                      ; $6caf: $16 $02
	xor  b                                           ; $6cb1: $a8
	ld   a, h                                        ; $6cb2: $7c
	pop  bc                                          ; $6cb3: $c1
	and  l                                           ; $6cb4: $a5
	and  $5a                                         ; $6cb5: $e6 $5a
	ld   d, b                                        ; $6cb7: $50
	sbc  c                                           ; $6cb8: $99
	halt                                             ; $6cb9: $76
	dec  c                                           ; $6cba: $0d
	dec  b                                           ; $6cbb: $05
	pop  de                                          ; $6cbc: $d1
	ld   [hl], c                                     ; $6cbd: $71
	ld   l, l                                        ; $6cbe: $6d
	and  c                                           ; $6cbf: $a1
	ld   [hl], l                                     ; $6cc0: $75
	ld   h, a                                        ; $6cc1: $67
	ld   e, a                                        ; $6cc2: $5f
	ld   [hl], a                                     ; $6cc3: $77
	rst  $38                                         ; $6cc4: $ff
	rst  $38                                         ; $6cc5: $ff
	dec  c                                           ; $6cc6: $0d
	nop                                              ; $6cc7: $00
	ld   a, [bc]                                     ; $6cc8: $0a
	inc  e                                           ; $6cc9: $1c
	inc  bc                                          ; $6cca: $03
	nop                                              ; $6ccb: $00
	nop                                              ; $6ccc: $00
	dec  e                                           ; $6ccd: $1d
	ld   b, b                                        ; $6cce: $40
	inc  de                                          ; $6ccf: $13
	inc  bc                                          ; $6cd0: $03
	inc  de                                          ; $6cd1: $13
	ld   bc, $2902                                   ; $6cd2: $01 $02 $29
	nop                                              ; $6cd5: $00
	ld   bc, $af03                                   ; $6cd6: $01 $03 $af
	inc  b                                           ; $6cd9: $04
	ld   d, $02                                      ; $6cda: $16 $02
	xor  b                                           ; $6cdc: $a8
	ld   a, h                                        ; $6cdd: $7c
	pop  bc                                          ; $6cde: $c1
	and  l                                           ; $6cdf: $a5
	and  $78                                         ; $6ce0: $e6 $78
	and  c                                           ; $6ce2: $a1
	ld   [hl], h                                     ; $6ce3: $74
	dec  c                                           ; $6ce4: $0d
	inc  b                                           ; $6ce5: $04
	dec  hl                                          ; $6ce6: $2b
	sub  a                                           ; $6ce7: $97
	ld   a, b                                        ; $6ce8: $78
	ld   d, d                                        ; $6ce9: $52
	sbc  l                                           ; $6cea: $9d
	sbc  a                                           ; $6ceb: $9f
	dec  c                                           ; $6cec: $0d
	inc  b                                           ; $6ced: $04
	ld   c, c                                        ; $6cee: $49
	ld   e, c                                        ; $6cef: $59
	ld   a, h                                        ; $6cf0: $7c
	adc  h                                           ; $6cf1: $8c
	ld   l, a                                        ; $6cf2: $6f
	ld   e, d                                        ; $6cf3: $5a
	ld   d, d                                        ; $6cf4: $52
	ld   h, [hl]                                     ; $6cf5: $66
	sub  c                                           ; $6cf6: $91
	ld   a, b                                        ; $6cf7: $78
	ld   d, d                                        ; $6cf8: $52
	ld   a, h                                        ; $6cf9: $7c
	ld   sp, hl                                      ; $6cfa: $f9
	dec  c                                           ; $6cfb: $0d
	nop                                              ; $6cfc: $00
	ld   a, [bc]                                     ; $6cfd: $0a
	rrca                                             ; $6cfe: $0f
	ld   bc, $1d04                                   ; $6cff: $01 $04 $1d
	ld   b, b                                        ; $6d02: $40
	ld   de, $1103                                   ; $6d03: $11 $03 $11
	ld   bc, $2901                                   ; $6d06: $01 $01 $29
	nop                                              ; $6d09: $00
	ld   bc, $5490                                   ; $6d0a: $01 $90 $54
	sbc  [hl]                                        ; $6d0d: $9e
	ld   [$6300], sp                                 ; $6d0e: $08 $00 $63
	and  c                                           ; $6d11: $a1
	sbc  a                                           ; $6d12: $9f
	dec  c                                           ; $6d13: $0d
	ld   l, e                                        ; $6d14: $6b
	ld   d, h                                        ; $6d15: $54
	ld   h, [hl]                                     ; $6d16: $66
	sub  c                                           ; $6d17: $91
	ld   a, b                                        ; $6d18: $78
	ld   d, d                                        ; $6d19: $52
	ld   [hl], l                                     ; $6d1a: $75
	ld   h, l                                        ; $6d1b: $65
	sub  l                                           ; $6d1c: $95
	sbc  a                                           ; $6d1d: $9f
	dec  c                                           ; $6d1e: $0d
	nop                                              ; $6d1f: $00
	ld   a, [bc]                                     ; $6d20: $0a
	ld   b, $3d                                      ; $6d21: $06 $3d
	dec  bc                                          ; $6d23: $0b
	inc  e                                           ; $6d24: $1c
	inc  bc                                          ; $6d25: $03
	nop                                              ; $6d26: $00
	nop                                              ; $6d27: $00
	ld   bc, $ffff                                   ; $6d28: $01 $ff $ff
	ld   [hl], a                                     ; $6d2b: $77
	ld   d, h                                        ; $6d2c: $54
	ld   h, l                                        ; $6d2d: $65
	ld   l, l                                        ; $6d2e: $6d
	ld   a, h                                        ; $6d2f: $7c
	ld   sp, hl                                      ; $6d30: $f9
	dec  c                                           ; $6d31: $0d
	nop                                              ; $6d32: $00
	ld   a, [bc]                                     ; $6d33: $0a
	rrca                                             ; $6d34: $0f
	ld   bc, $1d04                                   ; $6d35: $01 $04 $1d
	ld   b, b                                        ; $6d38: $40
	ld   de, $1103                                   ; $6d39: $11 $03 $11
	ld   bc, $2901                                   ; $6d3c: $01 $01 $29
	nop                                              ; $6d3f: $00
	ld   bc, $0008                                   ; $6d40: $01 $08 $00
	ld   h, e                                        ; $6d43: $63
	and  c                                           ; $6d44: $a1
	sbc  a                                           ; $6d45: $9f
	dec  c                                           ; $6d46: $0d
	ld   h, l                                        ; $6d47: $65
	ld   [hl], c                                     ; $6d48: $71
	ld   e, c                                        ; $6d49: $59
	sbc  b                                           ; $6d4a: $98
	ld   h, l                                        ; $6d4b: $65
	ld   [hl], h                                     ; $6d4c: $74
	ld   e, l                                        ; $6d4d: $5d
	ld   l, [hl]                                     ; $6d4e: $6e
	ld   h, e                                        ; $6d4f: $63
	ld   d, d                                        ; $6d50: $52
	sub  [hl]                                        ; $6d51: $96
	rst  $38                                         ; $6d52: $ff
	rst  $38                                         ; $6d53: $ff
	dec  c                                           ; $6d54: $0d
	rst  $38                                         ; $6d55: $ff
	rst  $38                                         ; $6d56: $ff
	ld   h, l                                        ; $6d57: $65
	ld   e, c                                        ; $6d58: $59
	ld   l, l                                        ; $6d59: $6d
	ld   a, b                                        ; $6d5a: $78
	ld   d, d                                        ; $6d5b: $52
	ld   [hl], l                                     ; $6d5c: $75
	ld   h, a                                        ; $6d5d: $67
	ld   a, e                                        ; $6d5e: $7b
	rst  $38                                         ; $6d5f: $ff
	rst  $38                                         ; $6d60: $ff
	dec  c                                           ; $6d61: $0d
	nop                                              ; $6d62: $00
	ld   a, [bc]                                     ; $6d63: $0a
	rrca                                             ; $6d64: $0f

Jump_062_6d65:
	ld   bc, $0102                                   ; $6d65: $01 $02 $01
	rst  JumpTable                                         ; $6d68: $df
	db   $ec                                         ; $6d69: $ec
	and  e                                           ; $6d6a: $a3
	ld   h, e                                        ; $6d6b: $63
	and  c                                           ; $6d6c: $a1
	sbc  a                                           ; $6d6d: $9f
	dec  c                                           ; $6d6e: $0d
	ld   l, e                                        ; $6d6f: $6b
	ld   h, c                                        ; $6d70: $61
	ld   a, c                                        ; $6d71: $79
	ld   e, b                                        ; $6d72: $58
	ld   d, d                                        ; $6d73: $52
	ld   [hl], h                                     ; $6d74: $74
	ld   d, b                                        ; $6d75: $50
	sbc  c                                           ; $6d76: $99
	dec  c                                           ; $6d77: $0d
	inc  bc                                          ; $6d78: $03
	xor  a                                           ; $6d79: $af
	inc  b                                           ; $6d7a: $04
	ld   d, $02                                      ; $6d7b: $16 $02
	xor  b                                           ; $6d7d: $a8
	ld   a, h                                        ; $6d7e: $7c
	inc  b                                           ; $6d7f: $04
	adc  a                                           ; $6d80: $8f
	inc  b                                           ; $6d81: $04
	sub  a                                           ; $6d82: $97
	ld   h, l                                        ; $6d83: $65
	ld   [hl], h                                     ; $6d84: $74
	ld   e, l                                        ; $6d85: $5d
	ld   l, [hl]                                     ; $6d86: $6e
	ld   h, e                                        ; $6d87: $63
	ld   d, d                                        ; $6d88: $52
	sbc  a                                           ; $6d89: $9f
	dec  c                                           ; $6d8a: $0d
	nop                                              ; $6d8b: $00
	ld   a, [bc]                                     ; $6d8c: $0a
	inc  e                                           ; $6d8d: $1c
	inc  bc                                          ; $6d8e: $03
	ld   bc, $0101                                   ; $6d8f: $01 $01 $01
	ld   d, b                                        ; $6d92: $50
	ld   a, [$ff0d]                                  ; $6d93: $fa $0d $ff
	rst  $38                                         ; $6d96: $ff
	rst  $38                                         ; $6d97: $ff
	rst  $38                                         ; $6d98: $ff
	rst  $38                                         ; $6d99: $ff
	rst  $38                                         ; $6d9a: $ff
	dec  c                                           ; $6d9b: $0d
	inc  b                                           ; $6d9c: $04
	ld   de, $058d                                   ; $6d9d: $11 $8d $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6da0: $cf
	adc  a                                           ; $6da1: $8f
	ld   l, l                                        ; $6da2: $6d
	sub  a                                           ; $6da3: $97
	inc  b                                           ; $6da4: $04
	ret  c                                           ; $6da5: $d8

	inc  b                                           ; $6da6: $04
	xor  h                                           ; $6da7: $ac
	ld   e, l                                        ; $6da8: $5d
	ld   [hl], c                                     ; $6da9: $71
	ld   [hl], h                                     ; $6daa: $74
	rst  $38                                         ; $6dab: $ff
	rst  $38                                         ; $6dac: $ff
	dec  c                                           ; $6dad: $0d
	nop                                              ; $6dae: $00
	ld   a, [bc]                                     ; $6daf: $0a
	inc  e                                           ; $6db0: $1c
	inc  bc                                          ; $6db1: $03
	inc  b                                           ; $6db2: $04
	inc  b                                           ; $6db3: $04
	ld   bc, $5272                                   ; $6db4: $01 $72 $52
	inc  b                                           ; $6db7: $04
	sub  l                                           ; $6db8: $95
	ld   [bc], a                                     ; $6db9: $02
	ld   hl, $0379                                   ; $6dba: $21 $79 $03
	and  b                                           ; $6dbd: $a0
	ld   [hl], c                                     ; $6dbe: $71
	ld   [hl], h                                     ; $6dbf: $74
	ld   [bc], a                                     ; $6dc0: $02
	or   l                                           ; $6dc1: $b5
	ld   [hl], c                                     ; $6dc2: $71
	ld   [hl], h                                     ; $6dc3: $74
	dec  c                                           ; $6dc4: $0d
	inc  b                                           ; $6dc5: $04
	ld   de, $75a1                                   ; $6dc6: $11 $a1 $75
	sbc  [hl]                                        ; $6dc9: $9e
	ld   l, e                                        ; $6dca: $6b
	ld   a, h                                        ; $6dcb: $7c
	adc  h                                           ; $6dcc: $8c
	adc  h                                           ; $6dcd: $8c
	ld   a, c                                        ; $6dce: $79
	rst  $38                                         ; $6dcf: $ff
	rst  $38                                         ; $6dd0: $ff
	dec  c                                           ; $6dd1: $0d
	nop                                              ; $6dd2: $00
	ld   a, [bc]                                     ; $6dd3: $0a
	ld   bc, $8f62                                   ; $6dd4: $01 $62 $8f
	and  c                                           ; $6dd7: $a1
	ld   a, b                                        ; $6dd8: $78
	ld   h, e                                        ; $6dd9: $63
	ld   d, d                                        ; $6dda: $52
	rst  $38                                         ; $6ddb: $ff
	rst  $38                                         ; $6ddc: $ff
	dec  c                                           ; $6ddd: $0d
	nop                                              ; $6dde: $00
	ld   a, [bc]                                     ; $6ddf: $0a
	rrca                                             ; $6de0: $0f
	ld   bc, $0100                                   ; $6de1: $01 $00 $01
	ld   [bc], a                                     ; $6de4: $02
	and  l                                           ; $6de5: $a5
	ld   [bc], a                                     ; $6de6: $02
	xor  d                                           ; $6de7: $aa
	sbc  [hl]                                        ; $6de8: $9e
	inc  bc                                          ; $6de9: $03
	ld   c, [hl]                                     ; $6dea: $4e
	inc  bc                                          ; $6deb: $03
	ld   l, e                                        ; $6dec: $6b
	ld   a, c                                        ; $6ded: $79
	inc  bc                                          ; $6dee: $03
	and  b                                           ; $6def: $a0
	ld   l, a                                        ; $6df0: $6f
	inc  bc                                          ; $6df1: $03
	add  b                                           ; $6df2: $80
	ld   h, e                                        ; $6df3: $63
	ld   a, b                                        ; $6df4: $78
	ld   d, d                                        ; $6df5: $52
	ld   [hl], l                                     ; $6df6: $75
	dec  c                                           ; $6df7: $0d
	ld   e, l                                        ; $6df8: $5d
	ld   l, [hl]                                     ; $6df9: $6e
	ld   h, e                                        ; $6dfa: $63
	ld   d, d                                        ; $6dfb: $52
	ld   a, e                                        ; $6dfc: $7b
	sbc  a                                           ; $6dfd: $9f
	rst  JumpTable                                         ; $6dfe: $df
	db   $ec                                         ; $6dff: $ec
	and  e                                           ; $6e00: $a3
	ld   h, e                                        ; $6e01: $63
	and  c                                           ; $6e02: $a1
	sbc  a                                           ; $6e03: $9f
	dec  c                                           ; $6e04: $0d
	nop                                              ; $6e05: $00
	ld   a, [bc]                                     ; $6e06: $0a
	dec  c                                           ; $6e07: $0d
	nop                                              ; $6e08: $00
	nop                                              ; $6e09: $00
	rrca                                             ; $6e0a: $0f
	nop                                              ; $6e0b: $00
	ld   bc, $020c                                   ; $6e0c: $01 $0c $02
	ld   c, $46                                      ; $6e0f: $0e $46
	inc  e                                           ; $6e11: $1c
	ld   bc, $0000                                   ; $6e12: $01 $00 $00
	ld   bc, $5063                                   ; $6e15: $01 $63 $50
	sbc  [hl]                                        ; $6e18: $9e
	ld   [$6300], sp                                 ; $6e19: $08 $00 $63
	and  c                                           ; $6e1c: $a1
	sbc  a                                           ; $6e1d: $9f
	dec  c                                           ; $6e1e: $0d
	inc  bc                                          ; $6e1f: $03
	ld   l, b                                        ; $6e20: $68
	ld   a, c                                        ; $6e21: $79
	ld   [bc], a                                     ; $6e22: $02
	ld   a, a                                        ; $6e23: $7f
	ld   e, e                                        ; $6e24: $5b
	adc  h                                           ; $6e25: $8c
	ld   h, a                                        ; $6e26: $67
	sub  [hl]                                        ; $6e27: $96
	sbc  a                                           ; $6e28: $9f
	dec  c                                           ; $6e29: $0d
	nop                                              ; $6e2a: $00
	ld   a, [bc]                                     ; $6e2b: $0a
	dec  c                                           ; $6e2c: $0d
	nop                                              ; $6e2d: $00
	nop                                              ; $6e2e: $00
	rrca                                             ; $6e2f: $0f
	nop                                              ; $6e30: $00
	ld   bc, $ff06                                   ; $6e31: $01 $06 $ff
	inc  c                                           ; $6e34: $0c
	rrca                                             ; $6e35: $0f
	nop                                              ; $6e36: $00
	ld   bc, $df01                                   ; $6e37: $01 $01 $df
	db   $ec                                         ; $6e3a: $ec
	and  e                                           ; $6e3b: $a3
	ld   h, e                                        ; $6e3c: $63
	and  c                                           ; $6e3d: $a1
	sbc  [hl]                                        ; $6e3e: $9e
	dec  c                                           ; $6e3f: $0d
	inc  bc                                          ; $6e40: $03
	xor  a                                           ; $6e41: $af
	inc  b                                           ; $6e42: $04
	ld   d, $02                                      ; $6e43: $16 $02
	xor  b                                           ; $6e45: $a8
	ld   a, h                                        ; $6e46: $7c
	inc  b                                           ; $6e47: $04
	adc  a                                           ; $6e48: $8f
	and  b                                           ; $6e49: $a0
	inc  b                                           ; $6e4a: $04
	sub  a                                           ; $6e4b: $97
	ld   h, l                                        ; $6e4c: $65
	ld   [hl], h                                     ; $6e4d: $74
	ld   [bc], a                                     ; $6e4e: $02
	inc  [hl]                                        ; $6e4f: $34
	ld   h, e                                        ; $6e50: $63
	ld   d, d                                        ; $6e51: $52
	sbc  a                                           ; $6e52: $9f
	dec  c                                           ; $6e53: $0d
	nop                                              ; $6e54: $00
	ld   a, [bc]                                     ; $6e55: $0a
	inc  e                                           ; $6e56: $1c
	inc  bc                                          ; $6e57: $03
	rlca                                             ; $6e58: $07
	rlca                                             ; $6e59: $07
	ld   bc, $7156                                   ; $6e5a: $01 $56 $71
	rst  $38                                         ; $6e5d: $ff
	rst  $38                                         ; $6e5e: $ff
	dec  c                                           ; $6e5f: $0d
	ld   d, b                                        ; $6e60: $50
	sbc  [hl]                                        ; $6e61: $9e
	ld   d, b                                        ; $6e62: $50
	ld   a, h                                        ; $6e63: $7c
	inc  b                                           ; $6e64: $04
	adc  a                                           ; $6e65: $8f
	ld   a, e                                        ; $6e66: $7b
	sbc  a                                           ; $6e67: $9f
	dec  c                                           ; $6e68: $0d
	ld   h, d                                        ; $6e69: $62
	adc  a                                           ; $6e6a: $8f
	and  c                                           ; $6e6b: $a1
	ld   a, b                                        ; $6e6c: $78
	ld   h, e                                        ; $6e6d: $63
	ld   d, d                                        ; $6e6e: $52
	sbc  a                                           ; $6e6f: $9f
	dec  c                                           ; $6e70: $0d
	nop                                              ; $6e71: $00
	ld   a, [bc]                                     ; $6e72: $0a
	inc  e                                           ; $6e73: $1c
	inc  bc                                          ; $6e74: $03
	ld   bc, $0101                                   ; $6e75: $01 $01 $01
	inc  b                                           ; $6e78: $04
	ld   de, $058d                                   ; $6e79: $11 $8d $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e7c: $cf
	adc  a                                           ; $6e7d: $8f
	ld   l, l                                        ; $6e7e: $6d
	sub  a                                           ; $6e7f: $97
	inc  b                                           ; $6e80: $04
	ret  c                                           ; $6e81: $d8

	inc  b                                           ; $6e82: $04
	xor  h                                           ; $6e83: $ac
	ld   e, l                                        ; $6e84: $5d
	ld   [hl], c                                     ; $6e85: $71
	ld   [hl], h                                     ; $6e86: $74
	rst  $38                                         ; $6e87: $ff
	rst  $38                                         ; $6e88: $ff
	dec  c                                           ; $6e89: $0d
	ld   [hl], d                                     ; $6e8a: $72
	ld   d, d                                        ; $6e8b: $52
	inc  b                                           ; $6e8c: $04
	sub  l                                           ; $6e8d: $95
	ld   [bc], a                                     ; $6e8e: $02
	ld   hl, $0379                                   ; $6e8f: $21 $79 $03
	and  b                                           ; $6e92: $a0
	ld   [hl], c                                     ; $6e93: $71
	ld   [hl], h                                     ; $6e94: $74
	ld   [bc], a                                     ; $6e95: $02
	or   l                                           ; $6e96: $b5
	ld   [hl], c                                     ; $6e97: $71
	ld   [hl], h                                     ; $6e98: $74
	dec  c                                           ; $6e99: $0d
	inc  b                                           ; $6e9a: $04
	ld   de, $75a1                                   ; $6e9b: $11 $a1 $75
	sbc  [hl]                                        ; $6e9e: $9e
	ld   l, e                                        ; $6e9f: $6b
	ld   a, h                                        ; $6ea0: $7c
	adc  h                                           ; $6ea1: $8c
	adc  h                                           ; $6ea2: $8c
	ld   a, c                                        ; $6ea3: $79
	rst  $38                                         ; $6ea4: $ff
	rst  $38                                         ; $6ea5: $ff
	dec  c                                           ; $6ea6: $0d
	nop                                              ; $6ea7: $00
	ld   a, [bc]                                     ; $6ea8: $0a
	rrca                                             ; $6ea9: $0f
	ld   bc, $0100                                   ; $6eaa: $01 $00 $01
	ld   [bc], a                                     ; $6ead: $02
	and  l                                           ; $6eae: $a5
	ld   [bc], a                                     ; $6eaf: $02
	xor  d                                           ; $6eb0: $aa
	sbc  [hl]                                        ; $6eb1: $9e
	inc  bc                                          ; $6eb2: $03
	ld   c, [hl]                                     ; $6eb3: $4e
	inc  bc                                          ; $6eb4: $03
	ld   l, e                                        ; $6eb5: $6b
	ld   a, c                                        ; $6eb6: $79
	inc  bc                                          ; $6eb7: $03
	and  b                                           ; $6eb8: $a0
	ld   l, a                                        ; $6eb9: $6f
	inc  bc                                          ; $6eba: $03
	add  b                                           ; $6ebb: $80
	ld   h, e                                        ; $6ebc: $63
	ld   a, b                                        ; $6ebd: $78
	ld   d, d                                        ; $6ebe: $52
	ld   [hl], l                                     ; $6ebf: $75
	dec  c                                           ; $6ec0: $0d
	ld   e, l                                        ; $6ec1: $5d
	ld   l, [hl]                                     ; $6ec2: $6e
	ld   h, e                                        ; $6ec3: $63
	ld   d, d                                        ; $6ec4: $52
	ld   a, e                                        ; $6ec5: $7b
	sbc  a                                           ; $6ec6: $9f
	rst  JumpTable                                         ; $6ec7: $df
	db   $ec                                         ; $6ec8: $ec
	and  e                                           ; $6ec9: $a3
	ld   h, e                                        ; $6eca: $63
	and  c                                           ; $6ecb: $a1
	sbc  a                                           ; $6ecc: $9f
	dec  c                                           ; $6ecd: $0d
	nop                                              ; $6ece: $00
	ld   a, [bc]                                     ; $6ecf: $0a
	dec  c                                           ; $6ed0: $0d
	nop                                              ; $6ed1: $00
	nop                                              ; $6ed2: $00
	rrca                                             ; $6ed3: $0f
	nop                                              ; $6ed4: $00
	ld   bc, $020c                                   ; $6ed5: $01 $0c $02
	ld   c, $46                                      ; $6ed8: $0e $46
	inc  e                                           ; $6eda: $1c
	ld   bc, $0101                                   ; $6edb: $01 $01 $01
	dec  e                                           ; $6ede: $1d
	ld   b, b                                        ; $6edf: $40
	ld   de, $1103                                   ; $6ee0: $11 $03 $11
	ld   bc, $2803                                   ; $6ee3: $01 $03 $28
	nop                                              ; $6ee6: $00
	ld   bc, $0008                                   ; $6ee7: $01 $08 $00
	ld   h, e                                        ; $6eea: $63
	and  c                                           ; $6eeb: $a1
	ld   h, a                                        ; $6eec: $67
	ld   h, d                                        ; $6eed: $62
	ld   d, d                                        ; $6eee: $52
	sbc  l                                           ; $6eef: $9d
	sbc  a                                           ; $6ef0: $9f
	dec  c                                           ; $6ef1: $0d
	ld   [bc], a                                     ; $6ef2: $02
	jr   nz, @+$06                                   ; $6ef3: $20 $04

	ld   e, [hl]                                     ; $6ef5: $5e
	ld   [hl], l                                     ; $6ef6: $75
	inc  b                                           ; $6ef7: $04
	ld   c, $04                                      ; $6ef8: $0e $04
	jr   jr_062_6f69                                 ; $6efa: $18 $6d

	sbc  b                                           ; $6efc: $98
	sub  [hl]                                        ; $6efd: $96
	ld   a, [$000d]                                  ; $6efe: $fa $0d $00
	ld   a, [bc]                                     ; $6f01: $0a
	inc  e                                           ; $6f02: $1c
	ld   bc, $0000                                   ; $6f03: $01 $00 $00
	ld   bc, $5063                                   ; $6f06: $01 $63 $50
	sbc  [hl]                                        ; $6f09: $9e
	ld   [$6300], sp                                 ; $6f0a: $08 $00 $63
	and  c                                           ; $6f0d: $a1
	sbc  a                                           ; $6f0e: $9f
	dec  c                                           ; $6f0f: $0d
	inc  bc                                          ; $6f10: $03
	ld   l, b                                        ; $6f11: $68
	ld   a, c                                        ; $6f12: $79
	ld   [bc], a                                     ; $6f13: $02
	ld   a, a                                        ; $6f14: $7f
	ld   e, e                                        ; $6f15: $5b
	adc  h                                           ; $6f16: $8c
	ld   h, a                                        ; $6f17: $67
	sub  [hl]                                        ; $6f18: $96
	sbc  a                                           ; $6f19: $9f
	dec  c                                           ; $6f1a: $0d
	nop                                              ; $6f1b: $00
	ld   a, [bc]                                     ; $6f1c: $0a
	dec  c                                           ; $6f1d: $0d
	nop                                              ; $6f1e: $00
	nop                                              ; $6f1f: $00
	rrca                                             ; $6f20: $0f
	nop                                              ; $6f21: $00
	ld   bc, $ff06                                   ; $6f22: $01 $06 $ff
	inc  c                                           ; $6f25: $0c
	inc  hl                                          ; $6f26: $23
	ld   c, h                                        ; $6f27: $4c
	inc  e                                           ; $6f28: $1c
	ld   bc, $0000                                   ; $6f29: $01 $00 $00
	ld   bc, $6803                                   ; $6f2c: $01 $03 $68
	ld   a, l                                        ; $6f2f: $7d
	sbc  [hl]                                        ; $6f30: $9e
	ld   [bc], a                                     ; $6f31: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f32: $cf
	dec  b                                           ; $6f33: $05
	ld   a, [de]                                     ; $6f34: $1a
	ld   [hl], l                                     ; $6f35: $75
	ld   h, a                                        ; $6f36: $67
	sbc  a                                           ; $6f37: $9f
	dec  c                                           ; $6f38: $0d
	nop                                              ; $6f39: $00
	ld   a, [bc]                                     ; $6f3a: $0a
	dec  c                                           ; $6f3b: $0d
	nop                                              ; $6f3c: $00
	nop                                              ; $6f3d: $00
	rrca                                             ; $6f3e: $0f
	nop                                              ; $6f3f: $00
	ld   bc, $0614                                   ; $6f40: $01 $14 $06
	ld   bc, $0201                                   ; $6f43: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f46: $cf
	dec  b                                           ; $6f47: $05
	ld   a, [de]                                     ; $6f48: $1a
	ld   h, e                                        ; $6f49: $63
	and  c                                           ; $6f4a: $a1
	sbc  a                                           ; $6f4b: $9f
	dec  c                                           ; $6f4c: $0d
	ld   [$7500], sp                                 ; $6f4d: $08 $00 $75
	ld   h, a                                        ; $6f50: $67
	sbc  a                                           ; $6f51: $9f
	dec  c                                           ; $6f52: $0d
	nop                                              ; $6f53: $00
	ld   a, [bc]                                     ; $6f54: $0a
	inc  d                                           ; $6f55: $14
	ld   a, [bc]                                     ; $6f56: $0a
	ld   bc, $ab0e                                   ; $6f57: $01 $0e $ab
	inc  e                                           ; $6f5a: $1c
	dec  b                                           ; $6f5b: $05
	nop                                              ; $6f5c: $00
	nop                                              ; $6f5d: $00
	ld   bc, $0008                                   ; $6f5e: $01 $08 $00
	ld   a, l                                        ; $6f61: $7d
	and  c                                           ; $6f62: $a1
	sbc  a                                           ; $6f63: $9f
	dec  c                                           ; $6f64: $0d
	ld   a, b                                        ; $6f65: $78
	and  c                                           ; $6f66: $a1
	sub  d                                           ; $6f67: $92
	sbc  [hl]                                        ; $6f68: $9e

jr_062_6f69:
	ld   h, e                                        ; $6f69: $63
	ld   e, l                                        ; $6f6a: $5d
	sub  a                                           ; $6f6b: $97
	ld   a, l                                        ; $6f6c: $7d
	and  c                                           ; $6f6d: $a1
	sub  b                                           ; $6f6e: $90
	dec  c                                           ; $6f6f: $0d
	ld   d, d                                        ; $6f70: $52
	ld   [hl], c                                     ; $6f71: $71
	ld   h, l                                        ; $6f72: $65
	sub  l                                           ; $6f73: $95
	sub  d                                           ; $6f74: $92
	and  c                                           ; $6f75: $a1
	sbc  a                                           ; $6f76: $9f
	ld   a, b                                        ; $6f77: $78
	and  c                                           ; $6f78: $a1
	ld   e, c                                        ; $6f79: $59
	inc  b                                           ; $6f7a: $04
	di                                               ; $6f7b: $f3
	ld   sp, hl                                      ; $6f7c: $f9
	dec  c                                           ; $6f7d: $0d
	nop                                              ; $6f7e: $00
	ld   a, [bc]                                     ; $6f7f: $0a
	rrca                                             ; $6f80: $0f
	nop                                              ; $6f81: $00
	ld   bc, $0201                                   ; $6f82: $01 $01 $02
	and  l                                           ; $6f85: $a5
	sbc  [hl]                                        ; $6f86: $9e
	ld   a, b                                        ; $6f87: $78
	ld   e, l                                        ; $6f88: $5d
	ld   a, b                                        ; $6f89: $78
	ld   [hl], c                                     ; $6f8a: $71
	ld   l, l                                        ; $6f8b: $6d
	inc  b                                           ; $6f8c: $04
	sub  d                                           ; $6f8d: $92
	and  b                                           ; $6f8e: $a0
	inc  b                                           ; $6f8f: $04
	inc  d                                           ; $6f90: $14
	ld   h, l                                        ; $6f91: $65
	ld   [hl], h                                     ; $6f92: $74
	ld   d, d                                        ; $6f93: $52
	sbc  c                                           ; $6f94: $99
	dec  c                                           ; $6f95: $0d
	ld   a, h                                        ; $6f96: $7c
	ld   [hl], l                                     ; $6f97: $75
	ld   h, a                                        ; $6f98: $67
	ld   e, d                                        ; $6f99: $5a
	rst  $38                                         ; $6f9a: $ff
	rst  $38                                         ; $6f9b: $ff
	dec  c                                           ; $6f9c: $0d
	nop                                              ; $6f9d: $00
	ld   a, [bc]                                     ; $6f9e: $0a
	ld   bc, $cf02                                   ; $6f9f: $01 $02 $cf
	dec  b                                           ; $6fa2: $05
	ld   a, [de]                                     ; $6fa3: $1a
	ld   h, e                                        ; $6fa4: $63
	and  c                                           ; $6fa5: $a1
	sbc  [hl]                                        ; $6fa6: $9e
	ld   l, a                                        ; $6fa7: $6f
	sub  l                                           ; $6fa8: $95
	ld   [hl], c                                     ; $6fa9: $71
	halt                                             ; $6faa: $76
	inc  b                                           ; $6fab: $04
	sub  l                                           ; $6fac: $95
	ld   [bc], a                                     ; $6fad: $02
	ld   hl, $0d7c                                   ; $6fae: $21 $7c $0d
	inc  b                                           ; $6fb1: $04
	dec  bc                                          ; $6fb2: $0b
	and  b                                           ; $6fb3: $a0
	ld   [bc], a                                     ; $6fb4: $02
	sub  l                                           ; $6fb5: $95
	ld   l, c                                        ; $6fb6: $69
	ld   [hl], h                                     ; $6fb7: $74
	ld   d, d                                        ; $6fb8: $52
	ld   l, l                                        ; $6fb9: $6d
	ld   l, [hl]                                     ; $6fba: $6e
	ld   e, a                                        ; $6fbb: $5f
	adc  h                                           ; $6fbc: $8c
	ld   h, a                                        ; $6fbd: $67
	ld   e, c                                        ; $6fbe: $59
	ld   sp, hl                                      ; $6fbf: $f9
	dec  c                                           ; $6fc0: $0d
	nop                                              ; $6fc1: $00
	ld   a, [bc]                                     ; $6fc2: $0a
	inc  e                                           ; $6fc3: $1c
	dec  b                                           ; $6fc4: $05
	ld   [bc], a                                     ; $6fc5: $02
	ld   [bc], a                                     ; $6fc6: $02
	ld   bc, $9504                                   ; $6fc7: $01 $04 $95
	ld   [bc], a                                     ; $6fca: $02
	ld   hl, $047c                                   ; $6fcb: $21 $7c $04
	dec  bc                                          ; $6fce: $0b
	and  b                                           ; $6fcf: $a0
	rst  $38                                         ; $6fd0: $ff
	rst  $38                                         ; $6fd1: $ff
	ld   sp, hl                                      ; $6fd2: $f9
	dec  c                                           ; $6fd3: $0d
	ld   d, [hl]                                     ; $6fd4: $56
	ld   d, [hl]                                     ; $6fd5: $56
	ld   e, a                                        ; $6fd6: $5f
	ld   [hl], a                                     ; $6fd7: $77
	sbc  [hl]                                        ; $6fd8: $9e
	ld   h, c                                        ; $6fd9: $61
	sbc  l                                           ; $6fda: $9d
	sbc  d                                           ; $6fdb: $9a
	db   $e4                                         ; $6fdc: $e4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6fdd: $cf
	ld   e, d                                        ; $6fde: $5a
	dec  c                                           ; $6fdf: $0d
	inc  b                                           ; $6fe0: $04
	rrca                                             ; $6fe1: $0f
	ld   d, d                                        ; $6fe2: $52
	ld   e, c                                        ; $6fe3: $59
	sub  a                                           ; $6fe4: $97
	sbc  [hl]                                        ; $6fe5: $9e
	ld   [bc], a                                     ; $6fe6: $02
	and  c                                           ; $6fe7: $a1
	ld   d, c                                        ; $6fe8: $51
	ld   [hl], d                                     ; $6fe9: $72
	ld   e, a                                        ; $6fea: $5f
	ld   [hl], h                                     ; $6feb: $74
	sub  d                                           ; $6fec: $92
	sbc  a                                           ; $6fed: $9f
	dec  c                                           ; $6fee: $0d
	nop                                              ; $6fef: $00
	ld   a, [bc]                                     ; $6ff0: $0a
	dec  c                                           ; $6ff1: $0d
	nop                                              ; $6ff2: $00
	nop                                              ; $6ff3: $00
	rrca                                             ; $6ff4: $0f
	nop                                              ; $6ff5: $00
	ld   bc, $6b01                                   ; $6ff6: $01 $01 $6b
	sbc  d                                           ; $6ff9: $9a
	ld   [hl], l                                     ; $6ffa: $75
	ld   a, l                                        ; $6ffb: $7d
	sbc  [hl]                                        ; $6ffc: $9e
	inc  bc                                          ; $6ffd: $03
	add  e                                           ; $6ffe: $83
	dec  b                                           ; $6fff: $05
	dec  c                                           ; $7000: $0d
	ld   h, l                                        ; $7001: $65
	adc  h                                           ; $7002: $8c
	ld   h, a                                        ; $7003: $67
	sbc  a                                           ; $7004: $9f
	dec  c                                           ; $7005: $0d
	ld   d, [hl]                                     ; $7006: $56
	db   $fc                                         ; $7007: $fc
	ld   [hl], c                                     ; $7008: $71
	halt                                             ; $7009: $76
	rst  $38                                         ; $700a: $ff
	rst  $38                                         ; $700b: $ff
	dec  c                                           ; $700c: $0d
	nop                                              ; $700d: $00
	ld   a, [bc]                                     ; $700e: $0a
	inc  c                                           ; $700f: $0c
	dec  bc                                          ; $7010: $0b
	inc  e                                           ; $7011: $1c
	dec  b                                           ; $7012: $05
	nop                                              ; $7013: $00
	nop                                              ; $7014: $00
	ld   bc, $5477                                   ; $7015: $01 $77 $54
	sub  d                                           ; $7018: $92
	ld   sp, hl                                      ; $7019: $f9
	dec  c                                           ; $701a: $0d
	ld   a, b                                        ; $701b: $78
	and  c                                           ; $701c: $a1
	ld   e, c                                        ; $701d: $59
	ld   [bc], a                                     ; $701e: $02
	sub  l                                           ; $701f: $95
	ld   [hl], d                                     ; $7020: $72
	ld   e, c                                        ; $7021: $59
	ld   [hl], c                                     ; $7022: $71
	ld   l, l                                        ; $7023: $6d
	ld   e, c                                        ; $7024: $59
	ld   d, d                                        ; $7025: $52
	ld   a, b                                        ; $7026: $78
	ld   sp, hl                                      ; $7027: $f9
	dec  c                                           ; $7028: $0d
	nop                                              ; $7029: $00
	ld   a, [bc]                                     ; $702a: $0a
	add  hl, de                                      ; $702b: $19
	dec  b                                           ; $702c: $05
	inc  bc                                          ; $702d: $03
	inc  bc                                          ; $702e: $03
	xor  a                                           ; $702f: $af
	inc  b                                           ; $7030: $04
	ld   d, $02                                      ; $7031: $16 $02
	xor  b                                           ; $7033: $a8
	ld   a, h                                        ; $7034: $7c
	pop  bc                                          ; $7035: $c1
	and  l                                           ; $7036: $a5
	and  $00                                         ; $7037: $e6 $00
	nop                                              ; $7039: $00
	dec  b                                           ; $703a: $05
	ret  nc                                          ; $703b: $d0

	ld   [bc], a                                     ; $703c: $02
	ld   b, $04                                      ; $703d: $06 $04
	ld   e, l                                        ; $703f: $5d
	nop                                              ; $7040: $00
	ld   bc, $ebad                                   ; $7041: $01 $ad $eb
	cp   d                                           ; $7044: $ba
	ld   a, h                                        ; $7045: $7c
	ld   e, l                                        ; $7046: $5d
	ld   [hl], d                                     ; $7047: $72
	nop                                              ; $7048: $00
	ld   [bc], a                                     ; $7049: $02
	rlca                                             ; $704a: $07
	ld   c, c                                        ; $704b: $49
	db   $10                                         ; $704c: $10
	ld   [bc], a                                     ; $704d: $02
	inc  bc                                          ; $704e: $03
	ld   bc, $2000                                   ; $704f: $01 $00 $20
	nop                                              ; $7052: $00
	rlca                                             ; $7053: $07
	ld   b, c                                        ; $7054: $41
	ld   c, $02                                      ; $7055: $0e $02
	inc  bc                                          ; $7057: $03
	ld   bc, $2001                                   ; $7058: $01 $01 $20
	nop                                              ; $705b: $00
	rlca                                             ; $705c: $07
	sbc  d                                           ; $705d: $9a
	ld   c, $02                                      ; $705e: $0e $02
	inc  bc                                          ; $7060: $03
	ld   bc, $2002                                   ; $7061: $01 $02 $20
	nop                                              ; $7064: $00
	ld   b, $12                                      ; $7065: $06 $12
	rrca                                             ; $7067: $0f
	rrca                                             ; $7068: $0f
	nop                                              ; $7069: $00
	ld   bc, $0501                                   ; $706a: $01 $01 $05
	ret  nc                                          ; $706d: $d0

	ld   [bc], a                                     ; $706e: $02
	ld   b, $04                                      ; $706f: $06 $04
	ld   e, l                                        ; $7071: $5d
	ld   e, d                                        ; $7072: $5a
	ld   d, b                                        ; $7073: $50
	sbc  c                                           ; $7074: $99
	ld   e, c                                        ; $7075: $59
	halt                                             ; $7076: $76
	dec  c                                           ; $7077: $0d
	dec  b                                           ; $7078: $05
	pop  de                                          ; $7079: $d1
	ld   [hl], c                                     ; $707a: $71
	ld   l, l                                        ; $707b: $6d
	and  c                                           ; $707c: $a1
	ld   [hl], l                                     ; $707d: $75
	ld   h, a                                        ; $707e: $67
	ld   e, d                                        ; $707f: $5a
	rst  $38                                         ; $7080: $ff
	rst  $38                                         ; $7081: $ff
	dec  c                                           ; $7082: $0d
	nop                                              ; $7083: $00
	ld   a, [bc]                                     ; $7084: $0a
	inc  e                                           ; $7085: $1c
	dec  b                                           ; $7086: $05
	ld   [bc], a                                     ; $7087: $02
	ld   [bc], a                                     ; $7088: $02
	dec  e                                           ; $7089: $1d
	ld   b, b                                        ; $708a: $40
	dec  d                                           ; $708b: $15
	inc  bc                                          ; $708c: $03
	dec  d                                           ; $708d: $15
	ld   bc, $2902                                   ; $708e: $01 $02 $29
	nop                                              ; $7091: $00
	ld   bc, $d005                                   ; $7092: $01 $05 $d0
	ld   [bc], a                                     ; $7095: $02
	ld   b, $04                                      ; $7096: $06 $04
	ld   e, l                                        ; $7098: $5d
	ld   sp, hl                                      ; $7099: $f9
	db   $10                                         ; $709a: $10
	ld   a, b                                        ; $709b: $78
	and  c                                           ; $709c: $a1
	sub  d                                           ; $709d: $92
	ld   l, e                                        ; $709e: $6b
	sbc  d                                           ; $709f: $9a
	sbc  a                                           ; $70a0: $9f
	dec  c                                           ; $70a1: $0d
	and  a                                           ; $70a2: $a7
	jp   nz, $2b04                                   ; $70a3: $c2 $04 $2b

	sub  a                                           ; $70a6: $97
	and  c                                           ; $70a7: $a1
	ld   [hl], l                                     ; $70a8: $75
	sbc  a                                           ; $70a9: $9f
	reti                                             ; $70aa: $d9


	push af                                          ; $70ab: $f5
	ld   a, b                                        ; $70ac: $78
	ld   d, h                                        ; $70ad: $54
	ld   l, l                                        ; $70ae: $6d
	ld   e, d                                        ; $70af: $5a
	ld   d, d                                        ; $70b0: $52
	dec  c                                           ; $70b1: $0d
	ld   e, c                                        ; $70b2: $59
	ld   e, a                                        ; $70b3: $5f
	and  c                                           ; $70b4: $a1
	halt                                             ; $70b5: $76
	ld   d, d                                        ; $70b6: $52
	ld   [hl], h                                     ; $70b7: $74
	ei                                               ; $70b8: $fb
	ld   a, b                                        ; $70b9: $78
	sbc  a                                           ; $70ba: $9f
	dec  c                                           ; $70bb: $0d
	nop                                              ; $70bc: $00
	ld   a, [bc]                                     ; $70bd: $0a
	ld   b, $ec                                      ; $70be: $06 $ec
	ld   c, $0f                                      ; $70c0: $0e $0f
	nop                                              ; $70c2: $00
	ld   bc, $ad01                                   ; $70c3: $01 $01 $ad
	db   $eb                                         ; $70c6: $eb
	cp   d                                           ; $70c7: $ba
	ld   a, h                                        ; $70c8: $7c
	ld   e, l                                        ; $70c9: $5d
	ld   [hl], d                                     ; $70ca: $72
	ld   e, d                                        ; $70cb: $5a
	ld   d, b                                        ; $70cc: $50
	sbc  c                                           ; $70cd: $99
	ld   e, c                                        ; $70ce: $59
	halt                                             ; $70cf: $76
	dec  c                                           ; $70d0: $0d
	dec  b                                           ; $70d1: $05
	pop  de                                          ; $70d2: $d1
	ld   [hl], c                                     ; $70d3: $71
	ld   l, l                                        ; $70d4: $6d
	and  c                                           ; $70d5: $a1
	ld   [hl], l                                     ; $70d6: $75
	ld   h, a                                        ; $70d7: $67
	ld   e, d                                        ; $70d8: $5a
	rst  $38                                         ; $70d9: $ff
	rst  $38                                         ; $70da: $ff
	dec  c                                           ; $70db: $0d
	nop                                              ; $70dc: $00
	ld   a, [bc]                                     ; $70dd: $0a
	inc  e                                           ; $70de: $1c
	dec  b                                           ; $70df: $05
	ld   [bc], a                                     ; $70e0: $02
	ld   [bc], a                                     ; $70e1: $02
	dec  e                                           ; $70e2: $1d
	ld   b, b                                        ; $70e3: $40
	dec  d                                           ; $70e4: $15
	inc  bc                                          ; $70e5: $03
	dec  d                                           ; $70e6: $15
	ld   bc, $2902                                   ; $70e7: $01 $02 $29
	nop                                              ; $70ea: $00
	ld   bc, wRandomNumStruct                                   ; $70eb: $01 $a7 $c2
	sbc  [hl]                                        ; $70ee: $9e
	xor  l                                           ; $70ef: $ad
	db   $eb                                         ; $70f0: $eb
	cp   d                                           ; $70f1: $ba
	ld   a, h                                        ; $70f2: $7c
	ld   e, l                                        ; $70f3: $5d
	ld   [hl], d                                     ; $70f4: $72
	ld   a, b                                        ; $70f5: $78
	and  c                                           ; $70f6: $a1
	ld   e, c                                        ; $70f7: $59
	dec  c                                           ; $70f8: $0d
	inc  b                                           ; $70f9: $04
	dec  hl                                          ; $70fa: $2b
	sub  a                                           ; $70fb: $97
	and  c                                           ; $70fc: $a1
	ld   [hl], l                                     ; $70fd: $75
	sbc  a                                           ; $70fe: $9f
	reti                                             ; $70ff: $d9


	push af                                          ; $7100: $f5
	ld   a, b                                        ; $7101: $78
	ld   d, h                                        ; $7102: $54
	ld   l, l                                        ; $7103: $6d
	ld   e, d                                        ; $7104: $5a
	ld   d, d                                        ; $7105: $52
	dec  c                                           ; $7106: $0d
	ld   e, c                                        ; $7107: $59
	ld   e, a                                        ; $7108: $5f
	and  c                                           ; $7109: $a1
	halt                                             ; $710a: $76
	ld   d, d                                        ; $710b: $52
	ld   [hl], h                                     ; $710c: $74
	ei                                               ; $710d: $fb
	ld   a, b                                        ; $710e: $78
	sbc  a                                           ; $710f: $9f
	dec  c                                           ; $7110: $0d
	nop                                              ; $7111: $00
	ld   a, [bc]                                     ; $7112: $0a
	rrca                                             ; $7113: $0f
	ld   bc, $1d04                                   ; $7114: $01 $04 $1d
	ld   b, b                                        ; $7117: $40
	ld   de, $1103                                   ; $7118: $11 $03 $11
	ld   bc, $2901                                   ; $711b: $01 $01 $29
	nop                                              ; $711e: $00
	ld   bc, $5490                                   ; $711f: $01 $90 $54
	sbc  [hl]                                        ; $7122: $9e
	ld   [$6300], sp                                 ; $7123: $08 $00 $63
	and  c                                           ; $7126: $a1
	sbc  a                                           ; $7127: $9f
	dec  c                                           ; $7128: $0d
	ld   l, e                                        ; $7129: $6b
	ld   d, h                                        ; $712a: $54
	ld   h, [hl]                                     ; $712b: $66
	sub  c                                           ; $712c: $91
	ld   a, b                                        ; $712d: $78
	ld   d, d                                        ; $712e: $52
	ld   [hl], l                                     ; $712f: $75
	ld   h, l                                        ; $7130: $65
	sub  l                                           ; $7131: $95
	sbc  a                                           ; $7132: $9f
	dec  c                                           ; $7133: $0d
	nop                                              ; $7134: $00
	ld   a, [bc]                                     ; $7135: $0a
	ld   b, $57                                      ; $7136: $06 $57
	rrca                                             ; $7138: $0f
	inc  e                                           ; $7139: $1c
	dec  b                                           ; $713a: $05
	ld   [bc], a                                     ; $713b: $02
	ld   [bc], a                                     ; $713c: $02
	ld   bc, $ffff                                   ; $713d: $01 $ff $ff
	and  c                                           ; $7140: $a1
	ld   sp, hl                                      ; $7141: $f9
	dec  c                                           ; $7142: $0d
	ld   [hl], a                                     ; $7143: $77
	ld   a, b                                        ; $7144: $78
	ld   d, d                                        ; $7145: $52
	ld   h, l                                        ; $7146: $65
	ld   l, l                                        ; $7147: $6d
	and  c                                           ; $7148: $a1
	sub  d                                           ; $7149: $92
	ld   sp, hl                                      ; $714a: $f9
	dec  c                                           ; $714b: $0d
	nop                                              ; $714c: $00
	ld   a, [bc]                                     ; $714d: $0a
	rrca                                             ; $714e: $0f
	ld   bc, $1d04                                   ; $714f: $01 $04 $1d
	ld   b, b                                        ; $7152: $40
	ld   de, $1103                                   ; $7153: $11 $03 $11
	ld   bc, $2901                                   ; $7156: $01 $01 $29
	nop                                              ; $7159: $00
	ld   bc, $0008                                   ; $715a: $01 $08 $00
	ld   h, e                                        ; $715d: $63
	and  c                                           ; $715e: $a1
	sbc  a                                           ; $715f: $9f
	dec  c                                           ; $7160: $0d
	ld   h, l                                        ; $7161: $65
	ld   [hl], c                                     ; $7162: $71
	ld   e, c                                        ; $7163: $59
	sbc  b                                           ; $7164: $98
	ld   h, l                                        ; $7165: $65
	ld   [hl], h                                     ; $7166: $74
	ld   e, l                                        ; $7167: $5d
	ld   l, [hl]                                     ; $7168: $6e
	ld   h, e                                        ; $7169: $63
	ld   d, d                                        ; $716a: $52
	sub  [hl]                                        ; $716b: $96
	rst  $38                                         ; $716c: $ff
	rst  $38                                         ; $716d: $ff
	dec  c                                           ; $716e: $0d
	rst  $38                                         ; $716f: $ff
	rst  $38                                         ; $7170: $ff
	ld   h, l                                        ; $7171: $65
	ld   e, c                                        ; $7172: $59
	ld   l, l                                        ; $7173: $6d
	ld   a, b                                        ; $7174: $78
	ld   d, d                                        ; $7175: $52
	ld   [hl], l                                     ; $7176: $75
	ld   h, a                                        ; $7177: $67
	ld   a, e                                        ; $7178: $7b
	rst  $38                                         ; $7179: $ff
	rst  $38                                         ; $717a: $ff
	dec  c                                           ; $717b: $0d
	nop                                              ; $717c: $00
	ld   a, [bc]                                     ; $717d: $0a
	rrca                                             ; $717e: $0f
	ld   bc, $0102                                   ; $717f: $01 $02 $01
	ld   [bc], a                                     ; $7182: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7183: $cf
	dec  b                                           ; $7184: $05
	ld   a, [de]                                     ; $7185: $1a
	sbc  a                                           ; $7186: $9f
	dec  c                                           ; $7187: $0d
	inc  bc                                          ; $7188: $03
	xor  a                                           ; $7189: $af
	inc  b                                           ; $718a: $04
	ld   d, $02                                      ; $718b: $16 $02
	xor  b                                           ; $718d: $a8
	ld   a, h                                        ; $718e: $7c
	pop  bc                                          ; $718f: $c1
	and  l                                           ; $7190: $a5
	and  $a0                                         ; $7191: $e6 $a0
	dec  c                                           ; $7193: $0d
	inc  b                                           ; $7194: $04
	sub  a                                           ; $7195: $97
	ld   h, l                                        ; $7196: $65
	ld   [hl], h                                     ; $7197: $74
	ld   l, a                                        ; $7198: $6f
	sub  l                                           ; $7199: $95
	ld   d, h                                        ; $719a: $54
	ld   l, [hl]                                     ; $719b: $6e
	ld   d, d                                        ; $719c: $52
	sbc  a                                           ; $719d: $9f
	dec  c                                           ; $719e: $0d
	nop                                              ; $719f: $00
	ld   a, [bc]                                     ; $71a0: $0a
	ld   bc, $546b                                   ; $71a1: $01 $6b $54
	sbc  [hl]                                        ; $71a4: $9e
	ld   l, e                                        ; $71a5: $6b
	ld   h, c                                        ; $71a6: $61
	ld   a, c                                        ; $71a7: $79
	ld   d, b                                        ; $71a8: $50
	sbc  c                                           ; $71a9: $99
	xor  $fb                                         ; $71aa: $ee $fb
	or   a                                           ; $71ac: $b7
	ei                                               ; $71ad: $fb
	ld   a, h                                        ; $71ae: $7c
	dec  c                                           ; $71af: $0d
	inc  bc                                          ; $71b0: $03
	adc  e                                           ; $71b1: $8b
	ld   [bc], a                                     ; $71b2: $02
	sub  [hl]                                        ; $71b3: $96
	ld   [hl], l                                     ; $71b4: $75
	inc  bc                                          ; $71b5: $03
	xor  [hl]                                        ; $71b6: $ae
	ld   [hl], c                                     ; $71b7: $71
	ld   [hl], h                                     ; $71b8: $74
	ld   d, d                                        ; $71b9: $52
	sbc  c                                           ; $71ba: $99
	dec  c                                           ; $71bb: $0d
	pop  bc                                          ; $71bc: $c1
	and  l                                           ; $71bd: $a5
	and  $7c                                         ; $71be: $e6 $7c
	ld   h, c                                        ; $71c0: $61
	halt                                             ; $71c1: $76
	sub  [hl]                                        ; $71c2: $96
	sbc  a                                           ; $71c3: $9f
	dec  c                                           ; $71c4: $0d
	nop                                              ; $71c5: $00
	ld   a, [bc]                                     ; $71c6: $0a
	inc  e                                           ; $71c7: $1c
	dec  b                                           ; $71c8: $05
	inc  bc                                          ; $71c9: $03
	inc  bc                                          ; $71ca: $03
	ld   bc, $7156                                   ; $71cb: $01 $56 $71
	ld   a, [$d110]                                  ; $71ce: $fa $10 $d1
	xor  $6d                                         ; $71d1: $ee $6d
	and  c                                           ; $71d3: $a1
	ld   e, c                                        ; $71d4: $59
	ld   d, d                                        ; $71d5: $52
	ld   a, b                                        ; $71d6: $78
	ld   sp, hl                                      ; $71d7: $f9
	dec  c                                           ; $71d8: $0d
	ld   a, c                                        ; $71d9: $79
	ld   l, c                                        ; $71da: $69
	sub  b                                           ; $71db: $90
	and  c                                           ; $71dc: $a1
	sub  d                                           ; $71dd: $92
	ld   e, a                                        ; $71de: $5f
	ld   [hl], a                                     ; $71df: $77
	sbc  [hl]                                        ; $71e0: $9e
	inc  bc                                          ; $71e1: $03
	xor  [hl]                                        ; $71e2: $ae
	ld   d, [hl]                                     ; $71e3: $56
	sbc  c                                           ; $71e4: $99
	ld   e, c                                        ; $71e5: $59
	ld   a, b                                        ; $71e6: $78
	db   $fc                                         ; $71e7: $fc
	dec  c                                           ; $71e8: $0d
	ld   [hl], h                                     ; $71e9: $74
	dec  b                                           ; $71ea: $05
	pop  de                                          ; $71eb: $d1
	ld   [hl], c                                     ; $71ec: $71
	ld   [hl], h                                     ; $71ed: $74
	ld   a, b                                        ; $71ee: $78
	rst  $38                                         ; $71ef: $ff
	rst  $38                                         ; $71f0: $ff
	dec  c                                           ; $71f1: $0d
	nop                                              ; $71f2: $00
	ld   a, [bc]                                     ; $71f3: $0a
	inc  e                                           ; $71f4: $1c
	dec  b                                           ; $71f5: $05
	inc  b                                           ; $71f6: $04
	inc  b                                           ; $71f7: $04
	ld   bc, $d902                                   ; $71f8: $01 $02 $d9
	ld   [bc], a                                     ; $71fb: $02
	call nz, Call_062_509e                           ; $71fc: $c4 $9e $50
	ld   e, c                                        ; $71ff: $59
	and  c                                           ; $7200: $a1
	ld   e, c                                        ; $7201: $59
	ld   [hl], c                                     ; $7202: $71
	ld   l, l                                        ; $7203: $6d
	ld   e, a                                        ; $7204: $5f
	ld   [hl], a                                     ; $7205: $77
	rst  $38                                         ; $7206: $ff
	rst  $38                                         ; $7207: $ff
	dec  c                                           ; $7208: $0d
	ld   a, l                                        ; $7209: $7d
	ld   d, d                                        ; $720a: $52
	sbc  [hl]                                        ; $720b: $9e
	ld   e, b                                        ; $720c: $58
	ld   e, c                                        ; $720d: $59
	ld   d, [hl]                                     ; $720e: $56
	ld   h, l                                        ; $720f: $65
	ld   d, d                                        ; $7210: $52
	ld   l, l                                        ; $7211: $6d
	ld   h, l                                        ; $7212: $65
	adc  h                                           ; $7213: $8c
	ld   h, a                                        ; $7214: $67
	sbc  a                                           ; $7215: $9f
	dec  c                                           ; $7216: $0d
	ld   h, a                                        ; $7217: $67
	and  c                                           ; $7218: $a1
	adc  h                                           ; $7219: $8c
	ld   l, c                                        ; $721a: $69
	and  c                                           ; $721b: $a1
	ld   [hl], l                                     ; $721c: $75
	ld   h, l                                        ; $721d: $65
	ld   l, l                                        ; $721e: $6d
	sbc  a                                           ; $721f: $9f
	dec  c                                           ; $7220: $0d
	nop                                              ; $7221: $00
	ld   a, [bc]                                     ; $7222: $0a
	rrca                                             ; $7223: $0f
	ld   bc, $0102                                   ; $7224: $01 $02 $01
	ld   [bc], a                                     ; $7227: $02
	and  l                                           ; $7228: $a5
	ld   [bc], a                                     ; $7229: $02
	xor  d                                           ; $722a: $aa
	sbc  [hl]                                        ; $722b: $9e
	inc  bc                                          ; $722c: $03
	ld   c, [hl]                                     ; $722d: $4e
	inc  bc                                          ; $722e: $03
	ld   l, e                                        ; $722f: $6b
	ld   a, c                                        ; $7230: $79
	inc  bc                                          ; $7231: $03
	and  b                                           ; $7232: $a0
	ld   l, a                                        ; $7233: $6f
	inc  bc                                          ; $7234: $03
	add  b                                           ; $7235: $80
	ld   h, e                                        ; $7236: $63
	ld   a, b                                        ; $7237: $78
	ld   d, d                                        ; $7238: $52
	dec  c                                           ; $7239: $0d
	sub  [hl]                                        ; $723a: $96
	ld   d, h                                        ; $723b: $54
	ld   a, c                                        ; $723c: $79
	ld   a, e                                        ; $723d: $7b
	sbc  a                                           ; $723e: $9f
	dec  c                                           ; $723f: $0d
	nop                                              ; $7240: $00
	ld   a, [bc]                                     ; $7241: $0a
	dec  c                                           ; $7242: $0d
	nop                                              ; $7243: $00
	nop                                              ; $7244: $00
	rrca                                             ; $7245: $0f
	nop                                              ; $7246: $00
	ld   bc, $020c                                   ; $7247: $01 $0c $02
	ld   c, $4c                                      ; $724a: $0e $4c
	inc  e                                           ; $724c: $1c
	ld   bc, $0000                                   ; $724d: $01 $00 $00
	ld   bc, $5063                                   ; $7250: $01 $63 $50
	sbc  [hl]                                        ; $7253: $9e
	ld   [$6300], sp                                 ; $7254: $08 $00 $63
	and  c                                           ; $7257: $a1
	sbc  a                                           ; $7258: $9f
	dec  c                                           ; $7259: $0d
	inc  bc                                          ; $725a: $03
	ld   l, b                                        ; $725b: $68
	ld   a, c                                        ; $725c: $79
	ld   [bc], a                                     ; $725d: $02
	ld   a, a                                        ; $725e: $7f
	ld   e, e                                        ; $725f: $5b
	adc  h                                           ; $7260: $8c
	ld   h, a                                        ; $7261: $67
	sub  [hl]                                        ; $7262: $96
	sbc  a                                           ; $7263: $9f
	dec  c                                           ; $7264: $0d
	nop                                              ; $7265: $00
	ld   a, [bc]                                     ; $7266: $0a
	dec  c                                           ; $7267: $0d
	nop                                              ; $7268: $00
	nop                                              ; $7269: $00
	rrca                                             ; $726a: $0f
	nop                                              ; $726b: $00
	ld   bc, $4006                                   ; $726c: $01 $06 $40
	inc  de                                          ; $726f: $13
	rrca                                             ; $7270: $0f
	nop                                              ; $7271: $00
	ld   bc, $0201                                   ; $7272: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7275: $cf
	dec  b                                           ; $7276: $05
	ld   a, [de]                                     ; $7277: $1a
	ld   h, e                                        ; $7278: $63
	and  c                                           ; $7279: $a1
	sbc  a                                           ; $727a: $9f
	inc  bc                                          ; $727b: $03
	xor  a                                           ; $727c: $af
	inc  b                                           ; $727d: $04
	ld   d, $02                                      ; $727e: $16 $02
	xor  b                                           ; $7280: $a8
	ld   a, h                                        ; $7281: $7c
	pop  bc                                          ; $7282: $c1
	and  l                                           ; $7283: $a5
	and  $a0                                         ; $7284: $e6 $a0
	dec  c                                           ; $7286: $0d
	inc  b                                           ; $7287: $04
	sub  a                                           ; $7288: $97
	ld   h, l                                        ; $7289: $65
	ld   [hl], h                                     ; $728a: $74
	ld   [bc], a                                     ; $728b: $02
	inc  [hl]                                        ; $728c: $34
	ld   h, e                                        ; $728d: $63
	ld   d, d                                        ; $728e: $52
	sbc  a                                           ; $728f: $9f
	dec  c                                           ; $7290: $0d
	nop                                              ; $7291: $00
	ld   a, [bc]                                     ; $7292: $0a
	inc  e                                           ; $7293: $1c
	dec  b                                           ; $7294: $05
	inc  bc                                          ; $7295: $03
	inc  bc                                          ; $7296: $03
	ld   bc, $9e78                                   ; $7297: $01 $78 $9e
	ld   a, b                                        ; $729a: $78
	and  c                                           ; $729b: $a1
	ld   a, h                                        ; $729c: $7c
	ld   h, c                                        ; $729d: $61
	ld   [hl], c                                     ; $729e: $71
	ld   l, a                                        ; $729f: $6f
	sub  c                                           ; $72a0: $91
	ld   sp, hl                                      ; $72a1: $f9
	dec  c                                           ; $72a2: $0d
	and  a                                           ; $72a3: $a7
	jp   nz, $af03                                   ; $72a4: $c2 $03 $af

	inc  b                                           ; $72a7: $04
	ld   d, $02                                      ; $72a8: $16 $02
	xor  b                                           ; $72aa: $a8
	ld   a, h                                        ; $72ab: $7c
	pop  bc                                          ; $72ac: $c1
	and  l                                           ; $72ad: $a5
	and  $78                                         ; $72ae: $e6 $78
	and  c                                           ; $72b0: $a1
	ld   [hl], h                                     ; $72b1: $74
	dec  c                                           ; $72b2: $0d
	inc  b                                           ; $72b3: $04
	dec  hl                                          ; $72b4: $2b
	sub  a                                           ; $72b5: $97
	and  c                                           ; $72b6: $a1
	ld   [hl], l                                     ; $72b7: $75
	sbc  a                                           ; $72b8: $9f
	dec  c                                           ; $72b9: $0d
	nop                                              ; $72ba: $00
	ld   a, [bc]                                     ; $72bb: $0a
	add  hl, de                                      ; $72bc: $19
	dec  b                                           ; $72bd: $05
	ld   [bc], a                                     ; $72be: $02
	xor  $fb                                         ; $72bf: $ee $fb
	or   a                                           ; $72c1: $b7
	ei                                               ; $72c2: $fb
	ld   a, h                                        ; $72c3: $7c
	inc  bc                                          ; $72c4: $03
	adc  e                                           ; $72c5: $8b
	ld   [bc], a                                     ; $72c6: $02
	sub  [hl]                                        ; $72c7: $96
	ld   a, c                                        ; $72c8: $79
	inc  bc                                          ; $72c9: $03
	xor  [hl]                                        ; $72ca: $ae
	ld   [hl], c                                     ; $72cb: $71
	ld   l, l                                        ; $72cc: $6d
	ld   [hl], l                                     ; $72cd: $75
	ld   h, l                                        ; $72ce: $65
	sub  l                                           ; $72cf: $95
	nop                                              ; $72d0: $00
	nop                                              ; $72d1: $00
	inc  bc                                          ; $72d2: $03
	dec  d                                           ; $72d3: $15
	ld   [bc], a                                     ; $72d4: $02
	ld   hl, $0679                                   ; $72d5: $21 $79 $06
	ld   a, [de]                                     ; $72d8: $1a
	ld   [hl], c                                     ; $72d9: $71
	ld   l, l                                        ; $72da: $6d
	ld   [hl], l                                     ; $72db: $75
	ld   h, l                                        ; $72dc: $65
	sub  l                                           ; $72dd: $95
	nop                                              ; $72de: $00
	ld   bc, $3f07                                   ; $72df: $01 $07 $3f
	ld   [de], a                                     ; $72e2: $12
	ld   [bc], a                                     ; $72e3: $02
	inc  bc                                          ; $72e4: $03
	ld   bc, $2000                                   ; $72e5: $01 $00 $20
	nop                                              ; $72e8: $00
	rlca                                             ; $72e9: $07
	adc  $10                                         ; $72ea: $ce $10
	ld   [bc], a                                     ; $72ec: $02
	inc  bc                                          ; $72ed: $03
	ld   bc, $2001                                   ; $72ee: $01 $01 $20
	nop                                              ; $72f1: $00
	ld   b, $55                                      ; $72f2: $06 $55
	ld   de, $000f                                   ; $72f4: $11 $0f $00
	ld   bc, $0301                                   ; $72f7: $01 $01 $03
	dec  d                                           ; $72fa: $15
	ld   [bc], a                                     ; $72fb: $02
	ld   hl, $0679                                   ; $72fc: $21 $79 $06
	ld   a, [de]                                     ; $72ff: $1a
	ld   [hl], c                                     ; $7300: $71
	ld   l, l                                        ; $7301: $6d
	ld   e, b                                        ; $7302: $58
	ld   [bc], a                                     ; $7303: $02
	dec  sp                                          ; $7304: $3b
	ld   [hl], l                                     ; $7305: $75
	dec  c                                           ; $7306: $0d
	inc  b                                           ; $7307: $04
	ld   e, [hl]                                     ; $7308: $5e
	inc  b                                           ; $7309: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $730a: $cf
	ld   a, h                                        ; $730b: $7c
	inc  b                                           ; $730c: $04
	ld   d, $02                                      ; $730d: $16 $02
	xor  b                                           ; $730f: $a8
	and  b                                           ; $7310: $a0
	dec  c                                           ; $7311: $0d
	inc  b                                           ; $7312: $04
	adc  l                                           ; $7313: $8d
	ld   [hl], c                                     ; $7314: $71
	ld   l, l                                        ; $7315: $6d
	ld   a, h                                        ; $7316: $7c
	ld   [hl], l                                     ; $7317: $75
	ld   h, l                                        ; $7318: $65
	sub  l                                           ; $7319: $95
	ld   d, h                                        ; $731a: $54
	ld   sp, hl                                      ; $731b: $f9
	dec  c                                           ; $731c: $0d
	nop                                              ; $731d: $00
	ld   a, [bc]                                     ; $731e: $0a
	inc  e                                           ; $731f: $1c
	dec  b                                           ; $7320: $05
	rlca                                             ; $7321: $07
	rlca                                             ; $7322: $07
	dec  e                                           ; $7323: $1d
	ld   b, b                                        ; $7324: $40
	dec  d                                           ; $7325: $15
	inc  bc                                          ; $7326: $03
	dec  d                                           ; $7327: $15
	ld   bc, $2901                                   ; $7328: $01 $01 $29
	nop                                              ; $732b: $00
	ld   bc, $a178                                   ; $732c: $01 $78 $a1
	ld   [hl], l                                     ; $732f: $75
	and  a                                           ; $7330: $a7
	jp   nz, Jump_062_6b5a                           ; $7331: $c2 $5a $6b

	and  c                                           ; $7334: $a1
	ld   a, b                                        ; $7335: $78
	dec  c                                           ; $7336: $0d
	inc  bc                                          ; $7337: $03
	xor  a                                           ; $7338: $af
	inc  b                                           ; $7339: $04
	ld   d, $02                                      ; $733a: $16 $02
	xor  b                                           ; $733c: $a8
	ld   a, h                                        ; $733d: $7c
	pop  bc                                          ; $733e: $c1
	and  l                                           ; $733f: $a5
	and  $78                                         ; $7340: $e6 $78
	and  c                                           ; $7342: $a1
	ld   [hl], h                                     ; $7343: $74
	sbc  [hl]                                        ; $7344: $9e
	dec  c                                           ; $7345: $0d
	ld   b, $1a                                      ; $7346: $06 $1a
	sub  a                                           ; $7348: $97
	ld   a, b                                        ; $7349: $78
	ld   d, b                                        ; $734a: $50
	ld   e, c                                        ; $734b: $59
	and  c                                           ; $734c: $a1
	ld   a, e                                        ; $734d: $7b
	and  c                                           ; $734e: $a1
	ld   a, [$000d]                                  ; $734f: $fa $0d $00
	ld   a, [bc]                                     ; $7352: $0a
	rrca                                             ; $7353: $0f
	ld   bc, $0104                              ; $7354: $01 $04 $01
	ld   [$6300], sp                                 ; $7357: $08 $00 $63
	and  c                                           ; $735a: $a1
	sbc  a                                           ; $735b: $9f
	dec  c                                           ; $735c: $0d
	ld   l, a                                        ; $735d: $6f
	ld   e, d                                        ; $735e: $5a
	ld   d, d                                        ; $735f: $52
	adc  h                                           ; $7360: $8c
	ld   h, a                                        ; $7361: $67
	sub  [hl]                                        ; $7362: $96
	sbc  a                                           ; $7363: $9f
	dec  c                                           ; $7364: $0d
	ld   e, e                                        ; $7365: $5b
	ld   [hl], c                                     ; $7366: $71
	halt                                             ; $7367: $76
	inc  bc                                          ; $7368: $03
	adc  e                                           ; $7369: $8b
	ld   [bc], a                                     ; $736a: $02
	sub  [hl]                                        ; $736b: $96
	ld   a, c                                        ; $736c: $79
	inc  bc                                          ; $736d: $03
	xor  [hl]                                        ; $736e: $ae
	ld   [hl], c                                     ; $736f: $71
	ld   l, l                                        ; $7370: $6d
	and  c                                           ; $7371: $a1
	ld   [hl], l                                     ; $7372: $75
	ld   h, a                                        ; $7373: $67
	sub  [hl]                                        ; $7374: $96
	sbc  a                                           ; $7375: $9f
	dec  c                                           ; $7376: $0d
	nop                                              ; $7377: $00
	ld   a, [bc]                                     ; $7378: $0a
	ld   b, $84                                      ; $7379: $06 $84
	ld   de, $000f                                   ; $737b: $11 $0f $00
	ld   bc, $ff01                                   ; $737e: $01 $01 $ff
	rst  $38                                         ; $7381: $ff
	rst  $38                                         ; $7382: $ff
	rst  $38                                         ; $7383: $ff
	rst  $38                                         ; $7384: $ff
	rst  $38                                         ; $7385: $ff
	rst  $38                                         ; $7386: $ff
	rst  $38                                         ; $7387: $ff
	rst  $38                                         ; $7388: $ff
	rst  $38                                         ; $7389: $ff
	dec  c                                           ; $738a: $0d
	nop                                              ; $738b: $00
	ld   a, [bc]                                     ; $738c: $0a
	rrca                                             ; $738d: $0f
	ld   bc, $0104                              ; $738e: $01 $04 $01
	ld   [$6300], sp                                 ; $7391: $08 $00 $63
	and  c                                           ; $7394: $a1
	sbc  a                                           ; $7395: $9f
	dec  c                                           ; $7396: $0d
	ld   e, e                                        ; $7397: $5b
	ld   [hl], c                                     ; $7398: $71
	halt                                             ; $7399: $76
	inc  bc                                          ; $739a: $03
	adc  e                                           ; $739b: $8b
	ld   [bc], a                                     ; $739c: $02
	sub  [hl]                                        ; $739d: $96
	ld   a, c                                        ; $739e: $79
	inc  bc                                          ; $739f: $03
	xor  [hl]                                        ; $73a0: $ae
	ld   [hl], c                                     ; $73a1: $71
	ld   l, l                                        ; $73a2: $6d
	and  c                                           ; $73a3: $a1
	ld   [hl], l                                     ; $73a4: $75
	ld   h, a                                        ; $73a5: $67
	sub  [hl]                                        ; $73a6: $96
	sbc  a                                           ; $73a7: $9f
	dec  c                                           ; $73a8: $0d
	nop                                              ; $73a9: $00
	ld   a, [bc]                                     ; $73aa: $0a
	inc  e                                           ; $73ab: $1c
	dec  b                                           ; $73ac: $05
	ld   [bc], a                                     ; $73ad: $02
	ld   [bc], a                                     ; $73ae: $02
	ld   bc, $527d                                   ; $73af: $01 $7d $52
	ld   a, l                                        ; $73b2: $7d
	ld   d, d                                        ; $73b3: $52
	sbc  [hl]                                        ; $73b4: $9e
	ld   h, e                                        ; $73b5: $63
	ld   e, l                                        ; $73b6: $5d
	sub  a                                           ; $73b7: $97
	ld   a, l                                        ; $73b8: $7d
	and  c                                           ; $73b9: $a1
	sbc  a                                           ; $73ba: $9f
	dec  c                                           ; $73bb: $0d
	ld   l, e                                        ; $73bc: $6b
	ld   a, h                                        ; $73bd: $7c
	halt                                             ; $73be: $76
	ld   e, b                                        ; $73bf: $58
	sbc  b                                           ; $73c0: $98
	ld   [hl], l                                     ; $73c1: $75
	ld   h, a                                        ; $73c2: $67
	sbc  a                                           ; $73c3: $9f
	dec  c                                           ; $73c4: $0d
	ld   h, a                                        ; $73c5: $67
	adc  l                                           ; $73c6: $8d
	adc  h                                           ; $73c7: $8c
	ld   l, c                                        ; $73c8: $69
	and  c                                           ; $73c9: $a1
	sbc  a                                           ; $73ca: $9f
	dec  c                                           ; $73cb: $0d
	nop                                              ; $73cc: $00
	ld   a, [bc]                                     ; $73cd: $0a
	inc  e                                           ; $73ce: $1c
	dec  b                                           ; $73cf: $05
	ld   b, $06                                      ; $73d0: $06 $06
	ld   bc, $fbee                                   ; $73d2: $01 $ee $fb
	or   a                                           ; $73d5: $b7
	ei                                               ; $73d6: $fb
	ld   a, h                                        ; $73d7: $7c
	inc  bc                                          ; $73d8: $03
	adc  e                                           ; $73d9: $8b
	ld   [bc], a                                     ; $73da: $02
	sub  [hl]                                        ; $73db: $96
	ld   a, c                                        ; $73dc: $79
	inc  bc                                          ; $73dd: $03
	xor  [hl]                                        ; $73de: $ae
	ld   d, [hl]                                     ; $73df: $56
	sbc  c                                           ; $73e0: $99
	ld   e, c                                        ; $73e1: $59
	ld   a, b                                        ; $73e2: $78
	db   $fc                                         ; $73e3: $fc
	dec  c                                           ; $73e4: $0d
	ld   [hl], h                                     ; $73e5: $74
	dec  b                                           ; $73e6: $05
	pop  de                                          ; $73e7: $d1
	ld   [hl], h                                     ; $73e8: $74
	and  c                                           ; $73e9: $a1
	ld   e, a                                        ; $73ea: $5f
	ld   [hl], a                                     ; $73eb: $77
	rst  $38                                         ; $73ec: $ff
	rst  $38                                         ; $73ed: $ff
	dec  c                                           ; $73ee: $0d
	ld   d, b                                        ; $73ef: $50
	ld   e, c                                        ; $73f0: $59
	and  c                                           ; $73f1: $a1
	ld   e, c                                        ; $73f2: $59
	ld   [hl], c                                     ; $73f3: $71
	ld   l, l                                        ; $73f4: $6d
	sbc  l                                           ; $73f5: $9d
	sbc  a                                           ; $73f6: $9f
	dec  c                                           ; $73f7: $0d
	nop                                              ; $73f8: $00
	ld   a, [bc]                                     ; $73f9: $0a
	inc  e                                           ; $73fa: $1c
	dec  b                                           ; $73fb: $05
	inc  b                                           ; $73fc: $04
	inc  b                                           ; $73fd: $04
	ld   bc, $527d                                   ; $73fe: $01 $7d $52
	sbc  [hl]                                        ; $7401: $9e
	ld   e, b                                        ; $7402: $58
	ld   e, c                                        ; $7403: $59
	ld   d, [hl]                                     ; $7404: $56
	ld   h, l                                        ; $7405: $65
	ld   d, d                                        ; $7406: $52
	ld   l, l                                        ; $7407: $6d
	ld   h, l                                        ; $7408: $65
	adc  h                                           ; $7409: $8c
	ld   h, a                                        ; $740a: $67
	sbc  a                                           ; $740b: $9f
	dec  c                                           ; $740c: $0d
	ld   h, a                                        ; $740d: $67
	and  c                                           ; $740e: $a1
	adc  h                                           ; $740f: $8c
	ld   l, c                                        ; $7410: $69
	and  c                                           ; $7411: $a1
	ld   [hl], l                                     ; $7412: $75
	ld   h, l                                        ; $7413: $65
	ld   l, l                                        ; $7414: $6d
	sbc  a                                           ; $7415: $9f
	dec  c                                           ; $7416: $0d
	nop                                              ; $7417: $00
	ld   a, [bc]                                     ; $7418: $0a
	rrca                                             ; $7419: $0f
	ld   bc, $0102                                   ; $741a: $01 $02 $01
	ld   [bc], a                                     ; $741d: $02
	and  l                                           ; $741e: $a5
	ld   [bc], a                                     ; $741f: $02
	xor  d                                           ; $7420: $aa
	sbc  [hl]                                        ; $7421: $9e
	inc  bc                                          ; $7422: $03
	ld   c, [hl]                                     ; $7423: $4e
	inc  bc                                          ; $7424: $03
	ld   l, e                                        ; $7425: $6b
	ld   a, c                                        ; $7426: $79
	inc  bc                                          ; $7427: $03
	and  b                                           ; $7428: $a0
	ld   l, a                                        ; $7429: $6f
	inc  bc                                          ; $742a: $03
	add  b                                           ; $742b: $80
	ld   h, e                                        ; $742c: $63
	ld   a, b                                        ; $742d: $78
	ld   d, d                                        ; $742e: $52
	dec  c                                           ; $742f: $0d
	sub  [hl]                                        ; $7430: $96
	ld   d, h                                        ; $7431: $54
	ld   a, c                                        ; $7432: $79
	ld   a, e                                        ; $7433: $7b
	sbc  a                                           ; $7434: $9f
	dec  c                                           ; $7435: $0d
	nop                                              ; $7436: $00
	ld   a, [bc]                                     ; $7437: $0a
	dec  c                                           ; $7438: $0d
	nop                                              ; $7439: $00
	nop                                              ; $743a: $00
	rrca                                             ; $743b: $0f
	nop                                              ; $743c: $00
	ld   bc, $020c                                   ; $743d: $01 $0c $02
	ld   c, $4c                                      ; $7440: $0e $4c
	inc  e                                           ; $7442: $1c
	ld   bc, $0000                                   ; $7443: $01 $00 $00
	ld   bc, $5063                                   ; $7446: $01 $63 $50
	sbc  [hl]                                        ; $7449: $9e
	ld   [$6300], sp                                 ; $744a: $08 $00 $63
	and  c                                           ; $744d: $a1
	sbc  a                                           ; $744e: $9f
	dec  c                                           ; $744f: $0d
	inc  bc                                          ; $7450: $03
	ld   l, b                                        ; $7451: $68

Jump_062_7452:
	ld   a, c                                        ; $7452: $79
	ld   [bc], a                                     ; $7453: $02
	ld   a, a                                        ; $7454: $7f
	ld   e, e                                        ; $7455: $5b
	adc  h                                           ; $7456: $8c
	ld   h, a                                        ; $7457: $67
	sub  [hl]                                        ; $7458: $96
	sbc  a                                           ; $7459: $9f
	dec  c                                           ; $745a: $0d
	nop                                              ; $745b: $00
	ld   a, [bc]                                     ; $745c: $0a
	dec  c                                           ; $745d: $0d
	nop                                              ; $745e: $00
	nop                                              ; $745f: $00
	rrca                                             ; $7460: $0f
	nop                                              ; $7461: $00
	ld   bc, $4006                                   ; $7462: $01 $06 $40
	inc  de                                          ; $7465: $13
	rrca                                             ; $7466: $0f
	nop                                              ; $7467: $00
	ld   bc, $0201                                   ; $7468: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $746b: $cf
	dec  b                                           ; $746c: $05
	ld   a, [de]                                     ; $746d: $1a
	ld   h, e                                        ; $746e: $63
	and  c                                           ; $746f: $a1
	sbc  a                                           ; $7470: $9f
	inc  bc                                          ; $7471: $03
	xor  a                                           ; $7472: $af
	inc  b                                           ; $7473: $04
	ld   d, $02                                      ; $7474: $16 $02
	xor  b                                           ; $7476: $a8
	ld   a, h                                        ; $7477: $7c
	pop  bc                                          ; $7478: $c1
	and  l                                           ; $7479: $a5
	and  $75                                         ; $747a: $e6 $75
	dec  c                                           ; $747c: $0d
	xor  $fb                                         ; $747d: $ee $fb
	or   a                                           ; $747f: $b7
	ei                                               ; $7480: $fb
	ld   a, h                                        ; $7481: $7c
	inc  bc                                          ; $7482: $03
	adc  e                                           ; $7483: $8b
	ld   [bc], a                                     ; $7484: $02
	sub  [hl]                                        ; $7485: $96
	and  b                                           ; $7486: $a0
	ld   h, l                                        ; $7487: $65
	ld   [hl], h                                     ; $7488: $74
	ld   d, d                                        ; $7489: $52
	sbc  c                                           ; $748a: $99
	dec  c                                           ; $748b: $0d
	ld   [hl], l                                     ; $748c: $75
	ld   h, l                                        ; $748d: $65
	sub  l                                           ; $748e: $95
	ld   d, h                                        ; $748f: $54
	ld   sp, hl                                      ; $7490: $f9
	dec  c                                           ; $7491: $0d
	nop                                              ; $7492: $00
	ld   a, [bc]                                     ; $7493: $0a
	inc  e                                           ; $7494: $1c
	dec  b                                           ; $7495: $05
	inc  bc                                          ; $7496: $03
	inc  bc                                          ; $7497: $03
	ld   bc, $9eaf                                   ; $7498: $01 $af $9e
	xor  a                                           ; $749b: $af
	or   b                                           ; $749c: $b0
	call nz, $10fa                                   ; $749d: $c4 $fa $10
	pop  de                                          ; $74a0: $d1
	sbc  [hl]                                        ; $74a1: $9e
	pop  de                                          ; $74a2: $d1
	xor  $6d                                         ; $74a3: $ee $6d
	ld   sp, hl                                      ; $74a5: $f9
	dec  c                                           ; $74a6: $0d
	ld   a, c                                        ; $74a7: $79
	ld   l, c                                        ; $74a8: $69
	sub  b                                           ; $74a9: $90
	and  c                                           ; $74aa: $a1
	sub  d                                           ; $74ab: $92
	ld   e, a                                        ; $74ac: $5f
	ld   [hl], a                                     ; $74ad: $77
	sbc  [hl]                                        ; $74ae: $9e
	inc  bc                                          ; $74af: $03
	xor  [hl]                                        ; $74b0: $ae
	ld   d, [hl]                                     ; $74b1: $56
	sbc  c                                           ; $74b2: $99
	ld   e, c                                        ; $74b3: $59
	ld   a, b                                        ; $74b4: $78
	db   $fc                                         ; $74b5: $fc
	dec  c                                           ; $74b6: $0d
	ld   [hl], h                                     ; $74b7: $74
	dec  b                                           ; $74b8: $05
	pop  de                                          ; $74b9: $d1
	ld   [hl], c                                     ; $74ba: $71
	ld   [hl], h                                     ; $74bb: $74
	ld   a, b                                        ; $74bc: $78
	rst  $38                                         ; $74bd: $ff
	rst  $38                                         ; $74be: $ff
	dec  c                                           ; $74bf: $0d
	nop                                              ; $74c0: $00
	ld   a, [bc]                                     ; $74c1: $0a
	inc  e                                           ; $74c2: $1c
	dec  b                                           ; $74c3: $05
	ld   [bc], a                                     ; $74c4: $02
	ld   [bc], a                                     ; $74c5: $02
	ld   bc, $d902                                   ; $74c6: $01 $02 $d9
	ld   [bc], a                                     ; $74c9: $02
	call nz, Call_062_509e                           ; $74ca: $c4 $9e $50
	ld   e, c                                        ; $74cd: $59
	and  c                                           ; $74ce: $a1
	ld   e, c                                        ; $74cf: $59
	ld   [hl], c                                     ; $74d0: $71
	ld   l, l                                        ; $74d1: $6d
	ld   e, a                                        ; $74d2: $5f
	ld   [hl], a                                     ; $74d3: $77
	rst  $38                                         ; $74d4: $ff
	rst  $38                                         ; $74d5: $ff
	dec  c                                           ; $74d6: $0d
	ld   a, l                                        ; $74d7: $7d
	ld   d, d                                        ; $74d8: $52
	sbc  [hl]                                        ; $74d9: $9e
	ld   e, b                                        ; $74da: $58
	ld   e, c                                        ; $74db: $59
	ld   d, [hl]                                     ; $74dc: $56
	ld   h, l                                        ; $74dd: $65
	ld   d, d                                        ; $74de: $52
	ld   l, l                                        ; $74df: $6d
	ld   h, l                                        ; $74e0: $65
	adc  h                                           ; $74e1: $8c
	ld   h, a                                        ; $74e2: $67
	sbc  a                                           ; $74e3: $9f
	dec  c                                           ; $74e4: $0d
	ld   h, a                                        ; $74e5: $67
	and  c                                           ; $74e6: $a1
	adc  h                                           ; $74e7: $8c
	ld   l, c                                        ; $74e8: $69
	and  c                                           ; $74e9: $a1
	ld   [hl], l                                     ; $74ea: $75
	ld   h, l                                        ; $74eb: $65
	ld   l, l                                        ; $74ec: $6d
	sbc  a                                           ; $74ed: $9f
	dec  c                                           ; $74ee: $0d
	nop                                              ; $74ef: $00
	ld   a, [bc]                                     ; $74f0: $0a
	rrca                                             ; $74f1: $0f
	ld   bc, $0100                                   ; $74f2: $01 $00 $01
	ld   [bc], a                                     ; $74f5: $02
	and  l                                           ; $74f6: $a5
	ld   [bc], a                                     ; $74f7: $02
	xor  d                                           ; $74f8: $aa
	sbc  [hl]                                        ; $74f9: $9e
	inc  bc                                          ; $74fa: $03
	ld   c, [hl]                                     ; $74fb: $4e
	inc  bc                                          ; $74fc: $03
	ld   l, e                                        ; $74fd: $6b
	ld   a, c                                        ; $74fe: $79
	inc  bc                                          ; $74ff: $03
	and  b                                           ; $7500: $a0
	ld   l, a                                        ; $7501: $6f
	inc  bc                                          ; $7502: $03
	add  b                                           ; $7503: $80
	ld   h, e                                        ; $7504: $63
	ld   a, b                                        ; $7505: $78
	ld   d, d                                        ; $7506: $52
	dec  c                                           ; $7507: $0d
	sub  [hl]                                        ; $7508: $96
	ld   d, h                                        ; $7509: $54
	ld   a, c                                        ; $750a: $79
	ld   a, e                                        ; $750b: $7b
	sbc  a                                           ; $750c: $9f
	dec  c                                           ; $750d: $0d
	nop                                              ; $750e: $00
	ld   a, [bc]                                     ; $750f: $0a
	dec  c                                           ; $7510: $0d
	nop                                              ; $7511: $00
	nop                                              ; $7512: $00
	rrca                                             ; $7513: $0f
	nop                                              ; $7514: $00
	ld   bc, $020c                                   ; $7515: $01 $0c $02
	ld   c, $4c                                      ; $7518: $0e $4c
	inc  e                                           ; $751a: $1c
	ld   bc, $0101                                   ; $751b: $01 $01 $01
	dec  e                                           ; $751e: $1d
	ld   b, b                                        ; $751f: $40
	ld   de, $1103                                   ; $7520: $11 $03 $11
	ld   bc, $2803                                   ; $7523: $01 $03 $28
	nop                                              ; $7526: $00
	ld   bc, $0008                                   ; $7527: $01 $08 $00
	ld   h, e                                        ; $752a: $63
	and  c                                           ; $752b: $a1
	ld   h, a                                        ; $752c: $67
	ld   h, d                                        ; $752d: $62
	ld   d, d                                        ; $752e: $52
	sbc  l                                           ; $752f: $9d
	sbc  a                                           ; $7530: $9f
	dec  c                                           ; $7531: $0d
	ld   [bc], a                                     ; $7532: $02
	jr   nz, @+$06                                   ; $7533: $20 $04

	ld   e, [hl]                                     ; $7535: $5e
	ld   [hl], l                                     ; $7536: $75
	inc  b                                           ; $7537: $04
	ld   c, $04                                      ; $7538: $0e $04
	jr   jr_062_75a9                                 ; $753a: $18 $6d

	sbc  b                                           ; $753c: $98
	sub  [hl]                                        ; $753d: $96
	ld   a, [$000d]                                  ; $753e: $fa $0d $00
	ld   a, [bc]                                     ; $7541: $0a
	inc  e                                           ; $7542: $1c
	ld   bc, $0000                                   ; $7543: $01 $00 $00
	ld   bc, $5063                                   ; $7546: $01 $63 $50
	sbc  [hl]                                        ; $7549: $9e
	ld   [$6300], sp                                 ; $754a: $08 $00 $63
	and  c                                           ; $754d: $a1
	sbc  a                                           ; $754e: $9f
	dec  c                                           ; $754f: $0d
	inc  bc                                          ; $7550: $03
	ld   l, b                                        ; $7551: $68
	ld   a, c                                        ; $7552: $79
	ld   [bc], a                                     ; $7553: $02
	ld   a, a                                        ; $7554: $7f
	ld   e, e                                        ; $7555: $5b
	adc  h                                           ; $7556: $8c
	ld   h, l                                        ; $7557: $65
	sub  l                                           ; $7558: $95
	ld   d, h                                        ; $7559: $54
	sbc  a                                           ; $755a: $9f
	dec  c                                           ; $755b: $0d
	nop                                              ; $755c: $00
	ld   a, [bc]                                     ; $755d: $0a
	dec  c                                           ; $755e: $0d
	nop                                              ; $755f: $00
	nop                                              ; $7560: $00
	rrca                                             ; $7561: $0f
	nop                                              ; $7562: $00
	ld   bc, $4006                                   ; $7563: $01 $06 $40
	inc  de                                          ; $7566: $13
	inc  hl                                          ; $7567: $23
	ld   b, h                                        ; $7568: $44
	inc  e                                           ; $7569: $1c
	ld   bc, $0000                                   ; $756a: $01 $00 $00
	ld   bc, $6803                                   ; $756d: $01 $03 $68
	ld   a, l                                        ; $7570: $7d
	sbc  [hl]                                        ; $7571: $9e
	ld   h, a                                        ; $7572: $67
	adc  l                                           ; $7573: $8d
	sbc  d                                           ; $7574: $9a
	ld   h, e                                        ; $7575: $63
	and  c                                           ; $7576: $a1
	ld   [hl], l                                     ; $7577: $75
	ld   h, a                                        ; $7578: $67
	sbc  a                                           ; $7579: $9f
	dec  c                                           ; $757a: $0d
	nop                                              ; $757b: $00
	ld   a, [bc]                                     ; $757c: $0a
	dec  c                                           ; $757d: $0d
	nop                                              ; $757e: $00
	nop                                              ; $757f: $00
	rrca                                             ; $7580: $0f
	nop                                              ; $7581: $00
	ld   bc, $0614                                   ; $7582: $01 $14 $06
	ld   bc, $6701                                   ; $7585: $01 $01 $67
	adc  l                                           ; $7588: $8d
	sbc  d                                           ; $7589: $9a
	ld   h, e                                        ; $758a: $63
	and  c                                           ; $758b: $a1
	sbc  a                                           ; $758c: $9f
	dec  c                                           ; $758d: $0d
	ld   [$7500], sp                                 ; $758e: $08 $00 $75
	ld   h, a                                        ; $7591: $67
	sbc  a                                           ; $7592: $9f
	dec  c                                           ; $7593: $0d
	nop                                              ; $7594: $00
	ld   a, [bc]                                     ; $7595: $0a
	inc  d                                           ; $7596: $14
	ld   a, [bc]                                     ; $7597: $0a
	ld   bc, $a90e                                   ; $7598: $01 $0e $a9
	inc  e                                           ; $759b: $1c
	ld   [bc], a                                     ; $759c: $02
	nop                                              ; $759d: $00
	nop                                              ; $759e: $00
	ld   bc, $0008                                   ; $759f: $01 $08 $00
	ld   h, e                                        ; $75a2: $63
	and  c                                           ; $75a3: $a1
	sbc  a                                           ; $75a4: $9f
	dec  c                                           ; $75a5: $0d
	ld   d, b                                        ; $75a6: $50
	sub  a                                           ; $75a7: $97
	sbc  [hl]                                        ; $75a8: $9e

jr_062_75a9:
	ld   h, e                                        ; $75a9: $63
	ld   e, l                                        ; $75aa: $5d
	sub  a                                           ; $75ab: $97
	ld   h, e                                        ; $75ac: $63
	and  c                                           ; $75ad: $a1
	sub  b                                           ; $75ae: $90
	dec  c                                           ; $75af: $0d
	ld   h, d                                        ; $75b0: $62
	ld   d, d                                        ; $75b1: $52
	ld   [hl], c                                     ; $75b2: $71
	ld   h, l                                        ; $75b3: $65
	sub  l                                           ; $75b4: $95
	ld   a, c                                        ; $75b5: $79
	ld   sp, hl                                      ; $75b6: $f9
	dec  c                                           ; $75b7: $0d
	nop                                              ; $75b8: $00
	ld   a, [bc]                                     ; $75b9: $0a
	rrca                                             ; $75ba: $0f
	nop                                              ; $75bb: $00
	ld   bc, $0301                                   ; $75bc: $01 $01 $03
	adc  e                                           ; $75bf: $8b
	ld   a, l                                        ; $75c0: $7d
	sbc  [hl]                                        ; $75c1: $9e
	ld   a, b                                        ; $75c2: $78
	ld   e, l                                        ; $75c3: $5d
	ld   a, b                                        ; $75c4: $78
	ld   [hl], c                                     ; $75c5: $71
	ld   l, l                                        ; $75c6: $6d
	inc  b                                           ; $75c7: $04
	sub  d                                           ; $75c8: $92
	and  b                                           ; $75c9: $a0
	inc  b                                           ; $75ca: $04
	inc  d                                           ; $75cb: $14
	ld   h, l                                        ; $75cc: $65
	ld   [hl], h                                     ; $75cd: $74
	dec  c                                           ; $75ce: $0d
	ld   d, d                                        ; $75cf: $52
	sbc  c                                           ; $75d0: $99
	ld   a, h                                        ; $75d1: $7c
	ld   [hl], l                                     ; $75d2: $75
	ld   h, a                                        ; $75d3: $67
	ld   e, d                                        ; $75d4: $5a
	rst  $38                                         ; $75d5: $ff
	rst  $38                                         ; $75d6: $ff
	dec  c                                           ; $75d7: $0d
	nop                                              ; $75d8: $00
	ld   a, [bc]                                     ; $75d9: $0a
	ld   bc, $8d67                                   ; $75da: $01 $67 $8d
	sbc  d                                           ; $75dd: $9a
	ld   h, e                                        ; $75de: $63
	and  c                                           ; $75df: $a1
	sbc  [hl]                                        ; $75e0: $9e
	ld   l, a                                        ; $75e1: $6f
	sub  l                                           ; $75e2: $95
	ld   [hl], c                                     ; $75e3: $71
	halt                                             ; $75e4: $76
	inc  b                                           ; $75e5: $04
	sub  l                                           ; $75e6: $95
	ld   [bc], a                                     ; $75e7: $02
	ld   hl, $0d7c                                   ; $75e8: $21 $7c $0d
	inc  b                                           ; $75eb: $04
	dec  bc                                          ; $75ec: $0b
	and  b                                           ; $75ed: $a0
	ld   [bc], a                                     ; $75ee: $02
	sub  l                                           ; $75ef: $95
	ld   l, c                                        ; $75f0: $69
	ld   [hl], h                                     ; $75f1: $74
	ld   d, d                                        ; $75f2: $52
	ld   l, l                                        ; $75f3: $6d
	ld   l, [hl]                                     ; $75f4: $6e
	ld   e, a                                        ; $75f5: $5f
	adc  h                                           ; $75f6: $8c
	ld   h, a                                        ; $75f7: $67
	ld   e, c                                        ; $75f8: $59
	ld   sp, hl                                      ; $75f9: $f9
	dec  c                                           ; $75fa: $0d
	nop                                              ; $75fb: $00
	ld   a, [bc]                                     ; $75fc: $0a
	rrca                                             ; $75fd: $0f
	ld   [bc], a                                     ; $75fe: $02
	nop                                              ; $75ff: $00
	ld   bc, $9b96                                   ; $7600: $01 $96 $9b
	ld   h, l                                        ; $7603: $65
	ld   e, l                                        ; $7604: $5d
	ld   [hl], h                                     ; $7605: $74
	sub  [hl]                                        ; $7606: $96
	sbc  a                                           ; $7607: $9f
	dec  c                                           ; $7608: $0d
	ld   [hl], a                                     ; $7609: $77
	ld   d, h                                        ; $760a: $54
	ld   l, h                                        ; $760b: $6c
	sbc  [hl]                                        ; $760c: $9e
	ld   e, b                                        ; $760d: $58
	inc  b                                           ; $760e: $04
	ld   b, l                                        ; $760f: $45
	sbc  b                                           ; $7610: $98
	ld   a, c                                        ; $7611: $79
	ld   a, b                                        ; $7612: $78
	ld   [hl], c                                     ; $7613: $71
	ld   [hl], h                                     ; $7614: $74
	sbc  a                                           ; $7615: $9f
	dec  c                                           ; $7616: $0d
	nop                                              ; $7617: $00
	ld   a, [bc]                                     ; $7618: $0a
	dec  c                                           ; $7619: $0d
	nop                                              ; $761a: $00
	nop                                              ; $761b: $00
	rrca                                             ; $761c: $0f
	nop                                              ; $761d: $00
	ld   bc, $6b01                                   ; $761e: $01 $01 $6b
	sbc  d                                           ; $7621: $9a
	ld   [hl], l                                     ; $7622: $75
	ld   a, l                                        ; $7623: $7d
	sbc  [hl]                                        ; $7624: $9e
	inc  bc                                          ; $7625: $03
	add  e                                           ; $7626: $83
	dec  b                                           ; $7627: $05
	dec  c                                           ; $7628: $0d
	ld   h, l                                        ; $7629: $65
	adc  h                                           ; $762a: $8c
	ld   h, a                                        ; $762b: $67
	sbc  a                                           ; $762c: $9f
	dec  c                                           ; $762d: $0d
	ld   d, [hl]                                     ; $762e: $56
	db   $fc                                         ; $762f: $fc
	ld   [hl], c                                     ; $7630: $71
	halt                                             ; $7631: $76
	rst  $38                                         ; $7632: $ff
	rst  $38                                         ; $7633: $ff
	dec  c                                           ; $7634: $0d
	nop                                              ; $7635: $00
	ld   a, [bc]                                     ; $7636: $0a
	inc  c                                           ; $7637: $0c
	dec  bc                                          ; $7638: $0b
	inc  e                                           ; $7639: $1c
	ld   [bc], a                                     ; $763a: $02
	nop                                              ; $763b: $00
	nop                                              ; $763c: $00
	ld   bc, $5477                                   ; $763d: $01 $77 $54
	ld   [hl], l                                     ; $7640: $75
	ld   h, a                                        ; $7641: $67
	ld   a, h                                        ; $7642: $7c
	ld   sp, hl                                      ; $7643: $f9
	dec  c                                           ; $7644: $0d
	ld   a, b                                        ; $7645: $78
	ld   a, c                                        ; $7646: $79
	ld   e, c                                        ; $7647: $59
	ld   [bc], a                                     ; $7648: $02
	sub  l                                           ; $7649: $95
	ld   [hl], d                                     ; $764a: $72
	ld   e, c                                        ; $764b: $59
	sbc  b                                           ; $764c: $98
	adc  h                                           ; $764d: $8c
	ld   h, l                                        ; $764e: $65
	ld   [hl], h                                     ; $764f: $74
	ld   sp, hl                                      ; $7650: $f9
	dec  c                                           ; $7651: $0d
	nop                                              ; $7652: $00
	ld   a, [bc]                                     ; $7653: $0a
	add  hl, de                                      ; $7654: $19
	dec  b                                           ; $7655: $05
	ld   [bc], a                                     ; $7656: $02
	dec  b                                           ; $7657: $05
	ret  nc                                          ; $7658: $d0

	ld   [bc], a                                     ; $7659: $02
	ld   b, $04                                      ; $765a: $06 $04
	ld   e, l                                        ; $765c: $5d
	nop                                              ; $765d: $00
	nop                                              ; $765e: $00
	xor  l                                           ; $765f: $ad
	db   $eb                                         ; $7660: $eb
	cp   d                                           ; $7661: $ba
	ld   a, h                                        ; $7662: $7c
	ld   e, l                                        ; $7663: $5d
	ld   [hl], d                                     ; $7664: $72
	nop                                              ; $7665: $00
	ld   bc, $eb07                                   ; $7666: $01 $07 $eb
	dec  d                                           ; $7669: $15
	ld   [bc], a                                     ; $766a: $02
	inc  bc                                          ; $766b: $03
	ld   bc, $2000                                   ; $766c: $01 $00 $20
	nop                                              ; $766f: $00
	rlca                                             ; $7670: $07
	ld   d, l                                        ; $7671: $55
	inc  d                                           ; $7672: $14
	ld   [bc], a                                     ; $7673: $02
	inc  bc                                          ; $7674: $03
	ld   bc, $2001                                   ; $7675: $01 $01 $20
	nop                                              ; $7678: $00
	ld   b, $cc                                      ; $7679: $06 $cc
	inc  d                                           ; $767b: $14
	rrca                                             ; $767c: $0f
	nop                                              ; $767d: $00
	ld   bc, $ad01                                   ; $767e: $01 $01 $ad
	db   $eb                                         ; $7681: $eb
	cp   d                                           ; $7682: $ba
	ld   a, h                                        ; $7683: $7c
	ld   e, l                                        ; $7684: $5d
	ld   [hl], d                                     ; $7685: $72
	ld   e, d                                        ; $7686: $5a
	ld   d, b                                        ; $7687: $50
	sbc  c                                           ; $7688: $99
	ld   e, c                                        ; $7689: $59
	halt                                             ; $768a: $76
	dec  c                                           ; $768b: $0d
	dec  b                                           ; $768c: $05
	pop  de                                          ; $768d: $d1
	ld   [hl], c                                     ; $768e: $71
	ld   l, l                                        ; $768f: $6d
	and  c                                           ; $7690: $a1
	ld   [hl], l                                     ; $7691: $75
	ld   h, a                                        ; $7692: $67
	ld   e, d                                        ; $7693: $5a
	rst  $38                                         ; $7694: $ff
	rst  $38                                         ; $7695: $ff
	dec  c                                           ; $7696: $0d
	nop                                              ; $7697: $00
	ld   a, [bc]                                     ; $7698: $0a
	inc  e                                           ; $7699: $1c
	ld   [bc], a                                     ; $769a: $02
	nop                                              ; $769b: $00
	nop                                              ; $769c: $00
	dec  e                                           ; $769d: $1d
	ld   b, b                                        ; $769e: $40
	ld   [de], a                                     ; $769f: $12
	inc  bc                                          ; $76a0: $03
	ld   [de], a                                     ; $76a1: $12
	ld   bc, $2902                                   ; $76a2: $01 $02 $29
	nop                                              ; $76a5: $00
	ld   bc, $ebad                                   ; $76a6: $01 $ad $eb
	cp   d                                           ; $76a9: $ba
	ld   a, h                                        ; $76aa: $7c
	ld   e, l                                        ; $76ab: $5d
	ld   [hl], d                                     ; $76ac: $72
	ld   sp, hl                                      ; $76ad: $f9
	dec  c                                           ; $76ae: $0d
	sbc  l                                           ; $76af: $9d
	ld   l, l                                        ; $76b0: $6d
	ld   e, l                                        ; $76b1: $5d
	ld   h, l                                        ; $76b2: $65
	sbc  [hl]                                        ; $76b3: $9e
	ld   l, e                                        ; $76b4: $6b
	and  c                                           ; $76b5: $a1
	ld   a, b                                        ; $76b6: $78
	inc  b                                           ; $76b7: $04
	cp   e                                           ; $76b8: $bb
	dec  b                                           ; $76b9: $05
	jp   nc, $0478                                   ; $76ba: $d2 $78 $04

	sub  d                                           ; $76bd: $92
	ld   a, l                                        ; $76be: $7d
	dec  c                                           ; $76bf: $0d
	inc  b                                           ; $76c0: $04
	dec  hl                                          ; $76c1: $2b
	sbc  b                                           ; $76c2: $98
	adc  h                                           ; $76c3: $8c
	ld   l, c                                        ; $76c4: $69
	and  c                                           ; $76c5: $a1
	sbc  l                                           ; $76c6: $9d
	sub  [hl]                                        ; $76c7: $96
	sbc  a                                           ; $76c8: $9f
	dec  c                                           ; $76c9: $0d
	nop                                              ; $76ca: $00
	ld   a, [bc]                                     ; $76cb: $0a
	rrca                                             ; $76cc: $0f
	ld   bc, $1d07                                   ; $76cd: $01 $07 $1d
	ld   b, b                                        ; $76d0: $40
	ld   de, $1103                                   ; $76d1: $11 $03 $11
	ld   bc, $2901                                   ; $76d4: $01 $01 $29
	nop                                              ; $76d7: $00
	ld   bc, $5490                                   ; $76d8: $01 $90 $54
	sbc  [hl]                                        ; $76db: $9e
	ld   [$6300], sp                                 ; $76dc: $08 $00 $63
	and  c                                           ; $76df: $a1
	sbc  a                                           ; $76e0: $9f
	dec  c                                           ; $76e1: $0d
	ld   l, a                                        ; $76e2: $6f
	ld   e, d                                        ; $76e3: $5a
	ld   d, h                                        ; $76e4: $54
	ld   h, [hl]                                     ; $76e5: $66
	sub  c                                           ; $76e6: $91
	ld   a, b                                        ; $76e7: $78
	ld   d, d                                        ; $76e8: $52
	ld   [hl], l                                     ; $76e9: $75
	ld   h, a                                        ; $76ea: $67
	ld   e, c                                        ; $76eb: $59
	ld   a, [$000d]                                  ; $76ec: $fa $0d $00
	ld   a, [bc]                                     ; $76ef: $0a
	ld   b, $13                                      ; $76f0: $06 $13
	dec  d                                           ; $76f2: $15
	inc  e                                           ; $76f3: $1c
	ld   [bc], a                                     ; $76f4: $02
	nop                                              ; $76f5: $00
	nop                                              ; $76f6: $00
	ld   bc, $ffff                                   ; $76f7: $01 $ff $ff
	ld   sp, hl                                      ; $76fa: $f9
	dec  c                                           ; $76fb: $0d
	ld   [hl], a                                     ; $76fc: $77
	ld   d, h                                        ; $76fd: $54
	ld   e, c                                        ; $76fe: $59
	ld   a, b                                        ; $76ff: $78
	ld   h, e                                        ; $7700: $63
	ld   d, d                                        ; $7701: $52
	adc  h                                           ; $7702: $8c
	ld   h, l                                        ; $7703: $65
	ld   l, l                                        ; $7704: $6d
	ld   a, h                                        ; $7705: $7c
	ld   sp, hl                                      ; $7706: $f9
	dec  c                                           ; $7707: $0d
	nop                                              ; $7708: $00
	ld   a, [bc]                                     ; $7709: $0a
	rrca                                             ; $770a: $0f
	ld   bc, $1d04                                   ; $770b: $01 $04 $1d
	ld   b, b                                        ; $770e: $40
	ld   de, $1103                                   ; $770f: $11 $03 $11
	ld   bc, $2901                                   ; $7712: $01 $01 $29
	nop                                              ; $7715: $00
	ld   bc, $0008                                   ; $7716: $01 $08 $00
	ld   h, e                                        ; $7719: $63
	and  c                                           ; $771a: $a1
	sbc  a                                           ; $771b: $9f
	dec  c                                           ; $771c: $0d
	ld   h, l                                        ; $771d: $65
	ld   [hl], c                                     ; $771e: $71
	ld   e, c                                        ; $771f: $59
	sbc  b                                           ; $7720: $98
	ld   h, l                                        ; $7721: $65
	ld   [hl], h                                     ; $7722: $74
	ld   e, l                                        ; $7723: $5d
	ld   l, [hl]                                     ; $7724: $6e
	ld   h, e                                        ; $7725: $63
	ld   d, d                                        ; $7726: $52
	sub  [hl]                                        ; $7727: $96
	rst  $38                                         ; $7728: $ff
	rst  $38                                         ; $7729: $ff
	dec  c                                           ; $772a: $0d
	rst  $38                                         ; $772b: $ff
	rst  $38                                         ; $772c: $ff
	ld   h, l                                        ; $772d: $65
	ld   e, c                                        ; $772e: $59
	ld   l, l                                        ; $772f: $6d
	ld   a, b                                        ; $7730: $78
	ld   d, d                                        ; $7731: $52
	ld   [hl], l                                     ; $7732: $75
	ld   h, a                                        ; $7733: $67
	ld   a, e                                        ; $7734: $7b
	rst  $38                                         ; $7735: $ff
	rst  $38                                         ; $7736: $ff
	dec  c                                           ; $7737: $0d
	nop                                              ; $7738: $00
	ld   a, [bc]                                     ; $7739: $0a
	rrca                                             ; $773a: $0f
	ld   bc, $0102                                   ; $773b: $01 $02 $01
	ld   h, a                                        ; $773e: $67
	adc  l                                           ; $773f: $8d
	sbc  d                                           ; $7740: $9a
	ld   h, e                                        ; $7741: $63
	and  c                                           ; $7742: $a1
	sbc  a                                           ; $7743: $9f
	dec  c                                           ; $7744: $0d
	dec  b                                           ; $7745: $05
	ret  nc                                          ; $7746: $d0

	ld   [bc], a                                     ; $7747: $02
	ld   b, $04                                      ; $7748: $06 $04
	ld   e, l                                        ; $774a: $5d
	sbc  [hl]                                        ; $774b: $9e
	inc  b                                           ; $774c: $04
	sub  a                                           ; $774d: $97
	ld   h, l                                        ; $774e: $65
	ld   [hl], h                                     ; $774f: $74
	ld   e, l                                        ; $7750: $5d
	ld   l, [hl]                                     ; $7751: $6e
	ld   h, e                                        ; $7752: $63
	ld   d, d                                        ; $7753: $52
	sbc  a                                           ; $7754: $9f
	dec  c                                           ; $7755: $0d
	nop                                              ; $7756: $00
	ld   a, [bc]                                     ; $7757: $0a
	ld   bc, $546b                                   ; $7758: $01 $6b $54
	sbc  [hl]                                        ; $775b: $9e
	ld   l, e                                        ; $775c: $6b
	ld   h, c                                        ; $775d: $61
	ld   [hl], l                                     ; $775e: $75
	ret  nc                                          ; $775f: $d0

	push af                                          ; $7760: $f5
	xor  l                                           ; $7761: $ad
	ei                                               ; $7762: $fb
	ld   a, h                                        ; $7763: $7c
	dec  c                                           ; $7764: $0d
	inc  bc                                          ; $7765: $03
	sbc  $9d                                         ; $7766: $de $9d
	sbc  b                                           ; $7768: $98
	ld   a, c                                        ; $7769: $79
	ld   h, l                                        ; $776a: $65
	ld   [hl], h                                     ; $776b: $74
	ld   d, d                                        ; $776c: $52
	sbc  c                                           ; $776d: $99
	sub  d                                           ; $776e: $92
	ld   [hl], d                                     ; $776f: $72
	ld   [hl], l                                     ; $7770: $75
	ld   h, a                                        ; $7771: $67
	sbc  a                                           ; $7772: $9f
	dec  c                                           ; $7773: $0d
	nop                                              ; $7774: $00
	ld   a, [bc]                                     ; $7775: $0a
	inc  e                                           ; $7776: $1c
	ld   [bc], a                                     ; $7777: $02
	inc  bc                                          ; $7778: $03
	inc  bc                                          ; $7779: $03
	ld   bc, $9e50                                   ; $777a: $01 $50 $9e
	ld   d, b                                        ; $777d: $50
	sub  a                                           ; $777e: $97
	inc  b                                           ; $777f: $04
	ld   c, c                                        ; $7780: $49
	ld   e, c                                        ; $7781: $59
	ld   h, l                                        ; $7782: $65
	sub  a                                           ; $7783: $97
	rst  $38                                         ; $7784: $ff
	rst  $38                                         ; $7785: $ff
	dec  c                                           ; $7786: $0d
	ld   h, c                                        ; $7787: $61
	and  c                                           ; $7788: $a1
	ld   a, b                                        ; $7789: $78
	inc  bc                                          ; $778a: $03
	ld   c, e                                        ; $778b: $4b
	ld   a, c                                        ; $778c: $79
	dec  b                                           ; $778d: $05
	ret  nc                                          ; $778e: $d0

	ld   [bc], a                                     ; $778f: $02
	ld   b, $04                                      ; $7790: $06 $04
	ld   e, l                                        ; $7792: $5d
	ld   e, d                                        ; $7793: $5a
	rst  $38                                         ; $7794: $ff
	rst  $38                                         ; $7795: $ff
	dec  c                                           ; $7796: $0d
	ld   [hl], a                                     ; $7797: $77
	ld   d, h                                        ; $7798: $54
	ld   h, l                                        ; $7799: $65
	ld   [hl], h                                     ; $779a: $74
	ld   e, c                                        ; $779b: $59
	ld   h, l                                        ; $779c: $65
	sub  a                                           ; $779d: $97
	ld   a, e                                        ; $779e: $7b
	db   $fc                                         ; $779f: $fc
	sbc  a                                           ; $77a0: $9f
	dec  c                                           ; $77a1: $0d
	nop                                              ; $77a2: $00
	ld   a, [bc]                                     ; $77a3: $0a
	inc  e                                           ; $77a4: $1c
	ld   [bc], a                                     ; $77a5: $02
	inc  b                                           ; $77a6: $04
	inc  b                                           ; $77a7: $04
	ld   bc, $527d                                   ; $77a8: $01 $7d $52
	sbc  [hl]                                        ; $77ab: $9e
	ld   [hl], a                                     ; $77ac: $77
	ld   d, h                                        ; $77ad: $54
	ld   l, h                                        ; $77ae: $6c
	sbc  a                                           ; $77af: $9f
	dec  c                                           ; $77b0: $0d
	ld   e, b                                        ; $77b1: $58
	inc  bc                                          ; $77b2: $03
	and  b                                           ; $77b3: $a0
	ld   l, a                                        ; $77b4: $6f
	ld   a, c                                        ; $77b5: $79
	ld   a, b                                        ; $77b6: $78
	ld   [hl], c                                     ; $77b7: $71
	ld   [hl], h                                     ; $77b8: $74
	sbc  a                                           ; $77b9: $9f
	dec  c                                           ; $77ba: $0d
	nop                                              ; $77bb: $00
	ld   a, [bc]                                     ; $77bc: $0a
	rrca                                             ; $77bd: $0f
	ld   bc, $0102                                   ; $77be: $01 $02 $01
	ld   [bc], a                                     ; $77c1: $02
	and  l                                           ; $77c2: $a5
	ld   [bc], a                                     ; $77c3: $02
	xor  d                                           ; $77c4: $aa
	sbc  [hl]                                        ; $77c5: $9e
	inc  bc                                          ; $77c6: $03
	ld   c, [hl]                                     ; $77c7: $4e
	inc  bc                                          ; $77c8: $03
	ld   l, e                                        ; $77c9: $6b
	ld   a, c                                        ; $77ca: $79
	inc  bc                                          ; $77cb: $03
	and  b                                           ; $77cc: $a0
	ld   l, a                                        ; $77cd: $6f
	inc  bc                                          ; $77ce: $03
	add  b                                           ; $77cf: $80
	ld   h, e                                        ; $77d0: $63
	ld   a, b                                        ; $77d1: $78
	ld   d, d                                        ; $77d2: $52
	ld   [hl], l                                     ; $77d3: $75
	dec  c                                           ; $77d4: $0d
	ld   e, l                                        ; $77d5: $5d
	ld   l, [hl]                                     ; $77d6: $6e
	ld   h, e                                        ; $77d7: $63
	ld   d, d                                        ; $77d8: $52
	ld   a, e                                        ; $77d9: $7b
	sbc  a                                           ; $77da: $9f
	ld   h, a                                        ; $77db: $67
	adc  l                                           ; $77dc: $8d
	sbc  d                                           ; $77dd: $9a
	ld   h, e                                        ; $77de: $63
	and  c                                           ; $77df: $a1
	sbc  a                                           ; $77e0: $9f
	dec  c                                           ; $77e1: $0d
	nop                                              ; $77e2: $00
	ld   a, [bc]                                     ; $77e3: $0a
	dec  c                                           ; $77e4: $0d
	nop                                              ; $77e5: $00
	nop                                              ; $77e6: $00
	rrca                                             ; $77e7: $0f
	nop                                              ; $77e8: $00
	ld   bc, $020c                                   ; $77e9: $01 $0c $02
	ld   c, $44                                      ; $77ec: $0e $44
	inc  e                                           ; $77ee: $1c
	ld   bc, $0000                                   ; $77ef: $01 $00 $00
	ld   bc, $5063                                   ; $77f2: $01 $63 $50
	sbc  [hl]                                        ; $77f5: $9e
	ld   [$6300], sp                                 ; $77f6: $08 $00 $63
	and  c                                           ; $77f9: $a1
	sbc  a                                           ; $77fa: $9f
	dec  c                                           ; $77fb: $0d
	inc  bc                                          ; $77fc: $03
	ld   l, b                                        ; $77fd: $68
	ld   a, c                                        ; $77fe: $79
	ld   [bc], a                                     ; $77ff: $02
	ld   a, a                                        ; $7800: $7f
	ld   e, e                                        ; $7801: $5b
	adc  h                                           ; $7802: $8c
	ld   h, a                                        ; $7803: $67
	sub  [hl]                                        ; $7804: $96
	sbc  a                                           ; $7805: $9f
	dec  c                                           ; $7806: $0d
	nop                                              ; $7807: $00
	ld   a, [bc]                                     ; $7808: $0a
	dec  c                                           ; $7809: $0d
	nop                                              ; $780a: $00
	nop                                              ; $780b: $00
	rrca                                             ; $780c: $0f
	nop                                              ; $780d: $00
	ld   bc, $b006                                   ; $780e: $01 $06 $b0
	jr   jr_062_7822                                 ; $7811: $18 $0f

	nop                                              ; $7813: $00
	ld   bc, $0501                                   ; $7814: $01 $01 $05
	ret  nc                                          ; $7817: $d0

	ld   [bc], a                                     ; $7818: $02
	ld   b, $04                                      ; $7819: $06 $04
	ld   e, l                                        ; $781b: $5d
	and  b                                           ; $781c: $a0
	inc  b                                           ; $781d: $04
	sub  a                                           ; $781e: $97
	ld   h, l                                        ; $781f: $65
	ld   [hl], h                                     ; $7820: $74
	ld   [bc], a                                     ; $7821: $02

jr_062_7822:
	inc  [hl]                                        ; $7822: $34
	ld   h, e                                        ; $7823: $63
	ld   d, d                                        ; $7824: $52
	sbc  a                                           ; $7825: $9f
	dec  c                                           ; $7826: $0d
	nop                                              ; $7827: $00
	ld   a, [bc]                                     ; $7828: $0a
	inc  e                                           ; $7829: $1c
	ld   [bc], a                                     ; $782a: $02
	inc  bc                                          ; $782b: $03
	inc  bc                                          ; $782c: $03
	ld   bc, $d005                                   ; $782d: $01 $05 $d0
	ld   [bc], a                                     ; $7830: $02
	ld   b, $04                                      ; $7831: $06 $04
	ld   e, l                                        ; $7833: $5d
	ld   sp, hl                                      ; $7834: $f9
	dec  c                                           ; $7835: $0d
	inc  b                                           ; $7836: $04
	ld   c, c                                        ; $7837: $49
	ld   a, h                                        ; $7838: $7c
	ld   h, c                                        ; $7839: $61
	halt                                             ; $783a: $76
	ld   [hl], l                                     ; $783b: $75
	ld   h, a                                        ; $783c: $67
	ld   a, h                                        ; $783d: $7c
	ld   sp, hl                                      ; $783e: $f9
	dec  c                                           ; $783f: $0d
	nop                                              ; $7840: $00
	ld   a, [bc]                                     ; $7841: $0a
	add  hl, de                                      ; $7842: $19
	dec  b                                           ; $7843: $05
	ld   [bc], a                                     ; $7844: $02
	ret  nc                                          ; $7845: $d0

	push af                                          ; $7846: $f5
	xor  l                                           ; $7847: $ad
	ei                                               ; $7848: $fb
	inc  bc                                          ; $7849: $03
	sbc  $9d                                         ; $784a: $de $9d
	sbc  b                                           ; $784c: $98
	ld   a, c                                        ; $784d: $79
	ld   h, l                                        ; $784e: $65
	ld   [hl], h                                     ; $784f: $74
	sbc  c                                           ; $7850: $99
	ld   [hl], l                                     ; $7851: $75
	ld   h, l                                        ; $7852: $65
	sub  l                                           ; $7853: $95
	nop                                              ; $7854: $00
	nop                                              ; $7855: $00
	inc  bc                                          ; $7856: $03
	jp   nc, $2c04                                   ; $7857: $d2 $04 $2c

	ld   a, h                                        ; $785a: $7c
	inc  bc                                          ; $785b: $03
	sbc  $9d                                         ; $785c: $de $9d
	sbc  b                                           ; $785e: $98
	ld   a, c                                        ; $785f: $79
	ld   h, l                                        ; $7860: $65
	ld   [hl], h                                     ; $7861: $74
	sbc  c                                           ; $7862: $99
	ld   [hl], l                                     ; $7863: $75
	ld   h, l                                        ; $7864: $65
	sub  l                                           ; $7865: $95
	nop                                              ; $7866: $00
	ld   bc, $be07                                   ; $7867: $01 $07 $be
	rla                                              ; $786a: $17
	ld   [bc], a                                     ; $786b: $02
	inc  bc                                          ; $786c: $03
	ld   bc, $2000                                   ; $786d: $01 $00 $20
	nop                                              ; $7870: $00
	rlca                                             ; $7871: $07
	ld   d, [hl]                                     ; $7872: $56
	ld   d, $02                                      ; $7873: $16 $02
	inc  bc                                          ; $7875: $03
	ld   bc, $2001                                   ; $7876: $01 $01 $20
	nop                                              ; $7879: $00
	ld   b, $df                                      ; $787a: $06 $df
	ld   d, $0f                                      ; $787c: $16 $0f
	nop                                              ; $787e: $00
	ld   bc, $0301                                   ; $787f: $01 $01 $03
	jp   nc, $2c04                                   ; $7882: $d2 $04 $2c

	ld   a, h                                        ; $7885: $7c
	inc  bc                                          ; $7886: $03
	sbc  $9d                                         ; $7887: $de $9d
	sbc  b                                           ; $7889: $98
	ld   a, c                                        ; $788a: $79
	dec  c                                           ; $788b: $0d
	inc  bc                                          ; $788c: $03
	or   a                                           ; $788d: $b7
	sbc  b                                           ; $788e: $98
	ld   [bc], a                                     ; $788f: $02
	sub  e                                           ; $7890: $93
	ld   h, l                                        ; $7891: $65
	ld   [hl], h                                     ; $7892: $74
	ld   d, d                                        ; $7893: $52
	sbc  c                                           ; $7894: $99
	and  c                                           ; $7895: $a1
	ld   [hl], l                                     ; $7896: $75
	ld   h, l                                        ; $7897: $65
	sub  l                                           ; $7898: $95
	sbc  a                                           ; $7899: $9f
	dec  c                                           ; $789a: $0d
	nop                                              ; $789b: $00
	ld   a, [bc]                                     ; $789c: $0a
	inc  e                                           ; $789d: $1c
	ld   [bc], a                                     ; $789e: $02
	ld   [bc], a                                     ; $789f: $02
	ld   [bc], a                                     ; $78a0: $02
	dec  e                                           ; $78a1: $1d
	ld   b, b                                        ; $78a2: $40
	ld   [de], a                                     ; $78a3: $12
	inc  bc                                          ; $78a4: $03
	ld   [de], a                                     ; $78a5: $12
	ld   bc, $2901                                   ; $78a6: $01 $01 $29
	nop                                              ; $78a9: $00
	ld   bc, $d203                                   ; $78aa: $01 $03 $d2
	inc  b                                           ; $78ad: $04
	inc  l                                           ; $78ae: $2c
	ld   sp, hl                                      ; $78af: $f9
	db   $10                                         ; $78b0: $10
	inc  bc                                          ; $78b1: $03
	add  e                                           ; $78b2: $83
	dec  b                                           ; $78b3: $05
	dec  c                                           ; $78b4: $0d
	ld   a, b                                        ; $78b5: $78
	ld   a, [$9d0d]                                  ; $78b6: $fa $0d $9d
	ld   l, l                                        ; $78b9: $6d
	ld   e, l                                        ; $78ba: $5d
	ld   h, l                                        ; $78bb: $65
	ld   a, l                                        ; $78bc: $7d
	sbc  [hl]                                        ; $78bd: $9e
	inc  b                                           ; $78be: $04
	pop  hl                                          ; $78bf: $e1
	inc  bc                                          ; $78c0: $03
	sbc  d                                           ; $78c1: $9a
	inc  bc                                          ; $78c2: $03
	ld   c, d                                        ; $78c3: $4a
	ld   h, l                                        ; $78c4: $65
	ld   d, d                                        ; $78c5: $52
	dec  b                                           ; $78c6: $05
	ld   d, $04                                      ; $78c7: $16 $04
	sbc  l                                           ; $78c9: $9d
	ld   a, b                                        ; $78ca: $78
	dec  c                                           ; $78cb: $0d
	inc  bc                                          ; $78cc: $03
	jp   nc, $2c04                                   ; $78cd: $d2 $04 $2c

	and  b                                           ; $78d0: $a0
	sub  b                                           ; $78d1: $90
	ld   [hl], c                                     ; $78d2: $71
	ld   [hl], h                                     ; $78d3: $74
	ld   e, b                                        ; $78d4: $58
	sbc  b                                           ; $78d5: $98
	adc  h                                           ; $78d6: $8c
	ld   h, a                                        ; $78d7: $67
	sbc  l                                           ; $78d8: $9d
	sbc  a                                           ; $78d9: $9f
	dec  c                                           ; $78da: $0d
	nop                                              ; $78db: $00
	ld   a, [bc]                                     ; $78dc: $0a
	rrca                                             ; $78dd: $0f
	ld   bc, $0104                              ; $78de: $01 $04 $01
	ld   [$6300], sp                                 ; $78e1: $08 $00 $63
	and  c                                           ; $78e4: $a1
	sbc  a                                           ; $78e5: $9f
	dec  c                                           ; $78e6: $0d
	ld   l, a                                        ; $78e7: $6f
	ld   e, d                                        ; $78e8: $5a
	ld   d, d                                        ; $78e9: $52
	adc  h                                           ; $78ea: $8c
	ld   h, a                                        ; $78eb: $67
	sub  [hl]                                        ; $78ec: $96
	sbc  a                                           ; $78ed: $9f
	ld   e, e                                        ; $78ee: $5b
	ld   [hl], c                                     ; $78ef: $71
	halt                                             ; $78f0: $76
	sbc  [hl]                                        ; $78f1: $9e
	dec  c                                           ; $78f2: $0d
	ret  nc                                          ; $78f3: $d0

	push af                                          ; $78f4: $f5
	xor  l                                           ; $78f5: $ad
	ei                                               ; $78f6: $fb
	ld   a, h                                        ; $78f7: $7c
	inc  bc                                          ; $78f8: $03
	sbc  $9d                                         ; $78f9: $de $9d
	sbc  b                                           ; $78fb: $98
	ld   [hl], l                                     ; $78fc: $75
	ld   h, a                                        ; $78fd: $67
	sub  [hl]                                        ; $78fe: $96
	sbc  a                                           ; $78ff: $9f
	dec  c                                           ; $7900: $0d
	nop                                              ; $7901: $00
	ld   a, [bc]                                     ; $7902: $0a
	ld   b, $13                                      ; $7903: $06 $13
	rla                                              ; $7905: $17
	rrca                                             ; $7906: $0f
	nop                                              ; $7907: $00
	ld   bc, $ff01                                   ; $7908: $01 $01 $ff
	rst  $38                                         ; $790b: $ff
	rst  $38                                         ; $790c: $ff
	rst  $38                                         ; $790d: $ff
	rst  $38                                         ; $790e: $ff
	rst  $38                                         ; $790f: $ff
	rst  $38                                         ; $7910: $ff
	rst  $38                                         ; $7911: $ff
	rst  $38                                         ; $7912: $ff
	rst  $38                                         ; $7913: $ff
	dec  c                                           ; $7914: $0d
	nop                                              ; $7915: $00
	ld   a, [bc]                                     ; $7916: $0a
	rrca                                             ; $7917: $0f
	ld   bc, $0104                              ; $7918: $01 $04 $01
	ld   [$6300], sp                                 ; $791b: $08 $00 $63
	and  c                                           ; $791e: $a1
	sbc  a                                           ; $791f: $9f
	dec  c                                           ; $7920: $0d
	ld   e, e                                        ; $7921: $5b
	ld   [hl], c                                     ; $7922: $71
	halt                                             ; $7923: $76
	ret  nc                                          ; $7924: $d0

	push af                                          ; $7925: $f5
	xor  l                                           ; $7926: $ad
	ei                                               ; $7927: $fb
	ld   a, h                                        ; $7928: $7c
	dec  c                                           ; $7929: $0d
	inc  bc                                          ; $792a: $03
	sbc  $9d                                         ; $792b: $de $9d
	sbc  b                                           ; $792d: $98
	ld   a, c                                        ; $792e: $79
	ld   h, l                                        ; $792f: $65
	ld   [hl], h                                     ; $7930: $74
	sbc  c                                           ; $7931: $99
	and  c                                           ; $7932: $a1
	ld   [hl], l                                     ; $7933: $75
	ld   h, a                                        ; $7934: $67
	sub  [hl]                                        ; $7935: $96
	sbc  a                                           ; $7936: $9f
	dec  c                                           ; $7937: $0d
	nop                                              ; $7938: $00
	ld   a, [bc]                                     ; $7939: $0a
	inc  e                                           ; $793a: $1c
	ld   [bc], a                                     ; $793b: $02
	inc  bc                                          ; $793c: $03
	inc  bc                                          ; $793d: $03
	ld   bc, $9750                                   ; $793e: $01 $50 $97
	ld   sp, hl                                      ; $7941: $f9
	db   $10                                         ; $7942: $10
	ld   d, [hl]                                     ; $7943: $56
	ld   sp, hl                                      ; $7944: $f9
	db   $10                                         ; $7945: $10
	ret  nc                                          ; $7946: $d0

	push af                                          ; $7947: $f5
	xor  l                                           ; $7948: $ad
	ei                                               ; $7949: $fb
	ld   sp, hl                                      ; $794a: $f9
	dec  c                                           ; $794b: $0d
	rst  $38                                         ; $794c: $ff
	rst  $38                                         ; $794d: $ff
	ld   d, b                                        ; $794e: $50
	sub  a                                           ; $794f: $97
	sbc  [hl]                                        ; $7950: $9e
	ld   h, c                                        ; $7951: $61
	and  c                                           ; $7952: $a1
	ld   a, b                                        ; $7953: $78
	halt                                             ; $7954: $76
	ld   h, c                                        ; $7955: $61
	sbc  e                                           ; $7956: $9b
	ld   a, c                                        ; $7957: $79
	dec  c                                           ; $7958: $0d
	dec  b                                           ; $7959: $05
	ret  nc                                          ; $795a: $d0

	ld   [bc], a                                     ; $795b: $02
	ld   b, $04                                      ; $795c: $06 $04
	ld   e, l                                        ; $795e: $5d
	ld   e, d                                        ; $795f: $5a
	rst  $38                                         ; $7960: $ff
	rst  $38                                         ; $7961: $ff
	dec  c                                           ; $7962: $0d
	nop                                              ; $7963: $00
	ld   a, [bc]                                     ; $7964: $0a
	inc  e                                           ; $7965: $1c
	ld   [bc], a                                     ; $7966: $02
	dec  b                                           ; $7967: $05
	dec  b                                           ; $7968: $05
	ld   bc, $7252                                   ; $7969: $01 $52 $72
	ld   a, h                                        ; $796c: $7c
	ld   [bc], a                                     ; $796d: $02
	xor  c                                           ; $796e: $a9
	ld   a, c                                        ; $796f: $79
	sbc  [hl]                                        ; $7970: $9e
	dec  c                                           ; $7971: $0d
	sbc  l                                           ; $7972: $9d
	ld   l, l                                        ; $7973: $6d
	ld   e, l                                        ; $7974: $5d
	ld   h, l                                        ; $7975: $65
	ld   a, h                                        ; $7976: $7c
	inc  b                                           ; $7977: $04
	sub  l                                           ; $7978: $95
	ld   [bc], a                                     ; $7979: $02
	ld   hl, $ff79                                   ; $797a: $21 $79 $ff
	rst  $38                                         ; $797d: $ff
	dec  c                                           ; $797e: $0d
	ld   a, l                                        ; $797f: $7d
	ld   d, d                                        ; $7980: $52
	sbc  [hl]                                        ; $7981: $9e
	ld   e, b                                        ; $7982: $58
	inc  b                                           ; $7983: $04
	sub  a                                           ; $7984: $97
	ld   h, l                                        ; $7985: $65
	ld   d, d                                        ; $7986: $52
	ld   l, l                                        ; $7987: $6d
	ld   h, l                                        ; $7988: $65
	adc  h                                           ; $7989: $8c
	ld   h, a                                        ; $798a: $67
	sbc  l                                           ; $798b: $9d
	sbc  a                                           ; $798c: $9f
	dec  c                                           ; $798d: $0d
	nop                                              ; $798e: $00
	ld   a, [bc]                                     ; $798f: $0a
	rrca                                             ; $7990: $0f
	ld   bc, $0102                                   ; $7991: $01 $02 $01
	ld   [bc], a                                     ; $7994: $02
	and  l                                           ; $7995: $a5
	ld   [bc], a                                     ; $7996: $02
	xor  d                                           ; $7997: $aa
	sbc  [hl]                                        ; $7998: $9e
	inc  bc                                          ; $7999: $03
	ld   c, [hl]                                     ; $799a: $4e
	inc  bc                                          ; $799b: $03
	ld   l, e                                        ; $799c: $6b
	ld   a, c                                        ; $799d: $79
	inc  bc                                          ; $799e: $03
	and  b                                           ; $799f: $a0
	ld   l, a                                        ; $79a0: $6f
	inc  bc                                          ; $79a1: $03
	add  b                                           ; $79a2: $80
	ld   h, e                                        ; $79a3: $63
	ld   a, b                                        ; $79a4: $78
	ld   d, d                                        ; $79a5: $52
	ld   [hl], l                                     ; $79a6: $75
	dec  c                                           ; $79a7: $0d
	ld   e, l                                        ; $79a8: $5d
	ld   l, [hl]                                     ; $79a9: $6e
	ld   h, e                                        ; $79aa: $63
	ld   d, d                                        ; $79ab: $52
	ld   a, e                                        ; $79ac: $7b
	sbc  a                                           ; $79ad: $9f
	ld   h, a                                        ; $79ae: $67
	adc  l                                           ; $79af: $8d
	sbc  d                                           ; $79b0: $9a
	ld   h, e                                        ; $79b1: $63
	and  c                                           ; $79b2: $a1
	sbc  a                                           ; $79b3: $9f
	dec  c                                           ; $79b4: $0d
	nop                                              ; $79b5: $00
	ld   a, [bc]                                     ; $79b6: $0a
	dec  c                                           ; $79b7: $0d
	nop                                              ; $79b8: $00
	nop                                              ; $79b9: $00
	rrca                                             ; $79ba: $0f
	nop                                              ; $79bb: $00
	ld   bc, $020c                                   ; $79bc: $01 $0c $02
	ld   c, $44                                      ; $79bf: $0e $44
	inc  e                                           ; $79c1: $1c
	ld   bc, $0000                                   ; $79c2: $01 $00 $00
	ld   bc, $5063                                   ; $79c5: $01 $63 $50
	sbc  [hl]                                        ; $79c8: $9e
	ld   [$6300], sp                                 ; $79c9: $08 $00 $63
	and  c                                           ; $79cc: $a1
	sbc  a                                           ; $79cd: $9f
	dec  c                                           ; $79ce: $0d
	inc  bc                                          ; $79cf: $03
	ld   l, b                                        ; $79d0: $68
	ld   a, c                                        ; $79d1: $79
	ld   [bc], a                                     ; $79d2: $02
	ld   a, a                                        ; $79d3: $7f
	ld   e, e                                        ; $79d4: $5b
	adc  h                                           ; $79d5: $8c
	ld   h, a                                        ; $79d6: $67
	sub  [hl]                                        ; $79d7: $96
	sbc  a                                           ; $79d8: $9f
	dec  c                                           ; $79d9: $0d
	nop                                              ; $79da: $00
	ld   a, [bc]                                     ; $79db: $0a
	dec  c                                           ; $79dc: $0d
	nop                                              ; $79dd: $00
	nop                                              ; $79de: $00
	rrca                                             ; $79df: $0f
	nop                                              ; $79e0: $00
	ld   bc, $b006                                   ; $79e1: $01 $06 $b0
	jr   jr_062_79f5                                 ; $79e4: $18 $0f

	nop                                              ; $79e6: $00
	ld   bc, $6701                                   ; $79e7: $01 $01 $67
	adc  l                                           ; $79ea: $8d
	sbc  d                                           ; $79eb: $9a
	ld   h, e                                        ; $79ec: $63
	and  c                                           ; $79ed: $a1
	sbc  a                                           ; $79ee: $9f
	dec  c                                           ; $79ef: $0d
	dec  b                                           ; $79f0: $05
	ret  nc                                          ; $79f1: $d0

	ld   [bc], a                                     ; $79f2: $02
	ld   b, $04                                      ; $79f3: $06 $04

jr_062_79f5:
	ld   e, l                                        ; $79f5: $5d
	and  b                                           ; $79f6: $a0
	ret  nc                                          ; $79f7: $d0

	push af                                          ; $79f8: $f5
	xor  l                                           ; $79f9: $ad
	ei                                               ; $79fa: $fb
	ld   a, h                                        ; $79fb: $7c
	inc  bc                                          ; $79fc: $03
	sbc  $9d                                         ; $79fd: $de $9d
	sbc  b                                           ; $79ff: $98
	ld   a, c                                        ; $7a00: $79
	dec  c                                           ; $7a01: $0d
	inc  bc                                          ; $7a02: $03
	xor  [hl]                                        ; $7a03: $ae
	ld   [hl], c                                     ; $7a04: $71
	ld   [hl], h                                     ; $7a05: $74
	ld   d, d                                        ; $7a06: $52
	sbc  c                                           ; $7a07: $99
	ld   [hl], l                                     ; $7a08: $75
	ld   h, l                                        ; $7a09: $65
	sub  l                                           ; $7a0a: $95
	ld   d, h                                        ; $7a0b: $54
	sbc  a                                           ; $7a0c: $9f
	dec  c                                           ; $7a0d: $0d
	nop                                              ; $7a0e: $00
	ld   a, [bc]                                     ; $7a0f: $0a
	inc  e                                           ; $7a10: $1c
	ld   [bc], a                                     ; $7a11: $02
	inc  bc                                          ; $7a12: $03
	inc  bc                                          ; $7a13: $03
	ld   bc, $9eaf                                   ; $7a14: $01 $af $9e
	xor  a                                           ; $7a17: $af
	or   b                                           ; $7a18: $b0
	call nz, $0dfa                                   ; $7a19: $c4 $fa $0d
	ld   d, b                                        ; $7a1c: $50
	sbc  [hl]                                        ; $7a1d: $9e
	ld   d, b                                        ; $7a1e: $50
	sub  a                                           ; $7a1f: $97
	ld   sp, hl                                      ; $7a20: $f9
	db   $10                                         ; $7a21: $10
	ld   h, c                                        ; $7a22: $61
	and  c                                           ; $7a23: $a1
	ld   a, b                                        ; $7a24: $78
	inc  bc                                          ; $7a25: $03
	ld   c, e                                        ; $7a26: $4b
	ld   a, c                                        ; $7a27: $79
	dec  c                                           ; $7a28: $0d
	dec  b                                           ; $7a29: $05
	ret  nc                                          ; $7a2a: $d0

	ld   [bc], a                                     ; $7a2b: $02
	ld   b, $04                                      ; $7a2c: $06 $04
	ld   e, l                                        ; $7a2e: $5d
	ld   e, d                                        ; $7a2f: $5a
	rst  $38                                         ; $7a30: $ff
	rst  $38                                         ; $7a31: $ff
	dec  c                                           ; $7a32: $0d
	nop                                              ; $7a33: $00
	ld   a, [bc]                                     ; $7a34: $0a
	inc  e                                           ; $7a35: $1c
	ld   [bc], a                                     ; $7a36: $02
	dec  b                                           ; $7a37: $05
	dec  b                                           ; $7a38: $05
	ld   bc, $5477                                   ; $7a39: $01 $77 $54
	ld   h, l                                        ; $7a3c: $65
	ld   [hl], h                                     ; $7a3d: $74
	ld   e, c                                        ; $7a3e: $59
	ld   h, l                                        ; $7a3f: $65
	sub  a                                           ; $7a40: $97
	ld   a, e                                        ; $7a41: $7b
	db   $fc                                         ; $7a42: $fc
	sbc  a                                           ; $7a43: $9f
	dec  c                                           ; $7a44: $0d
	ld   a, l                                        ; $7a45: $7d
	ld   d, d                                        ; $7a46: $52
	sbc  [hl]                                        ; $7a47: $9e
	ld   [hl], a                                     ; $7a48: $77
	ld   d, h                                        ; $7a49: $54
	ld   l, h                                        ; $7a4a: $6c
	sbc  a                                           ; $7a4b: $9f
	dec  c                                           ; $7a4c: $0d
	ld   e, b                                        ; $7a4d: $58
	inc  bc                                          ; $7a4e: $03
	and  b                                           ; $7a4f: $a0
	ld   l, a                                        ; $7a50: $6f
	ld   a, c                                        ; $7a51: $79
	ld   a, b                                        ; $7a52: $78
	ld   [hl], c                                     ; $7a53: $71
	ld   [hl], h                                     ; $7a54: $74
	sbc  a                                           ; $7a55: $9f
	dec  c                                           ; $7a56: $0d
	nop                                              ; $7a57: $00
	ld   a, [bc]                                     ; $7a58: $0a
	rrca                                             ; $7a59: $0f
	ld   bc, $0100                                   ; $7a5a: $01 $00 $01
	ld   [bc], a                                     ; $7a5d: $02
	and  l                                           ; $7a5e: $a5
	ld   [bc], a                                     ; $7a5f: $02
	xor  d                                           ; $7a60: $aa
	sbc  [hl]                                        ; $7a61: $9e
	inc  bc                                          ; $7a62: $03
	ld   c, [hl]                                     ; $7a63: $4e
	inc  bc                                          ; $7a64: $03
	ld   l, e                                        ; $7a65: $6b
	ld   a, c                                        ; $7a66: $79
	inc  bc                                          ; $7a67: $03
	and  b                                           ; $7a68: $a0
	ld   l, a                                        ; $7a69: $6f
	inc  bc                                          ; $7a6a: $03
	add  b                                           ; $7a6b: $80
	ld   h, e                                        ; $7a6c: $63
	ld   a, b                                        ; $7a6d: $78
	ld   d, d                                        ; $7a6e: $52
	ld   [hl], l                                     ; $7a6f: $75
	dec  c                                           ; $7a70: $0d
	ld   e, l                                        ; $7a71: $5d
	ld   l, [hl]                                     ; $7a72: $6e
	ld   h, e                                        ; $7a73: $63
	ld   d, d                                        ; $7a74: $52
	ld   a, e                                        ; $7a75: $7b
	sbc  a                                           ; $7a76: $9f
	ld   h, a                                        ; $7a77: $67
	adc  l                                           ; $7a78: $8d
	sbc  d                                           ; $7a79: $9a
	ld   h, e                                        ; $7a7a: $63
	and  c                                           ; $7a7b: $a1
	sbc  a                                           ; $7a7c: $9f
	dec  c                                           ; $7a7d: $0d
	nop                                              ; $7a7e: $00
	ld   a, [bc]                                     ; $7a7f: $0a
	dec  c                                           ; $7a80: $0d
	nop                                              ; $7a81: $00
	nop                                              ; $7a82: $00
	rrca                                             ; $7a83: $0f
	nop                                              ; $7a84: $00
	ld   bc, $020c                                   ; $7a85: $01 $0c $02
	ld   c, $44                                      ; $7a88: $0e $44
	inc  e                                           ; $7a8a: $1c
	ld   bc, $0101                                   ; $7a8b: $01 $01 $01
	dec  e                                           ; $7a8e: $1d
	ld   b, b                                        ; $7a8f: $40
	ld   de, $1103                                   ; $7a90: $11 $03 $11
	ld   bc, $2803                                   ; $7a93: $01 $03 $28
	nop                                              ; $7a96: $00
	ld   bc, $0008                                   ; $7a97: $01 $08 $00
	ld   h, e                                        ; $7a9a: $63
	and  c                                           ; $7a9b: $a1
	ld   h, a                                        ; $7a9c: $67
	ld   h, d                                        ; $7a9d: $62
	ld   d, d                                        ; $7a9e: $52
	sbc  l                                           ; $7a9f: $9d
	sbc  a                                           ; $7aa0: $9f
	dec  c                                           ; $7aa1: $0d
	ld   [bc], a                                     ; $7aa2: $02
	jr   nz, @+$06                                   ; $7aa3: $20 $04

	ld   e, [hl]                                     ; $7aa5: $5e
	ld   [hl], l                                     ; $7aa6: $75
	inc  b                                           ; $7aa7: $04
	ld   c, $04                                      ; $7aa8: $0e $04
	jr   jr_062_7b19                                 ; $7aaa: $18 $6d

	sbc  b                                           ; $7aac: $98
	sub  [hl]                                        ; $7aad: $96
	ld   a, [$000d]                                  ; $7aae: $fa $0d $00
	ld   a, [bc]                                     ; $7ab1: $0a
	inc  e                                           ; $7ab2: $1c
	ld   bc, $0000                                   ; $7ab3: $01 $00 $00
	ld   bc, $5063                                   ; $7ab6: $01 $63 $50
	sbc  [hl]                                        ; $7ab9: $9e
	ld   [$6300], sp                                 ; $7aba: $08 $00 $63
	and  c                                           ; $7abd: $a1
	sbc  a                                           ; $7abe: $9f
	dec  c                                           ; $7abf: $0d
	inc  bc                                          ; $7ac0: $03
	ld   l, b                                        ; $7ac1: $68
	ld   a, c                                        ; $7ac2: $79
	ld   [bc], a                                     ; $7ac3: $02
	ld   a, a                                        ; $7ac4: $7f
	ld   e, e                                        ; $7ac5: $5b
	adc  h                                           ; $7ac6: $8c
	ld   h, l                                        ; $7ac7: $65
	sub  l                                           ; $7ac8: $95
	ld   d, h                                        ; $7ac9: $54
	sbc  a                                           ; $7aca: $9f
	dec  c                                           ; $7acb: $0d
	nop                                              ; $7acc: $00
	ld   a, [bc]                                     ; $7acd: $0a
	dec  c                                           ; $7ace: $0d
	nop                                              ; $7acf: $00
	nop                                              ; $7ad0: $00
	rrca                                             ; $7ad1: $0f
	nop                                              ; $7ad2: $00
	ld   bc, $b006                                   ; $7ad3: $01 $06 $b0
	jr   jr_062_7afb                                 ; $7ad6: $18 $23

	ld   c, d                                        ; $7ad8: $4a
	inc  e                                           ; $7ad9: $1c
	ld   bc, $0101                                   ; $7ada: $01 $01 $01
	ld   bc, $6803                                   ; $7add: $01 $03 $68
	ld   a, l                                        ; $7ae0: $7d
	and  e                                           ; $7ae1: $a3
	and  l                                           ; $7ae2: $a5
	db   $ec                                         ; $7ae3: $ec
	cp   d                                           ; $7ae4: $ba
	ld   [hl], l                                     ; $7ae5: $75
	ld   h, a                                        ; $7ae6: $67
	sbc  a                                           ; $7ae7: $9f
	dec  c                                           ; $7ae8: $0d
	sub  b                                           ; $7ae9: $90
	ld   d, h                                        ; $7aea: $54
	sbc  [hl]                                        ; $7aeb: $9e
	inc  bc                                          ; $7aec: $03
	call c, Call_062_7d56                            ; $7aed: $dc $56 $7d
	inc  b                                           ; $7af0: $04
	sbc  [hl]                                        ; $7af1: $9e
	ld   e, c                                        ; $7af2: $59
	ld   [hl], c                                     ; $7af3: $71
	ld   [hl], h                                     ; $7af4: $74
	adc  h                                           ; $7af5: $8c
	ld   h, a                                        ; $7af6: $67
	dec  c                                           ; $7af7: $0d
	sub  [hl]                                        ; $7af8: $96
	ld   a, e                                        ; $7af9: $7b
	sbc  a                                           ; $7afa: $9f

jr_062_7afb:
	ld   [$6300], sp                                 ; $7afb: $08 $00 $63
	and  c                                           ; $7afe: $a1
	sbc  a                                           ; $7aff: $9f
	dec  c                                           ; $7b00: $0d
	nop                                              ; $7b01: $00
	ld   a, [bc]                                     ; $7b02: $0a
	inc  e                                           ; $7b03: $1c
	ld   bc, $0000                                   ; $7b04: $01 $00 $00
	ld   bc, $9075                                   ; $7b07: $01 $75 $90
	sbc  [hl]                                        ; $7b0a: $9e
	and  e                                           ; $7b0b: $a3
	and  l                                           ; $7b0c: $a5
	db   $ec                                         ; $7b0d: $ec
	cp   d                                           ; $7b0e: $ba
	ld   a, l                                        ; $7b0f: $7d
	inc  bc                                          ; $7b10: $03
	and  [hl]                                        ; $7b11: $a6
	inc  bc                                          ; $7b12: $03
	jp   c, $0d79                                    ; $7b13: $da $79 $0d

	inc  b                                           ; $7b16: $04
	sub  a                                           ; $7b17: $97
	ld   h, l                                        ; $7b18: $65

jr_062_7b19:
	ld   [hl], h                                     ; $7b19: $74
	ld   e, l                                        ; $7b1a: $5d
	sbc  d                                           ; $7b1b: $9a
	adc  h                                           ; $7b1c: $8c
	ld   l, c                                        ; $7b1d: $69
	and  c                                           ; $7b1e: $a1
	sub  [hl]                                        ; $7b1f: $96
	sbc  a                                           ; $7b20: $9f
	dec  c                                           ; $7b21: $0d
	ld   e, d                                        ; $7b22: $5a
	and  c                                           ; $7b23: $a1
	ld   a, [hl]                                     ; $7b24: $7e
	ld   [hl], c                                     ; $7b25: $71
	ld   [hl], h                                     ; $7b26: $74
	ld   e, l                                        ; $7b27: $5d
	ld   l, [hl]                                     ; $7b28: $6e
	ld   h, e                                        ; $7b29: $63
	ld   d, d                                        ; $7b2a: $52
	sbc  a                                           ; $7b2b: $9f
	dec  c                                           ; $7b2c: $0d
	nop                                              ; $7b2d: $00
	ld   a, [bc]                                     ; $7b2e: $0a
	dec  c                                           ; $7b2f: $0d
	nop                                              ; $7b30: $00
	nop                                              ; $7b31: $00
	rrca                                             ; $7b32: $0f
	nop                                              ; $7b33: $00
	ld   bc, $0614                                   ; $7b34: $01 $14 $06
	ld   bc, $a301                                   ; $7b37: $01 $01 $a3
	and  l                                           ; $7b3a: $a5
	db   $ec                                         ; $7b3b: $ec
	cp   d                                           ; $7b3c: $ba
	sbc  a                                           ; $7b3d: $9f
	dec  c                                           ; $7b3e: $0d
	ld   [$6e00], sp                                 ; $7b3f: $08 $00 $6e
	ld   e, a                                        ; $7b42: $5f
	ld   [hl], a                                     ; $7b43: $77
	sbc  a                                           ; $7b44: $9f
	dec  c                                           ; $7b45: $0d
	nop                                              ; $7b46: $00
	ld   a, [bc]                                     ; $7b47: $0a
	inc  d                                           ; $7b48: $14
	ld   a, [bc]                                     ; $7b49: $0a
	ld   bc, $570e                                   ; $7b4a: $01 $0e $57
	inc  e                                           ; $7b4d: $1c
	inc  b                                           ; $7b4e: $04
	ld   b, b                                        ; $7b4f: $40
	jr   jr_062_7b53                                 ; $7b50: $18 $01

	ld   d, b                                        ; $7b52: $50

jr_062_7b53:
	sbc  [hl]                                        ; $7b53: $9e
	ld   l, a                                        ; $7b54: $6f
	ld   d, d                                        ; $7b55: $52
	ld   [bc], a                                     ; $7b56: $02
	inc  de                                          ; $7b57: $13
	ld   l, a                                        ; $7b58: $6f
	sub  c                                           ; $7b59: $91
	and  c                                           ; $7b5a: $a1
	sbc  a                                           ; $7b5b: $9f
	dec  c                                           ; $7b5c: $0d
	ld   d, b                                        ; $7b5d: $50
	sbc  [hl]                                        ; $7b5e: $9e
	ld   h, e                                        ; $7b5f: $63
	ld   e, l                                        ; $7b60: $5d
	sub  a                                           ; $7b61: $97
	sub  b                                           ; $7b62: $90
	ld   d, d                                        ; $7b63: $52
	ld   [hl], c                                     ; $7b64: $71
	ld   h, l                                        ; $7b65: $65
	sub  l                                           ; $7b66: $95
	ld   l, [hl]                                     ; $7b67: $6e
	sbc  a                                           ; $7b68: $9f
	dec  c                                           ; $7b69: $0d
	ld   a, b                                        ; $7b6a: $78
	ld   a, c                                        ; $7b6b: $79
	ld   e, c                                        ; $7b6c: $59
	sub  [hl]                                        ; $7b6d: $96
	ld   d, h                                        ; $7b6e: $54
	ld   sp, hl                                      ; $7b6f: $f9
	dec  c                                           ; $7b70: $0d
	nop                                              ; $7b71: $00
	ld   a, [bc]                                     ; $7b72: $0a
	rrca                                             ; $7b73: $0f
	nop                                              ; $7b74: $00
	ld   bc, $0201                                   ; $7b75: $01 $01 $02
	and  l                                           ; $7b78: $a5
	sbc  [hl]                                        ; $7b79: $9e
	ld   a, b                                        ; $7b7a: $78
	ld   e, l                                        ; $7b7b: $5d
	ld   a, b                                        ; $7b7c: $78
	ld   [hl], c                                     ; $7b7d: $71
	ld   l, l                                        ; $7b7e: $6d
	inc  b                                           ; $7b7f: $04
	sub  d                                           ; $7b80: $92
	and  b                                           ; $7b81: $a0
	inc  b                                           ; $7b82: $04
	inc  d                                           ; $7b83: $14
	ld   h, l                                        ; $7b84: $65
	ld   [hl], h                                     ; $7b85: $74
	ld   d, d                                        ; $7b86: $52
	sbc  c                                           ; $7b87: $99
	dec  c                                           ; $7b88: $0d
	and  c                                           ; $7b89: $a1
	ld   l, [hl]                                     ; $7b8a: $6e
	ld   e, a                                        ; $7b8b: $5f
	ld   [hl], a                                     ; $7b8c: $77
	rst  $38                                         ; $7b8d: $ff
	rst  $38                                         ; $7b8e: $ff
	and  e                                           ; $7b8f: $a3
	and  l                                           ; $7b90: $a5
	db   $ec                                         ; $7b91: $ec

Jump_062_7b92:
	cp   d                                           ; $7b92: $ba
	sbc  a                                           ; $7b93: $9f
	dec  c                                           ; $7b94: $0d
	nop                                              ; $7b95: $00
	ld   a, [bc]                                     ; $7b96: $0a
	ld   bc, $1604                                   ; $7b97: $01 $04 $16
	ld   [bc], a                                     ; $7b9a: $02
	xor  b                                           ; $7b9b: $a8
	inc  b                                           ; $7b9c: $04
	sub  l                                           ; $7b9d: $95
	ld   [bc], a                                     ; $7b9e: $02
	ld   hl, $9759                                   ; $7b9f: $21 $59 $97
	inc  bc                                          ; $7ba2: $03
	and  b                                           ; $7ba3: $a0
	ld   l, a                                        ; $7ba4: $6f
	inc  bc                                          ; $7ba5: $03
	add  b                                           ; $7ba6: $80
	ld   h, l                                        ; $7ba7: $65
	ld   l, l                                        ; $7ba8: $6d
	dec  c                                           ; $7ba9: $0d
	xor  l                                           ; $7baa: $ad
	db   $eb                                         ; $7bab: $eb
	cp   d                                           ; $7bac: $ba
	ld   a, h                                        ; $7bad: $7c
	ld   e, l                                        ; $7bae: $5d
	ld   [hl], d                                     ; $7baf: $72
	and  b                                           ; $7bb0: $a0
	inc  b                                           ; $7bb1: $04
	sub  a                                           ; $7bb2: $97
	ld   h, l                                        ; $7bb3: $65
	ld   [hl], h                                     ; $7bb4: $74
	dec  c                                           ; $7bb5: $0d
	ld   e, l                                        ; $7bb6: $5d
	sbc  d                                           ; $7bb7: $9a
	ld   a, b                                        ; $7bb8: $78
	ld   d, d                                        ; $7bb9: $52
	ld   e, c                                        ; $7bba: $59
	ld   d, d                                        ; $7bbb: $52
	ld   sp, hl                                      ; $7bbc: $f9
	dec  c                                           ; $7bbd: $0d
	nop                                              ; $7bbe: $00
	ld   a, [bc]                                     ; $7bbf: $0a
	inc  e                                           ; $7bc0: $1c
	inc  b                                           ; $7bc1: $04
	ld   b, [hl]                                     ; $7bc2: $46
	ld   e, $01                                      ; $7bc3: $1e $01
	xor  l                                           ; $7bc5: $ad
	db   $eb                                         ; $7bc6: $eb
	cp   d                                           ; $7bc7: $ba
	ld   a, h                                        ; $7bc8: $7c
	ld   e, l                                        ; $7bc9: $5d
	ld   [hl], d                                     ; $7bca: $72
	ld   sp, hl                                      ; $7bcb: $f9
	db   $10                                         ; $7bcc: $10
	dec  c                                           ; $7bcd: $0d
	and  e                                           ; $7bce: $a3
	and  l                                           ; $7bcf: $a5
	db   $ec                                         ; $7bd0: $ec
	cp   d                                           ; $7bd1: $ba
	ld   h, l                                        ; $7bd2: $65
	sub  a                                           ; $7bd3: $97
	ld   a, b                                        ; $7bd4: $78
	ld   d, d                                        ; $7bd5: $52
	sub  [hl]                                        ; $7bd6: $96
	sbc  a                                           ; $7bd7: $9f
	dec  c                                           ; $7bd8: $0d
	nop                                              ; $7bd9: $00
	ld   a, [bc]                                     ; $7bda: $0a
	add  hl, de                                      ; $7bdb: $19
	dec  b                                           ; $7bdc: $05
	inc  bc                                          ; $7bdd: $03
	ld   [bc], a                                     ; $7bde: $02
	rst  $30                                         ; $7bdf: $f7
	ld   b, $02                                      ; $7be0: $06 $02
	ld   h, a                                        ; $7be2: $67
	sbc  c                                           ; $7be3: $99
	nop                                              ; $7be4: $00
	nop                                              ; $7be5: $00
	or   d                                           ; $7be6: $b2
	ei                                               ; $7be7: $fb
	xor  [hl]                                        ; $7be8: $ae
	ld   [hl], l                                     ; $7be9: $75
	ld   [hl], d                                     ; $7bea: $72
	sbc  c                                           ; $7beb: $99
	nop                                              ; $7bec: $00
	ld   bc, $f803                                   ; $7bed: $01 $03 $f8
	sbc  c                                           ; $7bf0: $99
	nop                                              ; $7bf1: $00
	ld   [bc], a                                     ; $7bf2: $02
	rlca                                             ; $7bf3: $07
	ld   [$0219], a                                  ; $7bf4: $ea $19 $02
	inc  bc                                          ; $7bf7: $03
	ld   bc, $2000                                   ; $7bf8: $01 $00 $20
	nop                                              ; $7bfb: $00
	rlca                                             ; $7bfc: $07
	ei                                               ; $7bfd: $fb
	ld   a, [de]                                     ; $7bfe: $1a
	ld   [bc], a                                     ; $7bff: $02
	inc  bc                                          ; $7c00: $03
	ld   bc, $2001                                   ; $7c01: $01 $01 $20
	nop                                              ; $7c04: $00
	rlca                                             ; $7c05: $07
	ld   e, c                                        ; $7c06: $59
	inc  e                                           ; $7c07: $1c
	ld   [bc], a                                     ; $7c08: $02
	inc  bc                                          ; $7c09: $03
	ld   bc, $2002                                   ; $7c0a: $01 $02 $20
	nop                                              ; $7c0d: $00
	ld   b, $56                                      ; $7c0e: $06 $56
	dec  e                                           ; $7c10: $1d
	rrca                                             ; $7c11: $0f
	nop                                              ; $7c12: $00
	ld   bc, $a301                                   ; $7c13: $01 $01 $a3
	and  l                                           ; $7c16: $a5
	db   $ec                                         ; $7c17: $ec
	cp   d                                           ; $7c18: $ba
	ld   a, l                                        ; $7c19: $7d
	inc  b                                           ; $7c1a: $04
	ld   c, $03                                      ; $7c1b: $0e $03
	add  d                                           ; $7c1d: $82
	ld   l, [hl]                                     ; $7c1e: $6e
	sbc  e                                           ; $7c1f: $9b
	ld   sp, hl                                      ; $7c20: $f9
	dec  c                                           ; $7c21: $0d
	ld   l, [hl]                                     ; $7c22: $6e
	ld   [hl], c                                     ; $7c23: $71
	ld   l, l                                        ; $7c24: $6d
	sub  a                                           ; $7c25: $97
	sbc  [hl]                                        ; $7c26: $9e
	dec  b                                           ; $7c27: $05
	db   $e3                                         ; $7c28: $e3
	sbc  b                                           ; $7c29: $98
	ld   l, l                                        ; $7c2a: $6d
	inc  b                                           ; $7c2b: $04
	sub  d                                           ; $7c2c: $92
	ld   a, l                                        ; $7c2d: $7d
	dec  c                                           ; $7c2e: $0d
	ld   e, e                                        ; $7c2f: $5b
	ld   l, a                                        ; $7c30: $6f
	and  c                                           ; $7c31: $a1
	halt                                             ; $7c32: $76
	inc  b                                           ; $7c33: $04
	sub  a                                           ; $7c34: $97
	ld   h, l                                        ; $7c35: $65
	ld   a, b                                        ; $7c36: $78
	sub  [hl]                                        ; $7c37: $96
	sbc  a                                           ; $7c38: $9f
	dec  c                                           ; $7c39: $0d
	nop                                              ; $7c3a: $00
	ld   a, [bc]                                     ; $7c3b: $0a
	inc  e                                           ; $7c3c: $1c
	inc  b                                           ; $7c3d: $04
	ld   b, e                                        ; $7c3e: $43
	dec  de                                          ; $7c3f: $1b
	ld   bc, $9859                                   ; $7c40: $01 $59 $98
	ld   l, l                                        ; $7c43: $6d
	sub  b                                           ; $7c44: $90
	ld   a, h                                        ; $7c45: $7c
	ld   sp, hl                                      ; $7c46: $f9
	dec  c                                           ; $7c47: $0d
	nop                                              ; $7c48: $00
	ld   a, [bc]                                     ; $7c49: $0a
	rrca                                             ; $7c4a: $0f
	nop                                              ; $7c4b: $00
	ld   bc, $6b01                                   ; $7c4c: $01 $01 $6b
	ld   d, h                                        ; $7c4f: $54
	and  e                                           ; $7c50: $a3
	and  l                                           ; $7c51: $a5

Jump_062_7c52:
	db   $ec                                         ; $7c52: $ec
	cp   d                                           ; $7c53: $ba
	ld   a, l                                        ; $7c54: $7d
	sbc  [hl]                                        ; $7c55: $9e
	xor  l                                           ; $7c56: $ad
	db   $eb                                         ; $7c57: $eb
	cp   d                                           ; $7c58: $ba
	ld   a, h                                        ; $7c59: $7c
	ld   e, l                                        ; $7c5a: $5d
	ld   [hl], d                                     ; $7c5b: $72
	dec  c                                           ; $7c5c: $0d
	ld   e, d                                        ; $7c5d: $5a
	sbc  [hl]                                        ; $7c5e: $9e
	ld   e, e                                        ; $7c5f: $5b
	sbc  d                                           ; $7c60: $9a
	ld   d, d                                        ; $7c61: $52
	ld   l, [hl]                                     ; $7c62: $6e
	ld   [hl], c                                     ; $7c63: $71
	ld   l, l                                        ; $7c64: $6d
	ld   e, c                                        ; $7c65: $59
	sub  a                                           ; $7c66: $97
	dec  c                                           ; $7c67: $0d
	ld   l, a                                        ; $7c68: $6f
	sub  l                                           ; $7c69: $95
	ld   [hl], c                                     ; $7c6a: $71
	halt                                             ; $7c6b: $76
	dec  b                                           ; $7c6c: $05
	db   $e3                                         ; $7c6d: $e3
	sbc  b                                           ; $7c6e: $98
	ld   l, l                                        ; $7c6f: $6d
	and  c                                           ; $7c70: $a1
	ld   l, [hl]                                     ; $7c71: $6e
	sbc  e                                           ; $7c72: $9b
	ld   sp, hl                                      ; $7c73: $f9
	dec  c                                           ; $7c74: $0d
	nop                                              ; $7c75: $00
	ld   a, [bc]                                     ; $7c76: $0a
	inc  e                                           ; $7c77: $1c
	inc  b                                           ; $7c78: $04
	ld   b, c                                        ; $7c79: $41
	add  hl, de                                      ; $7c7a: $19
	ld   bc, $ffff                                   ; $7c7b: $01 $ff $ff
	rst  $38                                         ; $7c7e: $ff
	rst  $38                                         ; $7c7f: $ff
	xor  l                                           ; $7c80: $ad
	db   $eb                                         ; $7c81: $eb
	cp   d                                           ; $7c82: $ba
	ld   a, h                                        ; $7c83: $7c
	ld   e, l                                        ; $7c84: $5d
	ld   [hl], d                                     ; $7c85: $72
	ld   a, c                                        ; $7c86: $79
	ld   a, e                                        ; $7c87: $7b
	dec  c                                           ; $7c88: $0d
	call nc, $04fb                                   ; $7c89: $d4 $fb $04
	ld   bc, $04a0                                   ; $7c8c: $01 $a0 $04
	ld   b, l                                        ; $7c8f: $45
	sbc  d                                           ; $7c90: $9a
	sbc  c                                           ; $7c91: $99
	halt                                             ; $7c92: $76
	sbc  [hl]                                        ; $7c93: $9e
	dec  c                                           ; $7c94: $0d
	halt                                             ; $7c95: $76
	ld   [hl], c                                     ; $7c96: $71
	ld   [hl], h                                     ; $7c97: $74
	sub  b                                           ; $7c98: $90
	ld   e, e                                        ; $7c99: $5b
	sbc  d                                           ; $7c9a: $9a
	ld   d, d                                        ; $7c9b: $52
	ld   a, b                                        ; $7c9c: $78
	and  c                                           ; $7c9d: $a1
	ld   l, [hl]                                     ; $7c9e: $6e
	sub  [hl]                                        ; $7c9f: $96
	sbc  a                                           ; $7ca0: $9f
	dec  c                                           ; $7ca1: $0d
	nop                                              ; $7ca2: $00
	ld   a, [bc]                                     ; $7ca3: $0a
	inc  e                                           ; $7ca4: $1c
	inc  b                                           ; $7ca5: $04
	ld   b, e                                        ; $7ca6: $43
	dec  de                                          ; $7ca7: $1b
	ld   bc, $9075                                   ; $7ca8: $01 $75 $90
	rst  $38                                         ; $7cab: $ff
	rst  $38                                         ; $7cac: $ff
	sbc  [hl]                                        ; $7cad: $9e
	ld   e, c                                        ; $7cae: $59
	sbc  b                                           ; $7caf: $98
	ld   l, l                                        ; $7cb0: $6d
	sub  b                                           ; $7cb1: $90
	ld   a, h                                        ; $7cb2: $7c
	ld   a, l                                        ; $7cb3: $7d
	dec  c                                           ; $7cb4: $0d
	ld   e, c                                        ; $7cb5: $59
	ld   d, [hl]                                     ; $7cb6: $56
	ld   h, e                                        ; $7cb7: $63
	ld   a, b                                        ; $7cb8: $78
	ld   e, e                                        ; $7cb9: $5b
	sub  c                                           ; $7cba: $91
	ld   a, e                                        ; $7cbb: $7b
	sbc  a                                           ; $7cbc: $9f
	dec  c                                           ; $7cbd: $0d
	ld   a, l                                        ; $7cbe: $7d
	ld   d, d                                        ; $7cbf: $52
	sbc  [hl]                                        ; $7cc0: $9e
	ld   l, a                                        ; $7cc1: $6f
	ld   d, d                                        ; $7cc2: $52
	ld   [bc], a                                     ; $7cc3: $02
	inc  de                                          ; $7cc4: $13
	ld   l, a                                        ; $7cc5: $6f
	sub  c                                           ; $7cc6: $91
	and  c                                           ; $7cc7: $a1
	sbc  a                                           ; $7cc8: $9f
	dec  c                                           ; $7cc9: $0d
	nop                                              ; $7cca: $00
	ld   a, [bc]                                     ; $7ccb: $0a
	rrca                                             ; $7ccc: $0f
	nop                                              ; $7ccd: $00
	ld   bc, $040d                                   ; $7cce: $01 $0d $04
	ld   b, c                                        ; $7cd1: $41
	ld   bc, $9850                                   ; $7cd2: $01 $50 $98
	ld   e, d                                        ; $7cd5: $5a
	halt                                             ; $7cd6: $76
	ld   d, h                                        ; $7cd7: $54
	sbc  a                                           ; $7cd8: $9f
	dec  c                                           ; $7cd9: $0d
	and  e                                           ; $7cda: $a3
	and  l                                           ; $7cdb: $a5
	db   $ec                                         ; $7cdc: $ec
	cp   d                                           ; $7cdd: $ba
	sbc  a                                           ; $7cde: $9f
	dec  c                                           ; $7cdf: $0d
	nop                                              ; $7ce0: $00
	ld   a, [bc]                                     ; $7ce1: $0a
	dec  c                                           ; $7ce2: $0d
	nop                                              ; $7ce3: $00
	nop                                              ; $7ce4: $00
	rrca                                             ; $7ce5: $0f
	nop                                              ; $7ce6: $00
	ld   bc, $020c                                   ; $7ce7: $01 $0c $02
	ld   c, $4a                                      ; $7cea: $0e $4a
	inc  e                                           ; $7cec: $1c
	ld   bc, $0101                                   ; $7ced: $01 $01 $01
	dec  e                                           ; $7cf0: $1d
	ld   b, b                                        ; $7cf1: $40
	ld   de, $1103                                   ; $7cf2: $11 $03 $11
	ld   bc, $2803                                   ; $7cf5: $01 $03 $28
	nop                                              ; $7cf8: $00
	ld   bc, $6267                                   ; $7cf9: $01 $67 $62
	ld   d, d                                        ; $7cfc: $52
	sbc  l                                           ; $7cfd: $9d
	ld   a, [$080d]                                  ; $7cfe: $fa $0d $08
	nop                                              ; $7d01: $00
	ld   h, e                                        ; $7d02: $63
	and  c                                           ; $7d03: $a1
	sbc  a                                           ; $7d04: $9f
	dec  c                                           ; $7d05: $0d
	and  e                                           ; $7d06: $a3
	and  l                                           ; $7d07: $a5
	db   $ec                                         ; $7d08: $ec
	cp   d                                           ; $7d09: $ba
	ld   e, d                                        ; $7d0a: $5a
	ld   d, b                                        ; $7d0b: $50
	and  c                                           ; $7d0c: $a1
	ld   a, b                                        ; $7d0d: $78
	inc  bc                                          ; $7d0e: $03
	and  [hl]                                        ; $7d0f: $a6
	inc  bc                                          ; $7d10: $03
	jp   c, $fa79                                    ; $7d11: $da $79 $fa

	dec  c                                           ; $7d14: $0d
	nop                                              ; $7d15: $00
	ld   a, [bc]                                     ; $7d16: $0a
	dec  c                                           ; $7d17: $0d
	nop                                              ; $7d18: $00
	nop                                              ; $7d19: $00
	rrca                                             ; $7d1a: $0f
	nop                                              ; $7d1b: $00
	ld   bc, $020c                                   ; $7d1c: $01 $0c $02
	ld   b, $2b                                      ; $7d1f: $06 $2b
	ld   e, $0f                                      ; $7d21: $1e $0f
	nop                                              ; $7d23: $00
	ld   bc, $a301                                   ; $7d24: $01 $01 $a3
	and  l                                           ; $7d27: $a5
	db   $ec                                         ; $7d28: $ec
	cp   d                                           ; $7d29: $ba
	sbc  a                                           ; $7d2a: $9f
	dec  c                                           ; $7d2b: $0d
	inc  bc                                          ; $7d2c: $03
	ld   c, d                                        ; $7d2d: $4a
	inc  bc                                          ; $7d2e: $03
	jp   c, $0279                                    ; $7d2f: $da $79 $02

	sbc  l                                           ; $7d32: $9d
	ld   [hl], c                                     ; $7d33: $71
	ld   [hl], h                                     ; $7d34: $74
	ld   h, d                                        ; $7d35: $62
	sub  a                                           ; $7d36: $97
	and  c                                           ; $7d37: $a1
	sbc  a                                           ; $7d38: $9f
	dec  c                                           ; $7d39: $0d
	adc  c                                           ; $7d3a: $89
	sub  a                                           ; $7d3b: $97
	or   d                                           ; $7d3c: $b2
	ei                                               ; $7d3d: $fb
	xor  [hl]                                        ; $7d3e: $ae
	ld   e, d                                        ; $7d3f: $5a
	ld   d, b                                        ; $7d40: $50
	sbc  c                                           ; $7d41: $99
	sub  [hl]                                        ; $7d42: $96
	sbc  a                                           ; $7d43: $9f
	dec  c                                           ; $7d44: $0d
	nop                                              ; $7d45: $00
	ld   a, [bc]                                     ; $7d46: $0a
	inc  e                                           ; $7d47: $1c
	inc  b                                           ; $7d48: $04
	ld   b, a                                        ; $7d49: $47
	rra                                              ; $7d4a: $1f
	ld   bc, $fbb2                                   ; $7d4b: $01 $b2 $fb
	xor  [hl]                                        ; $7d4e: $ae
	ld   a, [$ff0d]                                  ; $7d4f: $fa $0d $ff
	rst  $38                                         ; $7d52: $ff
	rst  $38                                         ; $7d53: $ff
	rst  $38                                         ; $7d54: $ff
	and  a                                           ; $7d55: $a7

Call_062_7d56:
	cp   [hl]                                        ; $7d56: $be
	ld   l, [hl]                                     ; $7d57: $6e
	sbc  a                                           ; $7d58: $9f
	dec  c                                           ; $7d59: $0d
	ld   l, a                                        ; $7d5a: $6f
	ld   d, d                                        ; $7d5b: $52
	ld   [bc], a                                     ; $7d5c: $02
	inc  de                                          ; $7d5d: $13
	ld   l, a                                        ; $7d5e: $6f
	sub  c                                           ; $7d5f: $91
	and  c                                           ; $7d60: $a1
	and  a                                           ; $7d61: $a7
	cp   [hl]                                        ; $7d62: $be
	ld   [bc], a                                     ; $7d63: $02
	sbc  l                                           ; $7d64: $9d
	ld   [hl], c                                     ; $7d65: $71
	ld   [hl], h                                     ; $7d66: $74
	sbc  c                                           ; $7d67: $99
	sbc  a                                           ; $7d68: $9f
	dec  c                                           ; $7d69: $0d
	nop                                              ; $7d6a: $00
	ld   a, [bc]                                     ; $7d6b: $0a
	ld   bc, $a5a3                                   ; $7d6c: $01 $a3 $a5
	db   $ec                                         ; $7d6f: $ec
	cp   d                                           ; $7d70: $ba
	sbc  [hl]                                        ; $7d71: $9e
	ld   h, c                                        ; $7d72: $61
	ld   [hl], a                                     ; $7d73: $77
	sub  b                                           ; $7d74: $90
	ld   h, [hl]                                     ; $7d75: $66
	sub  c                                           ; $7d76: $91
	dec  c                                           ; $7d77: $0d
	ld   a, b                                        ; $7d78: $78
	ld   d, d                                        ; $7d79: $52
	sub  b                                           ; $7d7a: $90
	and  c                                           ; $7d7b: $a1
	sbc  a                                           ; $7d7c: $9f
	xor  l                                           ; $7d7d: $ad
	db   $eb                                         ; $7d7e: $eb
	cp   d                                           ; $7d7f: $ba
	ld   a, h                                        ; $7d80: $7c
	ld   e, l                                        ; $7d81: $5d
	ld   [hl], d                                     ; $7d82: $72
	dec  c                                           ; $7d83: $0d
	ld   a, b                                        ; $7d84: $78
	and  c                                           ; $7d85: $a1
	ld   [hl], h                                     ; $7d86: $74
	ld   h, l                                        ; $7d87: $65
	sub  a                                           ; $7d88: $97
	ld   a, b                                        ; $7d89: $78
	ld   d, d                                        ; $7d8a: $52
	sub  b                                           ; $7d8b: $90
	and  c                                           ; $7d8c: $a1
	sbc  a                                           ; $7d8d: $9f
	dec  c                                           ; $7d8e: $0d
	nop                                              ; $7d8f: $00
	ld   a, [bc]                                     ; $7d90: $0a
	rrca                                             ; $7d91: $0f
	ld   bc, $1d07                                   ; $7d92: $01 $07 $1d
	ld   b, b                                        ; $7d95: $40
	ld   de, $1103                                   ; $7d96: $11 $03 $11
	ld   bc, $2901                                   ; $7d99: $01 $01 $29
	nop                                              ; $7d9c: $00
	ld   bc, $fb50                                   ; $7d9d: $01 $50 $fb
	ld   d, b                                        ; $7da0: $50
	sbc  [hl]                                        ; $7da1: $9e
	ld   [$6300], sp                                 ; $7da2: $08 $00 $63
	and  c                                           ; $7da5: $a1
	rst  $38                                         ; $7da6: $ff
	dec  c                                           ; $7da7: $0d
	and  e                                           ; $7da8: $a3
	and  l                                           ; $7da9: $a5
	db   $ec                                         ; $7daa: $ec
	cp   d                                           ; $7dab: $ba
	inc  bc                                          ; $7dac: $03
	ld   hl, sp+$71                                  ; $7dad: $f8 $71
	ld   l, a                                        ; $7daf: $6f
	sub  c                                           ; $7db0: $91
	ld   [hl], c                                     ; $7db1: $71
	ld   l, l                                        ; $7db2: $6d
	ld   h, [hl]                                     ; $7db3: $66
	sub  c                                           ; $7db4: $91
	dec  c                                           ; $7db5: $0d
	ld   a, b                                        ; $7db6: $78
	ld   d, d                                        ; $7db7: $52
	ld   [hl], l                                     ; $7db8: $75
	ld   h, a                                        ; $7db9: $67
	ld   e, c                                        ; $7dba: $59
	sbc  a                                           ; $7dbb: $9f
	sub  b                                           ; $7dbc: $90
	ld   d, h                                        ; $7dbd: $54
	rst  $38                                         ; $7dbe: $ff
	rst  $38                                         ; $7dbf: $ff
	dec  c                                           ; $7dc0: $0d
	nop                                              ; $7dc1: $00
	ld   a, [bc]                                     ; $7dc2: $0a
	rrca                                             ; $7dc3: $0f
	ld   bc, $0104                              ; $7dc4: $01 $04 $01
	and  e                                           ; $7dc7: $a3
	and  l                                           ; $7dc8: $a5
	db   $ec                                         ; $7dc9: $ec
	cp   d                                           ; $7dca: $ba
	sbc  [hl]                                        ; $7dcb: $9e
	ld   a, e                                        ; $7dcc: $7b
	sbc  [hl]                                        ; $7dcd: $9e
	ld   e, b                                        ; $7dce: $58
	ld   [bc], a                                     ; $7dcf: $02
	add  b                                           ; $7dd0: $80
	ld   d, d                                        ; $7dd1: $52
	sbc  a                                           ; $7dd2: $9f
	dec  c                                           ; $7dd3: $0d
	inc  bc                                          ; $7dd4: $03
	xor  a                                           ; $7dd5: $af
	inc  b                                           ; $7dd6: $04
	ld   d, $02                                      ; $7dd7: $16 $02
	xor  b                                           ; $7dd9: $a8
	ld   e, d                                        ; $7dda: $5a
	ld   l, e                                        ; $7ddb: $6b
	sbc  e                                           ; $7ddc: $9b
	ld   [hl], c                                     ; $7ddd: $71
	ld   [hl], h                                     ; $7dde: $74
	ld   a, b                                        ; $7ddf: $78
	ld   d, d                                        ; $7de0: $52
	halt                                             ; $7de1: $76
	dec  c                                           ; $7de2: $0d
	adc  l                                           ; $7de3: $8d
	and  c                                           ; $7de4: $a1
	ld   a, b                                        ; $7de5: $78
	ld   e, d                                        ; $7de6: $5a
	dec  b                                           ; $7de7: $05
	sub  [hl]                                        ; $7de8: $96
	sbc  c                                           ; $7de9: $99
	ld   a, h                                        ; $7dea: $7c
	sub  [hl]                                        ; $7deb: $96

Jump_062_7dec:
	sbc  a                                           ; $7dec: $9f
	dec  c                                           ; $7ded: $0d
	nop                                              ; $7dee: $00
	ld   a, [bc]                                     ; $7def: $0a
	dec  c                                           ; $7df0: $0d
	inc  b                                           ; $7df1: $04
	ld   b, b                                        ; $7df2: $40
	ld   bc, $9e7b                                   ; $7df3: $01 $7b $9e
	and  e                                           ; $7df6: $a3
	and  l                                           ; $7df7: $a5
	db   $ec                                         ; $7df8: $ec
	cp   d                                           ; $7df9: $ba
	sbc  a                                           ; $7dfa: $9f
	dec  c                                           ; $7dfb: $0d
	and  e                                           ; $7dfc: $a3
	and  l                                           ; $7dfd: $a5
	db   $ec                                         ; $7dfe: $ec
	cp   d                                           ; $7dff: $ba
	ld   a, l                                        ; $7e00: $7d
	inc  b                                           ; $7e01: $04
	ld   c, $03                                      ; $7e02: $0e $03
	add  d                                           ; $7e04: $82
	ld   l, [hl]                                     ; $7e05: $6e
	ld   e, c                                        ; $7e06: $59
	sub  a                                           ; $7e07: $97
	dec  c                                           ; $7e08: $0d
	inc  b                                           ; $7e09: $04
	sbc  [hl]                                        ; $7e0a: $9e
	ld   e, c                                        ; $7e0b: $59
	sbc  c                                           ; $7e0c: $99
	sbc  l                                           ; $7e0d: $9d
	sub  [hl]                                        ; $7e0e: $96
	ld   a, e                                        ; $7e0f: $7b
	sbc  a                                           ; $7e10: $9f
	dec  c                                           ; $7e11: $0d
	nop                                              ; $7e12: $00
	ld   a, [bc]                                     ; $7e13: $0a
	inc  e                                           ; $7e14: $1c
	inc  b                                           ; $7e15: $04
	ld   b, e                                        ; $7e16: $43
	dec  de                                          ; $7e17: $1b
	ld   bc, $ffff                                   ; $7e18: $01 $ff $ff
	rst  $38                                         ; $7e1b: $ff
	rst  $38                                         ; $7e1c: $ff
	ld   d, h                                        ; $7e1d: $54
	and  c                                           ; $7e1e: $a1
	sbc  a                                           ; $7e1f: $9f
	dec  c                                           ; $7e20: $0d
	and  e                                           ; $7e21: $a3
	and  l                                           ; $7e22: $a5
	db   $ec                                         ; $7e23: $ec
	cp   d                                           ; $7e24: $ba
	inc  b                                           ; $7e25: $04
	ld   c, $03                                      ; $7e26: $0e $03
	add  d                                           ; $7e28: $82
	ld   l, [hl]                                     ; $7e29: $6e
	ld   e, c                                        ; $7e2a: $59
	sub  a                                           ; $7e2b: $97
	sbc  l                                           ; $7e2c: $9d
	ld   e, c                                        ; $7e2d: $59
	sbc  c                                           ; $7e2e: $99
	sub  [hl]                                        ; $7e2f: $96
	sbc  a                                           ; $7e30: $9f
	dec  c                                           ; $7e31: $0d
	ld   a, l                                        ; $7e32: $7d
	ld   d, d                                        ; $7e33: $52
	sbc  [hl]                                        ; $7e34: $9e
	or   h                                           ; $7e35: $b4
	xor  $9e                                         ; $7e36: $ee $9e
	ld   e, c                                        ; $7e38: $59
	ld   d, [hl]                                     ; $7e39: $56
	ld   h, a                                        ; $7e3a: $67
	sbc  a                                           ; $7e3b: $9f
	dec  c                                           ; $7e3c: $0d
	nop                                              ; $7e3d: $00
	ld   a, [bc]                                     ; $7e3e: $0a
	ld   bc, $9075                                   ; $7e3f: $01 $75 $90
	rst  $38                                         ; $7e42: $ff
	rst  $38                                         ; $7e43: $ff
	dec  c                                           ; $7e44: $0d
	or   d                                           ; $7e45: $b2
	ei                                               ; $7e46: $fb
	xor  [hl]                                        ; $7e47: $ae
	sub  b                                           ; $7e48: $90
	ld   l, a                                        ; $7e49: $6f
	sub  l                                           ; $7e4a: $95
	ld   d, h                                        ; $7e4b: $54
	ld   l, [hl]                                     ; $7e4c: $6e
	ld   d, d                                        ; $7e4d: $52
	sbc  a                                           ; $7e4e: $9f
	dec  c                                           ; $7e4f: $0d
	nop                                              ; $7e50: $00
	ld   a, [bc]                                     ; $7e51: $0a
	inc  e                                           ; $7e52: $1c
	ld   bc, $0707                                   ; $7e53: $01 $07 $07
	ld   bc, $0008                                   ; $7e56: $01 $08 $00
	ld   h, e                                        ; $7e59: $63
	and  c                                           ; $7e5a: $a1
	sbc  a                                           ; $7e5b: $9f
	dec  c                                           ; $7e5c: $0d
	ld   d, b                                        ; $7e5d: $50
	halt                                             ; $7e5e: $76
	ld   [hl], l                                     ; $7e5f: $75
	and  e                                           ; $7e60: $a3
	and  l                                           ; $7e61: $a5
	db   $ec                                         ; $7e62: $ec
	cp   d                                           ; $7e63: $ba
	ld   a, c                                        ; $7e64: $79
	dec  c                                           ; $7e65: $0d
	or   d                                           ; $7e66: $b2
	ei                                               ; $7e67: $fb
	xor  [hl]                                        ; $7e68: $ae
	and  b                                           ; $7e69: $a0
	ld   d, b                                        ; $7e6a: $50
	ld   h, b                                        ; $7e6b: $60
	ld   [hl], h                                     ; $7e6c: $74
	ld   e, l                                        ; $7e6d: $5d
	ld   l, [hl]                                     ; $7e6e: $6e
	ld   h, e                                        ; $7e6f: $63
	ld   d, d                                        ; $7e70: $52
	sbc  a                                           ; $7e71: $9f
	dec  c                                           ; $7e72: $0d
	nop                                              ; $7e73: $00
	ld   a, [bc]                                     ; $7e74: $0a
	dec  c                                           ; $7e75: $0d
	nop                                              ; $7e76: $00
	nop                                              ; $7e77: $00
	rrca                                             ; $7e78: $0f
	nop                                              ; $7e79: $00
	ld   bc, $020c                                   ; $7e7a: $01 $0c $02
	ld   b, $2b                                      ; $7e7d: $06 $2b
	ld   e, $0f                                      ; $7e7f: $1e $0f
	nop                                              ; $7e81: $00
	ld   bc, $b401                                   ; $7e82: $01 $01 $b4
	db   $eb                                         ; $7e85: $eb
	ld   a, [$a310]                                  ; $7e86: $fa $10 $a3
	and  l                                           ; $7e89: $a5
	db   $ec                                         ; $7e8a: $ec
	cp   d                                           ; $7e8b: $ba
	ld   a, [$ad0d]                                  ; $7e8c: $fa $0d $ad
	db   $eb                                         ; $7e8f: $eb
	cp   d                                           ; $7e90: $ba
	ld   a, h                                        ; $7e91: $7c
	ld   e, l                                        ; $7e92: $5d
	ld   [hl], d                                     ; $7e93: $72
	sbc  [hl]                                        ; $7e94: $9e
	inc  bc                                          ; $7e95: $03
	jr   jr_062_7f09                                 ; $7e96: $18 $71

	ld   l, l                                        ; $7e98: $6d
	ld   l, [hl]                                     ; $7e99: $6e
	sbc  e                                           ; $7e9a: $9b
	ld   a, [$040d]                                  ; $7e9b: $fa $0d $04
	sub  a                                           ; $7e9e: $97
	ld   h, l                                        ; $7e9f: $65
	ld   a, b                                        ; $7ea0: $78
	ld   h, e                                        ; $7ea1: $63
	ld   d, d                                        ; $7ea2: $52
	ld   a, [$000d]                                  ; $7ea3: $fa $0d $00
	ld   a, [bc]                                     ; $7ea6: $0a
	inc  e                                           ; $7ea7: $1c
	inc  b                                           ; $7ea8: $04
	ld   b, h                                        ; $7ea9: $44
	inc  e                                           ; $7eaa: $1c
	ld   bc, $fb50                                   ; $7eab: $01 $50 $fb
	and  c                                           ; $7eae: $a1
	sbc  a                                           ; $7eaf: $9f
	ld   h, e                                        ; $7eb0: $63
	ld   e, l                                        ; $7eb1: $5d
	sub  a                                           ; $7eb2: $97
	db   $fc                                         ; $7eb3: $fc
	sbc  a                                           ; $7eb4: $9f
	dec  c                                           ; $7eb5: $0d
	ld   l, a                                        ; $7eb6: $6f
	ld   d, d                                        ; $7eb7: $52
	ld   [bc], a                                     ; $7eb8: $02
	inc  de                                          ; $7eb9: $13
	ld   l, a                                        ; $7eba: $6f
	sub  c                                           ; $7ebb: $91
	and  c                                           ; $7ebc: $a1
	sbc  [hl]                                        ; $7ebd: $9e
	or   h                                           ; $7ebe: $b4
	pop  af                                          ; $7ebf: $f1
	and  l                                           ; $7ec0: $a5
	sub  [hl]                                        ; $7ec1: $96
	db   $fc                                         ; $7ec2: $fc
	sbc  a                                           ; $7ec3: $9f
	dec  c                                           ; $7ec4: $0d
	nop                                              ; $7ec5: $00
	ld   a, [bc]                                     ; $7ec6: $0a
	rrca                                             ; $7ec7: $0f
	ld   bc, $1d07                                   ; $7ec8: $01 $07 $1d
	ld   b, b                                        ; $7ecb: $40
	ld   de, $1103                                   ; $7ecc: $11 $03 $11
	ld   bc, $2901                                   ; $7ecf: $01 $01 $29
	nop                                              ; $7ed2: $00
	ld   bc, $fb50                                   ; $7ed3: $01 $50 $fb
	ld   d, b                                        ; $7ed6: $50
	sbc  [hl]                                        ; $7ed7: $9e
	ld   [$6300], sp                                 ; $7ed8: $08 $00 $63
	and  c                                           ; $7edb: $a1
	rst  $38                                         ; $7edc: $ff
	dec  c                                           ; $7edd: $0d
	and  e                                           ; $7ede: $a3
	and  l                                           ; $7edf: $a5
	db   $ec                                         ; $7ee0: $ec
	cp   d                                           ; $7ee1: $ba
	dec  b                                           ; $7ee2: $05
	xor  l                                           ; $7ee3: $ad
	ld   d, d                                        ; $7ee4: $52
	ld   l, a                                        ; $7ee5: $6f
	sub  c                                           ; $7ee6: $91
	ld   [hl], c                                     ; $7ee7: $71
	ld   l, l                                        ; $7ee8: $6d
	ld   h, [hl]                                     ; $7ee9: $66
	sub  c                                           ; $7eea: $91
	dec  c                                           ; $7eeb: $0d
	ld   a, b                                        ; $7eec: $78
	ld   d, d                                        ; $7eed: $52
	ld   [hl], l                                     ; $7eee: $75
	ld   h, a                                        ; $7eef: $67
	ld   e, c                                        ; $7ef0: $59
	sbc  a                                           ; $7ef1: $9f
	sub  b                                           ; $7ef2: $90
	ld   d, h                                        ; $7ef3: $54
	rst  $38                                         ; $7ef4: $ff
	rst  $38                                         ; $7ef5: $ff
	dec  c                                           ; $7ef6: $0d
	nop                                              ; $7ef7: $00
	ld   a, [bc]                                     ; $7ef8: $0a
	rrca                                             ; $7ef9: $0f
	ld   bc, $0104                              ; $7efa: $01 $04 $01
	and  e                                           ; $7efd: $a3
	and  l                                           ; $7efe: $a5
	db   $ec                                         ; $7eff: $ec
	cp   d                                           ; $7f00: $ba
	sbc  [hl]                                        ; $7f01: $9e
	ld   a, e                                        ; $7f02: $7b
	sbc  [hl]                                        ; $7f03: $9e
	ld   e, b                                        ; $7f04: $58
	ld   [bc], a                                     ; $7f05: $02
	add  b                                           ; $7f06: $80
	ld   d, d                                        ; $7f07: $52
	sbc  a                                           ; $7f08: $9f

jr_062_7f09:
	dec  c                                           ; $7f09: $0d
	inc  bc                                          ; $7f0a: $03
	xor  a                                           ; $7f0b: $af
	inc  b                                           ; $7f0c: $04
	ld   d, $02                                      ; $7f0d: $16 $02
	xor  b                                           ; $7f0f: $a8
	ld   e, d                                        ; $7f10: $5a
	ld   l, e                                        ; $7f11: $6b
	sbc  e                                           ; $7f12: $9b
	ld   [hl], c                                     ; $7f13: $71
	ld   [hl], h                                     ; $7f14: $74
	ld   a, b                                        ; $7f15: $78
	ld   d, d                                        ; $7f16: $52
	halt                                             ; $7f17: $76
	dec  c                                           ; $7f18: $0d
	adc  l                                           ; $7f19: $8d
	and  c                                           ; $7f1a: $a1
	ld   a, b                                        ; $7f1b: $78
	ld   e, d                                        ; $7f1c: $5a
	dec  b                                           ; $7f1d: $05
	sub  [hl]                                        ; $7f1e: $96
	sbc  c                                           ; $7f1f: $99
	ld   a, h                                        ; $7f20: $7c
	sub  [hl]                                        ; $7f21: $96
	sbc  a                                           ; $7f22: $9f
	dec  c                                           ; $7f23: $0d
	nop                                              ; $7f24: $00
	ld   a, [bc]                                     ; $7f25: $0a
	ld   bc, $9e7b                                   ; $7f26: $01 $7b $9e
	and  e                                           ; $7f29: $a3
	and  l                                           ; $7f2a: $a5
	db   $ec                                         ; $7f2b: $ec
	cp   d                                           ; $7f2c: $ba
	sbc  a                                           ; $7f2d: $9f
	dec  c                                           ; $7f2e: $0d
	and  e                                           ; $7f2f: $a3
	and  l                                           ; $7f30: $a5
	db   $ec                                         ; $7f31: $ec
	cp   d                                           ; $7f32: $ba
	ld   a, l                                        ; $7f33: $7d
	inc  b                                           ; $7f34: $04
	ld   c, $03                                      ; $7f35: $0e $03
	add  d                                           ; $7f37: $82
	ld   l, [hl]                                     ; $7f38: $6e
	ld   e, c                                        ; $7f39: $59
	sub  a                                           ; $7f3a: $97
	dec  c                                           ; $7f3b: $0d
	inc  b                                           ; $7f3c: $04
	sbc  [hl]                                        ; $7f3d: $9e
	ld   e, c                                        ; $7f3e: $59
	sbc  c                                           ; $7f3f: $99
	sbc  l                                           ; $7f40: $9d
	sub  [hl]                                        ; $7f41: $96
	ld   a, e                                        ; $7f42: $7b
	sbc  a                                           ; $7f43: $9f
	dec  c                                           ; $7f44: $0d
	nop                                              ; $7f45: $00
	ld   a, [bc]                                     ; $7f46: $0a
	inc  e                                           ; $7f47: $1c
	inc  b                                           ; $7f48: $04
	ld   b, e                                        ; $7f49: $43
	dec  de                                          ; $7f4a: $1b
	ld   bc, $ffff                                   ; $7f4b: $01 $ff $ff
	rst  $38                                         ; $7f4e: $ff
	rst  $38                                         ; $7f4f: $ff
	ld   d, h                                        ; $7f50: $54
	and  c                                           ; $7f51: $a1
	sbc  a                                           ; $7f52: $9f
	dec  c                                           ; $7f53: $0d
	and  e                                           ; $7f54: $a3
	and  l                                           ; $7f55: $a5
	db   $ec                                         ; $7f56: $ec
	cp   d                                           ; $7f57: $ba
	inc  b                                           ; $7f58: $04
	ld   c, $03                                      ; $7f59: $0e $03
	add  d                                           ; $7f5b: $82
	ld   l, [hl]                                     ; $7f5c: $6e
	ld   e, c                                        ; $7f5d: $59
	sub  a                                           ; $7f5e: $97
	sbc  l                                           ; $7f5f: $9d
	ld   e, c                                        ; $7f60: $59
	sbc  c                                           ; $7f61: $99
	sub  [hl]                                        ; $7f62: $96
	sbc  a                                           ; $7f63: $9f
	dec  c                                           ; $7f64: $0d
	ld   a, l                                        ; $7f65: $7d
	ld   d, d                                        ; $7f66: $52
	sbc  [hl]                                        ; $7f67: $9e
	or   h                                           ; $7f68: $b4
	xor  $9e                                         ; $7f69: $ee $9e
	ld   e, c                                        ; $7f6b: $59
	ld   d, [hl]                                     ; $7f6c: $56
	ld   h, a                                        ; $7f6d: $67
	sbc  a                                           ; $7f6e: $9f
	dec  c                                           ; $7f6f: $0d
	nop                                              ; $7f70: $00
	ld   a, [bc]                                     ; $7f71: $0a
	dec  c                                           ; $7f72: $0d
	nop                                              ; $7f73: $00
	nop                                              ; $7f74: $00
	rrca                                             ; $7f75: $0f
	nop                                              ; $7f76: $00
	ld   bc, $020c                                   ; $7f77: $01 $0c $02
	ld   b, $2b                                      ; $7f7a: $06 $2b
	ld   e, $1c                                      ; $7f7c: $1e $1c
	inc  b                                           ; $7f7e: $04
	ld   b, b                                        ; $7f7f: $40
	jr   jr_062_7f83                                 ; $7f80: $18 $01

	xor  l                                           ; $7f82: $ad

jr_062_7f83:
	db   $eb                                         ; $7f83: $eb
	cp   d                                           ; $7f84: $ba
	ld   a, h                                        ; $7f85: $7c
	ld   e, l                                        ; $7f86: $5d
	ld   [hl], d                                     ; $7f87: $72
	ld   e, d                                        ; $7f88: $5a
	ld   [hl], a                                     ; $7f89: $77
	ld   d, h                                        ; $7f8a: $54
	ld   h, l                                        ; $7f8b: $65
	ld   l, l                                        ; $7f8c: $6d
	ld   a, h                                        ; $7f8d: $7c
	ld   sp, hl                                      ; $7f8e: $f9
	dec  c                                           ; $7f8f: $0d
	ld   a, e                                        ; $7f90: $7b
	ld   d, [hl]                                     ; $7f91: $56
	sbc  [hl]                                        ; $7f92: $9e
	ld   l, a                                        ; $7f93: $6f
	ld   d, d                                        ; $7f94: $52
	ld   [bc], a                                     ; $7f95: $02
	inc  de                                          ; $7f96: $13
	ld   l, a                                        ; $7f97: $6f
	sub  c                                           ; $7f98: $91
	and  c                                           ; $7f99: $a1
	sbc  a                                           ; $7f9a: $9f
	dec  c                                           ; $7f9b: $0d
	nop                                              ; $7f9c: $00
	ld   a, [bc]                                     ; $7f9d: $0a
	rrca                                             ; $7f9e: $0f
	ld   bc, $1d04                                   ; $7f9f: $01 $04 $1d
	ld   b, b                                        ; $7fa2: $40
	ld   de, $1103                                   ; $7fa3: $11 $03 $11
	ld   bc, $2901                                   ; $7fa6: $01 $01 $29
	nop                                              ; $7fa9: $00
	ld   bc, $0008                                   ; $7faa: $01 $08 $00
	ld   h, e                                        ; $7fad: $63
	and  c                                           ; $7fae: $a1
	sbc  a                                           ; $7faf: $9f
	dec  c                                           ; $7fb0: $0d
	ld   h, l                                        ; $7fb1: $65
	ld   [hl], c                                     ; $7fb2: $71
	ld   e, c                                        ; $7fb3: $59
	sbc  b                                           ; $7fb4: $98
	ld   h, l                                        ; $7fb5: $65
	ld   [hl], h                                     ; $7fb6: $74
	ld   e, l                                        ; $7fb7: $5d
	ld   l, [hl]                                     ; $7fb8: $6e
	ld   h, e                                        ; $7fb9: $63
	ld   d, d                                        ; $7fba: $52
	sub  [hl]                                        ; $7fbb: $96
	rst  $38                                         ; $7fbc: $ff
	rst  $38                                         ; $7fbd: $ff
	dec  c                                           ; $7fbe: $0d
	rst  $38                                         ; $7fbf: $ff
	rst  $38                                         ; $7fc0: $ff
	ld   h, l                                        ; $7fc1: $65
	ld   e, c                                        ; $7fc2: $59
	ld   l, l                                        ; $7fc3: $6d
	ld   a, b                                        ; $7fc4: $78
	ld   d, d                                        ; $7fc5: $52
	ld   [hl], l                                     ; $7fc6: $75
	ld   h, a                                        ; $7fc7: $67
	ld   a, e                                        ; $7fc8: $7b
	rst  $38                                         ; $7fc9: $ff
	rst  $38                                         ; $7fca: $ff
	dec  c                                           ; $7fcb: $0d
	nop                                              ; $7fcc: $00
	ld   a, [bc]                                     ; $7fcd: $0a
	rrca                                             ; $7fce: $0f
	ld   bc, $0104                              ; $7fcf: $01 $04 $01
	and  e                                           ; $7fd2: $a3
	and  l                                           ; $7fd3: $a5
	db   $ec                                         ; $7fd4: $ec
	cp   d                                           ; $7fd5: $ba
	sbc  [hl]                                        ; $7fd6: $9e
	ld   a, e                                        ; $7fd7: $7b
	sbc  [hl]                                        ; $7fd8: $9e
	ld   e, b                                        ; $7fd9: $58
	ld   [bc], a                                     ; $7fda: $02
	add  b                                           ; $7fdb: $80
	ld   d, d                                        ; $7fdc: $52
	sbc  a                                           ; $7fdd: $9f
	dec  c                                           ; $7fde: $0d
	inc  bc                                          ; $7fdf: $03
	xor  a                                           ; $7fe0: $af
	inc  b                                           ; $7fe1: $04
	ld   d, $02                                      ; $7fe2: $16 $02
	xor  b                                           ; $7fe4: $a8
	ld   e, d                                        ; $7fe5: $5a
	ld   l, e                                        ; $7fe6: $6b
	sbc  e                                           ; $7fe7: $9b
	ld   [hl], c                                     ; $7fe8: $71
	ld   [hl], h                                     ; $7fe9: $74
	ld   a, b                                        ; $7fea: $78
	ld   d, d                                        ; $7feb: $52
	halt                                             ; $7fec: $76
	dec  c                                           ; $7fed: $0d
	adc  l                                           ; $7fee: $8d
	and  c                                           ; $7fef: $a1
	ld   a, b                                        ; $7ff0: $78
	ld   e, d                                        ; $7ff1: $5a
	dec  b                                           ; $7ff2: $05
	sub  [hl]                                        ; $7ff3: $96
	sbc  c                                           ; $7ff4: $99
	ld   a, h                                        ; $7ff5: $7c
	sub  [hl]                                        ; $7ff6: $96
	sbc  a                                           ; $7ff7: $9f
	dec  c                                           ; $7ff8: $0d
	nop                                              ; $7ff9: $00
	ld   a, [bc]                                     ; $7ffa: $0a
	ld   bc, $9e7b                                   ; $7ffb: $01 $7b $9e
	and  e                                           ; $7ffe: $a3
	and  l                                           ; $7fff: $a5
