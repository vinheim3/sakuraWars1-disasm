; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $063", ROMX[$4000], BANK[$63]

	db   $ec                                         ; $4000: $ec
	cp   d                                           ; $4001: $ba
	sbc  a                                           ; $4002: $9f
	dec  c                                           ; $4003: $0d
	and  e                                           ; $4004: $a3
	and  l                                           ; $4005: $a5
	db   $ec                                         ; $4006: $ec
	cp   d                                           ; $4007: $ba
	ld   a, l                                        ; $4008: $7d
	inc  b                                           ; $4009: $04
	ld   c, $03                                      ; $400a: $0e $03
	add  d                                           ; $400c: $82
	ld   l, [hl]                                     ; $400d: $6e
	ld   e, c                                        ; $400e: $59
	sub  a                                           ; $400f: $97
	dec  c                                           ; $4010: $0d
	inc  b                                           ; $4011: $04
	sbc  [hl]                                        ; $4012: $9e
	ld   e, c                                        ; $4013: $59
	sbc  c                                           ; $4014: $99
	sbc  l                                           ; $4015: $9d
	sub  [hl]                                        ; $4016: $96
	ld   a, e                                        ; $4017: $7b
	sbc  a                                           ; $4018: $9f
	dec  c                                           ; $4019: $0d
	nop                                              ; $401a: $00
	ld   a, [bc]                                     ; $401b: $0a
	inc  e                                           ; $401c: $1c
	inc  b                                           ; $401d: $04
	ld   b, e                                        ; $401e: $43
	dec  de                                          ; $401f: $1b
	ld   bc, $ffff                                   ; $4020: $01 $ff $ff
	rst  $38                                         ; $4023: $ff
	rst  $38                                         ; $4024: $ff
	ld   d, h                                        ; $4025: $54
	and  c                                           ; $4026: $a1
	sbc  a                                           ; $4027: $9f
	dec  c                                           ; $4028: $0d
	and  e                                           ; $4029: $a3
	and  l                                           ; $402a: $a5
	db   $ec                                         ; $402b: $ec
	cp   d                                           ; $402c: $ba
	inc  b                                           ; $402d: $04
	ld   c, $03                                      ; $402e: $0e $03
	add  d                                           ; $4030: $82
	ld   l, [hl]                                     ; $4031: $6e
	ld   e, c                                        ; $4032: $59
	sub  a                                           ; $4033: $97
	sbc  l                                           ; $4034: $9d
	ld   e, c                                        ; $4035: $59
	sbc  c                                           ; $4036: $99
	sub  [hl]                                        ; $4037: $96
	sbc  a                                           ; $4038: $9f
	dec  c                                           ; $4039: $0d
	ld   a, l                                        ; $403a: $7d
	ld   d, d                                        ; $403b: $52
	sbc  [hl]                                        ; $403c: $9e
	or   h                                           ; $403d: $b4
	xor  $9e                                         ; $403e: $ee $9e
	ld   e, c                                        ; $4040: $59
	ld   d, [hl]                                     ; $4041: $56
	ld   h, a                                        ; $4042: $67
	sbc  a                                           ; $4043: $9f
	dec  c                                           ; $4044: $0d
	nop                                              ; $4045: $00
	ld   a, [bc]                                     ; $4046: $0a
	dec  c                                           ; $4047: $0d
	nop                                              ; $4048: $00
	nop                                              ; $4049: $00
	rrca                                             ; $404a: $0f
	nop                                              ; $404b: $00
	ld   bc, $020c                                   ; $404c: $01 $0c $02
	ld   b, $2b                                      ; $404f: $06 $2b
	ld   e, $0e                                      ; $4051: $1e $0e
	dec  h                                           ; $4053: $25
	inc  e                                           ; $4054: $1c
	ld   bc, $0101                                   ; $4055: $01 $01 $01
	ld   bc, $5483                                   ; $4058: $01 $83 $54
	rst  $38                                         ; $405b: $ff
	rst  $38                                         ; $405c: $ff
	dec  c                                           ; $405d: $0d
	sub  d                                           ; $405e: $92
	ld   [hl], c                                     ; $405f: $71
	halt                                             ; $4060: $76
	inc  bc                                          ; $4061: $03
	ld   a, [hl]                                     ; $4062: $7e
	sbc  l                                           ; $4063: $9d
	sbc  b                                           ; $4064: $98
	adc  h                                           ; $4065: $8c
	ld   h, l                                        ; $4066: $65
	ld   l, l                                        ; $4067: $6d
	ld   a, e                                        ; $4068: $7b
	sbc  a                                           ; $4069: $9f
	dec  c                                           ; $406a: $0d
	ld   d, b                                        ; $406b: $50
	sbc  b                                           ; $406c: $98
	ld   e, d                                        ; $406d: $5a
	halt                                             ; $406e: $76
	ld   d, h                                        ; $406f: $54
	ld   h, d                                        ; $4070: $62
	ld   h, h                                        ; $4071: $64
	ld   d, d                                        ; $4072: $52
	adc  h                                           ; $4073: $8c
	ld   h, l                                        ; $4074: $65
	ld   l, l                                        ; $4075: $6d
	sbc  a                                           ; $4076: $9f
	dec  c                                           ; $4077: $0d
	nop                                              ; $4078: $00
	ld   a, [bc]                                     ; $4079: $0a
	inc  e                                           ; $407a: $1c
	ld   bc, $0000                                   ; $407b: $01 $00 $00
	ld   bc, $a502                                   ; $407e: $01 $02 $a5
	inc  b                                           ; $4081: $04
	xor  d                                           ; $4082: $aa
	ld   a, l                                        ; $4083: $7d
	inc  b                                           ; $4084: $04
	ld   a, e                                        ; $4085: $7b
	sbc  d                                           ; $4086: $9a
	adc  h                                           ; $4087: $8c
	ld   h, l                                        ; $4088: $65
	ld   l, l                                        ; $4089: $6d
	ld   a, e                                        ; $408a: $7b
	sbc  a                                           ; $408b: $9f
	dec  c                                           ; $408c: $0d
	sub  h                                           ; $408d: $94
	ld   [hl], c                                     ; $408e: $71
	ld   e, l                                        ; $408f: $5d
	sbc  b                                           ; $4090: $98
	inc  bc                                          ; $4091: $03
	and  a                                           ; $4092: $a7
	and  c                                           ; $4093: $a1
	ld   [hl], l                                     ; $4094: $75
	ld   [bc], a                                     ; $4095: $02
	inc  [hl]                                        ; $4096: $34
	ld   h, e                                        ; $4097: $63
	ld   d, d                                        ; $4098: $52
	sbc  a                                           ; $4099: $9f
	dec  c                                           ; $409a: $0d
	nop                                              ; $409b: $00
	ld   a, [bc]                                     ; $409c: $0a
	ld   d, $1a                                      ; $409d: $16 $1a
	rrca                                             ; $409f: $0f
	ld   bc, $0101                                   ; $40a0: $01 $01 $01
	ld   h, d                                        ; $40a3: $62
	ld   e, l                                        ; $40a4: $5d
	sbc  e                                           ; $40a5: $9b
	ld   d, h                                        ; $40a6: $54
	ld   h, e                                        ; $40a7: $63
	adc  h                                           ; $40a8: $8c
	ld   [hl], l                                     ; $40a9: $75
	ld   h, l                                        ; $40aa: $65
	ld   l, l                                        ; $40ab: $6d
	sbc  a                                           ; $40ac: $9f
	dec  c                                           ; $40ad: $0d
	nop                                              ; $40ae: $00
	ld   a, [bc]                                     ; $40af: $0a
	dec  b                                           ; $40b0: $05
	add  b                                           ; $40b1: $80
	rrca                                             ; $40b2: $0f
	ld   bc, $0001                                   ; $40b3: $01 $01 $00
	dec  b                                           ; $40b6: $05
	ld   b, b                                        ; $40b7: $40
	ld   c, [hl]                                     ; $40b8: $4e
	ld   bc, $0000                                   ; $40b9: $01 $00 $00
	add  hl, hl                                      ; $40bc: $29
	nop                                              ; $40bd: $00
	nop                                              ; $40be: $00
	nop                                              ; $40bf: $00
	inc  b                                           ; $40c0: $04
	add  b                                           ; $40c1: $80
	dec  [hl]                                        ; $40c2: $35
	ld   bc, $20ff                                   ; $40c3: $01 $ff $20
	nop                                              ; $40c6: $00
	ld   c, $01                                      ; $40c7: $0e $01
	rrca                                             ; $40c9: $0f
	nop                                              ; $40ca: $00
	ld   bc, $0102                                   ; $40cb: $01 $02 $01
	ld   [bc], a                                     ; $40ce: $02
	and  l                                           ; $40cf: $a5
	inc  b                                           ; $40d0: $04
	xor  d                                           ; $40d1: $aa
	ld   a, l                                        ; $40d2: $7d
	sbc  [hl]                                        ; $40d3: $9e
	ld   [bc], a                                     ; $40d4: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40d5: $cf
	dec  b                                           ; $40d6: $05
	ld   a, [de]                                     ; $40d7: $1a
	ld   h, e                                        ; $40d8: $63
	and  c                                           ; $40d9: $a1
	halt                                             ; $40da: $76
	dec  c                                           ; $40db: $0d
	ld   e, b                                        ; $40dc: $58
	inc  bc                                          ; $40dd: $03
	add  b                                           ; $40de: $80
	ld   e, c                                        ; $40df: $59
	ld   e, a                                        ; $40e0: $5f
	ld   l, [hl]                                     ; $40e1: $6e
	sbc  a                                           ; $40e2: $9f
	dec  c                                           ; $40e3: $0d
	dec  b                                           ; $40e4: $05
	jr   z, @+$54                                    ; $40e5: $28 $52

	ld   [hl], l                                     ; $40e7: $75
	inc  b                                           ; $40e8: $04
	rlca                                             ; $40e9: $07
	dec  b                                           ; $40ea: $05
	scf                                              ; $40eb: $37
	ld   d, [hl]                                     ; $40ec: $56
	ld   a, b                                        ; $40ed: $78
	ld   e, l                                        ; $40ee: $5d
	ld   l, a                                        ; $40ef: $6f
	sub  c                                           ; $40f0: $91
	sbc  a                                           ; $40f1: $9f
	dec  c                                           ; $40f2: $0d
	nop                                              ; $40f3: $00
	ld   a, [bc]                                     ; $40f4: $0a
	add  hl, de                                      ; $40f5: $19
	inc  b                                           ; $40f6: $04
	inc  bc                                          ; $40f7: $03
	ld   b, $4c                                      ; $40f8: $06 $4c
	and  b                                           ; $40fa: $a0
	adc  l                                           ; $40fb: $8d
	ld   e, d                                        ; $40fc: $5a
	ld   e, l                                        ; $40fd: $5d
	nop                                              ; $40fe: $00
	nop                                              ; $40ff: $00
	dec  b                                           ; $4100: $05
	ld   e, $a0                                      ; $4101: $1e $a0
	adc  l                                           ; $4103: $8d
	ld   e, d                                        ; $4104: $5a
	ld   e, l                                        ; $4105: $5d
	nop                                              ; $4106: $00
	ld   bc, $b9eb                                   ; $4107: $01 $eb $b9
	xor  e                                           ; $410a: $ab
	inc  b                                           ; $410b: $04
	dec  c                                           ; $410c: $0d
	ld   b, $5a                                      ; $410d: $06 $5a
	and  b                                           ; $410f: $a0
	ld   h, a                                        ; $4110: $67
	sbc  c                                           ; $4111: $99
	nop                                              ; $4112: $00
	ld   [bc], a                                     ; $4113: $02
	rlca                                             ; $4114: $07
	ld   l, e                                        ; $4115: $6b
	nop                                              ; $4116: $00
	ld   [bc], a                                     ; $4117: $02
	inc  bc                                          ; $4118: $03
	ld   bc, $2000                                   ; $4119: $01 $00 $20
	nop                                              ; $411c: $00
	rlca                                             ; $411d: $07
	sbc  e                                           ; $411e: $9b
	nop                                              ; $411f: $00
	ld   [bc], a                                     ; $4120: $02
	inc  bc                                          ; $4121: $03
	ld   bc, $2001                                   ; $4122: $01 $01 $20
	nop                                              ; $4125: $00
	rlca                                             ; $4126: $07
	call c, $0200                                    ; $4127: $dc $00 $02
	inc  bc                                          ; $412a: $03
	ld   bc, $2002                                   ; $412b: $01 $02 $20
	nop                                              ; $412e: $00
	ld   b, $16                                      ; $412f: $06 $16
	ld   bc, $000f                                   ; $4131: $01 $0f $00
	ld   bc, $9601                                   ; $4134: $01 $01 $96
	ld   h, l                                        ; $4137: $65
	ld   a, [$0610]                                  ; $4138: $fa $10 $06
	ld   c, h                                        ; $413b: $4c
	and  b                                           ; $413c: $a0
	adc  l                                           ; $413d: $8d
	ld   e, d                                        ; $413e: $5a
	ld   e, l                                        ; $413f: $5d
	ld   l, h                                        ; $4140: $6c
	ei                                               ; $4141: $fb
	ld   a, [$060d]                                  ; $4142: $fa $0d $06
	ld   c, h                                        ; $4145: $4c
	ld   a, l                                        ; $4146: $7d
	xor  [hl]                                        ; $4147: $ae
	xor  $a5                                         ; $4148: $ee $a5
	ld   a, c                                        ; $414a: $79
	ld   h, l                                        ; $414b: $65
	halt                                             ; $414c: $76
	ld   e, c                                        ; $414d: $59
	ld   a, b                                        ; $414e: $78
	ld   d, d                                        ; $414f: $52
	halt                                             ; $4150: $76
	ld   a, e                                        ; $4151: $7b
	sbc  a                                           ; $4152: $9f
	dec  c                                           ; $4153: $0d
	nop                                              ; $4154: $00
	ld   a, [bc]                                     ; $4155: $0a
	dec  b                                           ; $4156: $05
	ld   b, b                                        ; $4157: $40
	rst  $38                                         ; $4158: $ff
	inc  bc                                          ; $4159: $03
	rst  $38                                         ; $415a: $ff
	ld   bc, $2801                                   ; $415b: $01 $01 $28
	nop                                              ; $415e: $00
	ld   b, $39                                      ; $415f: $06 $39
	ld   bc, $000f                                   ; $4161: $01 $0f $00
	ld   bc, $9601                                   ; $4164: $01 $01 $96
	ld   h, l                                        ; $4167: $65
	ld   a, [$0510]                                  ; $4168: $fa $10 $05
	ld   e, $a0                                      ; $416b: $1e $a0
	adc  l                                           ; $416d: $8d
	ld   e, d                                        ; $416e: $5a
	ld   e, l                                        ; $416f: $5d
	ld   l, h                                        ; $4170: $6c
	ei                                               ; $4171: $fb
	ld   a, [$0dfa]                                  ; $4172: $fa $fa $0d
	rst  $38                                         ; $4175: $ff
	rst  $38                                         ; $4176: $ff
	and  c                                           ; $4177: $a1
	ld   sp, hl                                      ; $4178: $f9
	db   $10                                         ; $4179: $10
	ld   [bc], a                                     ; $417a: $02
	and  l                                           ; $417b: $a5
	ld   e, c                                        ; $417c: $59
	sub  a                                           ; $417d: $97
	inc  bc                                          ; $417e: $03
	ld   l, l                                        ; $417f: $6d
	dec  b                                           ; $4180: $05
	add  hl, de                                      ; $4181: $19
	ld   a, c                                        ; $4182: $79
	ld   [bc], a                                     ; $4183: $02
	ld   a, a                                        ; $4184: $7f
	ld   e, l                                        ; $4185: $5d
	dec  c                                           ; $4186: $0d
	nop                                              ; $4187: $00
	dec  b                                           ; $4188: $05
	ld   b, b                                        ; $4189: $40
	rst  $38                                         ; $418a: $ff
	inc  bc                                          ; $418b: $03
	rst  $38                                         ; $418c: $ff
	ld   bc, $2801                                   ; $418d: $01 $01 $28
	nop                                              ; $4190: $00
	ld   bc, $66a1                                   ; $4191: $01 $a1 $66
	sub  c                                           ; $4194: $91
	ld   a, b                                        ; $4195: $78
	ld   d, d                                        ; $4196: $52
	and  c                                           ; $4197: $a1
	ld   l, [hl]                                     ; $4198: $6e
	sub  [hl]                                        ; $4199: $96
	ld   a, b                                        ; $419a: $78
	rst  $38                                         ; $419b: $ff
	rst  $38                                         ; $419c: $ff
	dec  c                                           ; $419d: $0d
	nop                                              ; $419e: $00
	ld   a, [bc]                                     ; $419f: $0a
	ld   b, $2e                                      ; $41a0: $06 $2e
	nop                                              ; $41a2: $00
	rrca                                             ; $41a3: $0f
	nop                                              ; $41a4: $00
	ld   bc, $9601                                   ; $41a5: $01 $01 $96
	ld   h, l                                        ; $41a8: $65
	ld   a, [$eb10]                                  ; $41a9: $fa $10 $eb
	cp   c                                           ; $41ac: $b9
	xor  e                                           ; $41ad: $ab
	inc  b                                           ; $41ae: $04
	dec  c                                           ; $41af: $0d
	ld   b, $5a                                      ; $41b0: $06 $5a
	ld   h, a                                        ; $41b2: $67
	sbc  c                                           ; $41b3: $99
	ld   l, h                                        ; $41b4: $6c
	ld   a, [$ff0d]                                  ; $41b5: $fa $0d $ff
	rst  $38                                         ; $41b8: $ff
	ld   [hl], h                                     ; $41b9: $74
	sbc  [hl]                                        ; $41ba: $9e
	ld   l, e                                        ; $41bb: $6b
	and  c                                           ; $41bc: $a1
	ld   a, b                                        ; $41bd: $78
	ld   h, c                                        ; $41be: $61
	halt                                             ; $41bf: $76
	ld   h, l                                        ; $41c0: $65
	ld   [hl], h                                     ; $41c1: $74
	sbc  c                                           ; $41c2: $99
	inc  bc                                          ; $41c3: $03
	ld   l, a                                        ; $41c4: $6f
	ld   [bc], a                                     ; $41c5: $02
	xor  c                                           ; $41c6: $a9
	dec  c                                           ; $41c7: $0d
	nop                                              ; $41c8: $00
	dec  b                                           ; $41c9: $05
	ld   b, b                                        ; $41ca: $40
	rst  $38                                         ; $41cb: $ff
	inc  bc                                          ; $41cc: $03
	rst  $38                                         ; $41cd: $ff
	ld   bc, $2801                                   ; $41ce: $01 $01 $28
	nop                                              ; $41d1: $00
	ld   bc, $5278                                   ; $41d2: $01 $78 $52
	sub  [hl]                                        ; $41d5: $96
	sbc  a                                           ; $41d6: $9f
	dec  c                                           ; $41d7: $0d
	nop                                              ; $41d8: $00
	ld   a, [bc]                                     ; $41d9: $0a
	ld   b, $2e                                      ; $41da: $06 $2e
	nop                                              ; $41dc: $00
	rrca                                             ; $41dd: $0f
	nop                                              ; $41de: $00
	ld   bc, $8c01                                   ; $41df: $01 $01 $8c
	ld   l, b                                        ; $41e2: $68
	ld   a, l                                        ; $41e3: $7d
	rst  $38                                         ; $41e4: $ff
	rst  $38                                         ; $41e5: $ff
	dec  c                                           ; $41e6: $0d
	ld   [hl], a                                     ; $41e7: $77
	ld   d, h                                        ; $41e8: $54
	ld   h, l                                        ; $41e9: $65
	sub  [hl]                                        ; $41ea: $96
	ld   d, h                                        ; $41eb: $54
	ld   e, c                                        ; $41ec: $59
	rst  $38                                         ; $41ed: $ff
	rst  $38                                         ; $41ee: $ff
	rst  $38                                         ; $41ef: $ff
	rst  $38                                         ; $41f0: $ff
	dec  c                                           ; $41f1: $0d
	nop                                              ; $41f2: $00
	ld   a, [bc]                                     ; $41f3: $0a
	dec  b                                           ; $41f4: $05
	ld   b, b                                        ; $41f5: $40
	rst  $38                                         ; $41f6: $ff
	inc  bc                                          ; $41f7: $03
	rst  $38                                         ; $41f8: $ff
	ld   bc, $2801                                   ; $41f9: $01 $01 $28
	nop                                              ; $41fc: $00
	ld   b, $2e                                      ; $41fd: $06 $2e
	nop                                              ; $41ff: $00
	add  hl, de                                      ; $4200: $19
	inc  b                                           ; $4201: $04
	inc  bc                                          ; $4202: $03
	inc  b                                           ; $4203: $04
	and  l                                           ; $4204: $a5
	and  b                                           ; $4205: $a0
	inc  b                                           ; $4206: $04
	rlca                                             ; $4207: $07
	sbc  c                                           ; $4208: $99
	nop                                              ; $4209: $00
	nop                                              ; $420a: $00
	inc  b                                           ; $420b: $04
	and  l                                           ; $420c: $a5
	and  b                                           ; $420d: $a0
	ld   a, d                                        ; $420e: $7a
	ld   e, [hl]                                     ; $420f: $5e
	nop                                              ; $4210: $00
	ld   bc, $b1d6                                   ; $4211: $01 $d6 $b1
	and  b                                           ; $4214: $a0
	inc  bc                                          ; $4215: $03
	dec  de                                          ; $4216: $1b
	sbc  c                                           ; $4217: $99
	nop                                              ; $4218: $00
	ld   [bc], a                                     ; $4219: $02
	rlca                                             ; $421a: $07
	ld   [hl], c                                     ; $421b: $71
	ld   bc, $0302                                   ; $421c: $01 $02 $03
	ld   bc, $2000                                   ; $421f: $01 $00 $20
	nop                                              ; $4222: $00
	rlca                                             ; $4223: $07
	sub  l                                           ; $4224: $95
	ld   bc, $0302                                   ; $4225: $01 $02 $03
	ld   bc, $2001                                   ; $4228: $01 $01 $20
	nop                                              ; $422b: $00
	rlca                                             ; $422c: $07
	call $0201                                       ; $422d: $cd $01 $02
	inc  bc                                          ; $4230: $03
	ld   bc, $2002                                   ; $4231: $01 $02 $20
	nop                                              ; $4234: $00
	ld   b, $0f                                      ; $4235: $06 $0f
	ld   [bc], a                                     ; $4237: $02
	rrca                                             ; $4238: $0f
	nop                                              ; $4239: $00
	ld   bc, $0601                                   ; $423a: $01 $01 $06
	ld   c, h                                        ; $423d: $4c
	and  b                                           ; $423e: $a0
	adc  l                                           ; $423f: $8d
	ld   e, d                                        ; $4240: $5a
	ld   d, d                                        ; $4241: $52
	ld   l, l                                        ; $4242: $6d
	sub  a                                           ; $4243: $97
	sbc  [hl]                                        ; $4244: $9e
	inc  b                                           ; $4245: $04
	and  l                                           ; $4246: $a5
	and  b                                           ; $4247: $a0
	inc  b                                           ; $4248: $04
	rlca                                             ; $4249: $07
	ld   [hl], h                                     ; $424a: $74
	halt                                             ; $424b: $76
	rst  $38                                         ; $424c: $ff
	dec  c                                           ; $424d: $0d
	nop                                              ; $424e: $00
	ld   a, [bc]                                     ; $424f: $0a
	dec  b                                           ; $4250: $05
	ld   b, b                                        ; $4251: $40
	rst  $38                                         ; $4252: $ff
	inc  bc                                          ; $4253: $03
	rst  $38                                         ; $4254: $ff
	ld   bc, $2801                                   ; $4255: $01 $01 $28
	nop                                              ; $4258: $00
	ld   b, $32                                      ; $4259: $06 $32
	ld   [bc], a                                     ; $425b: $02
	rrca                                             ; $425c: $0f
	nop                                              ; $425d: $00
	ld   bc, $0601                                   ; $425e: $01 $01 $06
	ld   c, h                                        ; $4261: $4c
	and  b                                           ; $4262: $a0
	adc  l                                           ; $4263: $8d
	ld   e, d                                        ; $4264: $5a
	ld   d, d                                        ; $4265: $52
	ld   l, l                                        ; $4266: $6d
	sub  a                                           ; $4267: $97
	sbc  [hl]                                        ; $4268: $9e
	inc  b                                           ; $4269: $04
	and  l                                           ; $426a: $a5
	and  b                                           ; $426b: $a0
	ld   a, d                                        ; $426c: $7a
	ld   d, d                                        ; $426d: $52
	ld   [hl], l                                     ; $426e: $75
	dec  c                                           ; $426f: $0d
	rst  $38                                         ; $4270: $ff
	rst  $38                                         ; $4271: $ff
	ld   a, d                                        ; $4272: $7a
	ld   d, d                                        ; $4273: $52
	ld   h, [hl]                                     ; $4274: $66
	sub  c                                           ; $4275: $91
	pop  bc                                          ; $4276: $c1
	db   $e3                                         ; $4277: $e3
	ld   [hl], l                                     ; $4278: $75
	ld   h, l                                        ; $4279: $65
	sub  l                                           ; $427a: $95
	sbc  a                                           ; $427b: $9f
	dec  c                                           ; $427c: $0d
	nop                                              ; $427d: $00
	dec  b                                           ; $427e: $05
	ld   b, b                                        ; $427f: $40
	rst  $38                                         ; $4280: $ff
	inc  bc                                          ; $4281: $03
	rst  $38                                         ; $4282: $ff
	ld   bc, $2801                                   ; $4283: $01 $01 $28
	nop                                              ; $4286: $00
	ld   bc, $0704                                   ; $4287: $01 $04 $07
	ld   a, b                                        ; $428a: $78
	ld   e, e                                        ; $428b: $5b
	sub  c                                           ; $428c: $91
	sbc  a                                           ; $428d: $9f
	dec  c                                           ; $428e: $0d
	nop                                              ; $428f: $00
	ld   a, [bc]                                     ; $4290: $0a
	ld   b, $39                                      ; $4291: $06 $39
	ld   bc, $000f                                   ; $4293: $01 $0f $00
	ld   bc, $0601                                   ; $4296: $01 $01 $06
	ld   c, h                                        ; $4299: $4c
	and  b                                           ; $429a: $a0
	adc  l                                           ; $429b: $8d
	ld   e, d                                        ; $429c: $5a
	ld   d, d                                        ; $429d: $52
	ld   l, l                                        ; $429e: $6d
	sub  a                                           ; $429f: $97
	sbc  [hl]                                        ; $42a0: $9e
	sub  $b1                                         ; $42a1: $d6 $b1
	and  b                                           ; $42a3: $a0
	inc  bc                                          ; $42a4: $03
	dec  de                                          ; $42a5: $1b
	ld   [hl], c                                     ; $42a6: $71
	ld   [hl], h                                     ; $42a7: $74
	dec  c                                           ; $42a8: $0d
	rst  $38                                         ; $42a9: $ff
	rst  $38                                         ; $42aa: $ff
	ld   [hl], h                                     ; $42ab: $74
	sbc  [hl]                                        ; $42ac: $9e
	cp   b                                           ; $42ad: $b8
	rst  $28                                         ; $42ae: $ef
	and  a                                           ; $42af: $a7
	ret                                              ; $42b0: $c9


	ld   e, d                                        ; $42b1: $5a
	inc  bc                                          ; $42b2: $03
	ld   c, [hl]                                     ; $42b3: $4e
	inc  bc                                          ; $42b4: $03
	ld   l, e                                        ; $42b5: $6b
	ld   a, c                                        ; $42b6: $79
	dec  c                                           ; $42b7: $0d
	nop                                              ; $42b8: $00
	dec  b                                           ; $42b9: $05
	ld   b, b                                        ; $42ba: $40
	rst  $38                                         ; $42bb: $ff
	inc  bc                                          ; $42bc: $03
	rst  $38                                         ; $42bd: $ff
	ld   bc, $2801                                   ; $42be: $01 $01 $28
	nop                                              ; $42c1: $00
	ld   bc, $b1d6                                   ; $42c2: $01 $d6 $b1
	and  b                                           ; $42c5: $a0
	ld   h, e                                        ; $42c6: $63
	ld   a, [hl]                                     ; $42c7: $7e
	ld   d, d                                        ; $42c8: $52
	ld   l, a                                        ; $42c9: $6f
	sub  c                                           ; $42ca: $91
	pop  bc                                          ; $42cb: $c1
	db   $e3                                         ; $42cc: $e3
	ld   l, [hl]                                     ; $42cd: $6e
	sub  [hl]                                        ; $42ce: $96
	sbc  a                                           ; $42cf: $9f
	dec  c                                           ; $42d0: $0d
	nop                                              ; $42d1: $00
	ld   a, [bc]                                     ; $42d2: $0a
	ld   b, $39                                      ; $42d3: $06 $39
	ld   bc, $000f                                   ; $42d5: $01 $0f $00
	ld   bc, $0301                                   ; $42d8: $01 $01 $03
	ld   l, b                                        ; $42db: $68
	ld   a, c                                        ; $42dc: $79
	rst  $38                                         ; $42dd: $ff
	rst  $38                                         ; $42de: $ff
	dec  c                                           ; $42df: $0d
	ld   [hl], a                                     ; $42e0: $77
	ld   d, h                                        ; $42e1: $54
	ld   h, l                                        ; $42e2: $65
	sub  [hl]                                        ; $42e3: $96
	ld   d, h                                        ; $42e4: $54
	ld   e, c                                        ; $42e5: $59
	rst  $38                                         ; $42e6: $ff
	rst  $38                                         ; $42e7: $ff
	rst  $38                                         ; $42e8: $ff
	rst  $38                                         ; $42e9: $ff
	dec  c                                           ; $42ea: $0d
	nop                                              ; $42eb: $00
	ld   a, [bc]                                     ; $42ec: $0a
	dec  b                                           ; $42ed: $05
	ld   b, b                                        ; $42ee: $40
	rst  $38                                         ; $42ef: $ff
	inc  bc                                          ; $42f0: $03
	rst  $38                                         ; $42f1: $ff
	ld   bc, $2801                                   ; $42f2: $01 $01 $28
	nop                                              ; $42f5: $00
	ld   b, $39                                      ; $42f6: $06 $39
	ld   bc, $0419                                   ; $42f8: $01 $19 $04
	inc  bc                                          ; $42fb: $03
	inc  b                                           ; $42fc: $04
	ld   l, d                                        ; $42fd: $6a
	and  b                                           ; $42fe: $a0
	halt                                             ; $42ff: $76
	halt                                             ; $4300: $76
	ld   a, h                                        ; $4301: $7c
	ld   d, [hl]                                     ; $4302: $56
	sbc  c                                           ; $4303: $99
	nop                                              ; $4304: $00
	nop                                              ; $4305: $00
	ld   e, c                                        ; $4306: $59
	ld   e, d                                        ; $4307: $5a
	adc  l                                           ; $4308: $8d
	ld   a, c                                        ; $4309: $79
	adc  l                                           ; $430a: $8d
	halt                                             ; $430b: $76
	sbc  d                                           ; $430c: $9a
	sbc  c                                           ; $430d: $99
	nop                                              ; $430e: $00
	ld   bc, $6a04                                   ; $430f: $01 $04 $6a
	and  b                                           ; $4312: $a0
	ld   d, b                                        ; $4313: $50
	adc  [hl]                                        ; $4314: $8e
	nop                                              ; $4315: $00
	ld   [bc], a                                     ; $4316: $02
	rlca                                             ; $4317: $07
	ld   l, [hl]                                     ; $4318: $6e
	ld   [bc], a                                     ; $4319: $02
	ld   [bc], a                                     ; $431a: $02
	inc  bc                                          ; $431b: $03
	ld   bc, $2000                                   ; $431c: $01 $00 $20
	nop                                              ; $431f: $00
	rlca                                             ; $4320: $07
	adc  [hl]                                        ; $4321: $8e
	ld   [bc], a                                     ; $4322: $02
	ld   [bc], a                                     ; $4323: $02
	inc  bc                                          ; $4324: $03
	ld   bc, $2001                                   ; $4325: $01 $01 $20
	nop                                              ; $4328: $00
	rlca                                             ; $4329: $07
	ret  nc                                          ; $432a: $d0

	ld   [bc], a                                     ; $432b: $02
	ld   [bc], a                                     ; $432c: $02
	inc  bc                                          ; $432d: $03
	ld   bc, $2002                                   ; $432e: $01 $02 $20
	nop                                              ; $4331: $00
	ld   b, $01                                      ; $4332: $06 $01
	inc  bc                                          ; $4334: $03
	rrca                                             ; $4335: $0f
	nop                                              ; $4336: $00
	ld   bc, $6b01                                   ; $4337: $01 $01 $6b
	ld   h, l                                        ; $433a: $65
	ld   [hl], h                                     ; $433b: $74
	sbc  [hl]                                        ; $433c: $9e
	inc  b                                           ; $433d: $04
	ld   l, d                                        ; $433e: $6a
	and  b                                           ; $433f: $a0
	halt                                             ; $4340: $76
	halt                                             ; $4341: $76
	ld   a, h                                        ; $4342: $7c
	ld   d, [hl]                                     ; $4343: $56
	ld   [hl], h                                     ; $4344: $74
	sbc  a                                           ; $4345: $9f
	dec  c                                           ; $4346: $0d
	nop                                              ; $4347: $00
	ld   a, [bc]                                     ; $4348: $0a
	dec  b                                           ; $4349: $05
	ld   b, b                                        ; $434a: $40
	rst  $38                                         ; $434b: $ff
	inc  bc                                          ; $434c: $03
	rst  $38                                         ; $434d: $ff
	ld   bc, $2801                                   ; $434e: $01 $01 $28
	nop                                              ; $4351: $00
	ld   b, $24                                      ; $4352: $06 $24
	inc  bc                                          ; $4354: $03
	rrca                                             ; $4355: $0f
	nop                                              ; $4356: $00
	ld   bc, $6b01                                   ; $4357: $01 $01 $6b
	ld   h, l                                        ; $435a: $65
	ld   [hl], h                                     ; $435b: $74
	sbc  [hl]                                        ; $435c: $9e
	ld   e, c                                        ; $435d: $59
	ld   e, d                                        ; $435e: $5a
	adc  l                                           ; $435f: $8d
	ld   a, c                                        ; $4360: $79
	adc  l                                           ; $4361: $8d
	halt                                             ; $4362: $76
	sbc  d                                           ; $4363: $9a
	ld   [hl], h                                     ; $4364: $74
	rst  $38                                         ; $4365: $ff
	rst  $38                                         ; $4366: $ff
	dec  c                                           ; $4367: $0d
	and  c                                           ; $4368: $a1
	ld   sp, hl                                      ; $4369: $f9
	db   $10                                         ; $436a: $10
	ld   d, d                                        ; $436b: $52
	ld   e, a                                        ; $436c: $5f
	ld   a, b                                        ; $436d: $78
	ld   d, d                                        ; $436e: $52
	sbc  [hl]                                        ; $436f: $9e
	ld   d, d                                        ; $4370: $52
	ld   e, a                                        ; $4371: $5f
	ld   a, b                                        ; $4372: $78
	ld   d, d                                        ; $4373: $52
	sbc  a                                           ; $4374: $9f
	dec  c                                           ; $4375: $0d
	nop                                              ; $4376: $00
	dec  b                                           ; $4377: $05
	ld   b, b                                        ; $4378: $40
	rst  $38                                         ; $4379: $ff
	inc  bc                                          ; $437a: $03
	rst  $38                                         ; $437b: $ff
	ld   bc, $2801                                   ; $437c: $01 $01 $28
	nop                                              ; $437f: $00
	ld   bc, $5272                                   ; $4380: $01 $72 $52
	inc  bc                                          ; $4383: $03
	sub  h                                           ; $4384: $94
	inc  b                                           ; $4385: $04
	sbc  [hl]                                        ; $4386: $9e
	ld   a, c                                        ; $4387: $79
	adc  l                                           ; $4388: $8d
	halt                                             ; $4389: $76
	sbc  d                                           ; $438a: $9a
	ld   [hl], h                                     ; $438b: $74
	ld   h, l                                        ; $438c: $65
	adc  h                                           ; $438d: $8c
	ld   [hl], c                                     ; $438e: $71
	ld   l, l                                        ; $438f: $6d
	rst  $38                                         ; $4390: $ff
	dec  c                                           ; $4391: $0d
	nop                                              ; $4392: $00
	ld   a, [bc]                                     ; $4393: $0a
	ld   b, $32                                      ; $4394: $06 $32
	ld   [bc], a                                     ; $4396: $02
	rrca                                             ; $4397: $0f
	nop                                              ; $4398: $00
	ld   bc, $6b01                                   ; $4399: $01 $01 $6b
	ld   h, l                                        ; $439c: $65
	ld   [hl], h                                     ; $439d: $74
	sbc  [hl]                                        ; $439e: $9e
	inc  b                                           ; $439f: $04
	ld   l, d                                        ; $43a0: $6a
	and  b                                           ; $43a1: $a0
	ld   d, b                                        ; $43a2: $50
	adc  [hl]                                        ; $43a3: $8e
	sbc  a                                           ; $43a4: $9f
	dec  c                                           ; $43a5: $0d
	rst  $38                                         ; $43a6: $ff
	rst  $38                                         ; $43a7: $ff
	rst  $38                                         ; $43a8: $ff
	rst  $38                                         ; $43a9: $ff
	and  c                                           ; $43aa: $a1
	ld   sp, hl                                      ; $43ab: $f9
	dec  c                                           ; $43ac: $0d
	nop                                              ; $43ad: $00
	dec  b                                           ; $43ae: $05
	ld   b, b                                        ; $43af: $40
	rst  $38                                         ; $43b0: $ff
	inc  bc                                          ; $43b1: $03
	rst  $38                                         ; $43b2: $ff
	ld   bc, $2801                                   ; $43b3: $01 $01 $28
	nop                                              ; $43b6: $00
	ld   bc, $a150                                   ; $43b7: $01 $50 $a1
	ld   h, [hl]                                     ; $43ba: $66
	sub  c                                           ; $43bb: $91
	pop  bc                                          ; $43bc: $c1
	db   $e3                                         ; $43bd: $e3
	ld   [hl], l                                     ; $43be: $75
	ld   h, l                                        ; $43bf: $65
	sub  l                                           ; $43c0: $95
	ld   sp, hl                                      ; $43c1: $f9
	dec  c                                           ; $43c2: $0d
	nop                                              ; $43c3: $00
	ld   a, [bc]                                     ; $43c4: $0a
	ld   b, $32                                      ; $43c5: $06 $32
	ld   [bc], a                                     ; $43c7: $02
	rrca                                             ; $43c8: $0f
	nop                                              ; $43c9: $00
	ld   bc, $6b01                                   ; $43ca: $01 $01 $6b
	ld   h, l                                        ; $43cd: $65
	ld   [hl], h                                     ; $43ce: $74
	rst  $38                                         ; $43cf: $ff
	rst  $38                                         ; $43d0: $ff
	dec  c                                           ; $43d1: $0d
	ld   [hl], a                                     ; $43d2: $77
	ld   d, h                                        ; $43d3: $54
	ld   h, l                                        ; $43d4: $65
	sub  [hl]                                        ; $43d5: $96
	ld   d, h                                        ; $43d6: $54
	ld   e, c                                        ; $43d7: $59
	rst  $38                                         ; $43d8: $ff
	rst  $38                                         ; $43d9: $ff
	rst  $38                                         ; $43da: $ff
	rst  $38                                         ; $43db: $ff
	dec  c                                           ; $43dc: $0d
	nop                                              ; $43dd: $00
	ld   a, [bc]                                     ; $43de: $0a
	dec  b                                           ; $43df: $05
	ld   b, b                                        ; $43e0: $40
	rst  $38                                         ; $43e1: $ff
	inc  bc                                          ; $43e2: $03
	rst  $38                                         ; $43e3: $ff
	ld   bc, $2801                                   ; $43e4: $01 $01 $28
	nop                                              ; $43e7: $00
	ld   b, $32                                      ; $43e8: $06 $32
	ld   [bc], a                                     ; $43ea: $02
	add  hl, de                                      ; $43eb: $19
	inc  b                                           ; $43ec: $04
	inc  bc                                          ; $43ed: $03
	ret  nc                                          ; $43ee: $d0

	push af                                          ; $43ef: $f5
	xor  h                                           ; $43f0: $ac
	jp   nz, $03a0                                   ; $43f1: $c2 $a0 $03

	and  b                                           ; $43f4: $a0
	ld   [hl], d                                     ; $43f5: $72
	nop                                              ; $43f6: $00
	nop                                              ; $43f7: $00
	ret                                              ; $43f8: $c9


	push af                                          ; $43f9: $f5
	xor  h                                           ; $43fa: $ac
	jp   nz, $03a0                                   ; $43fb: $c2 $a0 $03

	and  b                                           ; $43fe: $a0
	ld   [hl], d                                     ; $43ff: $72
	nop                                              ; $4400: $00
	ld   bc, $f5c9                                   ; $4401: $01 $c9 $f5
	xor  h                                           ; $4404: $ac
	push bc                                          ; $4405: $c5
	and  b                                           ; $4406: $a0
	inc  bc                                          ; $4407: $03
	ld   l, d                                        ; $4408: $6a
	add  a                                           ; $4409: $87
	sbc  c                                           ; $440a: $99
	nop                                              ; $440b: $00
	ld   [bc], a                                     ; $440c: $02
	rlca                                             ; $440d: $07
	ld   h, h                                        ; $440e: $64
	inc  bc                                          ; $440f: $03
	ld   [bc], a                                     ; $4410: $02
	inc  bc                                          ; $4411: $03
	ld   bc, $2000                                   ; $4412: $01 $00 $20
	nop                                              ; $4415: $00
	rlca                                             ; $4416: $07
	adc  h                                           ; $4417: $8c
	inc  bc                                          ; $4418: $03
	ld   [bc], a                                     ; $4419: $02
	inc  bc                                          ; $441a: $03
	ld   bc, $2001                                   ; $441b: $01 $01 $20
	nop                                              ; $441e: $00
	rlca                                             ; $441f: $07
	push bc                                          ; $4420: $c5
	inc  bc                                          ; $4421: $03
	ld   [bc], a                                     ; $4422: $02
	inc  bc                                          ; $4423: $03
	ld   bc, $2002                                   ; $4424: $01 $02 $20
	nop                                              ; $4427: $00
	ld   b, $1a                                      ; $4428: $06 $1a
	inc  b                                           ; $442a: $04
	rrca                                             ; $442b: $0f
	nop                                              ; $442c: $00
	ld   bc, $d001                                   ; $442d: $01 $01 $d0
	push af                                          ; $4430: $f5
	xor  h                                           ; $4431: $ac
	jp   nz, $ff7d                                   ; $4432: $c2 $7d $ff

	rst  $38                                         ; $4435: $ff
	sub  [hl]                                        ; $4436: $96
	ld   h, l                                        ; $4437: $65
	ld   a, [$6f0d]                                  ; $4438: $fa $0d $6f
	sub  c                                           ; $443b: $91
	and  c                                           ; $443c: $a1
	halt                                             ; $443d: $76
	inc  bc                                          ; $443e: $03
	and  b                                           ; $443f: $a0
	ld   [hl], c                                     ; $4440: $71
	ld   l, l                                        ; $4441: $6d
	ld   l, h                                        ; $4442: $6c
	sbc  a                                           ; $4443: $9f
	dec  c                                           ; $4444: $0d
	nop                                              ; $4445: $00
	ld   a, [bc]                                     ; $4446: $0a
	dec  b                                           ; $4447: $05
	ld   b, b                                        ; $4448: $40
	rst  $38                                         ; $4449: $ff
	inc  bc                                          ; $444a: $03
	rst  $38                                         ; $444b: $ff
	ld   bc, $2801                                   ; $444c: $01 $01 $28
	nop                                              ; $444f: $00
	ld   b, $39                                      ; $4450: $06 $39
	inc  b                                           ; $4452: $04
	rrca                                             ; $4453: $0f
	nop                                              ; $4454: $00
	ld   bc, $c901                                   ; $4455: $01 $01 $c9
	push af                                          ; $4458: $f5
	xor  h                                           ; $4459: $ac
	jp   nz, Jump_063_6fa0                           ; $445a: $c2 $a0 $6f

	sub  c                                           ; $445d: $91
	and  c                                           ; $445e: $a1
	halt                                             ; $445f: $76
	inc  bc                                          ; $4460: $03
	and  b                                           ; $4461: $a0
	ld   [hl], c                                     ; $4462: $71
	ld   [hl], h                                     ; $4463: $74
	dec  c                                           ; $4464: $0d
	rst  $38                                         ; $4465: $ff
	rst  $38                                         ; $4466: $ff
	ld   [hl], a                                     ; $4467: $77
	ld   h, c                                        ; $4468: $61
	add  [hl]                                        ; $4469: $86
	ld   [bc], a                                     ; $446a: $02
	ld   a, a                                        ; $446b: $7f
	ld   e, l                                        ; $446c: $5d
	and  c                                           ; $446d: $a1
	ld   l, [hl]                                     ; $446e: $6e
	inc  b                                           ; $446f: $04
	ld   l, l                                        ; $4470: $6d
	ld   a, l                                        ; $4471: $7d
	ld   sp, hl                                      ; $4472: $f9
	dec  c                                           ; $4473: $0d
	nop                                              ; $4474: $00
	dec  b                                           ; $4475: $05
	ld   b, b                                        ; $4476: $40
	rst  $38                                         ; $4477: $ff
	inc  bc                                          ; $4478: $03
	rst  $38                                         ; $4479: $ff
	ld   bc, $2801                                   ; $447a: $01 $01 $28
	nop                                              ; $447d: $00
	ld   bc, $5a6f                                   ; $447e: $01 $6f $5a
	ld   d, h                                        ; $4481: $54
	ld   [hl], l                                     ; $4482: $75
	ld   h, l                                        ; $4483: $65
	sub  l                                           ; $4484: $95
	sbc  a                                           ; $4485: $9f
	dec  c                                           ; $4486: $0d
	nop                                              ; $4487: $00
	ld   a, [bc]                                     ; $4488: $0a
	ld   b, $24                                      ; $4489: $06 $24
	inc  bc                                          ; $448b: $03
	rrca                                             ; $448c: $0f
	nop                                              ; $448d: $00
	ld   bc, $c901                                   ; $448e: $01 $01 $c9
	push af                                          ; $4491: $f5
	xor  h                                           ; $4492: $ac
	push bc                                          ; $4493: $c5
	and  b                                           ; $4494: $a0
	inc  bc                                          ; $4495: $03
	ld   l, d                                        ; $4496: $6a
	add  a                                           ; $4497: $87
	ld   [hl], h                                     ; $4498: $74
	sbc  [hl]                                        ; $4499: $9e
	inc  bc                                          ; $449a: $03
	db   $dd                                         ; $449b: $dd
	ld   a, c                                        ; $449c: $79
	inc  bc                                          ; $449d: $03
	ld   c, [hl]                                     ; $449e: $4e
	ld   [hl], d                                     ; $449f: $72
	sbc  a                                           ; $44a0: $9f
	dec  c                                           ; $44a1: $0d
	ld   a, b                                        ; $44a2: $78
	db   $fc                                         ; $44a3: $fc
	and  c                                           ; $44a4: $a1
	ld   l, a                                        ; $44a5: $6f
	sub  c                                           ; $44a6: $91
	ld   [hl], c                                     ; $44a7: $71
	ld   [hl], h                                     ; $44a8: $74
	rst  $38                                         ; $44a9: $ff
	rst  $38                                         ; $44aa: $ff
	dec  c                                           ; $44ab: $0d
	nop                                              ; $44ac: $00
	ld   a, [bc]                                     ; $44ad: $0a
	ld   bc, $a16b                                   ; $44ae: $01 $6b $a1
	ld   a, b                                        ; $44b1: $78
	ld   h, c                                        ; $44b2: $61
	halt                                             ; $44b3: $76
	ld   [bc], a                                     ; $44b4: $02
	sbc  l                                           ; $44b5: $9d
	ld   [hl], c                                     ; $44b6: $71
	ld   [hl], h                                     ; $44b7: $74
	sbc  c                                           ; $44b8: $99
	inc  b                                           ; $44b9: $04
	ld   a, d                                        ; $44ba: $7a
	ld   [bc], a                                     ; $44bb: $02
	ld   a, e                                        ; $44bc: $7b
	ld   h, [hl]                                     ; $44bd: $66
	sub  c                                           ; $44be: $91
	dec  c                                           ; $44bf: $0d
	ld   a, b                                        ; $44c0: $78
	ld   d, d                                        ; $44c1: $52
	sub  [hl]                                        ; $44c2: $96
	sbc  a                                           ; $44c3: $9f
	dec  c                                           ; $44c4: $0d
	nop                                              ; $44c5: $00
	dec  b                                           ; $44c6: $05
	ld   b, b                                        ; $44c7: $40
	rst  $38                                         ; $44c8: $ff
	inc  bc                                          ; $44c9: $03
	rst  $38                                         ; $44ca: $ff
	ld   bc, $2801                                   ; $44cb: $01 $01 $28
	nop                                              ; $44ce: $00
	ld   bc, $7003                                   ; $44cf: $01 $03 $70
	ld   e, l                                        ; $44d2: $5d
	ld   h, l                                        ; $44d3: $65
	ld   l, l                                        ; $44d4: $6d
	ld   e, l                                        ; $44d5: $5d
	ld   h, l                                        ; $44d6: $65
	ld   a, b                                        ; $44d7: $78
	ld   e, e                                        ; $44d8: $5b
	sub  c                                           ; $44d9: $91
	sbc  a                                           ; $44da: $9f
	dec  c                                           ; $44db: $0d
	nop                                              ; $44dc: $00
	ld   a, [bc]                                     ; $44dd: $0a
	ld   b, $24                                      ; $44de: $06 $24
	inc  bc                                          ; $44e0: $03
	rrca                                             ; $44e1: $0f
	nop                                              ; $44e2: $00
	ld   bc, $ff01                                   ; $44e3: $01 $01 $ff
	rst  $38                                         ; $44e6: $ff
	ld   [hl], a                                     ; $44e7: $77
	ld   d, h                                        ; $44e8: $54
	ld   h, l                                        ; $44e9: $65
	sub  [hl]                                        ; $44ea: $96
	ld   d, h                                        ; $44eb: $54
	ld   e, c                                        ; $44ec: $59
	rst  $38                                         ; $44ed: $ff
	rst  $38                                         ; $44ee: $ff
	rst  $38                                         ; $44ef: $ff
	rst  $38                                         ; $44f0: $ff
	dec  c                                           ; $44f1: $0d
	nop                                              ; $44f2: $00
	ld   a, [bc]                                     ; $44f3: $0a
	dec  b                                           ; $44f4: $05
	ld   b, b                                        ; $44f5: $40
	rst  $38                                         ; $44f6: $ff
	inc  bc                                          ; $44f7: $03
	rst  $38                                         ; $44f8: $ff
	ld   bc, $2801                                   ; $44f9: $01 $01 $28
	nop                                              ; $44fc: $00
	ld   b, $24                                      ; $44fd: $06 $24
	inc  bc                                          ; $44ff: $03
	add  hl, de                                      ; $4500: $19
	inc  b                                           ; $4501: $04
	inc  bc                                          ; $4502: $03
	ld   h, l                                        ; $4503: $65
	and  c                                           ; $4504: $a1
	ld   h, c                                        ; $4505: $61
	ld   e, e                                        ; $4506: $5b
	sub  e                                           ; $4507: $93
	ld   d, h                                        ; $4508: $54
	ld   h, a                                        ; $4509: $67
	sbc  c                                           ; $450a: $99
	nop                                              ; $450b: $00
	nop                                              ; $450c: $00
	ld   h, [hl]                                     ; $450d: $66
	and  c                                           ; $450e: $a1
	ld   h, c                                        ; $450f: $61
	ld   d, h                                        ; $4510: $54
	ld   h, c                                        ; $4511: $61
	ld   e, e                                        ; $4512: $5b
	sub  e                                           ; $4513: $93
	ld   d, h                                        ; $4514: $54
	and  b                                           ; $4515: $a0
	ld   h, a                                        ; $4516: $67
	sbc  c                                           ; $4517: $99
	nop                                              ; $4518: $00
	ld   bc, $9756                                   ; $4519: $01 $56 $97
	ld   h, c                                        ; $451c: $61
	ld   e, e                                        ; $451d: $5b
	sub  e                                           ; $451e: $93
	ld   d, h                                        ; $451f: $54
	and  b                                           ; $4520: $a0
	ld   h, a                                        ; $4521: $67
	sbc  c                                           ; $4522: $99
	nop                                              ; $4523: $00
	ld   [bc], a                                     ; $4524: $02
	rlca                                             ; $4525: $07
	ld   a, h                                        ; $4526: $7c
	inc  b                                           ; $4527: $04
	ld   [bc], a                                     ; $4528: $02
	inc  bc                                          ; $4529: $03
	ld   bc, $2000                                   ; $452a: $01 $00 $20
	nop                                              ; $452d: $00
	rlca                                             ; $452e: $07
	xor  d                                           ; $452f: $aa
	inc  b                                           ; $4530: $04
	ld   [bc], a                                     ; $4531: $02
	inc  bc                                          ; $4532: $03
	ld   bc, $2001                                   ; $4533: $01 $01 $20
	nop                                              ; $4536: $00
	rlca                                             ; $4537: $07
	ld   [$0204], a                                  ; $4538: $ea $04 $02
	inc  bc                                          ; $453b: $03
	ld   bc, $2002                                   ; $453c: $01 $02 $20
	nop                                              ; $453f: $00
	ld   b, $49                                      ; $4540: $06 $49
	dec  b                                           ; $4542: $05
	rrca                                             ; $4543: $0f
	nop                                              ; $4544: $00
	ld   bc, $0301                                   ; $4545: $01 $01 $03
	ld   l, c                                        ; $4548: $69
	ld   [bc], a                                     ; $4549: $02
	xor  d                                           ; $454a: $aa
	ld   a, c                                        ; $454b: $79
	ld   h, l                                        ; $454c: $65
	and  c                                           ; $454d: $a1
	ld   h, c                                        ; $454e: $61
	ld   e, e                                        ; $454f: $5b
	sub  e                                           ; $4550: $93
	ld   d, h                                        ; $4551: $54
	and  b                                           ; $4552: $a0
	ld   h, l                                        ; $4553: $65
	ld   [hl], h                                     ; $4554: $74
	rst  $38                                         ; $4555: $ff
	rst  $38                                         ; $4556: $ff
	dec  c                                           ; $4557: $0d
	sub  [hl]                                        ; $4558: $96
	ld   h, l                                        ; $4559: $65
	ld   a, [$ab10]                                  ; $455a: $fa $10 $ab
	call nz, $fbb2                                   ; $455d: $c4 $b2 $fb
	ld   l, [hl]                                     ; $4560: $6e
	ld   a, [$000d]                                  ; $4561: $fa $0d $00
	ld   a, [bc]                                     ; $4564: $0a
	dec  b                                           ; $4565: $05
	ld   b, b                                        ; $4566: $40
	rst  $38                                         ; $4567: $ff
	inc  bc                                          ; $4568: $03
	rst  $38                                         ; $4569: $ff
	ld   bc, $2801                                   ; $456a: $01 $01 $28
	nop                                              ; $456d: $00
	ld   b, $71                                      ; $456e: $06 $71
	dec  b                                           ; $4570: $05
	rrca                                             ; $4571: $0f
	nop                                              ; $4572: $00
	ld   bc, $0301                                   ; $4573: $01 $01 $03
	ld   l, c                                        ; $4576: $69
	ld   [bc], a                                     ; $4577: $02
	xor  d                                           ; $4578: $aa
	ld   a, c                                        ; $4579: $79
	sbc  [hl]                                        ; $457a: $9e
	ld   h, [hl]                                     ; $457b: $66
	and  c                                           ; $457c: $a1
	ld   h, c                                        ; $457d: $61
	ld   d, h                                        ; $457e: $54
	ld   h, c                                        ; $457f: $61
	ld   e, e                                        ; $4580: $5b
	sub  e                                           ; $4581: $93
	ld   d, h                                        ; $4582: $54
	and  b                                           ; $4583: $a0
	dec  c                                           ; $4584: $0d
	ld   h, l                                        ; $4585: $65
	ld   [hl], h                                     ; $4586: $74
	rst  $38                                         ; $4587: $ff
	rst  $38                                         ; $4588: $ff
	and  c                                           ; $4589: $a1
	ld   sp, hl                                      ; $458a: $f9
	db   $10                                         ; $458b: $10
	ld   a, b                                        ; $458c: $78
	and  c                                           ; $458d: $a1
	ld   [hl], l                                     ; $458e: $75
	ld   l, e                                        ; $458f: $6b
	and  c                                           ; $4590: $a1
	ld   a, b                                        ; $4591: $78
	ld   [bc], a                                     ; $4592: $02
	jp   $000d                                       ; $4593: $c3 $0d $00


	dec  b                                           ; $4596: $05
	ld   b, b                                        ; $4597: $40
	rst  $38                                         ; $4598: $ff
	inc  bc                                          ; $4599: $03
	rst  $38                                         ; $459a: $ff
	ld   bc, $2801                                   ; $459b: $01 $01 $28
	nop                                              ; $459e: $00
	ld   bc, $7865                                   ; $459f: $01 $65 $78
	ld   e, e                                        ; $45a2: $5b
	sub  c                                           ; $45a3: $91
	ld   a, b                                        ; $45a4: $78
	sub  a                                           ; $45a5: $97
	ld   a, b                                        ; $45a6: $78
	ld   d, d                                        ; $45a7: $52
	and  c                                           ; $45a8: $a1
	ld   l, [hl]                                     ; $45a9: $6e
	ld   sp, hl                                      ; $45aa: $f9
	dec  c                                           ; $45ab: $0d
	nop                                              ; $45ac: $00
	ld   a, [bc]                                     ; $45ad: $0a
	ld   b, $39                                      ; $45ae: $06 $39
	inc  b                                           ; $45b0: $04
	rrca                                             ; $45b1: $0f
	nop                                              ; $45b2: $00
	ld   bc, $9601                                   ; $45b3: $01 $01 $96
	ld   h, l                                        ; $45b6: $65
	sbc  [hl]                                        ; $45b7: $9e
	inc  bc                                          ; $45b8: $03
	ld   l, c                                        ; $45b9: $69
	ld   [bc], a                                     ; $45ba: $02
	xor  d                                           ; $45bb: $aa
	ld   a, c                                        ; $45bc: $79
	ld   d, [hl]                                     ; $45bd: $56
	sub  a                                           ; $45be: $97
	ld   h, c                                        ; $45bf: $61
	ld   e, e                                        ; $45c0: $5b
	sub  e                                           ; $45c1: $93
	ld   d, h                                        ; $45c2: $54
	and  b                                           ; $45c3: $a0
	dec  c                                           ; $45c4: $0d
	ld   h, l                                        ; $45c5: $65
	ld   [hl], h                                     ; $45c6: $74
	rst  $38                                         ; $45c7: $ff
	rst  $38                                         ; $45c8: $ff
	and  c                                           ; $45c9: $a1
	ld   sp, hl                                      ; $45ca: $f9
	db   $10                                         ; $45cb: $10
	inc  b                                           ; $45cc: $04
	ld   l, l                                        ; $45cd: $6d
	ld   a, c                                        ; $45ce: $79
	ld   d, [hl]                                     ; $45cf: $56
	sub  a                                           ; $45d0: $97
	ld   a, b                                        ; $45d1: $78
	and  c                                           ; $45d2: $a1
	ld   [hl], h                                     ; $45d3: $74
	dec  c                                           ; $45d4: $0d
	ld   a, b                                        ; $45d5: $78
	ld   d, d                                        ; $45d6: $52
	sub  [hl]                                        ; $45d7: $96
	ld   a, b                                        ; $45d8: $78
	rst  $38                                         ; $45d9: $ff
	rst  $38                                         ; $45da: $ff
	dec  c                                           ; $45db: $0d
	nop                                              ; $45dc: $00
	ld   a, [bc]                                     ; $45dd: $0a
	ld   bc, $fc78                                   ; $45de: $01 $78 $fc
	and  c                                           ; $45e1: $a1
	ld   [hl], h                                     ; $45e2: $74
	ld   [bc], a                                     ; $45e3: $02
	sbc  l                                           ; $45e4: $9d
	ld   [hl], c                                     ; $45e5: $71
	ld   [hl], h                                     ; $45e6: $74
	sbc  c                                           ; $45e7: $99
	inc  b                                           ; $45e8: $04
	ld   a, d                                        ; $45e9: $7a
	ld   [bc], a                                     ; $45ea: $02
	ld   a, e                                        ; $45eb: $7b
	ld   h, [hl]                                     ; $45ec: $66
	sub  c                                           ; $45ed: $91
	dec  c                                           ; $45ee: $0d
	ld   a, b                                        ; $45ef: $78
	ld   d, d                                        ; $45f0: $52
	ld   l, h                                        ; $45f1: $6c
	sbc  a                                           ; $45f2: $9f
	dec  c                                           ; $45f3: $0d
	nop                                              ; $45f4: $00
	dec  b                                           ; $45f5: $05
	ld   b, b                                        ; $45f6: $40
	rst  $38                                         ; $45f7: $ff
	inc  bc                                          ; $45f8: $03
	rst  $38                                         ; $45f9: $ff
	ld   bc, $2801                                   ; $45fa: $01 $01 $28
	nop                                              ; $45fd: $00
	ld   bc, $2805                                   ; $45fe: $01 $05 $28
	ld   e, d                                        ; $4601: $5a
	ld   a, b                                        ; $4602: $78
	ld   e, e                                        ; $4603: $5b
	sub  c                                           ; $4604: $91
	ld   e, b                                        ; $4605: $58
	ld   e, l                                        ; $4606: $5d
	sbc  d                                           ; $4607: $9a
	sbc  c                                           ; $4608: $99
	ld   a, [$000d]                                  ; $4609: $fa $0d $00
	ld   a, [bc]                                     ; $460c: $0a
	ld   b, $39                                      ; $460d: $06 $39
	inc  b                                           ; $460f: $04
	rrca                                             ; $4610: $0f
	nop                                              ; $4611: $00
	ld   bc, $0301                                   ; $4612: $01 $01 $03
	dec  c                                           ; $4615: $0d
	inc  bc                                          ; $4616: $03
	ld   h, l                                        ; $4617: $65
	ld   h, b                                        ; $4618: $60
	ld   a, c                                        ; $4619: $79
	rst  $38                                         ; $461a: $ff
	rst  $38                                         ; $461b: $ff
	dec  c                                           ; $461c: $0d
	rst  $38                                         ; $461d: $ff
	rst  $38                                         ; $461e: $ff
	rst  $38                                         ; $461f: $ff
	rst  $38                                         ; $4620: $ff
	ld   [hl], a                                     ; $4621: $77
	ld   d, h                                        ; $4622: $54
	ld   h, l                                        ; $4623: $65
	sub  [hl]                                        ; $4624: $96
	ld   d, h                                        ; $4625: $54
	ld   e, c                                        ; $4626: $59
	rst  $38                                         ; $4627: $ff
	rst  $38                                         ; $4628: $ff
	dec  c                                           ; $4629: $0d
	nop                                              ; $462a: $00
	ld   a, [bc]                                     ; $462b: $0a
	dec  b                                           ; $462c: $05
	ld   b, b                                        ; $462d: $40
	rst  $38                                         ; $462e: $ff
	inc  bc                                          ; $462f: $03
	rst  $38                                         ; $4630: $ff
	ld   bc, $2801                                   ; $4631: $01 $01 $28
	nop                                              ; $4634: $00
	ld   b, $39                                      ; $4635: $06 $39
	inc  b                                           ; $4637: $04
	rlca                                             ; $4638: $07
	adc  h                                           ; $4639: $8c
	dec  b                                           ; $463a: $05
	inc  bc                                          ; $463b: $03
	rst  $38                                         ; $463c: $ff
	ld   bc, $2005                                   ; $463d: $01 $05 $20
	nop                                              ; $4640: $00
	rlca                                             ; $4641: $07
	rlc  l                                           ; $4642: $cb $05
	inc  bc                                          ; $4644: $03
	rst  $38                                         ; $4645: $ff
	ld   bc, $2006                                   ; $4646: $01 $06 $20
	nop                                              ; $4649: $00
	rlca                                             ; $464a: $07
	di                                               ; $464b: $f3
	dec  b                                           ; $464c: $05
	inc  bc                                          ; $464d: $03
	rst  $38                                         ; $464e: $ff
	ld   bc, $2507                                   ; $464f: $01 $07 $25
	nop                                              ; $4652: $00
	inc  hl                                          ; $4653: $23
	inc  b                                           ; $4654: $04
	inc  e                                           ; $4655: $1c
	dec  b                                           ; $4656: $05
	ld   bc, $1d01                                   ; $4657: $01 $01 $1d
	ld   b, b                                        ; $465a: $40
	dec  d                                           ; $465b: $15
	inc  bc                                          ; $465c: $03
	dec  d                                           ; $465d: $15
	ld   bc, $2803                                   ; $465e: $01 $03 $28
	nop                                              ; $4661: $00
	ld   bc, $7d58                                   ; $4662: $01 $58 $7d
	sub  [hl]                                        ; $4665: $96
	ld   d, h                                        ; $4666: $54
	sbc  a                                           ; $4667: $9f
	ld   [$7d00], sp                                 ; $4668: $08 $00 $7d
	and  c                                           ; $466b: $a1
	sbc  a                                           ; $466c: $9f
	dec  c                                           ; $466d: $0d
	inc  bc                                          ; $466e: $03
	ld   l, a                                        ; $466f: $6f
	ld   [bc], a                                     ; $4670: $02
	xor  c                                           ; $4671: $a9
	push de                                          ; $4672: $d5
	call nz, $ecc0                                   ; $4673: $c4 $c0 $ec
	sub  d                                           ; $4676: $92
	sbc  a                                           ; $4677: $9f
	dec  c                                           ; $4678: $0d
	nop                                              ; $4679: $00
	ld   a, [bc]                                     ; $467a: $0a
	ld   bc, $7889                                   ; $467b: $01 $89 $78
	sbc  [hl]                                        ; $467e: $9e
	ld   [bc], a                                     ; $467f: $02
	ld   a, a                                        ; $4680: $7f
	ld   h, c                                        ; $4681: $61
	ld   e, c                                        ; $4682: $59
	sbc  a                                           ; $4683: $9f
	dec  c                                           ; $4684: $0d
	nop                                              ; $4685: $00
	ld   a, [bc]                                     ; $4686: $0a
	dec  c                                           ; $4687: $0d
	nop                                              ; $4688: $00
	nop                                              ; $4689: $00
	rrca                                             ; $468a: $0f
	nop                                              ; $468b: $00
	ld   bc, $020c                                   ; $468c: $01 $0c $02
	ld   b, $44                                      ; $468f: $06 $44
	ld   b, $23                                      ; $4691: $06 $23
	inc  b                                           ; $4693: $04
	inc  e                                           ; $4694: $1c
	dec  b                                           ; $4695: $05
	ld   bc, $0101                                   ; $4696: $01 $01 $01
	ld   e, b                                        ; $4699: $58
	ld   a, l                                        ; $469a: $7d
	sub  [hl]                                        ; $469b: $96
	ld   d, h                                        ; $469c: $54
	sbc  a                                           ; $469d: $9f
	ld   [$7d00], sp                                 ; $469e: $08 $00 $7d
	and  c                                           ; $46a1: $a1
	sbc  a                                           ; $46a2: $9f
	dec  c                                           ; $46a3: $0d
	adc  c                                           ; $46a4: $89
	ld   a, b                                        ; $46a5: $78
	sbc  [hl]                                        ; $46a6: $9e
	ld   [bc], a                                     ; $46a7: $02
	ld   a, a                                        ; $46a8: $7f
	ld   h, c                                        ; $46a9: $61
	ld   e, c                                        ; $46aa: $59
	sbc  a                                           ; $46ab: $9f
	dec  c                                           ; $46ac: $0d
	nop                                              ; $46ad: $00
	ld   a, [bc]                                     ; $46ae: $0a
	dec  c                                           ; $46af: $0d
	nop                                              ; $46b0: $00
	nop                                              ; $46b1: $00
	rrca                                             ; $46b2: $0f
	nop                                              ; $46b3: $00
	ld   bc, $020c                                   ; $46b4: $01 $0c $02
	ld   b, $44                                      ; $46b7: $06 $44
	ld   b, $23                                      ; $46b9: $06 $23
	inc  b                                           ; $46bb: $04
	inc  e                                           ; $46bc: $1c
	dec  b                                           ; $46bd: $05
	rlca                                             ; $46be: $07
	rlca                                             ; $46bf: $07
	dec  e                                           ; $46c0: $1d
	ld   b, b                                        ; $46c1: $40
	dec  d                                           ; $46c2: $15
	inc  bc                                          ; $46c3: $03
	dec  d                                           ; $46c4: $15
	ld   bc, $2901                                   ; $46c5: $01 $01 $29
	nop                                              ; $46c8: $00
	ld   bc, $7d58                                   ; $46c9: $01 $58 $7d
	sub  [hl]                                        ; $46cc: $96
	ld   d, h                                        ; $46cd: $54
	sbc  a                                           ; $46ce: $9f
	ld   [$7d00], sp                                 ; $46cf: $08 $00 $7d
	and  c                                           ; $46d2: $a1
	sbc  a                                           ; $46d3: $9f
	dec  c                                           ; $46d4: $0d
	ld   e, b                                        ; $46d5: $58
	ld   l, e                                        ; $46d6: $6b
	ld   e, c                                        ; $46d7: $59
	ld   [hl], c                                     ; $46d8: $71
	ld   l, l                                        ; $46d9: $6d
	sub  d                                           ; $46da: $92
	and  c                                           ; $46db: $a1
	ld   e, c                                        ; $46dc: $59
	sbc  a                                           ; $46dd: $9f
	dec  c                                           ; $46de: $0d
	ld   d, d                                        ; $46df: $52
	ld   [hl], c                                     ; $46e0: $71
	ld   l, l                                        ; $46e1: $6d
	ld   d, d                                        ; $46e2: $52
	inc  b                                           ; $46e3: $04
	ld   c, c                                        ; $46e4: $49
	ld   h, l                                        ; $46e5: $65
	ld   [hl], h                                     ; $46e6: $74
	ld   l, l                                        ; $46e7: $6d
	and  c                                           ; $46e8: $a1
	ld   sp, hl                                      ; $46e9: $f9
	dec  c                                           ; $46ea: $0d
	nop                                              ; $46eb: $00
	ld   a, [bc]                                     ; $46ec: $0a
	inc  e                                           ; $46ed: $1c
	dec  b                                           ; $46ee: $05
	nop                                              ; $46ef: $00
	nop                                              ; $46f0: $00
	ld   bc, $508c                                   ; $46f1: $01 $8c $50
	ld   d, [hl]                                     ; $46f4: $56
	ld   d, [hl]                                     ; $46f5: $56
	sbc  l                                           ; $46f6: $9d
	sbc  a                                           ; $46f7: $9f
	ld   [bc], a                                     ; $46f8: $02
	ld   a, a                                        ; $46f9: $7f
	ld   h, c                                        ; $46fa: $61
	ld   e, c                                        ; $46fb: $59
	sbc  a                                           ; $46fc: $9f
	dec  c                                           ; $46fd: $0d
	nop                                              ; $46fe: $00
	ld   a, [bc]                                     ; $46ff: $0a
	dec  c                                           ; $4700: $0d
	nop                                              ; $4701: $00
	nop                                              ; $4702: $00
	rrca                                             ; $4703: $0f
	nop                                              ; $4704: $00
	ld   bc, $020c                                   ; $4705: $01 $0c $02
	ld   b, $44                                      ; $4708: $06 $44
	ld   b, $0e                                      ; $470a: $06 $0e
	add  d                                           ; $470c: $82
	inc  e                                           ; $470d: $1c
	dec  b                                           ; $470e: $05
	ld   bc, $0101                                   ; $470f: $01 $01 $01
	adc  h                                           ; $4712: $8c
	ld   l, b                                        ; $4713: $68
	ld   a, l                                        ; $4714: $7d
	inc  bc                                          ; $4715: $03
	add  c                                           ; $4716: $81
	inc  b                                           ; $4717: $04
	ld   e, [hl]                                     ; $4718: $5e
	inc  b                                           ; $4719: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $471a: $cf
	ld   a, h                                        ; $471b: $7c
	dec  c                                           ; $471c: $0d
	inc  bc                                          ; $471d: $03
	ld   [de], a                                     ; $471e: $12
	ld   [bc], a                                     ; $471f: $02
	ld   c, h                                        ; $4720: $4c
	ld   e, e                                        ; $4721: $5b
	ld   e, d                                        ; $4722: $5a
	and  c                                           ; $4723: $a1
	sub  d                                           ; $4724: $92
	ld   a, [$000d]                                  ; $4725: $fa $0d $00
	ld   a, [bc]                                     ; $4728: $0a
	dec  c                                           ; $4729: $0d
	nop                                              ; $472a: $00
	nop                                              ; $472b: $00
	inc  hl                                          ; $472c: $23
	add  l                                           ; $472d: $85
	rrca                                             ; $472e: $0f
	dec  b                                           ; $472f: $05
	nop                                              ; $4730: $00
	ld   bc, $6358                                   ; $4731: $01 $58 $63
	ld   d, d                                        ; $4734: $52
	ld   l, c                                        ; $4735: $69
	and  c                                           ; $4736: $a1
	sbc  [hl]                                        ; $4737: $9e
	dec  c                                           ; $4738: $0d
	ld   a, b                                        ; $4739: $78
	and  c                                           ; $473a: $a1
	adc  d                                           ; $473b: $8a
	ld   a, c                                        ; $473c: $79
	ld   h, a                                        ; $473d: $67
	sbc  c                                           ; $473e: $99
	ld   sp, hl                                      ; $473f: $f9
	dec  c                                           ; $4740: $0d
	nop                                              ; $4741: $00
	ld   a, [bc]                                     ; $4742: $0a
	add  hl, de                                      ; $4743: $19
	dec  b                                           ; $4744: $05
	inc  bc                                          ; $4745: $03
	ld   [de], a                                     ; $4746: $12
	dec  b                                           ; $4747: $05
	cp   l                                           ; $4748: $bd
	nop                                              ; $4749: $00
	nop                                              ; $474a: $00
	ld   [de], a                                     ; $474b: $12
	ld   de, $bd05                                   ; $474c: $11 $05 $bd
	nop                                              ; $474f: $00
	ld   bc, $1112                                   ; $4750: $01 $12 $11
	dec  b                                           ; $4753: $05
	ld   l, l                                        ; $4754: $6d
	nop                                              ; $4755: $00
	ld   [bc], a                                     ; $4756: $02
	rlca                                             ; $4757: $07
	xor  [hl]                                        ; $4758: $ae
	ld   b, $02                                      ; $4759: $06 $02
	inc  bc                                          ; $475b: $03
	ld   bc, $2000                                   ; $475c: $01 $00 $20
	nop                                              ; $475f: $00
	rlca                                             ; $4760: $07
	ld   sp, hl                                      ; $4761: $f9
	ld   b, $02                                      ; $4762: $06 $02
	inc  bc                                          ; $4764: $03
	ld   bc, $2001                                   ; $4765: $01 $01 $20
	nop                                              ; $4768: $00
	rlca                                             ; $4769: $07
	ccf                                              ; $476a: $3f
	rlca                                             ; $476b: $07
	ld   [bc], a                                     ; $476c: $02
	inc  bc                                          ; $476d: $03
	ld   bc, $2002                                   ; $476e: $01 $02 $20
	nop                                              ; $4771: $00
	ld   b, $96                                      ; $4772: $06 $96
	rlca                                             ; $4774: $07
	rrca                                             ; $4775: $0f
	nop                                              ; $4776: $00
	ld   bc, $1201                                   ; $4777: $01 $01 $12
	dec  b                                           ; $477a: $05
	cp   l                                           ; $477b: $bd
	ld   e, [hl]                                     ; $477c: $5e
	sub  a                                           ; $477d: $97
	ld   d, d                                        ; $477e: $52
	ld   [hl], l                                     ; $477f: $75
	dec  c                                           ; $4780: $0d
	ld   d, d                                        ; $4781: $52
	ld   d, d                                        ; $4782: $52
	and  c                                           ; $4783: $a1
	ld   h, [hl]                                     ; $4784: $66
	sub  c                                           ; $4785: $91
	ld   a, b                                        ; $4786: $78
	ld   d, d                                        ; $4787: $52
	ld   [hl], l                                     ; $4788: $75
	ld   h, a                                        ; $4789: $67
	ld   e, c                                        ; $478a: $59
	ld   sp, hl                                      ; $478b: $f9
	dec  c                                           ; $478c: $0d
	nop                                              ; $478d: $00
	ld   a, [bc]                                     ; $478e: $0a
	rrca                                             ; $478f: $0f
	dec  b                                           ; $4790: $05
	ld   [bc], a                                     ; $4791: $02
	ld   bc, $fb54                                   ; $4792: $01 $54 $fb
	and  c                                           ; $4795: $a1
	rst  $38                                         ; $4796: $ff
	rst  $38                                         ; $4797: $ff
	ld   a, b                                        ; $4798: $78
	and  c                                           ; $4799: $a1
	sub  d                                           ; $479a: $92
	dec  c                                           ; $479b: $0d
	ld   h, l                                        ; $479c: $65
	adc  l                                           ; $479d: $8d
	ld   [hl], c                                     ; $479e: $71
	ld   l, l                                        ; $479f: $6d
	sbc  d                                           ; $47a0: $9a
	halt                                             ; $47a1: $76
	sbc  c                                           ; $47a2: $99
	ld   a, b                                        ; $47a3: $78
	ld   c, a                                        ; $47a4: $4f
	rst  $38                                         ; $47a5: $ff
	rst  $38                                         ; $47a6: $ff
	dec  c                                           ; $47a7: $0d
	sub  d                                           ; $47a8: $92
	ld   [hl], c                                     ; $47a9: $71
	ld   a, a                                        ; $47aa: $7f
	sbc  [hl]                                        ; $47ab: $9e
	ld   [de], a                                     ; $47ac: $12
	ld   de, $bd05                                   ; $47ad: $11 $05 $bd
	ld   a, c                                        ; $47b0: $79
	ld   h, l                                        ; $47b1: $65
	sub  [hl]                                        ; $47b2: $96
	sbc  a                                           ; $47b3: $9f
	dec  c                                           ; $47b4: $0d
	nop                                              ; $47b5: $00
	ld   a, [bc]                                     ; $47b6: $0a
	dec  c                                           ; $47b7: $0d
	nop                                              ; $47b8: $00
	nop                                              ; $47b9: $00
	rrca                                             ; $47ba: $0f
	nop                                              ; $47bb: $00
	ld   bc, $bf06                                   ; $47bc: $01 $06 $bf
	rlca                                             ; $47bf: $07
	rrca                                             ; $47c0: $0f
	nop                                              ; $47c1: $00
	ld   bc, $1201                                   ; $47c2: $01 $01 $12
	ld   de, $bd05                                   ; $47c5: $11 $05 $bd
	ld   e, [hl]                                     ; $47c8: $5e
	sub  a                                           ; $47c9: $97
	ld   d, d                                        ; $47ca: $52
	ld   e, d                                        ; $47cb: $5a
	dec  c                                           ; $47cc: $0d
	ld   d, d                                        ; $47cd: $52
	ld   d, d                                        ; $47ce: $52
	and  c                                           ; $47cf: $a1
	ld   h, [hl]                                     ; $47d0: $66
	sub  c                                           ; $47d1: $91
	ld   a, b                                        ; $47d2: $78
	ld   d, d                                        ; $47d3: $52
	ld   [hl], l                                     ; $47d4: $75
	ld   h, a                                        ; $47d5: $67
	ld   e, c                                        ; $47d6: $59
	ld   sp, hl                                      ; $47d7: $f9
	dec  c                                           ; $47d8: $0d
	nop                                              ; $47d9: $00
	ld   a, [bc]                                     ; $47da: $0a
	rrca                                             ; $47db: $0f
	dec  b                                           ; $47dc: $05
	ld   bc, $6b01                                   ; $47dd: $01 $01 $6b
	ld   d, h                                        ; $47e0: $54
	sub  d                                           ; $47e1: $92
	ld   a, b                                        ; $47e2: $78
	sbc  a                                           ; $47e3: $9f
	dec  c                                           ; $47e4: $0d
	ld   l, e                                        ; $47e5: $6b
	sbc  d                                           ; $47e6: $9a
	ld   e, [hl]                                     ; $47e7: $5e
	sub  a                                           ; $47e8: $97
	ld   d, d                                        ; $47e9: $52
	sub  d                                           ; $47ea: $92
	ld   a, b                                        ; $47eb: $78
	ld   d, d                                        ; $47ec: $52
	halt                                             ; $47ed: $76
	dec  c                                           ; $47ee: $0d
	ld   h, d                                        ; $47ef: $62
	sbc  b                                           ; $47f0: $98
	sub  d                                           ; $47f1: $92
	ld   e, l                                        ; $47f2: $5d
	ld   d, b                                        ; $47f3: $50
	sub  a                                           ; $47f4: $97
	add  [hl]                                        ; $47f5: $86
	and  c                                           ; $47f6: $a1
	ld   h, l                                        ; $47f7: $65
	ld   a, b                                        ; $47f8: $78
	sbc  a                                           ; $47f9: $9f
	dec  c                                           ; $47fa: $0d
	nop                                              ; $47fb: $00
	ld   a, [bc]                                     ; $47fc: $0a
	dec  c                                           ; $47fd: $0d
	nop                                              ; $47fe: $00
	nop                                              ; $47ff: $00
	rrca                                             ; $4800: $0f
	nop                                              ; $4801: $00
	ld   bc, $bf06                                   ; $4802: $01 $06 $bf
	rlca                                             ; $4805: $07
	rrca                                             ; $4806: $0f
	nop                                              ; $4807: $00
	ld   bc, $1201                                   ; $4808: $01 $01 $12
	ld   de, $6d05                                   ; $480b: $11 $05 $6d
	ld   e, [hl]                                     ; $480e: $5e
	sub  a                                           ; $480f: $97
	ld   d, d                                        ; $4810: $52
	inc  bc                                          ; $4811: $03
	add  b                                           ; $4812: $80
	ld   h, e                                        ; $4813: $63
	ld   a, b                                        ; $4814: $78
	ld   d, d                                        ; $4815: $52
	halt                                             ; $4816: $76
	dec  c                                           ; $4817: $0d
	ld   d, d                                        ; $4818: $52
	ld   e, a                                        ; $4819: $5f
	ld   a, b                                        ; $481a: $78
	ld   d, d                                        ; $481b: $52
	and  c                                           ; $481c: $a1
	ld   h, [hl]                                     ; $481d: $66
	sub  c                                           ; $481e: $91
	ld   a, b                                        ; $481f: $78
	ld   d, d                                        ; $4820: $52
	ld   [hl], l                                     ; $4821: $75
	ld   h, a                                        ; $4822: $67
	ld   e, c                                        ; $4823: $59
	ld   sp, hl                                      ; $4824: $f9
	dec  c                                           ; $4825: $0d
	nop                                              ; $4826: $00
	ld   a, [bc]                                     ; $4827: $0a
	rrca                                             ; $4828: $0f
	dec  b                                           ; $4829: $05
	inc  bc                                          ; $482a: $03
	ld   bc, $a16b                                   ; $482b: $01 $6b $a1
	ld   a, b                                        ; $482e: $78
	ld   a, c                                        ; $482f: $79
	inc  b                                           ; $4830: $04
	ld   b, l                                        ; $4831: $45
	sbc  d                                           ; $4832: $9a
	ld   l, l                                        ; $4833: $6d
	sub  a                                           ; $4834: $97
	dec  c                                           ; $4835: $0d
	inc  bc                                          ; $4836: $03
	sub  b                                           ; $4837: $90
	inc  bc                                          ; $4838: $03
	sbc  b                                           ; $4839: $98
	sub  b                                           ; $483a: $90
	add  c                                           ; $483b: $81
	ld   [hl], c                                     ; $483c: $71
	ld   e, l                                        ; $483d: $5d
	sbc  b                                           ; $483e: $98
	ld   h, a                                        ; $483f: $67
	sbc  c                                           ; $4840: $99
	ld   [hl], l                                     ; $4841: $75
	sbc  a                                           ; $4842: $9f
	dec  c                                           ; $4843: $0d
	sub  d                                           ; $4844: $92
	ld   [hl], c                                     ; $4845: $71
	ld   a, a                                        ; $4846: $7f
	ld   [de], a                                     ; $4847: $12
	ld   de, $bd05                                   ; $4848: $11 $05 $bd
	ld   e, [hl]                                     ; $484b: $5e
	sub  a                                           ; $484c: $97
	ld   d, d                                        ; $484d: $52
	sub  d                                           ; $484e: $92
	sbc  e                                           ; $484f: $9b
	sbc  a                                           ; $4850: $9f
	dec  c                                           ; $4851: $0d
	nop                                              ; $4852: $00
	ld   a, [bc]                                     ; $4853: $0a
	dec  c                                           ; $4854: $0d
	nop                                              ; $4855: $00
	nop                                              ; $4856: $00
	rrca                                             ; $4857: $0f
	nop                                              ; $4858: $00
	ld   bc, $bf06                                   ; $4859: $01 $06 $bf
	rlca                                             ; $485c: $07
	rrca                                             ; $485d: $0f
	dec  b                                           ; $485e: $05
	ld   [bc], a                                     ; $485f: $02
	ld   bc, $a178                                   ; $4860: $01 $78 $a1
	sub  d                                           ; $4863: $92
	sbc  [hl]                                        ; $4864: $9e
	inc  bc                                          ; $4865: $03
	add  b                                           ; $4866: $80
	ld   h, l                                        ; $4867: $65
	ld   e, b                                        ; $4868: $58
	ld   h, l                                        ; $4869: $65
	adc  l                                           ; $486a: $8d
	ld   e, c                                        ; $486b: $59
	ld   d, d                                        ; $486c: $52
	ld   a, b                                        ; $486d: $78
	ld   sp, hl                                      ; $486e: $f9
	dec  c                                           ; $486f: $0d
	sub  d                                           ; $4870: $92
	ld   [hl], c                                     ; $4871: $71
	ld   a, a                                        ; $4872: $7f
	ld   h, c                                        ; $4873: $61
	ld   h, c                                        ; $4874: $61
	ld   a, l                                        ; $4875: $7d
	ld   [de], a                                     ; $4876: $12
	ld   de, $bd05                                   ; $4877: $11 $05 $bd
	sub  d                                           ; $487a: $92
	sbc  e                                           ; $487b: $9b
	sbc  a                                           ; $487c: $9f
	dec  c                                           ; $487d: $0d
	nop                                              ; $487e: $00
	ld   a, [bc]                                     ; $487f: $0a
	dec  c                                           ; $4880: $0d
	nop                                              ; $4881: $00
	nop                                              ; $4882: $00
	rrca                                             ; $4883: $0f
	nop                                              ; $4884: $00
	ld   bc, $8223                                   ; $4885: $01 $23 $82
	inc  e                                           ; $4888: $1c
	dec  b                                           ; $4889: $05
	nop                                              ; $488a: $00
	nop                                              ; $488b: $00
	ld   bc, $7463                                   ; $488c: $01 $63 $74
	sbc  [hl]                                        ; $488f: $9e
	ld   e, b                                        ; $4890: $58
	inc  bc                                          ; $4891: $03
	inc  de                                          ; $4892: $13
	sbc  b                                           ; $4893: $98
	sub  b                                           ; $4894: $90
	inc  bc                                          ; $4895: $03
	ld   a, [hl]                                     ; $4896: $7e
	sbc  l                                           ; $4897: $9d
	ld   [hl], c                                     ; $4898: $71
	ld   l, l                                        ; $4899: $6d
	ld   h, l                                        ; $489a: $65
	sbc  [hl]                                        ; $489b: $9e
	dec  c                                           ; $489c: $0d
	ld   e, b                                        ; $489d: $58
	adc  l                                           ; $489e: $8d
	ld   e, l                                        ; $489f: $5d
	ld   h, [hl]                                     ; $48a0: $66
	ld   [hl], l                                     ; $48a1: $75
	sub  b                                           ; $48a2: $90
	add  b                                           ; $48a3: $80
	ld   d, d                                        ; $48a4: $52
	ld   [hl], h                                     ; $48a5: $74
	ld   h, c                                        ; $48a6: $61
	ld   e, c                                        ; $48a7: $59
	ld   sp, hl                                      ; $48a8: $f9
	dec  c                                           ; $48a9: $0d
	nop                                              ; $48aa: $00
	ld   a, [bc]                                     ; $48ab: $0a
	dec  c                                           ; $48ac: $0d
	nop                                              ; $48ad: $00
	nop                                              ; $48ae: $00
	rrca                                             ; $48af: $0f
	nop                                              ; $48b0: $00
	ld   bc, $9523                                   ; $48b1: $01 $23 $95
	inc  e                                           ; $48b4: $1c
	dec  b                                           ; $48b5: $05
	nop                                              ; $48b6: $00
	nop                                              ; $48b7: $00
	ld   bc, $688c                                   ; $48b8: $01 $8c $68
	sbc  [hl]                                        ; $48bb: $9e
	and  a                                           ; $48bc: $a7
	jp   nz, $9759                                   ; $48bd: $c2 $59 $97

	add  b                                           ; $48c0: $80
	ld   e, l                                        ; $48c1: $5d
	ld   [hl], l                                     ; $48c2: $75
	rst  $38                                         ; $48c3: $ff
	rst  $38                                         ; $48c4: $ff
	dec  c                                           ; $48c5: $0d
	nop                                              ; $48c6: $00
	ld   a, [bc]                                     ; $48c7: $0a
	ld   bc, $ffff                                   ; $48c8: $01 $ff $ff
	ld   d, [hl]                                     ; $48cb: $56
	sbc  [hl]                                        ; $48cc: $9e
	halt                                             ; $48cd: $76
	sbc  a                                           ; $48ce: $9f
	dec  c                                           ; $48cf: $0d
	ld   bc, $0307                                   ; $48d0: $01 $07 $03
	add  e                                           ; $48d3: $83
	inc  b                                           ; $48d4: $04
	sbc  b                                           ; $48d5: $98
	ld   a, l                                        ; $48d6: $7d
	inc  bc                                          ; $48d7: $03
	ld   [de], a                                     ; $48d8: $12
	ld   [bc], a                                     ; $48d9: $02
	ld   c, h                                        ; $48da: $4c
	ld   a, h                                        ; $48db: $7c
	inc  b                                           ; $48dc: $04
	add  c                                           ; $48dd: $81
	rst  $38                                         ; $48de: $ff
	rst  $38                                         ; $48df: $ff
	dec  b                                           ; $48e0: $05
	adc  h                                           ; $48e1: $8c
	ld   bc, $0d08                                   ; $48e2: $01 $08 $0d
	sub  d                                           ; $48e5: $92
	ld   [hl], h                                     ; $48e6: $74
	sbc  a                                           ; $48e7: $9f
	dec  c                                           ; $48e8: $0d
	nop                                              ; $48e9: $00
	ld   a, [bc]                                     ; $48ea: $0a
	rrca                                             ; $48eb: $0f
	nop                                              ; $48ec: $00
	ld   bc, $6601                                   ; $48ed: $01 $01 $66
	sub  c                                           ; $48f0: $91
	sbc  [hl]                                        ; $48f1: $9e
	inc  bc                                          ; $48f2: $03
	ld   l, b                                        ; $48f3: $68
	ld   a, l                                        ; $48f4: $7d
	inc  b                                           ; $48f5: $04
	ld   l, l                                        ; $48f6: $6d
	ld   e, d                                        ; $48f7: $5a
	rst  $38                                         ; $48f8: $ff
	rst  $38                                         ; $48f9: $ff
	dec  c                                           ; $48fa: $0d
	nop                                              ; $48fb: $00
	ld   a, [bc]                                     ; $48fc: $0a
	dec  c                                           ; $48fd: $0d
	nop                                              ; $48fe: $00
	nop                                              ; $48ff: $00
	add  hl, de                                      ; $4900: $19
	dec  b                                           ; $4901: $05
	inc  bc                                          ; $4902: $03
	ld   [bc], a                                     ; $4903: $02
	inc  e                                           ; $4904: $1c
	inc  b                                           ; $4905: $04
	sbc  e                                           ; $4906: $9b
	ld   a, h                                        ; $4907: $7c
	ld   e, b                                        ; $4908: $58
	adc  l                                           ; $4909: $8d
	ld   e, l                                        ; $490a: $5d
	ld   h, [hl]                                     ; $490b: $66
	and  b                                           ; $490c: $a0
	ld   [bc], a                                     ; $490d: $02
	inc  l                                           ; $490e: $2c
	ld   e, l                                        ; $490f: $5d
	nop                                              ; $4910: $00
	nop                                              ; $4911: $00
	inc  bc                                          ; $4912: $03
	xor  l                                           ; $4913: $ad
	and  c                                           ; $4914: $a1
	inc  b                                           ; $4915: $04
	dec  bc                                          ; $4916: $0b
	ld   a, h                                        ; $4917: $7c
	ld   e, b                                        ; $4918: $58
	adc  l                                           ; $4919: $8d
	ld   e, l                                        ; $491a: $5d
	ld   h, [hl]                                     ; $491b: $66
	and  b                                           ; $491c: $a0
	ld   [bc], a                                     ; $491d: $02
	inc  l                                           ; $491e: $2c
	ld   e, l                                        ; $491f: $5d
	nop                                              ; $4920: $00
	ld   bc, $6003                                   ; $4921: $01 $03 $60
	inc  b                                           ; $4924: $04
	sbc  e                                           ; $4925: $9b
	ld   a, h                                        ; $4926: $7c
	ld   e, b                                        ; $4927: $58
	adc  l                                           ; $4928: $8d
	ld   e, l                                        ; $4929: $5d
	ld   h, [hl]                                     ; $492a: $66
	and  b                                           ; $492b: $a0
	ld   [bc], a                                     ; $492c: $02
	inc  l                                           ; $492d: $2c
	ld   e, l                                        ; $492e: $5d
	nop                                              ; $492f: $00
	ld   [bc], a                                     ; $4930: $02
	rlca                                             ; $4931: $07
	adc  b                                           ; $4932: $88
	ld   [$0302], sp                                 ; $4933: $08 $02 $03
	ld   bc, $2000                                   ; $4936: $01 $00 $20
	nop                                              ; $4939: $00
	rlca                                             ; $493a: $07
	cp   b                                           ; $493b: $b8
	ld   [$0302], sp                                 ; $493c: $08 $02 $03
	ld   bc, $2001                                   ; $493f: $01 $01 $20
	nop                                              ; $4942: $00
	rlca                                             ; $4943: $07
	add  sp, $08                                     ; $4944: $e8 $08
	ld   [bc], a                                     ; $4946: $02
	inc  bc                                          ; $4947: $03
	ld   bc, $2002                                   ; $4948: $01 $02 $20
	nop                                              ; $494b: $00
	ld   b, $18                                      ; $494c: $06 $18
	add  hl, bc                                      ; $494e: $09
	rlca                                             ; $494f: $07
	ld   b, c                                        ; $4950: $41
	add  hl, bc                                      ; $4951: $09
	inc  bc                                          ; $4952: $03
	dec  d                                           ; $4953: $15
	ld   bc, $25be                                   ; $4954: $01 $be $25
	nop                                              ; $4957: $00
	rlca                                             ; $4958: $07
	adc  b                                           ; $4959: $88
	add  hl, bc                                      ; $495a: $09
	inc  bc                                          ; $495b: $03
	dec  d                                           ; $495c: $15
	ld   bc, $25b4                                   ; $495d: $01 $b4 $25
	inc  bc                                          ; $4960: $03
	dec  d                                           ; $4961: $15
	ld   bc, $22be                                   ; $4962: $01 $be $22
	inc  e                                           ; $4965: $1c
	nop                                              ; $4966: $00
	rlca                                             ; $4967: $07
	call c, $0109                                    ; $4968: $dc $09 $01
	or   b                                           ; $496b: $b0
	inc  bc                                          ; $496c: $03
	dec  d                                           ; $496d: $15
	inc  hl                                          ; $496e: $23
	inc  bc                                          ; $496f: $03
	dec  d                                           ; $4970: $15
	ld   bc, $23b3                                   ; $4971: $01 $b3 $23
	inc  e                                           ; $4974: $1c
	nop                                              ; $4975: $00
	rlca                                             ; $4976: $07
	rla                                              ; $4977: $17
	ld   a, [bc]                                     ; $4978: $0a
	inc  bc                                          ; $4979: $03
	dec  d                                           ; $497a: $15
	ld   bc, $23af                                   ; $497b: $01 $af $23
	nop                                              ; $497e: $00
	rlca                                             ; $497f: $07
	ld   b, c                                        ; $4980: $41
	add  hl, bc                                      ; $4981: $09
	inc  bc                                          ; $4982: $03
	jr   nz, jr_063_4986                             ; $4983: $20 $01

	pop  hl                                          ; $4985: $e1

jr_063_4986:
	dec  h                                           ; $4986: $25
	nop                                              ; $4987: $00
	rlca                                             ; $4988: $07
	adc  b                                           ; $4989: $88
	add  hl, bc                                      ; $498a: $09
	inc  bc                                          ; $498b: $03
	jr   nz, jr_063_498f                             ; $498c: $20 $01

	sub  [hl]                                        ; $498e: $96

jr_063_498f:
	dec  h                                           ; $498f: $25
	inc  bc                                          ; $4990: $03
	jr   nz, @+$03                                   ; $4991: $20 $01

	ldh  [rAUD4GO], a                                ; $4993: $e0 $23
	inc  e                                           ; $4995: $1c
	nop                                              ; $4996: $00
	rlca                                             ; $4997: $07
	call c, $0109                                    ; $4998: $dc $09 $01
	ld   h, h                                        ; $499b: $64
	inc  bc                                          ; $499c: $03
	jr   nz, @+$25                                   ; $499d: $20 $23

	inc  bc                                          ; $499f: $03
	jr   nz, jr_063_49a3                             ; $49a0: $20 $01

	sub  l                                           ; $49a2: $95

jr_063_49a3:
	inc  hl                                          ; $49a3: $23
	inc  e                                           ; $49a4: $1c
	nop                                              ; $49a5: $00
	rlca                                             ; $49a6: $07
	rla                                              ; $49a7: $17
	ld   a, [bc]                                     ; $49a8: $0a
	inc  bc                                          ; $49a9: $03
	jr   nz, jr_063_49ad                             ; $49aa: $20 $01

	ld   h, e                                        ; $49ac: $63

jr_063_49ad:
	inc  hl                                          ; $49ad: $23
	nop                                              ; $49ae: $00
	rlca                                             ; $49af: $07
	ld   b, c                                        ; $49b0: $41
	add  hl, bc                                      ; $49b1: $09
	inc  bc                                          ; $49b2: $03
	ld   hl, $e101                                   ; $49b3: $21 $01 $e1
	dec  h                                           ; $49b6: $25
	nop                                              ; $49b7: $00
	rlca                                             ; $49b8: $07
	adc  b                                           ; $49b9: $88
	add  hl, bc                                      ; $49ba: $09
	inc  bc                                          ; $49bb: $03
	ld   hl, $9601                                   ; $49bc: $21 $01 $96
	dec  h                                           ; $49bf: $25
	inc  bc                                          ; $49c0: $03
	ld   hl, $e001                                   ; $49c1: $21 $01 $e0
	inc  hl                                          ; $49c4: $23
	inc  e                                           ; $49c5: $1c
	nop                                              ; $49c6: $00
	rlca                                             ; $49c7: $07
	call c, $0109                                    ; $49c8: $dc $09 $01
	ld   h, h                                        ; $49cb: $64
	inc  bc                                          ; $49cc: $03
	ld   hl, $0323                                   ; $49cd: $21 $23 $03
	ld   hl, $9501                                   ; $49d0: $21 $01 $95
	inc  hl                                          ; $49d3: $23
	inc  e                                           ; $49d4: $1c
	nop                                              ; $49d5: $00
	rlca                                             ; $49d6: $07
	rla                                              ; $49d7: $17
	ld   a, [bc]                                     ; $49d8: $0a
	inc  bc                                          ; $49d9: $03
	ld   hl, $6301                                   ; $49da: $21 $01 $63
	inc  hl                                          ; $49dd: $23
	nop                                              ; $49de: $00
	inc  e                                           ; $49df: $1c
	dec  b                                           ; $49e0: $05
	ld   [bc], a                                     ; $49e1: $02
	ld   [bc], a                                     ; $49e2: $02
	ld   bc, $ece2                                   ; $49e3: $01 $e2 $ec
	ld   a, c                                        ; $49e6: $79
	add  b                                           ; $49e7: $80
	ld   e, c                                        ; $49e8: $59
	and  c                                           ; $49e9: $a1
	ld   [hl], l                                     ; $49ea: $75
	sub  b                                           ; $49eb: $90
	dec  c                                           ; $49ec: $0d
	ld   d, [hl]                                     ; $49ed: $56
	ld   d, [hl]                                     ; $49ee: $56
	ld   [hl], c                                     ; $49ef: $71
	ld   [hl], h                                     ; $49f0: $74
	rst  $38                                         ; $49f1: $ff
	rst  $38                                         ; $49f2: $ff
	dec  c                                           ; $49f3: $0d
	adc  c                                           ; $49f4: $89
	sub  a                                           ; $49f5: $97
	sbc  [hl]                                        ; $49f6: $9e
	ld   [bc], a                                     ; $49f7: $02
	ld   a, a                                        ; $49f8: $7f
	ld   e, l                                        ; $49f9: $5d
	ld   [hl], l                                     ; $49fa: $75
	sbc  a                                           ; $49fb: $9f
	dec  c                                           ; $49fc: $0d
	nop                                              ; $49fd: $00
	ld   a, [bc]                                     ; $49fe: $0a
	dec  c                                           ; $49ff: $0d
	nop                                              ; $4a00: $00
	nop                                              ; $4a01: $00
	rrca                                             ; $4a02: $0f
	nop                                              ; $4a03: $00
	ld   bc, $a106                                   ; $4a04: $01 $06 $a1
	ld   a, [bc]                                     ; $4a07: $0a
	rrca                                             ; $4a08: $0f
	nop                                              ; $4a09: $00
	ld   bc, $0101                                   ; $4a0a: $01 $01 $01
	rlca                                             ; $4a0d: $07
	inc  b                                           ; $4a0e: $04
	ld   c, $02                                      ; $4a0f: $0e $02
	add  b                                           ; $4a11: $80
	inc  bc                                          ; $4a12: $03
	ld   [de], a                                     ; $4a13: $12
	dec  b                                           ; $4a14: $05
	jp   nz, $ffff                                   ; $4a15: $c2 $ff $ff

	inc  b                                           ; $4a18: $04
	ld   c, $05                                      ; $4a19: $0e $05
	adc  h                                           ; $4a1b: $8c
	ld   bc, $0d08                                   ; $4a1c: $01 $08 $0d
	sub  d                                           ; $4a1f: $92
	ld   [hl], c                                     ; $4a20: $71
	ld   l, l                                        ; $4a21: $6d
	ld   a, [$000d]                                  ; $4a22: $fa $0d $00
	ld   a, [bc]                                     ; $4a25: $0a
	inc  e                                           ; $4a26: $1c
	dec  b                                           ; $4a27: $05
	ld   bc, $0101                                   ; $4a28: $01 $01 $01
	inc  b                                           ; $4a2b: $04
	ld   c, $5b                                      ; $4a2c: $0e $5b
	ld   a, b                                        ; $4a2e: $78
	ld   [bc], a                                     ; $4a2f: $02
	add  b                                           ; $4a30: $80
	ld   d, d                                        ; $4a31: $52
	ld   e, d                                        ; $4a32: $5a
	dec  c                                           ; $4a33: $0d
	ld   e, c                                        ; $4a34: $59
	ld   a, b                                        ; $4a35: $78
	ld   d, h                                        ; $4a36: $54
	ld   [hl], c                                     ; $4a37: $71
	ld   l, a                                        ; $4a38: $6f
	sub  e                                           ; $4a39: $93
	ld   d, h                                        ; $4a3a: $54
	ld   h, c                                        ; $4a3b: $61
	halt                                             ; $4a3c: $76
	sub  d                                           ; $4a3d: $92
	ld   a, b                                        ; $4a3e: $78
	rst  $38                                         ; $4a3f: $ff
	rst  $38                                         ; $4a40: $ff
	dec  c                                           ; $4a41: $0d
	sub  [hl]                                        ; $4a42: $96
	ld   e, c                                        ; $4a43: $59
	ld   [hl], c                                     ; $4a44: $71
	ld   l, l                                        ; $4a45: $6d
	ld   a, b                                        ; $4a46: $78
	ld   c, a                                        ; $4a47: $4f
	sbc  a                                           ; $4a48: $9f
	dec  c                                           ; $4a49: $0d
	nop                                              ; $4a4a: $00
	ld   a, [bc]                                     ; $4a4b: $0a
	ld   b, $59                                      ; $4a4c: $06 $59
	ld   a, [bc]                                     ; $4a4e: $0a
	rrca                                             ; $4a4f: $0f
	nop                                              ; $4a50: $00
	ld   bc, $0101                                   ; $4a51: $01 $01 $01
	rlca                                             ; $4a54: $07
	inc  b                                           ; $4a55: $04
	ld   c, $02                                      ; $4a56: $0e $02
	ld   d, a                                        ; $4a58: $57
	inc  b                                           ; $4a59: $04
	ld   e, d                                        ; $4a5a: $5a
	inc  bc                                          ; $4a5b: $03
	ld   [de], a                                     ; $4a5c: $12
	rst  $38                                         ; $4a5d: $ff
	rst  $38                                         ; $4a5e: $ff
	inc  b                                           ; $4a5f: $04
	dec  bc                                          ; $4a60: $0b
	dec  b                                           ; $4a61: $05
	adc  h                                           ; $4a62: $8c
	ld   bc, $0d08                                   ; $4a63: $01 $08 $0d
	rst  $38                                         ; $4a66: $ff
	rst  $38                                         ; $4a67: $ff
	adc  h                                           ; $4a68: $8c
	ld   d, b                                        ; $4a69: $50
	adc  h                                           ; $4a6a: $8c
	ld   d, b                                        ; $4a6b: $50
	ld   e, c                                        ; $4a6c: $59
	ld   a, b                                        ; $4a6d: $78
	ld   sp, hl                                      ; $4a6e: $f9
	dec  c                                           ; $4a6f: $0d
	nop                                              ; $4a70: $00
	ld   a, [bc]                                     ; $4a71: $0a
	inc  e                                           ; $4a72: $1c
	dec  b                                           ; $4a73: $05
	ld   bc, $0101                                   ; $4a74: $01 $01 $01
	inc  b                                           ; $4a77: $04
	ld   c, $5b                                      ; $4a78: $0e $5b
	ld   a, b                                        ; $4a7a: $78
	ld   [bc], a                                     ; $4a7b: $02
	ld   d, a                                        ; $4a7c: $57
	ld   a, h                                        ; $4a7d: $7c
	inc  bc                                          ; $4a7e: $03
	add  d                                           ; $4a7f: $82
	ld   [bc], a                                     ; $4a80: $02
	xor  c                                           ; $4a81: $a9
	ld   a, l                                        ; $4a82: $7d
	dec  c                                           ; $4a83: $0d
	ld   d, b                                        ; $4a84: $50
	halt                                             ; $4a85: $76
	ld   d, b                                        ; $4a86: $50
	halt                                             ; $4a87: $76
	inc  bc                                          ; $4a88: $03
	ld   [de], a                                     ; $4a89: $12
	ld   [bc], a                                     ; $4a8a: $02
	ld   c, h                                        ; $4a8b: $4c
	ld   h, a                                        ; $4a8c: $67
	sbc  c                                           ; $4a8d: $99
	ld   [hl], c                                     ; $4a8e: $71
	ld   [hl], h                                     ; $4a8f: $74
	ld   h, c                                        ; $4a90: $61
	halt                                             ; $4a91: $76
	sub  d                                           ; $4a92: $92
	sbc  a                                           ; $4a93: $9f
	dec  c                                           ; $4a94: $0d
	adc  h                                           ; $4a95: $8c
	sbc  [hl]                                        ; $4a96: $9e
	ld   e, d                                        ; $4a97: $5a
	and  c                                           ; $4a98: $a1
	ld   a, [hl]                                     ; $4a99: $7e
	sbc  b                                           ; $4a9a: $98
	sub  d                                           ; $4a9b: $92
	sbc  a                                           ; $4a9c: $9f
	dec  c                                           ; $4a9d: $0d
	nop                                              ; $4a9e: $00
	ld   a, [bc]                                     ; $4a9f: $0a
	ld   b, $59                                      ; $4aa0: $06 $59
	ld   a, [bc]                                     ; $4aa2: $0a
	rrca                                             ; $4aa3: $0f
	nop                                              ; $4aa4: $00
	ld   bc, $0101                                   ; $4aa5: $01 $01 $01
	rlca                                             ; $4aa8: $07
	inc  b                                           ; $4aa9: $04
	ld   c, [hl]                                     ; $4aaa: $4e
	inc  b                                           ; $4aab: $04
	inc  sp                                          ; $4aac: $33
	inc  b                                           ; $4aad: $04
	ld   a, [hl]                                     ; $4aae: $7e
	ld   [bc], a                                     ; $4aaf: $02
	ld   e, d                                        ; $4ab0: $5a
	rst  $38                                         ; $4ab1: $ff
	rst  $38                                         ; $4ab2: $ff
	dec  b                                           ; $4ab3: $05
	adc  h                                           ; $4ab4: $8c
	ld   bc, $0d08                                   ; $4ab5: $01 $08 $0d
	rst  $38                                         ; $4ab8: $ff
	rst  $38                                         ; $4ab9: $ff
	add  e                                           ; $4aba: $83
	ld   d, h                                        ; $4abb: $54
	and  c                                           ; $4abc: $a1
	sbc  a                                           ; $4abd: $9f
	dec  c                                           ; $4abe: $0d
	nop                                              ; $4abf: $00
	ld   a, [bc]                                     ; $4ac0: $0a
	inc  e                                           ; $4ac1: $1c
	dec  b                                           ; $4ac2: $05
	ld   bc, $0101                                   ; $4ac3: $01 $01 $01
	ld   a, b                                        ; $4ac6: $78
	ld   a, c                                        ; $4ac7: $79
	ld   e, d                                        ; $4ac8: $5a
	ld   d, b                                        ; $4ac9: $50
	ld   [hl], c                                     ; $4aca: $71
	ld   [hl], h                                     ; $4acb: $74
	sub  b                                           ; $4acc: $90
	dec  c                                           ; $4acd: $0d
	ld   e, d                                        ; $4ace: $5a
	and  c                                           ; $4acf: $a1
	ld   a, [hl]                                     ; $4ad0: $7e
	sbc  d                                           ; $4ad1: $9a
	ld   [hl], c                                     ; $4ad2: $71
	ld   [hl], h                                     ; $4ad3: $74
	ld   h, c                                        ; $4ad4: $61
	halt                                             ; $4ad5: $76
	sub  d                                           ; $4ad6: $92
	sbc  a                                           ; $4ad7: $9f
	dec  c                                           ; $4ad8: $0d
	nop                                              ; $4ad9: $00
	ld   a, [bc]                                     ; $4ada: $0a
	ld   b, $59                                      ; $4adb: $06 $59
	ld   a, [bc]                                     ; $4add: $0a
	rrca                                             ; $4ade: $0f
	nop                                              ; $4adf: $00
	ld   bc, $0101                                   ; $4ae0: $01 $01 $01
	rlca                                             ; $4ae3: $07
	inc  b                                           ; $4ae4: $04
	ld   c, [hl]                                     ; $4ae5: $4e
	inc  b                                           ; $4ae6: $04
	inc  sp                                          ; $4ae7: $33
	inc  b                                           ; $4ae8: $04
	ld   a, [hl]                                     ; $4ae9: $7e
	inc  b                                           ; $4aea: $04
	inc  b                                           ; $4aeb: $04
	rst  $38                                         ; $4aec: $ff
	rst  $38                                         ; $4aed: $ff
	dec  b                                           ; $4aee: $05
	add  d                                           ; $4aef: $82
	ld   bc, $0d08                                   ; $4af0: $01 $08 $0d
	rst  $38                                         ; $4af3: $ff
	rst  $38                                         ; $4af4: $ff
	or   e                                           ; $4af5: $b3
	or   e                                           ; $4af6: $b3
	call nz, $0d9f                                   ; $4af7: $c4 $9f $0d
	nop                                              ; $4afa: $00
	ld   a, [bc]                                     ; $4afb: $0a
	inc  e                                           ; $4afc: $1c
	dec  b                                           ; $4afd: $05
	ld   bc, $0101                                   ; $4afe: $01 $01 $01
	add  e                                           ; $4b01: $83
	and  c                                           ; $4b02: $a1
	ld   l, [hl]                                     ; $4b03: $6e
	sbc  b                                           ; $4b04: $98
	ld   e, a                                        ; $4b05: $5f
	ld   [hl], c                                     ; $4b06: $71
	ld   l, l                                        ; $4b07: $6d
	sbc  b                                           ; $4b08: $98
	ld   [hl], c                                     ; $4b09: $71
	ld   [hl], h                                     ; $4b0a: $74
	ld   h, c                                        ; $4b0b: $61
	halt                                             ; $4b0c: $76
	sub  d                                           ; $4b0d: $92
	sbc  a                                           ; $4b0e: $9f
	dec  c                                           ; $4b0f: $0d
	inc  b                                           ; $4b10: $04
	ld   c, $04                                      ; $4b11: $0e $04
	adc  h                                           ; $4b13: $8c
	sub  d                                           ; $4b14: $92
	ld   e, a                                        ; $4b15: $5f
	ld   [hl], a                                     ; $4b16: $77
	ld   e, d                                        ; $4b17: $5a
	and  c                                           ; $4b18: $a1
	ld   a, [hl]                                     ; $4b19: $7e
	sbc  b                                           ; $4b1a: $98
	sub  d                                           ; $4b1b: $92
	sbc  a                                           ; $4b1c: $9f
	dec  c                                           ; $4b1d: $0d
	nop                                              ; $4b1e: $00
	ld   a, [bc]                                     ; $4b1f: $0a
	inc  e                                           ; $4b20: $1c
	dec  b                                           ; $4b21: $05
	nop                                              ; $4b22: $00
	nop                                              ; $4b23: $00
	ld   bc, $7889                                   ; $4b24: $01 $89 $78
	sbc  [hl]                                        ; $4b27: $9e
	ld   [bc], a                                     ; $4b28: $02
	ld   a, a                                        ; $4b29: $7f
	ld   h, c                                        ; $4b2a: $61
	ld   e, c                                        ; $4b2b: $59
	sbc  a                                           ; $4b2c: $9f
	dec  c                                           ; $4b2d: $0d
	nop                                              ; $4b2e: $00
	ld   a, [bc]                                     ; $4b2f: $0a
	dec  c                                           ; $4b30: $0d
	nop                                              ; $4b31: $00
	nop                                              ; $4b32: $00
	rrca                                             ; $4b33: $0f
	nop                                              ; $4b34: $00
	ld   bc, $8223                                   ; $4b35: $01 $23 $82
	inc  e                                           ; $4b38: $1c
	dec  b                                           ; $4b39: $05
	nop                                              ; $4b3a: $00
	nop                                              ; $4b3b: $00
	ld   bc, $0804                                   ; $4b3c: $01 $04 $08
	ld   [bc], a                                     ; $4b3f: $02
	sub  d                                           ; $4b40: $92
	ld   a, c                                        ; $4b41: $79
	sub  b                                           ; $4b42: $90
	ld   [hl], a                                     ; $4b43: $77
	sbc  c                                           ; $4b44: $99
	inc  bc                                          ; $4b45: $03
	ld   c, a                                        ; $4b46: $4f
	ld   a, c                                        ; $4b47: $79
	dec  c                                           ; $4b48: $0d
	ld   l, a                                        ; $4b49: $6f
	sub  l                                           ; $4b4a: $95
	ld   [hl], c                                     ; $4b4b: $71
	halt                                             ; $4b4c: $76
	ld   e, b                                        ; $4b4d: $58
	inc  bc                                          ; $4b4e: $03
	jp   $9075                                       ; $4b4f: $c3 $75 $90


	dec  c                                           ; $4b52: $0d
	ld   [bc], a                                     ; $4b53: $02
	rlca                                             ; $4b54: $07
	and  c                                           ; $4b55: $a1
	ld   [hl], l                                     ; $4b56: $75
	ld   [bc], a                                     ; $4b57: $02
	ld   a, a                                        ; $4b58: $7f
	ld   h, c                                        ; $4b59: $61
	ld   e, c                                        ; $4b5a: $59
	sbc  a                                           ; $4b5b: $9f
	dec  c                                           ; $4b5c: $0d
	nop                                              ; $4b5d: $00
	ld   a, [bc]                                     ; $4b5e: $0a
	dec  c                                           ; $4b5f: $0d
	nop                                              ; $4b60: $00
	nop                                              ; $4b61: $00
	rrca                                             ; $4b62: $0f
	nop                                              ; $4b63: $00
	ld   bc, $a106                                   ; $4b64: $01 $06 $a1
	ld   a, [bc]                                     ; $4b67: $0a
	inc  hl                                          ; $4b68: $23
	sub  a                                           ; $4b69: $97
	inc  e                                           ; $4b6a: $1c
	dec  b                                           ; $4b6b: $05
	ld   bc, $0101                                   ; $4b6c: $01 $01 $01
	add  e                                           ; $4b6f: $83
	ld   d, h                                        ; $4b70: $54
	rst  $38                                         ; $4b71: $ff
	rst  $38                                         ; $4b72: $ff
	add  b                                           ; $4b73: $80
	halt                                             ; $4b74: $76
	inc  bc                                          ; $4b75: $03
	ld   [hl], l                                     ; $4b76: $75
	inc  bc                                          ; $4b77: $03
	adc  $72                                         ; $4b78: $ce $72
	ld   d, d                                        ; $4b7a: $52
	ld   l, l                                        ; $4b7b: $6d
	sbc  l                                           ; $4b7c: $9d
	sbc  a                                           ; $4b7d: $9f
	dec  c                                           ; $4b7e: $0d
	nop                                              ; $4b7f: $00
	ld   a, [bc]                                     ; $4b80: $0a
	inc  e                                           ; $4b81: $1c
	dec  b                                           ; $4b82: $05
	nop                                              ; $4b83: $00
	nop                                              ; $4b84: $00
	ld   bc, $ffff                                   ; $4b85: $01 $ff $ff
	ld   a, b                                        ; $4b88: $78
	ld   d, b                                        ; $4b89: $50
	sbc  [hl]                                        ; $4b8a: $9e
	ld   [$7d00], sp                                 ; $4b8b: $08 $00 $7d
	and  c                                           ; $4b8e: $a1
	sbc  a                                           ; $4b8f: $9f
	dec  c                                           ; $4b90: $0d
	ld   [bc], a                                     ; $4b91: $02
	or   [hl]                                        ; $4b92: $b6
	ld   [hl], c                                     ; $4b93: $71
	ld   [hl], h                                     ; $4b94: $74
	inc  b                                           ; $4b95: $04
	adc  a                                           ; $4b96: $8f
	inc  b                                           ; $4b97: $04
	jr   jr_063_4c13                                 ; $4b98: $18 $79

	inc  b                                           ; $4b9a: $04
	ld   a, a                                        ; $4b9b: $7f
	add  a                                           ; $4b9c: $87
	sbc  c                                           ; $4b9d: $99
	halt                                             ; $4b9e: $76
	dec  b                                           ; $4b9f: $05
	pop  de                                          ; $4ba0: $d1
	ld   d, h                                        ; $4ba1: $54
	ld   sp, hl                                      ; $4ba2: $f9
	dec  c                                           ; $4ba3: $0d
	nop                                              ; $4ba4: $00
	ld   a, [bc]                                     ; $4ba5: $0a
	add  hl, de                                      ; $4ba6: $19
	dec  b                                           ; $4ba7: $05
	inc  bc                                          ; $4ba8: $03
	inc  b                                           ; $4ba9: $04
	ld   a, a                                        ; $4baa: $7f
	add  a                                           ; $4bab: $87
	adc  h                                           ; $4bac: $8c
	ld   h, a                                        ; $4bad: $67
	nop                                              ; $4bae: $00
	nop                                              ; $4baf: $00
	dec  b                                           ; $4bb0: $05
	ld   de, $fb04                                   ; $4bb1: $11 $04 $fb
	inc  b                                           ; $4bb4: $04
	jr   nz, jr_063_4c30                             ; $4bb5: $20 $79

	ld   a, l                                        ; $4bb7: $7d
	nop                                              ; $4bb8: $00
	ld   bc, $be04                                   ; $4bb9: $01 $04 $be
	ld   [hl], l                                     ; $4bbc: $75
	ld   h, a                                        ; $4bbd: $67
	sub  [hl]                                        ; $4bbe: $96
	nop                                              ; $4bbf: $00
	ld   [bc], a                                     ; $4bc0: $02
	rlca                                             ; $4bc1: $07
	jr   jr_063_4bcf                                 ; $4bc2: $18 $0b

	ld   [bc], a                                     ; $4bc4: $02
	inc  bc                                          ; $4bc5: $03
	ld   bc, $2000                                   ; $4bc6: $01 $00 $20
	nop                                              ; $4bc9: $00
	rlca                                             ; $4bca: $07
	ld   [hl], e                                     ; $4bcb: $73
	dec  bc                                          ; $4bcc: $0b
	ld   [bc], a                                     ; $4bcd: $02
	inc  bc                                          ; $4bce: $03

jr_063_4bcf:
	ld   bc, $2001                                   ; $4bcf: $01 $01 $20
	nop                                              ; $4bd2: $00
	rlca                                             ; $4bd3: $07
	xor  $0b                                         ; $4bd4: $ee $0b
	ld   [bc], a                                     ; $4bd6: $02
	inc  bc                                          ; $4bd7: $03
	ld   bc, $2002                                   ; $4bd8: $01 $02 $20
	nop                                              ; $4bdb: $00
	ld   b, $33                                      ; $4bdc: $06 $33
	inc  c                                           ; $4bde: $0c
	rrca                                             ; $4bdf: $0f
	nop                                              ; $4be0: $00
	ld   bc, $0401                                   ; $4be1: $01 $01 $04
	ld   a, a                                        ; $4be4: $7f
	add  a                                           ; $4be5: $87
	adc  h                                           ; $4be6: $8c
	ld   h, a                                        ; $4be7: $67
	sub  [hl]                                        ; $4be8: $96
	rst  $38                                         ; $4be9: $ff
	rst  $38                                         ; $4bea: $ff
	ld   [bc], a                                     ; $4beb: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4bec: $cf
	dec  b                                           ; $4bed: $05
	ld   a, [de]                                     ; $4bee: $1a
	ld   h, e                                        ; $4bef: $63
	and  c                                           ; $4bf0: $a1
	ld   a, b                                        ; $4bf1: $78
	sub  a                                           ; $4bf2: $97
	sbc  a                                           ; $4bf3: $9f
	dec  c                                           ; $4bf4: $0d
	nop                                              ; $4bf5: $00
	ld   a, [bc]                                     ; $4bf6: $0a
	inc  e                                           ; $4bf7: $1c
	dec  b                                           ; $4bf8: $05
	inc  b                                           ; $4bf9: $04
	inc  b                                           ; $4bfa: $04
	ld   bc, $5858                                   ; $4bfb: $01 $58 $58
	ld   e, e                                        ; $4bfe: $5b
	ld   a, c                                        ; $4bff: $79
	rst  $38                                         ; $4c00: $ff
	rst  $38                                         ; $4c01: $ff
	dec  c                                           ; $4c02: $0d
	ld   l, a                                        ; $4c03: $6f
	sub  l                                           ; $4c04: $95
	ld   [hl], c                                     ; $4c05: $71
	halt                                             ; $4c06: $76
	inc  bc                                          ; $4c07: $03
	sub  h                                           ; $4c08: $94
	ld   [bc], a                                     ; $4c09: $02
	ld   hl, sp+$03                                  ; $4c0a: $f8 $03
	add  e                                           ; $4c0c: $83
	ld   d, d                                        ; $4c0d: $52
	ld   e, c                                        ; $4c0e: $59
	ld   e, a                                        ; $4c0f: $5f
	ld   [hl], h                                     ; $4c10: $74
	dec  c                                           ; $4c11: $0d
	ld   l, l                                        ; $4c12: $6d

jr_063_4c13:
	and  c                                           ; $4c13: $a1
	sub  d                                           ; $4c14: $92
	rst  $38                                         ; $4c15: $ff
	rst  $38                                         ; $4c16: $ff
	dec  c                                           ; $4c17: $0d
	nop                                              ; $4c18: $00
	ld   a, [bc]                                     ; $4c19: $0a
	inc  e                                           ; $4c1a: $1c
	dec  b                                           ; $4c1b: $05
	nop                                              ; $4c1c: $00
	nop                                              ; $4c1d: $00
	ld   bc, $ffff                                   ; $4c1e: $01 $ff $ff
	rst  $38                                         ; $4c21: $ff
	rst  $38                                         ; $4c22: $ff
	ld   d, b                                        ; $4c23: $50
	ld   [hl], c                                     ; $4c24: $71
	sbc  [hl]                                        ; $4c25: $9e
	dec  c                                           ; $4c26: $0d
	ld   [bc], a                                     ; $4c27: $02
	rlca                                             ; $4c28: $07
	adc  l                                           ; $4c29: $8d
	inc  b                                           ; $4c2a: $04
	sub  d                                           ; $4c2b: $92
	ld   e, d                                        ; $4c2c: $5a
	ld   h, e                                        ; $4c2d: $63
	adc  a                                           ; $4c2e: $8f
	ld   [hl], h                                     ; $4c2f: $74

jr_063_4c30:
	adc  h                                           ; $4c30: $8c
	ld   d, h                                        ; $4c31: $54
	sbc  l                                           ; $4c32: $9d
	sbc  a                                           ; $4c33: $9f
	dec  c                                           ; $4c34: $0d
	nop                                              ; $4c35: $00
	ld   a, [bc]                                     ; $4c36: $0a
	ld   b, $74                                      ; $4c37: $06 $74
	inc  c                                           ; $4c39: $0c
	rrca                                             ; $4c3a: $0f
	nop                                              ; $4c3b: $00
	ld   bc, $0501                                   ; $4c3c: $01 $01 $05
	ld   de, $fb04                                   ; $4c3f: $11 $04 $fb
	inc  b                                           ; $4c42: $04
	jr   nz, jr_063_4cbe                             ; $4c43: $20 $79

	ld   a, l                                        ; $4c45: $7d
	sbc  a                                           ; $4c46: $9f
	dec  c                                           ; $4c47: $0d
	ld   h, [hl]                                     ; $4c48: $66
	ld   [hl], c                                     ; $4c49: $71
	ld   h, e                                        ; $4c4a: $63
	ld   d, d                                        ; $4c4b: $52
	inc  b                                           ; $4c4c: $04
	ld   a, a                                        ; $4c4d: $7f
	and  c                                           ; $4c4e: $a1
	ld   [hl], l                                     ; $4c4f: $75
	sbc  c                                           ; $4c50: $99
	sub  b                                           ; $4c51: $90
	ld   a, h                                        ; $4c52: $7c
	ld   a, l                                        ; $4c53: $7d
	dec  c                                           ; $4c54: $0d
	inc  b                                           ; $4c55: $04
	rrca                                             ; $4c56: $0f
	ld   d, d                                        ; $4c57: $52
	ld   [hl], l                                     ; $4c58: $75
	ld   h, a                                        ; $4c59: $67
	ld   h, l                                        ; $4c5a: $65
	rst  $38                                         ; $4c5b: $ff
	rst  $38                                         ; $4c5c: $ff
	dec  c                                           ; $4c5d: $0d
	nop                                              ; $4c5e: $00
	ld   a, [bc]                                     ; $4c5f: $0a
	inc  e                                           ; $4c60: $1c
	dec  b                                           ; $4c61: $05
	ld   [bc], a                                     ; $4c62: $02
	ld   [bc], a                                     ; $4c63: $02
	ld   bc, $986b                                   ; $4c64: $01 $6b $98
	sub  c                                           ; $4c67: $91
	sbc  [hl]                                        ; $4c68: $9e
	ld   l, e                                        ; $4c69: $6b
	sub  d                                           ; $4c6a: $92
	sbc  e                                           ; $4c6b: $9b
	ld   e, a                                        ; $4c6c: $5f
	ld   [hl], a                                     ; $4c6d: $77
	rst  $38                                         ; $4c6e: $ff
	rst  $38                                         ; $4c6f: $ff
	dec  c                                           ; $4c70: $0d
	and  a                                           ; $4c71: $a7
	jp   nz, $025a                                   ; $4c72: $c2 $5a $02

	jp   nz, $7452                                   ; $4c75: $c2 $52 $74

	sbc  c                                           ; $4c78: $99
	ld   a, h                                        ; $4c79: $7c
	ld   a, l                                        ; $4c7a: $7d
	ld   [bc], a                                     ; $4c7b: $02
	inc  a                                           ; $4c7c: $3c
	inc  bc                                          ; $4c7d: $03
	add  d                                           ; $4c7e: $82
	ld   a, h                                        ; $4c7f: $7c
	dec  b                                           ; $4c80: $05
	ld   a, [bc]                                     ; $4c81: $0a
	ld   [hl], l                                     ; $4c82: $75
	dec  c                                           ; $4c83: $0d
	inc  b                                           ; $4c84: $04
	ld   a, a                                        ; $4c85: $7f
	add  a                                           ; $4c86: $87
	sbc  c                                           ; $4c87: $99
	ld   e, c                                        ; $4c88: $59
	inc  b                                           ; $4c89: $04
	ld   a, a                                        ; $4c8a: $7f
	add  a                                           ; $4c8b: $87
	ld   a, b                                        ; $4c8c: $78
	ld   d, d                                        ; $4c8d: $52
	ld   e, c                                        ; $4c8e: $59
	sub  d                                           ; $4c8f: $92
	rst  $38                                         ; $4c90: $ff
	rst  $38                                         ; $4c91: $ff
	dec  c                                           ; $4c92: $0d
	nop                                              ; $4c93: $00
	ld   a, [bc]                                     ; $4c94: $0a
	ld   bc, $8c67                                   ; $4c95: $01 $67 $8c
	and  c                                           ; $4c98: $a1
	ld   a, b                                        ; $4c99: $78
	rst  $38                                         ; $4c9a: $ff
	rst  $38                                         ; $4c9b: $ff
	dec  c                                           ; $4c9c: $0d
	ld   h, c                                        ; $4c9d: $61
	and  c                                           ; $4c9e: $a1
	ld   a, b                                        ; $4c9f: $78
	dec  b                                           ; $4ca0: $05
	jr   nz, @+$67                                   ; $4ca1: $20 $65

	ld   [hl], h                                     ; $4ca3: $74
	sub  b                                           ; $4ca4: $90
	dec  c                                           ; $4ca5: $0d
	inc  b                                           ; $4ca6: $04
	ret  c                                           ; $4ca7: $d8

	inc  b                                           ; $4ca8: $04
	xor  h                                           ; $4ca9: $ac
	ld   a, b                                        ; $4caa: $78
	ld   d, d                                        ; $4cab: $52
	ld   e, c                                        ; $4cac: $59
	rst  $38                                         ; $4cad: $ff
	rst  $38                                         ; $4cae: $ff
	dec  c                                           ; $4caf: $0d
	nop                                              ; $4cb0: $00
	ld   a, [bc]                                     ; $4cb1: $0a
	ld   b, $56                                      ; $4cb2: $06 $56
	inc  c                                           ; $4cb4: $0c
	rrca                                             ; $4cb5: $0f
	nop                                              ; $4cb6: $00
	ld   bc, $0401                                   ; $4cb7: $01 $01 $04
	cp   [hl]                                        ; $4cba: $be
	ld   [hl], l                                     ; $4cbb: $75
	ld   h, a                                        ; $4cbc: $67
	sub  [hl]                                        ; $4cbd: $96

jr_063_4cbe:
	sbc  a                                           ; $4cbe: $9f
	dec  c                                           ; $4cbf: $0d
	ld   [bc], a                                     ; $4cc0: $02
	inc  a                                           ; $4cc1: $3c
	inc  bc                                          ; $4cc2: $03
	add  d                                           ; $4cc3: $82
	ld   a, h                                        ; $4cc4: $7c
	dec  b                                           ; $4cc5: $05
	ld   a, [bc]                                     ; $4cc6: $0a
	ld   [hl], l                                     ; $4cc7: $75
	inc  b                                           ; $4cc8: $04
	ld   a, a                                        ; $4cc9: $7f
	add  h                                           ; $4cca: $84
	ld   l, [hl]                                     ; $4ccb: $6e
	ld   a, b                                        ; $4ccc: $78
	and  c                                           ; $4ccd: $a1
	ld   [hl], h                                     ; $4cce: $74
	rst  $38                                         ; $4ccf: $ff
	rst  $38                                         ; $4cd0: $ff
	dec  c                                           ; $4cd1: $0d
	nop                                              ; $4cd2: $00
	ld   a, [bc]                                     ; $4cd3: $0a
	inc  e                                           ; $4cd4: $1c
	dec  b                                           ; $4cd5: $05
	ld   [bc], a                                     ; $4cd6: $02
	ld   [bc], a                                     ; $4cd7: $02
	ld   bc, $a178                                   ; $4cd8: $01 $78 $a1
	sub  d                                           ; $4cdb: $92
	inc  b                                           ; $4cdc: $04
	db   $fc                                         ; $4cdd: $fc
	adc  a                                           ; $4cde: $8f
	halt                                             ; $4cdf: $76
	sbc  c                                           ; $4ce0: $99
	ld   a, b                                        ; $4ce1: $78
	ld   c, a                                        ; $4ce2: $4f
	rst  $38                                         ; $4ce3: $ff
	rst  $38                                         ; $4ce4: $ff
	dec  c                                           ; $4ce5: $0d
	adc  h                                           ; $4ce6: $8c
	sbc  [hl]                                        ; $4ce7: $9e
	and  a                                           ; $4ce8: $a7
	jp   nz, Jump_063_507d                           ; $4ce9: $c2 $7d $50

	ld   e, e                                        ; $4cec: $5b
	sub  a                                           ; $4ced: $97
	adc  a                                           ; $4cee: $8f
	and  c                                           ; $4cef: $a1
	ld   e, a                                        ; $4cf0: $5f
	ld   [hl], a                                     ; $4cf1: $77
	ld   a, b                                        ; $4cf2: $78
	sbc  a                                           ; $4cf3: $9f
	dec  c                                           ; $4cf4: $0d
	nop                                              ; $4cf5: $00
	ld   a, [bc]                                     ; $4cf6: $0a
	ld   b, $56                                      ; $4cf7: $06 $56
	inc  c                                           ; $4cf9: $0c
	inc  e                                           ; $4cfa: $1c
	dec  b                                           ; $4cfb: $05
	ld   b, $06                                      ; $4cfc: $06 $06
	ld   bc, $9e8c                                   ; $4cfe: $01 $8c $9e
	ld   [$7d00], sp                                 ; $4d01: $08 $00 $7d
	and  c                                           ; $4d04: $a1
	ld   a, c                                        ; $4d05: $79
	ld   [bc], a                                     ; $4d06: $02
	jp   nz, $7452                                   ; $4d07: $c2 $52 $74

	sub  b                                           ; $4d0a: $90
	dec  c                                           ; $4d0b: $0d
	inc  bc                                          ; $4d0c: $03
	call c, Call_063_7d56                            ; $4d0d: $dc $56 $7d
	inc  bc                                          ; $4d10: $03
	add  b                                           ; $4d11: $80
	ld   d, [hl]                                     ; $4d12: $56
	add  [hl]                                        ; $4d13: $86
	and  c                                           ; $4d14: $a1
	ld   e, a                                        ; $4d15: $5f
	ld   [hl], a                                     ; $4d16: $77
	ld   a, b                                        ; $4d17: $78
	rst  $38                                         ; $4d18: $ff
	rst  $38                                         ; $4d19: $ff
	dec  c                                           ; $4d1a: $0d
	nop                                              ; $4d1b: $00
	ld   a, [bc]                                     ; $4d1c: $0a
	inc  e                                           ; $4d1d: $1c
	dec  b                                           ; $4d1e: $05
	nop                                              ; $4d1f: $00
	nop                                              ; $4d20: $00
	ld   bc, $9e8c                                   ; $4d21: $01 $8c $9e
	ld   d, [hl]                                     ; $4d24: $56
	ld   d, [hl]                                     ; $4d25: $56
	sbc  l                                           ; $4d26: $9d
	rst  $38                                         ; $4d27: $ff
	rst  $38                                         ; $4d28: $ff
	dec  c                                           ; $4d29: $0d
	ld   [bc], a                                     ; $4d2a: $02
	rlca                                             ; $4d2b: $07
	adc  l                                           ; $4d2c: $8d
	inc  b                                           ; $4d2d: $04
	sub  d                                           ; $4d2e: $92
	ld   e, d                                        ; $4d2f: $5a
	inc  b                                           ; $4d30: $04
	db   $fc                                         ; $4d31: $fc
	adc  a                                           ; $4d32: $8f
	ld   [hl], h                                     ; $4d33: $74
	adc  h                                           ; $4d34: $8c
	ld   d, h                                        ; $4d35: $54
	sbc  l                                           ; $4d36: $9d
	sbc  a                                           ; $4d37: $9f
	dec  c                                           ; $4d38: $0d
	nop                                              ; $4d39: $00
	ld   a, [bc]                                     ; $4d3a: $0a
	rrca                                             ; $4d3b: $0f
	nop                                              ; $4d3c: $00
	ld   bc, $5001                                   ; $4d3d: $01 $01 $50
	ld   a, h                                        ; $4d40: $7c
	rst  $38                                         ; $4d41: $ff
	rst  $38                                         ; $4d42: $ff
	dec  c                                           ; $4d43: $0d
	nop                                              ; $4d44: $00
	ld   a, [bc]                                     ; $4d45: $0a
	inc  e                                           ; $4d46: $1c
	dec  b                                           ; $4d47: $05
	nop                                              ; $4d48: $00
	nop                                              ; $4d49: $00
	ld   bc, $a178                                   ; $4d4a: $01 $78 $a1
	sub  d                                           ; $4d4d: $92
	ld   sp, hl                                      ; $4d4e: $f9
	dec  c                                           ; $4d4f: $0d
	nop                                              ; $4d50: $00
	ld   a, [bc]                                     ; $4d51: $0a
	add  hl, de                                      ; $4d52: $19
	dec  b                                           ; $4d53: $05
	ld   [bc], a                                     ; $4d54: $02
	ld   [bc], a                                     ; $4d55: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d56: $cf
	dec  b                                           ; $4d57: $05
	ld   a, [de]                                     ; $4d58: $1a
	and  b                                           ; $4d59: $a0
	ld   [bc], a                                     ; $4d5a: $02
	sub  l                                           ; $4d5b: $95
	ld   [hl], d                                     ; $4d5c: $72
	adc  a                                           ; $4d5d: $8f
	sbc  c                                           ; $4d5e: $99
	nop                                              ; $4d5f: $00
	nop                                              ; $4d60: $00
	inc  b                                           ; $4d61: $04
	ld   e, [hl]                                     ; $4d62: $5e
	inc  b                                           ; $4d63: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d64: $cf
	ld   a, h                                        ; $4d65: $7c
	dec  b                                           ; $4d66: $05
	jr   nz, jr_063_4d6d                             ; $4d67: $20 $04

	dec  d                                           ; $4d69: $15
	and  b                                           ; $4d6a: $a0
	ld   h, a                                        ; $4d6b: $67
	sbc  c                                           ; $4d6c: $99

jr_063_4d6d:
	nop                                              ; $4d6d: $00
	ld   bc, $bd07                                   ; $4d6e: $01 $07 $bd
	inc  c                                           ; $4d71: $0c
	ld   [bc], a                                     ; $4d72: $02
	inc  bc                                          ; $4d73: $03
	ld   bc, $2000                                   ; $4d74: $01 $00 $20
	nop                                              ; $4d77: $00
	rlca                                             ; $4d78: $07
	db   $ed                                         ; $4d79: $ed
	dec  c                                           ; $4d7a: $0d
	ld   [bc], a                                     ; $4d7b: $02
	inc  bc                                          ; $4d7c: $03
	ld   bc, $2001                                   ; $4d7d: $01 $01 $20
	nop                                              ; $4d80: $00
	ld   b, $23                                      ; $4d81: $06 $23
	rrca                                             ; $4d83: $0f
	rrca                                             ; $4d84: $0f
	nop                                              ; $4d85: $00
	ld   bc, $ff01                                   ; $4d86: $01 $01 $ff
	rst  $38                                         ; $4d89: $ff
	rst  $38                                         ; $4d8a: $ff
	rst  $38                                         ; $4d8b: $ff
	dec  c                                           ; $4d8c: $0d
	nop                                              ; $4d8d: $00
	ld   a, [bc]                                     ; $4d8e: $0a
	add  hl, de                                      ; $4d8f: $19
	dec  b                                           ; $4d90: $05
	inc  bc                                          ; $4d91: $03
	inc  b                                           ; $4d92: $04
	ld   l, d                                        ; $4d93: $6a
	and  b                                           ; $4d94: $a0
	ld   [bc], a                                     ; $4d95: $02
	sub  l                                           ; $4d96: $95
	sbc  c                                           ; $4d97: $99
	nop                                              ; $4d98: $00
	nop                                              ; $4d99: $00
	inc  b                                           ; $4d9a: $04
	call nc, $02a0                                   ; $4d9b: $d4 $a0 $02
	sub  l                                           ; $4d9e: $95
	sbc  c                                           ; $4d9f: $99
	nop                                              ; $4da0: $00
	ld   bc, $ae02                                   ; $4da1: $01 $02 $ae
	and  b                                           ; $4da4: $a0
	ld   [bc], a                                     ; $4da5: $02
	sub  l                                           ; $4da6: $95
	sbc  c                                           ; $4da7: $99
	nop                                              ; $4da8: $00
	ld   [bc], a                                     ; $4da9: $02
	rlca                                             ; $4daa: $07
	ld   bc, $020d                                   ; $4dab: $01 $0d $02
	inc  bc                                          ; $4dae: $03
	ld   bc, $2000                                   ; $4daf: $01 $00 $20
	nop                                              ; $4db2: $00
	rlca                                             ; $4db3: $07
	ld   b, [hl]                                     ; $4db4: $46
	dec  c                                           ; $4db5: $0d
	ld   [bc], a                                     ; $4db6: $02
	inc  bc                                          ; $4db7: $03
	ld   bc, $2001                                   ; $4db8: $01 $01 $20
	nop                                              ; $4dbb: $00
	rlca                                             ; $4dbc: $07
	adc  e                                           ; $4dbd: $8b
	dec  c                                           ; $4dbe: $0d
	ld   [bc], a                                     ; $4dbf: $02
	inc  bc                                          ; $4dc0: $03
	ld   bc, $2002                                   ; $4dc1: $01 $02 $20
	nop                                              ; $4dc4: $00
	ld   b, $c7                                      ; $4dc5: $06 $c7
	dec  c                                           ; $4dc7: $0d
	rrca                                             ; $4dc8: $0f
	nop                                              ; $4dc9: $00
	ld   bc, $0201                                   ; $4dca: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4dcd: $cf
	dec  b                                           ; $4dce: $05
	ld   a, [de]                                     ; $4dcf: $1a
	ld   h, e                                        ; $4dd0: $63
	and  c                                           ; $4dd1: $a1
	ld   [hl], h                                     ; $4dd2: $74
	sbc  [hl]                                        ; $4dd3: $9e
	ld   e, b                                        ; $4dd4: $58
	ld   h, e                                        ; $4dd5: $63
	ld   h, b                                        ; $4dd6: $60
	ld   e, d                                        ; $4dd7: $5a
	dec  c                                           ; $4dd8: $0d
	jp   nz, $fbe5                                   ; $4dd9: $c2 $e5 $fb

	ldh  [$f5], a                                    ; $4ddc: $e0 $f5
	or   c                                           ; $4dde: $b1
	ld   [hl], l                                     ; $4ddf: $75
	ld   h, a                                        ; $4de0: $67
	sub  [hl]                                        ; $4de1: $96
	ld   a, e                                        ; $4de2: $7b
	sbc  a                                           ; $4de3: $9f
	dec  c                                           ; $4de4: $0d
	nop                                              ; $4de5: $00
	ld   a, [bc]                                     ; $4de6: $0a
	inc  e                                           ; $4de7: $1c
	dec  b                                           ; $4de8: $05
	inc  bc                                          ; $4de9: $03
	inc  bc                                          ; $4dea: $03
	ld   bc, $a178                                   ; $4deb: $01 $78 $a1
	sub  d                                           ; $4dee: $92
	sbc  [hl]                                        ; $4def: $9e
	ld   [$7d00], sp                                 ; $4df0: $08 $00 $7d
	and  c                                           ; $4df3: $a1
	rst  $38                                         ; $4df4: $ff
	rst  $38                                         ; $4df5: $ff
	dec  c                                           ; $4df6: $0d
	ld   [bc], a                                     ; $4df7: $02
	jr   z, jr_063_4e4c                              ; $4df8: $28 $52

	sub  b                                           ; $4dfa: $90
	and  c                                           ; $4dfb: $a1
	ld   [hl], l                                     ; $4dfc: $75
	sub  b                                           ; $4dfd: $90
	inc  bc                                          ; $4dfe: $03
	ld   l, d                                        ; $4dff: $6a
	ld   [hl], c                                     ; $4e00: $71
	ld   l, l                                        ; $4e01: $6d
	and  c                                           ; $4e02: $a1
	ld   e, c                                        ; $4e03: $59
	ld   d, d                                        ; $4e04: $52
	ld   a, b                                        ; $4e05: $78
	ld   sp, hl                                      ; $4e06: $f9
	dec  c                                           ; $4e07: $0d
	nop                                              ; $4e08: $00
	ld   a, [bc]                                     ; $4e09: $0a
	ld   b, $62                                      ; $4e0a: $06 $62
	rrca                                             ; $4e0c: $0f
	rrca                                             ; $4e0d: $0f
	nop                                              ; $4e0e: $00
	ld   bc, $0201                                   ; $4e0f: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e12: $cf
	dec  b                                           ; $4e13: $05
	ld   a, [de]                                     ; $4e14: $1a
	ld   h, e                                        ; $4e15: $63
	and  c                                           ; $4e16: $a1
	ld   [hl], h                                     ; $4e17: $74
	sbc  [hl]                                        ; $4e18: $9e
	db   $e3                                         ; $4e19: $e3
	xor  l                                           ; $4e1a: $ad
	adc  $5a                                         ; $4e1b: $ce $5a
	dec  c                                           ; $4e1d: $0d
	ld   a, c                                        ; $4e1e: $79
	ld   d, b                                        ; $4e1f: $50
	ld   [hl], c                                     ; $4e20: $71
	ld   [hl], h                                     ; $4e21: $74
	adc  h                                           ; $4e22: $8c
	ld   h, a                                        ; $4e23: $67
	sub  [hl]                                        ; $4e24: $96
	ld   a, e                                        ; $4e25: $7b
	sbc  a                                           ; $4e26: $9f
	dec  c                                           ; $4e27: $0d
	nop                                              ; $4e28: $00
	ld   a, [bc]                                     ; $4e29: $0a
	inc  e                                           ; $4e2a: $1c
	dec  b                                           ; $4e2b: $05
	inc  b                                           ; $4e2c: $04
	inc  b                                           ; $4e2d: $04
	ld   bc, $716b                                   ; $4e2e: $01 $6b $71
	ld   e, c                                        ; $4e31: $59
	ld   sp, hl                                      ; $4e32: $f9
	dec  c                                           ; $4e33: $0d
	rst  $38                                         ; $4e34: $ff
	rst  $38                                         ; $4e35: $ff
	adc  h                                           ; $4e36: $8c
	ld   d, b                                        ; $4e37: $50
	sbc  [hl]                                        ; $4e38: $9e
	ld   l, e                                        ; $4e39: $6b
	ld   d, h                                        ; $4e3a: $54
	ld   [bc], a                                     ; $4e3b: $02
	sbc  l                                           ; $4e3c: $9d
	sbc  l                                           ; $4e3d: $9d
	sbc  d                                           ; $4e3e: $9a
	sbc  c                                           ; $4e3f: $99
	halt                                             ; $4e40: $76
	dec  c                                           ; $4e41: $0d
	ld   [bc], a                                     ; $4e42: $02
	jr   z, jr_063_4e97                              ; $4e43: $28 $52

	ld   [bc], a                                     ; $4e45: $02
	and  c                                           ; $4e46: $a1
	ld   a, l                                        ; $4e47: $7d
	ld   l, c                                        ; $4e48: $69
	and  c                                           ; $4e49: $a1
	ld   a, b                                        ; $4e4a: $78
	sbc  a                                           ; $4e4b: $9f

jr_063_4e4c:
	dec  c                                           ; $4e4c: $0d
	nop                                              ; $4e4d: $00
	ld   a, [bc]                                     ; $4e4e: $0a
	ld   b, $62                                      ; $4e4f: $06 $62
	rrca                                             ; $4e51: $0f
	rrca                                             ; $4e52: $0f
	nop                                              ; $4e53: $00
	ld   bc, $0201                                   ; $4e54: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e57: $cf
	dec  b                                           ; $4e58: $05
	ld   a, [de]                                     ; $4e59: $1a
	ld   h, e                                        ; $4e5a: $63
	and  c                                           ; $4e5b: $a1
	ld   [hl], h                                     ; $4e5c: $74
	sbc  [hl]                                        ; $4e5d: $9e
	ld   [bc], a                                     ; $4e5e: $02
	xor  [hl]                                        ; $4e5f: $ae
	sub  b                                           ; $4e60: $90
	halt                                             ; $4e61: $76
	ld   e, d                                        ; $4e62: $5a
	dec  c                                           ; $4e63: $0d
	ld   e, c                                        ; $4e64: $59
	sbc  l                                           ; $4e65: $9d
	ld   d, d                                        ; $4e66: $52
	ld   d, d                                        ; $4e67: $52
	ld   [hl], l                                     ; $4e68: $75
	ld   h, a                                        ; $4e69: $67
	sub  [hl]                                        ; $4e6a: $96
	ld   a, e                                        ; $4e6b: $7b
	rst  $38                                         ; $4e6c: $ff
	rst  $38                                         ; $4e6d: $ff
	dec  c                                           ; $4e6e: $0d
	nop                                              ; $4e6f: $00
	ld   a, [bc]                                     ; $4e70: $0a
	inc  e                                           ; $4e71: $1c
	dec  b                                           ; $4e72: $05
	inc  bc                                          ; $4e73: $03
	inc  bc                                          ; $4e74: $03
	ld   bc, $546b                                   ; $4e75: $01 $6b $54
	ld   e, c                                        ; $4e78: $59
	ld   sp, hl                                      ; $4e79: $f9
	dec  c                                           ; $4e7a: $0d
	and  a                                           ; $4e7b: $a7
	jp   nz, Jump_063_6b7d                           ; $4e7c: $c2 $7d $6b

	ld   d, h                                        ; $4e7f: $54
	dec  b                                           ; $4e80: $05
	pop  de                                          ; $4e81: $d1
	ld   d, [hl]                                     ; $4e82: $56
	add  [hl]                                        ; $4e83: $86
	and  c                                           ; $4e84: $a1
	ld   e, a                                        ; $4e85: $5f
	ld   [hl], a                                     ; $4e86: $77
	ld   sp, hl                                      ; $4e87: $f9
	dec  c                                           ; $4e88: $0d
	nop                                              ; $4e89: $00
	ld   a, [bc]                                     ; $4e8a: $0a
	ld   b, $62                                      ; $4e8b: $06 $62
	rrca                                             ; $4e8d: $0f
	inc  e                                           ; $4e8e: $1c
	dec  b                                           ; $4e8f: $05
	inc  b                                           ; $4e90: $04
	inc  b                                           ; $4e91: $04
	ld   bc, $a150                                   ; $4e92: $01 $50 $a1
	adc  h                                           ; $4e95: $8c
	cp   c                                           ; $4e96: $b9

jr_063_4e97:
	rst  $28                                         ; $4e97: $ef
	cp   c                                           ; $4e98: $b9
	rst  $28                                         ; $4e99: $ef
	ld   [bc], a                                     ; $4e9a: $02
	sub  l                                           ; $4e9b: $95
	and  c                                           ; $4e9c: $a1
	halt                                             ; $4e9d: $76
	ld   d, d                                        ; $4e9e: $52
	ld   [hl], h                                     ; $4e9f: $74
	ld   a, b                                        ; $4ea0: $78
	dec  c                                           ; $4ea1: $0d
	rst  $38                                         ; $4ea2: $ff
	rst  $38                                         ; $4ea3: $ff
	adc  a                                           ; $4ea4: $8f
	ld   [hl], c                                     ; $4ea5: $71
	ld   l, a                                        ; $4ea6: $6f
	sub  c                                           ; $4ea7: $91
	rst  ToBoot                                         ; $4ea8: $c7
	xor  $99                                         ; $4ea9: $ee $99
	sub  d                                           ; $4eab: $92
	and  c                                           ; $4eac: $a1
	sbc  a                                           ; $4ead: $9f
	dec  c                                           ; $4eae: $0d
	nop                                              ; $4eaf: $00
	ld   a, [bc]                                     ; $4eb0: $0a
	ld   b, $62                                      ; $4eb1: $06 $62
	rrca                                             ; $4eb3: $0f
	rrca                                             ; $4eb4: $0f
	nop                                              ; $4eb5: $00
	ld   bc, $0201                                   ; $4eb6: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4eb9: $cf
	dec  b                                           ; $4eba: $05
	ld   a, [de]                                     ; $4ebb: $1a
	ld   h, e                                        ; $4ebc: $63
	and  c                                           ; $4ebd: $a1
	ld   a, h                                        ; $4ebe: $7c
	inc  b                                           ; $4ebf: $04
	ld   e, [hl]                                     ; $4ec0: $5e
	inc  b                                           ; $4ec1: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ec2: $cf
	ld   [hl], c                                     ; $4ec3: $71
	ld   [hl], h                                     ; $4ec4: $74
	dec  c                                           ; $4ec5: $0d
	ld   h, a                                        ; $4ec6: $67
	ld   h, d                                        ; $4ec7: $62
	ld   d, d                                        ; $4ec8: $52
	ld   [hl], l                                     ; $4ec9: $75
	ld   h, a                                        ; $4eca: $67
	sub  [hl]                                        ; $4ecb: $96
	ld   a, e                                        ; $4ecc: $7b
	rst  $38                                         ; $4ecd: $ff
	rst  $38                                         ; $4ece: $ff
	dec  c                                           ; $4ecf: $0d
	nop                                              ; $4ed0: $00
	ld   a, [bc]                                     ; $4ed1: $0a
	add  hl, de                                      ; $4ed2: $19
	dec  b                                           ; $4ed3: $05
	ld   [bc], a                                     ; $4ed4: $02
	adc  h                                           ; $4ed5: $8c
	ld   h, c                                        ; $4ed6: $61
	halt                                             ; $4ed7: $76
	ld   e, l                                        ; $4ed8: $5d
	and  c                                           ; $4ed9: $a1
	ld   e, d                                        ; $4eda: $5a
	ld   [bc], a                                     ; $4edb: $02
	sbc  d                                           ; $4edc: $9a
	ld   e, e                                        ; $4edd: $5b
	ld   [hl], l                                     ; $4ede: $75
	ld   h, a                                        ; $4edf: $67
	sub  [hl]                                        ; $4ee0: $96
	nop                                              ; $4ee1: $00
	nop                                              ; $4ee2: $00
	ld   d, [hl]                                     ; $4ee3: $56
	and  c                                           ; $4ee4: $a1
	ld   e, c                                        ; $4ee5: $59
	ld   d, d                                        ; $4ee6: $52
	ld   e, l                                        ; $4ee7: $5d
	and  c                                           ; $4ee8: $a1
	ld   e, d                                        ; $4ee9: $5a
	ld   [bc], a                                     ; $4eea: $02
	sbc  d                                           ; $4eeb: $9a
	ld   e, e                                        ; $4eec: $5b
	ld   [hl], l                                     ; $4eed: $75
	ld   h, a                                        ; $4eee: $67
	sub  [hl]                                        ; $4eef: $96
	nop                                              ; $4ef0: $00
	ld   bc, $4007                                   ; $4ef1: $01 $07 $40
	ld   c, $02                                      ; $4ef4: $0e $02
	inc  bc                                          ; $4ef6: $03
	ld   bc, $2000                                   ; $4ef7: $01 $00 $20
	nop                                              ; $4efa: $00
	rlca                                             ; $4efb: $07
	sub  l                                           ; $4efc: $95
	ld   c, $02                                      ; $4efd: $0e $02
	inc  bc                                          ; $4eff: $03
	ld   bc, $2001                                   ; $4f00: $01 $01 $20
	nop                                              ; $4f03: $00
	ld   b, $df                                      ; $4f04: $06 $df
	ld   c, $0f                                      ; $4f06: $0e $0f
	nop                                              ; $4f08: $00
	ld   bc, $8c01                                   ; $4f09: $01 $01 $8c
	ld   h, c                                        ; $4f0c: $61
	halt                                             ; $4f0d: $76
	ld   e, l                                        ; $4f0e: $5d
	and  c                                           ; $4f0f: $a1
	ld   [hl], c                                     ; $4f10: $71
	ld   [hl], h                                     ; $4f11: $74
	sbc  [hl]                                        ; $4f12: $9e
	inc  bc                                          ; $4f13: $03
	xor  l                                           ; $4f14: $ad
	inc  bc                                          ; $4f15: $03
	adc  e                                           ; $4f16: $8b
	and  b                                           ; $4f17: $a0
	dec  c                                           ; $4f18: $0d
	ld   [hl], d                                     ; $4f19: $72
	ld   d, d                                        ; $4f1a: $52
	ld   e, e                                        ; $4f1b: $5b
	sub  e                                           ; $4f1c: $93
	ld   d, h                                        ; $4f1d: $54
	ld   h, a                                        ; $4f1e: $67
	sbc  c                                           ; $4f1f: $99
	dec  c                                           ; $4f20: $0d
	ld   d, d                                        ; $4f21: $52
	ld   d, d                                        ; $4f22: $52
	ld   [bc], a                                     ; $4f23: $02
	ld   e, b                                        ; $4f24: $58
	ld   [bc], a                                     ; $4f25: $02
	ld   d, [hl]                                     ; $4f26: $56
	ld   [hl], l                                     ; $4f27: $75
	ld   h, a                                        ; $4f28: $67
	sub  [hl]                                        ; $4f29: $96
	ld   a, e                                        ; $4f2a: $7b
	sbc  a                                           ; $4f2b: $9f
	dec  c                                           ; $4f2c: $0d
	nop                                              ; $4f2d: $00
	ld   a, [bc]                                     ; $4f2e: $0a
	inc  e                                           ; $4f2f: $1c
	dec  b                                           ; $4f30: $05
	dec  b                                           ; $4f31: $05
	dec  b                                           ; $4f32: $05
	ld   bc, $546b                                   ; $4f33: $01 $6b $54
	sub  d                                           ; $4f36: $92
	sbc  [hl]                                        ; $4f37: $9e
	and  a                                           ; $4f38: $a7
	cp   [hl]                                        ; $4f39: $be
	ld   a, b                                        ; $4f3a: $78
	and  c                                           ; $4f3b: $a1
	ld   e, c                                        ; $4f3c: $59
	ld   [hl], d                                     ; $4f3d: $72
	ld   d, d                                        ; $4f3e: $52
	ld   l, l                                        ; $4f3f: $6d
	sub  a                                           ; $4f40: $97
	dec  c                                           ; $4f41: $0d
	ld   l, e                                        ; $4f42: $6b
	ld   e, l                                        ; $4f43: $5d
	sbc  [hl]                                        ; $4f44: $9e
	pop  de                                          ; $4f45: $d1
	or   b                                           ; $4f46: $b0
	ret  nc                                          ; $4f47: $d0

	push bc                                          ; $4f48: $c5
	sub  d                                           ; $4f49: $92
	ld   e, c                                        ; $4f4a: $59
	sub  a                                           ; $4f4b: $97
	ld   a, b                                        ; $4f4c: $78
	sbc  a                                           ; $4f4d: $9f
	dec  c                                           ; $4f4e: $0d
	and  a                                           ; $4f4f: $a7
	cp   [hl]                                        ; $4f50: $be
	ld   a, l                                        ; $4f51: $7d
	ld   d, b                                        ; $4f52: $50
	ld   e, c                                        ; $4f53: $59
	and  c                                           ; $4f54: $a1
	sbc  a                                           ; $4f55: $9f
	dec  c                                           ; $4f56: $0d
	nop                                              ; $4f57: $00
	ld   a, [bc]                                     ; $4f58: $0a
	ld   b, $62                                      ; $4f59: $06 $62
	rrca                                             ; $4f5b: $0f
	rrca                                             ; $4f5c: $0f
	nop                                              ; $4f5d: $00
	ld   bc, $5601                                   ; $4f5e: $01 $01 $56
	and  c                                           ; $4f61: $a1
	ld   e, c                                        ; $4f62: $59
	ld   d, d                                        ; $4f63: $52
	ld   e, l                                        ; $4f64: $5d
	and  c                                           ; $4f65: $a1
	ld   [hl], h                                     ; $4f66: $74
	sbc  [hl]                                        ; $4f67: $9e
	dec  b                                           ; $4f68: $05
	inc  de                                          ; $4f69: $13
	ld   h, l                                        ; $4f6a: $65
	ld   d, d                                        ; $4f6b: $52
	ld   [hl], l                                     ; $4f6c: $75
	ld   h, a                                        ; $4f6d: $67
	dec  c                                           ; $4f6e: $0d
	sub  [hl]                                        ; $4f6f: $96
	ld   a, e                                        ; $4f70: $7b
	sbc  a                                           ; $4f71: $9f
	inc  b                                           ; $4f72: $04
	ld   c, $02                                      ; $4f73: $0e $02
	sbc  d                                           ; $4f75: $9a
	ld   e, e                                        ; $4f76: $5b
	ld   [hl], l                                     ; $4f77: $75
	ld   h, a                                        ; $4f78: $67
	sbc  a                                           ; $4f79: $9f
	dec  c                                           ; $4f7a: $0d
	nop                                              ; $4f7b: $00
	ld   a, [bc]                                     ; $4f7c: $0a
	inc  e                                           ; $4f7d: $1c
	dec  b                                           ; $4f7e: $05
	dec  b                                           ; $4f7f: $05
	dec  b                                           ; $4f80: $05
	ld   bc, $508c                                   ; $4f81: $01 $8c $50
	ld   a, b                                        ; $4f84: $78
	sbc  a                                           ; $4f85: $9f
	dec  c                                           ; $4f86: $0d
	inc  bc                                          ; $4f87: $03
	add  d                                           ; $4f88: $82
	and  b                                           ; $4f89: $a0
	dec  b                                           ; $4f8a: $05
	inc  de                                          ; $4f8b: $13
	ld   h, l                                        ; $4f8c: $65
	adc  h                                           ; $4f8d: $8c
	ld   l, c                                        ; $4f8e: $69
	sbc  c                                           ; $4f8f: $99
	ld   l, l                                        ; $4f90: $6d
	adc  a                                           ; $4f91: $8f
	ld   a, h                                        ; $4f92: $7c
	inc  b                                           ; $4f93: $04
	ld   e, [hl]                                     ; $4f94: $5e
	inc  b                                           ; $4f95: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f96: $cf
	sub  b                                           ; $4f97: $90
	dec  c                                           ; $4f98: $0d
	ld   d, [hl]                                     ; $4f99: $56
	ld   d, [hl]                                     ; $4f9a: $56
	sub  b                                           ; $4f9b: $90
	and  c                                           ; $4f9c: $a1
	sub  d                                           ; $4f9d: $92
	sbc  e                                           ; $4f9e: $9b
	ld   sp, hl                                      ; $4f9f: $f9
	dec  c                                           ; $4fa0: $0d
	nop                                              ; $4fa1: $00
	ld   a, [bc]                                     ; $4fa2: $0a
	ld   b, $62                                      ; $4fa3: $06 $62
	rrca                                             ; $4fa5: $0f
	inc  e                                           ; $4fa6: $1c
	dec  b                                           ; $4fa7: $05
	dec  b                                           ; $4fa8: $05
	dec  b                                           ; $4fa9: $05
	ld   bc, $9a54                                   ; $4faa: $01 $54 $9a
	ld   h, l                                        ; $4fad: $65
	ld   d, d                                        ; $4fae: $52
	ld   h, c                                        ; $4faf: $61
	halt                                             ; $4fb0: $76
	ld   [bc], a                                     ; $4fb1: $02
	sbc  l                                           ; $4fb2: $9d
	ld   d, h                                        ; $4fb3: $54
	ld   [hl], h                                     ; $4fb4: $74
	dec  c                                           ; $4fb5: $0d
	ld   e, l                                        ; $4fb6: $5d
	sbc  d                                           ; $4fb7: $9a
	sbc  c                                           ; $4fb8: $99
	sub  d                                           ; $4fb9: $92
	and  c                                           ; $4fba: $a1
	sbc  a                                           ; $4fbb: $9f
	dec  c                                           ; $4fbc: $0d
	nop                                              ; $4fbd: $00
	ld   a, [bc]                                     ; $4fbe: $0a
	ld   bc, $0008                                   ; $4fbf: $01 $08 $00
	ld   a, l                                        ; $4fc2: $7d
	and  c                                           ; $4fc3: $a1
	adc  l                                           ; $4fc4: $8d
	ld   l, l                                        ; $4fc5: $6d
	ld   d, d                                        ; $4fc6: $52
	ld   a, b                                        ; $4fc7: $78
	inc  bc                                          ; $4fc8: $03
	add  d                                           ; $4fc9: $82
	ld   e, d                                        ; $4fca: $5a
	dec  c                                           ; $4fcb: $0d
	and  a                                           ; $4fcc: $a7
	jp   nz, $037c                                   ; $4fcd: $c2 $7c $03

	ld   e, e                                        ; $4fd0: $5b
	inc  bc                                          ; $4fd1: $03
	ld   l, e                                        ; $4fd2: $6b
	ld   a, c                                        ; $4fd3: $79
	ld   a, b                                        ; $4fd4: $78
	ld   [hl], c                                     ; $4fd5: $71
	ld   [hl], h                                     ; $4fd6: $74
	ld   e, l                                        ; $4fd7: $5d
	sbc  d                                           ; $4fd8: $9a
	ld   l, l                                        ; $4fd9: $6d
	sub  a                                           ; $4fda: $97
	dec  c                                           ; $4fdb: $0d
	ld   d, [hl]                                     ; $4fdc: $56
	ld   d, [hl]                                     ; $4fdd: $56
	ld   a, h                                        ; $4fde: $7c
	ld   a, c                                        ; $4fdf: $79
	ld   a, b                                        ; $4fe0: $78
	ld   c, a                                        ; $4fe1: $4f
	rst  $38                                         ; $4fe2: $ff
	rst  $38                                         ; $4fe3: $ff
	dec  c                                           ; $4fe4: $0d
	nop                                              ; $4fe5: $00
	ld   a, [bc]                                     ; $4fe6: $0a
	ld   b, $62                                      ; $4fe7: $06 $62
	rrca                                             ; $4fe9: $0f
	rrca                                             ; $4fea: $0f
	nop                                              ; $4feb: $00
	ld   bc, $ff01                                   ; $4fec: $01 $01 $ff
	rst  $38                                         ; $4fef: $ff
	ld   a, b                                        ; $4ff0: $78
	and  c                                           ; $4ff1: $a1
	ld   [hl], l                                     ; $4ff2: $75
	sub  b                                           ; $4ff3: $90
	ld   d, b                                        ; $4ff4: $50
	sbc  b                                           ; $4ff5: $98
	adc  h                                           ; $4ff6: $8c
	ld   l, c                                        ; $4ff7: $69
	and  c                                           ; $4ff8: $a1
	sbc  a                                           ; $4ff9: $9f
	dec  c                                           ; $4ffa: $0d
	nop                                              ; $4ffb: $00
	ld   a, [bc]                                     ; $4ffc: $0a
	inc  e                                           ; $4ffd: $1c
	dec  b                                           ; $4ffe: $05
	ld   [bc], a                                     ; $4fff: $02
	ld   [bc], a                                     ; $5000: $02
	ld   bc, $0008                                   ; $5001: $01 $08 $00
	ld   a, l                                        ; $5004: $7d
	and  c                                           ; $5005: $a1
	sbc  [hl]                                        ; $5006: $9e
	ld   [bc], a                                     ; $5007: $02
	sbc  l                                           ; $5008: $9d
	ld   e, b                                        ; $5009: $58
	ld   d, h                                        ; $500a: $54
	halt                                             ; $500b: $76
	ld   h, l                                        ; $500c: $65
	ld   l, l                                        ; $500d: $6d
	dec  c                                           ; $500e: $0d
	ld   h, c                                        ; $500f: $61
	halt                                             ; $5010: $76
	ld   a, h                                        ; $5011: $7c
	adc  l                                           ; $5012: $8d
	ld   h, c                                        ; $5013: $61
	adc  [hl]                                        ; $5014: $8e
	ld   a, h                                        ; $5015: $7c
	ld   a, l                                        ; $5016: $7d
	sbc  [hl]                                        ; $5017: $9e
	ld   d, b                                        ; $5018: $50
	and  c                                           ; $5019: $a1
	adc  h                                           ; $501a: $8c
	ld   h, l                                        ; $501b: $65
	dec  c                                           ; $501c: $0d
	inc  b                                           ; $501d: $04
	dec  c                                           ; $501e: $0d
	ld   a, c                                        ; $501f: $79
	sub  [hl]                                        ; $5020: $96
	ld   e, l                                        ; $5021: $5d
	ld   a, b                                        ; $5022: $78
	ld   d, d                                        ; $5023: $52
	ld   [hl], l                                     ; $5024: $75
	sbc  a                                           ; $5025: $9f
	dec  c                                           ; $5026: $0d
	nop                                              ; $5027: $00
	ld   a, [bc]                                     ; $5028: $0a
	rlca                                             ; $5029: $07
	or   a                                           ; $502a: $b7
	rrca                                             ; $502b: $0f
	inc  bc                                          ; $502c: $03
	dec  d                                           ; $502d: $15
	ld   bc, $25b4                                   ; $502e: $01 $b4 $25
	nop                                              ; $5031: $00
	inc  e                                           ; $5032: $1c
	dec  b                                           ; $5033: $05
	nop                                              ; $5034: $00
	nop                                              ; $5035: $00
	ld   bc, $9b6b                                   ; $5036: $01 $6b $9b
	ld   l, e                                        ; $5039: $6b
	sbc  e                                           ; $503a: $9b
	sbc  [hl]                                        ; $503b: $9e
	ld   [bc], a                                     ; $503c: $02
	or   l                                           ; $503d: $b5
	sbc  e                                           ; $503e: $9b
	ld   e, c                                        ; $503f: $59
	sbc  a                                           ; $5040: $9f
	dec  c                                           ; $5041: $0d
	nop                                              ; $5042: $00
	ld   a, [bc]                                     ; $5043: $0a
	dec  c                                           ; $5044: $0d
	nop                                              ; $5045: $00
	nop                                              ; $5046: $00
	rrca                                             ; $5047: $0f
	nop                                              ; $5048: $00
	ld   bc, $020c                                   ; $5049: $01 $0c $02
	ld   c, $06                                      ; $504c: $0e $06
	inc  e                                           ; $504e: $1c
	dec  b                                           ; $504f: $05
	ld   bc, $0101                                   ; $5050: $01 $01 $01
	ld   [bc], a                                     ; $5053: $02
	and  l                                           ; $5054: $a5
	inc  b                                           ; $5055: $04
	xor  d                                           ; $5056: $aa
	ld   a, l                                        ; $5057: $7d
	sbc  [hl]                                        ; $5058: $9e
	ld   [hl], d                                     ; $5059: $72
	ld   e, e                                        ; $505a: $5b
	ld   d, b                                        ; $505b: $50
	ld   [hl], c                                     ; $505c: $71
	ld   [hl], h                                     ; $505d: $74
	ld   e, l                                        ; $505e: $5d
	sbc  d                                           ; $505f: $9a
	ld   [hl], h                                     ; $5060: $74
	dec  c                                           ; $5061: $0d
	nop                                              ; $5062: $00
	dec  b                                           ; $5063: $05
	add  b                                           ; $5064: $80
	jr   c, @+$03                                    ; $5065: $38 $01

	ld   bc, $0100                                   ; $5067: $01 $00 $01
	ld   d, b                                        ; $506a: $50
	sbc  b                                           ; $506b: $98
	ld   e, d                                        ; $506c: $5a
	halt                                             ; $506d: $76
	ld   d, h                                        ; $506e: $54
	sbc  a                                           ; $506f: $9f
	dec  c                                           ; $5070: $0d
	nop                                              ; $5071: $00
	ld   a, [bc]                                     ; $5072: $0a
	dec  c                                           ; $5073: $0d
	nop                                              ; $5074: $00
	nop                                              ; $5075: $00
	rrca                                             ; $5076: $0f
	nop                                              ; $5077: $00
	ld   bc, $1e09                                   ; $5078: $01 $09 $1e
	add  hl, hl                                      ; $507b: $29
	nop                                              ; $507c: $00

Jump_063_507d:
	nop                                              ; $507d: $00
	inc  e                                           ; $507e: $1c
	dec  b                                           ; $507f: $05
	nop                                              ; $5080: $00
	nop                                              ; $5081: $00
	ld   bc, $9b6b                                   ; $5082: $01 $6b $9b
	ld   l, e                                        ; $5085: $6b
	sbc  e                                           ; $5086: $9b
	inc  bc                                          ; $5087: $03
	add  b                                           ; $5088: $80
	sub  [hl]                                        ; $5089: $96
	ld   e, c                                        ; $508a: $59
	sbc  a                                           ; $508b: $9f
	dec  c                                           ; $508c: $0d
	nop                                              ; $508d: $00
	ld   a, [bc]                                     ; $508e: $0a
	dec  c                                           ; $508f: $0d

Jump_063_5090:
	nop                                              ; $5090: $00
	nop                                              ; $5091: $00
	rrca                                             ; $5092: $0f
	nop                                              ; $5093: $00
	ld   bc, $9623                                   ; $5094: $01 $23 $96
	inc  e                                           ; $5097: $1c
	dec  b                                           ; $5098: $05
	nop                                              ; $5099: $00
	nop                                              ; $509a: $00
	ld   bc, $7463                                   ; $509b: $01 $63 $74
	halt                                             ; $509e: $76
	rst  $38                                         ; $509f: $ff
	rst  $38                                         ; $50a0: $ff
	dec  c                                           ; $50a1: $0d
	nop                                              ; $50a2: $00
	inc  e                                           ; $50a3: $1c
	dec  b                                           ; $50a4: $05
	inc  bc                                          ; $50a5: $03
	inc  bc                                          ; $50a6: $03
	ld   bc, $fa50                                   ; $50a7: $01 $50 $fa
	db   $10                                         ; $50aa: $10
	ld   l, e                                        ; $50ab: $6b
	ld   d, h                                        ; $50ac: $54
	sub  d                                           ; $50ad: $92
	ld   a, [$000d]                                  ; $50ae: $fa $0d $00
	ld   a, [bc]                                     ; $50b1: $0a
	ld   bc, $9802                                   ; $50b2: $01 $02 $98
	sub  d                                           ; $50b5: $92
	ld   h, l                                        ; $50b6: $65
	ld   e, e                                        ; $50b7: $5b
	inc  bc                                          ; $50b8: $03
	add  l                                           ; $50b9: $85
	inc  b                                           ; $50ba: $04
	sub  l                                           ; $50bb: $95
	ld   a, c                                        ; $50bc: $79
	dec  c                                           ; $50bd: $0d
	inc  b                                           ; $50be: $04
	di                                               ; $50bf: $f3
	ld   e, d                                        ; $50c0: $5a
	ld   d, b                                        ; $50c1: $50
	ld   [hl], c                                     ; $50c2: $71
	ld   l, l                                        ; $50c3: $6d
	and  c                                           ; $50c4: $a1
	sub  d                                           ; $50c5: $92
	sbc  a                                           ; $50c6: $9f
	dec  c                                           ; $50c7: $0d
	nop                                              ; $50c8: $00
	inc  e                                           ; $50c9: $1c
	dec  b                                           ; $50ca: $05
	nop                                              ; $50cb: $00
	nop                                              ; $50cc: $00
	ld   bc, $956f                                   ; $50cd: $01 $6f $95
	ld   [hl], c                                     ; $50d0: $71
	halt                                             ; $50d1: $76
	sbc  [hl]                                        ; $50d2: $9e
	ld   [hl], d                                     ; $50d3: $72
	ld   e, e                                        ; $50d4: $5b
	ld   d, b                                        ; $50d5: $50
	ld   [hl], c                                     ; $50d6: $71
	ld   [hl], h                                     ; $50d7: $74
	sbc  a                                           ; $50d8: $9f
	dec  c                                           ; $50d9: $0d
	nop                                              ; $50da: $00
	ld   a, [bc]                                     ; $50db: $0a
	dec  c                                           ; $50dc: $0d
	nop                                              ; $50dd: $00
	nop                                              ; $50de: $00
	rrca                                             ; $50df: $0f
	nop                                              ; $50e0: $00
	ld   bc, $9923                                   ; $50e1: $01 $23 $99
	inc  e                                           ; $50e4: $1c
	dec  b                                           ; $50e5: $05
	nop                                              ; $50e6: $00
	nop                                              ; $50e7: $00
	ld   bc, $a161                                   ; $50e8: $01 $61 $a1
	ld   [hl], a                                     ; $50eb: $77
	ld   a, h                                        ; $50ec: $7c
	inc  b                                           ; $50ed: $04
	ld   e, [hl]                                     ; $50ee: $5e
	inc  b                                           ; $50ef: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $50f0: $cf
	ld   a, c                                        ; $50f1: $79
	inc  bc                                          ; $50f2: $03
	xor  [hl]                                        ; $50f3: $ae
	ld   d, h                                        ; $50f4: $54
	inc  bc                                          ; $50f5: $03
	jr   nc, jr_063_50fd                             ; $50f6: $30 $05

	ld   [bc], a                                     ; $50f8: $02
	and  b                                           ; $50f9: $a0
	dec  c                                           ; $50fa: $0d
	ld   h, e                                        ; $50fb: $63
	ld   e, d                                        ; $50fc: $5a

jr_063_50fd:
	ld   h, a                                        ; $50fd: $67
	and  c                                           ; $50fe: $a1
	sub  d                                           ; $50ff: $92
	sbc  a                                           ; $5100: $9f
	dec  c                                           ; $5101: $0d
	nop                                              ; $5102: $00
	ld   a, [bc]                                     ; $5103: $0a
	ld   bc, $8c67                                   ; $5104: $01 $67 $8c
	and  c                                           ; $5107: $a1
	ld   e, a                                        ; $5108: $5f
	ld   [hl], a                                     ; $5109: $77
	ld   [bc], a                                     ; $510a: $02
	and  l                                           ; $510b: $a5
	ld   e, c                                        ; $510c: $59
	sub  a                                           ; $510d: $97
	ld   [bc], a                                     ; $510e: $02
	sbc  l                                           ; $510f: $9d
	ld   d, h                                        ; $5110: $54
	inc  bc                                          ; $5111: $03
	jr   nc, jr_063_5119                             ; $5112: $30 $05

	ld   [bc], a                                     ; $5114: $02
	and  b                                           ; $5115: $a0
	dec  c                                           ; $5116: $0d
	ld   h, e                                        ; $5117: $63
	ld   e, d                                        ; $5118: $5a

jr_063_5119:
	ld   h, l                                        ; $5119: $65
	ld   [hl], h                                     ; $511a: $74
	ld   e, l                                        ; $511b: $5d
	sbc  d                                           ; $511c: $9a
	add  [hl]                                        ; $511d: $86
	and  c                                           ; $511e: $a1
	ld   e, c                                        ; $511f: $59
	sbc  a                                           ; $5120: $9f
	dec  c                                           ; $5121: $0d
	nop                                              ; $5122: $00
	ld   a, [bc]                                     ; $5123: $0a
	dec  b                                           ; $5124: $05
	ld   b, b                                        ; $5125: $40
	rst  $38                                         ; $5126: $ff
	ld   bc, $0000                                   ; $5127: $01 $00 $00
	ld   bc, $0803                                   ; $512a: $01 $03 $08
	ld   [bc], a                                     ; $512d: $02
	dec  sp                                          ; $512e: $3b
	and  b                                           ; $512f: $a0
	ld   a, [bc]                                     ; $5130: $0a
	ld   [bc], a                                     ; $5131: $02
	ld   [de], a                                     ; $5132: $12
	inc  d                                           ; $5133: $14
	db   $e3                                         ; $5134: $e3
	ei                                               ; $5135: $fb
	ret                                              ; $5136: $c9


	db   $ed                                         ; $5137: $ed
	ld   a, [bc]                                     ; $5138: $0a
	inc  bc                                          ; $5139: $03
	ld   a, c                                        ; $513a: $79
	dec  c                                           ; $513b: $0d
	xor  e                                           ; $513c: $ab
	and  l                                           ; $513d: $a5
	db   $ed                                         ; $513e: $ed
	and  b                                           ; $513f: $a0
	ld   a, [bc]                                     ; $5140: $0a
	ld   [bc], a                                     ; $5141: $02
	dec  d                                           ; $5142: $15
	db   $ec                                         ; $5143: $ec
	call nz, $edc9                                   ; $5144: $c4 $c9 $ed
	ld   a, [bc]                                     ; $5147: $0a
	inc  bc                                          ; $5148: $03
	sbc  [hl]                                        ; $5149: $9e
	dec  c                                           ; $514a: $0d
	db   $dd                                         ; $514b: $dd
	db   $ed                                         ; $514c: $ed
	ret                                              ; $514d: $c9


	and  b                                           ; $514e: $a0
	ld   a, [bc]                                     ; $514f: $0a
	ld   [bc], a                                     ; $5150: $02
	ld   [de], a                                     ; $5151: $12
	ld   d, $04                                      ; $5152: $16 $04
	adc  a                                           ; $5154: $8f
	ld   a, [bc]                                     ; $5155: $0a
	inc  bc                                          ; $5156: $03
	sub  d                                           ; $5157: $92
	sbc  a                                           ; $5158: $9f
	dec  c                                           ; $5159: $0d
	nop                                              ; $515a: $00
	ld   a, [bc]                                     ; $515b: $0a
	dec  c                                           ; $515c: $0d
	nop                                              ; $515d: $00
	nop                                              ; $515e: $00
	rrca                                             ; $515f: $0f
	nop                                              ; $5160: $00
	ld   bc, $0b0c                                   ; $5161: $01 $0c $0b
	ld   bc, $688c                                   ; $5164: $01 $8c $68
	ld   a, l                                        ; $5167: $7d
	inc  bc                                          ; $5168: $03
	ld   [$3b02], sp                                 ; $5169: $08 $02 $3b
	and  b                                           ; $516c: $a0
	rst  $38                                         ; $516d: $ff
	rst  $38                                         ; $516e: $ff
	dec  c                                           ; $516f: $0d
	nop                                              ; $5170: $00
	ld   a, [bc]                                     ; $5171: $0a
	add  hl, de                                      ; $5172: $19
	dec  b                                           ; $5173: $05
	inc  bc                                          ; $5174: $03
	ld   [de], a                                     ; $5175: $12
	inc  d                                           ; $5176: $14
	db   $e3                                         ; $5177: $e3
	ei                                               ; $5178: $fb
	ret                                              ; $5179: $c9


	db   $ed                                         ; $517a: $ed
	nop                                              ; $517b: $00
	nop                                              ; $517c: $00
	ld   [de], a                                     ; $517d: $12
	dec  d                                           ; $517e: $15
	db   $e3                                         ; $517f: $e3
	ei                                               ; $5180: $fb
	ret                                              ; $5181: $c9


	db   $ed                                         ; $5182: $ed
	nop                                              ; $5183: $00
	ld   bc, $1413                                   ; $5184: $01 $13 $14
	db   $e3                                         ; $5187: $e3
	ei                                               ; $5188: $fb
	db   $ed                                         ; $5189: $ed
	nop                                              ; $518a: $00
	ld   [bc], a                                     ; $518b: $02
	rlca                                             ; $518c: $07
	db   $e3                                         ; $518d: $e3
	db   $10                                         ; $518e: $10
	ld   [bc], a                                     ; $518f: $02
	inc  bc                                          ; $5190: $03
	ld   bc, $2000                                   ; $5191: $01 $00 $20
	nop                                              ; $5194: $00
	rlca                                             ; $5195: $07
	dec  bc                                          ; $5196: $0b
	ld   de, $0302                                   ; $5197: $11 $02 $03
	ld   bc, $2001                                   ; $519a: $01 $01 $20
	nop                                              ; $519d: $00
	rlca                                             ; $519e: $07
	ld   [hl-], a                                    ; $519f: $32
	ld   de, $0302                                   ; $51a0: $11 $02 $03
	ld   bc, $2002                                   ; $51a3: $01 $02 $20
	nop                                              ; $51a6: $00
	ld   b, $d8                                      ; $51a7: $06 $d8
	ld   [de], a                                     ; $51a9: $12
	rrca                                             ; $51aa: $0f
	nop                                              ; $51ab: $00
	ld   bc, $1201                                   ; $51ac: $01 $01 $12
	inc  d                                           ; $51af: $14
	db   $e3                                         ; $51b0: $e3
	ei                                               ; $51b1: $fb
	ret                                              ; $51b2: $c9


	db   $ed                                         ; $51b3: $ed
	ld   l, [hl]                                     ; $51b4: $6e
	ld   a, b                                        ; $51b5: $78
	sbc  a                                           ; $51b6: $9f
	dec  c                                           ; $51b7: $0d
	nop                                              ; $51b8: $00
	dec  b                                           ; $51b9: $05
	ld   b, b                                        ; $51ba: $40
	rst  $38                                         ; $51bb: $ff
	inc  bc                                          ; $51bc: $03
	rst  $38                                         ; $51bd: $ff
	ld   bc, $2801                                   ; $51be: $01 $01 $28
	nop                                              ; $51c1: $00
	ld   bc, $6803                                   ; $51c2: $01 $03 $68
	ld   a, c                                        ; $51c5: $79
	xor  e                                           ; $51c6: $ab
	and  l                                           ; $51c7: $a5
	db   $ed                                         ; $51c8: $ed
	and  b                                           ; $51c9: $a0
	rst  $38                                         ; $51ca: $ff
	rst  $38                                         ; $51cb: $ff
	dec  c                                           ; $51cc: $0d
	nop                                              ; $51cd: $00
	ld   a, [bc]                                     ; $51ce: $0a
	ld   b, $59                                      ; $51cf: $06 $59
	ld   de, $000f                                   ; $51d1: $11 $0f $00
	ld   bc, $1201                                   ; $51d4: $01 $01 $12
	dec  d                                           ; $51d7: $15
	db   $e3                                         ; $51d8: $e3
	ei                                               ; $51d9: $fb
	ret                                              ; $51da: $c9


	db   $ed                                         ; $51db: $ed
	rst  $38                                         ; $51dc: $ff
	ld   l, [hl]                                     ; $51dd: $6e
	ld   [hl], c                                     ; $51de: $71
	ld   e, a                                        ; $51df: $5f
	rst  $38                                         ; $51e0: $ff
	rst  $38                                         ; $51e1: $ff
	dec  c                                           ; $51e2: $0d
	adc  h                                           ; $51e3: $8c
	sbc  [hl]                                        ; $51e4: $9e
	ld   d, d                                        ; $51e5: $52
	ld   d, d                                        ; $51e6: $52
	sub  d                                           ; $51e7: $92
	sbc  a                                           ; $51e8: $9f
	dec  c                                           ; $51e9: $0d
	inc  bc                                          ; $51ea: $03
	ld   l, b                                        ; $51eb: $68
	ld   a, c                                        ; $51ec: $79
	xor  e                                           ; $51ed: $ab
	and  l                                           ; $51ee: $a5
	db   $ed                                         ; $51ef: $ed
	and  b                                           ; $51f0: $a0
	rst  $38                                         ; $51f1: $ff
	rst  $38                                         ; $51f2: $ff
	dec  c                                           ; $51f3: $0d
	nop                                              ; $51f4: $00
	ld   a, [bc]                                     ; $51f5: $0a
	ld   b, $59                                      ; $51f6: $06 $59
	ld   de, $000f                                   ; $51f8: $11 $0f $00
	ld   bc, $1301                                   ; $51fb: $01 $01 $13
	inc  d                                           ; $51fe: $14
	db   $e3                                         ; $51ff: $e3
	ei                                               ; $5200: $fb
	ret                                              ; $5201: $c9


	db   $ed                                         ; $5202: $ed
	rst  $38                                         ; $5203: $ff
	ld   l, [hl]                                     ; $5204: $6e
	ld   [hl], c                                     ; $5205: $71
	ld   e, a                                        ; $5206: $5f
	rst  $38                                         ; $5207: $ff
	rst  $38                                         ; $5208: $ff
	dec  c                                           ; $5209: $0d
	adc  h                                           ; $520a: $8c
	sbc  [hl]                                        ; $520b: $9e
	ld   d, d                                        ; $520c: $52
	ld   d, d                                        ; $520d: $52
	sub  d                                           ; $520e: $92
	sbc  a                                           ; $520f: $9f
	dec  c                                           ; $5210: $0d
	inc  bc                                          ; $5211: $03
	ld   l, b                                        ; $5212: $68
	ld   a, c                                        ; $5213: $79
	xor  e                                           ; $5214: $ab
	and  l                                           ; $5215: $a5
	db   $ed                                         ; $5216: $ed
	and  b                                           ; $5217: $a0
	rst  $38                                         ; $5218: $ff
	rst  $38                                         ; $5219: $ff
	dec  c                                           ; $521a: $0d
	nop                                              ; $521b: $00
	ld   a, [bc]                                     ; $521c: $0a
	ld   b, $59                                      ; $521d: $06 $59
	ld   de, $0519                                   ; $521f: $11 $19 $05
	inc  bc                                          ; $5222: $03
	dec  d                                           ; $5223: $15
	db   $ec                                         ; $5224: $ec
	call nz, $edc9                                   ; $5225: $c4 $c9 $ed
	nop                                              ; $5228: $00
	nop                                              ; $5229: $00
	dec  d                                           ; $522a: $15
	ldh  [$ec], a                                    ; $522b: $e0 $ec
	db   $ec                                         ; $522d: $ec
	call nz, $edc9                                   ; $522e: $c4 $c9 $ed
	nop                                              ; $5231: $00
	ld   bc, $ec15                                   ; $5232: $01 $15 $ec
	call nz, $f5c9                                   ; $5235: $c4 $c9 $f5
	nop                                              ; $5238: $00
	ld   [bc], a                                     ; $5239: $02
	rlca                                             ; $523a: $07
	sub  c                                           ; $523b: $91
	ld   de, $0302                                   ; $523c: $11 $02 $03
	ld   bc, $2000                                   ; $523f: $01 $00 $20
	nop                                              ; $5242: $00
	rlca                                             ; $5243: $07
	cp   d                                           ; $5244: $ba
	ld   de, $0302                                   ; $5245: $11 $02 $03
	ld   bc, $2001                                   ; $5248: $01 $01 $20
	nop                                              ; $524b: $00
	rlca                                             ; $524c: $07
	db   $e4                                         ; $524d: $e4
	ld   de, $0302                                   ; $524e: $11 $02 $03
	ld   bc, $2002                                   ; $5251: $01 $02 $20
	nop                                              ; $5254: $00
	ld   b, $d8                                      ; $5255: $06 $d8
	ld   [de], a                                     ; $5257: $12
	rrca                                             ; $5258: $0f
	nop                                              ; $5259: $00
	ld   bc, $1501                                   ; $525a: $01 $01 $15
	db   $ec                                         ; $525d: $ec
	call nz, $edc9                                   ; $525e: $c4 $c9 $ed
	ld   l, [hl]                                     ; $5261: $6e
	ld   a, b                                        ; $5262: $78
	sbc  a                                           ; $5263: $9f
	dec  c                                           ; $5264: $0d
	nop                                              ; $5265: $00
	dec  b                                           ; $5266: $05
	ld   b, b                                        ; $5267: $40
	rst  $38                                         ; $5268: $ff
	inc  bc                                          ; $5269: $03
	rst  $38                                         ; $526a: $ff
	ld   bc, $2801                                   ; $526b: $01 $01 $28
	nop                                              ; $526e: $00
	ld   bc, $6903                                   ; $526f: $01 $03 $69
	ld   [bc], a                                     ; $5272: $02
	xor  d                                           ; $5273: $aa
	ld   a, c                                        ; $5274: $79
	db   $dd                                         ; $5275: $dd
	db   $ed                                         ; $5276: $ed
	ret                                              ; $5277: $c9


	and  b                                           ; $5278: $a0
	rst  $38                                         ; $5279: $ff
	rst  $38                                         ; $527a: $ff
	dec  c                                           ; $527b: $0d
	nop                                              ; $527c: $00
	ld   a, [bc]                                     ; $527d: $0a
	ld   b, $19                                      ; $527e: $06 $19
	ld   [de], a                                     ; $5280: $12
	rrca                                             ; $5281: $0f
	nop                                              ; $5282: $00
	ld   bc, $1501                                   ; $5283: $01 $01 $15
	ldh  [$ec], a                                    ; $5286: $e0 $ec
	db   $ec                                         ; $5288: $ec
	call nz, $edc9                                   ; $5289: $c4 $c9 $ed
	rst  $38                                         ; $528c: $ff
	ld   l, [hl]                                     ; $528d: $6e
	ld   [hl], c                                     ; $528e: $71
	ld   e, a                                        ; $528f: $5f
	rst  $38                                         ; $5290: $ff
	rst  $38                                         ; $5291: $ff
	dec  c                                           ; $5292: $0d
	adc  h                                           ; $5293: $8c
	sbc  [hl]                                        ; $5294: $9e
	ld   d, d                                        ; $5295: $52
	ld   d, d                                        ; $5296: $52
	sub  d                                           ; $5297: $92
	sbc  a                                           ; $5298: $9f
	dec  c                                           ; $5299: $0d
	inc  bc                                          ; $529a: $03
	ld   l, c                                        ; $529b: $69
	ld   [bc], a                                     ; $529c: $02
	xor  d                                           ; $529d: $aa
	ld   a, c                                        ; $529e: $79
	db   $dd                                         ; $529f: $dd
	db   $ed                                         ; $52a0: $ed
	ret                                              ; $52a1: $c9


	and  b                                           ; $52a2: $a0
	rst  $38                                         ; $52a3: $ff
	rst  $38                                         ; $52a4: $ff
	dec  c                                           ; $52a5: $0d
	nop                                              ; $52a6: $00
	ld   a, [bc]                                     ; $52a7: $0a
	ld   b, $19                                      ; $52a8: $06 $19
	ld   [de], a                                     ; $52aa: $12
	rrca                                             ; $52ab: $0f
	nop                                              ; $52ac: $00
	ld   bc, $1501                                   ; $52ad: $01 $01 $15
	db   $ec                                         ; $52b0: $ec
	call nz, $f5c9                                   ; $52b1: $c4 $c9 $f5
	rst  $38                                         ; $52b4: $ff
	rst  $38                                         ; $52b5: $ff
	db   $ec                                         ; $52b6: $ec
	call nz, $f5c9                                   ; $52b7: $c4 $c9 $f5
	ld   a, b                                        ; $52ba: $78
	and  c                                           ; $52bb: $a1
	ld   [hl], h                                     ; $52bc: $74
	dec  c                                           ; $52bd: $0d
	dec  b                                           ; $52be: $05
	ld   c, l                                        ; $52bf: $4d
	dec  b                                           ; $52c0: $05
	daa                                              ; $52c1: $27
	ld   d, b                                        ; $52c2: $50
	ld   [hl], c                                     ; $52c3: $71
	ld   l, l                                        ; $52c4: $6d
	ld   [hl], c                                     ; $52c5: $71
	ld   e, a                                        ; $52c6: $5f
	ld   sp, hl                                      ; $52c7: $f9
	adc  h                                           ; $52c8: $8c
	ld   d, b                                        ; $52c9: $50
	ld   d, d                                        ; $52ca: $52
	ld   d, d                                        ; $52cb: $52
	sub  d                                           ; $52cc: $92
	sbc  a                                           ; $52cd: $9f
	dec  c                                           ; $52ce: $0d
	inc  bc                                          ; $52cf: $03
	ld   l, c                                        ; $52d0: $69
	ld   [bc], a                                     ; $52d1: $02
	xor  d                                           ; $52d2: $aa
	ld   a, c                                        ; $52d3: $79
	db   $dd                                         ; $52d4: $dd
	db   $ed                                         ; $52d5: $ed
	ret                                              ; $52d6: $c9


	and  b                                           ; $52d7: $a0
	rst  $38                                         ; $52d8: $ff
	rst  $38                                         ; $52d9: $ff
	dec  c                                           ; $52da: $0d
	nop                                              ; $52db: $00
	ld   a, [bc]                                     ; $52dc: $0a
	ld   b, $19                                      ; $52dd: $06 $19
	ld   [de], a                                     ; $52df: $12
	add  hl, de                                      ; $52e0: $19
	dec  b                                           ; $52e1: $05
	inc  bc                                          ; $52e2: $03
	ld   [de], a                                     ; $52e3: $12
	ld   d, $04                                      ; $52e4: $16 $04
	adc  a                                           ; $52e6: $8f
	nop                                              ; $52e7: $00
	nop                                              ; $52e8: $00
	ld   [de], a                                     ; $52e9: $12
	rla                                              ; $52ea: $17
	inc  b                                           ; $52eb: $04
	adc  a                                           ; $52ec: $8f
	nop                                              ; $52ed: $00
	ld   bc, $1812                                   ; $52ee: $01 $12 $18
	inc  b                                           ; $52f1: $04
	adc  a                                           ; $52f2: $8f
	nop                                              ; $52f3: $00
	ld   [bc], a                                     ; $52f4: $02
	rlca                                             ; $52f5: $07
	ld   c, h                                        ; $52f6: $4c
	ld   [de], a                                     ; $52f7: $12
	ld   [bc], a                                     ; $52f8: $02
	inc  bc                                          ; $52f9: $03
	ld   bc, $2000                                   ; $52fa: $01 $00 $20
	nop                                              ; $52fd: $00
	rlca                                             ; $52fe: $07
	ld   a, [hl]                                     ; $52ff: $7e
	ld   [de], a                                     ; $5300: $12
	ld   [bc], a                                     ; $5301: $02
	inc  bc                                          ; $5302: $03
	ld   bc, $2001                                   ; $5303: $01 $01 $20
	nop                                              ; $5306: $00
	rlca                                             ; $5307: $07
	xor  e                                           ; $5308: $ab
	ld   [de], a                                     ; $5309: $12
	ld   [bc], a                                     ; $530a: $02
	inc  bc                                          ; $530b: $03
	ld   bc, $2002                                   ; $530c: $01 $02 $20
	nop                                              ; $530f: $00
	ld   b, $d8                                      ; $5310: $06 $d8
	ld   [de], a                                     ; $5312: $12
	rrca                                             ; $5313: $0f
	nop                                              ; $5314: $00
	ld   bc, $1201                                   ; $5315: $01 $01 $12
	ld   d, $04                                      ; $5318: $16 $04
	adc  a                                           ; $531a: $8f
	ld   l, [hl]                                     ; $531b: $6e
	ld   a, b                                        ; $531c: $78
	sbc  a                                           ; $531d: $9f
	dec  c                                           ; $531e: $0d
	nop                                              ; $531f: $00
	ld   a, [bc]                                     ; $5320: $0a
	dec  b                                           ; $5321: $05
	ld   b, b                                        ; $5322: $40
	rst  $38                                         ; $5323: $ff
	inc  bc                                          ; $5324: $03
	rst  $38                                         ; $5325: $ff
	ld   bc, $2801                                   ; $5326: $01 $01 $28
	nop                                              ; $5329: $00
	rlca                                             ; $532a: $07
	ld   a, [$0312]                                  ; $532b: $fa $12 $03
	rst  $38                                         ; $532e: $ff
	ld   bc, $2003                                   ; $532f: $01 $03 $20
	nop                                              ; $5332: $00
	rlca                                             ; $5333: $07
	add  hl, de                                      ; $5334: $19
	inc  de                                          ; $5335: $13
	inc  bc                                          ; $5336: $03
	rst  $38                                         ; $5337: $ff
	ld   bc, $2002                                   ; $5338: $01 $02 $20
	nop                                              ; $533b: $00
	rlca                                             ; $533c: $07
	dec  [hl]                                        ; $533d: $35
	inc  de                                          ; $533e: $13
	inc  bc                                          ; $533f: $03
	rst  $38                                         ; $5340: $ff
	ld   bc, $2301                                   ; $5341: $01 $01 $23
	nop                                              ; $5344: $00
	rrca                                             ; $5345: $0f
	nop                                              ; $5346: $00
	ld   bc, $1201                                   ; $5347: $01 $01 $12
	rla                                              ; $534a: $17
	inc  b                                           ; $534b: $04
	adc  a                                           ; $534c: $8f
	ld   l, [hl]                                     ; $534d: $6e
	ld   [hl], c                                     ; $534e: $71
	ld   l, l                                        ; $534f: $6d
	ld   e, c                                        ; $5350: $59
	ld   a, b                                        ; $5351: $78
	rst  $38                                         ; $5352: $ff
	rst  $38                                         ; $5353: $ff
	dec  c                                           ; $5354: $0d
	nop                                              ; $5355: $00
	ld   a, [bc]                                     ; $5356: $0a
	rlca                                             ; $5357: $07
	ld   a, [$0312]                                  ; $5358: $fa $12 $03
	rst  $38                                         ; $535b: $ff
	ld   bc, $2003                                   ; $535c: $01 $03 $20
	nop                                              ; $535f: $00
	rlca                                             ; $5360: $07
	add  hl, de                                      ; $5361: $19
	inc  de                                          ; $5362: $13
	inc  bc                                          ; $5363: $03
	rst  $38                                         ; $5364: $ff
	ld   bc, $2002                                   ; $5365: $01 $02 $20
	nop                                              ; $5368: $00
	rlca                                             ; $5369: $07
	dec  [hl]                                        ; $536a: $35
	inc  de                                          ; $536b: $13
	inc  bc                                          ; $536c: $03
	rst  $38                                         ; $536d: $ff
	ld   bc, $2301                                   ; $536e: $01 $01 $23
	nop                                              ; $5371: $00
	rrca                                             ; $5372: $0f
	nop                                              ; $5373: $00
	ld   bc, $1201                                   ; $5374: $01 $01 $12
	jr   jr_063_537d                                 ; $5377: $18 $04

	adc  a                                           ; $5379: $8f
	ld   l, [hl]                                     ; $537a: $6e
	ld   [hl], c                                     ; $537b: $71
	ld   l, l                                        ; $537c: $6d

jr_063_537d:
	ld   e, c                                        ; $537d: $59
	ld   a, b                                        ; $537e: $78
	rst  $38                                         ; $537f: $ff
	rst  $38                                         ; $5380: $ff
	dec  c                                           ; $5381: $0d
	nop                                              ; $5382: $00
	ld   a, [bc]                                     ; $5383: $0a
	rlca                                             ; $5384: $07
	ld   a, [$0312]                                  ; $5385: $fa $12 $03
	rst  $38                                         ; $5388: $ff
	ld   bc, $2003                                   ; $5389: $01 $03 $20
	nop                                              ; $538c: $00
	rlca                                             ; $538d: $07
	add  hl, de                                      ; $538e: $19
	inc  de                                          ; $538f: $13
	inc  bc                                          ; $5390: $03
	rst  $38                                         ; $5391: $ff
	ld   bc, $2002                                   ; $5392: $01 $02 $20
	nop                                              ; $5395: $00
	rlca                                             ; $5396: $07
	dec  [hl]                                        ; $5397: $35
	inc  de                                          ; $5398: $13
	inc  bc                                          ; $5399: $03
	rst  $38                                         ; $539a: $ff
	ld   bc, $2301                                   ; $539b: $01 $01 $23
	nop                                              ; $539e: $00
	inc  e                                           ; $539f: $1c
	dec  b                                           ; $53a0: $05
	ld   [bc], a                                     ; $53a1: $02
	ld   [bc], a                                     ; $53a2: $02
	ld   bc, $5950                                   ; $53a3: $01 $50 $59
	and  c                                           ; $53a6: $a1
	sbc  [hl]                                        ; $53a7: $9e
	ld   d, b                                        ; $53a8: $50
	ld   e, c                                        ; $53a9: $59
	and  c                                           ; $53aa: $a1
	sbc  a                                           ; $53ab: $9f
	dec  c                                           ; $53ac: $0d
	sub  b                                           ; $53ad: $90
	ld   d, h                                        ; $53ae: $54
	xor  c                                           ; $53af: $a9
	xor  c                                           ; $53b0: $a9
	sbc  l                                           ; $53b1: $9d
	sbc  a                                           ; $53b2: $9f
	and  a                                           ; $53b3: $a7
	jp   nz, $925a                                   ; $53b4: $c2 $5a $92

	sbc  c                                           ; $53b7: $99
	ld   e, c                                        ; $53b8: $59
	sub  a                                           ; $53b9: $97
	sbc  a                                           ; $53ba: $9f
	dec  c                                           ; $53bb: $0d
	nop                                              ; $53bc: $00
	ld   a, [bc]                                     ; $53bd: $0a
	ld   b, $35                                      ; $53be: $06 $35
	inc  de                                          ; $53c0: $13
	inc  e                                           ; $53c1: $1c
	dec  b                                           ; $53c2: $05
	ld   bc, $0101                                   ; $53c3: $01 $01 $01
	ld   e, b                                        ; $53c6: $58
	ld   e, b                                        ; $53c7: $58
	ld   e, e                                        ; $53c8: $5b
	ld   a, c                                        ; $53c9: $79
	sbc  a                                           ; $53ca: $9f
	dec  c                                           ; $53cb: $0d
	ld   [$7d00], sp                                 ; $53cc: $08 $00 $7d
	and  c                                           ; $53cf: $a1
	sbc  a                                           ; $53d0: $9f
	dec  c                                           ; $53d1: $0d
	pop  de                                          ; $53d2: $d1
	call nz, $ecc2                                   ; $53d3: $c4 $c2 $ec
	sub  d                                           ; $53d6: $92
	and  c                                           ; $53d7: $a1
	ld   e, c                                        ; $53d8: $59
	sbc  a                                           ; $53d9: $9f
	dec  c                                           ; $53da: $0d
	nop                                              ; $53db: $00
	ld   a, [bc]                                     ; $53dc: $0a
	ld   b, $86                                      ; $53dd: $06 $86
	inc  de                                          ; $53df: $13
	inc  e                                           ; $53e0: $1c
	dec  b                                           ; $53e1: $05
	ld   bc, $0101                                   ; $53e2: $01 $01 $01
	ld   l, a                                        ; $53e5: $6f
	sub  l                                           ; $53e6: $95
	ld   [hl], c                                     ; $53e7: $71
	halt                                             ; $53e8: $76
	ld   l, a                                        ; $53e9: $6f
	ld   h, d                                        ; $53ea: $62
	ld   d, h                                        ; $53eb: $54
	ld   l, l                                        ; $53ec: $6d
	ld   e, a                                        ; $53ed: $5f
	ld   [hl], a                                     ; $53ee: $77
	dec  c                                           ; $53ef: $0d
	ld   e, b                                        ; $53f0: $58
	ld   e, b                                        ; $53f1: $58
	ld   e, e                                        ; $53f2: $5b
	ld   a, c                                        ; $53f3: $79
	ld   a, b                                        ; $53f4: $78
	sbc  a                                           ; $53f5: $9f
	dec  c                                           ; $53f6: $0d
	nop                                              ; $53f7: $00
	ld   a, [bc]                                     ; $53f8: $0a
	ld   b, $86                                      ; $53f9: $06 $86
	inc  de                                          ; $53fb: $13
	inc  e                                           ; $53fc: $1c
	dec  b                                           ; $53fd: $05
	ld   [bc], a                                     ; $53fe: $02
	ld   [bc], a                                     ; $53ff: $02
	ld   bc, $0008                                   ; $5400: $01 $08 $00
	ld   a, l                                        ; $5403: $7d
	and  c                                           ; $5404: $a1
	rst  $38                                         ; $5405: $ff
	rst  $38                                         ; $5406: $ff
	dec  c                                           ; $5407: $0d
	ld   h, c                                        ; $5408: $61
	sbc  d                                           ; $5409: $9a
	ld   e, [hl]                                     ; $540a: $5e
	sub  a                                           ; $540b: $97
	ld   d, d                                        ; $540c: $52
	ld   [hl], l                                     ; $540d: $75
	ld   e, e                                        ; $540e: $5b
	and  c                                           ; $540f: $a1
	halt                                             ; $5410: $76
	dec  c                                           ; $5411: $0d
	inc  b                                           ; $5412: $04
	ld   c, c                                        ; $5413: $49
	ld   a, h                                        ; $5414: $7c
	inc  bc                                          ; $5415: $03
	dec  c                                           ; $5416: $0d
	ld   [bc], a                                     ; $5417: $02
	jp   Jump_063_7279                               ; $5418: $c3 $79 $72


	ld   d, d                                        ; $541b: $52
	ld   [hl], h                                     ; $541c: $74
	sub  b                                           ; $541d: $90
	ld   [hl], d                                     ; $541e: $72
	sub  a                                           ; $541f: $97
	ld   d, d                                        ; $5420: $52
	ld   [hl], l                                     ; $5421: $75
	sbc  a                                           ; $5422: $9f
	dec  c                                           ; $5423: $0d
	nop                                              ; $5424: $00
	ld   a, [bc]                                     ; $5425: $0a
	inc  e                                           ; $5426: $1c
	dec  b                                           ; $5427: $05
	nop                                              ; $5428: $00
	nop                                              ; $5429: $00
	ld   bc, wRandomNumStruct                                   ; $542a: $01 $a7 $c2
	ld   e, d                                        ; $542d: $5a
	inc  bc                                          ; $542e: $03
	ld   h, d                                        ; $542f: $62
	adc  a                                           ; $5430: $8f
	ld   [hl], h                                     ; $5431: $74
	ld   e, l                                        ; $5432: $5d
	sbc  c                                           ; $5433: $99
	ld   e, c                                        ; $5434: $59
	sub  a                                           ; $5435: $97
	dec  c                                           ; $5436: $0d
	ld   l, a                                        ; $5437: $6f
	sub  l                                           ; $5438: $95
	ld   [hl], c                                     ; $5439: $71
	halt                                             ; $543a: $76
	inc  b                                           ; $543b: $04
	rla                                              ; $543c: $17
	ld   [hl], c                                     ; $543d: $71
	ld   [hl], h                                     ; $543e: $74
	ld   [hl], h                                     ; $543f: $74
	ld   a, b                                        ; $5440: $78
	sbc  a                                           ; $5441: $9f
	dec  c                                           ; $5442: $0d
	nop                                              ; $5443: $00
	ld   a, [bc]                                     ; $5444: $0a
	dec  c                                           ; $5445: $0d
	nop                                              ; $5446: $00
	nop                                              ; $5447: $00
	rrca                                             ; $5448: $0f
	nop                                              ; $5449: $00
	ld   bc, $0b0c                                   ; $544a: $01 $0c $0b
	inc  e                                           ; $544d: $1c
	dec  b                                           ; $544e: $05
	nop                                              ; $544f: $00
	nop                                              ; $5450: $00
	ld   bc, $a154                                   ; $5451: $01 $54 $a1
	sbc  [hl]                                        ; $5454: $9e
	ld   h, c                                        ; $5455: $61
	and  c                                           ; $5456: $a1
	ld   a, b                                        ; $5457: $78
	sub  b                                           ; $5458: $90
	and  c                                           ; $5459: $a1
	sub  d                                           ; $545a: $92
	ld   a, b                                        ; $545b: $78
	rst  $38                                         ; $545c: $ff
	rst  $38                                         ; $545d: $ff
	dec  c                                           ; $545e: $0d
	ld   h, c                                        ; $545f: $61
	sbc  d                                           ; $5460: $9a
	ld   [hl], l                                     ; $5461: $75
	adc  h                                           ; $5462: $8c
	ld   l, l                                        ; $5463: $6d
	inc  bc                                          ; $5464: $03
	add  c                                           ; $5465: $81
	ld   h, l                                        ; $5466: $65
	ld   d, d                                        ; $5467: $52
	inc  b                                           ; $5468: $04
	ld   e, [hl]                                     ; $5469: $5e
	inc  b                                           ; $546a: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $546b: $cf
	inc  b                                           ; $546c: $04
	ld   h, c                                        ; $546d: $61
	ld   e, d                                        ; $546e: $5a
	dec  c                                           ; $546f: $0d
	ld   [hl], l                                     ; $5470: $75
	ld   e, e                                        ; $5471: $5b
	sbc  c                                           ; $5472: $99
	sbc  l                                           ; $5473: $9d
	sbc  a                                           ; $5474: $9f
	dec  c                                           ; $5475: $0d
	nop                                              ; $5476: $00
	ld   a, [bc]                                     ; $5477: $0a
	ld   bc, $546b                                   ; $5478: $01 $6b $54
	sub  d                                           ; $547b: $92
	sbc  [hl]                                        ; $547c: $9e
	halt                                             ; $547d: $76
	ld   h, c                                        ; $547e: $61
	sbc  e                                           ; $547f: $9b
	ld   [hl], l                                     ; $5480: $75
	dec  c                                           ; $5481: $0d
	ld   [$7d00], sp                                 ; $5482: $08 $00 $7d
	and  c                                           ; $5485: $a1
	ld   a, l                                        ; $5486: $7d
	sbc  [hl]                                        ; $5487: $9e
	ld   [hl], a                                     ; $5488: $77
	and  c                                           ; $5489: $a1
	ld   a, b                                        ; $548a: $78
	inc  b                                           ; $548b: $04
	cp   [hl]                                        ; $548c: $be
	dec  c                                           ; $548d: $0d
	sub  b                                           ; $548e: $90
	ld   [hl], c                                     ; $548f: $71
	ld   [hl], h                                     ; $5490: $74
	and  c                                           ; $5491: $a1
	ld   a, h                                        ; $5492: $7c
	ld   sp, hl                                      ; $5493: $f9
	dec  c                                           ; $5494: $0d
	nop                                              ; $5495: $00
	ld   a, [bc]                                     ; $5496: $0a
	rrca                                             ; $5497: $0f
	nop                                              ; $5498: $00
	ld   bc, $6b01                                   ; $5499: $01 $01 $6b
	sbc  d                                           ; $549c: $9a
	ld   a, l                                        ; $549d: $7d
	rst  $38                                         ; $549e: $ff
	rst  $38                                         ; $549f: $ff
	dec  c                                           ; $54a0: $0d
	nop                                              ; $54a1: $00
	ld   a, [bc]                                     ; $54a2: $0a
	add  hl, de                                      ; $54a3: $19
	dec  b                                           ; $54a4: $05
	inc  bc                                          ; $54a5: $03
	ld   [bc], a                                     ; $54a6: $02
	sbc  b                                           ; $54a7: $98
	inc  bc                                          ; $54a8: $03
	nop                                              ; $54a9: $00
	ld   a, h                                        ; $54aa: $7c
	inc  b                                           ; $54ab: $04
	ld   a, [bc]                                     ; $54ac: $0a
	inc  bc                                          ; $54ad: $03
	jp   nc, Jump_063_7879                           ; $54ae: $d2 $79 $78

	sbc  c                                           ; $54b1: $99
	ld   h, c                                        ; $54b2: $61
	halt                                             ; $54b3: $76
	nop                                              ; $54b4: $00
	nop                                              ; $54b5: $00
	ld   [bc], a                                     ; $54b6: $02
	ld   b, l                                        ; $54b7: $45
	ld   l, c                                        ; $54b8: $69
	ld   a, b                                        ; $54b9: $78
	ld   [bc], a                                     ; $54ba: $02
	and  [hl]                                        ; $54bb: $a6
	inc  b                                           ; $54bc: $04
	rra                                              ; $54bd: $1f
	and  b                                           ; $54be: $a0
	sub  b                                           ; $54bf: $90
	ld   [hl], d                                     ; $54c0: $72
	ld   h, c                                        ; $54c1: $61
	halt                                             ; $54c2: $76
	nop                                              ; $54c3: $00
	ld   bc, $b602                                   ; $54c4: $01 $02 $b6
	and  b                                           ; $54c7: $a0
	inc  b                                           ; $54c8: $04
	ld   a, a                                        ; $54c9: $7f
	add  h                                           ; $54ca: $84
	ld   h, c                                        ; $54cb: $61
	halt                                             ; $54cc: $76
	nop                                              ; $54cd: $00
	ld   [bc], a                                     ; $54ce: $02
	rlca                                             ; $54cf: $07
	ld   h, $14                                      ; $54d0: $26 $14
	ld   [bc], a                                     ; $54d2: $02
	inc  bc                                          ; $54d3: $03
	ld   bc, $2000                                   ; $54d4: $01 $00 $20
	nop                                              ; $54d7: $00
	rlca                                             ; $54d8: $07
	ld   h, [hl]                                     ; $54d9: $66
	inc  d                                           ; $54da: $14
	ld   [bc], a                                     ; $54db: $02
	inc  bc                                          ; $54dc: $03
	ld   bc, $2001                                   ; $54dd: $01 $01 $20
	nop                                              ; $54e0: $00
	rlca                                             ; $54e1: $07
	or   [hl]                                        ; $54e2: $b6
	inc  d                                           ; $54e3: $14
	ld   [bc], a                                     ; $54e4: $02
	inc  bc                                          ; $54e5: $03
	ld   bc, $2002                                   ; $54e6: $01 $02 $20
	nop                                              ; $54e9: $00
	ld   b, $02                                      ; $54ea: $06 $02
	dec  d                                           ; $54ec: $15
	rrca                                             ; $54ed: $0f
	nop                                              ; $54ee: $00
	ld   bc, $0201                                   ; $54ef: $01 $01 $02
	sbc  b                                           ; $54f2: $98
	inc  bc                                          ; $54f3: $03
	nop                                              ; $54f4: $00
	ld   a, h                                        ; $54f5: $7c
	inc  b                                           ; $54f6: $04
	ld   a, [bc]                                     ; $54f7: $0a
	inc  bc                                          ; $54f8: $03
	jp   nc, Jump_063_7879                           ; $54f9: $d2 $79 $78

	sbc  c                                           ; $54fc: $99
	ld   h, c                                        ; $54fd: $61
	halt                                             ; $54fe: $76
	ld   [hl], l                                     ; $54ff: $75
	ld   h, a                                        ; $5500: $67
	sbc  a                                           ; $5501: $9f
	dec  c                                           ; $5502: $0d
	nop                                              ; $5503: $00
	ld   a, [bc]                                     ; $5504: $0a
	inc  e                                           ; $5505: $1c
	dec  b                                           ; $5506: $05
	ld   bc, $0101                                   ; $5507: $01 $01 $01
	ld   l, e                                        ; $550a: $6b
	ld   d, h                                        ; $550b: $54
	ld   e, c                                        ; $550c: $59
	rst  $38                                         ; $550d: $ff
	rst  $38                                         ; $550e: $ff
	ld   l, e                                        ; $550f: $6b
	sub  d                                           ; $5510: $92
	ld   [hl], c                                     ; $5511: $71
	ld   l, l                                        ; $5512: $6d
	sub  a                                           ; $5513: $97
	dec  c                                           ; $5514: $0d
	inc  bc                                          ; $5515: $03
	db   $d3                                         ; $5516: $d3
	dec  b                                           ; $5517: $05
	ld   a, [bc]                                     ; $5518: $0a
	ld   l, c                                        ; $5519: $69
	and  c                                           ; $551a: $a1
	halt                                             ; $551b: $76
	ld   a, b                                        ; $551c: $78
	sbc  a                                           ; $551d: $9f
	dec  c                                           ; $551e: $0d
	adc  h                                           ; $551f: $8c
	sbc  [hl]                                        ; $5520: $9e
	ld   e, d                                        ; $5521: $5a
	and  c                                           ; $5522: $a1
	ld   a, [hl]                                     ; $5523: $7e
	sbc  b                                           ; $5524: $98
	sub  d                                           ; $5525: $92
	sbc  a                                           ; $5526: $9f
	dec  c                                           ; $5527: $0d
	nop                                              ; $5528: $00
	ld   a, [bc]                                     ; $5529: $0a
	ld   b, $2e                                      ; $552a: $06 $2e
	dec  d                                           ; $552c: $15
	rrca                                             ; $552d: $0f
	nop                                              ; $552e: $00
	ld   bc, $0201                                   ; $552f: $01 $01 $02
	ld   b, l                                        ; $5532: $45
	ld   l, c                                        ; $5533: $69
	ld   a, b                                        ; $5534: $78
	ld   [bc], a                                     ; $5535: $02
	and  [hl]                                        ; $5536: $a6
	inc  b                                           ; $5537: $04
	rra                                              ; $5538: $1f
	and  b                                           ; $5539: $a0
	sub  b                                           ; $553a: $90
	ld   [hl], d                                     ; $553b: $72
	ld   h, c                                        ; $553c: $61
	halt                                             ; $553d: $76
	ld   [hl], l                                     ; $553e: $75
	ld   h, a                                        ; $553f: $67
	sbc  a                                           ; $5540: $9f
	dec  c                                           ; $5541: $0d
	nop                                              ; $5542: $00
	ld   a, [bc]                                     ; $5543: $0a
	inc  e                                           ; $5544: $1c
	dec  b                                           ; $5545: $05
	ld   bc, $0101                                   ; $5546: $01 $01 $01
	ld   d, h                                        ; $5549: $54
	and  c                                           ; $554a: $a1
	ld   d, h                                        ; $554b: $54
	and  c                                           ; $554c: $a1
	sbc  a                                           ; $554d: $9f
	inc  bc                                          ; $554e: $03
	add  d                                           ; $554f: $82
	ld   [bc], a                                     ; $5550: $02
	xor  c                                           ; $5551: $a9
	ld   l, e                                        ; $5552: $6b
	sbc  d                                           ; $5553: $9a
	ld   e, d                                        ; $5554: $5a
	ld   [bc], a                                     ; $5555: $02
	jr   nz, jr_063_555c                             ; $5556: $20 $04

	ld   a, c                                        ; $5558: $79
	sub  d                                           ; $5559: $92
	sbc  a                                           ; $555a: $9f
	dec  c                                           ; $555b: $0d

jr_063_555c:
	ld   d, b                                        ; $555c: $50
	ld   l, l                                        ; $555d: $6d
	ld   l, l                                        ; $555e: $6d
	ld   e, c                                        ; $555f: $59
	ld   d, d                                        ; $5560: $52
	ld   [bc], a                                     ; $5561: $02
	and  [hl]                                        ; $5562: $a6
	inc  b                                           ; $5563: $04
	rra                                              ; $5564: $1f
	inc  bc                                          ; $5565: $03
	xor  h                                           ; $5566: $ac
	sbc  b                                           ; $5567: $98
	rst  $38                                         ; $5568: $ff
	rst  $38                                         ; $5569: $ff
	dec  c                                           ; $556a: $0d
	and  a                                           ; $556b: $a7
	jp   nz, Jump_063_5090                           ; $556c: $c2 $90 $50

	ld   h, c                                        ; $556f: $61
	ld   e, d                                        ; $5570: $5a
	sbc  d                                           ; $5571: $9a
	sbc  c                                           ; $5572: $99
	ld   a, b                                        ; $5573: $78
	ld   c, a                                        ; $5574: $4f
	rst  $38                                         ; $5575: $ff
	rst  $38                                         ; $5576: $ff
	dec  c                                           ; $5577: $0d
	nop                                              ; $5578: $00
	ld   a, [bc]                                     ; $5579: $0a
	ld   b, $2e                                      ; $557a: $06 $2e
	dec  d                                           ; $557c: $15
	rrca                                             ; $557d: $0f
	nop                                              ; $557e: $00
	ld   bc, $0201                                   ; $557f: $01 $01 $02
	or   [hl]                                        ; $5582: $b6
	and  b                                           ; $5583: $a0
	inc  b                                           ; $5584: $04
	ld   a, a                                        ; $5585: $7f
	add  h                                           ; $5586: $84
	ld   h, c                                        ; $5587: $61
	halt                                             ; $5588: $76
	ld   [hl], l                                     ; $5589: $75
	ld   h, a                                        ; $558a: $67
	sbc  a                                           ; $558b: $9f
	dec  c                                           ; $558c: $0d
	ld   [bc], a                                     ; $558d: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $558e: $cf
	dec  b                                           ; $558f: $05
	ld   a, [de]                                     ; $5590: $1a
	ld   h, e                                        ; $5591: $63
	and  c                                           ; $5592: $a1
	halt                                             ; $5593: $76
	inc  b                                           ; $5594: $04
	dec  e                                           ; $5595: $1d
	ld   h, [hl]                                     ; $5596: $66
	ld   e, l                                        ; $5597: $5d
	rst  $38                                         ; $5598: $ff
	rst  $38                                         ; $5599: $ff
	dec  c                                           ; $559a: $0d
	nop                                              ; $559b: $00
	ld   a, [bc]                                     ; $559c: $0a
	inc  e                                           ; $559d: $1c
	dec  b                                           ; $559e: $05
	inc  b                                           ; $559f: $04
	inc  b                                           ; $55a0: $04
	ld   bc, $9a54                                   ; $55a1: $01 $54 $9a
	ld   h, l                                        ; $55a4: $65
	ld   d, d                                        ; $55a5: $52
	ld   a, b                                        ; $55a6: $78
	ld   c, a                                        ; $55a7: $4f
	rst  $38                                         ; $55a8: $ff
	rst  $38                                         ; $55a9: $ff
	dec  c                                           ; $55aa: $0d
	inc  b                                           ; $55ab: $04
	dec  e                                           ; $55ac: $1d
	ld   h, [hl]                                     ; $55ad: $66
	inc  b                                           ; $55ae: $04
	cp   [hl]                                        ; $55af: $be
	and  b                                           ; $55b0: $a0
	sub  b                                           ; $55b1: $90
	ld   [hl], c                                     ; $55b2: $71
	ld   l, l                                        ; $55b3: $6d
	inc  bc                                          ; $55b4: $03
	add  d                                           ; $55b5: $82
	ld   e, d                                        ; $55b6: $5a
	dec  c                                           ; $55b7: $0d
	ld   [bc], a                                     ; $55b8: $02
	and  b                                           ; $55b9: $a0
	ld   e, l                                        ; $55ba: $5d
	ld   a, c                                        ; $55bb: $79
	ld   d, d                                        ; $55bc: $52
	sbc  c                                           ; $55bd: $99
	ld   [hl], c                                     ; $55be: $71
	ld   [hl], h                                     ; $55bf: $74
	ld   a, h                                        ; $55c0: $7c
	ld   a, l                                        ; $55c1: $7d
	sbc  a                                           ; $55c2: $9f
	dec  c                                           ; $55c3: $0d
	nop                                              ; $55c4: $00
	ld   a, [bc]                                     ; $55c5: $0a
	ld   b, $2e                                      ; $55c6: $06 $2e
	dec  d                                           ; $55c8: $15
	inc  e                                           ; $55c9: $1c
	dec  b                                           ; $55ca: $05
	nop                                              ; $55cb: $00
	nop                                              ; $55cc: $00
	ld   bc, $9e8c                                   ; $55cd: $01 $8c $9e
	inc  b                                           ; $55d0: $04
	cp   [hl]                                        ; $55d1: $be
	ld   a, b                                        ; $55d2: $78
	and  c                                           ; $55d3: $a1
	ld   [hl], h                                     ; $55d4: $74
	sub  b                                           ; $55d5: $90
	and  c                                           ; $55d6: $a1
	ld   a, l                                        ; $55d7: $7d
	inc  bc                                          ; $55d8: $03
	sub  h                                           ; $55d9: $94
	inc  bc                                          ; $55da: $03
	sbc  c                                           ; $55db: $99
	halt                                             ; $55dc: $76
	dec  c                                           ; $55dd: $0d
	ld   [bc], a                                     ; $55de: $02
	sub  l                                           ; $55df: $95
	ld   [hl], d                                     ; $55e0: $72
	ld   e, c                                        ; $55e1: $59
	sbc  c                                           ; $55e2: $99
	sub  b                                           ; $55e3: $90
	and  c                                           ; $55e4: $a1
	sub  d                                           ; $55e5: $92
	rst  $38                                         ; $55e6: $ff
	rst  $38                                         ; $55e7: $ff
	dec  c                                           ; $55e8: $0d
	ld   d, b                                        ; $55e9: $50
	ld   l, c                                        ; $55ea: $69
	sub  a                                           ; $55eb: $97
	and  c                                           ; $55ec: $a1
	ld   [hl], l                                     ; $55ed: $75
	sub  b                                           ; $55ee: $90
	ld   d, [hl]                                     ; $55ef: $56
	ld   d, [hl]                                     ; $55f0: $56
	sbc  a                                           ; $55f1: $9f
	dec  c                                           ; $55f2: $0d
	nop                                              ; $55f3: $00
	ld   a, [bc]                                     ; $55f4: $0a
	inc  e                                           ; $55f5: $1c
	dec  b                                           ; $55f6: $05
	nop                                              ; $55f7: $00
	nop                                              ; $55f8: $00
	ld   bc, $7463                                   ; $55f9: $01 $63 $74
	rst  $38                                         ; $55fc: $ff
	rst  $38                                         ; $55fd: $ff
	dec  c                                           ; $55fe: $0d
	adc  d                                           ; $55ff: $8a
	ld   l, a                                        ; $5600: $6f
	adc  d                                           ; $5601: $8a
	ld   l, a                                        ; $5602: $6f
	ld   [bc], a                                     ; $5603: $02
	ld   a, a                                        ; $5604: $7f
	ld   h, c                                        ; $5605: $61
	ld   e, c                                        ; $5606: $59
	sbc  a                                           ; $5607: $9f
	dec  c                                           ; $5608: $0d
	nop                                              ; $5609: $00
	ld   a, [bc]                                     ; $560a: $0a
	dec  c                                           ; $560b: $0d
	nop                                              ; $560c: $00
	nop                                              ; $560d: $00
	rrca                                             ; $560e: $0f
	nop                                              ; $560f: $00
	ld   bc, $8607                                   ; $5610: $01 $07 $86
	dec  d                                           ; $5613: $15
	inc  bc                                          ; $5614: $03
	dec  d                                           ; $5615: $15
	ld   bc, $25be                                   ; $5616: $01 $be $25
	nop                                              ; $5619: $00
	inc  hl                                          ; $561a: $23
	ld   b, $1c                                      ; $561b: $06 $1c
	dec  b                                           ; $561d: $05
	ld   bc, $0101                                   ; $561e: $01 $01 $01
	ld   [bc], a                                     ; $5621: $02
	and  l                                           ; $5622: $a5
	inc  b                                           ; $5623: $04
	xor  d                                           ; $5624: $aa
	ld   a, l                                        ; $5625: $7d
	sbc  [hl]                                        ; $5626: $9e
	ld   [hl], d                                     ; $5627: $72
	ld   e, e                                        ; $5628: $5b
	ld   d, b                                        ; $5629: $50
	ld   [hl], c                                     ; $562a: $71
	ld   [hl], h                                     ; $562b: $74
	ld   e, l                                        ; $562c: $5d
	sbc  d                                           ; $562d: $9a
	ld   [hl], h                                     ; $562e: $74
	dec  c                                           ; $562f: $0d
	nop                                              ; $5630: $00
	dec  b                                           ; $5631: $05
	add  b                                           ; $5632: $80
	jr   c, @+$03                                    ; $5633: $38 $01

	ld   bc, $0100                                   ; $5635: $01 $00 $01
	ld   d, b                                        ; $5638: $50
	sbc  b                                           ; $5639: $98
	ld   e, d                                        ; $563a: $5a
	halt                                             ; $563b: $76
	ld   d, h                                        ; $563c: $54
	ld   a, b                                        ; $563d: $78
	sbc  a                                           ; $563e: $9f
	dec  c                                           ; $563f: $0d
	nop                                              ; $5640: $00
	ld   a, [bc]                                     ; $5641: $0a
	dec  c                                           ; $5642: $0d
	nop                                              ; $5643: $00
	nop                                              ; $5644: $00
	rrca                                             ; $5645: $0f
	nop                                              ; $5646: $00
	ld   bc, $1e09                                   ; $5647: $01 $09 $1e
	add  hl, hl                                      ; $564a: $29
	nop                                              ; $564b: $00
	nop                                              ; $564c: $00
	inc  hl                                          ; $564d: $23
	add  [hl]                                        ; $564e: $86
	inc  e                                           ; $564f: $1c
	dec  b                                           ; $5650: $05
	nop                                              ; $5651: $00
	nop                                              ; $5652: $00
	ld   bc, $5490                                   ; $5653: $01 $90 $54
	ld   h, a                                        ; $5656: $67
	ld   e, [hl]                                     ; $5657: $5e
	inc  b                                           ; $5658: $04
	ld   [$9202], sp                                 ; $5659: $08 $02 $92
	sub  d                                           ; $565c: $92
	ld   a, b                                        ; $565d: $78
	sbc  a                                           ; $565e: $9f
	dec  c                                           ; $565f: $0d
	nop                                              ; $5660: $00
	ld   a, [bc]                                     ; $5661: $0a
	inc  e                                           ; $5662: $1c
	dec  b                                           ; $5663: $05
	inc  b                                           ; $5664: $04
	inc  b                                           ; $5665: $04
	ld   bc, $ff50                                   ; $5666: $01 $50 $ff
	rst  $38                                         ; $5669: $ff
	ld   l, a                                        ; $566a: $6f
	sub  l                                           ; $566b: $95
	ld   [hl], c                                     ; $566c: $71
	halt                                             ; $566d: $76
	inc  b                                           ; $566e: $04
	adc  h                                           ; $566f: $8c
	ld   a, b                                        ; $5670: $78
	inc  bc                                          ; $5671: $03
	dec  d                                           ; $5672: $15
	inc  b                                           ; $5673: $04
	cp   a                                           ; $5674: $bf
	ld   h, l                                        ; $5675: $65
	ld   [hl], h                                     ; $5676: $74
	dec  c                                           ; $5677: $0d
	ld   d, [hl]                                     ; $5678: $56
	ld   d, [hl]                                     ; $5679: $56
	ld   e, c                                        ; $567a: $59
	ld   a, b                                        ; $567b: $78
	ld   sp, hl                                      ; $567c: $f9
	dec  c                                           ; $567d: $0d
	nop                                              ; $567e: $00
	ld   a, [bc]                                     ; $567f: $0a
	ld   bc, $0008                                   ; $5680: $01 $08 $00
	ld   a, l                                        ; $5683: $7d
	and  c                                           ; $5684: $a1
	ld   [hl], h                                     ; $5685: $74
	sbc  [hl]                                        ; $5686: $9e
	dec  c                                           ; $5687: $0d
	ld   [hl], a                                     ; $5688: $77
	and  c                                           ; $5689: $a1
	ld   a, b                                        ; $568a: $78
	inc  bc                                          ; $568b: $03
	ld   l, [hl]                                     ; $568c: $6e
	ld   a, h                                        ; $568d: $7c
	inc  bc                                          ; $568e: $03
	add  d                                           ; $568f: $82
	ld   e, d                                        ; $5690: $5a
	ld   [bc], a                                     ; $5691: $02
	sbc  d                                           ; $5692: $9a
	ld   e, e                                        ; $5693: $5b
	ld   a, b                                        ; $5694: $78
	and  c                                           ; $5695: $a1
	sub  d                                           ; $5696: $92
	ld   sp, hl                                      ; $5697: $f9
	dec  c                                           ; $5698: $0d
	nop                                              ; $5699: $00
	ld   a, [bc]                                     ; $569a: $0a
	add  hl, de                                      ; $569b: $19
	dec  b                                           ; $569c: $05
	inc  bc                                          ; $569d: $03
	ld   [bc], a                                     ; $569e: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $569f: $cf
	dec  b                                           ; $56a0: $05
	ld   a, [de]                                     ; $56a1: $1a
	ld   h, e                                        ; $56a2: $63
	and  c                                           ; $56a3: $a1
	adc  l                                           ; $56a4: $8d
	ld   l, l                                        ; $56a5: $6d
	ld   d, d                                        ; $56a6: $52
	ld   a, b                                        ; $56a7: $78
	inc  bc                                          ; $56a8: $03
	add  d                                           ; $56a9: $82
	nop                                              ; $56aa: $00
	nop                                              ; $56ab: $00
	inc  bc                                          ; $56ac: $03
	sub  h                                           ; $56ad: $94
	inc  b                                           ; $56ae: $04
	sbc  [hl]                                        ; $56af: $9e
	and  b                                           ; $56b0: $a0
	sbc  l                                           ; $56b1: $9d
	ld   e, c                                        ; $56b2: $59
	ld   [hl], c                                     ; $56b3: $71
	ld   [hl], h                                     ; $56b4: $74
	ld   e, l                                        ; $56b5: $5d
	sbc  d                                           ; $56b6: $9a
	sbc  c                                           ; $56b7: $99
	inc  bc                                          ; $56b8: $03
	add  d                                           ; $56b9: $82
	nop                                              ; $56ba: $00
	ld   bc, $6e03                                   ; $56bb: $01 $03 $6e
	ld   [bc], a                                     ; $56be: $02
	db   $fc                                         ; $56bf: $fc
	ld   a, b                                        ; $56c0: $78
	sub  a                                           ; $56c1: $97
	ld   l, [hl]                                     ; $56c2: $6e
	sbc  d                                           ; $56c3: $9a
	ld   [hl], l                                     ; $56c4: $75
	sub  b                                           ; $56c5: $90
	nop                                              ; $56c6: $00
	ld   [bc], a                                     ; $56c7: $02
	rlca                                             ; $56c8: $07
	rra                                              ; $56c9: $1f
	ld   d, $02                                      ; $56ca: $16 $02
	inc  bc                                          ; $56cc: $03
	ld   bc, $2000                                   ; $56cd: $01 $00 $20
	nop                                              ; $56d0: $00
	rlca                                             ; $56d1: $07
	ld   e, b                                        ; $56d2: $58
	ld   d, $02                                      ; $56d3: $16 $02
	inc  bc                                          ; $56d5: $03
	ld   bc, $2001                                   ; $56d6: $01 $01 $20
	nop                                              ; $56d9: $00
	rlca                                             ; $56da: $07
	xor  a                                           ; $56db: $af
	ld   d, $02                                      ; $56dc: $16 $02
	inc  bc                                          ; $56de: $03
	ld   bc, $2002                                   ; $56df: $01 $02 $20
	nop                                              ; $56e2: $00
	ld   b, $dd                                      ; $56e3: $06 $dd
	ld   d, $0f                                      ; $56e5: $16 $0f
	nop                                              ; $56e7: $00
	ld   bc, $0201                                   ; $56e8: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $56eb: $cf
	dec  b                                           ; $56ec: $05
	ld   a, [de]                                     ; $56ed: $1a
	ld   h, e                                        ; $56ee: $63
	and  c                                           ; $56ef: $a1
	adc  l                                           ; $56f0: $8d
	ld   l, l                                        ; $56f1: $6d
	ld   d, d                                        ; $56f2: $52
	ld   a, b                                        ; $56f3: $78
	inc  bc                                          ; $56f4: $03
	add  d                                           ; $56f5: $82
	ld   [hl], l                                     ; $56f6: $75
	ld   h, a                                        ; $56f7: $67
	ld   a, e                                        ; $56f8: $7b
	sbc  a                                           ; $56f9: $9f
	dec  c                                           ; $56fa: $0d
	nop                                              ; $56fb: $00
	ld   a, [bc]                                     ; $56fc: $0a
	inc  e                                           ; $56fd: $1c
	dec  b                                           ; $56fe: $05
	inc  b                                           ; $56ff: $04
	inc  b                                           ; $5700: $04
	ld   bc, $a178                                   ; $5701: $01 $78 $a1
	sub  d                                           ; $5704: $92
	rst  $38                                         ; $5705: $ff
	rst  $38                                         ; $5706: $ff
	rst  ToBoot                                         ; $5707: $c7
	xor  $99                                         ; $5708: $ee $99
	ld   e, d                                        ; $570a: $5a
	ld   a, b                                        ; $570b: $78
	sbc  a                                           ; $570c: $9f
	dec  c                                           ; $570d: $0d
	ld   l, e                                        ; $570e: $6b
	ld   d, h                                        ; $570f: $54
	ld   d, d                                        ; $5710: $52
	ld   d, h                                        ; $5711: $54
	ld   a, h                                        ; $5712: $7c
	dec  b                                           ; $5713: $05
	sub  [hl]                                        ; $5714: $96
	sbc  c                                           ; $5715: $99
	ld   [hl], l                                     ; $5716: $75
	rst  $38                                         ; $5717: $ff
	rst  $38                                         ; $5718: $ff
	dec  c                                           ; $5719: $0d
	nop                                              ; $571a: $00
	ld   a, [bc]                                     ; $571b: $0a
	ld   b, $04                                      ; $571c: $06 $04
	rla                                              ; $571e: $17
	rrca                                             ; $571f: $0f
	nop                                              ; $5720: $00
	ld   bc, $6b01                                   ; $5721: $01 $01 $6b
	ld   d, h                                        ; $5724: $54
	ld   [hl], l                                     ; $5725: $75
	ld   h, a                                        ; $5726: $67
	ld   a, e                                        ; $5727: $7b
	rst  $38                                         ; $5728: $ff
	rst  $38                                         ; $5729: $ff
	dec  c                                           ; $572a: $0d
	inc  bc                                          ; $572b: $03
	sub  h                                           ; $572c: $94
	inc  b                                           ; $572d: $04
	sbc  [hl]                                        ; $572e: $9e
	and  b                                           ; $572f: $a0
	sbc  l                                           ; $5730: $9d
	ld   e, c                                        ; $5731: $59
	ld   [hl], c                                     ; $5732: $71
	ld   [hl], h                                     ; $5733: $74
	ld   e, l                                        ; $5734: $5d
	sbc  d                                           ; $5735: $9a
	sbc  c                                           ; $5736: $99
	inc  bc                                          ; $5737: $03
	add  d                                           ; $5738: $82
	ld   e, c                                        ; $5739: $59
	sub  b                                           ; $573a: $90
	dec  c                                           ; $573b: $0d
	inc  b                                           ; $573c: $04
	dec  hl                                          ; $573d: $2b
	sbc  d                                           ; $573e: $9a
	adc  h                                           ; $573f: $8c
	ld   l, c                                        ; $5740: $69
	and  c                                           ; $5741: $a1
	sbc  a                                           ; $5742: $9f
	dec  c                                           ; $5743: $0d
	nop                                              ; $5744: $00
	ld   a, [bc]                                     ; $5745: $0a
	inc  e                                           ; $5746: $1c
	dec  b                                           ; $5747: $05
	ld   bc, $0101                                   ; $5748: $01 $01 $01
	ld   a, b                                        ; $574b: $78
	sbc  c                                           ; $574c: $99
	adc  c                                           ; $574d: $89
	ld   [hl], a                                     ; $574e: $77
	ld   a, e                                        ; $574f: $7b
	ld   d, l                                        ; $5750: $55
	rst  $38                                         ; $5751: $ff
	rst  $38                                         ; $5752: $ff
	dec  c                                           ; $5753: $0d
	sub  d                                           ; $5754: $92
	ld   [hl], c                                     ; $5755: $71
	ld   a, a                                        ; $5756: $7f
	inc  bc                                          ; $5757: $03
	sub  h                                           ; $5758: $94
	inc  b                                           ; $5759: $04
	sbc  [hl]                                        ; $575a: $9e
	and  b                                           ; $575b: $a0
	inc  b                                           ; $575c: $04
	sbc  [hl]                                        ; $575d: $9e
	ld   e, c                                        ; $575e: $59
	ld   [hl], c                                     ; $575f: $71
	ld   [hl], h                                     ; $5760: $74
	ld   e, l                                        ; $5761: $5d
	sbc  d                                           ; $5762: $9a
	sbc  c                                           ; $5763: $99
	dec  c                                           ; $5764: $0d
	ld   e, b                                        ; $5765: $58
	inc  bc                                          ; $5766: $03
	add  d                                           ; $5767: $82
	ld   e, d                                        ; $5768: $5a
	ld   [bc], a                                     ; $5769: $02
	jr   nz, jr_063_5770                             ; $576a: $20 $04

	ld   a, c                                        ; $576c: $79
	sub  d                                           ; $576d: $92
	ld   a, b                                        ; $576e: $78
	sbc  a                                           ; $576f: $9f

jr_063_5770:
	dec  c                                           ; $5770: $0d
	nop                                              ; $5771: $00
	ld   a, [bc]                                     ; $5772: $0a
	ld   b, $04                                      ; $5773: $06 $04
	rla                                              ; $5775: $17
	rrca                                             ; $5776: $0f
	nop                                              ; $5777: $00
	ld   bc, $0301                                   ; $5778: $01 $01 $03
	ld   l, [hl]                                     ; $577b: $6e
	ld   [bc], a                                     ; $577c: $02
	db   $fc                                         ; $577d: $fc
	ld   a, b                                        ; $577e: $78
	sub  a                                           ; $577f: $97
	inc  bc                                          ; $5780: $03
	xor  c                                           ; $5781: $a9
	ld   [hl], l                                     ; $5782: $75
	sub  b                                           ; $5783: $90
	ld   d, d                                        ; $5784: $52
	ld   d, d                                        ; $5785: $52
	ld   [hl], l                                     ; $5786: $75
	ld   h, a                                        ; $5787: $67
	sbc  a                                           ; $5788: $9f
	dec  c                                           ; $5789: $0d
	nop                                              ; $578a: $00
	ld   a, [bc]                                     ; $578b: $0a
	inc  e                                           ; $578c: $1c
	dec  b                                           ; $578d: $05
	ld   bc, $0101                                   ; $578e: $01 $01 $01
	ret  nc                                          ; $5791: $d0

	ret  nc                                          ; $5792: $d0

	ret  nc                                          ; $5793: $d0

	ret  nc                                          ; $5794: $d0

	rst  $38                                         ; $5795: $ff
	rst  $38                                         ; $5796: $ff
	dec  c                                           ; $5797: $0d
	ld   l, e                                        ; $5798: $6b
	sub  a                                           ; $5799: $97
	ld   d, [hl]                                     ; $579a: $56
	ld   d, [hl]                                     ; $579b: $56
	sbc  l                                           ; $579c: $9d
	sbc  a                                           ; $579d: $9f
	dec  c                                           ; $579e: $0d
	nop                                              ; $579f: $00
	ld   a, [bc]                                     ; $57a0: $0a
	ld   b, $04                                      ; $57a1: $06 $04
	rla                                              ; $57a3: $17
	inc  e                                           ; $57a4: $1c
	dec  b                                           ; $57a5: $05
	ld   bc, $0101                                   ; $57a6: $01 $01 $01
	sub  d                                           ; $57a9: $92
	ld   [hl], c                                     ; $57aa: $71
	ld   a, a                                        ; $57ab: $7f
	inc  bc                                          ; $57ac: $03
	call c, Call_063_7956                            ; $57ad: $dc $56 $79
	ld   e, l                                        ; $57b0: $5d
	ld   d, d                                        ; $57b1: $52
	inc  bc                                          ; $57b2: $03
	dec  d                                           ; $57b3: $15
	inc  b                                           ; $57b4: $04
	cp   a                                           ; $57b5: $bf
	dec  c                                           ; $57b6: $0d
	sub  d                                           ; $57b7: $92
	ld   [hl], c                                     ; $57b8: $71
	ld   l, l                                        ; $57b9: $6d
	ld   a, b                                        ; $57ba: $78
	rst  $38                                         ; $57bb: $ff
	rst  $38                                         ; $57bc: $ff
	dec  c                                           ; $57bd: $0d
	adc  h                                           ; $57be: $8c
	sbc  [hl]                                        ; $57bf: $9e
	inc  b                                           ; $57c0: $04
	and  e                                           ; $57c1: $a3
	sbc  d                                           ; $57c2: $9a
	ld   l, l                                        ; $57c3: $6d
	ld   [hl], c                                     ; $57c4: $71
	ld   [hl], h                                     ; $57c5: $74
	sub  d                                           ; $57c6: $92
	sbc  a                                           ; $57c7: $9f
	dec  c                                           ; $57c8: $0d
	nop                                              ; $57c9: $00
	ld   a, [bc]                                     ; $57ca: $0a
	rrca                                             ; $57cb: $0f
	nop                                              ; $57cc: $00
	ld   bc, $0201                                   ; $57cd: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $57d0: $cf
	dec  b                                           ; $57d1: $05
	ld   a, [de]                                     ; $57d2: $1a
	ld   h, e                                        ; $57d3: $63
	and  c                                           ; $57d4: $a1
	rst  $38                                         ; $57d5: $ff
	rst  $38                                         ; $57d6: $ff
	dec  c                                           ; $57d7: $0d
	inc  b                                           ; $57d8: $04
	ld   l, l                                        ; $57d9: $6d
	ld   e, c                                        ; $57da: $59
	sub  a                                           ; $57db: $97
	sub  b                                           ; $57dc: $90
	ld   [bc], a                                     ; $57dd: $02
	jp   nz, $7452                                   ; $57de: $c2 $52 $74

	ld   d, d                                        ; $57e1: $52
	ld   d, d                                        ; $57e2: $52
	ld   [hl], l                                     ; $57e3: $75
	ld   h, a                                        ; $57e4: $67
	ld   e, c                                        ; $57e5: $59
	ld   sp, hl                                      ; $57e6: $f9
	dec  c                                           ; $57e7: $0d
	nop                                              ; $57e8: $00
	ld   a, [bc]                                     ; $57e9: $0a
	inc  e                                           ; $57ea: $1c
	dec  b                                           ; $57eb: $05
	nop                                              ; $57ec: $00
	nop                                              ; $57ed: $00
	ld   bc, $a178                                   ; $57ee: $01 $78 $a1
	sub  d                                           ; $57f1: $92
	ld   sp, hl                                      ; $57f2: $f9
	dec  c                                           ; $57f3: $0d
	nop                                              ; $57f4: $00
	ld   a, [bc]                                     ; $57f5: $0a
	rrca                                             ; $57f6: $0f
	nop                                              ; $57f7: $00
	ld   bc, $0201                                   ; $57f8: $01 $01 $02
	dec  bc                                          ; $57fb: $0b
	inc  bc                                          ; $57fc: $03
	ld   c, a                                        ; $57fd: $4f
	ld   a, c                                        ; $57fe: $79
	sub  b                                           ; $57ff: $90
	ld   [bc], a                                     ; $5800: $02
	jp   nz, $6d52                                   ; $5801: $c2 $52 $6d

	ld   e, c                                        ; $5804: $59
	sub  b                                           ; $5805: $90
	dec  c                                           ; $5806: $0d
	inc  b                                           ; $5807: $04
	dec  hl                                          ; $5808: $2b
	sbc  d                                           ; $5809: $9a
	adc  h                                           ; $580a: $8c
	ld   l, c                                        ; $580b: $69
	and  c                                           ; $580c: $a1
	ld   e, d                                        ; $580d: $5a
	ld   [bc], a                                     ; $580e: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $580f: $cf
	dec  b                                           ; $5810: $05
	ld   a, [de]                                     ; $5811: $1a
	ld   h, e                                        ; $5812: $63
	and  c                                           ; $5813: $a1
	ld   a, l                                        ; $5814: $7d
	rst  $38                                         ; $5815: $ff
	rst  $38                                         ; $5816: $ff
	dec  c                                           ; $5817: $0d
	nop                                              ; $5818: $00
	ld   a, [bc]                                     ; $5819: $0a
	add  hl, de                                      ; $581a: $19
	dec  b                                           ; $581b: $05
	inc  bc                                          ; $581c: $03
	inc  b                                           ; $581d: $04
	ld   l, l                                        ; $581e: $6d
	ld   a, h                                        ; $581f: $7c
	ld   h, c                                        ; $5820: $61
	halt                                             ; $5821: $76
	ld   [hl], a                                     ; $5822: $77
	ld   d, h                                        ; $5823: $54
	dec  b                                           ; $5824: $05
	pop  de                                          ; $5825: $d1
	ld   d, d                                        ; $5826: $52
	adc  h                                           ; $5827: $8c
	ld   h, a                                        ; $5828: $67
	ld   e, c                                        ; $5829: $59
	ld   sp, hl                                      ; $582a: $f9
	nop                                              ; $582b: $00
	nop                                              ; $582c: $00
	inc  b                                           ; $582d: $04
	ld   c, $03                                      ; $582e: $0e $03
	sub  b                                           ; $5830: $90
	ld   h, e                                        ; $5831: $63
	and  c                                           ; $5832: $a1
	ld   e, d                                        ; $5833: $5a
	ld   [bc], a                                     ; $5834: $02
	sbc  d                                           ; $5835: $9a
	ld   e, e                                        ; $5836: $5b
	ld   a, b                                        ; $5837: $78
	and  c                                           ; $5838: $a1
	ld   [hl], l                                     ; $5839: $75
	ld   h, a                                        ; $583a: $67
	ld   e, c                                        ; $583b: $59
	ld   sp, hl                                      ; $583c: $f9
	nop                                              ; $583d: $00
	ld   bc, $a177                                   ; $583e: $01 $77 $a1
	ld   a, b                                        ; $5841: $78
	inc  bc                                          ; $5842: $03
	add  d                                           ; $5843: $82
	ld   e, d                                        ; $5844: $5a
	ld   [bc], a                                     ; $5845: $02
	sbc  d                                           ; $5846: $9a
	ld   e, e                                        ; $5847: $5b
	ld   [hl], l                                     ; $5848: $75
	ld   h, a                                        ; $5849: $67
	ld   e, c                                        ; $584a: $59
	ld   sp, hl                                      ; $584b: $f9
	nop                                              ; $584c: $00
	ld   [bc], a                                     ; $584d: $02
	rlca                                             ; $584e: $07
	and  l                                           ; $584f: $a5
	rla                                              ; $5850: $17
	ld   [bc], a                                     ; $5851: $02
	inc  bc                                          ; $5852: $03
	ld   bc, $2000                                   ; $5853: $01 $00 $20
	nop                                              ; $5856: $00
	rlca                                             ; $5857: $07
	ld   b, c                                        ; $5858: $41
	jr   @+$04                                       ; $5859: $18 $02

	inc  bc                                          ; $585b: $03
	ld   bc, $2001                                   ; $585c: $01 $01 $20
	nop                                              ; $585f: $00
	rlca                                             ; $5860: $07
	adc  a                                           ; $5861: $8f
	jr   @+$04                                       ; $5862: $18 $02

	inc  bc                                          ; $5864: $03
	ld   bc, $2002                                   ; $5865: $01 $02 $20
	nop                                              ; $5868: $00
	ld   b, $1f                                      ; $5869: $06 $1f
	add  hl, de                                      ; $586b: $19
	rrca                                             ; $586c: $0f
	nop                                              ; $586d: $00
	ld   bc, $0401                                   ; $586e: $01 $01 $04
	ld   l, l                                        ; $5871: $6d
	ld   a, h                                        ; $5872: $7c
	ld   h, c                                        ; $5873: $61
	halt                                             ; $5874: $76
	ld   [hl], a                                     ; $5875: $77
	ld   d, h                                        ; $5876: $54
	dec  b                                           ; $5877: $05
	pop  de                                          ; $5878: $d1
	ld   d, d                                        ; $5879: $52
	adc  h                                           ; $587a: $8c
	ld   h, a                                        ; $587b: $67
	ld   e, c                                        ; $587c: $59
	ld   sp, hl                                      ; $587d: $f9
	dec  c                                           ; $587e: $0d
	nop                                              ; $587f: $00
	ld   a, [bc]                                     ; $5880: $0a
	inc  e                                           ; $5881: $1c
	dec  b                                           ; $5882: $05
	inc  bc                                          ; $5883: $03
	inc  bc                                          ; $5884: $03
	ld   bc, $9e78                                   ; $5885: $01 $78 $9e
	ld   a, b                                        ; $5888: $78
	and  c                                           ; $5889: $a1
	sub  d                                           ; $588a: $92
	rst  $38                                         ; $588b: $ff
	rst  $38                                         ; $588c: $ff
	ld   d, d                                        ; $588d: $52
	ld   e, e                                        ; $588e: $5b
	ld   a, b                                        ; $588f: $78
	sbc  b                                           ; $5890: $98
	ld   sp, hl                                      ; $5891: $f9
	dec  c                                           ; $5892: $0d
	nop                                              ; $5893: $00
	ld   a, [bc]                                     ; $5894: $0a
	rrca                                             ; $5895: $0f
	nop                                              ; $5896: $00
	ld   bc, $050d                                   ; $5897: $01 $0d $05
	nop                                              ; $589a: $00
	ld   bc, $6d04                                   ; $589b: $01 $04 $6d
	ld   [hl], c                                     ; $589e: $71
	ld   [hl], h                                     ; $589f: $74
	rst  $38                                         ; $58a0: $ff
	rst  $38                                         ; $58a1: $ff
	ld   [bc], a                                     ; $58a2: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58a3: $cf
	dec  b                                           ; $58a4: $05
	ld   a, [de]                                     ; $58a5: $1a
	ld   h, e                                        ; $58a6: $63
	and  c                                           ; $58a7: $a1
	ld   e, c                                        ; $58a8: $59
	sub  a                                           ; $58a9: $97
	ld   [bc], a                                     ; $58aa: $02
	sub  l                                           ; $58ab: $95
	ld   [hl], h                                     ; $58ac: $74
	dec  c                                           ; $58ad: $0d
	ld   [hl], a                                     ; $58ae: $77
	ld   d, h                                        ; $58af: $54
	ld   [hl], l                                     ; $58b0: $75
	ld   h, a                                        ; $58b1: $67
	ld   e, c                                        ; $58b2: $59
	ld   sp, hl                                      ; $58b3: $f9
	dec  c                                           ; $58b4: $0d
	nop                                              ; $58b5: $00
	ld   a, [bc]                                     ; $58b6: $0a
	inc  e                                           ; $58b7: $1c
	dec  b                                           ; $58b8: $05
	ld   [bc], a                                     ; $58b9: $02
	ld   [bc], a                                     ; $58ba: $02
	ld   bc, $fb54                                   ; $58bb: $01 $54 $fb
	and  c                                           ; $58be: $a1
	rst  $38                                         ; $58bf: $ff
	rst  $38                                         ; $58c0: $ff
	dec  c                                           ; $58c1: $0d
	adc  h                                           ; $58c2: $8c
	ld   d, b                                        ; $58c3: $50
	sbc  [hl]                                        ; $58c4: $9e
	ld   d, [hl]                                     ; $58c5: $56
	ld   d, [hl]                                     ; $58c6: $56
	and  $c5                                         ; $58c7: $e6 $c5
	sub  d                                           ; $58c9: $92
	halt                                             ; $58ca: $76
	dec  c                                           ; $58cb: $0d
	dec  b                                           ; $58cc: $05
	pop  de                                          ; $58cd: $d1
	ld   d, h                                        ; $58ce: $54
	ld   e, a                                        ; $58cf: $5f
	ld   [hl], a                                     ; $58d0: $77
	rst  $38                                         ; $58d1: $ff
	rst  $38                                         ; $58d2: $ff
	dec  c                                           ; $58d3: $0d
	nop                                              ; $58d4: $00
	ld   a, [bc]                                     ; $58d5: $0a
	inc  e                                           ; $58d6: $1c
	dec  b                                           ; $58d7: $05
	inc  b                                           ; $58d8: $04
	inc  b                                           ; $58d9: $04
	ld   bc, $0e04                                   ; $58da: $01 $04 $0e
	inc  bc                                          ; $58dd: $03
	sub  b                                           ; $58de: $90
	ld   a, l                                        ; $58df: $7d
	and  c                                           ; $58e0: $a1
	ld   a, c                                        ; $58e1: $79
	ld   a, l                                        ; $58e2: $7d
	dec  c                                           ; $58e3: $0d
	adc  h                                           ; $58e4: $8c
	ld   l, [hl]                                     ; $58e5: $6e
	ld   e, c                                        ; $58e6: $59
	ld   a, b                                        ; $58e7: $78
	sbc  l                                           ; $58e8: $9d
	and  c                                           ; $58e9: $a1
	ld   a, b                                        ; $58ea: $78
	sbc  a                                           ; $58eb: $9f
	dec  c                                           ; $58ec: $0d
	nop                                              ; $58ed: $00
	ld   a, [bc]                                     ; $58ee: $0a
	rrca                                             ; $58ef: $0f
	nop                                              ; $58f0: $00
	ld   bc, $9201                                   ; $58f1: $01 $01 $92
	ld   [hl], c                                     ; $58f4: $71
	ld   a, a                                        ; $58f5: $7f
	sbc  b                                           ; $58f6: $98
	inc  b                                           ; $58f7: $04
	ld   c, $03                                      ; $58f8: $0e $03
	sub  b                                           ; $58fa: $90
	ld   h, e                                        ; $58fb: $63
	and  c                                           ; $58fc: $a1
	ld   [hl], l                                     ; $58fd: $75
	ld   h, a                                        ; $58fe: $67
	ld   e, c                                        ; $58ff: $59
	rst  $38                                         ; $5900: $ff
	rst  $38                                         ; $5901: $ff
	dec  c                                           ; $5902: $0d
	nop                                              ; $5903: $00
	ld   a, [bc]                                     ; $5904: $0a
	ld   b, $e9                                      ; $5905: $06 $e9
	jr   jr_063_5918                                 ; $5907: $18 $0f

	nop                                              ; $5909: $00
	ld   bc, $0401                                   ; $590a: $01 $01 $04
	ld   c, $03                                      ; $590d: $0e $03
	sub  b                                           ; $590f: $90
	ld   h, e                                        ; $5910: $63
	and  c                                           ; $5911: $a1
	ld   e, d                                        ; $5912: $5a
	ld   [bc], a                                     ; $5913: $02
	sbc  d                                           ; $5914: $9a
	ld   e, e                                        ; $5915: $5b
	ld   a, b                                        ; $5916: $78
	and  c                                           ; $5917: $a1

jr_063_5918:
	ld   [hl], l                                     ; $5918: $75
	ld   h, a                                        ; $5919: $67
	ld   e, c                                        ; $591a: $59
	ld   sp, hl                                      ; $591b: $f9
	dec  c                                           ; $591c: $0d
	nop                                              ; $591d: $00
	ld   a, [bc]                                     ; $591e: $0a
	inc  e                                           ; $591f: $1c
	dec  b                                           ; $5920: $05
	ld   b, $06                                      ; $5921: $06 $06
	ld   bc, $9e6b                                   ; $5923: $01 $6b $9e
	ld   l, e                                        ; $5926: $6b
	sbc  d                                           ; $5927: $9a
	ld   a, l                                        ; $5928: $7d
	rst  $38                                         ; $5929: $ff
	rst  $38                                         ; $592a: $ff
	dec  c                                           ; $592b: $0d
	ld   a, b                                        ; $592c: $78
	and  c                                           ; $592d: $a1
	ld   l, a                                        ; $592e: $6f
	sub  e                                           ; $592f: $93
	ld   d, h                                        ; $5930: $54
	ld   e, c                                        ; $5931: $59
	rst  $38                                         ; $5932: $ff
	rst  $38                                         ; $5933: $ff
	dec  c                                           ; $5934: $0d
	nop                                              ; $5935: $00
	ld   a, [bc]                                     ; $5936: $0a
	inc  e                                           ; $5937: $1c
	dec  b                                           ; $5938: $05
	inc  b                                           ; $5939: $04
	inc  b                                           ; $593a: $04
	ld   bc, $5656                                   ; $593b: $01 $56 $56
	sub  d                                           ; $593e: $92
	and  c                                           ; $593f: $a1
	ld   e, c                                        ; $5940: $59
	rst  $38                                         ; $5941: $ff
	rst  $38                                         ; $5942: $ff
	ld   l, e                                        ; $5943: $6b
	and  c                                           ; $5944: $a1
	ld   a, b                                        ; $5945: $78
	ld   h, c                                        ; $5946: $61
	halt                                             ; $5947: $76
	sbc  a                                           ; $5948: $9f
	dec  c                                           ; $5949: $0d
	ld   [hl], a                                     ; $594a: $77
	ld   d, h                                        ; $594b: $54
	ld   [hl], l                                     ; $594c: $75
	sub  b                                           ; $594d: $90
	rst  $38                                         ; $594e: $ff
	rst  $38                                         ; $594f: $ff
	dec  c                                           ; $5950: $0d
	nop                                              ; $5951: $00
	ld   a, [bc]                                     ; $5952: $0a
	ld   b, $e9                                      ; $5953: $06 $e9
	jr   jr_063_5966                                 ; $5955: $18 $0f

	nop                                              ; $5957: $00
	ld   bc, $7701                                   ; $5958: $01 $01 $77
	and  c                                           ; $595b: $a1
	ld   a, b                                        ; $595c: $78
	inc  bc                                          ; $595d: $03
	add  d                                           ; $595e: $82
	ld   e, d                                        ; $595f: $5a
	ld   [bc], a                                     ; $5960: $02
	sbc  d                                           ; $5961: $9a
	ld   e, e                                        ; $5962: $5b
	ld   [hl], l                                     ; $5963: $75
	ld   h, a                                        ; $5964: $67
	ld   e, c                                        ; $5965: $59

jr_063_5966:
	ld   sp, hl                                      ; $5966: $f9
	dec  c                                           ; $5967: $0d
	nop                                              ; $5968: $00
	ld   a, [bc]                                     ; $5969: $0a
	inc  e                                           ; $596a: $1c
	dec  b                                           ; $596b: $05
	inc  b                                           ; $596c: $04
	inc  b                                           ; $596d: $04
	ld   bc, $546b                                   ; $596e: $01 $6b $54
	sub  d                                           ; $5971: $92
	ld   a, b                                        ; $5972: $78
	rst  $38                                         ; $5973: $ff
	rst  $38                                         ; $5974: $ff
	dec  c                                           ; $5975: $0d
	adc  h                                           ; $5976: $8c
	ld   d, b                                        ; $5977: $50
	sbc  [hl]                                        ; $5978: $9e
	ld   [bc], a                                     ; $5979: $02
	call nc, $7452                                   ; $597a: $d4 $52 $74
	ld   d, b                                        ; $597d: $50
	ld   h, b                                        ; $597e: $60
	sbc  d                                           ; $597f: $9a
	ld   a, [hl]                                     ; $5980: $7e
	dec  c                                           ; $5981: $0d
	inc  b                                           ; $5982: $04
	ld   c, $03                                      ; $5983: $0e $03
	sub  b                                           ; $5985: $90
	ld   a, l                                        ; $5986: $7d
	and  c                                           ; $5987: $a1
	adc  l                                           ; $5988: $8d
	ld   l, l                                        ; $5989: $6d
	ld   d, d                                        ; $598a: $52
	ld   a, b                                        ; $598b: $78
	rst  $38                                         ; $598c: $ff
	rst  $38                                         ; $598d: $ff
	dec  c                                           ; $598e: $0d
	nop                                              ; $598f: $00
	ld   a, [bc]                                     ; $5990: $0a
	ld   bc, $9e90                                   ; $5991: $01 $90 $9e
	sub  b                                           ; $5994: $90
	ld   d, h                                        ; $5995: $54
	ld   h, c                                        ; $5996: $61
	ld   a, h                                        ; $5997: $7c
	dec  b                                           ; $5998: $05
	jr   nz, @+$7f                                   ; $5999: $20 $7d

	sub  d                                           ; $599b: $92
	adc  a                                           ; $599c: $8f
	sub  d                                           ; $599d: $92
	sbc  a                                           ; $599e: $9f
	dec  c                                           ; $599f: $0d
	ld   h, c                                        ; $59a0: $61
	ld   l, e                                        ; $59a1: $6b
	ld   a, [hl]                                     ; $59a2: $7e
	sub  h                                           ; $59a3: $94
	ld   e, l                                        ; $59a4: $5d
	ld   a, b                                        ; $59a5: $78
	ld   [hl], c                                     ; $59a6: $71
	ld   [hl], h                                     ; $59a7: $74
	ld   e, e                                        ; $59a8: $5b
	ld   l, l                                        ; $59a9: $6d
	sbc  l                                           ; $59aa: $9d
	rst  $38                                         ; $59ab: $ff
	rst  $38                                         ; $59ac: $ff
	dec  c                                           ; $59ad: $0d
	nop                                              ; $59ae: $00
	ld   a, [bc]                                     ; $59af: $0a
	inc  e                                           ; $59b0: $1c
	dec  b                                           ; $59b1: $05
	inc  b                                           ; $59b2: $04
	inc  b                                           ; $59b3: $04
	ld   bc, $5078                                   ; $59b4: $01 $78 $50
	sbc  [hl]                                        ; $59b7: $9e
	ld   [$7d00], sp                                 ; $59b8: $08 $00 $7d
	and  c                                           ; $59bb: $a1
	rst  $38                                         ; $59bc: $ff
	rst  $38                                         ; $59bd: $ff
	dec  c                                           ; $59be: $0d
	ld   [bc], a                                     ; $59bf: $02
	and  l                                           ; $59c0: $a5
	ld   a, h                                        ; $59c1: $7c
	dec  b                                           ; $59c2: $05
	jr   nz, jr_063_5a42                             ; $59c3: $20 $7d

	inc  b                                           ; $59c5: $04
	ld   c, $03                                      ; $59c6: $0e $03
	sub  b                                           ; $59c8: $90
	ld   a, l                                        ; $59c9: $7d
	and  c                                           ; $59ca: $a1
	ld   a, c                                        ; $59cb: $79
	ld   a, l                                        ; $59cc: $7d
	dec  c                                           ; $59cd: $0d
	ld   [bc], a                                     ; $59ce: $02
	sbc  l                                           ; $59cf: $9d
	sbc  l                                           ; $59d0: $9d
	and  c                                           ; $59d1: $a1
	halt                                             ; $59d2: $76
	ld   d, d                                        ; $59d3: $52
	ld   [hl], h                                     ; $59d4: $74
	ld   a, b                                        ; $59d5: $78
	rst  $38                                         ; $59d6: $ff
	rst  $38                                         ; $59d7: $ff
	dec  c                                           ; $59d8: $0d
	nop                                              ; $59d9: $00
	ld   a, [bc]                                     ; $59da: $0a
	dec  c                                           ; $59db: $0d
	nop                                              ; $59dc: $00
	nop                                              ; $59dd: $00
	rrca                                             ; $59de: $0f
	nop                                              ; $59df: $00
	ld   bc, $020c                                   ; $59e0: $01 $0c $02
	ld   b, $50                                      ; $59e3: $06 $50
	add  hl, de                                      ; $59e5: $19
	rrca                                             ; $59e6: $0f
	nop                                              ; $59e7: $00
	ld   bc, $ff01                                   ; $59e8: $01 $01 $ff
	rst  $38                                         ; $59eb: $ff
	ld   a, b                                        ; $59ec: $78
	and  c                                           ; $59ed: $a1
	ld   [hl], l                                     ; $59ee: $75
	sub  b                                           ; $59ef: $90
	ld   d, b                                        ; $59f0: $50
	sbc  b                                           ; $59f1: $98
	adc  h                                           ; $59f2: $8c
	ld   l, c                                        ; $59f3: $69
	and  c                                           ; $59f4: $a1
	sbc  a                                           ; $59f5: $9f
	dec  c                                           ; $59f6: $0d
	nop                                              ; $59f7: $00
	ld   a, [bc]                                     ; $59f8: $0a
	inc  e                                           ; $59f9: $1c
	dec  b                                           ; $59fa: $05
	ld   [bc], a                                     ; $59fb: $02
	ld   [bc], a                                     ; $59fc: $02
	ld   bc, $a178                                   ; $59fd: $01 $78 $a1
	sub  d                                           ; $5a00: $92
	ld   [bc], a                                     ; $5a01: $02
	and  c                                           ; $5a02: $a1
	inc  bc                                          ; $5a03: $03
	dec  bc                                          ; $5a04: $0b
	ld   [bc], a                                     ; $5a05: $02
	jr   z, @+$54                                    ; $5a06: $28 $52

	ld   a, b                                        ; $5a08: $78
	ld   c, a                                        ; $5a09: $4f
	rst  $38                                         ; $5a0a: $ff
	rst  $38                                         ; $5a0b: $ff
	dec  c                                           ; $5a0c: $0d
	nop                                              ; $5a0d: $00
	ld   a, [bc]                                     ; $5a0e: $0a
	dec  c                                           ; $5a0f: $0d
	nop                                              ; $5a10: $00
	nop                                              ; $5a11: $00
	rrca                                             ; $5a12: $0f
	nop                                              ; $5a13: $00
	ld   bc, $020c                                   ; $5a14: $01 $0c $02
	ld   c, $06                                      ; $5a17: $0e $06
	inc  e                                           ; $5a19: $1c
	dec  b                                           ; $5a1a: $05
	ld   bc, $0101                                   ; $5a1b: $01 $01 $01
	ld   [$7d00], sp                                 ; $5a1e: $08 $00 $7d
	and  c                                           ; $5a21: $a1
	sbc  [hl]                                        ; $5a22: $9e
	dec  c                                           ; $5a23: $0d
	ld   [bc], a                                     ; $5a24: $02
	and  l                                           ; $5a25: $a5
	inc  b                                           ; $5a26: $04
	xor  d                                           ; $5a27: $aa
	ld   a, l                                        ; $5a28: $7d
	ld   h, d                                        ; $5a29: $62
	ld   e, l                                        ; $5a2a: $5d
	sbc  e                                           ; $5a2b: $9b
	ld   d, h                                        ; $5a2c: $54
	ld   h, e                                        ; $5a2d: $63
	and  c                                           ; $5a2e: $a1
	sub  d                                           ; $5a2f: $92
	ld   [hl], c                                     ; $5a30: $71
	ld   l, l                                        ; $5a31: $6d
	ld   a, b                                        ; $5a32: $78
	sbc  a                                           ; $5a33: $9f
	dec  c                                           ; $5a34: $0d
	nop                                              ; $5a35: $00
	ld   a, [bc]                                     ; $5a36: $0a
	inc  e                                           ; $5a37: $1c
	dec  b                                           ; $5a38: $05
	nop                                              ; $5a39: $00
	nop                                              ; $5a3a: $00
	ld   bc, $546b                                   ; $5a3b: $01 $6b $54
	sub  d                                           ; $5a3e: $92
	sbc  a                                           ; $5a3f: $9f
	dec  c                                           ; $5a40: $0d
	inc  b                                           ; $5a41: $04

jr_063_5a42:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a42: $cf
	inc  b                                           ; $5a43: $04
	xor  d                                           ; $5a44: $aa
	ld   a, l                                        ; $5a45: $7d
	inc  bc                                          ; $5a46: $03
	ld   l, c                                        ; $5a47: $69
	inc  bc                                          ; $5a48: $03
	ld   a, [hl]                                     ; $5a49: $7e
	rst  ToBoot                                         ; $5a4a: $c7
	cp   d                                           ; $5a4b: $ba
	ret                                              ; $5a4c: $c9


	sub  d                                           ; $5a4d: $92
	ld   a, e                                        ; $5a4e: $7b
	and  c                                           ; $5a4f: $a1
	ld   a, b                                        ; $5a50: $78
	sbc  a                                           ; $5a51: $9f
	dec  c                                           ; $5a52: $0d
	nop                                              ; $5a53: $00
	ld   a, [bc]                                     ; $5a54: $0a
	ld   d, $28                                      ; $5a55: $16 $28
	rrca                                             ; $5a57: $0f
	dec  b                                           ; $5a58: $05
	ld   bc, $7d01                                   ; $5a59: $01 $01 $7d
	ld   d, d                                        ; $5a5c: $52
	sbc  [hl]                                        ; $5a5d: $9e
	ld   h, c                                        ; $5a5e: $61
	sbc  d                                           ; $5a5f: $9a
	rst  $38                                         ; $5a60: $ff
	rst  $38                                         ; $5a61: $ff
	dec  c                                           ; $5a62: $0d
	nop                                              ; $5a63: $00
	ld   a, [bc]                                     ; $5a64: $0a
	rrca                                             ; $5a65: $0f
	nop                                              ; $5a66: $00
	ld   bc, $0401                                   ; $5a67: $01 $01 $04
	dec  hl                                          ; $5a6a: $2b
	dec  b                                           ; $5a6b: $05
	adc  l                                           ; $5a6c: $8d
	ld   a, h                                        ; $5a6d: $7c
	dec  b                                           ; $5a6e: $05
	inc  e                                           ; $5a6f: $1c
	rst  $38                                         ; $5a70: $ff
	rst  $38                                         ; $5a71: $ff
	ld   sp, hl                                      ; $5a72: $f9
	dec  c                                           ; $5a73: $0d
	nop                                              ; $5a74: $00
	ld   a, [bc]                                     ; $5a75: $0a
	rrca                                             ; $5a76: $0f
	dec  b                                           ; $5a77: $05
	inc  b                                           ; $5a78: $04
	ld   bc, $9a6b                                   ; $5a79: $01 $6b $9a
	ld   [hl], l                                     ; $5a7c: $75
	sbc  [hl]                                        ; $5a7d: $9e
	ld   e, e                                        ; $5a7e: $5b
	and  c                                           ; $5a7f: $a1
	ld   l, a                                        ; $5a80: $6f
	sub  l                                           ; $5a81: $95
	ld   d, h                                        ; $5a82: $54
	and  b                                           ; $5a83: $a0
	dec  c                                           ; $5a84: $0d
	adc  c                                           ; $5a85: $89
	ld   e, [hl]                                     ; $5a86: $5e
	ld   h, l                                        ; $5a87: $65
	ld   l, l                                        ; $5a88: $6d
	sub  a                                           ; $5a89: $97
	halt                                             ; $5a8a: $76
	rst  $38                                         ; $5a8b: $ff
	rst  $38                                         ; $5a8c: $ff
	dec  b                                           ; $5a8d: $05
	pop  de                                          ; $5a8e: $d1
	ld   [hl], c                                     ; $5a8f: $71
	ld   [hl], h                                     ; $5a90: $74
	ld   a, b                                        ; $5a91: $78
	sbc  a                                           ; $5a92: $9f
	dec  c                                           ; $5a93: $0d
	nop                                              ; $5a94: $00
	ld   a, [bc]                                     ; $5a95: $0a
	rrca                                             ; $5a96: $0f
	nop                                              ; $5a97: $00
	ld   bc, $5001                                   ; $5a98: $01 $01 $50
	sbc  b                                           ; $5a9b: $98
	ld   e, d                                        ; $5a9c: $5a
	halt                                             ; $5a9d: $76
	ld   d, h                                        ; $5a9e: $54
	ld   h, d                                        ; $5a9f: $62
	ld   h, h                                        ; $5aa0: $64
	ld   d, d                                        ; $5aa1: $52
	adc  h                                           ; $5aa2: $8c
	ld   h, a                                        ; $5aa3: $67
	ld   a, [$000d]                                  ; $5aa4: $fa $0d $00
	dec  b                                           ; $5aa7: $05
	add  b                                           ; $5aa8: $80
	jr   c, @+$03                                    ; $5aa9: $38 $01

	ld   bc, $0100                                   ; $5aab: $01 $00 $01
	inc  b                                           ; $5aae: $04
	ld   l, l                                        ; $5aaf: $6d
	sbc  [hl]                                        ; $5ab0: $9e
	ld   e, d                                        ; $5ab1: $5a
	and  c                                           ; $5ab2: $a1
	ld   a, [hl]                                     ; $5ab3: $7e
	sbc  b                                           ; $5ab4: $98
	adc  h                                           ; $5ab5: $8c
	ld   h, a                                        ; $5ab6: $67
	sbc  a                                           ; $5ab7: $9f
	dec  c                                           ; $5ab8: $0d
	nop                                              ; $5ab9: $00
	ld   a, [bc]                                     ; $5aba: $0a
	add  hl, hl                                      ; $5abb: $29
	nop                                              ; $5abc: $00
	nop                                              ; $5abd: $00
	nop                                              ; $5abe: $00
	inc  b                                           ; $5abf: $04
	add  b                                           ; $5ac0: $80
	sub  c                                           ; $5ac1: $91
	ld   bc, $20ff                                   ; $5ac2: $01 $ff $20
	nop                                              ; $5ac5: $00
	ld   c, $01                                      ; $5ac6: $0e $01
	rrca                                             ; $5ac8: $0f
	nop                                              ; $5ac9: $00
	ld   bc, $0102                                   ; $5aca: $01 $02 $01
	ld   [bc], a                                     ; $5acd: $02
	and  l                                           ; $5ace: $a5
	inc  b                                           ; $5acf: $04
	xor  d                                           ; $5ad0: $aa
	ld   a, l                                        ; $5ad1: $7d
	sbc  [hl]                                        ; $5ad2: $9e
	ld   h, a                                        ; $5ad3: $67
	adc  l                                           ; $5ad4: $8d
	sbc  d                                           ; $5ad5: $9a
	ld   h, e                                        ; $5ad6: $63
	and  c                                           ; $5ad7: $a1
	halt                                             ; $5ad8: $76
	dec  c                                           ; $5ad9: $0d
	ld   e, b                                        ; $5ada: $58
	inc  b                                           ; $5adb: $04
	adc  l                                           ; $5adc: $8d
	ld   d, d                                        ; $5add: $52
	inc  b                                           ; $5ade: $04
	sub  d                                           ; $5adf: $92
	ld   l, [hl]                                     ; $5ae0: $6e
	sbc  a                                           ; $5ae1: $9f
	dec  c                                           ; $5ae2: $0d
	dec  b                                           ; $5ae3: $05
	jr   z, @+$54                                    ; $5ae4: $28 $52

	ld   [hl], l                                     ; $5ae6: $75
	inc  b                                           ; $5ae7: $04
	rlca                                             ; $5ae8: $07
	dec  b                                           ; $5ae9: $05
	scf                                              ; $5aea: $37
	ld   d, [hl]                                     ; $5aeb: $56
	ld   a, b                                        ; $5aec: $78
	ld   e, l                                        ; $5aed: $5d
	ld   l, a                                        ; $5aee: $6f
	sub  c                                           ; $5aef: $91
	sbc  a                                           ; $5af0: $9f
	dec  c                                           ; $5af1: $0d
	nop                                              ; $5af2: $00
	ld   a, [bc]                                     ; $5af3: $0a
	add  hl, de                                      ; $5af4: $19
	inc  b                                           ; $5af5: $04
	inc  bc                                          ; $5af6: $03
	ld   b, $4c                                      ; $5af7: $06 $4c
	and  b                                           ; $5af9: $a0
	adc  l                                           ; $5afa: $8d
	ld   e, d                                        ; $5afb: $5a
	ld   e, l                                        ; $5afc: $5d
	nop                                              ; $5afd: $00
	nop                                              ; $5afe: $00
	dec  b                                           ; $5aff: $05
	ld   e, $a0                                      ; $5b00: $1e $a0
	adc  l                                           ; $5b02: $8d
	ld   e, d                                        ; $5b03: $5a
	ld   e, l                                        ; $5b04: $5d
	nop                                              ; $5b05: $00
	ld   bc, $b9eb                                   ; $5b06: $01 $eb $b9
	xor  e                                           ; $5b09: $ab
	inc  b                                           ; $5b0a: $04
	dec  c                                           ; $5b0b: $0d
	ld   b, $5a                                      ; $5b0c: $06 $5a
	and  b                                           ; $5b0e: $a0
	ld   h, a                                        ; $5b0f: $67
	sbc  c                                           ; $5b10: $99
	nop                                              ; $5b11: $00
	ld   [bc], a                                     ; $5b12: $02
	rlca                                             ; $5b13: $07
	ld   l, e                                        ; $5b14: $6b
	nop                                              ; $5b15: $00
	ld   [bc], a                                     ; $5b16: $02
	inc  bc                                          ; $5b17: $03
	ld   bc, $2000                                   ; $5b18: $01 $00 $20
	nop                                              ; $5b1b: $00
	rlca                                             ; $5b1c: $07
	sbc  e                                           ; $5b1d: $9b
	nop                                              ; $5b1e: $00
	ld   [bc], a                                     ; $5b1f: $02
	inc  bc                                          ; $5b20: $03
	ld   bc, $2001                                   ; $5b21: $01 $01 $20
	nop                                              ; $5b24: $00
	rlca                                             ; $5b25: $07
	call c, $0200                                    ; $5b26: $dc $00 $02
	inc  bc                                          ; $5b29: $03
	ld   bc, $2002                                   ; $5b2a: $01 $02 $20
	nop                                              ; $5b2d: $00
	ld   b, $16                                      ; $5b2e: $06 $16
	ld   bc, $000f                                   ; $5b30: $01 $0f $00
	ld   bc, $9601                                   ; $5b33: $01 $01 $96
	ld   h, l                                        ; $5b36: $65
	ld   a, [$0610]                                  ; $5b37: $fa $10 $06
	ld   c, h                                        ; $5b3a: $4c
	and  b                                           ; $5b3b: $a0
	adc  l                                           ; $5b3c: $8d
	ld   e, d                                        ; $5b3d: $5a
	ld   e, l                                        ; $5b3e: $5d
	ld   l, h                                        ; $5b3f: $6c
	ei                                               ; $5b40: $fb
	ld   a, [$060d]                                  ; $5b41: $fa $0d $06
	ld   c, h                                        ; $5b44: $4c
	ld   a, l                                        ; $5b45: $7d
	xor  [hl]                                        ; $5b46: $ae
	xor  $a5                                         ; $5b47: $ee $a5
	ld   a, c                                        ; $5b49: $79
	ld   h, l                                        ; $5b4a: $65
	halt                                             ; $5b4b: $76
	ld   e, c                                        ; $5b4c: $59
	ld   a, b                                        ; $5b4d: $78
	ld   d, d                                        ; $5b4e: $52
	halt                                             ; $5b4f: $76
	ld   a, e                                        ; $5b50: $7b
	sbc  a                                           ; $5b51: $9f
	dec  c                                           ; $5b52: $0d
	nop                                              ; $5b53: $00
	ld   a, [bc]                                     ; $5b54: $0a
	dec  b                                           ; $5b55: $05
	ld   b, b                                        ; $5b56: $40
	rst  $38                                         ; $5b57: $ff
	inc  bc                                          ; $5b58: $03
	rst  $38                                         ; $5b59: $ff
	ld   bc, $2801                                   ; $5b5a: $01 $01 $28
	nop                                              ; $5b5d: $00
	ld   b, $39                                      ; $5b5e: $06 $39
	ld   bc, $000f                                   ; $5b60: $01 $0f $00
	ld   bc, $9601                                   ; $5b63: $01 $01 $96
	ld   h, l                                        ; $5b66: $65
	ld   a, [$0510]                                  ; $5b67: $fa $10 $05
	ld   e, $a0                                      ; $5b6a: $1e $a0
	adc  l                                           ; $5b6c: $8d
	ld   e, d                                        ; $5b6d: $5a
	ld   e, l                                        ; $5b6e: $5d
	ld   l, h                                        ; $5b6f: $6c
	ei                                               ; $5b70: $fb
	ld   a, [$0dfa]                                  ; $5b71: $fa $fa $0d
	rst  $38                                         ; $5b74: $ff
	rst  $38                                         ; $5b75: $ff
	and  c                                           ; $5b76: $a1
	ld   sp, hl                                      ; $5b77: $f9
	db   $10                                         ; $5b78: $10
	ld   [bc], a                                     ; $5b79: $02
	and  l                                           ; $5b7a: $a5
	ld   e, c                                        ; $5b7b: $59
	sub  a                                           ; $5b7c: $97
	inc  bc                                          ; $5b7d: $03
	ld   l, l                                        ; $5b7e: $6d
	dec  b                                           ; $5b7f: $05
	add  hl, de                                      ; $5b80: $19
	ld   a, c                                        ; $5b81: $79
	ld   [bc], a                                     ; $5b82: $02
	ld   a, a                                        ; $5b83: $7f
	ld   e, l                                        ; $5b84: $5d
	dec  c                                           ; $5b85: $0d
	nop                                              ; $5b86: $00
	dec  b                                           ; $5b87: $05
	ld   b, b                                        ; $5b88: $40
	rst  $38                                         ; $5b89: $ff
	inc  bc                                          ; $5b8a: $03
	rst  $38                                         ; $5b8b: $ff
	ld   bc, $2801                                   ; $5b8c: $01 $01 $28
	nop                                              ; $5b8f: $00
	ld   bc, $66a1                                   ; $5b90: $01 $a1 $66
	sub  c                                           ; $5b93: $91
	ld   a, b                                        ; $5b94: $78
	ld   d, d                                        ; $5b95: $52
	and  c                                           ; $5b96: $a1
	ld   l, [hl]                                     ; $5b97: $6e
	sub  [hl]                                        ; $5b98: $96
	ld   a, b                                        ; $5b99: $78
	rst  $38                                         ; $5b9a: $ff
	rst  $38                                         ; $5b9b: $ff
	dec  c                                           ; $5b9c: $0d
	nop                                              ; $5b9d: $00
	ld   a, [bc]                                     ; $5b9e: $0a
	ld   b, $2e                                      ; $5b9f: $06 $2e
	nop                                              ; $5ba1: $00
	rrca                                             ; $5ba2: $0f
	nop                                              ; $5ba3: $00
	ld   bc, $9601                                   ; $5ba4: $01 $01 $96
	ld   h, l                                        ; $5ba7: $65
	ld   a, [$eb10]                                  ; $5ba8: $fa $10 $eb
	cp   c                                           ; $5bab: $b9
	xor  e                                           ; $5bac: $ab
	inc  b                                           ; $5bad: $04
	dec  c                                           ; $5bae: $0d
	ld   b, $5a                                      ; $5baf: $06 $5a
	ld   h, a                                        ; $5bb1: $67
	sbc  c                                           ; $5bb2: $99
	ld   l, h                                        ; $5bb3: $6c
	ld   a, [$ff0d]                                  ; $5bb4: $fa $0d $ff
	rst  $38                                         ; $5bb7: $ff
	ld   [hl], h                                     ; $5bb8: $74
	sbc  [hl]                                        ; $5bb9: $9e
	ld   l, e                                        ; $5bba: $6b
	and  c                                           ; $5bbb: $a1
	ld   a, b                                        ; $5bbc: $78
	ld   h, c                                        ; $5bbd: $61
	halt                                             ; $5bbe: $76
	ld   h, l                                        ; $5bbf: $65
	ld   [hl], h                                     ; $5bc0: $74
	sbc  c                                           ; $5bc1: $99
	inc  bc                                          ; $5bc2: $03
	ld   l, a                                        ; $5bc3: $6f
	ld   [bc], a                                     ; $5bc4: $02
	xor  c                                           ; $5bc5: $a9
	dec  c                                           ; $5bc6: $0d
	nop                                              ; $5bc7: $00
	dec  b                                           ; $5bc8: $05
	ld   b, b                                        ; $5bc9: $40
	rst  $38                                         ; $5bca: $ff
	inc  bc                                          ; $5bcb: $03
	rst  $38                                         ; $5bcc: $ff
	ld   bc, $2801                                   ; $5bcd: $01 $01 $28
	nop                                              ; $5bd0: $00
	ld   bc, $5278                                   ; $5bd1: $01 $78 $52
	sub  [hl]                                        ; $5bd4: $96
	sbc  a                                           ; $5bd5: $9f
	dec  c                                           ; $5bd6: $0d
	nop                                              ; $5bd7: $00
	ld   a, [bc]                                     ; $5bd8: $0a
	ld   b, $2e                                      ; $5bd9: $06 $2e
	nop                                              ; $5bdb: $00
	rrca                                             ; $5bdc: $0f
	nop                                              ; $5bdd: $00
	ld   bc, $8c01                                   ; $5bde: $01 $01 $8c
	ld   l, b                                        ; $5be1: $68
	ld   a, l                                        ; $5be2: $7d
	rst  $38                                         ; $5be3: $ff
	rst  $38                                         ; $5be4: $ff
	dec  c                                           ; $5be5: $0d
	ld   [hl], a                                     ; $5be6: $77
	ld   d, h                                        ; $5be7: $54
	ld   h, l                                        ; $5be8: $65
	sub  [hl]                                        ; $5be9: $96
	ld   d, h                                        ; $5bea: $54
	ld   e, c                                        ; $5beb: $59
	rst  $38                                         ; $5bec: $ff
	rst  $38                                         ; $5bed: $ff
	rst  $38                                         ; $5bee: $ff
	rst  $38                                         ; $5bef: $ff
	dec  c                                           ; $5bf0: $0d
	nop                                              ; $5bf1: $00
	ld   a, [bc]                                     ; $5bf2: $0a
	dec  b                                           ; $5bf3: $05
	ld   b, b                                        ; $5bf4: $40
	rst  $38                                         ; $5bf5: $ff
	inc  bc                                          ; $5bf6: $03
	rst  $38                                         ; $5bf7: $ff
	ld   bc, $2801                                   ; $5bf8: $01 $01 $28
	nop                                              ; $5bfb: $00
	ld   b, $2e                                      ; $5bfc: $06 $2e
	nop                                              ; $5bfe: $00
	add  hl, de                                      ; $5bff: $19
	inc  b                                           ; $5c00: $04
	inc  bc                                          ; $5c01: $03
	inc  b                                           ; $5c02: $04
	and  l                                           ; $5c03: $a5
	and  b                                           ; $5c04: $a0
	inc  b                                           ; $5c05: $04
	rlca                                             ; $5c06: $07
	sbc  c                                           ; $5c07: $99
	nop                                              ; $5c08: $00
	nop                                              ; $5c09: $00
	inc  b                                           ; $5c0a: $04
	and  l                                           ; $5c0b: $a5
	and  b                                           ; $5c0c: $a0
	ld   a, d                                        ; $5c0d: $7a
	ld   e, [hl]                                     ; $5c0e: $5e
	nop                                              ; $5c0f: $00
	ld   bc, $b1d6                                   ; $5c10: $01 $d6 $b1
	and  b                                           ; $5c13: $a0
	inc  bc                                          ; $5c14: $03
	dec  de                                          ; $5c15: $1b
	sbc  c                                           ; $5c16: $99
	nop                                              ; $5c17: $00
	ld   [bc], a                                     ; $5c18: $02
	rlca                                             ; $5c19: $07
	ld   [hl], c                                     ; $5c1a: $71
	ld   bc, $0302                                   ; $5c1b: $01 $02 $03
	ld   bc, $2000                                   ; $5c1e: $01 $00 $20
	nop                                              ; $5c21: $00
	rlca                                             ; $5c22: $07
	sub  l                                           ; $5c23: $95
	ld   bc, $0302                                   ; $5c24: $01 $02 $03
	ld   bc, $2001                                   ; $5c27: $01 $01 $20
	nop                                              ; $5c2a: $00
	rlca                                             ; $5c2b: $07
	call $0201                                       ; $5c2c: $cd $01 $02
	inc  bc                                          ; $5c2f: $03
	ld   bc, $2002                                   ; $5c30: $01 $02 $20
	nop                                              ; $5c33: $00
	ld   b, $0f                                      ; $5c34: $06 $0f
	ld   [bc], a                                     ; $5c36: $02
	rrca                                             ; $5c37: $0f
	nop                                              ; $5c38: $00
	ld   bc, $0601                                   ; $5c39: $01 $01 $06
	ld   c, h                                        ; $5c3c: $4c
	and  b                                           ; $5c3d: $a0
	adc  l                                           ; $5c3e: $8d
	ld   e, d                                        ; $5c3f: $5a
	ld   d, d                                        ; $5c40: $52
	ld   l, l                                        ; $5c41: $6d
	sub  a                                           ; $5c42: $97
	sbc  [hl]                                        ; $5c43: $9e
	inc  b                                           ; $5c44: $04
	and  l                                           ; $5c45: $a5
	and  b                                           ; $5c46: $a0
	inc  b                                           ; $5c47: $04
	rlca                                             ; $5c48: $07
	ld   [hl], h                                     ; $5c49: $74
	halt                                             ; $5c4a: $76
	rst  $38                                         ; $5c4b: $ff
	dec  c                                           ; $5c4c: $0d
	nop                                              ; $5c4d: $00
	ld   a, [bc]                                     ; $5c4e: $0a
	dec  b                                           ; $5c4f: $05
	ld   b, b                                        ; $5c50: $40
	rst  $38                                         ; $5c51: $ff
	inc  bc                                          ; $5c52: $03
	rst  $38                                         ; $5c53: $ff
	ld   bc, $2801                                   ; $5c54: $01 $01 $28
	nop                                              ; $5c57: $00
	ld   b, $32                                      ; $5c58: $06 $32
	ld   [bc], a                                     ; $5c5a: $02
	rrca                                             ; $5c5b: $0f
	nop                                              ; $5c5c: $00
	ld   bc, $0601                                   ; $5c5d: $01 $01 $06
	ld   c, h                                        ; $5c60: $4c
	and  b                                           ; $5c61: $a0
	adc  l                                           ; $5c62: $8d
	ld   e, d                                        ; $5c63: $5a
	ld   d, d                                        ; $5c64: $52
	ld   l, l                                        ; $5c65: $6d
	sub  a                                           ; $5c66: $97
	sbc  [hl]                                        ; $5c67: $9e
	inc  b                                           ; $5c68: $04
	and  l                                           ; $5c69: $a5
	and  b                                           ; $5c6a: $a0
	ld   a, d                                        ; $5c6b: $7a
	ld   d, d                                        ; $5c6c: $52
	ld   [hl], l                                     ; $5c6d: $75
	dec  c                                           ; $5c6e: $0d
	rst  $38                                         ; $5c6f: $ff
	rst  $38                                         ; $5c70: $ff
	ld   a, d                                        ; $5c71: $7a
	ld   d, d                                        ; $5c72: $52
	ld   h, [hl]                                     ; $5c73: $66
	sub  c                                           ; $5c74: $91
	pop  bc                                          ; $5c75: $c1
	db   $e3                                         ; $5c76: $e3
	ld   [hl], l                                     ; $5c77: $75
	ld   h, l                                        ; $5c78: $65
	sub  l                                           ; $5c79: $95
	sbc  a                                           ; $5c7a: $9f
	dec  c                                           ; $5c7b: $0d
	nop                                              ; $5c7c: $00
	dec  b                                           ; $5c7d: $05
	ld   b, b                                        ; $5c7e: $40
	rst  $38                                         ; $5c7f: $ff
	inc  bc                                          ; $5c80: $03
	rst  $38                                         ; $5c81: $ff
	ld   bc, $2801                                   ; $5c82: $01 $01 $28
	nop                                              ; $5c85: $00
	ld   bc, $0704                                   ; $5c86: $01 $04 $07
	ld   a, b                                        ; $5c89: $78
	ld   e, e                                        ; $5c8a: $5b
	sub  c                                           ; $5c8b: $91
	sbc  a                                           ; $5c8c: $9f
	dec  c                                           ; $5c8d: $0d
	nop                                              ; $5c8e: $00
	ld   a, [bc]                                     ; $5c8f: $0a
	ld   b, $39                                      ; $5c90: $06 $39
	ld   bc, $000f                                   ; $5c92: $01 $0f $00
	ld   bc, $0601                                   ; $5c95: $01 $01 $06
	ld   c, h                                        ; $5c98: $4c
	and  b                                           ; $5c99: $a0
	adc  l                                           ; $5c9a: $8d
	ld   e, d                                        ; $5c9b: $5a
	ld   d, d                                        ; $5c9c: $52
	ld   l, l                                        ; $5c9d: $6d
	sub  a                                           ; $5c9e: $97
	sbc  [hl]                                        ; $5c9f: $9e
	sub  $b1                                         ; $5ca0: $d6 $b1
	and  b                                           ; $5ca2: $a0
	inc  bc                                          ; $5ca3: $03
	dec  de                                          ; $5ca4: $1b
	ld   [hl], c                                     ; $5ca5: $71
	ld   [hl], h                                     ; $5ca6: $74
	dec  c                                           ; $5ca7: $0d
	rst  $38                                         ; $5ca8: $ff
	rst  $38                                         ; $5ca9: $ff
	ld   [hl], h                                     ; $5caa: $74
	sbc  [hl]                                        ; $5cab: $9e
	cp   b                                           ; $5cac: $b8
	rst  $28                                         ; $5cad: $ef
	and  a                                           ; $5cae: $a7
	ret                                              ; $5caf: $c9


	ld   e, d                                        ; $5cb0: $5a
	inc  bc                                          ; $5cb1: $03
	ld   c, [hl]                                     ; $5cb2: $4e
	inc  bc                                          ; $5cb3: $03
	ld   l, e                                        ; $5cb4: $6b
	ld   a, c                                        ; $5cb5: $79
	dec  c                                           ; $5cb6: $0d
	nop                                              ; $5cb7: $00
	dec  b                                           ; $5cb8: $05
	ld   b, b                                        ; $5cb9: $40
	rst  $38                                         ; $5cba: $ff
	inc  bc                                          ; $5cbb: $03
	rst  $38                                         ; $5cbc: $ff
	ld   bc, $2801                                   ; $5cbd: $01 $01 $28
	nop                                              ; $5cc0: $00
	ld   bc, $b1d6                                   ; $5cc1: $01 $d6 $b1
	and  b                                           ; $5cc4: $a0
	ld   h, e                                        ; $5cc5: $63
	ld   a, [hl]                                     ; $5cc6: $7e
	ld   d, d                                        ; $5cc7: $52
	ld   l, a                                        ; $5cc8: $6f
	sub  c                                           ; $5cc9: $91
	pop  bc                                          ; $5cca: $c1
	db   $e3                                         ; $5ccb: $e3
	ld   l, [hl]                                     ; $5ccc: $6e
	sub  [hl]                                        ; $5ccd: $96
	sbc  a                                           ; $5cce: $9f
	dec  c                                           ; $5ccf: $0d
	nop                                              ; $5cd0: $00
	ld   a, [bc]                                     ; $5cd1: $0a
	ld   b, $39                                      ; $5cd2: $06 $39
	ld   bc, $000f                                   ; $5cd4: $01 $0f $00
	ld   bc, $0301                                   ; $5cd7: $01 $01 $03
	ld   l, b                                        ; $5cda: $68
	ld   a, c                                        ; $5cdb: $79
	rst  $38                                         ; $5cdc: $ff
	rst  $38                                         ; $5cdd: $ff
	dec  c                                           ; $5cde: $0d
	ld   [hl], a                                     ; $5cdf: $77
	ld   d, h                                        ; $5ce0: $54
	ld   h, l                                        ; $5ce1: $65
	sub  [hl]                                        ; $5ce2: $96
	ld   d, h                                        ; $5ce3: $54
	ld   e, c                                        ; $5ce4: $59
	rst  $38                                         ; $5ce5: $ff
	rst  $38                                         ; $5ce6: $ff
	rst  $38                                         ; $5ce7: $ff
	rst  $38                                         ; $5ce8: $ff
	dec  c                                           ; $5ce9: $0d
	nop                                              ; $5cea: $00
	ld   a, [bc]                                     ; $5ceb: $0a
	dec  b                                           ; $5cec: $05
	ld   b, b                                        ; $5ced: $40
	rst  $38                                         ; $5cee: $ff
	inc  bc                                          ; $5cef: $03
	rst  $38                                         ; $5cf0: $ff
	ld   bc, $2801                                   ; $5cf1: $01 $01 $28
	nop                                              ; $5cf4: $00
	ld   b, $39                                      ; $5cf5: $06 $39
	ld   bc, $0419                                   ; $5cf7: $01 $19 $04
	inc  bc                                          ; $5cfa: $03
	inc  b                                           ; $5cfb: $04
	ld   l, d                                        ; $5cfc: $6a
	and  b                                           ; $5cfd: $a0
	halt                                             ; $5cfe: $76
	halt                                             ; $5cff: $76
	ld   a, h                                        ; $5d00: $7c
	ld   d, [hl]                                     ; $5d01: $56
	sbc  c                                           ; $5d02: $99
	nop                                              ; $5d03: $00
	nop                                              ; $5d04: $00
	ld   e, c                                        ; $5d05: $59
	ld   e, d                                        ; $5d06: $5a
	adc  l                                           ; $5d07: $8d
	ld   a, c                                        ; $5d08: $79
	adc  l                                           ; $5d09: $8d
	halt                                             ; $5d0a: $76
	sbc  d                                           ; $5d0b: $9a
	sbc  c                                           ; $5d0c: $99
	nop                                              ; $5d0d: $00
	ld   bc, $6a04                                   ; $5d0e: $01 $04 $6a
	and  b                                           ; $5d11: $a0
	ld   d, b                                        ; $5d12: $50
	adc  [hl]                                        ; $5d13: $8e
	nop                                              ; $5d14: $00
	ld   [bc], a                                     ; $5d15: $02
	rlca                                             ; $5d16: $07
	ld   l, [hl]                                     ; $5d17: $6e
	ld   [bc], a                                     ; $5d18: $02
	ld   [bc], a                                     ; $5d19: $02
	inc  bc                                          ; $5d1a: $03
	ld   bc, $2000                                   ; $5d1b: $01 $00 $20
	nop                                              ; $5d1e: $00
	rlca                                             ; $5d1f: $07
	adc  [hl]                                        ; $5d20: $8e
	ld   [bc], a                                     ; $5d21: $02
	ld   [bc], a                                     ; $5d22: $02
	inc  bc                                          ; $5d23: $03
	ld   bc, $2001                                   ; $5d24: $01 $01 $20
	nop                                              ; $5d27: $00
	rlca                                             ; $5d28: $07
	ret  nc                                          ; $5d29: $d0

	ld   [bc], a                                     ; $5d2a: $02
	ld   [bc], a                                     ; $5d2b: $02
	inc  bc                                          ; $5d2c: $03
	ld   bc, $2002                                   ; $5d2d: $01 $02 $20
	nop                                              ; $5d30: $00
	ld   b, $01                                      ; $5d31: $06 $01
	inc  bc                                          ; $5d33: $03
	rrca                                             ; $5d34: $0f
	nop                                              ; $5d35: $00
	ld   bc, $6b01                                   ; $5d36: $01 $01 $6b
	ld   h, l                                        ; $5d39: $65
	ld   [hl], h                                     ; $5d3a: $74
	sbc  [hl]                                        ; $5d3b: $9e
	inc  b                                           ; $5d3c: $04
	ld   l, d                                        ; $5d3d: $6a
	and  b                                           ; $5d3e: $a0
	halt                                             ; $5d3f: $76
	halt                                             ; $5d40: $76
	ld   a, h                                        ; $5d41: $7c
	ld   d, [hl]                                     ; $5d42: $56
	ld   [hl], h                                     ; $5d43: $74
	sbc  a                                           ; $5d44: $9f
	dec  c                                           ; $5d45: $0d
	nop                                              ; $5d46: $00
	ld   a, [bc]                                     ; $5d47: $0a
	dec  b                                           ; $5d48: $05
	ld   b, b                                        ; $5d49: $40
	rst  $38                                         ; $5d4a: $ff
	inc  bc                                          ; $5d4b: $03
	rst  $38                                         ; $5d4c: $ff
	ld   bc, $2801                                   ; $5d4d: $01 $01 $28
	nop                                              ; $5d50: $00
	ld   b, $24                                      ; $5d51: $06 $24
	inc  bc                                          ; $5d53: $03
	rrca                                             ; $5d54: $0f
	nop                                              ; $5d55: $00
	ld   bc, $6b01                                   ; $5d56: $01 $01 $6b
	ld   h, l                                        ; $5d59: $65
	ld   [hl], h                                     ; $5d5a: $74
	sbc  [hl]                                        ; $5d5b: $9e
	ld   e, c                                        ; $5d5c: $59
	ld   e, d                                        ; $5d5d: $5a
	adc  l                                           ; $5d5e: $8d
	ld   a, c                                        ; $5d5f: $79
	adc  l                                           ; $5d60: $8d
	halt                                             ; $5d61: $76
	sbc  d                                           ; $5d62: $9a
	ld   [hl], h                                     ; $5d63: $74
	rst  $38                                         ; $5d64: $ff
	rst  $38                                         ; $5d65: $ff
	dec  c                                           ; $5d66: $0d
	and  c                                           ; $5d67: $a1
	ld   sp, hl                                      ; $5d68: $f9
	db   $10                                         ; $5d69: $10
	ld   d, d                                        ; $5d6a: $52
	ld   e, a                                        ; $5d6b: $5f
	ld   a, b                                        ; $5d6c: $78
	ld   d, d                                        ; $5d6d: $52
	sbc  [hl]                                        ; $5d6e: $9e
	ld   d, d                                        ; $5d6f: $52
	ld   e, a                                        ; $5d70: $5f
	ld   a, b                                        ; $5d71: $78
	ld   d, d                                        ; $5d72: $52
	sbc  a                                           ; $5d73: $9f
	dec  c                                           ; $5d74: $0d
	nop                                              ; $5d75: $00
	dec  b                                           ; $5d76: $05
	ld   b, b                                        ; $5d77: $40
	rst  $38                                         ; $5d78: $ff
	inc  bc                                          ; $5d79: $03
	rst  $38                                         ; $5d7a: $ff
	ld   bc, $2801                                   ; $5d7b: $01 $01 $28
	nop                                              ; $5d7e: $00
	ld   bc, $5272                                   ; $5d7f: $01 $72 $52
	inc  bc                                          ; $5d82: $03
	sub  h                                           ; $5d83: $94
	inc  b                                           ; $5d84: $04
	sbc  [hl]                                        ; $5d85: $9e
	ld   a, c                                        ; $5d86: $79
	adc  l                                           ; $5d87: $8d
	halt                                             ; $5d88: $76
	sbc  d                                           ; $5d89: $9a
	ld   [hl], h                                     ; $5d8a: $74
	ld   h, l                                        ; $5d8b: $65
	adc  h                                           ; $5d8c: $8c
	ld   [hl], c                                     ; $5d8d: $71
	ld   l, l                                        ; $5d8e: $6d
	rst  $38                                         ; $5d8f: $ff
	dec  c                                           ; $5d90: $0d
	nop                                              ; $5d91: $00
	ld   a, [bc]                                     ; $5d92: $0a
	ld   b, $32                                      ; $5d93: $06 $32
	ld   [bc], a                                     ; $5d95: $02
	rrca                                             ; $5d96: $0f
	nop                                              ; $5d97: $00
	ld   bc, $6b01                                   ; $5d98: $01 $01 $6b
	ld   h, l                                        ; $5d9b: $65
	ld   [hl], h                                     ; $5d9c: $74
	sbc  [hl]                                        ; $5d9d: $9e
	inc  b                                           ; $5d9e: $04
	ld   l, d                                        ; $5d9f: $6a
	and  b                                           ; $5da0: $a0
	ld   d, b                                        ; $5da1: $50
	adc  [hl]                                        ; $5da2: $8e
	sbc  a                                           ; $5da3: $9f
	dec  c                                           ; $5da4: $0d
	rst  $38                                         ; $5da5: $ff
	rst  $38                                         ; $5da6: $ff
	rst  $38                                         ; $5da7: $ff
	rst  $38                                         ; $5da8: $ff
	and  c                                           ; $5da9: $a1
	ld   sp, hl                                      ; $5daa: $f9
	dec  c                                           ; $5dab: $0d
	nop                                              ; $5dac: $00
	dec  b                                           ; $5dad: $05
	ld   b, b                                        ; $5dae: $40
	rst  $38                                         ; $5daf: $ff
	inc  bc                                          ; $5db0: $03
	rst  $38                                         ; $5db1: $ff
	ld   bc, $2801                                   ; $5db2: $01 $01 $28
	nop                                              ; $5db5: $00
	ld   bc, $a150                                   ; $5db6: $01 $50 $a1
	ld   h, [hl]                                     ; $5db9: $66
	sub  c                                           ; $5dba: $91
	pop  bc                                          ; $5dbb: $c1
	db   $e3                                         ; $5dbc: $e3
	ld   [hl], l                                     ; $5dbd: $75
	ld   h, l                                        ; $5dbe: $65
	sub  l                                           ; $5dbf: $95
	ld   sp, hl                                      ; $5dc0: $f9
	dec  c                                           ; $5dc1: $0d
	nop                                              ; $5dc2: $00
	ld   a, [bc]                                     ; $5dc3: $0a
	ld   b, $32                                      ; $5dc4: $06 $32
	ld   [bc], a                                     ; $5dc6: $02
	rrca                                             ; $5dc7: $0f
	nop                                              ; $5dc8: $00
	ld   bc, $6b01                                   ; $5dc9: $01 $01 $6b
	ld   h, l                                        ; $5dcc: $65
	ld   [hl], h                                     ; $5dcd: $74
	rst  $38                                         ; $5dce: $ff
	rst  $38                                         ; $5dcf: $ff
	dec  c                                           ; $5dd0: $0d
	ld   [hl], a                                     ; $5dd1: $77
	ld   d, h                                        ; $5dd2: $54
	ld   h, l                                        ; $5dd3: $65
	sub  [hl]                                        ; $5dd4: $96
	ld   d, h                                        ; $5dd5: $54
	ld   e, c                                        ; $5dd6: $59
	rst  $38                                         ; $5dd7: $ff
	rst  $38                                         ; $5dd8: $ff
	rst  $38                                         ; $5dd9: $ff
	rst  $38                                         ; $5dda: $ff
	dec  c                                           ; $5ddb: $0d
	nop                                              ; $5ddc: $00
	ld   a, [bc]                                     ; $5ddd: $0a
	dec  b                                           ; $5dde: $05
	ld   b, b                                        ; $5ddf: $40
	rst  $38                                         ; $5de0: $ff
	inc  bc                                          ; $5de1: $03
	rst  $38                                         ; $5de2: $ff
	ld   bc, $2801                                   ; $5de3: $01 $01 $28
	nop                                              ; $5de6: $00
	ld   b, $32                                      ; $5de7: $06 $32
	ld   [bc], a                                     ; $5de9: $02
	add  hl, de                                      ; $5dea: $19
	inc  b                                           ; $5deb: $04
	inc  bc                                          ; $5dec: $03
	ret  nc                                          ; $5ded: $d0

	push af                                          ; $5dee: $f5
	xor  h                                           ; $5def: $ac
	jp   nz, $03a0                                   ; $5df0: $c2 $a0 $03

	and  b                                           ; $5df3: $a0
	ld   [hl], d                                     ; $5df4: $72
	nop                                              ; $5df5: $00
	nop                                              ; $5df6: $00
	ret                                              ; $5df7: $c9


	push af                                          ; $5df8: $f5
	xor  h                                           ; $5df9: $ac
	jp   nz, $03a0                                   ; $5dfa: $c2 $a0 $03

	and  b                                           ; $5dfd: $a0
	ld   [hl], d                                     ; $5dfe: $72
	nop                                              ; $5dff: $00
	ld   bc, $f5c9                                   ; $5e00: $01 $c9 $f5
	xor  h                                           ; $5e03: $ac
	push bc                                          ; $5e04: $c5
	and  b                                           ; $5e05: $a0
	inc  bc                                          ; $5e06: $03
	ld   l, d                                        ; $5e07: $6a
	add  a                                           ; $5e08: $87
	sbc  c                                           ; $5e09: $99
	nop                                              ; $5e0a: $00
	ld   [bc], a                                     ; $5e0b: $02
	rlca                                             ; $5e0c: $07
	ld   h, h                                        ; $5e0d: $64
	inc  bc                                          ; $5e0e: $03
	ld   [bc], a                                     ; $5e0f: $02
	inc  bc                                          ; $5e10: $03
	ld   bc, $2000                                   ; $5e11: $01 $00 $20
	nop                                              ; $5e14: $00
	rlca                                             ; $5e15: $07
	adc  h                                           ; $5e16: $8c
	inc  bc                                          ; $5e17: $03
	ld   [bc], a                                     ; $5e18: $02
	inc  bc                                          ; $5e19: $03
	ld   bc, $2001                                   ; $5e1a: $01 $01 $20
	nop                                              ; $5e1d: $00
	rlca                                             ; $5e1e: $07
	push bc                                          ; $5e1f: $c5
	inc  bc                                          ; $5e20: $03
	ld   [bc], a                                     ; $5e21: $02
	inc  bc                                          ; $5e22: $03
	ld   bc, $2002                                   ; $5e23: $01 $02 $20
	nop                                              ; $5e26: $00
	ld   b, $1a                                      ; $5e27: $06 $1a
	inc  b                                           ; $5e29: $04
	rrca                                             ; $5e2a: $0f
	nop                                              ; $5e2b: $00
	ld   bc, $d001                                   ; $5e2c: $01 $01 $d0
	push af                                          ; $5e2f: $f5
	xor  h                                           ; $5e30: $ac
	jp   nz, $ff7d                                   ; $5e31: $c2 $7d $ff

	rst  $38                                         ; $5e34: $ff
	sub  [hl]                                        ; $5e35: $96
	ld   h, l                                        ; $5e36: $65
	ld   a, [$6f0d]                                  ; $5e37: $fa $0d $6f
	sub  c                                           ; $5e3a: $91
	and  c                                           ; $5e3b: $a1
	halt                                             ; $5e3c: $76
	inc  bc                                          ; $5e3d: $03
	and  b                                           ; $5e3e: $a0
	ld   [hl], c                                     ; $5e3f: $71
	ld   l, l                                        ; $5e40: $6d
	ld   l, h                                        ; $5e41: $6c
	sbc  a                                           ; $5e42: $9f
	dec  c                                           ; $5e43: $0d
	nop                                              ; $5e44: $00
	ld   a, [bc]                                     ; $5e45: $0a
	dec  b                                           ; $5e46: $05
	ld   b, b                                        ; $5e47: $40
	rst  $38                                         ; $5e48: $ff
	inc  bc                                          ; $5e49: $03
	rst  $38                                         ; $5e4a: $ff
	ld   bc, $2801                                   ; $5e4b: $01 $01 $28
	nop                                              ; $5e4e: $00
	ld   b, $39                                      ; $5e4f: $06 $39
	inc  b                                           ; $5e51: $04
	rrca                                             ; $5e52: $0f
	nop                                              ; $5e53: $00
	ld   bc, $c901                                   ; $5e54: $01 $01 $c9
	push af                                          ; $5e57: $f5
	xor  h                                           ; $5e58: $ac
	jp   nz, Jump_063_6fa0                           ; $5e59: $c2 $a0 $6f

	sub  c                                           ; $5e5c: $91
	and  c                                           ; $5e5d: $a1
	halt                                             ; $5e5e: $76
	inc  bc                                          ; $5e5f: $03
	and  b                                           ; $5e60: $a0
	ld   [hl], c                                     ; $5e61: $71
	ld   [hl], h                                     ; $5e62: $74
	dec  c                                           ; $5e63: $0d
	rst  $38                                         ; $5e64: $ff
	rst  $38                                         ; $5e65: $ff
	ld   [hl], a                                     ; $5e66: $77
	ld   h, c                                        ; $5e67: $61
	add  [hl]                                        ; $5e68: $86
	ld   [bc], a                                     ; $5e69: $02
	ld   a, a                                        ; $5e6a: $7f
	ld   e, l                                        ; $5e6b: $5d
	and  c                                           ; $5e6c: $a1
	ld   l, [hl]                                     ; $5e6d: $6e
	inc  b                                           ; $5e6e: $04
	ld   l, l                                        ; $5e6f: $6d
	ld   a, l                                        ; $5e70: $7d
	ld   sp, hl                                      ; $5e71: $f9
	dec  c                                           ; $5e72: $0d
	nop                                              ; $5e73: $00
	dec  b                                           ; $5e74: $05
	ld   b, b                                        ; $5e75: $40
	rst  $38                                         ; $5e76: $ff
	inc  bc                                          ; $5e77: $03
	rst  $38                                         ; $5e78: $ff
	ld   bc, $2801                                   ; $5e79: $01 $01 $28
	nop                                              ; $5e7c: $00
	ld   bc, $5a6f                                   ; $5e7d: $01 $6f $5a
	ld   d, h                                        ; $5e80: $54
	ld   [hl], l                                     ; $5e81: $75
	ld   h, l                                        ; $5e82: $65
	sub  l                                           ; $5e83: $95
	sbc  a                                           ; $5e84: $9f
	dec  c                                           ; $5e85: $0d
	nop                                              ; $5e86: $00
	ld   a, [bc]                                     ; $5e87: $0a
	ld   b, $24                                      ; $5e88: $06 $24
	inc  bc                                          ; $5e8a: $03
	rrca                                             ; $5e8b: $0f
	nop                                              ; $5e8c: $00
	ld   bc, $c901                                   ; $5e8d: $01 $01 $c9
	push af                                          ; $5e90: $f5
	xor  h                                           ; $5e91: $ac
	push bc                                          ; $5e92: $c5
	and  b                                           ; $5e93: $a0
	inc  bc                                          ; $5e94: $03
	ld   l, d                                        ; $5e95: $6a
	add  a                                           ; $5e96: $87
	ld   [hl], h                                     ; $5e97: $74
	sbc  [hl]                                        ; $5e98: $9e
	inc  bc                                          ; $5e99: $03
	db   $dd                                         ; $5e9a: $dd
	ld   a, c                                        ; $5e9b: $79
	inc  bc                                          ; $5e9c: $03
	ld   c, [hl]                                     ; $5e9d: $4e
	ld   [hl], d                                     ; $5e9e: $72
	sbc  a                                           ; $5e9f: $9f
	dec  c                                           ; $5ea0: $0d
	ld   a, b                                        ; $5ea1: $78
	db   $fc                                         ; $5ea2: $fc
	and  c                                           ; $5ea3: $a1
	ld   l, a                                        ; $5ea4: $6f
	sub  c                                           ; $5ea5: $91
	ld   [hl], c                                     ; $5ea6: $71
	ld   [hl], h                                     ; $5ea7: $74
	rst  $38                                         ; $5ea8: $ff
	rst  $38                                         ; $5ea9: $ff
	dec  c                                           ; $5eaa: $0d
	nop                                              ; $5eab: $00
	ld   a, [bc]                                     ; $5eac: $0a
	ld   bc, $a16b                                   ; $5ead: $01 $6b $a1
	ld   a, b                                        ; $5eb0: $78
	ld   h, c                                        ; $5eb1: $61
	halt                                             ; $5eb2: $76
	ld   [bc], a                                     ; $5eb3: $02
	sbc  l                                           ; $5eb4: $9d
	ld   [hl], c                                     ; $5eb5: $71
	ld   [hl], h                                     ; $5eb6: $74
	sbc  c                                           ; $5eb7: $99
	inc  b                                           ; $5eb8: $04
	ld   a, d                                        ; $5eb9: $7a
	ld   [bc], a                                     ; $5eba: $02
	ld   a, e                                        ; $5ebb: $7b
	ld   h, [hl]                                     ; $5ebc: $66
	sub  c                                           ; $5ebd: $91
	dec  c                                           ; $5ebe: $0d
	ld   a, b                                        ; $5ebf: $78
	ld   d, d                                        ; $5ec0: $52
	sub  [hl]                                        ; $5ec1: $96
	sbc  a                                           ; $5ec2: $9f
	dec  c                                           ; $5ec3: $0d
	nop                                              ; $5ec4: $00
	dec  b                                           ; $5ec5: $05
	ld   b, b                                        ; $5ec6: $40
	rst  $38                                         ; $5ec7: $ff
	inc  bc                                          ; $5ec8: $03
	rst  $38                                         ; $5ec9: $ff
	ld   bc, $2801                                   ; $5eca: $01 $01 $28
	nop                                              ; $5ecd: $00
	ld   bc, $7003                                   ; $5ece: $01 $03 $70
	ld   e, l                                        ; $5ed1: $5d
	ld   h, l                                        ; $5ed2: $65
	ld   l, l                                        ; $5ed3: $6d
	ld   e, l                                        ; $5ed4: $5d
	ld   h, l                                        ; $5ed5: $65
	ld   a, b                                        ; $5ed6: $78
	ld   e, e                                        ; $5ed7: $5b
	sub  c                                           ; $5ed8: $91
	sbc  a                                           ; $5ed9: $9f
	dec  c                                           ; $5eda: $0d
	nop                                              ; $5edb: $00
	ld   a, [bc]                                     ; $5edc: $0a
	ld   b, $24                                      ; $5edd: $06 $24
	inc  bc                                          ; $5edf: $03
	rrca                                             ; $5ee0: $0f
	nop                                              ; $5ee1: $00
	ld   bc, $ff01                                   ; $5ee2: $01 $01 $ff
	rst  $38                                         ; $5ee5: $ff
	ld   [hl], a                                     ; $5ee6: $77
	ld   d, h                                        ; $5ee7: $54
	ld   h, l                                        ; $5ee8: $65
	sub  [hl]                                        ; $5ee9: $96
	ld   d, h                                        ; $5eea: $54
	ld   e, c                                        ; $5eeb: $59
	rst  $38                                         ; $5eec: $ff
	rst  $38                                         ; $5eed: $ff
	rst  $38                                         ; $5eee: $ff
	rst  $38                                         ; $5eef: $ff
	dec  c                                           ; $5ef0: $0d
	nop                                              ; $5ef1: $00
	ld   a, [bc]                                     ; $5ef2: $0a
	dec  b                                           ; $5ef3: $05
	ld   b, b                                        ; $5ef4: $40
	rst  $38                                         ; $5ef5: $ff
	inc  bc                                          ; $5ef6: $03
	rst  $38                                         ; $5ef7: $ff
	ld   bc, $2801                                   ; $5ef8: $01 $01 $28
	nop                                              ; $5efb: $00
	ld   b, $24                                      ; $5efc: $06 $24
	inc  bc                                          ; $5efe: $03
	add  hl, de                                      ; $5eff: $19
	inc  b                                           ; $5f00: $04
	inc  bc                                          ; $5f01: $03
	ld   h, l                                        ; $5f02: $65
	and  c                                           ; $5f03: $a1
	ld   h, c                                        ; $5f04: $61
	ld   e, e                                        ; $5f05: $5b
	sub  e                                           ; $5f06: $93
	ld   d, h                                        ; $5f07: $54
	ld   h, a                                        ; $5f08: $67
	sbc  c                                           ; $5f09: $99
	nop                                              ; $5f0a: $00
	nop                                              ; $5f0b: $00
	ld   h, [hl]                                     ; $5f0c: $66
	and  c                                           ; $5f0d: $a1
	ld   h, c                                        ; $5f0e: $61
	ld   d, h                                        ; $5f0f: $54
	ld   h, c                                        ; $5f10: $61
	ld   e, e                                        ; $5f11: $5b
	sub  e                                           ; $5f12: $93
	ld   d, h                                        ; $5f13: $54
	and  b                                           ; $5f14: $a0
	ld   h, a                                        ; $5f15: $67
	sbc  c                                           ; $5f16: $99
	nop                                              ; $5f17: $00
	ld   bc, $9756                                   ; $5f18: $01 $56 $97
	ld   h, c                                        ; $5f1b: $61
	ld   e, e                                        ; $5f1c: $5b
	sub  e                                           ; $5f1d: $93
	ld   d, h                                        ; $5f1e: $54
	and  b                                           ; $5f1f: $a0
	ld   h, a                                        ; $5f20: $67
	sbc  c                                           ; $5f21: $99
	nop                                              ; $5f22: $00
	ld   [bc], a                                     ; $5f23: $02
	rlca                                             ; $5f24: $07
	ld   a, h                                        ; $5f25: $7c
	inc  b                                           ; $5f26: $04
	ld   [bc], a                                     ; $5f27: $02
	inc  bc                                          ; $5f28: $03
	ld   bc, $2000                                   ; $5f29: $01 $00 $20
	nop                                              ; $5f2c: $00
	rlca                                             ; $5f2d: $07
	xor  d                                           ; $5f2e: $aa
	inc  b                                           ; $5f2f: $04
	ld   [bc], a                                     ; $5f30: $02
	inc  bc                                          ; $5f31: $03
	ld   bc, $2001                                   ; $5f32: $01 $01 $20
	nop                                              ; $5f35: $00
	rlca                                             ; $5f36: $07
	ld   [$0204], a                                  ; $5f37: $ea $04 $02
	inc  bc                                          ; $5f3a: $03
	ld   bc, $2002                                   ; $5f3b: $01 $02 $20
	nop                                              ; $5f3e: $00
	ld   b, $49                                      ; $5f3f: $06 $49
	dec  b                                           ; $5f41: $05
	rrca                                             ; $5f42: $0f
	nop                                              ; $5f43: $00
	ld   bc, $0301                                   ; $5f44: $01 $01 $03
	ld   l, c                                        ; $5f47: $69
	ld   [bc], a                                     ; $5f48: $02
	xor  d                                           ; $5f49: $aa
	ld   a, c                                        ; $5f4a: $79
	ld   h, l                                        ; $5f4b: $65
	and  c                                           ; $5f4c: $a1
	ld   h, c                                        ; $5f4d: $61
	ld   e, e                                        ; $5f4e: $5b
	sub  e                                           ; $5f4f: $93
	ld   d, h                                        ; $5f50: $54
	and  b                                           ; $5f51: $a0
	ld   h, l                                        ; $5f52: $65
	ld   [hl], h                                     ; $5f53: $74
	rst  $38                                         ; $5f54: $ff
	rst  $38                                         ; $5f55: $ff
	dec  c                                           ; $5f56: $0d
	sub  [hl]                                        ; $5f57: $96
	ld   h, l                                        ; $5f58: $65
	ld   a, [$ab10]                                  ; $5f59: $fa $10 $ab
	call nz, $fbb2                                   ; $5f5c: $c4 $b2 $fb
	ld   l, [hl]                                     ; $5f5f: $6e
	ld   a, [$000d]                                  ; $5f60: $fa $0d $00
	ld   a, [bc]                                     ; $5f63: $0a
	dec  b                                           ; $5f64: $05
	ld   b, b                                        ; $5f65: $40
	rst  $38                                         ; $5f66: $ff
	inc  bc                                          ; $5f67: $03
	rst  $38                                         ; $5f68: $ff
	ld   bc, $2801                                   ; $5f69: $01 $01 $28
	nop                                              ; $5f6c: $00
	ld   b, $71                                      ; $5f6d: $06 $71
	dec  b                                           ; $5f6f: $05
	rrca                                             ; $5f70: $0f
	nop                                              ; $5f71: $00
	ld   bc, $0301                                   ; $5f72: $01 $01 $03
	ld   l, c                                        ; $5f75: $69
	ld   [bc], a                                     ; $5f76: $02
	xor  d                                           ; $5f77: $aa
	ld   a, c                                        ; $5f78: $79
	sbc  [hl]                                        ; $5f79: $9e
	ld   h, [hl]                                     ; $5f7a: $66
	and  c                                           ; $5f7b: $a1
	ld   h, c                                        ; $5f7c: $61
	ld   d, h                                        ; $5f7d: $54
	ld   h, c                                        ; $5f7e: $61
	ld   e, e                                        ; $5f7f: $5b
	sub  e                                           ; $5f80: $93
	ld   d, h                                        ; $5f81: $54
	and  b                                           ; $5f82: $a0
	dec  c                                           ; $5f83: $0d
	ld   h, l                                        ; $5f84: $65
	ld   [hl], h                                     ; $5f85: $74
	rst  $38                                         ; $5f86: $ff
	rst  $38                                         ; $5f87: $ff
	and  c                                           ; $5f88: $a1
	ld   sp, hl                                      ; $5f89: $f9
	db   $10                                         ; $5f8a: $10
	ld   a, b                                        ; $5f8b: $78
	and  c                                           ; $5f8c: $a1
	ld   [hl], l                                     ; $5f8d: $75
	ld   l, e                                        ; $5f8e: $6b
	and  c                                           ; $5f8f: $a1
	ld   a, b                                        ; $5f90: $78
	ld   [bc], a                                     ; $5f91: $02
	jp   $000d                                       ; $5f92: $c3 $0d $00


	dec  b                                           ; $5f95: $05
	ld   b, b                                        ; $5f96: $40
	rst  $38                                         ; $5f97: $ff
	inc  bc                                          ; $5f98: $03
	rst  $38                                         ; $5f99: $ff
	ld   bc, $2801                                   ; $5f9a: $01 $01 $28
	nop                                              ; $5f9d: $00
	ld   bc, $7865                                   ; $5f9e: $01 $65 $78
	ld   e, e                                        ; $5fa1: $5b
	sub  c                                           ; $5fa2: $91
	ld   a, b                                        ; $5fa3: $78
	sub  a                                           ; $5fa4: $97
	ld   a, b                                        ; $5fa5: $78
	ld   d, d                                        ; $5fa6: $52
	and  c                                           ; $5fa7: $a1
	ld   l, [hl]                                     ; $5fa8: $6e
	ld   sp, hl                                      ; $5fa9: $f9
	dec  c                                           ; $5faa: $0d
	nop                                              ; $5fab: $00
	ld   a, [bc]                                     ; $5fac: $0a
	ld   b, $39                                      ; $5fad: $06 $39
	inc  b                                           ; $5faf: $04
	rrca                                             ; $5fb0: $0f
	nop                                              ; $5fb1: $00
	ld   bc, $9601                                   ; $5fb2: $01 $01 $96
	ld   h, l                                        ; $5fb5: $65
	sbc  [hl]                                        ; $5fb6: $9e
	inc  bc                                          ; $5fb7: $03
	ld   l, c                                        ; $5fb8: $69
	ld   [bc], a                                     ; $5fb9: $02
	xor  d                                           ; $5fba: $aa
	ld   a, c                                        ; $5fbb: $79
	ld   d, [hl]                                     ; $5fbc: $56
	sub  a                                           ; $5fbd: $97
	ld   h, c                                        ; $5fbe: $61
	ld   e, e                                        ; $5fbf: $5b
	sub  e                                           ; $5fc0: $93
	ld   d, h                                        ; $5fc1: $54
	and  b                                           ; $5fc2: $a0
	dec  c                                           ; $5fc3: $0d
	ld   h, l                                        ; $5fc4: $65
	ld   [hl], h                                     ; $5fc5: $74
	rst  $38                                         ; $5fc6: $ff
	rst  $38                                         ; $5fc7: $ff
	and  c                                           ; $5fc8: $a1
	ld   sp, hl                                      ; $5fc9: $f9
	db   $10                                         ; $5fca: $10
	inc  b                                           ; $5fcb: $04
	ld   l, l                                        ; $5fcc: $6d
	ld   a, c                                        ; $5fcd: $79
	ld   d, [hl]                                     ; $5fce: $56
	sub  a                                           ; $5fcf: $97
	ld   a, b                                        ; $5fd0: $78
	and  c                                           ; $5fd1: $a1
	ld   [hl], h                                     ; $5fd2: $74
	dec  c                                           ; $5fd3: $0d
	ld   a, b                                        ; $5fd4: $78
	ld   d, d                                        ; $5fd5: $52
	sub  [hl]                                        ; $5fd6: $96
	ld   a, b                                        ; $5fd7: $78
	rst  $38                                         ; $5fd8: $ff
	rst  $38                                         ; $5fd9: $ff
	dec  c                                           ; $5fda: $0d
	nop                                              ; $5fdb: $00
	ld   a, [bc]                                     ; $5fdc: $0a
	ld   bc, $fc78                                   ; $5fdd: $01 $78 $fc
	and  c                                           ; $5fe0: $a1
	ld   [hl], h                                     ; $5fe1: $74
	ld   [bc], a                                     ; $5fe2: $02
	sbc  l                                           ; $5fe3: $9d
	ld   [hl], c                                     ; $5fe4: $71
	ld   [hl], h                                     ; $5fe5: $74
	sbc  c                                           ; $5fe6: $99
	inc  b                                           ; $5fe7: $04
	ld   a, d                                        ; $5fe8: $7a
	ld   [bc], a                                     ; $5fe9: $02
	ld   a, e                                        ; $5fea: $7b
	ld   h, [hl]                                     ; $5feb: $66
	sub  c                                           ; $5fec: $91
	dec  c                                           ; $5fed: $0d
	ld   a, b                                        ; $5fee: $78
	ld   d, d                                        ; $5fef: $52
	ld   l, h                                        ; $5ff0: $6c
	sbc  a                                           ; $5ff1: $9f
	dec  c                                           ; $5ff2: $0d
	nop                                              ; $5ff3: $00
	dec  b                                           ; $5ff4: $05
	ld   b, b                                        ; $5ff5: $40
	rst  $38                                         ; $5ff6: $ff
	inc  bc                                          ; $5ff7: $03
	rst  $38                                         ; $5ff8: $ff
	ld   bc, $2801                                   ; $5ff9: $01 $01 $28
	nop                                              ; $5ffc: $00
	ld   bc, $2805                                   ; $5ffd: $01 $05 $28
	ld   e, d                                        ; $6000: $5a
	ld   a, b                                        ; $6001: $78
	ld   e, e                                        ; $6002: $5b
	sub  c                                           ; $6003: $91
	ld   e, b                                        ; $6004: $58
	ld   e, l                                        ; $6005: $5d
	sbc  d                                           ; $6006: $9a
	sbc  c                                           ; $6007: $99
	ld   a, [$000d]                                  ; $6008: $fa $0d $00
	ld   a, [bc]                                     ; $600b: $0a
	ld   b, $39                                      ; $600c: $06 $39
	inc  b                                           ; $600e: $04
	rrca                                             ; $600f: $0f
	nop                                              ; $6010: $00
	ld   bc, $0301                                   ; $6011: $01 $01 $03
	dec  c                                           ; $6014: $0d
	inc  bc                                          ; $6015: $03
	ld   h, l                                        ; $6016: $65
	ld   h, b                                        ; $6017: $60
	ld   a, c                                        ; $6018: $79
	rst  $38                                         ; $6019: $ff
	rst  $38                                         ; $601a: $ff
	dec  c                                           ; $601b: $0d
	rst  $38                                         ; $601c: $ff
	rst  $38                                         ; $601d: $ff
	rst  $38                                         ; $601e: $ff
	rst  $38                                         ; $601f: $ff
	ld   [hl], a                                     ; $6020: $77
	ld   d, h                                        ; $6021: $54
	ld   h, l                                        ; $6022: $65
	sub  [hl]                                        ; $6023: $96
	ld   d, h                                        ; $6024: $54
	ld   e, c                                        ; $6025: $59
	rst  $38                                         ; $6026: $ff
	rst  $38                                         ; $6027: $ff
	dec  c                                           ; $6028: $0d
	nop                                              ; $6029: $00
	ld   a, [bc]                                     ; $602a: $0a
	dec  b                                           ; $602b: $05
	ld   b, b                                        ; $602c: $40
	rst  $38                                         ; $602d: $ff
	inc  bc                                          ; $602e: $03
	rst  $38                                         ; $602f: $ff
	ld   bc, $2801                                   ; $6030: $01 $01 $28
	nop                                              ; $6033: $00
	ld   b, $39                                      ; $6034: $06 $39
	inc  b                                           ; $6036: $04
	rlca                                             ; $6037: $07
	adc  h                                           ; $6038: $8c
	dec  b                                           ; $6039: $05
	inc  bc                                          ; $603a: $03
	rst  $38                                         ; $603b: $ff
	ld   bc, $2005                                   ; $603c: $01 $05 $20
	nop                                              ; $603f: $00
	rlca                                             ; $6040: $07
	db   $e4                                         ; $6041: $e4
	dec  b                                           ; $6042: $05
	inc  bc                                          ; $6043: $03
	rst  $38                                         ; $6044: $ff
	ld   bc, $2006                                   ; $6045: $01 $06 $20
	nop                                              ; $6048: $00
	rlca                                             ; $6049: $07
	ld   e, c                                        ; $604a: $59
	ld   b, $03                                      ; $604b: $06 $03
	rst  $38                                         ; $604d: $ff
	ld   bc, $2507                                   ; $604e: $01 $07 $25
	nop                                              ; $6051: $00
	inc  hl                                          ; $6052: $23
	inc  b                                           ; $6053: $04
	rrca                                             ; $6054: $0f
	nop                                              ; $6055: $00
	ld   bc, $9601                                   ; $6056: $01 $01 $96
	ld   e, c                                        ; $6059: $59
	ld   [hl], c                                     ; $605a: $71
	ld   l, l                                        ; $605b: $6d
	sbc  [hl]                                        ; $605c: $9e
	ld   h, a                                        ; $605d: $67
	adc  l                                           ; $605e: $8d
	sbc  d                                           ; $605f: $9a
	ld   h, e                                        ; $6060: $63
	and  c                                           ; $6061: $a1
	dec  c                                           ; $6062: $0d
	adc  h                                           ; $6063: $8c
	ld   l, [hl]                                     ; $6064: $6e
	dec  b                                           ; $6065: $05
	db   $10                                         ; $6066: $10
	ld   [hl], h                                     ; $6067: $74
	ld   a, b                                        ; $6068: $78
	ld   d, d                                        ; $6069: $52
	adc  l                                           ; $606a: $8d
	ld   l, l                                        ; $606b: $6d
	ld   d, d                                        ; $606c: $52
	ld   l, [hl]                                     ; $606d: $6e
	rst  $38                                         ; $606e: $ff
	rst  $38                                         ; $606f: $ff
	dec  c                                           ; $6070: $0d
	nop                                              ; $6071: $00
	ld   a, [bc]                                     ; $6072: $0a
	inc  e                                           ; $6073: $1c
	ld   [bc], a                                     ; $6074: $02
	ld   bc, $1d01                                   ; $6075: $01 $01 $1d
	ld   b, b                                        ; $6078: $40
	ld   [de], a                                     ; $6079: $12
	inc  bc                                          ; $607a: $03
	ld   [de], a                                     ; $607b: $12
	ld   bc, $2802                                   ; $607c: $01 $02 $28
	nop                                              ; $607f: $00
	ld   bc, $0458                                   ; $6080: $01 $58 $04
	rla                                              ; $6083: $17
	ld   l, l                                        ; $6084: $6d
	ld   l, c                                        ; $6085: $69
	ld   h, l                                        ; $6086: $65
	adc  h                                           ; $6087: $8c
	ld   h, l                                        ; $6088: $65
	ld   l, l                                        ; $6089: $6d
	sbc  a                                           ; $608a: $9f
	dec  c                                           ; $608b: $0d
	ld   [$6300], sp                                 ; $608c: $08 $00 $63
	and  c                                           ; $608f: $a1
	sbc  a                                           ; $6090: $9f
	dec  c                                           ; $6091: $0d
	ld   [hl], l                                     ; $6092: $75
	ld   a, l                                        ; $6093: $7d
	sbc  [hl]                                        ; $6094: $9e
	adc  h                                           ; $6095: $8c
	ld   d, d                                        ; $6096: $52
	sbc  b                                           ; $6097: $98
	adc  h                                           ; $6098: $8c
	ld   h, l                                        ; $6099: $65
	sub  l                                           ; $609a: $95
	ld   d, h                                        ; $609b: $54
	ld   e, c                                        ; $609c: $59
	sbc  a                                           ; $609d: $9f
	dec  c                                           ; $609e: $0d
	nop                                              ; $609f: $00
	ld   a, [bc]                                     ; $60a0: $0a
	dec  c                                           ; $60a1: $0d
	nop                                              ; $60a2: $00
	nop                                              ; $60a3: $00
	rrca                                             ; $60a4: $0f
	nop                                              ; $60a5: $00
	ld   bc, $ad06                                   ; $60a6: $01 $06 $ad
	ld   b, $23                                      ; $60a9: $06 $23
	inc  b                                           ; $60ab: $04
	rrca                                             ; $60ac: $0f
	nop                                              ; $60ad: $00
	ld   bc, $020d                                   ; $60ae: $01 $0d $02
	nop                                              ; $60b1: $00
	ld   bc, $7d58                                   ; $60b2: $01 $58 $7d
	sub  [hl]                                        ; $60b5: $96
	ld   d, h                                        ; $60b6: $54
	ld   h, d                                        ; $60b7: $62
	ld   h, h                                        ; $60b8: $64
	ld   d, d                                        ; $60b9: $52
	adc  h                                           ; $60ba: $8c
	ld   h, a                                        ; $60bb: $67
	sbc  a                                           ; $60bc: $9f
	dec  c                                           ; $60bd: $0d
	ld   h, a                                        ; $60be: $67
	adc  l                                           ; $60bf: $8d
	sbc  d                                           ; $60c0: $9a
	ld   h, e                                        ; $60c1: $63
	and  c                                           ; $60c2: $a1
	sbc  a                                           ; $60c3: $9f
	dec  c                                           ; $60c4: $0d
	ld   e, b                                        ; $60c5: $58
	inc  b                                           ; $60c6: $04
	rla                                              ; $60c7: $17
	ld   l, l                                        ; $60c8: $6d
	ld   l, c                                        ; $60c9: $69
	ld   h, l                                        ; $60ca: $65
	ld   [hl], h                                     ; $60cb: $74
	ld   h, a                                        ; $60cc: $67
	adc  l                                           ; $60cd: $8d
	adc  h                                           ; $60ce: $8c
	ld   l, c                                        ; $60cf: $69
	and  c                                           ; $60d0: $a1
	sbc  a                                           ; $60d1: $9f
	dec  c                                           ; $60d2: $0d
	nop                                              ; $60d3: $00
	ld   a, [bc]                                     ; $60d4: $0a
	inc  e                                           ; $60d5: $1c
	ld   [bc], a                                     ; $60d6: $02
	nop                                              ; $60d7: $00
	nop                                              ; $60d8: $00
	ld   bc, $7d58                                   ; $60d9: $01 $58 $7d
	sub  [hl]                                        ; $60dc: $96
	ld   d, h                                        ; $60dd: $54
	sbc  a                                           ; $60de: $9f
	ld   [$6300], sp                                 ; $60df: $08 $00 $63
	and  c                                           ; $60e2: $a1
	sbc  a                                           ; $60e3: $9f
	dec  c                                           ; $60e4: $0d
	inc  b                                           ; $60e5: $04
	ld   c, $03                                      ; $60e6: $0e $03
	sbc  l                                           ; $60e8: $9d
	inc  b                                           ; $60e9: $04
	and  [hl]                                        ; $60ea: $a6
	ld   [hl], l                                     ; $60eb: $75
	ld   h, a                                        ; $60ec: $67
	sbc  l                                           ; $60ed: $9d
	sub  [hl]                                        ; $60ee: $96
	sbc  a                                           ; $60ef: $9f
	sbc  l                                           ; $60f0: $9d
	ld   l, l                                        ; $60f1: $6d
	ld   e, l                                        ; $60f2: $5d
	ld   h, l                                        ; $60f3: $65
	sub  b                                           ; $60f4: $90
	dec  c                                           ; $60f5: $0d
	ld   [bc], a                                     ; $60f6: $02
	and  l                                           ; $60f7: $a5
	dec  b                                           ; $60f8: $05
	db   $10                                         ; $60f9: $10
	ld   l, l                                        ; $60fa: $6d
	halt                                             ; $60fb: $76
	ld   h, c                                        ; $60fc: $61
	sbc  e                                           ; $60fd: $9b
	ld   [hl], l                                     ; $60fe: $75
	ld   h, a                                        ; $60ff: $67
	ld   e, c                                        ; $6100: $59
	sub  a                                           ; $6101: $97
	sbc  a                                           ; $6102: $9f
	dec  c                                           ; $6103: $0d
	nop                                              ; $6104: $00
	ld   a, [bc]                                     ; $6105: $0a
	ld   bc, $7d75                                   ; $6106: $01 $75 $7d
	sbc  [hl]                                        ; $6109: $9e
	adc  h                                           ; $610a: $8c
	ld   d, d                                        ; $610b: $52
	sbc  b                                           ; $610c: $98
	adc  h                                           ; $610d: $8c
	ld   h, l                                        ; $610e: $65
	sub  l                                           ; $610f: $95
	ld   d, h                                        ; $6110: $54
	ld   e, c                                        ; $6111: $59
	sbc  a                                           ; $6112: $9f
	dec  c                                           ; $6113: $0d
	nop                                              ; $6114: $00
	ld   a, [bc]                                     ; $6115: $0a
	dec  c                                           ; $6116: $0d
	nop                                              ; $6117: $00
	nop                                              ; $6118: $00
	rrca                                             ; $6119: $0f
	nop                                              ; $611a: $00
	ld   bc, $ad06                                   ; $611b: $01 $06 $ad
	ld   b, $23                                      ; $611e: $06 $23
	inc  b                                           ; $6120: $04
	rrca                                             ; $6121: $0f
	nop                                              ; $6122: $00
	ld   bc, $021c                                   ; $6123: $01 $1c $02
	rlca                                             ; $6126: $07
	rlca                                             ; $6127: $07
	dec  e                                           ; $6128: $1d
	ld   b, b                                        ; $6129: $40
	ld   [de], a                                     ; $612a: $12
	inc  bc                                          ; $612b: $03
	ld   [de], a                                     ; $612c: $12
	ld   bc, $2903                                   ; $612d: $01 $03 $29
	nop                                              ; $6130: $00
	ld   bc, $6b58                                   ; $6131: $01 $58 $6b
	ld   d, d                                        ; $6134: $52
	ld   [hl], l                                     ; $6135: $75
	ld   h, a                                        ; $6136: $67
	sbc  l                                           ; $6137: $9d
	ld   a, [$9d0d]                                  ; $6138: $fa $0d $9d
	ld   l, l                                        ; $613b: $6d
	ld   e, l                                        ; $613c: $5d
	ld   h, l                                        ; $613d: $65
	and  b                                           ; $613e: $a0
	inc  b                                           ; $613f: $04
	rla                                              ; $6140: $17
	ld   l, l                                        ; $6141: $6d
	ld   h, a                                        ; $6142: $67
	halt                                             ; $6143: $76
	ld   a, l                                        ; $6144: $7d
	dec  c                                           ; $6145: $0d
	inc  b                                           ; $6146: $04
	ld   c, c                                        ; $6147: $49
	ld   [bc], a                                     ; $6148: $02
	jp   $6775                                       ; $6149: $c3 $75 $67


	ld   e, c                                        ; $614c: $59
	ld   a, [$000d]                                  ; $614d: $fa $0d $00
	ld   a, [bc]                                     ; $6150: $0a
	inc  e                                           ; $6151: $1c
	ld   [bc], a                                     ; $6152: $02
	nop                                              ; $6153: $00
	nop                                              ; $6154: $00
	ld   bc, $508c                                   ; $6155: $01 $8c $50
	sbc  [hl]                                        ; $6158: $9e
	ld   d, d                                        ; $6159: $52
	ld   d, d                                        ; $615a: $52
	ld   [hl], l                                     ; $615b: $75
	ld   h, a                                        ; $615c: $67
	sbc  l                                           ; $615d: $9d
	sbc  a                                           ; $615e: $9f
	dec  c                                           ; $615f: $0d
	ld   d, d                                        ; $6160: $52
	ld   e, e                                        ; $6161: $5b
	adc  h                                           ; $6162: $8c
	ld   h, a                                        ; $6163: $67
	sbc  l                                           ; $6164: $9d
	sub  [hl]                                        ; $6165: $96
	sbc  a                                           ; $6166: $9f
	dec  c                                           ; $6167: $0d
	nop                                              ; $6168: $00
	ld   a, [bc]                                     ; $6169: $0a
	dec  c                                           ; $616a: $0d
	nop                                              ; $616b: $00
	nop                                              ; $616c: $00
	rrca                                             ; $616d: $0f
	nop                                              ; $616e: $00
	ld   bc, $ad06                                   ; $616f: $01 $06 $ad
	ld   b, $23                                      ; $6172: $06 $23
	ld   a, [hl]                                     ; $6174: $7e
	inc  e                                           ; $6175: $1c
	ld   [bc], a                                     ; $6176: $02
	nop                                              ; $6177: $00
	nop                                              ; $6178: $00
	ld   bc, $688c                                   ; $6179: $01 $8c $68
	ld   e, b                                        ; $617c: $58
	inc  b                                           ; $617d: $04
	adc  l                                           ; $617e: $8d
	ld   d, d                                        ; $617f: $52
	inc  b                                           ; $6180: $04
	sub  d                                           ; $6181: $92
	ld   a, h                                        ; $6182: $7c
	inc  bc                                          ; $6183: $03
	ld   c, a                                        ; $6184: $4f
	ld   a, c                                        ; $6185: $79
	dec  c                                           ; $6186: $0d
	ld   [bc], a                                     ; $6187: $02
	or   a                                           ; $6188: $b7
	inc  b                                           ; $6189: $04
	dec  de                                          ; $618a: $1b
	dec  b                                           ; $618b: $05
	call c, $ad03                                    ; $618c: $dc $03 $ad
	ld   [hl], l                                     ; $618f: $75
	sub  b                                           ; $6190: $90
	adc  l                                           ; $6191: $8d
	ld   [hl], h                                     ; $6192: $74
	ld   d, d                                        ; $6193: $52
	ld   e, e                                        ; $6194: $5b
	dec  c                                           ; $6195: $0d
	adc  h                                           ; $6196: $8c
	ld   h, a                                        ; $6197: $67
	sbc  l                                           ; $6198: $9d
	sub  [hl]                                        ; $6199: $96
	sbc  a                                           ; $619a: $9f
	dec  c                                           ; $619b: $0d
	nop                                              ; $619c: $00
	ld   a, [bc]                                     ; $619d: $0a
	ld   bc, $0008                                   ; $619e: $01 $08 $00
	ld   h, e                                        ; $61a1: $63
	and  c                                           ; $61a2: $a1
	sbc  [hl]                                        ; $61a3: $9e
	dec  c                                           ; $61a4: $0d
	ld   [bc], a                                     ; $61a5: $02
	or   a                                           ; $61a6: $b7
	inc  b                                           ; $61a7: $04
	dec  de                                          ; $61a8: $1b
	dec  b                                           ; $61a9: $05
	call c, $ad03                                    ; $61aa: $dc $03 $ad
	ld   a, l                                        ; $61ad: $7d
	ld   e, b                                        ; $61ae: $58
	ld   [bc], a                                     ; $61af: $02
	sbc  d                                           ; $61b0: $9a
	ld   e, e                                        ; $61b1: $5b
	ld   sp, hl                                      ; $61b2: $f9
	dec  c                                           ; $61b3: $0d
	nop                                              ; $61b4: $00
	ld   a, [bc]                                     ; $61b5: $0a
	add  hl, de                                      ; $61b6: $19
	dec  b                                           ; $61b7: $05
	inc  bc                                          ; $61b8: $03
	ld   [bc], a                                     ; $61b9: $02
	sbc  d                                           ; $61ba: $9a
	ld   e, e                                        ; $61bb: $5b
	nop                                              ; $61bc: $00
	nop                                              ; $61bd: $00
	ld   e, e                                        ; $61be: $5b
	sub  a                                           ; $61bf: $97
	ld   d, d                                        ; $61c0: $52
	nop                                              ; $61c1: $00
	ld   bc, $0c03                                   ; $61c2: $01 $03 $0c
	adc  a                                           ; $61c5: $8f
	ld   [hl], h                                     ; $61c6: $74
	nop                                              ; $61c7: $00
	ld   [bc], a                                     ; $61c8: $02
	rlca                                             ; $61c9: $07
	ld   hl, $0207                                   ; $61ca: $21 $07 $02
	inc  bc                                          ; $61cd: $03
	ld   bc, $2000                                   ; $61ce: $01 $00 $20
	nop                                              ; $61d1: $00
	rlca                                             ; $61d2: $07
	ld   h, h                                        ; $61d3: $64
	rlca                                             ; $61d4: $07
	ld   [bc], a                                     ; $61d5: $02
	inc  bc                                          ; $61d6: $03
	ld   bc, $2001                                   ; $61d7: $01 $01 $20
	nop                                              ; $61da: $00
	rlca                                             ; $61db: $07
	xor  a                                           ; $61dc: $af
	rlca                                             ; $61dd: $07
	ld   [bc], a                                     ; $61de: $02
	inc  bc                                          ; $61df: $03
	ld   bc, $2002                                   ; $61e0: $01 $02 $20
	nop                                              ; $61e3: $00
	ld   b, $eb                                      ; $61e4: $06 $eb
	rlca                                             ; $61e6: $07
	rrca                                             ; $61e7: $0f
	nop                                              ; $61e8: $00
	ld   bc, $5601                                   ; $61e9: $01 $01 $56
	ld   d, [hl]                                     ; $61ec: $56
	sbc  [hl]                                        ; $61ed: $9e
	ld   [bc], a                                     ; $61ee: $02
	sbc  d                                           ; $61ef: $9a
	ld   e, e                                        ; $61f0: $5b
	ld   [hl], l                                     ; $61f1: $75
	ld   h, a                                        ; $61f2: $67
	sbc  a                                           ; $61f3: $9f
	dec  c                                           ; $61f4: $0d
	nop                                              ; $61f5: $00
	ld   a, [bc]                                     ; $61f6: $0a
	inc  e                                           ; $61f7: $1c
	ld   [bc], a                                     ; $61f8: $02
	ld   bc, $0101                                   ; $61f9: $01 $01 $01
	ld   l, e                                        ; $61fc: $6b
	sbc  d                                           ; $61fd: $9a
	ld   a, l                                        ; $61fe: $7d
	sub  [hl]                                        ; $61ff: $96
	ld   e, c                                        ; $6200: $59
	ld   [hl], c                                     ; $6201: $71
	ld   l, l                                        ; $6202: $6d
	ld   [hl], l                                     ; $6203: $75
	ld   h, a                                        ; $6204: $67
	sbc  l                                           ; $6205: $9d
	rst  $38                                         ; $6206: $ff
	rst  $38                                         ; $6207: $ff
	dec  c                                           ; $6208: $0d
	ld   l, e                                        ; $6209: $6b
	ld   d, h                                        ; $620a: $54
	ld   d, d                                        ; $620b: $52
	ld   d, h                                        ; $620c: $54
	ld   h, l                                        ; $620d: $65
	sub  e                                           ; $620e: $93
	adc  l                                           ; $620f: $8d
	and  b                                           ; $6210: $a0
	dec  c                                           ; $6211: $0d
	sub  b                                           ; $6212: $90
	ld   l, a                                        ; $6213: $6f
	ld   d, b                                        ; $6214: $50
	sbc  l                                           ; $6215: $9d
	ld   l, c                                        ; $6216: $69
	ld   [hl], h                                     ; $6217: $74
	sbc  c                                           ; $6218: $99
	inc  b                                           ; $6219: $04
	ld   a, b                                        ; $621a: $78
	ld   [hl], l                                     ; $621b: $75
	rst  $38                                         ; $621c: $ff
	rst  $38                                         ; $621d: $ff
	dec  c                                           ; $621e: $0d
	nop                                              ; $621f: $00
	ld   a, [bc]                                     ; $6220: $0a
	dec  c                                           ; $6221: $0d
	nop                                              ; $6222: $00
	nop                                              ; $6223: $00
	rrca                                             ; $6224: $0f
	nop                                              ; $6225: $00
	ld   bc, $1d06                                   ; $6226: $01 $06 $1d
	ld   [$000f], sp                                 ; $6229: $08 $0f $00
	ld   bc, $0301                                   ; $622c: $01 $01 $03
	adc  e                                           ; $622f: $8b
	ld   a, l                                        ; $6230: $7d
	sbc  [hl]                                        ; $6231: $9e
	ld   e, e                                        ; $6232: $5b
	sub  a                                           ; $6233: $97
	ld   d, d                                        ; $6234: $52
	ld   a, b                                        ; $6235: $78
	and  c                                           ; $6236: $a1
	ld   [hl], l                                     ; $6237: $75
	ld   h, a                                        ; $6238: $67
	sbc  a                                           ; $6239: $9f
	dec  c                                           ; $623a: $0d
	nop                                              ; $623b: $00
	ld   a, [bc]                                     ; $623c: $0a
	inc  e                                           ; $623d: $1c
	ld   [bc], a                                     ; $623e: $02
	dec  b                                           ; $623f: $05
	dec  b                                           ; $6240: $05
	ld   bc, $9750                                   ; $6241: $01 $50 $97
	rst  $38                                         ; $6244: $ff
	rst  $38                                         ; $6245: $ff
	ld   l, e                                        ; $6246: $6b
	ld   d, h                                        ; $6247: $54
	ld   a, b                                        ; $6248: $78
	sub  a                                           ; $6249: $97
	sbc  [hl]                                        ; $624a: $9e
	adc  [hl]                                        ; $624b: $8e
	sbc  b                                           ; $624c: $98
	ld   a, c                                        ; $624d: $79
	dec  c                                           ; $624e: $0d
	adc  l                                           ; $624f: $8d
	sbc  c                                           ; $6250: $99
	ld   h, c                                        ; $6251: $61
	halt                                             ; $6252: $76
	ld   a, l                                        ; $6253: $7d
	ld   a, b                                        ; $6254: $78
	ld   e, l                                        ; $6255: $5d
	ld   [hl], h                                     ; $6256: $74
	sub  [hl]                                        ; $6257: $96
	sbc  a                                           ; $6258: $9f
	dec  c                                           ; $6259: $0d
	ld   e, b                                        ; $625a: $58
	inc  b                                           ; $625b: $04
	adc  l                                           ; $625c: $8d
	ld   d, d                                        ; $625d: $52
	inc  b                                           ; $625e: $04
	sub  d                                           ; $625f: $92
	ld   a, c                                        ; $6260: $79
	ld   [bc], a                                     ; $6261: $02
	ld   a, a                                        ; $6262: $7f
	ld   e, e                                        ; $6263: $5b
	adc  h                                           ; $6264: $8c
	ld   h, l                                        ; $6265: $65
	sub  l                                           ; $6266: $95
	ld   d, h                                        ; $6267: $54
	sbc  a                                           ; $6268: $9f
	dec  c                                           ; $6269: $0d
	nop                                              ; $626a: $00
	ld   a, [bc]                                     ; $626b: $0a
	dec  c                                           ; $626c: $0d
	nop                                              ; $626d: $00
	nop                                              ; $626e: $00
	rrca                                             ; $626f: $0f
	nop                                              ; $6270: $00
	ld   bc, $aa06                                   ; $6271: $01 $06 $aa
	add  hl, bc                                      ; $6274: $09
	rrca                                             ; $6275: $0f
	nop                                              ; $6276: $00
	ld   bc, $0301                                   ; $6277: $01 $01 $03
	adc  e                                           ; $627a: $8b
	ld   a, l                                        ; $627b: $7d
	inc  bc                                          ; $627c: $03
	inc  c                                           ; $627d: $0c
	adc  a                                           ; $627e: $8f
	ld   [hl], h                                     ; $627f: $74
	ld   a, b                                        ; $6280: $78
	and  c                                           ; $6281: $a1
	ld   [hl], l                                     ; $6282: $75
	ld   h, a                                        ; $6283: $67
	rst  $38                                         ; $6284: $ff
	rst  $38                                         ; $6285: $ff
	dec  c                                           ; $6286: $0d
	nop                                              ; $6287: $00
	ld   a, [bc]                                     ; $6288: $0a
	inc  e                                           ; $6289: $1c
	ld   [bc], a                                     ; $628a: $02
	nop                                              ; $628b: $00
	nop                                              ; $628c: $00
	ld   bc, $9778                                   ; $628d: $01 $78 $97
	ld   d, d                                        ; $6290: $52
	ld   d, d                                        ; $6291: $52
	inc  b                                           ; $6292: $04
	dec  c                                           ; $6293: $0d
	ld   [bc], a                                     ; $6294: $02
	sub  [hl]                                        ; $6295: $96
	ld   a, c                                        ; $6296: $79
	ld   a, b                                        ; $6297: $78
	sbc  c                                           ; $6298: $99
	sbc  l                                           ; $6299: $9d
	sbc  a                                           ; $629a: $9f
	dec  c                                           ; $629b: $0d
	ld   h, [hl]                                     ; $629c: $66
	ld   [hl], c                                     ; $629d: $71
	ld   e, l                                        ; $629e: $5d
	sbc  b                                           ; $629f: $98
	adc  l                                           ; $62a0: $8d
	ld   a, b                                        ; $62a1: $78
	ld   h, e                                        ; $62a2: $63
	ld   d, d                                        ; $62a3: $52
	sbc  a                                           ; $62a4: $9f
	dec  c                                           ; $62a5: $0d
	nop                                              ; $62a6: $00
	ld   a, [bc]                                     ; $62a7: $0a
	dec  c                                           ; $62a8: $0d
	nop                                              ; $62a9: $00
	nop                                              ; $62aa: $00
	rrca                                             ; $62ab: $0f
	nop                                              ; $62ac: $00
	ld   bc, $1d06                                   ; $62ad: $01 $06 $1d
	ld   [$021c], sp                                 ; $62b0: $08 $1c $02
	ld   bc, $0101                                   ; $62b3: $01 $01 $01
	ld   e, b                                        ; $62b6: $58
	adc  c                                           ; $62b7: $89
	adc  c                                           ; $62b8: $89
	adc  c                                           ; $62b9: $89
	adc  c                                           ; $62ba: $89
	rst  $38                                         ; $62bb: $ff
	rst  $38                                         ; $62bc: $ff
	dec  c                                           ; $62bd: $0d
	sbc  l                                           ; $62be: $9d
	ld   l, l                                        ; $62bf: $6d
	ld   e, l                                        ; $62c0: $5d
	ld   h, l                                        ; $62c1: $65
	ld   a, h                                        ; $62c2: $7c
	inc  bc                                          ; $62c3: $03
	ld   c, a                                        ; $62c4: $4f
	ld   l, [hl]                                     ; $62c5: $6e
	ld   e, c                                        ; $62c6: $59
	sub  a                                           ; $62c7: $97
	ld   [hl], c                                     ; $62c8: $71
	ld   [hl], h                                     ; $62c9: $74
	dec  c                                           ; $62ca: $0d
	ld   e, e                                        ; $62cb: $5b
	and  c                                           ; $62cc: $a1
	ld   l, a                                        ; $62cd: $6f
	sub  l                                           ; $62ce: $95
	ld   d, h                                        ; $62cf: $54
	ld   h, a                                        ; $62d0: $67
	sbc  c                                           ; $62d1: $99
	ld   [bc], a                                     ; $62d2: $02
	jp   Jump_063_787d                               ; $62d3: $c3 $7d $78


	ld   e, l                                        ; $62d6: $5d
	ld   [hl], h                                     ; $62d7: $74
	sub  [hl]                                        ; $62d8: $96
	sbc  a                                           ; $62d9: $9f
	dec  c                                           ; $62da: $0d
	nop                                              ; $62db: $00
	ld   a, [bc]                                     ; $62dc: $0a
	dec  c                                           ; $62dd: $0d
	nop                                              ; $62de: $00
	nop                                              ; $62df: $00
	rrca                                             ; $62e0: $0f
	nop                                              ; $62e1: $00
	ld   bc, $8123                                   ; $62e2: $01 $23 $81
	rrca                                             ; $62e5: $0f
	ld   [bc], a                                     ; $62e6: $02
	ld   bc, $ff01                                   ; $62e7: $01 $01 $ff
	rst  $38                                         ; $62ea: $ff
	ld   l, a                                        ; $62eb: $6f
	sub  l                                           ; $62ec: $95
	ld   d, h                                        ; $62ed: $54
	ld   [hl], a                                     ; $62ee: $77
	dec  b                                           ; $62ef: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $62f0: $cf
	adc  h                                           ; $62f1: $8c
	sbc  c                                           ; $62f2: $99
	dec  c                                           ; $62f3: $0d
	halt                                             ; $62f4: $76
	ld   h, c                                        ; $62f5: $61
	sbc  e                                           ; $62f6: $9b
	ld   [hl], l                                     ; $62f7: $75
	ld   h, a                                        ; $62f8: $67
	sbc  l                                           ; $62f9: $9d
	sbc  a                                           ; $62fa: $9f
	dec  c                                           ; $62fb: $0d
	inc  bc                                          ; $62fc: $03
	ld   [hl], b                                     ; $62fd: $70
	ld   e, l                                        ; $62fe: $5d
	inc  bc                                          ; $62ff: $03
	dec  h                                           ; $6300: $25
	ld   a, c                                        ; $6301: $79
	ld   [hl], d                                     ; $6302: $72
	ld   e, e                                        ; $6303: $5b
	adc  h                                           ; $6304: $8c
	ld   h, l                                        ; $6305: $65
	sub  l                                           ; $6306: $95
	ld   d, h                                        ; $6307: $54
	sbc  a                                           ; $6308: $9f
	dec  c                                           ; $6309: $0d
	nop                                              ; $630a: $00
	ld   a, [bc]                                     ; $630b: $0a
	rrca                                             ; $630c: $0f
	nop                                              ; $630d: $00
	ld   bc, $0b0c                                   ; $630e: $01 $0c $0b
	inc  e                                           ; $6311: $1c
	ld   [bc], a                                     ; $6312: $02
	inc  b                                           ; $6313: $04
	inc  b                                           ; $6314: $04
	ld   bc, $5483                                   ; $6315: $01 $83 $54
	rst  $38                                         ; $6318: $ff
	rst  $38                                         ; $6319: $ff
	ld   h, a                                        ; $631a: $67
	ld   [hl], h                                     ; $631b: $74
	ld   e, e                                        ; $631c: $5b
	ld   a, b                                        ; $631d: $78
	db   $eb                                         ; $631e: $eb
	rst  $10                                         ; $631f: $d7
	rst  $28                                         ; $6320: $ef
	rst  JumpTable                                         ; $6321: $df
	push af                                          ; $6322: $f5
	cp   d                                           ; $6323: $ba
	dec  c                                           ; $6324: $0d
	ld   [hl], l                                     ; $6325: $75
	ld   h, l                                        ; $6326: $65
	ld   l, l                                        ; $6327: $6d
	sbc  l                                           ; $6328: $9d
	ld   a, e                                        ; $6329: $7b
	rst  $38                                         ; $632a: $ff
	rst  $38                                         ; $632b: $ff
	dec  c                                           ; $632c: $0d
	ld   d, b                                        ; $632d: $50
	ld   a, b                                        ; $632e: $78
	ld   l, l                                        ; $632f: $6d
	ld   a, l                                        ; $6330: $7d
	ld   [hl], a                                     ; $6331: $77
	ld   d, h                                        ; $6332: $54
	ld   [hl], l                                     ; $6333: $75
	ld   h, l                                        ; $6334: $65
	ld   l, l                                        ; $6335: $6d
	ld   sp, hl                                      ; $6336: $f9
	dec  c                                           ; $6337: $0d
	nop                                              ; $6338: $00
	ld   a, [bc]                                     ; $6339: $0a
	add  hl, de                                      ; $633a: $19
	dec  b                                           ; $633b: $05
	inc  bc                                          ; $633c: $03
	ld   [bc], a                                     ; $633d: $02
	scf                                              ; $633e: $37
	inc  b                                           ; $633f: $04
	dec  de                                          ; $6340: $1b
	ld   h, l                                        ; $6341: $65
	adc  h                                           ; $6342: $8c
	ld   h, l                                        ; $6343: $65
	ld   l, l                                        ; $6344: $6d
	nop                                              ; $6345: $00
	nop                                              ; $6346: $00
	adc  h                                           ; $6347: $8c
	ld   d, b                                        ; $6348: $50
	adc  h                                           ; $6349: $8c
	ld   d, b                                        ; $634a: $50
	ld   [hl], l                                     ; $634b: $75
	ld   h, l                                        ; $634c: $65
	ld   l, l                                        ; $634d: $6d
	nop                                              ; $634e: $00
	ld   bc, $4204                                   ; $634f: $01 $04 $42
	ld   [hl], h                                     ; $6352: $74
	adc  h                                           ; $6353: $8c
	ld   h, l                                        ; $6354: $65
	ld   l, l                                        ; $6355: $6d
	nop                                              ; $6356: $00
	ld   [bc], a                                     ; $6357: $02
	rlca                                             ; $6358: $07
	or   b                                           ; $6359: $b0
	ld   [$0302], sp                                 ; $635a: $08 $02 $03
	ld   bc, $2000                                   ; $635d: $01 $00 $20
	nop                                              ; $6360: $00
	rlca                                             ; $6361: $07
	ld   bc, $0209                                   ; $6362: $01 $09 $02
	inc  bc                                          ; $6365: $03
	ld   bc, $2001                                   ; $6366: $01 $01 $20
	nop                                              ; $6369: $00
	rlca                                             ; $636a: $07
	ld   a, [hl+]                                    ; $636b: $2a
	add  hl, bc                                      ; $636c: $09
	ld   [bc], a                                     ; $636d: $02
	inc  bc                                          ; $636e: $03
	ld   bc, $2002                                   ; $636f: $01 $02 $20
	nop                                              ; $6372: $00
	ld   b, $67                                      ; $6373: $06 $67
	add  hl, bc                                      ; $6375: $09
	rrca                                             ; $6376: $0f
	nop                                              ; $6377: $00
	ld   bc, $0201                                   ; $6378: $01 $01 $02
	scf                                              ; $637b: $37
	inc  b                                           ; $637c: $04
	dec  de                                          ; $637d: $1b
	ld   h, l                                        ; $637e: $65
	adc  h                                           ; $637f: $8c
	ld   h, l                                        ; $6380: $65
	ld   l, l                                        ; $6381: $6d
	rst  $38                                         ; $6382: $ff
	rst  $38                                         ; $6383: $ff
	dec  c                                           ; $6384: $0d
	ld   [bc], a                                     ; $6385: $02
	or   a                                           ; $6386: $b7
	inc  b                                           ; $6387: $04
	dec  de                                          ; $6388: $1b
	dec  b                                           ; $6389: $05
	call c, $ad03                                    ; $638a: $dc $03 $ad
	ld   [hl], c                                     ; $638d: $71
	ld   [hl], h                                     ; $638e: $74
	ld   d, d                                        ; $638f: $52
	ld   d, d                                        ; $6390: $52
	ld   [hl], l                                     ; $6391: $75
	ld   h, a                                        ; $6392: $67
	sub  [hl]                                        ; $6393: $96
	ld   a, e                                        ; $6394: $7b
	rst  $38                                         ; $6395: $ff
	rst  $38                                         ; $6396: $ff
	dec  c                                           ; $6397: $0d
	nop                                              ; $6398: $00
	ld   a, [bc]                                     ; $6399: $0a
	inc  e                                           ; $639a: $1c
	ld   [bc], a                                     ; $639b: $02
	ld   bc, $0101                                   ; $639c: $01 $01 $01
	ld   h, c                                        ; $639f: $61
	ld   a, h                                        ; $63a0: $7c
	inc  bc                                          ; $63a1: $03
	xor  h                                           ; $63a2: $ac
	inc  b                                           ; $63a3: $04
	ld   h, c                                        ; $63a4: $61
	ld   a, h                                        ; $63a5: $7c
	dec  b                                           ; $63a6: $05
	dec  d                                           ; $63a7: $15
	ld   h, e                                        ; $63a8: $63
	ld   e, d                                        ; $63a9: $5a
	sbc  l                                           ; $63aa: $9d
	ld   e, c                                        ; $63ab: $59
	sbc  c                                           ; $63ac: $99
	ld   a, b                                        ; $63ad: $78
	and  c                                           ; $63ae: $a1
	ld   [hl], h                                     ; $63af: $74
	dec  c                                           ; $63b0: $0d
	ld   [$6300], sp                                 ; $63b1: $08 $00 $63
	and  c                                           ; $63b4: $a1
	sub  b                                           ; $63b5: $90
	sbc  [hl]                                        ; $63b6: $9e
	dec  c                                           ; $63b7: $0d
	ld   a, b                                        ; $63b8: $78
	ld   e, c                                        ; $63b9: $59
	ld   a, b                                        ; $63ba: $78
	ld   e, c                                        ; $63bb: $59
	ld   [hl], l                                     ; $63bc: $75
	ld   h, a                                        ; $63bd: $67
	sbc  l                                           ; $63be: $9d
	ld   a, e                                        ; $63bf: $7b
	sbc  a                                           ; $63c0: $9f
	dec  c                                           ; $63c1: $0d
	nop                                              ; $63c2: $00
	ld   a, [bc]                                     ; $63c3: $0a
	ld   b, $90                                      ; $63c4: $06 $90
	add  hl, bc                                      ; $63c6: $09
	rrca                                             ; $63c7: $0f
	nop                                              ; $63c8: $00
	ld   bc, $8c01                                   ; $63c9: $01 $01 $8c
	ld   d, b                                        ; $63cc: $50
	adc  h                                           ; $63cd: $8c
	ld   d, b                                        ; $63ce: $50
	ld   [hl], l                                     ; $63cf: $75
	ld   h, l                                        ; $63d0: $65
	ld   l, l                                        ; $63d1: $6d
	sbc  a                                           ; $63d2: $9f
	dec  c                                           ; $63d3: $0d
	nop                                              ; $63d4: $00
	ld   a, [bc]                                     ; $63d5: $0a
	inc  e                                           ; $63d6: $1c
	ld   [bc], a                                     ; $63d7: $02
	dec  b                                           ; $63d8: $05
	dec  b                                           ; $63d9: $05
	ld   bc, $5250                                   ; $63da: $01 $50 $52
	adc  h                                           ; $63dd: $8c
	ld   d, d                                        ; $63de: $52
	ld   a, b                                        ; $63df: $78
	ld   [bc], a                                     ; $63e0: $02
	scf                                              ; $63e1: $37
	inc  bc                                          ; $63e2: $03
	ld   a, [de]                                     ; $63e3: $1a
	ld   [hl], l                                     ; $63e4: $75
	ld   h, a                                        ; $63e5: $67
	sbc  l                                           ; $63e6: $9d
	ld   a, e                                        ; $63e7: $7b
	rst  $38                                         ; $63e8: $ff
	rst  $38                                         ; $63e9: $ff
	dec  c                                           ; $63ea: $0d
	nop                                              ; $63eb: $00
	ld   a, [bc]                                     ; $63ec: $0a
	ld   b, $90                                      ; $63ed: $06 $90
	add  hl, bc                                      ; $63ef: $09
	rrca                                             ; $63f0: $0f
	nop                                              ; $63f1: $00
	ld   bc, $ff01                                   ; $63f2: $01 $01 $ff
	rst  $38                                         ; $63f5: $ff
	inc  b                                           ; $63f6: $04
	ld   b, d                                        ; $63f7: $42
	ld   [hl], h                                     ; $63f8: $74
	adc  h                                           ; $63f9: $8c
	ld   h, l                                        ; $63fa: $65
	ld   l, l                                        ; $63fb: $6d
	sbc  a                                           ; $63fc: $9f
	dec  c                                           ; $63fd: $0d
	nop                                              ; $63fe: $00
	ld   a, [bc]                                     ; $63ff: $0a
	inc  e                                           ; $6400: $1c
	ld   [bc], a                                     ; $6401: $02
	ld   bc, $0101                                   ; $6402: $01 $01 $01
	ld   e, b                                        ; $6405: $58
	adc  c                                           ; $6406: $89
	adc  c                                           ; $6407: $89
	adc  c                                           ; $6408: $89
	adc  c                                           ; $6409: $89
	rst  $38                                         ; $640a: $ff
	rst  $38                                         ; $640b: $ff
	dec  c                                           ; $640c: $0d
	ld   [$6300], sp                                 ; $640d: $08 $00 $63
	and  c                                           ; $6410: $a1
	ld   a, h                                        ; $6411: $7c
	inc  b                                           ; $6412: $04
	ld   b, d                                        ; $6413: $42
	ld   [bc], a                                     ; $6414: $02
	ld   [hl], d                                     ; $6415: $72
	ld   e, d                                        ; $6416: $5a
	sbc  [hl]                                        ; $6417: $9e
	dec  c                                           ; $6418: $0d
	halt                                             ; $6419: $76
	ei                                               ; $641a: $fb
	ld   [hl], c                                     ; $641b: $71
	ld   [hl], h                                     ; $641c: $74
	sub  b                                           ; $641d: $90
	sbc  [hl]                                        ; $641e: $9e
	sub  h                                           ; $641f: $94
	ld   e, c                                        ; $6420: $59
	ld   d, d                                        ; $6421: $52
	ld   [hl], l                                     ; $6422: $75
	ld   h, l                                        ; $6423: $65
	ld   l, l                                        ; $6424: $6d
	sbc  l                                           ; $6425: $9d
	sbc  a                                           ; $6426: $9f
	dec  c                                           ; $6427: $0d
	nop                                              ; $6428: $00
	ld   a, [bc]                                     ; $6429: $0a
	ld   b, $90                                      ; $642a: $06 $90
	add  hl, bc                                      ; $642c: $09
	inc  e                                           ; $642d: $1c
	ld   [bc], a                                     ; $642e: $02
	ld   bc, $0101                                   ; $642f: $01 $01 $01
	ld   [bc], a                                     ; $6432: $02
	sbc  l                                           ; $6433: $9d
	inc  b                                           ; $6434: $04
	sub  c                                           ; $6435: $91
	ld   a, c                                        ; $6436: $79
	ld   [hl], l                                     ; $6437: $75
	ld   e, e                                        ; $6438: $5b
	ld   a, b                                        ; $6439: $78
	ld   d, d                                        ; $643a: $52
	adc  c                                           ; $643b: $89
	ld   [hl], a                                     ; $643c: $77
	dec  c                                           ; $643d: $0d
	ld   [bc], a                                     ; $643e: $02
	scf                                              ; $643f: $37
	inc  b                                           ; $6440: $04
	dec  de                                          ; $6441: $1b
	ld   h, l                                        ; $6442: $65
	adc  h                                           ; $6443: $8c
	ld   h, l                                        ; $6444: $65
	ld   l, l                                        ; $6445: $6d
	ld   a, h                                        ; $6446: $7c
	ld   a, e                                        ; $6447: $7b
	rst  $38                                         ; $6448: $ff
	rst  $38                                         ; $6449: $ff
	dec  c                                           ; $644a: $0d
	sub  [hl]                                        ; $644b: $96
	ld   e, c                                        ; $644c: $59
	ld   [hl], c                                     ; $644d: $71
	ld   l, l                                        ; $644e: $6d
	ld   [hl], l                                     ; $644f: $75
	ld   h, a                                        ; $6450: $67
	sbc  l                                           ; $6451: $9d
	sbc  a                                           ; $6452: $9f
	dec  c                                           ; $6453: $0d
	nop                                              ; $6454: $00
	ld   a, [bc]                                     ; $6455: $0a
	inc  e                                           ; $6456: $1c
	ld   [bc], a                                     ; $6457: $02
	nop                                              ; $6458: $00
	nop                                              ; $6459: $00
	ld   bc, $9e63                                   ; $645a: $01 $63 $9e
	inc  bc                                          ; $645d: $03
	add  b                                           ; $645e: $80
	adc  h                                           ; $645f: $8c
	ld   h, l                                        ; $6460: $65
	sub  l                                           ; $6461: $95
	ld   d, h                                        ; $6462: $54
	sbc  a                                           ; $6463: $9f
	dec  c                                           ; $6464: $0d
	nop                                              ; $6465: $00
	ld   a, [bc]                                     ; $6466: $0a
	dec  c                                           ; $6467: $0d
	nop                                              ; $6468: $00
	nop                                              ; $6469: $00
	rrca                                             ; $646a: $0f
	nop                                              ; $646b: $00
	ld   bc, $aa06                                   ; $646c: $01 $06 $aa
	add  hl, bc                                      ; $646f: $09
	inc  hl                                          ; $6470: $23
	ld   a, l                                        ; $6471: $7d
	inc  e                                           ; $6472: $1c
	ld   [bc], a                                     ; $6473: $02
	nop                                              ; $6474: $00
	nop                                              ; $6475: $00
	ld   bc, $7d75                                   ; $6476: $01 $75 $7d
	sbc  [hl]                                        ; $6479: $9e
	db   $e3                                         ; $647a: $e3
	ret                                              ; $647b: $c9


	rst  $28                                         ; $647c: $ef
	ld   a, c                                        ; $647d: $79
	inc  bc                                          ; $647e: $03
	cp   c                                           ; $647f: $b9
	ld   [hl], c                                     ; $6480: $71
	ld   [hl], h                                     ; $6481: $74
	dec  c                                           ; $6482: $0d
	ld   e, b                                        ; $6483: $58
	inc  b                                           ; $6484: $04
	adc  l                                           ; $6485: $8d
	ld   d, d                                        ; $6486: $52
	inc  b                                           ; $6487: $04
	sub  d                                           ; $6488: $92
	ld   a, c                                        ; $6489: $79
	adc  h                                           ; $648a: $8c
	ld   d, d                                        ; $648b: $52
	sbc  b                                           ; $648c: $98
	adc  h                                           ; $648d: $8c
	ld   h, l                                        ; $648e: $65
	sub  l                                           ; $648f: $95
	ld   d, h                                        ; $6490: $54
	sbc  a                                           ; $6491: $9f
	dec  c                                           ; $6492: $0d
	nop                                              ; $6493: $00
	ld   a, [bc]                                     ; $6494: $0a
	rrca                                             ; $6495: $0f
	nop                                              ; $6496: $00
	ld   bc, $6701                                   ; $6497: $01 $01 $67
	adc  l                                           ; $649a: $8d
	sbc  d                                           ; $649b: $9a
	ld   h, e                                        ; $649c: $63
	and  c                                           ; $649d: $a1
	sbc  [hl]                                        ; $649e: $9e
	ld   d, b                                        ; $649f: $50
	ld   a, h                                        ; $64a0: $7c
	rst  $38                                         ; $64a1: $ff
	rst  $38                                         ; $64a2: $ff
	dec  c                                           ; $64a3: $0d
	nop                                              ; $64a4: $00
	ld   a, [bc]                                     ; $64a5: $0a
	add  hl, de                                      ; $64a6: $19
	dec  b                                           ; $64a7: $05
	ld   [bc], a                                     ; $64a8: $02
	ld   [bc], a                                     ; $64a9: $02
	or   a                                           ; $64aa: $b7
	inc  b                                           ; $64ab: $04
	dec  de                                          ; $64ac: $1b
	dec  b                                           ; $64ad: $05
	call c, $ad03                                    ; $64ae: $dc $03 $ad
	ld   a, c                                        ; $64b1: $79
	ld   [hl], d                                     ; $64b2: $72
	ld   d, d                                        ; $64b3: $52
	ld   [hl], h                                     ; $64b4: $74
	ld   [bc], a                                     ; $64b5: $02
	jp   nz, $005d                                   ; $64b6: $c2 $5d $00

	nop                                              ; $64b9: $00
	db   $e3                                         ; $64ba: $e3
	ret                                              ; $64bb: $c9


	rst  $28                                         ; $64bc: $ef
	ld   a, c                                        ; $64bd: $79
	ld   [hl], d                                     ; $64be: $72
	ld   d, d                                        ; $64bf: $52
	ld   [hl], h                                     ; $64c0: $74
	ld   [bc], a                                     ; $64c1: $02
	jp   nz, $005d                                   ; $64c2: $c2 $5d $00

	ld   bc, $1507                                   ; $64c5: $01 $07 $15
	ld   a, [bc]                                     ; $64c8: $0a
	ld   [bc], a                                     ; $64c9: $02
	inc  bc                                          ; $64ca: $03
	ld   bc, $2000                                   ; $64cb: $01 $00 $20
	nop                                              ; $64ce: $00
	rlca                                             ; $64cf: $07
	ld   [hl], h                                     ; $64d0: $74
	ld   a, [bc]                                     ; $64d1: $0a
	ld   [bc], a                                     ; $64d2: $02
	inc  bc                                          ; $64d3: $03
	ld   bc, $2001                                   ; $64d4: $01 $01 $20
	nop                                              ; $64d7: $00
	ld   b, $bb                                      ; $64d8: $06 $bb
	ld   a, [bc]                                     ; $64da: $0a
	rrca                                             ; $64db: $0f
	nop                                              ; $64dc: $00
	ld   bc, $6701                                   ; $64dd: $01 $01 $67
	adc  l                                           ; $64e0: $8d
	sbc  d                                           ; $64e1: $9a
	ld   h, e                                        ; $64e2: $63
	and  c                                           ; $64e3: $a1
	ld   a, l                                        ; $64e4: $7d
	ld   [bc], a                                     ; $64e5: $02
	or   a                                           ; $64e6: $b7
	inc  b                                           ; $64e7: $04
	dec  de                                          ; $64e8: $1b
	dec  b                                           ; $64e9: $05
	call c, $ad03                                    ; $64ea: $dc $03 $ad
	ld   a, c                                        ; $64ed: $79
	ld   a, l                                        ; $64ee: $7d
	dec  c                                           ; $64ef: $0d
	inc  bc                                          ; $64f0: $03
	add  b                                           ; $64f1: $80
	ld   [bc], a                                     ; $64f2: $02
	rra                                              ; $64f3: $1f
	ld   h, l                                        ; $64f4: $65
	ld   a, b                                        ; $64f5: $78
	ld   d, d                                        ; $64f6: $52
	and  c                                           ; $64f7: $a1
	ld   [hl], l                                     ; $64f8: $75
	ld   h, a                                        ; $64f9: $67
	ld   e, c                                        ; $64fa: $59
	ld   sp, hl                                      ; $64fb: $f9
	dec  c                                           ; $64fc: $0d
	nop                                              ; $64fd: $00
	ld   a, [bc]                                     ; $64fe: $0a
	inc  e                                           ; $64ff: $1c
	ld   [bc], a                                     ; $6500: $02
	ld   bc, $0101                                   ; $6501: $01 $01 $01
	sub  b                                           ; $6504: $90
	ld   l, a                                        ; $6505: $6f
	sbc  e                                           ; $6506: $9b
	and  c                                           ; $6507: $a1
	sbc  [hl]                                        ; $6508: $9e
	ld   d, d                                        ; $6509: $52
	ld   l, b                                        ; $650a: $68
	sbc  d                                           ; $650b: $9a
	ld   [bc], a                                     ; $650c: $02
	or   a                                           ; $650d: $b7
	inc  b                                           ; $650e: $04
	dec  de                                          ; $650f: $1b
	dec  b                                           ; $6510: $05
	call c, $ad03                                    ; $6511: $dc $03 $ad
	ld   [bc], a                                     ; $6514: $02
	ld   b, d                                        ; $6515: $42
	dec  c                                           ; $6516: $0d
	ld   a, c                                        ; $6517: $79
	sub  b                                           ; $6518: $90
	ret                                              ; $6519: $c9


	call nz, $bad8                                   ; $651a: $c4 $d8 $ba
	ret  nz                                          ; $651d: $c0

	and  e                                           ; $651e: $a3
	halt                                             ; $651f: $76
	ld   h, l                                        ; $6520: $65
	ld   [hl], h                                     ; $6521: $74
	dec  c                                           ; $6522: $0d
	ld   e, c                                        ; $6523: $59
	ld   e, d                                        ; $6524: $5a
	sub  d                                           ; $6525: $92
	ld   e, l                                        ; $6526: $5d
	ld   [hl], d                                     ; $6527: $72
	sub  b                                           ; $6528: $90
	sbc  b                                           ; $6529: $98
	ld   [hl], l                                     ; $652a: $75
	ld   h, a                                        ; $652b: $67
	sbc  l                                           ; $652c: $9d
	sbc  a                                           ; $652d: $9f
	dec  c                                           ; $652e: $0d
	nop                                              ; $652f: $00
	ld   a, [bc]                                     ; $6530: $0a
	dec  c                                           ; $6531: $0d
	nop                                              ; $6532: $00
	nop                                              ; $6533: $00
	rrca                                             ; $6534: $0f
	nop                                              ; $6535: $00
	ld   bc, $e706                                   ; $6536: $01 $06 $e7
	ld   a, [bc]                                     ; $6539: $0a
	rrca                                             ; $653a: $0f
	nop                                              ; $653b: $00
	ld   bc, $e301                                   ; $653c: $01 $01 $e3
	ret                                              ; $653f: $c9


	rst  $28                                         ; $6540: $ef
	ld   [hl], c                                     ; $6541: $71
	ld   [hl], h                                     ; $6542: $74
	rst  $38                                         ; $6543: $ff
	rst  $38                                         ; $6544: $ff
	ld   sp, hl                                      ; $6545: $f9
	dec  c                                           ; $6546: $0d
	nop                                              ; $6547: $00
	ld   a, [bc]                                     ; $6548: $0a
	inc  e                                           ; $6549: $1c
	ld   [bc], a                                     ; $654a: $02
	inc  bc                                          ; $654b: $03
	inc  bc                                          ; $654c: $03
	ld   bc, $9750                                   ; $654d: $01 $50 $97
	sbc  [hl]                                        ; $6550: $9e
	ld   h, d                                        ; $6551: $62
	ld   l, h                                        ; $6552: $6c
	and  c                                           ; $6553: $a1
	ld   h, [hl]                                     ; $6554: $66
	ld   a, b                                        ; $6555: $78
	ld   e, l                                        ; $6556: $5d
	ld   [hl], h                                     ; $6557: $74
	ld   sp, hl                                      ; $6558: $f9
	dec  c                                           ; $6559: $0d
	inc  b                                           ; $655a: $04
	xor  d                                           ; $655b: $aa
	inc  b                                           ; $655c: $04
	adc  a                                           ; $655d: $8f
	inc  bc                                          ; $655e: $03
	inc  c                                           ; $655f: $0c
	ld   a, h                                        ; $6560: $7c
	inc  bc                                          ; $6561: $03
	adc  $02                                         ; $6562: $ce $02
	inc  [hl]                                        ; $6564: $34
	and  b                                           ; $6565: $a0
	dec  b                                           ; $6566: $05
	cp   c                                           ; $6567: $b9
	sbc  c                                           ; $6568: $99
	dec  c                                           ; $6569: $0d
	ld   b, $39                                      ; $656a: $06 $39
	inc  bc                                          ; $656c: $03
	sub  l                                           ; $656d: $95
	ld   a, h                                        ; $656e: $7c
	ld   h, c                                        ; $656f: $61
	halt                                             ; $6570: $76
	ld   [hl], l                                     ; $6571: $75
	ld   h, a                                        ; $6572: $67
	sbc  l                                           ; $6573: $9d
	sbc  a                                           ; $6574: $9f
	dec  c                                           ; $6575: $0d
	nop                                              ; $6576: $00
	ld   a, [bc]                                     ; $6577: $0a
	dec  c                                           ; $6578: $0d
	nop                                              ; $6579: $00
	nop                                              ; $657a: $00
	rrca                                             ; $657b: $0f
	nop                                              ; $657c: $00
	ld   bc, $e706                                   ; $657d: $01 $06 $e7
	ld   a, [bc]                                     ; $6580: $0a
	rrca                                             ; $6581: $0f
	nop                                              ; $6582: $00
	ld   bc, $ff01                                   ; $6583: $01 $01 $ff
	rst  $38                                         ; $6586: $ff
	inc  b                                           ; $6587: $04
	ld   c, c                                        ; $6588: $49
	ld   [hl], l                                     ; $6589: $75
	sub  b                                           ; $658a: $90
	ld   d, b                                        ; $658b: $50
	sbc  b                                           ; $658c: $98
	adc  h                                           ; $658d: $8c
	ld   l, c                                        ; $658e: $69
	and  c                                           ; $658f: $a1
	sbc  a                                           ; $6590: $9f
	dec  c                                           ; $6591: $0d
	nop                                              ; $6592: $00
	ld   a, [bc]                                     ; $6593: $0a
	inc  e                                           ; $6594: $1c
	ld   [bc], a                                     ; $6595: $02
	dec  b                                           ; $6596: $05
	dec  b                                           ; $6597: $05
	ld   bc, $8c04                                   ; $6598: $01 $04 $8c
	ld   a, b                                        ; $659b: $78
	ld   e, b                                        ; $659c: $58
	inc  b                                           ; $659d: $04
	ld   a, b                                        ; $659e: $78
	rst  $38                                         ; $659f: $ff
	rst  $38                                         ; $65a0: $ff
	dec  c                                           ; $65a1: $0d
	nop                                              ; $65a2: $00
	ld   a, [bc]                                     ; $65a3: $0a
	dec  c                                           ; $65a4: $0d
	nop                                              ; $65a5: $00
	nop                                              ; $65a6: $00
	rrca                                             ; $65a7: $0f
	nop                                              ; $65a8: $00
	ld   bc, $e706                                   ; $65a9: $01 $06 $e7
	ld   a, [bc]                                     ; $65ac: $0a
	inc  hl                                          ; $65ad: $23
	sub  c                                           ; $65ae: $91
	inc  e                                           ; $65af: $1c
	ld   [bc], a                                     ; $65b0: $02
	nop                                              ; $65b1: $00
	nop                                              ; $65b2: $00
	ld   bc, $5b72                                   ; $65b3: $01 $72 $5b
	adc  h                                           ; $65b6: $8c
	ld   h, l                                        ; $65b7: $65
	ld   l, l                                        ; $65b8: $6d
	sbc  l                                           ; $65b9: $9d
	sbc  a                                           ; $65ba: $9f
	dec  c                                           ; $65bb: $0d
	ld   h, e                                        ; $65bc: $63
	ld   d, b                                        ; $65bd: $50
	sbc  [hl]                                        ; $65be: $9e
	ld   e, b                                        ; $65bf: $58
	inc  b                                           ; $65c0: $04
	adc  l                                           ; $65c1: $8d
	ld   d, d                                        ; $65c2: $52
	inc  b                                           ; $65c3: $04
	sub  d                                           ; $65c4: $92
	ld   h, l                                        ; $65c5: $65
	adc  h                                           ; $65c6: $8c
	ld   h, a                                        ; $65c7: $67
	sbc  l                                           ; $65c8: $9d
	sub  [hl]                                        ; $65c9: $96
	sbc  a                                           ; $65ca: $9f
	dec  c                                           ; $65cb: $0d
	nop                                              ; $65cc: $00
	ld   a, [bc]                                     ; $65cd: $0a
	ld   bc, $9166                                   ; $65ce: $01 $66 $91
	sbc  [hl]                                        ; $65d1: $9e
	ld   [$6300], sp                                 ; $65d2: $08 $00 $63
	and  c                                           ; $65d5: $a1
	rst  $38                                         ; $65d6: $ff
	rst  $38                                         ; $65d7: $ff
	dec  c                                           ; $65d8: $0d
	ld   [bc], a                                     ; $65d9: $02
	rst  JumpTable                                         ; $65da: $df
	inc  b                                           ; $65db: $04
	sub  d                                           ; $65dc: $92
	and  b                                           ; $65dd: $a0
	sub  b                                           ; $65de: $90
	ld   [hl], c                                     ; $65df: $71
	ld   [hl], h                                     ; $65e0: $74
	sub  b                                           ; $65e1: $90
	sub  a                                           ; $65e2: $97
	ld   d, d                                        ; $65e3: $52
	adc  h                                           ; $65e4: $8c
	ld   h, a                                        ; $65e5: $67
	sbc  l                                           ; $65e6: $9d
	sub  [hl]                                        ; $65e7: $96
	sbc  a                                           ; $65e8: $9f
	dec  c                                           ; $65e9: $0d
	nop                                              ; $65ea: $00
	ld   a, [bc]                                     ; $65eb: $0a
	dec  c                                           ; $65ec: $0d
	nop                                              ; $65ed: $00
	nop                                              ; $65ee: $00
	rrca                                             ; $65ef: $0f
	nop                                              ; $65f0: $00
	ld   bc, $0b0c                                   ; $65f1: $01 $0c $0b
	inc  e                                           ; $65f4: $1c
	ld   [bc], a                                     ; $65f5: $02
	nop                                              ; $65f6: $00
	nop                                              ; $65f7: $00
	ld   bc, $7d75                                   ; $65f8: $01 $75 $7d
	rst  $38                                         ; $65fb: $ff
	rst  $38                                         ; $65fc: $ff
	dec  c                                           ; $65fd: $0d
	adc  h                                           ; $65fe: $8c
	ld   l, b                                        ; $65ff: $68
	ld   a, l                                        ; $6600: $7d
	sbc  [hl]                                        ; $6601: $9e
	ld   h, c                                        ; $6602: $61
	sbc  d                                           ; $6603: $9a
	and  b                                           ; $6604: $a0
	inc  bc                                          ; $6605: $03
	and  b                                           ; $6606: $a0
	ld   [hl], c                                     ; $6607: $71
	ld   [hl], h                                     ; $6608: $74
	dec  c                                           ; $6609: $0d
	ld   e, l                                        ; $660a: $5d
	ld   l, [hl]                                     ; $660b: $6e
	ld   h, e                                        ; $660c: $63
	ld   d, d                                        ; $660d: $52
	ld   a, b                                        ; $660e: $78
	sbc  a                                           ; $660f: $9f
	dec  c                                           ; $6610: $0d
	nop                                              ; $6611: $00
	ld   a, [bc]                                     ; $6612: $0a
	add  hl, de                                      ; $6613: $19
	dec  b                                           ; $6614: $05
	ld   [bc], a                                     ; $6615: $02
	sub  b                                           ; $6616: $90
	ld   [hl], d                                     ; $6617: $72
	nop                                              ; $6618: $00
	nop                                              ; $6619: $00
	sub  b                                           ; $661a: $90
	ld   l, l                                        ; $661b: $6d
	ld   a, b                                        ; $661c: $78
	ld   d, d                                        ; $661d: $52
	nop                                              ; $661e: $00
	ld   bc, $6f07                                   ; $661f: $01 $07 $6f
	dec  bc                                          ; $6622: $0b
	ld   [bc], a                                     ; $6623: $02
	inc  bc                                          ; $6624: $03
	ld   bc, $2000                                   ; $6625: $01 $00 $20
	nop                                              ; $6628: $00
	rlca                                             ; $6629: $07
	xor  c                                           ; $662a: $a9
	dec  bc                                          ; $662b: $0b
	ld   [bc], a                                     ; $662c: $02
	inc  bc                                          ; $662d: $03
	ld   bc, $2001                                   ; $662e: $01 $01 $20
	nop                                              ; $6631: $00
	ld   b, $1f                                      ; $6632: $06 $1f
	inc  c                                           ; $6634: $0c
	rrca                                             ; $6635: $0f
	nop                                              ; $6636: $00
	ld   bc, $0101                                   ; $6637: $01 $01 $01
	inc  bc                                          ; $663a: $03
	ld   h, a                                        ; $663b: $67
	adc  l                                           ; $663c: $8d
	sbc  d                                           ; $663d: $9a
	ld   h, e                                        ; $663e: $63
	and  c                                           ; $663f: $a1
	ld   a, h                                        ; $6640: $7c
	ld   h, c                                        ; $6641: $61
	halt                                             ; $6642: $76
	ld   l, [hl]                                     ; $6643: $6e
	ld   e, c                                        ; $6644: $59
	sub  a                                           ; $6645: $97
	dec  c                                           ; $6646: $0d
	db   $10                                         ; $6647: $10
	inc  bc                                          ; $6648: $03
	ld   e, b                                        ; $6649: $58
	ld   a, h                                        ; $664a: $7c
	sub  [hl]                                        ; $664b: $96
	ld   d, h                                        ; $664c: $54
	ld   a, c                                        ; $664d: $79
	inc  b                                           ; $664e: $04
	adc  l                                           ; $664f: $8d
	ld   d, h                                        ; $6650: $54
	ld   a, h                                        ; $6651: $7c
	ld   e, c                                        ; $6652: $59
	ld   a, b                                        ; $6653: $78
	rst  $38                                         ; $6654: $ff
	rst  $38                                         ; $6655: $ff
	ld   bc, $0d04                                   ; $6656: $01 $04 $0d
	nop                                              ; $6659: $00
	ld   a, [bc]                                     ; $665a: $0a
	inc  e                                           ; $665b: $1c
	ld   [bc], a                                     ; $665c: $02
	ld   bc, $0101                                   ; $665d: $01 $01 $01
	inc  bc                                          ; $6660: $03
	ld   l, b                                        ; $6661: $68
	ld   a, l                                        ; $6662: $7d
	sbc  [hl]                                        ; $6663: $9e
	ld   h, c                                        ; $6664: $61
	sbc  d                                           ; $6665: $9a
	and  b                                           ; $6666: $a0
	rst  $38                                         ; $6667: $ff
	rst  $38                                         ; $6668: $ff
	dec  c                                           ; $6669: $0d
	nop                                              ; $666a: $00
	ld   a, [bc]                                     ; $666b: $0a
	ld   b, $6b                                      ; $666c: $06 $6b
	inc  c                                           ; $666e: $0c
	rrca                                             ; $666f: $0f
	nop                                              ; $6670: $00
	ld   bc, $5901                                   ; $6671: $01 $01 $59
	and  c                                           ; $6674: $a1
	add  a                                           ; $6675: $87
	and  c                                           ; $6676: $a1
	ld   h, l                                        ; $6677: $65
	ld   [hl], h                                     ; $6678: $74
	ld   [bc], a                                     ; $6679: $02
	inc  [hl]                                        ; $667a: $34
	ld   h, e                                        ; $667b: $63
	ld   d, d                                        ; $667c: $52
	rst  $38                                         ; $667d: $ff
	rst  $38                                         ; $667e: $ff
	dec  c                                           ; $667f: $0d
	nop                                              ; $6680: $00
	ld   a, [bc]                                     ; $6681: $0a
	inc  e                                           ; $6682: $1c
	ld   [bc], a                                     ; $6683: $02
	rlca                                             ; $6684: $07
	rlca                                             ; $6685: $07
	ld   bc, $7850                                   ; $6686: $01 $50 $78
	ld   l, l                                        ; $6689: $6d
	ld   a, l                                        ; $668a: $7d
	ld   [bc], a                                     ; $668b: $02
	rst  JumpTable                                         ; $668c: $df
	inc  b                                           ; $668d: $04
	sub  d                                           ; $668e: $92
	sub  b                                           ; $668f: $90
	ld   l, a                                        ; $6690: $6f
	ld   a, h                                        ; $6691: $7c
	ld   l, l                                        ; $6692: $6d
	adc  a                                           ; $6693: $8f
	ld   a, c                                        ; $6694: $79
	dec  c                                           ; $6695: $0d
	ld   h, c                                        ; $6696: $61
	ld   h, c                                        ; $6697: $61
	add  [hl]                                        ; $6698: $86
	dec  b                                           ; $6699: $05
	db   $10                                         ; $669a: $10
	ld   l, l                                        ; $669b: $6d
	and  c                                           ; $669c: $a1
	ld   [hl], l                                     ; $669d: $75
	ld   h, a                                        ; $669e: $67
	ld   a, h                                        ; $669f: $7c
	sub  [hl]                                        ; $66a0: $96
	rst  $38                                         ; $66a1: $ff
	rst  $38                                         ; $66a2: $ff
	dec  c                                           ; $66a3: $0d
	ld   [hl], d                                     ; $66a4: $72
	add  a                                           ; $66a5: $87
	ld   h, c                                        ; $66a6: $61
	add  a                                           ; $66a7: $87
	ld   [bc], a                                     ; $66a8: $02
	sbc  l                                           ; $66a9: $9d
	sbc  l                                           ; $66aa: $9d
	ld   l, b                                        ; $66ab: $68
	ld   a, c                                        ; $66ac: $79
	inc  bc                                          ; $66ad: $03
	and  b                                           ; $66ae: $a0
	ld   l, a                                        ; $66af: $6f
	ld   a, b                                        ; $66b0: $78
	ld   h, e                                        ; $66b1: $63
	ld   d, d                                        ; $66b2: $52
	ld   a, [$000d]                                  ; $66b3: $fa $0d $00
	ld   a, [bc]                                     ; $66b6: $0a
	rrca                                             ; $66b7: $0f
	nop                                              ; $66b8: $00
	ld   bc, $0101                                   ; $66b9: $01 $01 $01
	inc  bc                                          ; $66bc: $03
	ret  nc                                          ; $66bd: $d0

	and  e                                           ; $66be: $a3
	rst  $38                                         ; $66bf: $ff
	rst  $38                                         ; $66c0: $ff
	dec  c                                           ; $66c1: $0d
	db   $10                                         ; $66c2: $10
	ld   h, l                                        ; $66c3: $65
	sub  l                                           ; $66c4: $95
	ld   d, h                                        ; $66c5: $54
	ld   e, d                                        ; $66c6: $5a
	ld   a, b                                        ; $66c7: $78
	ld   d, d                                        ; $66c8: $52
	ld   a, b                                        ; $66c9: $78
	rst  $38                                         ; $66ca: $ff
	rst  $38                                         ; $66cb: $ff
	ld   bc, $0d04                                   ; $66cc: $01 $04 $0d
	nop                                              ; $66cf: $00
	ld   a, [bc]                                     ; $66d0: $0a
	inc  e                                           ; $66d1: $1c
	ld   [bc], a                                     ; $66d2: $02
	nop                                              ; $66d3: $00
	nop                                              ; $66d4: $00
	ld   bc, $6803                                   ; $66d5: $01 $03 $68
	ld   a, l                                        ; $66d8: $7d
	sbc  [hl]                                        ; $66d9: $9e
	ld   h, c                                        ; $66da: $61
	sbc  d                                           ; $66db: $9a
	and  b                                           ; $66dc: $a0
	rst  $38                                         ; $66dd: $ff
	rst  $38                                         ; $66de: $ff
	dec  c                                           ; $66df: $0d
	nop                                              ; $66e0: $00
	ld   a, [bc]                                     ; $66e1: $0a
	ld   b, $6b                                      ; $66e2: $06 $6b
	inc  c                                           ; $66e4: $0c
	inc  e                                           ; $66e5: $1c
	ld   [bc], a                                     ; $66e6: $02
	dec  b                                           ; $66e7: $05
	dec  b                                           ; $66e8: $05
	ld   bc, $9565                                   ; $66e9: $01 $65 $95
	ld   d, h                                        ; $66ec: $54
	ld   e, d                                        ; $66ed: $5a
	ld   a, b                                        ; $66ee: $78
	ld   d, d                                        ; $66ef: $52
	inc  bc                                          ; $66f0: $03
	add  d                                           ; $66f1: $82
	rst  $38                                         ; $66f2: $ff
	rst  $38                                         ; $66f3: $ff
	dec  c                                           ; $66f4: $0d
	adc  c                                           ; $66f5: $89
	sub  a                                           ; $66f6: $97
	sbc  [hl]                                        ; $66f7: $9e
	inc  bc                                          ; $66f8: $03
	and  b                                           ; $66f9: $a0
	ld   l, a                                        ; $66fa: $6f
	ld   a, b                                        ; $66fb: $78
	ld   h, e                                        ; $66fc: $63
	ld   d, d                                        ; $66fd: $52
	ld   a, b                                        ; $66fe: $78
	sbc  a                                           ; $66ff: $9f
	dec  c                                           ; $6700: $0d
	nop                                              ; $6701: $00
	ld   a, [bc]                                     ; $6702: $0a
	rrca                                             ; $6703: $0f
	nop                                              ; $6704: $00
	ld   bc, $0101                                   ; $6705: $01 $01 $01
	inc  bc                                          ; $6708: $03
	adc  h                                           ; $6709: $8c
	ld   d, b                                        ; $670a: $50
	sbc  [hl]                                        ; $670b: $9e
	ld   h, l                                        ; $670c: $65
	sub  l                                           ; $670d: $95
	ld   d, h                                        ; $670e: $54
	ld   e, d                                        ; $670f: $5a
	ld   a, b                                        ; $6710: $78
	ld   d, d                                        ; $6711: $52
	ld   e, c                                        ; $6712: $59
	rst  $38                                         ; $6713: $ff
	rst  $38                                         ; $6714: $ff
	ld   bc, $0d04                                   ; $6715: $01 $04 $0d
	nop                                              ; $6718: $00
	ld   a, [bc]                                     ; $6719: $0a
	inc  e                                           ; $671a: $1c
	ld   [bc], a                                     ; $671b: $02
	nop                                              ; $671c: $00
	nop                                              ; $671d: $00
	ld   bc, $9166                                   ; $671e: $01 $66 $91
	ld   d, b                                        ; $6721: $50
	inc  bc                                          ; $6722: $03
	ld   l, b                                        ; $6723: $68
	ld   a, l                                        ; $6724: $7d
	sbc  [hl]                                        ; $6725: $9e
	ld   h, c                                        ; $6726: $61
	sbc  d                                           ; $6727: $9a
	and  b                                           ; $6728: $a0
	rst  $38                                         ; $6729: $ff
	rst  $38                                         ; $672a: $ff
	dec  c                                           ; $672b: $0d
	nop                                              ; $672c: $00
	ld   a, [bc]                                     ; $672d: $0a
	ld   b, $6b                                      ; $672e: $06 $6b
	inc  c                                           ; $6730: $0c
	add  hl, de                                      ; $6731: $19
	dec  b                                           ; $6732: $05
	ld   [bc], a                                     ; $6733: $02
	ld   e, c                                        ; $6734: $59
	ld   h, e                                        ; $6735: $63
	ld   a, e                                        ; $6736: $7b
	ld   [hl], h                                     ; $6737: $74
	sub  b                                           ; $6738: $90
	ld   [hl], d                                     ; $6739: $72
	nop                                              ; $673a: $00
	nop                                              ; $673b: $00
	ld   e, c                                        ; $673c: $59
	and  c                                           ; $673d: $a1
	add  a                                           ; $673e: $87
	and  c                                           ; $673f: $a1
	ld   h, l                                        ; $6740: $65
	ld   [hl], h                                     ; $6741: $74
	sub  b                                           ; $6742: $90
	sub  a                                           ; $6743: $97
	ld   d, h                                        ; $6744: $54
	nop                                              ; $6745: $00
	ld   bc, $9607                                   ; $6746: $01 $07 $96
	inc  c                                           ; $6749: $0c
	ld   [bc], a                                     ; $674a: $02
	inc  bc                                          ; $674b: $03
	ld   bc, $2000                                   ; $674c: $01 $00 $20
	nop                                              ; $674f: $00
	rlca                                             ; $6750: $07
	pop  bc                                          ; $6751: $c1
	inc  c                                           ; $6752: $0c
	ld   [bc], a                                     ; $6753: $02
	inc  bc                                          ; $6754: $03
	ld   bc, $2001                                   ; $6755: $01 $01 $20
	nop                                              ; $6758: $00
	ld   b, $32                                      ; $6759: $06 $32
	dec  c                                           ; $675b: $0d
	rrca                                             ; $675c: $0f
	nop                                              ; $675d: $00
	ld   bc, $0101                                   ; $675e: $01 $01 $01
	inc  bc                                          ; $6761: $03
	ld   e, a                                        ; $6762: $5f
	ld   [hl], c                                     ; $6763: $71
	ld   h, c                                        ; $6764: $61
	ld   d, h                                        ; $6765: $54
	inc  bc                                          ; $6766: $03
	ccf                                              ; $6767: $3f
	ld   d, d                                        ; $6768: $52
	ld   l, h                                        ; $6769: $6c
	rst  $38                                         ; $676a: $ff
	rst  $38                                         ; $676b: $ff
	ld   bc, $0d04                                   ; $676c: $01 $04 $0d
	nop                                              ; $676f: $00
	ld   a, [bc]                                     ; $6770: $0a
	inc  e                                           ; $6771: $1c
	ld   [bc], a                                     ; $6772: $02
	ld   bc, $0101                                   ; $6773: $01 $01 $01
	ld   h, [hl]                                     ; $6776: $66
	sub  c                                           ; $6777: $91
	sbc  [hl]                                        ; $6778: $9e
	inc  bc                                          ; $6779: $03
	ld   l, b                                        ; $677a: $68
	ld   a, l                                        ; $677b: $7d
	ld   h, c                                        ; $677c: $61
	sbc  d                                           ; $677d: $9a
	and  b                                           ; $677e: $a0
	rst  $38                                         ; $677f: $ff
	rst  $38                                         ; $6780: $ff
	dec  c                                           ; $6781: $0d
	nop                                              ; $6782: $00
	ld   a, [bc]                                     ; $6783: $0a
	ld   b, $74                                      ; $6784: $06 $74
	dec  c                                           ; $6786: $0d
	rrca                                             ; $6787: $0f
	nop                                              ; $6788: $00
	ld   bc, $9001                                   ; $6789: $01 $01 $90
	ld   d, h                                        ; $678c: $54
	sub  b                                           ; $678d: $90
	ld   [hl], h                                     ; $678e: $74
	adc  h                                           ; $678f: $8c
	ld   l, c                                        ; $6790: $69
	and  c                                           ; $6791: $a1
	rst  $38                                         ; $6792: $ff
	rst  $38                                         ; $6793: $ff
	dec  c                                           ; $6794: $0d
	nop                                              ; $6795: $00
	ld   a, [bc]                                     ; $6796: $0a
	inc  e                                           ; $6797: $1c
	ld   [bc], a                                     ; $6798: $02
	dec  b                                           ; $6799: $05
	dec  b                                           ; $679a: $05
	ld   bc, $b203                                   ; $679b: $01 $03 $b2
	ld   e, a                                        ; $679e: $5f
	ld   a, b                                        ; $679f: $78
	ld   d, d                                        ; $67a0: $52
	ld   e, b                                        ; $67a1: $58
	inc  b                                           ; $67a2: $04
	ld   a, b                                        ; $67a3: $78
	rst  $38                                         ; $67a4: $ff
	rst  $38                                         ; $67a5: $ff
	dec  c                                           ; $67a6: $0d
	sub  b                                           ; $67a7: $90
	ld   d, h                                        ; $67a8: $54
	ld   d, d                                        ; $67a9: $52
	ld   d, d                                        ; $67aa: $52
	ld   [hl], l                                     ; $67ab: $75
	ld   h, a                                        ; $67ac: $67
	sbc  l                                           ; $67ad: $9d
	sbc  a                                           ; $67ae: $9f
	dec  c                                           ; $67af: $0d
	nop                                              ; $67b0: $00
	ld   a, [bc]                                     ; $67b1: $0a
	inc  e                                           ; $67b2: $1c
	ld   [bc], a                                     ; $67b3: $02
	rlca                                             ; $67b4: $07
	rlca                                             ; $67b5: $07
	ld   bc, $a502                                   ; $67b6: $01 $02 $a5
	inc  b                                           ; $67b9: $04
	xor  d                                           ; $67ba: $aa
	ld   a, h                                        ; $67bb: $7c
	ld   e, b                                        ; $67bc: $58
	inc  b                                           ; $67bd: $04
	adc  l                                           ; $67be: $8d
	ld   d, d                                        ; $67bf: $52
	inc  b                                           ; $67c0: $04
	sub  d                                           ; $67c1: $92
	ld   a, l                                        ; $67c2: $7d
	dec  c                                           ; $67c3: $0d
	nop                                              ; $67c4: $00
	dec  b                                           ; $67c5: $05
	ld   b, b                                        ; $67c6: $40
	ld   c, c                                        ; $67c7: $49
	ld   [bc], a                                     ; $67c8: $02
	nop                                              ; $67c9: $00
	nop                                              ; $67ca: $00
	ld   bc, $5490                                   ; $67cb: $01 $90 $54
	inc  bc                                          ; $67ce: $03
	ld   a, [hl]                                     ; $67cf: $7e
	sbc  l                                           ; $67d0: $9d
	sbc  b                                           ; $67d1: $98
	ld   a, c                                        ; $67d2: $79
	ld   h, l                                        ; $67d3: $65
	adc  h                                           ; $67d4: $8c
	ld   h, a                                        ; $67d5: $67
	sbc  a                                           ; $67d6: $9f
	dec  c                                           ; $67d7: $0d
	nop                                              ; $67d8: $00
	dec  b                                           ; $67d9: $05
	ld   b, b                                        ; $67da: $40
	ld   c, a                                        ; $67db: $4f
	ld   bc, $0002                                   ; $67dc: $01 $02 $00
	ld   bc, $9e63                                   ; $67df: $01 $63 $9e
	ld   [bc], a                                     ; $67e2: $02
	or   l                                           ; $67e3: $b5
	sbc  b                                           ; $67e4: $98
	adc  h                                           ; $67e5: $8c
	ld   h, a                                        ; $67e6: $67
	sbc  l                                           ; $67e7: $9d
	sub  [hl]                                        ; $67e8: $96
	sbc  a                                           ; $67e9: $9f
	dec  c                                           ; $67ea: $0d
	nop                                              ; $67eb: $00
	ld   a, [bc]                                     ; $67ec: $0a
	dec  c                                           ; $67ed: $0d
	nop                                              ; $67ee: $00
	nop                                              ; $67ef: $00
	rrca                                             ; $67f0: $0f
	nop                                              ; $67f1: $00
	ld   bc, $1e09                                   ; $67f2: $01 $09 $1e
	add  hl, hl                                      ; $67f5: $29
	nop                                              ; $67f6: $00
	nop                                              ; $67f7: $00
	inc  e                                           ; $67f8: $1c
	ld   [bc], a                                     ; $67f9: $02
	nop                                              ; $67fa: $00
	nop                                              ; $67fb: $00
	ld   bc, $697c                                   ; $67fc: $01 $7c $69
	adc  h                                           ; $67ff: $8c
	ld   h, a                                        ; $6800: $67
	sbc  l                                           ; $6801: $9d
	sub  [hl]                                        ; $6802: $96
	sbc  a                                           ; $6803: $9f
	dec  c                                           ; $6804: $0d
	nop                                              ; $6805: $00
	ld   a, [bc]                                     ; $6806: $0a
	rrca                                             ; $6807: $0f
	nop                                              ; $6808: $00
	ld   bc, $0101                                   ; $6809: $01 $01 $01
	inc  bc                                          ; $680c: $03
	adc  h                                           ; $680d: $8c
	sbc  [hl]                                        ; $680e: $9e
	adc  h                                           ; $680f: $8c
	ld   l, [hl]                                     ; $6810: $6e
	sbc  [hl]                                        ; $6811: $9e
	ld   l, [hl]                                     ; $6812: $6e
	ld   d, d                                        ; $6813: $52
	ld   h, [hl]                                     ; $6814: $66
	sub  l                                           ; $6815: $95
	ld   d, h                                        ; $6816: $54
	add  h                                           ; $6817: $84
	dec  c                                           ; $6818: $0d
	db   $10                                         ; $6819: $10
	ld   l, [hl]                                     ; $681a: $6e
	sub  [hl]                                        ; $681b: $96
	ld   a, b                                        ; $681c: $78
	rst  $38                                         ; $681d: $ff
	rst  $38                                         ; $681e: $ff
	ld   bc, $0d04                                   ; $681f: $01 $04 $0d
	nop                                              ; $6822: $00
	ld   a, [bc]                                     ; $6823: $0a
	inc  e                                           ; $6824: $1c
	ld   [bc], a                                     ; $6825: $02
	nop                                              ; $6826: $00
	nop                                              ; $6827: $00
	ld   bc, $9166                                   ; $6828: $01 $66 $91
	sbc  [hl]                                        ; $682b: $9e
	inc  bc                                          ; $682c: $03
	ld   l, b                                        ; $682d: $68
	ld   a, l                                        ; $682e: $7d
	ld   h, c                                        ; $682f: $61
	sbc  d                                           ; $6830: $9a
	and  b                                           ; $6831: $a0
	rst  $38                                         ; $6832: $ff
	rst  $38                                         ; $6833: $ff
	dec  c                                           ; $6834: $0d
	nop                                              ; $6835: $00
	ld   a, [bc]                                     ; $6836: $0a
	ld   b, $74                                      ; $6837: $06 $74
	dec  c                                           ; $6839: $0d
	add  hl, de                                      ; $683a: $19
	dec  b                                           ; $683b: $05
	ld   [bc], a                                     ; $683c: $02
	xor  l                                           ; $683d: $ad
	rst  JumpTable                                         ; $683e: $df
	push af                                          ; $683f: $f5
	ld   h, l                                        ; $6840: $65
	ld   [hl], h                                     ; $6841: $74
	sub  b                                           ; $6842: $90
	ld   [hl], d                                     ; $6843: $72
	nop                                              ; $6844: $00
	nop                                              ; $6845: $00
	sub  b                                           ; $6846: $90
	ld   [hl], d                                     ; $6847: $72
	ld   a, h                                        ; $6848: $7c
	and  b                                           ; $6849: $a0
	sub  d                                           ; $684a: $92
	adc  a                                           ; $684b: $8f
	sbc  c                                           ; $684c: $99
	nop                                              ; $684d: $00
	ld   bc, $9e07                                   ; $684e: $01 $07 $9e
	dec  c                                           ; $6851: $0d
	ld   [bc], a                                     ; $6852: $02
	inc  bc                                          ; $6853: $03
	ld   bc, $2000                                   ; $6854: $01 $00 $20
	nop                                              ; $6857: $00
	rlca                                             ; $6858: $07
	pop  bc                                          ; $6859: $c1
	inc  c                                           ; $685a: $0c
	ld   [bc], a                                     ; $685b: $02
	inc  bc                                          ; $685c: $03
	ld   bc, $2001                                   ; $685d: $01 $01 $20
	nop                                              ; $6860: $00
	ld   b, $81                                      ; $6861: $06 $81
	ld   c, $0f                                      ; $6863: $0e $0f
	ld   [bc], a                                     ; $6865: $02
	nop                                              ; $6866: $00
	ld   bc, $6903                                   ; $6867: $01 $03 $69
	ld   [bc], a                                     ; $686a: $02
	xor  d                                           ; $686b: $aa
	ld   a, h                                        ; $686c: $7c
	ld   a, l                                        ; $686d: $7d
	inc  bc                                          ; $686e: $03
	ccf                                              ; $686f: $3f
	ld   d, d                                        ; $6870: $52
	ld   [hl], l                                     ; $6871: $75
	ld   h, a                                        ; $6872: $67
	sbc  l                                           ; $6873: $9d
	sub  [hl]                                        ; $6874: $96
	rst  $38                                         ; $6875: $ff
	rst  $38                                         ; $6876: $ff
	dec  c                                           ; $6877: $0d
	nop                                              ; $6878: $00
	ld   a, [bc]                                     ; $6879: $0a
	add  hl, de                                      ; $687a: $19
	dec  b                                           ; $687b: $05
	ld   [bc], a                                     ; $687c: $02
	xor  l                                           ; $687d: $ad
	rst  JumpTable                                         ; $687e: $df
	push af                                          ; $687f: $f5
	ld   h, l                                        ; $6880: $65
	ld   [hl], h                                     ; $6881: $74
	sub  b                                           ; $6882: $90
	ld   [hl], d                                     ; $6883: $72
	nop                                              ; $6884: $00
	nop                                              ; $6885: $00
	sub  b                                           ; $6886: $90
	ld   [hl], d                                     ; $6887: $72
	ld   a, h                                        ; $6888: $7c
	and  b                                           ; $6889: $a0
	sub  d                                           ; $688a: $92
	adc  a                                           ; $688b: $8f
	sbc  c                                           ; $688c: $99
	nop                                              ; $688d: $00
	ld   bc, $de07                                   ; $688e: $01 $07 $de
	dec  c                                           ; $6891: $0d
	ld   [bc], a                                     ; $6892: $02
	inc  bc                                          ; $6893: $03
	ld   bc, $2000                                   ; $6894: $01 $00 $20
	nop                                              ; $6897: $00
	rlca                                             ; $6898: $07
	ld   b, c                                        ; $6899: $41
	ld   c, $02                                      ; $689a: $0e $02
	inc  bc                                          ; $689c: $03
	ld   bc, $2001                                   ; $689d: $01 $01 $20
	nop                                              ; $68a0: $00
	ld   b, $81                                      ; $68a1: $06 $81
	ld   c, $0f                                      ; $68a3: $0e $0f
	nop                                              ; $68a5: $00
	ld   bc, $5001                                   ; $68a6: $01 $01 $50
	ld   [hl], c                                     ; $68a9: $71
	ld   a, [$000d]                                  ; $68aa: $fa $0d $00
	ld   a, [bc]                                     ; $68ad: $0a
	inc  e                                           ; $68ae: $1c
	ld   [bc], a                                     ; $68af: $02
	inc  bc                                          ; $68b0: $03
	inc  bc                                          ; $68b1: $03
	ld   bc, $915b                                   ; $68b2: $01 $5b $91
	ld   [hl], c                                     ; $68b5: $71
	ld   a, [$000d]                                  ; $68b6: $fa $0d $00
	ld   a, [bc]                                     ; $68b9: $0a
	dec  c                                           ; $68ba: $0d
	nop                                              ; $68bb: $00
	nop                                              ; $68bc: $00
	rrca                                             ; $68bd: $0f
	nop                                              ; $68be: $00
	ld   bc, $070c                                   ; $68bf: $01 $0c $07
	dec  c                                           ; $68c2: $0d
	ld   [bc], a                                     ; $68c3: $02
	dec  b                                           ; $68c4: $05
	ld   bc, $8d67                                   ; $68c5: $01 $67 $8d
	adc  h                                           ; $68c8: $8c
	ld   l, c                                        ; $68c9: $69
	and  c                                           ; $68ca: $a1
	rst  $38                                         ; $68cb: $ff
	rst  $38                                         ; $68cc: $ff
	dec  c                                           ; $68cd: $0d
	ld   e, l                                        ; $68ce: $5d
	ld   l, b                                        ; $68cf: $68
	sbc  d                                           ; $68d0: $9a
	adc  h                                           ; $68d1: $8c
	ld   h, l                                        ; $68d2: $65
	ld   l, l                                        ; $68d3: $6d
	rst  $38                                         ; $68d4: $ff
	rst  $38                                         ; $68d5: $ff
	dec  c                                           ; $68d6: $0d
	nop                                              ; $68d7: $00
	ld   a, [bc]                                     ; $68d8: $0a
	rrca                                             ; $68d9: $0f
	ld   [bc], a                                     ; $68da: $02
	dec  b                                           ; $68db: $05
	ld   bc, $508c                                   ; $68dc: $01 $8c $50
	sbc  [hl]                                        ; $68df: $9e
	ld   d, d                                        ; $68e0: $52
	ld   d, d                                        ; $68e1: $52
	ld   [hl], l                                     ; $68e2: $75
	ld   h, a                                        ; $68e3: $67
	sbc  l                                           ; $68e4: $9d
	sbc  a                                           ; $68e5: $9f
	dec  c                                           ; $68e6: $0d
	ld   [bc], a                                     ; $68e7: $02
	jr   nz, jr_063_695c                             ; $68e8: $20 $72

	ld   l, [hl]                                     ; $68ea: $6e
	ld   e, a                                        ; $68eb: $5f
	sbc  [hl]                                        ; $68ec: $9e
	sbc  l                                           ; $68ed: $9d
	ld   l, l                                        ; $68ee: $6d
	ld   e, l                                        ; $68ef: $5d
	ld   h, l                                        ; $68f0: $65
	ld   e, d                                        ; $68f1: $5a
	dec  c                                           ; $68f2: $0d
	sub  b                                           ; $68f3: $90
	ld   l, a                                        ; $68f4: $6f
	adc  h                                           ; $68f5: $8c
	ld   h, a                                        ; $68f6: $67
	ld   e, c                                        ; $68f7: $59
	sub  a                                           ; $68f8: $97
	rst  $38                                         ; $68f9: $ff
	rst  $38                                         ; $68fa: $ff
	dec  c                                           ; $68fb: $0d
	nop                                              ; $68fc: $00
	ld   a, [bc]                                     ; $68fd: $0a
	dec  c                                           ; $68fe: $0d
	nop                                              ; $68ff: $00
	nop                                              ; $6900: $00
	rrca                                             ; $6901: $0f
	nop                                              ; $6902: $00
	ld   bc, $a606                                   ; $6903: $01 $06 $a6
	ld   c, $0f                                      ; $6906: $0e $0f
	nop                                              ; $6908: $00
	ld   bc, $9001                                   ; $6909: $01 $01 $90
	ld   d, h                                        ; $690c: $54
	sub  b                                           ; $690d: $90
	ld   [hl], h                                     ; $690e: $74
	adc  h                                           ; $690f: $8c
	ld   l, c                                        ; $6910: $69
	and  c                                           ; $6911: $a1
	rst  $38                                         ; $6912: $ff
	rst  $38                                         ; $6913: $ff
	dec  c                                           ; $6914: $0d
	nop                                              ; $6915: $00
	ld   a, [bc]                                     ; $6916: $0a
	inc  e                                           ; $6917: $1c
	ld   [bc], a                                     ; $6918: $02
	dec  b                                           ; $6919: $05
	dec  b                                           ; $691a: $05
	ld   bc, $7c6b                                   ; $691b: $01 $6b $7c
	sub  [hl]                                        ; $691e: $96
	ld   d, h                                        ; $691f: $54
	ld   [hl], l                                     ; $6920: $75
	ld   h, a                                        ; $6921: $67
	sbc  l                                           ; $6922: $9d
	ld   a, e                                        ; $6923: $7b
	rst  $38                                         ; $6924: $ff
	rst  $38                                         ; $6925: $ff
	dec  c                                           ; $6926: $0d
	ld   a, b                                        ; $6927: $78
	sub  a                                           ; $6928: $97
	sbc  [hl]                                        ; $6929: $9e
	ld   [bc], a                                     ; $692a: $02
	jr   nz, jr_063_699f                             ; $692b: $20 $72

	ld   l, [hl]                                     ; $692d: $6e
	ld   e, a                                        ; $692e: $5f
	dec  c                                           ; $692f: $0d
	sbc  l                                           ; $6930: $9d
	ld   l, l                                        ; $6931: $6d
	ld   e, l                                        ; $6932: $5d
	ld   h, l                                        ; $6933: $65
	ld   e, d                                        ; $6934: $5a
	sub  b                                           ; $6935: $90
	ld   l, a                                        ; $6936: $6f
	adc  h                                           ; $6937: $8c
	ld   h, a                                        ; $6938: $67
	sbc  l                                           ; $6939: $9d
	sbc  a                                           ; $693a: $9f
	dec  c                                           ; $693b: $0d
	nop                                              ; $693c: $00
	ld   a, [bc]                                     ; $693d: $0a
	dec  c                                           ; $693e: $0d
	nop                                              ; $693f: $00
	nop                                              ; $6940: $00
	rrca                                             ; $6941: $0f
	nop                                              ; $6942: $00
	ld   bc, $a606                                   ; $6943: $01 $06 $a6
	ld   c, $0f                                      ; $6946: $0e $0f
	ld   [bc], a                                     ; $6948: $02
	nop                                              ; $6949: $00
	ld   bc, $697c                                   ; $694a: $01 $7c $69
	adc  h                                           ; $694d: $8c
	ld   h, a                                        ; $694e: $67
	sbc  l                                           ; $694f: $9d
	sub  [hl]                                        ; $6950: $96
	rst  $38                                         ; $6951: $ff
	rst  $38                                         ; $6952: $ff
	dec  c                                           ; $6953: $0d
	pop  de                                          ; $6954: $d1
	db   $eb                                         ; $6955: $eb
	push af                                          ; $6956: $f5
	cp   d                                           ; $6957: $ba
	ld   a, c                                        ; $6958: $79
	ld   [bc], a                                     ; $6959: $02
	and  c                                           ; $695a: $a1
	and  b                                           ; $695b: $a0

jr_063_695c:
	ld   [hl], d                                     ; $695c: $72
	ld   e, a                                        ; $695d: $5f
	ld   [hl], h                                     ; $695e: $74
	dec  c                                           ; $695f: $0d
	ld   [bc], a                                     ; $6960: $02
	inc  [hl]                                        ; $6961: $34
	ld   h, e                                        ; $6962: $63
	ld   d, d                                        ; $6963: $52
	ld   a, b                                        ; $6964: $78
	sbc  a                                           ; $6965: $9f
	dec  c                                           ; $6966: $0d
	nop                                              ; $6967: $00
	ld   a, [bc]                                     ; $6968: $0a
	ld   b, $de                                      ; $6969: $06 $de
	dec  c                                           ; $696b: $0d
	rlca                                             ; $696c: $07
	ld   [hl+], a                                    ; $696d: $22
	rrca                                             ; $696e: $0f
	inc  bc                                          ; $696f: $03
	ld   [de], a                                     ; $6970: $12
	ld   bc, $25b4                                   ; $6971: $01 $b4 $25
	nop                                              ; $6974: $00
	inc  e                                           ; $6975: $1c
	ld   [bc], a                                     ; $6976: $02
	nop                                              ; $6977: $00
	nop                                              ; $6978: $00
	ld   bc, $7680                                   ; $6979: $01 $80 $76
	halt                                             ; $697c: $76
	ld   e, b                                        ; $697d: $58
	sbc  b                                           ; $697e: $98
	inc  b                                           ; $697f: $04
	adc  l                                           ; $6980: $8d
	ld   d, d                                        ; $6981: $52
	inc  b                                           ; $6982: $04
	sub  d                                           ; $6983: $92
	sub  b                                           ; $6984: $90
	dec  c                                           ; $6985: $0d
	ld   h, a                                        ; $6986: $67
	adc  l                                           ; $6987: $8d
	adc  h                                           ; $6988: $8c
	ld   h, l                                        ; $6989: $65
	ld   l, l                                        ; $698a: $6d
	ld   h, l                                        ; $698b: $65
	sbc  [hl]                                        ; $698c: $9e
	ld   l, e                                        ; $698d: $6b
	sbc  e                                           ; $698e: $9b
	ld   l, e                                        ; $698f: $6b
	sbc  e                                           ; $6990: $9b
	dec  c                                           ; $6991: $0d
	ld   [bc], a                                     ; $6992: $02
	or   l                                           ; $6993: $b5
	sbc  b                                           ; $6994: $98
	adc  h                                           ; $6995: $8c
	ld   h, l                                        ; $6996: $65
	sub  l                                           ; $6997: $95
	ld   d, h                                        ; $6998: $54
	sbc  a                                           ; $6999: $9f
	dec  c                                           ; $699a: $0d
	nop                                              ; $699b: $00
	ld   a, [bc]                                     ; $699c: $0a
	inc  c                                           ; $699d: $0c
	ld   [bc], a                                     ; $699e: $02

jr_063_699f:
	dec  c                                           ; $699f: $0d
	nop                                              ; $69a0: $00
	nop                                              ; $69a1: $00
	rrca                                             ; $69a2: $0f
	nop                                              ; $69a3: $00
	ld   bc, $060e                                   ; $69a4: $01 $0e $06
	inc  e                                           ; $69a7: $1c
	ld   [bc], a                                     ; $69a8: $02
	ld   bc, $0101                                   ; $69a9: $01 $01 $01
	ld   [bc], a                                     ; $69ac: $02
	rst  JumpTable                                         ; $69ad: $df
	inc  b                                           ; $69ae: $04
	sub  d                                           ; $69af: $92
	sub  b                                           ; $69b0: $90
	ld   l, a                                        ; $69b1: $6f
	sbc  [hl]                                        ; $69b2: $9e
	ld   h, d                                        ; $69b3: $62
	ld   e, l                                        ; $69b4: $5d
	sbc  e                                           ; $69b5: $9b
	ld   d, h                                        ; $69b6: $54
	inc  bc                                          ; $69b7: $03
	sbc  b                                           ; $69b8: $98
	ld   [hl], l                                     ; $69b9: $75
	ld   h, l                                        ; $69ba: $65
	ld   l, l                                        ; $69bb: $6d
	sbc  a                                           ; $69bc: $9f
	dec  c                                           ; $69bd: $0d
	adc  h                                           ; $69be: $8c
	ld   l, l                                        ; $69bf: $6d
	ld   e, b                                        ; $69c0: $58
	ld   [bc], a                                     ; $69c1: $02
	add  b                                           ; $69c2: $80
	ld   d, d                                        ; $69c3: $52
	ld   h, l                                        ; $69c4: $65
	adc  h                                           ; $69c5: $8c
	ld   h, a                                        ; $69c6: $67
	sbc  l                                           ; $69c7: $9d
	sbc  a                                           ; $69c8: $9f
	dec  c                                           ; $69c9: $0d
	nop                                              ; $69ca: $00
	dec  b                                           ; $69cb: $05
	add  b                                           ; $69cc: $80
	ld   [hl+], a                                    ; $69cd: $22
	ld   bc, $0001                                   ; $69ce: $01 $01 $00
	ld   bc, $9166                                   ; $69d1: $01 $66 $91
	sbc  [hl]                                        ; $69d4: $9e
	ld   e, b                                        ; $69d5: $58
	sub  d                                           ; $69d6: $92
	ld   h, a                                        ; $69d7: $67
	adc  l                                           ; $69d8: $8d
	sbc  a                                           ; $69d9: $9f
	dec  c                                           ; $69da: $0d
	nop                                              ; $69db: $00
	ld   a, [bc]                                     ; $69dc: $0a
	dec  c                                           ; $69dd: $0d
	nop                                              ; $69de: $00
	nop                                              ; $69df: $00
	rrca                                             ; $69e0: $0f
	nop                                              ; $69e1: $00
	ld   bc, $1e09                                   ; $69e2: $01 $09 $1e
	add  hl, hl                                      ; $69e5: $29
	nop                                              ; $69e6: $00
	nop                                              ; $69e7: $00
	inc  hl                                          ; $69e8: $23
	sub  [hl]                                        ; $69e9: $96
	inc  e                                           ; $69ea: $1c
	ld   [bc], a                                     ; $69eb: $02
	nop                                              ; $69ec: $00
	nop                                              ; $69ed: $00
	ld   bc, $0458                                   ; $69ee: $01 $58 $04
	adc  l                                           ; $69f1: $8d
	ld   d, d                                        ; $69f2: $52
	inc  b                                           ; $69f3: $04
	sub  d                                           ; $69f4: $92
	ld   h, l                                        ; $69f5: $65
	ld   l, l                                        ; $69f6: $6d
	sub  a                                           ; $69f7: $97
	dec  c                                           ; $69f8: $0d
	ld   a, h                                        ; $69f9: $7c
	ld   [hl], a                                     ; $69fa: $77
	ld   e, d                                        ; $69fb: $5a
	ld   e, c                                        ; $69fc: $59
	sbc  l                                           ; $69fd: $9d
	ld   e, e                                        ; $69fe: $5b
	adc  h                                           ; $69ff: $8c
	ld   h, l                                        ; $6a00: $65
	ld   l, l                                        ; $6a01: $6d
	sbc  l                                           ; $6a02: $9d
	rst  $38                                         ; $6a03: $ff
	rst  $38                                         ; $6a04: $ff
	dec  c                                           ; $6a05: $0d
	xor  h                                           ; $6a06: $ac
	sub  $a8                                         ; $6a07: $d6 $a8
	ld   a, c                                        ; $6a09: $79
	ld   [hl], l                                     ; $6a0a: $75
	sub  b                                           ; $6a0b: $90
	inc  b                                           ; $6a0c: $04
	ld   b, l                                        ; $6a0d: $45
	sbc  b                                           ; $6a0e: $98
	adc  h                                           ; $6a0f: $8c
	ld   h, l                                        ; $6a10: $65
	sub  l                                           ; $6a11: $95
	ld   d, h                                        ; $6a12: $54
	sbc  a                                           ; $6a13: $9f
	dec  c                                           ; $6a14: $0d
	nop                                              ; $6a15: $00
	ld   a, [bc]                                     ; $6a16: $0a
	dec  c                                           ; $6a17: $0d
	nop                                              ; $6a18: $00
	nop                                              ; $6a19: $00
	rrca                                             ; $6a1a: $0f
	nop                                              ; $6a1b: $00
	ld   bc, $9723                                   ; $6a1c: $01 $23 $97
	inc  e                                           ; $6a1f: $1c
	ld   [bc], a                                     ; $6a20: $02
	ld   bc, $0101                                   ; $6a21: $01 $01 $01
	add  e                                           ; $6a24: $83
	ld   d, h                                        ; $6a25: $54
	rst  $38                                         ; $6a26: $ff
	rst  $38                                         ; $6a27: $ff
	ld   h, c                                        ; $6a28: $61
	ld   h, c                                        ; $6a29: $61
	ld   a, h                                        ; $6a2a: $7c
	ld   [bc], a                                     ; $6a2b: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a2c: $cf
	inc  bc                                          ; $6a2d: $03
	jp   $0d7d                                       ; $6a2e: $c3 $7d $0d


	ld   d, d                                        ; $6a31: $52
	ld   [hl], d                                     ; $6a32: $72
	ld   e, e                                        ; $6a33: $5b
	ld   [hl], h                                     ; $6a34: $74
	sub  b                                           ; $6a35: $90
	dec  b                                           ; $6a36: $05
	ld   a, c                                        ; $6a37: $79
	sbc  b                                           ; $6a38: $98
	sub  h                                           ; $6a39: $94
	ld   l, l                                        ; $6a3a: $6d
	ld   e, c                                        ; $6a3b: $59
	ld   [hl], l                                     ; $6a3c: $75
	ld   h, a                                        ; $6a3d: $67
	sbc  l                                           ; $6a3e: $9d
	sbc  a                                           ; $6a3f: $9f
	dec  c                                           ; $6a40: $0d
	nop                                              ; $6a41: $00
	ld   a, [bc]                                     ; $6a42: $0a
	add  hl, de                                      ; $6a43: $19
	dec  b                                           ; $6a44: $05
	ld   [bc], a                                     ; $6a45: $02
	ld   h, a                                        ; $6a46: $67
	adc  l                                           ; $6a47: $8d
	sbc  d                                           ; $6a48: $9a
	and  b                                           ; $6a49: $a0
	ld   [bc], a                                     ; $6a4a: $02
	sub  l                                           ; $6a4b: $95
	ld   [hl], d                                     ; $6a4c: $72
	adc  a                                           ; $6a4d: $8f
	sbc  c                                           ; $6a4e: $99
	nop                                              ; $6a4f: $00
	nop                                              ; $6a50: $00
	ld   [bc], a                                     ; $6a51: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a52: $cf
	inc  bc                                          ; $6a53: $03
	jp   $057c                                       ; $6a54: $c3 $7c $05


	jr   nz, jr_063_6a5d                             ; $6a57: $20 $04

	dec  d                                           ; $6a59: $15
	and  b                                           ; $6a5a: $a0
	add  e                                           ; $6a5b: $83
	sbc  c                                           ; $6a5c: $99

jr_063_6a5d:
	nop                                              ; $6a5d: $00
	ld   bc, $ae07                                   ; $6a5e: $01 $07 $ae
	rrca                                             ; $6a61: $0f
	ld   [bc], a                                     ; $6a62: $02
	inc  bc                                          ; $6a63: $03
	ld   bc, $2000                                   ; $6a64: $01 $00 $20
	nop                                              ; $6a67: $00
	rlca                                             ; $6a68: $07
	rl   b                                           ; $6a69: $cb $10
	ld   [bc], a                                     ; $6a6b: $02
	inc  bc                                          ; $6a6c: $03
	ld   bc, $2001                                   ; $6a6d: $01 $01 $20
	nop                                              ; $6a70: $00
	ld   b, $13                                      ; $6a71: $06 $13
	ld   de, $000f                                   ; $6a73: $11 $0f $00
	ld   bc, $ff01                                   ; $6a76: $01 $01 $ff
	rst  $38                                         ; $6a79: $ff
	rst  $38                                         ; $6a7a: $ff
	rst  $38                                         ; $6a7b: $ff
	dec  c                                           ; $6a7c: $0d
	nop                                              ; $6a7d: $00
	ld   a, [bc]                                     ; $6a7e: $0a
	inc  e                                           ; $6a7f: $1c
	ld   [bc], a                                     ; $6a80: $02
	ld   bc, $0101                                   ; $6a81: $01 $01 $01
	ld   d, b                                        ; $6a84: $50
	sub  a                                           ; $6a85: $97
	sbc  [hl]                                        ; $6a86: $9e
	ld   [hl], a                                     ; $6a87: $77
	ld   d, h                                        ; $6a88: $54
	ld   a, b                                        ; $6a89: $78
	ld   h, e                                        ; $6a8a: $63
	ld   [hl], c                                     ; $6a8b: $71
	ld   l, l                                        ; $6a8c: $6d
	ld   a, h                                        ; $6a8d: $7c
	ld   sp, hl                                      ; $6a8e: $f9
	dec  c                                           ; $6a8f: $0d
	nop                                              ; $6a90: $00
	ld   a, [bc]                                     ; $6a91: $0a
	add  hl, de                                      ; $6a92: $19
	dec  b                                           ; $6a93: $05
	inc  bc                                          ; $6a94: $03
	inc  b                                           ; $6a95: $04
	ld   l, d                                        ; $6a96: $6a
	and  b                                           ; $6a97: $a0
	ld   [bc], a                                     ; $6a98: $02
	sub  l                                           ; $6a99: $95
	sbc  c                                           ; $6a9a: $99
	nop                                              ; $6a9b: $00
	nop                                              ; $6a9c: $00
	inc  b                                           ; $6a9d: $04
	call nc, $02a0                                   ; $6a9e: $d4 $a0 $02
	sub  l                                           ; $6aa1: $95
	sbc  c                                           ; $6aa2: $99
	nop                                              ; $6aa3: $00
	ld   bc, $ae02                                   ; $6aa4: $01 $02 $ae
	and  b                                           ; $6aa7: $a0
	ld   [bc], a                                     ; $6aa8: $02
	sub  l                                           ; $6aa9: $95
	sbc  c                                           ; $6aaa: $99
	nop                                              ; $6aab: $00
	ld   [bc], a                                     ; $6aac: $02
	rlca                                             ; $6aad: $07
	dec  b                                           ; $6aae: $05
	db   $10                                         ; $6aaf: $10
	ld   [bc], a                                     ; $6ab0: $02
	inc  bc                                          ; $6ab1: $03
	ld   bc, $2000                                   ; $6ab2: $01 $00 $20
	nop                                              ; $6ab5: $00
	rlca                                             ; $6ab6: $07
	cpl                                              ; $6ab7: $2f
	db   $10                                         ; $6ab8: $10
	ld   [bc], a                                     ; $6ab9: $02
	inc  bc                                          ; $6aba: $03
	ld   bc, $2001                                   ; $6abb: $01 $01 $20
	nop                                              ; $6abe: $00
	rlca                                             ; $6abf: $07
	ld   d, e                                        ; $6ac0: $53
	db   $10                                         ; $6ac1: $10
	ld   [bc], a                                     ; $6ac2: $02
	inc  bc                                          ; $6ac3: $03
	ld   bc, $2002                                   ; $6ac4: $01 $02 $20
	nop                                              ; $6ac7: $00
	ld   b, $97                                      ; $6ac8: $06 $97
	db   $10                                         ; $6aca: $10
	rrca                                             ; $6acb: $0f
	nop                                              ; $6acc: $00
	ld   bc, $6701                                   ; $6acd: $01 $01 $67
	adc  l                                           ; $6ad0: $8d
	sbc  d                                           ; $6ad1: $9a
	ld   h, e                                        ; $6ad2: $63
	and  c                                           ; $6ad3: $a1
	ld   a, h                                        ; $6ad4: $7c
	inc  b                                           ; $6ad5: $04
	ld   l, d                                        ; $6ad6: $6a
	ld   [hl], c                                     ; $6ad7: $71
	ld   [hl], h                                     ; $6ad8: $74
	dec  c                                           ; $6ad9: $0d
	inc  b                                           ; $6ada: $04
	xor  d                                           ; $6adb: $aa
	inc  b                                           ; $6adc: $04
	adc  a                                           ; $6add: $8f
	inc  bc                                          ; $6ade: $03
	add  d                                           ; $6adf: $82
	ld   [bc], a                                     ; $6ae0: $02
	ld   a, $8d                                      ; $6ae1: $3e $8d
	ld   l, l                                        ; $6ae3: $6d
	ld   d, d                                        ; $6ae4: $52
	ld   a, c                                        ; $6ae5: $79
	dec  c                                           ; $6ae6: $0d
	ld   e, e                                        ; $6ae7: $5b
	sbc  d                                           ; $6ae8: $9a
	ld   d, d                                        ; $6ae9: $52
	ld   [hl], l                                     ; $6aea: $75
	ld   h, a                                        ; $6aeb: $67
	ld   a, e                                        ; $6aec: $7b
	rst  $38                                         ; $6aed: $ff
	rst  $38                                         ; $6aee: $ff
	dec  c                                           ; $6aef: $0d
	nop                                              ; $6af0: $00
	ld   a, [bc]                                     ; $6af1: $0a
	ld   b, $76                                      ; $6af2: $06 $76
	db   $10                                         ; $6af4: $10
	rrca                                             ; $6af5: $0f
	nop                                              ; $6af6: $00
	ld   bc, $6701                                   ; $6af7: $01 $01 $67
	adc  l                                           ; $6afa: $8d
	sbc  d                                           ; $6afb: $9a
	ld   h, e                                        ; $6afc: $63
	and  c                                           ; $6afd: $a1
	ld   a, h                                        ; $6afe: $7c
	inc  b                                           ; $6aff: $04
	call nc, Call_063_7471                           ; $6b00: $d4 $71 $74
	dec  c                                           ; $6b03: $0d
	inc  bc                                          ; $6b04: $03
	dec  de                                          ; $6b05: $1b
	sbc  d                                           ; $6b06: $9a
	inc  bc                                          ; $6b07: $03
	jp   nc, $ba75                                   ; $6b08: $d2 $75 $ba

	rst  ToBoot                                         ; $6b0b: $c7
	xor  [hl]                                        ; $6b0c: $ae
	ld   [hl], l                                     ; $6b0d: $75
	ld   h, a                                        ; $6b0e: $67
	sub  [hl]                                        ; $6b0f: $96
	ld   a, e                                        ; $6b10: $7b
	rst  $38                                         ; $6b11: $ff
	rst  $38                                         ; $6b12: $ff
	dec  c                                           ; $6b13: $0d
	nop                                              ; $6b14: $00
	ld   a, [bc]                                     ; $6b15: $0a
	ld   b, $76                                      ; $6b16: $06 $76
	db   $10                                         ; $6b18: $10
	rrca                                             ; $6b19: $0f
	nop                                              ; $6b1a: $00
	ld   bc, $6701                                   ; $6b1b: $01 $01 $67
	adc  l                                           ; $6b1e: $8d
	sbc  d                                           ; $6b1f: $9a
	ld   h, e                                        ; $6b20: $63
	and  c                                           ; $6b21: $a1
	ld   a, h                                        ; $6b22: $7c
	ld   [bc], a                                     ; $6b23: $02
	xor  [hl]                                        ; $6b24: $ae
	ld   [hl], c                                     ; $6b25: $71
	ld   [hl], h                                     ; $6b26: $74
	dec  c                                           ; $6b27: $0d
	halt                                             ; $6b28: $76
	ld   [hl], c                                     ; $6b29: $71
	ld   [hl], h                                     ; $6b2a: $74
	sub  b                                           ; $6b2b: $90
	jp   nz, $fbe5                                   ; $6b2c: $c2 $e5 $fb

	ldh  [$f5], a                                    ; $6b2f: $e0 $f5
	or   c                                           ; $6b31: $b1
	dec  c                                           ; $6b32: $0d
	ld   [hl], l                                     ; $6b33: $75
	ld   h, a                                        ; $6b34: $67
	sub  [hl]                                        ; $6b35: $96
	ld   a, e                                        ; $6b36: $7b
	rst  $38                                         ; $6b37: $ff
	rst  $38                                         ; $6b38: $ff
	dec  c                                           ; $6b39: $0d
	nop                                              ; $6b3a: $00
	ld   a, [bc]                                     ; $6b3b: $0a
	inc  e                                           ; $6b3c: $1c
	ld   [bc], a                                     ; $6b3d: $02
	ld   bc, $0101                                   ; $6b3e: $01 $01 $01
	sub  b                                           ; $6b41: $90
	ld   [hl], c                                     ; $6b42: $71
	halt                                             ; $6b43: $76
	adc  c                                           ; $6b44: $89
	adc  a                                           ; $6b45: $8f
	ld   [hl], h                                     ; $6b46: $74
	ld   e, l                                        ; $6b47: $5d
	ld   l, [hl]                                     ; $6b48: $6e
	ld   h, e                                        ; $6b49: $63
	ld   d, d                                        ; $6b4a: $52
	ld   a, b                                        ; $6b4b: $78
	rst  $38                                         ; $6b4c: $ff
	rst  $38                                         ; $6b4d: $ff
	dec  c                                           ; $6b4e: $0d
	ld   e, b                                        ; $6b4f: $58
	ei                                               ; $6b50: $fb
	adc  c                                           ; $6b51: $89
	adc  c                                           ; $6b52: $89
	adc  c                                           ; $6b53: $89
	adc  c                                           ; $6b54: $89
	adc  c                                           ; $6b55: $89
	ld   a, [$000d]                                  ; $6b56: $fa $0d $00
	ld   a, [bc]                                     ; $6b59: $0a
	ld   b, $46                                      ; $6b5a: $06 $46
	ld   de, $021c                                   ; $6b5c: $11 $1c $02
	inc  b                                           ; $6b5f: $04
	inc  b                                           ; $6b60: $04
	ld   bc, $a16b                                   ; $6b61: $01 $6b $a1
	ld   a, b                                        ; $6b64: $78
	ld   a, c                                        ; $6b65: $79
	ld   h, [hl]                                     ; $6b66: $66
	ld   [hl], c                                     ; $6b67: $71
	halt                                             ; $6b68: $76
	ld   [bc], a                                     ; $6b69: $02
	sub  l                                           ; $6b6a: $95
	ld   [hl], d                                     ; $6b6b: $72
	adc  a                                           ; $6b6c: $8f
	ld   [hl], h                                     ; $6b6d: $74
	rst  $38                                         ; $6b6e: $ff
	rst  $38                                         ; $6b6f: $ff
	dec  c                                           ; $6b70: $0d
	inc  b                                           ; $6b71: $04
	and  c                                           ; $6b72: $a1
	ld   h, l                                        ; $6b73: $65
	ld   d, d                                        ; $6b74: $52
	halt                                             ; $6b75: $76
	ld   d, d                                        ; $6b76: $52
	ld   d, h                                        ; $6b77: $54
	ld   h, c                                        ; $6b78: $61
	halt                                             ; $6b79: $76
	ld   a, l                                        ; $6b7a: $7d
	dec  c                                           ; $6b7b: $0d
	inc  b                                           ; $6b7c: $04

Jump_063_6b7d:
	adc  a                                           ; $6b7d: $8f
	inc  b                                           ; $6b7e: $04
	jr   jr_063_6bfa                                 ; $6b7f: $18 $79

	inc  bc                                          ; $6b81: $03
	ld   e, $78                                      ; $6b82: $1e $78
	ld   h, c                                        ; $6b84: $61
	halt                                             ; $6b85: $76
	ld   [hl], l                                     ; $6b86: $75
	ld   h, a                                        ; $6b87: $67
	sbc  l                                           ; $6b88: $9d
	ld   a, e                                        ; $6b89: $7b
	sbc  a                                           ; $6b8a: $9f
	dec  c                                           ; $6b8b: $0d
	nop                                              ; $6b8c: $00
	ld   a, [bc]                                     ; $6b8d: $0a
	ld   b, $46                                      ; $6b8e: $06 $46
	ld   de, $000f                                   ; $6b90: $11 $0f $00
	ld   bc, $6101                                   ; $6b93: $01 $01 $61
	ld   a, h                                        ; $6b96: $7c
	ld   [bc], a                                     ; $6b97: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b98: $cf
	inc  bc                                          ; $6b99: $03
	jp   $ffff                                       ; $6b9a: $c3 $ff $ff


	dec  c                                           ; $6b9d: $0d
	and  e                                           ; $6b9e: $a3
	ei                                               ; $6b9f: $fb
	db   $ed                                         ; $6ba0: $ed
	or   c                                           ; $6ba1: $b1
	xor  $a5                                         ; $6ba2: $ee $a5
	ld   [hl], l                                     ; $6ba4: $75
	ld   h, a                                        ; $6ba5: $67
	ld   a, e                                        ; $6ba6: $7b
	sbc  a                                           ; $6ba7: $9f
	dec  c                                           ; $6ba8: $0d
	nop                                              ; $6ba9: $00
	ld   a, [bc]                                     ; $6baa: $0a
	inc  e                                           ; $6bab: $1c
	ld   [bc], a                                     ; $6bac: $02
	ld   bc, $0101                                   ; $6bad: $01 $01 $01
	ld   d, b                                        ; $6bb0: $50
	sub  a                                           ; $6bb1: $97
	sbc  [hl]                                        ; $6bb2: $9e
	sub  [hl]                                        ; $6bb3: $96
	ld   e, l                                        ; $6bb4: $5d
	ld   h, d                                        ; $6bb5: $62
	ld   l, h                                        ; $6bb6: $6c
	and  c                                           ; $6bb7: $a1
	ld   h, [hl]                                     ; $6bb8: $66
	ld   l, [hl]                                     ; $6bb9: $6e
	ld   h, c                                        ; $6bba: $61
	halt                                             ; $6bbb: $76
	rst  $38                                         ; $6bbc: $ff
	rst  $38                                         ; $6bbd: $ff
	dec  c                                           ; $6bbe: $0d
	ld   [$6300], sp                                 ; $6bbf: $08 $00 $63
	and  c                                           ; $6bc2: $a1
	sub  b                                           ; $6bc3: $90
	ld   [bc], a                                     ; $6bc4: $02
	ld   b, $02                                      ; $6bc5: $06 $02
	bit  6, [hl]                                     ; $6bc7: $cb $76
	dec  c                                           ; $6bc9: $0d
	ld   e, b                                        ; $6bca: $58
	ld   [bc], a                                     ; $6bcb: $02
	sbc  d                                           ; $6bcc: $9a
	ld   e, e                                        ; $6bcd: $5b
	ld   [hl], l                                     ; $6bce: $75
	ld   h, a                                        ; $6bcf: $67
	ld   a, h                                        ; $6bd0: $7c
	ld   a, e                                        ; $6bd1: $7b
	sbc  a                                           ; $6bd2: $9f
	dec  c                                           ; $6bd3: $0d
	nop                                              ; $6bd4: $00
	ld   a, [bc]                                     ; $6bd5: $0a
	ld   b, $46                                      ; $6bd6: $06 $46
	ld   de, $021c                                   ; $6bd8: $11 $1c $02
	dec  b                                           ; $6bdb: $05
	dec  b                                           ; $6bdc: $05
	ld   bc, $5972                                   ; $6bdd: $01 $72 $59
	sbc  d                                           ; $6be0: $9a
	ld   [hl], h                                     ; $6be1: $74
	sbc  c                                           ; $6be2: $99
	and  c                                           ; $6be3: $a1
	ld   [hl], l                                     ; $6be4: $75
	ld   h, a                                        ; $6be5: $67
	ld   a, h                                        ; $6be6: $7c
	ld   sp, hl                                      ; $6be7: $f9
	dec  c                                           ; $6be8: $0d
	adc  h                                           ; $6be9: $8c
	ld   d, b                                        ; $6bea: $50
	sbc  [hl]                                        ; $6beb: $9e
	ld   [bc], a                                     ; $6bec: $02
	rst  JumpTable                                         ; $6bed: $df
	inc  b                                           ; $6bee: $04
	sub  d                                           ; $6bef: $92
	sub  b                                           ; $6bf0: $90
	inc  b                                           ; $6bf1: $04
	rrca                                             ; $6bf2: $0f
	ld   e, c                                        ; $6bf3: $59
	ld   [hl], c                                     ; $6bf4: $71
	ld   l, l                                        ; $6bf5: $6d
	ld   [hl], l                                     ; $6bf6: $75
	ld   h, a                                        ; $6bf7: $67
	ld   h, l                                        ; $6bf8: $65
	sbc  [hl]                                        ; $6bf9: $9e

jr_063_6bfa:
	dec  c                                           ; $6bfa: $0d
	ld   h, l                                        ; $6bfb: $65
	ld   e, c                                        ; $6bfc: $59
	ld   l, l                                        ; $6bfd: $6d
	ld   d, b                                        ; $6bfe: $50
	sbc  b                                           ; $6bff: $98
	adc  h                                           ; $6c00: $8c
	ld   l, c                                        ; $6c01: $69
	and  c                                           ; $6c02: $a1
	sbc  l                                           ; $6c03: $9d
	ld   a, e                                        ; $6c04: $7b
	sbc  a                                           ; $6c05: $9f
	dec  c                                           ; $6c06: $0d
	nop                                              ; $6c07: $00
	ld   a, [bc]                                     ; $6c08: $0a
	ld   b, $46                                      ; $6c09: $06 $46
	ld   de, $021c                                   ; $6c0b: $11 $1c $02
	nop                                              ; $6c0e: $00
	nop                                              ; $6c0f: $00
	ld   bc, $546b                                   ; $6c10: $01 $6b $54
	ld   d, d                                        ; $6c13: $52
	ld   d, [hl]                                     ; $6c14: $56
	ld   a, [hl]                                     ; $6c15: $7e
	sbc  [hl]                                        ; $6c16: $9e
	sub  b                                           ; $6c17: $90
	ld   d, h                                        ; $6c18: $54
	inc  b                                           ; $6c19: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c1a: $cf
	inc  b                                           ; $6c1b: $04
	xor  d                                           ; $6c1c: $aa
	ld   [hl], l                                     ; $6c1d: $75
	dec  c                                           ; $6c1e: $0d
	inc  b                                           ; $6c1f: $04
	dec  c                                           ; $6c20: $0d
	ld   [bc], a                                     ; $6c21: $02
	sub  [hl]                                        ; $6c22: $96
	inc  b                                           ; $6c23: $04
	ld   b, l                                        ; $6c24: $45
	inc  b                                           ; $6c25: $04
	ld   a, [bc]                                     ; $6c26: $0a
	sub  b                                           ; $6c27: $90
	inc  bc                                          ; $6c28: $03
	ld   a, [hl]                                     ; $6c29: $7e
	sbc  l                                           ; $6c2a: $9d
	sbc  b                                           ; $6c2b: $98
	ld   [hl], l                                     ; $6c2c: $75
	ld   h, a                                        ; $6c2d: $67
	sbc  l                                           ; $6c2e: $9d
	ld   a, e                                        ; $6c2f: $7b
	sbc  a                                           ; $6c30: $9f
	dec  c                                           ; $6c31: $0d
	nop                                              ; $6c32: $00
	ld   a, [bc]                                     ; $6c33: $0a
	ld   bc, $0804                                   ; $6c34: $01 $04 $08
	ld   [bc], a                                     ; $6c37: $02
	sub  d                                           ; $6c38: $92
	ld   a, l                                        ; $6c39: $7d
	ld   d, d                                        ; $6c3a: $52
	ld   e, c                                        ; $6c3b: $59
	ld   e, d                                        ; $6c3c: $5a
	ld   [hl], l                                     ; $6c3d: $75
	ld   h, l                                        ; $6c3e: $65
	ld   l, l                                        ; $6c3f: $6d
	ld   sp, hl                                      ; $6c40: $f9
	dec  c                                           ; $6c41: $0d
	nop                                              ; $6c42: $00
	ld   a, [bc]                                     ; $6c43: $0a
	add  hl, de                                      ; $6c44: $19
	dec  b                                           ; $6c45: $05
	ld   [bc], a                                     ; $6c46: $02
	adc  l                                           ; $6c47: $8d
	ld   a, b                                        ; $6c48: $78
	ld   h, e                                        ; $6c49: $63
	and  c                                           ; $6c4a: $a1
	cp   d                                           ; $6c4b: $ba
	rst  ToBoot                                         ; $6c4c: $c7
	xor  [hl]                                        ; $6c4d: $ae
	ld   [hl], l                                     ; $6c4e: $75
	sub  [hl]                                        ; $6c4f: $96
	ld   e, c                                        ; $6c50: $59
	ld   [hl], c                                     ; $6c51: $71
	ld   l, l                                        ; $6c52: $6d
	nop                                              ; $6c53: $00
	nop                                              ; $6c54: $00
	ld   h, a                                        ; $6c55: $67
	adc  l                                           ; $6c56: $8d
	sbc  d                                           ; $6c57: $9a
	ld   h, e                                        ; $6c58: $63
	and  c                                           ; $6c59: $a1
	ld   e, d                                        ; $6c5a: $5a
	ld   d, d                                        ; $6c5b: $52
	sub  a                                           ; $6c5c: $97
	ld   h, l                                        ; $6c5d: $65
	ld   l, l                                        ; $6c5e: $6d
	ld   e, c                                        ; $6c5f: $59
	sub  a                                           ; $6c60: $97
	rst  $38                                         ; $6c61: $ff
	rst  $38                                         ; $6c62: $ff
	nop                                              ; $6c63: $00
	ld   bc, $b407                                   ; $6c64: $01 $07 $b4
	ld   de, $0302                                   ; $6c67: $11 $02 $03
	ld   bc, $2000                                   ; $6c6a: $01 $00 $20
	nop                                              ; $6c6d: $00
	rlca                                             ; $6c6e: $07
	dec  d                                           ; $6c6f: $15
	ld   [de], a                                     ; $6c70: $12
	ld   [bc], a                                     ; $6c71: $02
	inc  bc                                          ; $6c72: $03
	ld   bc, $2001                                   ; $6c73: $01 $01 $20
	nop                                              ; $6c76: $00
	ld   b, $50                                      ; $6c77: $06 $50
	ld   [de], a                                     ; $6c79: $12
	rrca                                             ; $6c7a: $0f
	nop                                              ; $6c7b: $00
	ld   bc, $ba01                                   ; $6c7c: $01 $01 $ba
	rst  ToBoot                                         ; $6c7f: $c7
	xor  [hl]                                        ; $6c80: $ae
	ld   a, b                                        ; $6c81: $78
	adc  l                                           ; $6c82: $8d
	ld   a, b                                        ; $6c83: $78
	ld   h, e                                        ; $6c84: $63
	and  c                                           ; $6c85: $a1
	ld   a, [hl]                                     ; $6c86: $7e
	ld   e, c                                        ; $6c87: $59
	sbc  b                                           ; $6c88: $98
	ld   [hl], l                                     ; $6c89: $75
	dec  c                                           ; $6c8a: $0d
	ld   d, h                                        ; $6c8b: $54
	sbc  d                                           ; $6c8c: $9a
	ld   h, l                                        ; $6c8d: $65
	ld   e, c                                        ; $6c8e: $59
	ld   [hl], c                                     ; $6c8f: $71
	ld   l, l                                        ; $6c90: $6d
	ld   [hl], l                                     ; $6c91: $75
	ld   h, a                                        ; $6c92: $67
	sbc  a                                           ; $6c93: $9f
	dec  c                                           ; $6c94: $0d
	nop                                              ; $6c95: $00
	ld   a, [bc]                                     ; $6c96: $0a
	inc  e                                           ; $6c97: $1c
	ld   [bc], a                                     ; $6c98: $02
	rlca                                             ; $6c99: $07
	rlca                                             ; $6c9a: $07
	ld   bc, $8dfd                                   ; $6c9b: $01 $fd $8d
	ld   a, b                                        ; $6c9e: $78
	ld   h, e                                        ; $6c9f: $63
	and  c                                           ; $6ca0: $a1
	cp   $76                                         ; $6ca1: $fe $76
	ld   d, d                                        ; $6ca3: $52
	ld   d, h                                        ; $6ca4: $54
	ld   a, h                                        ; $6ca5: $7c
	ld   a, l                                        ; $6ca6: $7d
	dec  c                                           ; $6ca7: $0d
	ld   [hl], a                                     ; $6ca8: $77
	ld   d, h                                        ; $6ca9: $54
	ld   e, c                                        ; $6caa: $59
	halt                                             ; $6cab: $76
	dec  b                                           ; $6cac: $05
	pop  de                                          ; $6cad: $d1
	ld   d, d                                        ; $6cae: $52
	adc  h                                           ; $6caf: $8c
	ld   h, a                                        ; $6cb0: $67
	ld   e, a                                        ; $6cb1: $5f
	ld   [hl], a                                     ; $6cb2: $77
	rst  $38                                         ; $6cb3: $ff
	rst  $38                                         ; $6cb4: $ff
	dec  c                                           ; $6cb5: $0d
	nop                                              ; $6cb6: $00
	ld   a, [bc]                                     ; $6cb7: $0a
	inc  e                                           ; $6cb8: $1c
	ld   [bc], a                                     ; $6cb9: $02
	ld   bc, $0101                                   ; $6cba: $01 $01 $01
	db   $fd                                         ; $6cbd: $fd
	cp   d                                           ; $6cbe: $ba
	rst  ToBoot                                         ; $6cbf: $c7
	xor  [hl]                                        ; $6cc0: $ae
	cp   $76                                         ; $6cc1: $fe $76
	ld   d, d                                        ; $6cc3: $52
	ld   d, h                                        ; $6cc4: $54
	inc  b                                           ; $6cc5: $04
	sub  l                                           ; $6cc6: $95
	inc  b                                           ; $6cc7: $04
	sbc  [hl]                                        ; $6cc8: $9e
	ld   a, l                                        ; $6cc9: $7d
	dec  c                                           ; $6cca: $0d
	inc  b                                           ; $6ccb: $04
	jr   jr_063_6d3b                                 ; $6ccc: $18 $6d

	ld   [hl], c                                     ; $6cce: $71
	ld   [hl], h                                     ; $6ccf: $74
	adc  h                                           ; $6cd0: $8c
	ld   h, a                                        ; $6cd1: $67
	sbc  l                                           ; $6cd2: $9d
	ld   a, e                                        ; $6cd3: $7b
	sbc  a                                           ; $6cd4: $9f
	dec  c                                           ; $6cd5: $0d
	nop                                              ; $6cd6: $00
	ld   a, [bc]                                     ; $6cd7: $0a
	ld   b, $9d                                      ; $6cd8: $06 $9d
	ld   [de], a                                     ; $6cda: $12
	rrca                                             ; $6cdb: $0f
	nop                                              ; $6cdc: $00
	ld   bc, $6701                                   ; $6cdd: $01 $01 $67
	adc  l                                           ; $6ce0: $8d
	sbc  d                                           ; $6ce1: $9a
	ld   h, e                                        ; $6ce2: $63
	and  c                                           ; $6ce3: $a1
	ld   e, d                                        ; $6ce4: $5a
	ld   d, d                                        ; $6ce5: $52
	sub  a                                           ; $6ce6: $97
	ld   h, l                                        ; $6ce7: $65
	ld   l, l                                        ; $6ce8: $6d
	ld   e, c                                        ; $6ce9: $59
	sub  a                                           ; $6cea: $97
	dec  c                                           ; $6ceb: $0d
	ld   [bc], a                                     ; $6cec: $02
	ld   b, l                                        ; $6ced: $45
	ld   l, c                                        ; $6cee: $69
	ld   [hl], l                                     ; $6cef: $75
	ld   h, l                                        ; $6cf0: $65
	ld   l, l                                        ; $6cf1: $6d
	sbc  a                                           ; $6cf2: $9f
	dec  c                                           ; $6cf3: $0d
	nop                                              ; $6cf4: $00
	ld   a, [bc]                                     ; $6cf5: $0a
	inc  e                                           ; $6cf6: $1c
	ld   [bc], a                                     ; $6cf7: $02
	ld   bc, $0101                                   ; $6cf8: $01 $01 $01
	ld   d, b                                        ; $6cfb: $50
	sub  a                                           ; $6cfc: $97
	sbc  [hl]                                        ; $6cfd: $9e
	ld   e, b                                        ; $6cfe: $58
	inc  bc                                          ; $6cff: $03
	ld   h, l                                        ; $6d00: $65
	inc  bc                                          ; $6d01: $03
	ld   l, e                                        ; $6d02: $6b
	ld   l, [hl]                                     ; $6d03: $6e
	ld   h, c                                        ; $6d04: $61
	halt                                             ; $6d05: $76
	rst  $38                                         ; $6d06: $ff
	rst  $38                                         ; $6d07: $ff
	dec  c                                           ; $6d08: $0d
	ld   e, b                                        ; $6d09: $58
	ei                                               ; $6d0a: $fb
	adc  c                                           ; $6d0b: $89
	adc  c                                           ; $6d0c: $89
	adc  c                                           ; $6d0d: $89
	adc  c                                           ; $6d0e: $89
	ld   a, [$000d]                                  ; $6d0f: $fa $0d $00
	ld   a, [bc]                                     ; $6d12: $0a
	ld   b, $9d                                      ; $6d13: $06 $9d
	ld   [de], a                                     ; $6d15: $12
	inc  e                                           ; $6d16: $1c
	ld   [bc], a                                     ; $6d17: $02
	dec  b                                           ; $6d18: $05
	dec  b                                           ; $6d19: $05
	ld   bc, $956f                                   ; $6d1a: $01 $6f $95
	ld   [hl], c                                     ; $6d1d: $71
	halt                                             ; $6d1e: $76
	adc  [hl]                                        ; $6d1f: $8e
	ld   l, b                                        ; $6d20: $68
	ld   e, c                                        ; $6d21: $59
	ld   h, l                                        ; $6d22: $65
	ld   d, d                                        ; $6d23: $52
	dec  c                                           ; $6d24: $0d
	inc  bc                                          ; $6d25: $03
	dec  d                                           ; $6d26: $15
	inc  b                                           ; $6d27: $04
	cp   a                                           ; $6d28: $bf
	ld   [hl], l                                     ; $6d29: $75
	ld   h, l                                        ; $6d2a: $65
	ld   l, l                                        ; $6d2b: $6d
	ld   e, c                                        ; $6d2c: $59
	ld   h, l                                        ; $6d2d: $65
	sub  a                                           ; $6d2e: $97
	rst  $38                                         ; $6d2f: $ff
	rst  $38                                         ; $6d30: $ff
	dec  c                                           ; $6d31: $0d
	nop                                              ; $6d32: $00
	ld   a, [bc]                                     ; $6d33: $0a
	inc  e                                           ; $6d34: $1c
	ld   [bc], a                                     ; $6d35: $02
	ld   bc, $0101                                   ; $6d36: $01 $01 $01
	ld   [hl], l                                     ; $6d39: $75
	sub  b                                           ; $6d3a: $90

jr_063_6d3b:
	sbc  [hl]                                        ; $6d3b: $9e
	sbc  l                                           ; $6d3c: $9d
	ld   l, l                                        ; $6d3d: $6d
	ld   e, l                                        ; $6d3e: $5d
	ld   h, l                                        ; $6d3f: $65
	ld   e, d                                        ; $6d40: $5a
	ld   d, d                                        ; $6d41: $52
	sbc  c                                           ; $6d42: $99
	inc  b                                           ; $6d43: $04
	ld   [$9202], sp                                 ; $6d44: $08 $02 $92
	ld   a, h                                        ; $6d47: $7c
	dec  c                                           ; $6d48: $0d
	ld   [bc], a                                     ; $6d49: $02
	dec  h                                           ; $6d4a: $25
	inc  bc                                          ; $6d4b: $03
	ld   [hl], l                                     ; $6d4c: $75
	inc  bc                                          ; $6d4d: $03
	adc  $5a                                         ; $6d4e: $ce $5a
	ld   [bc], a                                     ; $6d50: $02
	jr   z, jr_063_6dac                              ; $6d51: $28 $59

	ld   [hl], c                                     ; $6d53: $71
	ld   l, l                                        ; $6d54: $6d
	ld   a, l                                        ; $6d55: $7d
	ld   l, b                                        ; $6d56: $68
	ld   e, d                                        ; $6d57: $5a
	dec  c                                           ; $6d58: $0d
	ld   d, b                                        ; $6d59: $50
	sbc  b                                           ; $6d5a: $98

Jump_063_6d5b:
	adc  h                                           ; $6d5b: $8c
	ld   l, c                                        ; $6d5c: $69
	and  c                                           ; $6d5d: $a1
	sbc  l                                           ; $6d5e: $9d
	sbc  a                                           ; $6d5f: $9f
	dec  c                                           ; $6d60: $0d
	nop                                              ; $6d61: $00
	ld   a, [bc]                                     ; $6d62: $0a
	rlca                                             ; $6d63: $07
	ld   a, [$0312]                                  ; $6d64: $fa $12 $03
	ld   [de], a                                     ; $6d67: $12
	ld   bc, $25be                                   ; $6d68: $01 $be $25
	nop                                              ; $6d6b: $00
	inc  e                                           ; $6d6c: $1c
	ld   [bc], a                                     ; $6d6d: $02
	nop                                              ; $6d6e: $00
	nop                                              ; $6d6f: $00
	ld   bc, $7463                                   ; $6d70: $01 $63 $74
	sbc  [hl]                                        ; $6d73: $9e
	ld   [bc], a                                     ; $6d74: $02
	or   l                                           ; $6d75: $b5
	sbc  b                                           ; $6d76: $98
	adc  h                                           ; $6d77: $8c
	ld   h, l                                        ; $6d78: $65
	sub  l                                           ; $6d79: $95
	ld   d, h                                        ; $6d7a: $54
	rst  $38                                         ; $6d7b: $ff
	rst  $38                                         ; $6d7c: $ff
	dec  c                                           ; $6d7d: $0d
	nop                                              ; $6d7e: $00
	ld   a, [bc]                                     ; $6d7f: $0a
	dec  c                                           ; $6d80: $0d
	nop                                              ; $6d81: $00
	nop                                              ; $6d82: $00
	rrca                                             ; $6d83: $0f
	nop                                              ; $6d84: $00
	ld   bc, $020c                                   ; $6d85: $01 $0c $02
	ld   c, $06                                      ; $6d88: $0e $06
	inc  e                                           ; $6d8a: $1c
	ld   [bc], a                                     ; $6d8b: $02
	ld   bc, $0101                                   ; $6d8c: $01 $01 $01
	ld   [bc], a                                     ; $6d8f: $02
	rst  JumpTable                                         ; $6d90: $df
	inc  b                                           ; $6d91: $04
	sub  d                                           ; $6d92: $92
	sub  b                                           ; $6d93: $90
	ld   l, a                                        ; $6d94: $6f
	sbc  [hl]                                        ; $6d95: $9e
	ld   h, d                                        ; $6d96: $62
	ld   e, l                                        ; $6d97: $5d
	sbc  e                                           ; $6d98: $9b
	ld   d, h                                        ; $6d99: $54
	inc  bc                                          ; $6d9a: $03
	sbc  b                                           ; $6d9b: $98
	ld   [hl], l                                     ; $6d9c: $75
	ld   h, l                                        ; $6d9d: $65
	ld   l, l                                        ; $6d9e: $6d
	sbc  a                                           ; $6d9f: $9f
	dec  c                                           ; $6da0: $0d
	adc  h                                           ; $6da1: $8c
	ld   l, l                                        ; $6da2: $6d
	ld   e, b                                        ; $6da3: $58
	ld   [bc], a                                     ; $6da4: $02
	add  b                                           ; $6da5: $80
	ld   d, d                                        ; $6da6: $52
	ld   h, l                                        ; $6da7: $65
	adc  h                                           ; $6da8: $8c
	ld   h, a                                        ; $6da9: $67
	sbc  l                                           ; $6daa: $9d
	sbc  a                                           ; $6dab: $9f

jr_063_6dac:
	dec  c                                           ; $6dac: $0d
	nop                                              ; $6dad: $00
	ld   a, [bc]                                     ; $6dae: $0a
	dec  b                                           ; $6daf: $05
	add  b                                           ; $6db0: $80
	ld   [hl+], a                                    ; $6db1: $22
	ld   bc, $0001                                   ; $6db2: $01 $01 $00
	dec  c                                           ; $6db5: $0d
	nop                                              ; $6db6: $00
	nop                                              ; $6db7: $00
	rrca                                             ; $6db8: $0f
	nop                                              ; $6db9: $00
	ld   bc, $1e09                                   ; $6dba: $01 $09 $1e
	add  hl, hl                                      ; $6dbd: $29
	nop                                              ; $6dbe: $00
	nop                                              ; $6dbf: $00
	inc  e                                           ; $6dc0: $1c
	ld   [bc], a                                     ; $6dc1: $02
	nop                                              ; $6dc2: $00
	nop                                              ; $6dc3: $00
	ld   bc, $9b6b                                   ; $6dc4: $01 $6b $9b
	ld   l, e                                        ; $6dc7: $6b
	sbc  e                                           ; $6dc8: $9b
	sbc  [hl]                                        ; $6dc9: $9e
	inc  bc                                          ; $6dca: $03
	add  b                                           ; $6dcb: $80
	adc  h                                           ; $6dcc: $8c
	ld   h, l                                        ; $6dcd: $65
	sub  l                                           ; $6dce: $95
	ld   d, h                                        ; $6dcf: $54
	ld   e, c                                        ; $6dd0: $59
	sbc  a                                           ; $6dd1: $9f
	dec  c                                           ; $6dd2: $0d
	nop                                              ; $6dd3: $00
	ld   a, [bc]                                     ; $6dd4: $0a
	dec  c                                           ; $6dd5: $0d
	nop                                              ; $6dd6: $00
	nop                                              ; $6dd7: $00
	rrca                                             ; $6dd8: $0f
	nop                                              ; $6dd9: $00
	ld   bc, $8623                                   ; $6dda: $01 $23 $86
	inc  e                                           ; $6ddd: $1c
	ld   [bc], a                                     ; $6dde: $02
	ld   bc, $0101                                   ; $6ddf: $01 $01 $01
	inc  b                                           ; $6de2: $04
	ld   [$9202], sp                                 ; $6de3: $08 $02 $92
	adc  h                                           ; $6de6: $8c
	ld   [hl], l                                     ; $6de7: $75
	inc  b                                           ; $6de8: $04
	sbc  a                                           ; $6de9: $9f
	ld   d, d                                        ; $6dea: $52
	ld   [hl], h                                     ; $6deb: $74
	dec  c                                           ; $6dec: $0d
	ld   [bc], a                                     ; $6ded: $02
	or   l                                           ; $6dee: $b5
	sbc  b                                           ; $6def: $98
	adc  h                                           ; $6df0: $8c
	ld   h, l                                        ; $6df1: $65
	sub  l                                           ; $6df2: $95
	ld   d, h                                        ; $6df3: $54
	sbc  a                                           ; $6df4: $9f
	dec  c                                           ; $6df5: $0d
	nop                                              ; $6df6: $00
	ld   a, [bc]                                     ; $6df7: $0a
	inc  e                                           ; $6df8: $1c
	ld   [bc], a                                     ; $6df9: $02
	nop                                              ; $6dfa: $00
	nop                                              ; $6dfb: $00
	ld   bc, $567b                                   ; $6dfc: $01 $7b $56
	sbc  [hl]                                        ; $6dff: $9e
	ld   [$6300], sp                                 ; $6e00: $08 $00 $63
	and  c                                           ; $6e03: $a1
	rst  $38                                         ; $6e04: $ff
	rst  $38                                         ; $6e05: $ff
	dec  c                                           ; $6e06: $0d
	ld   l, a                                        ; $6e07: $6f
	sub  l                                           ; $6e08: $95
	ld   [hl], c                                     ; $6e09: $71
	halt                                             ; $6e0a: $76
	ld   [bc], a                                     ; $6e0b: $02
	jp   nz, $7452                                   ; $6e0c: $c2 $52 $74

	adc  l                                           ; $6e0f: $8d
	ld   l, l                                        ; $6e10: $6d
	ld   d, d                                        ; $6e11: $52
	ld   h, c                                        ; $6e12: $61
	halt                                             ; $6e13: $76
	ld   e, d                                        ; $6e14: $5a
	dec  c                                           ; $6e15: $0d
	ld   d, b                                        ; $6e16: $50
	sbc  c                                           ; $6e17: $99
	and  c                                           ; $6e18: $a1
	ld   [hl], l                                     ; $6e19: $75
	ld   h, a                                        ; $6e1a: $67
	ld   a, h                                        ; $6e1b: $7c
	sub  [hl]                                        ; $6e1c: $96
	sbc  a                                           ; $6e1d: $9f
	dec  c                                           ; $6e1e: $0d
	nop                                              ; $6e1f: $00
	ld   a, [bc]                                     ; $6e20: $0a
	ld   bc, $0008                                   ; $6e21: $01 $08 $00
	ld   h, e                                        ; $6e24: $63
	and  c                                           ; $6e25: $a1
	ld   [hl], h                                     ; $6e26: $74
	sbc  [hl]                                        ; $6e27: $9e
	dec  c                                           ; $6e28: $0d
	ld   [hl], a                                     ; $6e29: $77
	and  c                                           ; $6e2a: $a1
	ld   a, b                                        ; $6e2b: $78
	inc  bc                                          ; $6e2c: $03
	ld   l, [hl]                                     ; $6e2d: $6e
	ld   [bc], a                                     ; $6e2e: $02
	db   $fc                                         ; $6e2f: $fc
	ld   e, d                                        ; $6e30: $5a
	sbc  [hl]                                        ; $6e31: $9e
	ld   e, b                                        ; $6e32: $58
	ld   [bc], a                                     ; $6e33: $02
	sbc  d                                           ; $6e34: $9a
	ld   e, e                                        ; $6e35: $5b
	ld   [hl], l                                     ; $6e36: $75
	ld   h, a                                        ; $6e37: $67
	ld   a, h                                        ; $6e38: $7c
	ld   sp, hl                                      ; $6e39: $f9
	dec  c                                           ; $6e3a: $0d
	nop                                              ; $6e3b: $00
	ld   a, [bc]                                     ; $6e3c: $0a
	add  hl, de                                      ; $6e3d: $19
	dec  b                                           ; $6e3e: $05
	inc  bc                                          ; $6e3f: $03
	ld   h, a                                        ; $6e40: $67
	adc  l                                           ; $6e41: $8d
	sbc  d                                           ; $6e42: $9a
	ld   h, e                                        ; $6e43: $63
	and  c                                           ; $6e44: $a1
	adc  l                                           ; $6e45: $8d
	ld   l, l                                        ; $6e46: $6d
	ld   d, d                                        ; $6e47: $52
	ld   a, b                                        ; $6e48: $78
	inc  bc                                          ; $6e49: $03
	add  d                                           ; $6e4a: $82
	nop                                              ; $6e4b: $00
	nop                                              ; $6e4c: $00
	inc  bc                                          ; $6e4d: $03
	sub  h                                           ; $6e4e: $94
	inc  b                                           ; $6e4f: $04
	sbc  [hl]                                        ; $6e50: $9e
	and  b                                           ; $6e51: $a0
	sbc  l                                           ; $6e52: $9d
	ld   e, c                                        ; $6e53: $59
	ld   [hl], c                                     ; $6e54: $71
	ld   [hl], h                                     ; $6e55: $74
	ld   e, l                                        ; $6e56: $5d
	sbc  d                                           ; $6e57: $9a
	sbc  c                                           ; $6e58: $99
	inc  bc                                          ; $6e59: $03
	add  d                                           ; $6e5a: $82
	nop                                              ; $6e5b: $00
	ld   bc, $6e03                                   ; $6e5c: $01 $03 $6e
	ld   [bc], a                                     ; $6e5f: $02
	db   $fc                                         ; $6e60: $fc
	ld   a, b                                        ; $6e61: $78
	sub  a                                           ; $6e62: $97
	ld   l, [hl]                                     ; $6e63: $6e
	sbc  d                                           ; $6e64: $9a
	ld   [hl], l                                     ; $6e65: $75
	sub  b                                           ; $6e66: $90
	nop                                              ; $6e67: $00
	ld   [bc], a                                     ; $6e68: $02
	rlca                                             ; $6e69: $07
	pop  bc                                          ; $6e6a: $c1
	inc  de                                          ; $6e6b: $13
	ld   [bc], a                                     ; $6e6c: $02
	inc  bc                                          ; $6e6d: $03
	ld   bc, $2000                                   ; $6e6e: $01 $00 $20
	nop                                              ; $6e71: $00
	rlca                                             ; $6e72: $07
	rst  $30                                         ; $6e73: $f7
	inc  de                                          ; $6e74: $13
	ld   [bc], a                                     ; $6e75: $02
	inc  bc                                          ; $6e76: $03
	ld   bc, $2001                                   ; $6e77: $01 $01 $20
	nop                                              ; $6e7a: $00
	rlca                                             ; $6e7b: $07
	jr   c, jr_063_6e92                              ; $6e7c: $38 $14

	ld   [bc], a                                     ; $6e7e: $02
	inc  bc                                          ; $6e7f: $03
	ld   bc, $2002                                   ; $6e80: $01 $02 $20
	nop                                              ; $6e83: $00
	ld   b, $7a                                      ; $6e84: $06 $7a
	inc  d                                           ; $6e86: $14
	rrca                                             ; $6e87: $0f
	nop                                              ; $6e88: $00
	ld   bc, $6701                                   ; $6e89: $01 $01 $67
	adc  l                                           ; $6e8c: $8d
	sbc  d                                           ; $6e8d: $9a
	ld   h, e                                        ; $6e8e: $63
	and  c                                           ; $6e8f: $a1
	adc  l                                           ; $6e90: $8d
	ld   l, l                                        ; $6e91: $6d

jr_063_6e92:
	ld   d, d                                        ; $6e92: $52
	ld   a, b                                        ; $6e93: $78
	inc  bc                                          ; $6e94: $03
	add  d                                           ; $6e95: $82
	ld   [hl], l                                     ; $6e96: $75
	ld   h, a                                        ; $6e97: $67
	ld   a, e                                        ; $6e98: $7b
	sbc  a                                           ; $6e99: $9f
	dec  c                                           ; $6e9a: $0d
	nop                                              ; $6e9b: $00
	ld   a, [bc]                                     ; $6e9c: $0a
	inc  e                                           ; $6e9d: $1c
	ld   [bc], a                                     ; $6e9e: $02
	ld   bc, $0101                                   ; $6e9f: $01 $01 $01
	adc  h                                           ; $6ea2: $8c
	sbc  [hl]                                        ; $6ea3: $9e
	inc  bc                                          ; $6ea4: $03
	ld   c, d                                        ; $6ea5: $4a
	inc  bc                                          ; $6ea6: $03
	jp   c, $6775                                    ; $6ea7: $da $75 $67

	ld   h, c                                        ; $6eaa: $61
	halt                                             ; $6eab: $76
	rst  $38                                         ; $6eac: $ff
	rst  $38                                         ; $6ead: $ff
	dec  c                                           ; $6eae: $0d
	ld   e, b                                        ; $6eaf: $58
	ei                                               ; $6eb0: $fb
	adc  c                                           ; $6eb1: $89
	adc  c                                           ; $6eb2: $89
	adc  c                                           ; $6eb3: $89
	adc  c                                           ; $6eb4: $89
	adc  c                                           ; $6eb5: $89
	ld   a, [$000d]                                  ; $6eb6: $fa $0d $00
	ld   a, [bc]                                     ; $6eb9: $0a
	ld   b, $9b                                      ; $6eba: $06 $9b
	inc  d                                           ; $6ebc: $14
	rrca                                             ; $6ebd: $0f
	nop                                              ; $6ebe: $00
	ld   bc, $6b01                                   ; $6ebf: $01 $01 $6b
	ld   d, h                                        ; $6ec2: $54
	ld   [hl], l                                     ; $6ec3: $75
	ld   h, a                                        ; $6ec4: $67
	ld   a, e                                        ; $6ec5: $7b
	rst  $38                                         ; $6ec6: $ff
	rst  $38                                         ; $6ec7: $ff
	dec  c                                           ; $6ec8: $0d
	inc  bc                                          ; $6ec9: $03
	sub  h                                           ; $6eca: $94
	inc  b                                           ; $6ecb: $04
	sbc  [hl]                                        ; $6ecc: $9e
	and  b                                           ; $6ecd: $a0
	sbc  l                                           ; $6ece: $9d
	ld   e, c                                        ; $6ecf: $59
	ld   [hl], c                                     ; $6ed0: $71
	ld   [hl], h                                     ; $6ed1: $74
	ld   e, l                                        ; $6ed2: $5d
	sbc  d                                           ; $6ed3: $9a
	sbc  c                                           ; $6ed4: $99
	inc  bc                                          ; $6ed5: $03
	add  d                                           ; $6ed6: $82
	ld   e, c                                        ; $6ed7: $59
	sub  b                                           ; $6ed8: $90
	dec  c                                           ; $6ed9: $0d
	inc  b                                           ; $6eda: $04
	dec  hl                                          ; $6edb: $2b
	sbc  d                                           ; $6edc: $9a
	adc  h                                           ; $6edd: $8c
	ld   l, c                                        ; $6ede: $69
	and  c                                           ; $6edf: $a1
	sbc  a                                           ; $6ee0: $9f
	dec  c                                           ; $6ee1: $0d
	nop                                              ; $6ee2: $00
	ld   a, [bc]                                     ; $6ee3: $0a
	inc  e                                           ; $6ee4: $1c
	ld   [bc], a                                     ; $6ee5: $02
	ld   bc, $0101                                   ; $6ee6: $01 $01 $01
	ld   d, b                                        ; $6ee9: $50
	sub  a                                           ; $6eea: $97
	sbc  [hl]                                        ; $6eeb: $9e
	add  h                                           ; $6eec: $84
	ld   a, b                                        ; $6eed: $78
	and  c                                           ; $6eee: $a1
	ld   a, b                                        ; $6eef: $78
	inc  bc                                          ; $6ef0: $03
	call c, Call_063_7556                            ; $6ef1: $dc $56 $75
	ld   h, a                                        ; $6ef4: $67
	ld   h, c                                        ; $6ef5: $61
	halt                                             ; $6ef6: $76
	sbc  a                                           ; $6ef7: $9f
	dec  c                                           ; $6ef8: $0d
	nop                                              ; $6ef9: $00
	ld   a, [bc]                                     ; $6efa: $0a
	ld   b, $9b                                      ; $6efb: $06 $9b
	inc  d                                           ; $6efd: $14
	rrca                                             ; $6efe: $0f
	nop                                              ; $6eff: $00
	ld   bc, $0301                                   ; $6f00: $01 $01 $03
	ld   l, [hl]                                     ; $6f03: $6e
	ld   [bc], a                                     ; $6f04: $02
	db   $fc                                         ; $6f05: $fc
	ld   a, b                                        ; $6f06: $78
	sub  a                                           ; $6f07: $97
	inc  bc                                          ; $6f08: $03
	xor  c                                           ; $6f09: $a9
	ld   [hl], l                                     ; $6f0a: $75
	sub  b                                           ; $6f0b: $90
	ld   d, d                                        ; $6f0c: $52
	ld   d, d                                        ; $6f0d: $52
	ld   [hl], l                                     ; $6f0e: $75
	ld   h, a                                        ; $6f0f: $67
	sbc  a                                           ; $6f10: $9f
	dec  c                                           ; $6f11: $0d
	nop                                              ; $6f12: $00
	ld   a, [bc]                                     ; $6f13: $0a
	inc  e                                           ; $6f14: $1c
	ld   [bc], a                                     ; $6f15: $02
	dec  b                                           ; $6f16: $05
	dec  b                                           ; $6f17: $05
	ld   bc, $546b                                   ; $6f18: $01 $6b $54
	ld   d, d                                        ; $6f1b: $52
	ld   d, h                                        ; $6f1c: $54
	inc  bc                                          ; $6f1d: $03
	add  d                                           ; $6f1e: $82
	ld   a, c                                        ; $6f1f: $79
	ld   e, c                                        ; $6f20: $59
	ld   e, h                                        ; $6f21: $5c
	ld   [hl], c                                     ; $6f22: $71
	ld   [hl], h                                     ; $6f23: $74
	sbc  [hl]                                        ; $6f24: $9e
	inc  bc                                          ; $6f25: $03
	ld   l, [hl]                                     ; $6f26: $6e
	ld   [bc], a                                     ; $6f27: $02
	db   $fc                                         ; $6f28: $fc
	ld   a, c                                        ; $6f29: $79
	dec  c                                           ; $6f2a: $0d
	dec  b                                           ; $6f2b: $05
	ld   l, h                                        ; $6f2c: $6c
	ld   e, d                                        ; $6f2d: $5a
	ld   [bc], a                                     ; $6f2e: $02
	ld   bc, $7159                                   ; $6f2f: $01 $59 $71
	ld   l, l                                        ; $6f32: $6d
	sbc  b                                           ; $6f33: $98
	ld   h, l                                        ; $6f34: $65
	adc  h                                           ; $6f35: $8c
	ld   h, a                                        ; $6f36: $67
	ld   a, h                                        ; $6f37: $7c
	sub  [hl]                                        ; $6f38: $96
	sbc  a                                           ; $6f39: $9f
	dec  c                                           ; $6f3a: $0d
	nop                                              ; $6f3b: $00
	ld   a, [bc]                                     ; $6f3c: $0a
	ld   b, $9b                                      ; $6f3d: $06 $9b
	inc  d                                           ; $6f3f: $14
	inc  e                                           ; $6f40: $1c
	ld   [bc], a                                     ; $6f41: $02
	ld   bc, $0101                                   ; $6f42: $01 $01 $01
	ld   l, a                                        ; $6f45: $6f
	sub  l                                           ; $6f46: $95
	ld   [hl], c                                     ; $6f47: $71
	halt                                             ; $6f48: $76
	sbc  [hl]                                        ; $6f49: $9e
	ld   d, d                                        ; $6f4a: $52
	ld   h, [hl]                                     ; $6f4b: $66
	sbc  l                                           ; $6f4c: $9d
	sbc  c                                           ; $6f4d: $99
	ld   a, b                                        ; $6f4e: $78
	dec  c                                           ; $6f4f: $0d
	inc  bc                                          ; $6f50: $03
	dec  d                                           ; $6f51: $15
	inc  b                                           ; $6f52: $04
	cp   a                                           ; $6f53: $bf
	ld   l, [hl]                                     ; $6f54: $6e
	ld   [hl], c                                     ; $6f55: $71
	ld   l, l                                        ; $6f56: $6d
	sub  [hl]                                        ; $6f57: $96
	ld   d, h                                        ; $6f58: $54
	ld   [hl], l                                     ; $6f59: $75
	ld   h, a                                        ; $6f5a: $67
	sbc  l                                           ; $6f5b: $9d
	ld   a, e                                        ; $6f5c: $7b
	sbc  a                                           ; $6f5d: $9f
	dec  c                                           ; $6f5e: $0d
	nop                                              ; $6f5f: $00
	ld   a, [bc]                                     ; $6f60: $0a
	rrca                                             ; $6f61: $0f
	nop                                              ; $6f62: $00
	ld   bc, $6701                                   ; $6f63: $01 $01 $67
	adc  l                                           ; $6f66: $8d
	sbc  d                                           ; $6f67: $9a
	ld   h, e                                        ; $6f68: $63
	and  c                                           ; $6f69: $a1
	rst  $38                                         ; $6f6a: $ff
	rst  $38                                         ; $6f6b: $ff
	dec  c                                           ; $6f6c: $0d
	inc  b                                           ; $6f6d: $04
	ld   l, l                                        ; $6f6e: $6d
	ld   e, c                                        ; $6f6f: $59
	sub  a                                           ; $6f70: $97
	sub  b                                           ; $6f71: $90
	ld   [bc], a                                     ; $6f72: $02
	jp   nz, $7452                                   ; $6f73: $c2 $52 $74

	ld   d, d                                        ; $6f76: $52
	ld   d, d                                        ; $6f77: $52
	ld   [hl], l                                     ; $6f78: $75
	ld   h, a                                        ; $6f79: $67
	ld   e, c                                        ; $6f7a: $59
	ld   sp, hl                                      ; $6f7b: $f9
	dec  c                                           ; $6f7c: $0d
	nop                                              ; $6f7d: $00
	ld   a, [bc]                                     ; $6f7e: $0a
	inc  e                                           ; $6f7f: $1c
	ld   [bc], a                                     ; $6f80: $02
	ld   bc, $0101                                   ; $6f81: $01 $01 $01
	ld   d, [hl]                                     ; $6f84: $56
	ld   d, [hl]                                     ; $6f85: $56
	sbc  [hl]                                        ; $6f86: $9e
	ld   d, d                                        ; $6f87: $52
	ld   d, d                                        ; $6f88: $52
	ld   [hl], l                                     ; $6f89: $75
	ld   h, a                                        ; $6f8a: $67
	sbc  l                                           ; $6f8b: $9d
	sub  [hl]                                        ; $6f8c: $96
	sbc  a                                           ; $6f8d: $9f
	dec  c                                           ; $6f8e: $0d
	nop                                              ; $6f8f: $00
	ld   a, [bc]                                     ; $6f90: $0a
	rrca                                             ; $6f91: $0f
	nop                                              ; $6f92: $00
	ld   bc, $0201                                   ; $6f93: $01 $01 $02
	dec  bc                                          ; $6f96: $0b
	inc  bc                                          ; $6f97: $03
	ld   c, a                                        ; $6f98: $4f
	ld   a, c                                        ; $6f99: $79
	sub  b                                           ; $6f9a: $90
	ld   [bc], a                                     ; $6f9b: $02
	jp   nz, $6d52                                   ; $6f9c: $c2 $52 $6d

	ld   e, c                                        ; $6f9f: $59

Jump_063_6fa0:
	sub  b                                           ; $6fa0: $90
	dec  c                                           ; $6fa1: $0d
	inc  b                                           ; $6fa2: $04
	dec  hl                                          ; $6fa3: $2b
	sbc  d                                           ; $6fa4: $9a
	adc  h                                           ; $6fa5: $8c
	ld   l, c                                        ; $6fa6: $69
	and  c                                           ; $6fa7: $a1
	ld   e, d                                        ; $6fa8: $5a
	sbc  [hl]                                        ; $6fa9: $9e
	ld   h, a                                        ; $6faa: $67
	adc  l                                           ; $6fab: $8d
	sbc  d                                           ; $6fac: $9a
	ld   h, e                                        ; $6fad: $63
	and  c                                           ; $6fae: $a1
	ld   a, l                                        ; $6faf: $7d
	rst  $38                                         ; $6fb0: $ff
	dec  c                                           ; $6fb1: $0d
	nop                                              ; $6fb2: $00
	ld   a, [bc]                                     ; $6fb3: $0a
	add  hl, de                                      ; $6fb4: $19
	dec  b                                           ; $6fb5: $05
	inc  bc                                          ; $6fb6: $03
	inc  b                                           ; $6fb7: $04
	ld   l, l                                        ; $6fb8: $6d
	ld   a, h                                        ; $6fb9: $7c
	ld   h, c                                        ; $6fba: $61
	halt                                             ; $6fbb: $76
	ld   [hl], a                                     ; $6fbc: $77
	ld   d, h                                        ; $6fbd: $54
	dec  b                                           ; $6fbe: $05
	pop  de                                          ; $6fbf: $d1
	ld   d, d                                        ; $6fc0: $52
	adc  h                                           ; $6fc1: $8c
	ld   h, a                                        ; $6fc2: $67
	ld   e, c                                        ; $6fc3: $59
	ld   sp, hl                                      ; $6fc4: $f9
	nop                                              ; $6fc5: $00
	nop                                              ; $6fc6: $00
	inc  b                                           ; $6fc7: $04
	ld   c, $03                                      ; $6fc8: $0e $03
	sub  b                                           ; $6fca: $90
	ld   h, e                                        ; $6fcb: $63
	and  c                                           ; $6fcc: $a1
	ld   e, d                                        ; $6fcd: $5a
	ld   [bc], a                                     ; $6fce: $02
	sbc  d                                           ; $6fcf: $9a
	ld   e, e                                        ; $6fd0: $5b
	ld   a, b                                        ; $6fd1: $78
	and  c                                           ; $6fd2: $a1
	ld   [hl], l                                     ; $6fd3: $75
	ld   h, a                                        ; $6fd4: $67
	ld   e, c                                        ; $6fd5: $59
	ld   sp, hl                                      ; $6fd6: $f9
	nop                                              ; $6fd7: $00
	ld   bc, $a177                                   ; $6fd8: $01 $77 $a1
	ld   a, b                                        ; $6fdb: $78
	inc  bc                                          ; $6fdc: $03
	add  d                                           ; $6fdd: $82
	ld   e, d                                        ; $6fde: $5a
	ld   [bc], a                                     ; $6fdf: $02
	sbc  d                                           ; $6fe0: $9a
	ld   e, e                                        ; $6fe1: $5b
	ld   [hl], l                                     ; $6fe2: $75
	ld   h, a                                        ; $6fe3: $67
	ld   e, c                                        ; $6fe4: $59
	ld   sp, hl                                      ; $6fe5: $f9
	nop                                              ; $6fe6: $00
	ld   [bc], a                                     ; $6fe7: $02
	rlca                                             ; $6fe8: $07
	ld   b, b                                        ; $6fe9: $40
	dec  d                                           ; $6fea: $15
	ld   [bc], a                                     ; $6feb: $02
	inc  bc                                          ; $6fec: $03
	ld   bc, $2000                                   ; $6fed: $01 $00 $20
	nop                                              ; $6ff0: $00
	rlca                                             ; $6ff1: $07
	sbc  $15                                         ; $6ff2: $de $15
	ld   [bc], a                                     ; $6ff4: $02
	inc  bc                                          ; $6ff5: $03
	ld   bc, $2001                                   ; $6ff6: $01 $01 $20
	nop                                              ; $6ff9: $00
	rlca                                             ; $6ffa: $07
	dec  [hl]                                        ; $6ffb: $35
	ld   d, $02                                      ; $6ffc: $16 $02
	inc  bc                                          ; $6ffe: $03
	ld   bc, $2002                                   ; $6fff: $01 $02 $20
	nop                                              ; $7002: $00
	ld   b, $c7                                      ; $7003: $06 $c7
	ld   d, $0f                                      ; $7005: $16 $0f
	nop                                              ; $7007: $00
	ld   bc, $0401                                   ; $7008: $01 $01 $04
	ld   l, l                                        ; $700b: $6d
	ld   a, h                                        ; $700c: $7c
	ld   h, c                                        ; $700d: $61
	halt                                             ; $700e: $76
	ld   [hl], a                                     ; $700f: $77
	ld   d, h                                        ; $7010: $54
	dec  b                                           ; $7011: $05
	pop  de                                          ; $7012: $d1
	ld   d, d                                        ; $7013: $52
	adc  h                                           ; $7014: $8c
	ld   h, a                                        ; $7015: $67
	ld   e, c                                        ; $7016: $59
	ld   sp, hl                                      ; $7017: $f9
	dec  c                                           ; $7018: $0d
	nop                                              ; $7019: $00
	ld   a, [bc]                                     ; $701a: $0a
	inc  e                                           ; $701b: $1c
	ld   [bc], a                                     ; $701c: $02
	inc  bc                                          ; $701d: $03
	inc  bc                                          ; $701e: $03
	ld   bc, $9750                                   ; $701f: $01 $50 $97
	rst  $38                                         ; $7022: $ff
	rst  $38                                         ; $7023: $ff
	dec  c                                           ; $7024: $0d
	nop                                              ; $7025: $00
	ld   a, [bc]                                     ; $7026: $0a
	rrca                                             ; $7027: $0f
	nop                                              ; $7028: $00
	ld   bc, $0401                                   ; $7029: $01 $01 $04
	ld   l, l                                        ; $702c: $6d
	ld   [hl], c                                     ; $702d: $71
	ld   [hl], h                                     ; $702e: $74
	rst  $38                                         ; $702f: $ff
	rst  $38                                         ; $7030: $ff
	ld   h, a                                        ; $7031: $67
	adc  l                                           ; $7032: $8d
	sbc  d                                           ; $7033: $9a
	ld   h, e                                        ; $7034: $63
	and  c                                           ; $7035: $a1
	ld   e, c                                        ; $7036: $59
	sub  a                                           ; $7037: $97
	ld   [bc], a                                     ; $7038: $02
	sub  l                                           ; $7039: $95
	ld   [hl], h                                     ; $703a: $74
	dec  c                                           ; $703b: $0d
	ld   [hl], a                                     ; $703c: $77
	ld   d, h                                        ; $703d: $54
	ld   [hl], l                                     ; $703e: $75
	ld   h, a                                        ; $703f: $67
	ld   e, c                                        ; $7040: $59
	ld   sp, hl                                      ; $7041: $f9
	dec  c                                           ; $7042: $0d
	nop                                              ; $7043: $00
	ld   a, [bc]                                     ; $7044: $0a
	inc  e                                           ; $7045: $1c
	ld   [bc], a                                     ; $7046: $02
	ld   bc, $0101                                   ; $7047: $01 $01 $01
	ld   l, e                                        ; $704a: $6b
	ld   d, h                                        ; $704b: $54
	ld   [hl], l                                     ; $704c: $75
	ld   h, a                                        ; $704d: $67
	sbc  l                                           ; $704e: $9d
	ld   a, e                                        ; $704f: $7b
	rst  $38                                         ; $7050: $ff
	rst  $38                                         ; $7051: $ff
	dec  c                                           ; $7052: $0d
	ld   a, b                                        ; $7053: $78
	ld   e, c                                        ; $7054: $59
	ld   a, b                                        ; $7055: $78
	ld   e, c                                        ; $7056: $59
	cp   d                                           ; $7057: $ba
	rst  ToBoot                                         ; $7058: $c7
	xor  [hl]                                        ; $7059: $ae
	ld   a, b                                        ; $705a: $78
	inc  b                                           ; $705b: $04
	ld   a, b                                        ; $705c: $78
	ld   l, [hl]                                     ; $705d: $6e
	halt                                             ; $705e: $76
	dec  c                                           ; $705f: $0d
	dec  b                                           ; $7060: $05
	pop  de                                          ; $7061: $d1
	ld   d, d                                        ; $7062: $52
	adc  h                                           ; $7063: $8c
	ld   h, a                                        ; $7064: $67
	sbc  l                                           ; $7065: $9d
	sbc  a                                           ; $7066: $9f
	dec  c                                           ; $7067: $0d
	nop                                              ; $7068: $00
	ld   a, [bc]                                     ; $7069: $0a
	inc  e                                           ; $706a: $1c
	ld   [bc], a                                     ; $706b: $02
	inc  b                                           ; $706c: $04
	inc  b                                           ; $706d: $04
	ld   bc, $6e6d                                   ; $706e: $01 $6d $6e
	inc  bc                                          ; $7071: $03
	ld   l, h                                        ; $7072: $6c
	dec  b                                           ; $7073: $05
	ld   h, $79                                      ; $7074: $26 $79
	ld   e, l                                        ; $7076: $5d
	sub  a                                           ; $7077: $97
	add  a                                           ; $7078: $87
	sbc  c                                           ; $7079: $99
	halt                                             ; $707a: $76
	dec  c                                           ; $707b: $0d
	rst  $38                                         ; $707c: $ff
	rst  $38                                         ; $707d: $ff
	adc  [hl]                                        ; $707e: $8e
	ld   l, b                                        ; $707f: $68
	ld   e, c                                        ; $7080: $59
	ld   h, l                                        ; $7081: $65
	ld   d, d                                        ; $7082: $52
	ld   [hl], l                                     ; $7083: $75
	ld   h, a                                        ; $7084: $67
	sbc  l                                           ; $7085: $9d
	ld   a, e                                        ; $7086: $7b
	sbc  a                                           ; $7087: $9f
	dec  c                                           ; $7088: $0d
	nop                                              ; $7089: $00
	ld   a, [bc]                                     ; $708a: $0a
	rrca                                             ; $708b: $0f
	nop                                              ; $708c: $00
	ld   bc, $9201                                   ; $708d: $01 $01 $92
	ld   [hl], c                                     ; $7090: $71
	ld   a, a                                        ; $7091: $7f
	sbc  b                                           ; $7092: $98
	inc  b                                           ; $7093: $04
	ld   c, $03                                      ; $7094: $0e $03
	sub  b                                           ; $7096: $90
	ld   h, e                                        ; $7097: $63
	and  c                                           ; $7098: $a1
	ld   [hl], l                                     ; $7099: $75
	ld   h, a                                        ; $709a: $67
	ld   e, c                                        ; $709b: $59
	rst  $38                                         ; $709c: $ff
	rst  $38                                         ; $709d: $ff
	dec  c                                           ; $709e: $0d
	nop                                              ; $709f: $00
	ld   a, [bc]                                     ; $70a0: $0a
	ld   b, $71                                      ; $70a1: $06 $71
	ld   d, $0f                                      ; $70a3: $16 $0f
	nop                                              ; $70a5: $00
	ld   bc, $0401                                   ; $70a6: $01 $01 $04
	ld   c, $03                                      ; $70a9: $0e $03
	sub  b                                           ; $70ab: $90
	ld   h, e                                        ; $70ac: $63
	and  c                                           ; $70ad: $a1
	ld   e, d                                        ; $70ae: $5a
	ld   [bc], a                                     ; $70af: $02
	sbc  d                                           ; $70b0: $9a
	ld   e, e                                        ; $70b1: $5b
	ld   a, b                                        ; $70b2: $78
	and  c                                           ; $70b3: $a1
	ld   [hl], l                                     ; $70b4: $75
	ld   h, a                                        ; $70b5: $67
	ld   e, c                                        ; $70b6: $59
	ld   sp, hl                                      ; $70b7: $f9
	dec  c                                           ; $70b8: $0d
	nop                                              ; $70b9: $00
	ld   a, [bc]                                     ; $70ba: $0a
	inc  e                                           ; $70bb: $1c
	ld   [bc], a                                     ; $70bc: $02
	ld   bc, $0101                                   ; $70bd: $01 $01 $01
	ld   d, b                                        ; $70c0: $50
	sub  a                                           ; $70c1: $97
	sbc  [hl]                                        ; $70c2: $9e
	ld   l, b                                        ; $70c3: $68
	ld   d, d                                        ; $70c4: $52
	add  h                                           ; $70c5: $84
	and  c                                           ; $70c6: $a1
	halt                                             ; $70c7: $76
	ld   [bc], a                                     ; $70c8: $02
	xor  b                                           ; $70c9: $a8
	inc  b                                           ; $70ca: $04
	dec  c                                           ; $70cb: $0d
	inc  b                                           ; $70cc: $04
	jr   nz, jr_063_7148                             ; $70cd: $20 $79

	dec  c                                           ; $70cf: $0d
	inc  b                                           ; $70d0: $04
	rst  ToBoot                                         ; $70d1: $c7
	inc  bc                                          ; $70d2: $03
	ld   c, a                                        ; $70d3: $4f
	and  b                                           ; $70d4: $a0
	ld   d, b                                        ; $70d5: $50
	ld   h, b                                        ; $70d6: $60
	adc  h                                           ; $70d7: $8c
	ld   h, l                                        ; $70d8: $65
	ld   l, l                                        ; $70d9: $6d
	sbc  l                                           ; $70da: $9d
	ld   a, e                                        ; $70db: $7b
	rst  $38                                         ; $70dc: $ff
	rst  $38                                         ; $70dd: $ff
	dec  c                                           ; $70de: $0d
	nop                                              ; $70df: $00
	ld   a, [bc]                                     ; $70e0: $0a
	inc  e                                           ; $70e1: $1c
	ld   [bc], a                                     ; $70e2: $02
	inc  b                                           ; $70e3: $04
	inc  b                                           ; $70e4: $04

jr_063_70e5:
	ld   bc, $7c6b                                   ; $70e5: $01 $6b $7c
	inc  bc                                          ; $70e8: $03
	call c, Call_063_7d56                            ; $70e9: $dc $56 $7d
	db   $fd                                         ; $70ec: $fd
	and  l                                           ; $70ed: $a5
	xor  c                                           ; $70ee: $a9
	cp   d                                           ; $70ef: $ba
	cp   $75                                         ; $70f0: $fe $75
	ld   h, a                                        ; $70f2: $67
	sbc  l                                           ; $70f3: $9d
	sbc  a                                           ; $70f4: $9f
	dec  c                                           ; $70f5: $0d
	nop                                              ; $70f6: $00
	ld   a, [bc]                                     ; $70f7: $0a
	ld   b, $71                                      ; $70f8: $06 $71
	ld   d, $0f                                      ; $70fa: $16 $0f
	nop                                              ; $70fc: $00
	ld   bc, $7701                                   ; $70fd: $01 $01 $77
	and  c                                           ; $7100: $a1
	ld   a, b                                        ; $7101: $78
	inc  bc                                          ; $7102: $03
	add  d                                           ; $7103: $82
	ld   e, d                                        ; $7104: $5a
	ld   [bc], a                                     ; $7105: $02
	sbc  d                                           ; $7106: $9a
	ld   e, e                                        ; $7107: $5b
	ld   [hl], l                                     ; $7108: $75
	ld   h, a                                        ; $7109: $67
	ld   e, c                                        ; $710a: $59
	ld   sp, hl                                      ; $710b: $f9
	dec  c                                           ; $710c: $0d
	nop                                              ; $710d: $00
	ld   a, [bc]                                     ; $710e: $0a
	inc  e                                           ; $710f: $1c
	ld   [bc], a                                     ; $7110: $02
	ld   bc, $0101                                   ; $7111: $01 $01 $01
	ld   l, e                                        ; $7114: $6b
	ld   d, h                                        ; $7115: $54
	ld   [hl], l                                     ; $7116: $75
	ld   h, a                                        ; $7117: $67
	sbc  l                                           ; $7118: $9d
	ld   a, e                                        ; $7119: $7b
	rst  $38                                         ; $711a: $ff
	rst  $38                                         ; $711b: $ff
	dec  c                                           ; $711c: $0d
	ld   h, l                                        ; $711d: $65
	ld   d, d                                        ; $711e: $52
	ld   [hl], h                                     ; $711f: $74
	ld   d, b                                        ; $7120: $50
	ld   h, b                                        ; $7121: $60
	sbc  d                                           ; $7122: $9a
	ld   a, [hl]                                     ; $7123: $7e
	sbc  [hl]                                        ; $7124: $9e
	dec  c                                           ; $7125: $0d
	inc  bc                                          ; $7126: $03
	ld   l, h                                        ; $7127: $6c
	dec  b                                           ; $7128: $05
	ld   h, $8d                                      ; $7129: $26 $8d
	ld   l, l                                        ; $712b: $6d
	ld   d, d                                        ; $712c: $52
	ld   a, b                                        ; $712d: $78
	inc  b                                           ; $712e: $04
	ld   a, b                                        ; $712f: $78
	ld   [hl], l                                     ; $7130: $75
	ld   h, a                                        ; $7131: $67
	sbc  l                                           ; $7132: $9d
	sbc  a                                           ; $7133: $9f
	dec  c                                           ; $7134: $0d
	nop                                              ; $7135: $00
	ld   a, [bc]                                     ; $7136: $0a
	inc  e                                           ; $7137: $1c
	ld   [bc], a                                     ; $7138: $02
	inc  b                                           ; $7139: $04
	inc  b                                           ; $713a: $04
	ld   bc, $6e6d                                   ; $713b: $01 $6d $6e
	rst  $38                                         ; $713e: $ff
	rst  $38                                         ; $713f: $ff
	dec  c                                           ; $7140: $0d
	ld   [bc], a                                     ; $7141: $02
	and  l                                           ; $7142: $a5
	ld   a, h                                        ; $7143: $7c
	dec  b                                           ; $7144: $05
	jr   nz, jr_063_70e5                             ; $7145: $20 $9e

	inc  bc                                          ; $7147: $03

jr_063_7148:
	ld   l, h                                        ; $7148: $6c
	dec  b                                           ; $7149: $05
	ld   h, $79                                      ; $714a: $26 $79
	ld   a, l                                        ; $714c: $7d
	dec  c                                           ; $714d: $0d
	ld   a, b                                        ; $714e: $78
	ld   d, d                                        ; $714f: $52
	ld   h, l                                        ; $7150: $65
	sub  l                                           ; $7151: $95
	ld   a, c                                        ; $7152: $79
	ld   h, l                                        ; $7153: $65
	ld   [hl], h                                     ; $7154: $74
	ld   [bc], a                                     ; $7155: $02
	inc  [hl]                                        ; $7156: $34
	ld   h, e                                        ; $7157: $63
	ld   d, d                                        ; $7158: $52
	ld   a, b                                        ; $7159: $78
	sbc  a                                           ; $715a: $9f
	dec  c                                           ; $715b: $0d
	nop                                              ; $715c: $00
	ld   a, [bc]                                     ; $715d: $0a
	ld   bc, $5461                                   ; $715e: $01 $61 $54
	ld   d, d                                        ; $7161: $52
	ld   d, h                                        ; $7162: $54
	dec  b                                           ; $7163: $05
	jr   nz, jr_063_71e3                             ; $7164: $20 $7d

	dec  c                                           ; $7166: $0d
	inc  bc                                          ; $7167: $03
	add  d                                           ; $7168: $82
	ld   [hl], e                                     ; $7169: $73
	ld   [hl], h                                     ; $716a: $74
	ld   [hl], l                                     ; $716b: $75
	inc  b                                           ; $716c: $04
	ld   [de], a                                     ; $716d: $12
	sbc  l                                           ; $716e: $9d
	sbc  c                                           ; $716f: $99
	halt                                             ; $7170: $76
	dec  c                                           ; $7171: $0d
	sub  [hl]                                        ; $7172: $96
	sbc  e                                           ; $7173: $9b
	ld   h, l                                        ; $7174: $65
	ld   e, l                                        ; $7175: $5d
	ld   d, b                                        ; $7176: $50
	sbc  b                                           ; $7177: $98
	adc  h                                           ; $7178: $8c
	ld   l, c                                        ; $7179: $69
	and  c                                           ; $717a: $a1
	ld   e, c                                        ; $717b: $59
	sub  a                                           ; $717c: $97
	rst  $38                                         ; $717d: $ff
	rst  $38                                         ; $717e: $ff
	dec  c                                           ; $717f: $0d
	nop                                              ; $7180: $00
	ld   a, [bc]                                     ; $7181: $0a
	dec  c                                           ; $7182: $0d
	nop                                              ; $7183: $00
	nop                                              ; $7184: $00
	rrca                                             ; $7185: $0f
	nop                                              ; $7186: $00
	ld   bc, $020c                                   ; $7187: $01 $0c $02
	ld   b, $f5                                      ; $718a: $06 $f5
	ld   d, $0f                                      ; $718c: $16 $0f
	nop                                              ; $718e: $00
	ld   bc, $ff01                                   ; $718f: $01 $01 $ff
	rst  $38                                         ; $7192: $ff
	ld   a, b                                        ; $7193: $78
	and  c                                           ; $7194: $a1
	ld   [hl], l                                     ; $7195: $75
	sub  b                                           ; $7196: $90
	ld   d, b                                        ; $7197: $50
	sbc  b                                           ; $7198: $98
	adc  h                                           ; $7199: $8c
	ld   l, c                                        ; $719a: $69
	and  c                                           ; $719b: $a1
	sbc  a                                           ; $719c: $9f
	dec  c                                           ; $719d: $0d
	nop                                              ; $719e: $00
	ld   a, [bc]                                     ; $719f: $0a
	inc  e                                           ; $71a0: $1c
	ld   [bc], a                                     ; $71a1: $02
	inc  bc                                          ; $71a2: $03
	inc  bc                                          ; $71a3: $03
	ld   bc, $ffff                                   ; $71a4: $01 $ff $ff
	ld   sp, hl                                      ; $71a7: $f9
	dec  c                                           ; $71a8: $0d
	ld   e, b                                        ; $71a9: $58
	ld   e, c                                        ; $71aa: $59
	ld   h, l                                        ; $71ab: $65
	ld   a, b                                        ; $71ac: $78
	inc  b                                           ; $71ad: $04
	ld   a, b                                        ; $71ae: $78
	sbc  a                                           ; $71af: $9f
	dec  c                                           ; $71b0: $0d
	nop                                              ; $71b1: $00
	ld   a, [bc]                                     ; $71b2: $0a
	dec  c                                           ; $71b3: $0d
	nop                                              ; $71b4: $00
	nop                                              ; $71b5: $00
	rrca                                             ; $71b6: $0f
	nop                                              ; $71b7: $00
	ld   bc, $020c                                   ; $71b8: $01 $0c $02
	ld   c, $06                                      ; $71bb: $0e $06
	inc  e                                           ; $71bd: $1c
	ld   [bc], a                                     ; $71be: $02
	ld   bc, $0101                                   ; $71bf: $01 $01 $01
	ld   a, b                                        ; $71c2: $78
	ld   e, c                                        ; $71c3: $59
	ld   a, b                                        ; $71c4: $78
	ld   e, c                                        ; $71c5: $59
	dec  b                                           ; $71c6: $05
	inc  de                                          ; $71c7: $13
	ld   h, l                                        ; $71c8: $65
	ld   d, d                                        ; $71c9: $52
	dec  c                                           ; $71ca: $0d
	ld   [bc], a                                     ; $71cb: $02
	jr   nz, jr_063_71d2                             ; $71cc: $20 $04

	xor  d                                           ; $71ce: $aa
	ld   [hl], l                                     ; $71cf: $75
	ld   h, l                                        ; $71d0: $65
	ld   l, l                                        ; $71d1: $6d

jr_063_71d2:
	sbc  l                                           ; $71d2: $9d
	sbc  a                                           ; $71d3: $9f
	dec  c                                           ; $71d4: $0d
	nop                                              ; $71d5: $00
	ld   a, [bc]                                     ; $71d6: $0a
	inc  e                                           ; $71d7: $1c
	ld   [bc], a                                     ; $71d8: $02
	nop                                              ; $71d9: $00
	nop                                              ; $71da: $00
	ld   bc, $546b                                   ; $71db: $01 $6b $54
	ld   d, d                                        ; $71de: $52
	ld   d, [hl]                                     ; $71df: $56
	ld   a, [hl]                                     ; $71e0: $7e
	inc  b                                           ; $71e1: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $71e2: $cf

jr_063_71e3:
	inc  b                                           ; $71e3: $04
	xor  d                                           ; $71e4: $aa
	sbc  [hl]                                        ; $71e5: $9e
	inc  bc                                          ; $71e6: $03
	ld   l, c                                        ; $71e7: $69
	inc  bc                                          ; $71e8: $03
	ld   a, [hl]                                     ; $71e9: $7e
	rst  ToBoot                                         ; $71ea: $c7
	cp   d                                           ; $71eb: $ba
	ret                                              ; $71ec: $c9


	dec  c                                           ; $71ed: $0d
	ld   a, b                                        ; $71ee: $78
	and  c                                           ; $71ef: $a1
	ld   [hl], l                                     ; $71f0: $75
	ld   h, a                                        ; $71f1: $67
	ld   a, h                                        ; $71f2: $7c
	ld   a, e                                        ; $71f3: $7b
	sbc  a                                           ; $71f4: $9f
	dec  c                                           ; $71f5: $0d
	nop                                              ; $71f6: $00
	ld   a, [bc]                                     ; $71f7: $0a
	ld   d, $1c                                      ; $71f8: $16 $1c
	rrca                                             ; $71fa: $0f
	ld   [bc], a                                     ; $71fb: $02
	inc  b                                           ; $71fc: $04
	ld   bc, $a502                                   ; $71fd: $01 $02 $a5
	inc  b                                           ; $7200: $04
	xor  d                                           ; $7201: $aa
	ld   a, h                                        ; $7202: $7c
	ld   e, b                                        ; $7203: $58
	dec  b                                           ; $7204: $05
	dec  c                                           ; $7205: $0d
	halt                                             ; $7206: $76
	rst  $38                                         ; $7207: $ff
	rst  $38                                         ; $7208: $ff
	dec  c                                           ; $7209: $0d
	ld   h, c                                        ; $720a: $61
	sbc  d                                           ; $720b: $9a
	adc  h                                           ; $720c: $8c
	ld   [hl], l                                     ; $720d: $75
	ld   a, h                                        ; $720e: $7c
	ld   e, b                                        ; $720f: $58
	dec  b                                           ; $7210: $05
	dec  c                                           ; $7211: $0d
	and  b                                           ; $7212: $a0
	ld   e, c                                        ; $7213: $59
	ld   a, e                                        ; $7214: $7b
	ld   [hl], h                                     ; $7215: $74
	dec  c                                           ; $7216: $0d
	ld   h, c                                        ; $7217: $61
	sbc  d                                           ; $7218: $9a
	and  b                                           ; $7219: $a0
	ld   h, e                                        ; $721a: $63
	ld   h, l                                        ; $721b: $65
	ld   d, b                                        ; $721c: $50
	ld   h, b                                        ; $721d: $60
	adc  h                                           ; $721e: $8c
	ld   h, a                                        ; $721f: $67
	sbc  l                                           ; $7220: $9d
	sbc  a                                           ; $7221: $9f
	dec  c                                           ; $7222: $0d
	nop                                              ; $7223: $00
	ld   a, [bc]                                     ; $7224: $0a
	ld   bc, $a15a                                   ; $7225: $01 $5a $a1
	ld   a, [hl]                                     ; $7228: $7e
	ld   [hl], c                                     ; $7229: $71
	ld   [hl], h                                     ; $722a: $74
	ld   e, l                                        ; $722b: $5d
	ld   l, [hl]                                     ; $722c: $6e
	ld   h, e                                        ; $722d: $63
	ld   d, d                                        ; $722e: $52
	ld   a, b                                        ; $722f: $78
	sbc  a                                           ; $7230: $9f
	dec  c                                           ; $7231: $0d
	nop                                              ; $7232: $00
	ld   a, [bc]                                     ; $7233: $0a
	rrca                                             ; $7234: $0f
	nop                                              ; $7235: $00
	ld   bc, $d001                                   ; $7236: $01 $01 $d0
	push af                                          ; $7239: $f5
	xor  h                                           ; $723a: $ac
	jp   nz, $ffff                                   ; $723b: $c2 $ff $ff

	dec  c                                           ; $723e: $0d
	nop                                              ; $723f: $00
	dec  b                                           ; $7240: $05
	add  b                                           ; $7241: $80
	ld   [hl+], a                                    ; $7242: $22
	ld   bc, $0001                                   ; $7243: $01 $01 $00
	ld   bc, $9850                                   ; $7246: $01 $50 $98
	ld   e, d                                        ; $7249: $5a
	halt                                             ; $724a: $76
	ld   d, h                                        ; $724b: $54
	ld   h, d                                        ; $724c: $62
	ld   h, h                                        ; $724d: $64
	ld   d, d                                        ; $724e: $52
	adc  h                                           ; $724f: $8c
	ld   h, a                                        ; $7250: $67
	sbc  a                                           ; $7251: $9f
	dec  c                                           ; $7252: $0d
	ld   e, d                                        ; $7253: $5a
	and  c                                           ; $7254: $a1
	ld   a, [hl]                                     ; $7255: $7e
	sbc  b                                           ; $7256: $98
	adc  h                                           ; $7257: $8c
	ld   h, a                                        ; $7258: $67
	sbc  [hl]                                        ; $7259: $9e
	ld   h, a                                        ; $725a: $67
	adc  l                                           ; $725b: $8d
	sbc  d                                           ; $725c: $9a
	ld   h, e                                        ; $725d: $63
	and  c                                           ; $725e: $a1
	sbc  a                                           ; $725f: $9f
	dec  c                                           ; $7260: $0d
	nop                                              ; $7261: $00
	ld   a, [bc]                                     ; $7262: $0a
	add  hl, bc                                      ; $7263: $09
	ld   e, $29                                      ; $7264: $1e $29
	nop                                              ; $7266: $00
	nop                                              ; $7267: $00
	nop                                              ; $7268: $00
	inc  b                                           ; $7269: $04
	add  b                                           ; $726a: $80
	db   $10                                         ; $726b: $10
	ld   bc, $20ff                                   ; $726c: $01 $ff $20
	nop                                              ; $726f: $00
	ld   c, $01                                      ; $7270: $0e $01
	rrca                                             ; $7272: $0f
	nop                                              ; $7273: $00
	ld   bc, $0102                                   ; $7274: $01 $02 $01
	ld   [bc], a                                     ; $7277: $02
	and  l                                           ; $7278: $a5

Jump_063_7279:
	inc  b                                           ; $7279: $04
	xor  d                                           ; $727a: $aa
	ld   a, l                                        ; $727b: $7d
	sbc  [hl]                                        ; $727c: $9e
	ld   h, e                                        ; $727d: $63
	ld   e, l                                        ; $727e: $5d
	sub  a                                           ; $727f: $97
	ld   h, e                                        ; $7280: $63
	and  c                                           ; $7281: $a1
	halt                                             ; $7282: $76
	dec  c                                           ; $7283: $0d
	inc  b                                           ; $7284: $04
	adc  [hl]                                        ; $7285: $8e
	inc  b                                           ; $7286: $04
	inc  c                                           ; $7287: $0c
	inc  bc                                          ; $7288: $03
	ld   [de], a                                     ; $7289: $12
	ld   [bc], a                                     ; $728a: $02
	ld   c, h                                        ; $728b: $4c
	ld   a, h                                        ; $728c: $7c
	ld   e, b                                        ; $728d: $58
	inc  bc                                          ; $728e: $03
	inc  de                                          ; $728f: $13
	sbc  b                                           ; $7290: $98
	ld   l, [hl]                                     ; $7291: $6e
	sbc  a                                           ; $7292: $9f
	dec  c                                           ; $7293: $0d
	dec  b                                           ; $7294: $05
	jr   z, @+$54                                    ; $7295: $28 $52

	ld   [hl], l                                     ; $7297: $75
	inc  b                                           ; $7298: $04
	rlca                                             ; $7299: $07
	dec  b                                           ; $729a: $05
	scf                                              ; $729b: $37
	ld   d, [hl]                                     ; $729c: $56
	ld   a, b                                        ; $729d: $78
	ld   e, l                                        ; $729e: $5d
	ld   l, a                                        ; $729f: $6f

Jump_063_72a0:
	sub  c                                           ; $72a0: $91
	sbc  a                                           ; $72a1: $9f
	dec  c                                           ; $72a2: $0d
	nop                                              ; $72a3: $00
	ld   a, [bc]                                     ; $72a4: $0a
	add  hl, de                                      ; $72a5: $19
	inc  b                                           ; $72a6: $04
	inc  bc                                          ; $72a7: $03
	ld   b, $4c                                      ; $72a8: $06 $4c
	and  b                                           ; $72aa: $a0
	adc  l                                           ; $72ab: $8d
	ld   e, d                                        ; $72ac: $5a
	ld   e, l                                        ; $72ad: $5d
	nop                                              ; $72ae: $00
	nop                                              ; $72af: $00
	dec  b                                           ; $72b0: $05
	ld   e, $a0                                      ; $72b1: $1e $a0
	adc  l                                           ; $72b3: $8d
	ld   e, d                                        ; $72b4: $5a
	ld   e, l                                        ; $72b5: $5d
	nop                                              ; $72b6: $00
	ld   bc, $b9eb                                   ; $72b7: $01 $eb $b9
	xor  e                                           ; $72ba: $ab
	inc  b                                           ; $72bb: $04
	dec  c                                           ; $72bc: $0d
	ld   b, $5a                                      ; $72bd: $06 $5a
	and  b                                           ; $72bf: $a0
	ld   h, a                                        ; $72c0: $67
	sbc  c                                           ; $72c1: $99
	nop                                              ; $72c2: $00
	ld   [bc], a                                     ; $72c3: $02
	rlca                                             ; $72c4: $07
	ld   [hl], d                                     ; $72c5: $72
	nop                                              ; $72c6: $00
	ld   [bc], a                                     ; $72c7: $02
	inc  bc                                          ; $72c8: $03
	ld   bc, $2000                                   ; $72c9: $01 $00 $20
	nop                                              ; $72cc: $00
	rlca                                             ; $72cd: $07
	and  d                                           ; $72ce: $a2
	nop                                              ; $72cf: $00
	ld   [bc], a                                     ; $72d0: $02
	inc  bc                                          ; $72d1: $03
	ld   bc, $2001                                   ; $72d2: $01 $01 $20
	nop                                              ; $72d5: $00
	rlca                                             ; $72d6: $07
	db   $e3                                         ; $72d7: $e3
	nop                                              ; $72d8: $00
	ld   [bc], a                                     ; $72d9: $02
	inc  bc                                          ; $72da: $03
	ld   bc, $2002                                   ; $72db: $01 $02 $20
	nop                                              ; $72de: $00
	ld   b, $1d                                      ; $72df: $06 $1d
	ld   bc, $000f                                   ; $72e1: $01 $0f $00
	ld   bc, $9601                                   ; $72e4: $01 $01 $96
	ld   h, l                                        ; $72e7: $65
	ld   a, [$0610]                                  ; $72e8: $fa $10 $06
	ld   c, h                                        ; $72eb: $4c
	and  b                                           ; $72ec: $a0
	adc  l                                           ; $72ed: $8d
	ld   e, d                                        ; $72ee: $5a
	ld   e, l                                        ; $72ef: $5d
	ld   l, h                                        ; $72f0: $6c
	ei                                               ; $72f1: $fb
	ld   a, [$060d]                                  ; $72f2: $fa $0d $06
	ld   c, h                                        ; $72f5: $4c
	ld   a, l                                        ; $72f6: $7d
	xor  [hl]                                        ; $72f7: $ae
	xor  $a5                                         ; $72f8: $ee $a5
	ld   a, c                                        ; $72fa: $79
	ld   h, l                                        ; $72fb: $65
	halt                                             ; $72fc: $76
	ld   e, c                                        ; $72fd: $59
	ld   a, b                                        ; $72fe: $78
	ld   d, d                                        ; $72ff: $52
	halt                                             ; $7300: $76
	ld   a, e                                        ; $7301: $7b
	sbc  a                                           ; $7302: $9f
	dec  c                                           ; $7303: $0d
	nop                                              ; $7304: $00
	ld   a, [bc]                                     ; $7305: $0a
	dec  b                                           ; $7306: $05
	ld   b, b                                        ; $7307: $40
	rst  $38                                         ; $7308: $ff
	inc  bc                                          ; $7309: $03
	rst  $38                                         ; $730a: $ff
	ld   bc, $2801                                   ; $730b: $01 $01 $28
	nop                                              ; $730e: $00
	ld   b, $40                                      ; $730f: $06 $40
	ld   bc, $000f                                   ; $7311: $01 $0f $00
	ld   bc, $9601                                   ; $7314: $01 $01 $96
	ld   h, l                                        ; $7317: $65
	ld   a, [$0510]                                  ; $7318: $fa $10 $05
	ld   e, $a0                                      ; $731b: $1e $a0
	adc  l                                           ; $731d: $8d
	ld   e, d                                        ; $731e: $5a
	ld   e, l                                        ; $731f: $5d
	ld   l, h                                        ; $7320: $6c
	ei                                               ; $7321: $fb
	ld   a, [$0dfa]                                  ; $7322: $fa $fa $0d
	rst  $38                                         ; $7325: $ff
	rst  $38                                         ; $7326: $ff
	and  c                                           ; $7327: $a1
	ld   sp, hl                                      ; $7328: $f9
	db   $10                                         ; $7329: $10
	ld   [bc], a                                     ; $732a: $02
	and  l                                           ; $732b: $a5
	ld   e, c                                        ; $732c: $59
	sub  a                                           ; $732d: $97
	inc  bc                                          ; $732e: $03
	ld   l, l                                        ; $732f: $6d
	dec  b                                           ; $7330: $05
	add  hl, de                                      ; $7331: $19
	ld   a, c                                        ; $7332: $79
	ld   [bc], a                                     ; $7333: $02
	ld   a, a                                        ; $7334: $7f
	ld   e, l                                        ; $7335: $5d
	dec  c                                           ; $7336: $0d
	nop                                              ; $7337: $00
	dec  b                                           ; $7338: $05
	ld   b, b                                        ; $7339: $40
	rst  $38                                         ; $733a: $ff
	inc  bc                                          ; $733b: $03
	rst  $38                                         ; $733c: $ff
	ld   bc, $2801                                   ; $733d: $01 $01 $28
	nop                                              ; $7340: $00
	ld   bc, $66a1                                   ; $7341: $01 $a1 $66
	sub  c                                           ; $7344: $91
	ld   a, b                                        ; $7345: $78
	ld   d, d                                        ; $7346: $52
	and  c                                           ; $7347: $a1
	ld   l, [hl]                                     ; $7348: $6e
	sub  [hl]                                        ; $7349: $96
	ld   a, b                                        ; $734a: $78
	rst  $38                                         ; $734b: $ff
	rst  $38                                         ; $734c: $ff
	dec  c                                           ; $734d: $0d
	nop                                              ; $734e: $00
	ld   a, [bc]                                     ; $734f: $0a
	ld   b, $35                                      ; $7350: $06 $35
	nop                                              ; $7352: $00
	rrca                                             ; $7353: $0f
	nop                                              ; $7354: $00
	ld   bc, $9601                                   ; $7355: $01 $01 $96
	ld   h, l                                        ; $7358: $65
	ld   a, [$eb10]                                  ; $7359: $fa $10 $eb
	cp   c                                           ; $735c: $b9
	xor  e                                           ; $735d: $ab
	inc  b                                           ; $735e: $04
	dec  c                                           ; $735f: $0d
	ld   b, $5a                                      ; $7360: $06 $5a
	ld   h, a                                        ; $7362: $67
	sbc  c                                           ; $7363: $99
	ld   l, h                                        ; $7364: $6c
	ld   a, [$ff0d]                                  ; $7365: $fa $0d $ff
	rst  $38                                         ; $7368: $ff
	ld   [hl], h                                     ; $7369: $74
	sbc  [hl]                                        ; $736a: $9e
	ld   l, e                                        ; $736b: $6b
	and  c                                           ; $736c: $a1
	ld   a, b                                        ; $736d: $78
	ld   h, c                                        ; $736e: $61
	halt                                             ; $736f: $76
	ld   h, l                                        ; $7370: $65
	ld   [hl], h                                     ; $7371: $74
	sbc  c                                           ; $7372: $99
	inc  bc                                          ; $7373: $03
	ld   l, a                                        ; $7374: $6f
	ld   [bc], a                                     ; $7375: $02
	xor  c                                           ; $7376: $a9
	dec  c                                           ; $7377: $0d
	nop                                              ; $7378: $00
	dec  b                                           ; $7379: $05
	ld   b, b                                        ; $737a: $40
	rst  $38                                         ; $737b: $ff
	inc  bc                                          ; $737c: $03
	rst  $38                                         ; $737d: $ff
	ld   bc, $2801                                   ; $737e: $01 $01 $28
	nop                                              ; $7381: $00
	ld   bc, $5278                                   ; $7382: $01 $78 $52
	sub  [hl]                                        ; $7385: $96
	sbc  a                                           ; $7386: $9f
	dec  c                                           ; $7387: $0d
	nop                                              ; $7388: $00
	ld   a, [bc]                                     ; $7389: $0a
	ld   b, $35                                      ; $738a: $06 $35
	nop                                              ; $738c: $00
	rrca                                             ; $738d: $0f
	nop                                              ; $738e: $00
	ld   bc, $8c01                                   ; $738f: $01 $01 $8c
	ld   l, b                                        ; $7392: $68
	ld   a, l                                        ; $7393: $7d
	rst  $38                                         ; $7394: $ff
	rst  $38                                         ; $7395: $ff
	dec  c                                           ; $7396: $0d
	ld   [hl], a                                     ; $7397: $77
	ld   d, h                                        ; $7398: $54
	ld   h, l                                        ; $7399: $65
	sub  [hl]                                        ; $739a: $96
	ld   d, h                                        ; $739b: $54
	ld   e, c                                        ; $739c: $59
	rst  $38                                         ; $739d: $ff
	rst  $38                                         ; $739e: $ff
	rst  $38                                         ; $739f: $ff
	rst  $38                                         ; $73a0: $ff
	dec  c                                           ; $73a1: $0d
	nop                                              ; $73a2: $00
	ld   a, [bc]                                     ; $73a3: $0a
	dec  b                                           ; $73a4: $05
	ld   b, b                                        ; $73a5: $40
	rst  $38                                         ; $73a6: $ff
	inc  bc                                          ; $73a7: $03
	rst  $38                                         ; $73a8: $ff
	ld   bc, $2801                                   ; $73a9: $01 $01 $28
	nop                                              ; $73ac: $00
	ld   b, $35                                      ; $73ad: $06 $35
	nop                                              ; $73af: $00
	add  hl, de                                      ; $73b0: $19
	inc  b                                           ; $73b1: $04
	inc  bc                                          ; $73b2: $03
	inc  b                                           ; $73b3: $04
	and  l                                           ; $73b4: $a5
	and  b                                           ; $73b5: $a0
	inc  b                                           ; $73b6: $04
	rlca                                             ; $73b7: $07
	sbc  c                                           ; $73b8: $99
	nop                                              ; $73b9: $00
	nop                                              ; $73ba: $00
	inc  b                                           ; $73bb: $04
	and  l                                           ; $73bc: $a5
	and  b                                           ; $73bd: $a0
	ld   a, d                                        ; $73be: $7a
	ld   e, [hl]                                     ; $73bf: $5e
	nop                                              ; $73c0: $00
	ld   bc, $b1d6                                   ; $73c1: $01 $d6 $b1
	and  b                                           ; $73c4: $a0
	inc  bc                                          ; $73c5: $03
	dec  de                                          ; $73c6: $1b
	sbc  c                                           ; $73c7: $99
	nop                                              ; $73c8: $00
	ld   [bc], a                                     ; $73c9: $02
	rlca                                             ; $73ca: $07
	ld   a, b                                        ; $73cb: $78
	ld   bc, $0302                                   ; $73cc: $01 $02 $03
	ld   bc, $2000                                   ; $73cf: $01 $00 $20
	nop                                              ; $73d2: $00
	rlca                                             ; $73d3: $07
	sbc  h                                           ; $73d4: $9c
	ld   bc, $0302                                   ; $73d5: $01 $02 $03
	ld   bc, $2001                                   ; $73d8: $01 $01 $20
	nop                                              ; $73db: $00
	rlca                                             ; $73dc: $07
	call nc, $0201                                   ; $73dd: $d4 $01 $02
	inc  bc                                          ; $73e0: $03
	ld   bc, $2002                                   ; $73e1: $01 $02 $20
	nop                                              ; $73e4: $00
	ld   b, $16                                      ; $73e5: $06 $16
	ld   [bc], a                                     ; $73e7: $02
	rrca                                             ; $73e8: $0f
	nop                                              ; $73e9: $00
	ld   bc, $0601                                   ; $73ea: $01 $01 $06
	ld   c, h                                        ; $73ed: $4c
	and  b                                           ; $73ee: $a0
	adc  l                                           ; $73ef: $8d
	ld   e, d                                        ; $73f0: $5a
	ld   d, d                                        ; $73f1: $52
	ld   l, l                                        ; $73f2: $6d
	sub  a                                           ; $73f3: $97
	sbc  [hl]                                        ; $73f4: $9e
	inc  b                                           ; $73f5: $04
	and  l                                           ; $73f6: $a5
	and  b                                           ; $73f7: $a0
	inc  b                                           ; $73f8: $04
	rlca                                             ; $73f9: $07
	ld   [hl], h                                     ; $73fa: $74
	halt                                             ; $73fb: $76
	rst  $38                                         ; $73fc: $ff
	dec  c                                           ; $73fd: $0d
	nop                                              ; $73fe: $00
	ld   a, [bc]                                     ; $73ff: $0a
	dec  b                                           ; $7400: $05
	ld   b, b                                        ; $7401: $40
	rst  $38                                         ; $7402: $ff
	inc  bc                                          ; $7403: $03
	rst  $38                                         ; $7404: $ff
	ld   bc, $2801                                   ; $7405: $01 $01 $28
	nop                                              ; $7408: $00
	ld   b, $39                                      ; $7409: $06 $39
	ld   [bc], a                                     ; $740b: $02
	rrca                                             ; $740c: $0f
	nop                                              ; $740d: $00
	ld   bc, $0601                                   ; $740e: $01 $01 $06
	ld   c, h                                        ; $7411: $4c
	and  b                                           ; $7412: $a0
	adc  l                                           ; $7413: $8d
	ld   e, d                                        ; $7414: $5a
	ld   d, d                                        ; $7415: $52
	ld   l, l                                        ; $7416: $6d
	sub  a                                           ; $7417: $97
	sbc  [hl]                                        ; $7418: $9e
	inc  b                                           ; $7419: $04
	and  l                                           ; $741a: $a5
	and  b                                           ; $741b: $a0
	ld   a, d                                        ; $741c: $7a
	ld   d, d                                        ; $741d: $52
	ld   [hl], l                                     ; $741e: $75
	dec  c                                           ; $741f: $0d
	rst  $38                                         ; $7420: $ff
	rst  $38                                         ; $7421: $ff
	ld   a, d                                        ; $7422: $7a
	ld   d, d                                        ; $7423: $52
	ld   h, [hl]                                     ; $7424: $66
	sub  c                                           ; $7425: $91
	pop  bc                                          ; $7426: $c1
	db   $e3                                         ; $7427: $e3
	ld   [hl], l                                     ; $7428: $75
	ld   h, l                                        ; $7429: $65
	sub  l                                           ; $742a: $95
	sbc  a                                           ; $742b: $9f
	dec  c                                           ; $742c: $0d
	nop                                              ; $742d: $00
	dec  b                                           ; $742e: $05
	ld   b, b                                        ; $742f: $40
	rst  $38                                         ; $7430: $ff
	inc  bc                                          ; $7431: $03
	rst  $38                                         ; $7432: $ff
	ld   bc, $2801                                   ; $7433: $01 $01 $28
	nop                                              ; $7436: $00
	ld   bc, $0704                                   ; $7437: $01 $04 $07
	ld   a, b                                        ; $743a: $78
	ld   e, e                                        ; $743b: $5b
	sub  c                                           ; $743c: $91
	sbc  a                                           ; $743d: $9f
	dec  c                                           ; $743e: $0d
	nop                                              ; $743f: $00
	ld   a, [bc]                                     ; $7440: $0a
	ld   b, $40                                      ; $7441: $06 $40
	ld   bc, $000f                                   ; $7443: $01 $0f $00
	ld   bc, $0601                                   ; $7446: $01 $01 $06
	ld   c, h                                        ; $7449: $4c
	and  b                                           ; $744a: $a0
	adc  l                                           ; $744b: $8d
	ld   e, d                                        ; $744c: $5a
	ld   d, d                                        ; $744d: $52
	ld   l, l                                        ; $744e: $6d
	sub  a                                           ; $744f: $97
	sbc  [hl]                                        ; $7450: $9e
	sub  $b1                                         ; $7451: $d6 $b1
	and  b                                           ; $7453: $a0
	inc  bc                                          ; $7454: $03
	dec  de                                          ; $7455: $1b
	ld   [hl], c                                     ; $7456: $71
	ld   [hl], h                                     ; $7457: $74
	dec  c                                           ; $7458: $0d
	rst  $38                                         ; $7459: $ff
	rst  $38                                         ; $745a: $ff
	ld   [hl], h                                     ; $745b: $74
	sbc  [hl]                                        ; $745c: $9e
	cp   b                                           ; $745d: $b8
	rst  $28                                         ; $745e: $ef
	and  a                                           ; $745f: $a7
	ret                                              ; $7460: $c9


	ld   e, d                                        ; $7461: $5a
	inc  bc                                          ; $7462: $03
	ld   c, [hl]                                     ; $7463: $4e
	inc  bc                                          ; $7464: $03
	ld   l, e                                        ; $7465: $6b
	ld   a, c                                        ; $7466: $79
	dec  c                                           ; $7467: $0d
	nop                                              ; $7468: $00
	dec  b                                           ; $7469: $05
	ld   b, b                                        ; $746a: $40
	rst  $38                                         ; $746b: $ff
	inc  bc                                          ; $746c: $03
	rst  $38                                         ; $746d: $ff
	ld   bc, $2801                                   ; $746e: $01 $01 $28

Call_063_7471:
	nop                                              ; $7471: $00
	ld   bc, $b1d6                                   ; $7472: $01 $d6 $b1
	and  b                                           ; $7475: $a0
	ld   h, e                                        ; $7476: $63
	ld   a, [hl]                                     ; $7477: $7e
	ld   d, d                                        ; $7478: $52
	ld   l, a                                        ; $7479: $6f
	sub  c                                           ; $747a: $91
	pop  bc                                          ; $747b: $c1
	db   $e3                                         ; $747c: $e3
	ld   l, [hl]                                     ; $747d: $6e
	sub  [hl]                                        ; $747e: $96
	sbc  a                                           ; $747f: $9f
	dec  c                                           ; $7480: $0d
	nop                                              ; $7481: $00
	ld   a, [bc]                                     ; $7482: $0a
	ld   b, $40                                      ; $7483: $06 $40
	ld   bc, $000f                                   ; $7485: $01 $0f $00
	ld   bc, $0301                                   ; $7488: $01 $01 $03
	ld   l, b                                        ; $748b: $68
	ld   a, c                                        ; $748c: $79
	rst  $38                                         ; $748d: $ff
	rst  $38                                         ; $748e: $ff
	dec  c                                           ; $748f: $0d
	ld   [hl], a                                     ; $7490: $77
	ld   d, h                                        ; $7491: $54
	ld   h, l                                        ; $7492: $65
	sub  [hl]                                        ; $7493: $96
	ld   d, h                                        ; $7494: $54
	ld   e, c                                        ; $7495: $59
	rst  $38                                         ; $7496: $ff
	rst  $38                                         ; $7497: $ff
	rst  $38                                         ; $7498: $ff
	rst  $38                                         ; $7499: $ff
	dec  c                                           ; $749a: $0d
	nop                                              ; $749b: $00
	ld   a, [bc]                                     ; $749c: $0a
	dec  b                                           ; $749d: $05
	ld   b, b                                        ; $749e: $40
	rst  $38                                         ; $749f: $ff
	inc  bc                                          ; $74a0: $03
	rst  $38                                         ; $74a1: $ff
	ld   bc, $2801                                   ; $74a2: $01 $01 $28
	nop                                              ; $74a5: $00
	ld   b, $40                                      ; $74a6: $06 $40
	ld   bc, $0419                                   ; $74a8: $01 $19 $04
	inc  bc                                          ; $74ab: $03
	inc  b                                           ; $74ac: $04
	ld   l, d                                        ; $74ad: $6a
	and  b                                           ; $74ae: $a0
	halt                                             ; $74af: $76
	halt                                             ; $74b0: $76
	ld   a, h                                        ; $74b1: $7c
	ld   d, [hl]                                     ; $74b2: $56
	sbc  c                                           ; $74b3: $99
	nop                                              ; $74b4: $00
	nop                                              ; $74b5: $00
	ld   e, c                                        ; $74b6: $59
	ld   e, d                                        ; $74b7: $5a
	adc  l                                           ; $74b8: $8d
	ld   a, c                                        ; $74b9: $79
	adc  l                                           ; $74ba: $8d
	halt                                             ; $74bb: $76
	sbc  d                                           ; $74bc: $9a
	sbc  c                                           ; $74bd: $99
	nop                                              ; $74be: $00
	ld   bc, $6a04                                   ; $74bf: $01 $04 $6a
	and  b                                           ; $74c2: $a0
	ld   d, b                                        ; $74c3: $50
	adc  [hl]                                        ; $74c4: $8e
	nop                                              ; $74c5: $00
	ld   [bc], a                                     ; $74c6: $02
	rlca                                             ; $74c7: $07
	ld   [hl], l                                     ; $74c8: $75
	ld   [bc], a                                     ; $74c9: $02
	ld   [bc], a                                     ; $74ca: $02
	inc  bc                                          ; $74cb: $03
	ld   bc, $2000                                   ; $74cc: $01 $00 $20
	nop                                              ; $74cf: $00
	rlca                                             ; $74d0: $07
	sub  l                                           ; $74d1: $95
	ld   [bc], a                                     ; $74d2: $02
	ld   [bc], a                                     ; $74d3: $02
	inc  bc                                          ; $74d4: $03
	ld   bc, $2001                                   ; $74d5: $01 $01 $20
	nop                                              ; $74d8: $00
	rlca                                             ; $74d9: $07
	rst  $10                                         ; $74da: $d7
	ld   [bc], a                                     ; $74db: $02
	ld   [bc], a                                     ; $74dc: $02
	inc  bc                                          ; $74dd: $03
	ld   bc, $2002                                   ; $74de: $01 $02 $20
	nop                                              ; $74e1: $00
	ld   b, $08                                      ; $74e2: $06 $08
	inc  bc                                          ; $74e4: $03
	rrca                                             ; $74e5: $0f
	nop                                              ; $74e6: $00
	ld   bc, $6b01                                   ; $74e7: $01 $01 $6b
	ld   h, l                                        ; $74ea: $65
	ld   [hl], h                                     ; $74eb: $74
	sbc  [hl]                                        ; $74ec: $9e
	inc  b                                           ; $74ed: $04
	ld   l, d                                        ; $74ee: $6a
	and  b                                           ; $74ef: $a0
	halt                                             ; $74f0: $76
	halt                                             ; $74f1: $76
	ld   a, h                                        ; $74f2: $7c
	ld   d, [hl]                                     ; $74f3: $56
	ld   [hl], h                                     ; $74f4: $74
	sbc  a                                           ; $74f5: $9f
	dec  c                                           ; $74f6: $0d
	nop                                              ; $74f7: $00
	ld   a, [bc]                                     ; $74f8: $0a
	dec  b                                           ; $74f9: $05
	ld   b, b                                        ; $74fa: $40
	rst  $38                                         ; $74fb: $ff
	inc  bc                                          ; $74fc: $03
	rst  $38                                         ; $74fd: $ff
	ld   bc, $2801                                   ; $74fe: $01 $01 $28
	nop                                              ; $7501: $00
	ld   b, $2b                                      ; $7502: $06 $2b
	inc  bc                                          ; $7504: $03
	rrca                                             ; $7505: $0f
	nop                                              ; $7506: $00
	ld   bc, $6b01                                   ; $7507: $01 $01 $6b
	ld   h, l                                        ; $750a: $65
	ld   [hl], h                                     ; $750b: $74
	sbc  [hl]                                        ; $750c: $9e
	ld   e, c                                        ; $750d: $59
	ld   e, d                                        ; $750e: $5a
	adc  l                                           ; $750f: $8d
	ld   a, c                                        ; $7510: $79
	adc  l                                           ; $7511: $8d
	halt                                             ; $7512: $76
	sbc  d                                           ; $7513: $9a
	ld   [hl], h                                     ; $7514: $74
	rst  $38                                         ; $7515: $ff
	rst  $38                                         ; $7516: $ff
	dec  c                                           ; $7517: $0d
	and  c                                           ; $7518: $a1
	ld   sp, hl                                      ; $7519: $f9
	db   $10                                         ; $751a: $10
	ld   d, d                                        ; $751b: $52
	ld   e, a                                        ; $751c: $5f
	ld   a, b                                        ; $751d: $78
	ld   d, d                                        ; $751e: $52
	sbc  [hl]                                        ; $751f: $9e
	ld   d, d                                        ; $7520: $52
	ld   e, a                                        ; $7521: $5f
	ld   a, b                                        ; $7522: $78
	ld   d, d                                        ; $7523: $52
	sbc  a                                           ; $7524: $9f
	dec  c                                           ; $7525: $0d
	nop                                              ; $7526: $00
	dec  b                                           ; $7527: $05
	ld   b, b                                        ; $7528: $40
	rst  $38                                         ; $7529: $ff
	inc  bc                                          ; $752a: $03
	rst  $38                                         ; $752b: $ff
	ld   bc, $2801                                   ; $752c: $01 $01 $28
	nop                                              ; $752f: $00
	ld   bc, $5272                                   ; $7530: $01 $72 $52
	inc  bc                                          ; $7533: $03
	sub  h                                           ; $7534: $94
	inc  b                                           ; $7535: $04
	sbc  [hl]                                        ; $7536: $9e
	ld   a, c                                        ; $7537: $79
	adc  l                                           ; $7538: $8d
	halt                                             ; $7539: $76
	sbc  d                                           ; $753a: $9a
	ld   [hl], h                                     ; $753b: $74
	ld   h, l                                        ; $753c: $65
	adc  h                                           ; $753d: $8c
	ld   [hl], c                                     ; $753e: $71
	ld   l, l                                        ; $753f: $6d
	rst  $38                                         ; $7540: $ff
	dec  c                                           ; $7541: $0d
	nop                                              ; $7542: $00
	ld   a, [bc]                                     ; $7543: $0a
	ld   b, $39                                      ; $7544: $06 $39
	ld   [bc], a                                     ; $7546: $02
	rrca                                             ; $7547: $0f
	nop                                              ; $7548: $00
	ld   bc, $6b01                                   ; $7549: $01 $01 $6b
	ld   h, l                                        ; $754c: $65
	ld   [hl], h                                     ; $754d: $74
	sbc  [hl]                                        ; $754e: $9e
	inc  b                                           ; $754f: $04
	ld   l, d                                        ; $7550: $6a
	and  b                                           ; $7551: $a0
	ld   d, b                                        ; $7552: $50
	adc  [hl]                                        ; $7553: $8e
	sbc  a                                           ; $7554: $9f
	dec  c                                           ; $7555: $0d

Call_063_7556:
	rst  $38                                         ; $7556: $ff
	rst  $38                                         ; $7557: $ff
	rst  $38                                         ; $7558: $ff
	rst  $38                                         ; $7559: $ff
	and  c                                           ; $755a: $a1
	ld   sp, hl                                      ; $755b: $f9
	dec  c                                           ; $755c: $0d
	nop                                              ; $755d: $00
	dec  b                                           ; $755e: $05
	ld   b, b                                        ; $755f: $40
	rst  $38                                         ; $7560: $ff
	inc  bc                                          ; $7561: $03
	rst  $38                                         ; $7562: $ff
	ld   bc, $2801                                   ; $7563: $01 $01 $28
	nop                                              ; $7566: $00
	ld   bc, $a150                                   ; $7567: $01 $50 $a1
	ld   h, [hl]                                     ; $756a: $66
	sub  c                                           ; $756b: $91
	pop  bc                                          ; $756c: $c1
	db   $e3                                         ; $756d: $e3
	ld   [hl], l                                     ; $756e: $75
	ld   h, l                                        ; $756f: $65
	sub  l                                           ; $7570: $95
	ld   sp, hl                                      ; $7571: $f9
	dec  c                                           ; $7572: $0d
	nop                                              ; $7573: $00
	ld   a, [bc]                                     ; $7574: $0a
	ld   b, $39                                      ; $7575: $06 $39
	ld   [bc], a                                     ; $7577: $02
	rrca                                             ; $7578: $0f
	nop                                              ; $7579: $00
	ld   bc, $6b01                                   ; $757a: $01 $01 $6b
	ld   h, l                                        ; $757d: $65
	ld   [hl], h                                     ; $757e: $74
	rst  $38                                         ; $757f: $ff
	rst  $38                                         ; $7580: $ff
	dec  c                                           ; $7581: $0d
	ld   [hl], a                                     ; $7582: $77
	ld   d, h                                        ; $7583: $54
	ld   h, l                                        ; $7584: $65
	sub  [hl]                                        ; $7585: $96
	ld   d, h                                        ; $7586: $54
	ld   e, c                                        ; $7587: $59
	rst  $38                                         ; $7588: $ff
	rst  $38                                         ; $7589: $ff
	rst  $38                                         ; $758a: $ff
	rst  $38                                         ; $758b: $ff
	dec  c                                           ; $758c: $0d
	nop                                              ; $758d: $00
	ld   a, [bc]                                     ; $758e: $0a
	dec  b                                           ; $758f: $05
	ld   b, b                                        ; $7590: $40
	rst  $38                                         ; $7591: $ff
	inc  bc                                          ; $7592: $03
	rst  $38                                         ; $7593: $ff
	ld   bc, $2801                                   ; $7594: $01 $01 $28
	nop                                              ; $7597: $00
	ld   b, $39                                      ; $7598: $06 $39
	ld   [bc], a                                     ; $759a: $02
	add  hl, de                                      ; $759b: $19
	inc  b                                           ; $759c: $04
	inc  bc                                          ; $759d: $03
	ret  nc                                          ; $759e: $d0

	push af                                          ; $759f: $f5
	xor  h                                           ; $75a0: $ac
	jp   nz, $03a0                                   ; $75a1: $c2 $a0 $03

	and  b                                           ; $75a4: $a0
	ld   [hl], d                                     ; $75a5: $72
	nop                                              ; $75a6: $00
	nop                                              ; $75a7: $00
	ret                                              ; $75a8: $c9


	push af                                          ; $75a9: $f5
	xor  h                                           ; $75aa: $ac
	jp   nz, $03a0                                   ; $75ab: $c2 $a0 $03

	and  b                                           ; $75ae: $a0
	ld   [hl], d                                     ; $75af: $72
	nop                                              ; $75b0: $00
	ld   bc, $f5c9                                   ; $75b1: $01 $c9 $f5
	xor  h                                           ; $75b4: $ac
	push bc                                          ; $75b5: $c5
	and  b                                           ; $75b6: $a0
	inc  bc                                          ; $75b7: $03
	ld   l, d                                        ; $75b8: $6a
	add  a                                           ; $75b9: $87
	sbc  c                                           ; $75ba: $99
	nop                                              ; $75bb: $00
	ld   [bc], a                                     ; $75bc: $02
	rlca                                             ; $75bd: $07
	ld   l, e                                        ; $75be: $6b
	inc  bc                                          ; $75bf: $03
	ld   [bc], a                                     ; $75c0: $02
	inc  bc                                          ; $75c1: $03
	ld   bc, $2000                                   ; $75c2: $01 $00 $20
	nop                                              ; $75c5: $00
	rlca                                             ; $75c6: $07
	sub  e                                           ; $75c7: $93
	inc  bc                                          ; $75c8: $03
	ld   [bc], a                                     ; $75c9: $02
	inc  bc                                          ; $75ca: $03
	ld   bc, $2001                                   ; $75cb: $01 $01 $20
	nop                                              ; $75ce: $00
	rlca                                             ; $75cf: $07
	call z, $0203                                    ; $75d0: $cc $03 $02
	inc  bc                                          ; $75d3: $03
	ld   bc, $2002                                   ; $75d4: $01 $02 $20
	nop                                              ; $75d7: $00
	ld   b, $21                                      ; $75d8: $06 $21
	inc  b                                           ; $75da: $04
	rrca                                             ; $75db: $0f
	nop                                              ; $75dc: $00
	ld   bc, $d001                                   ; $75dd: $01 $01 $d0
	push af                                          ; $75e0: $f5
	xor  h                                           ; $75e1: $ac
	jp   nz, $ff7d                                   ; $75e2: $c2 $7d $ff

	rst  $38                                         ; $75e5: $ff
	sub  [hl]                                        ; $75e6: $96
	ld   h, l                                        ; $75e7: $65
	ld   a, [$6f0d]                                  ; $75e8: $fa $0d $6f
	sub  c                                           ; $75eb: $91
	and  c                                           ; $75ec: $a1
	halt                                             ; $75ed: $76
	inc  bc                                          ; $75ee: $03
	and  b                                           ; $75ef: $a0
	ld   [hl], c                                     ; $75f0: $71
	ld   l, l                                        ; $75f1: $6d
	ld   l, h                                        ; $75f2: $6c
	sbc  a                                           ; $75f3: $9f
	dec  c                                           ; $75f4: $0d
	nop                                              ; $75f5: $00
	ld   a, [bc]                                     ; $75f6: $0a
	dec  b                                           ; $75f7: $05
	ld   b, b                                        ; $75f8: $40
	rst  $38                                         ; $75f9: $ff
	inc  bc                                          ; $75fa: $03
	rst  $38                                         ; $75fb: $ff
	ld   bc, $2801                                   ; $75fc: $01 $01 $28
	nop                                              ; $75ff: $00
	ld   b, $40                                      ; $7600: $06 $40
	inc  b                                           ; $7602: $04
	rrca                                             ; $7603: $0f
	nop                                              ; $7604: $00
	ld   bc, $c901                                   ; $7605: $01 $01 $c9
	push af                                          ; $7608: $f5
	xor  h                                           ; $7609: $ac
	jp   nz, Jump_063_6fa0                           ; $760a: $c2 $a0 $6f

	sub  c                                           ; $760d: $91
	and  c                                           ; $760e: $a1
	halt                                             ; $760f: $76
	inc  bc                                          ; $7610: $03
	and  b                                           ; $7611: $a0
	ld   [hl], c                                     ; $7612: $71
	ld   [hl], h                                     ; $7613: $74
	dec  c                                           ; $7614: $0d
	rst  $38                                         ; $7615: $ff
	rst  $38                                         ; $7616: $ff
	ld   [hl], a                                     ; $7617: $77
	ld   h, c                                        ; $7618: $61
	add  [hl]                                        ; $7619: $86
	ld   [bc], a                                     ; $761a: $02
	ld   a, a                                        ; $761b: $7f
	ld   e, l                                        ; $761c: $5d
	and  c                                           ; $761d: $a1
	ld   l, [hl]                                     ; $761e: $6e
	inc  b                                           ; $761f: $04
	ld   l, l                                        ; $7620: $6d
	ld   a, l                                        ; $7621: $7d
	ld   sp, hl                                      ; $7622: $f9
	dec  c                                           ; $7623: $0d
	nop                                              ; $7624: $00
	dec  b                                           ; $7625: $05
	ld   b, b                                        ; $7626: $40
	rst  $38                                         ; $7627: $ff
	inc  bc                                          ; $7628: $03
	rst  $38                                         ; $7629: $ff
	ld   bc, $2801                                   ; $762a: $01 $01 $28
	nop                                              ; $762d: $00
	ld   bc, $5a6f                                   ; $762e: $01 $6f $5a
	ld   d, h                                        ; $7631: $54
	ld   [hl], l                                     ; $7632: $75
	ld   h, l                                        ; $7633: $65
	sub  l                                           ; $7634: $95
	sbc  a                                           ; $7635: $9f
	dec  c                                           ; $7636: $0d
	nop                                              ; $7637: $00
	ld   a, [bc]                                     ; $7638: $0a
	ld   b, $2b                                      ; $7639: $06 $2b
	inc  bc                                          ; $763b: $03
	rrca                                             ; $763c: $0f
	nop                                              ; $763d: $00
	ld   bc, $c901                                   ; $763e: $01 $01 $c9
	push af                                          ; $7641: $f5
	xor  h                                           ; $7642: $ac
	push bc                                          ; $7643: $c5
	and  b                                           ; $7644: $a0
	inc  bc                                          ; $7645: $03
	ld   l, d                                        ; $7646: $6a
	add  a                                           ; $7647: $87
	ld   [hl], h                                     ; $7648: $74
	sbc  [hl]                                        ; $7649: $9e
	inc  bc                                          ; $764a: $03
	db   $dd                                         ; $764b: $dd
	ld   a, c                                        ; $764c: $79
	inc  bc                                          ; $764d: $03
	ld   c, [hl]                                     ; $764e: $4e
	ld   [hl], d                                     ; $764f: $72
	sbc  a                                           ; $7650: $9f
	dec  c                                           ; $7651: $0d
	ld   a, b                                        ; $7652: $78
	db   $fc                                         ; $7653: $fc
	and  c                                           ; $7654: $a1
	ld   l, a                                        ; $7655: $6f
	sub  c                                           ; $7656: $91
	ld   [hl], c                                     ; $7657: $71
	ld   [hl], h                                     ; $7658: $74
	rst  $38                                         ; $7659: $ff
	rst  $38                                         ; $765a: $ff
	dec  c                                           ; $765b: $0d
	nop                                              ; $765c: $00
	ld   a, [bc]                                     ; $765d: $0a
	ld   bc, $a16b                                   ; $765e: $01 $6b $a1
	ld   a, b                                        ; $7661: $78
	ld   h, c                                        ; $7662: $61
	halt                                             ; $7663: $76
	ld   [bc], a                                     ; $7664: $02
	sbc  l                                           ; $7665: $9d
	ld   [hl], c                                     ; $7666: $71
	ld   [hl], h                                     ; $7667: $74
	sbc  c                                           ; $7668: $99
	inc  b                                           ; $7669: $04
	ld   a, d                                        ; $766a: $7a
	ld   [bc], a                                     ; $766b: $02
	ld   a, e                                        ; $766c: $7b
	ld   h, [hl]                                     ; $766d: $66
	sub  c                                           ; $766e: $91
	dec  c                                           ; $766f: $0d
	ld   a, b                                        ; $7670: $78
	ld   d, d                                        ; $7671: $52
	sub  [hl]                                        ; $7672: $96
	sbc  a                                           ; $7673: $9f
	dec  c                                           ; $7674: $0d
	nop                                              ; $7675: $00
	dec  b                                           ; $7676: $05
	ld   b, b                                        ; $7677: $40
	rst  $38                                         ; $7678: $ff
	inc  bc                                          ; $7679: $03
	rst  $38                                         ; $767a: $ff
	ld   bc, $2801                                   ; $767b: $01 $01 $28
	nop                                              ; $767e: $00
	ld   bc, $7003                                   ; $767f: $01 $03 $70
	ld   e, l                                        ; $7682: $5d
	ld   h, l                                        ; $7683: $65
	ld   l, l                                        ; $7684: $6d
	ld   e, l                                        ; $7685: $5d
	ld   h, l                                        ; $7686: $65
	ld   a, b                                        ; $7687: $78
	ld   e, e                                        ; $7688: $5b
	sub  c                                           ; $7689: $91
	sbc  a                                           ; $768a: $9f
	dec  c                                           ; $768b: $0d
	nop                                              ; $768c: $00
	ld   a, [bc]                                     ; $768d: $0a
	ld   b, $2b                                      ; $768e: $06 $2b
	inc  bc                                          ; $7690: $03
	rrca                                             ; $7691: $0f
	nop                                              ; $7692: $00
	ld   bc, $ff01                                   ; $7693: $01 $01 $ff
	rst  $38                                         ; $7696: $ff
	ld   [hl], a                                     ; $7697: $77
	ld   d, h                                        ; $7698: $54
	ld   h, l                                        ; $7699: $65
	sub  [hl]                                        ; $769a: $96
	ld   d, h                                        ; $769b: $54
	ld   e, c                                        ; $769c: $59
	rst  $38                                         ; $769d: $ff
	rst  $38                                         ; $769e: $ff
	rst  $38                                         ; $769f: $ff
	rst  $38                                         ; $76a0: $ff
	dec  c                                           ; $76a1: $0d
	nop                                              ; $76a2: $00
	ld   a, [bc]                                     ; $76a3: $0a
	dec  b                                           ; $76a4: $05
	ld   b, b                                        ; $76a5: $40
	rst  $38                                         ; $76a6: $ff
	inc  bc                                          ; $76a7: $03
	rst  $38                                         ; $76a8: $ff
	ld   bc, $2801                                   ; $76a9: $01 $01 $28
	nop                                              ; $76ac: $00
	ld   b, $2b                                      ; $76ad: $06 $2b
	inc  bc                                          ; $76af: $03
	add  hl, de                                      ; $76b0: $19
	inc  b                                           ; $76b1: $04
	inc  bc                                          ; $76b2: $03
	ld   h, l                                        ; $76b3: $65
	and  c                                           ; $76b4: $a1
	ld   h, c                                        ; $76b5: $61
	ld   e, e                                        ; $76b6: $5b
	sub  e                                           ; $76b7: $93
	ld   d, h                                        ; $76b8: $54
	ld   h, a                                        ; $76b9: $67
	sbc  c                                           ; $76ba: $99
	nop                                              ; $76bb: $00
	nop                                              ; $76bc: $00
	ld   h, [hl]                                     ; $76bd: $66
	and  c                                           ; $76be: $a1
	ld   h, c                                        ; $76bf: $61
	ld   d, h                                        ; $76c0: $54
	ld   h, c                                        ; $76c1: $61
	ld   e, e                                        ; $76c2: $5b
	sub  e                                           ; $76c3: $93
	ld   d, h                                        ; $76c4: $54
	and  b                                           ; $76c5: $a0
	ld   h, a                                        ; $76c6: $67
	sbc  c                                           ; $76c7: $99
	nop                                              ; $76c8: $00
	ld   bc, $9756                                   ; $76c9: $01 $56 $97
	ld   h, c                                        ; $76cc: $61
	ld   e, e                                        ; $76cd: $5b
	sub  e                                           ; $76ce: $93
	ld   d, h                                        ; $76cf: $54
	and  b                                           ; $76d0: $a0
	ld   h, a                                        ; $76d1: $67
	sbc  c                                           ; $76d2: $99
	nop                                              ; $76d3: $00
	ld   [bc], a                                     ; $76d4: $02
	rlca                                             ; $76d5: $07
	add  e                                           ; $76d6: $83
	inc  b                                           ; $76d7: $04
	ld   [bc], a                                     ; $76d8: $02
	inc  bc                                          ; $76d9: $03
	ld   bc, $2000                                   ; $76da: $01 $00 $20
	nop                                              ; $76dd: $00
	rlca                                             ; $76de: $07
	or   c                                           ; $76df: $b1
	inc  b                                           ; $76e0: $04
	ld   [bc], a                                     ; $76e1: $02
	inc  bc                                          ; $76e2: $03
	ld   bc, $2001                                   ; $76e3: $01 $01 $20
	nop                                              ; $76e6: $00
	rlca                                             ; $76e7: $07
	pop  af                                          ; $76e8: $f1
	inc  b                                           ; $76e9: $04
	ld   [bc], a                                     ; $76ea: $02
	inc  bc                                          ; $76eb: $03
	ld   bc, $2002                                   ; $76ec: $01 $02 $20
	nop                                              ; $76ef: $00
	ld   b, $50                                      ; $76f0: $06 $50
	dec  b                                           ; $76f2: $05
	rrca                                             ; $76f3: $0f
	nop                                              ; $76f4: $00
	ld   bc, $0301                                   ; $76f5: $01 $01 $03
	ld   l, c                                        ; $76f8: $69
	ld   [bc], a                                     ; $76f9: $02
	xor  d                                           ; $76fa: $aa
	ld   a, c                                        ; $76fb: $79
	ld   h, l                                        ; $76fc: $65
	and  c                                           ; $76fd: $a1
	ld   h, c                                        ; $76fe: $61
	ld   e, e                                        ; $76ff: $5b
	sub  e                                           ; $7700: $93
	ld   d, h                                        ; $7701: $54
	and  b                                           ; $7702: $a0
	ld   h, l                                        ; $7703: $65
	ld   [hl], h                                     ; $7704: $74
	rst  $38                                         ; $7705: $ff
	rst  $38                                         ; $7706: $ff
	dec  c                                           ; $7707: $0d
	sub  [hl]                                        ; $7708: $96
	ld   h, l                                        ; $7709: $65
	ld   a, [$ab10]                                  ; $770a: $fa $10 $ab
	call nz, $fbb2                                   ; $770d: $c4 $b2 $fb
	ld   l, [hl]                                     ; $7710: $6e
	ld   a, [$000d]                                  ; $7711: $fa $0d $00
	ld   a, [bc]                                     ; $7714: $0a
	dec  b                                           ; $7715: $05
	ld   b, b                                        ; $7716: $40
	rst  $38                                         ; $7717: $ff
	inc  bc                                          ; $7718: $03
	rst  $38                                         ; $7719: $ff
	ld   bc, $2801                                   ; $771a: $01 $01 $28
	nop                                              ; $771d: $00
	ld   b, $78                                      ; $771e: $06 $78
	dec  b                                           ; $7720: $05
	rrca                                             ; $7721: $0f
	nop                                              ; $7722: $00
	ld   bc, $0301                                   ; $7723: $01 $01 $03
	ld   l, c                                        ; $7726: $69
	ld   [bc], a                                     ; $7727: $02
	xor  d                                           ; $7728: $aa
	ld   a, c                                        ; $7729: $79
	sbc  [hl]                                        ; $772a: $9e
	ld   h, [hl]                                     ; $772b: $66
	and  c                                           ; $772c: $a1
	ld   h, c                                        ; $772d: $61
	ld   d, h                                        ; $772e: $54
	ld   h, c                                        ; $772f: $61
	ld   e, e                                        ; $7730: $5b
	sub  e                                           ; $7731: $93
	ld   d, h                                        ; $7732: $54
	and  b                                           ; $7733: $a0
	dec  c                                           ; $7734: $0d
	ld   h, l                                        ; $7735: $65
	ld   [hl], h                                     ; $7736: $74
	rst  $38                                         ; $7737: $ff
	rst  $38                                         ; $7738: $ff
	and  c                                           ; $7739: $a1
	ld   sp, hl                                      ; $773a: $f9
	db   $10                                         ; $773b: $10
	ld   a, b                                        ; $773c: $78
	and  c                                           ; $773d: $a1
	ld   [hl], l                                     ; $773e: $75
	ld   l, e                                        ; $773f: $6b
	and  c                                           ; $7740: $a1
	ld   a, b                                        ; $7741: $78
	ld   [bc], a                                     ; $7742: $02
	jp   $000d                                       ; $7743: $c3 $0d $00


	dec  b                                           ; $7746: $05
	ld   b, b                                        ; $7747: $40
	rst  $38                                         ; $7748: $ff
	inc  bc                                          ; $7749: $03
	rst  $38                                         ; $774a: $ff
	ld   bc, $2801                                   ; $774b: $01 $01 $28
	nop                                              ; $774e: $00
	ld   bc, $7865                                   ; $774f: $01 $65 $78
	ld   e, e                                        ; $7752: $5b
	sub  c                                           ; $7753: $91
	ld   a, b                                        ; $7754: $78
	sub  a                                           ; $7755: $97
	ld   a, b                                        ; $7756: $78
	ld   d, d                                        ; $7757: $52
	and  c                                           ; $7758: $a1
	ld   l, [hl]                                     ; $7759: $6e
	ld   sp, hl                                      ; $775a: $f9
	dec  c                                           ; $775b: $0d
	nop                                              ; $775c: $00
	ld   a, [bc]                                     ; $775d: $0a
	ld   b, $40                                      ; $775e: $06 $40
	inc  b                                           ; $7760: $04
	rrca                                             ; $7761: $0f
	nop                                              ; $7762: $00
	ld   bc, $9601                                   ; $7763: $01 $01 $96
	ld   h, l                                        ; $7766: $65
	sbc  [hl]                                        ; $7767: $9e
	inc  bc                                          ; $7768: $03
	ld   l, c                                        ; $7769: $69
	ld   [bc], a                                     ; $776a: $02
	xor  d                                           ; $776b: $aa
	ld   a, c                                        ; $776c: $79
	ld   d, [hl]                                     ; $776d: $56
	sub  a                                           ; $776e: $97
	ld   h, c                                        ; $776f: $61
	ld   e, e                                        ; $7770: $5b
	sub  e                                           ; $7771: $93
	ld   d, h                                        ; $7772: $54
	and  b                                           ; $7773: $a0
	dec  c                                           ; $7774: $0d
	ld   h, l                                        ; $7775: $65
	ld   [hl], h                                     ; $7776: $74
	rst  $38                                         ; $7777: $ff
	rst  $38                                         ; $7778: $ff
	and  c                                           ; $7779: $a1
	ld   sp, hl                                      ; $777a: $f9
	db   $10                                         ; $777b: $10
	inc  b                                           ; $777c: $04
	ld   l, l                                        ; $777d: $6d
	ld   a, c                                        ; $777e: $79
	ld   d, [hl]                                     ; $777f: $56
	sub  a                                           ; $7780: $97
	ld   a, b                                        ; $7781: $78
	and  c                                           ; $7782: $a1
	ld   [hl], h                                     ; $7783: $74
	dec  c                                           ; $7784: $0d
	ld   a, b                                        ; $7785: $78
	ld   d, d                                        ; $7786: $52
	sub  [hl]                                        ; $7787: $96
	ld   a, b                                        ; $7788: $78
	rst  $38                                         ; $7789: $ff
	rst  $38                                         ; $778a: $ff
	dec  c                                           ; $778b: $0d
	nop                                              ; $778c: $00
	ld   a, [bc]                                     ; $778d: $0a
	ld   bc, $fc78                                   ; $778e: $01 $78 $fc
	and  c                                           ; $7791: $a1
	ld   [hl], h                                     ; $7792: $74
	ld   [bc], a                                     ; $7793: $02
	sbc  l                                           ; $7794: $9d
	ld   [hl], c                                     ; $7795: $71
	ld   [hl], h                                     ; $7796: $74
	sbc  c                                           ; $7797: $99
	inc  b                                           ; $7798: $04
	ld   a, d                                        ; $7799: $7a
	ld   [bc], a                                     ; $779a: $02
	ld   a, e                                        ; $779b: $7b
	ld   h, [hl]                                     ; $779c: $66
	sub  c                                           ; $779d: $91
	dec  c                                           ; $779e: $0d
	ld   a, b                                        ; $779f: $78
	ld   d, d                                        ; $77a0: $52
	ld   l, h                                        ; $77a1: $6c
	sbc  a                                           ; $77a2: $9f
	dec  c                                           ; $77a3: $0d
	nop                                              ; $77a4: $00
	dec  b                                           ; $77a5: $05
	ld   b, b                                        ; $77a6: $40
	rst  $38                                         ; $77a7: $ff
	inc  bc                                          ; $77a8: $03
	rst  $38                                         ; $77a9: $ff
	ld   bc, $2801                                   ; $77aa: $01 $01 $28
	nop                                              ; $77ad: $00
	ld   bc, $2805                                   ; $77ae: $01 $05 $28
	ld   e, d                                        ; $77b1: $5a
	ld   a, b                                        ; $77b2: $78
	ld   e, e                                        ; $77b3: $5b
	sub  c                                           ; $77b4: $91
	ld   e, b                                        ; $77b5: $58
	ld   e, l                                        ; $77b6: $5d
	sbc  d                                           ; $77b7: $9a
	sbc  c                                           ; $77b8: $99
	ld   a, [$000d]                                  ; $77b9: $fa $0d $00
	ld   a, [bc]                                     ; $77bc: $0a
	ld   b, $40                                      ; $77bd: $06 $40
	inc  b                                           ; $77bf: $04
	rrca                                             ; $77c0: $0f
	nop                                              ; $77c1: $00
	ld   bc, $0301                                   ; $77c2: $01 $01 $03
	dec  c                                           ; $77c5: $0d
	inc  bc                                          ; $77c6: $03
	ld   h, l                                        ; $77c7: $65
	ld   h, b                                        ; $77c8: $60
	ld   a, c                                        ; $77c9: $79
	rst  $38                                         ; $77ca: $ff
	rst  $38                                         ; $77cb: $ff
	dec  c                                           ; $77cc: $0d
	rst  $38                                         ; $77cd: $ff
	rst  $38                                         ; $77ce: $ff
	rst  $38                                         ; $77cf: $ff
	rst  $38                                         ; $77d0: $ff
	ld   [hl], a                                     ; $77d1: $77
	ld   d, h                                        ; $77d2: $54
	ld   h, l                                        ; $77d3: $65
	sub  [hl]                                        ; $77d4: $96
	ld   d, h                                        ; $77d5: $54
	ld   e, c                                        ; $77d6: $59
	rst  $38                                         ; $77d7: $ff
	rst  $38                                         ; $77d8: $ff
	dec  c                                           ; $77d9: $0d
	nop                                              ; $77da: $00
	ld   a, [bc]                                     ; $77db: $0a
	dec  b                                           ; $77dc: $05
	ld   b, b                                        ; $77dd: $40
	rst  $38                                         ; $77de: $ff
	inc  bc                                          ; $77df: $03
	rst  $38                                         ; $77e0: $ff
	ld   bc, $2801                                   ; $77e1: $01 $01 $28
	nop                                              ; $77e4: $00
	ld   b, $40                                      ; $77e5: $06 $40
	inc  b                                           ; $77e7: $04
	rlca                                             ; $77e8: $07
	sub  e                                           ; $77e9: $93
	dec  b                                           ; $77ea: $05
	inc  bc                                          ; $77eb: $03
	rst  $38                                         ; $77ec: $ff
	ld   bc, $2005                                   ; $77ed: $01 $05 $20
	nop                                              ; $77f0: $00
	rlca                                             ; $77f1: $07
	and  $05                                         ; $77f2: $e6 $05
	inc  bc                                          ; $77f4: $03
	rst  $38                                         ; $77f5: $ff
	ld   bc, $2006                                   ; $77f6: $01 $06 $20
	nop                                              ; $77f9: $00
	rlca                                             ; $77fa: $07
	ld   e, e                                        ; $77fb: $5b
	ld   b, $03                                      ; $77fc: $06 $03
	rst  $38                                         ; $77fe: $ff
	ld   bc, $2507                                   ; $77ff: $01 $07 $25
	nop                                              ; $7802: $00
	inc  hl                                          ; $7803: $23
	inc  b                                           ; $7804: $04
	rrca                                             ; $7805: $0f
	nop                                              ; $7806: $00
	ld   bc, $6301                                   ; $7807: $01 $01 $63
	ld   e, l                                        ; $780a: $5d
	sub  a                                           ; $780b: $97
	ld   h, e                                        ; $780c: $63
	and  c                                           ; $780d: $a1
	sbc  a                                           ; $780e: $9f
	dec  c                                           ; $780f: $0d
	ld   e, b                                        ; $7810: $58
	ld   a, l                                        ; $7811: $7d
	sub  [hl]                                        ; $7812: $96
	ld   d, h                                        ; $7813: $54
	ld   h, d                                        ; $7814: $62
	ld   h, h                                        ; $7815: $64
	ld   d, d                                        ; $7816: $52
	adc  h                                           ; $7817: $8c
	ld   h, a                                        ; $7818: $67
	sbc  a                                           ; $7819: $9f
	dec  c                                           ; $781a: $0d
	nop                                              ; $781b: $00
	ld   a, [bc]                                     ; $781c: $0a
	inc  e                                           ; $781d: $1c
	ld   bc, $0101                                   ; $781e: $01 $01 $01
	dec  e                                           ; $7821: $1d
	ld   b, b                                        ; $7822: $40
	ld   de, $1103                                   ; $7823: $11 $03 $11
	ld   bc, $2802                                   ; $7826: $01 $02 $28
	nop                                              ; $7829: $00
	ld   bc, $7d58                                   ; $782a: $01 $58 $7d
	sub  [hl]                                        ; $782d: $96
	ld   d, h                                        ; $782e: $54
	ld   h, d                                        ; $782f: $62
	ld   h, h                                        ; $7830: $64
	ld   d, d                                        ; $7831: $52
	adc  h                                           ; $7832: $8c
	ld   h, a                                        ; $7833: $67
	sbc  a                                           ; $7834: $9f
	dec  c                                           ; $7835: $0d
	ld   [$6300], sp                                 ; $7836: $08 $00 $63
	and  c                                           ; $7839: $a1
	sbc  a                                           ; $783a: $9f
	dec  c                                           ; $783b: $0d
	ld   h, [hl]                                     ; $783c: $66
	sub  c                                           ; $783d: $91
	sbc  [hl]                                        ; $783e: $9e
	ld   [bc], a                                     ; $783f: $02
	ld   a, a                                        ; $7840: $7f
	ld   e, e                                        ; $7841: $5b
	adc  h                                           ; $7842: $8c
	ld   h, l                                        ; $7843: $65
	sub  l                                           ; $7844: $95
	ld   d, h                                        ; $7845: $54
	ld   e, c                                        ; $7846: $59
	sbc  a                                           ; $7847: $9f
	dec  c                                           ; $7848: $0d
	nop                                              ; $7849: $00
	ld   a, [bc]                                     ; $784a: $0a
	dec  c                                           ; $784b: $0d
	nop                                              ; $784c: $00
	nop                                              ; $784d: $00
	rrca                                             ; $784e: $0f
	nop                                              ; $784f: $00
	ld   bc, $020c                                   ; $7850: $01 $0c $02
	ld   b, $a3                                      ; $7853: $06 $a3
	ld   b, $23                                      ; $7855: $06 $23
	inc  b                                           ; $7857: $04
	rrca                                             ; $7858: $0f

Jump_063_7859:
	nop                                              ; $7859: $00
	ld   bc, $010d                                   ; $785a: $01 $0d $01
	nop                                              ; $785d: $00
	ld   bc, $7d58                                   ; $785e: $01 $58 $7d
	sub  [hl]                                        ; $7861: $96
	ld   d, h                                        ; $7862: $54
	ld   h, d                                        ; $7863: $62
	ld   h, h                                        ; $7864: $64
	ld   d, d                                        ; $7865: $52
	adc  h                                           ; $7866: $8c
	ld   h, a                                        ; $7867: $67
	sbc  a                                           ; $7868: $9f
	dec  c                                           ; $7869: $0d
	ld   h, e                                        ; $786a: $63
	ld   e, l                                        ; $786b: $5d
	sub  a                                           ; $786c: $97
	ld   h, e                                        ; $786d: $63
	and  c                                           ; $786e: $a1
	sbc  a                                           ; $786f: $9f
	dec  c                                           ; $7870: $0d
	ld   e, b                                        ; $7871: $58
	inc  b                                           ; $7872: $04
	rla                                              ; $7873: $17
	ld   l, l                                        ; $7874: $6d
	ld   l, c                                        ; $7875: $69
	ld   h, l                                        ; $7876: $65
	ld   [hl], h                                     ; $7877: $74
	ld   h, a                                        ; $7878: $67

Jump_063_7879:
	adc  l                                           ; $7879: $8d
	adc  h                                           ; $787a: $8c
	ld   l, c                                        ; $787b: $69
	and  c                                           ; $787c: $a1

Jump_063_787d:
	sbc  a                                           ; $787d: $9f
	dec  c                                           ; $787e: $0d
	nop                                              ; $787f: $00
	ld   a, [bc]                                     ; $7880: $0a
	inc  e                                           ; $7881: $1c
	ld   bc, $0000                                   ; $7882: $01 $00 $00
	ld   bc, $7d58                                   ; $7885: $01 $58 $7d
	sub  [hl]                                        ; $7888: $96
	ld   d, h                                        ; $7889: $54
	ld   h, d                                        ; $788a: $62
	ld   h, h                                        ; $788b: $64
	ld   d, d                                        ; $788c: $52
	adc  h                                           ; $788d: $8c
	ld   h, a                                        ; $788e: $67
	sbc  a                                           ; $788f: $9f
	dec  c                                           ; $7890: $0d
	inc  b                                           ; $7891: $04
	ld   c, $03                                      ; $7892: $0e $03
	sbc  l                                           ; $7894: $9d
	inc  b                                           ; $7895: $04
	and  [hl]                                        ; $7896: $a6
	ld   [hl], l                                     ; $7897: $75
	ld   h, a                                        ; $7898: $67
	sub  [hl]                                        ; $7899: $96
	sbc  a                                           ; $789a: $9f
	ld   d, b                                        ; $789b: $50
	ld   l, l                                        ; $789c: $6d
	ld   h, l                                        ; $789d: $65
	sub  b                                           ; $789e: $90
	dec  c                                           ; $789f: $0d
	ld   [bc], a                                     ; $78a0: $02
	and  l                                           ; $78a1: $a5
	dec  b                                           ; $78a2: $05
	db   $10                                         ; $78a3: $10
	ld   l, l                                        ; $78a4: $6d
	halt                                             ; $78a5: $76
	ld   h, c                                        ; $78a6: $61
	sbc  e                                           ; $78a7: $9b
	ld   [hl], l                                     ; $78a8: $75
	ld   h, a                                        ; $78a9: $67
	ld   e, c                                        ; $78aa: $59
	sub  a                                           ; $78ab: $97
	sbc  a                                           ; $78ac: $9f
	dec  c                                           ; $78ad: $0d
	nop                                              ; $78ae: $00
	ld   a, [bc]                                     ; $78af: $0a
	ld   bc, $9166                                   ; $78b0: $01 $66 $91
	sbc  [hl]                                        ; $78b3: $9e
	ld   [bc], a                                     ; $78b4: $02
	ld   a, a                                        ; $78b5: $7f
	ld   e, e                                        ; $78b6: $5b
	adc  h                                           ; $78b7: $8c
	ld   h, l                                        ; $78b8: $65
	sub  l                                           ; $78b9: $95
	ld   d, h                                        ; $78ba: $54
	ld   e, c                                        ; $78bb: $59
	sbc  a                                           ; $78bc: $9f
	dec  c                                           ; $78bd: $0d
	nop                                              ; $78be: $00
	ld   a, [bc]                                     ; $78bf: $0a
	dec  c                                           ; $78c0: $0d
	nop                                              ; $78c1: $00
	nop                                              ; $78c2: $00
	rrca                                             ; $78c3: $0f
	nop                                              ; $78c4: $00
	ld   bc, $020c                                   ; $78c5: $01 $0c $02
	ld   b, $a3                                      ; $78c8: $06 $a3
	ld   b, $23                                      ; $78ca: $06 $23
	inc  b                                           ; $78cc: $04
	inc  e                                           ; $78cd: $1c
	ld   bc, $0707                                   ; $78ce: $01 $07 $07
	dec  e                                           ; $78d1: $1d
	ld   b, b                                        ; $78d2: $40
	ld   de, $1103                                   ; $78d3: $11 $03 $11
	ld   bc, $2903                                   ; $78d6: $01 $03 $29
	nop                                              ; $78d9: $00
	ld   bc, $0008                                   ; $78da: $01 $08 $00
	ld   h, e                                        ; $78dd: $63
	and  c                                           ; $78de: $a1
	sbc  a                                           ; $78df: $9f
	dec  c                                           ; $78e0: $0d
	ld   e, b                                        ; $78e1: $58
	ld   l, e                                        ; $78e2: $6b
	ld   d, d                                        ; $78e3: $52
	ld   [hl], l                                     ; $78e4: $75
	ld   h, a                                        ; $78e5: $67
	sub  [hl]                                        ; $78e6: $96
	rst  $38                                         ; $78e7: $ff
	rst  $38                                         ; $78e8: $ff
	dec  c                                           ; $78e9: $0d
	nop                                              ; $78ea: $00
	ld   a, [bc]                                     ; $78eb: $0a
	inc  e                                           ; $78ec: $1c
	ld   bc, $0000                                   ; $78ed: $01 $00 $00
	ld   bc, $508c                                   ; $78f0: $01 $8c $50
	sbc  [hl]                                        ; $78f3: $9e
	ld   l, e                                        ; $78f4: $6b
	sbc  d                                           ; $78f5: $9a
	ld   a, l                                        ; $78f6: $7d
	ld   h, e                                        ; $78f7: $63
	ld   [hl], h                                     ; $78f8: $74
	ld   e, b                                        ; $78f9: $58
	ld   e, e                                        ; $78fa: $5b
	dec  c                                           ; $78fb: $0d
	ld   [bc], a                                     ; $78fc: $02
	ld   a, a                                        ; $78fd: $7f
	ld   e, e                                        ; $78fe: $5b
	adc  h                                           ; $78ff: $8c
	ld   h, l                                        ; $7900: $65
	sub  l                                           ; $7901: $95
	ld   d, h                                        ; $7902: $54
	ld   e, c                                        ; $7903: $59
	sbc  a                                           ; $7904: $9f
	dec  c                                           ; $7905: $0d
	nop                                              ; $7906: $00
	ld   a, [bc]                                     ; $7907: $0a
	dec  c                                           ; $7908: $0d
	nop                                              ; $7909: $00
	nop                                              ; $790a: $00
	rrca                                             ; $790b: $0f
	nop                                              ; $790c: $00
	ld   bc, $020c                                   ; $790d: $01 $0c $02
	ld   b, $a3                                      ; $7910: $06 $a3
	ld   b, $0e                                      ; $7912: $06 $0e
	add  d                                           ; $7914: $82
	inc  e                                           ; $7915: $1c
	ld   bc, $0101                                   ; $7916: $01 $01 $01
	ld   bc, $9e63                                   ; $7919: $01 $63 $9e
	ld   h, c                                        ; $791c: $61
	ld   [hl], c                                     ; $791d: $71
	ld   l, a                                        ; $791e: $6f
	ld   [hl], l                                     ; $791f: $75
	ld   h, a                                        ; $7920: $67
	sub  [hl]                                        ; $7921: $96
	sbc  a                                           ; $7922: $9f
	dec  c                                           ; $7923: $0d
	nop                                              ; $7924: $00
	ld   a, [bc]                                     ; $7925: $0a
	dec  c                                           ; $7926: $0d
	nop                                              ; $7927: $00
	nop                                              ; $7928: $00
	rrca                                             ; $7929: $0f
	nop                                              ; $792a: $00
	ld   bc, $8523                                   ; $792b: $01 $23 $85
	rrca                                             ; $792e: $0f
	ld   bc, $0100                                   ; $792f: $01 $00 $01
	ld   [hl], a                                     ; $7932: $77
	ld   d, h                                        ; $7933: $54
	ld   e, c                                        ; $7934: $59
	sbc  [hl]                                        ; $7935: $9e
	dec  b                                           ; $7936: $05
	db   $10                                         ; $7937: $10
	ld   [bc], a                                     ; $7938: $02
	sbc  e                                           ; $7939: $9b
	ld   a, h                                        ; $793a: $7c
	ld   [bc], a                                     ; $793b: $02
	sbc  c                                           ; $793c: $99
	ld   [bc], a                                     ; $793d: $02
	rra                                              ; $793e: $1f
	ld   e, d                                        ; $793f: $5a
	dec  c                                           ; $7940: $0d
	inc  bc                                          ; $7941: $03
	ld   [de], a                                     ; $7942: $12
	ld   [bc], a                                     ; $7943: $02
	ld   c, h                                        ; $7944: $4c
	ld   h, l                                        ; $7945: $65
	adc  h                                           ; $7946: $8c
	ld   h, a                                        ; $7947: $67
	sub  [hl]                                        ; $7948: $96
	ld   d, h                                        ; $7949: $54
	ld   a, c                                        ; $794a: $79
	rst  $38                                         ; $794b: $ff
	rst  $38                                         ; $794c: $ff
	dec  c                                           ; $794d: $0d
	nop                                              ; $794e: $00
	ld   a, [bc]                                     ; $794f: $0a
	rrca                                             ; $7950: $0f
	nop                                              ; $7951: $00
	ld   bc, $020c                                   ; $7952: $01 $0c $02
	add  hl, bc                                      ; $7955: $09

Call_063_7956:
	ld   d, b                                        ; $7956: $50
	ld   c, $85                                      ; $7957: $0e $85
	inc  e                                           ; $7959: $1c
	ld   bc, $0000                                   ; $795a: $01 $00 $00
	ld   bc, $8203                                   ; $795d: $01 $03 $82
	ld   [bc], a                                     ; $7960: $02
	jp   Jump_063_72a0                               ; $7961: $c3 $a0 $72


	ld   e, l                                        ; $7964: $5d
	ld   h, l                                        ; $7965: $65
	ld   [hl], h                                     ; $7966: $74
	inc  b                                           ; $7967: $04
	inc  de                                          ; $7968: $13
	ld   b, $25                                      ; $7969: $06 $25
	and  b                                           ; $796b: $a0
	adc  h                                           ; $796c: $8c
	ld   [hl], d                                     ; $796d: $72
	rst  $38                                         ; $796e: $ff
	rst  $38                                         ; $796f: $ff
	dec  c                                           ; $7970: $0d
	sub  b                                           ; $7971: $90
	ld   d, h                                        ; $7972: $54
	sbc  [hl]                                        ; $7973: $9e
	ld   h, c                                        ; $7974: $61
	sbc  d                                           ; $7975: $9a
	ld   [hl], l                                     ; $7976: $75
	ld   l, [hl]                                     ; $7977: $6e
	ld   d, d                                        ; $7978: $52
	ld   h, [hl]                                     ; $7979: $66
	sub  l                                           ; $797a: $95
	ld   d, h                                        ; $797b: $54
	add  h                                           ; $797c: $84
	dec  c                                           ; $797d: $0d
	ld   [hl], l                                     ; $797e: $75
	ld   h, a                                        ; $797f: $67
	sub  [hl]                                        ; $7980: $96
	ld   a, e                                        ; $7981: $7b
	ld   sp, hl                                      ; $7982: $f9
	dec  c                                           ; $7983: $0d
	nop                                              ; $7984: $00
	ld   a, [bc]                                     ; $7985: $0a
	add  hl, de                                      ; $7986: $19
	dec  b                                           ; $7987: $05
	ld   [bc], a                                     ; $7988: $02
	sub  b                                           ; $7989: $90
	ld   l, a                                        ; $798a: $6f
	sbc  e                                           ; $798b: $9b
	and  c                                           ; $798c: $a1
	ld   [hl], l                                     ; $798d: $75
	ld   h, a                                        ; $798e: $67
	nop                                              ; $798f: $00
	nop                                              ; $7990: $00
	inc  b                                           ; $7991: $04
	ld   e, $05                                      ; $7992: $1e $05
	ld   a, [bc]                                     ; $7994: $0a
	inc  b                                           ; $7995: $04
	adc  a                                           ; $7996: $8f
	ld   [bc], a                                     ; $7997: $02
	add  b                                           ; $7998: $80
	ld   [hl], l                                     ; $7999: $75
	ld   h, a                                        ; $799a: $67
	ld   a, e                                        ; $799b: $7b
	nop                                              ; $799c: $00
	ld   bc, $4307                                   ; $799d: $01 $07 $43
	rlca                                             ; $79a0: $07
	ld   [bc], a                                     ; $79a1: $02
	inc  bc                                          ; $79a2: $03
	ld   bc, $2000                                   ; $79a3: $01 $00 $20
	nop                                              ; $79a6: $00
	rlca                                             ; $79a7: $07
	sbc  c                                           ; $79a8: $99
	rlca                                             ; $79a9: $07
	ld   [bc], a                                     ; $79aa: $02
	inc  bc                                          ; $79ab: $03
	ld   bc, $2001                                   ; $79ac: $01 $01 $20
	nop                                              ; $79af: $00
	ld   b, $70                                      ; $79b0: $06 $70
	ld   [$000f], sp                                 ; $79b2: $08 $0f $00
	ld   bc, $9001                                   ; $79b5: $01 $01 $90
	ld   l, a                                        ; $79b8: $6f
	sbc  e                                           ; $79b9: $9b
	and  c                                           ; $79ba: $a1
	ld   [hl], l                                     ; $79bb: $75
	ld   h, a                                        ; $79bc: $67
	sbc  a                                           ; $79bd: $9f
	dec  c                                           ; $79be: $0d
	adc  l                                           ; $79bf: $8d
	ld   a, b                                        ; $79c0: $78
	ld   h, e                                        ; $79c1: $63
	and  c                                           ; $79c2: $a1
	sbc  [hl]                                        ; $79c3: $9e
	ld   e, d                                        ; $79c4: $5a
	and  c                                           ; $79c5: $a1
	ld   a, [hl]                                     ; $79c6: $7e
	ld   [hl], c                                     ; $79c7: $71
	ld   l, l                                        ; $79c8: $6d
	and  c                                           ; $79c9: $a1
	ld   [hl], l                                     ; $79ca: $75
	ld   h, a                                        ; $79cb: $67
	ld   h, l                                        ; $79cc: $65
	dec  c                                           ; $79cd: $0d
	ld   d, b                                        ; $79ce: $50
	halt                                             ; $79cf: $76
	ld   a, l                                        ; $79d0: $7d
	inc  b                                           ; $79d1: $04
	inc  de                                          ; $79d2: $13
	ld   b, $25                                      ; $79d3: $06 $25
	and  b                                           ; $79d5: $a0
	adc  h                                           ; $79d6: $8c
	ld   l, a                                        ; $79d7: $6f
	adc  h                                           ; $79d8: $8c
	ld   h, l                                        ; $79d9: $65
	sub  l                                           ; $79da: $95
	ld   d, h                                        ; $79db: $54
	sbc  a                                           ; $79dc: $9f
	dec  c                                           ; $79dd: $0d
	nop                                              ; $79de: $00
	ld   a, [bc]                                     ; $79df: $0a
	inc  e                                           ; $79e0: $1c
	ld   bc, $0101                                   ; $79e1: $01 $01 $01
	ld   bc, $546b                                   ; $79e4: $01 $6b $54
	ld   [hl], l                                     ; $79e7: $75
	ld   h, a                                        ; $79e8: $67
	sub  [hl]                                        ; $79e9: $96
	ld   a, e                                        ; $79ea: $7b
	sbc  a                                           ; $79eb: $9f
	dec  c                                           ; $79ec: $0d
	ld   l, a                                        ; $79ed: $6f
	sub  l                                           ; $79ee: $95
	ld   [hl], c                                     ; $79ef: $71
	halt                                             ; $79f0: $76
	sbc  [hl]                                        ; $79f1: $9e
	ld   [bc], a                                     ; $79f2: $02
	cp   a                                           ; $79f3: $bf
	ld   a, h                                        ; $79f4: $7c
	ld   [bc], a                                     ; $79f5: $02
	rst  JumpTable                                         ; $79f6: $df
	ld   e, d                                        ; $79f7: $5a
	dec  c                                           ; $79f8: $0d
	ld   e, b                                        ; $79f9: $58
	sbc  b                                           ; $79fa: $98
	ld   l, l                                        ; $79fb: $6d
	ld   [bc], a                                     ; $79fc: $02
	and  c                                           ; $79fd: $a1
	ld   e, d                                        ; $79fe: $5a
	ld   h, l                                        ; $79ff: $65
	adc  h                                           ; $7a00: $8c
	ld   h, a                                        ; $7a01: $67
	sbc  a                                           ; $7a02: $9f
	dec  c                                           ; $7a03: $0d
	nop                                              ; $7a04: $00
	ld   a, [bc]                                     ; $7a05: $0a
	ld   b, $be                                      ; $7a06: $06 $be
	ld   [$000f], sp                                 ; $7a08: $08 $0f $00
	ld   bc, $0401                                   ; $7a0b: $01 $01 $04
	ld   e, $05                                      ; $7a0e: $1e $05
	ld   a, [bc]                                     ; $7a10: $0a
	inc  b                                           ; $7a11: $04
	adc  a                                           ; $7a12: $8f
	ld   [bc], a                                     ; $7a13: $02
	add  b                                           ; $7a14: $80
	ld   [hl], l                                     ; $7a15: $75
	ld   h, a                                        ; $7a16: $67
	ld   a, e                                        ; $7a17: $7b
	rst  $38                                         ; $7a18: $ff
	rst  $38                                         ; $7a19: $ff
	dec  c                                           ; $7a1a: $0d
	inc  bc                                          ; $7a1b: $03
	sub  b                                           ; $7a1c: $90
	ld   l, [hl]                                     ; $7a1d: $6e
	ld   a, h                                        ; $7a1e: $7c
	adc  l                                           ; $7a1f: $8d
	ld   a, l                                        ; $7a20: $7d
	inc  bc                                          ; $7a21: $03
	sub  h                                           ; $7a22: $94
	ld   [bc], a                                     ; $7a23: $02
	ld   hl, sp+$7c                                  ; $7a24: $f8 $7c
	ld   a, b                                        ; $7a26: $78
	ld   h, e                                        ; $7a27: $63
	ld   a, h                                        ; $7a28: $7c
	dec  c                                           ; $7a29: $0d
	ld   d, b                                        ; $7a2a: $50
	sub  a                                           ; $7a2b: $97
	sbc  l                                           ; $7a2c: $9d
	sbc  d                                           ; $7a2d: $9a
	ld   [hl], l                                     ; $7a2e: $75
	ld   h, a                                        ; $7a2f: $67
	sub  [hl]                                        ; $7a30: $96
	sbc  a                                           ; $7a31: $9f
	dec  c                                           ; $7a32: $0d
	nop                                              ; $7a33: $00
	ld   a, [bc]                                     ; $7a34: $0a
	rlca                                             ; $7a35: $07
	ld   a, [de]                                     ; $7a36: $1a
	ld   [$2303], sp                                 ; $7a37: $08 $03 $23
	ld   bc, $22b4                                   ; $7a3a: $01 $b4 $22
	inc  bc                                          ; $7a3d: $03
	inc  h                                           ; $7a3e: $24
	ld   bc, $22b4                                   ; $7a3f: $01 $b4 $22
	inc  e                                           ; $7a42: $1c
	nop                                              ; $7a43: $00
	inc  e                                           ; $7a44: $1c
	ld   bc, $0404                                   ; $7a45: $01 $04 $04
	ld   bc, $ff50                                   ; $7a48: $01 $50 $ff
	rst  $38                                         ; $7a4b: $ff
	ld   l, l                                        ; $7a4c: $6d
	ld   h, l                                        ; $7a4d: $65
	ld   e, c                                        ; $7a4e: $59
	ld   a, c                                        ; $7a4f: $79
	ld   l, e                                        ; $7a50: $6b
	ld   d, h                                        ; $7a51: $54
	ld   [hl], l                                     ; $7a52: $75
	ld   h, a                                        ; $7a53: $67
	ld   a, e                                        ; $7a54: $7b
	sbc  a                                           ; $7a55: $9f
	dec  c                                           ; $7a56: $0d
	nop                                              ; $7a57: $00
	ld   a, [bc]                                     ; $7a58: $0a
	inc  e                                           ; $7a59: $1c
	ld   bc, $0000                                   ; $7a5a: $01 $00 $00
	ld   bc, $6d50                                   ; $7a5d: $01 $50 $6d
	ld   h, l                                        ; $7a60: $65
	sub  b                                           ; $7a61: $90
	ld   [$6300], sp                                 ; $7a62: $08 $00 $63
	and  c                                           ; $7a65: $a1
	and  b                                           ; $7a66: $a0
	dec  c                                           ; $7a67: $0d
	ld   [bc], a                                     ; $7a68: $02
	sub  l                                           ; $7a69: $95
	inc  bc                                          ; $7a6a: $03
	and  h                                           ; $7a6b: $a4
	ld   [hl], c                                     ; $7a6c: $71
	ld   [hl], h                                     ; $7a6d: $74
	sbc  [hl]                                        ; $7a6e: $9e
	sub  b                                           ; $7a6f: $90
	ld   [hl], c                                     ; $7a70: $71
	halt                                             ; $7a71: $76
	inc  bc                                          ; $7a72: $03
	sub  h                                           ; $7a73: $94
	ld   [bc], a                                     ; $7a74: $02
	ld   hl, sp-$60                                  ; $7a75: $f8 $a0
	dec  c                                           ; $7a77: $0d
	sub  b                                           ; $7a78: $90
	ld   l, l                                        ; $7a79: $6d
	ld   a, b                                        ; $7a7a: $78
	ld   d, d                                        ; $7a7b: $52
	halt                                             ; $7a7c: $76
	ld   d, d                                        ; $7a7d: $52
	ld   e, a                                        ; $7a7e: $5f
	adc  h                                           ; $7a7f: $8c
	ld   l, c                                        ; $7a80: $69
	and  c                                           ; $7a81: $a1
	ld   a, e                                        ; $7a82: $7b
	sbc  a                                           ; $7a83: $9f
	dec  c                                           ; $7a84: $0d
	nop                                              ; $7a85: $00
	ld   a, [bc]                                     ; $7a86: $0a
	ld   b, $be                                      ; $7a87: $06 $be
	ld   [$011c], sp                                 ; $7a89: $08 $1c $01
	rlca                                             ; $7a8c: $07
	rlca                                             ; $7a8d: $07
	ld   bc, $546b                                   ; $7a8e: $01 $6b $54
	ld   d, d                                        ; $7a91: $52
	ld   d, h                                        ; $7a92: $54
	ld   [$6300], sp                                 ; $7a93: $08 $00 $63
	and  c                                           ; $7a96: $a1
	ld   a, l                                        ; $7a97: $7d
	dec  c                                           ; $7a98: $0d
	ld   [hl], a                                     ; $7a99: $77
	ld   d, h                                        ; $7a9a: $54
	ld   a, b                                        ; $7a9b: $78
	and  c                                           ; $7a9c: $a1
	ld   [hl], l                                     ; $7a9d: $75
	ld   h, a                                        ; $7a9e: $67
	ld   e, c                                        ; $7a9f: $59
	ld   sp, hl                                      ; $7aa0: $f9
	dec  c                                           ; $7aa1: $0d
	nop                                              ; $7aa2: $00
	ld   a, [bc]                                     ; $7aa3: $0a
	rrca                                             ; $7aa4: $0f
	nop                                              ; $7aa5: $00
	ld   bc, $5001                                   ; $7aa6: $01 $01 $50
	rst  $38                                         ; $7aa9: $ff
	rst  $38                                         ; $7aaa: $ff
	ld   l, e                                        ; $7aab: $6b
	ld   a, h                                        ; $7aac: $7c
	inc  b                                           ; $7aad: $04
	ld   l, l                                        ; $7aae: $6d
	ld   a, l                                        ; $7aaf: $7d
	rst  $38                                         ; $7ab0: $ff
	rst  $38                                         ; $7ab1: $ff
	dec  c                                           ; $7ab2: $0d
	nop                                              ; $7ab3: $00
	ld   a, [bc]                                     ; $7ab4: $0a
	inc  e                                           ; $7ab5: $1c
	ld   bc, $0202                                   ; $7ab6: $01 $02 $02
	ld   bc, $1e04                                   ; $7ab9: $01 $04 $1e
	dec  b                                           ; $7abc: $05
	ld   a, [bc]                                     ; $7abd: $0a
	inc  b                                           ; $7abe: $04
	adc  a                                           ; $7abf: $8f
	ld   [bc], a                                     ; $7ac0: $02
	add  b                                           ; $7ac1: $80
	halt                                             ; $7ac2: $76
	sbc  [hl]                                        ; $7ac3: $9e
	ld   h, c                                        ; $7ac4: $61
	ld   d, h                                        ; $7ac5: $54
	ld   d, d                                        ; $7ac6: $52
	ld   [hl], c                                     ; $7ac7: $71
	ld   l, l                                        ; $7ac8: $6d
	dec  b                                           ; $7ac9: $05
	sub  c                                           ; $7aca: $91
	ld   [bc], a                                     ; $7acb: $02
	add  b                                           ; $7acc: $80
	ld   a, l                                        ; $7acd: $7d
	dec  c                                           ; $7ace: $0d
	add  a                                           ; $7acf: $87
	ld   [hl], d                                     ; $7ad0: $72
	ld   a, h                                        ; $7ad1: $7c
	sub  b                                           ; $7ad2: $90
	ld   a, h                                        ; $7ad3: $7c
	ld   a, b                                        ; $7ad4: $78
	and  c                                           ; $7ad5: $a1
	ld   [hl], l                                     ; $7ad6: $75
	ld   h, a                                        ; $7ad7: $67
	sub  [hl]                                        ; $7ad8: $96
	sbc  a                                           ; $7ad9: $9f
	dec  c                                           ; $7ada: $0d
	nop                                              ; $7adb: $00
	ld   a, [bc]                                     ; $7adc: $0a
	ld   b, $be                                      ; $7add: $06 $be
	ld   [$011c], sp                                 ; $7adf: $08 $1c $01
	inc  b                                           ; $7ae2: $04
	inc  b                                           ; $7ae3: $04
	ld   bc, $546b                                   ; $7ae4: $01 $6b $54
	sub  d                                           ; $7ae7: $92
	ld   [hl], c                                     ; $7ae8: $71
	ld   [hl], h                                     ; $7ae9: $74
	sbc  [hl]                                        ; $7aea: $9e
	ld   l, [hl]                                     ; $7aeb: $6e
	adc  h                                           ; $7aec: $8c
	sub  a                                           ; $7aed: $97
	sbc  d                                           ; $7aee: $9a
	ld   l, a                                        ; $7aef: $6f
	sub  c                                           ; $7af0: $91
	ld   d, h                                        ; $7af1: $54
	halt                                             ; $7af2: $76
	dec  c                                           ; $7af3: $0d
	inc  b                                           ; $7af4: $04
	and  b                                           ; $7af5: $a0
	ld   [bc], a                                     ; $7af6: $02
	ld   h, $79                                      ; $7af7: $26 $79
	ld   a, b                                        ; $7af9: $78
	sbc  b                                           ; $7afa: $98
	adc  h                                           ; $7afb: $8c
	ld   h, a                                        ; $7afc: $67
	sub  [hl]                                        ; $7afd: $96
	rst  $38                                         ; $7afe: $ff
	rst  $38                                         ; $7aff: $ff
	dec  c                                           ; $7b00: $0d
	nop                                              ; $7b01: $00
	ld   a, [bc]                                     ; $7b02: $0a
	ld   bc, $4804                                   ; $7b03: $01 $04 $48
	ld   a, h                                        ; $7b06: $7c
	ld   l, l                                        ; $7b07: $6d
	adc  a                                           ; $7b08: $8f
	sbc  [hl]                                        ; $7b09: $9e
	sub  b                                           ; $7b0a: $90
	ld   d, h                                        ; $7b0b: $54
	ld   [bc], a                                     ; $7b0c: $02
	jr   nz, jr_063_7b13                             ; $7b0d: $20 $04

	add  hl, hl                                      ; $7b0f: $29
	dec  c                                           ; $7b10: $0d
	ld   e, b                                        ; $7b11: $58
	ld   [bc], a                                     ; $7b12: $02

jr_063_7b13:
	add  b                                           ; $7b13: $80
	ld   d, d                                        ; $7b14: $52
	ld   h, l                                        ; $7b15: $65
	ld   [hl], h                                     ; $7b16: $74
	ld   e, b                                        ; $7b17: $58
	ld   e, e                                        ; $7b18: $5b
	adc  h                                           ; $7b19: $8c
	ld   h, a                                        ; $7b1a: $67
	sbc  a                                           ; $7b1b: $9f
	dec  c                                           ; $7b1c: $0d
	nop                                              ; $7b1d: $00
	ld   a, [bc]                                     ; $7b1e: $0a
	dec  c                                           ; $7b1f: $0d
	nop                                              ; $7b20: $00
	nop                                              ; $7b21: $00
	rrca                                             ; $7b22: $0f
	nop                                              ; $7b23: $00
	ld   bc, $020c                                   ; $7b24: $01 $0c $02
	add  hl, bc                                      ; $7b27: $09
	ld   d, b                                        ; $7b28: $50
	ld   c, $85                                      ; $7b29: $0e $85
	ld   b, $be                                      ; $7b2b: $06 $be
	ld   [$011c], sp                                 ; $7b2d: $08 $1c $01
	inc  bc                                          ; $7b30: $03
	inc  bc                                          ; $7b31: $03
	ld   bc, $9e50                                   ; $7b32: $01 $50 $9e
	ld   l, e                                        ; $7b35: $6b
	ld   d, h                                        ; $7b36: $54
	ld   l, [hl]                                     ; $7b37: $6e
	sbc  a                                           ; $7b38: $9f
	dec  c                                           ; $7b39: $0d
	nop                                              ; $7b3a: $00
	inc  e                                           ; $7b3b: $1c
	ld   bc, $0000                                   ; $7b3c: $01 $00 $00
	ld   bc, $7169                                   ; $7b3f: $01 $69 $71
	ld   e, c                                        ; $7b42: $59
	ld   e, l                                        ; $7b43: $5d
	ld   l, [hl]                                     ; $7b44: $6e
	ld   e, c                                        ; $7b45: $59
	sub  a                                           ; $7b46: $97
	sbc  [hl]                                        ; $7b47: $9e
	ld   e, b                                        ; $7b48: $58
	adc  l                                           ; $7b49: $8d
	ld   e, l                                        ; $7b4a: $5d
	ld   h, [hl]                                     ; $7b4b: $66
	and  b                                           ; $7b4c: $a0
	dec  c                                           ; $7b4d: $0d
	ld   [bc], a                                     ; $7b4e: $02
	inc  l                                           ; $7b4f: $2c
	ld   d, d                                        ; $7b50: $52
	ld   [hl], h                                     ; $7b51: $74
	ld   d, d                                        ; $7b52: $52
	ld   e, e                                        ; $7b53: $5b
	adc  h                                           ; $7b54: $8c
	ld   h, l                                        ; $7b55: $65
	sub  l                                           ; $7b56: $95
	ld   d, h                                        ; $7b57: $54
	sub  [hl]                                        ; $7b58: $96
	sbc  a                                           ; $7b59: $9f
	dec  c                                           ; $7b5a: $0d
	nop                                              ; $7b5b: $00
	ld   a, [bc]                                     ; $7b5c: $0a
	dec  c                                           ; $7b5d: $0d
	nop                                              ; $7b5e: $00
	nop                                              ; $7b5f: $00
	rrca                                             ; $7b60: $0f
	nop                                              ; $7b61: $00
	ld   bc, $9523                                   ; $7b62: $01 $23 $95
	rrca                                             ; $7b65: $0f
	ld   bc, $0100                                   ; $7b66: $01 $00 $01
	ld   h, [hl]                                     ; $7b69: $66
	sub  c                                           ; $7b6a: $91
	sbc  [hl]                                        ; $7b6b: $9e
	ld   d, b                                        ; $7b6c: $50
	ld   l, l                                        ; $7b6d: $6d
	ld   h, l                                        ; $7b6e: $65
	ld   e, d                                        ; $7b6f: $5a
	inc  bc                                          ; $7b70: $03
	ld   a, b                                        ; $7b71: $78
	ld   a, c                                        ; $7b72: $79
	dec  c                                           ; $7b73: $0d
	ld   [bc], a                                     ; $7b74: $02
	inc  l                                           ; $7b75: $2c
	ld   e, e                                        ; $7b76: $5b
	adc  h                                           ; $7b77: $8c
	ld   h, a                                        ; $7b78: $67
	ld   a, e                                        ; $7b79: $7b
	sbc  a                                           ; $7b7a: $9f
	dec  c                                           ; $7b7b: $0d
	nop                                              ; $7b7c: $00
	ld   a, [bc]                                     ; $7b7d: $0a
	rrca                                             ; $7b7e: $0f
	ld   bc, $0101                                   ; $7b7f: $01 $01 $01
	rst  $38                                         ; $7b82: $ff
	rst  $38                                         ; $7b83: $ff
	ld   d, [hl]                                     ; $7b84: $56
	sbc  [hl]                                        ; $7b85: $9e
	halt                                             ; $7b86: $76
	sbc  a                                           ; $7b87: $9f
	dec  c                                           ; $7b88: $0d
	ld   bc, $0407                                   ; $7b89: $01 $07 $04
	ld   [$029e], a                                  ; $7b8c: $ea $9e $02
	ld   bc, $7804                                   ; $7b8f: $01 $04 $78
	sub  [hl]                                        ; $7b92: $96
	sbc  b                                           ; $7b93: $98
	dec  b                                           ; $7b94: $05
	db   $10                                         ; $7b95: $10
	sbc  c                                           ; $7b96: $99
	rst  $38                                         ; $7b97: $ff
	rst  $38                                         ; $7b98: $ff
	dec  b                                           ; $7b99: $05
	adc  h                                           ; $7b9a: $8c
	ld   bc, $0d08                                   ; $7b9b: $01 $08 $0d
	ld   [hl], l                                     ; $7b9e: $75
	ld   h, a                                        ; $7b9f: $67
	ld   [hl], c                                     ; $7ba0: $71
	ld   [hl], h                                     ; $7ba1: $74
	sbc  a                                           ; $7ba2: $9f
	dec  c                                           ; $7ba3: $0d
	nop                                              ; $7ba4: $00
	ld   a, [bc]                                     ; $7ba5: $0a
	rrca                                             ; $7ba6: $0f
	nop                                              ; $7ba7: $00
	ld   bc, $6601                                   ; $7ba8: $01 $01 $66
	sub  c                                           ; $7bab: $91
	sbc  [hl]                                        ; $7bac: $9e
	inc  bc                                          ; $7bad: $03
	ld   l, b                                        ; $7bae: $68
	ld   a, l                                        ; $7baf: $7d
	inc  b                                           ; $7bb0: $04
	ld   l, l                                        ; $7bb1: $6d
	ld   e, d                                        ; $7bb2: $5a
	rst  $38                                         ; $7bb3: $ff
	rst  $38                                         ; $7bb4: $ff
	dec  c                                           ; $7bb5: $0d
	nop                                              ; $7bb6: $00
	ld   a, [bc]                                     ; $7bb7: $0a
	add  hl, de                                      ; $7bb8: $19
	dec  b                                           ; $7bb9: $05
	inc  bc                                          ; $7bba: $03
	ld   [bc], a                                     ; $7bbb: $02
	inc  e                                           ; $7bbc: $1c
	inc  b                                           ; $7bbd: $04
	sbc  e                                           ; $7bbe: $9b
	ld   a, h                                        ; $7bbf: $7c
	ld   e, b                                        ; $7bc0: $58
	adc  l                                           ; $7bc1: $8d
	ld   e, l                                        ; $7bc2: $5d
	ld   h, [hl]                                     ; $7bc3: $66
	and  b                                           ; $7bc4: $a0
	ld   [bc], a                                     ; $7bc5: $02
	inc  l                                           ; $7bc6: $2c
	ld   e, l                                        ; $7bc7: $5d
	nop                                              ; $7bc8: $00
	nop                                              ; $7bc9: $00
	inc  bc                                          ; $7bca: $03
	xor  l                                           ; $7bcb: $ad
	and  c                                           ; $7bcc: $a1
	inc  b                                           ; $7bcd: $04
	dec  bc                                          ; $7bce: $0b
	ld   a, h                                        ; $7bcf: $7c
	ld   e, b                                        ; $7bd0: $58
	adc  l                                           ; $7bd1: $8d
	ld   e, l                                        ; $7bd2: $5d
	ld   h, [hl]                                     ; $7bd3: $66
	and  b                                           ; $7bd4: $a0
	ld   [bc], a                                     ; $7bd5: $02
	inc  l                                           ; $7bd6: $2c
	ld   e, l                                        ; $7bd7: $5d
	nop                                              ; $7bd8: $00
	ld   bc, $6003                                   ; $7bd9: $01 $03 $60
	inc  b                                           ; $7bdc: $04
	sbc  e                                           ; $7bdd: $9b
	ld   a, h                                        ; $7bde: $7c
	ld   e, b                                        ; $7bdf: $58
	adc  l                                           ; $7be0: $8d
	ld   e, l                                        ; $7be1: $5d
	ld   h, [hl]                                     ; $7be2: $66
	and  b                                           ; $7be3: $a0
	ld   [bc], a                                     ; $7be4: $02
	inc  l                                           ; $7be5: $2c
	ld   e, l                                        ; $7be6: $5d
	nop                                              ; $7be7: $00
	ld   [bc], a                                     ; $7be8: $02
	rlca                                             ; $7be9: $07
	sub  a                                           ; $7bea: $97
	add  hl, bc                                      ; $7beb: $09
	ld   [bc], a                                     ; $7bec: $02
	inc  bc                                          ; $7bed: $03
	ld   bc, $2000                                   ; $7bee: $01 $00 $20
	nop                                              ; $7bf1: $00
	rlca                                             ; $7bf2: $07
	rst  ToBoot                                         ; $7bf3: $c7
	add  hl, bc                                      ; $7bf4: $09
	ld   [bc], a                                     ; $7bf5: $02
	inc  bc                                          ; $7bf6: $03
	ld   bc, $2001                                   ; $7bf7: $01 $01 $20
	nop                                              ; $7bfa: $00
	rlca                                             ; $7bfb: $07
	rst  $30                                         ; $7bfc: $f7
	add  hl, bc                                      ; $7bfd: $09
	ld   [bc], a                                     ; $7bfe: $02
	inc  bc                                          ; $7bff: $03
	ld   bc, $2002                                   ; $7c00: $01 $02 $20
	nop                                              ; $7c03: $00
	ld   b, $27                                      ; $7c04: $06 $27
	ld   a, [bc]                                     ; $7c06: $0a
	rlca                                             ; $7c07: $07
	ld   d, e                                        ; $7c08: $53
	ld   a, [bc]                                     ; $7c09: $0a
	inc  bc                                          ; $7c0a: $03
	ld   de, $be01                                   ; $7c0b: $11 $01 $be
	dec  h                                           ; $7c0e: $25
	nop                                              ; $7c0f: $00
	rlca                                             ; $7c10: $07
	ld   [hl], h                                     ; $7c11: $74
	ld   a, [bc]                                     ; $7c12: $0a
	inc  bc                                          ; $7c13: $03
	ld   de, $b401                                   ; $7c14: $11 $01 $b4
	dec  h                                           ; $7c17: $25
	inc  bc                                          ; $7c18: $03
	ld   de, $be01                                   ; $7c19: $11 $01 $be
	ld   [hl+], a                                    ; $7c1c: $22
	inc  e                                           ; $7c1d: $1c
	nop                                              ; $7c1e: $00
	rlca                                             ; $7c1f: $07
	sbc  d                                           ; $7c20: $9a
	ld   a, [bc]                                     ; $7c21: $0a
	ld   bc, $03b0                                   ; $7c22: $01 $b0 $03
	ld   de, $0323                                   ; $7c25: $11 $23 $03
	ld   de, $b301                                   ; $7c28: $11 $01 $b3
	inc  hl                                          ; $7c2b: $23
	inc  e                                           ; $7c2c: $1c
	nop                                              ; $7c2d: $00
	rlca                                             ; $7c2e: $07
	ret  c                                           ; $7c2f: $d8

	ld   a, [bc]                                     ; $7c30: $0a
	inc  bc                                          ; $7c31: $03
	ld   de, $af01                                   ; $7c32: $11 $01 $af
	inc  hl                                          ; $7c35: $23
	nop                                              ; $7c36: $00
	rlca                                             ; $7c37: $07
	ld   d, e                                        ; $7c38: $53
	ld   a, [bc]                                     ; $7c39: $0a
	inc  bc                                          ; $7c3a: $03
	jr   nz, jr_063_7c3e                             ; $7c3b: $20 $01

	pop  hl                                          ; $7c3d: $e1

jr_063_7c3e:
	dec  h                                           ; $7c3e: $25
	nop                                              ; $7c3f: $00
	rlca                                             ; $7c40: $07
	ld   [hl], h                                     ; $7c41: $74
	ld   a, [bc]                                     ; $7c42: $0a
	inc  bc                                          ; $7c43: $03
	jr   nz, jr_063_7c47                             ; $7c44: $20 $01

	sub  [hl]                                        ; $7c46: $96

jr_063_7c47:
	dec  h                                           ; $7c47: $25
	inc  bc                                          ; $7c48: $03
	jr   nz, @+$03                                   ; $7c49: $20 $01

	ldh  [rAUD4GO], a                                ; $7c4b: $e0 $23
	inc  e                                           ; $7c4d: $1c
	nop                                              ; $7c4e: $00
	rlca                                             ; $7c4f: $07
	sbc  d                                           ; $7c50: $9a
	ld   a, [bc]                                     ; $7c51: $0a
	ld   bc, $0364                                   ; $7c52: $01 $64 $03
	jr   nz, @+$25                                   ; $7c55: $20 $23

	inc  bc                                          ; $7c57: $03
	jr   nz, jr_063_7c5b                             ; $7c58: $20 $01

	sub  l                                           ; $7c5a: $95

jr_063_7c5b:
	inc  hl                                          ; $7c5b: $23
	inc  e                                           ; $7c5c: $1c
	nop                                              ; $7c5d: $00
	rlca                                             ; $7c5e: $07
	ret  c                                           ; $7c5f: $d8

	ld   a, [bc]                                     ; $7c60: $0a
	inc  bc                                          ; $7c61: $03
	jr   nz, jr_063_7c65                             ; $7c62: $20 $01

	ld   h, e                                        ; $7c64: $63

jr_063_7c65:
	inc  hl                                          ; $7c65: $23
	nop                                              ; $7c66: $00
	rlca                                             ; $7c67: $07
	ld   d, e                                        ; $7c68: $53
	ld   a, [bc]                                     ; $7c69: $0a
	inc  bc                                          ; $7c6a: $03
	ld   hl, $e101                                   ; $7c6b: $21 $01 $e1
	dec  h                                           ; $7c6e: $25
	nop                                              ; $7c6f: $00
	rlca                                             ; $7c70: $07
	ld   [hl], h                                     ; $7c71: $74
	ld   a, [bc]                                     ; $7c72: $0a
	inc  bc                                          ; $7c73: $03
	ld   hl, $9601                                   ; $7c74: $21 $01 $96
	dec  h                                           ; $7c77: $25
	inc  bc                                          ; $7c78: $03
	ld   hl, $e001                                   ; $7c79: $21 $01 $e0
	inc  hl                                          ; $7c7c: $23
	inc  e                                           ; $7c7d: $1c
	nop                                              ; $7c7e: $00
	rlca                                             ; $7c7f: $07
	sbc  d                                           ; $7c80: $9a
	ld   a, [bc]                                     ; $7c81: $0a
	ld   bc, $0364                                   ; $7c82: $01 $64 $03
	ld   hl, $0323                                   ; $7c85: $21 $23 $03
	ld   hl, $9501                                   ; $7c88: $21 $01 $95
	inc  hl                                          ; $7c8b: $23
	inc  e                                           ; $7c8c: $1c
	nop                                              ; $7c8d: $00
	rlca                                             ; $7c8e: $07
	ret  c                                           ; $7c8f: $d8

	ld   a, [bc]                                     ; $7c90: $0a
	inc  bc                                          ; $7c91: $03
	ld   hl, $6301                                   ; $7c92: $21 $01 $63
	inc  hl                                          ; $7c95: $23
	nop                                              ; $7c96: $00
	rrca                                             ; $7c97: $0f
	ld   bc, $0104                              ; $7c98: $01 $04 $01
	ldh  [c], a                                      ; $7c9b: $e2
	db   $ec                                         ; $7c9c: $ec
	ld   a, c                                        ; $7c9d: $79
	ld   [bc], a                                     ; $7c9e: $02
	inc  l                                           ; $7c9f: $2c
	ld   e, c                                        ; $7ca0: $59
	ld   a, b                                        ; $7ca1: $78
	ld   e, l                                        ; $7ca2: $5d
	ld   [hl], h                                     ; $7ca3: $74
	sub  b                                           ; $7ca4: $90
	dec  c                                           ; $7ca5: $0d
	ld   d, d                                        ; $7ca6: $52
	ld   d, d                                        ; $7ca7: $52
	ld   [hl], l                                     ; $7ca8: $75
	ld   h, a                                        ; $7ca9: $67
	sub  [hl]                                        ; $7caa: $96
	sbc  a                                           ; $7cab: $9f
	dec  c                                           ; $7cac: $0d
	ld   h, e                                        ; $7cad: $63
	sbc  [hl]                                        ; $7cae: $9e
	ld   [bc], a                                     ; $7caf: $02
	ld   a, a                                        ; $7cb0: $7f
	ld   e, e                                        ; $7cb1: $5b
	adc  h                                           ; $7cb2: $8c
	ld   h, l                                        ; $7cb3: $65
	sub  l                                           ; $7cb4: $95
	ld   d, h                                        ; $7cb5: $54
	sbc  a                                           ; $7cb6: $9f
	dec  c                                           ; $7cb7: $0d
	nop                                              ; $7cb8: $00
	ld   a, [bc]                                     ; $7cb9: $0a
	dec  c                                           ; $7cba: $0d
	nop                                              ; $7cbb: $00
	nop                                              ; $7cbc: $00
	rrca                                             ; $7cbd: $0f
	nop                                              ; $7cbe: $00
	ld   bc, $4e06                                   ; $7cbf: $01 $06 $4e
	dec  bc                                          ; $7cc2: $0b
	rrca                                             ; $7cc3: $0f
	nop                                              ; $7cc4: $00
	ld   bc, $0101                                   ; $7cc5: $01 $01 $01
	rlca                                             ; $7cc8: $07
	ld   [bc], a                                     ; $7cc9: $02
	add  b                                           ; $7cca: $80
	ld   d, d                                        ; $7ccb: $52
	ld   [bc], a                                     ; $7ccc: $02
	jp   Jump_063_7859                               ; $7ccd: $c3 $59 $78


	ld   d, h                                        ; $7cd0: $54
	rst  $38                                         ; $7cd1: $ff
	rst  $38                                         ; $7cd2: $ff
	inc  b                                           ; $7cd3: $04
	ld   c, $05                                      ; $7cd4: $0e $05
	adc  h                                           ; $7cd6: $8c
	ld   bc, $0d08                                   ; $7cd7: $01 $08 $0d
	sub  d                                           ; $7cda: $92
	ld   [hl], c                                     ; $7cdb: $71
	ld   l, l                                        ; $7cdc: $6d
	ld   a, [$000d]                                  ; $7cdd: $fa $0d $00
	ld   a, [bc]                                     ; $7ce0: $0a
	ld   b, $bd                                      ; $7ce1: $06 $bd
	ld   a, [bc]                                     ; $7ce3: $0a
	rrca                                             ; $7ce4: $0f
	nop                                              ; $7ce5: $00
	ld   bc, $0101                                   ; $7ce6: $01 $01 $01
	rlca                                             ; $7ce9: $07
	inc  b                                           ; $7cea: $04
	rla                                              ; $7ceb: $17
	ld   l, a                                        ; $7cec: $6f
	inc  bc                                          ; $7ced: $03
	add  d                                           ; $7cee: $82
	dec  b                                           ; $7cef: $05
	db   $10                                         ; $7cf0: $10
	sbc  c                                           ; $7cf1: $99
	rst  $38                                         ; $7cf2: $ff
	rst  $38                                         ; $7cf3: $ff
	inc  b                                           ; $7cf4: $04
	dec  bc                                          ; $7cf5: $0b
	dec  b                                           ; $7cf6: $05
	adc  h                                           ; $7cf7: $8c
	ld   bc, $0d08                                   ; $7cf8: $01 $08 $0d
	rst  $38                                         ; $7cfb: $ff
	rst  $38                                         ; $7cfc: $ff
	adc  h                                           ; $7cfd: $8c
	ld   d, b                                        ; $7cfe: $50
	adc  h                                           ; $7cff: $8c
	ld   d, b                                        ; $7d00: $50
	ld   e, c                                        ; $7d01: $59
	ld   a, b                                        ; $7d02: $78
	ld   sp, hl                                      ; $7d03: $f9
	dec  c                                           ; $7d04: $0d
	nop                                              ; $7d05: $00
	ld   a, [bc]                                     ; $7d06: $0a
	ld   b, $bd                                      ; $7d07: $06 $bd
	ld   a, [bc]                                     ; $7d09: $0a
	rrca                                             ; $7d0a: $0f
	nop                                              ; $7d0b: $00
	ld   bc, $0101                                   ; $7d0c: $01 $01 $01
	rlca                                             ; $7d0f: $07
	ld   [bc], a                                     ; $7d10: $02
	ld   h, e                                        ; $7d11: $63
	inc  b                                           ; $7d12: $04
	ld   l, a                                        ; $7d13: $6f
	ld   a, l                                        ; $7d14: $7d
	inc  b                                           ; $7d15: $04
	ld   b, d                                        ; $7d16: $42
	ld   [hl], h                                     ; $7d17: $74
	adc  h                                           ; $7d18: $8c
	ld   [hl], h                                     ; $7d19: $74
	rst  $38                                         ; $7d1a: $ff
	rst  $38                                         ; $7d1b: $ff
	dec  b                                           ; $7d1c: $05
	adc  h                                           ; $7d1d: $8c
	ld   bc, $0d08                                   ; $7d1e: $01 $08 $0d
	rst  $38                                         ; $7d21: $ff
	rst  $38                                         ; $7d22: $ff
	add  e                                           ; $7d23: $83
	ld   d, h                                        ; $7d24: $54
	and  c                                           ; $7d25: $a1
	sbc  a                                           ; $7d26: $9f
	dec  c                                           ; $7d27: $0d
	nop                                              ; $7d28: $00
	ld   a, [bc]                                     ; $7d29: $0a
	ld   b, $bd                                      ; $7d2a: $06 $bd
	ld   a, [bc]                                     ; $7d2c: $0a
	rrca                                             ; $7d2d: $0f
	ld   bc, $0100                                   ; $7d2e: $01 $00 $01
	ld   h, e                                        ; $7d31: $63
	sbc  [hl]                                        ; $7d32: $9e
	ld   [bc], a                                     ; $7d33: $02
	ld   a, a                                        ; $7d34: $7f
	ld   e, e                                        ; $7d35: $5b
	adc  h                                           ; $7d36: $8c
	ld   h, l                                        ; $7d37: $65
	sub  l                                           ; $7d38: $95
	ld   d, h                                        ; $7d39: $54
	ld   e, c                                        ; $7d3a: $59
	sbc  a                                           ; $7d3b: $9f
	dec  c                                           ; $7d3c: $0d
	nop                                              ; $7d3d: $00
	ld   a, [bc]                                     ; $7d3e: $0a
	dec  c                                           ; $7d3f: $0d
	nop                                              ; $7d40: $00
	nop                                              ; $7d41: $00
	rrca                                             ; $7d42: $0f
	nop                                              ; $7d43: $00
	ld   bc, $4e06                                   ; $7d44: $01 $06 $4e
	dec  bc                                          ; $7d47: $0b
	rrca                                             ; $7d48: $0f
	nop                                              ; $7d49: $00
	ld   bc, $0101                                   ; $7d4a: $01 $01 $01
	rlca                                             ; $7d4d: $07
	inc  bc                                          ; $7d4e: $03
	ld   a, $65                                      ; $7d4f: $3e $65
	ld   [hl], h                                     ; $7d51: $74
	ld   h, l                                        ; $7d52: $65
	ld   e, c                                        ; $7d53: $59
	ld   a, [hl]                                     ; $7d54: $7e
	ld   a, e                                        ; $7d55: $7b

Call_063_7d56:
	and  b                                           ; $7d56: $a0
	add  b                                           ; $7d57: $80
	sbc  e                                           ; $7d58: $9b
	ld   d, h                                        ; $7d59: $54
	inc  bc                                          ; $7d5a: $03
	or   b                                           ; $7d5b: $b0
	dec  c                                           ; $7d5c: $0d
	db   $10                                         ; $7d5d: $10
	ld   a, b                                        ; $7d5e: $78
	ld   h, l                                        ; $7d5f: $65
	rst  $38                                         ; $7d60: $ff
	rst  $38                                         ; $7d61: $ff
	dec  b                                           ; $7d62: $05
	add  d                                           ; $7d63: $82
	ld   bc, $ff08                                   ; $7d64: $01 $08 $ff
	rst  $38                                         ; $7d67: $ff
	or   e                                           ; $7d68: $b3
	or   e                                           ; $7d69: $b3
	call nz, $0d9f                                   ; $7d6a: $c4 $9f $0d
	nop                                              ; $7d6d: $00
	ld   a, [bc]                                     ; $7d6e: $0a
	rrca                                             ; $7d6f: $0f
	ld   bc, $0100                                   ; $7d70: $01 $00 $01
	rst  $38                                         ; $7d73: $ff
	rst  $38                                         ; $7d74: $ff
	ld   sp, hl                                      ; $7d75: $f9
	dec  c                                           ; $7d76: $0d
	ld   [$6300], sp                                 ; $7d77: $08 $00 $63
	and  c                                           ; $7d7a: $a1
	sbc  [hl]                                        ; $7d7b: $9e
	dec  c                                           ; $7d7c: $0d
	ld   [hl], a                                     ; $7d7d: $77
	ld   d, h                                        ; $7d7e: $54
	ld   e, c                                        ; $7d7f: $59
	ld   h, l                                        ; $7d80: $65
	adc  h                                           ; $7d81: $8c
	ld   h, l                                        ; $7d82: $65
	ld   l, l                                        ; $7d83: $6d
	ld   e, c                                        ; $7d84: $59
	ld   sp, hl                                      ; $7d85: $f9
	dec  c                                           ; $7d86: $0d
	nop                                              ; $7d87: $00
	ld   a, [bc]                                     ; $7d88: $0a
	rrca                                             ; $7d89: $0f
	nop                                              ; $7d8a: $00
	ld   bc, $5201                                   ; $7d8b: $01 $01 $52
	sbc  [hl]                                        ; $7d8e: $9e
	ld   d, d                                        ; $7d8f: $52
	sub  d                                           ; $7d90: $92
	rst  $38                                         ; $7d91: $ff
	rst  $38                                         ; $7d92: $ff
	dec  c                                           ; $7d93: $0d
	ld   a, b                                        ; $7d94: $78
	and  c                                           ; $7d95: $a1
	ld   [hl], l                                     ; $7d96: $75
	sub  b                                           ; $7d97: $90
	ld   a, b                                        ; $7d98: $78
	ld   d, d                                        ; $7d99: $52
	ld   [hl], l                                     ; $7d9a: $75
	ld   h, a                                        ; $7d9b: $67
	sbc  a                                           ; $7d9c: $9f
	dec  c                                           ; $7d9d: $0d
	nop                                              ; $7d9e: $00
	ld   a, [bc]                                     ; $7d9f: $0a
	rrca                                             ; $7da0: $0f
	ld   bc, $0100                                   ; $7da1: $01 $00 $01
	ld   l, e                                        ; $7da4: $6b
	sbc  d                                           ; $7da5: $9a
	ld   h, [hl]                                     ; $7da6: $66
	sub  c                                           ; $7da7: $91
	sbc  [hl]                                        ; $7da8: $9e
	ld   [bc], a                                     ; $7da9: $02
	ld   a, a                                        ; $7daa: $7f
	ld   e, e                                        ; $7dab: $5b
	adc  h                                           ; $7dac: $8c
	ld   h, l                                        ; $7dad: $65
	sub  l                                           ; $7dae: $95
	ld   d, h                                        ; $7daf: $54
	ld   e, c                                        ; $7db0: $59
	sbc  a                                           ; $7db1: $9f
	dec  c                                           ; $7db2: $0d
	nop                                              ; $7db3: $00
	ld   a, [bc]                                     ; $7db4: $0a
	dec  c                                           ; $7db5: $0d
	nop                                              ; $7db6: $00
	nop                                              ; $7db7: $00
	rrca                                             ; $7db8: $0f
	nop                                              ; $7db9: $00
	ld   bc, $4e06                                   ; $7dba: $01 $06 $4e
	dec  bc                                          ; $7dbd: $0b
	inc  hl                                          ; $7dbe: $23
	add  h                                           ; $7dbf: $84
	inc  e                                           ; $7dc0: $1c
	ld   bc, $0000                                   ; $7dc1: $01 $00 $00
	ld   bc, $a502                                   ; $7dc4: $01 $02 $a5
	inc  b                                           ; $7dc7: $04
	add  hl, hl                                      ; $7dc8: $29
	ld   a, h                                        ; $7dc9: $7c
	ld   [bc], a                                     ; $7dca: $02
	sbc  c                                           ; $7dcb: $99
	ld   [bc], a                                     ; $7dcc: $02
	rra                                              ; $7dcd: $1f
	rst  $38                                         ; $7dce: $ff
	rst  $38                                         ; $7dcf: $ff
	dec  c                                           ; $7dd0: $0d
	inc  bc                                          ; $7dd1: $03
	ld   [de], a                                     ; $7dd2: $12
	ld   [bc], a                                     ; $7dd3: $02
	ld   c, h                                        ; $7dd4: $4c
	ld   h, a                                        ; $7dd5: $67
	sbc  c                                           ; $7dd6: $99
	halt                                             ; $7dd7: $76
	ld   d, d                                        ; $7dd8: $52
	ld   d, d                                        ; $7dd9: $52
	ld   a, b                                        ; $7dda: $78
	ld   c, a                                        ; $7ddb: $4f
	rst  $38                                         ; $7ddc: $ff
	rst  $38                                         ; $7ddd: $ff
	dec  c                                           ; $7dde: $0d
	nop                                              ; $7ddf: $00
	ld   a, [bc]                                     ; $7de0: $0a
	rrca                                             ; $7de1: $0f
	nop                                              ; $7de2: $00
	ld   bc, $0401                                   ; $7de3: $01 $01 $04
	adc  a                                           ; $7de6: $8f
	inc  b                                           ; $7de7: $04
	jr   jr_063_7e63                                 ; $7de8: $18 $79

	inc  b                                           ; $7dea: $04
	adc  [hl]                                        ; $7deb: $8e
	inc  b                                           ; $7dec: $04
	inc  c                                           ; $7ded: $0c
	ld   e, d                                        ; $7dee: $5a
	dec  c                                           ; $7def: $0d
	ld   [bc], a                                     ; $7df0: $02
	sbc  d                                           ; $7df1: $9a
	ld   e, e                                        ; $7df2: $5b
	ld   a, b                                        ; $7df3: $78
	and  c                                           ; $7df4: $a1
	ld   [hl], l                                     ; $7df5: $75
	ld   h, a                                        ; $7df6: $67
	ld   a, e                                        ; $7df7: $7b
	sbc  a                                           ; $7df8: $9f
	dec  c                                           ; $7df9: $0d
	nop                                              ; $7dfa: $00
	ld   a, [bc]                                     ; $7dfb: $0a
	inc  e                                           ; $7dfc: $1c
	ld   bc, $0505                                   ; $7dfd: $01 $05 $05
	ld   bc, $5656                                   ; $7e00: $01 $56 $56
	sbc  a                                           ; $7e03: $9f
	dec  c                                           ; $7e04: $0d
	inc  b                                           ; $7e05: $04
	adc  [hl]                                        ; $7e06: $8e
	inc  b                                           ; $7e07: $04
	inc  c                                           ; $7e08: $0c
	ld   [hl], c                                     ; $7e09: $71
	ld   [hl], h                                     ; $7e0a: $74
	ld   h, a                                        ; $7e0b: $67
	ld   a, [hl]                                     ; $7e0c: $7e
	sub  a                                           ; $7e0d: $97
	ld   h, l                                        ; $7e0e: $65
	ld   d, d                                        ; $7e0f: $52
	halt                                             ; $7e10: $76
	dec  c                                           ; $7e11: $0d
	dec  b                                           ; $7e12: $05
	pop  de                                          ; $7e13: $d1
	ld   d, d                                        ; $7e14: $52
	adc  h                                           ; $7e15: $8c
	ld   l, c                                        ; $7e16: $69
	and  c                                           ; $7e17: $a1
	ld   sp, hl                                      ; $7e18: $f9
	dec  c                                           ; $7e19: $0d
	nop                                              ; $7e1a: $00
	ld   a, [bc]                                     ; $7e1b: $0a
	add  hl, de                                      ; $7e1c: $19
	dec  b                                           ; $7e1d: $05
	ld   [bc], a                                     ; $7e1e: $02
	ld   l, e                                        ; $7e1f: $6b
	ld   d, h                                        ; $7e20: $54
	dec  b                                           ; $7e21: $05
	pop  de                                          ; $7e22: $d1
	ld   d, d                                        ; $7e23: $52
	adc  h                                           ; $7e24: $8c
	ld   h, a                                        ; $7e25: $67
	nop                                              ; $7e26: $00
	nop                                              ; $7e27: $00
	ld   l, e                                        ; $7e28: $6b
	ld   d, h                                        ; $7e29: $54
	ld   [hl], l                                     ; $7e2a: $75
	ld   h, a                                        ; $7e2b: $67
	ld   e, c                                        ; $7e2c: $59
	ld   a, e                                        ; $7e2d: $7b
	nop                                              ; $7e2e: $00
	ld   bc, $d507                                   ; $7e2f: $01 $07 $d5
	dec  bc                                          ; $7e32: $0b
	ld   [bc], a                                     ; $7e33: $02
	inc  bc                                          ; $7e34: $03
	ld   bc, $2000                                   ; $7e35: $01 $00 $20
	nop                                              ; $7e38: $00
	rlca                                             ; $7e39: $07
	ld   b, [hl]                                     ; $7e3a: $46
	inc  c                                           ; $7e3b: $0c
	ld   [bc], a                                     ; $7e3c: $02
	inc  bc                                          ; $7e3d: $03
	ld   bc, $2001                                   ; $7e3e: $01 $01 $20
	nop                                              ; $7e41: $00
	ld   b, $e5                                      ; $7e42: $06 $e5
	inc  c                                           ; $7e44: $0c
	rrca                                             ; $7e45: $0f
	nop                                              ; $7e46: $00
	ld   bc, $6b01                                   ; $7e47: $01 $01 $6b
	ld   d, h                                        ; $7e4a: $54
	dec  b                                           ; $7e4b: $05
	pop  de                                          ; $7e4c: $d1
	ld   d, d                                        ; $7e4d: $52
	adc  h                                           ; $7e4e: $8c
	ld   h, a                                        ; $7e4f: $67
	sbc  a                                           ; $7e50: $9f
	dec  c                                           ; $7e51: $0d
	inc  bc                                          ; $7e52: $03
	xor  a                                           ; $7e53: $af
	ld   h, e                                        ; $7e54: $63
	ld   a, b                                        ; $7e55: $78
	inc  b                                           ; $7e56: $04
	adc  [hl]                                        ; $7e57: $8e
	inc  b                                           ; $7e58: $04
	inc  c                                           ; $7e59: $0c
	ld   e, d                                        ; $7e5a: $5a
	inc  b                                           ; $7e5b: $04
	ld   c, $5b                                      ; $7e5c: $0e $5b
	ld   a, b                                        ; $7e5e: $78
	ld   [bc], a                                     ; $7e5f: $02
	or   [hl]                                        ; $7e60: $b6
	ld   [bc], a                                     ; $7e61: $02
	xor  c                                           ; $7e62: $a9

jr_063_7e63:
	ld   a, c                                        ; $7e63: $79
	ld   a, b                                        ; $7e64: $78
	sbc  c                                           ; $7e65: $99
	dec  c                                           ; $7e66: $0d
	ld   l, e                                        ; $7e67: $6b
	ld   a, h                                        ; $7e68: $7c
	ld   h, l                                        ; $7e69: $65
	sub  e                                           ; $7e6a: $93
	and  c                                           ; $7e6b: $a1
	ld   [bc], a                                     ; $7e6c: $02
	xor  c                                           ; $7e6d: $a9
	ld   e, d                                        ; $7e6e: $5a
	inc  bc                                          ; $7e6f: $03
	ld   l, c                                        ; $7e70: $69
	ld   [bc], a                                     ; $7e71: $02
	cp   [hl]                                        ; $7e72: $be
	ld   [hl], l                                     ; $7e73: $75
	ld   h, a                                        ; $7e74: $67
	sub  [hl]                                        ; $7e75: $96
	sbc  a                                           ; $7e76: $9f
	dec  c                                           ; $7e77: $0d
	nop                                              ; $7e78: $00
	ld   a, [bc]                                     ; $7e79: $0a
	inc  e                                           ; $7e7a: $1c
	ld   bc, $0101                                   ; $7e7b: $01 $01 $01
	ld   bc, $546b                                   ; $7e7e: $01 $6b $54
	ld   [hl], l                                     ; $7e81: $75
	ld   h, a                                        ; $7e82: $67
	sub  [hl]                                        ; $7e83: $96
	ld   a, e                                        ; $7e84: $7b
	sbc  a                                           ; $7e85: $9f
	dec  c                                           ; $7e86: $0d
	ld   [$6300], sp                                 ; $7e87: $08 $00 $63
	and  c                                           ; $7e8a: $a1
	sub  b                                           ; $7e8b: $90
	sbc  [hl]                                        ; $7e8c: $9e
	ld   l, e                                        ; $7e8d: $6b
	ld   d, h                                        ; $7e8e: $54
	dec  b                                           ; $7e8f: $05
	pop  de                                          ; $7e90: $d1
	ld   [hl], c                                     ; $7e91: $71
	ld   [hl], h                                     ; $7e92: $74
	dec  c                                           ; $7e93: $0d
	ld   e, l                                        ; $7e94: $5d
	sbc  d                                           ; $7e95: $9a
	ld   [hl], h                                     ; $7e96: $74
	sbc  c                                           ; $7e97: $99
	and  c                                           ; $7e98: $a1
	ld   [hl], l                                     ; $7e99: $75
	ld   h, a                                        ; $7e9a: $67
	ld   a, e                                        ; $7e9b: $7b
	sbc  a                                           ; $7e9c: $9f
	dec  c                                           ; $7e9d: $0d
	nop                                              ; $7e9e: $00
	ld   a, [bc]                                     ; $7e9f: $0a
	ld   bc, $9a54                                   ; $7ea0: $01 $54 $9a
	ld   h, l                                        ; $7ea3: $65
	ld   d, d                                        ; $7ea4: $52
	ld   a, b                                        ; $7ea5: $78
	db   $fc                                         ; $7ea6: $fc
	sbc  a                                           ; $7ea7: $9f
	dec  c                                           ; $7ea8: $0d
	nop                                              ; $7ea9: $00
	ld   a, [bc]                                     ; $7eaa: $0a
	dec  c                                           ; $7eab: $0d
	nop                                              ; $7eac: $00
	nop                                              ; $7ead: $00
	rrca                                             ; $7eae: $0f
	nop                                              ; $7eaf: $00
	ld   bc, $020c                                   ; $7eb0: $01 $0c $02
	ld   b, $14                                      ; $7eb3: $06 $14
	dec  c                                           ; $7eb5: $0d
	rrca                                             ; $7eb6: $0f
	nop                                              ; $7eb7: $00
	ld   bc, $6b01                                   ; $7eb8: $01 $01 $6b
	ld   d, h                                        ; $7ebb: $54
	ld   [hl], l                                     ; $7ebc: $75
	ld   h, a                                        ; $7ebd: $67
	ld   e, c                                        ; $7ebe: $59
	ld   a, e                                        ; $7ebf: $7b
	sbc  a                                           ; $7ec0: $9f
	dec  c                                           ; $7ec1: $0d
	ld   d, b                                        ; $7ec2: $50
	sbc  c                                           ; $7ec3: $99
	ld   [bc], a                                     ; $7ec4: $02
	ld   b, $04                                      ; $7ec5: $06 $04
	jp   nc, $ec9e                                   ; $7ec7: $d2 $9e $ec

	and  e                                           ; $7eca: $a3
	db   $ed                                         ; $7ecb: $ed
	ld   a, b                                        ; $7ecc: $78
	ld   [bc], a                                     ; $7ecd: $02
	or   a                                           ; $7ece: $b7
	inc  b                                           ; $7ecf: $04
	dec  de                                          ; $7ed0: $1b
	dec  b                                           ; $7ed1: $05
	call c, $ad03                                    ; $7ed2: $dc $03 $ad
	ld   a, h                                        ; $7ed5: $7c
	dec  c                                           ; $7ed6: $0d
	adc  c                                           ; $7ed7: $89
	ld   d, h                                        ; $7ed8: $54
	ld   e, d                                        ; $7ed9: $5a
	sbc  [hl]                                        ; $7eda: $9e
	inc  b                                           ; $7edb: $04
	ld   l, l                                        ; $7edc: $6d
	ld   a, l                                        ; $7edd: $7d
	ld   [bc], a                                     ; $7ede: $02
	sbc  d                                           ; $7edf: $9a
	ld   e, e                                        ; $7ee0: $5b
	ld   [hl], l                                     ; $7ee1: $75
	ld   h, a                                        ; $7ee2: $67
	sbc  a                                           ; $7ee3: $9f
	dec  c                                           ; $7ee4: $0d
	nop                                              ; $7ee5: $00
	ld   a, [bc]                                     ; $7ee6: $0a
	inc  e                                           ; $7ee7: $1c
	ld   bc, $0404                                   ; $7ee8: $01 $04 $04
	ld   bc, $546b                                   ; $7eeb: $01 $6b $54
	ld   [hl], l                                     ; $7eee: $75
	ld   h, a                                        ; $7eef: $67
	ld   e, c                                        ; $7ef0: $59
	rst  $38                                         ; $7ef1: $ff
	rst  $38                                         ; $7ef2: $ff
	dec  c                                           ; $7ef3: $0d
	nop                                              ; $7ef4: $00
	inc  e                                           ; $7ef5: $1c
	ld   bc, $0000                                   ; $7ef6: $01 $00 $00
	ld   bc, $9075                                   ; $7ef9: $01 $75 $90
	sbc  [hl]                                        ; $7efc: $9e
	inc  b                                           ; $7efd: $04
	adc  [hl]                                        ; $7efe: $8e
	inc  b                                           ; $7eff: $04
	inc  c                                           ; $7f00: $0c
	ld   [hl], c                                     ; $7f01: $71
	ld   [hl], h                                     ; $7f02: $74
	ld   [bc], a                                     ; $7f03: $02
	or   a                                           ; $7f04: $b7
	inc  b                                           ; $7f05: $04
	dec  de                                          ; $7f06: $1b
	dec  b                                           ; $7f07: $05
	call c, $ad03                                    ; $7f08: $dc $03 $ad
	halt                                             ; $7f0b: $76
	ld   a, l                                        ; $7f0c: $7d
	dec  c                                           ; $7f0d: $0d
	adc  h                                           ; $7f0e: $8c
	ld   l, l                                        ; $7f0f: $6d
	ld   l, a                                        ; $7f10: $6f
	ld   e, d                                        ; $7f11: $5a
	ld   d, h                                        ; $7f12: $54
	inc  bc                                          ; $7f13: $03
	ld   d, d                                        ; $7f14: $52
	ld   e, e                                        ; $7f15: $5b
	inc  bc                                          ; $7f16: $03
	ld   d, d                                        ; $7f17: $52
	ld   e, e                                        ; $7f18: $5b
	halt                                             ; $7f19: $76
	ld   h, l                                        ; $7f1a: $65
	ld   l, l                                        ; $7f1b: $6d
	rst  $38                                         ; $7f1c: $ff
	rst  $38                                         ; $7f1d: $ff
	dec  c                                           ; $7f1e: $0d
	nop                                              ; $7f1f: $00
	ld   a, [bc]                                     ; $7f20: $0a
	ld   bc, $7c6b                                   ; $7f21: $01 $6b $7c
	inc  b                                           ; $7f24: $04
	ld   a, d                                        ; $7f25: $7a
	ld   a, h                                        ; $7f26: $7c
	add  e                                           ; $7f27: $83
	and  c                                           ; $7f28: $a1
	ld   d, d                                        ; $7f29: $52
	ld   e, e                                        ; $7f2a: $5b
	rst  $38                                         ; $7f2b: $ff
	rst  $38                                         ; $7f2c: $ff
	dec  c                                           ; $7f2d: $0d
	ld   l, e                                        ; $7f2e: $6b
	ld   d, h                                        ; $7f2f: $54
	ld   d, d                                        ; $7f30: $52
	ld   [hl], c                                     ; $7f31: $71
	ld   l, l                                        ; $7f32: $6d
	dec  b                                           ; $7f33: $05
	inc  de                                          ; $7f34: $13
	ld   h, l                                        ; $7f35: $65
	ld   h, e                                        ; $7f36: $63
	ld   e, d                                        ; $7f37: $5a
	ld   d, b                                        ; $7f38: $50
	sbc  c                                           ; $7f39: $99
	halt                                             ; $7f3a: $76
	dec  c                                           ; $7f3b: $0d
	ld   d, b                                        ; $7f3c: $50
	ld   l, l                                        ; $7f3d: $6d
	ld   h, l                                        ; $7f3e: $65
	ld   a, l                                        ; $7f3f: $7d
	dec  b                                           ; $7f40: $05
	pop  de                                          ; $7f41: $d1
	ld   [hl], c                                     ; $7f42: $71
	ld   [hl], h                                     ; $7f43: $74
	adc  h                                           ; $7f44: $8c
	ld   h, a                                        ; $7f45: $67
	sbc  a                                           ; $7f46: $9f
	dec  c                                           ; $7f47: $0d
	nop                                              ; $7f48: $00
	ld   a, [bc]                                     ; $7f49: $0a
	dec  c                                           ; $7f4a: $0d
	nop                                              ; $7f4b: $00
	nop                                              ; $7f4c: $00
	rrca                                             ; $7f4d: $0f
	nop                                              ; $7f4e: $00
	ld   bc, $020c                                   ; $7f4f: $01 $0c $02
	ld   b, $14                                      ; $7f52: $06 $14
	dec  c                                           ; $7f54: $0d
	inc  e                                           ; $7f55: $1c
	ld   bc, $0303                                   ; $7f56: $01 $03 $03
	ld   bc, $9e50                                   ; $7f59: $01 $50 $9e
	ld   h, a                                        ; $7f5c: $67
	adc  l                                           ; $7f5d: $8d
	adc  h                                           ; $7f5e: $8c
	ld   l, c                                        ; $7f5f: $69
	and  c                                           ; $7f60: $a1
	sbc  a                                           ; $7f61: $9f
	dec  c                                           ; $7f62: $0d
	ld   [$6300], sp                                 ; $7f63: $08 $00 $63
	and  c                                           ; $7f66: $a1
	ld   a, c                                        ; $7f67: $79
	ld   a, l                                        ; $7f68: $7d
	sbc  [hl]                                        ; $7f69: $9e
	dec  c                                           ; $7f6a: $0d
	ld   e, e                                        ; $7f6b: $5b
	sub  l                                           ; $7f6c: $95
	ld   d, h                                        ; $7f6d: $54
	adc  l                                           ; $7f6e: $8d
	ld   a, b                                        ; $7f6f: $78
	ld   d, d                                        ; $7f70: $52
	dec  b                                           ; $7f71: $05
	jr   nz, jr_063_7fe9                             ; $7f72: $20 $75

	ld   h, a                                        ; $7f74: $67
	sub  [hl]                                        ; $7f75: $96
	ld   a, e                                        ; $7f76: $7b
	rst  $38                                         ; $7f77: $ff
	rst  $38                                         ; $7f78: $ff
	dec  c                                           ; $7f79: $0d
	nop                                              ; $7f7a: $00
	ld   a, [bc]                                     ; $7f7b: $0a
	dec  c                                           ; $7f7c: $0d
	nop                                              ; $7f7d: $00
	nop                                              ; $7f7e: $00
	rrca                                             ; $7f7f: $0f
	nop                                              ; $7f80: $00
	ld   bc, $020c                                   ; $7f81: $01 $0c $02
	ld   c, $92                                      ; $7f84: $0e $92
	inc  e                                           ; $7f86: $1c
	ld   bc, $0101                                   ; $7f87: $01 $01 $01
	ld   bc, $9a6b                                   ; $7f8a: $01 $6b $9a
	ld   a, c                                        ; $7f8d: $79
	ld   h, l                                        ; $7f8e: $65
	ld   [hl], h                                     ; $7f8f: $74
	sub  b                                           ; $7f90: $90
	rst  $38                                         ; $7f91: $ff
	rst  $38                                         ; $7f92: $ff
	dec  c                                           ; $7f93: $0d
	ld   d, d                                        ; $7f94: $52
	ld   d, d                                        ; $7f95: $52
	ld   e, b                                        ; $7f96: $58
	inc  b                                           ; $7f97: $04
	inc  de                                          ; $7f98: $13
	ld   [bc], a                                     ; $7f99: $02
	and  c                                           ; $7f9a: $a1
	ld   [hl], l                                     ; $7f9b: $75
	ld   h, a                                        ; $7f9c: $67
	ld   a, e                                        ; $7f9d: $7b
	db   $fc                                         ; $7f9e: $fc
	sbc  a                                           ; $7f9f: $9f
	dec  c                                           ; $7fa0: $0d
	nop                                              ; $7fa1: $00
	ld   a, [bc]                                     ; $7fa2: $0a
	rrca                                             ; $7fa3: $0f
	nop                                              ; $7fa4: $00
	ld   bc, $0401                                   ; $7fa5: $01 $01 $04
	adc  a                                           ; $7fa8: $8f
	inc  b                                           ; $7fa9: $04
	jr   @+$01                                       ; $7faa: $18 $ff

	rst  $38                                         ; $7fac: $ff
	dec  c                                           ; $7fad: $0d
	ld   e, b                                        ; $7fae: $58
	ld   h, e                                        ; $7faf: $63
	and  c                                           ; $7fb0: $a1
	adc  e                                           ; $7fb1: $8b
	inc  b                                           ; $7fb2: $04
	xor  d                                           ; $7fb3: $aa
	sub  [hl]                                        ; $7fb4: $96
	sbc  b                                           ; $7fb5: $98
	ld   [hl], l                                     ; $7fb6: $75
	ld   h, a                                        ; $7fb7: $67
	sub  [hl]                                        ; $7fb8: $96
	ld   a, e                                        ; $7fb9: $7b
	sbc  a                                           ; $7fba: $9f
	dec  c                                           ; $7fbb: $0d
	nop                                              ; $7fbc: $00
	ld   a, [bc]                                     ; $7fbd: $0a
	inc  e                                           ; $7fbe: $1c
	ld   bc, $0000                                   ; $7fbf: $01 $00 $00
	ld   bc, $9e50                                   ; $7fc2: $01 $50 $9e
	halt                                             ; $7fc5: $76
	ld   h, c                                        ; $7fc6: $61
	sbc  e                                           ; $7fc7: $9b
	ld   [hl], l                                     ; $7fc8: $75
	dec  c                                           ; $7fc9: $0d
	ld   l, a                                        ; $7fca: $6f
	sub  l                                           ; $7fcb: $95
	ld   [hl], c                                     ; $7fcc: $71
	halt                                             ; $7fcd: $76
	ld   [bc], a                                     ; $7fce: $02
	jp   nz, Jump_063_6d5b                           ; $7fcf: $c2 $5b $6d

	ld   d, d                                        ; $7fd2: $52
	and  c                                           ; $7fd3: $a1
	ld   [hl], l                                     ; $7fd4: $75
	ld   h, a                                        ; $7fd5: $67
	ld   e, d                                        ; $7fd6: $5a
	rst  $38                                         ; $7fd7: $ff
	rst  $38                                         ; $7fd8: $ff
	dec  c                                           ; $7fd9: $0d
	nop                                              ; $7fda: $00
	ld   a, [bc]                                     ; $7fdb: $0a
	ld   bc, $0008                                   ; $7fdc: $01 $08 $00
	ld   h, e                                        ; $7fdf: $63
	and  c                                           ; $7fe0: $a1
	ld   a, l                                        ; $7fe1: $7d
	sbc  [hl]                                        ; $7fe2: $9e
	inc  b                                           ; $7fe3: $04
	dec  c                                           ; $7fe4: $0d
	ld   [bc], a                                     ; $7fe5: $02
	sub  [hl]                                        ; $7fe6: $96
	inc  b                                           ; $7fe7: $04
	ld   b, l                                        ; $7fe8: $45

jr_063_7fe9:
	inc  b                                           ; $7fe9: $04
	ld   a, [bc]                                     ; $7fea: $0a
	ld   e, d                                        ; $7feb: $5a
	dec  c                                           ; $7fec: $0d
	inc  bc                                          ; $7fed: $03
	ld   a, [hl]                                     ; $7fee: $7e
	sbc  l                                           ; $7fef: $9d
	ld   [hl], c                                     ; $7ff0: $71
	ld   l, l                                        ; $7ff1: $6d
	sub  a                                           ; $7ff2: $97
	sbc  [hl]                                        ; $7ff3: $9e
	dec  c                                           ; $7ff4: $0d
	ld   [hl], a                                     ; $7ff5: $77
	ld   d, h                                        ; $7ff6: $54
	ld   h, a                                        ; $7ff7: $67
	sbc  c                                           ; $7ff8: $99
	and  c                                           ; $7ff9: $a1
	ld   [hl], l                                     ; $7ffa: $75
	ld   h, a                                        ; $7ffb: $67
	ld   e, c                                        ; $7ffc: $59
	ld   sp, hl                                      ; $7ffd: $f9
	dec  c                                           ; $7ffe: $0d
	nop                                              ; $7fff: $00
