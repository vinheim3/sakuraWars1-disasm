; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $04a", ROMX[$4000], BANK[$4a]

	ld   a, c                                        ; $4000: $79
	ld   [bc], a                                     ; $4001: $02
	add  hl, bc                                      ; $4002: $09
	ld   d, [hl]                                     ; $4003: $56
	sub  a                                           ; $4004: $97
	sbc  d                                           ; $4005: $9a
	sbc  c                                           ; $4006: $99
	sub  [hl]                                        ; $4007: $96
	ld   d, h                                        ; $4008: $54
	ld   a, c                                        ; $4009: $79
	dec  c                                           ; $400a: $0d
	ld   e, d                                        ; $400b: $5a
	and  c                                           ; $400c: $a1
	ld   a, [hl]                                     ; $400d: $7e
	sbc  c                                           ; $400e: $99
	and  c                                           ; $400f: $a1
	ld   l, [hl]                                     ; $4010: $6e
	ld   l, h                                        ; $4011: $6c
	sbc  a                                           ; $4012: $9f
	dec  c                                           ; $4013: $0d
	nop                                              ; $4014: $00
	ld   a, [bc]                                     ; $4015: $0a
	ld   b, $1c                                      ; $4016: $06 $1c
	ld   a, [bc]                                     ; $4018: $0a
	rrca                                             ; $4019: $0f
	nop                                              ; $401a: $00
	ld   bc, $ac01                                   ; $401b: $01 $01 $ac
	push af                                          ; $401e: $f5
	bit  4, e                                        ; $401f: $cb $63
	and  c                                           ; $4021: $a1
	ld   a, h                                        ; $4022: $7c
	inc  b                                           ; $4023: $04
	ld   l, l                                        ; $4024: $6d
	add  [hl]                                        ; $4025: $86
	ld   a, h                                        ; $4026: $7c
	inc  b                                           ; $4027: $04
	ld   d, a                                        ; $4028: $57
	inc  b                                           ; $4029: $04
	ld   h, e                                        ; $402a: $63
	ld   [hl], c                                     ; $402b: $71
	ld   [hl], h                                     ; $402c: $74
	dec  c                                           ; $402d: $0d
	ld   [hl], a                                     ; $402e: $77
	ld   d, h                                        ; $402f: $54
	ld   a, b                                        ; $4030: $78
	and  c                                           ; $4031: $a1
	ld   [hl], l                                     ; $4032: $75

jr_04a_4033:
	ld   h, l                                        ; $4033: $65
	sub  l                                           ; $4034: $95
	ld   d, h                                        ; $4035: $54
	ld   e, c                                        ; $4036: $59
	ld   sp, hl                                      ; $4037: $f9
	dec  c                                           ; $4038: $0d
	nop                                              ; $4039: $00
	ld   a, [bc]                                     ; $403a: $0a
	rrca                                             ; $403b: $0f
	add  hl, bc                                      ; $403c: $09
	nop                                              ; $403d: $00
	ld   bc, $8e83                                   ; $403e: $01 $83 $8e
	sbc  [hl]                                        ; $4041: $9e
	ld   l, e                                        ; $4042: $6b
	ld   d, h                                        ; $4043: $54
	ld   l, [hl]                                     ; $4044: $6e
	ld   a, b                                        ; $4045: $78
	rst  $38                                         ; $4046: $ff
	rst  $38                                         ; $4047: $ff
	dec  c                                           ; $4048: $0d
	nop                                              ; $4049: $00
	ld   a, [bc]                                     ; $404a: $0a
	rlca                                             ; $404b: $07
	adc  [hl]                                        ; $404c: $8e
	add  hl, bc                                      ; $404d: $09
	inc  bc                                          ; $404e: $03
	ld   d, $01                                      ; $404f: $16 $01
	ld   h, h                                        ; $4051: $64
	inc  hl                                          ; $4052: $23
	nop                                              ; $4053: $00
	rlca                                             ; $4054: $07
	db   $db                                         ; $4055: $db
	add  hl, bc                                      ; $4056: $09
	inc  bc                                          ; $4057: $03
	ld   d, $01                                      ; $4058: $16 $01
	ld   a, h                                        ; $405a: $7c
	dec  h                                           ; $405b: $25
	nop                                              ; $405c: $00
	ld   bc, $f5ac                                   ; $405d: $01 $ac $f5
	bit  7, h                                        ; $4060: $cb $7c
	sbc  [hl]                                        ; $4062: $9e
	ld   [$5d00], sp                                 ; $4063: $08 $00 $5d
	and  c                                           ; $4066: $a1
	dec  c                                           ; $4067: $0d
	add  [hl]                                        ; $4068: $86
	ld   a, h                                        ; $4069: $7c
	inc  b                                           ; $406a: $04
	ld   d, a                                        ; $406b: $57
	inc  b                                           ; $406c: $04
	ld   h, e                                        ; $406d: $63
	ld   a, l                                        ; $406e: $7d
	sbc  [hl]                                        ; $406f: $9e
	adc  h                                           ; $4070: $8c
	ld   d, b                                        ; $4071: $50
	adc  h                                           ; $4072: $8c
	ld   d, b                                        ; $4073: $50
	dec  c                                           ; $4074: $0d
	halt                                             ; $4075: $76
	ld   d, d                                        ; $4076: $52
	ld   [hl], c                                     ; $4077: $71
	ld   l, l                                        ; $4078: $6d
	halt                                             ; $4079: $76
	ld   h, c                                        ; $407a: $61
	sbc  e                                           ; $407b: $9b
	ld   e, c                                        ; $407c: $59
	ld   a, b                                        ; $407d: $78
	sbc  a                                           ; $407e: $9f
	dec  c                                           ; $407f: $0d
	nop                                              ; $4080: $00
	ld   a, [bc]                                     ; $4081: $0a
	ld   bc, $5d76                                   ; $4082: $01 $76 $5d
	ld   a, c                                        ; $4085: $79
	ld   [bc], a                                     ; $4086: $02
	jr   z, jr_04a_40db                              ; $4087: $28 $52

	dec  b                                           ; $4089: $05
	jr   nz, @-$6e                                   ; $408a: $20 $90

	ld   [bc], a                                     ; $408c: $02
	jp   nz, Jump_04a_7859                           ; $408d: $c2 $59 $78

	ld   d, d                                        ; $4090: $52
	ld   h, l                                        ; $4091: $65
	rst  $38                                         ; $4092: $ff
	rst  $38                                         ; $4093: $ff
	dec  c                                           ; $4094: $0d
	ld   e, c                                        ; $4095: $59
	halt                                             ; $4096: $76
	ld   d, d                                        ; $4097: $52
	ld   [hl], c                                     ; $4098: $71
	ld   [hl], h                                     ; $4099: $74
	sbc  [hl]                                        ; $409a: $9e
	ld   d, d                                        ; $409b: $52
	ld   d, d                                        ; $409c: $52
	halt                                             ; $409d: $76
	ld   d, d                                        ; $409e: $52
	ld   d, h                                        ; $409f: $54
	dec  b                                           ; $40a0: $05
	jr   nz, jr_04a_4033                             ; $40a1: $20 $90

	dec  c                                           ; $40a3: $0d
	ld   [bc], a                                     ; $40a4: $02
	jp   nz, Jump_04a_7859                           ; $40a5: $c2 $59 $78

	ld   d, d                                        ; $40a8: $52
	ld   a, b                                        ; $40a9: $78
	sbc  a                                           ; $40aa: $9f
	dec  c                                           ; $40ab: $0d
	nop                                              ; $40ac: $00
	ld   a, [bc]                                     ; $40ad: $0a
	ld   b, $1c                                      ; $40ae: $06 $1c
	ld   a, [bc]                                     ; $40b0: $0a
	ld   bc, $f5ac                                   ; $40b1: $01 $ac $f5
	bit  7, h                                        ; $40b4: $cb $7c
	sbc  [hl]                                        ; $40b6: $9e
	ld   [$5d00], sp                                 ; $40b7: $08 $00 $5d
	and  c                                           ; $40ba: $a1
	dec  c                                           ; $40bb: $0d
	add  [hl]                                        ; $40bc: $86
	ld   a, h                                        ; $40bd: $7c
	inc  b                                           ; $40be: $04
	ld   d, a                                        ; $40bf: $57
	inc  b                                           ; $40c0: $04
	ld   h, e                                        ; $40c1: $63
	ld   a, l                                        ; $40c2: $7d
	rst  $38                                         ; $40c3: $ff
	rst  $38                                         ; $40c4: $ff
	dec  c                                           ; $40c5: $0d
	ld   d, b                                        ; $40c6: $50
	adc  h                                           ; $40c7: $8c
	sbc  b                                           ; $40c8: $98
	sub  [hl]                                        ; $40c9: $96
	ld   e, l                                        ; $40ca: $5d
	ld   a, b                                        ; $40cb: $78
	ld   d, d                                        ; $40cc: $52
	ld   a, b                                        ; $40cd: $78
	sbc  a                                           ; $40ce: $9f
	dec  c                                           ; $40cf: $0d
	nop                                              ; $40d0: $00
	ld   a, [bc]                                     ; $40d1: $0a
	ld   bc, $7190                                   ; $40d2: $01 $90 $71
	halt                                             ; $40d5: $76
	ld   [bc], a                                     ; $40d6: $02
	ld   a, [de]                                     ; $40d7: $1a
	inc  bc                                          ; $40d8: $03
	ld   l, e                                        ; $40d9: $6b
	ld   a, h                                        ; $40da: $7c

jr_04a_40db:
	ld   [bc], a                                     ; $40db: $02
	and  c                                           ; $40dc: $a1
	inc  bc                                          ; $40dd: $03
	and  b                                           ; $40de: $a0
	ld   l, a                                        ; $40df: $6f
	and  b                                           ; $40e0: $a0
	dec  c                                           ; $40e1: $0d
	ld   [bc], a                                     ; $40e2: $02
	ld   h, l                                        ; $40e3: $65
	ld   d, [hl]                                     ; $40e4: $56
	ld   [hl], h                                     ; $40e5: $74
	ld   [bc], a                                     ; $40e6: $02
	ld   a, a                                        ; $40e7: $7f
	inc  b                                           ; $40e8: $04
	dec  de                                          ; $40e9: $1b
	ld   h, l                                        ; $40ea: $65
	ld   l, l                                        ; $40eb: $6d
	adc  c                                           ; $40ec: $89
	ld   d, h                                        ; $40ed: $54
	ld   e, d                                        ; $40ee: $5a
	ld   d, d                                        ; $40ef: $52
	ld   d, d                                        ; $40f0: $52
	halt                                             ; $40f1: $76
	dec  c                                           ; $40f2: $0d
	dec  b                                           ; $40f3: $05
	pop  de                                          ; $40f4: $d1
	ld   d, h                                        ; $40f5: $54
	ld   l, h                                        ; $40f6: $6c
	sbc  a                                           ; $40f7: $9f
	dec  c                                           ; $40f8: $0d
	nop                                              ; $40f9: $00
	ld   a, [bc]                                     ; $40fa: $0a
	ld   b, $1c                                      ; $40fb: $06 $1c
	ld   a, [bc]                                     ; $40fd: $0a
	ld   bc, $f5ac                                   ; $40fe: $01 $ac $f5
	bit  7, h                                        ; $4101: $cb $7c
	sbc  [hl]                                        ; $4103: $9e
	ld   [$5d00], sp                                 ; $4104: $08 $00 $5d
	and  c                                           ; $4107: $a1
	dec  c                                           ; $4108: $0d
	add  [hl]                                        ; $4109: $86
	ld   a, h                                        ; $410a: $7c
	inc  b                                           ; $410b: $04
	ld   d, a                                        ; $410c: $57
	inc  b                                           ; $410d: $04
	ld   h, e                                        ; $410e: $63
	ld   a, l                                        ; $410f: $7d
	sbc  [hl]                                        ; $4110: $9e
	ld   e, c                                        ; $4111: $59
	ld   a, b                                        ; $4112: $78
	sbc  b                                           ; $4113: $98
	ld   d, d                                        ; $4114: $52
	ld   d, d                                        ; $4115: $52
	dec  c                                           ; $4116: $0d
	halt                                             ; $4117: $76
	dec  b                                           ; $4118: $05
	pop  de                                          ; $4119: $d1
	ld   d, h                                        ; $411a: $54
	ld   l, h                                        ; $411b: $6c
	sbc  a                                           ; $411c: $9f
	dec  c                                           ; $411d: $0d
	nop                                              ; $411e: $00
	ld   a, [bc]                                     ; $411f: $0a
	ld   bc, wGameResultsReturnSubstate                                   ; $4120: $01 $02 $ca
	sub  b                                           ; $4123: $90
	ld   l, e                                        ; $4124: $6b
	sbc  d                                           ; $4125: $9a
	ld   a, c                                        ; $4126: $79
	ld   [bc], a                                     ; $4127: $02
	add  hl, bc                                      ; $4128: $09
	ld   d, [hl]                                     ; $4129: $56
	sub  a                                           ; $412a: $97
	sbc  d                                           ; $412b: $9a
	sbc  c                                           ; $412c: $99
	sub  [hl]                                        ; $412d: $96
	ld   d, h                                        ; $412e: $54
	ld   a, c                                        ; $412f: $79
	dec  c                                           ; $4130: $0d
	ld   e, d                                        ; $4131: $5a
	and  c                                           ; $4132: $a1
	ld   a, [hl]                                     ; $4133: $7e
	sbc  c                                           ; $4134: $99
	and  c                                           ; $4135: $a1
	ld   l, [hl]                                     ; $4136: $6e
	ld   l, h                                        ; $4137: $6c
	sbc  a                                           ; $4138: $9f
	dec  c                                           ; $4139: $0d
	nop                                              ; $413a: $00
	ld   a, [bc]                                     ; $413b: $0a
	ld   b, $1c                                      ; $413c: $06 $1c
	ld   a, [bc]                                     ; $413e: $0a
	rrca                                             ; $413f: $0f
	nop                                              ; $4140: $00
	ld   bc, $6b01                                   ; $4141: $01 $01 $6b
	ld   d, h                                        ; $4144: $54
	ld   [hl], l                                     ; $4145: $75
	ld   h, a                                        ; $4146: $67
	ld   e, c                                        ; $4147: $59
	rst  $38                                         ; $4148: $ff
	rst  $38                                         ; $4149: $ff
	dec  c                                           ; $414a: $0d
	ld   d, b                                        ; $414b: $50
	sbc  b                                           ; $414c: $98
	ld   e, d                                        ; $414d: $5a
	halt                                             ; $414e: $76
	ld   d, h                                        ; $414f: $54
	ld   h, d                                        ; $4150: $62
	ld   h, h                                        ; $4151: $64
	ld   d, d                                        ; $4152: $52
	adc  h                                           ; $4153: $8c
	ld   h, l                                        ; $4154: $65
	ld   l, l                                        ; $4155: $6d
	sbc  a                                           ; $4156: $9f
	dec  c                                           ; $4157: $0d
	nop                                              ; $4158: $00
	ld   a, [bc]                                     ; $4159: $0a
	rrca                                             ; $415a: $0f
	add  hl, bc                                      ; $415b: $09
	nop                                              ; $415c: $00
	ld   bc, $a154                                   ; $415d: $01 $54 $a1
	sbc  a                                           ; $4160: $9f
	dec  c                                           ; $4161: $0d
	ld   e, d                                        ; $4162: $5a
	and  c                                           ; $4163: $a1
	ld   a, [hl]                                     ; $4164: $7e
	sbc  d                                           ; $4165: $9a
	sub  [hl]                                        ; $4166: $96
	sbc  a                                           ; $4167: $9f
	dec  c                                           ; $4168: $0d
	nop                                              ; $4169: $00
	ld   a, [bc]                                     ; $416a: $0a
	nop                                              ; $416b: $00
	rrca                                             ; $416c: $0f
	nop                                              ; $416d: $00
	ld   bc, $5001                                   ; $416e: $01 $01 $50
	ld   a, h                                        ; $4171: $7c
	sbc  [hl]                                        ; $4172: $9e
	inc  bc                                          ; $4173: $03
	ld   l, l                                        ; $4174: $6d
	dec  b                                           ; $4175: $05
	add  hl, de                                      ; $4176: $19
	ld   a, h                                        ; $4177: $7c
	and  e                                           ; $4178: $a3
	jp   z, $a5d1                                    ; $4179: $ca $d1 $a5

	cp   d                                           ; $417c: $ba
	and  b                                           ; $417d: $a0
	dec  c                                           ; $417e: $0d
	ld   e, b                                        ; $417f: $58
	ld   [bc], a                                     ; $4180: $02
	add  b                                           ; $4181: $80
	ld   d, d                                        ; $4182: $52
	ld   h, l                                        ; $4183: $65
	ld   l, l                                        ; $4184: $6d
	ld   d, d                                        ; $4185: $52
	and  c                                           ; $4186: $a1
	ld   [hl], l                                     ; $4187: $75
	ld   h, a                                        ; $4188: $67
	ld   e, a                                        ; $4189: $5f
	ld   [hl], a                                     ; $418a: $77
	sbc  a                                           ; $418b: $9f
	dec  c                                           ; $418c: $0d
	nop                                              ; $418d: $00
	ld   a, [bc]                                     ; $418e: $0a
	inc  e                                           ; $418f: $1c
	add  hl, bc                                      ; $4190: $09
	dec  b                                           ; $4191: $05
	ld   a, [bc]                                     ; $4192: $0a
	ld   bc, $5258                                   ; $4193: $01 $58 $52
	ld   e, b                                        ; $4196: $58
	ld   d, d                                        ; $4197: $52
	sbc  [hl]                                        ; $4198: $9e
	adc  h                                           ; $4199: $8c
	ld   l, [hl]                                     ; $419a: $6e
	ld   [bc], a                                     ; $419b: $02
	jr   nz, jr_04a_41a1                             ; $419c: $20 $03

	ld   a, c                                        ; $419e: $79
	ld   [bc], a                                     ; $419f: $02
	xor  c                                           ; $41a0: $a9

jr_04a_41a1:
	inc  b                                           ; $41a1: $04
	call nc, Call_04a_6c6e                           ; $41a2: $d4 $6e $6c
	sbc  [hl]                                        ; $41a5: $9e
	dec  c                                           ; $41a6: $0d
	dec  b                                           ; $41a7: $05
	ld   [hl], e                                     ; $41a8: $73
	ld   e, d                                        ; $41a9: $5a
	and  e                                           ; $41aa: $a3
	jp   z, $a5d1                                    ; $41ab: $ca $d1 $a5

	cp   d                                           ; $41ae: $ba
	ld   h, a                                        ; $41af: $67
	sbc  c                                           ; $41b0: $99
	adc  c                                           ; $41b1: $89
	ld   [hl], a                                     ; $41b2: $77
	dec  c                                           ; $41b3: $0d
	inc  bc                                          ; $41b4: $03
	ld   l, l                                        ; $41b5: $6d
	dec  b                                           ; $41b6: $05
	add  hl, de                                      ; $41b7: $19
	ld   h, l                                        ; $41b8: $65
	ld   [hl], h                                     ; $41b9: $74
	ld   a, b                                        ; $41ba: $78
	ld   d, d                                        ; $41bb: $52
	and  c                                           ; $41bc: $a1
	ld   h, [hl]                                     ; $41bd: $66
	sub  c                                           ; $41be: $91
	ld   a, b                                        ; $41bf: $78
	ld   d, d                                        ; $41c0: $52
	ld   e, c                                        ; $41c1: $59
	ld   sp, hl                                      ; $41c2: $f9
	dec  c                                           ; $41c3: $0d
	nop                                              ; $41c4: $00
	ld   a, [bc]                                     ; $41c5: $0a
	inc  e                                           ; $41c6: $1c
	add  hl, bc                                      ; $41c7: $09
	nop                                              ; $41c8: $00
	nop                                              ; $41c9: $00
	ld   bc, $a102                                   ; $41ca: $01 $02 $a1
	ld   e, d                                        ; $41cd: $5a
	ld   a, l                                        ; $41ce: $7d
	sub  d                                           ; $41cf: $92
	sbc  c                                           ; $41d0: $99
	ld   a, h                                        ; $41d1: $7c
	sub  b                                           ; $41d2: $90
	sbc  l                                           ; $41d3: $9d
	ld   e, c                                        ; $41d4: $59
	sbc  c                                           ; $41d5: $99
	ld   e, d                                        ; $41d6: $5a
	sbc  [hl]                                        ; $41d7: $9e
	dec  c                                           ; $41d8: $0d
	sub  b                                           ; $41d9: $90
	ld   d, h                                        ; $41da: $54
	inc  bc                                          ; $41db: $03
	ld   l, h                                        ; $41dc: $6c
	ld   h, l                                        ; $41dd: $65
	inc  bc                                          ; $41de: $03
	ld   l, l                                        ; $41df: $6d
	dec  b                                           ; $41e0: $05
	add  hl, de                                      ; $41e1: $19
	ld   h, l                                        ; $41e2: $65
	ld   [hl], h                                     ; $41e3: $74
	ld   e, c                                        ; $41e4: $59
	sub  a                                           ; $41e5: $97
	dec  c                                           ; $41e6: $0d
	dec  b                                           ; $41e7: $05
	db   $10                                         ; $41e8: $10
	ld   l, l                                        ; $41e9: $6d
	inc  b                                           ; $41ea: $04
	ld   a, b                                        ; $41eb: $78
	ld   e, d                                        ; $41ec: $5a
	ld   d, d                                        ; $41ed: $52
	ld   d, d                                        ; $41ee: $52
	and  c                                           ; $41ef: $a1
	ld   h, [hl]                                     ; $41f0: $66
	sub  c                                           ; $41f1: $91
	ld   a, b                                        ; $41f2: $78
	ld   d, d                                        ; $41f3: $52
	ld   e, c                                        ; $41f4: $59
	ld   a, b                                        ; $41f5: $78
	sbc  a                                           ; $41f6: $9f
	dec  c                                           ; $41f7: $0d
	nop                                              ; $41f8: $00
	ld   a, [bc]                                     ; $41f9: $0a
	rrca                                             ; $41fa: $0f
	nop                                              ; $41fb: $00
	ld   bc, $7d01                                   ; $41fc: $01 $01 $7d
	sbc  [hl]                                        ; $41ff: $9e
	ld   a, l                                        ; $4200: $7d
	ld   d, d                                        ; $4201: $52
	sbc  a                                           ; $4202: $9f
	dec  c                                           ; $4203: $0d
	ld   l, e                                        ; $4204: $6b
	ld   d, h                                        ; $4205: $54
	ld   [hl], l                                     ; $4206: $75
	ld   h, a                                        ; $4207: $67
	ld   a, e                                        ; $4208: $7b
	rst  $38                                         ; $4209: $ff
	rst  $38                                         ; $420a: $ff
	dec  c                                           ; $420b: $0d
	ld   e, d                                        ; $420c: $5a
	and  c                                           ; $420d: $a1
	ld   a, [hl]                                     ; $420e: $7e
	sbc  b                                           ; $420f: $98
	adc  h                                           ; $4210: $8c
	ld   h, a                                        ; $4211: $67
	sbc  a                                           ; $4212: $9f
	dec  c                                           ; $4213: $0d
	nop                                              ; $4214: $00
	ld   a, [bc]                                     ; $4215: $0a
	ld   b, $f6                                      ; $4216: $06 $f6
	ld   a, [bc]                                     ; $4218: $0a
	inc  e                                           ; $4219: $1c
	add  hl, bc                                      ; $421a: $09
	ld   bc, $0101                                   ; $421b: $01 $01 $01
	ld   d, h                                        ; $421e: $54
	and  c                                           ; $421f: $a1
	sbc  a                                           ; $4220: $9f
	dec  c                                           ; $4221: $0d
	ld   l, e                                        ; $4222: $6b
	sbc  d                                           ; $4223: $9a
	ld   h, [hl]                                     ; $4224: $66
	sub  c                                           ; $4225: $91
	sbc  [hl]                                        ; $4226: $9e
	ld   e, d                                        ; $4227: $5a
	and  c                                           ; $4228: $a1
	ld   a, [hl]                                     ; $4229: $7e
	sbc  d                                           ; $422a: $9a
	sub  [hl]                                        ; $422b: $96
	sbc  a                                           ; $422c: $9f
	dec  c                                           ; $422d: $0d
	nop                                              ; $422e: $00
	ld   a, [bc]                                     ; $422f: $0a
	nop                                              ; $4230: $00
	nop                                              ; $4231: $00
	inc  bc                                          ; $4232: $03
	push hl                                          ; $4233: $e5
	ld   bc, $2000                                   ; $4234: $01 $00 $20
	nop                                              ; $4237: $00
	ld   c, $48                                      ; $4238: $0e $48
	rrca                                             ; $423a: $0f
	nop                                              ; $423b: $00
	ld   bc, $0102                                   ; $423c: $01 $02 $01
	ld   h, c                                        ; $423f: $61
	and  c                                           ; $4240: $a1
	ld   a, [hl]                                     ; $4241: $7e
	and  c                                           ; $4242: $a1
	ld   a, l                                        ; $4243: $7d
	sbc  [hl]                                        ; $4244: $9e
	xor  h                                           ; $4245: $ac
	push af                                          ; $4246: $f5
	bit  4, e                                        ; $4247: $cb $63
	and  c                                           ; $4249: $a1
	sbc  a                                           ; $424a: $9f
	dec  c                                           ; $424b: $0d
	nop                                              ; $424c: $00
	ld   a, [bc]                                     ; $424d: $0a
	rrca                                             ; $424e: $0f
	ld   b, $00                                      ; $424f: $06 $00
	ld   bc, $9e50                                   ; $4251: $01 $50 $9e
	ld   l, a                                        ; $4254: $6f
	sub  l                                           ; $4255: $95
	ld   [hl], c                                     ; $4256: $71
	halt                                             ; $4257: $76
	inc  b                                           ; $4258: $04
	rla                                              ; $4259: $17
	ld   [hl], c                                     ; $425a: $71
	ld   [hl], h                                     ; $425b: $74
	ld   e, l                                        ; $425c: $5d
	sbc  d                                           ; $425d: $9a
	sbc  a                                           ; $425e: $9f
	dec  c                                           ; $425f: $0d
	nop                                              ; $4260: $00
	ld   a, [bc]                                     ; $4261: $0a
	rrca                                             ; $4262: $0f
	nop                                              ; $4263: $00
	ld   bc, $5923                                   ; $4264: $01 $23 $59
	inc  e                                           ; $4267: $1c
	ld   b, $00                                      ; $4268: $06 $00
	nop                                              ; $426a: $00
	ld   bc, $8c67                                   ; $426b: $01 $67 $8c
	ld   a, e                                        ; $426e: $7b
	ld   d, [hl]                                     ; $426f: $56
	ld   a, b                                        ; $4270: $78
	sbc  a                                           ; $4271: $9f
	dec  c                                           ; $4272: $0d
	ld   l, a                                        ; $4273: $6f
	sub  l                                           ; $4274: $95
	ld   [hl], c                                     ; $4275: $71
	halt                                             ; $4276: $76
	inc  b                                           ; $4277: $04
	ld   [hl], h                                     ; $4278: $74
	and  b                                           ; $4279: $a0
	sbc  l                                           ; $427a: $9d
	sbc  c                                           ; $427b: $99
	dec  b                                           ; $427c: $05
	add  hl, de                                      ; $427d: $19
	inc  bc                                          ; $427e: $03
	and  h                                           ; $427f: $a4
	and  b                                           ; $4280: $a0
	dec  c                                           ; $4281: $0d
	ld   h, l                                        ; $4282: $65
	ld   [hl], h                                     ; $4283: $74
	ld   l, l                                        ; $4284: $6d
	sub  b                                           ; $4285: $90
	and  c                                           ; $4286: $a1
	ld   l, [hl]                                     ; $4287: $6e
	ld   e, c                                        ; $4288: $59
	sub  a                                           ; $4289: $97
	ld   a, b                                        ; $428a: $78
	rst  $38                                         ; $428b: $ff
	rst  $38                                         ; $428c: $ff
	dec  c                                           ; $428d: $0d
	nop                                              ; $428e: $00
	ld   a, [bc]                                     ; $428f: $0a
	inc  e                                           ; $4290: $1c
	ld   b, $01                                      ; $4291: $06 $01
	ld   bc, $6b01                                   ; $4293: $01 $01 $6b
	ld   d, h                                        ; $4296: $54
	ld   l, [hl]                                     ; $4297: $6e
	rst  $38                                         ; $4298: $ff
	rst  $38                                         ; $4299: $ff
	ld   e, b                                        ; $429a: $58
	inc  bc                                          ; $429b: $03
	ld   c, a                                        ; $429c: $4f
	sub  b                                           ; $429d: $90
	dec  c                                           ; $429e: $0d
	inc  b                                           ; $429f: $04
	ld   [hl], h                                     ; $42a0: $74
	sbc  l                                           ; $42a1: $9d
	sbc  c                                           ; $42a2: $99
	ld   a, h                                        ; $42a3: $7c
	ld   a, c                                        ; $42a4: $79
	jp   nz, $eee5                                   ; $42a5: $c2 $e5 $ee

	push af                                          ; $42a8: $f5
	cp   c                                           ; $42a9: $b9
	ld   h, l                                        ; $42aa: $65
	ld   [hl], h                                     ; $42ab: $74
	dec  c                                           ; $42ac: $0d
	adc  l                                           ; $42ad: $8d
	ld   a, e                                        ; $42ae: $7b
	ld   d, [hl]                                     ; $42af: $56
	ld   e, c                                        ; $42b0: $59
	ld   sp, hl                                      ; $42b1: $f9
	dec  c                                           ; $42b2: $0d
	nop                                              ; $42b3: $00
	ld   a, [bc]                                     ; $42b4: $0a
	jr   jr_04a_42b9                                 ; $42b5: $18 $02

	nop                                              ; $42b7: $00
	ld   a, l                                        ; $42b8: $7d

jr_04a_42b9:
	ld   d, d                                        ; $42b9: $52
	nop                                              ; $42ba: $00
	nop                                              ; $42bb: $00
	ld   d, d                                        ; $42bc: $52
	ld   d, d                                        ; $42bd: $52
	ld   d, [hl]                                     ; $42be: $56
	nop                                              ; $42bf: $00
	ld   bc, $9b07                                   ; $42c0: $01 $07 $9b
	nop                                              ; $42c3: $00
	ld   [bc], a                                     ; $42c4: $02
	ld   [bc], a                                     ; $42c5: $02
	ld   bc, $2000                                   ; $42c6: $01 $00 $20
	nop                                              ; $42c9: $00
	rlca                                             ; $42ca: $07
	nop                                              ; $42cb: $00
	ld   bc, $0202                                   ; $42cc: $01 $02 $02
	ld   bc, $2001                                   ; $42cf: $01 $01 $20
	nop                                              ; $42d2: $00
	rrca                                             ; $42d3: $0f
	nop                                              ; $42d4: $00
	ld   bc, $4005                                   ; $42d5: $01 $05 $40
	push hl                                          ; $42d8: $e5
	ld   bc, $0001                                   ; $42d9: $01 $01 $00
	ld   bc, $527d                                   ; $42dc: $01 $7d $52
	sbc  a                                           ; $42df: $9f
	dec  c                                           ; $42e0: $0d
	inc  b                                           ; $42e1: $04
	ld   l, l                                        ; $42e2: $6d
	sub  b                                           ; $42e3: $90
	sub  d                                           ; $42e4: $92
	ld   [hl], c                                     ; $42e5: $71
	ld   [hl], h                                     ; $42e6: $74
	adc  l                                           ; $42e7: $8d
	ld   l, l                                        ; $42e8: $6d
	ld   d, d                                        ; $42e9: $52
	ld   [hl], l                                     ; $42ea: $75
	ld   h, a                                        ; $42eb: $67
	sbc  a                                           ; $42ec: $9f
	dec  c                                           ; $42ed: $0d
	nop                                              ; $42ee: $00
	ld   a, [bc]                                     ; $42ef: $0a
	inc  e                                           ; $42f0: $1c
	ld   b, $01                                      ; $42f1: $06 $01
	ld   bc, $401d                                   ; $42f3: $01 $1d $40
	ld   d, $03                                      ; $42f6: $16 $03
	ld   d, $01                                      ; $42f8: $16 $01
	inc  bc                                          ; $42fa: $03
	jr   z, jr_04a_42fd                              ; $42fb: $28 $00

jr_04a_42fd:
	ld   bc, $6596                                   ; $42fd: $01 $96 $65
	sbc  [hl]                                        ; $4300: $9e
	ld   l, e                                        ; $4301: $6b
	sbc  d                                           ; $4302: $9a
	ld   h, [hl]                                     ; $4303: $66
	sub  c                                           ; $4304: $91
	inc  bc                                          ; $4305: $03
	inc  c                                           ; $4306: $0c
	inc  bc                                          ; $4307: $03
	ld   [hl], l                                     ; $4308: $75
	inc  bc                                          ; $4309: $03
	or   b                                           ; $430a: $b0
	inc  b                                           ; $430b: $04
	di                                               ; $430c: $f3
	ld   a, c                                        ; $430d: $79
	dec  c                                           ; $430e: $0d
	ld   [bc], a                                     ; $430f: $02
	jr   nz, jr_04a_4316                             ; $4310: $20 $04

	push bc                                          ; $4312: $c5
	sub  d                                           ; $4313: $92
	sbc  c                                           ; $4314: $99
	sub  [hl]                                        ; $4315: $96

jr_04a_4316:
	sbc  a                                           ; $4316: $9f
	dec  c                                           ; $4317: $0d
	nop                                              ; $4318: $00
	ld   a, [bc]                                     ; $4319: $0a
	db   $10                                         ; $431a: $10
	ccf                                              ; $431b: $3f
	nop                                              ; $431c: $00
	inc  e                                           ; $431d: $1c
	ld   b, $07                                      ; $431e: $06 $07
	rlca                                             ; $4320: $07
	ld   bc, $c102                                   ; $4321: $01 $02 $c1
	inc  b                                           ; $4324: $04
	rla                                              ; $4325: $17
	ld   h, l                                        ; $4326: $65
	ld   [hl], h                                     ; $4327: $74
	sbc  c                                           ; $4328: $99
	ld   e, c                                        ; $4329: $59
	sub  a                                           ; $432a: $97
	ld   a, b                                        ; $432b: $78
	sbc  [hl]                                        ; $432c: $9e
	dec  c                                           ; $432d: $0d
	ld   e, d                                        ; $432e: $5a
	and  c                                           ; $432f: $a1
	ld   a, [hl]                                     ; $4330: $7e
	sbc  d                                           ; $4331: $9a
	sub  [hl]                                        ; $4332: $96
	ld   a, [$000d]                                  ; $4333: $fa $0d $00
	ld   a, [bc]                                     ; $4336: $0a
	nop                                              ; $4337: $00
	inc  e                                           ; $4338: $1c
	ld   b, $02                                      ; $4339: $06 $02
	ld   [bc], a                                     ; $433b: $02
	dec  e                                           ; $433c: $1d
	ld   b, b                                        ; $433d: $40
	ld   d, $03                                      ; $433e: $16 $03
	ld   d, $01                                      ; $4340: $16 $01
	ld   bc, $0029                                   ; $4342: $01 $29 $00
	ld   bc, $a178                                   ; $4345: $01 $78 $a1
	ld   l, [hl]                                     ; $4348: $6e
	sbc  [hl]                                        ; $4349: $9e
	ld   [hl], d                                     ; $434a: $72
	adc  h                                           ; $434b: $8c
	and  c                                           ; $434c: $a1
	ld   a, e                                        ; $434d: $7b
	ld   d, [hl]                                     ; $434e: $56
	ld   a, h                                        ; $434f: $7c
	rst  $38                                         ; $4350: $ff
	rst  $38                                         ; $4351: $ff
	dec  c                                           ; $4352: $0d
	nop                                              ; $4353: $00
	ld   a, [bc]                                     ; $4354: $0a
	nop                                              ; $4355: $00
	nop                                              ; $4356: $00
	inc  bc                                          ; $4357: $03
	ldh  [c], a                                      ; $4358: $e2
	ld   bc, $2000                                   ; $4359: $01 $00 $20
	nop                                              ; $435c: $00
	ld   c, $46                                      ; $435d: $0e $46
	rrca                                             ; $435f: $0f
	nop                                              ; $4360: $00
	ld   bc, $0102                                   ; $4361: $01 $02 $01
	ld   h, c                                        ; $4364: $61
	and  c                                           ; $4365: $a1
	ld   a, [hl]                                     ; $4366: $7e
	and  c                                           ; $4367: $a1
	ld   a, l                                        ; $4368: $7d
	sbc  [hl]                                        ; $4369: $9e
	rst  JumpTable                                         ; $436a: $df
	db   $ec                                         ; $436b: $ec
	and  e                                           ; $436c: $a3
	ld   h, e                                        ; $436d: $63
	and  c                                           ; $436e: $a1
	sbc  a                                           ; $436f: $9f
	dec  c                                           ; $4370: $0d
	nop                                              ; $4371: $00
	ld   a, [bc]                                     ; $4372: $0a
	rrca                                             ; $4373: $0f
	inc  bc                                          ; $4374: $03
	rlca                                             ; $4375: $07
	ld   bc, $9e50                                   ; $4376: $01 $50 $9e
	ld   l, a                                        ; $4379: $6f
	sub  l                                           ; $437a: $95
	ld   [hl], c                                     ; $437b: $71
	halt                                             ; $437c: $76
	inc  b                                           ; $437d: $04
	rla                                              ; $437e: $17
	ld   [hl], c                                     ; $437f: $71
	ld   [hl], h                                     ; $4380: $74
	ld   [hl], h                                     ; $4381: $74
	sbc  a                                           ; $4382: $9f
	dec  c                                           ; $4383: $0d
	nop                                              ; $4384: $00
	ld   a, [bc]                                     ; $4385: $0a
	rrca                                             ; $4386: $0f
	nop                                              ; $4387: $00
	ld   bc, $5323                                   ; $4388: $01 $23 $53
	inc  e                                           ; $438b: $1c
	inc  bc                                          ; $438c: $03
	nop                                              ; $438d: $00
	nop                                              ; $438e: $00
	ld   bc, $8f62                                   ; $438f: $01 $62 $8f
	and  c                                           ; $4392: $a1
	ld   a, b                                        ; $4393: $78
	ld   h, e                                        ; $4394: $63
	ld   d, d                                        ; $4395: $52
	rst  $38                                         ; $4396: $ff
	rst  $38                                         ; $4397: $ff
	dec  c                                           ; $4398: $0d
	ld   l, a                                        ; $4399: $6f
	sub  l                                           ; $439a: $95
	ld   [hl], c                                     ; $439b: $71
	halt                                             ; $439c: $76
	inc  b                                           ; $439d: $04
	adc  a                                           ; $439e: $8f
	and  b                                           ; $439f: $a0
	inc  b                                           ; $43a0: $04
	ld   de, $75a1                                   ; $43a1: $11 $a1 $75
	ld   d, d                                        ; $43a4: $52
	ld   l, l                                        ; $43a5: $6d
	ld   e, c                                        ; $43a6: $59
	sub  a                                           ; $43a7: $97
	sbc  a                                           ; $43a8: $9f
	dec  c                                           ; $43a9: $0d
	nop                                              ; $43aa: $00
	ld   a, [bc]                                     ; $43ab: $0a
	ld   bc, $5996                                   ; $43ac: $01 $96 $59
	ld   [hl], c                                     ; $43af: $71
	ld   l, l                                        ; $43b0: $6d
	sub  a                                           ; $43b1: $97
	sbc  [hl]                                        ; $43b2: $9e
	ld   d, b                                        ; $43b3: $50
	ld   a, b                                        ; $43b4: $78
	ld   l, l                                        ; $43b5: $6d
	sub  b                                           ; $43b6: $90
	dec  c                                           ; $43b7: $0d
	inc  b                                           ; $43b8: $04
	ld   de, $75a1                                   ; $43b9: $11 $a1 $75
	adc  l                                           ; $43bc: $8d
	ld   a, b                                        ; $43bd: $78
	ld   d, d                                        ; $43be: $52
	ld   sp, hl                                      ; $43bf: $f9
	dec  c                                           ; $43c0: $0d
	ld   e, a                                        ; $43c1: $5f
	ld   [hl], c                                     ; $43c2: $71
	ld   h, c                                        ; $43c3: $61
	ld   d, h                                        ; $43c4: $54
	sbc  [hl]                                        ; $43c5: $9e
	ld   e, b                                        ; $43c6: $58
	sub  b                                           ; $43c7: $90
	ld   h, l                                        ; $43c8: $65
	sbc  e                                           ; $43c9: $9b
	ld   d, d                                        ; $43ca: $52
	sbc  l                                           ; $43cb: $9d
	sub  [hl]                                        ; $43cc: $96
	sbc  a                                           ; $43cd: $9f
	dec  c                                           ; $43ce: $0d
	nop                                              ; $43cf: $00
	ld   a, [bc]                                     ; $43d0: $0a
	jr   jr_04a_43d5                                 ; $43d1: $18 $02

	nop                                              ; $43d3: $00
	ld   a, l                                        ; $43d4: $7d

jr_04a_43d5:
	ld   d, d                                        ; $43d5: $52
	nop                                              ; $43d6: $00
	nop                                              ; $43d7: $00
	ld   d, d                                        ; $43d8: $52
	ld   d, d                                        ; $43d9: $52
	ld   d, [hl]                                     ; $43da: $56
	nop                                              ; $43db: $00
	ld   bc, $9207                                   ; $43dc: $01 $07 $92
	nop                                              ; $43df: $00
	ld   [bc], a                                     ; $43e0: $02
	ld   [bc], a                                     ; $43e1: $02
	ld   bc, $2000                                   ; $43e2: $01 $00 $20
	nop                                              ; $43e5: $00
	rlca                                             ; $43e6: $07
	inc  c                                           ; $43e7: $0c
	ld   bc, $0202                                   ; $43e8: $01 $02 $02
	ld   bc, $2001                                   ; $43eb: $01 $01 $20
	nop                                              ; $43ee: $00
	rrca                                             ; $43ef: $0f
	nop                                              ; $43f0: $00
	ld   bc, $7d01                                   ; $43f1: $01 $01 $7d
	ld   d, d                                        ; $43f4: $52
	sbc  a                                           ; $43f5: $9f
	dec  c                                           ; $43f6: $0d
	inc  b                                           ; $43f7: $04
	ld   l, l                                        ; $43f8: $6d
	sub  b                                           ; $43f9: $90
	inc  b                                           ; $43fa: $04
	ld   de, $75a1                                   ; $43fb: $11 $a1 $75
	adc  l                                           ; $43fe: $8d
	ld   l, l                                        ; $43ff: $6d
	ld   d, d                                        ; $4400: $52
	ld   [hl], l                                     ; $4401: $75
	ld   h, a                                        ; $4402: $67
	sbc  a                                           ; $4403: $9f
	dec  c                                           ; $4404: $0d
	nop                                              ; $4405: $00
	ld   a, [bc]                                     ; $4406: $0a
	inc  e                                           ; $4407: $1c
	inc  bc                                          ; $4408: $03
	inc  bc                                          ; $4409: $03
	inc  bc                                          ; $440a: $03
	dec  e                                           ; $440b: $1d
	ld   b, b                                        ; $440c: $40
	inc  de                                          ; $440d: $13
	inc  bc                                          ; $440e: $03
	inc  de                                          ; $440f: $13
	ld   bc, $2803                                   ; $4410: $01 $03 $28
	nop                                              ; $4413: $00
	ld   bc, $527d                                   ; $4414: $01 $7d $52
	sbc  [hl]                                        ; $4417: $9e
	ld   h, [hl]                                     ; $4418: $66
	sub  c                                           ; $4419: $91
	ld   d, b                                        ; $441a: $50
	ld   h, c                                        ; $441b: $61
	sbc  d                                           ; $441c: $9a
	rst  $38                                         ; $441d: $ff
	rst  $38                                         ; $441e: $ff
	dec  c                                           ; $441f: $0d
	nop                                              ; $4420: $00
	db   $10                                         ; $4421: $10
	rla                                              ; $4422: $17
	nop                                              ; $4423: $00
	ld   bc, $0701                                   ; $4424: $01 $01 $07
	inc  bc                                          ; $4427: $03
	ld   e, a                                        ; $4428: $5f
	inc  b                                           ; $4429: $04
	dec  b                                           ; $442a: $05
	ld   [bc], a                                     ; $442b: $02
	jr   nc, jr_04a_4434                             ; $442c: $30 $06

	dec  h                                           ; $442e: $25
	ld   bc, $a008                                   ; $442f: $01 $08 $a0
	dec  c                                           ; $4432: $0d
	nop                                              ; $4433: $00

jr_04a_4434:
	dec  b                                           ; $4434: $05
	ld   b, b                                        ; $4435: $40
	ldh  [c], a                                      ; $4436: $e2
	ld   bc, $0001                                   ; $4437: $01 $01 $00
	ld   bc, $6559                                   ; $443a: $01 $59 $65
	ld   [hl], h                                     ; $443d: $74
	ld   d, b                                        ; $443e: $50
	ld   h, b                                        ; $443f: $60
	sbc  c                                           ; $4440: $99
	sbc  l                                           ; $4441: $9d
	sbc  a                                           ; $4442: $9f
	dec  c                                           ; $4443: $0d
	nop                                              ; $4444: $00
	ld   a, [bc]                                     ; $4445: $0a
	ld   bc, $9166                                   ; $4446: $01 $66 $91
	sbc  [hl]                                        ; $4449: $9e
	inc  b                                           ; $444a: $04
	ld   de, $6ea1                                   ; $444b: $11 $a1 $6e
	sub  a                                           ; $444e: $97
	ld   [bc], a                                     ; $444f: $02
	scf                                              ; $4450: $37
	inc  bc                                          ; $4451: $03
	ld   a, [de]                                     ; $4452: $1a
	and  b                                           ; $4453: $a0
	dec  c                                           ; $4454: $0d
	ld   [bc], a                                     ; $4455: $02
	jp   nz, Jump_04a_6959                           ; $4456: $c2 $59 $69

	ld   [hl], h                                     ; $4459: $74
	ld   a, e                                        ; $445a: $7b
	sbc  a                                           ; $445b: $9f
	dec  c                                           ; $445c: $0d
	ld   e, b                                        ; $445d: $58
	sub  d                                           ; $445e: $92
	ld   h, a                                        ; $445f: $67
	adc  l                                           ; $4460: $8d
	ld   a, b                                        ; $4461: $78
	ld   h, e                                        ; $4462: $63
	ld   d, d                                        ; $4463: $52
	sbc  a                                           ; $4464: $9f
	dec  c                                           ; $4465: $0d
	nop                                              ; $4466: $00
	ld   a, [bc]                                     ; $4467: $0a
	nop                                              ; $4468: $00
	inc  e                                           ; $4469: $1c
	inc  bc                                          ; $446a: $03
	inc  b                                           ; $446b: $04
	inc  b                                           ; $446c: $04
	dec  e                                           ; $446d: $1d
	ld   b, b                                        ; $446e: $40
	inc  de                                          ; $446f: $13
	inc  bc                                          ; $4470: $03
	inc  de                                          ; $4471: $13
	ld   bc, $2901                                   ; $4472: $01 $01 $29
	nop                                              ; $4475: $00
	ld   bc, $546b                                   ; $4476: $01 $6b $54
	rst  $38                                         ; $4479: $ff
	rst  $38                                         ; $447a: $ff
	ld   h, h                                        ; $447b: $64
	and  c                                           ; $447c: $a1
	ld   a, e                                        ; $447d: $7b
	and  c                                           ; $447e: $a1
	ld   a, e                                        ; $447f: $7b
	sbc  a                                           ; $4480: $9f
	dec  c                                           ; $4481: $0d
	ld   h, [hl]                                     ; $4482: $66
	sub  c                                           ; $4483: $91
	sbc  [hl]                                        ; $4484: $9e
	ld   e, b                                        ; $4485: $58
	sub  d                                           ; $4486: $92
	ld   h, a                                        ; $4487: $67
	adc  l                                           ; $4488: $8d
	ld   a, b                                        ; $4489: $78
	ld   h, e                                        ; $448a: $63
	ld   d, d                                        ; $448b: $52
	sbc  a                                           ; $448c: $9f
	dec  c                                           ; $448d: $0d
	nop                                              ; $448e: $00
	ld   a, [bc]                                     ; $448f: $0a
	nop                                              ; $4490: $00
	nop                                              ; $4491: $00
	inc  e                                           ; $4492: $1c
	inc  b                                           ; $4493: $04
	nop                                              ; $4494: $00
	nop                                              ; $4495: $00
	ld   [bc], a                                     ; $4496: $02
	ld   bc, $9e50                                   ; $4497: $01 $50 $9e
	ld   l, a                                        ; $449a: $6f
	ld   d, d                                        ; $449b: $52
	ld   [bc], a                                     ; $449c: $02
	inc  de                                          ; $449d: $13
	ld   l, a                                        ; $449e: $6f
	sub  c                                           ; $449f: $91
	and  c                                           ; $44a0: $a1
	sbc  a                                           ; $44a1: $9f
	dec  c                                           ; $44a2: $0d
	nop                                              ; $44a3: $00
	ld   a, [bc]                                     ; $44a4: $0a
	rrca                                             ; $44a5: $0f
	nop                                              ; $44a6: $00
	ld   bc, $9201                                   ; $44a7: $01 $01 $92
	ld   d, b                                        ; $44aa: $50
	sbc  [hl]                                        ; $44ab: $9e
	and  e                                           ; $44ac: $a3
	and  l                                           ; $44ad: $a5
	db   $ec                                         ; $44ae: $ec
	cp   d                                           ; $44af: $ba
	rst  $38                                         ; $44b0: $ff
	rst  $38                                         ; $44b1: $ff
	dec  c                                           ; $44b2: $0d
	nop                                              ; $44b3: $00
	ld   a, [bc]                                     ; $44b4: $0a
	dec  b                                           ; $44b5: $05
	add  b                                           ; $44b6: $80
	sub  $01                                         ; $44b7: $d6 $01
	ld   bc, $1900                                   ; $44b9: $01 $00 $19
	dec  b                                           ; $44bc: $05
	inc  bc                                          ; $44bd: $03
	or   b                                           ; $44be: $b0
	rst  JumpTable                                         ; $44bf: $df
	and  b                                           ; $44c0: $a0
	adc  c                                           ; $44c1: $89
	adc  a                                           ; $44c2: $8f
	sbc  c                                           ; $44c3: $99
	nop                                              ; $44c4: $00
	nop                                              ; $44c5: $00
	inc  b                                           ; $44c6: $04
	ld   l, d                                        ; $44c7: $6a
	and  b                                           ; $44c8: $a0
	adc  c                                           ; $44c9: $89
	adc  a                                           ; $44ca: $8f
	sbc  c                                           ; $44cb: $99
	nop                                              ; $44cc: $00
	ld   bc, $a504                                   ; $44cd: $01 $04 $a5
	and  b                                           ; $44d0: $a0
	adc  c                                           ; $44d1: $89
	adc  a                                           ; $44d2: $8f
	sbc  c                                           ; $44d3: $99
	nop                                              ; $44d4: $00
	ld   [bc], a                                     ; $44d5: $02
	rlca                                             ; $44d6: $07
	ld   a, a                                        ; $44d7: $7f
	nop                                              ; $44d8: $00
	ld   [bc], a                                     ; $44d9: $02
	inc  bc                                          ; $44da: $03
	ld   bc, $2000                                   ; $44db: $01 $00 $20
	nop                                              ; $44de: $00
	rlca                                             ; $44df: $07
	ld   d, c                                        ; $44e0: $51
	ld   [bc], a                                     ; $44e1: $02
	ld   [bc], a                                     ; $44e2: $02
	inc  bc                                          ; $44e3: $03
	ld   bc, $2001                                   ; $44e4: $01 $01 $20
	nop                                              ; $44e7: $00
	rlca                                             ; $44e8: $07
	call c, $0202                                    ; $44e9: $dc $02 $02
	inc  bc                                          ; $44ec: $03
	ld   bc, $2002                                   ; $44ed: $01 $02 $20
	nop                                              ; $44f0: $00
	ld   b, $62                                      ; $44f1: $06 $62
	nop                                              ; $44f3: $00
	inc  e                                           ; $44f4: $1c
	inc  b                                           ; $44f5: $04
	ld   bc, $0101                                   ; $44f6: $01 $01 $01
	adc  l                                           ; $44f9: $8d
	adc  h                                           ; $44fa: $8c
	sbc  l                                           ; $44fb: $9d
	sbc  b                                           ; $44fc: $98
	sbc  [hl]                                        ; $44fd: $9e
	ld   e, d                                        ; $44fe: $5a
	and  c                                           ; $44ff: $a1
	ld   a, [hl]                                     ; $4500: $7e
	ld   [hl], c                                     ; $4501: $71
	ld   [hl], h                                     ; $4502: $74
	ld   a, e                                        ; $4503: $7b
	sbc  a                                           ; $4504: $9f
	dec  c                                           ; $4505: $0d
	nop                                              ; $4506: $00
	ld   a, [bc]                                     ; $4507: $0a
	dec  c                                           ; $4508: $0d
	nop                                              ; $4509: $00
	nop                                              ; $450a: $00
	rrca                                             ; $450b: $0f
	nop                                              ; $450c: $00
	ld   bc, $1e09                                   ; $450d: $01 $09 $1e
	nop                                              ; $4510: $00
	rrca                                             ; $4511: $0f
	nop                                              ; $4512: $00
	ld   bc, $6b01                                   ; $4513: $01 $01 $6b
	ld   a, h                                        ; $4516: $7c
	or   b                                           ; $4517: $b0
	rst  JumpTable                                         ; $4518: $df
	sbc  [hl]                                        ; $4519: $9e
	ld   e, c                                        ; $451a: $59
	sbc  l                                           ; $451b: $9d
	ld   d, d                                        ; $451c: $52
	ld   d, d                                        ; $451d: $52
	ld   a, e                                        ; $451e: $7b
	sbc  a                                           ; $451f: $9f
	dec  c                                           ; $4520: $0d
	nop                                              ; $4521: $00
	ld   a, [bc]                                     ; $4522: $0a
	inc  e                                           ; $4523: $1c
	inc  b                                           ; $4524: $04
	ld   [bc], a                                     ; $4525: $02
	ld   [bc], a                                     ; $4526: $02
	ld   bc, $dfb0                                   ; $4527: $01 $b0 $df
	ld   h, [hl]                                     ; $452a: $66
	sub  c                                           ; $452b: $91
	ld   a, b                                        ; $452c: $78
	ld   d, d                                        ; $452d: $52
	sub  b                                           ; $452e: $90
	and  c                                           ; $452f: $a1
	ld   a, [$500d]                                  ; $4530: $fa $0d $50
	sbc  [hl]                                        ; $4533: $9e
	ld   l, a                                        ; $4534: $6f
	ld   d, d                                        ; $4535: $52
	ld   [bc], a                                     ; $4536: $02
	inc  de                                          ; $4537: $13
	ld   l, a                                        ; $4538: $6f
	sub  c                                           ; $4539: $91
	and  c                                           ; $453a: $a1
	sbc  [hl]                                        ; $453b: $9e
	ld   h, c                                        ; $453c: $61
	ld   a, h                                        ; $453d: $7c
	ld   h, c                                        ; $453e: $61
	ld   a, h                                        ; $453f: $7c
	dec  c                                           ; $4540: $0d
	ld   a, b                                        ; $4541: $78
	adc  h                                           ; $4542: $8c
	ld   d, [hl]                                     ; $4543: $56
	sbc  [hl]                                        ; $4544: $9e
	sbc  l                                           ; $4545: $9d
	ld   h, a                                        ; $4546: $67
	sbc  d                                           ; $4547: $9a
	ld   l, l                                        ; $4548: $6d
	ld   [hl], l                                     ; $4549: $75
	ld   h, l                                        ; $454a: $65
	sub  l                                           ; $454b: $95
	ld   sp, hl                                      ; $454c: $f9
	dec  c                                           ; $454d: $0d
	nop                                              ; $454e: $00
	ld   a, [bc]                                     ; $454f: $0a
	add  hl, de                                      ; $4550: $19
	dec  b                                           ; $4551: $05
	inc  bc                                          ; $4552: $03
	cp   c                                           ; $4553: $b9
	push hl                                          ; $4554: $e5
	push af                                          ; $4555: $f5
	sbc  $fb                                         ; $4556: $de $fb
	db   $ed                                         ; $4558: $ed
	ld   l, [hl]                                     ; $4559: $6e
	sbc  e                                           ; $455a: $9b
	ld   sp, hl                                      ; $455b: $f9
	nop                                              ; $455c: $00
	nop                                              ; $455d: $00
	cp   c                                           ; $455e: $b9
	push hl                                          ; $455f: $e5
	cp   [hl]                                        ; $4560: $be
	sbc  $fb                                         ; $4561: $de $fb
	db   $ed                                         ; $4563: $ed
	ld   l, [hl]                                     ; $4564: $6e
	sbc  e                                           ; $4565: $9b
	ld   sp, hl                                      ; $4566: $f9
	nop                                              ; $4567: $00
	ld   bc, $dfb0                                   ; $4568: $01 $b0 $df
	dec  b                                           ; $456b: $05
	ld   a, [hl+]                                    ; $456c: $2a
	dec  b                                           ; $456d: $05
	inc  c                                           ; $456e: $0c
	ld   l, [hl]                                     ; $456f: $6e
	sbc  e                                           ; $4570: $9b
	ld   sp, hl                                      ; $4571: $f9
	nop                                              ; $4572: $00
	ld   [bc], a                                     ; $4573: $02
	rlca                                             ; $4574: $07
	nop                                              ; $4575: $00
	ld   bc, $0302                                   ; $4576: $01 $02 $03
	ld   bc, $2000                                   ; $4579: $01 $00 $20
	nop                                              ; $457c: $00
	rlca                                             ; $457d: $07
	ld   h, e                                        ; $457e: $63
	ld   bc, $0302                                   ; $457f: $01 $02 $03
	ld   bc, $2001                                   ; $4582: $01 $01 $20
	nop                                              ; $4585: $00
	rlca                                             ; $4586: $07
	cp   b                                           ; $4587: $b8
	ld   bc, $0302                                   ; $4588: $01 $02 $03
	ld   bc, $2002                                   ; $458b: $01 $02 $20
	nop                                              ; $458e: $00
	ld   b, $08                                      ; $458f: $06 $08
	ld   [bc], a                                     ; $4591: $02
	rrca                                             ; $4592: $0f
	nop                                              ; $4593: $00
	ld   bc, $b901                                   ; $4594: $01 $01 $b9
	push hl                                          ; $4597: $e5
	push af                                          ; $4598: $f5
	sbc  $fb                                         ; $4599: $de $fb
	db   $ed                                         ; $459b: $ed
	ld   l, [hl]                                     ; $459c: $6e
	sbc  e                                           ; $459d: $9b
	ld   sp, hl                                      ; $459e: $f9
	dec  c                                           ; $459f: $0d
	ld   e, b                                        ; $45a0: $58
	adc  d                                           ; $45a1: $8a
	ld   d, [hl]                                     ; $45a2: $56
	ld   [hl], h                                     ; $45a3: $74
	sbc  c                                           ; $45a4: $99
	ld   h, e                                        ; $45a5: $63
	sbc  a                                           ; $45a6: $9f
	dec  c                                           ; $45a7: $0d
	nop                                              ; $45a8: $00
	ld   a, [bc]                                     ; $45a9: $0a
	inc  e                                           ; $45aa: $1c
	inc  b                                           ; $45ab: $04
	ld   bc, $1d01                                   ; $45ac: $01 $01 $1d
	ld   b, b                                        ; $45af: $40
	inc  d                                           ; $45b0: $14
	inc  bc                                          ; $45b1: $03
	inc  d                                           ; $45b2: $14
	ld   bc, $2803                                   ; $45b3: $01 $03 $28
	nop                                              ; $45b6: $00
	ld   bc, $5996                                   ; $45b7: $01 $96 $59
	ld   [hl], c                                     ; $45ba: $71
	ld   l, l                                        ; $45bb: $6d
	ld   a, e                                        ; $45bc: $7b
	sbc  [hl]                                        ; $45bd: $9e
	cp   c                                           ; $45be: $b9
	push hl                                          ; $45bf: $e5
	push af                                          ; $45c0: $f5
	sbc  $fb                                         ; $45c1: $de $fb
	db   $ed                                         ; $45c3: $ed
	sbc  a                                           ; $45c4: $9f
	dec  c                                           ; $45c5: $0d
	ld   e, b                                        ; $45c6: $58
	adc  d                                           ; $45c7: $8a
	ld   d, [hl]                                     ; $45c8: $56
	ld   [hl], h                                     ; $45c9: $74
	sub  b                                           ; $45ca: $90
	sub  a                                           ; $45cb: $97
	ld   d, [hl]                                     ; $45cc: $56
	ld   [hl], h                                     ; $45cd: $74
	rst  $38                                         ; $45ce: $ff
	rst  $38                                         ; $45cf: $ff
	dec  c                                           ; $45d0: $0d
	nop                                              ; $45d1: $00
	ld   a, [bc]                                     ; $45d2: $0a
	inc  e                                           ; $45d3: $1c
	inc  b                                           ; $45d4: $04
	nop                                              ; $45d5: $00
	nop                                              ; $45d6: $00
	ld   bc, $9166                                   ; $45d7: $01 $66 $91
	sbc  [hl]                                        ; $45da: $9e
	ld   l, a                                        ; $45db: $6f
	ld   d, d                                        ; $45dc: $52
	ld   [bc], a                                     ; $45dd: $02
	inc  de                                          ; $45de: $13
	ld   l, a                                        ; $45df: $6f
	sub  c                                           ; $45e0: $91
	and  c                                           ; $45e1: $a1
	rst  $38                                         ; $45e2: $ff
	rst  $38                                         ; $45e3: $ff
	dec  c                                           ; $45e4: $0d
	adc  l                                           ; $45e5: $8d
	adc  h                                           ; $45e6: $8c
	sbc  l                                           ; $45e7: $9d
	sbc  b                                           ; $45e8: $98
	sbc  [hl]                                        ; $45e9: $9e
	ld   e, d                                        ; $45ea: $5a
	and  c                                           ; $45eb: $a1
	ld   a, [hl]                                     ; $45ec: $7e
	ld   [hl], c                                     ; $45ed: $71
	ld   [hl], h                                     ; $45ee: $74
	ld   a, e                                        ; $45ef: $7b
	sbc  a                                           ; $45f0: $9f
	dec  c                                           ; $45f1: $0d
	nop                                              ; $45f2: $00
	ld   a, [bc]                                     ; $45f3: $0a
	nop                                              ; $45f4: $00
	rrca                                             ; $45f5: $0f
	nop                                              ; $45f6: $00
	ld   bc, $b901                                   ; $45f7: $01 $01 $b9
	push hl                                          ; $45fa: $e5
	cp   [hl]                                        ; $45fb: $be
	sbc  $fb                                         ; $45fc: $de $fb
	db   $ed                                         ; $45fe: $ed
	ld   l, [hl]                                     ; $45ff: $6e
	sbc  e                                           ; $4600: $9b
	ld   sp, hl                                      ; $4601: $f9
	dec  c                                           ; $4602: $0d
	nop                                              ; $4603: $00
	ld   a, [bc]                                     ; $4604: $0a
	inc  e                                           ; $4605: $1c
	inc  b                                           ; $4606: $04
	ld   [bc], a                                     ; $4607: $02
	ld   [bc], a                                     ; $4608: $02
	dec  e                                           ; $4609: $1d
	ld   b, b                                        ; $460a: $40
	inc  d                                           ; $460b: $14
	inc  bc                                          ; $460c: $03
	inc  d                                           ; $460d: $14
	ld   bc, $2902                                   ; $460e: $01 $02 $29
	nop                                              ; $4611: $00
	ld   bc, $5a6f                                   ; $4612: $01 $6f $5a
	ld   d, h                                        ; $4615: $54
	sub  b                                           ; $4616: $90
	and  c                                           ; $4617: $a1
	ld   a, [$b90d]                                  ; $4618: $fa $0d $b9
	push hl                                          ; $461b: $e5
	push af                                          ; $461c: $f5
	sbc  $fb                                         ; $461d: $de $fb
	db   $ed                                         ; $461f: $ed
	ld   l, [hl]                                     ; $4620: $6e
	sub  b                                           ; $4621: $90
	and  c                                           ; $4622: $a1
	ld   a, [$b90d]                                  ; $4623: $fa $0d $b9
	push hl                                          ; $4626: $e5
	cp   [hl]                                        ; $4627: $be
	ld   h, [hl]                                     ; $4628: $66
	sub  c                                           ; $4629: $91
	ld   a, b                                        ; $462a: $78
	ld   d, d                                        ; $462b: $52
	sub  b                                           ; $462c: $90
	and  c                                           ; $462d: $a1
	ld   a, [$000d]                                  ; $462e: $fa $0d $00
	ld   a, [bc]                                     ; $4631: $0a
	ld   bc, $6152                                   ; $4632: $01 $52 $61
	ld   d, h                                        ; $4635: $54
	sbc  [hl]                                        ; $4636: $9e
	cp   c                                           ; $4637: $b9
	push hl                                          ; $4638: $e5
	push af                                          ; $4639: $f5
	sbc  $fb                                         ; $463a: $de $fb
	db   $ed                                         ; $463c: $ed
	sbc  a                                           ; $463d: $9f
	dec  c                                           ; $463e: $0d
	nop                                              ; $463f: $00
	ld   a, [bc]                                     ; $4640: $0a
	dec  c                                           ; $4641: $0d
	nop                                              ; $4642: $00
	nop                                              ; $4643: $00
	rrca                                             ; $4644: $0f
	nop                                              ; $4645: $00
	ld   bc, $1e09                                   ; $4646: $01 $09 $1e
	nop                                              ; $4649: $00
	rrca                                             ; $464a: $0f
	nop                                              ; $464b: $00
	ld   bc, $b001                                   ; $464c: $01 $01 $b0
	rst  JumpTable                                         ; $464f: $df
	dec  b                                           ; $4650: $05
	ld   a, [hl+]                                    ; $4651: $2a
	dec  b                                           ; $4652: $05
	inc  c                                           ; $4653: $0c
	ld   l, [hl]                                     ; $4654: $6e
	sbc  e                                           ; $4655: $9b
	ld   sp, hl                                      ; $4656: $f9
	dec  c                                           ; $4657: $0d
	nop                                              ; $4658: $00
	ld   a, [bc]                                     ; $4659: $0a
	inc  e                                           ; $465a: $1c
	inc  b                                           ; $465b: $04
	rlca                                             ; $465c: $07
	rlca                                             ; $465d: $07
	dec  e                                           ; $465e: $1d
	ld   b, b                                        ; $465f: $40
	inc  d                                           ; $4660: $14
	inc  bc                                          ; $4661: $03
	inc  d                                           ; $4662: $14
	ld   bc, $2903                                   ; $4663: $01 $03 $29
	nop                                              ; $4666: $00
	ld   bc, $5a6f                                   ; $4667: $01 $6f $5a
	ld   d, h                                        ; $466a: $54
	ld   a, [$e5b9]                                  ; $466b: $fa $b9 $e5
	push af                                          ; $466e: $f5
	sbc  $fb                                         ; $466f: $de $fb
	db   $ed                                         ; $4671: $ed
	ld   l, [hl]                                     ; $4672: $6e
	sub  b                                           ; $4673: $90
	and  c                                           ; $4674: $a1
	ld   a, [$d90d]                                  ; $4675: $fa $0d $d9
	push af                                          ; $4678: $f5
	ld   a, b                                        ; $4679: $78
	ld   a, b                                        ; $467a: $78
	adc  h                                           ; $467b: $8c
	ld   d, [hl]                                     ; $467c: $56
	ld   [hl], l                                     ; $467d: $75
	sub  [hl]                                        ; $467e: $96
	ld   a, [hl]                                     ; $467f: $7e
	ld   a, b                                        ; $4680: $78
	ld   d, d                                        ; $4681: $52
	ld   [hl], l                                     ; $4682: $75
	ld   a, [$6f0d]                                  ; $4683: $fa $0d $6f
	ld   d, d                                        ; $4686: $52
	ld   [bc], a                                     ; $4687: $02
	inc  de                                          ; $4688: $13
	ld   l, a                                        ; $4689: $6f
	sub  c                                           ; $468a: $91
	and  c                                           ; $468b: $a1
	xor  [hl]                                        ; $468c: $ae
	db   $eb                                         ; $468d: $eb
	and  l                                           ; $468e: $a5
	ld   a, [$000d]                                  ; $468f: $fa $0d $00
	ld   a, [bc]                                     ; $4692: $0a
	inc  e                                           ; $4693: $1c
	inc  b                                           ; $4694: $04
	ld   [bc], a                                     ; $4695: $02
	ld   [bc], a                                     ; $4696: $02
	ld   b, $39                                      ; $4697: $06 $39
	ld   [bc], a                                     ; $4699: $02
	inc  e                                           ; $469a: $1c
	inc  b                                           ; $469b: $04
	ld   [bc], a                                     ; $469c: $02
	ld   [bc], a                                     ; $469d: $02
	dec  e                                           ; $469e: $1d
	ld   b, b                                        ; $469f: $40
	inc  d                                           ; $46a0: $14
	inc  bc                                          ; $46a1: $03
	inc  d                                           ; $46a2: $14
	ld   bc, $2902                                   ; $46a3: $01 $02 $29
	nop                                              ; $46a6: $00
	ld   bc, $7192                                   ; $46a7: $01 $92 $71
	ld   a, a                                        ; $46aa: $7f
	sbc  b                                           ; $46ab: $98
	sbc  [hl]                                        ; $46ac: $9e
	ld   e, b                                        ; $46ad: $58
	adc  d                                           ; $46ae: $8a
	ld   d, [hl]                                     ; $46af: $56
	ld   [hl], h                                     ; $46b0: $74
	ld   a, b                                        ; $46b1: $78
	ld   d, d                                        ; $46b2: $52
	and  c                                           ; $46b3: $a1
	ld   l, [hl]                                     ; $46b4: $6e
	ld   a, [$6f0d]                                  ; $46b5: $fa $0d $6f
	ld   d, d                                        ; $46b8: $52
	ld   [bc], a                                     ; $46b9: $02
	inc  de                                          ; $46ba: $13
	ld   l, a                                        ; $46bb: $6f
	sub  c                                           ; $46bc: $91
	and  c                                           ; $46bd: $a1
	ld   a, h                                        ; $46be: $7c
	dec  c                                           ; $46bf: $0d
	ld   a, l                                        ; $46c0: $7d
	ld   e, l                                        ; $46c1: $5d
	ld   h, [hl]                                     ; $46c2: $66
	sub  l                                           ; $46c3: $95
	ld   d, h                                        ; $46c4: $54
	sub  b                                           ; $46c5: $90
	ld   a, h                                        ; $46c6: $7c
	ld   a, [$000d]                                  ; $46c7: $fa $0d $00
	ld   a, [bc]                                     ; $46ca: $0a
	ld   bc, $6152                                   ; $46cb: $01 $52 $61
	ld   d, h                                        ; $46ce: $54
	sbc  [hl]                                        ; $46cf: $9e
	cp   c                                           ; $46d0: $b9
	push hl                                          ; $46d1: $e5
	push af                                          ; $46d2: $f5
	sbc  $fb                                         ; $46d3: $de $fb
	db   $ed                                         ; $46d5: $ed
	sbc  a                                           ; $46d6: $9f
	dec  c                                           ; $46d7: $0d
	nop                                              ; $46d8: $00
	ld   a, [bc]                                     ; $46d9: $0a
	dec  c                                           ; $46da: $0d
	nop                                              ; $46db: $00
	nop                                              ; $46dc: $00
	rrca                                             ; $46dd: $0f
	nop                                              ; $46de: $00
	ld   bc, $1e09                                   ; $46df: $01 $09 $1e
	nop                                              ; $46e2: $00
	rrca                                             ; $46e3: $0f
	nop                                              ; $46e4: $00
	ld   bc, $a301                                   ; $46e5: $01 $01 $a3
	and  l                                           ; $46e8: $a5
	db   $ec                                         ; $46e9: $ec
	cp   d                                           ; $46ea: $ba
	ld   a, h                                        ; $46eb: $7c
	inc  b                                           ; $46ec: $04
	ld   l, d                                        ; $46ed: $6a
	ld   [hl], c                                     ; $46ee: $71
	ld   [hl], h                                     ; $46ef: $74
	dec  c                                           ; $46f0: $0d
	ld   e, e                                        ; $46f1: $5b
	sbc  d                                           ; $46f2: $9a
	ld   d, d                                        ; $46f3: $52
	ld   l, [hl]                                     ; $46f4: $6e
	sub  [hl]                                        ; $46f5: $96
	ld   a, e                                        ; $46f6: $7b
	sbc  a                                           ; $46f7: $9f
	dec  c                                           ; $46f8: $0d
	nop                                              ; $46f9: $00
	ld   a, [bc]                                     ; $46fa: $0a
	inc  e                                           ; $46fb: $1c
	inc  b                                           ; $46fc: $04
	ld   bc, $1d01                                   ; $46fd: $01 $01 $1d
	ld   b, b                                        ; $4700: $40
	inc  d                                           ; $4701: $14
	inc  bc                                          ; $4702: $03
	inc  d                                           ; $4703: $14
	ld   bc, $2802                                   ; $4704: $01 $02 $28
	nop                                              ; $4707: $00
	ld   bc, $f5dc                                   ; $4708: $01 $dc $f5
	ret                                              ; $470b: $c9


	ld   sp, hl                                      ; $470c: $f9
	dec  c                                           ; $470d: $0d
	sbc  l                                           ; $470e: $9d
	ei                                               ; $470f: $fb
	ld   d, d                                        ; $4710: $52
	sbc  [hl]                                        ; $4711: $9e
	adc  c                                           ; $4712: $89
	adc  a                                           ; $4713: $8f
	sub  a                                           ; $4714: $97
	sbc  d                                           ; $4715: $9a
	ld   l, a                                        ; $4716: $6f
	sub  c                                           ; $4717: $91
	ld   [hl], c                                     ; $4718: $71
	ld   l, l                                        ; $4719: $6d
	ld   a, [$000d]                                  ; $471a: $fa $0d $00
	ld   a, [bc]                                     ; $471d: $0a
	inc  e                                           ; $471e: $1c
	inc  b                                           ; $471f: $04
	dec  b                                           ; $4720: $05
	dec  b                                           ; $4721: $05
	ld   bc, $526f                                   ; $4722: $01 $6f $52
	ld   [bc], a                                     ; $4725: $02
	inc  de                                          ; $4726: $13
	ld   l, a                                        ; $4727: $6f
	sub  c                                           ; $4728: $91
	and  c                                           ; $4729: $a1
	sbc  [hl]                                        ; $472a: $9e
	ld   l, [hl]                                     ; $472b: $6e
	ei                                               ; $472c: $fb
	ld   d, d                                        ; $472d: $52
	ld   h, a                                        ; $472e: $67
	ld   e, e                                        ; $472f: $5b
	ld   a, [$ff0d]                                  ; $4730: $fa $0d $ff
	rst  $38                                         ; $4733: $ff
	ld   e, b                                        ; $4734: $58
	ld   [bc], a                                     ; $4735: $02
	inc  de                                          ; $4736: $13
	ld   l, a                                        ; $4737: $6f
	sub  c                                           ; $4738: $91
	and  c                                           ; $4739: $a1
	ld   a, h                                        ; $473a: $7c
	ld   [hl], d                                     ; $473b: $72
	ld   e, h                                        ; $473c: $5c
	ld   l, [hl]                                     ; $473d: $6e
	ld   e, a                                        ; $473e: $5f
	ld   [hl], a                                     ; $473f: $77
	sbc  a                                           ; $4740: $9f
	dec  c                                           ; $4741: $0d
	nop                                              ; $4742: $00
	ld   a, [bc]                                     ; $4743: $0a
	inc  e                                           ; $4744: $1c
	inc  b                                           ; $4745: $04
	ld   bc, $0101                                   ; $4746: $01 $01 $01
	ld   h, [hl]                                     ; $4749: $66
	sub  c                                           ; $474a: $91
	sbc  [hl]                                        ; $474b: $9e
	ld   l, a                                        ; $474c: $6f
	ld   d, d                                        ; $474d: $52
	ld   [bc], a                                     ; $474e: $02
	inc  de                                          ; $474f: $13
	ld   l, a                                        ; $4750: $6f
	sub  c                                           ; $4751: $91
	and  c                                           ; $4752: $a1
	rst  $38                                         ; $4753: $ff
	rst  $38                                         ; $4754: $ff
	dec  c                                           ; $4755: $0d
	adc  l                                           ; $4756: $8d
	adc  h                                           ; $4757: $8c
	sbc  l                                           ; $4758: $9d
	sbc  b                                           ; $4759: $98
	sbc  [hl]                                        ; $475a: $9e
	ld   e, d                                        ; $475b: $5a
	and  c                                           ; $475c: $a1
	ld   a, [hl]                                     ; $475d: $7e
	ld   [hl], c                                     ; $475e: $71
	ld   [hl], h                                     ; $475f: $74
	ld   a, e                                        ; $4760: $7b
	sbc  a                                           ; $4761: $9f
	dec  c                                           ; $4762: $0d
	nop                                              ; $4763: $00
	ld   a, [bc]                                     ; $4764: $0a
	dec  c                                           ; $4765: $0d
	nop                                              ; $4766: $00
	nop                                              ; $4767: $00
	rrca                                             ; $4768: $0f
	nop                                              ; $4769: $00
	ld   bc, $1e09                                   ; $476a: $01 $09 $1e
	nop                                              ; $476d: $00
	rrca                                             ; $476e: $0f
	nop                                              ; $476f: $00
	ld   bc, $a301                                   ; $4770: $01 $01 $a3
	and  l                                           ; $4773: $a5
	db   $ec                                         ; $4774: $ec
	cp   d                                           ; $4775: $ba
	ld   a, h                                        ; $4776: $7c
	inc  b                                           ; $4777: $04
	and  l                                           ; $4778: $a5
	sbc  [hl]                                        ; $4779: $9e
	ld   e, c                                        ; $477a: $59
	sbc  l                                           ; $477b: $9d
	ld   d, d                                        ; $477c: $52
	ld   d, d                                        ; $477d: $52
	ld   a, e                                        ; $477e: $7b
	sbc  a                                           ; $477f: $9f
	dec  c                                           ; $4780: $0d
	sub  [hl]                                        ; $4781: $96
	ld   e, l                                        ; $4782: $5d
	inc  b                                           ; $4783: $04
	ld   c, l                                        ; $4784: $4d
	ld   [bc], a                                     ; $4785: $02
	ld   a, e                                        ; $4786: $7b
	ld   [hl], c                                     ; $4787: $71
	ld   [hl], h                                     ; $4788: $74
	sbc  c                                           ; $4789: $99
	sub  [hl]                                        ; $478a: $96
	sbc  a                                           ; $478b: $9f
	dec  c                                           ; $478c: $0d
	nop                                              ; $478d: $00
	ld   a, [bc]                                     ; $478e: $0a
	inc  e                                           ; $478f: $1c
	inc  b                                           ; $4790: $04
	ld   bc, $1d01                                   ; $4791: $01 $01 $1d
	ld   b, b                                        ; $4794: $40
	inc  d                                           ; $4795: $14
	inc  bc                                          ; $4796: $03
	inc  d                                           ; $4797: $14
	ld   bc, $2802                                   ; $4798: $01 $02 $28
	nop                                              ; $479b: $00
	ld   bc, $f5dc                                   ; $479c: $01 $dc $f5
	ret                                              ; $479f: $c9


	ld   sp, hl                                      ; $47a0: $f9
	dec  c                                           ; $47a1: $0d
	sbc  l                                           ; $47a2: $9d
	ei                                               ; $47a3: $fb
	ld   d, d                                        ; $47a4: $52
	sbc  [hl]                                        ; $47a5: $9e
	adc  c                                           ; $47a6: $89
	adc  a                                           ; $47a7: $8f
	sub  a                                           ; $47a8: $97
	sbc  d                                           ; $47a9: $9a
	ld   l, a                                        ; $47aa: $6f
	sub  c                                           ; $47ab: $91
	ld   [hl], c                                     ; $47ac: $71
	ld   l, l                                        ; $47ad: $6d
	ld   a, [$000d]                                  ; $47ae: $fa $0d $00
	ld   a, [bc]                                     ; $47b1: $0a
	inc  e                                           ; $47b2: $1c
	inc  b                                           ; $47b3: $04
	dec  b                                           ; $47b4: $05
	dec  b                                           ; $47b5: $05
	ld   bc, $526f                                   ; $47b6: $01 $6f $52
	ld   [bc], a                                     ; $47b9: $02
	inc  de                                          ; $47ba: $13
	ld   l, a                                        ; $47bb: $6f
	sub  c                                           ; $47bc: $91
	and  c                                           ; $47bd: $a1
	sbc  [hl]                                        ; $47be: $9e
	ld   l, [hl]                                     ; $47bf: $6e
	ei                                               ; $47c0: $fb
	ld   d, d                                        ; $47c1: $52
	ld   h, a                                        ; $47c2: $67
	ld   e, e                                        ; $47c3: $5b
	ld   a, [$ff0d]                                  ; $47c4: $fa $0d $ff
	rst  $38                                         ; $47c7: $ff
	ld   e, b                                        ; $47c8: $58
	ld   [bc], a                                     ; $47c9: $02
	inc  de                                          ; $47ca: $13
	ld   l, a                                        ; $47cb: $6f
	sub  c                                           ; $47cc: $91
	and  c                                           ; $47cd: $a1
	ld   a, h                                        ; $47ce: $7c
	ld   [hl], d                                     ; $47cf: $72
	ld   e, h                                        ; $47d0: $5c
	ld   l, [hl]                                     ; $47d1: $6e
	ld   e, a                                        ; $47d2: $5f
	ld   [hl], a                                     ; $47d3: $77
	sbc  a                                           ; $47d4: $9f
	dec  c                                           ; $47d5: $0d
	nop                                              ; $47d6: $00
	ld   a, [bc]                                     ; $47d7: $0a
	inc  e                                           ; $47d8: $1c
	inc  b                                           ; $47d9: $04
	ld   bc, $0101                                   ; $47da: $01 $01 $01
	ld   h, [hl]                                     ; $47dd: $66
	sub  c                                           ; $47de: $91
	sbc  [hl]                                        ; $47df: $9e
	ld   l, a                                        ; $47e0: $6f
	ld   d, d                                        ; $47e1: $52
	ld   [bc], a                                     ; $47e2: $02
	inc  de                                          ; $47e3: $13
	ld   l, a                                        ; $47e4: $6f
	sub  c                                           ; $47e5: $91
	and  c                                           ; $47e6: $a1
	rst  $38                                         ; $47e7: $ff
	rst  $38                                         ; $47e8: $ff
	dec  c                                           ; $47e9: $0d
	adc  l                                           ; $47ea: $8d
	adc  h                                           ; $47eb: $8c
	sbc  l                                           ; $47ec: $9d
	sbc  b                                           ; $47ed: $98
	sbc  [hl]                                        ; $47ee: $9e
	ld   e, d                                        ; $47ef: $5a
	and  c                                           ; $47f0: $a1
	ld   a, [hl]                                     ; $47f1: $7e
	ld   [hl], c                                     ; $47f2: $71
	ld   [hl], h                                     ; $47f3: $74
	ld   a, e                                        ; $47f4: $7b
	sbc  a                                           ; $47f5: $9f
	dec  c                                           ; $47f6: $0d
	nop                                              ; $47f7: $00
	ld   a, [bc]                                     ; $47f8: $0a
	dec  c                                           ; $47f9: $0d
	nop                                              ; $47fa: $00
	nop                                              ; $47fb: $00
	rrca                                             ; $47fc: $0f
	nop                                              ; $47fd: $00
	ld   bc, $1e09                                   ; $47fe: $01 $09 $1e
	nop                                              ; $4801: $00
	nop                                              ; $4802: $00
	ld   c, $71                                      ; $4803: $0e $71
	rrca                                             ; $4805: $0f
	nop                                              ; $4806: $00
	ld   bc, $050d                                   ; $4807: $01 $0d $05
	ld   [bc], a                                     ; $480a: $02
	ld   [bc], a                                     ; $480b: $02
	ld   bc, $cf02                                   ; $480c: $01 $02 $cf
	dec  b                                           ; $480f: $05
	ld   a, [de]                                     ; $4810: $1a
	ld   h, e                                        ; $4811: $63
	and  c                                           ; $4812: $a1
	sbc  [hl]                                        ; $4813: $9e
	ld   h, c                                        ; $4814: $61
	and  c                                           ; $4815: $a1
	ld   a, b                                        ; $4816: $78
	inc  b                                           ; $4817: $04
	rst  $28                                         ; $4818: $ef
	ld   e, b                                        ; $4819: $58
	ld   l, e                                        ; $481a: $6b
	ld   e, l                                        ; $481b: $5d
	ld   a, c                                        ; $481c: $79
	dec  c                                           ; $481d: $0d
	inc  b                                           ; $481e: $04
	ld   c, c                                        ; $481f: $49
	and  b                                           ; $4820: $a0
	ld   h, l                                        ; $4821: $65
	ld   [hl], h                                     ; $4822: $74
	sbc  c                                           ; $4823: $99
	and  c                                           ; $4824: $a1
	ld   [hl], l                                     ; $4825: $75
	ld   h, a                                        ; $4826: $67
	ld   e, c                                        ; $4827: $59
	ld   sp, hl                                      ; $4828: $f9
	dec  c                                           ; $4829: $0d
	nop                                              ; $482a: $00
	ld   a, [bc]                                     ; $482b: $0a
	inc  e                                           ; $482c: $1c
	dec  b                                           ; $482d: $05
	nop                                              ; $482e: $00
	nop                                              ; $482f: $00
	ld   bc, $956f                                   ; $4830: $01 $6f $95
	ld   [hl], c                                     ; $4833: $71
	halt                                             ; $4834: $76
	inc  b                                           ; $4835: $04
	inc  d                                           ; $4836: $14
	ld   h, l                                        ; $4837: $65
	inc  b                                           ; $4838: $04
	sub  d                                           ; $4839: $92
	sub  d                                           ; $483a: $92
	sbc  a                                           ; $483b: $9f
	dec  c                                           ; $483c: $0d
	nop                                              ; $483d: $00
	ld   a, [bc]                                     ; $483e: $0a
	add  hl, de                                      ; $483f: $19
	dec  b                                           ; $4840: $05
	inc  bc                                          ; $4841: $03
	inc  bc                                          ; $4842: $03
	ld   l, e                                        ; $4843: $6b
	inc  b                                           ; $4844: $04
	ld   [de], a                                     ; $4845: $12
	ld   d, h                                        ; $4846: $54
	nop                                              ; $4847: $00
	nop                                              ; $4848: $00
	inc  b                                           ; $4849: $04
	ld   c, c                                        ; $484a: $49
	and  b                                           ; $484b: $a0
	inc  b                                           ; $484c: $04
	inc  d                                           ; $484d: $14
	ld   h, l                                        ; $484e: $65
	ld   [hl], h                                     ; $484f: $74
	ld   d, d                                        ; $4850: $52
	sbc  c                                           ; $4851: $99
	ld   a, h                                        ; $4852: $7c
	ld   sp, hl                                      ; $4853: $f9
	nop                                              ; $4854: $00
	ld   bc, $6d04                                   ; $4855: $01 $04 $6d
	ld   a, h                                        ; $4858: $7c
	ld   h, c                                        ; $4859: $61
	halt                                             ; $485a: $76
	ld   sp, hl                                      ; $485b: $f9
	nop                                              ; $485c: $00
	ld   [bc], a                                     ; $485d: $02
	rlca                                             ; $485e: $07
	ld   a, c                                        ; $485f: $79
	nop                                              ; $4860: $00
	ld   [bc], a                                     ; $4861: $02
	inc  bc                                          ; $4862: $03
	ld   bc, $2000                                   ; $4863: $01 $00 $20
	nop                                              ; $4866: $00
	rlca                                             ; $4867: $07
	xor  $00                                         ; $4868: $ee $00
	ld   [bc], a                                     ; $486a: $02
	inc  bc                                          ; $486b: $03
	ld   bc, $2001                                   ; $486c: $01 $01 $20
	nop                                              ; $486f: $00
	rlca                                             ; $4870: $07
	ld   h, [hl]                                     ; $4871: $66
	ld   bc, $0302                                   ; $4872: $01 $02 $03
	ld   bc, $2002                                   ; $4875: $01 $02 $20
	nop                                              ; $4878: $00
	ld   b, $d1                                      ; $4879: $06 $d1
	ld   bc, $000f                                   ; $487b: $01 $0f $00
	ld   bc, $0401                                   ; $487e: $01 $01 $04
	ld   l, l                                        ; $4881: $6d
	sub  b                                           ; $4882: $90
	inc  bc                                          ; $4883: $03
	ld   l, e                                        ; $4884: $6b
	inc  b                                           ; $4885: $04
	ld   [de], a                                     ; $4886: $12
	ld   d, d                                        ; $4887: $52
	adc  h                                           ; $4888: $8c
	ld   h, l                                        ; $4889: $65
	sub  l                                           ; $488a: $95
	ld   d, h                                        ; $488b: $54
	ld   e, c                                        ; $488c: $59
	ld   sp, hl                                      ; $488d: $f9
	dec  c                                           ; $488e: $0d
	nop                                              ; $488f: $00
	ld   a, [bc]                                     ; $4890: $0a
	inc  e                                           ; $4891: $1c
	dec  b                                           ; $4892: $05
	ld   bc, $1d01                                   ; $4893: $01 $01 $1d
	ld   b, b                                        ; $4896: $40
	dec  d                                           ; $4897: $15
	inc  bc                                          ; $4898: $03
	dec  d                                           ; $4899: $15
	ld   bc, $2802                                   ; $489a: $01 $02 $28
	nop                                              ; $489d: $00
	ld   bc, $5858                                   ; $489e: $01 $58 $58
	ld   e, e                                        ; $48a1: $5b
	ld   a, c                                        ; $48a2: $79
	sbc  a                                           ; $48a3: $9f
	dec  c                                           ; $48a4: $0d
	ld   l, c                                        ; $48a5: $69
	sub  d                                           ; $48a6: $92
	ld   e, a                                        ; $48a7: $5f
	ld   [hl], a                                     ; $48a8: $77
	sbc  [hl]                                        ; $48a9: $9e
	ld   h, a                                        ; $48aa: $67
	ld   e, [hl]                                     ; $48ab: $5e
	ld   a, c                                        ; $48ac: $79
	inc  bc                                          ; $48ad: $03
	ld   a, [hl]                                     ; $48ae: $7e
	sbc  l                                           ; $48af: $9d
	sbc  c                                           ; $48b0: $99
	ld   e, c                                        ; $48b1: $59
	sub  a                                           ; $48b2: $97
	dec  c                                           ; $48b3: $0d
	inc  b                                           ; $48b4: $04
	ld   c, $03                                      ; $48b5: $0e $03
	sbc  l                                           ; $48b7: $9d
	inc  b                                           ; $48b8: $04
	and  [hl]                                        ; $48b9: $a6
	sub  d                                           ; $48ba: $92
	sbc  a                                           ; $48bb: $9f
	dec  c                                           ; $48bc: $0d
	nop                                              ; $48bd: $00
	ld   a, [bc]                                     ; $48be: $0a
	ld   bc, $0008                                   ; $48bf: $01 $08 $00
	ld   a, l                                        ; $48c2: $7d
	and  c                                           ; $48c3: $a1
	sub  b                                           ; $48c4: $90
	dec  c                                           ; $48c5: $0d
	ld   [bc], a                                     ; $48c6: $02
	sub  l                                           ; $48c7: $95
	ld   [bc], a                                     ; $48c8: $02
	sub  e                                           ; $48c9: $93
	sbc  b                                           ; $48ca: $98
	ld   h, e                                        ; $48cb: $63
	ld   [hl], c                                     ; $48cc: $71
	ld   h, e                                        ; $48cd: $63
	halt                                             ; $48ce: $76
	ld   h, a                                        ; $48cf: $67
	adc  h                                           ; $48d0: $8c
	ld   l, c                                        ; $48d1: $69
	ld   [hl], h                                     ; $48d2: $74
	sbc  [hl]                                        ; $48d3: $9e
	dec  c                                           ; $48d4: $0d
	ld   a, l                                        ; $48d5: $7d
	sub  [hl]                                        ; $48d6: $96
	inc  b                                           ; $48d7: $04
	ld   b, d                                        ; $48d8: $42
	ld   l, l                                        ; $48d9: $6d
	adc  c                                           ; $48da: $89
	ld   d, h                                        ; $48db: $54
	ld   e, d                                        ; $48dc: $5a
	xor  c                                           ; $48dd: $a9
	xor  c                                           ; $48de: $a9
	ld   [hl], l                                     ; $48df: $75
	sbc  a                                           ; $48e0: $9f
	dec  c                                           ; $48e1: $0d
	nop                                              ; $48e2: $00
	ld   a, [bc]                                     ; $48e3: $0a
	ld   bc, $7889                                   ; $48e4: $01 $89 $78
	sbc  [hl]                                        ; $48e7: $9e
	ld   e, b                                        ; $48e8: $58
	sub  d                                           ; $48e9: $92
	ld   h, a                                        ; $48ea: $67
	adc  l                                           ; $48eb: $8d
	sbc  a                                           ; $48ec: $9f
	dec  c                                           ; $48ed: $0d
	nop                                              ; $48ee: $00
	ld   a, [bc]                                     ; $48ef: $0a
	nop                                              ; $48f0: $00
	rrca                                             ; $48f1: $0f
	nop                                              ; $48f2: $00
	ld   bc, $0401                                   ; $48f3: $01 $01 $04
	ld   c, c                                        ; $48f6: $49
	and  b                                           ; $48f7: $a0
	inc  b                                           ; $48f8: $04
	inc  d                                           ; $48f9: $14
	ld   h, l                                        ; $48fa: $65
	ld   [hl], h                                     ; $48fb: $74
	ld   d, d                                        ; $48fc: $52
	sbc  c                                           ; $48fd: $99
	ld   a, h                                        ; $48fe: $7c
	ld   [hl], l                                     ; $48ff: $75
	ld   h, a                                        ; $4900: $67
	ld   e, c                                        ; $4901: $59
	ld   sp, hl                                      ; $4902: $f9
	dec  c                                           ; $4903: $0d
	nop                                              ; $4904: $00
	ld   a, [bc]                                     ; $4905: $0a
	inc  e                                           ; $4906: $1c
	dec  b                                           ; $4907: $05
	ld   bc, $1101                                   ; $4908: $01 $01 $11
	nop                                              ; $490b: $00
	dec  e                                           ; $490c: $1d
	ld   b, b                                        ; $490d: $40
	dec  d                                           ; $490e: $15
	inc  bc                                          ; $490f: $03
	dec  d                                           ; $4910: $15
	ld   bc, $2801                                   ; $4911: $01 $01 $28
	nop                                              ; $4914: $00
	ld   bc, $b602                                   ; $4915: $01 $02 $b6
	and  b                                           ; $4918: $a0
	ld   a, b                                        ; $4919: $78
	rst  $38                                         ; $491a: $ff
	rst  $38                                         ; $491b: $ff
	sbc  a                                           ; $491c: $9f
	dec  c                                           ; $491d: $0d
	nop                                              ; $491e: $00
	ld   de, $01ff                                   ; $491f: $11 $ff $01
	ld   d, d                                        ; $4922: $52
	sub  d                                           ; $4923: $92
	ld   d, d                                        ; $4924: $52
	sub  d                                           ; $4925: $92
	sbc  [hl]                                        ; $4926: $9e
	inc  b                                           ; $4927: $04
	ld   d, h                                        ; $4928: $54
	ld   a, c                                        ; $4929: $79
	ld   a, b                                        ; $492a: $78
	and  c                                           ; $492b: $a1
	ld   [hl], l                                     ; $492c: $75
	sub  b                                           ; $492d: $90
	dec  c                                           ; $492e: $0d
	ld   d, b                                        ; $492f: $50
	sub  a                                           ; $4930: $97
	add  [hl]                                        ; $4931: $86
	and  c                                           ; $4932: $a1
	sbc  a                                           ; $4933: $9f
	dec  c                                           ; $4934: $0d
	nop                                              ; $4935: $00
	ld   a, [bc]                                     ; $4936: $0a
	ld   bc, $0008                                   ; $4937: $01 $08 $00
	ld   a, l                                        ; $493a: $7d
	and  c                                           ; $493b: $a1
	sub  b                                           ; $493c: $90
	dec  c                                           ; $493d: $0d
	ld   [bc], a                                     ; $493e: $02
	sub  l                                           ; $493f: $95
	ld   [bc], a                                     ; $4940: $02
	sub  e                                           ; $4941: $93
	sbc  b                                           ; $4942: $98
	ld   h, e                                        ; $4943: $63
	ld   [hl], c                                     ; $4944: $71
	ld   h, e                                        ; $4945: $63
	halt                                             ; $4946: $76
	ld   h, a                                        ; $4947: $67
	adc  h                                           ; $4948: $8c
	ld   l, c                                        ; $4949: $69
	ld   [hl], h                                     ; $494a: $74
	sbc  [hl]                                        ; $494b: $9e
	dec  c                                           ; $494c: $0d
	ld   a, l                                        ; $494d: $7d
	sub  [hl]                                        ; $494e: $96
	inc  b                                           ; $494f: $04
	ld   b, d                                        ; $4950: $42
	ld   l, l                                        ; $4951: $6d
	adc  c                                           ; $4952: $89
	ld   d, h                                        ; $4953: $54
	ld   e, d                                        ; $4954: $5a
	xor  c                                           ; $4955: $a9
	xor  c                                           ; $4956: $a9
	ld   [hl], l                                     ; $4957: $75
	sbc  a                                           ; $4958: $9f
	dec  c                                           ; $4959: $0d
	nop                                              ; $495a: $00
	ld   a, [bc]                                     ; $495b: $0a
	ld   bc, $7889                                   ; $495c: $01 $89 $78
	sbc  [hl]                                        ; $495f: $9e
	ld   e, b                                        ; $4960: $58
	sub  d                                           ; $4961: $92
	ld   h, a                                        ; $4962: $67
	adc  l                                           ; $4963: $8d
	sbc  a                                           ; $4964: $9f
	dec  c                                           ; $4965: $0d
	nop                                              ; $4966: $00
	ld   a, [bc]                                     ; $4967: $0a
	nop                                              ; $4968: $00
	rrca                                             ; $4969: $0f
	nop                                              ; $496a: $00
	ld   bc, $0201                                   ; $496b: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $496e: $cf
	dec  b                                           ; $496f: $05
	ld   a, [de]                                     ; $4970: $1a
	ld   h, e                                        ; $4971: $63
	and  c                                           ; $4972: $a1
	sbc  a                                           ; $4973: $9f
	dec  c                                           ; $4974: $0d
	ld   h, c                                        ; $4975: $61
	ld   a, h                                        ; $4976: $7c
	inc  b                                           ; $4977: $04
	ld   l, l                                        ; $4978: $6d
	and  b                                           ; $4979: $a0
	ld   e, b                                        ; $497a: $58
	inc  b                                           ; $497b: $04
	inc  d                                           ; $497c: $14
	ld   h, l                                        ; $497d: $65
	ld   a, b                                        ; $497e: $78
	ld   a, h                                        ; $497f: $7c
	ld   [hl], l                                     ; $4980: $75
	ld   h, a                                        ; $4981: $67
	ld   e, c                                        ; $4982: $59
	ld   sp, hl                                      ; $4983: $f9
	dec  c                                           ; $4984: $0d
	nop                                              ; $4985: $00
	ld   a, [bc]                                     ; $4986: $0a
	inc  e                                           ; $4987: $1c
	dec  b                                           ; $4988: $05
	inc  bc                                          ; $4989: $03
	inc  bc                                          ; $498a: $03
	ld   bc, $a178                                   ; $498b: $01 $78 $a1
	ld   [hl], l                                     ; $498e: $75
	sbc  [hl]                                        ; $498f: $9e
	inc  bc                                          ; $4990: $03
	adc  $02                                         ; $4991: $ce $02
	inc  [hl]                                        ; $4993: $34
	ld   [bc], a                                     ; $4994: $02
	cp   $02                                         ; $4995: $fe $02
	ld   e, c                                        ; $4997: $59
	ld   [hl], l                                     ; $4998: $75
	dec  c                                           ; $4999: $0d
	ld   [$7d00], sp                                 ; $499a: $08 $00 $7d
	and  c                                           ; $499d: $a1
	and  b                                           ; $499e: $a0
	inc  b                                           ; $499f: $04
	inc  d                                           ; $49a0: $14
	ld   h, e                                        ; $49a1: $63
	ld   a, b                                        ; $49a2: $78
	dec  c                                           ; $49a3: $0d
	ld   d, b                                        ; $49a4: $50
	ld   e, c                                        ; $49a5: $59
	and  c                                           ; $49a6: $a1
	ld   a, e                                        ; $49a7: $7b
	and  c                                           ; $49a8: $a1
	ld   a, b                                        ; $49a9: $78
	sbc  a                                           ; $49aa: $9f
	dec  c                                           ; $49ab: $0d
	nop                                              ; $49ac: $00
	ld   a, [bc]                                     ; $49ad: $0a
	inc  e                                           ; $49ae: $1c
	dec  b                                           ; $49af: $05
	ld   [bc], a                                     ; $49b0: $02
	ld   [bc], a                                     ; $49b1: $02
	ld   bc, $5f9d                                   ; $49b2: $01 $9d $5f
	inc  b                                           ; $49b5: $04
	sbc  [hl]                                        ; $49b6: $9e
	ld   e, c                                        ; $49b7: $59
	sub  a                                           ; $49b8: $97
	and  c                                           ; $49b9: $a1
	ld   [bc], a                                     ; $49ba: $02
	jp   $9d02                                       ; $49bb: $c3 $02 $9d


	ld   d, h                                        ; $49be: $54
	ld   [hl], h                                     ; $49bf: $74
	and  c                                           ; $49c0: $a1
	halt                                             ; $49c1: $76
	dec  c                                           ; $49c2: $0d
	ld   a, l                                        ; $49c3: $7d
	sub  [hl]                                        ; $49c4: $96
	ld   [bc], a                                     ; $49c5: $02
	sub  l                                           ; $49c6: $95
	ld   [bc], a                                     ; $49c7: $02
	sub  e                                           ; $49c8: $93
	sbc  b                                           ; $49c9: $98
	ld   h, l                                        ; $49ca: $65
	ld   [hl], h                                     ; $49cb: $74
	ld   h, l                                        ; $49cc: $65
	adc  h                                           ; $49cd: $8c
	ld   d, d                                        ; $49ce: $52
	sbc  a                                           ; $49cf: $9f
	dec  c                                           ; $49d0: $0d
	nop                                              ; $49d1: $00
	ld   a, [bc]                                     ; $49d2: $0a
	nop                                              ; $49d3: $00
	inc  e                                           ; $49d4: $1c
	dec  b                                           ; $49d5: $05
	ld   [bc], a                                     ; $49d6: $02
	ld   [bc], a                                     ; $49d7: $02
	ld   bc, $f9a1                                   ; $49d8: $01 $a1 $f9
	db   $10                                         ; $49db: $10
	ld   [$7d00], sp                                 ; $49dc: $08 $00 $7d
	and  c                                           ; $49df: $a1
	dec  c                                           ; $49e0: $0d
	ld   [hl], a                                     ; $49e1: $77
	ld   a, b                                        ; $49e2: $78
	ld   d, d                                        ; $49e3: $52
	ld   h, l                                        ; $49e4: $65
	ld   l, l                                        ; $49e5: $6d
	and  c                                           ; $49e6: $a1
	sub  d                                           ; $49e7: $92
	sbc  a                                           ; $49e8: $9f
	dec  c                                           ; $49e9: $0d
	nop                                              ; $49ea: $00
	ld   a, [bc]                                     ; $49eb: $0a
	ld   bc, $f304                                   ; $49ec: $01 $04 $f3
	ld   e, d                                        ; $49ef: $5a
	inc  b                                           ; $49f0: $04
	sub  $52                                         ; $49f1: $d6 $52
	and  c                                           ; $49f3: $a1
	sub  d                                           ; $49f4: $92
	ld   [hl], c                                     ; $49f5: $71
	ld   l, l                                        ; $49f6: $6d
	sub  a                                           ; $49f7: $97
	dec  c                                           ; $49f8: $0d
	ld   [bc], a                                     ; $49f9: $02
	sub  l                                           ; $49fa: $95
	ld   [bc], a                                     ; $49fb: $02
	sub  e                                           ; $49fc: $93
	sbc  b                                           ; $49fd: $98
	ld   a, c                                        ; $49fe: $79
	sub  b                                           ; $49ff: $90
	ld   [hl], a                                     ; $4a00: $77
	sbc  b                                           ; $4a01: $98
	sub  d                                           ; $4a02: $92
	sbc  a                                           ; $4a03: $9f
	dec  c                                           ; $4a04: $0d
	nop                                              ; $4a05: $00
	ld   a, [bc]                                     ; $4a06: $0a
	nop                                              ; $4a07: $00
	nop                                              ; $4a08: $00
	inc  bc                                          ; $4a09: $03
	ld   c, a                                        ; $4a0a: $4f
	ld   [bc], a                                     ; $4a0b: $02
	nop                                              ; $4a0c: $00
	inc  bc                                          ; $4a0d: $03
	ld   c, c                                        ; $4a0e: $49
	add  hl, hl                                      ; $4a0f: $29
	add  hl, hl                                      ; $4a10: $29
	ld   bc, $2201                                   ; $4a11: $01 $01 $22
	nop                                              ; $4a14: $00
	inc  e                                           ; $4a15: $1c
	ld   [bc], a                                     ; $4a16: $02
	nop                                              ; $4a17: $00
	nop                                              ; $4a18: $00
	ld   [bc], a                                     ; $4a19: $02
	ld   bc, $9750                                   ; $4a1a: $01 $50 $97
	sbc  [hl]                                        ; $4a1d: $9e
	ld   [bc], a                                     ; $4a1e: $02
	sub  l                                           ; $4a1f: $95
	ld   [bc], a                                     ; $4a20: $02
	sub  e                                           ; $4a21: $93
	sbc  b                                           ; $4a22: $98
	ld   [hl], l                                     ; $4a23: $75
	ld   h, a                                        ; $4a24: $67
	ld   a, h                                        ; $4a25: $7c
	ld   sp, hl                                      ; $4a26: $f9
	dec  c                                           ; $4a27: $0d
	ld   [$6308], sp                                 ; $4a28: $08 $08 $63
	and  c                                           ; $4a2b: $a1
	sbc  a                                           ; $4a2c: $9f
	dec  c                                           ; $4a2d: $0d
	nop                                              ; $4a2e: $00
	ld   a, [bc]                                     ; $4a2f: $0a
	rrca                                             ; $4a30: $0f
	nop                                              ; $4a31: $00
	ld   bc, $0101                                   ; $4a32: $01 $01 $01
	inc  bc                                          ; $4a35: $03
	ld   h, a                                        ; $4a36: $67
	adc  l                                           ; $4a37: $8d
	sbc  d                                           ; $4a38: $9a
	ld   h, e                                        ; $4a39: $63
	and  c                                           ; $4a3a: $a1
	ld   e, c                                        ; $4a3b: $59
	rst  $38                                         ; $4a3c: $ff
	rst  $38                                         ; $4a3d: $ff
	dec  c                                           ; $4a3e: $0d
	db   $10                                         ; $4a3f: $10
	inc  b                                           ; $4a40: $04
	ld   l, l                                        ; $4a41: $6d
	ld   a, h                                        ; $4a42: $7c
	inc  b                                           ; $4a43: $04
	rst  ToBoot                                         ; $4a44: $c7
	inc  bc                                          ; $4a45: $03
	ld   c, a                                        ; $4a46: $4f
	ld   a, l                                        ; $4a47: $7d
	ld   [$7800], sp                                 ; $4a48: $08 $00 $78
	and  c                                           ; $4a4b: $a1
	ld   l, [hl]                                     ; $4a4c: $6e
	dec  c                                           ; $4a4d: $0d
	db   $10                                         ; $4a4e: $10
	ld   e, a                                        ; $4a4f: $5f
	ld   [hl], a                                     ; $4a50: $77
	sbc  [hl]                                        ; $4a51: $9e
	ld   l, e                                        ; $4a52: $6b
	sbc  d                                           ; $4a53: $9a
	ld   a, l                                        ; $4a54: $7d
	halt                                             ; $4a55: $76
	sub  b                                           ; $4a56: $90
	ld   e, c                                        ; $4a57: $59
	ld   e, l                                        ; $4a58: $5d
	rst  $38                                         ; $4a59: $ff
	rst  $38                                         ; $4a5a: $ff
	ld   bc, $0d04                                   ; $4a5b: $01 $04 $0d
	nop                                              ; $4a5e: $00
	ld   a, [bc]                                     ; $4a5f: $0a
	add  hl, de                                      ; $4a60: $19
	dec  b                                           ; $4a61: $05
	inc  bc                                          ; $4a62: $03
	inc  b                                           ; $4a63: $04
	call nc, $02a0                                   ; $4a64: $d4 $a0 $02
	sub  l                                           ; $4a67: $95
	sbc  c                                           ; $4a68: $99
	nop                                              ; $4a69: $00
	nop                                              ; $4a6a: $00
	ld   [bc], a                                     ; $4a6b: $02
	ld   h, [hl]                                     ; $4a6c: $66
	ld   [bc], a                                     ; $4a6d: $02
	xor  h                                           ; $4a6e: $ac
	and  b                                           ; $4a6f: $a0
	ld   [bc], a                                     ; $4a70: $02
	sub  l                                           ; $4a71: $95
	sbc  c                                           ; $4a72: $99
	nop                                              ; $4a73: $00
	ld   bc, $0704                                   ; $4a74: $01 $04 $07
	inc  b                                           ; $4a77: $04
	sub  d                                           ; $4a78: $92
	and  b                                           ; $4a79: $a0
	ld   [bc], a                                     ; $4a7a: $02
	sub  l                                           ; $4a7b: $95
	sbc  c                                           ; $4a7c: $99
	nop                                              ; $4a7d: $00
	ld   [bc], a                                     ; $4a7e: $02
	rlca                                             ; $4a7f: $07
	adc  b                                           ; $4a80: $88
	nop                                              ; $4a81: $00
	ld   [bc], a                                     ; $4a82: $02
	inc  bc                                          ; $4a83: $03
	ld   bc, $2000                                   ; $4a84: $01 $00 $20
	nop                                              ; $4a87: $00
	rlca                                             ; $4a88: $07
	dec  bc                                          ; $4a89: $0b
	ld   bc, $0302                                   ; $4a8a: $01 $02 $03
	ld   bc, $2001                                   ; $4a8d: $01 $01 $20
	nop                                              ; $4a90: $00
	rlca                                             ; $4a91: $07
	ld   [hl], l                                     ; $4a92: $75
	ld   bc, $0302                                   ; $4a93: $01 $02 $03
	ld   bc, $2002                                   ; $4a96: $01 $02 $20
	nop                                              ; $4a99: $00
	ld   b, $ec                                      ; $4a9a: $06 $ec
	ld   bc, $000f                                   ; $4a9c: $01 $0f $00
	ld   bc, $0201                                   ; $4a9f: $01 $01 $02
	and  c                                           ; $4aa2: $a1
	inc  b                                           ; $4aa3: $04
	ld   h, c                                        ; $4aa4: $61
	ld   a, h                                        ; $4aa5: $7c
	ld   d, b                                        ; $4aa6: $50
	sbc  c                                           ; $4aa7: $99
	sbc  [hl]                                        ; $4aa8: $9e
	dec  b                                           ; $4aa9: $05
	ld   h, h                                        ; $4aaa: $64
	sub  d                                           ; $4aab: $92
	ld   e, c                                        ; $4aac: $59
	ld   a, b                                        ; $4aad: $78
	dec  c                                           ; $4aae: $0d
	add  b                                           ; $4aaf: $80
	halt                                             ; $4ab0: $76
	adc  l                                           ; $4ab1: $8d
	ld   [hl], l                                     ; $4ab2: $75
	ld   h, a                                        ; $4ab3: $67
	ld   a, e                                        ; $4ab4: $7b
	sbc  a                                           ; $4ab5: $9f
	dec  c                                           ; $4ab6: $0d
	nop                                              ; $4ab7: $00
	ld   a, [bc]                                     ; $4ab8: $0a
	inc  e                                           ; $4ab9: $1c
	ld   [bc], a                                     ; $4aba: $02
	inc  b                                           ; $4abb: $04
	inc  b                                           ; $4abc: $04
	dec  e                                           ; $4abd: $1d
	ld   b, b                                        ; $4abe: $40
	ld   [de], a                                     ; $4abf: $12
	inc  bc                                          ; $4ac0: $03
	ld   [de], a                                     ; $4ac1: $12
	ld   bc, $2803                                   ; $4ac2: $01 $03 $28
	nop                                              ; $4ac5: $00
	ld   bc, $9e50                                   ; $4ac6: $01 $50 $9e
	ld   d, b                                        ; $4ac9: $50
	sub  a                                           ; $4aca: $97
	rst  $38                                         ; $4acb: $ff
	ld   l, e                                        ; $4acc: $6b
	ld   d, h                                        ; $4acd: $54
	ld   e, c                                        ; $4ace: $59
	ld   h, l                                        ; $4acf: $65
	sub  a                                           ; $4ad0: $97
	ld   sp, hl                                      ; $4ad1: $f9
	dec  c                                           ; $4ad2: $0d
	ld   a, b                                        ; $4ad3: $78
	ld   e, c                                        ; $4ad4: $59
	ld   a, b                                        ; $4ad5: $78
	ld   e, c                                        ; $4ad6: $59
	ld   [bc], a                                     ; $4ad7: $02
	sub  l                                           ; $4ad8: $95
	sbc  c                                           ; $4ad9: $99
	inc  b                                           ; $4ada: $04
	call nc, Call_04a_505a                           ; $4adb: $d4 $5a $50
	sbc  c                                           ; $4ade: $99
	sub  [hl]                                        ; $4adf: $96
	ld   d, h                                        ; $4ae0: $54
	dec  c                                           ; $4ae1: $0d
	ld   [hl], l                                     ; $4ae2: $75
	ld   h, a                                        ; $4ae3: $67
	sbc  l                                           ; $4ae4: $9d
	ld   a, e                                        ; $4ae5: $7b
	sbc  a                                           ; $4ae6: $9f
	ld   e, b                                        ; $4ae7: $58
	adc  c                                           ; $4ae8: $89
	adc  c                                           ; $4ae9: $89
	rst  $38                                         ; $4aea: $ff
	rst  $38                                         ; $4aeb: $ff
	dec  c                                           ; $4aec: $0d
	nop                                              ; $4aed: $00
	ld   a, [bc]                                     ; $4aee: $0a
	inc  e                                           ; $4aef: $1c
	ld   [bc], a                                     ; $4af0: $02
	ld   bc, $0101                                   ; $4af1: $01 $01 $01
	ld   l, e                                        ; $4af4: $6b
	sbc  d                                           ; $4af5: $9a
	ld   [hl], l                                     ; $4af6: $75
	ld   a, l                                        ; $4af7: $7d
	sbc  [hl]                                        ; $4af8: $9e
	sbc  l                                           ; $4af9: $9d
	ld   l, l                                        ; $4afa: $6d
	ld   e, l                                        ; $4afb: $5d
	ld   h, l                                        ; $4afc: $65
	inc  b                                           ; $4afd: $04
	di                                               ; $4afe: $f3
	ld   e, d                                        ; $4aff: $5a
	dec  c                                           ; $4b00: $0d
	ld   d, b                                        ; $4b01: $50
	sbc  b                                           ; $4b02: $98
	adc  h                                           ; $4b03: $8c
	ld   h, a                                        ; $4b04: $67
	ld   e, c                                        ; $4b05: $59
	sub  a                                           ; $4b06: $97
	sbc  [hl]                                        ; $4b07: $9e
	inc  bc                                          ; $4b08: $03
	add  e                                           ; $4b09: $83
	dec  b                                           ; $4b0a: $05
	dec  c                                           ; $4b0b: $0d
	ld   d, d                                        ; $4b0c: $52
	ld   l, l                                        ; $4b0d: $6d
	ld   h, l                                        ; $4b0e: $65
	dec  c                                           ; $4b0f: $0d
	adc  h                                           ; $4b10: $8c
	ld   h, a                                        ; $4b11: $67
	sbc  l                                           ; $4b12: $9d
	sbc  a                                           ; $4b13: $9f
	dec  c                                           ; $4b14: $0d
	nop                                              ; $4b15: $00
	ld   a, [bc]                                     ; $4b16: $0a
	dec  c                                           ; $4b17: $0d
	nop                                              ; $4b18: $00
	nop                                              ; $4b19: $00
	rrca                                             ; $4b1a: $0f
	nop                                              ; $4b1b: $00
	ld   bc, $1e09                                   ; $4b1c: $01 $09 $1e
	nop                                              ; $4b1f: $00
	rrca                                             ; $4b20: $0f
	nop                                              ; $4b21: $00
	ld   bc, $6701                                   ; $4b22: $01 $01 $67
	adc  l                                           ; $4b25: $8d
	sbc  d                                           ; $4b26: $9a
	ld   h, e                                        ; $4b27: $63
	and  c                                           ; $4b28: $a1
	ld   [hl], h                                     ; $4b29: $74
	rst  $38                                         ; $4b2a: $ff
	rst  $38                                         ; $4b2b: $ff
	dec  c                                           ; $4b2c: $0d
	ld   [bc], a                                     ; $4b2d: $02
	ld   b, $02                                      ; $4b2e: $06 $02
	bit  6, [hl]                                     ; $4b30: $cb $76
	or   c                                           ; $4b32: $b1
	db   $eb                                         ; $4b33: $eb
	rst  JumpTable                                         ; $4b34: $df
	ei                                               ; $4b35: $fb
	ld   a, b                                        ; $4b36: $78
	and  c                                           ; $4b37: $a1
	ld   [hl], l                                     ; $4b38: $75
	ld   h, a                                        ; $4b39: $67
	ld   a, e                                        ; $4b3a: $7b
	sbc  a                                           ; $4b3b: $9f
	dec  c                                           ; $4b3c: $0d
	nop                                              ; $4b3d: $00
	ld   a, [bc]                                     ; $4b3e: $0a
	inc  e                                           ; $4b3f: $1c
	ld   [bc], a                                     ; $4b40: $02
	ld   [bc], a                                     ; $4b41: $02
	ld   [bc], a                                     ; $4b42: $02
	dec  e                                           ; $4b43: $1d
	ld   b, b                                        ; $4b44: $40
	ld   [de], a                                     ; $4b45: $12
	inc  bc                                          ; $4b46: $03
	ld   [de], a                                     ; $4b47: $12
	ld   bc, $2903                                   ; $4b48: $01 $03 $29
	nop                                              ; $4b4b: $00
	ld   bc, $6177                                   ; $4b4c: $01 $77 $61
	and  b                                           ; $4b4f: $a0
	ld   [bc], a                                     ; $4b50: $02
	sub  l                                           ; $4b51: $95
	ld   [hl], h                                     ; $4b52: $74
	sub  a                                           ; $4b53: $97
	ld   [hl], c                                     ; $4b54: $71
	ld   h, l                                        ; $4b55: $65
	sub  c                                           ; $4b56: $91
	sbc  c                                           ; $4b57: $99
	ld   a, h                                        ; $4b58: $7c
	ld   a, [$ee0d]                                  ; $4b59: $fa $0d $ee
	ret  z                                           ; $4b5c: $c8

	and  h                                           ; $4b5d: $a4
	ld   a, c                                        ; $4b5e: $79
	inc  b                                           ; $4b5f: $04
	dec  b                                           ; $4b60: $05
	ld   h, l                                        ; $4b61: $65
	ld   [hl], h                                     ; $4b62: $74
	inc  bc                                          ; $4b63: $03
	add  e                                           ; $4b64: $83
	dec  b                                           ; $4b65: $05
	dec  c                                           ; $4b66: $0d
	ld   [hl], l                                     ; $4b67: $75
	ld   h, a                                        ; $4b68: $67
	sbc  l                                           ; $4b69: $9d
	sub  [hl]                                        ; $4b6a: $96
	sbc  a                                           ; $4b6b: $9f
	dec  c                                           ; $4b6c: $0d
	nop                                              ; $4b6d: $00
	ld   a, [bc]                                     ; $4b6e: $0a
	ld   bc, $668c                                   ; $4b6f: $01 $8c $66
	adc  a                                           ; $4b72: $8f
	ld   a, c                                        ; $4b73: $79
	ld   [bc], a                                     ; $4b74: $02
	sub  l                                           ; $4b75: $95
	ld   [bc], a                                     ; $4b76: $02
	sub  e                                           ; $4b77: $93
	sbc  b                                           ; $4b78: $98
	ld   h, l                                        ; $4b79: $65
	ld   a, b                                        ; $4b7a: $78
	ld   h, e                                        ; $4b7b: $63
	ld   d, d                                        ; $4b7c: $52
	ld   a, [$000d]                                  ; $4b7d: $fa $0d $00
	ld   a, [bc]                                     ; $4b80: $0a
	dec  c                                           ; $4b81: $0d
	nop                                              ; $4b82: $00
	nop                                              ; $4b83: $00
	rrca                                             ; $4b84: $0f
	nop                                              ; $4b85: $00
	ld   bc, $1e09                                   ; $4b86: $01 $09 $1e
	nop                                              ; $4b89: $00
	rrca                                             ; $4b8a: $0f
	nop                                              ; $4b8b: $00
	ld   bc, $ba01                                   ; $4b8c: $01 $01 $ba
	rst  ToBoot                                         ; $4b8f: $c7
	xor  [hl]                                        ; $4b90: $ae
	ld   a, b                                        ; $4b91: $78
	inc  b                                           ; $4b92: $04
	rlca                                             ; $4b93: $07
	inc  b                                           ; $4b94: $04
	sub  d                                           ; $4b95: $92
	ld   [hl], l                                     ; $4b96: $75
	ld   h, a                                        ; $4b97: $67
	ld   a, e                                        ; $4b98: $7b
	sbc  a                                           ; $4b99: $9f
	dec  c                                           ; $4b9a: $0d
	nop                                              ; $4b9b: $00
	ld   a, [bc]                                     ; $4b9c: $0a
	inc  e                                           ; $4b9d: $1c
	ld   [bc], a                                     ; $4b9e: $02
	nop                                              ; $4b9f: $00
	nop                                              ; $4ba0: $00
	ld   bc, $4904                                   ; $4ba1: $01 $04 $49
	and  b                                           ; $4ba4: $a0
	ld   [bc], a                                     ; $4ba5: $02
	and  l                                           ; $4ba6: $a5
	ld   h, e                                        ; $4ba7: $63
	sub  a                                           ; $4ba8: $97
	sbc  [hl]                                        ; $4ba9: $9e
	ld   d, b                                        ; $4baa: $50
	ld   l, l                                        ; $4bab: $6d
	sbc  b                                           ; $4bac: $98
	adc  h                                           ; $4bad: $8c
	ld   d, [hl]                                     ; $4bae: $56
	ld   a, h                                        ; $4baf: $7c
	dec  c                                           ; $4bb0: $0d
	ld   h, c                                        ; $4bb1: $61
	halt                                             ; $4bb2: $76
	and  b                                           ; $4bb3: $a0
	sbc  [hl]                                        ; $4bb4: $9e
	ld   e, b                                        ; $4bb5: $58
	ld   [hl], c                                     ; $4bb6: $71
	ld   h, l                                        ; $4bb7: $65
	sub  c                                           ; $4bb8: $91
	ld   [hl], c                                     ; $4bb9: $71
	ld   [hl], h                                     ; $4bba: $74
	ld   d, d                                        ; $4bbb: $52
	sbc  c                                           ; $4bbc: $99
	dec  c                                           ; $4bbd: $0d
	ld   a, h                                        ; $4bbe: $7c
	ld   e, c                                        ; $4bbf: $59
	ld   h, l                                        ; $4bc0: $65
	sub  a                                           ; $4bc1: $97
	ld   sp, hl                                      ; $4bc2: $f9
	dec  c                                           ; $4bc3: $0d
	nop                                              ; $4bc4: $00
	ld   a, [bc]                                     ; $4bc5: $0a
	inc  e                                           ; $4bc6: $1c
	ld   [bc], a                                     ; $4bc7: $02
	ld   bc, $1d01                                   ; $4bc8: $01 $01 $1d
	ld   b, b                                        ; $4bcb: $40
	ld   [de], a                                     ; $4bcc: $12
	inc  bc                                          ; $4bcd: $03
	ld   [de], a                                     ; $4bce: $12
	ld   bc, $2802                                   ; $4bcf: $01 $02 $28
	nop                                              ; $4bd2: $00
	ld   bc, $9075                                   ; $4bd3: $01 $75 $90
	sbc  [hl]                                        ; $4bd6: $9e
	halt                                             ; $4bd7: $76
	sbc  b                                           ; $4bd8: $98
	ld   d, b                                        ; $4bd9: $50
	ld   d, [hl]                                     ; $4bda: $56
	ld   l, b                                        ; $4bdb: $68
	dec  c                                           ; $4bdc: $0d
	ld   e, b                                        ; $4bdd: $58
	dec  b                                           ; $4bde: $05
	dec  c                                           ; $4bdf: $0d
	ld   a, l                                        ; $4be0: $7d
	ld   [bc], a                                     ; $4be1: $02
	sbc  l                                           ; $4be2: $9d
	ld   [hl], c                                     ; $4be3: $71
	ld   [hl], h                                     ; $4be4: $74
	ld   e, b                                        ; $4be5: $58
	ld   e, e                                        ; $4be6: $5b
	adc  h                                           ; $4be7: $8c
	ld   h, a                                        ; $4be8: $67
	sbc  l                                           ; $4be9: $9d
	sbc  a                                           ; $4bea: $9f
	dec  c                                           ; $4beb: $0d
	ld   [hl], l                                     ; $4bec: $75
	ld   a, l                                        ; $4bed: $7d
	sbc  [hl]                                        ; $4bee: $9e
	inc  bc                                          ; $4bef: $03
	add  e                                           ; $4bf0: $83
	dec  b                                           ; $4bf1: $05
	dec  c                                           ; $4bf2: $0d
	rst  $38                                         ; $4bf3: $ff
	rst  $38                                         ; $4bf4: $ff
	dec  c                                           ; $4bf5: $0d
	nop                                              ; $4bf6: $00
	ld   a, [bc]                                     ; $4bf7: $0a
	dec  c                                           ; $4bf8: $0d
	nop                                              ; $4bf9: $00
	nop                                              ; $4bfa: $00
	rrca                                             ; $4bfb: $0f
	nop                                              ; $4bfc: $00
	ld   bc, $1e09                                   ; $4bfd: $01 $09 $1e
	nop                                              ; $4c00: $00
	inc  e                                           ; $4c01: $1c
	ld   [bc], a                                     ; $4c02: $02
	nop                                              ; $4c03: $00
	nop                                              ; $4c04: $00
	ld   bc, $7165                                   ; $4c05: $01 $65 $71
	ld   e, c                                        ; $4c08: $59
	sbc  b                                           ; $4c09: $98
	halt                                             ; $4c0a: $76
	ld   [bc], a                                     ; $4c0b: $02
	sub  l                                           ; $4c0c: $95
	ld   [bc], a                                     ; $4c0d: $02
	sub  e                                           ; $4c0e: $93
	ld   [hl], c                                     ; $4c0f: $71
	ld   [hl], h                                     ; $4c10: $74
	dec  c                                           ; $4c11: $0d
	ld   e, l                                        ; $4c12: $5d
	ld   l, [hl]                                     ; $4c13: $6e
	ld   h, e                                        ; $4c14: $63
	ld   d, d                                        ; $4c15: $52
	ld   a, e                                        ; $4c16: $7b
	sbc  a                                           ; $4c17: $9f
	dec  c                                           ; $4c18: $0d
	nop                                              ; $4c19: $00
	ld   a, [bc]                                     ; $4c1a: $0a
	dec  c                                           ; $4c1b: $0d
	nop                                              ; $4c1c: $00
	nop                                              ; $4c1d: $00
	rrca                                             ; $4c1e: $0f
	nop                                              ; $4c1f: $00
	ld   bc, $1e09                                   ; $4c20: $01 $09 $1e
	nop                                              ; $4c23: $00
	nop                                              ; $4c24: $00
	inc  e                                           ; $4c25: $1c
	ld   bc, $0000                                   ; $4c26: $01 $00 $00
	ld   [bc], a                                     ; $4c29: $02
	ld   bc, $9e50                                   ; $4c2a: $01 $50 $9e
	ld   [$6300], sp                                 ; $4c2d: $08 $00 $63
	and  c                                           ; $4c30: $a1
	sbc  a                                           ; $4c31: $9f
	dec  c                                           ; $4c32: $0d
	ld   [bc], a                                     ; $4c33: $02
	sub  l                                           ; $4c34: $95
	ld   [bc], a                                     ; $4c35: $02
	sub  e                                           ; $4c36: $93
	sbc  b                                           ; $4c37: $98
	sbc  [hl]                                        ; $4c38: $9e
	ld   h, d                                        ; $4c39: $62
	ld   e, l                                        ; $4c3a: $5d
	sbc  e                                           ; $4c3b: $9b
	ld   d, h                                        ; $4c3c: $54
	ld   h, e                                        ; $4c3d: $63
	adc  h                                           ; $4c3e: $8c
	ld   [hl], l                                     ; $4c3f: $75
	ld   h, a                                        ; $4c40: $67
	sbc  a                                           ; $4c41: $9f
	dec  c                                           ; $4c42: $0d
	nop                                              ; $4c43: $00
	ld   a, [bc]                                     ; $4c44: $0a
	rrca                                             ; $4c45: $0f
	nop                                              ; $4c46: $00
	ld   bc, $0101                                   ; $4c47: $01 $01 $01
	inc  bc                                          ; $4c4a: $03
	ld   h, e                                        ; $4c4b: $63
	ld   e, l                                        ; $4c4c: $5d
	sub  a                                           ; $4c4d: $97
	ld   h, e                                        ; $4c4e: $63
	and  c                                           ; $4c4f: $a1
	ld   l, [hl]                                     ; $4c50: $6e
	rst  $38                                         ; $4c51: $ff
	rst  $38                                         ; $4c52: $ff
	ld   bc, $0d04                                   ; $4c53: $01 $04 $0d
	nop                                              ; $4c56: $00
	ld   a, [bc]                                     ; $4c57: $0a
	add  hl, de                                      ; $4c58: $19
	dec  b                                           ; $4c59: $05
	inc  bc                                          ; $4c5a: $03
	inc  b                                           ; $4c5b: $04
	ld   l, d                                        ; $4c5c: $6a
	and  b                                           ; $4c5d: $a0
	ld   [bc], a                                     ; $4c5e: $02
	sub  l                                           ; $4c5f: $95
	sbc  c                                           ; $4c60: $99
	nop                                              ; $4c61: $00
	nop                                              ; $4c62: $00
	ld   [bc], a                                     ; $4c63: $02
	ld   h, [hl]                                     ; $4c64: $66
	ld   [bc], a                                     ; $4c65: $02
	xor  h                                           ; $4c66: $ac
	and  b                                           ; $4c67: $a0
	ld   [bc], a                                     ; $4c68: $02
	sub  l                                           ; $4c69: $95
	sbc  c                                           ; $4c6a: $99
	nop                                              ; $4c6b: $00
	ld   bc, $ddec                                   ; $4c6c: $01 $ec $dd
	push af                                          ; $4c6f: $f5
	and  b                                           ; $4c70: $a0
	ld   [bc], a                                     ; $4c71: $02
	sub  l                                           ; $4c72: $95
	sbc  c                                           ; $4c73: $99
	nop                                              ; $4c74: $00
	ld   [bc], a                                     ; $4c75: $02
	rlca                                             ; $4c76: $07
	ld   l, a                                        ; $4c77: $6f
	nop                                              ; $4c78: $00
	ld   [bc], a                                     ; $4c79: $02
	inc  bc                                          ; $4c7a: $03
	ld   bc, $2000                                   ; $4c7b: $01 $00 $20
	nop                                              ; $4c7e: $00
	rlca                                             ; $4c7f: $07
	ret  z                                           ; $4c80: $c8

	nop                                              ; $4c81: $00
	ld   [bc], a                                     ; $4c82: $02
	inc  bc                                          ; $4c83: $03
	ld   bc, $2001                                   ; $4c84: $01 $01 $20
	nop                                              ; $4c87: $00
	rlca                                             ; $4c88: $07
	inc  [hl]                                        ; $4c89: $34
	ld   bc, $0302                                   ; $4c8a: $01 $02 $03
	ld   bc, $2002                                   ; $4c8d: $01 $02 $20
	nop                                              ; $4c90: $00
	ld   b, $7f                                      ; $4c91: $06 $7f
	ld   bc, $000f                                   ; $4c93: $01 $0f $00
	ld   bc, $5b01                                   ; $4c96: $01 $01 $5b
	sbc  d                                           ; $4c99: $9a
	ld   d, d                                        ; $4c9a: $52
	ld   a, b                                        ; $4c9b: $78
	inc  b                                           ; $4c9c: $04
	ld   l, d                                        ; $4c9d: $6a
	ld   [hl], l                                     ; $4c9e: $75
	ld   h, a                                        ; $4c9f: $67
	ld   a, e                                        ; $4ca0: $7b
	rst  $38                                         ; $4ca1: $ff
	rst  $38                                         ; $4ca2: $ff
	dec  c                                           ; $4ca3: $0d
	nop                                              ; $4ca4: $00
	ld   a, [bc]                                     ; $4ca5: $0a
	inc  e                                           ; $4ca6: $1c
	ld   bc, $0505                                   ; $4ca7: $01 $05 $05
	dec  e                                           ; $4caa: $1d
	ld   b, b                                        ; $4cab: $40
	ld   de, $1103                                   ; $4cac: $11 $03 $11
	ld   bc, $2802                                   ; $4caf: $01 $02 $28
	nop                                              ; $4cb2: $00
	ld   bc, $9e6b                                   ; $4cb3: $01 $6b $9e
	ld   l, e                                        ; $4cb6: $6b
	ld   d, h                                        ; $4cb7: $54
	ld   [hl], l                                     ; $4cb8: $75
	ld   h, a                                        ; $4cb9: $67
	ld   e, c                                        ; $4cba: $59
	rst  $38                                         ; $4cbb: $ff
	rst  $38                                         ; $4cbc: $ff
	dec  c                                           ; $4cbd: $0d
	sub  d                                           ; $4cbe: $92
	ld   l, [hl]                                     ; $4cbf: $6e
	rst  $38                                         ; $4cc0: $ff
	rst  $38                                         ; $4cc1: $ff
	rst  ToBoot                                         ; $4cc2: $c7
	xor  $6f                                         ; $4cc3: $ee $6f
	sub  c                                           ; $4cc5: $91
	ld   d, d                                        ; $4cc6: $52
	adc  h                                           ; $4cc7: $8c
	ld   h, a                                        ; $4cc8: $67
	sub  [hl]                                        ; $4cc9: $96
	sbc  a                                           ; $4cca: $9f
	dec  c                                           ; $4ccb: $0d
	nop                                              ; $4ccc: $00
	ld   a, [bc]                                     ; $4ccd: $0a
	ld   bc, $9e67                                   ; $4cce: $01 $67 $9e
	ld   h, a                                        ; $4cd1: $67
	adc  l                                           ; $4cd2: $8d
	adc  h                                           ; $4cd3: $8c
	ld   l, c                                        ; $4cd4: $69
	and  c                                           ; $4cd5: $a1
	rst  $38                                         ; $4cd6: $ff
	rst  $38                                         ; $4cd7: $ff
	dec  c                                           ; $4cd8: $0d
	inc  bc                                          ; $4cd9: $03
	add  e                                           ; $4cda: $83
	dec  b                                           ; $4cdb: $05
	dec  c                                           ; $4cdc: $0d
	ld   h, l                                        ; $4cdd: $65
	adc  h                                           ; $4cde: $8c
	ld   h, a                                        ; $4cdf: $67
	sbc  a                                           ; $4ce0: $9f
	dec  c                                           ; $4ce1: $0d
	nop                                              ; $4ce2: $00
	ld   a, [bc]                                     ; $4ce3: $0a
	dec  c                                           ; $4ce4: $0d
	nop                                              ; $4ce5: $00
	nop                                              ; $4ce6: $00
	rrca                                             ; $4ce7: $0f
	nop                                              ; $4ce8: $00
	ld   bc, $1e09                                   ; $4ce9: $01 $09 $1e
	nop                                              ; $4cec: $00
	rrca                                             ; $4ced: $0f
	nop                                              ; $4cee: $00
	ld   bc, $6301                                   ; $4cef: $01 $01 $63
	ld   e, l                                        ; $4cf2: $5d
	sub  a                                           ; $4cf3: $97
	ld   h, e                                        ; $4cf4: $63
	and  c                                           ; $4cf5: $a1
	ld   [hl], h                                     ; $4cf6: $74
	rst  $38                                         ; $4cf7: $ff
	rst  $38                                         ; $4cf8: $ff
	dec  c                                           ; $4cf9: $0d
	ld   [bc], a                                     ; $4cfa: $02
	ld   b, $02                                      ; $4cfb: $06 $02
	bit  6, [hl]                                     ; $4cfd: $cb $76
	or   c                                           ; $4cff: $b1
	db   $eb                                         ; $4d00: $eb
	rst  JumpTable                                         ; $4d01: $df
	ei                                               ; $4d02: $fb
	ld   a, b                                        ; $4d03: $78
	and  c                                           ; $4d04: $a1
	ld   [hl], l                                     ; $4d05: $75
	ld   h, a                                        ; $4d06: $67
	ld   a, e                                        ; $4d07: $7b
	sbc  a                                           ; $4d08: $9f
	dec  c                                           ; $4d09: $0d
	nop                                              ; $4d0a: $00
	ld   a, [bc]                                     ; $4d0b: $0a
	inc  e                                           ; $4d0c: $1c
	ld   bc, $0303                                   ; $4d0d: $01 $03 $03
	dec  e                                           ; $4d10: $1d
	ld   b, b                                        ; $4d11: $40
	ld   de, $1103                                   ; $4d12: $11 $03 $11
	ld   bc, $2903                                   ; $4d15: $01 $03 $29
	nop                                              ; $4d18: $00
	ld   bc, $9e92                                   ; $4d19: $01 $92 $9e
	sub  d                                           ; $4d1c: $92
	ld   l, [hl]                                     ; $4d1d: $6e
	rst  $38                                         ; $4d1e: $ff
	rst  $38                                         ; $4d1f: $ff
	dec  c                                           ; $4d20: $0d
	ld   [hl], a                                     ; $4d21: $77
	ld   h, c                                        ; $4d22: $61
	ld   [bc], a                                     ; $4d23: $02
	sub  l                                           ; $4d24: $95
	ld   [hl], h                                     ; $4d25: $74
	sbc  c                                           ; $4d26: $99
	and  c                                           ; $4d27: $a1
	ld   [hl], l                                     ; $4d28: $75
	ld   h, a                                        ; $4d29: $67
	ld   e, c                                        ; $4d2a: $59
	ld   a, [$000d]                                  ; $4d2b: $fa $0d $00
	ld   a, [bc]                                     ; $4d2e: $0a
	inc  e                                           ; $4d2f: $1c
	ld   bc, $0202                                   ; $4d30: $01 $02 $02
	ld   bc, $668c                                   ; $4d33: $01 $8c $66
	adc  a                                           ; $4d36: $8f
	ld   a, c                                        ; $4d37: $79
	ld   [bc], a                                     ; $4d38: $02
	sub  l                                           ; $4d39: $95
	ld   [bc], a                                     ; $4d3a: $02
	sub  e                                           ; $4d3b: $93
	sbc  b                                           ; $4d3c: $98
	ld   h, l                                        ; $4d3d: $65
	ld   [hl], h                                     ; $4d3e: $74
	ld   [bc], a                                     ; $4d3f: $02
	inc  [hl]                                        ; $4d40: $34
	ld   h, e                                        ; $4d41: $63
	ld   d, d                                        ; $4d42: $52
	ld   a, [$030d]                                  ; $4d43: $fa $0d $03
	add  e                                           ; $4d46: $83
	dec  b                                           ; $4d47: $05
	dec  c                                           ; $4d48: $0d
	ld   h, l                                        ; $4d49: $65
	adc  h                                           ; $4d4a: $8c
	ld   h, a                                        ; $4d4b: $67
	ld   a, [$000d]                                  ; $4d4c: $fa $0d $00
	ld   a, [bc]                                     ; $4d4f: $0a
	dec  c                                           ; $4d50: $0d
	nop                                              ; $4d51: $00
	nop                                              ; $4d52: $00
	rrca                                             ; $4d53: $0f
	nop                                              ; $4d54: $00
	ld   bc, $1e09                                   ; $4d55: $01 $09 $1e
	nop                                              ; $4d58: $00
	rrca                                             ; $4d59: $0f
	nop                                              ; $4d5a: $00
	ld   bc, $0201                                   ; $4d5b: $01 $01 $02
	adc  e                                           ; $4d5e: $8b
	ld   [bc], a                                     ; $4d5f: $02
	dec  hl                                          ; $4d60: $2b
	ld   d, d                                        ; $4d61: $52
	db   $ec                                         ; $4d62: $ec
	db   $dd                                         ; $4d63: $dd
	push af                                          ; $4d64: $f5
	ld   [hl], l                                     ; $4d65: $75
	ld   h, a                                        ; $4d66: $67
	ld   a, e                                        ; $4d67: $7b
	sbc  a                                           ; $4d68: $9f
	dec  c                                           ; $4d69: $0d
	nop                                              ; $4d6a: $00
	ld   a, [bc]                                     ; $4d6b: $0a
	inc  e                                           ; $4d6c: $1c
	ld   bc, $0101                                   ; $4d6d: $01 $01 $01
	dec  e                                           ; $4d70: $1d
	ld   b, b                                        ; $4d71: $40
	ld   de, $1103                                   ; $4d72: $11 $03 $11
	ld   bc, $2801                                   ; $4d75: $01 $01 $28
	nop                                              ; $4d78: $00
	ld   bc, $9e50                                   ; $4d79: $01 $50 $9e
	ld   h, c                                        ; $4d7c: $61
	sbc  d                                           ; $4d7d: $9a
	ld   [hl], l                                     ; $4d7e: $75
	ld   h, a                                        ; $4d7f: $67
	ld   e, c                                        ; $4d80: $59
	ld   sp, hl                                      ; $4d81: $f9
	dec  c                                           ; $4d82: $0d
	ld   d, b                                        ; $4d83: $50
	sbc  b                                           ; $4d84: $98
	ld   e, d                                        ; $4d85: $5a
	halt                                             ; $4d86: $76
	ld   d, h                                        ; $4d87: $54
	ld   h, d                                        ; $4d88: $62
	ld   h, h                                        ; $4d89: $64
	ld   d, d                                        ; $4d8a: $52
	adc  h                                           ; $4d8b: $8c
	ld   h, a                                        ; $4d8c: $67
	sbc  a                                           ; $4d8d: $9f
	dec  c                                           ; $4d8e: $0d
	inc  bc                                          ; $4d8f: $03
	sub  h                                           ; $4d90: $94
	inc  b                                           ; $4d91: $04
	sbc  [hl]                                        ; $4d92: $9e
	ld   [hl], l                                     ; $4d93: $75
	sub  b                                           ; $4d94: $90
	ld   [bc], a                                     ; $4d95: $02
	and  c                                           ; $4d96: $a1
	ld   a, c                                        ; $4d97: $79
	inc  b                                           ; $4d98: $04
	ld   b, l                                        ; $4d99: $45
	ld   [hl], c                                     ; $4d9a: $71
	ld   [hl], h                                     ; $4d9b: $74
	sbc  c                                           ; $4d9c: $99
	and  c                                           ; $4d9d: $a1
	ld   [hl], l                                     ; $4d9e: $75
	ld   h, a                                        ; $4d9f: $67
	sbc  a                                           ; $4da0: $9f
	dec  c                                           ; $4da1: $0d
	nop                                              ; $4da2: $00
	ld   a, [bc]                                     ; $4da3: $0a
	inc  e                                           ; $4da4: $1c
	ld   bc, $0000                                   ; $4da5: $01 $00 $00
	ld   bc, $9502                                   ; $4da8: $01 $02 $95
	ld   [bc], a                                     ; $4dab: $02
	sub  e                                           ; $4dac: $93
	sbc  b                                           ; $4dad: $98
	ld   e, d                                        ; $4dae: $5a
	and  c                                           ; $4daf: $a1
	ld   a, [hl]                                     ; $4db0: $7e
	ld   [hl], c                                     ; $4db1: $71
	ld   [hl], h                                     ; $4db2: $74
	ld   [bc], a                                     ; $4db3: $02
	inc  [hl]                                        ; $4db4: $34
	ld   h, e                                        ; $4db5: $63
	ld   d, d                                        ; $4db6: $52
	ld   a, e                                        ; $4db7: $7b
	sbc  a                                           ; $4db8: $9f
	dec  c                                           ; $4db9: $0d
	ld   h, [hl]                                     ; $4dba: $66
	sub  c                                           ; $4dbb: $91
	sbc  [hl]                                        ; $4dbc: $9e
	inc  bc                                          ; $4dbd: $03
	add  e                                           ; $4dbe: $83
	dec  b                                           ; $4dbf: $05
	dec  c                                           ; $4dc0: $0d
	ld   h, l                                        ; $4dc1: $65
	adc  h                                           ; $4dc2: $8c
	ld   h, a                                        ; $4dc3: $67
	sbc  a                                           ; $4dc4: $9f
	dec  c                                           ; $4dc5: $0d
	nop                                              ; $4dc6: $00
	ld   a, [bc]                                     ; $4dc7: $0a
	dec  c                                           ; $4dc8: $0d
	nop                                              ; $4dc9: $00
	nop                                              ; $4dca: $00
	rrca                                             ; $4dcb: $0f
	nop                                              ; $4dcc: $00
	ld   bc, $1e09                                   ; $4dcd: $01 $09 $1e
	nop                                              ; $4dd0: $00
	nop                                              ; $4dd1: $00
	ld   d, $12                                      ; $4dd2: $16 $12
	rrca                                             ; $4dd4: $0f
	nop                                              ; $4dd5: $00
	ld   bc, $0102                                   ; $4dd6: $01 $02 $01
	ld   d, b                                        ; $4dd9: $50
	sbc  [hl]                                        ; $4dda: $9e
	xor  h                                           ; $4ddb: $ac
	push af                                          ; $4ddc: $f5
	bit  4, e                                        ; $4ddd: $cb $63
	and  c                                           ; $4ddf: $a1
	sbc  a                                           ; $4de0: $9f
	dec  c                                           ; $4de1: $0d
	ld   [bc], a                                     ; $4de2: $02
	and  l                                           ; $4de3: $a5
	sbc  [hl]                                        ; $4de4: $9e
	ld   e, b                                        ; $4de5: $58
	inc  bc                                          ; $4de6: $03
	ld   l, d                                        ; $4de7: $6a
	ld   [bc], a                                     ; $4de8: $02
	jp   Jump_04a_6775                               ; $4de9: $c3 $75 $67


	ld   e, c                                        ; $4dec: $59
	ld   sp, hl                                      ; $4ded: $f9
	dec  c                                           ; $4dee: $0d
	nop                                              ; $4def: $00
	ld   a, [bc]                                     ; $4df0: $0a
	inc  c                                           ; $4df1: $0c
	ld   [bc], a                                     ; $4df2: $02
	ld   c, $28                                      ; $4df3: $0e $28
	inc  e                                           ; $4df5: $1c
	ld   b, $01                                      ; $4df6: $06 $01
	ld   bc, $9601                                   ; $4df8: $01 $01 $96
	ld   e, b                                        ; $4dfb: $58
	sbc  [hl]                                        ; $4dfc: $9e
	ld   [$9f00], sp                                 ; $4dfd: $08 $00 $9f
	dec  c                                           ; $4e00: $0d
	nop                                              ; $4e01: $00
	ld   a, [bc]                                     ; $4e02: $0a
	ld   bc, $546b                                   ; $4e03: $01 $6b $54
	ld   l, [hl]                                     ; $4e06: $6e
	ld   l, d                                        ; $4e07: $6a
	sbc  a                                           ; $4e08: $9f
	dec  c                                           ; $4e09: $0d
	db   $e4                                         ; $4e0a: $e4
	or   c                                           ; $4e0b: $b1
	db   $e4                                         ; $4e0c: $e4
	or   c                                           ; $4e0d: $b1
	db   $e4                                         ; $4e0e: $e4
	or   c                                           ; $4e0f: $b1
	rst  $38                                         ; $4e10: $ff
	rst  $38                                         ; $4e11: $ff
	ld   d, h                                        ; $4e12: $54
	adc  h                                           ; $4e13: $8c
	ld   d, d                                        ; $4e14: $52
	ld   a, [$000d]                                  ; $4e15: $fa $0d $00
	ld   a, [bc]                                     ; $4e18: $0a
	add  hl, de                                      ; $4e19: $19
	dec  b                                           ; $4e1a: $05
	inc  bc                                          ; $4e1b: $03
	inc  bc                                          ; $4e1c: $03
	ld   l, d                                        ; $4e1d: $6a
	add  a                                           ; $4e1e: $87
	ld   [hl], c                                     ; $4e1f: $71
	add  l                                           ; $4e20: $85
	sbc  b                                           ; $4e21: $98
	and  b                                           ; $4e22: $a0
	adc  c                                           ; $4e23: $89
	adc  a                                           ; $4e24: $8f
	sbc  c                                           ; $4e25: $99
	nop                                              ; $4e26: $00
	nop                                              ; $4e27: $00
	inc  b                                           ; $4e28: $04
	dec  c                                           ; $4e29: $0d
	ld   [bc], a                                     ; $4e2a: $02
	ld   [hl], l                                     ; $4e2b: $75
	and  b                                           ; $4e2c: $a0
	adc  c                                           ; $4e2d: $89
	adc  a                                           ; $4e2e: $8f
	sbc  c                                           ; $4e2f: $99
	nop                                              ; $4e30: $00
	ld   bc, $7202                                   ; $4e31: $01 $02 $72
	and  b                                           ; $4e34: $a0
	adc  c                                           ; $4e35: $89
	adc  a                                           ; $4e36: $8f
	sbc  c                                           ; $4e37: $99
	nop                                              ; $4e38: $00
	ld   [bc], a                                     ; $4e39: $02
	rlca                                             ; $4e3a: $07
	sbc  h                                           ; $4e3b: $9c
	nop                                              ; $4e3c: $00
	ld   [bc], a                                     ; $4e3d: $02
	inc  bc                                          ; $4e3e: $03
	ld   bc, $2000                                   ; $4e3f: $01 $00 $20
	nop                                              ; $4e42: $00
	rlca                                             ; $4e43: $07
	jr   jr_04a_4e47                                 ; $4e44: $18 $01

	ld   [bc], a                                     ; $4e46: $02

jr_04a_4e47:
	inc  bc                                          ; $4e47: $03
	ld   bc, $2001                                   ; $4e48: $01 $01 $20
	nop                                              ; $4e4b: $00
	rlca                                             ; $4e4c: $07
	sub  h                                           ; $4e4d: $94
	ld   bc, $0302                                   ; $4e4e: $01 $02 $03
	ld   bc, $2002                                   ; $4e51: $01 $02 $20
	nop                                              ; $4e54: $00
	ld   b, $86                                      ; $4e55: $06 $86
	nop                                              ; $4e57: $00
	inc  e                                           ; $4e58: $1c
	ld   b, $00                                      ; $4e59: $06 $00
	nop                                              ; $4e5b: $00
	ld   bc, $9e8c                                   ; $4e5c: $01 $8c $9e
	ld   [bc], a                                     ; $4e5f: $02
	sub  l                                           ; $4e60: $95
	ld   [bc], a                                     ; $4e61: $02
	sub  e                                           ; $4e62: $93
	sbc  b                                           ; $4e63: $98
	xor  l                                           ; $4e64: $ad
	push af                                          ; $4e65: $f5
	pop  de                                          ; $4e66: $d1
	xor  $96                                         ; $4e67: $ee $96
	sbc  a                                           ; $4e69: $9f
	dec  c                                           ; $4e6a: $0d
	nop                                              ; $4e6b: $00
	ld   a, [bc]                                     ; $4e6c: $0a
	nop                                              ; $4e6d: $00
	rrca                                             ; $4e6e: $0f
	nop                                              ; $4e6f: $00
	ld   bc, $5201                                   ; $4e70: $01 $01 $52
	sub  d                                           ; $4e73: $92
	ld   c, a                                        ; $4e74: $4f
	rst  $38                                         ; $4e75: $ff
	rst  $38                                         ; $4e76: $ff
	dec  c                                           ; $4e77: $0d
	adc  l                                           ; $4e78: $8d
	ld   h, d                                        ; $4e79: $62
	halt                                             ; $4e7a: $76
	ld   a, b                                        ; $4e7b: $78
	inc  bc                                          ; $4e7c: $03
	ld   l, d                                        ; $4e7d: $6a
	add  a                                           ; $4e7e: $87
	ld   [hl], c                                     ; $4e7f: $71
	add  l                                           ; $4e80: $85
	sbc  b                                           ; $4e81: $98
	ld   [hl], l                                     ; $4e82: $75
	ld   h, a                                        ; $4e83: $67
	ld   a, e                                        ; $4e84: $7b
	sbc  a                                           ; $4e85: $9f
	dec  c                                           ; $4e86: $0d
	nop                                              ; $4e87: $00
	ld   a, [bc]                                     ; $4e88: $0a
	inc  e                                           ; $4e89: $1c
	ld   b, $01                                      ; $4e8a: $06 $01
	ld   bc, $401d                                   ; $4e8c: $01 $1d $40
	ld   d, $03                                      ; $4e8f: $16 $03
	ld   d, $01                                      ; $4e91: $16 $01
	ld   [bc], a                                     ; $4e93: $02
	jr   z, jr_04a_4e96                              ; $4e94: $28 $00

jr_04a_4e96:
	ld   bc, $546b                                   ; $4e96: $01 $6b $54
	ld   e, c                                        ; $4e99: $59
	ld   sp, hl                                      ; $4e9a: $f9
	dec  c                                           ; $4e9b: $0d
	db   $e3                                         ; $4e9c: $e3
	cp   b                                           ; $4e9d: $b8
	ld   a, l                                        ; $4e9e: $7d
	inc  bc                                          ; $4e9f: $03
	ld   d, d                                        ; $4ea0: $52
	ld   [bc], a                                     ; $4ea1: $02
	or   a                                           ; $4ea2: $b7
	ld   a, h                                        ; $4ea3: $7c
	dec  b                                           ; $4ea4: $05
	xor  c                                           ; $4ea5: $a9
	inc  b                                           ; $4ea6: $04
	adc  a                                           ; $4ea7: $8f
	ld   l, [hl]                                     ; $4ea8: $6e
	ld   e, c                                        ; $4ea9: $59
	sub  a                                           ; $4eaa: $97
	ld   a, b                                        ; $4eab: $78
	sbc  a                                           ; $4eac: $9f
	dec  c                                           ; $4ead: $0d
	ld   e, b                                        ; $4eae: $58
	inc  bc                                          ; $4eaf: $03
	ld   c, a                                        ; $4eb0: $4f
	sub  b                                           ; $4eb1: $90
	ld   l, a                                        ; $4eb2: $6f
	sub  c                                           ; $4eb3: $91
	and  c                                           ; $4eb4: $a1
	halt                                             ; $4eb5: $76
	inc  bc                                          ; $4eb6: $03
	ld   l, d                                        ; $4eb7: $6a
	ld   d, [hl]                                     ; $4eb8: $56
	sub  [hl]                                        ; $4eb9: $96
	sbc  a                                           ; $4eba: $9f
	dec  c                                           ; $4ebb: $0d
	nop                                              ; $4ebc: $00
	ld   a, [bc]                                     ; $4ebd: $0a
	ld   bc, $5d96                                   ; $4ebe: $01 $96 $5d
	inc  bc                                          ; $4ec1: $03
	ld   l, d                                        ; $4ec2: $6a
	ld   [hl], c                                     ; $4ec3: $71
	ld   [hl], h                                     ; $4ec4: $74
	sbc  [hl]                                        ; $4ec5: $9e
	sub  [hl]                                        ; $4ec6: $96
	ld   e, l                                        ; $4ec7: $5d
	inc  b                                           ; $4ec8: $04
	ld   b, d                                        ; $4ec9: $42
	sbc  c                                           ; $4eca: $99
	sbc  a                                           ; $4ecb: $9f
	dec  c                                           ; $4ecc: $0d
	ld   l, e                                        ; $4ecd: $6b
	sbc  d                                           ; $4ece: $9a
	ld   e, d                                        ; $4ecf: $5a
	ld   e, a                                        ; $4ed0: $5f
	and  c                                           ; $4ed1: $a1
	ld   h, c                                        ; $4ed2: $61
	ld   d, h                                        ; $4ed3: $54
	ld   a, h                                        ; $4ed4: $7c
	db   $d3                                         ; $4ed5: $d3
	or   d                                           ; $4ed6: $b2
	push bc                                          ; $4ed7: $c5
	ld   l, [hl]                                     ; $4ed8: $6e
	sbc  a                                           ; $4ed9: $9f
	dec  c                                           ; $4eda: $0d
	inc  b                                           ; $4edb: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4edc: $cf
	inc  b                                           ; $4edd: $04
	xor  d                                           ; $4ede: $aa
	sub  b                                           ; $4edf: $90
	xor  l                                           ; $4ee0: $ad
	push af                                          ; $4ee1: $f5
	pop  de                                          ; $4ee2: $d1
	xor  $96                                         ; $4ee3: $ee $96
	sbc  a                                           ; $4ee5: $9f
	dec  c                                           ; $4ee6: $0d
	nop                                              ; $4ee7: $00
	ld   a, [bc]                                     ; $4ee8: $0a
	nop                                              ; $4ee9: $00
	rrca                                             ; $4eea: $0f
	nop                                              ; $4eeb: $00
	ld   bc, $6d01                                   ; $4eec: $01 $01 $6d
	ld   e, l                                        ; $4eef: $5d
	ld   h, e                                        ; $4ef0: $63
	and  c                                           ; $4ef1: $a1
	inc  bc                                          ; $4ef2: $03
	ld   l, d                                        ; $4ef3: $6a
	add  a                                           ; $4ef4: $87
	sbc  c                                           ; $4ef5: $99
	ld   h, c                                        ; $4ef6: $61
	halt                                             ; $4ef7: $76
	ld   e, d                                        ; $4ef8: $5a
	dec  c                                           ; $4ef9: $0d
	ld   l, e                                        ; $4efa: $6b
	ld   a, h                                        ; $4efb: $7c
	sbc  b                                           ; $4efc: $98
	ld   [hl], c                                     ; $4efd: $71
	ld   a, a                                        ; $4efe: $7f
	ld   a, b                                        ; $4eff: $78
	inc  b                                           ; $4f00: $04
	dec  c                                           ; $4f01: $0d
	and  b                                           ; $4f02: $a0
	dec  c                                           ; $4f03: $0d
	ld   [hl], d                                     ; $4f04: $72
	ld   e, l                                        ; $4f05: $5d
	sbc  c                                           ; $4f06: $99
	add  b                                           ; $4f07: $80
	adc  l                                           ; $4f08: $8d
	ld   [hl], d                                     ; $4f09: $72
	ld   a, b                                        ; $4f0a: $78
	and  c                                           ; $4f0b: $a1
	ld   [hl], l                                     ; $4f0c: $75
	ld   h, a                                        ; $4f0d: $67
	ld   a, e                                        ; $4f0e: $7b
	sbc  a                                           ; $4f0f: $9f
	dec  c                                           ; $4f10: $0d
	nop                                              ; $4f11: $00
	ld   a, [bc]                                     ; $4f12: $0a
	inc  e                                           ; $4f13: $1c
	ld   b, $07                                      ; $4f14: $06 $07
	rlca                                             ; $4f16: $07
	dec  e                                           ; $4f17: $1d
	ld   b, b                                        ; $4f18: $40
	ld   d, $03                                      ; $4f19: $16 $03
	ld   d, $01                                      ; $4f1b: $16 $01
	ld   [bc], a                                     ; $4f1d: $02
	jr   z, jr_04a_4f20                              ; $4f1e: $28 $00

jr_04a_4f20:
	ld   bc, $9e8c                                   ; $4f20: $01 $8c $9e
	ld   l, e                                        ; $4f23: $6b
	and  c                                           ; $4f24: $a1
	ld   a, b                                        ; $4f25: $78
	halt                                             ; $4f26: $76
	ld   h, c                                        ; $4f27: $61
	ld   e, c                                        ; $4f28: $59
	ld   a, b                                        ; $4f29: $78
	sbc  a                                           ; $4f2a: $9f
	dec  c                                           ; $4f2b: $0d
	ld   e, b                                        ; $4f2c: $58
	inc  bc                                          ; $4f2d: $03
	ld   c, a                                        ; $4f2e: $4f
	sub  b                                           ; $4f2f: $90
	sbc  [hl]                                        ; $4f30: $9e
	ld   [bc], a                                     ; $4f31: $02
	sub  l                                           ; $4f32: $95
	inc  bc                                          ; $4f33: $03
	and  h                                           ; $4f34: $a4
	ld   d, [hl]                                     ; $4f35: $56
	sub  [hl]                                        ; $4f36: $96
	sbc  a                                           ; $4f37: $9f
	dec  c                                           ; $4f38: $0d
	nop                                              ; $4f39: $00
	ld   a, [bc]                                     ; $4f3a: $0a
	ld   bc, $9075                                   ; $4f3b: $01 $75 $90
	sbc  [hl]                                        ; $4f3e: $9e
	inc  bc                                          ; $4f3f: $03
	ld   l, d                                        ; $4f40: $6a
	ld   d, h                                        ; $4f41: $54
	ld   l, [hl]                                     ; $4f42: $6e
	ld   e, a                                        ; $4f43: $5f
	ld   h, [hl]                                     ; $4f44: $66
	sub  c                                           ; $4f45: $91
	ld   a, b                                        ; $4f46: $78
	ld   d, d                                        ; $4f47: $52
	ld   l, d                                        ; $4f48: $6a
	sbc  a                                           ; $4f49: $9f
	dec  c                                           ; $4f4a: $0d
	ld   l, a                                        ; $4f4b: $6f
	sub  c                                           ; $4f4c: $91
	and  c                                           ; $4f4d: $a1
	halt                                             ; $4f4e: $76
	inc  b                                           ; $4f4f: $04
	dec  c                                           ; $4f50: $0d
	and  b                                           ; $4f51: $a0
	inc  b                                           ; $4f52: $04
	dec  de                                          ; $4f53: $1b
	ld   e, c                                        ; $4f54: $59
	ld   h, a                                        ; $4f55: $67
	ld   a, h                                        ; $4f56: $7c
	sub  b                                           ; $4f57: $90
	dec  c                                           ; $4f58: $0d
	inc  b                                           ; $4f59: $04
	ld   c, $03                                      ; $4f5a: $0e $03
	dec  de                                          ; $4f5c: $1b
	ld   a, b                                        ; $4f5d: $78
	and  c                                           ; $4f5e: $a1
	ld   l, [hl]                                     ; $4f5f: $6e
	ld   l, d                                        ; $4f60: $6a
	sbc  a                                           ; $4f61: $9f
	dec  c                                           ; $4f62: $0d
	nop                                              ; $4f63: $00
	ld   a, [bc]                                     ; $4f64: $0a
	nop                                              ; $4f65: $00
	rrca                                             ; $4f66: $0f
	nop                                              ; $4f67: $00
	ld   bc, $9801                                   ; $4f68: $01 $01 $98
	sbc  b                                           ; $4f6b: $98
	ld   h, l                                        ; $4f6c: $65
	ld   d, d                                        ; $4f6d: $52
	ld   e, b                                        ; $4f6e: $58
	ld   [bc], a                                     ; $4f6f: $02
	ld   [hl], d                                     ; $4f70: $72
	ld   [hl], l                                     ; $4f71: $75
	ld   h, a                                        ; $4f72: $67
	ld   a, e                                        ; $4f73: $7b
	rst  $38                                         ; $4f74: $ff
	rst  $38                                         ; $4f75: $ff
	dec  c                                           ; $4f76: $0d
	ld   h, e                                        ; $4f77: $63
	ld   l, h                                        ; $4f78: $6c
	ld   e, c                                        ; $4f79: $59
	ld   h, l                                        ; $4f7a: $65
	inc  bc                                          ; $4f7b: $03
	ld   l, [hl]                                     ; $4f7c: $6e
	ld   [bc], a                                     ; $4f7d: $02
	db   $fc                                         ; $4f7e: $fc
	ld   a, c                                        ; $4f7f: $79
	dec  c                                           ; $4f80: $0d
	db   $e4                                         ; $4f81: $e4
	rst  ToBoot                                         ; $4f82: $c7
	sbc  c                                           ; $4f83: $99
	and  c                                           ; $4f84: $a1
	ld   [hl], l                                     ; $4f85: $75
	ld   h, l                                        ; $4f86: $65
	sub  l                                           ; $4f87: $95
	ld   d, h                                        ; $4f88: $54
	ld   a, e                                        ; $4f89: $7b
	ld   sp, hl                                      ; $4f8a: $f9
	dec  c                                           ; $4f8b: $0d
	nop                                              ; $4f8c: $00
	ld   a, [bc]                                     ; $4f8d: $0a
	inc  e                                           ; $4f8e: $1c
	ld   b, $02                                      ; $4f8f: $06 $02
	ld   [bc], a                                     ; $4f91: $02
	dec  e                                           ; $4f92: $1d
	ld   b, b                                        ; $4f93: $40
	ld   d, $03                                      ; $4f94: $16 $03
	ld   d, $01                                      ; $4f96: $16 $01
	inc  bc                                          ; $4f98: $03
	add  hl, hl                                      ; $4f99: $29
	nop                                              ; $4f9a: $00
	ld   bc, $6d50                                   ; $4f9b: $01 $50 $6d
	ld   d, d                                        ; $4f9e: $52
	ld   a, l                                        ; $4f9f: $7d
	inc  bc                                          ; $4fa0: $03
	ld   l, [hl]                                     ; $4fa1: $6e
	ld   l, [hl]                                     ; $4fa2: $6e
	sub  [hl]                                        ; $4fa3: $96
	ld   a, [$720d]                                  ; $4fa4: $fa $0d $72
	adc  h                                           ; $4fa7: $8c
	and  c                                           ; $4fa8: $a1
	ld   a, b                                        ; $4fa9: $78
	ld   d, d                                        ; $4faa: $52
	ld   h, c                                        ; $4fab: $61
	halt                                             ; $4fac: $76
	ld   [bc], a                                     ; $4fad: $02
	sbc  l                                           ; $4fae: $9d
	ld   [hl], c                                     ; $4faf: $71
	ld   [hl], h                                     ; $4fb0: $74
	ld   a, b                                        ; $4fb1: $78
	ld   d, d                                        ; $4fb2: $52
	ld   [hl], l                                     ; $4fb3: $75
	dec  c                                           ; $4fb4: $0d
	ld   h, e                                        ; $4fb5: $63
	ld   [hl], c                                     ; $4fb6: $71
	ld   h, e                                        ; $4fb7: $63
	halt                                             ; $4fb8: $76
	ld   [bc], a                                     ; $4fb9: $02
	sub  l                                           ; $4fba: $95
	ld   [bc], a                                     ; $4fbb: $02
	sub  e                                           ; $4fbc: $93
	sbc  b                                           ; $4fbd: $98
	ld   a, c                                        ; $4fbe: $79
	ld   [bc], a                                     ; $4fbf: $02
	ld   a, a                                        ; $4fc0: $7f
	ld   e, a                                        ; $4fc1: $5f
	ld   [hl], c                                     ; $4fc2: $71
	ld   [hl], h                                     ; $4fc3: $74
	sbc  a                                           ; $4fc4: $9f
	dec  c                                           ; $4fc5: $0d
	nop                                              ; $4fc6: $00
	ld   a, [bc]                                     ; $4fc7: $0a
	nop                                              ; $4fc8: $00
	nop                                              ; $4fc9: $00
	inc  e                                           ; $4fca: $1c
	inc  b                                           ; $4fcb: $04
	nop                                              ; $4fcc: $00
	nop                                              ; $4fcd: $00
	ld   [bc], a                                     ; $4fce: $02
	ld   bc, $9e50                                   ; $4fcf: $01 $50 $9e
	ld   l, a                                        ; $4fd2: $6f
	ld   d, d                                        ; $4fd3: $52
	ld   [bc], a                                     ; $4fd4: $02
	inc  de                                          ; $4fd5: $13
	ld   l, a                                        ; $4fd6: $6f
	sub  c                                           ; $4fd7: $91
	and  c                                           ; $4fd8: $a1
	sbc  a                                           ; $4fd9: $9f
	dec  c                                           ; $4fda: $0d
	nop                                              ; $4fdb: $00
	ld   a, [bc]                                     ; $4fdc: $0a
	inc  e                                           ; $4fdd: $1c
	inc  b                                           ; $4fde: $04
	ld   bc, $0101                                   ; $4fdf: $01 $01 $01
	ld   a, e                                        ; $4fe2: $7b
	ld   d, [hl]                                     ; $4fe3: $56
	ld   a, e                                        ; $4fe4: $7b
	ld   d, [hl]                                     ; $4fe5: $56
	sbc  [hl]                                        ; $4fe6: $9e
	ld   d, b                                        ; $4fe7: $50
	ld   l, e                                        ; $4fe8: $6b
	adc  d                                           ; $4fe9: $8a
	ld   d, h                                        ; $4fea: $54
	sub  [hl]                                        ; $4feb: $96
	db   $fc                                         ; $4fec: $fc
	ld   sp, hl                                      ; $4fed: $f9
	dec  c                                           ; $4fee: $0d
	nop                                              ; $4fef: $00
	ld   a, [bc]                                     ; $4ff0: $0a
	add  hl, de                                      ; $4ff1: $19
	dec  b                                           ; $4ff2: $05
	inc  bc                                          ; $4ff3: $03
	add  hl, hl                                      ; $4ff4: $29
	dec  h                                           ; $4ff5: $25
	ld   h, a                                        ; $4ff6: $67
	sbc  c                                           ; $4ff7: $99
	nop                                              ; $4ff8: $00
	nop                                              ; $4ff9: $00
	ld   h, c                                        ; $4ffa: $61
	halt                                             ; $4ffb: $76
	sbc  l                                           ; $4ffc: $9d
	sbc  c                                           ; $4ffd: $99
	nop                                              ; $4ffe: $00
	ld   bc, $656d                                   ; $4fff: $01 $6d $65
	ld   a, b                                        ; $5002: $78
	adc  a                                           ; $5003: $8f
	sbc  c                                           ; $5004: $99
	nop                                              ; $5005: $00
	ld   [bc], a                                     ; $5006: $02
	rlca                                             ; $5007: $07
	ld   e, e                                        ; $5008: $5b
	nop                                              ; $5009: $00
	ld   [bc], a                                     ; $500a: $02
	inc  bc                                          ; $500b: $03
	ld   bc, $2000                                   ; $500c: $01 $00 $20
	nop                                              ; $500f: $00
	rlca                                             ; $5010: $07
	ld   d, [hl]                                     ; $5011: $56
	ld   bc, $0302                                   ; $5012: $01 $02 $03
	ld   bc, $2001                                   ; $5015: $01 $01 $20
	nop                                              ; $5018: $00
	rlca                                             ; $5019: $07
	xor  a                                           ; $501a: $af
	ld   bc, $0302                                   ; $501b: $01 $02 $03
	ld   bc, $2002                                   ; $501e: $01 $02 $20
	nop                                              ; $5021: $00
	ld   b, $58                                      ; $5022: $06 $58
	ld   [bc], a                                     ; $5024: $02
	rrca                                             ; $5025: $0f
	nop                                              ; $5026: $00
	ld   bc, $5201                                   ; $5027: $01 $01 $52
	ld   d, d                                        ; $502a: $52
	sub  [hl]                                        ; $502b: $96
	sbc  [hl]                                        ; $502c: $9e
	inc  b                                           ; $502d: $04
	ld   c, c                                        ; $502e: $49
	ld   h, l                                        ; $502f: $65
	ld   [hl], h                                     ; $5030: $74
	inc  b                                           ; $5031: $04
	ldh  a, [c]                                      ; $5032: $f2
	adc  d                                           ; $5033: $8a
	ld   d, h                                        ; $5034: $54
	ld   e, c                                        ; $5035: $59
	ld   sp, hl                                      ; $5036: $f9
	dec  c                                           ; $5037: $0d
	nop                                              ; $5038: $00
	ld   a, [bc]                                     ; $5039: $0a
	inc  e                                           ; $503a: $1c
	inc  b                                           ; $503b: $04
	ld   bc, $1d01                                   ; $503c: $01 $01 $1d
	ld   b, b                                        ; $503f: $40
	inc  d                                           ; $5040: $14
	inc  bc                                          ; $5041: $03
	inc  d                                           ; $5042: $14
	ld   bc, $2803                                   ; $5043: $01 $03 $28
	nop                                              ; $5046: $00
	ld   bc, $f5dc                                   ; $5047: $01 $dc $f5
	ret                                              ; $504a: $c9


	ld   sp, hl                                      ; $504b: $f9
	dec  c                                           ; $504c: $0d
	ld   h, [hl]                                     ; $504d: $66
	sub  c                                           ; $504e: $91
	ld   d, b                                        ; $504f: $50
	sbc  [hl]                                        ; $5050: $9e
	ld   e, c                                        ; $5051: $59
	ld   e, l                                        ; $5052: $5d
	sbc  d                                           ; $5053: $9a
	and  c                                           ; $5054: $a1
	adc  d                                           ; $5055: $8a
	ld   a, [$000d]                                  ; $5056: $fa $0d $00
	ld   a, [bc]                                     ; $5059: $0a

Call_04a_505a:
	rrca                                             ; $505a: $0f
	ld   bc, $0103                                   ; $505b: $01 $03 $01
	inc  b                                           ; $505e: $04
	ld   c, c                                        ; $505f: $49
	sub  d                                           ; $5060: $92
	ld   [hl], c                                     ; $5061: $71
	ld   [hl], h                                     ; $5062: $74
	sbc  c                                           ; $5063: $99
	and  c                                           ; $5064: $a1
	ld   [hl], l                                     ; $5065: $75
	ld   h, a                                        ; $5066: $67
	ld   e, c                                        ; $5067: $59
	ld   sp, hl                                      ; $5068: $f9
	dec  c                                           ; $5069: $0d
	ld   b, $09                                      ; $506a: $06 $09
	inc  bc                                          ; $506c: $03
	add  d                                           ; $506d: $82
	halt                                             ; $506e: $76
	sub  b                                           ; $506f: $90
	rst  $38                                         ; $5070: $ff
	rst  $38                                         ; $5071: $ff
	dec  c                                           ; $5072: $0d
	nop                                              ; $5073: $00
	ld   a, [bc]                                     ; $5074: $0a
	rrca                                             ; $5075: $0f
	inc  b                                           ; $5076: $04
	ld   bc, $5001                                   ; $5077: $01 $01 $50
	sbc  [hl]                                        ; $507a: $9e
	ld   h, e                                        ; $507b: $63
	ld   e, l                                        ; $507c: $5d
	sub  a                                           ; $507d: $97
	sub  b                                           ; $507e: $90
	dec  c                                           ; $507f: $0d
	ld   d, d                                        ; $5080: $52
	ld   [hl], c                                     ; $5081: $71
	ld   h, l                                        ; $5082: $65
	sub  l                                           ; $5083: $95
	ld   a, c                                        ; $5084: $79
	ld   e, c                                        ; $5085: $59
	ld   e, l                                        ; $5086: $5d
	sbc  d                                           ; $5087: $9a
	and  c                                           ; $5088: $a1
	adc  d                                           ; $5089: $8a
	ld   h, a                                        ; $508a: $67
	sbc  c                                           ; $508b: $99
	ld   sp, hl                                      ; $508c: $f9
	dec  c                                           ; $508d: $0d
	nop                                              ; $508e: $00
	ld   a, [bc]                                     ; $508f: $0a
	inc  e                                           ; $5090: $1c
	ld   bc, $0202                                   ; $5091: $01 $02 $02
	dec  e                                           ; $5094: $1d
	ld   b, b                                        ; $5095: $40
	ld   de, $1103                                   ; $5096: $11 $03 $11
	ld   bc, $2902                                   ; $5099: $01 $02 $29
	nop                                              ; $509c: $00
	ld   bc, $0008                                   ; $509d: $01 $08 $00
	ld   h, e                                        ; $50a0: $63
	and  c                                           ; $50a1: $a1
	sbc  [hl]                                        ; $50a2: $9e
	dec  b                                           ; $50a3: $05
	sub  [hl]                                        ; $50a4: $96
	sbc  c                                           ; $50a5: $99
	ld   h, [hl]                                     ; $50a6: $66
	sub  c                                           ; $50a7: $91
	dec  c                                           ; $50a8: $0d
	ld   d, b                                        ; $50a9: $50
	sbc  b                                           ; $50aa: $98
	adc  h                                           ; $50ab: $8c
	ld   l, c                                        ; $50ac: $69
	and  c                                           ; $50ad: $a1
	ld   e, c                                        ; $50ae: $59
	rst  $38                                         ; $50af: $ff
	rst  $38                                         ; $50b0: $ff
	ld   d, d                                        ; $50b1: $52
	ld   [hl], c                                     ; $50b2: $71
	ld   h, l                                        ; $50b3: $65
	sub  l                                           ; $50b4: $95
	ld   a, c                                        ; $50b5: $79
	dec  c                                           ; $50b6: $0d
	ld   a, b                                        ; $50b7: $78
	ld   [hl], c                                     ; $50b8: $71
	ld   [hl], h                                     ; $50b9: $74
	inc  b                                           ; $50ba: $04
	ldh  a, [c]                                      ; $50bb: $f2
	and  c                                           ; $50bc: $a1
	ld   [hl], l                                     ; $50bd: $75
	ld   l, l                                        ; $50be: $6d
	sub  a                                           ; $50bf: $97
	sbc  a                                           ; $50c0: $9f
	dec  c                                           ; $50c1: $0d
	nop                                              ; $50c2: $00
	ld   a, [bc]                                     ; $50c3: $0a
	inc  e                                           ; $50c4: $1c
	ld   bc, $0404                                   ; $50c5: $01 $04 $04
	ld   bc, $a5a3                                   ; $50c8: $01 $a3 $a5
	db   $ec                                         ; $50cb: $ec
	cp   d                                           ; $50cc: $ba
	rst  $38                                         ; $50cd: $ff
	rst  $38                                         ; $50ce: $ff
	dec  c                                           ; $50cf: $0d
	ld   [bc], a                                     ; $50d0: $02
	and  l                                           ; $50d1: $a5
	inc  b                                           ; $50d2: $04
	xor  d                                           ; $50d3: $aa
	ld   a, l                                        ; $50d4: $7d
	sub  b                                           ; $50d5: $90
	ld   d, h                                        ; $50d6: $54
	inc  bc                                          ; $50d7: $03
	rst  JumpTable                                         ; $50d8: $df
	ld   d, d                                        ; $50d9: $52
	ld   e, c                                        ; $50da: $59
	sub  a                                           ; $50db: $97
	dec  c                                           ; $50dc: $0d
	adc  h                                           ; $50dd: $8c
	ld   l, l                                        ; $50de: $6d
	inc  b                                           ; $50df: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $50e0: $cf
	inc  b                                           ; $50e1: $04
	xor  d                                           ; $50e2: $aa
	ld   a, c                                        ; $50e3: $79
	ld   h, l                                        ; $50e4: $65
	ld   a, b                                        ; $50e5: $78
	ld   h, e                                        ; $50e6: $63
	ld   d, d                                        ; $50e7: $52
	sbc  a                                           ; $50e8: $9f
	dec  c                                           ; $50e9: $0d
	nop                                              ; $50ea: $00
	ld   a, [bc]                                     ; $50eb: $0a
	rrca                                             ; $50ec: $0f
	inc  b                                           ; $50ed: $04
	inc  b                                           ; $50ee: $04
	ld   bc, $5484                                   ; $50ef: $01 $84 $54
	rst  $38                                         ; $50f2: $ff
	rst  $38                                         ; $50f3: $ff
	ld   [hl], d                                     ; $50f4: $72
	adc  h                                           ; $50f5: $8c
	and  c                                           ; $50f6: $a1
	ld   a, b                                        ; $50f7: $78
	ld   d, d                                        ; $50f8: $52
	ld   a, h                                        ; $50f9: $7c
	sbc  a                                           ; $50fa: $9f
	dec  c                                           ; $50fb: $0d
	nop                                              ; $50fc: $00
	ld   a, [bc]                                     ; $50fd: $0a
	inc  e                                           ; $50fe: $1c
	ld   bc, $0202                                   ; $50ff: $01 $02 $02
	ld   bc, $0008                                   ; $5102: $01 $08 $00
	ld   h, e                                        ; $5105: $63
	and  c                                           ; $5106: $a1
	sub  b                                           ; $5107: $90
	sbc  [hl]                                        ; $5108: $9e
	dec  c                                           ; $5109: $0d
	adc  h                                           ; $510a: $8c
	ld   h, [hl]                                     ; $510b: $66
	adc  a                                           ; $510c: $8f
	ld   a, c                                        ; $510d: $79
	ld   [bc], a                                     ; $510e: $02
	sub  l                                           ; $510f: $95
	ld   [bc], a                                     ; $5110: $02
	sub  e                                           ; $5111: $93
	sbc  b                                           ; $5112: $98
	and  b                                           ; $5113: $a0
	dec  c                                           ; $5114: $0d
	ld   h, l                                        ; $5115: $65
	ld   [hl], h                                     ; $5116: $74
	ld   e, l                                        ; $5117: $5d
	ld   l, [hl]                                     ; $5118: $6e
	ld   h, e                                        ; $5119: $63
	ld   d, d                                        ; $511a: $52
	sbc  a                                           ; $511b: $9f
	dec  c                                           ; $511c: $0d
	nop                                              ; $511d: $00
	ld   a, [bc]                                     ; $511e: $0a
	nop                                              ; $511f: $00
	rrca                                             ; $5120: $0f
	nop                                              ; $5121: $00
	ld   bc, $0201                                   ; $5122: $01 $01 $02
	jr   z, jr_04a_5179                              ; $5125: $28 $52

	ld   e, a                                        ; $5127: $5f
	ld   [hl], a                                     ; $5128: $77
	sbc  [hl]                                        ; $5129: $9e
	ld   e, c                                        ; $512a: $59
	and  c                                           ; $512b: $a1
	add  a                                           ; $512c: $87
	and  c                                           ; $512d: $a1
	ld   h, l                                        ; $512e: $65
	ld   [hl], h                                     ; $512f: $74
	ld   e, l                                        ; $5130: $5d
	sbc  d                                           ; $5131: $9a
	sbc  a                                           ; $5132: $9f
	dec  c                                           ; $5133: $0d
	nop                                              ; $5134: $00
	ld   a, [bc]                                     ; $5135: $0a
	inc  e                                           ; $5136: $1c
	inc  b                                           ; $5137: $04
	rlca                                             ; $5138: $07
	rlca                                             ; $5139: $07
	dec  e                                           ; $513a: $1d
	ld   b, b                                        ; $513b: $40
	inc  d                                           ; $513c: $14
	inc  bc                                          ; $513d: $03
	inc  d                                           ; $513e: $14
	ld   bc, $2902                                   ; $513f: $01 $02 $29
	nop                                              ; $5142: $00
	ld   bc, $8c72                                   ; $5143: $01 $72 $8c
	and  c                                           ; $5146: $a1
	ld   a, b                                        ; $5147: $78
	ld   d, d                                        ; $5148: $52
	ld   a, [$720d]                                  ; $5149: $fa $0d $72
	adc  h                                           ; $514c: $8c
	and  c                                           ; $514d: $a1
	ld   a, b                                        ; $514e: $78
	ld   d, d                                        ; $514f: $52
	ld   a, [$720d]                                  ; $5150: $fa $0d $72
	adc  h                                           ; $5153: $8c
	and  c                                           ; $5154: $a1
	ld   a, b                                        ; $5155: $78
	ld   d, d                                        ; $5156: $52
	ld   a, [$000d]                                  ; $5157: $fa $0d $00
	ld   a, [bc]                                     ; $515a: $0a
	ld   bc, $5252                                   ; $515b: $01 $52 $52
	sub  b                                           ; $515e: $90
	and  c                                           ; $515f: $a1
	ld   a, [$ac0d]                                  ; $5160: $fa $0d $ac
	push af                                          ; $5163: $f5
	bit  6, [hl]                                     ; $5164: $cb $76
	sbc  [hl]                                        ; $5166: $9e
	ld   d, b                                        ; $5167: $50
	ld   l, e                                        ; $5168: $6b
	add  h                                           ; $5169: $84
	sub  b                                           ; $516a: $90
	and  c                                           ; $516b: $a1
	ld   a, [$000d]                                  ; $516c: $fa $0d $00
	ld   a, [bc]                                     ; $516f: $0a
	dec  c                                           ; $5170: $0d
	nop                                              ; $5171: $00
	nop                                              ; $5172: $00
	rrca                                             ; $5173: $0f
	nop                                              ; $5174: $00
	ld   bc, $1e09                                   ; $5175: $01 $09 $1e
	nop                                              ; $5178: $00

jr_04a_5179:
	rrca                                             ; $5179: $0f
	nop                                              ; $517a: $00
	ld   bc, $c101                                   ; $517b: $01 $01 $c1
	db   $e3                                         ; $517e: $e3
	ld   l, [hl]                                     ; $517f: $6e
	sub  [hl]                                        ; $5180: $96
	sbc  [hl]                                        ; $5181: $9e
	ld   h, c                                        ; $5182: $61
	and  c                                           ; $5183: $a1
	ld   a, b                                        ; $5184: $78
	inc  bc                                          ; $5185: $03
	ld   l, a                                        ; $5186: $6f
	ld   [bc], a                                     ; $5187: $02
	xor  c                                           ; $5188: $a9
	ld   a, c                                        ; $5189: $79
	rst  $38                                         ; $518a: $ff
	rst  $38                                         ; $518b: $ff
	dec  c                                           ; $518c: $0d
	adc  l                                           ; $518d: $8d
	and  c                                           ; $518e: $a1
	ld   a, b                                        ; $518f: $78
	ld   a, c                                        ; $5190: $79
	adc  a                                           ; $5191: $8f
	ld   d, d                                        ; $5192: $52
	sbc  l                                           ; $5193: $9d
	ld   e, l                                        ; $5194: $5d
	ld   l, [hl]                                     ; $5195: $6e
	sbc  e                                           ; $5196: $9b
	ld   sp, hl                                      ; $5197: $f9
	dec  c                                           ; $5198: $0d
	nop                                              ; $5199: $00
	ld   a, [bc]                                     ; $519a: $0a
	inc  e                                           ; $519b: $1c
	inc  b                                           ; $519c: $04
	inc  bc                                          ; $519d: $03
	inc  bc                                          ; $519e: $03
	ld   bc, $fc56                                   ; $519f: $01 $56 $fc
	rst  $38                                         ; $51a2: $ff
	rst  $38                                         ; $51a3: $ff
	dec  c                                           ; $51a4: $0d
	nop                                              ; $51a5: $00
	ld   a, [bc]                                     ; $51a6: $0a
	rrca                                             ; $51a7: $0f
	nop                                              ; $51a8: $00
	ld   bc, $a301                                   ; $51a9: $01 $01 $a3
	and  l                                           ; $51ac: $a5
	db   $ec                                         ; $51ad: $ec
	cp   d                                           ; $51ae: $ba
	ld   a, l                                        ; $51af: $7d
	sbc  [hl]                                        ; $51b0: $9e
	sub  b                                           ; $51b1: $90
	ld   d, h                                        ; $51b2: $54
	inc  b                                           ; $51b3: $04
	ld   c, $03                                      ; $51b4: $0e $03
	add  d                                           ; $51b6: $82
	ld   l, [hl]                                     ; $51b7: $6e
	sbc  e                                           ; $51b8: $9b
	ld   sp, hl                                      ; $51b9: $f9
	dec  c                                           ; $51ba: $0d
	ld   l, [hl]                                     ; $51bb: $6e
	ld   [hl], c                                     ; $51bc: $71
	ld   l, l                                        ; $51bd: $6d
	sub  a                                           ; $51be: $97
	sbc  [hl]                                        ; $51bf: $9e
	adc  l                                           ; $51c0: $8d
	and  c                                           ; $51c1: $a1
	ld   a, b                                        ; $51c2: $78
	ld   a, h                                        ; $51c3: $7c
	ld   h, c                                        ; $51c4: $61
	halt                                             ; $51c5: $76
	sub  b                                           ; $51c6: $90
	dec  c                                           ; $51c7: $0d
	ld   [bc], a                                     ; $51c8: $02
	ld   h, l                                        ; $51c9: $65
	ld   d, [hl]                                     ; $51ca: $56
	ld   [hl], h                                     ; $51cb: $74
	ld   d, b                                        ; $51cc: $50
	ld   h, b                                        ; $51cd: $60
	ld   a, b                                        ; $51ce: $78
	ld   e, l                                        ; $51cf: $5d
	ld   l, a                                        ; $51d0: $6f
	sub  c                                           ; $51d1: $91
	sbc  a                                           ; $51d2: $9f
	dec  c                                           ; $51d3: $0d
	nop                                              ; $51d4: $00
	ld   a, [bc]                                     ; $51d5: $0a
	dec  b                                           ; $51d6: $05
	add  b                                           ; $51d7: $80
	sub  $01                                         ; $51d8: $d6 $01
	ld   bc, $1c00                                   ; $51da: $01 $00 $1c
	inc  b                                           ; $51dd: $04
	ld   bc, $1d01                                   ; $51de: $01 $01 $1d
	ld   b, b                                        ; $51e1: $40
	inc  d                                           ; $51e2: $14
	inc  bc                                          ; $51e3: $03
	inc  d                                           ; $51e4: $14
	ld   bc, $2803                                   ; $51e5: $01 $03 $28
	nop                                              ; $51e8: $00
	ld   bc, $a154                                   ; $51e9: $01 $54 $a1
	sbc  [hl]                                        ; $51ec: $9e
	and  e                                           ; $51ed: $a3
	and  l                                           ; $51ee: $a5
	db   $ec                                         ; $51ef: $ec
	cp   d                                           ; $51f0: $ba
	ld   e, b                                        ; $51f1: $58
	halt                                             ; $51f2: $76
	ld   a, b                                        ; $51f3: $78
	ld   l, [hl]                                     ; $51f4: $6e
	sub  [hl]                                        ; $51f5: $96
	sbc  a                                           ; $51f6: $9f
	dec  c                                           ; $51f7: $0d
	nop                                              ; $51f8: $00
	ld   a, [bc]                                     ; $51f9: $0a
	inc  e                                           ; $51fa: $1c
	inc  b                                           ; $51fb: $04
	ld   bc, $0101                                   ; $51fc: $01 $01 $01
	ld   h, [hl]                                     ; $51ff: $66
	sub  c                                           ; $5200: $91
	sbc  [hl]                                        ; $5201: $9e
	and  e                                           ; $5202: $a3
	and  l                                           ; $5203: $a5
	db   $ec                                         ; $5204: $ec
	cp   d                                           ; $5205: $ba
	ld   e, b                                        ; $5206: $58
	add  [hl]                                        ; $5207: $86
	sub  d                                           ; $5208: $92
	ld   a, c                                        ; $5209: $79
	dec  c                                           ; $520a: $0d
	sub  b                                           ; $520b: $90
	ld   [hl], a                                     ; $520c: $77
	sbc  c                                           ; $520d: $99
	ld   a, e                                        ; $520e: $7b
	sbc  a                                           ; $520f: $9f
	dec  c                                           ; $5210: $0d
	ld   e, b                                        ; $5211: $58
	sub  d                                           ; $5212: $92
	ld   h, a                                        ; $5213: $67
	adc  l                                           ; $5214: $8d
	sbc  [hl]                                        ; $5215: $9e
	ld   l, a                                        ; $5216: $6f
	ld   d, d                                        ; $5217: $52
	ld   [bc], a                                     ; $5218: $02
	inc  de                                          ; $5219: $13
	ld   l, a                                        ; $521a: $6f
	sub  c                                           ; $521b: $91
	and  c                                           ; $521c: $a1
	sbc  a                                           ; $521d: $9f
	dec  c                                           ; $521e: $0d
	nop                                              ; $521f: $00
	ld   a, [bc]                                     ; $5220: $0a
	nop                                              ; $5221: $00
	inc  e                                           ; $5222: $1c
	inc  b                                           ; $5223: $04
	inc  bc                                          ; $5224: $03
	inc  bc                                          ; $5225: $03
	ld   bc, $fb7b                                   ; $5226: $01 $7b $fb
	sbc  [hl]                                        ; $5229: $9e
	ld   d, b                                        ; $522a: $50
	ld   l, e                                        ; $522b: $6b
	adc  d                                           ; $522c: $8a
	ld   d, h                                        ; $522d: $54
	sub  [hl]                                        ; $522e: $96
	ei                                               ; $522f: $fb
	ld   a, [$500d]                                  ; $5230: $fa $0d $50
	ld   l, e                                        ; $5233: $6b
	adc  d                                           ; $5234: $8a
	ld   d, h                                        ; $5235: $54
	sub  [hl]                                        ; $5236: $96
	ei                                               ; $5237: $fb
	ld   a, [$500d]                                  ; $5238: $fa $0d $50
	ld   l, e                                        ; $523b: $6b
	adc  d                                           ; $523c: $8a
	ld   d, h                                        ; $523d: $54
	sub  [hl]                                        ; $523e: $96
	ei                                               ; $523f: $fb
	ld   a, [$000d]                                  ; $5240: $fa $0d $00
	ld   a, [bc]                                     ; $5243: $0a
	rrca                                             ; $5244: $0f
	inc  bc                                          ; $5245: $03
	ld   [bc], a                                     ; $5246: $02
	ld   bc, $0906                                   ; $5247: $01 $06 $09
	inc  bc                                          ; $524a: $03
	add  d                                           ; $524b: $82
	halt                                             ; $524c: $76
	sub  b                                           ; $524d: $90
	inc  b                                           ; $524e: $04
	ld   c, c                                        ; $524f: $49
	sub  d                                           ; $5250: $92
	ld   [hl], c                                     ; $5251: $71
	ld   [hl], h                                     ; $5252: $74
	sbc  c                                           ; $5253: $99
	ld   a, h                                        ; $5254: $7c
	ld   a, [$000d]                                  ; $5255: $fa $0d $00
	ld   a, [bc]                                     ; $5258: $0a
	rrca                                             ; $5259: $0f
	inc  bc                                          ; $525a: $03
	inc  b                                           ; $525b: $04
	ld   bc, $a5a3                                   ; $525c: $01 $a3 $a5
	db   $ec                                         ; $525f: $ec
	cp   d                                           ; $5260: $ba
	rst  $38                                         ; $5261: $ff
	rst  $38                                         ; $5262: $ff
	dec  c                                           ; $5263: $0d
	sub  b                                           ; $5264: $90
	ld   d, h                                        ; $5265: $54
	inc  bc                                          ; $5266: $03
	rst  JumpTable                                         ; $5267: $df
	ld   d, d                                        ; $5268: $52
	ld   e, c                                        ; $5269: $59
	sub  a                                           ; $526a: $97
	sbc  [hl]                                        ; $526b: $9e
	ld   e, b                                        ; $526c: $58
	inc  b                                           ; $526d: $04
	sub  l                                           ; $526e: $95
	ld   [bc], a                                     ; $526f: $02
	ld   hl, $0d79                                   ; $5270: $21 $79 $0d
	sub  b                                           ; $5273: $90
	ld   [hl], a                                     ; $5274: $77
	ld   [hl], c                                     ; $5275: $71
	ld   [hl], h                                     ; $5276: $74
	inc  bc                                          ; $5277: $03
	and  a                                           ; $5278: $a7
	adc  l                                           ; $5279: $8d
	ld   a, b                                        ; $527a: $78
	ld   h, e                                        ; $527b: $63
	ld   d, d                                        ; $527c: $52
	sbc  a                                           ; $527d: $9f
	dec  c                                           ; $527e: $0d
	nop                                              ; $527f: $00
	ld   a, [bc]                                     ; $5280: $0a
	inc  e                                           ; $5281: $1c
	inc  bc                                          ; $5282: $03
	ld   [bc], a                                     ; $5283: $02
	ld   [bc], a                                     ; $5284: $02
	dec  e                                           ; $5285: $1d
	ld   b, b                                        ; $5286: $40
	inc  de                                          ; $5287: $13
	inc  bc                                          ; $5288: $03
	inc  de                                          ; $5289: $13
	ld   bc, $2902                                   ; $528a: $01 $02 $29
	nop                                              ; $528d: $00
	ld   bc, $0008                                   ; $528e: $01 $08 $00
	ld   e, l                                        ; $5291: $5d
	and  c                                           ; $5292: $a1
	rst  $38                                         ; $5293: $ff
	rst  $38                                         ; $5294: $ff
	dec  c                                           ; $5295: $0d
	ld   d, b                                        ; $5296: $50
	ld   a, b                                        ; $5297: $78
	ld   l, l                                        ; $5298: $6d
	ld   a, l                                        ; $5299: $7d
	ld   [bc], a                                     ; $529a: $02
	sub  l                                           ; $529b: $95
	ld   [bc], a                                     ; $529c: $02
	sub  e                                           ; $529d: $93
	sbc  b                                           ; $529e: $98
	inc  b                                           ; $529f: $04
	dec  bc                                          ; $52a0: $0b
	ld   [hl], l                                     ; $52a1: $75
	ld   h, l                                        ; $52a2: $65
	sub  l                                           ; $52a3: $95
	ld   d, h                                        ; $52a4: $54
	ld   sp, hl                                      ; $52a5: $f9
	dec  c                                           ; $52a6: $0d
	or   [hl]                                        ; $52a7: $b6
	db   $dd                                         ; $52a8: $dd
	ld   [hl], c                                     ; $52a9: $71
	ld   [hl], h                                     ; $52aa: $74
	ld   l, a                                        ; $52ab: $6f
	sub  c                                           ; $52ac: $91
	pop  bc                                          ; $52ad: $c1
	db   $e3                                         ; $52ae: $e3
	ld   [hl], l                                     ; $52af: $75
	ld   h, l                                        ; $52b0: $65
	sub  l                                           ; $52b1: $95
	rst  $38                                         ; $52b2: $ff
	rst  $38                                         ; $52b3: $ff
	dec  c                                           ; $52b4: $0d
	nop                                              ; $52b5: $00
	ld   a, [bc]                                     ; $52b6: $0a
	ld   bc, $9e63                                   ; $52b7: $01 $63 $9e
	ld   [bc], a                                     ; $52ba: $02
	sub  l                                           ; $52bb: $95
	ld   [bc], a                                     ; $52bc: $02
	sub  e                                           ; $52bd: $93
	sbc  b                                           ; $52be: $98
	and  b                                           ; $52bf: $a0
	ld   [bc], a                                     ; $52c0: $02
	ei                                               ; $52c1: $fb
	ld   e, a                                        ; $52c2: $5f
	ld   a, b                                        ; $52c3: $78
	ld   h, e                                        ; $52c4: $63
	ld   d, d                                        ; $52c5: $52
	sbc  a                                           ; $52c6: $9f
	dec  c                                           ; $52c7: $0d
	nop                                              ; $52c8: $00
	ld   a, [bc]                                     ; $52c9: $0a
	nop                                              ; $52ca: $00
	nop                                              ; $52cb: $00
	inc  bc                                          ; $52cc: $03
	db   $e4                                         ; $52cd: $e4
	ld   bc, $2000                                   ; $52ce: $01 $00 $20
	nop                                              ; $52d1: $00
	ld   c, $4c                                      ; $52d2: $0e $4c
	rrca                                             ; $52d4: $0f
	nop                                              ; $52d5: $00
	ld   bc, $0902                                   ; $52d6: $01 $02 $09
	ld   e, $14                                      ; $52d9: $1e $14
	ld   b, $01                                      ; $52db: $06 $01
	ld   bc, $a161                                   ; $52dd: $01 $61 $a1
	ld   a, [hl]                                     ; $52e0: $7e
	and  c                                           ; $52e1: $a1
	ld   a, l                                        ; $52e2: $7d
	sbc  [hl]                                        ; $52e3: $9e
	ld   [bc], a                                     ; $52e4: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $52e5: $cf
	dec  b                                           ; $52e6: $05
	ld   a, [de]                                     ; $52e7: $1a
	ld   h, e                                        ; $52e8: $63
	and  c                                           ; $52e9: $a1
	sbc  a                                           ; $52ea: $9f
	dec  c                                           ; $52eb: $0d
	ld   d, d                                        ; $52ec: $52
	sub  a                                           ; $52ed: $97
	ld   [hl], c                                     ; $52ee: $71
	ld   h, l                                        ; $52ef: $65
	sub  c                                           ; $52f0: $91
	ld   d, d                                        ; $52f1: $52
	adc  h                                           ; $52f2: $8c
	ld   h, a                                        ; $52f3: $67
	ld   e, c                                        ; $52f4: $59
	ld   sp, hl                                      ; $52f5: $f9
	dec  c                                           ; $52f6: $0d
	nop                                              ; $52f7: $00
	ld   a, [bc]                                     ; $52f8: $0a
	rrca                                             ; $52f9: $0f
	dec  b                                           ; $52fa: $05
	nop                                              ; $52fb: $00
	ld   bc, $7158                                   ; $52fc: $01 $58 $71
	sbc  [hl]                                        ; $52ff: $9e
	ld   [$7d00], sp                                 ; $5300: $08 $00 $7d
	and  c                                           ; $5303: $a1
	sbc  a                                           ; $5304: $9f
	dec  c                                           ; $5305: $0d
	xor  c                                           ; $5306: $a9
	xor  c                                           ; $5307: $a9
	halt                                             ; $5308: $76
	ld   h, c                                        ; $5309: $61
	ld   a, c                                        ; $530a: $79
	dec  b                                           ; $530b: $05
	db   $10                                         ; $530c: $10
	ld   l, l                                        ; $530d: $6d
	sbc  a                                           ; $530e: $9f
	dec  c                                           ; $530f: $0d
	ld   l, a                                        ; $5310: $6f
	sub  l                                           ; $5311: $95
	ld   [hl], c                                     ; $5312: $71
	halt                                             ; $5313: $76
	inc  b                                           ; $5314: $04
	rla                                              ; $5315: $17
	ld   [hl], c                                     ; $5316: $71
	ld   [hl], h                                     ; $5317: $74
	ld   a, b                                        ; $5318: $78
	sbc  a                                           ; $5319: $9f
	dec  c                                           ; $531a: $0d
	nop                                              ; $531b: $00
	ld   a, [bc]                                     ; $531c: $0a
	rrca                                             ; $531d: $0f
	nop                                              ; $531e: $00
	ld   bc, $5523                                   ; $531f: $01 $23 $55
	inc  e                                           ; $5322: $1c
	dec  b                                           ; $5323: $05
	ld   bc, $0101                                   ; $5324: $01 $01 $01
	inc  bc                                          ; $5327: $03
	adc  e                                           ; $5328: $8b
	ld   a, l                                        ; $5329: $7d
	sbc  [hl]                                        ; $532a: $9e
	ld   [$7d00], sp                                 ; $532b: $08 $00 $7d
	and  c                                           ; $532e: $a1
	ld   a, c                                        ; $532f: $79
	dec  c                                           ; $5330: $0d
	sbc  l                                           ; $5331: $9d
	ld   l, l                                        ; $5332: $6d
	ld   l, e                                        ; $5333: $6b
	ld   d, h                                        ; $5334: $54
	halt                                             ; $5335: $76
	dec  b                                           ; $5336: $05
	pop  de                                          ; $5337: $d1
	ld   [hl], h                                     ; $5338: $74
	ld   l, l                                        ; $5339: $6d
	sub  b                                           ; $533a: $90
	and  c                                           ; $533b: $a1
	ld   e, d                                        ; $533c: $5a
	dec  c                                           ; $533d: $0d
	ld   d, b                                        ; $533e: $50
	sbc  c                                           ; $533f: $99
	and  c                                           ; $5340: $a1
	sub  d                                           ; $5341: $92
	sbc  a                                           ; $5342: $9f
	dec  c                                           ; $5343: $0d
	nop                                              ; $5344: $00
	ld   a, [bc]                                     ; $5345: $0a
	ld   bc, $2002                                   ; $5346: $01 $02 $20
	ld   hl, sp+$02                                  ; $5349: $f8 $02
	sbc  e                                           ; $534b: $9b
	ld   e, [hl]                                     ; $534c: $5e
	sub  a                                           ; $534d: $97
	ld   d, d                                        ; $534e: $52
	ld   [hl], l                                     ; $534f: $75
	dec  b                                           ; $5350: $05
	and  b                                           ; $5351: $a0
	inc  bc                                          ; $5352: $03
	ld   [de], a                                     ; $5353: $12
	ld   h, a                                        ; $5354: $67
	sbc  c                                           ; $5355: $99
	dec  c                                           ; $5356: $0d
	cp   c                                           ; $5357: $b9
	or   c                                           ; $5358: $b1
	cp   [hl]                                        ; $5359: $be
	ei                                               ; $535a: $fb
	jp   nc, $edbb                                   ; $535b: $d2 $bb $ed

	dec  c                                           ; $535e: $0d
	ld   a, b                                        ; $535f: $78
	and  c                                           ; $5360: $a1
	sub  d                                           ; $5361: $92
	ld   e, a                                        ; $5362: $5f
	ld   [hl], a                                     ; $5363: $77
	rst  $38                                         ; $5364: $ff
	rst  $38                                         ; $5365: $ff
	dec  c                                           ; $5366: $0d
	nop                                              ; $5367: $00
	ld   a, [bc]                                     ; $5368: $0a
	ld   bc, $0d04                                   ; $5369: $01 $04 $0d
	ld   [bc], a                                     ; $536c: $02
	sub  [hl]                                        ; $536d: $96
	inc  b                                           ; $536e: $04
	ld   b, l                                        ; $536f: $45
	inc  b                                           ; $5370: $04
	ld   a, [bc]                                     ; $5371: $0a
	ld   a, h                                        ; $5372: $7c
	ld   [bc], a                                     ; $5373: $02
	sub  a                                           ; $5374: $97
	inc  b                                           ; $5375: $04
	ld   c, b                                        ; $5376: $48
	ld   a, c                                        ; $5377: $79
	dec  c                                           ; $5378: $0d
	sub  d                                           ; $5379: $92
	ld   [hl], c                                     ; $537a: $71
	ld   [hl], h                                     ; $537b: $74
	adc  l                                           ; $537c: $8d
	sbc  c                                           ; $537d: $99
	ld   sp, hl                                      ; $537e: $f9
	dec  c                                           ; $537f: $0d
	nop                                              ; $5380: $00
	ld   a, [bc]                                     ; $5381: $0a
	jr   jr_04a_5386                                 ; $5382: $18 $02

	nop                                              ; $5384: $00
	ld   a, l                                        ; $5385: $7d

jr_04a_5386:
	ld   d, d                                        ; $5386: $52
	nop                                              ; $5387: $00
	nop                                              ; $5388: $00
	ld   d, d                                        ; $5389: $52
	ld   d, d                                        ; $538a: $52
	ld   d, [hl]                                     ; $538b: $56
	nop                                              ; $538c: $00
	ld   bc, $ce07                                   ; $538d: $01 $07 $ce
	nop                                              ; $5390: $00
	ld   [bc], a                                     ; $5391: $02
	ld   [bc], a                                     ; $5392: $02
	ld   bc, $2000                                   ; $5393: $01 $00 $20
	nop                                              ; $5396: $00
	rlca                                             ; $5397: $07
	jr   nc, jr_04a_539b                             ; $5398: $30 $01

	ld   [bc], a                                     ; $539a: $02

jr_04a_539b:
	ld   [bc], a                                     ; $539b: $02
	ld   bc, $2001                                   ; $539c: $01 $01 $20
	nop                                              ; $539f: $00
	rrca                                             ; $53a0: $0f
	nop                                              ; $53a1: $00
	ld   bc, $7d01                                   ; $53a2: $01 $01 $7d
	ld   d, d                                        ; $53a5: $52
	sbc  a                                           ; $53a6: $9f
	sub  d                                           ; $53a7: $92
	ld   [hl], c                                     ; $53a8: $71
	ld   [hl], h                                     ; $53a9: $74
	adc  l                                           ; $53aa: $8d
	adc  h                                           ; $53ab: $8c
	ld   h, a                                        ; $53ac: $67
	sbc  a                                           ; $53ad: $9f
	dec  c                                           ; $53ae: $0d
	ld   [hl], a                                     ; $53af: $77
	and  c                                           ; $53b0: $a1
	ld   a, b                                        ; $53b1: $78
	ld   [bc], a                                     ; $53b2: $02
	ld   e, [hl]                                     ; $53b3: $5e
	ld   e, d                                        ; $53b4: $5a
	ld   [hl], l                                     ; $53b5: $75
	ld   e, e                                        ; $53b6: $5b
	sbc  c                                           ; $53b7: $99
	ld   a, h                                        ; $53b8: $7c
	ld   e, c                                        ; $53b9: $59
	dec  c                                           ; $53ba: $0d
	dec  b                                           ; $53bb: $05
	inc  de                                          ; $53bc: $13
	ld   h, l                                        ; $53bd: $65
	adc  l                                           ; $53be: $8d
	ld   [hl], l                                     ; $53bf: $75
	ld   h, a                                        ; $53c0: $67
	sbc  a                                           ; $53c1: $9f
	dec  c                                           ; $53c2: $0d
	nop                                              ; $53c3: $00
	ld   a, [bc]                                     ; $53c4: $0a
	rrca                                             ; $53c5: $0f
	dec  b                                           ; $53c6: $05
	ld   bc, $401d                                   ; $53c7: $01 $1d $40
	dec  d                                           ; $53ca: $15
	inc  bc                                          ; $53cb: $03
	dec  d                                           ; $53cc: $15
	ld   bc, $2803                                   ; $53cd: $01 $03 $28
	nop                                              ; $53d0: $00
	ld   bc, $7889                                   ; $53d1: $01 $89 $78
	sbc  [hl]                                        ; $53d4: $9e
	ld   [hl], a                                     ; $53d5: $77
	ld   d, h                                        ; $53d6: $54
	ld   l, h                                        ; $53d7: $6c
	sbc  a                                           ; $53d8: $9f
	dec  c                                           ; $53d9: $0d
	nop                                              ; $53da: $00
	ld   a, [bc]                                     ; $53db: $0a
	db   $10                                         ; $53dc: $10
	add  hl, hl                                      ; $53dd: $29
	nop                                              ; $53de: $00
	dec  b                                           ; $53df: $05
	ld   b, b                                        ; $53e0: $40
	db   $e4                                         ; $53e1: $e4
	ld   bc, $0001                                   ; $53e2: $01 $01 $00
	ld   bc, $a15a                                   ; $53e5: $01 $5a $a1
	ld   a, [hl]                                     ; $53e8: $7e
	ld   [hl], c                                     ; $53e9: $71
	ld   [hl], h                                     ; $53ea: $74
	ld   a, b                                        ; $53eb: $78
	sbc  a                                           ; $53ec: $9f
	dec  c                                           ; $53ed: $0d
	ld   [hl], l                                     ; $53ee: $75
	ld   e, e                                        ; $53ef: $5b
	inc  bc                                          ; $53f0: $03
	ld   h, l                                        ; $53f1: $65
	ld   e, d                                        ; $53f2: $5a
	sbc  b                                           ; $53f3: $98
	dec  b                                           ; $53f4: $05
	inc  de                                          ; $53f5: $13
	ld   h, l                                        ; $53f6: $65
	adc  l                                           ; $53f7: $8d
	ld   a, c                                        ; $53f8: $79
	ld   h, l                                        ; $53f9: $65
	ld   [hl], h                                     ; $53fa: $74
	sbc  c                                           ; $53fb: $99
	ld   [hl], l                                     ; $53fc: $75
	sbc  a                                           ; $53fd: $9f
	dec  c                                           ; $53fe: $0d
	nop                                              ; $53ff: $00
	ld   a, [bc]                                     ; $5400: $0a
	nop                                              ; $5401: $00
	inc  e                                           ; $5402: $1c
	dec  b                                           ; $5403: $05
	ld   [bc], a                                     ; $5404: $02
	ld   [bc], a                                     ; $5405: $02
	dec  e                                           ; $5406: $1d
	ld   b, b                                        ; $5407: $40
	dec  d                                           ; $5408: $15
	inc  bc                                          ; $5409: $03
	dec  d                                           ; $540a: $15
	ld   bc, $2901                                   ; $540b: $01 $01 $29
	nop                                              ; $540e: $00
	ld   bc, $546b                                   ; $540f: $01 $6b $54
	ld   e, c                                        ; $5412: $59
	rst  $38                                         ; $5413: $ff
	rst  $38                                         ; $5414: $ff
	dec  c                                           ; $5415: $0d
	ld   e, a                                        ; $5416: $5f
	ld   [hl], c                                     ; $5417: $71
	ld   h, c                                        ; $5418: $61
	ld   d, h                                        ; $5419: $54
	ld   e, b                                        ; $541a: $58
	sub  b                                           ; $541b: $90
	sbc  e                                           ; $541c: $9b
	ld   d, d                                        ; $541d: $52
	ld   a, e                                        ; $541e: $7b
	and  c                                           ; $541f: $a1
	dec  c                                           ; $5420: $0d
	ld   e, a                                        ; $5421: $5f
	ld   [hl], a                                     ; $5422: $77
	ld   a, b                                        ; $5423: $78
	db   $fc                                         ; $5424: $fc
	sbc  a                                           ; $5425: $9f
	dec  c                                           ; $5426: $0d
	nop                                              ; $5427: $00
	ld   a, [bc]                                     ; $5428: $0a
	nop                                              ; $5429: $00
	nop                                              ; $542a: $00
	ld   c, $51                                      ; $542b: $0e $51
	rrca                                             ; $542d: $0f
	nop                                              ; $542e: $00
	ld   bc, $0102                                   ; $542f: $01 $02 $01
	ld   h, a                                        ; $5432: $67
	adc  l                                           ; $5433: $8d
	sbc  d                                           ; $5434: $9a
	ld   h, e                                        ; $5435: $63
	and  c                                           ; $5436: $a1
	ld   a, h                                        ; $5437: $7c
	inc  b                                           ; $5438: $04
	sub  l                                           ; $5439: $95
	ld   [bc], a                                     ; $543a: $02
	ld   hl, $ff6e                                   ; $543b: $21 $6e $ff
	rst  $38                                         ; $543e: $ff
	dec  c                                           ; $543f: $0d
	nop                                              ; $5440: $00
	ld   a, [bc]                                     ; $5441: $0a
	inc  e                                           ; $5442: $1c
	ld   [bc], a                                     ; $5443: $02
	nop                                              ; $5444: $00
	nop                                              ; $5445: $00
	ld   bc, $9750                                   ; $5446: $01 $50 $97
	sbc  [hl]                                        ; $5449: $9e
	inc  b                                           ; $544a: $04
	ld   c, c                                        ; $544b: $49
	ld   [hl], l                                     ; $544c: $75
	ld   h, a                                        ; $544d: $67
	ld   a, h                                        ; $544e: $7c
	ld   sp, hl                                      ; $544f: $f9
	dec  c                                           ; $5450: $0d
	nop                                              ; $5451: $00
	ld   a, [bc]                                     ; $5452: $0a
	add  hl, de                                      ; $5453: $19
	dec  b                                           ; $5454: $05
	inc  bc                                          ; $5455: $03
	ld   [bc], a                                     ; $5456: $02
	sub  l                                           ; $5457: $95
	ld   [bc], a                                     ; $5458: $02
	sub  e                                           ; $5459: $93
	sbc  b                                           ; $545a: $98
	ld   a, c                                        ; $545b: $79
	dec  b                                           ; $545c: $05
	db   $10                                         ; $545d: $10
	adc  h                                           ; $545e: $8c
	ld   h, l                                        ; $545f: $65
	ld   l, l                                        ; $5460: $6d
	nop                                              ; $5461: $00
	nop                                              ; $5462: $00
	inc  b                                           ; $5463: $04
	ldh  a, [c]                                      ; $5464: $f2
	add  c                                           ; $5465: $81
	ld   a, c                                        ; $5466: $79
	dec  b                                           ; $5467: $05
	db   $10                                         ; $5468: $10
	adc  h                                           ; $5469: $8c
	ld   h, l                                        ; $546a: $65
	ld   l, l                                        ; $546b: $6d
	nop                                              ; $546c: $00
	ld   bc, $4904                                   ; $546d: $01 $04 $49
	ld   e, c                                        ; $5470: $59
	ld   h, d                                        ; $5471: $62
	inc  b                                           ; $5472: $04
	di                                               ; $5473: $f3
	ld   a, l                                        ; $5474: $7d
	ld   h, d                                        ; $5475: $62
	ld   h, h                                        ; $5476: $64
	ld   d, d                                        ; $5477: $52
	adc  h                                           ; $5478: $8c
	ld   l, c                                        ; $5479: $69
	and  c                                           ; $547a: $a1
	ld   e, c                                        ; $547b: $59
	ld   sp, hl                                      ; $547c: $f9
	nop                                              ; $547d: $00
	ld   [bc], a                                     ; $547e: $02
	rlca                                             ; $547f: $07
	push de                                          ; $5480: $d5
	nop                                              ; $5481: $00
	ld   [bc], a                                     ; $5482: $02
	inc  bc                                          ; $5483: $03
	ld   bc, $2000                                   ; $5484: $01 $00 $20
	nop                                              ; $5487: $00
	rlca                                             ; $5488: $07
	dec  h                                           ; $5489: $25
	ld   bc, $0302                                   ; $548a: $01 $02 $03
	ld   bc, $2001                                   ; $548d: $01 $01 $20
	nop                                              ; $5490: $00
	rlca                                             ; $5491: $07
	cp   h                                           ; $5492: $bc
	ld   bc, $0302                                   ; $5493: $01 $02 $03
	ld   bc, $2002                                   ; $5496: $01 $02 $20
	nop                                              ; $5499: $00
	ld   b, $72                                      ; $549a: $06 $72
	nop                                              ; $549c: $00
	inc  e                                           ; $549d: $1c
	ld   [bc], a                                     ; $549e: $02
	ld   [bc], a                                     ; $549f: $02
	ld   [bc], a                                     ; $54a0: $02
	ld   bc, $6a78                                   ; $54a1: $01 $78 $6a
	ld   l, [hl]                                     ; $54a4: $6e
	adc  h                                           ; $54a5: $8c
	ld   [hl], c                                     ; $54a6: $71
	ld   [hl], h                                     ; $54a7: $74
	sbc  c                                           ; $54a8: $99
	ld   a, h                                        ; $54a9: $7c
	ld   sp, hl                                      ; $54aa: $f9
	dec  c                                           ; $54ab: $0d
	ld   [bc], a                                     ; $54ac: $02
	sub  l                                           ; $54ad: $95
	ld   [bc], a                                     ; $54ae: $02
	sub  e                                           ; $54af: $93
	sbc  b                                           ; $54b0: $98
	inc  b                                           ; $54b1: $04
	dec  bc                                          ; $54b2: $0b
	ld   h, [hl]                                     ; $54b3: $66
	sub  c                                           ; $54b4: $91
	ld   d, b                                        ; $54b5: $50
	sbc  b                                           ; $54b6: $98
	adc  h                                           ; $54b7: $8c
	ld   l, c                                        ; $54b8: $69
	and  c                                           ; $54b9: $a1
	ld   a, h                                        ; $54ba: $7c
	ld   sp, hl                                      ; $54bb: $f9
	dec  c                                           ; $54bc: $0d
	nop                                              ; $54bd: $00
	ld   a, [bc]                                     ; $54be: $0a
	dec  e                                           ; $54bf: $1d
	ld   b, b                                        ; $54c0: $40
	ld   [de], a                                     ; $54c1: $12
	inc  bc                                          ; $54c2: $03
	ld   [de], a                                     ; $54c3: $12
	ld   bc, $2902                                   ; $54c4: $01 $02 $29
	nop                                              ; $54c7: $00
	ld   bc, $8203                                   ; $54c8: $01 $03 $82
	ld   a, h                                        ; $54cb: $7c
	inc  bc                                          ; $54cc: $03
	dec  d                                           ; $54cd: $15
	inc  b                                           ; $54ce: $04
	cp   a                                           ; $54cf: $bf
	ld   a, c                                        ; $54d0: $79
	ld   a, l                                        ; $54d1: $7d
	dec  c                                           ; $54d2: $0d
	ld   e, e                                        ; $54d3: $5b
	ld   l, a                                        ; $54d4: $6f
	and  c                                           ; $54d5: $a1
	halt                                             ; $54d6: $76
	inc  bc                                          ; $54d7: $03
	call c, Call_04a_7856                            ; $54d8: $dc $56 $78
	ld   h, e                                        ; $54db: $63
	ld   d, d                                        ; $54dc: $52
	sbc  a                                           ; $54dd: $9f
	dec  c                                           ; $54de: $0d
	nop                                              ; $54df: $00
	ld   a, [bc]                                     ; $54e0: $0a
	ld   bc, $5063                                   ; $54e1: $01 $63 $50
	sbc  [hl]                                        ; $54e4: $9e
	sbc  l                                           ; $54e5: $9d
	ld   l, l                                        ; $54e6: $6d
	ld   e, l                                        ; $54e7: $5d
	ld   h, l                                        ; $54e8: $65
	ld   a, l                                        ; $54e9: $7d
	inc  b                                           ; $54ea: $04
	ld   b, d                                        ; $54eb: $42
	adc  h                                           ; $54ec: $8c
	ld   h, a                                        ; $54ed: $67
	ld   e, c                                        ; $54ee: $59
	sub  a                                           ; $54ef: $97
	dec  c                                           ; $54f0: $0d
	inc  bc                                          ; $54f1: $03
	add  b                                           ; $54f2: $80
	ld   [hl], h                                     ; $54f3: $74
	ld   [hl], c                                     ; $54f4: $71
	ld   [hl], h                                     ; $54f5: $74
	ld   e, l                                        ; $54f6: $5d
	ld   l, [hl]                                     ; $54f7: $6e
	ld   h, e                                        ; $54f8: $63
	ld   d, d                                        ; $54f9: $52
	ld   a, b                                        ; $54fa: $78
	sbc  a                                           ; $54fb: $9f
	dec  c                                           ; $54fc: $0d
	nop                                              ; $54fd: $00
	ld   a, [bc]                                     ; $54fe: $0a
	nop                                              ; $54ff: $00
	rrca                                             ; $5500: $0f
	nop                                              ; $5501: $00
	ld   bc, $0201                                   ; $5502: $01 $01 $02
	sub  l                                           ; $5505: $95
	ld   [bc], a                                     ; $5506: $02
	sub  e                                           ; $5507: $93
	sbc  b                                           ; $5508: $98
	ld   a, c                                        ; $5509: $79
	dec  b                                           ; $550a: $05
	db   $10                                         ; $550b: $10
	adc  h                                           ; $550c: $8c
	ld   h, l                                        ; $550d: $65
	ld   l, l                                        ; $550e: $6d
	sbc  a                                           ; $550f: $9f
	dec  c                                           ; $5510: $0d
	nop                                              ; $5511: $00
	ld   a, [bc]                                     ; $5512: $0a
	inc  e                                           ; $5513: $1c
	ld   [bc], a                                     ; $5514: $02
	nop                                              ; $5515: $00
	nop                                              ; $5516: $00
	ld   bc, $0262                                   ; $5517: $01 $62 $02
	sub  h                                           ; $551a: $94
	dec  b                                           ; $551b: $05
	rrca                                             ; $551c: $0f
	ld   h, e                                        ; $551d: $63
	adc  h                                           ; $551e: $8c
	sbc  a                                           ; $551f: $9f
	dec  c                                           ; $5520: $0d
	ld   [hl], l                                     ; $5521: $75
	sub  b                                           ; $5522: $90
	sbc  [hl]                                        ; $5523: $9e
	sbc  l                                           ; $5524: $9d
	ld   l, l                                        ; $5525: $6d
	ld   e, l                                        ; $5526: $5d
	ld   h, l                                        ; $5527: $65
	ld   a, h                                        ; $5528: $7c
	inc  b                                           ; $5529: $04
	sub  l                                           ; $552a: $95
	ld   [bc], a                                     ; $552b: $02
	ld   hl, ConvertAintoBCD                                   ; $552c: $21 $7d $0d
	dec  b                                           ; $552f: $05
	dec  h                                           ; $5530: $25
	inc  bc                                          ; $5531: $03
	ld   hl, $9850                                   ; $5532: $21 $50 $98
	adc  h                                           ; $5535: $8c
	ld   l, c                                        ; $5536: $69
	and  c                                           ; $5537: $a1
	sbc  l                                           ; $5538: $9d
	sbc  a                                           ; $5539: $9f
	dec  c                                           ; $553a: $0d
	nop                                              ; $553b: $00
	ld   a, [bc]                                     ; $553c: $0a
	rrca                                             ; $553d: $0f
	nop                                              ; $553e: $00
	ld   bc, $7501                                   ; $553f: $01 $01 $75
	ld   a, l                                        ; $5542: $7d
	sbc  [hl]                                        ; $5543: $9e
	inc  bc                                          ; $5544: $03
	add  e                                           ; $5545: $83
	dec  b                                           ; $5546: $05
	dec  c                                           ; $5547: $0d
	ld   h, l                                        ; $5548: $65
	adc  h                                           ; $5549: $8c
	ld   h, a                                        ; $554a: $67
	sbc  a                                           ; $554b: $9f
	dec  c                                           ; $554c: $0d
	nop                                              ; $554d: $00
	ld   a, [bc]                                     ; $554e: $0a
	nop                                              ; $554f: $00
	rrca                                             ; $5550: $0f
	nop                                              ; $5551: $00
	ld   bc, $0401                                   ; $5552: $01 $01 $04
	ldh  a, [c]                                      ; $5555: $f2
	add  c                                           ; $5556: $81
	ld   a, c                                        ; $5557: $79
	dec  b                                           ; $5558: $05
	db   $10                                         ; $5559: $10
	adc  h                                           ; $555a: $8c
	ld   h, l                                        ; $555b: $65
	ld   l, l                                        ; $555c: $6d
	sbc  a                                           ; $555d: $9f
	dec  c                                           ; $555e: $0d
	nop                                              ; $555f: $00
	ld   a, [bc]                                     ; $5560: $0a
	inc  e                                           ; $5561: $1c
	ld   [bc], a                                     ; $5562: $02
	ld   [bc], a                                     ; $5563: $02
	ld   [bc], a                                     ; $5564: $02
	dec  e                                           ; $5565: $1d
	ld   b, b                                        ; $5566: $40
	ld   [de], a                                     ; $5567: $12
	inc  bc                                          ; $5568: $03
	ld   [de], a                                     ; $5569: $12
	ld   bc, $2903                                   ; $556a: $01 $03 $29
	nop                                              ; $556d: $00
	ld   bc, $a161                                   ; $556e: $01 $61 $a1
	ld   a, b                                        ; $5571: $78
	inc  bc                                          ; $5572: $03
	ld   l, a                                        ; $5573: $6f
	ld   [bc], a                                     ; $5574: $02
	xor  c                                           ; $5575: $a9
	ld   a, c                                        ; $5576: $79
	inc  b                                           ; $5577: $04
	or   [hl]                                        ; $5578: $b6
	inc  bc                                          ; $5579: $03
	ld   hl, $3503                                   ; $557a: $21 $03 $35
	ld   [hl], l                                     ; $557d: $75
	ld   h, a                                        ; $557e: $67
	sbc  l                                           ; $557f: $9d
	ld   a, e                                        ; $5580: $7b
	sbc  a                                           ; $5581: $9f
	dec  c                                           ; $5582: $0d
	adc  h                                           ; $5583: $8c
	ld   [hl], c                                     ; $5584: $71
	ld   l, l                                        ; $5585: $6d
	ld   e, l                                        ; $5586: $5d
	sbc  [hl]                                        ; $5587: $9e
	ld   a, b                                        ; $5588: $78
	ld   a, c                                        ; $5589: $79
	and  b                                           ; $558a: $a0
	ld   [bc], a                                     ; $558b: $02
	ld   h, l                                        ; $558c: $65
	ld   d, [hl]                                     ; $558d: $56
	ld   [hl], h                                     ; $558e: $74
	sbc  [hl]                                        ; $558f: $9e
	dec  c                                           ; $5590: $0d
	ld   d, d                                        ; $5591: $52
	sub  a                                           ; $5592: $97
	ld   [hl], c                                     ; $5593: $71
	ld   h, l                                        ; $5594: $65
	sub  c                                           ; $5595: $91
	sbc  c                                           ; $5596: $99
	ld   a, h                                        ; $5597: $7c
	ld   e, c                                        ; $5598: $59
	ld   h, l                                        ; $5599: $65
	sub  a                                           ; $559a: $97
	sbc  a                                           ; $559b: $9f
	dec  c                                           ; $559c: $0d
	nop                                              ; $559d: $00
	ld   a, [bc]                                     ; $559e: $0a
	ld   bc, $c4c9                                   ; $559f: $01 $c9 $c4
	ret  c                                           ; $55a2: $d8

	cp   d                                           ; $55a3: $ba
	ret  nz                                          ; $55a4: $c0

	and  e                                           ; $55a5: $a3
	ld   a, l                                        ; $55a6: $7d
	inc  b                                           ; $55a7: $04
	and  c                                           ; $55a8: $a1
	adc  d                                           ; $55a9: $8a
	ld   d, h                                        ; $55aa: $54
	and  b                                           ; $55ab: $a0
	inc  b                                           ; $55ac: $04
	or   h                                           ; $55ad: $b4
	ld   [hl], d                                     ; $55ae: $72
	dec  c                                           ; $55af: $0d
	ld   l, l                                        ; $55b0: $6d
	adc  a                                           ; $55b1: $8f
	ld   a, c                                        ; $55b2: $79
	inc  bc                                          ; $55b3: $03
	and  a                                           ; $55b4: $a7
	adc  [hl]                                        ; $55b5: $8e
	ld   h, c                                        ; $55b6: $61
	halt                                             ; $55b7: $76
	sub  b                                           ; $55b8: $90
	inc  bc                                          ; $55b9: $03
	dec  c                                           ; $55ba: $0d
	ld   [bc], a                                     ; $55bb: $02
	jp   $a178                                       ; $55bc: $c3 $78 $a1


	dec  c                                           ; $55bf: $0d
	ld   [hl], l                                     ; $55c0: $75
	ld   h, a                                        ; $55c1: $67
	ld   a, h                                        ; $55c2: $7c
	sub  [hl]                                        ; $55c3: $96
	sbc  a                                           ; $55c4: $9f
	dec  c                                           ; $55c5: $0d
	nop                                              ; $55c6: $00
	ld   a, [bc]                                     ; $55c7: $0a
	ld   bc, $5063                                   ; $55c8: $01 $63 $50
	sbc  [hl]                                        ; $55cb: $9e
	sbc  l                                           ; $55cc: $9d
	ld   l, l                                        ; $55cd: $6d
	ld   e, l                                        ; $55ce: $5d
	ld   h, l                                        ; $55cf: $65
	ld   a, l                                        ; $55d0: $7d
	inc  b                                           ; $55d1: $04
	ld   b, d                                        ; $55d2: $42
	adc  h                                           ; $55d3: $8c
	ld   h, a                                        ; $55d4: $67
	ld   e, c                                        ; $55d5: $59
	sub  a                                           ; $55d6: $97
	dec  c                                           ; $55d7: $0d
	inc  bc                                          ; $55d8: $03
	add  b                                           ; $55d9: $80
	ld   [hl], h                                     ; $55da: $74
	ld   [hl], c                                     ; $55db: $71
	ld   [hl], h                                     ; $55dc: $74
	ld   e, l                                        ; $55dd: $5d
	ld   l, [hl]                                     ; $55de: $6e
	ld   h, e                                        ; $55df: $63
	ld   d, d                                        ; $55e0: $52
	ld   a, b                                        ; $55e1: $78
	sbc  a                                           ; $55e2: $9f
	dec  c                                           ; $55e3: $0d
	nop                                              ; $55e4: $00
	ld   a, [bc]                                     ; $55e5: $0a
	nop                                              ; $55e6: $00
	rrca                                             ; $55e7: $0f
	nop                                              ; $55e8: $00
	ld   bc, $6701                                   ; $55e9: $01 $01 $67
	adc  l                                           ; $55ec: $8d
	sbc  d                                           ; $55ed: $9a
	ld   h, e                                        ; $55ee: $63
	and  c                                           ; $55ef: $a1
	sbc  a                                           ; $55f0: $9f
	dec  c                                           ; $55f1: $0d
	inc  b                                           ; $55f2: $04
	ld   c, c                                        ; $55f3: $49
	ld   e, c                                        ; $55f4: $59
	ld   h, d                                        ; $55f5: $62
	inc  b                                           ; $55f6: $04
	di                                               ; $55f7: $f3
	ld   a, l                                        ; $55f8: $7d
	ld   h, d                                        ; $55f9: $62
	ld   h, h                                        ; $55fa: $64
	ld   d, d                                        ; $55fb: $52
	adc  h                                           ; $55fc: $8c
	ld   l, c                                        ; $55fd: $69
	and  c                                           ; $55fe: $a1
	ld   e, c                                        ; $55ff: $59
	ld   sp, hl                                      ; $5600: $f9
	dec  c                                           ; $5601: $0d
	nop                                              ; $5602: $00
	ld   a, [bc]                                     ; $5603: $0a
	inc  e                                           ; $5604: $1c
	ld   [bc], a                                     ; $5605: $02
	nop                                              ; $5606: $00
	nop                                              ; $5607: $00
	dec  e                                           ; $5608: $1d
	ld   b, b                                        ; $5609: $40
	ld   [de], a                                     ; $560a: $12
	inc  bc                                          ; $560b: $03
	ld   [de], a                                     ; $560c: $12
	ld   bc, $2802                                   ; $560d: $01 $02 $28
	nop                                              ; $5610: $00
	ld   bc, $a502                                   ; $5611: $01 $02 $a5
	ld   a, l                                        ; $5614: $7d
	ld   d, b                                        ; $5615: $50
	sbc  b                                           ; $5616: $98
	adc  h                                           ; $5617: $8c
	ld   l, c                                        ; $5618: $69
	and  c                                           ; $5619: $a1
	sbc  l                                           ; $561a: $9d
	sbc  a                                           ; $561b: $9f
	dec  c                                           ; $561c: $0d
	ld   [hl], l                                     ; $561d: $75
	sub  b                                           ; $561e: $90
	sbc  [hl]                                        ; $561f: $9e
	ld   a, b                                        ; $5620: $78
	ld   e, c                                        ; $5621: $59
	ld   a, b                                        ; $5622: $78
	ld   e, c                                        ; $5623: $59
	sub  [hl]                                        ; $5624: $96
	ld   d, d                                        ; $5625: $52
	inc  bc                                          ; $5626: $03
	ld   [hl], l                                     ; $5627: $75
	ld   e, d                                        ; $5628: $5a
	ld   e, a                                        ; $5629: $5f
	dec  c                                           ; $562a: $0d
	ld   [hl], l                                     ; $562b: $75
	ld   h, a                                        ; $562c: $67
	sbc  l                                           ; $562d: $9d
	ld   a, e                                        ; $562e: $7b
	sbc  a                                           ; $562f: $9f
	dec  c                                           ; $5630: $0d
	nop                                              ; $5631: $00
	ld   a, [bc]                                     ; $5632: $0a
	ld   bc, $7c6b                                   ; $5633: $01 $6b $7c
	inc  bc                                          ; $5636: $03
	cp   $03                                         ; $5637: $fe $03
	add  [hl]                                        ; $5639: $86
	ld   [hl], l                                     ; $563a: $75
	sbc  [hl]                                        ; $563b: $9e
	ld   [bc], a                                     ; $563c: $02
	sub  l                                           ; $563d: $95
	ld   [bc], a                                     ; $563e: $02
	sub  e                                           ; $563f: $93
	sbc  b                                           ; $5640: $98
	and  b                                           ; $5641: $a0
	dec  c                                           ; $5642: $0d
	ld   [bc], a                                     ; $5643: $02
	ei                                               ; $5644: $fb
	ld   e, a                                        ; $5645: $5f
	ld   a, b                                        ; $5646: $78
	ld   h, e                                        ; $5647: $63
	ld   d, d                                        ; $5648: $52
	sbc  a                                           ; $5649: $9f
	dec  c                                           ; $564a: $0d
	nop                                              ; $564b: $00
	ld   a, [bc]                                     ; $564c: $0a
	nop                                              ; $564d: $00
	nop                                              ; $564e: $00
	inc  bc                                          ; $564f: $03
	ldh  [rSB], a                                    ; $5650: $e0 $01
	nop                                              ; $5652: $00
	jr   nz, jr_04a_5655                             ; $5653: $20 $00

jr_04a_5655:
	ld   c, $42                                      ; $5655: $0e $42
	rrca                                             ; $5657: $0f
	nop                                              ; $5658: $00
	ld   bc, $0102                                   ; $5659: $01 $02 $01
	ld   h, c                                        ; $565c: $61
	and  c                                           ; $565d: $a1
	ld   a, [hl]                                     ; $565e: $7e
	and  c                                           ; $565f: $a1
	ld   a, l                                        ; $5660: $7d
	sbc  [hl]                                        ; $5661: $9e
	ld   h, e                                        ; $5662: $63
	ld   e, l                                        ; $5663: $5d
	sub  a                                           ; $5664: $97
	ld   h, e                                        ; $5665: $63
	and  c                                           ; $5666: $a1
	sbc  a                                           ; $5667: $9f
	dec  c                                           ; $5668: $0d
	nop                                              ; $5669: $00
	ld   a, [bc]                                     ; $566a: $0a
	rrca                                             ; $566b: $0f
	ld   bc, $0100                                   ; $566c: $01 $00 $01
	ld   d, b                                        ; $566f: $50
	sbc  [hl]                                        ; $5670: $9e
	ld   l, a                                        ; $5671: $6f
	sub  l                                           ; $5672: $95
	ld   [hl], c                                     ; $5673: $71
	halt                                             ; $5674: $76
	inc  b                                           ; $5675: $04
	rla                                              ; $5676: $17
	ld   [hl], c                                     ; $5677: $71
	ld   [hl], h                                     ; $5678: $74
	ld   [bc], a                                     ; $5679: $02
	inc  [hl]                                        ; $567a: $34
	ld   h, e                                        ; $567b: $63
	ld   d, d                                        ; $567c: $52
	sbc  a                                           ; $567d: $9f
	dec  c                                           ; $567e: $0d
	nop                                              ; $567f: $00
	ld   a, [bc]                                     ; $5680: $0a
	rrca                                             ; $5681: $0f
	nop                                              ; $5682: $00
	ld   bc, $4f23                                   ; $5683: $01 $23 $4f
	inc  e                                           ; $5686: $1c
	ld   bc, $0505                                   ; $5687: $01 $05 $05
	ld   bc, $8d67                                   ; $568a: $01 $67 $8d
	adc  h                                           ; $568d: $8c
	ld   l, c                                        ; $568e: $69
	and  c                                           ; $568f: $a1
	sbc  [hl]                                        ; $5690: $9e
	or   [hl]                                        ; $5691: $b6
	db   $dd                                         ; $5692: $dd
	rst  ToBoot                                         ; $5693: $c7
	push af                                          ; $5694: $f5
	ld   a, c                                        ; $5695: $79
	dec  c                                           ; $5696: $0d
	dec  b                                           ; $5697: $05
	jr   nz, jr_04a_56ff                             ; $5698: $20 $65

	ld   e, c                                        ; $569a: $59
	ld   e, a                                        ; $569b: $5f
	ld   [hl], h                                     ; $569c: $74
	ld   l, l                                        ; $569d: $6d
	sub  b                                           ; $569e: $90
	and  c                                           ; $569f: $a1
	ld   [hl], l                                     ; $56a0: $75
	ld   h, a                                        ; $56a1: $67
	ld   e, c                                        ; $56a2: $59
	sub  a                                           ; $56a3: $97
	rst  $38                                         ; $56a4: $ff
	rst  $38                                         ; $56a5: $ff
	dec  c                                           ; $56a6: $0d
	nop                                              ; $56a7: $00
	ld   a, [bc]                                     ; $56a8: $0a
	inc  e                                           ; $56a9: $1c
	ld   bc, $0101                                   ; $56aa: $01 $01 $01
	ld   bc, $546b                                   ; $56ad: $01 $6b $54
	ld   l, [hl]                                     ; $56b0: $6e
	rst  $38                                         ; $56b1: $ff
	rst  $38                                         ; $56b2: $ff
	ld   [$6300], sp                                 ; $56b3: $08 $00 $63
	and  c                                           ; $56b6: $a1
	sub  b                                           ; $56b7: $90
	dec  c                                           ; $56b8: $0d
	or   [hl]                                        ; $56b9: $b6
	db   $dd                                         ; $56ba: $dd
	rst  ToBoot                                         ; $56bb: $c7
	push af                                          ; $56bc: $f5
	and  b                                           ; $56bd: $a0
	ld   [bc], a                                     ; $56be: $02
	ld   e, $74                                      ; $56bf: $1e $74
	ld   [hl], h                                     ; $56c1: $74
	adc  l                                           ; $56c2: $8d
	adc  h                                           ; $56c3: $8c
	ld   l, c                                        ; $56c4: $69
	and  c                                           ; $56c5: $a1
	ld   e, c                                        ; $56c6: $59
	ld   sp, hl                                      ; $56c7: $f9
	dec  c                                           ; $56c8: $0d
	nop                                              ; $56c9: $00
	ld   a, [bc]                                     ; $56ca: $0a
	jr   jr_04a_56cf                                 ; $56cb: $18 $02

	nop                                              ; $56cd: $00
	ld   a, l                                        ; $56ce: $7d

jr_04a_56cf:
	ld   d, d                                        ; $56cf: $52
	nop                                              ; $56d0: $00
	nop                                              ; $56d1: $00
	ld   d, d                                        ; $56d2: $52
	ld   d, d                                        ; $56d3: $52
	ld   d, [hl]                                     ; $56d4: $56
	nop                                              ; $56d5: $00
	ld   bc, $9407                                   ; $56d6: $01 $07 $94
	nop                                              ; $56d9: $00
	ld   [bc], a                                     ; $56da: $02
	ld   [bc], a                                     ; $56db: $02
	ld   bc, $2000                                   ; $56dc: $01 $00 $20
	nop                                              ; $56df: $00
	rlca                                             ; $56e0: $07
	or   $00                                         ; $56e1: $f6 $00
	ld   [bc], a                                     ; $56e3: $02
	ld   [bc], a                                     ; $56e4: $02
	ld   bc, $2001                                   ; $56e5: $01 $01 $20
	nop                                              ; $56e8: $00
	rrca                                             ; $56e9: $0f
	nop                                              ; $56ea: $00
	ld   bc, $7d01                                   ; $56eb: $01 $01 $7d
	ld   d, d                                        ; $56ee: $52
	sbc  a                                           ; $56ef: $9f
	dec  c                                           ; $56f0: $0d
	inc  b                                           ; $56f1: $04
	ld   l, l                                        ; $56f2: $6d
	sub  b                                           ; $56f3: $90
	ld   [bc], a                                     ; $56f4: $02
	ld   e, $74                                      ; $56f5: $1e $74
	ld   [hl], h                                     ; $56f7: $74
	adc  l                                           ; $56f8: $8d
	ld   l, l                                        ; $56f9: $6d
	ld   d, d                                        ; $56fa: $52
	ld   [hl], l                                     ; $56fb: $75
	ld   h, a                                        ; $56fc: $67
	sbc  a                                           ; $56fd: $9f
	dec  c                                           ; $56fe: $0d

jr_04a_56ff:
	nop                                              ; $56ff: $00
	ld   a, [bc]                                     ; $5700: $0a
	inc  e                                           ; $5701: $1c
	ld   bc, $0101                                   ; $5702: $01 $01 $01
	dec  b                                           ; $5705: $05
	ld   b, b                                        ; $5706: $40
	ldh  [rSB], a                                    ; $5707: $e0 $01
	ld   bc, $1d00                                   ; $5709: $01 $00 $1d
	ld   b, b                                        ; $570c: $40
	ld   de, $1103                                   ; $570d: $11 $03 $11
	ld   bc, $2803                                   ; $5710: $01 $03 $28
	nop                                              ; $5713: $00
	ld   bc, $8f04                                   ; $5714: $01 $04 $8f
	inc  b                                           ; $5717: $04
	jr   @+$77                                       ; $5718: $18 $75

	ld   h, a                                        ; $571a: $67
	ld   e, c                                        ; $571b: $59
	ld   a, [$7d0d]                                  ; $571c: $fa $0d $7d
	ld   d, d                                        ; $571f: $52
	sbc  [hl]                                        ; $5720: $9e
	ld   h, [hl]                                     ; $5721: $66
	sub  c                                           ; $5722: $91
	ld   d, b                                        ; $5723: $50
	ld   h, c                                        ; $5724: $61
	sbc  d                                           ; $5725: $9a
	rst  $38                                         ; $5726: $ff
	rst  $38                                         ; $5727: $ff
	dec  c                                           ; $5728: $0d
	nop                                              ; $5729: $00
	ld   a, [bc]                                     ; $572a: $0a
	stop                                             ; $572b: $10 $00
	nop                                              ; $572d: $00
	ld   bc, $9d59                                   ; $572e: $01 $59 $9d
	ld   d, d                                        ; $5731: $52
	ld   e, d                                        ; $5732: $5a
	ld   [hl], c                                     ; $5733: $71
	ld   [hl], h                                     ; $5734: $74
	ld   e, l                                        ; $5735: $5d
	ld   l, [hl]                                     ; $5736: $6e
	ld   h, e                                        ; $5737: $63
	ld   d, d                                        ; $5738: $52
	ld   a, e                                        ; $5739: $7b
	sbc  a                                           ; $573a: $9f
	dec  c                                           ; $573b: $0d
	ld   h, [hl]                                     ; $573c: $66
	sub  c                                           ; $573d: $91
	sbc  [hl]                                        ; $573e: $9e
	ld   e, b                                        ; $573f: $58
	sub  d                                           ; $5740: $92
	ld   h, a                                        ; $5741: $67
	adc  l                                           ; $5742: $8d
	ld   a, b                                        ; $5743: $78
	ld   h, e                                        ; $5744: $63
	ld   d, d                                        ; $5745: $52
	sbc  a                                           ; $5746: $9f
	dec  c                                           ; $5747: $0d
	nop                                              ; $5748: $00
	ld   a, [bc]                                     ; $5749: $0a
	nop                                              ; $574a: $00
	inc  e                                           ; $574b: $1c
	ld   bc, $0404                                   ; $574c: $01 $04 $04
	dec  e                                           ; $574f: $1d
	ld   b, b                                        ; $5750: $40
	ld   de, $1103                                   ; $5751: $11 $03 $11
	ld   bc, $2901                                   ; $5754: $01 $01 $29
	nop                                              ; $5757: $00
	ld   bc, $546b                                   ; $5758: $01 $6b $54
	ld   [hl], l                                     ; $575b: $75
	ld   h, a                                        ; $575c: $67
	ld   e, c                                        ; $575d: $59
	rst  $38                                         ; $575e: $ff
	rst  $38                                         ; $575f: $ff
	dec  c                                           ; $5760: $0d
	ld   e, a                                        ; $5761: $5f
	ld   [hl], c                                     ; $5762: $71
	ld   h, c                                        ; $5763: $61
	ld   d, h                                        ; $5764: $54
	dec  b                                           ; $5765: $05
	inc  de                                          ; $5766: $13
	ld   h, l                                        ; $5767: $65
	ld   d, d                                        ; $5768: $52
	and  c                                           ; $5769: $a1
	ld   [hl], l                                     ; $576a: $75
	ld   h, a                                        ; $576b: $67
	ld   e, a                                        ; $576c: $5f
	ld   [hl], a                                     ; $576d: $77
	ld   a, e                                        ; $576e: $7b
	sbc  a                                           ; $576f: $9f
	dec  c                                           ; $5770: $0d
	nop                                              ; $5771: $00
	ld   a, [bc]                                     ; $5772: $0a
	nop                                              ; $5773: $00
	nop                                              ; $5774: $00
	ld   c, $46                                      ; $5775: $0e $46
	rrca                                             ; $5777: $0f
	nop                                              ; $5778: $00
	ld   bc, $0102                                   ; $5779: $01 $02 $01
	rst  JumpTable                                         ; $577c: $df
	db   $ec                                         ; $577d: $ec
	and  e                                           ; $577e: $a3
	ld   h, e                                        ; $577f: $63
	and  c                                           ; $5780: $a1
	ld   a, h                                        ; $5781: $7c
	inc  b                                           ; $5782: $04
	sub  l                                           ; $5783: $95
	ld   [bc], a                                     ; $5784: $02
	ld   hl, $ff6e                                   ; $5785: $21 $6e $ff
	rst  $38                                         ; $5788: $ff
	dec  c                                           ; $5789: $0d
	nop                                              ; $578a: $00
	ld   a, [bc]                                     ; $578b: $0a
	inc  d                                           ; $578c: $14
	ld   a, [bc]                                     ; $578d: $0a
	ld   bc, $470e                                   ; $578e: $01 $0e $47
	add  hl, bc                                      ; $5791: $09
	ld   e, $1c                                      ; $5792: $1e $1c
	inc  bc                                          ; $5794: $03
	nop                                              ; $5795: $00
	nop                                              ; $5796: $00
	ld   bc, $9750                                   ; $5797: $01 $50 $97
	sbc  [hl]                                        ; $579a: $9e
	inc  b                                           ; $579b: $04
	ld   c, c                                        ; $579c: $49
	and  b                                           ; $579d: $a0
	ld   h, l                                        ; $579e: $65
	ld   [hl], h                                     ; $579f: $74
	sbc  c                                           ; $57a0: $99
	ld   a, h                                        ; $57a1: $7c
	ld   sp, hl                                      ; $57a2: $f9
	dec  c                                           ; $57a3: $0d
	nop                                              ; $57a4: $00
	ld   a, [bc]                                     ; $57a5: $0a
	add  hl, de                                      ; $57a6: $19
	dec  b                                           ; $57a7: $05
	inc  bc                                          ; $57a8: $03
	ld   [bc], a                                     ; $57a9: $02
	sub  l                                           ; $57aa: $95
	ld   [bc], a                                     ; $57ab: $02
	sub  e                                           ; $57ac: $93
	sbc  b                                           ; $57ad: $98
	ld   a, c                                        ; $57ae: $79
	dec  b                                           ; $57af: $05
	db   $10                                         ; $57b0: $10
	adc  h                                           ; $57b1: $8c
	ld   h, l                                        ; $57b2: $65
	ld   l, l                                        ; $57b3: $6d
	nop                                              ; $57b4: $00
	nop                                              ; $57b5: $00
	inc  b                                           ; $57b6: $04
	ldh  a, [c]                                      ; $57b7: $f2
	add  c                                           ; $57b8: $81
	ld   a, c                                        ; $57b9: $79
	dec  b                                           ; $57ba: $05
	db   $10                                         ; $57bb: $10
	adc  h                                           ; $57bc: $8c
	ld   h, l                                        ; $57bd: $65
	ld   l, l                                        ; $57be: $6d
	nop                                              ; $57bf: $00
	ld   bc, $b0df                                   ; $57c0: $01 $df $b0
	db   $eb                                         ; $57c3: $eb
	ld   e, d                                        ; $57c4: $5a
	inc  b                                           ; $57c5: $04
	adc  h                                           ; $57c6: $8c
	sbc  l                                           ; $57c7: $9d
	ld   [hl], c                                     ; $57c8: $71
	ld   [hl], h                                     ; $57c9: $74
	inc  b                                           ; $57ca: $04
	adc  $9a                                         ; $57cb: $ce $9a
	adc  h                                           ; $57cd: $8c
	ld   l, c                                        ; $57ce: $69
	and  c                                           ; $57cf: $a1
	nop                                              ; $57d0: $00
	ld   [bc], a                                     ; $57d1: $02
	rlca                                             ; $57d2: $07
	xor  h                                           ; $57d3: $ac
	nop                                              ; $57d4: $00
	ld   [bc], a                                     ; $57d5: $02
	inc  bc                                          ; $57d6: $03
	ld   bc, $2000                                   ; $57d7: $01 $00 $20
	nop                                              ; $57da: $00
	rlca                                             ; $57db: $07
	rst  $30                                         ; $57dc: $f7
	nop                                              ; $57dd: $00
	ld   [bc], a                                     ; $57de: $02
	inc  bc                                          ; $57df: $03
	ld   bc, $2001                                   ; $57e0: $01 $01 $20
	nop                                              ; $57e3: $00
	rlca                                             ; $57e4: $07
	jr   c, jr_04a_57e8                              ; $57e5: $38 $01

	ld   [bc], a                                     ; $57e7: $02

jr_04a_57e8:
	inc  bc                                          ; $57e8: $03
	ld   bc, $2002                                   ; $57e9: $01 $02 $20
	nop                                              ; $57ec: $00
	ld   b, $7b                                      ; $57ed: $06 $7b
	nop                                              ; $57ef: $00
	inc  e                                           ; $57f0: $1c
	inc  bc                                          ; $57f1: $03
	ld   [bc], a                                     ; $57f2: $02
	ld   [bc], a                                     ; $57f3: $02
	ld   bc, $9502                                   ; $57f4: $01 $02 $95
	ld   [bc], a                                     ; $57f7: $02
	sub  e                                           ; $57f8: $93
	sbc  b                                           ; $57f9: $98
	ld   h, l                                        ; $57fa: $65
	ld   [hl], h                                     ; $57fb: $74
	sbc  c                                           ; $57fc: $99
	and  c                                           ; $57fd: $a1
	ld   [hl], l                                     ; $57fe: $75
	ld   h, l                                        ; $57ff: $65
	sub  l                                           ; $5800: $95
	sbc  a                                           ; $5801: $9f
	dec  c                                           ; $5802: $0d
	pop  bc                                          ; $5803: $c1
	db   $e3                                         ; $5804: $e3
	sub  [hl]                                        ; $5805: $96
	sbc  [hl]                                        ; $5806: $9e
	inc  bc                                          ; $5807: $03
	add  d                                           ; $5808: $82
	ld   a, h                                        ; $5809: $7c
	inc  bc                                          ; $580a: $03
	dec  d                                           ; $580b: $15
	inc  b                                           ; $580c: $04
	cp   a                                           ; $580d: $bf
	ld   a, c                                        ; $580e: $79
	ld   a, l                                        ; $580f: $7d
	dec  c                                           ; $5810: $0d
	inc  bc                                          ; $5811: $03
	call c, $9956                                    ; $5812: $dc $56 $99
	sub  [hl]                                        ; $5815: $96
	ld   d, h                                        ; $5816: $54
	ld   a, c                                        ; $5817: $79
	ld   h, l                                        ; $5818: $65
	ld   a, b                                        ; $5819: $78
	ld   d, d                                        ; $581a: $52
	halt                                             ; $581b: $76
	ld   a, [$000d]                                  ; $581c: $fa $0d $00
	ld   a, [bc]                                     ; $581f: $0a
	nop                                              ; $5820: $00
	rrca                                             ; $5821: $0f
	nop                                              ; $5822: $00
	ld   bc, $0201                                   ; $5823: $01 $01 $02
	sub  l                                           ; $5826: $95
	ld   [bc], a                                     ; $5827: $02
	sub  e                                           ; $5828: $93
	sbc  b                                           ; $5829: $98
	ld   a, c                                        ; $582a: $79
	dec  b                                           ; $582b: $05
	db   $10                                         ; $582c: $10
	adc  h                                           ; $582d: $8c
	ld   h, l                                        ; $582e: $65
	ld   l, l                                        ; $582f: $6d
	sbc  a                                           ; $5830: $9f
	dec  c                                           ; $5831: $0d
	nop                                              ; $5832: $00
	ld   a, [bc]                                     ; $5833: $0a
	inc  e                                           ; $5834: $1c
	inc  bc                                          ; $5835: $03
	inc  bc                                          ; $5836: $03
	inc  bc                                          ; $5837: $03
	dec  e                                           ; $5838: $1d
	ld   b, b                                        ; $5839: $40
	inc  de                                          ; $583a: $13
	inc  bc                                          ; $583b: $03
	inc  de                                          ; $583c: $13
	ld   bc, $2802                                   ; $583d: $01 $02 $28
	nop                                              ; $5840: $00
	ld   bc, $5d62                                   ; $5841: $01 $62 $5d
	sbc  e                                           ; $5844: $9b
	ld   d, h                                        ; $5845: $54
	ld   h, e                                        ; $5846: $63
	adc  h                                           ; $5847: $8c
	sbc  a                                           ; $5848: $9f
	dec  c                                           ; $5849: $0d
	ld   h, c                                        ; $584a: $61
	ld   h, c                                        ; $584b: $61
	ld   a, l                                        ; $584c: $7d
	dec  b                                           ; $584d: $05
	dec  h                                           ; $584e: $25
	inc  bc                                          ; $584f: $03
	ld   hl, $5278                                   ; $5850: $21 $78 $52
	sbc  l                                           ; $5853: $9d
	sub  [hl]                                        ; $5854: $96
	sbc  a                                           ; $5855: $9f
	dec  c                                           ; $5856: $0d
	nop                                              ; $5857: $00
	ld   a, [bc]                                     ; $5858: $0a
	rrca                                             ; $5859: $0f
	nop                                              ; $585a: $00
	ld   bc, $7501                                   ; $585b: $01 $01 $75
	ld   a, l                                        ; $585e: $7d
	sbc  [hl]                                        ; $585f: $9e
	inc  bc                                          ; $5860: $03
	add  e                                           ; $5861: $83
	dec  b                                           ; $5862: $05
	dec  c                                           ; $5863: $0d
	ld   h, l                                        ; $5864: $65
	adc  h                                           ; $5865: $8c
	ld   h, a                                        ; $5866: $67
	sbc  a                                           ; $5867: $9f
	dec  c                                           ; $5868: $0d
	nop                                              ; $5869: $00
	ld   a, [bc]                                     ; $586a: $0a
	nop                                              ; $586b: $00
	rrca                                             ; $586c: $0f
	nop                                              ; $586d: $00
	ld   bc, $0401                                   ; $586e: $01 $01 $04
	ldh  a, [c]                                      ; $5871: $f2
	add  c                                           ; $5872: $81
	ld   a, c                                        ; $5873: $79
	dec  b                                           ; $5874: $05
	db   $10                                         ; $5875: $10
	adc  h                                           ; $5876: $8c
	ld   h, l                                        ; $5877: $65
	ld   l, l                                        ; $5878: $6d
	sbc  a                                           ; $5879: $9f
	dec  c                                           ; $587a: $0d
	nop                                              ; $587b: $00
	ld   a, [bc]                                     ; $587c: $0a
	inc  e                                           ; $587d: $1c
	inc  bc                                          ; $587e: $03
	ld   b, $06                                      ; $587f: $06 $06
	dec  e                                           ; $5881: $1d
	ld   b, b                                        ; $5882: $40
	inc  de                                          ; $5883: $13
	inc  bc                                          ; $5884: $03
	inc  de                                          ; $5885: $13
	ld   bc, $2903                                   ; $5886: $01 $03 $29
	nop                                              ; $5889: $00
	ld   bc, $4904                                   ; $588a: $01 $04 $49
	and  b                                           ; $588d: $a0
	pop  de                                          ; $588e: $d1
	xor  h                                           ; $588f: $ac
	ld   a, b                                        ; $5890: $78
	ld   h, c                                        ; $5891: $61
	halt                                             ; $5892: $76
	ld   [bc], a                                     ; $5893: $02
	sbc  l                                           ; $5894: $9d
	ld   [hl], c                                     ; $5895: $71
	ld   [hl], h                                     ; $5896: $74
	sbc  c                                           ; $5897: $99
	ld   a, h                                        ; $5898: $7c
	ld   a, [$8c0d]                                  ; $5899: $fa $0d $8c
	ld   h, [hl]                                     ; $589c: $66
	adc  a                                           ; $589d: $8f
	ld   a, c                                        ; $589e: $79
	ld   [bc], a                                     ; $589f: $02
	sub  l                                           ; $58a0: $95
	ld   [bc], a                                     ; $58a1: $02
	sub  e                                           ; $58a2: $93
	sbc  b                                           ; $58a3: $98
	ld   h, l                                        ; $58a4: $65
	ld   a, b                                        ; $58a5: $78
	ld   h, e                                        ; $58a6: $63
	ld   d, d                                        ; $58a7: $52
	ld   a, [$000d]                                  ; $58a8: $fa $0d $00
	ld   a, [bc]                                     ; $58ab: $0a
	nop                                              ; $58ac: $00
	rrca                                             ; $58ad: $0f
	nop                                              ; $58ae: $00
	ld   bc, $df01                                   ; $58af: $01 $01 $df
	or   b                                           ; $58b2: $b0
	db   $eb                                         ; $58b3: $eb
	ld   e, d                                        ; $58b4: $5a
	inc  b                                           ; $58b5: $04
	adc  h                                           ; $58b6: $8c
	sbc  l                                           ; $58b7: $9d
	ld   [hl], c                                     ; $58b8: $71
	ld   [hl], h                                     ; $58b9: $74
	inc  b                                           ; $58ba: $04
	adc  $9a                                         ; $58bb: $ce $9a
	adc  h                                           ; $58bd: $8c
	ld   l, c                                        ; $58be: $69
	and  c                                           ; $58bf: $a1
	sbc  a                                           ; $58c0: $9f
	dec  c                                           ; $58c1: $0d
	nop                                              ; $58c2: $00
	ld   a, [bc]                                     ; $58c3: $0a
	inc  e                                           ; $58c4: $1c
	inc  bc                                          ; $58c5: $03
	inc  b                                           ; $58c6: $04
	inc  b                                           ; $58c7: $04
	ld   bc, $b0df                                   ; $58c8: $01 $df $b0
	db   $eb                                         ; $58cb: $eb
	ld   e, d                                        ; $58cc: $5a
	ld   sp, hl                                      ; $58cd: $f9
	dec  c                                           ; $58ce: $0d
	inc  b                                           ; $58cf: $04
	adc  $9a                                         ; $58d0: $ce $9a
	ld   a, b                                        ; $58d2: $78
	ld   d, d                                        ; $58d3: $52
	ld   a, h                                        ; $58d4: $7c
	ld   a, l                                        ; $58d5: $7d
	dec  b                                           ; $58d6: $05
	sub  [hl]                                        ; $58d7: $96
	sbc  c                                           ; $58d8: $99
	sbc  l                                           ; $58d9: $9d
	ld   a, e                                        ; $58da: $7b
	sbc  a                                           ; $58db: $9f
	dec  c                                           ; $58dc: $0d
	nop                                              ; $58dd: $00
	ld   a, [bc]                                     ; $58de: $0a
	inc  e                                           ; $58df: $1c
	inc  bc                                          ; $58e0: $03
	nop                                              ; $58e1: $00
	nop                                              ; $58e2: $00
	ld   bc, $508c                                   ; $58e3: $01 $8c $50
	sbc  [hl]                                        ; $58e6: $9e
	inc  b                                           ; $58e7: $04
	sbc  [hl]                                        ; $58e8: $9e
	ld   e, c                                        ; $58e9: $59
	sub  a                                           ; $58ea: $97
	ld   a, b                                        ; $58eb: $78
	ld   e, l                                        ; $58ec: $5d
	ld   a, l                                        ; $58ed: $7d
	ld   a, b                                        ; $58ee: $78
	ld   d, d                                        ; $58ef: $52
	ld   e, a                                        ; $58f0: $5f
	ld   [hl], a                                     ; $58f1: $77
	dec  c                                           ; $58f2: $0d
	ld   l, e                                        ; $58f3: $6b
	sbc  d                                           ; $58f4: $9a
	ld   a, l                                        ; $58f5: $7d
	sbc  [hl]                                        ; $58f6: $9e
	ld   a, b                                        ; $58f7: $78
	sbc  d                                           ; $58f8: $9a
	ld   [hl], h                                     ; $58f9: $74
	sub  b                                           ; $58fa: $90
	sub  a                                           ; $58fb: $97
	sbc  l                                           ; $58fc: $9d
	ld   a, b                                        ; $58fd: $78
	ld   d, d                                        ; $58fe: $52
	halt                                             ; $58ff: $76
	dec  c                                           ; $5900: $0d
	ld   [hl], a                                     ; $5901: $77
	ld   d, h                                        ; $5902: $54
	ld   h, l                                        ; $5903: $65
	sub  l                                           ; $5904: $95
	ld   d, h                                        ; $5905: $54
	sub  b                                           ; $5906: $90
	ld   a, b                                        ; $5907: $78
	ld   d, d                                        ; $5908: $52
	sbc  l                                           ; $5909: $9d
	ld   a, e                                        ; $590a: $7b
	sbc  a                                           ; $590b: $9f
	dec  c                                           ; $590c: $0d
	nop                                              ; $590d: $00
	ld   a, [bc]                                     ; $590e: $0a
	ld   bc, $9a6b                                   ; $590f: $01 $6b $9a
	ld   h, [hl]                                     ; $5912: $66
	sub  c                                           ; $5913: $91
	sbc  [hl]                                        ; $5914: $9e
	ld   [bc], a                                     ; $5915: $02
	sub  l                                           ; $5916: $95
	ld   [bc], a                                     ; $5917: $02
	sub  e                                           ; $5918: $93
	sbc  b                                           ; $5919: $98
	ld   e, d                                        ; $591a: $5a
	and  c                                           ; $591b: $a1
	ld   a, [hl]                                     ; $591c: $7e
	sbc  b                                           ; $591d: $98
	dec  c                                           ; $591e: $0d
	ld   a, b                                        ; $591f: $78
	ld   h, e                                        ; $5920: $63
	ld   d, d                                        ; $5921: $52
	sbc  a                                           ; $5922: $9f
	dec  c                                           ; $5923: $0d
	nop                                              ; $5924: $00
	ld   a, [bc]                                     ; $5925: $0a
	nop                                              ; $5926: $00
	nop                                              ; $5927: $00
	ld   c, $4c                                      ; $5928: $0e $4c
	rrca                                             ; $592a: $0f
	nop                                              ; $592b: $00
	ld   bc, $0502                                   ; $592c: $01 $02 $05
	add  b                                           ; $592f: $80
	dec  hl                                          ; $5930: $2b
	ld   bc, $0001                                   ; $5931: $01 $01 $00
	ld   bc, $cf02                                   ; $5934: $01 $02 $cf
	dec  b                                           ; $5937: $05
	ld   a, [de]                                     ; $5938: $1a
	ld   h, e                                        ; $5939: $63
	and  c                                           ; $593a: $a1
	sbc  [hl]                                        ; $593b: $9e
	ld   d, d                                        ; $593c: $52
	sbc  c                                           ; $593d: $99
	ld   e, c                                        ; $593e: $59
	ld   a, b                                        ; $593f: $78
	ld   sp, hl                                      ; $5940: $f9
	dec  c                                           ; $5941: $0d
	nop                                              ; $5942: $00
	ld   a, [bc]                                     ; $5943: $0a
	inc  c                                           ; $5944: $0c
	add  hl, bc                                      ; $5945: $09
	ld   bc, $9e78                                   ; $5946: $01 $78 $9e
	inc  b                                           ; $5949: $04
	ld   c, c                                        ; $594a: $49
	ld   e, d                                        ; $594b: $5a
	ld   [bc], a                                     ; $594c: $02
	ld   e, d                                        ; $594d: $5a
	ld   h, c                                        ; $594e: $61
	ld   [hl], c                                     ; $594f: $71
	ld   l, l                                        ; $5950: $6d
	and  c                                           ; $5951: $a1
	ld   l, [hl]                                     ; $5952: $6e
	ld   a, [$000d]                                  ; $5953: $fa $0d $00
	ld   a, [bc]                                     ; $5956: $0a
	ld   bc, $ffff                                   ; $5957: $01 $ff $ff
	rst  $38                                         ; $595a: $ff
	rst  $38                                         ; $595b: $ff
	rst  $38                                         ; $595c: $ff
	rst  $38                                         ; $595d: $ff
	rst  $38                                         ; $595e: $ff
	rst  $38                                         ; $595f: $ff
	rst  $38                                         ; $5960: $ff
	dec  c                                           ; $5961: $0d
	nop                                              ; $5962: $00
	ld   a, [bc]                                     ; $5963: $0a
	inc  d                                           ; $5964: $14
	ld   a, [bc]                                     ; $5965: $0a
	ld   bc, $020c                                   ; $5966: $01 $0c $02
	ld   c, $4d                                      ; $5969: $0e $4d
	dec  c                                           ; $596b: $0d
	dec  b                                           ; $596c: $05
	jr   nz, jr_04a_5970                             ; $596d: $20 $01

	ld   h, c                                        ; $596f: $61

jr_04a_5970:
	sbc  [hl]                                        ; $5970: $9e
	ld   [bc], a                                     ; $5971: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5972: $cf
	dec  b                                           ; $5973: $05
	ld   a, [de]                                     ; $5974: $1a
	ld   h, e                                        ; $5975: $63
	and  c                                           ; $5976: $a1
	ld   a, [$000d]                                  ; $5977: $fa $0d $00
	ld   a, [bc]                                     ; $597a: $0a
	add  hl, de                                      ; $597b: $19

Jump_04a_597c:
	dec  b                                           ; $597c: $05
	inc  bc                                          ; $597d: $03
	inc  b                                           ; $597e: $04
	ld   c, $03                                      ; $597f: $0e $03
	sbc  l                                           ; $5981: $9d
	inc  b                                           ; $5982: $04
	and  [hl]                                        ; $5983: $a6
	ld   [hl], l                                     ; $5984: $75
	ld   h, a                                        ; $5985: $67
	ld   e, c                                        ; $5986: $59
	ld   sp, hl                                      ; $5987: $f9
	nop                                              ; $5988: $00
	nop                                              ; $5989: $00
	inc  bc                                          ; $598a: $03
	db   $dd                                         ; $598b: $dd
	ld   b, $48                                      ; $598c: $06 $48
	ld   l, [hl]                                     ; $598e: $6e
	ld   a, [$0100]                                  ; $598f: $fa $00 $01
	ld   [bc], a                                     ; $5992: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5993: $cf
	dec  b                                           ; $5994: $05
	ld   a, [de]                                     ; $5995: $1a
	ld   h, e                                        ; $5996: $63
	and  c                                           ; $5997: $a1
	ld   e, d                                        ; $5998: $5a
	ld   b, $0d                                      ; $5999: $06 $0d
	inc  b                                           ; $599b: $04
	ld   e, [hl]                                     ; $599c: $5e
	ld   a, [$00f9]                                  ; $599d: $fa $f9 $00
	ld   [bc], a                                     ; $59a0: $02
	rlca                                             ; $59a1: $07
	sub  a                                           ; $59a2: $97
	nop                                              ; $59a3: $00
	ld   [bc], a                                     ; $59a4: $02
	inc  bc                                          ; $59a5: $03
	ld   bc, $2000                                   ; $59a6: $01 $00 $20
	nop                                              ; $59a9: $00
	rlca                                             ; $59aa: $07
	ld   c, [hl]                                     ; $59ab: $4e
	ld   bc, $0302                                   ; $59ac: $01 $02 $03
	ld   bc, $2001                                   ; $59af: $01 $01 $20
	nop                                              ; $59b2: $00
	rlca                                             ; $59b3: $07
	add  $01                                         ; $59b4: $c6 $01
	ld   [bc], a                                     ; $59b6: $02
	inc  bc                                          ; $59b7: $03
	ld   bc, $2002                                   ; $59b8: $01 $02 $20
	nop                                              ; $59bb: $00
	ld   b, $85                                      ; $59bc: $06 $85
	ld   [bc], a                                     ; $59be: $02
	rrca                                             ; $59bf: $0f
	nop                                              ; $59c0: $00
	ld   bc, $0401                                   ; $59c1: $01 $01 $04
	ld   c, $03                                      ; $59c4: $0e $03
	sbc  l                                           ; $59c6: $9d
	inc  b                                           ; $59c7: $04
	and  [hl]                                        ; $59c8: $a6
	ld   [hl], l                                     ; $59c9: $75
	ld   h, a                                        ; $59ca: $67
	ld   e, c                                        ; $59cb: $59
	ld   a, [$0210]                                  ; $59cc: $fa $10 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $59cf: $cf
	dec  b                                           ; $59d0: $05
	ld   a, [de]                                     ; $59d1: $1a
	ld   h, e                                        ; $59d2: $63
	and  c                                           ; $59d3: $a1
	ld   a, [$0dfa]                                  ; $59d4: $fa $fa $0d
	ld   d, d                                        ; $59d7: $52
	ld   [hl], c                                     ; $59d8: $71
	ld   l, l                                        ; $59d9: $6d
	ld   d, d                                        ; $59da: $52
	inc  b                                           ; $59db: $04
	ld   c, c                                        ; $59dc: $49
	ld   e, d                                        ; $59dd: $5a
	rst  $38                                         ; $59de: $ff
	rst  $38                                         ; $59df: $ff
	dec  c                                           ; $59e0: $0d
	nop                                              ; $59e1: $00
	ld   a, [bc]                                     ; $59e2: $0a
	rrca                                             ; $59e3: $0f
	dec  b                                           ; $59e4: $05
	ld   [$ff01], sp                                 ; $59e5: $08 $01 $ff
	rst  $38                                         ; $59e8: $ff
	inc  b                                           ; $59e9: $04
	ld   c, $03                                      ; $59ea: $0e $03
	sbc  l                                           ; $59ec: $9d
	inc  b                                           ; $59ed: $04
	and  [hl]                                        ; $59ee: $a6
	sub  d                                           ; $59ef: $92
	sbc  a                                           ; $59f0: $9f
	dec  c                                           ; $59f1: $0d
	ld   l, a                                        ; $59f2: $6f
	sub  l                                           ; $59f3: $95
	ld   [hl], c                                     ; $59f4: $71
	halt                                             ; $59f5: $76
	ld   b, $58                                      ; $59f6: $06 $58
	inc  b                                           ; $59f8: $04
	ld   h, c                                        ; $59f9: $61
	ld   a, h                                        ; $59fa: $7c
	inc  b                                           ; $59fb: $04
	xor  e                                           ; $59fc: $ab
	ld   [bc], a                                     ; $59fd: $02
	ld   a, e                                        ; $59fe: $7b
	and  b                                           ; $59ff: $a0
	dec  c                                           ; $5a00: $0d
	adc  h                                           ; $5a01: $8c
	ld   l, a                                        ; $5a02: $6f
	ld   e, d                                        ; $5a03: $5a
	ld   d, [hl]                                     ; $5a04: $56
	ld   l, l                                        ; $5a05: $6d
	ld   l, [hl]                                     ; $5a06: $6e
	ld   e, a                                        ; $5a07: $5f
	sub  d                                           ; $5a08: $92
	ld   e, c                                        ; $5a09: $59
	sub  a                                           ; $5a0a: $97
	sbc  a                                           ; $5a0b: $9f
	dec  c                                           ; $5a0c: $0d
	nop                                              ; $5a0d: $00
	ld   a, [bc]                                     ; $5a0e: $0a
	rrca                                             ; $5a0f: $0f
	nop                                              ; $5a10: $00
	ld   bc, $7501                                   ; $5a11: $01 $01 $75
	sbc  [hl]                                        ; $5a14: $9e
	ld   [hl], l                                     ; $5a15: $75
	sub  b                                           ; $5a16: $90
	ld   [bc], a                                     ; $5a17: $02
	dec  [hl]                                        ; $5a18: $35
	ld   h, c                                        ; $5a19: $61
	ld   h, b                                        ; $5a1a: $60
	ld   [hl], l                                     ; $5a1b: $75
	ld   h, a                                        ; $5a1c: $67
	sub  [hl]                                        ; $5a1d: $96
	sbc  [hl]                                        ; $5a1e: $9e
	dec  c                                           ; $5a1f: $0d
	ld   [bc], a                                     ; $5a20: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a21: $cf
	dec  b                                           ; $5a22: $05
	ld   a, [de]                                     ; $5a23: $1a
	ld   h, e                                        ; $5a24: $63
	and  c                                           ; $5a25: $a1
	sbc  a                                           ; $5a26: $9f
	dec  c                                           ; $5a27: $0d
	nop                                              ; $5a28: $00
	ld   a, [bc]                                     ; $5a29: $0a
	rrca                                             ; $5a2a: $0f
	dec  b                                           ; $5a2b: $05
	ld   [$401d], sp                                 ; $5a2c: $08 $1d $40
	dec  d                                           ; $5a2f: $15
	inc  bc                                          ; $5a30: $03
	dec  d                                           ; $5a31: $15
	ld   bc, $2803                                   ; $5a32: $01 $03 $28
	nop                                              ; $5a35: $00
	ld   bc, $8c59                                   ; $5a36: $01 $59 $8c
	add  [hl]                                        ; $5a39: $86
	and  c                                           ; $5a3a: $a1
	sbc  [hl]                                        ; $5a3b: $9e
	ld   e, c                                        ; $5a3c: $59
	adc  h                                           ; $5a3d: $8c
	add  [hl]                                        ; $5a3e: $86
	and  c                                           ; $5a3f: $a1
	sbc  a                                           ; $5a40: $9f
	dec  c                                           ; $5a41: $0d
	inc  bc                                          ; $5a42: $03
	ld   [hl], l                                     ; $5a43: $75
	inc  b                                           ; $5a44: $04
	xor  e                                           ; $5a45: $ab
	ld   h, l                                        ; $5a46: $65
	ld   [hl], h                                     ; $5a47: $74
	ld   e, l                                        ; $5a48: $5d
	sbc  d                                           ; $5a49: $9a
	ld   [hl], h                                     ; $5a4a: $74
	sbc  [hl]                                        ; $5a4b: $9e
	ld   d, b                                        ; $5a4c: $50
	sbc  b                                           ; $5a4d: $98
	ld   e, d                                        ; $5a4e: $5a
	halt                                             ; $5a4f: $76
	ld   d, h                                        ; $5a50: $54
	sbc  a                                           ; $5a51: $9f
	dec  c                                           ; $5a52: $0d
	nop                                              ; $5a53: $00
	ld   a, [bc]                                     ; $5a54: $0a
	ld   bc, wRandomNumStruct                                   ; $5a55: $01 $a7 $c2
	ld   a, l                                        ; $5a58: $7d
	inc  b                                           ; $5a59: $04
	ld   c, $03                                      ; $5a5a: $0e $03
	sbc  l                                           ; $5a5c: $9d
	inc  b                                           ; $5a5d: $04
	and  [hl]                                        ; $5a5e: $a6
	sub  d                                           ; $5a5f: $92
	sbc  a                                           ; $5a60: $9f
	dec  c                                           ; $5a61: $0d
	adc  c                                           ; $5a62: $89
	ld   a, b                                        ; $5a63: $78
	sbc  [hl]                                        ; $5a64: $9e
	ld   e, b                                        ; $5a65: $58
	sub  d                                           ; $5a66: $92
	ld   h, a                                        ; $5a67: $67
	adc  l                                           ; $5a68: $8d
	sbc  a                                           ; $5a69: $9f
	dec  c                                           ; $5a6a: $0d
	nop                                              ; $5a6b: $00
	ld   a, [bc]                                     ; $5a6c: $0a
	dec  c                                           ; $5a6d: $0d
	nop                                              ; $5a6e: $00
	nop                                              ; $5a6f: $00
	rrca                                             ; $5a70: $0f
	nop                                              ; $5a71: $00
	ld   bc, $1e09                                   ; $5a72: $01 $09 $1e
	nop                                              ; $5a75: $00
	rrca                                             ; $5a76: $0f
	nop                                              ; $5a77: $00
	ld   bc, $0401                                   ; $5a78: $01 $01 $04
	ld   c, $04                                      ; $5a7b: $0e $04
	adc  h                                           ; $5a7d: $8c
	ld   l, [hl]                                     ; $5a7e: $6e
	ld   a, [$0310]                                  ; $5a7f: $fa $10 $03
	db   $dd                                         ; $5a82: $dd
	ld   b, $48                                      ; $5a83: $06 $48
	ld   l, [hl]                                     ; $5a85: $6e
	ld   a, [$000d]                                  ; $5a86: $fa $0d $00
	ld   a, [bc]                                     ; $5a89: $0a
	rrca                                             ; $5a8a: $0f
	dec  b                                           ; $5a8b: $05
	ld   [$6f01], sp                                 ; $5a8c: $08 $01 $6f
	sub  c                                           ; $5a8f: $91
	ld   d, h                                        ; $5a90: $54
	sbc  [hl]                                        ; $5a91: $9e
	ld   l, a                                        ; $5a92: $6f
	sub  c                                           ; $5a93: $91
	ld   d, h                                        ; $5a94: $54
	sbc  a                                           ; $5a95: $9f
	inc  bc                                          ; $5a96: $03
	db   $dd                                         ; $5a97: $dd
	ld   b, $48                                      ; $5a98: $06 $48
	ld   l, a                                        ; $5a9a: $6f
	sub  c                                           ; $5a9b: $91
	ld   d, h                                        ; $5a9c: $54
	sbc  a                                           ; $5a9d: $9f
	dec  c                                           ; $5a9e: $0d
	and  a                                           ; $5a9f: $a7
	jp   nz, $9e5a                                   ; $5aa0: $c2 $5a $9e

	ld   l, a                                        ; $5aa3: $6f
	sub  l                                           ; $5aa4: $95
	ld   [hl], c                                     ; $5aa5: $71
	halt                                             ; $5aa6: $76
	ld   b, $58                                      ; $5aa7: $06 $58
	inc  b                                           ; $5aa9: $04
	ld   h, c                                        ; $5aaa: $61
	ld   a, h                                        ; $5aab: $7c
	inc  b                                           ; $5aac: $04
	xor  e                                           ; $5aad: $ab
	ld   [bc], a                                     ; $5aae: $02
	ld   a, e                                        ; $5aaf: $7b
	and  b                                           ; $5ab0: $a0
	dec  c                                           ; $5ab1: $0d
	adc  h                                           ; $5ab2: $8c
	ld   l, a                                        ; $5ab3: $6f
	ld   e, d                                        ; $5ab4: $5a
	ld   d, [hl]                                     ; $5ab5: $56
	ld   l, l                                        ; $5ab6: $6d
	ld   l, [hl]                                     ; $5ab7: $6e
	ld   e, a                                        ; $5ab8: $5f
	sub  d                                           ; $5ab9: $92
	sbc  a                                           ; $5aba: $9f
	dec  c                                           ; $5abb: $0d
	nop                                              ; $5abc: $00
	ld   a, [bc]                                     ; $5abd: $0a
	ld   bc, $fb96                                   ; $5abe: $01 $96 $fb
	ld   d, b                                        ; $5ac1: $50
	sbc  c                                           ; $5ac2: $99
	ld   h, c                                        ; $5ac3: $61
	ld   [hl], c                                     ; $5ac4: $71
	ld   l, a                                        ; $5ac5: $6f
	sub  c                                           ; $5ac6: $91
	ld   e, c                                        ; $5ac7: $59
	sub  a                                           ; $5ac8: $97
	sbc  [hl]                                        ; $5ac9: $9e
	dec  c                                           ; $5aca: $0d
	ld   d, b                                        ; $5acb: $50
	and  c                                           ; $5acc: $a1
	adc  h                                           ; $5acd: $8c
	ld   h, l                                        ; $5ace: $65
	ld   [bc], a                                     ; $5acf: $02
	and  c                                           ; $5ad0: $a1
	ld   a, c                                        ; $5ad1: $79
	ld   l, c                                        ; $5ad2: $69
	and  c                                           ; $5ad3: $a1
	sub  [hl]                                        ; $5ad4: $96
	ld   d, h                                        ; $5ad5: $54
	ld   a, c                                        ; $5ad6: $79
	ld   a, b                                        ; $5ad7: $78
	sbc  a                                           ; $5ad8: $9f
	dec  c                                           ; $5ad9: $0d
	adc  c                                           ; $5ada: $89
	ld   a, b                                        ; $5adb: $78
	sbc  [hl]                                        ; $5adc: $9e
	ld   e, b                                        ; $5add: $58
	sub  d                                           ; $5ade: $92
	ld   h, a                                        ; $5adf: $67
	adc  l                                           ; $5ae0: $8d
	sbc  a                                           ; $5ae1: $9f
	dec  c                                           ; $5ae2: $0d
	nop                                              ; $5ae3: $00
	ld   a, [bc]                                     ; $5ae4: $0a
	dec  c                                           ; $5ae5: $0d
	nop                                              ; $5ae6: $00
	nop                                              ; $5ae7: $00
	rrca                                             ; $5ae8: $0f
	nop                                              ; $5ae9: $00
	ld   bc, $1e09                                   ; $5aea: $01 $09 $1e
	nop                                              ; $5aed: $00
	rrca                                             ; $5aee: $0f
	nop                                              ; $5aef: $00
	ld   bc, $5401                                   ; $5af0: $01 $01 $54
	sbc  l                                           ; $5af3: $9d
	db   $fc                                         ; $5af4: $fc
	ld   a, [GetRandomNumInPreSpecifiedRange]                                  ; $5af5: $fa $10 $0d
	ld   [bc], a                                     ; $5af8: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5af9: $cf
	dec  b                                           ; $5afa: $05
	ld   a, [de]                                     ; $5afb: $1a
	ld   h, e                                        ; $5afc: $63
	and  c                                           ; $5afd: $a1
	ld   e, d                                        ; $5afe: $5a
	ld   b, $0d                                      ; $5aff: $06 $0d
	inc  b                                           ; $5b01: $04
	ld   e, [hl]                                     ; $5b02: $5e
	ld   h, l                                        ; $5b03: $65
	ld   l, a                                        ; $5b04: $6f
	sub  c                                           ; $5b05: $91
	ld   [hl], c                                     ; $5b06: $71
	ld   l, l                                        ; $5b07: $6d
	sub  [hl]                                        ; $5b08: $96
	db   $fc                                         ; $5b09: $fc
	dec  c                                           ; $5b0a: $0d
	nop                                              ; $5b0b: $00
	ld   a, [bc]                                     ; $5b0c: $0a
	rrca                                             ; $5b0d: $0f
	dec  b                                           ; $5b0e: $05
	ld   [$5801], sp                                 ; $5b0f: $08 $01 $58
	ld   d, d                                        ; $5b12: $52
	ld   e, b                                        ; $5b13: $58
	ld   d, d                                        ; $5b14: $52
	sbc  [hl]                                        ; $5b15: $9e
	ld   a, b                                        ; $5b16: $78
	and  c                                           ; $5b17: $a1
	ld   [hl], l                                     ; $5b18: $75
	and  a                                           ; $5b19: $a7
	jp   nz, $0d5a                                   ; $5b1a: $c2 $5a $0d

	ld   b, $0d                                      ; $5b1d: $06 $0d
	inc  b                                           ; $5b1f: $04
	ld   e, [hl]                                     ; $5b20: $5e
	ld   l, c                                        ; $5b21: $69
	ld   a, b                                        ; $5b22: $78
	ld   d, b                                        ; $5b23: $50
	ld   e, c                                        ; $5b24: $59
	and  c                                           ; $5b25: $a1
	ld   a, e                                        ; $5b26: $7b
	and  c                                           ; $5b27: $a1
	sbc  a                                           ; $5b28: $9f
	dec  c                                           ; $5b29: $0d
	ld   b, $0d                                      ; $5b2a: $06 $0d
	inc  b                                           ; $5b2c: $04
	ld   e, [hl]                                     ; $5b2d: $5e
	ld   h, l                                        ; $5b2e: $65
	ld   l, l                                        ; $5b2f: $6d
	and  c                                           ; $5b30: $a1
	ld   a, l                                        ; $5b31: $7d
	sbc  [hl]                                        ; $5b32: $9e
	ld   b, $58                                      ; $5b33: $06 $58
	inc  b                                           ; $5b35: $04
	ld   h, c                                        ; $5b36: $61
	sub  d                                           ; $5b37: $92
	sbc  a                                           ; $5b38: $9f
	dec  c                                           ; $5b39: $0d
	nop                                              ; $5b3a: $00
	ld   a, [bc]                                     ; $5b3b: $0a
	dec  e                                           ; $5b3c: $1d
	ld   b, b                                        ; $5b3d: $40
	dec  d                                           ; $5b3e: $15
	inc  bc                                          ; $5b3f: $03
	dec  d                                           ; $5b40: $15
	ld   bc, $2803                                   ; $5b41: $01 $03 $28
	nop                                              ; $5b44: $00
	ld   bc, $9269                                   ; $5b45: $01 $69 $92
	ld   e, a                                        ; $5b48: $5f
	ld   [hl], a                                     ; $5b49: $77
	sbc  [hl]                                        ; $5b4a: $9e
	ld   [bc], a                                     ; $5b4b: $02
	and  l                                           ; $5b4c: $a5
	ld   a, h                                        ; $5b4d: $7c
	db   $dd                                         ; $5b4e: $dd
	or   d                                           ; $5b4f: $b2
	ld   a, l                                        ; $5b50: $7d
	dec  c                                           ; $5b51: $0d
	ld   a, b                                        ; $5b52: $78
	ld   e, c                                        ; $5b53: $59
	ld   a, b                                        ; $5b54: $78
	ld   e, c                                        ; $5b55: $59
	ld   e, b                                        ; $5b56: $58
	sub  b                                           ; $5b57: $90
	sbc  e                                           ; $5b58: $9b
	ld   d, d                                        ; $5b59: $52
	ld   a, b                                        ; $5b5a: $78
	db   $fc                                         ; $5b5b: $fc
	sbc  a                                           ; $5b5c: $9f
	dec  c                                           ; $5b5d: $0d
	ld   [$7d00], sp                                 ; $5b5e: $08 $00 $7d
	and  c                                           ; $5b61: $a1
	sbc  [hl]                                        ; $5b62: $9e
	sub  d                                           ; $5b63: $92
	sbc  c                                           ; $5b64: $99
	sub  d                                           ; $5b65: $92
	and  c                                           ; $5b66: $a1
	sbc  a                                           ; $5b67: $9f
	dec  c                                           ; $5b68: $0d
	nop                                              ; $5b69: $00
	ld   a, [bc]                                     ; $5b6a: $0a
	ld   bc, $508c                                   ; $5b6b: $01 $8c $50
	sbc  [hl]                                        ; $5b6e: $9e
	ld   [bc], a                                     ; $5b6f: $02
	and  l                                           ; $5b70: $a5
	adc  l                                           ; $5b71: $8d
	ld   l, l                                        ; $5b72: $6d
	ld   d, d                                        ; $5b73: $52
	ld   a, b                                        ; $5b74: $78
	ld   b, $0d                                      ; $5b75: $06 $0d
	inc  b                                           ; $5b77: $04
	ld   e, [hl]                                     ; $5b78: $5e
	ld   a, l                                        ; $5b79: $7d
	dec  c                                           ; $5b7a: $0d
	sub  [hl]                                        ; $5b7b: $96
	ei                                               ; $5b7c: $fb
	ld   d, b                                        ; $5b7d: $50
	sbc  c                                           ; $5b7e: $99
	ld   h, c                                        ; $5b7f: $61
	ld   [hl], c                                     ; $5b80: $71
	ld   l, a                                        ; $5b81: $6f
	sub  c                                           ; $5b82: $91
	ld   e, c                                        ; $5b83: $59
	sub  a                                           ; $5b84: $97
	sbc  [hl]                                        ; $5b85: $9e
	dec  c                                           ; $5b86: $0d
	ld   d, b                                        ; $5b87: $50
	and  c                                           ; $5b88: $a1
	adc  h                                           ; $5b89: $8c
	ld   h, l                                        ; $5b8a: $65
	ld   [bc], a                                     ; $5b8b: $02
	and  c                                           ; $5b8c: $a1
	ld   a, c                                        ; $5b8d: $79
	ld   l, c                                        ; $5b8e: $69
	and  c                                           ; $5b8f: $a1
	sub  [hl]                                        ; $5b90: $96
	ld   d, h                                        ; $5b91: $54
	ld   a, c                                        ; $5b92: $79
	ld   a, b                                        ; $5b93: $78
	sbc  a                                           ; $5b94: $9f
	dec  c                                           ; $5b95: $0d
	nop                                              ; $5b96: $00
	ld   a, [bc]                                     ; $5b97: $0a
	ld   bc, $7889                                   ; $5b98: $01 $89 $78
	sbc  [hl]                                        ; $5b9b: $9e
	ld   e, b                                        ; $5b9c: $58
	sub  d                                           ; $5b9d: $92
	ld   h, a                                        ; $5b9e: $67
	adc  l                                           ; $5b9f: $8d
	sbc  a                                           ; $5ba0: $9f
	dec  c                                           ; $5ba1: $0d
	nop                                              ; $5ba2: $00
	ld   a, [bc]                                     ; $5ba3: $0a
	dec  c                                           ; $5ba4: $0d
	nop                                              ; $5ba5: $00
	nop                                              ; $5ba6: $00
	rrca                                             ; $5ba7: $0f
	nop                                              ; $5ba8: $00
	ld   bc, $1e09                                   ; $5ba9: $01 $09 $1e
	nop                                              ; $5bac: $00
	rrca                                             ; $5bad: $0f
	dec  b                                           ; $5bae: $05
	ld   [$5201], sp                                 ; $5baf: $08 $01 $52
	sub  d                                           ; $5bb2: $92
	db   $fc                                         ; $5bb3: $fc
	sbc  [hl]                                        ; $5bb4: $9e
	ld   h, a                                        ; $5bb5: $67
	adc  h                                           ; $5bb6: $8c
	and  c                                           ; $5bb7: $a1
	ld   h, a                                        ; $5bb8: $67
	adc  h                                           ; $5bb9: $8c
	and  c                                           ; $5bba: $a1
	sbc  a                                           ; $5bbb: $9f
	dec  c                                           ; $5bbc: $0d
	ld   l, a                                        ; $5bbd: $6f
	sub  l                                           ; $5bbe: $95
	ld   h, c                                        ; $5bbf: $61
	ld   [hl], c                                     ; $5bc0: $71
	halt                                             ; $5bc1: $76
	ld   b, $58                                      ; $5bc2: $06 $58
	inc  b                                           ; $5bc4: $04
	ld   h, c                                        ; $5bc5: $61
	ld   a, h                                        ; $5bc6: $7c
	inc  b                                           ; $5bc7: $04
	xor  e                                           ; $5bc8: $ab
	ld   [bc], a                                     ; $5bc9: $02
	ld   a, e                                        ; $5bca: $7b
	dec  c                                           ; $5bcb: $0d
	adc  h                                           ; $5bcc: $8c
	ld   l, a                                        ; $5bcd: $6f
	ld   e, d                                        ; $5bce: $5a
	ld   d, [hl]                                     ; $5bcf: $56
	ld   [hl], h                                     ; $5bd0: $74
	ld   a, b                                        ; $5bd1: $78
	rst  $38                                         ; $5bd2: $ff
	sbc  a                                           ; $5bd3: $9f
	dec  c                                           ; $5bd4: $0d
	nop                                              ; $5bd5: $00
	ld   a, [bc]                                     ; $5bd6: $0a
	ld   bc, $508c                                   ; $5bd7: $01 $8c $50
	sbc  [hl]                                        ; $5bda: $9e
	sub  [hl]                                        ; $5bdb: $96
	ei                                               ; $5bdc: $fb
	ld   d, b                                        ; $5bdd: $50
	sbc  c                                           ; $5bde: $99
	ld   h, c                                        ; $5bdf: $61
	ld   [hl], c                                     ; $5be0: $71
	ld   l, a                                        ; $5be1: $6f
	sub  c                                           ; $5be2: $91
	ld   e, c                                        ; $5be3: $59
	sub  a                                           ; $5be4: $97
	dec  c                                           ; $5be5: $0d
	ld   [bc], a                                     ; $5be6: $02
	and  c                                           ; $5be7: $a1
	ld   a, c                                        ; $5be8: $79
	ld   l, c                                        ; $5be9: $69
	and  c                                           ; $5bea: $a1
	ld   [hl], l                                     ; $5beb: $75
	xor  c                                           ; $5bec: $a9
	xor  c                                           ; $5bed: $a9
	ld   [hl], l                                     ; $5bee: $75
	sbc  a                                           ; $5bef: $9f
	dec  c                                           ; $5bf0: $0d
	adc  c                                           ; $5bf1: $89
	ld   a, b                                        ; $5bf2: $78
	sbc  [hl]                                        ; $5bf3: $9e
	ld   e, b                                        ; $5bf4: $58
	sub  d                                           ; $5bf5: $92
	ld   h, a                                        ; $5bf6: $67
	adc  l                                           ; $5bf7: $8d
	sbc  a                                           ; $5bf8: $9f
	dec  c                                           ; $5bf9: $0d
	nop                                              ; $5bfa: $00
	ld   a, [bc]                                     ; $5bfb: $0a
	dec  c                                           ; $5bfc: $0d
	nop                                              ; $5bfd: $00
	nop                                              ; $5bfe: $00
	rrca                                             ; $5bff: $0f
	nop                                              ; $5c00: $00
	ld   bc, $1e09                                   ; $5c01: $01 $09 $1e
	nop                                              ; $5c04: $00
	nop                                              ; $5c05: $00
	inc  e                                           ; $5c06: $1c
	inc  bc                                          ; $5c07: $03
	nop                                              ; $5c08: $00
	nop                                              ; $5c09: $00
	ld   [bc], a                                     ; $5c0a: $02
	ld   bc, $9750                                   ; $5c0b: $01 $50 $97
	sbc  [hl]                                        ; $5c0e: $9e
	ld   [$5d00], sp                                 ; $5c0f: $08 $00 $5d
	and  c                                           ; $5c12: $a1
	sbc  a                                           ; $5c13: $9f
	dec  c                                           ; $5c14: $0d
	nop                                              ; $5c15: $00
	ld   a, [bc]                                     ; $5c16: $0a
	ld   bc, $546b                                   ; $5c17: $01 $6b $54
	ld   d, d                                        ; $5c1a: $52
	ld   d, [hl]                                     ; $5c1b: $56
	ld   a, [hl]                                     ; $5c1c: $7e
	sbc  [hl]                                        ; $5c1d: $9e
	ld   [$5d00], sp                                 ; $5c1e: $08 $00 $5d
	and  c                                           ; $5c21: $a1
	ld   a, l                                        ; $5c22: $7d
	dec  c                                           ; $5c23: $0d
	ld   [hl], a                                     ; $5c24: $77
	ld   d, h                                        ; $5c25: $54
	ld   h, l                                        ; $5c26: $65
	ld   [hl], h                                     ; $5c27: $74
	inc  b                                           ; $5c28: $04
	dec  c                                           ; $5c29: $0d
	ld   [bc], a                                     ; $5c2a: $02
	sub  [hl]                                        ; $5c2b: $96
	inc  b                                           ; $5c2c: $04
	ld   b, l                                        ; $5c2d: $45
	inc  b                                           ; $5c2e: $04
	ld   a, [bc]                                     ; $5c2f: $0a
	ld   h, l                                        ; $5c30: $65
	sub  [hl]                                        ; $5c31: $96
	ld   d, h                                        ; $5c32: $54
	halt                                             ; $5c33: $76
	dec  c                                           ; $5c34: $0d
	dec  b                                           ; $5c35: $05
	pop  de                                          ; $5c36: $d1
	ld   [hl], c                                     ; $5c37: $71
	ld   l, l                                        ; $5c38: $6d
	ld   a, h                                        ; $5c39: $7c
	ld   sp, hl                                      ; $5c3a: $f9
	dec  c                                           ; $5c3b: $0d
	nop                                              ; $5c3c: $00
	ld   a, [bc]                                     ; $5c3d: $0a
	add  hl, de                                      ; $5c3e: $19
	dec  b                                           ; $5c3f: $05
	inc  bc                                          ; $5c40: $03
	jp   nz, $eee5                                   ; $5c41: $c2 $e5 $ee

	push af                                          ; $5c44: $f5
	cp   c                                           ; $5c45: $b9
	dec  b                                           ; $5c46: $05
	ldh  [$03], a                                    ; $5c47: $e0 $03
	sub  b                                           ; $5c49: $90
	ld   [hl], l                                     ; $5c4a: $75
	nop                                              ; $5c4b: $00
	nop                                              ; $5c4c: $00
	inc  b                                           ; $5c4d: $04
	ld   [$2f04], sp                                 ; $5c4e: $08 $04 $2f
	and  b                                           ; $5c51: $a0
	inc  bc                                          ; $5c52: $03
	sub  e                                           ; $5c53: $93
	sbc  c                                           ; $5c54: $99
	ld   l, l                                        ; $5c55: $6d
	adc  a                                           ; $5c56: $8f
	ld   a, c                                        ; $5c57: $79
	nop                                              ; $5c58: $00
	ld   bc, $c4ac                                   ; $5c59: $01 $ac $c4
	or   h                                           ; $5c5c: $b4
	and  l                                           ; $5c5d: $a5
	and  l                                           ; $5c5e: $a5
	ld   e, c                                        ; $5c5f: $59
	sub  a                                           ; $5c60: $97
	nop                                              ; $5c61: $00
	ld   [bc], a                                     ; $5c62: $02
	rlca                                             ; $5c63: $07
	ld   a, e                                        ; $5c64: $7b
	nop                                              ; $5c65: $00
	ld   [bc], a                                     ; $5c66: $02
	inc  bc                                          ; $5c67: $03
	ld   bc, $2000                                   ; $5c68: $01 $00 $20
	nop                                              ; $5c6b: $00
	rlca                                             ; $5c6c: $07
	rst  $10                                         ; $5c6d: $d7
	nop                                              ; $5c6e: $00
	ld   [bc], a                                     ; $5c6f: $02
	inc  bc                                          ; $5c70: $03
	ld   bc, $2001                                   ; $5c71: $01 $01 $20
	nop                                              ; $5c74: $00
	rlca                                             ; $5c75: $07
	add  c                                           ; $5c76: $81
	ld   bc, $0302                                   ; $5c77: $01 $02 $03
	ld   bc, $2002                                   ; $5c7a: $01 $02 $20
	nop                                              ; $5c7d: $00
	ld   b, $5e                                      ; $5c7e: $06 $5e
	ld   [bc], a                                     ; $5c80: $02
	rrca                                             ; $5c81: $0f
	nop                                              ; $5c82: $00
	ld   bc, $6901                                   ; $5c83: $01 $01 $69
	ld   [hl], c                                     ; $5c86: $71
	ld   e, c                                        ; $5c87: $59
	ld   e, l                                        ; $5c88: $5d
	inc  b                                           ; $5c89: $04
	ld   l, l                                        ; $5c8a: $6d
	ld   a, c                                        ; $5c8b: $79
	inc  b                                           ; $5c8c: $04
	call nc, $04a0                                   ; $5c8d: $d4 $a0 $04
	ld   [hl], c                                     ; $5c90: $71
	ld   e, a                                        ; $5c91: $5f
	ld   [hl], h                                     ; $5c92: $74
	ld   d, d                                        ; $5c93: $52
	ld   l, l                                        ; $5c94: $6d
	ld   l, [hl]                                     ; $5c95: $6e
	dec  c                                           ; $5c96: $0d
	ld   d, d                                        ; $5c97: $52
	ld   l, l                                        ; $5c98: $6d
	ld   a, h                                        ; $5c99: $7c
	ld   [hl], l                                     ; $5c9a: $75
	ld   h, a                                        ; $5c9b: $67
	ld   e, c                                        ; $5c9c: $59
	sub  a                                           ; $5c9d: $97
	sbc  [hl]                                        ; $5c9e: $9e
	jp   nz, $eee5                                   ; $5c9f: $c2 $e5 $ee

	push af                                          ; $5ca2: $f5
	cp   c                                           ; $5ca3: $b9
	dec  c                                           ; $5ca4: $0d
	ld   h, l                                        ; $5ca5: $65
	ld   [hl], h                                     ; $5ca6: $74
	adc  l                                           ; $5ca7: $8d
	sub  [hl]                                        ; $5ca8: $96
	ld   d, h                                        ; $5ca9: $54
	halt                                             ; $5caa: $76
	dec  b                                           ; $5cab: $05
	pop  de                                          ; $5cac: $d1
	ld   [hl], c                                     ; $5cad: $71
	ld   l, l                                        ; $5cae: $6d
	ld   a, h                                        ; $5caf: $7c
	ld   [hl], l                                     ; $5cb0: $75
	ld   h, a                                        ; $5cb1: $67
	sbc  a                                           ; $5cb2: $9f
	dec  c                                           ; $5cb3: $0d
	nop                                              ; $5cb4: $00
	ld   a, [bc]                                     ; $5cb5: $0a
	inc  e                                           ; $5cb6: $1c
	inc  bc                                          ; $5cb7: $03
	inc  bc                                          ; $5cb8: $03
	inc  bc                                          ; $5cb9: $03
	dec  e                                           ; $5cba: $1d
	ld   b, b                                        ; $5cbb: $40
	inc  de                                          ; $5cbc: $13
	inc  bc                                          ; $5cbd: $03
	inc  de                                          ; $5cbe: $13
	ld   bc, $2802                                   ; $5cbf: $01 $02 $28
	nop                                              ; $5cc2: $00
	ld   bc, $546b                                   ; $5cc3: $01 $6b $54
	ld   a, b                                        ; $5cc6: $78
	ld   a, h                                        ; $5cc7: $7c
	sbc  a                                           ; $5cc8: $9f
	dec  c                                           ; $5cc9: $0d
	dec  b                                           ; $5cca: $05
	rra                                              ; $5ccb: $1f
	ld   d, d                                        ; $5ccc: $52
	ld   h, c                                        ; $5ccd: $61
	halt                                             ; $5cce: $76
	ld   [hl], c                                     ; $5ccf: $71
	ld   [hl], h                                     ; $5cd0: $74
	sbc  [hl]                                        ; $5cd1: $9e
	ld   d, d                                        ; $5cd2: $52
	ld   d, d                                        ; $5cd3: $52
	sbc  l                                           ; $5cd4: $9d
	ld   a, e                                        ; $5cd5: $7b
	sbc  a                                           ; $5cd6: $9f
	dec  c                                           ; $5cd7: $0d
	nop                                              ; $5cd8: $00
	ld   a, [bc]                                     ; $5cd9: $0a
	ld   b, $4b                                      ; $5cda: $06 $4b
	ld   bc, $000f                                   ; $5cdc: $01 $0f $00
	ld   bc, $9001                                   ; $5cdf: $01 $01 $90
	ld   l, a                                        ; $5ce2: $6f
	sbc  e                                           ; $5ce3: $9b
	and  c                                           ; $5ce4: $a1
	inc  b                                           ; $5ce5: $04
	ld   [$2f04], sp                                 ; $5ce6: $08 $04 $2f
	and  b                                           ; $5ce9: $a0
	inc  bc                                          ; $5cea: $03
	sub  e                                           ; $5ceb: $93
	sbc  c                                           ; $5cec: $99
	ld   l, l                                        ; $5ced: $6d
	adc  a                                           ; $5cee: $8f
	ld   [hl], l                                     ; $5cef: $75
	ld   h, a                                        ; $5cf0: $67
	sbc  a                                           ; $5cf1: $9f
	dec  c                                           ; $5cf2: $0d
	inc  b                                           ; $5cf3: $04
	ld   l, l                                        ; $5cf4: $6d
	ld   a, c                                        ; $5cf5: $79
	inc  bc                                          ; $5cf6: $03
	add  b                                           ; $5cf7: $80
	dec  b                                           ; $5cf8: $05
	db   $10                                         ; $5cf9: $10
	sbc  c                                           ; $5cfa: $99
	ld   h, c                                        ; $5cfb: $61
	halt                                             ; $5cfc: $76
	ld   e, d                                        ; $5cfd: $5a
	ld   d, b                                        ; $5cfe: $50
	sbc  c                                           ; $5cff: $99
	ld   a, h                                        ; $5d00: $7c
	ld   a, b                                        ; $5d01: $78
	sub  a                                           ; $5d02: $97
	dec  c                                           ; $5d03: $0d
	inc  b                                           ; $5d04: $04
	ld   c, c                                        ; $5d05: $49
	ld   [hl], l                                     ; $5d06: $75
	sub  b                                           ; $5d07: $90
	sub  d                                           ; $5d08: $92
	sbc  b                                           ; $5d09: $98
	ld   l, l                                        ; $5d0a: $6d
	ld   d, d                                        ; $5d0b: $52
	halt                                             ; $5d0c: $76
	dec  b                                           ; $5d0d: $05
	pop  de                                          ; $5d0e: $d1
	ld   d, d                                        ; $5d0f: $52
	adc  h                                           ; $5d10: $8c
	ld   h, a                                        ; $5d11: $67
	sbc  a                                           ; $5d12: $9f
	dec  c                                           ; $5d13: $0d
	nop                                              ; $5d14: $00
	ld   a, [bc]                                     ; $5d15: $0a
	inc  e                                           ; $5d16: $1c
	inc  bc                                          ; $5d17: $03
	inc  bc                                          ; $5d18: $03
	inc  bc                                          ; $5d19: $03
	dec  e                                           ; $5d1a: $1d
	ld   b, b                                        ; $5d1b: $40
	inc  de                                          ; $5d1c: $13
	inc  bc                                          ; $5d1d: $03
	inc  de                                          ; $5d1e: $13
	ld   bc, $2803                                   ; $5d1f: $01 $03 $28
	nop                                              ; $5d22: $00
	ld   bc, $7198                                   ; $5d23: $01 $98 $71
	ld   a, a                                        ; $5d26: $7f
	ld   a, b                                        ; $5d27: $78
	inc  bc                                          ; $5d28: $03
	ld   [hl], l                                     ; $5d29: $75
	ld   e, d                                        ; $5d2a: $5a
	ld   e, a                                        ; $5d2b: $5f
	ld   a, e                                        ; $5d2c: $7b
	sbc  a                                           ; $5d2d: $9f
	dec  c                                           ; $5d2e: $0d
	ld   [bc], a                                     ; $5d2f: $02
	and  l                                           ; $5d30: $a5
	ld   a, h                                        ; $5d31: $7c
	ld   l, e                                        ; $5d32: $6b
	ld   a, h                                        ; $5d33: $7c
	ld   [bc], a                                     ; $5d34: $02
	and  c                                           ; $5d35: $a1
	inc  bc                                          ; $5d36: $03
	and  b                                           ; $5d37: $a0
	ld   l, a                                        ; $5d38: $6f
	sbc  [hl]                                        ; $5d39: $9e
	ld   d, d                                        ; $5d3a: $52
	ld   [hl], d                                     ; $5d3b: $72
	adc  h                                           ; $5d3c: $8c
	ld   [hl], l                                     ; $5d3d: $75
	sub  b                                           ; $5d3e: $90
	dec  c                                           ; $5d3f: $0d
	sbc  l                                           ; $5d40: $9d
	ld   h, a                                        ; $5d41: $67
	sbc  d                                           ; $5d42: $9a
	ld   a, b                                        ; $5d43: $78
	ld   d, d                                        ; $5d44: $52
	ld   [hl], l                                     ; $5d45: $75
	ld   d, d                                        ; $5d46: $52
	ld   a, b                                        ; $5d47: $78
	ld   h, e                                        ; $5d48: $63
	ld   d, d                                        ; $5d49: $52
	sbc  a                                           ; $5d4a: $9f
	dec  c                                           ; $5d4b: $0d
	nop                                              ; $5d4c: $00
	ld   a, [bc]                                     ; $5d4d: $0a
	ld   b, $4b                                      ; $5d4e: $06 $4b
	ld   bc, $7501                                   ; $5d50: $01 $01 $75
	sub  b                                           ; $5d53: $90
	sbc  [hl]                                        ; $5d54: $9e
	ld   h, c                                        ; $5d55: $61
	ld   h, c                                        ; $5d56: $61
	ld   [hl], l                                     ; $5d57: $75
	ld   a, h                                        ; $5d58: $7c
	inc  bc                                          ; $5d59: $03
	ld   l, l                                        ; $5d5a: $6d
	dec  b                                           ; $5d5b: $05
	add  hl, de                                      ; $5d5c: $19
	ld   a, l                                        ; $5d5d: $7d
	inc  b                                           ; $5d5e: $04
	ld   c, $04                                      ; $5d5f: $0e $04
	adc  h                                           ; $5d61: $8c
	sub  [hl]                                        ; $5d62: $96
	sbc  a                                           ; $5d63: $9f
	dec  c                                           ; $5d64: $0d
	ld   h, l                                        ; $5d65: $65
	ld   [hl], c                                     ; $5d66: $71
	ld   e, c                                        ; $5d67: $59
	sbc  b                                           ; $5d68: $98
	halt                                             ; $5d69: $76
	ld   [bc], a                                     ; $5d6a: $02
	and  c                                           ; $5d6b: $a1
	and  b                                           ; $5d6c: $a0
	add  b                                           ; $5d6d: $80
	ld   e, e                                        ; $5d6e: $5b
	ld   h, l                                        ; $5d6f: $65
	adc  a                                           ; $5d70: $8f
	ld   [hl], h                                     ; $5d71: $74
	dec  c                                           ; $5d72: $0d
	ld   e, d                                        ; $5d73: $5a
	and  c                                           ; $5d74: $a1
	ld   a, [hl]                                     ; $5d75: $7e
	sbc  b                                           ; $5d76: $98
	ld   a, b                                        ; $5d77: $78
	ld   h, e                                        ; $5d78: $63
	ld   d, d                                        ; $5d79: $52
	sbc  a                                           ; $5d7a: $9f
	dec  c                                           ; $5d7b: $0d
	nop                                              ; $5d7c: $00
	ld   a, [bc]                                     ; $5d7d: $0a
	dec  c                                           ; $5d7e: $0d
	nop                                              ; $5d7f: $00
	nop                                              ; $5d80: $00
	rrca                                             ; $5d81: $0f
	nop                                              ; $5d82: $00
	ld   bc, $1e09                                   ; $5d83: $01 $09 $1e
	nop                                              ; $5d86: $00
	rrca                                             ; $5d87: $0f
	nop                                              ; $5d88: $00
	ld   bc, $9001                                   ; $5d89: $01 $01 $90
	ld   l, a                                        ; $5d8c: $6f
	sbc  e                                           ; $5d8d: $9b
	and  c                                           ; $5d8e: $a1
	xor  h                                           ; $5d8f: $ac
	call nz, $a5b4                                   ; $5d90: $c4 $b4 $a5
	and  l                                           ; $5d93: $a5
	ld   e, c                                        ; $5d94: $59
	sub  a                                           ; $5d95: $97
	ld   [hl], l                                     ; $5d96: $75
	ld   h, a                                        ; $5d97: $67
	sbc  a                                           ; $5d98: $9f
	dec  c                                           ; $5d99: $0d
	inc  b                                           ; $5d9a: $04
	ld   [$2f04], sp                                 ; $5d9b: $08 $04 $2f
	and  b                                           ; $5d9e: $a0
	inc  bc                                          ; $5d9f: $03
	sub  e                                           ; $5da0: $93
	sbc  c                                           ; $5da1: $99
	inc  bc                                          ; $5da2: $03
	ld   c, d                                        ; $5da3: $4a
	ld   [bc], a                                     ; $5da4: $02
	ld   a, c                                        ; $5da5: $79
	ld   a, h                                        ; $5da6: $7c
	inc  b                                           ; $5da7: $04
	jp   nc, $7804                                   ; $5da8: $d2 $04 $78

	ld   a, b                                        ; $5dab: $78
	and  c                                           ; $5dac: $a1
	ld   [hl], h                                     ; $5dad: $74
	dec  c                                           ; $5dae: $0d
	inc  bc                                          ; $5daf: $03
	ld   l, [hl]                                     ; $5db0: $6e
	ld   a, h                                        ; $5db1: $7c
	inc  bc                                          ; $5db2: $03
	add  [hl]                                        ; $5db3: $86
	ld   a, c                                        ; $5db4: $79
	sub  b                                           ; $5db5: $90
	db   $e4                                         ; $5db6: $e4
	rst  ToBoot                                         ; $5db7: $c7
	ld   l, e                                        ; $5db8: $6b
	ld   d, h                                        ; $5db9: $54
	ld   [hl], l                                     ; $5dba: $75
	ld   h, a                                        ; $5dbb: $67
	ld   h, l                                        ; $5dbc: $65
	sbc  a                                           ; $5dbd: $9f
	dec  c                                           ; $5dbe: $0d
	nop                                              ; $5dbf: $00
	ld   a, [bc]                                     ; $5dc0: $0a
	inc  e                                           ; $5dc1: $1c
	inc  bc                                          ; $5dc2: $03
	ld   b, $06                                      ; $5dc3: $06 $06
	ld   bc, $6483                                   ; $5dc5: $01 $83 $64
	ld   e, a                                        ; $5dc8: $5f
	ld   a, b                                        ; $5dc9: $78
	ld   d, d                                        ; $5dca: $52
	ld   [hl], l                                     ; $5dcb: $75
	ld   a, [$6b0d]                                  ; $5dcc: $fa $0d $6b
	and  c                                           ; $5dcf: $a1
	ld   a, b                                        ; $5dd0: $78
	ld   e, c                                        ; $5dd1: $59
	sbc  c                                           ; $5dd2: $99
	ld   d, d                                        ; $5dd3: $52
	ld   [bc], a                                     ; $5dd4: $02
	and  c                                           ; $5dd5: $a1
	inc  bc                                          ; $5dd6: $03
	and  b                                           ; $5dd7: $a0
	ld   l, a                                        ; $5dd8: $6f
	ld   [hl], l                                     ; $5dd9: $75
	ld   d, d                                        ; $5dda: $52
	ld   l, l                                        ; $5ddb: $6d
	sub  a                                           ; $5ddc: $97
	dec  c                                           ; $5ddd: $0d
	inc  b                                           ; $5dde: $04
	ld   c, $b2                                      ; $5ddf: $0e $b2
	xor  l                                           ; $5de1: $ad
	ld   h, a                                        ; $5de2: $67
	sbc  c                                           ; $5de3: $99
	sbc  l                                           ; $5de4: $9d
	sub  [hl]                                        ; $5de5: $96
	sbc  a                                           ; $5de6: $9f
	dec  c                                           ; $5de7: $0d
	nop                                              ; $5de8: $00
	ld   a, [bc]                                     ; $5de9: $0a
	inc  e                                           ; $5dea: $1c
	inc  bc                                          ; $5deb: $03
	ld   [bc], a                                     ; $5dec: $02
	ld   [bc], a                                     ; $5ded: $02
	ld   bc, $0008                                   ; $5dee: $01 $08 $00
	ld   e, l                                        ; $5df1: $5d
	and  c                                           ; $5df2: $a1
	ld   a, c                                        ; $5df3: $79
	ld   a, l                                        ; $5df4: $7d
	dec  c                                           ; $5df5: $0d
	inc  bc                                          ; $5df6: $03
	ld   l, h                                        ; $5df7: $6c
	ld   h, l                                        ; $5df8: $65
	ld   [bc], a                                     ; $5df9: $02
	and  c                                           ; $5dfa: $a1
	and  b                                           ; $5dfb: $a0
	add  b                                           ; $5dfc: $80
	ld   e, e                                        ; $5dfd: $5b
	ld   h, l                                        ; $5dfe: $65
	adc  a                                           ; $5dff: $8f
	ld   [hl], h                                     ; $5e00: $74
	sub  b                                           ; $5e01: $90
	sub  a                                           ; $5e02: $97
	ld   d, h                                        ; $5e03: $54
	dec  c                                           ; $5e04: $0d
	inc  b                                           ; $5e05: $04
	adc  d                                           ; $5e06: $8a
	inc  b                                           ; $5e07: $04
	rst  JumpTable                                         ; $5e08: $df
	ld   e, d                                        ; $5e09: $5a
	ld   d, b                                        ; $5e0a: $50
	sbc  c                                           ; $5e0b: $99
	adc  l                                           ; $5e0c: $8d
	ld   l, l                                        ; $5e0d: $6d
	ld   d, d                                        ; $5e0e: $52
	ld   a, e                                        ; $5e0f: $7b
	sbc  a                                           ; $5e10: $9f
	dec  c                                           ; $5e11: $0d
	nop                                              ; $5e12: $00
	ld   a, [bc]                                     ; $5e13: $0a
	inc  e                                           ; $5e14: $1c
	inc  bc                                          ; $5e15: $03
	ld   [bc], a                                     ; $5e16: $02
	ld   [bc], a                                     ; $5e17: $02
	ld   bc, $cf04                                   ; $5e18: $01 $04 $cf
	inc  b                                           ; $5e1b: $04
	xor  d                                           ; $5e1c: $aa
	ld   a, h                                        ; $5e1d: $7c
	inc  bc                                          ; $5e1e: $03
	ld   d, $02                                      ; $5e1f: $16 $02
	jr   nz, jr_04a_5e27                             ; $5e21: $20 $04

	ld   a, c                                        ; $5e23: $79
	ld   a, c                                        ; $5e24: $79
	dec  c                                           ; $5e25: $0d
	nop                                              ; $5e26: $00

jr_04a_5e27:
	dec  b                                           ; $5e27: $05
	ld   b, b                                        ; $5e28: $40
	ld   c, d                                        ; $5e29: $4a
	ld   [bc], a                                     ; $5e2a: $02
	nop                                              ; $5e2b: $00
	nop                                              ; $5e2c: $00
	dec  b                                           ; $5e2d: $05
	ld   b, b                                        ; $5e2e: $40
	ld   d, b                                        ; $5e2f: $50
	ld   bc, $0001                                   ; $5e30: $01 $01 $00
	ld   bc, $ec03                                   ; $5e33: $01 $03 $ec
	dec  b                                           ; $5e36: $05
	add  hl, de                                      ; $5e37: $19
	inc  bc                                          ; $5e38: $03
	ld   c, l                                        ; $5e39: $4d
	ld   a, c                                        ; $5e3a: $79
	dec  b                                           ; $5e3b: $05
	db   $10                                         ; $5e3c: $10
	ld   a, b                                        ; $5e3d: $78
	ld   h, e                                        ; $5e3e: $63
	ld   d, d                                        ; $5e3f: $52
	sbc  a                                           ; $5e40: $9f
	dec  c                                           ; $5e41: $0d
	nop                                              ; $5e42: $00
	dec  b                                           ; $5e43: $05
	add  b                                           ; $5e44: $80
	ld   h, h                                        ; $5e45: $64
	ld   bc, $0001                                   ; $5e46: $01 $01 $00
	dec  b                                           ; $5e49: $05
	ld   b, b                                        ; $5e4a: $40
	ld   l, e                                        ; $5e4b: $6b
	ld   [bc], a                                     ; $5e4c: $02
	nop                                              ; $5e4d: $00
	ld   bc, $2801                                   ; $5e4e: $01 $01 $28
	nop                                              ; $5e51: $00
	ld   bc, $5252                                   ; $5e52: $01 $52 $52
	sbc  l                                           ; $5e55: $9d
	ld   a, e                                        ; $5e56: $7b
	sbc  a                                           ; $5e57: $9f
	dec  c                                           ; $5e58: $0d
	nop                                              ; $5e59: $00
	ld   a, [bc]                                     ; $5e5a: $0a
	dec  c                                           ; $5e5b: $0d
	nop                                              ; $5e5c: $00
	nop                                              ; $5e5d: $00
	rrca                                             ; $5e5e: $0f
	nop                                              ; $5e5f: $00
	ld   bc, $1e09                                   ; $5e60: $01 $09 $1e
	nop                                              ; $5e63: $00
	inc  e                                           ; $5e64: $1c
	inc  bc                                          ; $5e65: $03
	inc  b                                           ; $5e66: $04
	inc  b                                           ; $5e67: $04
	dec  e                                           ; $5e68: $1d
	ld   b, b                                        ; $5e69: $40
	inc  de                                          ; $5e6a: $13
	inc  bc                                          ; $5e6b: $03
	inc  de                                          ; $5e6c: $13
	ld   bc, $2901                                   ; $5e6d: $01 $01 $29
	nop                                              ; $5e70: $00
	ld   bc, $5477                                   ; $5e71: $01 $77 $54
	ld   h, l                                        ; $5e74: $65
	ld   l, l                                        ; $5e75: $6d
	ld   a, h                                        ; $5e76: $7c
	ld   sp, hl                                      ; $5e77: $f9
	dec  c                                           ; $5e78: $0d
	ld   a, b                                        ; $5e79: $78
	and  c                                           ; $5e7a: $a1
	ld   a, h                                        ; $5e7b: $7c
	dec  b                                           ; $5e7c: $05
	ld   de, $e104                                   ; $5e7d: $11 $04 $e1
	sub  b                                           ; $5e80: $90
	ld   a, b                                        ; $5e81: $78
	ld   e, l                                        ; $5e82: $5d
	ld   h, c                                        ; $5e83: $61
	ld   h, c                                        ; $5e84: $61
	ld   a, c                                        ; $5e85: $79
	dec  b                                           ; $5e86: $05
	db   $10                                         ; $5e87: $10
	ld   l, l                                        ; $5e88: $6d
	dec  c                                           ; $5e89: $0d
	sbc  l                                           ; $5e8a: $9d
	ld   e, a                                        ; $5e8b: $5f
	ld   [hl], l                                     ; $5e8c: $75
	ld   a, l                                        ; $5e8d: $7d
	ld   a, b                                        ; $5e8e: $78
	ld   d, d                                        ; $5e8f: $52
	ld   [hl], l                                     ; $5e90: $75
	ld   h, l                                        ; $5e91: $65
	sub  l                                           ; $5e92: $95
	ld   d, h                                        ; $5e93: $54
	ld   sp, hl                                      ; $5e94: $f9
	dec  c                                           ; $5e95: $0d
	nop                                              ; $5e96: $00
	ld   a, [bc]                                     ; $5e97: $0a
	ld   bc, $ffff                                   ; $5e98: $01 $ff $ff
	ld   [bc], a                                     ; $5e9b: $02
	and  l                                           ; $5e9c: $a5
	ld   a, h                                        ; $5e9d: $7c
	inc  bc                                          ; $5e9e: $03
	dec  d                                           ; $5e9f: $15
	inc  b                                           ; $5ea0: $04
	cp   a                                           ; $5ea1: $bf
	ld   a, h                                        ; $5ea2: $7c
	inc  bc                                          ; $5ea3: $03
	call c, $9e56                                    ; $5ea4: $dc $56 $9e

jr_04a_5ea7:
	dec  c                                           ; $5ea7: $0d
	ld   h, c                                        ; $5ea8: $61
	sbc  d                                           ; $5ea9: $9a
	ld   e, c                                        ; $5eaa: $59
	sub  a                                           ; $5eab: $97
	ld   [bc], a                                     ; $5eac: $02
	jr   nz, jr_04a_5ea7                             ; $5ead: $20 $f8

	ld   [bc], a                                     ; $5eaf: $02
	sbc  e                                           ; $5eb0: $9b
	ld   a, h                                        ; $5eb1: $7c
	ld   [bc], a                                     ; $5eb2: $02
	xor  c                                           ; $5eb3: $a9
	dec  c                                           ; $5eb4: $0d
	nop                                              ; $5eb5: $00
	dec  b                                           ; $5eb6: $05
	ld   b, b                                        ; $5eb7: $40
	ld   c, d                                        ; $5eb8: $4a
	ld   [bc], a                                     ; $5eb9: $02
	nop                                              ; $5eba: $00
	nop                                              ; $5ebb: $00
	dec  b                                           ; $5ebc: $05
	ld   b, b                                        ; $5ebd: $40
	ld   d, b                                        ; $5ebe: $50
	ld   bc, $0001                                   ; $5ebf: $01 $01 $00
	ld   bc, $7194                                   ; $5ec2: $01 $94 $71
	ld   e, l                                        ; $5ec5: $5d
	sbc  b                                           ; $5ec6: $98
	ld   [bc], a                                     ; $5ec7: $02
	ld   h, l                                        ; $5ec8: $65
	ld   d, [hl]                                     ; $5ec9: $56
	sbc  c                                           ; $5eca: $99
	halt                                             ; $5ecb: $76
	ld   d, d                                        ; $5ecc: $52
	ld   d, d                                        ; $5ecd: $52
	sbc  l                                           ; $5ece: $9d
	sbc  a                                           ; $5ecf: $9f
	dec  c                                           ; $5ed0: $0d
	nop                                              ; $5ed1: $00
	ld   a, [bc]                                     ; $5ed2: $0a
	dec  c                                           ; $5ed3: $0d
	nop                                              ; $5ed4: $00
	nop                                              ; $5ed5: $00
	rrca                                             ; $5ed6: $0f
	nop                                              ; $5ed7: $00
	ld   bc, $1e09                                   ; $5ed8: $01 $09 $1e
	nop                                              ; $5edb: $00
	nop                                              ; $5edc: $00
	ld   c, $59                                      ; $5edd: $0e $59
	inc  e                                           ; $5edf: $1c
	ld   b, $00                                      ; $5ee0: $06 $00
	nop                                              ; $5ee2: $00
	ld   [bc], a                                     ; $5ee3: $02
	ld   bc, $5896                                   ; $5ee4: $01 $96 $58
	sbc  [hl]                                        ; $5ee7: $9e
	ld   [$9f00], sp                                 ; $5ee8: $08 $00 $9f
	dec  c                                           ; $5eeb: $0d
	inc  b                                           ; $5eec: $04
	ld   c, c                                        ; $5eed: $49
	ld   e, c                                        ; $5eee: $59
	inc  b                                           ; $5eef: $04
	di                                               ; $5ef0: $f3
	ld   e, c                                        ; $5ef1: $59
	ld   sp, hl                                      ; $5ef2: $f9
	dec  c                                           ; $5ef3: $0d
	nop                                              ; $5ef4: $00
	ld   a, [bc]                                     ; $5ef5: $0a
	add  hl, de                                      ; $5ef6: $19
	dec  b                                           ; $5ef7: $05
	inc  bc                                          ; $5ef8: $03
	ld   [bc], a                                     ; $5ef9: $02
	sub  l                                           ; $5efa: $95
	ld   [bc], a                                     ; $5efb: $02
	sub  e                                           ; $5efc: $93
	sbc  b                                           ; $5efd: $98
	ld   a, c                                        ; $5efe: $79
	dec  b                                           ; $5eff: $05
	db   $10                                         ; $5f00: $10
	adc  h                                           ; $5f01: $8c
	ld   h, l                                        ; $5f02: $65
	ld   l, l                                        ; $5f03: $6d
	nop                                              ; $5f04: $00
	nop                                              ; $5f05: $00
	inc  b                                           ; $5f06: $04
	ldh  a, [c]                                      ; $5f07: $f2
	add  c                                           ; $5f08: $81
	ld   a, c                                        ; $5f09: $79
	dec  b                                           ; $5f0a: $05
	db   $10                                         ; $5f0b: $10
	adc  h                                           ; $5f0c: $8c
	ld   h, l                                        ; $5f0d: $65
	ld   l, l                                        ; $5f0e: $6d
	nop                                              ; $5f0f: $00
	ld   bc, $ef04                                   ; $5f10: $01 $04 $ef
	inc  bc                                          ; $5f13: $03
	ld   l, d                                        ; $5f14: $6a
	and  b                                           ; $5f15: $a0
	inc  bc                                          ; $5f16: $03
	and  b                                           ; $5f17: $a0
	ld   [hl], c                                     ; $5f18: $71
	ld   [hl], h                                     ; $5f19: $74
	dec  b                                           ; $5f1a: $05
	db   $10                                         ; $5f1b: $10
	adc  h                                           ; $5f1c: $8c
	ld   h, l                                        ; $5f1d: $65
	ld   l, l                                        ; $5f1e: $6d
	nop                                              ; $5f1f: $00
	ld   [bc], a                                     ; $5f20: $02
	rlca                                             ; $5f21: $07
	add  a                                           ; $5f22: $87
	nop                                              ; $5f23: $00
	ld   [bc], a                                     ; $5f24: $02
	inc  bc                                          ; $5f25: $03
	ld   bc, $2000                                   ; $5f26: $01 $00 $20
	nop                                              ; $5f29: $00
	rlca                                             ; $5f2a: $07
	cp   d                                           ; $5f2b: $ba
	nop                                              ; $5f2c: $00
	ld   [bc], a                                     ; $5f2d: $02
	inc  bc                                          ; $5f2e: $03
	ld   bc, $2001                                   ; $5f2f: $01 $01 $20
	nop                                              ; $5f32: $00
	rlca                                             ; $5f33: $07
	xor  a                                           ; $5f34: $af
	ld   bc, $0302                                   ; $5f35: $01 $02 $03
	ld   bc, $2002                                   ; $5f38: $01 $02 $20
	nop                                              ; $5f3b: $00
	ld   b, $62                                      ; $5f3c: $06 $62
	nop                                              ; $5f3e: $00
	inc  e                                           ; $5f3f: $1c
	ld   b, $00                                      ; $5f40: $06 $00
	nop                                              ; $5f42: $00
	ld   bc, $f304                                   ; $5f43: $01 $04 $f3
	ld   e, d                                        ; $5f46: $5a
	ld   a, b                                        ; $5f47: $78
	ld   d, d                                        ; $5f48: $52
	ld   a, b                                        ; $5f49: $78
	sub  a                                           ; $5f4a: $97
	sbc  [hl]                                        ; $5f4b: $9e
	dec  c                                           ; $5f4c: $0d
	ld   d, b                                        ; $5f4d: $50
	ld   l, l                                        ; $5f4e: $6d
	ld   d, d                                        ; $5f4f: $52
	ld   a, l                                        ; $5f50: $7d
	inc  b                                           ; $5f51: $04
	ld   b, d                                        ; $5f52: $42
	sbc  c                                           ; $5f53: $99
	ld   e, c                                        ; $5f54: $59
	sub  a                                           ; $5f55: $97
	sbc  a                                           ; $5f56: $9f
	dec  c                                           ; $5f57: $0d
	ld   h, [hl]                                     ; $5f58: $66
	sub  c                                           ; $5f59: $91
	sbc  [hl]                                        ; $5f5a: $9e
	ld   e, b                                        ; $5f5b: $58
	sub  d                                           ; $5f5c: $92
	ld   h, a                                        ; $5f5d: $67
	adc  l                                           ; $5f5e: $8d
	sbc  a                                           ; $5f5f: $9f
	dec  c                                           ; $5f60: $0d
	nop                                              ; $5f61: $00
	ld   a, [bc]                                     ; $5f62: $0a
	nop                                              ; $5f63: $00
	rrca                                             ; $5f64: $0f
	nop                                              ; $5f65: $00
	ld   bc, $0201                                   ; $5f66: $01 $01 $02
	sub  l                                           ; $5f69: $95
	ld   [bc], a                                     ; $5f6a: $02
	sub  e                                           ; $5f6b: $93
	sbc  b                                           ; $5f6c: $98
	ld   a, c                                        ; $5f6d: $79
	dec  b                                           ; $5f6e: $05
	db   $10                                         ; $5f6f: $10
	adc  h                                           ; $5f70: $8c
	ld   h, l                                        ; $5f71: $65
	ld   l, l                                        ; $5f72: $6d
	sbc  a                                           ; $5f73: $9f
	dec  c                                           ; $5f74: $0d
	nop                                              ; $5f75: $00
	ld   a, [bc]                                     ; $5f76: $0a
	inc  e                                           ; $5f77: $1c
	ld   b, $00                                      ; $5f78: $06 $00
	nop                                              ; $5f7a: $00
	ld   bc, $5050                                   ; $5f7b: $01 $50 $50
	sbc  [hl]                                        ; $5f7e: $9e
	ld   h, d                                        ; $5f7f: $62
	ld   [bc], a                                     ; $5f80: $02
	sub  h                                           ; $5f81: $94
	dec  b                                           ; $5f82: $05
	rrca                                             ; $5f83: $0f
	ld   h, e                                        ; $5f84: $63
	and  c                                           ; $5f85: $a1
	sbc  a                                           ; $5f86: $9f
	dec  c                                           ; $5f87: $0d
	ld   h, c                                        ; $5f88: $61
	ld   h, c                                        ; $5f89: $61
	ld   a, l                                        ; $5f8a: $7d
	dec  b                                           ; $5f8b: $05
	dec  h                                           ; $5f8c: $25
	inc  bc                                          ; $5f8d: $03
	ld   hl, $5278                                   ; $5f8e: $21 $78 $52
	ld   l, d                                        ; $5f91: $6a
	sbc  a                                           ; $5f92: $9f
	dec  c                                           ; $5f93: $0d
	nop                                              ; $5f94: $00
	ld   a, [bc]                                     ; $5f95: $0a
	nop                                              ; $5f96: $00
	rrca                                             ; $5f97: $0f
	nop                                              ; $5f98: $00
	ld   bc, $0401                                   ; $5f99: $01 $01 $04
	ldh  a, [c]                                      ; $5f9c: $f2
	add  c                                           ; $5f9d: $81
	ld   a, c                                        ; $5f9e: $79
	dec  b                                           ; $5f9f: $05
	db   $10                                         ; $5fa0: $10
	adc  h                                           ; $5fa1: $8c
	ld   h, l                                        ; $5fa2: $65
	ld   l, l                                        ; $5fa3: $6d
	sbc  a                                           ; $5fa4: $9f
	dec  c                                           ; $5fa5: $0d
	nop                                              ; $5fa6: $00
	ld   a, [bc]                                     ; $5fa7: $0a
	inc  e                                           ; $5fa8: $1c
	ld   b, $02                                      ; $5fa9: $06 $02
	ld   [bc], a                                     ; $5fab: $02
	ld   bc, $e3c1                                   ; $5fac: $01 $c1 $e3
	ld   l, [hl]                                     ; $5faf: $6e
	ld   l, h                                        ; $5fb0: $6c
	sbc  [hl]                                        ; $5fb1: $9e
	inc  b                                           ; $5fb2: $04
	rst  $28                                         ; $5fb3: $ef
	add  e                                           ; $5fb4: $83
	ld   e, c                                        ; $5fb5: $59
	ld   h, l                                        ; $5fb6: $65
	ld   a, l                                        ; $5fb7: $7d
	rst  $38                                         ; $5fb8: $ff
	rst  $38                                         ; $5fb9: $ff
	dec  c                                           ; $5fba: $0d
	nop                                              ; $5fbb: $00
	ld   a, [bc]                                     ; $5fbc: $0a
	inc  e                                           ; $5fbd: $1c
	ld   b, $01                                      ; $5fbe: $06 $01
	ld   bc, $401d                                   ; $5fc0: $01 $1d $40
	ld   d, $03                                      ; $5fc3: $16 $03
	ld   d, $01                                      ; $5fc5: $16 $01
	ld   [bc], a                                     ; $5fc7: $02
	jr   z, jr_04a_5fca                              ; $5fc8: $28 $00

jr_04a_5fca:
	ld   bc, $5976                                   ; $5fca: $01 $76 $59
	ld   [bc], a                                     ; $5fcd: $02
	sbc  l                                           ; $5fce: $9d
	ld   d, d                                        ; $5fcf: $52
	ld   a, b                                        ; $5fd0: $78
	ld   e, d                                        ; $5fd1: $5a
	sub  a                                           ; $5fd2: $97
	inc  b                                           ; $5fd3: $04
	ldh  a, [c]                                      ; $5fd4: $f2
	and  c                                           ; $5fd5: $a1
	ld   h, [hl]                                     ; $5fd6: $66
	sub  c                                           ; $5fd7: $91
	ld   d, h                                        ; $5fd8: $54
	and  c                                           ; $5fd9: $a1
	dec  c                                           ; $5fda: $0d
	ld   l, [hl]                                     ; $5fdb: $6e
	ld   e, a                                        ; $5fdc: $5f
	ld   [hl], a                                     ; $5fdd: $77
	ld   a, e                                        ; $5fde: $7b
	rst  $38                                         ; $5fdf: $ff
	rst  $38                                         ; $5fe0: $ff
	dec  c                                           ; $5fe1: $0d
	nop                                              ; $5fe2: $00
	ld   a, [bc]                                     ; $5fe3: $0a
	rrca                                             ; $5fe4: $0f
	inc  bc                                          ; $5fe5: $03
	ld   [bc], a                                     ; $5fe6: $02
	ld   bc, $ef04                                   ; $5fe7: $01 $04 $ef
	add  e                                           ; $5fea: $83
	ld   e, c                                        ; $5feb: $59
	ld   h, l                                        ; $5fec: $65
	ld   e, d                                        ; $5fed: $5a
	ld   [hl], a                                     ; $5fee: $77
	ld   d, h                                        ; $5fef: $54
	ld   e, c                                        ; $5ff0: $59
	ld   h, l                                        ; $5ff1: $65
	ld   l, l                                        ; $5ff2: $6d
	ld   a, h                                        ; $5ff3: $7c
	ld   sp, hl                                      ; $5ff4: $f9
	dec  c                                           ; $5ff5: $0d
	nop                                              ; $5ff6: $00
	ld   a, [bc]                                     ; $5ff7: $0a
	inc  e                                           ; $5ff8: $1c
	ld   b, $03                                      ; $5ff9: $06 $03
	inc  bc                                          ; $5ffb: $03
	ld   bc, $ffff                                   ; $5ffc: $01 $ff $ff
	rst  JumpTable                                         ; $5fff: $df
	sbc  [hl]                                        ; $6000: $9e
	rst  JumpTable                                         ; $6001: $df
	db   $ec                                         ; $6002: $ec
	and  e                                           ; $6003: $a3
	rst  $38                                         ; $6004: $ff
	rst  $38                                         ; $6005: $ff
	dec  c                                           ; $6006: $0d
	nop                                              ; $6007: $00
	ld   a, [bc]                                     ; $6008: $0a
	inc  e                                           ; $6009: $1c
	inc  bc                                          ; $600a: $03
	ld   [bc], a                                     ; $600b: $02
	ld   [bc], a                                     ; $600c: $02
	ld   bc, $0008                                   ; $600d: $01 $08 $00
	ld   e, l                                        ; $6010: $5d
	and  c                                           ; $6011: $a1
	sbc  a                                           ; $6012: $9f
	dec  c                                           ; $6013: $0d
	ld   a, b                                        ; $6014: $78
	ld   a, c                                        ; $6015: $79
	ld   h, l                                        ; $6016: $65
	ld   [hl], h                                     ; $6017: $74
	ld   d, d                                        ; $6018: $52
	sbc  c                                           ; $6019: $99
	ld   a, h                                        ; $601a: $7c
	ld   sp, hl                                      ; $601b: $f9
	dec  c                                           ; $601c: $0d
	ld   h, c                                        ; $601d: $61
	and  c                                           ; $601e: $a1
	ld   a, b                                        ; $601f: $78
	inc  b                                           ; $6020: $04
	rst  $28                                         ; $6021: $ef
	ld   e, b                                        ; $6022: $58
	ld   l, e                                        ; $6023: $6b
	ld   e, l                                        ; $6024: $5d
	ld   a, c                                        ; $6025: $79
	ld   sp, hl                                      ; $6026: $f9
	dec  c                                           ; $6027: $0d
	nop                                              ; $6028: $00
	ld   a, [bc]                                     ; $6029: $0a
	inc  e                                           ; $602a: $1c
	inc  bc                                          ; $602b: $03
	ld   b, $06                                      ; $602c: $06 $06
	dec  e                                           ; $602e: $1d
	ld   b, b                                        ; $602f: $40
	inc  de                                          ; $6030: $13
	inc  bc                                          ; $6031: $03
	inc  de                                          ; $6032: $13
	ld   bc, $2903                                   ; $6033: $01 $03 $29
	nop                                              ; $6036: $00
	ld   bc, $8f6e                                   ; $6037: $01 $6e $8f
	ld   h, [hl]                                     ; $603a: $66
	sub  c                                           ; $603b: $91
	ld   a, b                                        ; $603c: $78
	ld   d, d                                        ; $603d: $52
	ld   a, h                                        ; $603e: $7c
	ld   a, [$8c0d]                                  ; $603f: $fa $0d $8c
	ld   h, [hl]                                     ; $6042: $66
	adc  a                                           ; $6043: $8f
	ld   a, c                                        ; $6044: $79
	ld   [bc], a                                     ; $6045: $02
	sub  l                                           ; $6046: $95
	ld   [bc], a                                     ; $6047: $02
	sub  e                                           ; $6048: $93
	sbc  b                                           ; $6049: $98
	ld   h, l                                        ; $604a: $65
	ld   a, b                                        ; $604b: $78
	ld   e, e                                        ; $604c: $5b
	sub  c                                           ; $604d: $91
	ld   a, [$0dfa]                                  ; $604e: $fa $fa $0d
	nop                                              ; $6051: $00
	ld   a, [bc]                                     ; $6052: $0a
	ld   bc, $f5ac                                   ; $6053: $01 $ac $f5
	res  2, b                                        ; $6056: $cb $90
	inc  bc                                          ; $6058: $03
	ld   [hl], b                                     ; $6059: $70
	ld   e, l                                        ; $605a: $5d
	ld   a, e                                        ; $605b: $7b
	ld   a, b                                        ; $605c: $78
	ld   h, e                                        ; $605d: $63
	ld   d, d                                        ; $605e: $52
	sbc  a                                           ; $605f: $9f
	dec  c                                           ; $6060: $0d
	nop                                              ; $6061: $00
	ld   a, [bc]                                     ; $6062: $0a
	rrca                                             ; $6063: $0f
	ld   b, $05                                      ; $6064: $06 $05
	ld   bc, $9850                                   ; $6066: $01 $50 $98
	sub  c                                           ; $6069: $91
	ei                                               ; $606a: $fb
	sbc  [hl]                                        ; $606b: $9e
	ld   e, b                                        ; $606c: $58
	ld   h, c                                        ; $606d: $61
	sub  a                                           ; $606e: $97
	sbc  d                                           ; $606f: $9a
	ld   l, l                                        ; $6070: $6d
	sub  [hl]                                        ; $6071: $96
	ei                                               ; $6072: $fb
	sbc  a                                           ; $6073: $9f
	dec  c                                           ; $6074: $0d
	ld   h, a                                        ; $6075: $67
	adc  h                                           ; $6076: $8c
	ld   a, b                                        ; $6077: $78
	ld   d, d                                        ; $6078: $52
	sbc  [hl]                                        ; $6079: $9e
	ld   [$9f00], sp                                 ; $607a: $08 $00 $9f
	dec  c                                           ; $607d: $0d
	ld   h, [hl]                                     ; $607e: $66
	sub  c                                           ; $607f: $91
	sbc  [hl]                                        ; $6080: $9e
	adc  h                                           ; $6081: $8c
	ld   l, l                                        ; $6082: $6d
	inc  b                                           ; $6083: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6084: $cf
	inc  b                                           ; $6085: $04
	xor  d                                           ; $6086: $aa
	sbc  a                                           ; $6087: $9f
	dec  c                                           ; $6088: $0d
	nop                                              ; $6089: $00
	ld   a, [bc]                                     ; $608a: $0a
	nop                                              ; $608b: $00
	rrca                                             ; $608c: $0f
	nop                                              ; $608d: $00
	ld   bc, $0401                                   ; $608e: $01 $01 $04
	rst  $28                                         ; $6091: $ef
	inc  bc                                          ; $6092: $03
	ld   l, d                                        ; $6093: $6a
	and  b                                           ; $6094: $a0
	inc  bc                                          ; $6095: $03
	and  b                                           ; $6096: $a0
	ld   [hl], c                                     ; $6097: $71
	ld   [hl], h                                     ; $6098: $74
	dec  b                                           ; $6099: $05
	db   $10                                         ; $609a: $10
	adc  h                                           ; $609b: $8c
	ld   h, l                                        ; $609c: $65
	ld   l, l                                        ; $609d: $6d
	sbc  a                                           ; $609e: $9f
	dec  c                                           ; $609f: $0d
	nop                                              ; $60a0: $00
	ld   a, [bc]                                     ; $60a1: $0a
	dec  c                                           ; $60a2: $0d
	nop                                              ; $60a3: $00
	nop                                              ; $60a4: $00
	db   $10                                         ; $60a5: $10
	ld   b, a                                        ; $60a6: $47
	nop                                              ; $60a7: $00
	inc  e                                           ; $60a8: $1c
	ld   b, $07                                      ; $60a9: $06 $07
	rlca                                             ; $60ab: $07
	dec  e                                           ; $60ac: $1d
	ld   b, b                                        ; $60ad: $40
	ld   d, $03                                      ; $60ae: $16 $03
	ld   d, $01                                      ; $60b0: $16 $01
	inc  bc                                          ; $60b2: $03
	jr   z, jr_04a_60b5                              ; $60b3: $28 $00

jr_04a_60b5:
	ld   bc, $7158                                   ; $60b5: $01 $58 $71
	sbc  [hl]                                        ; $60b8: $9e
	ld   [bc], a                                     ; $60b9: $02
	and  c                                           ; $60ba: $a1
	ld   e, d                                        ; $60bb: $5a
	ld   e, e                                        ; $60bc: $5b
	ld   e, l                                        ; $60bd: $5d
	ld   a, b                                        ; $60be: $78
	ld   c, a                                        ; $60bf: $4f
	rst  $38                                         ; $60c0: $ff
	rst  $38                                         ; $60c1: $ff
	dec  c                                           ; $60c2: $0d
	or   [hl]                                        ; $60c3: $b6
	push af                                          ; $60c4: $f5
	xor  [hl]                                        ; $60c5: $ae
	rst  $20                                         ; $60c6: $e7
	ei                                               ; $60c7: $fb
	ld   a, [$500d]                                  ; $60c8: $fa $0d $50
	sbc  b                                           ; $60cb: $98
	ld   e, d                                        ; $60cc: $5a
	ld   l, l                                        ; $60cd: $6d
	ld   e, l                                        ; $60ce: $5d
	ld   d, d                                        ; $60cf: $52
	ld   l, l                                        ; $60d0: $6d
	ld   l, [hl]                                     ; $60d1: $6e
	ld   e, l                                        ; $60d2: $5d
	ld   l, d                                        ; $60d3: $6a
	sbc  a                                           ; $60d4: $9f
	dec  c                                           ; $60d5: $0d
	nop                                              ; $60d6: $00
	ld   a, [bc]                                     ; $60d7: $0a
	nop                                              ; $60d8: $00
	nop                                              ; $60d9: $00
	inc  bc                                          ; $60da: $03
	db   $e3                                         ; $60db: $e3
	ld   bc, $2000                                   ; $60dc: $01 $00 $20
	nop                                              ; $60df: $00
	ld   c, $4a                                      ; $60e0: $0e $4a
	rrca                                             ; $60e2: $0f
	nop                                              ; $60e3: $00
	ld   bc, $1402                                   ; $60e4: $01 $02 $14
	ld   b, $01                                      ; $60e7: $06 $01
	ld   bc, $a5a3                                   ; $60e9: $01 $a3 $a5
	db   $ec                                         ; $60ec: $ec
	cp   d                                           ; $60ed: $ba
	sbc  [hl]                                        ; $60ee: $9e
	ld   [bc], a                                     ; $60ef: $02
	ld   e, d                                        ; $60f0: $5a
	ld   e, e                                        ; $60f1: $5b
	ld   [hl], h                                     ; $60f2: $74
	sbc  c                                           ; $60f3: $99
	ld   e, c                                        ; $60f4: $59
	ld   d, d                                        ; $60f5: $52
	ld   sp, hl                                      ; $60f6: $f9
	dec  c                                           ; $60f7: $0d
	nop                                              ; $60f8: $00
	ld   a, [bc]                                     ; $60f9: $0a
	dec  b                                           ; $60fa: $05
	add  b                                           ; $60fb: $80
	sub  $01                                         ; $60fc: $d6 $01
	ld   bc, $0f00                                   ; $60fe: $01 $00 $0f
	inc  b                                           ; $6101: $04
	ld   b, $01                                      ; $6102: $06 $01
	ld   d, b                                        ; $6104: $50
	sbc  [hl]                                        ; $6105: $9e
	ld   l, a                                        ; $6106: $6f
	sub  l                                           ; $6107: $95
	ld   [hl], c                                     ; $6108: $71
	halt                                             ; $6109: $76
	adc  h                                           ; $610a: $8c
	ld   [hl], c                                     ; $610b: $71
	ld   [hl], h                                     ; $610c: $74
	ld   [hl], h                                     ; $610d: $74
	sbc  a                                           ; $610e: $9f
	dec  c                                           ; $610f: $0d
	nop                                              ; $6110: $00
	ld   a, [bc]                                     ; $6111: $0a
	rrca                                             ; $6112: $0f
	nop                                              ; $6113: $00
	ld   bc, $5723                                   ; $6114: $01 $23 $57
	inc  e                                           ; $6117: $1c
	inc  b                                           ; $6118: $04
	nop                                              ; $6119: $00
	nop                                              ; $611a: $00
	ld   bc, $8c52                                   ; $611b: $01 $52 $8c
	ld   a, e                                        ; $611e: $7b
	sbc  [hl]                                        ; $611f: $9e
	ld   l, a                                        ; $6120: $6f
	sub  l                                           ; $6121: $95
	ld   d, h                                        ; $6122: $54
	ld   [hl], a                                     ; $6123: $77
	dec  c                                           ; $6124: $0d
	cp   c                                           ; $6125: $b9
	push hl                                          ; $6126: $e5
	push af                                          ; $6127: $f5
	sbc  $fb                                         ; $6128: $de $fb
	db   $ed                                         ; $612a: $ed
	halt                                             ; $612b: $76
	ld   d, b                                        ; $612c: $50
	ld   l, e                                        ; $612d: $6b
	and  c                                           ; $612e: $a1
	ld   [hl], l                                     ; $612f: $75
	ld   l, l                                        ; $6130: $6d
	ld   a, h                                        ; $6131: $7c
	sbc  a                                           ; $6132: $9f
	dec  c                                           ; $6133: $0d
	nop                                              ; $6134: $00
	ld   a, [bc]                                     ; $6135: $0a
	inc  e                                           ; $6136: $1c
	inc  b                                           ; $6137: $04
	ld   bc, $0101                                   ; $6138: $01 $01 $01
	ld   d, b                                        ; $613b: $50
	sbc  [hl]                                        ; $613c: $9e
	ld   l, a                                        ; $613d: $6f
	ld   d, d                                        ; $613e: $52
	ld   [bc], a                                     ; $613f: $02
	inc  de                                          ; $6140: $13
	ld   l, a                                        ; $6141: $6f
	sub  c                                           ; $6142: $91
	and  c                                           ; $6143: $a1
	sub  b                                           ; $6144: $90
	dec  c                                           ; $6145: $0d
	ld   e, b                                        ; $6146: $58
	halt                                             ; $6147: $76
	sub  b                                           ; $6148: $90
	ld   l, [hl]                                     ; $6149: $6e
	ld   l, a                                        ; $614a: $6f
	adc  c                                           ; $614b: $89
	ld   h, l                                        ; $614c: $65
	ld   e, l                                        ; $614d: $5d
	ld   a, b                                        ; $614e: $78
	ld   d, d                                        ; $614f: $52
	ld   sp, hl                                      ; $6150: $f9
	dec  c                                           ; $6151: $0d
	nop                                              ; $6152: $00
	ld   a, [bc]                                     ; $6153: $0a
	jr   jr_04a_6158                                 ; $6154: $18 $02

	nop                                              ; $6156: $00
	adc  c                                           ; $6157: $89

jr_04a_6158:
	ld   h, l                                        ; $6158: $65
	ld   d, d                                        ; $6159: $52
	nop                                              ; $615a: $00
	nop                                              ; $615b: $00
	adc  c                                           ; $615c: $89
	ld   h, l                                        ; $615d: $65
	ld   e, l                                        ; $615e: $5d
	ld   a, b                                        ; $615f: $78
	ld   d, d                                        ; $6160: $52
	nop                                              ; $6161: $00
	ld   bc, $9507                                   ; $6162: $01 $07 $95
	nop                                              ; $6165: $00
	ld   [bc], a                                     ; $6166: $02
	ld   [bc], a                                     ; $6167: $02
	ld   bc, $2000                                   ; $6168: $01 $00 $20
	nop                                              ; $616b: $00
	rlca                                             ; $616c: $07
	ld   a, [$0200]                                  ; $616d: $fa $00 $02
	ld   [bc], a                                     ; $6170: $02
	ld   bc, $2001                                   ; $6171: $01 $01 $20
	nop                                              ; $6174: $00
	rrca                                             ; $6175: $0f
	nop                                              ; $6176: $00
	ld   bc, $5401                                   ; $6177: $01 $01 $54
	and  c                                           ; $617a: $a1
	sbc  [hl]                                        ; $617b: $9e
	inc  b                                           ; $617c: $04
	ld   l, l                                        ; $617d: $6d
	sub  b                                           ; $617e: $90
	adc  c                                           ; $617f: $89
	ld   h, l                                        ; $6180: $65
	ld   d, d                                        ; $6181: $52
	ld   a, b                                        ; $6182: $78
	sbc  a                                           ; $6183: $9f
	dec  c                                           ; $6184: $0d
	nop                                              ; $6185: $00
	ld   a, [bc]                                     ; $6186: $0a
	dec  b                                           ; $6187: $05
	ld   b, b                                        ; $6188: $40
	db   $e3                                         ; $6189: $e3
	ld   bc, $0001                                   ; $618a: $01 $01 $00
	inc  e                                           ; $618d: $1c
	inc  b                                           ; $618e: $04
	ld   bc, $0501                                   ; $618f: $01 $01 $05
	ld   b, b                                        ; $6192: $40
	jr   nc, jr_04a_6196                             ; $6193: $30 $01

	inc  b                                           ; $6195: $04

jr_04a_6196:
	nop                                              ; $6196: $00
	dec  e                                           ; $6197: $1d
	ld   b, b                                        ; $6198: $40
	inc  d                                           ; $6199: $14
	inc  bc                                          ; $619a: $03
	inc  d                                           ; $619b: $14
	ld   bc, $2803                                   ; $619c: $01 $03 $28
	nop                                              ; $619f: $00
	ld   bc, $9166                                   ; $61a0: $01 $66 $91
	ld   d, b                                        ; $61a3: $50
	sbc  [hl]                                        ; $61a4: $9e
	ld   h, c                                        ; $61a5: $61
	ld   a, h                                        ; $61a6: $7c
	ld   h, c                                        ; $61a7: $61
	ld   e, d                                        ; $61a8: $5a
	ld   d, b                                        ; $61a9: $50
	ld   l, l                                        ; $61aa: $6d
	sub  a                                           ; $61ab: $97
	ld   h, l                                        ; $61ac: $65
	ld   d, d                                        ; $61ad: $52
	dec  c                                           ; $61ae: $0d
	ld   e, b                                        ; $61af: $58
	halt                                             ; $61b0: $76
	sub  b                                           ; $61b1: $90
	ld   l, [hl]                                     ; $61b2: $6e
	ld   l, a                                        ; $61b3: $6f
	sbc  [hl]                                        ; $61b4: $9e
	dec  c                                           ; $61b5: $0d
	nop                                              ; $61b6: $00
	db   $10                                         ; $61b7: $10
	ld   hl, $0100                                   ; $61b8: $21 $00 $01
	and  l                                           ; $61bb: $a5
	call $df7c                                       ; $61bc: $cd $7c $df
	db   $ec                                         ; $61bf: $ec
	ei                                               ; $61c0: $fb
	ld   [hl], l                                     ; $61c1: $75
	ld   h, a                                        ; $61c2: $67
	sbc  a                                           ; $61c3: $9f
	dec  c                                           ; $61c4: $0d
	nop                                              ; $61c5: $00
	ld   a, [bc]                                     ; $61c6: $0a
	ld   bc, $9b96                                   ; $61c7: $01 $96 $9b
	ld   h, l                                        ; $61ca: $65
	ld   e, l                                        ; $61cb: $5d
	ld   a, e                                        ; $61cc: $7b
	sbc  a                                           ; $61cd: $9f
	ld   l, a                                        ; $61ce: $6f
	ld   d, d                                        ; $61cf: $52
	ld   [bc], a                                     ; $61d0: $02
	inc  de                                          ; $61d1: $13
	ld   l, a                                        ; $61d2: $6f
	sub  c                                           ; $61d3: $91
	and  c                                           ; $61d4: $a1
	sbc  a                                           ; $61d5: $9f
	dec  c                                           ; $61d6: $0d
	nop                                              ; $61d7: $00
	ld   a, [bc]                                     ; $61d8: $0a
	nop                                              ; $61d9: $00
	inc  e                                           ; $61da: $1c
	inc  b                                           ; $61db: $04
	inc  bc                                          ; $61dc: $03
	inc  bc                                          ; $61dd: $03
	dec  e                                           ; $61de: $1d
	ld   b, b                                        ; $61df: $40
	inc  d                                           ; $61e0: $14
	inc  bc                                          ; $61e1: $03
	inc  d                                           ; $61e2: $14
	ld   bc, $2901                                   ; $61e3: $01 $01 $29
	nop                                              ; $61e6: $00
	ld   bc, $5484                                   ; $61e7: $01 $84 $54
	rst  $38                                         ; $61ea: $ff
	rst  $38                                         ; $61eb: $ff
	ld   [hl], d                                     ; $61ec: $72
	adc  h                                           ; $61ed: $8c
	and  c                                           ; $61ee: $a1
	ld   a, b                                        ; $61ef: $78
	ld   d, d                                        ; $61f0: $52
	ld   a, h                                        ; $61f1: $7c
	sbc  a                                           ; $61f2: $9f
	dec  c                                           ; $61f3: $0d
	nop                                              ; $61f4: $00
	ld   a, [bc]                                     ; $61f5: $0a
	nop                                              ; $61f6: $00
	nop                                              ; $61f7: $00
	inc  bc                                          ; $61f8: $03
	pop  hl                                          ; $61f9: $e1
	ld   bc, $2000                                   ; $61fa: $01 $00 $20
	nop                                              ; $61fd: $00
	ld   c, $51                                      ; $61fe: $0e $51
	rrca                                             ; $6200: $0f
	nop                                              ; $6201: $00
	ld   bc, $020d                                   ; $6202: $01 $0d $02
	nop                                              ; $6205: $00
	ld   [bc], a                                     ; $6206: $02
	ld   bc, $a161                                   ; $6207: $01 $61 $a1
	ld   a, [hl]                                     ; $620a: $7e
	and  c                                           ; $620b: $a1
	ld   a, l                                        ; $620c: $7d
	sbc  [hl]                                        ; $620d: $9e
	ld   h, a                                        ; $620e: $67
	adc  l                                           ; $620f: $8d
	sbc  d                                           ; $6210: $9a
	ld   h, e                                        ; $6211: $63
	and  c                                           ; $6212: $a1
	sbc  a                                           ; $6213: $9f
	dec  c                                           ; $6214: $0d
	nop                                              ; $6215: $00
	ld   a, [bc]                                     ; $6216: $0a
	inc  e                                           ; $6217: $1c
	ld   [bc], a                                     ; $6218: $02
	nop                                              ; $6219: $00
	nop                                              ; $621a: $00
	ld   bc, $9750                                   ; $621b: $01 $50 $97
	sbc  [hl]                                        ; $621e: $9e
	ld   [$6308], sp                                 ; $621f: $08 $08 $63
	and  c                                           ; $6222: $a1
	dec  c                                           ; $6223: $0d
	nop                                              ; $6224: $00
	ld   a, [bc]                                     ; $6225: $0a
	rrca                                             ; $6226: $0f
	nop                                              ; $6227: $00
	ld   bc, $0101                                   ; $6228: $01 $01 $01
	inc  bc                                          ; $622b: $03
	ld   l, a                                        ; $622c: $6f
	ld   e, d                                        ; $622d: $5a
	ld   d, d                                        ; $622e: $52
	adc  h                                           ; $622f: $8c
	ld   h, a                                        ; $6230: $67
	sbc  a                                           ; $6231: $9f
	dec  c                                           ; $6232: $0d
	db   $10                                         ; $6233: $10
	adc  d                                           ; $6234: $8a
	ld   e, l                                        ; $6235: $5d
	ld   a, l                                        ; $6236: $7d
	sbc  [hl]                                        ; $6237: $9e
	ld   [$7500], sp                                 ; $6238: $08 $00 $75
	ld   h, a                                        ; $623b: $67
	sbc  a                                           ; $623c: $9f
	dec  c                                           ; $623d: $0d
	db   $10                                         ; $623e: $10
	ld   [hl], h                                     ; $623f: $74
	sbc  [hl]                                        ; $6240: $9e
	ld   [bc], a                                     ; $6241: $02
	sbc  l                                           ; $6242: $9d
	ld   [hl], c                                     ; $6243: $71
	ld   [hl], h                                     ; $6244: $74
	sub  b                                           ; $6245: $90
	ldh  [c], a                                      ; $6246: $e2
	pop  bc                                          ; $6247: $c1
	ld   e, c                                        ; $6248: $59
	rst  $38                                         ; $6249: $ff
	rst  $38                                         ; $624a: $ff
	ld   bc, $0d04                                   ; $624b: $01 $04 $0d
	nop                                              ; $624e: $00
	ld   a, [bc]                                     ; $624f: $0a
	rrca                                             ; $6250: $0f
	ld   [bc], a                                     ; $6251: $02
	nop                                              ; $6252: $00
	ld   bc, $5252                                   ; $6253: $01 $52 $52
	halt                                             ; $6256: $76
	ld   h, c                                        ; $6257: $61
	sbc  e                                           ; $6258: $9b
	ld   a, c                                        ; $6259: $79
	dec  c                                           ; $625a: $0d
	ld   d, d                                        ; $625b: $52
	sub  a                                           ; $625c: $97
	ld   [hl], c                                     ; $625d: $71
	ld   h, l                                        ; $625e: $65
	sub  c                                           ; $625f: $91
	ld   [hl], c                                     ; $6260: $71
	ld   l, l                                        ; $6261: $6d
	sbc  l                                           ; $6262: $9d
	ld   a, e                                        ; $6263: $7b
	sbc  a                                           ; $6264: $9f
	dec  c                                           ; $6265: $0d
	nop                                              ; $6266: $00
	ld   a, [bc]                                     ; $6267: $0a
	ld   bc, $7c61                                   ; $6268: $01 $61 $7c
	ret  nc                                          ; $626b: $d0

	ei                                               ; $626c: $fb
	rst  $10                                         ; $626d: $d7
	and  b                                           ; $626e: $a0
	ld   h, e                                        ; $626f: $63
	ld   h, l                                        ; $6270: $65
	ld   d, b                                        ; $6271: $50
	ld   h, b                                        ; $6272: $60
	sbc  c                                           ; $6273: $99
	ld   e, c                                        ; $6274: $59
	sub  a                                           ; $6275: $97
	dec  c                                           ; $6276: $0d
	ld   l, a                                        ; $6277: $6f
	sub  c                                           ; $6278: $91
	and  c                                           ; $6279: $a1
	halt                                             ; $627a: $76
	ld   [bc], a                                     ; $627b: $02
	ld   e, $74                                      ; $627c: $1e $74
	ld   a, b                                        ; $627e: $78
	ld   h, e                                        ; $627f: $63
	ld   d, d                                        ; $6280: $52
	sbc  a                                           ; $6281: $9f
	dec  c                                           ; $6282: $0d
	nop                                              ; $6283: $00
	ld   a, [bc]                                     ; $6284: $0a
	db   $10                                         ; $6285: $10
	add  hl, bc                                      ; $6286: $09
	nop                                              ; $6287: $00
	jr   jr_04a_628c                                 ; $6288: $18 $02

	nop                                              ; $628a: $00
	ld   a, l                                        ; $628b: $7d

jr_04a_628c:
	ld   d, d                                        ; $628c: $52
	nop                                              ; $628d: $00
	nop                                              ; $628e: $00
	ld   d, d                                        ; $628f: $52
	ld   d, d                                        ; $6290: $52
	ld   d, [hl]                                     ; $6291: $56
	nop                                              ; $6292: $00
	ld   bc, $a807                                   ; $6293: $01 $07 $a8
	nop                                              ; $6296: $00
	ld   [bc], a                                     ; $6297: $02
	ld   [bc], a                                     ; $6298: $02
	ld   bc, $2000                                   ; $6299: $01 $00 $20
	nop                                              ; $629c: $00
	rlca                                             ; $629d: $07
	ld   [hl], c                                     ; $629e: $71
	ld   bc, $0202                                   ; $629f: $01 $02 $02
	ld   bc, $2001                                   ; $62a2: $01 $01 $20
	nop                                              ; $62a5: $00
	rrca                                             ; $62a6: $0f
	nop                                              ; $62a7: $00
	ld   bc, $4005                                   ; $62a8: $01 $05 $40
	pop  hl                                          ; $62ab: $e1
	ld   bc, $0001                                   ; $62ac: $01 $01 $00
	ld   bc, $527d                                   ; $62af: $01 $7d $52
	sbc  a                                           ; $62b2: $9f
	dec  c                                           ; $62b3: $0d
	ld   [bc], a                                     ; $62b4: $02
	ld   e, $74                                      ; $62b5: $1e $74
	ld   [hl], h                                     ; $62b7: $74
	adc  l                                           ; $62b8: $8d
	adc  h                                           ; $62b9: $8c
	ld   h, a                                        ; $62ba: $67
	sbc  a                                           ; $62bb: $9f
	dec  c                                           ; $62bc: $0d
	nop                                              ; $62bd: $00
	ld   a, [bc]                                     ; $62be: $0a
	inc  e                                           ; $62bf: $1c
	ld   [bc], a                                     ; $62c0: $02
	ld   bc, $1d01                                   ; $62c1: $01 $01 $1d
	ld   b, b                                        ; $62c4: $40
	ld   [de], a                                     ; $62c5: $12
	inc  bc                                          ; $62c6: $03
	ld   [de], a                                     ; $62c7: $12
	ld   bc, $2803                                   ; $62c8: $01 $03 $28
	nop                                              ; $62cb: $00
	ld   bc, $546b                                   ; $62cc: $01 $6b $54
	ld   [hl], l                                     ; $62cf: $75
	ld   h, a                                        ; $62d0: $67
	ld   e, c                                        ; $62d1: $59
	sbc  a                                           ; $62d2: $9f
	dec  c                                           ; $62d3: $0d
	ld   [hl], l                                     ; $62d4: $75
	ld   a, l                                        ; $62d5: $7d
	sbc  [hl]                                        ; $62d6: $9e
	ld   d, d                                        ; $62d7: $52
	ld   e, l                                        ; $62d8: $5d
	ld   [hl], d                                     ; $62d9: $72
	ld   e, c                                        ; $62da: $59
	inc  bc                                          ; $62db: $03
	and  $02                                         ; $62dc: $e6 $02
	ld   b, $a0                                      ; $62de: $06 $a0
	dec  c                                           ; $62e0: $0d
	ld   e, b                                        ; $62e1: $58
	ld   h, l                                        ; $62e2: $65
	ld   d, [hl]                                     ; $62e3: $56
	adc  h                                           ; $62e4: $8c
	ld   h, a                                        ; $62e5: $67
	sbc  l                                           ; $62e6: $9d
	sbc  a                                           ; $62e7: $9f
	dec  c                                           ; $62e8: $0d
	nop                                              ; $62e9: $00
	ld   a, [bc]                                     ; $62ea: $0a
	ld   bc, $fbd0                                   ; $62eb: $01 $d0 $fb
	rst  $10                                         ; $62ee: $d7
	ld   a, l                                        ; $62ef: $7d
	inc  b                                           ; $62f0: $04
	inc  hl                                          ; $62f1: $23
	ld   b, $2b                                      ; $62f2: $06 $2b
	ld   e, d                                        ; $62f4: $5a
	inc  b                                           ; $62f5: $04
	ld   c, $02                                      ; $62f6: $0e $02
	sbc  d                                           ; $62f8: $9a
	ld   e, e                                        ; $62f9: $5b
	ld   [hl], l                                     ; $62fa: $75
	ld   h, a                                        ; $62fb: $67
	ld   a, h                                        ; $62fc: $7c
	sbc  a                                           ; $62fd: $9f

jr_04a_62fe:
	dec  c                                           ; $62fe: $0d
	ld   [hl], l                                     ; $62ff: $75
	ld   h, a                                        ; $6300: $67
	ld   e, c                                        ; $6301: $59
	sub  a                                           ; $6302: $97
	sbc  [hl]                                        ; $6303: $9e
	inc  b                                           ; $6304: $04
	xor  d                                           ; $6305: $aa
	inc  b                                           ; $6306: $04
	jr   jr_04a_6376                                 ; $6307: $18 $6d

	sbc  b                                           ; $6309: $98
	ld   a, c                                        ; $630a: $79
	ld   a, l                                        ; $630b: $7d
	dec  c                                           ; $630c: $0d
	dec  b                                           ; $630d: $05
	cp   h                                           ; $630e: $bc
	inc  b                                           ; $630f: $04
	sbc  [hl]                                        ; $6310: $9e
	inc  bc                                          ; $6311: $03
	and  $02                                         ; $6312: $e6 $02
	ld   b, $67                                      ; $6314: $06 $67
	sbc  c                                           ; $6316: $99
	ld   h, c                                        ; $6317: $61
	halt                                             ; $6318: $76
	sbc  a                                           ; $6319: $9f
	dec  c                                           ; $631a: $0d
	nop                                              ; $631b: $00
	ld   a, [bc]                                     ; $631c: $0a
	ld   bc, $a159                                   ; $631d: $01 $59 $a1
	ld   l, e                                        ; $6320: $6b
	ld   d, h                                        ; $6321: $54
	ld   h, e                                        ; $6322: $63
	ld   l, c                                        ; $6323: $69
	ld   a, b                                        ; $6324: $78
	ld   d, d                                        ; $6325: $52
	sub  [hl]                                        ; $6326: $96

jr_04a_6327:
	ld   d, h                                        ; $6327: $54
	dec  c                                           ; $6328: $0d
	inc  b                                           ; $6329: $04
	jr   nc, jr_04a_6386                             ; $632a: $30 $5a

	ld   e, c                                        ; $632c: $59
	sbc  l                                           ; $632d: $9d
	ld   e, l                                        ; $632e: $5d
	inc  bc                                          ; $632f: $03
	ld   c, a                                        ; $6330: $4f
	ld   a, c                                        ; $6331: $79
	inc  bc                                          ; $6332: $03
	ld   e, c                                        ; $6333: $59
	and  b                                           ; $6334: $a0
	sub  d                                           ; $6335: $92
	sbc  c                                           ; $6336: $99
	ld   h, c                                        ; $6337: $61
	halt                                             ; $6338: $76
	sbc  a                                           ; $6339: $9f
	dec  c                                           ; $633a: $0d
	ld   [bc], a                                     ; $633b: $02
	dec  bc                                          ; $633c: $0b
	inc  bc                                          ; $633d: $03
	ld   h, l                                        ; $633e: $65
	ld   [hl], l                                     ; $633f: $75
	ld   h, a                                        ; $6340: $67
	sbc  l                                           ; $6341: $9d
	sbc  a                                           ; $6342: $9f
	dec  c                                           ; $6343: $0d
	nop                                              ; $6344: $00
	ld   a, [bc]                                     ; $6345: $0a
	ld   bc, $e902                                   ; $6346: $01 $02 $e9
	sub  a                                           ; $6349: $97
	ld   h, l                                        ; $634a: $65
	ld   l, l                                        ; $634b: $6d
	sbc  b                                           ; $634c: $98
	ld   h, l                                        ; $634d: $65
	ld   a, b                                        ; $634e: $78
	ld   d, d                                        ; $634f: $52
	sub  [hl]                                        ; $6350: $96
	ld   d, h                                        ; $6351: $54
	ld   a, c                                        ; $6352: $79
	sbc  [hl]                                        ; $6353: $9e
	dec  c                                           ; $6354: $0d
	ld   l, a                                        ; $6355: $6f
	sub  c                                           ; $6356: $91
	and  c                                           ; $6357: $a1
	halt                                             ; $6358: $76
	inc  bc                                          ; $6359: $03
	add  hl, de                                      ; $635a: $19
	dec  b                                           ; $635b: $05
	jr   nz, jr_04a_62fe                             ; $635c: $20 $a0

	ld   h, a                                        ; $635e: $67
	sbc  c                                           ; $635f: $99
	ld   h, c                                        ; $6360: $61
	halt                                             ; $6361: $76
	sbc  a                                           ; $6362: $9f
	dec  c                                           ; $6363: $0d
	ld   d, d                                        ; $6364: $52
	ld   d, d                                        ; $6365: $52
	ld   [hl], l                                     ; $6366: $75
	ld   h, a                                        ; $6367: $67
	sbc  l                                           ; $6368: $9d
	ld   a, e                                        ; $6369: $7b
	sbc  a                                           ; $636a: $9f
	dec  c                                           ; $636b: $0d
	nop                                              ; $636c: $00
	ld   a, [bc]                                     ; $636d: $0a
	nop                                              ; $636e: $00
	inc  e                                           ; $636f: $1c
	ld   [bc], a                                     ; $6370: $02
	rlca                                             ; $6371: $07
	rlca                                             ; $6372: $07
	ld   bc, $546b                                   ; $6373: $01 $6b $54

jr_04a_6376:
	rst  $38                                         ; $6376: $ff
	rst  $38                                         ; $6377: $ff
	dec  c                                           ; $6378: $0d
	sbc  l                                           ; $6379: $9d
	ld   l, l                                        ; $637a: $6d
	ld   e, l                                        ; $637b: $5d
	ld   h, l                                        ; $637c: $65
	ld   e, c                                        ; $637d: $59
	sub  a                                           ; $637e: $97
	ld   a, h                                        ; $637f: $7c
	ret  c                                           ; $6380: $d8

	xor  $bd                                         ; $6381: $ee $bd
	push af                                          ; $6383: $f5
	ret                                              ; $6384: $c9


	ld   a, l                                        ; $6385: $7d

jr_04a_6386:
	dec  c                                           ; $6386: $0d
	ld   [bc], a                                     ; $6387: $02
	rst  $38                                         ; $6388: $ff
	ld   e, a                                        ; $6389: $5f
	inc  bc                                          ; $638a: $03
	jr   jr_04a_6327                                 ; $638b: $18 $9a

	ld   a, b                                        ; $638d: $78
	ld   d, d                                        ; $638e: $52
	ld   a, h                                        ; $638f: $7c
	ld   [hl], l                                     ; $6390: $75
	ld   h, a                                        ; $6391: $67
	sbc  l                                           ; $6392: $9d
	ld   a, e                                        ; $6393: $7b
	sbc  a                                           ; $6394: $9f
	dec  c                                           ; $6395: $0d
	nop                                              ; $6396: $00
	ld   a, [bc]                                     ; $6397: $0a
	dec  e                                           ; $6398: $1d
	ld   b, b                                        ; $6399: $40
	ld   [de], a                                     ; $639a: $12
	inc  bc                                          ; $639b: $03
	ld   [de], a                                     ; $639c: $12
	ld   bc, $2903                                   ; $639d: $01 $03 $29
	nop                                              ; $63a0: $00
	ld   bc, $5490                                   ; $63a1: $01 $90 $54
	ld   d, d                                        ; $63a4: $52
	ld   d, d                                        ; $63a5: $52
	ld   [hl], l                                     ; $63a6: $75
	ld   h, a                                        ; $63a7: $67
	sbc  l                                           ; $63a8: $9d
	sbc  a                                           ; $63a9: $9f
	dec  c                                           ; $63aa: $0d
	nop                                              ; $63ab: $00
	ld   a, [bc]                                     ; $63ac: $0a
	nop                                              ; $63ad: $00
	nop                                              ; $63ae: $00
	inc  bc                                          ; $63af: $03
	ld   c, [hl]                                     ; $63b0: $4e
	ld   [bc], a                                     ; $63b1: $02
	nop                                              ; $63b2: $00
	inc  bc                                          ; $63b3: $03
	ld   c, b                                        ; $63b4: $48
	add  hl, hl                                      ; $63b5: $29
	add  hl, hl                                      ; $63b6: $29
	ld   bc, $2201                                   ; $63b7: $01 $01 $22
	nop                                              ; $63ba: $00
	inc  e                                           ; $63bb: $1c
	ld   bc, $0000                                   ; $63bc: $01 $00 $00
	ld   [bc], a                                     ; $63bf: $02
	ld   bc, $9e50                                   ; $63c0: $01 $50 $9e
	ld   [$6300], sp                                 ; $63c3: $08 $00 $63
	and  c                                           ; $63c6: $a1
	sbc  a                                           ; $63c7: $9f
	dec  c                                           ; $63c8: $0d
	ld   [bc], a                                     ; $63c9: $02
	sub  l                                           ; $63ca: $95
	ld   [bc], a                                     ; $63cb: $02
	sub  e                                           ; $63cc: $93
	sbc  b                                           ; $63cd: $98
	sbc  [hl]                                        ; $63ce: $9e
	ld   h, d                                        ; $63cf: $62
	ld   [bc], a                                     ; $63d0: $02
	sub  h                                           ; $63d1: $94
	dec  b                                           ; $63d2: $05
	rrca                                             ; $63d3: $0f
	ld   h, e                                        ; $63d4: $63
	adc  h                                           ; $63d5: $8c
	ld   [hl], l                                     ; $63d6: $75
	ld   h, a                                        ; $63d7: $67
	sbc  a                                           ; $63d8: $9f
	dec  c                                           ; $63d9: $0d
	nop                                              ; $63da: $00
	ld   a, [bc]                                     ; $63db: $0a
	rrca                                             ; $63dc: $0f
	nop                                              ; $63dd: $00
	ld   bc, $0401                                   ; $63de: $01 $01 $04
	ld   c, c                                        ; $63e1: $49
	ld   h, l                                        ; $63e2: $65
	ld   [hl], h                                     ; $63e3: $74
	sbc  c                                           ; $63e4: $99
	and  c                                           ; $63e5: $a1
	ld   [hl], l                                     ; $63e6: $75
	ld   h, a                                        ; $63e7: $67
	ld   e, c                                        ; $63e8: $59
	ld   sp, hl                                      ; $63e9: $f9
	dec  c                                           ; $63ea: $0d
	nop                                              ; $63eb: $00
	ld   a, [bc]                                     ; $63ec: $0a
	inc  e                                           ; $63ed: $1c
	ld   bc, $0000                                   ; $63ee: $01 $00 $00
	ld   bc, $956f                                   ; $63f1: $01 $6f $95
	ld   [hl], c                                     ; $63f4: $71
	halt                                             ; $63f5: $76
	ld   [bc], a                                     ; $63f6: $02
	ld   h, l                                        ; $63f7: $65
	ld   d, [hl]                                     ; $63f8: $56
	ld   [bc], a                                     ; $63f9: $02
	jp   hScriptOpcodeParams                                       ; $63fa: $c3 $a0 $ff


	rst  $38                                         ; $63fd: $ff
	dec  c                                           ; $63fe: $0d
	ld   d, b                                        ; $63ff: $50
	sbc  [hl]                                        ; $6400: $9e
	inc  b                                           ; $6401: $04
	ld   c, $65                                      ; $6402: $0e $65
	ld   l, l                                        ; $6404: $6d
	ld   [bc], a                                     ; $6405: $02
	jp   $9166                                       ; $6406: $c3 $66 $91


	ld   a, b                                        ; $6409: $78
	ld   d, d                                        ; $640a: $52
	ld   [hl], l                                     ; $640b: $75
	ld   h, a                                        ; $640c: $67
	sub  [hl]                                        ; $640d: $96
	sbc  a                                           ; $640e: $9f
	dec  c                                           ; $640f: $0d
	nop                                              ; $6410: $00
	ld   a, [bc]                                     ; $6411: $0a
	inc  e                                           ; $6412: $1c
	ld   bc, $0101                                   ; $6413: $01 $01 $01
	ld   bc, $8b03                                   ; $6416: $01 $03 $8b
	ld   a, l                                        ; $6419: $7d
	dec  b                                           ; $641a: $05
	db   $10                                         ; $641b: $10
	inc  bc                                          ; $641c: $03
	ld   a, c                                        ; $641d: $79
	ld   d, d                                        ; $641e: $52
	sub  [hl]                                        ; $641f: $96
	ld   d, d                                        ; $6420: $52
	sub  [hl]                                        ; $6421: $96
	inc  bc                                          ; $6422: $03
	ld   l, b                                        ; $6423: $68
	ld   [bc], a                                     ; $6424: $02
	sub  e                                           ; $6425: $93
	ld   [bc], a                                     ; $6426: $02
	sbc  c                                           ; $6427: $99
	ld   [bc], a                                     ; $6428: $02
	rra                                              ; $6429: $1f
	ld   a, h                                        ; $642a: $7c
	dec  c                                           ; $642b: $0d
	inc  b                                           ; $642c: $04
	inc  c                                           ; $642d: $0c
	inc  b                                           ; $642e: $04
	adc  a                                           ; $642f: $8f
	ld   e, d                                        ; $6430: $5a
	inc  b                                           ; $6431: $04
	ld   b, $5d                                      ; $6432: $06 $5d
	sub  a                                           ; $6434: $97
	ld   h, l                                        ; $6435: $65
	ld   d, d                                        ; $6436: $52
	and  c                                           ; $6437: $a1
	ld   [hl], l                                     ; $6438: $75
	ld   h, a                                        ; $6439: $67
	sbc  a                                           ; $643a: $9f
	dec  c                                           ; $643b: $0d
	ld   l, [hl]                                     ; $643c: $6e
	ld   e, c                                        ; $643d: $59
	sub  a                                           ; $643e: $97
	ld   l, a                                        ; $643f: $6f
	sub  l                                           ; $6440: $95
	ld   [hl], c                                     ; $6441: $71
	halt                                             ; $6442: $76
	jp   z, $caae                                    ; $6443: $ca $ae $ca

	xor  [hl]                                        ; $6446: $ae
	ld   h, l                                        ; $6447: $65
	ld   [hl], h                                     ; $6448: $74
	sbc  a                                           ; $6449: $9f
	dec  c                                           ; $644a: $0d
	nop                                              ; $644b: $00
	ld   a, [bc]                                     ; $644c: $0a
	ld   bc, $0008                                   ; $644d: $01 $08 $00
	ld   h, e                                        ; $6450: $63
	and  c                                           ; $6451: $a1
	ld   a, l                                        ; $6452: $7d
	sbc  [hl]                                        ; $6453: $9e
	dec  c                                           ; $6454: $0d
	inc  b                                           ; $6455: $04
	adc  [hl]                                        ; $6456: $8e
	inc  b                                           ; $6457: $04
	inc  c                                           ; $6458: $0c
	halt                                             ; $6459: $76
	ld   e, c                                        ; $645a: $59
	ld   [hl], c                                     ; $645b: $71
	ld   [hl], h                                     ; $645c: $74
	ld   e, b                                        ; $645d: $58
	ld   [bc], a                                     ; $645e: $02
	sbc  d                                           ; $645f: $9a
	ld   e, e                                        ; $6460: $5b
	ld   [hl], l                                     ; $6461: $75
	ld   h, a                                        ; $6462: $67
	ld   e, c                                        ; $6463: $59
	ld   sp, hl                                      ; $6464: $f9
	dec  c                                           ; $6465: $0d
	nop                                              ; $6466: $00
	ld   a, [bc]                                     ; $6467: $0a
	add  hl, de                                      ; $6468: $19
	dec  b                                           ; $6469: $05
	ld   [bc], a                                     ; $646a: $02
	ld   [bc], a                                     ; $646b: $02
	sbc  d                                           ; $646c: $9a
	ld   e, e                                        ; $646d: $5b
	ld   [hl], l                                     ; $646e: $75
	ld   h, a                                        ; $646f: $67
	nop                                              ; $6470: $00
	nop                                              ; $6471: $00
	ld   e, e                                        ; $6472: $5b
	sub  l                                           ; $6473: $95
	ld   d, h                                        ; $6474: $54
	adc  l                                           ; $6475: $8d
	ld   a, b                                        ; $6476: $78
	ld   d, d                                        ; $6477: $52
	ld   [hl], l                                     ; $6478: $75
	ld   h, a                                        ; $6479: $67
	nop                                              ; $647a: $00
	ld   bc, $d607                                   ; $647b: $01 $07 $d6
	nop                                              ; $647e: $00
	ld   [bc], a                                     ; $647f: $02
	inc  bc                                          ; $6480: $03
	ld   bc, $2000                                   ; $6481: $01 $00 $20
	nop                                              ; $6484: $00
	rlca                                             ; $6485: $07
	ld   d, b                                        ; $6486: $50
	ld   bc, $0302                                   ; $6487: $01 $02 $03
	ld   bc, $2001                                   ; $648a: $01 $01 $20
	nop                                              ; $648d: $00
	ld   b, $ac                                      ; $648e: $06 $ac
	ld   bc, $000f                                   ; $6490: $01 $0f $00
	ld   bc, $0201                                   ; $6493: $01 $01 $02
	sbc  d                                           ; $6496: $9a
	ld   e, e                                        ; $6497: $5b
	ld   [hl], l                                     ; $6498: $75
	ld   h, a                                        ; $6499: $67
	sub  [hl]                                        ; $649a: $96
	sbc  a                                           ; $649b: $9f
	dec  c                                           ; $649c: $0d
	ld   l, [hl]                                     ; $649d: $6e
	ld   e, c                                        ; $649e: $59
	sub  a                                           ; $649f: $97
	sbc  [hl]                                        ; $64a0: $9e
	ld   [bc], a                                     ; $64a1: $02
	ld   c, [hl]                                     ; $64a2: $4e
	ld   [bc], a                                     ; $64a3: $02
	sub  d                                           ; $64a4: $92
	inc  b                                           ; $64a5: $04
	add  hl, bc                                      ; $64a6: $09
	ld   a, h                                        ; $64a7: $7c
	inc  b                                           ; $64a8: $04
	ld   a, b                                        ; $64a9: $78
	ld   a, c                                        ; $64aa: $79
	sub  b                                           ; $64ab: $90
	dec  c                                           ; $64ac: $0d
	inc  b                                           ; $64ad: $04
	ld   c, $52                                      ; $64ae: $0e $52
	ld   a, c                                        ; $64b0: $79
	ld   e, e                                        ; $64b1: $5b
	sub  l                                           ; $64b2: $95
	ld   d, h                                        ; $64b3: $54
	adc  l                                           ; $64b4: $8d
	ld   e, d                                        ; $64b5: $5a
	ld   d, b                                        ; $64b6: $50
	sbc  b                                           ; $64b7: $98
	adc  h                                           ; $64b8: $8c
	ld   h, a                                        ; $64b9: $67
	sbc  a                                           ; $64ba: $9f
	dec  c                                           ; $64bb: $0d
	nop                                              ; $64bc: $00
	ld   a, [bc]                                     ; $64bd: $0a
	inc  e                                           ; $64be: $1c
	ld   bc, $0101                                   ; $64bf: $01 $01 $01
	dec  e                                           ; $64c2: $1d
	ld   b, b                                        ; $64c3: $40
	ld   de, $1103                                   ; $64c4: $11 $03 $11
	ld   bc, $2803                                   ; $64c7: $01 $03 $28
	nop                                              ; $64ca: $00
	ld   bc, $546b                                   ; $64cb: $01 $6b $54
	ld   a, b                                        ; $64ce: $78
	and  c                                           ; $64cf: $a1
	ld   [hl], l                                     ; $64d0: $75
	ld   h, a                                        ; $64d1: $67
	ld   e, c                                        ; $64d2: $59
	ld   a, [$540d]                                  ; $64d3: $fa $0d $54
	sbc  d                                           ; $64d6: $9a
	ld   h, l                                        ; $64d7: $65
	ld   d, d                                        ; $64d8: $52
	ld   [hl], l                                     ; $64d9: $75
	ld   h, a                                        ; $64da: $67
	sbc  a                                           ; $64db: $9f
	dec  c                                           ; $64dc: $0d
	nop                                              ; $64dd: $00
	ld   a, [bc]                                     ; $64de: $0a
	ld   bc, $9166                                   ; $64df: $01 $66 $91
	sbc  [hl]                                        ; $64e2: $9e
	inc  b                                           ; $64e3: $04
	inc  c                                           ; $64e4: $0c
	inc  b                                           ; $64e5: $04
	adc  a                                           ; $64e6: $8f
	ld   e, d                                        ; $64e7: $5a
	inc  b                                           ; $64e8: $04
	ld   b, $52                                      ; $64e9: $06 $52
	ld   l, l                                        ; $64eb: $6d
	sub  a                                           ; $64ec: $97
	dec  c                                           ; $64ed: $0d
	ld   [$6300], sp                                 ; $64ee: $08 $00 $63
	and  c                                           ; $64f1: $a1
	ld   a, c                                        ; $64f2: $79
	sub  b                                           ; $64f3: $90
	ld   [bc], a                                     ; $64f4: $02
	sub  l                                           ; $64f5: $95
	ld   l, c                                        ; $64f6: $69
	ld   [hl], h                                     ; $64f7: $74
	dec  c                                           ; $64f8: $0d
	ld   d, b                                        ; $64f9: $50
	ld   h, b                                        ; $64fa: $60
	adc  h                                           ; $64fb: $8c
	ld   h, a                                        ; $64fc: $67
	ld   a, e                                        ; $64fd: $7b
	sbc  a                                           ; $64fe: $9f
	dec  c                                           ; $64ff: $0d
	nop                                              ; $6500: $00
	ld   a, [bc]                                     ; $6501: $0a
	dec  c                                           ; $6502: $0d
	nop                                              ; $6503: $00
	nop                                              ; $6504: $00
	rrca                                             ; $6505: $0f
	nop                                              ; $6506: $00
	ld   bc, $1e09                                   ; $6507: $01 $09 $1e
	nop                                              ; $650a: $00
	rrca                                             ; $650b: $0f
	nop                                              ; $650c: $00
	ld   bc, $5b01                                   ; $650d: $01 $01 $5b
	sub  l                                           ; $6510: $95
	ld   d, h                                        ; $6511: $54
	adc  l                                           ; $6512: $8d
	ld   a, b                                        ; $6513: $78
	ld   d, d                                        ; $6514: $52
	ld   [hl], l                                     ; $6515: $75
	ld   h, a                                        ; $6516: $67
	sbc  a                                           ; $6517: $9f
	dec  c                                           ; $6518: $0d
	nop                                              ; $6519: $00
	ld   a, [bc]                                     ; $651a: $0a
	inc  e                                           ; $651b: $1c
	ld   bc, $0404                                   ; $651c: $01 $04 $04
	dec  e                                           ; $651f: $1d
	ld   b, b                                        ; $6520: $40
	ld   de, $1103                                   ; $6521: $11 $03 $11
	ld   bc, $2902                                   ; $6524: $01 $02 $29
	nop                                              ; $6527: $00
	ld   bc, $546b                                   ; $6528: $01 $6b $54
	ld   [hl], l                                     ; $652b: $75
	ld   h, a                                        ; $652c: $67
	ld   e, c                                        ; $652d: $59
	rst  $38                                         ; $652e: $ff
	rst  $38                                         ; $652f: $ff
	dec  c                                           ; $6530: $0d
	ld   [hl], l                                     ; $6531: $75
	sub  b                                           ; $6532: $90
	sbc  [hl]                                        ; $6533: $9e
	ld   [bc], a                                     ; $6534: $02
	ld   e, b                                        ; $6535: $58
	ld   [bc], a                                     ; $6536: $02
	add  [hl]                                        ; $6537: $86
	ld   e, d                                        ; $6538: $5a
	ld   d, b                                        ; $6539: $50
	ld   [hl], c                                     ; $653a: $71
	ld   l, l                                        ; $653b: $6d
	sub  a                                           ; $653c: $97
	dec  c                                           ; $653d: $0d
	ld   [bc], a                                     ; $653e: $02
	sub  l                                           ; $653f: $95
	ld   [hl], h                                     ; $6540: $74
	adc  l                                           ; $6541: $8d
	sbc  c                                           ; $6542: $99
	halt                                             ; $6543: $76
	ld   d, d                                        ; $6544: $52
	ld   d, d                                        ; $6545: $52
	ld   [hl], l                                     ; $6546: $75
	ld   h, a                                        ; $6547: $67
	sub  [hl]                                        ; $6548: $96
	sbc  a                                           ; $6549: $9f
	dec  c                                           ; $654a: $0d
	nop                                              ; $654b: $00
	ld   a, [bc]                                     ; $654c: $0a
	ld   bc, $9a6b                                   ; $654d: $01 $6b $9a
	ld   [hl], l                                     ; $6550: $75
	ld   a, l                                        ; $6551: $7d
	sbc  [hl]                                        ; $6552: $9e
	inc  bc                                          ; $6553: $03
	add  e                                           ; $6554: $83
	dec  b                                           ; $6555: $05
	dec  c                                           ; $6556: $0d
	ld   h, l                                        ; $6557: $65
	adc  h                                           ; $6558: $8c
	ld   h, a                                        ; $6559: $67
	sbc  a                                           ; $655a: $9f
	dec  c                                           ; $655b: $0d
	nop                                              ; $655c: $00
	ld   a, [bc]                                     ; $655d: $0a
	dec  c                                           ; $655e: $0d
	nop                                              ; $655f: $00
	nop                                              ; $6560: $00
	rrca                                             ; $6561: $0f
	nop                                              ; $6562: $00
	ld   bc, $1e09                                   ; $6563: $01 $09 $1e
	nop                                              ; $6566: $00
	inc  e                                           ; $6567: $1c
	ld   bc, $0303                                   ; $6568: $01 $03 $03
	ld   bc, $9e50                                   ; $656b: $01 $50 $9e
	ld   l, e                                        ; $656e: $6b
	and  c                                           ; $656f: $a1
	ld   a, b                                        ; $6570: $78
	ld   a, c                                        ; $6571: $79
	ld   [bc], a                                     ; $6572: $02
	ld   h, l                                        ; $6573: $65
	ld   d, [hl]                                     ; $6574: $56
	ld   h, c                                        ; $6575: $61
	adc  h                                           ; $6576: $8c
	ld   a, b                                        ; $6577: $78
	ld   d, d                                        ; $6578: $52
	ld   [hl], l                                     ; $6579: $75
	dec  c                                           ; $657a: $0d
	ld   [bc], a                                     ; $657b: $02
	inc  [hl]                                        ; $657c: $34
	ld   h, e                                        ; $657d: $63
	ld   d, d                                        ; $657e: $52
	sbc  a                                           ; $657f: $9f
	dec  c                                           ; $6580: $0d
	nop                                              ; $6581: $00
	ld   a, [bc]                                     ; $6582: $0a
	rrca                                             ; $6583: $0f
	nop                                              ; $6584: $00
	ld   bc, $6701                                   ; $6585: $01 $01 $67
	adc  l                                           ; $6588: $8d
	adc  h                                           ; $6589: $8c
	ld   l, c                                        ; $658a: $69
	and  c                                           ; $658b: $a1
	rst  $38                                         ; $658c: $ff
	rst  $38                                         ; $658d: $ff
	dec  c                                           ; $658e: $0d
	sub  [hl]                                        ; $658f: $96
	ld   e, l                                        ; $6590: $5d
	inc  b                                           ; $6591: $04
	sbc  [hl]                                        ; $6592: $9e
	ld   e, c                                        ; $6593: $59
	sub  a                                           ; $6594: $97
	ld   a, b                                        ; $6595: $78
	ld   d, d                                        ; $6596: $52

Call_04a_6597:
	sub  b                                           ; $6597: $90
	ld   a, h                                        ; $6598: $7c
	ld   [hl], l                                     ; $6599: $75
	rst  $38                                         ; $659a: $ff
	rst  $38                                         ; $659b: $ff
	dec  c                                           ; $659c: $0d
	nop                                              ; $659d: $00
	ld   a, [bc]                                     ; $659e: $0a
	inc  e                                           ; $659f: $1c

Jump_04a_65a0:
	ld   bc, $0101                                   ; $65a0: $01 $01 $01
	ld   bc, $9166                                   ; $65a3: $01 $66 $91
	sbc  [hl]                                        ; $65a6: $9e
	inc  bc                                          ; $65a7: $03
	ld   l, b                                        ; $65a8: $68
	ld   [bc], a                                     ; $65a9: $02
	sub  e                                           ; $65aa: $93
	ld   [bc], a                                     ; $65ab: $02
	sbc  c                                           ; $65ac: $99
	ld   [bc], a                                     ; $65ad: $02
	rra                                              ; $65ae: $1f
	and  b                                           ; $65af: $a0
	ld   [bc], a                                     ; $65b0: $02
	sub  l                                           ; $65b1: $95
	ld   [hl], h                                     ; $65b2: $74
	ld   [bc], a                                     ; $65b3: $02
	inc  [hl]                                        ; $65b4: $34
	ld   h, e                                        ; $65b5: $63
	ld   d, d                                        ; $65b6: $52
	sbc  a                                           ; $65b7: $9f
	dec  c                                           ; $65b8: $0d
	ld   e, e                                        ; $65b9: $5b
	ld   [hl], c                                     ; $65ba: $71
	halt                                             ; $65bb: $76
	ld   e, e                                        ; $65bc: $5b
	sub  l                                           ; $65bd: $95
	ld   d, h                                        ; $65be: $54
	adc  l                                           ; $65bf: $8d
	and  b                                           ; $65c0: $a0
	inc  bc                                          ; $65c1: $03
	and  b                                           ; $65c2: $a0
	ld   [hl], d                                     ; $65c3: $72
	sub  [hl]                                        ; $65c4: $96
	ld   d, h                                        ; $65c5: $54
	ld   a, c                                        ; $65c6: $79
	dec  c                                           ; $65c7: $0d
	ld   a, b                                        ; $65c8: $78
	sbc  b                                           ; $65c9: $98
	adc  h                                           ; $65ca: $8c
	ld   h, a                                        ; $65cb: $67
	sub  [hl]                                        ; $65cc: $96
	sbc  a                                           ; $65cd: $9f
	dec  c                                           ; $65ce: $0d
	nop                                              ; $65cf: $00
	ld   a, [bc]                                     ; $65d0: $0a
	dec  c                                           ; $65d1: $0d
	nop                                              ; $65d2: $00
	nop                                              ; $65d3: $00
	rrca                                             ; $65d4: $0f
	nop                                              ; $65d5: $00
	ld   bc, $1e09                                   ; $65d6: $01 $09 $1e
	nop                                              ; $65d9: $00
	nop                                              ; $65da: $00
	ld   [bc], a                                     ; $65db: $02
	rlca                                             ; $65dc: $07
	ld   l, $00                                      ; $65dd: $2e $00
	inc  bc                                          ; $65df: $03
	ld   [de], a                                     ; $65e0: $12
	ld   bc, $2265                                   ; $65e1: $01 $65 $22
	nop                                              ; $65e4: $00
	rlca                                             ; $65e5: $07
	ld   l, b                                        ; $65e6: $68
	nop                                              ; $65e7: $00
	inc  bc                                          ; $65e8: $03
	ld   [de], a                                     ; $65e9: $12
	ld   bc, $2565                                   ; $65ea: $01 $65 $25
	inc  bc                                          ; $65ed: $03
	ld   [de], a                                     ; $65ee: $12
	ld   bc, $2273                                   ; $65ef: $01 $73 $22
	inc  e                                           ; $65f2: $1c
	nop                                              ; $65f3: $00
	rlca                                             ; $65f4: $07
	jp   $0300                                       ; $65f5: $c3 $00 $03


	ld   [de], a                                     ; $65f8: $12
	ld   bc, $2573                                   ; $65f9: $01 $73 $25
	ld   [bc], a                                     ; $65fc: $02
	nop                                              ; $65fd: $00
	ld   bc, $2c02                                   ; $65fe: $01 $02 $2c
	ld   bc, $2001                                   ; $6601: $01 $01 $20
	inc  e                                           ; $6604: $1c
	nop                                              ; $6605: $00
	ld   b, $2a                                      ; $6606: $06 $2a
	ld   bc, $000f                                   ; $6608: $01 $0f $00
	ld   bc, $6701                                   ; $660b: $01 $01 $67
	adc  l                                           ; $660e: $8d
	sbc  d                                           ; $660f: $9a
	ld   h, e                                        ; $6610: $63
	and  c                                           ; $6611: $a1
	sbc  a                                           ; $6612: $9f
	dec  c                                           ; $6613: $0d
	nop                                              ; $6614: $00
	ld   a, [bc]                                     ; $6615: $0a
	inc  e                                           ; $6616: $1c
	ld   [bc], a                                     ; $6617: $02
	nop                                              ; $6618: $00
	nop                                              ; $6619: $00
	ld   bc, $8c52                                   ; $661a: $01 $52 $8c
	sbc  [hl]                                        ; $661d: $9e
	inc  bc                                          ; $661e: $03
	ld   l, e                                        ; $661f: $6b
	ld   e, d                                        ; $6620: $5a
	inc  b                                           ; $6621: $04
	sbc  c                                           ; $6622: $99
	ld   l, c                                        ; $6623: $69
	adc  h                                           ; $6624: $8c
	ld   l, c                                        ; $6625: $69
	and  c                                           ; $6626: $a1
	ld   a, h                                        ; $6627: $7c
	sbc  a                                           ; $6628: $9f
	dec  c                                           ; $6629: $0d
	inc  b                                           ; $662a: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $662b: $cf
	inc  b                                           ; $662c: $04
	xor  d                                           ; $662d: $aa
	ld   a, c                                        ; $662e: $79
	ld   h, l                                        ; $662f: $65
	ld   [hl], h                                     ; $6630: $74
	ld   e, l                                        ; $6631: $5d
	ld   l, [hl]                                     ; $6632: $6e
	ld   h, e                                        ; $6633: $63
	ld   d, d                                        ; $6634: $52
	ld   a, b                                        ; $6635: $78
	sbc  a                                           ; $6636: $9f
	dec  c                                           ; $6637: $0d
	nop                                              ; $6638: $00
	ld   a, [bc]                                     ; $6639: $0a
	dec  c                                           ; $663a: $0d
	nop                                              ; $663b: $00
	nop                                              ; $663c: $00
	rrca                                             ; $663d: $0f
	nop                                              ; $663e: $00
	ld   bc, $1e09                                   ; $663f: $01 $09 $1e
	nop                                              ; $6642: $00
	inc  e                                           ; $6643: $1c
	ld   [bc], a                                     ; $6644: $02
	nop                                              ; $6645: $00
	nop                                              ; $6646: $00
	ld   bc, $9750                                   ; $6647: $01 $50 $97
	sbc  [hl]                                        ; $664a: $9e
	ld   [$6308], sp                                 ; $664b: $08 $08 $63
	and  c                                           ; $664e: $a1
	sbc  a                                           ; $664f: $9f
	dec  c                                           ; $6650: $0d
	nop                                              ; $6651: $00
	ld   a, [bc]                                     ; $6652: $0a
	rrca                                             ; $6653: $0f
	nop                                              ; $6654: $00
	ld   bc, $6701                                   ; $6655: $01 $01 $67
	adc  l                                           ; $6658: $8d
	sbc  d                                           ; $6659: $9a
	ld   h, e                                        ; $665a: $63
	and  c                                           ; $665b: $a1
	sbc  a                                           ; $665c: $9f
	inc  b                                           ; $665d: $04
	ld   l, l                                        ; $665e: $6d
	ld   a, h                                        ; $665f: $7c
	inc  b                                           ; $6660: $04
	rst  ToBoot                                         ; $6661: $c7
	inc  bc                                          ; $6662: $03
	ld   c, a                                        ; $6663: $4f
	ld   a, l                                        ; $6664: $7d
	dec  c                                           ; $6665: $0d
	ld   [$7500], sp                                 ; $6666: $08 $00 $75
	ld   h, a                                        ; $6669: $67
	sbc  a                                           ; $666a: $9f
	dec  c                                           ; $666b: $0d
	nop                                              ; $666c: $00
	ld   a, [bc]                                     ; $666d: $0a
	rrca                                             ; $666e: $0f
	ld   [bc], a                                     ; $666f: $02
	nop                                              ; $6670: $00
	ld   bc, $9a6b                                   ; $6671: $01 $6b $9a
	ld   a, l                                        ; $6674: $7d
	halt                                             ; $6675: $76
	sub  b                                           ; $6676: $90
	ld   e, c                                        ; $6677: $59
	ld   e, l                                        ; $6678: $5d
	sbc  [hl]                                        ; $6679: $9e
	dec  c                                           ; $667a: $0d
	ld   [bc], a                                     ; $667b: $02
	sub  l                                           ; $667c: $95
	ld   [bc], a                                     ; $667d: $02
	sub  e                                           ; $667e: $93
	sbc  b                                           ; $667f: $98
	sbc  [hl]                                        ; $6680: $9e
	ld   e, d                                        ; $6681: $5a
	and  c                                           ; $6682: $a1
	ld   a, [hl]                                     ; $6683: $7e
	sbc  b                                           ; $6684: $98
	ld   a, b                                        ; $6685: $78
	ld   h, e                                        ; $6686: $63
	ld   d, d                                        ; $6687: $52
	sbc  a                                           ; $6688: $9f
	dec  c                                           ; $6689: $0d
	ld   [hl], l                                     ; $668a: $75
	ld   a, l                                        ; $668b: $7d
	inc  bc                                          ; $668c: $03
	add  e                                           ; $668d: $83
	dec  b                                           ; $668e: $05
	dec  c                                           ; $668f: $0d
	rst  $38                                         ; $6690: $ff
	rst  $38                                         ; $6691: $ff
	dec  c                                           ; $6692: $0d
	nop                                              ; $6693: $00
	ld   a, [bc]                                     ; $6694: $0a
	dec  c                                           ; $6695: $0d
	nop                                              ; $6696: $00
	nop                                              ; $6697: $00
	rrca                                             ; $6698: $0f
	nop                                              ; $6699: $00
	ld   bc, $1e09                                   ; $669a: $01 $09 $1e
	nop                                              ; $669d: $00
	inc  e                                           ; $669e: $1c
	ld   [bc], a                                     ; $669f: $02
	nop                                              ; $66a0: $00
	nop                                              ; $66a1: $00
	ld   bc, $9750                                   ; $66a2: $01 $50 $97
	sbc  [hl]                                        ; $66a5: $9e
	ld   [$6308], sp                                 ; $66a6: $08 $08 $63
	and  c                                           ; $66a9: $a1
	sbc  a                                           ; $66aa: $9f
	dec  c                                           ; $66ab: $0d
	ld   [bc], a                                     ; $66ac: $02
	sub  l                                           ; $66ad: $95
	ld   [bc], a                                     ; $66ae: $02
	sub  e                                           ; $66af: $93
	sbc  b                                           ; $66b0: $98
	ld   h, d                                        ; $66b1: $62
	ld   e, l                                        ; $66b2: $5d
	sbc  e                                           ; $66b3: $9b
	ld   d, h                                        ; $66b4: $54
	ld   h, e                                        ; $66b5: $63
	adc  h                                           ; $66b6: $8c
	sbc  a                                           ; $66b7: $9f
	dec  c                                           ; $66b8: $0d
	nop                                              ; $66b9: $00
	ld   a, [bc]                                     ; $66ba: $0a
	rrca                                             ; $66bb: $0f
	nop                                              ; $66bc: $00
	ld   bc, $6701                                   ; $66bd: $01 $01 $67
	adc  l                                           ; $66c0: $8d
	sbc  d                                           ; $66c1: $9a
	ld   h, e                                        ; $66c2: $63
	and  c                                           ; $66c3: $a1
	sbc  a                                           ; $66c4: $9f
	inc  b                                           ; $66c5: $04
	ld   l, l                                        ; $66c6: $6d
	ld   a, h                                        ; $66c7: $7c
	inc  b                                           ; $66c8: $04
	rst  ToBoot                                         ; $66c9: $c7
	inc  bc                                          ; $66ca: $03
	ld   c, a                                        ; $66cb: $4f
	ld   a, l                                        ; $66cc: $7d
	dec  c                                           ; $66cd: $0d
	ld   [$7500], sp                                 ; $66ce: $08 $00 $75
	ld   h, a                                        ; $66d1: $67
	sbc  a                                           ; $66d2: $9f
	dec  c                                           ; $66d3: $0d
	nop                                              ; $66d4: $00
	ld   a, [bc]                                     ; $66d5: $0a
	inc  e                                           ; $66d6: $1c
	ld   [bc], a                                     ; $66d7: $02
	ld   bc, $0101                                   ; $66d8: $01 $01 $01
	ld   l, e                                        ; $66db: $6b
	sbc  d                                           ; $66dc: $9a
	ld   a, l                                        ; $66dd: $7d
	halt                                             ; $66de: $76
	sub  b                                           ; $66df: $90
	ld   e, c                                        ; $66e0: $59
	ld   e, l                                        ; $66e1: $5d
	sbc  [hl]                                        ; $66e2: $9e
	dec  c                                           ; $66e3: $0d
	inc  b                                           ; $66e4: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $66e5: $cf
	inc  b                                           ; $66e6: $04
	xor  d                                           ; $66e7: $aa
	sub  b                                           ; $66e8: $90
	ld   e, d                                        ; $66e9: $5a
	and  c                                           ; $66ea: $a1
	ld   a, [hl]                                     ; $66eb: $7e
	sbc  b                                           ; $66ec: $98
	ld   a, b                                        ; $66ed: $78
	ld   h, e                                        ; $66ee: $63
	ld   d, d                                        ; $66ef: $52
	sbc  a                                           ; $66f0: $9f
	dec  c                                           ; $66f1: $0d
	ld   [hl], l                                     ; $66f2: $75
	ld   a, l                                        ; $66f3: $7d
	inc  bc                                          ; $66f4: $03
	add  e                                           ; $66f5: $83
	dec  b                                           ; $66f6: $05
	dec  c                                           ; $66f7: $0d
	sbc  a                                           ; $66f8: $9f
	dec  c                                           ; $66f9: $0d
	nop                                              ; $66fa: $00
	ld   a, [bc]                                     ; $66fb: $0a
	dec  c                                           ; $66fc: $0d
	nop                                              ; $66fd: $00
	nop                                              ; $66fe: $00
	rrca                                             ; $66ff: $0f
	nop                                              ; $6700: $00
	ld   bc, $1e09                                   ; $6701: $01 $09 $1e
	nop                                              ; $6704: $00
	inc  e                                           ; $6705: $1c
	ld   [bc], a                                     ; $6706: $02
	nop                                              ; $6707: $00
	nop                                              ; $6708: $00
	ld   bc, $9750                                   ; $6709: $01 $50 $97
	sbc  [hl]                                        ; $670c: $9e
	ld   [$6308], sp                                 ; $670d: $08 $08 $63
	and  c                                           ; $6710: $a1
	sbc  a                                           ; $6711: $9f
	dec  c                                           ; $6712: $0d
	ld   [bc], a                                     ; $6713: $02
	sub  l                                           ; $6714: $95
	ld   [bc], a                                     ; $6715: $02
	sub  e                                           ; $6716: $93
	sbc  b                                           ; $6717: $98
	ld   h, d                                        ; $6718: $62
	ld   e, l                                        ; $6719: $5d
	sbc  e                                           ; $671a: $9b
	ld   d, h                                        ; $671b: $54
	ld   h, e                                        ; $671c: $63
	adc  h                                           ; $671d: $8c
	sbc  a                                           ; $671e: $9f
	dec  c                                           ; $671f: $0d
	nop                                              ; $6720: $00
	ld   a, [bc]                                     ; $6721: $0a
	rrca                                             ; $6722: $0f
	nop                                              ; $6723: $00
	ld   bc, $6701                                   ; $6724: $01 $01 $67
	adc  l                                           ; $6727: $8d
	sbc  d                                           ; $6728: $9a
	ld   h, e                                        ; $6729: $63
	and  c                                           ; $672a: $a1
	sbc  a                                           ; $672b: $9f
	inc  b                                           ; $672c: $04
	ld   l, l                                        ; $672d: $6d
	ld   a, h                                        ; $672e: $7c
	inc  b                                           ; $672f: $04
	rst  ToBoot                                         ; $6730: $c7
	inc  bc                                          ; $6731: $03
	ld   c, a                                        ; $6732: $4f
	ld   a, l                                        ; $6733: $7d
	dec  c                                           ; $6734: $0d
	ld   [$7500], sp                                 ; $6735: $08 $00 $75
	ld   h, a                                        ; $6738: $67
	sub  [hl]                                        ; $6739: $96
	sbc  a                                           ; $673a: $9f
	halt                                             ; $673b: $76
	ld   h, c                                        ; $673c: $61
	sbc  e                                           ; $673d: $9b
	ld   [hl], l                                     ; $673e: $75
	sbc  [hl]                                        ; $673f: $9e
	dec  c                                           ; $6740: $0d
	sub  b                                           ; $6741: $90
	ld   d, h                                        ; $6742: $54
	ld   e, b                                        ; $6743: $58
	inc  bc                                          ; $6744: $03
	and  a                                           ; $6745: $a7
	adc  l                                           ; $6746: $8d
	ld   a, b                                        ; $6747: $78
	ld   a, h                                        ; $6748: $7c
	ld   [hl], l                                     ; $6749: $75
	ld   h, a                                        ; $674a: $67
	ld   e, c                                        ; $674b: $59
	ld   sp, hl                                      ; $674c: $f9
	dec  c                                           ; $674d: $0d
	nop                                              ; $674e: $00
	ld   a, [bc]                                     ; $674f: $0a
	rrca                                             ; $6750: $0f
	ld   [bc], a                                     ; $6751: $02
	nop                                              ; $6752: $00
	ld   bc, $cf04                                   ; $6753: $01 $04 $cf
	inc  b                                           ; $6756: $04
	xor  d                                           ; $6757: $aa
	ld   a, l                                        ; $6758: $7d
	inc  bc                                          ; $6759: $03
	ld   d, $5f                                      ; $675a: $16 $5f
	ld   d, d                                        ; $675c: $52
	ld   h, c                                        ; $675d: $61
	ld   a, b                                        ; $675e: $78
	and  c                                           ; $675f: $a1
	ld   [hl], l                                     ; $6760: $75
	ld   h, a                                        ; $6761: $67
	ld   a, h                                        ; $6762: $7c
	sub  [hl]                                        ; $6763: $96
	sbc  a                                           ; $6764: $9f
	dec  c                                           ; $6765: $0d
	ld   l, e                                        ; $6766: $6b
	sbc  d                                           ; $6767: $9a
	ld   [hl], l                                     ; $6768: $75
	ld   a, l                                        ; $6769: $7d
	sbc  [hl]                                        ; $676a: $9e
	ld   [bc], a                                     ; $676b: $02
	sub  l                                           ; $676c: $95
	ld   [bc], a                                     ; $676d: $02
	sub  e                                           ; $676e: $93
	sbc  b                                           ; $676f: $98
	dec  c                                           ; $6770: $0d
	ld   e, d                                        ; $6771: $5a
	and  c                                           ; $6772: $a1
	ld   a, [hl]                                     ; $6773: $7e
	sbc  b                                           ; $6774: $98

Jump_04a_6775:
	ld   a, b                                        ; $6775: $78
	ld   h, e                                        ; $6776: $63
	ld   d, d                                        ; $6777: $52
	ld   a, b                                        ; $6778: $78
	sbc  a                                           ; $6779: $9f
	dec  c                                           ; $677a: $0d
	nop                                              ; $677b: $00
	ld   a, [bc]                                     ; $677c: $0a
	dec  c                                           ; $677d: $0d
	nop                                              ; $677e: $00
	nop                                              ; $677f: $00
	rrca                                             ; $6780: $0f
	nop                                              ; $6781: $00
	ld   bc, $1e09                                   ; $6782: $01 $09 $1e
	nop                                              ; $6785: $00
	nop                                              ; $6786: $00
	ld   [bc], a                                     ; $6787: $02
	rlca                                             ; $6788: $07
	ld   l, $00                                      ; $6789: $2e $00
	inc  bc                                          ; $678b: $03
	ld   de, $6501                                   ; $678c: $11 $01 $65
	ld   [hl+], a                                    ; $678f: $22
	nop                                              ; $6790: $00
	rlca                                             ; $6791: $07
	ld   h, l                                        ; $6792: $65
	nop                                              ; $6793: $00
	inc  bc                                          ; $6794: $03
	ld   de, $6501                                   ; $6795: $11 $01 $65
	dec  h                                           ; $6798: $25
	inc  bc                                          ; $6799: $03
	ld   de, $7301                                   ; $679a: $11 $01 $73
	ld   [hl+], a                                    ; $679d: $22
	inc  e                                           ; $679e: $1c
	nop                                              ; $679f: $00
	rlca                                             ; $67a0: $07
	xor  a                                           ; $67a1: $af
	nop                                              ; $67a2: $00
	inc  bc                                          ; $67a3: $03
	ld   de, $7301                                   ; $67a4: $11 $01 $73
	dec  h                                           ; $67a7: $25
	ld   [bc], a                                     ; $67a8: $02
	nop                                              ; $67a9: $00
	ld   bc, $2c02                                   ; $67aa: $01 $02 $2c
	ld   bc, $2001                                   ; $67ad: $01 $01 $20
	inc  e                                           ; $67b0: $1c
	nop                                              ; $67b1: $00
	ld   b, $13                                      ; $67b2: $06 $13
	ld   bc, $000f                                   ; $67b4: $01 $0f $00
	ld   bc, $6301                                   ; $67b7: $01 $01 $63
	ld   e, l                                        ; $67ba: $5d
	sub  a                                           ; $67bb: $97
	ld   h, e                                        ; $67bc: $63
	and  c                                           ; $67bd: $a1
	sbc  a                                           ; $67be: $9f
	dec  c                                           ; $67bf: $0d
	nop                                              ; $67c0: $00
	ld   a, [bc]                                     ; $67c1: $0a
	inc  e                                           ; $67c2: $1c
	ld   bc, $0000                                   ; $67c3: $01 $00 $00
	ld   bc, $8f62                                   ; $67c6: $01 $62 $8f
	and  c                                           ; $67c9: $a1
	ld   a, b                                        ; $67ca: $78
	ld   h, e                                        ; $67cb: $63
	ld   d, d                                        ; $67cc: $52
	sbc  a                                           ; $67cd: $9f
	dec  c                                           ; $67ce: $0d
	ld   d, d                                        ; $67cf: $52
	adc  h                                           ; $67d0: $8c
	dec  b                                           ; $67d1: $05
	jr   z, jr_04a_6826                              ; $67d2: $28 $52

	ld   [hl], l                                     ; $67d4: $75
	sbc  c                                           ; $67d5: $99
	and  c                                           ; $67d6: $a1
	ld   [hl], l                                     ; $67d7: $75
	ld   h, a                                        ; $67d8: $67
	sbc  a                                           ; $67d9: $9f
	dec  c                                           ; $67da: $0d
	ld   l, e                                        ; $67db: $6b
	sbc  d                                           ; $67dc: $9a
	ld   [hl], l                                     ; $67dd: $75
	ld   a, l                                        ; $67de: $7d
	sbc  a                                           ; $67df: $9f
	dec  c                                           ; $67e0: $0d
	nop                                              ; $67e1: $00
	ld   a, [bc]                                     ; $67e2: $0a
	dec  c                                           ; $67e3: $0d
	nop                                              ; $67e4: $00
	nop                                              ; $67e5: $00
	rrca                                             ; $67e6: $0f
	nop                                              ; $67e7: $00
	ld   bc, $1e09                                   ; $67e8: $01 $09 $1e
	nop                                              ; $67eb: $00
	inc  e                                           ; $67ec: $1c
	ld   bc, $0000                                   ; $67ed: $01 $00 $00
	ld   bc, $9750                                   ; $67f0: $01 $50 $97
	sbc  [hl]                                        ; $67f3: $9e
	ld   [$6300], sp                                 ; $67f4: $08 $00 $63
	and  c                                           ; $67f7: $a1
	dec  c                                           ; $67f8: $0d
	nop                                              ; $67f9: $00
	ld   a, [bc]                                     ; $67fa: $0a
	rrca                                             ; $67fb: $0f
	nop                                              ; $67fc: $00
	ld   bc, $6301                                   ; $67fd: $01 $01 $63
	ld   e, l                                        ; $6800: $5d
	sub  a                                           ; $6801: $97
	ld   h, e                                        ; $6802: $63
	and  c                                           ; $6803: $a1
	sbc  a                                           ; $6804: $9f
	dec  c                                           ; $6805: $0d
	ld   e, b                                        ; $6806: $58
	inc  b                                           ; $6807: $04
	ld   a, e                                        ; $6808: $7b
	sbc  d                                           ; $6809: $9a
	ld   h, e                                        ; $680a: $63
	adc  h                                           ; $680b: $8c
	ld   [hl], l                                     ; $680c: $75
	ld   h, a                                        ; $680d: $67
	sbc  a                                           ; $680e: $9f
	dec  c                                           ; $680f: $0d
	nop                                              ; $6810: $00
	ld   a, [bc]                                     ; $6811: $0a
	rrca                                             ; $6812: $0f
	ld   bc, $0100                                   ; $6813: $01 $00 $01
	ld   [bc], a                                     ; $6816: $02
	sub  l                                           ; $6817: $95
	ld   [bc], a                                     ; $6818: $02
	sub  e                                           ; $6819: $93
	sbc  b                                           ; $681a: $98
	ld   h, d                                        ; $681b: $62
	ld   e, l                                        ; $681c: $5d
	sbc  e                                           ; $681d: $9b
	ld   d, h                                        ; $681e: $54
	ld   h, e                                        ; $681f: $63
	adc  h                                           ; $6820: $8c
	ld   [hl], l                                     ; $6821: $75
	ld   h, a                                        ; $6822: $67
	sbc  a                                           ; $6823: $9f
	dec  c                                           ; $6824: $0d
	ld   l, e                                        ; $6825: $6b

jr_04a_6826:
	sbc  d                                           ; $6826: $9a
	ld   [hl], l                                     ; $6827: $75
	ld   a, l                                        ; $6828: $7d
	sbc  a                                           ; $6829: $9f
	dec  c                                           ; $682a: $0d
	nop                                              ; $682b: $00
	ld   a, [bc]                                     ; $682c: $0a
	dec  c                                           ; $682d: $0d
	nop                                              ; $682e: $00
	nop                                              ; $682f: $00
	rrca                                             ; $6830: $0f
	nop                                              ; $6831: $00
	ld   bc, $1e09                                   ; $6832: $01 $09 $1e
	nop                                              ; $6835: $00
	inc  e                                           ; $6836: $1c
	ld   bc, $0000                                   ; $6837: $01 $00 $00
	ld   bc, $9750                                   ; $683a: $01 $50 $97
	sbc  [hl]                                        ; $683d: $9e
	ld   [$6300], sp                                 ; $683e: $08 $00 $63
	and  c                                           ; $6841: $a1
	sbc  a                                           ; $6842: $9f
	dec  c                                           ; $6843: $0d
	ld   [bc], a                                     ; $6844: $02
	sub  l                                           ; $6845: $95
	ld   [bc], a                                     ; $6846: $02
	sub  e                                           ; $6847: $93
	sbc  b                                           ; $6848: $98
	ld   h, d                                        ; $6849: $62
	ld   e, l                                        ; $684a: $5d
	sbc  e                                           ; $684b: $9b
	ld   d, h                                        ; $684c: $54
	ld   h, e                                        ; $684d: $63
	adc  h                                           ; $684e: $8c
	ld   [hl], l                                     ; $684f: $75
	ld   h, a                                        ; $6850: $67
	sbc  a                                           ; $6851: $9f
	dec  c                                           ; $6852: $0d
	nop                                              ; $6853: $00
	ld   a, [bc]                                     ; $6854: $0a
	rrca                                             ; $6855: $0f
	nop                                              ; $6856: $00
	ld   bc, $5801                                   ; $6857: $01 $01 $58
	inc  b                                           ; $685a: $04
	ld   a, e                                        ; $685b: $7b
	sbc  d                                           ; $685c: $9a
	ld   h, e                                        ; $685d: $63
	adc  h                                           ; $685e: $8c
	ld   [hl], l                                     ; $685f: $75
	ld   h, a                                        ; $6860: $67
	sbc  a                                           ; $6861: $9f
	ld   h, e                                        ; $6862: $63
	ld   e, l                                        ; $6863: $5d
	sub  a                                           ; $6864: $97
	ld   h, e                                        ; $6865: $63
	and  c                                           ; $6866: $a1
	sbc  a                                           ; $6867: $9f
	dec  c                                           ; $6868: $0d
	nop                                              ; $6869: $00
	ld   a, [bc]                                     ; $686a: $0a
	inc  e                                           ; $686b: $1c
	ld   bc, $0101                                   ; $686c: $01 $01 $01
	ld   bc, $cf04                                   ; $686f: $01 $04 $cf
	inc  b                                           ; $6872: $04
	xor  d                                           ; $6873: $aa
	sub  b                                           ; $6874: $90
	ld   e, d                                        ; $6875: $5a
	and  c                                           ; $6876: $a1
	ld   a, [hl]                                     ; $6877: $7e
	ld   [hl], c                                     ; $6878: $71
	ld   [hl], h                                     ; $6879: $74
	dec  c                                           ; $687a: $0d
	ld   d, d                                        ; $687b: $52
	ld   e, e                                        ; $687c: $5b
	adc  h                                           ; $687d: $8c
	ld   h, l                                        ; $687e: $65
	sub  l                                           ; $687f: $95
	ld   d, h                                        ; $6880: $54
	ld   a, e                                        ; $6881: $7b
	sbc  a                                           ; $6882: $9f
	dec  c                                           ; $6883: $0d
	ld   [$6300], sp                                 ; $6884: $08 $00 $63
	and  c                                           ; $6887: $a1
	sbc  a                                           ; $6888: $9f
	ld   l, e                                        ; $6889: $6b
	sbc  d                                           ; $688a: $9a
	ld   [hl], l                                     ; $688b: $75
	ld   a, l                                        ; $688c: $7d
	sbc  a                                           ; $688d: $9f
	dec  c                                           ; $688e: $0d
	nop                                              ; $688f: $00
	ld   a, [bc]                                     ; $6890: $0a
	dec  c                                           ; $6891: $0d
	nop                                              ; $6892: $00
	nop                                              ; $6893: $00
	rrca                                             ; $6894: $0f
	nop                                              ; $6895: $00
	ld   bc, $1e09                                   ; $6896: $01 $09 $1e
	nop                                              ; $6899: $00
	inc  e                                           ; $689a: $1c
	ld   bc, $0101                                   ; $689b: $01 $01 $01
	ld   bc, $9750                                   ; $689e: $01 $50 $97
	sbc  [hl]                                        ; $68a1: $9e
	ld   [$6300], sp                                 ; $68a2: $08 $00 $63
	and  c                                           ; $68a5: $a1
	sbc  a                                           ; $68a6: $9f
	dec  c                                           ; $68a7: $0d
	ld   e, b                                        ; $68a8: $58
	sub  d                                           ; $68a9: $92
	ld   h, a                                        ; $68aa: $67
	adc  l                                           ; $68ab: $8d
	ld   a, b                                        ; $68ac: $78
	ld   h, e                                        ; $68ad: $63
	ld   d, d                                        ; $68ae: $52
	sbc  a                                           ; $68af: $9f
	dec  c                                           ; $68b0: $0d
	nop                                              ; $68b1: $00
	ld   a, [bc]                                     ; $68b2: $0a
	rrca                                             ; $68b3: $0f
	nop                                              ; $68b4: $00
	ld   bc, $5601                                   ; $68b5: $01 $01 $56
	ld   [hl], c                                     ; $68b8: $71
	sbc  [hl]                                        ; $68b9: $9e
	ld   [bc], a                                     ; $68ba: $02
	and  l                                           ; $68bb: $a5
	inc  b                                           ; $68bc: $04
	xor  d                                           ; $68bd: $aa
	ld   a, l                                        ; $68be: $7d
	sub  b                                           ; $68bf: $90
	ld   d, h                                        ; $68c0: $54
	sbc  [hl]                                        ; $68c1: $9e
	dec  c                                           ; $68c2: $0d
	ld   e, b                                        ; $68c3: $58
	inc  bc                                          ; $68c4: $03
	and  a                                           ; $68c5: $a7
	adc  l                                           ; $68c6: $8d
	ld   [hl], l                                     ; $68c7: $75
	ld   h, a                                        ; $68c8: $67
	ld   e, c                                        ; $68c9: $59
	ld   sp, hl                                      ; $68ca: $f9
	dec  c                                           ; $68cb: $0d
	nop                                              ; $68cc: $00
	ld   a, [bc]                                     ; $68cd: $0a
	rrca                                             ; $68ce: $0f
	ld   bc, $0101                                   ; $68cf: $01 $01 $01
	ld   d, [hl]                                     ; $68d2: $56
	ld   d, [hl]                                     ; $68d3: $56
	sbc  [hl]                                        ; $68d4: $9e
	inc  b                                           ; $68d5: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $68d6: $cf
	inc  b                                           ; $68d7: $04
	xor  d                                           ; $68d8: $aa
	inc  bc                                          ; $68d9: $03
	ld   d, $5f                                      ; $68da: $16 $5f
	ld   d, d                                        ; $68dc: $52
	ld   h, c                                        ; $68dd: $61
	ld   a, b                                        ; $68de: $78
	and  c                                           ; $68df: $a1
	ld   [hl], l                                     ; $68e0: $75
	ld   h, a                                        ; $68e1: $67
	sbc  a                                           ; $68e2: $9f
	dec  c                                           ; $68e3: $0d
	ld   h, [hl]                                     ; $68e4: $66
	sub  c                                           ; $68e5: $91
	sbc  [hl]                                        ; $68e6: $9e
	ld   [bc], a                                     ; $68e7: $02
	sub  l                                           ; $68e8: $95
	ld   [bc], a                                     ; $68e9: $02
	sub  e                                           ; $68ea: $93
	sbc  b                                           ; $68eb: $98
	sbc  [hl]                                        ; $68ec: $9e
	ld   h, l                                        ; $68ed: $65
	ld   [hl], c                                     ; $68ee: $71
	ld   e, c                                        ; $68ef: $59
	sbc  b                                           ; $68f0: $98
	halt                                             ; $68f1: $76
	dec  c                                           ; $68f2: $0d
	ld   e, b                                        ; $68f3: $58
	ld   [bc], a                                     ; $68f4: $02
	add  b                                           ; $68f5: $80
	ld   d, d                                        ; $68f6: $52
	ld   h, l                                        ; $68f7: $65
	adc  h                                           ; $68f8: $8c
	ld   h, a                                        ; $68f9: $67
	ld   a, e                                        ; $68fa: $7b
	sbc  a                                           ; $68fb: $9f
	ld   [hl], l                                     ; $68fc: $75
	ld   a, l                                        ; $68fd: $7d
	sbc  a                                           ; $68fe: $9f
	dec  c                                           ; $68ff: $0d
	nop                                              ; $6900: $00
	ld   a, [bc]                                     ; $6901: $0a
	dec  c                                           ; $6902: $0d
	nop                                              ; $6903: $00
	nop                                              ; $6904: $00
	rrca                                             ; $6905: $0f
	nop                                              ; $6906: $00
	ld   bc, $1e09                                   ; $6907: $01 $09 $1e
	nop                                              ; $690a: $00
	nop                                              ; $690b: $00
	ld   [bc], a                                     ; $690c: $02
	rlca                                             ; $690d: $07
	ld   l, $00                                      ; $690e: $2e $00
	inc  bc                                          ; $6910: $03
	inc  de                                          ; $6911: $13
	ld   bc, $2265                                   ; $6912: $01 $65 $22
	nop                                              ; $6915: $00
	rlca                                             ; $6916: $07
	ld   e, a                                        ; $6917: $5f
	nop                                              ; $6918: $00
	inc  bc                                          ; $6919: $03
	inc  de                                          ; $691a: $13
	ld   bc, $2566                                   ; $691b: $01 $66 $25
	inc  bc                                          ; $691e: $03
	inc  de                                          ; $691f: $13
	ld   bc, $2273                                   ; $6920: $01 $73 $22
	inc  e                                           ; $6923: $1c
	nop                                              ; $6924: $00
	rlca                                             ; $6925: $07
	and  l                                           ; $6926: $a5
	nop                                              ; $6927: $00
	inc  bc                                          ; $6928: $03
	inc  de                                          ; $6929: $13
	ld   bc, $2573                                   ; $692a: $01 $73 $25
	ld   [bc], a                                     ; $692d: $02
	nop                                              ; $692e: $00
	ld   bc, $2c02                                   ; $692f: $01 $02 $2c
	ld   bc, $2001                                   ; $6932: $01 $01 $20
	inc  e                                           ; $6935: $1c
	nop                                              ; $6936: $00
	ld   b, $01                                      ; $6937: $06 $01
	ld   bc, $000f                                   ; $6939: $01 $0f $00
	ld   bc, $df01                                   ; $693c: $01 $01 $df
	db   $ec                                         ; $693f: $ec
	and  e                                           ; $6940: $a3
	ld   h, e                                        ; $6941: $63
	and  c                                           ; $6942: $a1
	sbc  a                                           ; $6943: $9f
	dec  c                                           ; $6944: $0d
	nop                                              ; $6945: $00
	ld   a, [bc]                                     ; $6946: $0a
	inc  e                                           ; $6947: $1c
	inc  bc                                          ; $6948: $03
	nop                                              ; $6949: $00
	nop                                              ; $694a: $00
	ld   bc, $8c52                                   ; $694b: $01 $52 $8c
	dec  b                                           ; $694e: $05
	jr   z, jr_04a_69a3                              ; $694f: $28 $52

	ld   [hl], l                                     ; $6951: $75
	sbc  c                                           ; $6952: $99
	ld   a, h                                        ; $6953: $7c
	sbc  a                                           ; $6954: $9f
	dec  c                                           ; $6955: $0d
	adc  h                                           ; $6956: $8c
	ld   l, l                                        ; $6957: $6d
	sbc  [hl]                                        ; $6958: $9e

Jump_04a_6959:
	inc  b                                           ; $6959: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $695a: $cf
	inc  b                                           ; $695b: $04
	xor  d                                           ; $695c: $aa
	ld   a, e                                        ; $695d: $7b
	sbc  a                                           ; $695e: $9f
	dec  c                                           ; $695f: $0d
	nop                                              ; $6960: $00
	ld   a, [bc]                                     ; $6961: $0a
	dec  c                                           ; $6962: $0d
	nop                                              ; $6963: $00
	nop                                              ; $6964: $00
	rrca                                             ; $6965: $0f
	nop                                              ; $6966: $00
	ld   bc, $1e09                                   ; $6967: $01 $09 $1e
	nop                                              ; $696a: $00
	inc  e                                           ; $696b: $1c
	inc  bc                                          ; $696c: $03
	nop                                              ; $696d: $00
	nop                                              ; $696e: $00
	ld   bc, $0008                                   ; $696f: $01 $08 $00
	ld   e, l                                        ; $6972: $5d
	and  c                                           ; $6973: $a1
	sbc  a                                           ; $6974: $9f
	dec  c                                           ; $6975: $0d
	nop                                              ; $6976: $00
	ld   a, [bc]                                     ; $6977: $0a
	rrca                                             ; $6978: $0f
	nop                                              ; $6979: $00
	ld   bc, $df01                                   ; $697a: $01 $01 $df
	db   $ec                                         ; $697d: $ec
	and  e                                           ; $697e: $a3
	ld   h, e                                        ; $697f: $63
	and  c                                           ; $6980: $a1
	sbc  a                                           ; $6981: $9f
	dec  c                                           ; $6982: $0d
	ld   e, b                                        ; $6983: $58
	inc  b                                           ; $6984: $04
	ld   a, e                                        ; $6985: $7b
	sbc  d                                           ; $6986: $9a
	ld   h, e                                        ; $6987: $63
	adc  h                                           ; $6988: $8c
	ld   [hl], l                                     ; $6989: $75
	ld   h, a                                        ; $698a: $67
	sbc  a                                           ; $698b: $9f
	dec  c                                           ; $698c: $0d
	nop                                              ; $698d: $00
	ld   a, [bc]                                     ; $698e: $0a
	rrca                                             ; $698f: $0f
	inc  bc                                          ; $6990: $03
	nop                                              ; $6991: $00
	ld   bc, $9502                                   ; $6992: $01 $02 $95
	ld   [bc], a                                     ; $6995: $02
	sub  e                                           ; $6996: $93
	sbc  b                                           ; $6997: $98
	ld   e, d                                        ; $6998: $5a
	and  c                                           ; $6999: $a1
	ld   a, [hl]                                     ; $699a: $7e
	sbc  c                                           ; $699b: $99
	ld   a, h                                        ; $699c: $7c
	sub  [hl]                                        ; $699d: $96
	sbc  a                                           ; $699e: $9f
	dec  c                                           ; $699f: $0d
	ld   h, [hl]                                     ; $69a0: $66
	sub  c                                           ; $69a1: $91
	ld   d, b                                        ; $69a2: $50

jr_04a_69a3:
	ld   a, e                                        ; $69a3: $7b
	sbc  a                                           ; $69a4: $9f
	dec  c                                           ; $69a5: $0d
	nop                                              ; $69a6: $00
	ld   a, [bc]                                     ; $69a7: $0a
	dec  c                                           ; $69a8: $0d
	nop                                              ; $69a9: $00
	nop                                              ; $69aa: $00
	rrca                                             ; $69ab: $0f
	nop                                              ; $69ac: $00
	ld   bc, $1e09                                   ; $69ad: $01 $09 $1e
	nop                                              ; $69b0: $00
	inc  e                                           ; $69b1: $1c
	inc  bc                                          ; $69b2: $03
	nop                                              ; $69b3: $00
	nop                                              ; $69b4: $00
	ld   bc, $9750                                   ; $69b5: $01 $50 $97
	sbc  [hl]                                        ; $69b8: $9e
	ld   [$5d00], sp                                 ; $69b9: $08 $00 $5d
	and  c                                           ; $69bc: $a1
	sbc  a                                           ; $69bd: $9f
	dec  c                                           ; $69be: $0d
	ld   [bc], a                                     ; $69bf: $02
	sub  l                                           ; $69c0: $95
	ld   [bc], a                                     ; $69c1: $02
	sub  e                                           ; $69c2: $93
	sbc  b                                           ; $69c3: $98
	ld   h, d                                        ; $69c4: $62
	ld   e, l                                        ; $69c5: $5d
	sbc  e                                           ; $69c6: $9b
	ld   d, h                                        ; $69c7: $54
	ld   h, e                                        ; $69c8: $63
	adc  h                                           ; $69c9: $8c
	sbc  a                                           ; $69ca: $9f
	dec  c                                           ; $69cb: $0d
	nop                                              ; $69cc: $00
	ld   a, [bc]                                     ; $69cd: $0a
	rrca                                             ; $69ce: $0f
	nop                                              ; $69cf: $00
	ld   bc, $5801                                   ; $69d0: $01 $01 $58
	inc  b                                           ; $69d3: $04
	ld   a, e                                        ; $69d4: $7b
	sbc  d                                           ; $69d5: $9a
	ld   h, e                                        ; $69d6: $63
	adc  h                                           ; $69d7: $8c
	ld   [hl], l                                     ; $69d8: $75
	ld   h, a                                        ; $69d9: $67
	sbc  a                                           ; $69da: $9f
	rst  JumpTable                                         ; $69db: $df
	db   $ec                                         ; $69dc: $ec
	and  e                                           ; $69dd: $a3
	ld   h, e                                        ; $69de: $63
	and  c                                           ; $69df: $a1
	sbc  a                                           ; $69e0: $9f
	dec  c                                           ; $69e1: $0d
	nop                                              ; $69e2: $00
	ld   a, [bc]                                     ; $69e3: $0a
	inc  e                                           ; $69e4: $1c
	inc  bc                                          ; $69e5: $03
	inc  bc                                          ; $69e6: $03
	inc  bc                                          ; $69e7: $03
	ld   bc, $cf04                                   ; $69e8: $01 $04 $cf
	inc  b                                           ; $69eb: $04
	xor  d                                           ; $69ec: $aa
	sub  b                                           ; $69ed: $90
	ld   e, d                                        ; $69ee: $5a
	and  c                                           ; $69ef: $a1
	ld   a, [hl]                                     ; $69f0: $7e
	sbc  c                                           ; $69f1: $99
	ld   a, h                                        ; $69f2: $7c
	sub  [hl]                                        ; $69f3: $96
	sbc  a                                           ; $69f4: $9f
	dec  c                                           ; $69f5: $0d
	ld   [$5d00], sp                                 ; $69f6: $08 $00 $5d
	and  c                                           ; $69f9: $a1
	sbc  a                                           ; $69fa: $9f
	dec  c                                           ; $69fb: $0d
	ld   h, [hl]                                     ; $69fc: $66
	sub  c                                           ; $69fd: $91
	ld   d, b                                        ; $69fe: $50
	ld   a, e                                        ; $69ff: $7b
	sbc  a                                           ; $6a00: $9f
	dec  c                                           ; $6a01: $0d
	nop                                              ; $6a02: $00
	ld   a, [bc]                                     ; $6a03: $0a
	dec  c                                           ; $6a04: $0d
	nop                                              ; $6a05: $00
	nop                                              ; $6a06: $00
	rrca                                             ; $6a07: $0f
	nop                                              ; $6a08: $00
	ld   bc, $1e09                                   ; $6a09: $01 $09 $1e
	nop                                              ; $6a0c: $00
	inc  e                                           ; $6a0d: $1c
	inc  bc                                          ; $6a0e: $03
	nop                                              ; $6a0f: $00
	nop                                              ; $6a10: $00
	ld   bc, $9258                                   ; $6a11: $01 $58 $92
	ld   h, a                                        ; $6a14: $67
	adc  l                                           ; $6a15: $8d
	ld   a, b                                        ; $6a16: $78
	ld   h, e                                        ; $6a17: $63
	ld   d, d                                        ; $6a18: $52
	sbc  a                                           ; $6a19: $9f
	dec  c                                           ; $6a1a: $0d
	ld   [$5d00], sp                                 ; $6a1b: $08 $00 $5d
	and  c                                           ; $6a1e: $a1
	sbc  a                                           ; $6a1f: $9f
	dec  c                                           ; $6a20: $0d
	nop                                              ; $6a21: $00
	ld   a, [bc]                                     ; $6a22: $0a
	rrca                                             ; $6a23: $0f
	nop                                              ; $6a24: $00
	ld   bc, $5601                                   ; $6a25: $01 $01 $56
	ld   [hl], c                                     ; $6a28: $71
	sbc  [hl]                                        ; $6a29: $9e
	ld   [bc], a                                     ; $6a2a: $02
	and  l                                           ; $6a2b: $a5
	inc  b                                           ; $6a2c: $04
	xor  d                                           ; $6a2d: $aa
	ld   a, l                                        ; $6a2e: $7d
	sub  b                                           ; $6a2f: $90
	ld   d, h                                        ; $6a30: $54
	sbc  [hl]                                        ; $6a31: $9e
	dec  c                                           ; $6a32: $0d
	ld   e, b                                        ; $6a33: $58
	inc  bc                                          ; $6a34: $03
	and  a                                           ; $6a35: $a7
	adc  l                                           ; $6a36: $8d
	ld   [hl], l                                     ; $6a37: $75
	ld   h, a                                        ; $6a38: $67
	ld   e, c                                        ; $6a39: $59
	ld   sp, hl                                      ; $6a3a: $f9
	dec  c                                           ; $6a3b: $0d
	nop                                              ; $6a3c: $00
	ld   a, [bc]                                     ; $6a3d: $0a
	rrca                                             ; $6a3e: $0f
	inc  bc                                          ; $6a3f: $03
	nop                                              ; $6a40: $00
	ld   bc, $5656                                   ; $6a41: $01 $56 $56
	sbc  [hl]                                        ; $6a44: $9e
	inc  b                                           ; $6a45: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a46: $cf
	inc  b                                           ; $6a47: $04
	xor  d                                           ; $6a48: $aa
	sbc  [hl]                                        ; $6a49: $9e
	inc  bc                                          ; $6a4a: $03
	ld   d, $5f                                      ; $6a4b: $16 $5f
	ld   d, d                                        ; $6a4d: $52
	ld   h, c                                        ; $6a4e: $61
	ld   a, b                                        ; $6a4f: $78
	ld   a, h                                        ; $6a50: $7c
	sub  [hl]                                        ; $6a51: $96
	sbc  a                                           ; $6a52: $9f
	dec  c                                           ; $6a53: $0d
	ld   h, [hl]                                     ; $6a54: $66
	sub  c                                           ; $6a55: $91
	sbc  [hl]                                        ; $6a56: $9e
	ld   [bc], a                                     ; $6a57: $02
	sub  l                                           ; $6a58: $95
	ld   [bc], a                                     ; $6a59: $02
	sub  e                                           ; $6a5a: $93
	sbc  b                                           ; $6a5b: $98
	ld   e, d                                        ; $6a5c: $5a
	and  c                                           ; $6a5d: $a1
	ld   a, [hl]                                     ; $6a5e: $7e
	ld   [hl], c                                     ; $6a5f: $71
	ld   [hl], h                                     ; $6a60: $74
	ld   a, e                                        ; $6a61: $7b
	sbc  a                                           ; $6a62: $9f
	dec  c                                           ; $6a63: $0d
	nop                                              ; $6a64: $00
	ld   a, [bc]                                     ; $6a65: $0a
	dec  c                                           ; $6a66: $0d
	nop                                              ; $6a67: $00
	nop                                              ; $6a68: $00
	rrca                                             ; $6a69: $0f
	nop                                              ; $6a6a: $00
	ld   bc, $1e09                                   ; $6a6b: $01 $09 $1e
	nop                                              ; $6a6e: $00
	nop                                              ; $6a6f: $00
	ld   [bc], a                                     ; $6a70: $02
	rlca                                             ; $6a71: $07
	ld   l, $00                                      ; $6a72: $2e $00
	inc  bc                                          ; $6a74: $03
	inc  d                                           ; $6a75: $14
	ld   bc, $2364                                   ; $6a76: $01 $64 $23
	nop                                              ; $6a79: $00
	rlca                                             ; $6a7a: $07
	ld   l, b                                        ; $6a7b: $68
	nop                                              ; $6a7c: $00
	inc  bc                                          ; $6a7d: $03
	inc  d                                           ; $6a7e: $14
	ld   bc, $2565                                   ; $6a7f: $01 $65 $25
	inc  bc                                          ; $6a82: $03
	inc  d                                           ; $6a83: $14
	ld   bc, $2273                                   ; $6a84: $01 $73 $22
	inc  e                                           ; $6a87: $1c
	nop                                              ; $6a88: $00
	rlca                                             ; $6a89: $07
	or   c                                           ; $6a8a: $b1
	nop                                              ; $6a8b: $00
	inc  bc                                          ; $6a8c: $03
	inc  d                                           ; $6a8d: $14
	ld   bc, $2573                                   ; $6a8e: $01 $73 $25
	ld   [bc], a                                     ; $6a91: $02
	nop                                              ; $6a92: $00
	ld   bc, $2c02                                   ; $6a93: $01 $02 $2c
	ld   bc, $2001                                   ; $6a96: $01 $01 $20
	inc  e                                           ; $6a99: $1c
	nop                                              ; $6a9a: $00
	ld   b, $0d                                      ; $6a9b: $06 $0d
	ld   bc, $000f                                   ; $6a9d: $01 $0f $00
	ld   bc, $9201                                   ; $6aa0: $01 $01 $92
	ld   d, b                                        ; $6aa3: $50
	sbc  [hl]                                        ; $6aa4: $9e
	and  e                                           ; $6aa5: $a3
	and  l                                           ; $6aa6: $a5
	db   $ec                                         ; $6aa7: $ec
	cp   d                                           ; $6aa8: $ba
	sbc  a                                           ; $6aa9: $9f
	dec  c                                           ; $6aaa: $0d
	nop                                              ; $6aab: $00
	ld   a, [bc]                                     ; $6aac: $0a
	dec  b                                           ; $6aad: $05
	add  b                                           ; $6aae: $80
	sub  $01                                         ; $6aaf: $d6 $01
	ld   bc, $1c00                                   ; $6ab1: $01 $00 $1c
	inc  b                                           ; $6ab4: $04
	nop                                              ; $6ab5: $00
	nop                                              ; $6ab6: $00
	ld   bc, $a5a3                                   ; $6ab7: $01 $a3 $a5
	db   $ec                                         ; $6aba: $ec
	cp   d                                           ; $6abb: $ba
	sbc  [hl]                                        ; $6abc: $9e
	ld   d, d                                        ; $6abd: $52
	ld   l, e                                        ; $6abe: $6b
	ld   e, d                                        ; $6abf: $5a
	ld   h, l                                        ; $6ac0: $65
	ld   d, d                                        ; $6ac1: $52
	ld   a, h                                        ; $6ac2: $7c
	sbc  a                                           ; $6ac3: $9f
	dec  c                                           ; $6ac4: $0d
	adc  h                                           ; $6ac5: $8c
	ld   l, l                                        ; $6ac6: $6d
	ld   d, b                                        ; $6ac7: $50
	ld   h, l                                        ; $6ac8: $65
	ld   l, l                                        ; $6ac9: $6d
	ld   a, e                                        ; $6aca: $7b
	sbc  a                                           ; $6acb: $9f
	dec  c                                           ; $6acc: $0d
	nop                                              ; $6acd: $00
	ld   a, [bc]                                     ; $6ace: $0a
	dec  c                                           ; $6acf: $0d
	nop                                              ; $6ad0: $00
	nop                                              ; $6ad1: $00
	rrca                                             ; $6ad2: $0f
	nop                                              ; $6ad3: $00
	ld   bc, $1e09                                   ; $6ad4: $01 $09 $1e
	nop                                              ; $6ad7: $00
	inc  e                                           ; $6ad8: $1c
	inc  b                                           ; $6ad9: $04
	nop                                              ; $6ada: $00
	nop                                              ; $6adb: $00
	ld   bc, $9e50                                   ; $6adc: $01 $50 $9e
	ld   l, a                                        ; $6adf: $6f
	ld   d, d                                        ; $6ae0: $52
	ld   [bc], a                                     ; $6ae1: $02
	inc  de                                          ; $6ae2: $13
	ld   l, a                                        ; $6ae3: $6f
	sub  c                                           ; $6ae4: $91
	and  c                                           ; $6ae5: $a1
	sbc  a                                           ; $6ae6: $9f
	dec  c                                           ; $6ae7: $0d
	nop                                              ; $6ae8: $00
	ld   a, [bc]                                     ; $6ae9: $0a
	rrca                                             ; $6aea: $0f
	nop                                              ; $6aeb: $00
	ld   bc, $9201                                   ; $6aec: $01 $01 $92
	ld   d, b                                        ; $6aef: $50
	sbc  [hl]                                        ; $6af0: $9e
	and  e                                           ; $6af1: $a3
	and  l                                           ; $6af2: $a5
	db   $ec                                         ; $6af3: $ec
	cp   d                                           ; $6af4: $ba
	sbc  a                                           ; $6af5: $9f
	dec  c                                           ; $6af6: $0d
	nop                                              ; $6af7: $00
	ld   a, [bc]                                     ; $6af8: $0a
	dec  b                                           ; $6af9: $05
	add  b                                           ; $6afa: $80
	sub  $01                                         ; $6afb: $d6 $01
	ld   bc, $0f00                                   ; $6afd: $01 $00 $0f
	inc  b                                           ; $6b00: $04
	nop                                              ; $6b01: $00
	ld   bc, $8c8d                                   ; $6b02: $01 $8d $8c
	sbc  l                                           ; $6b05: $9d
	sbc  b                                           ; $6b06: $98
	sbc  [hl]                                        ; $6b07: $9e
	ld   e, d                                        ; $6b08: $5a
	and  c                                           ; $6b09: $a1
	ld   a, [hl]                                     ; $6b0a: $7e
	ld   [hl], c                                     ; $6b0b: $71
	ld   [hl], h                                     ; $6b0c: $74
	ld   a, e                                        ; $6b0d: $7b
	sbc  a                                           ; $6b0e: $9f
	dec  c                                           ; $6b0f: $0d
	ld   h, [hl]                                     ; $6b10: $66
	sub  c                                           ; $6b11: $91
	ld   d, b                                        ; $6b12: $50
	ld   a, e                                        ; $6b13: $7b
	sbc  a                                           ; $6b14: $9f
	dec  c                                           ; $6b15: $0d
	nop                                              ; $6b16: $00
	ld   a, [bc]                                     ; $6b17: $0a
	dec  c                                           ; $6b18: $0d
	nop                                              ; $6b19: $00
	nop                                              ; $6b1a: $00
	rrca                                             ; $6b1b: $0f
	nop                                              ; $6b1c: $00
	ld   bc, $1e09                                   ; $6b1d: $01 $09 $1e
	nop                                              ; $6b20: $00
	inc  e                                           ; $6b21: $1c
	inc  b                                           ; $6b22: $04
	nop                                              ; $6b23: $00
	nop                                              ; $6b24: $00
	ld   bc, $526f                                   ; $6b25: $01 $6f $52
	ld   [bc], a                                     ; $6b28: $02
	inc  de                                          ; $6b29: $13
	ld   l, a                                        ; $6b2a: $6f
	sub  c                                           ; $6b2b: $91
	and  c                                           ; $6b2c: $a1
	sbc  a                                           ; $6b2d: $9f
	dec  c                                           ; $6b2e: $0d
	adc  l                                           ; $6b2f: $8d
	adc  h                                           ; $6b30: $8c
	sbc  l                                           ; $6b31: $9d
	sbc  b                                           ; $6b32: $98
	ld   h, d                                        ; $6b33: $62
	ld   e, l                                        ; $6b34: $5d
	sbc  e                                           ; $6b35: $9b
	ld   d, h                                        ; $6b36: $54
	ld   h, e                                        ; $6b37: $63
	adc  h                                           ; $6b38: $8c
	sbc  a                                           ; $6b39: $9f
	dec  c                                           ; $6b3a: $0d
	nop                                              ; $6b3b: $00
	ld   a, [bc]                                     ; $6b3c: $0a
	rrca                                             ; $6b3d: $0f
	nop                                              ; $6b3e: $00
	ld   bc, $9201                                   ; $6b3f: $01 $01 $92
	ld   d, b                                        ; $6b42: $50
	sbc  [hl]                                        ; $6b43: $9e
	and  e                                           ; $6b44: $a3
	and  l                                           ; $6b45: $a5
	db   $ec                                         ; $6b46: $ec
	cp   d                                           ; $6b47: $ba
	sbc  a                                           ; $6b48: $9f
	dec  c                                           ; $6b49: $0d
	nop                                              ; $6b4a: $00
	ld   a, [bc]                                     ; $6b4b: $0a
	dec  b                                           ; $6b4c: $05
	add  b                                           ; $6b4d: $80
	sub  $01                                         ; $6b4e: $d6 $01
	ld   bc, $1c00                                   ; $6b50: $01 $00 $1c
	inc  b                                           ; $6b53: $04
	ld   bc, $0101                                   ; $6b54: $01 $01 $01
	ld   d, b                                        ; $6b57: $50
	ld   h, l                                        ; $6b58: $65
	ld   l, l                                        ; $6b59: $6d
	sub  b                                           ; $6b5a: $90
	ld   e, d                                        ; $6b5b: $5a
	and  c                                           ; $6b5c: $a1
	ld   a, [hl]                                     ; $6b5d: $7e
	sbc  e                                           ; $6b5e: $9b
	ld   d, h                                        ; $6b5f: $54
	ld   a, e                                        ; $6b60: $7b
	sbc  a                                           ; $6b61: $9f
	dec  c                                           ; $6b62: $0d
	ld   l, a                                        ; $6b63: $6f
	ld   d, d                                        ; $6b64: $52
	ld   [bc], a                                     ; $6b65: $02
	inc  de                                          ; $6b66: $13
	ld   l, a                                        ; $6b67: $6f
	sub  c                                           ; $6b68: $91
	and  c                                           ; $6b69: $a1
	sbc  a                                           ; $6b6a: $9f
	dec  c                                           ; $6b6b: $0d
	ld   h, [hl]                                     ; $6b6c: $66
	sub  c                                           ; $6b6d: $91
	ld   d, b                                        ; $6b6e: $50
	ld   a, e                                        ; $6b6f: $7b
	sbc  a                                           ; $6b70: $9f
	dec  c                                           ; $6b71: $0d
	nop                                              ; $6b72: $00
	ld   a, [bc]                                     ; $6b73: $0a
	dec  c                                           ; $6b74: $0d
	nop                                              ; $6b75: $00
	nop                                              ; $6b76: $00
	rrca                                             ; $6b77: $0f
	nop                                              ; $6b78: $00
	ld   bc, $1e09                                   ; $6b79: $01 $09 $1e
	nop                                              ; $6b7c: $00
	inc  e                                           ; $6b7d: $1c
	inc  b                                           ; $6b7e: $04
	nop                                              ; $6b7f: $00
	nop                                              ; $6b80: $00
	ld   bc, $9e50                                   ; $6b81: $01 $50 $9e
	ld   l, a                                        ; $6b84: $6f
	ld   d, d                                        ; $6b85: $52
	ld   [bc], a                                     ; $6b86: $02
	inc  de                                          ; $6b87: $13
	ld   l, a                                        ; $6b88: $6f
	sub  c                                           ; $6b89: $91
	and  c                                           ; $6b8a: $a1
	sbc  a                                           ; $6b8b: $9f
	dec  c                                           ; $6b8c: $0d
	ld   e, b                                        ; $6b8d: $58
	sub  d                                           ; $6b8e: $92
	ld   h, a                                        ; $6b8f: $67
	adc  l                                           ; $6b90: $8d
	ld   a, b                                        ; $6b91: $78
	ld   h, e                                        ; $6b92: $63
	ld   d, d                                        ; $6b93: $52
	sbc  a                                           ; $6b94: $9f
	dec  c                                           ; $6b95: $0d
	nop                                              ; $6b96: $00
	ld   a, [bc]                                     ; $6b97: $0a
	rrca                                             ; $6b98: $0f
	nop                                              ; $6b99: $00
	ld   bc, $a301                                   ; $6b9a: $01 $01 $a3
	and  l                                           ; $6b9d: $a5
	db   $ec                                         ; $6b9e: $ec
	cp   d                                           ; $6b9f: $ba
	sbc  [hl]                                        ; $6ba0: $9e
	dec  c                                           ; $6ba1: $0d
	ld   [bc], a                                     ; $6ba2: $02
	and  l                                           ; $6ba3: $a5
	inc  b                                           ; $6ba4: $04
	xor  d                                           ; $6ba5: $aa
	ld   a, l                                        ; $6ba6: $7d
	sbc  [hl]                                        ; $6ba7: $9e
	sub  b                                           ; $6ba8: $90
	ld   d, h                                        ; $6ba9: $54
	inc  b                                           ; $6baa: $04
	ld   b, d                                        ; $6bab: $42
	ld   l, a                                        ; $6bac: $6f
	sub  c                                           ; $6bad: $91
	ld   d, h                                        ; $6bae: $54
	ld   a, h                                        ; $6baf: $7c
	ld   sp, hl                                      ; $6bb0: $f9
	dec  c                                           ; $6bb1: $0d
	nop                                              ; $6bb2: $00
	ld   a, [bc]                                     ; $6bb3: $0a
	rrca                                             ; $6bb4: $0f
	inc  b                                           ; $6bb5: $04
	inc  bc                                          ; $6bb6: $03
	ld   bc, $a154                                   ; $6bb7: $01 $54 $a1
	sbc  [hl]                                        ; $6bba: $9e
	ld   d, b                                        ; $6bbb: $50
	ld   h, l                                        ; $6bbc: $65
	ld   l, l                                        ; $6bbd: $6d
	ld   a, l                                        ; $6bbe: $7d
	dec  c                                           ; $6bbf: $0d
	ld   d, b                                        ; $6bc0: $50
	ld   h, e                                        ; $6bc1: $63
	ld   e, a                                        ; $6bc2: $5f
	ld   d, d                                        ; $6bc3: $52
	ld   h, c                                        ; $6bc4: $61
	ld   a, b                                        ; $6bc5: $78
	ld   a, h                                        ; $6bc6: $7c
	sbc  a                                           ; $6bc7: $9f
	dec  c                                           ; $6bc8: $0d
	nop                                              ; $6bc9: $00
	rrca                                             ; $6bca: $0f
	inc  b                                           ; $6bcb: $04
	ld   bc, $6601                                   ; $6bcc: $01 $01 $66
	sub  c                                           ; $6bcf: $91
	ld   d, b                                        ; $6bd0: $50
	ld   a, e                                        ; $6bd1: $7b
	sbc  a                                           ; $6bd2: $9f
	dec  c                                           ; $6bd3: $0d
	nop                                              ; $6bd4: $00
	ld   a, [bc]                                     ; $6bd5: $0a
	dec  c                                           ; $6bd6: $0d
	nop                                              ; $6bd7: $00
	nop                                              ; $6bd8: $00
	rrca                                             ; $6bd9: $0f
	nop                                              ; $6bda: $00
	ld   bc, $1e09                                   ; $6bdb: $01 $09 $1e
	nop                                              ; $6bde: $00
	nop                                              ; $6bdf: $00
	ld   [bc], a                                     ; $6be0: $02
	rlca                                             ; $6be1: $07
	ld   l, $00                                      ; $6be2: $2e $00
	inc  bc                                          ; $6be4: $03
	ld   d, $01                                      ; $6be5: $16 $01
	ld   h, h                                        ; $6be7: $64
	inc  hl                                          ; $6be8: $23
	nop                                              ; $6be9: $00
	rlca                                             ; $6bea: $07
	ld   l, d                                        ; $6beb: $6a
	nop                                              ; $6bec: $00
	inc  bc                                          ; $6bed: $03
	ld   d, $01                                      ; $6bee: $16 $01
	ld   h, [hl]                                     ; $6bf0: $66
	dec  h                                           ; $6bf1: $25
	inc  bc                                          ; $6bf2: $03
	ld   d, $01                                      ; $6bf3: $16 $01
	ld   [hl], e                                     ; $6bf5: $73
	ld   [hl+], a                                    ; $6bf6: $22
	inc  e                                           ; $6bf7: $1c
	nop                                              ; $6bf8: $00
	rlca                                             ; $6bf9: $07
	or   c                                           ; $6bfa: $b1
	nop                                              ; $6bfb: $00
	inc  bc                                          ; $6bfc: $03
	ld   d, $01                                      ; $6bfd: $16 $01
	ld   [hl], e                                     ; $6bff: $73
	dec  h                                           ; $6c00: $25
	ld   [bc], a                                     ; $6c01: $02
	nop                                              ; $6c02: $00
	ld   bc, $2c02                                   ; $6c03: $01 $02 $2c
	ld   bc, $2001                                   ; $6c06: $01 $01 $20
	inc  e                                           ; $6c09: $1c
	nop                                              ; $6c0a: $00
	ld   b, $06                                      ; $6c0b: $06 $06
	ld   bc, $000f                                   ; $6c0d: $01 $0f $00
	ld   bc, $ac01                                   ; $6c10: $01 $01 $ac
	push af                                          ; $6c13: $f5
	bit  4, e                                        ; $6c14: $cb $63
	and  c                                           ; $6c16: $a1
	sbc  a                                           ; $6c17: $9f
	dec  c                                           ; $6c18: $0d
	nop                                              ; $6c19: $00
	ld   a, [bc]                                     ; $6c1a: $0a
	inc  e                                           ; $6c1b: $1c
	ld   b, $00                                      ; $6c1c: $06 $00
	nop                                              ; $6c1e: $00
	ld   bc, $999d                                   ; $6c1f: $01 $9d $99
	ld   d, d                                        ; $6c22: $52
	sbc  a                                           ; $6c23: $9f
	ld   l, a                                        ; $6c24: $6f
	sub  l                                           ; $6c25: $95
	ld   d, d                                        ; $6c26: $52
	halt                                             ; $6c27: $76
	dec  b                                           ; $6c28: $05
	jr   z, jr_04a_6c87                              ; $6c29: $28 $5c

	ld   a, h                                        ; $6c2b: $7c
	dec  c                                           ; $6c2c: $0d
	inc  b                                           ; $6c2d: $04
	di                                               ; $6c2e: $f3
	ld   e, d                                        ; $6c2f: $5a
	ld   d, b                                        ; $6c30: $50
	sbc  c                                           ; $6c31: $99
	and  c                                           ; $6c32: $a1
	ld   l, [hl]                                     ; $6c33: $6e
	sbc  a                                           ; $6c34: $9f
	dec  c                                           ; $6c35: $0d
	adc  h                                           ; $6c36: $8c
	ld   l, l                                        ; $6c37: $6d
	inc  b                                           ; $6c38: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c39: $cf
	inc  b                                           ; $6c3a: $04
	xor  d                                           ; $6c3b: $aa
	ld   a, b                                        ; $6c3c: $78
	sbc  a                                           ; $6c3d: $9f
	dec  c                                           ; $6c3e: $0d
	nop                                              ; $6c3f: $00
	ld   a, [bc]                                     ; $6c40: $0a
	dec  c                                           ; $6c41: $0d
	nop                                              ; $6c42: $00
	nop                                              ; $6c43: $00
	rrca                                             ; $6c44: $0f
	nop                                              ; $6c45: $00
	ld   bc, $1e09                                   ; $6c46: $01 $09 $1e
	nop                                              ; $6c49: $00
	inc  e                                           ; $6c4a: $1c
	ld   b, $00                                      ; $6c4b: $06 $00
	nop                                              ; $6c4d: $00
	ld   bc, $5496                                   ; $6c4e: $01 $96 $54
	sbc  [hl]                                        ; $6c51: $9e
	ld   [$9f00], sp                                 ; $6c52: $08 $00 $9f
	dec  c                                           ; $6c55: $0d
	nop                                              ; $6c56: $00
	ld   a, [bc]                                     ; $6c57: $0a
	rrca                                             ; $6c58: $0f
	nop                                              ; $6c59: $00
	ld   bc, $ac01                                   ; $6c5a: $01 $01 $ac
	push af                                          ; $6c5d: $f5
	bit  4, e                                        ; $6c5e: $cb $63
	and  c                                           ; $6c60: $a1
	sbc  a                                           ; $6c61: $9f
	dec  c                                           ; $6c62: $0d
	ld   e, b                                        ; $6c63: $58
	inc  b                                           ; $6c64: $04
	ld   a, e                                        ; $6c65: $7b
	sbc  d                                           ; $6c66: $9a
	ld   h, e                                        ; $6c67: $63
	adc  h                                           ; $6c68: $8c
	ld   [hl], l                                     ; $6c69: $75
	ld   h, a                                        ; $6c6a: $67
	sbc  a                                           ; $6c6b: $9f
	dec  c                                           ; $6c6c: $0d
	nop                                              ; $6c6d: $00

Call_04a_6c6e:
	ld   a, [bc]                                     ; $6c6e: $0a
	rrca                                             ; $6c6f: $0f
	ld   b, $00                                      ; $6c70: $06 $00
	ld   bc, $9502                                   ; $6c72: $01 $02 $95
	ld   [bc], a                                     ; $6c75: $02
	sub  e                                           ; $6c76: $93
	sbc  b                                           ; $6c77: $98
	sbc  [hl]                                        ; $6c78: $9e
	ld   e, d                                        ; $6c79: $5a
	and  c                                           ; $6c7a: $a1
	ld   a, [hl]                                     ; $6c7b: $7e
	sbc  d                                           ; $6c7c: $9a
	sub  [hl]                                        ; $6c7d: $96
	sbc  a                                           ; $6c7e: $9f
	dec  c                                           ; $6c7f: $0d
	ld   h, [hl]                                     ; $6c80: $66
	sub  c                                           ; $6c81: $91
	ld   d, b                                        ; $6c82: $50
	ld   a, b                                        ; $6c83: $78
	sbc  a                                           ; $6c84: $9f
	dec  c                                           ; $6c85: $0d
	nop                                              ; $6c86: $00

jr_04a_6c87:
	ld   a, [bc]                                     ; $6c87: $0a
	dec  c                                           ; $6c88: $0d
	nop                                              ; $6c89: $00
	nop                                              ; $6c8a: $00
	rrca                                             ; $6c8b: $0f
	nop                                              ; $6c8c: $00
	ld   bc, $1e09                                   ; $6c8d: $01 $09 $1e
	nop                                              ; $6c90: $00
	inc  e                                           ; $6c91: $1c
	ld   b, $00                                      ; $6c92: $06 $00
	nop                                              ; $6c94: $00
	ld   bc, $5496                                   ; $6c95: $01 $96 $54
	sbc  a                                           ; $6c98: $9f
	dec  c                                           ; $6c99: $0d
	ld   [bc], a                                     ; $6c9a: $02
	sub  l                                           ; $6c9b: $95
	ld   [bc], a                                     ; $6c9c: $02
	sub  e                                           ; $6c9d: $93
	sbc  b                                           ; $6c9e: $98
	ld   h, d                                        ; $6c9f: $62
	ld   e, l                                        ; $6ca0: $5d
	sbc  e                                           ; $6ca1: $9b
	ld   d, h                                        ; $6ca2: $54
	ld   h, e                                        ; $6ca3: $63
	and  c                                           ; $6ca4: $a1
	sbc  a                                           ; $6ca5: $9f
	dec  c                                           ; $6ca6: $0d
	nop                                              ; $6ca7: $00
	ld   a, [bc]                                     ; $6ca8: $0a
	rrca                                             ; $6ca9: $0f
	nop                                              ; $6caa: $00
	ld   bc, $5801                                   ; $6cab: $01 $01 $58
	inc  b                                           ; $6cae: $04
	ld   a, e                                        ; $6caf: $7b
	sbc  d                                           ; $6cb0: $9a
	ld   h, e                                        ; $6cb1: $63
	adc  h                                           ; $6cb2: $8c
	ld   [hl], l                                     ; $6cb3: $75
	ld   h, a                                        ; $6cb4: $67
	sbc  a                                           ; $6cb5: $9f
	xor  h                                           ; $6cb6: $ac
	push af                                          ; $6cb7: $f5
	bit  4, e                                        ; $6cb8: $cb $63
	and  c                                           ; $6cba: $a1
	sbc  a                                           ; $6cbb: $9f
	dec  c                                           ; $6cbc: $0d
	nop                                              ; $6cbd: $00
	ld   a, [bc]                                     ; $6cbe: $0a
	inc  e                                           ; $6cbf: $1c
	ld   b, $01                                      ; $6cc0: $06 $01
	ld   bc, $0401                                   ; $6cc2: $01 $01 $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6cc5: $cf
	inc  b                                           ; $6cc6: $04
	xor  d                                           ; $6cc7: $aa
	sub  b                                           ; $6cc8: $90
	ld   e, d                                        ; $6cc9: $5a
	and  c                                           ; $6cca: $a1
	ld   a, [hl]                                     ; $6ccb: $7e
	sbc  e                                           ; $6ccc: $9b
	ld   d, h                                        ; $6ccd: $54
	ld   l, d                                        ; $6cce: $6a
	sbc  a                                           ; $6ccf: $9f
	dec  c                                           ; $6cd0: $0d
	ld   [$fa00], sp                                 ; $6cd1: $08 $00 $fa
	dec  c                                           ; $6cd4: $0d
	ld   h, [hl]                                     ; $6cd5: $66
	sub  c                                           ; $6cd6: $91
	ld   d, b                                        ; $6cd7: $50
	ld   a, b                                        ; $6cd8: $78
	sbc  a                                           ; $6cd9: $9f
	dec  c                                           ; $6cda: $0d
	nop                                              ; $6cdb: $00
	ld   a, [bc]                                     ; $6cdc: $0a
	dec  c                                           ; $6cdd: $0d
	nop                                              ; $6cde: $00
	nop                                              ; $6cdf: $00
	rrca                                             ; $6ce0: $0f
	nop                                              ; $6ce1: $00
	ld   bc, $1e09                                   ; $6ce2: $01 $09 $1e
	nop                                              ; $6ce5: $00
	inc  e                                           ; $6ce6: $1c
	ld   b, $00                                      ; $6ce7: $06 $00
	nop                                              ; $6ce9: $00
	ld   bc, $9258                                   ; $6cea: $01 $58 $92
	ld   h, a                                        ; $6ced: $67
	adc  l                                           ; $6cee: $8d
	sbc  [hl]                                        ; $6cef: $9e
	ld   [$9f00], sp                                 ; $6cf0: $08 $00 $9f
	dec  c                                           ; $6cf3: $0d
	nop                                              ; $6cf4: $00
	ld   a, [bc]                                     ; $6cf5: $0a
	rrca                                             ; $6cf6: $0f
	nop                                              ; $6cf7: $00
	ld   bc, $5601                                   ; $6cf8: $01 $01 $56
	ld   [hl], c                                     ; $6cfb: $71
	sbc  [hl]                                        ; $6cfc: $9e
	ld   [bc], a                                     ; $6cfd: $02
	and  l                                           ; $6cfe: $a5
	inc  b                                           ; $6cff: $04
	xor  d                                           ; $6d00: $aa
	ld   a, l                                        ; $6d01: $7d
	sub  b                                           ; $6d02: $90
	ld   d, h                                        ; $6d03: $54
	sbc  [hl]                                        ; $6d04: $9e
	dec  c                                           ; $6d05: $0d
	ld   e, b                                        ; $6d06: $58
	inc  bc                                          ; $6d07: $03
	and  a                                           ; $6d08: $a7
	adc  l                                           ; $6d09: $8d
	ld   [hl], l                                     ; $6d0a: $75
	ld   h, a                                        ; $6d0b: $67
	ld   e, c                                        ; $6d0c: $59
	ld   sp, hl                                      ; $6d0d: $f9
	dec  c                                           ; $6d0e: $0d
	nop                                              ; $6d0f: $00
	ld   a, [bc]                                     ; $6d10: $0a
	rrca                                             ; $6d11: $0f
	ld   b, $00                                      ; $6d12: $06 $00
	ld   bc, $5050                                   ; $6d14: $01 $50 $50
	sbc  [hl]                                        ; $6d17: $9e
	inc  b                                           ; $6d18: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d19: $cf
	inc  b                                           ; $6d1a: $04
	xor  d                                           ; $6d1b: $aa
	sbc  [hl]                                        ; $6d1c: $9e
	inc  bc                                          ; $6d1d: $03
	ld   d, $5f                                      ; $6d1e: $16 $5f
	ld   d, d                                        ; $6d20: $52
	ld   h, c                                        ; $6d21: $61
	ld   a, b                                        ; $6d22: $78
	and  c                                           ; $6d23: $a1
	ld   l, [hl]                                     ; $6d24: $6e
	sbc  a                                           ; $6d25: $9f
	dec  c                                           ; $6d26: $0d
	ld   h, [hl]                                     ; $6d27: $66
	sub  c                                           ; $6d28: $91
	sbc  [hl]                                        ; $6d29: $9e
	ld   [bc], a                                     ; $6d2a: $02
	sub  l                                           ; $6d2b: $95
	ld   [bc], a                                     ; $6d2c: $02
	sub  e                                           ; $6d2d: $93
	sbc  b                                           ; $6d2e: $98
	sbc  [hl]                                        ; $6d2f: $9e
	ld   e, d                                        ; $6d30: $5a
	and  c                                           ; $6d31: $a1
	ld   a, [hl]                                     ; $6d32: $7e
	sbc  d                                           ; $6d33: $9a
	sub  [hl]                                        ; $6d34: $96
	ld   a, b                                        ; $6d35: $78
	sbc  a                                           ; $6d36: $9f
	dec  c                                           ; $6d37: $0d
	nop                                              ; $6d38: $00
	ld   a, [bc]                                     ; $6d39: $0a
	dec  c                                           ; $6d3a: $0d
	nop                                              ; $6d3b: $00
	nop                                              ; $6d3c: $00
	rrca                                             ; $6d3d: $0f
	nop                                              ; $6d3e: $00
	ld   bc, $1e09                                   ; $6d3f: $01 $09 $1e
	nop                                              ; $6d42: $00
	nop                                              ; $6d43: $00
	ld   [bc], a                                     ; $6d44: $02
	rlca                                             ; $6d45: $07
	ld   l, $00                                      ; $6d46: $2e $00
	inc  bc                                          ; $6d48: $03
	dec  d                                           ; $6d49: $15
	ld   bc, $2265                                   ; $6d4a: $01 $65 $22
	nop                                              ; $6d4d: $00
	rlca                                             ; $6d4e: $07
	ld   h, [hl]                                     ; $6d4f: $66
	nop                                              ; $6d50: $00
	inc  bc                                          ; $6d51: $03

Jump_04a_6d52:
	dec  d                                           ; $6d52: $15
	ld   bc, $2565                                   ; $6d53: $01 $65 $25
	inc  bc                                          ; $6d56: $03
	dec  d                                           ; $6d57: $15
	ld   bc, $2273                                   ; $6d58: $01 $73 $22
	inc  e                                           ; $6d5b: $1c
	nop                                              ; $6d5c: $00
	rlca                                             ; $6d5d: $07
	xor  l                                           ; $6d5e: $ad
	nop                                              ; $6d5f: $00
	inc  bc                                          ; $6d60: $03
	dec  d                                           ; $6d61: $15
	ld   bc, $2573                                   ; $6d62: $01 $73 $25
	ld   [bc], a                                     ; $6d65: $02
	nop                                              ; $6d66: $00
	ld   bc, $2c02                                   ; $6d67: $01 $02 $2c
	ld   bc, $2001                                   ; $6d6a: $01 $01 $20
	inc  e                                           ; $6d6d: $1c
	nop                                              ; $6d6e: $00
	ld   b, $03                                      ; $6d6f: $06 $03
	ld   bc, $000f                                   ; $6d71: $01 $0f $00
	ld   bc, $0201                                   ; $6d74: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d77: $cf
	dec  b                                           ; $6d78: $05
	ld   a, [de]                                     ; $6d79: $1a
	ld   h, e                                        ; $6d7a: $63
	and  c                                           ; $6d7b: $a1
	sbc  a                                           ; $6d7c: $9f
	dec  c                                           ; $6d7d: $0d
	nop                                              ; $6d7e: $00
	ld   a, [bc]                                     ; $6d7f: $0a
	inc  e                                           ; $6d80: $1c
	dec  b                                           ; $6d81: $05
	nop                                              ; $6d82: $00
	nop                                              ; $6d83: $00
	ld   bc, $a502                                   ; $6d84: $01 $02 $a5
	ld   l, a                                        ; $6d87: $6f
	sub  l                                           ; $6d88: $95
	ld   [hl], c                                     ; $6d89: $71
	halt                                             ; $6d8a: $76
	sbc  [hl]                                        ; $6d8b: $9e
	inc  b                                           ; $6d8c: $04
	ld   c, $04                                      ; $6d8d: $0e $04
	adc  h                                           ; $6d8f: $8c
	ld   a, b                                        ; $6d90: $78
	and  c                                           ; $6d91: $a1
	sub  d                                           ; $6d92: $92
	sbc  a                                           ; $6d93: $9f
	dec  c                                           ; $6d94: $0d
	ld   h, a                                        ; $6d95: $67
	adc  h                                           ; $6d96: $8c
	and  c                                           ; $6d97: $a1
	ld   a, b                                        ; $6d98: $78
	db   $fc                                         ; $6d99: $fc
	sbc  a                                           ; $6d9a: $9f
	adc  c                                           ; $6d9b: $89
	ld   a, b                                        ; $6d9c: $78
	sbc  a                                           ; $6d9d: $9f
	dec  c                                           ; $6d9e: $0d
	nop                                              ; $6d9f: $00
	ld   a, [bc]                                     ; $6da0: $0a
	dec  c                                           ; $6da1: $0d
	nop                                              ; $6da2: $00
	nop                                              ; $6da3: $00
	rrca                                             ; $6da4: $0f
	nop                                              ; $6da5: $00
	ld   bc, $1e09                                   ; $6da6: $01 $09 $1e
	nop                                              ; $6da9: $00
	inc  e                                           ; $6daa: $1c
	dec  b                                           ; $6dab: $05
	nop                                              ; $6dac: $00
	nop                                              ; $6dad: $00
	ld   bc, $7196                                   ; $6dae: $01 $96 $71
	sbc  [hl]                                        ; $6db1: $9e
	ld   [$7d00], sp                                 ; $6db2: $08 $00 $7d
	and  c                                           ; $6db5: $a1
	sbc  a                                           ; $6db6: $9f
	dec  c                                           ; $6db7: $0d
	nop                                              ; $6db8: $00
	ld   a, [bc]                                     ; $6db9: $0a
	rrca                                             ; $6dba: $0f
	nop                                              ; $6dbb: $00
	ld   bc, $0201                                   ; $6dbc: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6dbf: $cf
	dec  b                                           ; $6dc0: $05
	ld   a, [de]                                     ; $6dc1: $1a
	ld   h, e                                        ; $6dc2: $63
	and  c                                           ; $6dc3: $a1
	sbc  a                                           ; $6dc4: $9f
	dec  c                                           ; $6dc5: $0d
	ld   e, b                                        ; $6dc6: $58
	inc  b                                           ; $6dc7: $04
	ld   a, e                                        ; $6dc8: $7b
	sbc  d                                           ; $6dc9: $9a
	ld   h, e                                        ; $6dca: $63
	adc  h                                           ; $6dcb: $8c
	ld   [hl], l                                     ; $6dcc: $75
	ld   h, a                                        ; $6dcd: $67
	sbc  a                                           ; $6dce: $9f
	dec  c                                           ; $6dcf: $0d
	nop                                              ; $6dd0: $00
	ld   a, [bc]                                     ; $6dd1: $0a
	rrca                                             ; $6dd2: $0f
	dec  b                                           ; $6dd3: $05
	nop                                              ; $6dd4: $00
	ld   bc, $9502                                   ; $6dd5: $01 $02 $95
	ld   [bc], a                                     ; $6dd8: $02
	sub  e                                           ; $6dd9: $93
	sbc  b                                           ; $6dda: $98
	ld   e, d                                        ; $6ddb: $5a
	and  c                                           ; $6ddc: $a1
	ld   a, [hl]                                     ; $6ddd: $7e
	sbc  b                                           ; $6dde: $98
	sub  d                                           ; $6ddf: $92
	sbc  a                                           ; $6de0: $9f
	dec  c                                           ; $6de1: $0d
	adc  c                                           ; $6de2: $89
	ld   a, b                                        ; $6de3: $78
	sbc  a                                           ; $6de4: $9f
	dec  c                                           ; $6de5: $0d
	nop                                              ; $6de6: $00
	ld   a, [bc]                                     ; $6de7: $0a
	dec  c                                           ; $6de8: $0d
	nop                                              ; $6de9: $00
	nop                                              ; $6dea: $00
	rrca                                             ; $6deb: $0f
	nop                                              ; $6dec: $00
	ld   bc, $1e09                                   ; $6ded: $01 $09 $1e
	nop                                              ; $6df0: $00
	inc  e                                           ; $6df1: $1c
	dec  b                                           ; $6df2: $05
	nop                                              ; $6df3: $00
	nop                                              ; $6df4: $00
	ld   bc, $7196                                   ; $6df5: $01 $96 $71
	sbc  [hl]                                        ; $6df8: $9e
	ld   [bc], a                                     ; $6df9: $02
	sub  l                                           ; $6dfa: $95
	ld   [bc], a                                     ; $6dfb: $02
	sub  e                                           ; $6dfc: $93
	sbc  b                                           ; $6dfd: $98
	ld   h, d                                        ; $6dfe: $62
	ld   e, l                                        ; $6dff: $5d
	sbc  e                                           ; $6e00: $9b
	ld   d, h                                        ; $6e01: $54
	ld   h, e                                        ; $6e02: $63
	and  c                                           ; $6e03: $a1
	sbc  a                                           ; $6e04: $9f
	dec  c                                           ; $6e05: $0d
	nop                                              ; $6e06: $00
	ld   a, [bc]                                     ; $6e07: $0a
	rrca                                             ; $6e08: $0f
	nop                                              ; $6e09: $00
	ld   bc, $5801                                   ; $6e0a: $01 $01 $58
	inc  b                                           ; $6e0d: $04
	ld   a, e                                        ; $6e0e: $7b
	sbc  d                                           ; $6e0f: $9a
	ld   h, e                                        ; $6e10: $63
	adc  h                                           ; $6e11: $8c
	ld   [hl], l                                     ; $6e12: $75
	ld   h, a                                        ; $6e13: $67
	sbc  a                                           ; $6e14: $9f
	ld   [bc], a                                     ; $6e15: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e16: $cf
	dec  b                                           ; $6e17: $05
	ld   a, [de]                                     ; $6e18: $1a
	ld   h, e                                        ; $6e19: $63
	and  c                                           ; $6e1a: $a1
	sbc  a                                           ; $6e1b: $9f
	dec  c                                           ; $6e1c: $0d
	nop                                              ; $6e1d: $00
	ld   a, [bc]                                     ; $6e1e: $0a
	inc  e                                           ; $6e1f: $1c
	dec  b                                           ; $6e20: $05
	ld   bc, $0101                                   ; $6e21: $01 $01 $01
	inc  b                                           ; $6e24: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e25: $cf
	inc  b                                           ; $6e26: $04
	xor  d                                           ; $6e27: $aa
	sub  b                                           ; $6e28: $90
	ld   e, d                                        ; $6e29: $5a
	and  c                                           ; $6e2a: $a1
	ld   a, [hl]                                     ; $6e2b: $7e
	ld   [hl], c                                     ; $6e2c: $71
	ld   [hl], h                                     ; $6e2d: $74
	ld   d, d                                        ; $6e2e: $52
	ld   h, c                                        ; $6e2f: $61
	ld   a, b                                        ; $6e30: $78
	sbc  a                                           ; $6e31: $9f
	dec  c                                           ; $6e32: $0d
	ld   [$7d00], sp                                 ; $6e33: $08 $00 $7d
	and  c                                           ; $6e36: $a1
	sbc  a                                           ; $6e37: $9f
	adc  c                                           ; $6e38: $89
	ld   a, b                                        ; $6e39: $78
	sbc  a                                           ; $6e3a: $9f
	dec  c                                           ; $6e3b: $0d
	nop                                              ; $6e3c: $00
	ld   a, [bc]                                     ; $6e3d: $0a
	dec  c                                           ; $6e3e: $0d
	nop                                              ; $6e3f: $00
	nop                                              ; $6e40: $00
	rrca                                             ; $6e41: $0f
	nop                                              ; $6e42: $00
	ld   bc, $1e09                                   ; $6e43: $01 $09 $1e
	nop                                              ; $6e46: $00
	inc  e                                           ; $6e47: $1c
	dec  b                                           ; $6e48: $05
	nop                                              ; $6e49: $00
	nop                                              ; $6e4a: $00
	ld   bc, $0008                                   ; $6e4b: $01 $08 $00
	ld   a, l                                        ; $6e4e: $7d
	and  c                                           ; $6e4f: $a1
	sbc  a                                           ; $6e50: $9f
	ld   e, b                                        ; $6e51: $58
	sub  d                                           ; $6e52: $92
	ld   h, a                                        ; $6e53: $67
	adc  l                                           ; $6e54: $8d
	sbc  a                                           ; $6e55: $9f
	dec  c                                           ; $6e56: $0d
	nop                                              ; $6e57: $00
	ld   a, [bc]                                     ; $6e58: $0a
	rrca                                             ; $6e59: $0f
	nop                                              ; $6e5a: $00
	ld   bc, $5601                                   ; $6e5b: $01 $01 $56
	ld   [hl], c                                     ; $6e5e: $71
	sbc  [hl]                                        ; $6e5f: $9e
	ld   [bc], a                                     ; $6e60: $02
	and  l                                           ; $6e61: $a5
	inc  b                                           ; $6e62: $04
	xor  d                                           ; $6e63: $aa
	ld   a, l                                        ; $6e64: $7d
	sub  b                                           ; $6e65: $90
	ld   d, h                                        ; $6e66: $54
	sbc  [hl]                                        ; $6e67: $9e
	dec  c                                           ; $6e68: $0d
	ld   e, b                                        ; $6e69: $58
	inc  bc                                          ; $6e6a: $03
	and  a                                           ; $6e6b: $a7
	adc  l                                           ; $6e6c: $8d
	ld   [hl], l                                     ; $6e6d: $75
	ld   h, a                                        ; $6e6e: $67
	ld   e, c                                        ; $6e6f: $59
	ld   sp, hl                                      ; $6e70: $f9
	dec  c                                           ; $6e71: $0d
	nop                                              ; $6e72: $00
	ld   a, [bc]                                     ; $6e73: $0a
	rrca                                             ; $6e74: $0f
	dec  b                                           ; $6e75: $05
	nop                                              ; $6e76: $00
	ld   bc, $cf04                                   ; $6e77: $01 $04 $cf
	inc  b                                           ; $6e7a: $04
	xor  d                                           ; $6e7b: $aa
	sbc  [hl]                                        ; $6e7c: $9e
	inc  bc                                          ; $6e7d: $03
	ld   d, $5f                                      ; $6e7e: $16 $5f
	ld   d, d                                        ; $6e80: $52
	ld   h, c                                        ; $6e81: $61
	ld   a, b                                        ; $6e82: $78
	and  c                                           ; $6e83: $a1
	sub  d                                           ; $6e84: $92
	sbc  a                                           ; $6e85: $9f
	dec  c                                           ; $6e86: $0d
	ld   h, [hl]                                     ; $6e87: $66
	sub  c                                           ; $6e88: $91
	sbc  [hl]                                        ; $6e89: $9e
	ld   [bc], a                                     ; $6e8a: $02
	sub  l                                           ; $6e8b: $95
	ld   [bc], a                                     ; $6e8c: $02
	sub  e                                           ; $6e8d: $93
	sbc  b                                           ; $6e8e: $98
	ld   e, d                                        ; $6e8f: $5a
	and  c                                           ; $6e90: $a1
	ld   a, [hl]                                     ; $6e91: $7e
	ld   [hl], c                                     ; $6e92: $71
	ld   [hl], h                                     ; $6e93: $74
	sub  d                                           ; $6e94: $92
	sbc  a                                           ; $6e95: $9f
	dec  c                                           ; $6e96: $0d
	adc  c                                           ; $6e97: $89
	ld   a, b                                        ; $6e98: $78
	sbc  a                                           ; $6e99: $9f
	dec  c                                           ; $6e9a: $0d
	nop                                              ; $6e9b: $00
	ld   a, [bc]                                     ; $6e9c: $0a
	dec  c                                           ; $6e9d: $0d
	nop                                              ; $6e9e: $00
	nop                                              ; $6e9f: $00
	rrca                                             ; $6ea0: $0f
	nop                                              ; $6ea1: $00
	ld   bc, $1e09                                   ; $6ea2: $01 $09 $1e
	nop                                              ; $6ea5: $00
	nop                                              ; $6ea6: $00
	ld   c, $02                                      ; $6ea7: $0e $02
	rrca                                             ; $6ea9: $0f
	nop                                              ; $6eaa: $00
	ld   bc, $0f02                                   ; $6eab: $01 $02 $0f
	nop                                              ; $6eae: $00
	ld   bc, $5401                                   ; $6eaf: $01 $01 $54
	db   $fc                                         ; $6eb2: $fc
	and  c                                           ; $6eb3: $a1
	rst  $38                                         ; $6eb4: $ff
	rst  $38                                         ; $6eb5: $ff
	dec  c                                           ; $6eb6: $0d
	sub  d                                           ; $6eb7: $92
	ld   [hl], c                                     ; $6eb8: $71
	halt                                             ; $6eb9: $76
	ld   [bc], a                                     ; $6eba: $02
	jr   nz, jr_04a_6ec1                             ; $6ebb: $20 $04

	xor  d                                           ; $6ebd: $aa
	ld   e, d                                        ; $6ebe: $5a
	ld   e, b                                        ; $6ebf: $58
	sbc  l                                           ; $6ec0: $9d

jr_04a_6ec1:
	ld   [hl], c                                     ; $6ec1: $71
	ld   l, l                                        ; $6ec2: $6d
	ld   a, b                                        ; $6ec3: $78
	rst  $38                                         ; $6ec4: $ff
	rst  $38                                         ; $6ec5: $ff
	dec  c                                           ; $6ec6: $0d
	nop                                              ; $6ec7: $00
	ld   a, [bc]                                     ; $6ec8: $0a
	ld   bc, $9b52                                   ; $6ec9: $01 $52 $9b
	ld   d, d                                        ; $6ecc: $52
	sbc  e                                           ; $6ecd: $9b
	halt                                             ; $6ece: $76
	inc  b                                           ; $6ecf: $04
	ld   c, $04                                      ; $6ed0: $0e $04
	adc  h                                           ; $6ed2: $8c
	ld   l, [hl]                                     ; $6ed3: $6e
	ld   [hl], c                                     ; $6ed4: $71
	ld   l, l                                        ; $6ed5: $6d
	ld   e, a                                        ; $6ed6: $5f
	ld   [hl], a                                     ; $6ed7: $77
	sbc  [hl]                                        ; $6ed8: $9e

jr_04a_6ed9:
	dec  c                                           ; $6ed9: $0d
	ld   h, c                                        ; $6eda: $61
	sbc  d                                           ; $6edb: $9a
	ld   e, c                                        ; $6edc: $59
	sub  a                                           ; $6edd: $97
	ld   [bc], a                                     ; $6ede: $02
	jr   nz, jr_04a_6ed9                             ; $6edf: $20 $f8

	ld   [bc], a                                     ; $6ee1: $02
	sbc  e                                           ; $6ee2: $9b
	sbc  [hl]                                        ; $6ee3: $9e
	ld   e, d                                        ; $6ee4: $5a
	and  c                                           ; $6ee5: $a1
	ld   a, [hl]                                     ; $6ee6: $7e
	sbc  c                                           ; $6ee7: $99
	ld   l, h                                        ; $6ee8: $6c
	ld   a, [$000d]                                  ; $6ee9: $fa $0d $00
	ld   a, [bc]                                     ; $6eec: $0a
	ld   bc, $9a6b                                   ; $6eed: $01 $6b $9a
	ld   h, [hl]                                     ; $6ef0: $66
	sub  c                                           ; $6ef1: $91
	sbc  [hl]                                        ; $6ef2: $9e
	inc  b                                           ; $6ef3: $04
	xor  d                                           ; $6ef4: $aa
	ld   [bc], a                                     ; $6ef5: $02
	sub  a                                           ; $6ef6: $97
	ld   [hl], l                                     ; $6ef7: $75
	sub  b                                           ; $6ef8: $90
	ld   [hl], d                                     ; $6ef9: $72
	ld   e, a                                        ; $6efa: $5f
	ld   [hl], h                                     ; $6efb: $74
	dec  c                                           ; $6efc: $0d
	inc  b                                           ; $6efd: $04
	ld   b, d                                        ; $6efe: $42
	sbc  c                                           ; $6eff: $99
	ld   e, c                                        ; $6f00: $59
	ld   a, b                                        ; $6f01: $78
	sbc  a                                           ; $6f02: $9f
	dec  c                                           ; $6f03: $0d
	nop                                              ; $6f04: $00
	ld   a, [bc]                                     ; $6f05: $0a
	nop                                              ; $6f06: $00
	nop                                              ; $6f07: $00
	inc  b                                           ; $6f08: $04
	add  b                                           ; $6f09: $80
	ld   h, c                                        ; $6f0a: $61
	ld   bc, $20ff                                   ; $6f0b: $01 $ff $20
	inc  bc                                          ; $6f0e: $03
	ld   d, b                                        ; $6f0f: $50
	ld   [bc], a                                     ; $6f10: $02
	nop                                              ; $6f11: $00
	inc  bc                                          ; $6f12: $03
	ld   c, d                                        ; $6f13: $4a
	add  hl, hl                                      ; $6f14: $29
	add  hl, hl                                      ; $6f15: $29
	ld   bc, $2201                                   ; $6f16: $01 $01 $22
	inc  e                                           ; $6f19: $1c
	inc  bc                                          ; $6f1a: $03
	halt                                             ; $6f1b: $76
	ld   [bc], a                                     ; $6f1c: $02
	nop                                              ; $6f1d: $00
	jr   nz, jr_04a_6f3c                             ; $6f1e: $20 $1c

	nop                                              ; $6f20: $00
	ld   c, $02                                      ; $6f21: $0e $02
	rrca                                             ; $6f23: $0f
	nop                                              ; $6f24: $00
	ld   bc, $0102                                   ; $6f25: $01 $02 $01
	rst  $38                                         ; $6f28: $ff
	rst  $38                                         ; $6f29: $ff
	and  c                                           ; $6f2a: $a1
	ld   sp, hl                                      ; $6f2b: $f9
	dec  c                                           ; $6f2c: $0d
	sub  b                                           ; $6f2d: $90
	ld   d, h                                        ; $6f2e: $54
	ld   h, c                                        ; $6f2f: $61
	and  c                                           ; $6f30: $a1
	ld   a, b                                        ; $6f31: $78
	inc  bc                                          ; $6f32: $03
	ld   l, a                                        ; $6f33: $6f
	ld   [bc], a                                     ; $6f34: $02
	xor  c                                           ; $6f35: $a9
	ld   e, c                                        ; $6f36: $59
	rst  $38                                         ; $6f37: $ff
	rst  $38                                         ; $6f38: $ff
	dec  c                                           ; $6f39: $0d
	inc  b                                           ; $6f3a: $04
	xor  d                                           ; $6f3b: $aa

jr_04a_6f3c:
	ld   [bc], a                                     ; $6f3c: $02
	sub  a                                           ; $6f3d: $97
	and  b                                           ; $6f3e: $a0
	ld   [hl], d                                     ; $6f3f: $72
	ld   e, a                                        ; $6f40: $5f
	ld   [hl], h                                     ; $6f41: $74
	ld   a, e                                        ; $6f42: $7b
	sub  [hl]                                        ; $6f43: $96
	ld   d, h                                        ; $6f44: $54
	sbc  a                                           ; $6f45: $9f
	dec  c                                           ; $6f46: $0d
	nop                                              ; $6f47: $00
	ld   a, [bc]                                     ; $6f48: $0a
	inc  d                                           ; $6f49: $14
	ld   b, $01                                      ; $6f4a: $06 $01
	rrca                                             ; $6f4c: $0f
	inc  bc                                          ; $6f4d: $03
	nop                                              ; $6f4e: $00
	ld   bc, $0008                                   ; $6f4f: $01 $08 $00
	ld   e, l                                        ; $6f52: $5d
	and  c                                           ; $6f53: $a1
	sbc  a                                           ; $6f54: $9f
	dec  c                                           ; $6f55: $0d
	ld   l, a                                        ; $6f56: $6f
	sub  l                                           ; $6f57: $95
	ld   [hl], c                                     ; $6f58: $71
	halt                                             ; $6f59: $76
	ld   d, d                                        ; $6f5a: $52
	ld   d, d                                        ; $6f5b: $52
	ld   sp, hl                                      ; $6f5c: $f9
	dec  c                                           ; $6f5d: $0d
	nop                                              ; $6f5e: $00
	ld   a, [bc]                                     ; $6f5f: $0a
	rrca                                             ; $6f60: $0f
	nop                                              ; $6f61: $00
	ld   bc, $7d01                                   ; $6f62: $01 $01 $7d
	ld   d, d                                        ; $6f65: $52
	sbc  [hl]                                        ; $6f66: $9e
	ld   [hl], a                                     ; $6f67: $77
	ld   d, h                                        ; $6f68: $54
	ld   l, h                                        ; $6f69: $6c
	sbc  a                                           ; $6f6a: $9f
	dec  c                                           ; $6f6b: $0d
	nop                                              ; $6f6c: $00
	ld   a, [bc]                                     ; $6f6d: $0a
	inc  d                                           ; $6f6e: $14
	ld   a, [bc]                                     ; $6f6f: $0a
	ld   bc, $031c                                   ; $6f70: $01 $1c $03
	inc  bc                                          ; $6f73: $03
	inc  bc                                          ; $6f74: $03
	ld   bc, $ad04                                   ; $6f75: $01 $04 $ad
	ld   [bc], a                                     ; $6f78: $02
	xor  c                                           ; $6f79: $a9
	ld   a, l                                        ; $6f7a: $7d
	sbc  [hl]                                        ; $6f7b: $9e
	cp   b                                           ; $6f7c: $b8
	push hl                                          ; $6f7d: $e5
	pop  af                                          ; $6f7e: $f1
	ei                                               ; $6f7f: $fb
	ld   a, h                                        ; $6f80: $7c
	dec  c                                           ; $6f81: $0d
	jp   nc, $aec4                                   ; $6f82: $d2 $c4 $ae

	push af                                          ; $6f85: $f5
	ld   [bc], a                                     ; $6f86: $02
	ld   e, e                                        ; $6f87: $5b
	dec  b                                           ; $6f88: $05
	cpl                                              ; $6f89: $2f
	dec  c                                           ; $6f8a: $0d
	ld   h, d                                        ; $6f8b: $62
	ld   e, l                                        ; $6f8c: $5d
	sbc  e                                           ; $6f8d: $9b
	ld   d, h                                        ; $6f8e: $54
	ld   h, e                                        ; $6f8f: $63
	adc  h                                           ; $6f90: $8c
	ld   [hl], l                                     ; $6f91: $75
	ld   h, l                                        ; $6f92: $65
	ld   l, l                                        ; $6f93: $6d
	sbc  a                                           ; $6f94: $9f
	dec  c                                           ; $6f95: $0d
	nop                                              ; $6f96: $00
	ld   a, [bc]                                     ; $6f97: $0a
	inc  e                                           ; $6f98: $1c
	inc  bc                                          ; $6f99: $03
	inc  b                                           ; $6f9a: $04
	inc  b                                           ; $6f9b: $04
	ld   bc, $4a03                                   ; $6f9c: $01 $03 $4a
	inc  bc                                          ; $6f9f: $03
	jp   c, $509e                                    ; $6fa0: $da $9e $50

	ld   a, b                                        ; $6fa3: $78
	ld   l, l                                        ; $6fa4: $6d
	ld   a, c                                        ; $6fa5: $79
	ld   [hl], l                                     ; $6fa6: $75
	ld   e, e                                        ; $6fa7: $5b
	sbc  c                                           ; $6fa8: $99
	ld   a, h                                        ; $6fa9: $7c
	ld   e, c                                        ; $6faa: $59
	ld   a, b                                        ; $6fab: $78
	ld   sp, hl                                      ; $6fac: $f9
	dec  c                                           ; $6fad: $0d
	halt                                             ; $6fae: $76
	dec  b                                           ; $6faf: $05
	pop  de                                          ; $6fb0: $d1
	ld   [hl], c                                     ; $6fb1: $71
	ld   [hl], h                                     ; $6fb2: $74
	ld   d, d                                        ; $6fb3: $52
	ld   l, l                                        ; $6fb4: $6d
	ld   a, h                                        ; $6fb5: $7c
	ld   [hl], l                                     ; $6fb6: $75
	ld   h, a                                        ; $6fb7: $67
	ld   e, d                                        ; $6fb8: $5a
	rst  $38                                         ; $6fb9: $ff
	rst  $38                                         ; $6fba: $ff
	dec  c                                           ; $6fbb: $0d
	nop                                              ; $6fbc: $00
	ld   a, [bc]                                     ; $6fbd: $0a
	inc  e                                           ; $6fbe: $1c
	inc  bc                                          ; $6fbf: $03
	inc  bc                                          ; $6fc0: $03
	inc  bc                                          ; $6fc1: $03
	dec  e                                           ; $6fc2: $1d
	ld   b, b                                        ; $6fc3: $40
	inc  de                                          ; $6fc4: $13
	inc  bc                                          ; $6fc5: $03
	inc  de                                          ; $6fc6: $13
	ld   bc, $2803                                   ; $6fc7: $01 $03 $28
	nop                                              ; $6fca: $00
	ld   bc, $715b                                   ; $6fcb: $01 $5b $71
	ld   l, a                                        ; $6fce: $6f
	sbc  b                                           ; $6fcf: $98
	ld   [hl], l                                     ; $6fd0: $75
	ld   e, e                                        ; $6fd1: $5b
	ld   [hl], h                                     ; $6fd2: $74
	ld   d, d                                        ; $6fd3: $52
	adc  h                                           ; $6fd4: $8c
	ld   h, l                                        ; $6fd5: $65
	ld   l, l                                        ; $6fd6: $6d
	sbc  a                                           ; $6fd7: $9f
	dec  c                                           ; $6fd8: $0d
	ld   d, b                                        ; $6fd9: $50
	sbc  b                                           ; $6fda: $98
	ld   e, d                                        ; $6fdb: $5a
	halt                                             ; $6fdc: $76
	ld   d, h                                        ; $6fdd: $54
	sbc  a                                           ; $6fde: $9f
	dec  c                                           ; $6fdf: $0d
	nop                                              ; $6fe0: $00
	ld   a, [bc]                                     ; $6fe1: $0a
	ld   bc, $9166                                   ; $6fe2: $01 $66 $91
	sbc  [hl]                                        ; $6fe5: $9e
	ld   e, b                                        ; $6fe6: $58
	sub  d                                           ; $6fe7: $92
	ld   h, a                                        ; $6fe8: $67
	adc  l                                           ; $6fe9: $8d
	ld   a, b                                        ; $6fea: $78
	ld   h, e                                        ; $6feb: $63
	ld   d, d                                        ; $6fec: $52
	sbc  a                                           ; $6fed: $9f
	dec  c                                           ; $6fee: $0d
	nop                                              ; $6fef: $00
	ld   a, [bc]                                     ; $6ff0: $0a
	dec  c                                           ; $6ff1: $0d
	nop                                              ; $6ff2: $00
	nop                                              ; $6ff3: $00
	rrca                                             ; $6ff4: $0f
	nop                                              ; $6ff5: $00
	ld   bc, $1e09                                   ; $6ff6: $01 $09 $1e
	add  hl, hl                                      ; $6ff9: $29
	nop                                              ; $6ffa: $00
	nop                                              ; $6ffb: $00
	nop                                              ; $6ffc: $00
	inc  b                                           ; $6ffd: $04
	add  b                                           ; $6ffe: $80
	nop                                              ; $6fff: $00
	ld   bc, $20ff                                   ; $7000: $01 $ff $20
	inc  bc                                          ; $7003: $03
	ld   l, a                                        ; $7004: $6f
	ld   [bc], a                                     ; $7005: $02
	nop                                              ; $7006: $00
	jr   nz, jr_04a_7025                             ; $7007: $20 $1c

	nop                                              ; $7009: $00
	ld   c, $02                                      ; $700a: $0e $02
	rrca                                             ; $700c: $0f
	nop                                              ; $700d: $00
	ld   bc, $0102                                   ; $700e: $01 $02 $01
	rst  $38                                         ; $7011: $ff
	rst  $38                                         ; $7012: $ff
	and  c                                           ; $7013: $a1
	ld   sp, hl                                      ; $7014: $f9
	db   $10                                         ; $7015: $10
	sub  b                                           ; $7016: $90
	ld   d, h                                        ; $7017: $54
	ld   h, c                                        ; $7018: $61
	and  c                                           ; $7019: $a1
	ld   a, b                                        ; $701a: $78
	inc  bc                                          ; $701b: $03
	ld   l, a                                        ; $701c: $6f
	ld   [bc], a                                     ; $701d: $02
	xor  c                                           ; $701e: $a9
	ld   e, c                                        ; $701f: $59
	rst  $38                                         ; $7020: $ff
	dec  c                                           ; $7021: $0d
	inc  b                                           ; $7022: $04
	xor  d                                           ; $7023: $aa
	ld   [bc], a                                     ; $7024: $02

jr_04a_7025:
	sub  a                                           ; $7025: $97
	and  b                                           ; $7026: $a0
	ld   [hl], d                                     ; $7027: $72
	ld   e, a                                        ; $7028: $5f
	ld   [hl], h                                     ; $7029: $74
	inc  b                                           ; $702a: $04
	ld   b, d                                        ; $702b: $42
	sub  [hl]                                        ; $702c: $96
	ld   d, h                                        ; $702d: $54
	sbc  a                                           ; $702e: $9f
	dec  c                                           ; $702f: $0d
	nop                                              ; $7030: $00
	ld   a, [bc]                                     ; $7031: $0a
	inc  d                                           ; $7032: $14
	ld   b, $01                                      ; $7033: $06 $01
	rrca                                             ; $7035: $0f
	ld   bc, $0100                                   ; $7036: $01 $00 $01
	ld   [$6300], sp                                 ; $7039: $08 $00 $63
	and  c                                           ; $703c: $a1
	rst  $38                                         ; $703d: $ff
	rst  $38                                         ; $703e: $ff
	dec  c                                           ; $703f: $0d
	ld   l, a                                        ; $7040: $6f
	sub  l                                           ; $7041: $95
	ld   [hl], c                                     ; $7042: $71
	halt                                             ; $7043: $76
	ld   d, d                                        ; $7044: $52
	ld   d, d                                        ; $7045: $52
	ld   [hl], l                                     ; $7046: $75
	ld   h, a                                        ; $7047: $67
	ld   e, c                                        ; $7048: $59
	ld   sp, hl                                      ; $7049: $f9
	dec  c                                           ; $704a: $0d
	nop                                              ; $704b: $00
	ld   a, [bc]                                     ; $704c: $0a
	rrca                                             ; $704d: $0f
	nop                                              ; $704e: $00
	ld   bc, $7d01                                   ; $704f: $01 $01 $7d
	ld   d, d                                        ; $7052: $52
	sbc  [hl]                                        ; $7053: $9e
	ld   [hl], a                                     ; $7054: $77
	ld   d, h                                        ; $7055: $54
	ld   l, h                                        ; $7056: $6c
	sbc  a                                           ; $7057: $9f
	dec  c                                           ; $7058: $0d
	nop                                              ; $7059: $00
	ld   a, [bc]                                     ; $705a: $0a
	inc  d                                           ; $705b: $14
	ld   a, [bc]                                     ; $705c: $0a
	ld   bc, $011c                                   ; $705d: $01 $1c $01
	ld   bc, $0101                                   ; $7060: $01 $01 $01
	inc  b                                           ; $7063: $04
	xor  l                                           ; $7064: $ad
	ld   [bc], a                                     ; $7065: $02
	xor  c                                           ; $7066: $a9
	ld   a, l                                        ; $7067: $7d
	ld   e, b                                        ; $7068: $58
	ld   l, e                                        ; $7069: $6b
	ld   d, h                                        ; $706a: $54
	ld   h, [hl]                                     ; $706b: $66
	and  b                                           ; $706c: $a0
	dec  c                                           ; $706d: $0d
	inc  bc                                          ; $706e: $03
	ld   l, e                                        ; $706f: $6b
	inc  b                                           ; $7070: $04
	ld   [de], a                                     ; $7071: $12
	ld   [hl], c                                     ; $7072: $71
	ld   [hl], h                                     ; $7073: $74
	ld   d, d                                        ; $7074: $52
	ld   l, l                                        ; $7075: $6d
	ld   l, [hl]                                     ; $7076: $6e
	ld   d, d                                        ; $7077: $52
	ld   [hl], h                                     ; $7078: $74
	dec  c                                           ; $7079: $0d
	ld   d, b                                        ; $707a: $50
	sbc  b                                           ; $707b: $98
	ld   e, d                                        ; $707c: $5a
	halt                                             ; $707d: $76
	ld   d, h                                        ; $707e: $54
	ld   h, d                                        ; $707f: $62
	ld   h, h                                        ; $7080: $64
	ld   d, d                                        ; $7081: $52
	adc  h                                           ; $7082: $8c
	ld   h, l                                        ; $7083: $65
	ld   l, l                                        ; $7084: $6d
	sbc  a                                           ; $7085: $9f
	dec  c                                           ; $7086: $0d
	nop                                              ; $7087: $00
	ld   a, [bc]                                     ; $7088: $0a
	add  hl, de                                      ; $7089: $19
	dec  b                                           ; $708a: $05
	ld   [bc], a                                     ; $708b: $02
	inc  b                                           ; $708c: $04
	jr   jr_04a_7092                                 ; $708d: $18 $03

	sbc  c                                           ; $708f: $99
	ld   a, h                                        ; $7090: $7c
	ld   [bc], a                                     ; $7091: $02

jr_04a_7092:
	jp   Jump_04a_65a0                               ; $7092: $c3 $a0 $65


	ld   l, l                                        ; $7095: $6d
	adc  h                                           ; $7096: $8c
	ld   [hl], l                                     ; $7097: $75
	ld   [hl], l                                     ; $7098: $75
	ld   h, a                                        ; $7099: $67
	nop                                              ; $709a: $00
	nop                                              ; $709b: $00
	ld   d, h                                        ; $709c: $54
	sbc  d                                           ; $709d: $9a
	ld   h, l                                        ; $709e: $65
	ld   e, c                                        ; $709f: $59
	ld   [hl], c                                     ; $70a0: $71
	ld   l, l                                        ; $70a1: $6d
	ld   [hl], l                                     ; $70a2: $75
	ld   h, a                                        ; $70a3: $67
	nop                                              ; $70a4: $00
	ld   bc, $b107                                   ; $70a5: $01 $07 $b1
	nop                                              ; $70a8: $00
	ld   [bc], a                                     ; $70a9: $02
	inc  bc                                          ; $70aa: $03
	ld   bc, $2000                                   ; $70ab: $01 $00 $20
	nop                                              ; $70ae: $00
	rlca                                             ; $70af: $07
	dec  sp                                          ; $70b0: $3b
	ld   bc, $0302                                   ; $70b1: $01 $02 $03
	ld   bc, $2001                                   ; $70b4: $01 $01 $20
	nop                                              ; $70b7: $00
	ld   b, $a9                                      ; $70b8: $06 $a9
	ld   bc, $000f                                   ; $70ba: $01 $0f $00
	ld   bc, $0401                                   ; $70bd: $01 $01 $04
	jr   jr_04a_70c5                                 ; $70c0: $18 $03

	sbc  c                                           ; $70c2: $99
	ld   a, h                                        ; $70c3: $7c
	ld   [bc], a                                     ; $70c4: $02

jr_04a_70c5:
	jp   Jump_04a_65a0                               ; $70c5: $c3 $a0 $65


	ld   l, l                                        ; $70c8: $6d
	adc  h                                           ; $70c9: $8c
	ld   [hl], l                                     ; $70ca: $75
	ld   [hl], l                                     ; $70cb: $75
	ld   h, a                                        ; $70cc: $67
	sub  [hl]                                        ; $70cd: $96
	sbc  a                                           ; $70ce: $9f
	dec  c                                           ; $70cf: $0d
	ld   [bc], a                                     ; $70d0: $02
	and  c                                           ; $70d1: $a1
	ld   a, c                                        ; $70d2: $79
	ld   h, l                                        ; $70d3: $65
	ld   a, b                                        ; $70d4: $78
	ld   d, d                                        ; $70d5: $52
	ld   [hl], l                                     ; $70d6: $75
	ld   [bc], a                                     ; $70d7: $02
	inc  [hl]                                        ; $70d8: $34
	ld   h, e                                        ; $70d9: $63
	ld   d, d                                        ; $70da: $52
	sbc  a                                           ; $70db: $9f
	dec  c                                           ; $70dc: $0d
	nop                                              ; $70dd: $00
	ld   a, [bc]                                     ; $70de: $0a
	inc  e                                           ; $70df: $1c
	ld   bc, $0505                                   ; $70e0: $01 $05 $05
	dec  e                                           ; $70e3: $1d
	ld   b, b                                        ; $70e4: $40
	ld   de, $1103                                   ; $70e5: $11 $03 $11
	ld   bc, $2802                                   ; $70e8: $01 $02 $28
	nop                                              ; $70eb: $00
	ld   bc, $1804                                   ; $70ec: $01 $04 $18
	inc  bc                                          ; $70ef: $03
	sbc  c                                           ; $70f0: $99
	ld   a, h                                        ; $70f1: $7c
	ld   [bc], a                                     ; $70f2: $02
	jp   Jump_04a_786e                               ; $70f3: $c3 $6e $78


	and  c                                           ; $70f6: $a1
	ld   [hl], h                                     ; $70f7: $74
	rst  $38                                         ; $70f8: $ff
	rst  $38                                         ; $70f9: $ff
	dec  c                                           ; $70fa: $0d
	ld   [$6300], sp                                 ; $70fb: $08 $00 $63
	and  c                                           ; $70fe: $a1
	ld   [hl], h                                     ; $70ff: $74
	sbc  [hl]                                        ; $7100: $9e
	ld   h, a                                        ; $7101: $67
	ld   h, d                                        ; $7102: $62
	ld   e, l                                        ; $7103: $5d
	dec  c                                           ; $7104: $0d
	dec  b                                           ; $7105: $05
	and  $05                                         ; $7106: $e6 $05
	rst  $20                                         ; $7108: $e7
	inc  b                                           ; $7109: $04
	jr   nz, @+$7a                                   ; $710a: $20 $78

	and  c                                           ; $710c: $a1
	ld   [hl], l                                     ; $710d: $75
	ld   h, a                                        ; $710e: $67
	ld   a, e                                        ; $710f: $7b
	sbc  a                                           ; $7110: $9f
	dec  c                                           ; $7111: $0d
	nop                                              ; $7112: $00
	ld   a, [bc]                                     ; $7113: $0a
	inc  e                                           ; $7114: $1c
	ld   bc, $0101                                   ; $7115: $01 $01 $01
	ld   bc, $8f04                                   ; $7118: $01 $04 $8f
	inc  b                                           ; $711b: $04
	jr   jr_04a_7197                                 ; $711c: $18 $79

	dec  c                                           ; $711e: $0d
	ld   d, b                                        ; $711f: $50
	sbc  b                                           ; $7120: $98
	ld   e, d                                        ; $7121: $5a
	halt                                             ; $7122: $76
	ld   d, h                                        ; $7123: $54
	ld   h, d                                        ; $7124: $62
	ld   h, h                                        ; $7125: $64
	ld   d, d                                        ; $7126: $52
	adc  h                                           ; $7127: $8c
	ld   h, l                                        ; $7128: $65
	ld   l, l                                        ; $7129: $6d
	sbc  a                                           ; $712a: $9f
	dec  c                                           ; $712b: $0d
	ld   l, e                                        ; $712c: $6b
	sbc  d                                           ; $712d: $9a
	ld   h, [hl]                                     ; $712e: $66
	sub  c                                           ; $712f: $91
	sbc  [hl]                                        ; $7130: $9e
	inc  bc                                          ; $7131: $03
	add  e                                           ; $7132: $83
	dec  b                                           ; $7133: $05
	dec  c                                           ; $7134: $0d
	ld   h, l                                        ; $7135: $65
	adc  h                                           ; $7136: $8c
	ld   h, a                                        ; $7137: $67
	sbc  a                                           ; $7138: $9f
	dec  c                                           ; $7139: $0d
	nop                                              ; $713a: $00
	ld   a, [bc]                                     ; $713b: $0a
	dec  c                                           ; $713c: $0d
	nop                                              ; $713d: $00
	nop                                              ; $713e: $00
	rrca                                             ; $713f: $0f
	nop                                              ; $7140: $00
	ld   bc, $1e09                                   ; $7141: $01 $09 $1e
	nop                                              ; $7144: $00
	rrca                                             ; $7145: $0f
	nop                                              ; $7146: $00
	ld   bc, $5401                                   ; $7147: $01 $01 $54
	sbc  d                                           ; $714a: $9a
	ld   h, l                                        ; $714b: $65
	ld   e, c                                        ; $714c: $59
	ld   [hl], c                                     ; $714d: $71
	ld   l, l                                        ; $714e: $6d
	ld   [hl], l                                     ; $714f: $75
	ld   h, a                                        ; $7150: $67
	sbc  a                                           ; $7151: $9f
	dec  c                                           ; $7152: $0d
	ld   h, e                                        ; $7153: $63
	ld   e, l                                        ; $7154: $5d
	sub  a                                           ; $7155: $97
	ld   h, e                                        ; $7156: $63
	and  c                                           ; $7157: $a1
	halt                                             ; $7158: $76
	ld   d, d                                        ; $7159: $52
	ld   [hl], c                                     ; $715a: $71
	ld   h, l                                        ; $715b: $65
	sub  l                                           ; $715c: $95
	ld   a, c                                        ; $715d: $79
	dec  c                                           ; $715e: $0d
	ld   l, e                                        ; $715f: $6b
	ld   d, h                                        ; $7160: $54
	ld   h, [hl]                                     ; $7161: $66
	ld   e, d                                        ; $7162: $5a
	ld   [hl], l                                     ; $7163: $75
	ld   e, e                                        ; $7164: $5b
	ld   [hl], h                                     ; $7165: $74
	rst  $38                                         ; $7166: $ff
	rst  $38                                         ; $7167: $ff
	dec  c                                           ; $7168: $0d
	nop                                              ; $7169: $00
	ld   a, [bc]                                     ; $716a: $0a
	inc  e                                           ; $716b: $1c
	ld   bc, $0303                                   ; $716c: $01 $03 $03
	ld   bc, $9e7d                                   ; $716f: $01 $7d $9e
	ld   a, l                                        ; $7172: $7d
	ld   d, b                                        ; $7173: $50
	rst  $38                                         ; $7174: $ff
	rst  $38                                         ; $7175: $ff
	ld   l, e                                        ; $7176: $6b
	ld   d, h                                        ; $7177: $54
	ld   [hl], l                                     ; $7178: $75
	ld   h, a                                        ; $7179: $67
	ld   e, c                                        ; $717a: $59
	sbc  a                                           ; $717b: $9f
	dec  c                                           ; $717c: $0d
	nop                                              ; $717d: $00
	ld   a, [bc]                                     ; $717e: $0a
	inc  e                                           ; $717f: $1c
	ld   bc, $0000                                   ; $7180: $01 $00 $00
	ld   bc, $9a6b                                   ; $7183: $01 $6b $9a
	ld   a, l                                        ; $7186: $7d
	halt                                             ; $7187: $76
	sub  b                                           ; $7188: $90
	ld   e, c                                        ; $7189: $59
	ld   e, l                                        ; $718a: $5d
	sbc  [hl]                                        ; $718b: $9e
	ld   d, b                                        ; $718c: $50
	sbc  b                                           ; $718d: $98
	ld   e, d                                        ; $718e: $5a
	halt                                             ; $718f: $76
	ld   d, h                                        ; $7190: $54
	dec  c                                           ; $7191: $0d
	ld   h, d                                        ; $7192: $62
	ld   h, h                                        ; $7193: $64
	ld   d, d                                        ; $7194: $52
	adc  h                                           ; $7195: $8c
	ld   h, l                                        ; $7196: $65

jr_04a_7197:
	ld   l, l                                        ; $7197: $6d
	sbc  a                                           ; $7198: $9f
	dec  c                                           ; $7199: $0d
	ld   l, e                                        ; $719a: $6b
	sbc  d                                           ; $719b: $9a
	ld   h, [hl]                                     ; $719c: $66
	sub  c                                           ; $719d: $91
	sbc  [hl]                                        ; $719e: $9e
	ld   e, b                                        ; $719f: $58
	sub  d                                           ; $71a0: $92
	ld   h, a                                        ; $71a1: $67
	adc  l                                           ; $71a2: $8d
	ld   a, b                                        ; $71a3: $78
	ld   h, e                                        ; $71a4: $63
	ld   d, d                                        ; $71a5: $52
	sbc  a                                           ; $71a6: $9f
	dec  c                                           ; $71a7: $0d
	nop                                              ; $71a8: $00
	ld   a, [bc]                                     ; $71a9: $0a
	dec  c                                           ; $71aa: $0d
	nop                                              ; $71ab: $00
	nop                                              ; $71ac: $00
	rrca                                             ; $71ad: $0f
	nop                                              ; $71ae: $00
	ld   bc, $1e09                                   ; $71af: $01 $09 $1e
	nop                                              ; $71b2: $00
	inc  e                                           ; $71b3: $1c
	ld   bc, $0303                                   ; $71b4: $01 $03 $03
	ld   bc, $5477                                   ; $71b7: $01 $77 $54
	ld   e, c                                        ; $71ba: $59
	ld   h, l                                        ; $71bb: $65
	adc  h                                           ; $71bc: $8c
	ld   h, l                                        ; $71bd: $65
	ld   l, l                                        ; $71be: $6d
	ld   e, c                                        ; $71bf: $59
	ld   sp, hl                                      ; $71c0: $f9
	dec  c                                           ; $71c1: $0d
	nop                                              ; $71c2: $00
	ld   a, [bc]                                     ; $71c3: $0a
	rrca                                             ; $71c4: $0f
	nop                                              ; $71c5: $00
	ld   bc, $5201                                   ; $71c6: $01 $01 $52
	sbc  [hl]                                        ; $71c9: $9e
	ld   d, d                                        ; $71ca: $52
	ld   d, [hl]                                     ; $71cb: $56
	rst  $38                                         ; $71cc: $ff
	rst  $38                                         ; $71cd: $ff
	dec  c                                           ; $71ce: $0d
	ld   [hl], a                                     ; $71cf: $77
	ld   d, h                                        ; $71d0: $54
	ld   h, l                                        ; $71d1: $65
	ld   l, l                                        ; $71d2: $6d
	ld   h, l                                        ; $71d3: $65
	adc  h                                           ; $71d4: $8c
	ld   h, l                                        ; $71d5: $65
	ld   [hl], h                                     ; $71d6: $74
	sbc  a                                           ; $71d7: $9f
	dec  c                                           ; $71d8: $0d
	nop                                              ; $71d9: $00
	ld   a, [bc]                                     ; $71da: $0a
	inc  e                                           ; $71db: $1c
	ld   bc, $0101                                   ; $71dc: $01 $01 $01
	ld   bc, $9a6b                                   ; $71df: $01 $6b $9a
	ld   l, [hl]                                     ; $71e2: $6e
	ld   e, a                                        ; $71e3: $5f
	ld   [bc], a                                     ; $71e4: $02
	sbc  l                                           ; $71e5: $9d
	ld   d, d                                        ; $71e6: $52
	ld   l, l                                        ; $71e7: $6d
	ld   e, c                                        ; $71e8: $59
	ld   [hl], c                                     ; $71e9: $71
	ld   l, l                                        ; $71ea: $6d
	and  c                                           ; $71eb: $a1
	ld   [hl], l                                     ; $71ec: $75
	ld   h, a                                        ; $71ed: $67
	sbc  a                                           ; $71ee: $9f
	dec  c                                           ; $71ef: $0d
	ld   l, e                                        ; $71f0: $6b
	sbc  d                                           ; $71f1: $9a
	ld   h, [hl]                                     ; $71f2: $66
	sub  c                                           ; $71f3: $91
	sbc  [hl]                                        ; $71f4: $9e
	inc  bc                                          ; $71f5: $03
	add  e                                           ; $71f6: $83
	dec  b                                           ; $71f7: $05
	dec  c                                           ; $71f8: $0d
	ld   h, l                                        ; $71f9: $65
	adc  h                                           ; $71fa: $8c
	ld   h, a                                        ; $71fb: $67
	sbc  a                                           ; $71fc: $9f
	dec  c                                           ; $71fd: $0d
	nop                                              ; $71fe: $00
	ld   a, [bc]                                     ; $71ff: $0a
	dec  c                                           ; $7200: $0d
	nop                                              ; $7201: $00
	nop                                              ; $7202: $00
	rrca                                             ; $7203: $0f
	nop                                              ; $7204: $00
	ld   bc, $1e09                                   ; $7205: $01 $09 $1e
	nop                                              ; $7208: $00
	nop                                              ; $7209: $00
	ld   c, $01                                      ; $720a: $0e $01
	rrca                                             ; $720c: $0f
	nop                                              ; $720d: $00
	ld   bc, $0102                                   ; $720e: $01 $02 $01
	sub  [hl]                                        ; $7211: $96
	ld   h, l                                        ; $7212: $65
	sbc  [hl]                                        ; $7213: $9e
	ld   [bc], a                                     ; $7214: $02
	and  l                                           ; $7215: $a5
	inc  b                                           ; $7216: $04
	xor  d                                           ; $7217: $aa
	sub  b                                           ; $7218: $90
	ld   e, d                                        ; $7219: $5a
	and  c                                           ; $721a: $a1
	ld   a, [hl]                                     ; $721b: $7e
	sbc  c                                           ; $721c: $99
	ld   l, h                                        ; $721d: $6c
	ld   a, [$ff0d]                                  ; $721e: $fa $0d $ff
	rst  $38                                         ; $7221: $ff
	ld   d, b                                        ; $7222: $50
	sbc  [hl]                                        ; $7223: $9e
	ld   [bc], a                                     ; $7224: $02
	and  l                                           ; $7225: $a5
	inc  b                                           ; $7226: $04
	xor  d                                           ; $7227: $aa
	ld   a, l                                        ; $7228: $7d
	inc  b                                           ; $7229: $04
	xor  d                                           ; $722a: $aa
	inc  b                                           ; $722b: $04
	db   $f4                                         ; $722c: $f4
	inc  b                                           ; $722d: $04
	xor  d                                           ; $722e: $aa
	ld   e, c                                        ; $722f: $59
	sbc  a                                           ; $7230: $9f
	dec  c                                           ; $7231: $0d
	inc  bc                                          ; $7232: $03
	ld   l, l                                        ; $7233: $6d
	dec  b                                           ; $7234: $05
	add  hl, de                                      ; $7235: $19
	ld   a, l                                        ; $7236: $7d
	ld   a, b                                        ; $7237: $78
	ld   d, d                                        ; $7238: $52
	and  c                                           ; $7239: $a1
	ld   l, [hl]                                     ; $723a: $6e
	ld   [hl], c                                     ; $723b: $71
	ld   l, l                                        ; $723c: $6d
	rst  $38                                         ; $723d: $ff
	rst  $38                                         ; $723e: $ff
	dec  c                                           ; $723f: $0d
	nop                                              ; $7240: $00
	ld   a, [bc]                                     ; $7241: $0a
	inc  d                                           ; $7242: $14
	ld   b, $01                                      ; $7243: $06 $01
	rrca                                             ; $7245: $0f
	add  hl, bc                                      ; $7246: $09
	ld   bc, $0801                                   ; $7247: $01 $01 $08
	nop                                              ; $724a: $00
	ld   e, l                                        ; $724b: $5d
	and  c                                           ; $724c: $a1
	sbc  a                                           ; $724d: $9f
	dec  c                                           ; $724e: $0d
	ld   d, d                                        ; $724f: $52
	ld   d, d                                        ; $7250: $52
	ld   e, c                                        ; $7251: $59
	ld   a, b                                        ; $7252: $78
	sbc  a                                           ; $7253: $9f
	dec  c                                           ; $7254: $0d
	nop                                              ; $7255: $00
	ld   a, [bc]                                     ; $7256: $0a
	rrca                                             ; $7257: $0f
	nop                                              ; $7258: $00
	ld   bc, $5001                                   ; $7259: $01 $01 $50
	sbc  [hl]                                        ; $725c: $9e
	inc  b                                           ; $725d: $04
	ld   c, $03                                      ; $725e: $0e $03
	sub  b                                           ; $7260: $90
	ld   h, e                                        ; $7261: $63
	and  c                                           ; $7262: $a1
	sbc  a                                           ; $7263: $9f
	dec  c                                           ; $7264: $0d
	ld   [hl], a                                     ; $7265: $77
	ld   d, h                                        ; $7266: $54
	ld   l, h                                        ; $7267: $6c
	sbc  a                                           ; $7268: $9f
	ld   [bc], a                                     ; $7269: $02
	adc  b                                           ; $726a: $88
	ld   d, d                                        ; $726b: $52
	ld   [hl], h                                     ; $726c: $74
	ld   d, d                                        ; $726d: $52
	adc  h                                           ; $726e: $8c
	ld   h, a                                        ; $726f: $67
	ld   e, c                                        ; $7270: $59
	sub  a                                           ; $7271: $97
	sbc  a                                           ; $7272: $9f
	dec  c                                           ; $7273: $0d
	nop                                              ; $7274: $00
	ld   a, [bc]                                     ; $7275: $0a
	inc  d                                           ; $7276: $14
	ld   a, [bc]                                     ; $7277: $0a
	ld   bc, $091c                                   ; $7278: $01 $1c $09
	ld   bc, $0101                                   ; $727b: $01 $01 $01
	ld   e, b                                        ; $727e: $58
	ld   a, l                                        ; $727f: $7d
	sub  [hl]                                        ; $7280: $96
	ld   d, h                                        ; $7281: $54
	sbc  [hl]                                        ; $7282: $9e
	ld   [$5d00], sp                                 ; $7283: $08 $00 $5d
	and  c                                           ; $7286: $a1
	sbc  a                                           ; $7287: $9f
	dec  c                                           ; $7288: $0d
	nop                                              ; $7289: $00
	ld   a, [bc]                                     ; $728a: $0a
	ld   bc, $a502                                   ; $728b: $01 $02 $a5
	inc  b                                           ; $728e: $04
	xor  d                                           ; $728f: $aa
	ld   a, l                                        ; $7290: $7d
	ld   [bc], a                                     ; $7291: $02
	jp   z, Jump_04a_597c                            ; $7292: $ca $7c $59

	and  c                                           ; $7295: $a1
	ld   h, b                                        ; $7296: $60
	ld   d, d                                        ; $7297: $52
	ld   [bc], a                                     ; $7298: $02
	add  [hl]                                        ; $7299: $86
	dec  c                                           ; $729a: $0d
	ld   e, d                                        ; $729b: $5a
	ld   d, b                                        ; $729c: $50
	sbc  c                                           ; $729d: $99
	and  c                                           ; $729e: $a1
	ld   l, [hl]                                     ; $729f: $6e
	sbc  a                                           ; $72a0: $9f
	dec  c                                           ; $72a1: $0d
	ld   h, e                                        ; $72a2: $63
	ld   d, b                                        ; $72a3: $50
	sbc  [hl]                                        ; $72a4: $9e
	dec  b                                           ; $72a5: $05
	inc  de                                          ; $72a6: $13
	ld   [bc], a                                     ; $72a7: $02
	ld   hl, $0279                                   ; $72a8: $21 $79 $02
	ld   a, a                                        ; $72ab: $7f
	ld   h, c                                        ; $72ac: $61
	ld   d, h                                        ; $72ad: $54
	sbc  a                                           ; $72ae: $9f
	dec  c                                           ; $72af: $0d
	nop                                              ; $72b0: $00
	ld   a, [bc]                                     ; $72b1: $0a
	dec  c                                           ; $72b2: $0d
	nop                                              ; $72b3: $00
	nop                                              ; $72b4: $00
	rrca                                             ; $72b5: $0f
	nop                                              ; $72b6: $00
	ld   bc, $2a23                                   ; $72b7: $01 $23 $2a
	inc  e                                           ; $72ba: $1c
	ld   bc, $0101                                   ; $72bb: $01 $01 $01
	ld   bc, $9e50                                   ; $72be: $01 $50 $9e
	ld   [$6300], sp                                 ; $72c1: $08 $00 $63
	and  c                                           ; $72c4: $a1
	sbc  a                                           ; $72c5: $9f
	dec  c                                           ; $72c6: $0d
	ld   e, b                                        ; $72c7: $58
	adc  h                                           ; $72c8: $8c
	ld   l, a                                        ; $72c9: $6f
	ld   h, l                                        ; $72ca: $65
	ld   [hl], h                                     ; $72cb: $74
	adc  h                                           ; $72cc: $8c
	ld   h, l                                        ; $72cd: $65
	ld   l, l                                        ; $72ce: $6d
	sbc  a                                           ; $72cf: $9f
	dec  c                                           ; $72d0: $0d
	nop                                              ; $72d1: $00
	ld   a, [bc]                                     ; $72d2: $0a
	inc  e                                           ; $72d3: $1c
	ld   [bc], a                                     ; $72d4: $02
	rlca                                             ; $72d5: $07
	rlca                                             ; $72d6: $07
	ld   bc, $1005                                   ; $72d7: $01 $05 $10
	sbc  c                                           ; $72da: $99
	ld   a, h                                        ; $72db: $7c
	ld   e, d                                        ; $72dc: $5a
	ld   e, b                                        ; $72dd: $58
	ld   l, e                                        ; $72de: $6b
	ld   d, d                                        ; $72df: $52
	ld   [hl], l                                     ; $72e0: $75
	ld   h, a                                        ; $72e1: $67
	sbc  l                                           ; $72e2: $9d
	sbc  a                                           ; $72e3: $9f
	dec  c                                           ; $72e4: $0d
	ld   h, c                                        ; $72e5: $61
	ld   a, h                                        ; $72e6: $7c
	sbc  l                                           ; $72e7: $9d
	ld   l, l                                        ; $72e8: $6d
	ld   e, l                                        ; $72e9: $5d
	ld   h, l                                        ; $72ea: $65
	ld   e, d                                        ; $72eb: $5a
	ld   [hl], a                                     ; $72ec: $77
	sbc  d                                           ; $72ed: $9a
	ld   l, [hl]                                     ; $72ee: $6e
	ld   e, a                                        ; $72ef: $5f
	rst  $38                                         ; $72f0: $ff
	rst  $38                                         ; $72f1: $ff
	dec  c                                           ; $72f2: $0d
	nop                                              ; $72f3: $00
	ld   a, [bc]                                     ; $72f4: $0a
	inc  e                                           ; $72f5: $1c
	ld   b, $01                                      ; $72f6: $06 $01
	ld   bc, $5001                                   ; $72f8: $01 $01 $50
	sbc  [hl]                                        ; $72fb: $9e
	ld   h, c                                        ; $72fc: $61
	ld   a, h                                        ; $72fd: $7c
	or   [hl]                                        ; $72fe: $b6
	db   $dd                                         ; $72ff: $dd
	rst  ToBoot                                         ; $7300: $c7
	push af                                          ; $7301: $f5
	inc  bc                                          ; $7302: $03
	ld   l, [hl]                                     ; $7303: $6e
	ld   a, h                                        ; $7304: $7c
	dec  c                                           ; $7305: $0d
	ld   [bc], a                                     ; $7306: $02
	sbc  l                                           ; $7307: $9d
	ld   d, h                                        ; $7308: $54
	ld   h, c                                        ; $7309: $61
	halt                                             ; $730a: $76
	ld   a, l                                        ; $730b: $7d
	ld   [bc], a                                     ; $730c: $02
	and  c                                           ; $730d: $a1
	ld   a, c                                        ; $730e: $79
	ld   h, l                                        ; $730f: $65
	ld   a, b                                        ; $7310: $78
	ld   e, l                                        ; $7311: $5d
	ld   [hl], h                                     ; $7312: $74
	dec  c                                           ; $7313: $0d
	ld   d, d                                        ; $7314: $52
	ld   d, d                                        ; $7315: $52
	ld   e, c                                        ; $7316: $59
	sub  a                                           ; $7317: $97
	ld   a, b                                        ; $7318: $78
	sbc  a                                           ; $7319: $9f
	dec  c                                           ; $731a: $0d
	nop                                              ; $731b: $00
	ld   a, [bc]                                     ; $731c: $0a
	rrca                                             ; $731d: $0f
	ld   [bc], a                                     ; $731e: $02
	ld   [bc], a                                     ; $731f: $02
	ld   bc, $a178                                   ; $7320: $01 $78 $a1
	ld   [hl], l                                     ; $7323: $75
	ld   h, a                                        ; $7324: $67
	ld   [hl], c                                     ; $7325: $71
	ld   [hl], h                                     ; $7326: $74
	ld   a, [$000d]                                  ; $7327: $fa $0d $00
	ld   a, [bc]                                     ; $732a: $0a
	inc  e                                           ; $732b: $1c
	inc  bc                                          ; $732c: $03
	inc  b                                           ; $732d: $04
	inc  b                                           ; $732e: $04
	ld   bc, $0906                                   ; $732f: $01 $06 $09
	inc  bc                                          ; $7332: $03
	add  d                                           ; $7333: $82
	halt                                             ; $7334: $76
	sub  b                                           ; $7335: $90
	sub  d                                           ; $7336: $92
	adc  a                                           ; $7337: $8f
	ld   a, b                                        ; $7338: $78
	ld   h, e                                        ; $7339: $63
	ld   d, d                                        ; $733a: $52
	sbc  a                                           ; $733b: $9f
	dec  c                                           ; $733c: $0d
	ld   e, c                                        ; $733d: $59
	and  c                                           ; $733e: $a1
	ld   h, b                                        ; $733f: $60
	ld   d, d                                        ; $7340: $52
	ld   [bc], a                                     ; $7341: $02
	add  [hl]                                        ; $7342: $86
	ld   a, b                                        ; $7343: $78
	ld   a, h                                        ; $7344: $7c
	sub  [hl]                                        ; $7345: $96
	rst  $38                                         ; $7346: $ff
	rst  $38                                         ; $7347: $ff
	dec  c                                           ; $7348: $0d
	nop                                              ; $7349: $00
	ld   a, [bc]                                     ; $734a: $0a
	inc  e                                           ; $734b: $1c
	inc  b                                           ; $734c: $04
	nop                                              ; $734d: $00
	nop                                              ; $734e: $00
	ld   bc, $546b                                   ; $734f: $01 $6b $54
	ld   l, [hl]                                     ; $7352: $6e
	sub  [hl]                                        ; $7353: $96
	sbc  [hl]                                        ; $7354: $9e
	dec  c                                           ; $7355: $0d
	or   d                                           ; $7356: $b2
	push af                                          ; $7357: $f5
	xor  h                                           ; $7358: $ac
	ld   h, l                                        ; $7359: $65
	ld   l, a                                        ; $735a: $6f
	sub  c                                           ; $735b: $91
	pop  bc                                          ; $735c: $c1
	db   $e3                                         ; $735d: $e3
	ld   l, [hl]                                     ; $735e: $6e
	sub  [hl]                                        ; $735f: $96
	sbc  a                                           ; $7360: $9f
	dec  c                                           ; $7361: $0d
	nop                                              ; $7362: $00
	ld   a, [bc]                                     ; $7363: $0a
	inc  e                                           ; $7364: $1c
	dec  b                                           ; $7365: $05
	ld   bc, $0101                                   ; $7366: $01 $01 $01
	ld   h, c                                        ; $7369: $61
	ld   d, h                                        ; $736a: $54
	ld   d, d                                        ; $736b: $52
	ld   d, h                                        ; $736c: $54
	inc  bc                                          ; $736d: $03
	ld   l, a                                        ; $736e: $6f
	ld   a, l                                        ; $736f: $7d
	inc  b                                           ; $7370: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7371: $cf
	sbc  c                                           ; $7372: $99
	ld   e, l                                        ; $7373: $5d
	jp   nc, $c4fb                                   ; $7374: $d2 $fb $c4

	halt                                             ; $7377: $76
	dec  c                                           ; $7378: $0d
	ld   d, d                                        ; $7379: $52
	ld   e, c                                        ; $737a: $59
	and  c                                           ; $737b: $a1
	halt                                             ; $737c: $76
	ld   a, b                                        ; $737d: $78
	sbc  a                                           ; $737e: $9f
	dec  c                                           ; $737f: $0d
	nop                                              ; $7380: $00
	ld   a, [bc]                                     ; $7381: $0a
	inc  e                                           ; $7382: $1c
	ld   a, [bc]                                     ; $7383: $0a
	ld   bc, $0101                                   ; $7384: $01 $01 $01
	adc  c                                           ; $7387: $89
	sub  a                                           ; $7388: $97
	sbc  [hl]                                        ; $7389: $9e
	ld   l, e                                        ; $738a: $6b
	and  c                                           ; $738b: $a1
	ld   a, b                                        ; $738c: $78
	halt                                             ; $738d: $76
	ld   h, c                                        ; $738e: $61
	ld   [hl], l                                     ; $738f: $75
	dec  c                                           ; $7390: $0d
	adc  d                                           ; $7391: $8a
	ei                                               ; $7392: $fb
	ld   [hl], c                                     ; $7393: $71
	halt                                             ; $7394: $76
	ld   [hl], d                                     ; $7395: $72
	ld   [hl], c                                     ; $7396: $71
	dec  b                                           ; $7397: $05
	ld   d, $71                                      ; $7398: $16 $71
	ld   [hl], h                                     ; $739a: $74
	ld   a, b                                        ; $739b: $78
	ld   d, d                                        ; $739c: $52
	ld   [hl], l                                     ; $739d: $75
	dec  c                                           ; $739e: $0d
	ld   h, a                                        ; $739f: $67
	sbc  l                                           ; $73a0: $9d
	sbc  d                                           ; $73a1: $9a
	sbc  [hl]                                        ; $73a2: $9e
	ld   h, a                                        ; $73a3: $67
	sbc  l                                           ; $73a4: $9d
	sbc  d                                           ; $73a5: $9a
	ld   a, [$000d]                                  ; $73a6: $fa $0d $00
	ld   a, [bc]                                     ; $73a9: $0a
	inc  e                                           ; $73aa: $1c
	inc  c                                           ; $73ab: $0c
	nop                                              ; $73ac: $00
	nop                                              ; $73ad: $00
	ld   bc, $8d67                                   ; $73ae: $01 $67 $8d
	adc  h                                           ; $73b1: $8c
	ld   l, c                                        ; $73b2: $69
	and  c                                           ; $73b3: $a1
	sbc  [hl]                                        ; $73b4: $9e
	dec  c                                           ; $73b5: $0d
	ld   e, b                                        ; $73b6: $58
	ld   l, e                                        ; $73b7: $6b
	ld   e, l                                        ; $73b8: $5d
	ld   a, b                                        ; $73b9: $78
	sbc  b                                           ; $73ba: $98
	adc  h                                           ; $73bb: $8c
	ld   h, l                                        ; $73bc: $65
	ld   l, l                                        ; $73bd: $6d
	rst  $38                                         ; $73be: $ff
	rst  $38                                         ; $73bf: $ff
	dec  c                                           ; $73c0: $0d
	nop                                              ; $73c1: $00
	ld   a, [bc]                                     ; $73c2: $0a
	inc  e                                           ; $73c3: $1c
	dec  c                                           ; $73c4: $0d
	ld   bc, $0101                                   ; $73c5: $01 $01 $01
	dec  b                                           ; $73c8: $05
	inc  a                                           ; $73c9: $3c
	ld   h, l                                        ; $73ca: $65
	inc  b                                           ; $73cb: $04
	ld   b, l                                        ; $73cc: $45
	sbc  d                                           ; $73cd: $9a
	and  b                                           ; $73ce: $a0
	sbc  [hl]                                        ; $73cf: $9e
	dec  c                                           ; $73d0: $0d
	sub  b                                           ; $73d1: $90
	ld   [hl], c                                     ; $73d2: $71
	ld   [hl], h                                     ; $73d3: $74
	ld   e, e                                        ; $73d4: $5b
	adc  h                                           ; $73d5: $8c
	ld   h, l                                        ; $73d6: $65
	ld   l, l                                        ; $73d7: $6d
	ei                                               ; $73d8: $fb
	sbc  a                                           ; $73d9: $9f
	dec  c                                           ; $73da: $0d
	nop                                              ; $73db: $00
	ld   a, [bc]                                     ; $73dc: $0a
	inc  e                                           ; $73dd: $1c
	ld   c, $01                                      ; $73de: $0e $01
	ld   bc, $5801                                   ; $73e0: $01 $01 $58
	ld   h, [hl]                                     ; $73e3: $66
	sub  c                                           ; $73e4: $91
	adc  h                                           ; $73e5: $8c
	ld   h, l                                        ; $73e6: $65
	adc  h                                           ; $73e7: $8c
	ei                                               ; $73e8: $fb
	ld   h, a                                        ; $73e9: $67
	sbc  a                                           ; $73ea: $9f
	dec  c                                           ; $73eb: $0d
	nop                                              ; $73ec: $00
	ld   a, [bc]                                     ; $73ed: $0a
	inc  e                                           ; $73ee: $1c
	ld   a, [bc]                                     ; $73ef: $0a
	nop                                              ; $73f0: $00
	nop                                              ; $73f1: $00
	ld   bc, $6596                                   ; $73f2: $01 $96 $65
	sbc  [hl]                                        ; $73f5: $9e
	inc  bc                                          ; $73f6: $03
	ld   d, a                                        ; $73f7: $57
	ld   [bc], a                                     ; $73f8: $02
	nop                                              ; $73f9: $00
	ld   l, e                                        ; $73fa: $6b
	sbc  e                                           ; $73fb: $9b
	ld   [hl], c                                     ; $73fc: $71
	ld   l, l                                        ; $73fd: $6d
	ld   a, b                                        ; $73fe: $78
	rst  $38                                         ; $73ff: $ff
	rst  $38                                         ; $7400: $ff
	dec  c                                           ; $7401: $0d
	nop                                              ; $7402: $00
	ld   a, [bc]                                     ; $7403: $0a
	ld   bc, $dcab                                   ; $7404: $01 $ab $dc
	push af                                          ; $7407: $f5
	rst  $38                                         ; $7408: $ff
	rst  $38                                         ; $7409: $ff
	ld   h, c                                        ; $740a: $61
	sbc  d                                           ; $740b: $9a
	sub  [hl]                                        ; $740c: $96
	sbc  b                                           ; $740d: $98
	dec  c                                           ; $740e: $0d
	ld   [$7c00], sp                                 ; $740f: $08 $00 $7c
	dec  c                                           ; $7412: $0d
	ld   e, c                                        ; $7413: $59
	and  c                                           ; $7414: $a1
	ld   h, b                                        ; $7415: $60
	ld   d, d                                        ; $7416: $52
	ld   [bc], a                                     ; $7417: $02
	add  [hl]                                        ; $7418: $86
	and  b                                           ; $7419: $a0
	ld   e, b                                        ; $741a: $58
	ld   h, c                                        ; $741b: $61
	ld   a, b                                        ; $741c: $78
	ld   d, h                                        ; $741d: $54
	sbc  a                                           ; $741e: $9f
	dec  c                                           ; $741f: $0d
	nop                                              ; $7420: $00
	ld   a, [bc]                                     ; $7421: $0a
	inc  e                                           ; $7422: $1c
	dec  bc                                          ; $7423: $0b
	jr   nz, jr_04a_7432                             ; $7424: $20 $0c

	ld   bc, $a18d                                   ; $7426: $01 $8d $a1
	ld   a, b                                        ; $7429: $78
	sbc  [hl]                                        ; $742a: $9e
	ld   l, a                                        ; $742b: $6f
	sub  c                                           ; $742c: $91
	and  c                                           ; $742d: $a1
	halt                                             ; $742e: $76
	ld   [bc], a                                     ; $742f: $02
	rlca                                             ; $7430: $07
	adc  l                                           ; $7431: $8d

jr_04a_7432:
	inc  b                                           ; $7432: $04
	sub  d                                           ; $7433: $92
	ld   a, l                                        ; $7434: $7d
	dec  c                                           ; $7435: $0d
	ld   d, d                                        ; $7436: $52
	ld   e, e                                        ; $7437: $5b
	sbc  l                                           ; $7438: $9d
	ld   l, l                                        ; $7439: $6d
	ld   [hl], c                                     ; $743a: $71
	ld   [hl], h                                     ; $743b: $74
	sbc  c                                           ; $743c: $99
	ld   e, c                                        ; $743d: $59
	ld   h, l                                        ; $743e: $65
	sub  a                                           ; $743f: $97
	ld   sp, hl                                      ; $7440: $f9
	dec  c                                           ; $7441: $0d
	nop                                              ; $7442: $00
	ld   a, [bc]                                     ; $7443: $0a
	inc  e                                           ; $7444: $1c
	add  hl, bc                                      ; $7445: $09
	nop                                              ; $7446: $00
	nop                                              ; $7447: $00
	ld   bc, $0008                                   ; $7448: $01 $08 $00
	ld   e, l                                        ; $744b: $5d
	and  c                                           ; $744c: $a1
	rst  $38                                         ; $744d: $ff
	rst  $38                                         ; $744e: $ff
	dec  c                                           ; $744f: $0d
	ld   [bc], a                                     ; $7450: $02
	jp   z, $047d                                    ; $7451: $ca $7d $04

	ld   c, c                                        ; $7454: $49
	and  b                                           ; $7455: $a0
	ld   [bc], a                                     ; $7456: $02
	rlca                                             ; $7457: $07
	adc  [hl]                                        ; $7458: $8e
	and  c                                           ; $7459: $a1
	ld   l, [hl]                                     ; $745a: $6e
	ld   d, d                                        ; $745b: $52
	ld   sp, hl                                      ; $745c: $f9
	dec  c                                           ; $745d: $0d
	nop                                              ; $745e: $00
	ld   a, [bc]                                     ; $745f: $0a
	add  hl, de                                      ; $7460: $19
	dec  b                                           ; $7461: $05
	ld   [bc], a                                     ; $7462: $02
	cp   c                                           ; $7463: $b9
	rst  $20                                         ; $7464: $e7
	ei                                               ; $7465: $fb
	cp   d                                           ; $7466: $ba
	and  b                                           ; $7467: $a0
	rst  $38                                         ; $7468: $ff
	rst  $38                                         ; $7469: $ff
	nop                                              ; $746a: $00
	nop                                              ; $746b: $00
	ld   e, b                                        ; $746c: $58
	inc  bc                                          ; $746d: $03
	jr   nz, @-$5e                                   ; $746e: $20 $a0

	rst  $38                                         ; $7470: $ff
	rst  $38                                         ; $7471: $ff
	nop                                              ; $7472: $00
	ld   bc, $7f07                                   ; $7473: $01 $07 $7f
	ld   [bc], a                                     ; $7476: $02
	ld   [bc], a                                     ; $7477: $02
	inc  bc                                          ; $7478: $03
	ld   bc, $2000                                   ; $7479: $01 $00 $20
	nop                                              ; $747c: $00
	rlca                                             ; $747d: $07
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $747e: $cf
	ld   [bc], a                                     ; $747f: $02
	ld   [bc], a                                     ; $7480: $02
	inc  bc                                          ; $7481: $03
	ld   bc, $2001                                   ; $7482: $01 $01 $20
	nop                                              ; $7485: $00
	ld   b, $0c                                      ; $7486: $06 $0c

jr_04a_7488:
	inc  bc                                          ; $7488: $03
	rrca                                             ; $7489: $0f
	nop                                              ; $748a: $00
	ld   bc, $6601                                   ; $748b: $01 $01 $66
	sub  c                                           ; $748e: $91
	ld   d, b                                        ; $748f: $50
	sbc  [hl]                                        ; $7490: $9e
	cp   c                                           ; $7491: $b9
	rst  $20                                         ; $7492: $e7
	ei                                               ; $7493: $fb
	cp   d                                           ; $7494: $ba
	and  b                                           ; $7495: $a0
	rst  $38                                         ; $7496: $ff
	rst  $38                                         ; $7497: $ff
	dec  c                                           ; $7498: $0d
	nop                                              ; $7499: $00
	ld   a, [bc]                                     ; $749a: $0a
	inc  e                                           ; $749b: $1c
	ld   a, [bc]                                     ; $749c: $0a
	ld   b, $0b                                      ; $749d: $06 $0b
	ld   bc, $a178                                   ; $749f: $01 $78 $a1
	ld   l, [hl]                                     ; $74a2: $6e
	sbc  [hl]                                        ; $74a3: $9e
	ld   a, b                                        ; $74a4: $78
	and  c                                           ; $74a5: $a1
	ld   l, [hl]                                     ; $74a6: $6e
	ld   sp, hl                                      ; $74a7: $f9
	dec  c                                           ; $74a8: $0d
	cp   c                                           ; $74a9: $b9
	rst  $20                                         ; $74aa: $e7
	ei                                               ; $74ab: $fb
	cp   d                                           ; $74ac: $ba
	ld   e, c                                        ; $74ad: $59
	sub  [hl]                                        ; $74ae: $96
	ld   sp, hl                                      ; $74af: $f9
	dec  c                                           ; $74b0: $0d
	nop                                              ; $74b1: $00
	ld   a, [bc]                                     ; $74b2: $0a
	inc  e                                           ; $74b3: $1c
	dec  bc                                          ; $74b4: $0b
	dec  h                                           ; $74b5: $25
	ld   de, $8c01                                   ; $74b6: $11 $01 $8c
	ld   l, [hl]                                     ; $74b9: $6e
	ld   b, $24                                      ; $74ba: $06 $24
	inc  bc                                          ; $74bc: $03
	ld   [de], a                                     ; $74bd: $12
	inc  b                                           ; $74be: $04
	ld   d, b                                        ; $74bf: $50
	ld   a, b                                        ; $74c0: $78
	and  c                                           ; $74c1: $a1
	ld   [hl], l                                     ; $74c2: $75
	ld   h, a                                        ; $74c3: $67
	ld   e, c                                        ; $74c4: $59
	sub  a                                           ; $74c5: $97
	dec  c                                           ; $74c6: $0d
	ld   e, b                                        ; $74c7: $58
	inc  bc                                          ; $74c8: $03
	jr   nz, jr_04a_7548                             ; $74c9: $20 $7d

	pop  bc                                          ; $74cb: $c1
	db   $e3                                         ; $74cc: $e3
	ld   a, b                                        ; $74cd: $78
	and  c                                           ; $74ce: $a1
	ld   [hl], l                                     ; $74cf: $75
	ld   h, a                                        ; $74d0: $67
	sub  [hl]                                        ; $74d1: $96
	sbc  a                                           ; $74d2: $9f
	dec  c                                           ; $74d3: $0d
	nop                                              ; $74d4: $00
	ld   a, [bc]                                     ; $74d5: $0a
	ld   b, $36                                      ; $74d6: $06 $36
	inc  bc                                          ; $74d8: $03
	rrca                                             ; $74d9: $0f
	nop                                              ; $74da: $00
	ld   bc, $6901                                   ; $74db: $01 $01 $69
	ld   [hl], c                                     ; $74de: $71
	ld   e, c                                        ; $74df: $59
	ld   e, l                                        ; $74e0: $5d
	ld   a, b                                        ; $74e1: $78
	ld   a, h                                        ; $74e2: $7c
	ld   [hl], l                                     ; $74e3: $75
	ld   e, b                                        ; $74e4: $58
	inc  bc                                          ; $74e5: $03
	jr   nz, jr_04a_7488                             ; $74e6: $20 $a0

	rst  $38                                         ; $74e8: $ff
	rst  $38                                         ; $74e9: $ff
	dec  c                                           ; $74ea: $0d
	nop                                              ; $74eb: $00
	ld   a, [bc]                                     ; $74ec: $0a
	inc  e                                           ; $74ed: $1c
	dec  bc                                          ; $74ee: $0b
	ld   [hl+], a                                    ; $74ef: $22
	ld   c, $01                                      ; $74f0: $0e $01
	pop  bc                                          ; $74f2: $c1
	db   $e3                                         ; $74f3: $e3
	sub  [hl]                                        ; $74f4: $96
	sbc  a                                           ; $74f5: $9f
	dec  c                                           ; $74f6: $0d
	ld   d, d                                        ; $74f7: $52
	ld   e, l                                        ; $74f8: $5d
	sub  a                                           ; $74f9: $97
	ld   e, c                                        ; $74fa: $59
	and  c                                           ; $74fb: $a1
	ld   h, b                                        ; $74fc: $60
	ld   d, d                                        ; $74fd: $52
	ld   [bc], a                                     ; $74fe: $02
	add  [hl]                                        ; $74ff: $86
	ld   l, [hl]                                     ; $7500: $6e
	ld   e, c                                        ; $7501: $59
	sub  a                                           ; $7502: $97
	ld   [hl], c                                     ; $7503: $71
	ld   [hl], h                                     ; $7504: $74
	dec  c                                           ; $7505: $0d
	ret  nc                                          ; $7506: $d0

	db   $e3                                         ; $7507: $e3
	and  b                                           ; $7508: $a0
	ld   [bc], a                                     ; $7509: $02
	bit  4, l                                        ; $750a: $cb $65
	ld   l, a                                        ; $750c: $6f
	sub  c                                           ; $750d: $91
	rst  $38                                         ; $750e: $ff
	rst  $38                                         ; $750f: $ff
	dec  c                                           ; $7510: $0d
	nop                                              ; $7511: $00
	ld   a, [bc]                                     ; $7512: $0a
	ld   b, $36                                      ; $7513: $06 $36
	inc  bc                                          ; $7515: $03
	inc  e                                           ; $7516: $1c
	add  hl, bc                                      ; $7517: $09
	dec  b                                           ; $7518: $05
	ld   a, [bc]                                     ; $7519: $0a
	ld   bc, $5258                                   ; $751a: $01 $58 $52
	ld   e, b                                        ; $751d: $58
	ld   d, d                                        ; $751e: $52
	rst  $38                                         ; $751f: $ff
	rst  $38                                         ; $7520: $ff
	dec  c                                           ; $7521: $0d
	ld   l, e                                        ; $7522: $6b
	and  c                                           ; $7523: $a1
	ld   a, b                                        ; $7524: $78
	ld   a, c                                        ; $7525: $79
	ld   e, c                                        ; $7526: $59
	ld   l, l                                        ; $7527: $6d
	ld   e, l                                        ; $7528: $5d
	ld   a, b                                        ; $7529: $78
	sbc  c                                           ; $752a: $99
	ld   a, b                                        ; $752b: $78
	sub  [hl]                                        ; $752c: $96
	sbc  a                                           ; $752d: $9f
	dec  c                                           ; $752e: $0d
	ld   [bc], a                                     ; $752f: $02
	jp   z, Jump_04a_597c                            ; $7530: $ca $7c $59

	and  c                                           ; $7533: $a1
	ld   h, b                                        ; $7534: $60
	ld   d, d                                        ; $7535: $52
	ld   [bc], a                                     ; $7536: $02
	add  [hl]                                        ; $7537: $86
	ld   a, b                                        ; $7538: $78
	and  c                                           ; $7539: $a1
	ld   l, [hl]                                     ; $753a: $6e
	ld   l, h                                        ; $753b: $6c
	sbc  a                                           ; $753c: $9f
	dec  c                                           ; $753d: $0d
	nop                                              ; $753e: $00
	ld   a, [bc]                                     ; $753f: $0a
	inc  e                                           ; $7540: $1c
	ld   bc, $0000                                   ; $7541: $01 $00 $00
	ld   bc, $527d                                   ; $7544: $01 $7d $52
	sbc  [hl]                                        ; $7547: $9e

jr_04a_7548:
	ld   [$6300], sp                                 ; $7548: $08 $00 $63
	and  c                                           ; $754b: $a1
	sbc  a                                           ; $754c: $9f
	dec  c                                           ; $754d: $0d
	ld   h, c                                        ; $754e: $61
	ld   a, h                                        ; $754f: $7c
	cp   c                                           ; $7550: $b9
	rst  $20                                         ; $7551: $e7
	ei                                               ; $7552: $fb
	cp   d                                           ; $7553: $ba
	and  b                                           ; $7554: $a0
	ld   [hl], a                                     ; $7555: $77
	ld   d, h                                        ; $7556: $54
	ld   l, h                                        ; $7557: $6c
	sbc  a                                           ; $7558: $9f
	dec  c                                           ; $7559: $0d
	nop                                              ; $755a: $00
	ld   a, [bc]                                     ; $755b: $0a
	inc  e                                           ; $755c: $1c
	dec  bc                                          ; $755d: $0b
	jr   nz, jr_04a_756c                             ; $755e: $20 $0c

	ld   bc, $7d75                                   ; $7560: $01 $75 $7d
	sbc  [hl]                                        ; $7563: $9e
	inc  bc                                          ; $7564: $03
	add  l                                           ; $7565: $85
	inc  b                                           ; $7566: $04
	xor  e                                           ; $7567: $ab
	inc  bc                                          ; $7568: $03
	add  d                                           ; $7569: $82
	rst  $38                                         ; $756a: $ff
	rst  $38                                         ; $756b: $ff

jr_04a_756c:
	dec  c                                           ; $756c: $0d
	xor  h                                           ; $756d: $ac
	push af                                          ; $756e: $f5
	jp   nc, Jump_04a_7ca5                           ; $756f: $d2 $a5 $7c

	ld   [bc], a                                     ; $7572: $02
	inc  bc                                          ; $7573: $03
	inc  bc                                          ; $7574: $03
	ret  c                                           ; $7575: $d8

	and  b                                           ; $7576: $a0
	sbc  a                                           ; $7577: $9f
	dec  c                                           ; $7578: $0d
	nop                                              ; $7579: $00
	ld   a, [bc]                                     ; $757a: $0a
	inc  e                                           ; $757b: $1c
	ld   a, [bc]                                     ; $757c: $0a
	ld   bc, $0101                                   ; $757d: $01 $01 $01
	ld   d, h                                        ; $7580: $54
	adc  [hl]                                        ; $7581: $8e
	rst  $38                                         ; $7582: $ff
	rst  $38                                         ; $7583: $ff
	dec  c                                           ; $7584: $0d
	ld   [hl], l                                     ; $7585: $75
	ld   a, l                                        ; $7586: $7d
	sbc  [hl]                                        ; $7587: $9e
	ld   [$7c00], sp                                 ; $7588: $08 $00 $7c
	inc  b                                           ; $758b: $04
	dec  c                                           ; $758c: $0d
	ld   [bc], a                                     ; $758d: $02
	sub  [hl]                                        ; $758e: $96
	inc  b                                           ; $758f: $04
	ld   b, l                                        ; $7590: $45
	inc  b                                           ; $7591: $04
	ld   a, [bc]                                     ; $7592: $0a
	and  b                                           ; $7593: $a0
	dec  c                                           ; $7594: $0d
	ld   e, c                                        ; $7595: $59
	and  c                                           ; $7596: $a1
	ld   h, b                                        ; $7597: $60
	ld   d, d                                        ; $7598: $52
	ld   h, l                                        ; $7599: $65
	ld   [hl], h                                     ; $759a: $74
	rst  $38                                         ; $759b: $ff
	rst  $38                                         ; $759c: $ff
	xor  h                                           ; $759d: $ac
	push af                                          ; $759e: $f5
	jp   nc, $faa5                                   ; $759f: $d2 $a5 $fa

	dec  c                                           ; $75a2: $0d
	nop                                              ; $75a3: $00
	ld   a, [bc]                                     ; $75a4: $0a
	rrca                                             ; $75a5: $0f
	ld   bc, $0101                                   ; $75a6: $01 $01 $01
	xor  h                                           ; $75a9: $ac
	push af                                          ; $75aa: $f5
	jp   nc, $a5fb                                   ; $75ab: $d2 $fb $a5

	ld   a, [$000d]                                  ; $75ae: $fa $0d $00
	ld   a, [bc]                                     ; $75b1: $0a
	dec  c                                           ; $75b2: $0d
	nop                                              ; $75b3: $00
	nop                                              ; $75b4: $00
	rrca                                             ; $75b5: $0f
	nop                                              ; $75b6: $00
	ld   bc, $020c                                   ; $75b7: $01 $0c $02
	ld   b, $b3                                      ; $75ba: $06 $b3
	inc  bc                                          ; $75bc: $03
	ld   c, $2a                                      ; $75bd: $0e $2a
	inc  e                                           ; $75bf: $1c
	ld   bc, $0000                                   ; $75c0: $01 $00 $00
	ld   bc, $0008                                   ; $75c3: $01 $08 $00
	ld   h, e                                        ; $75c6: $63
	and  c                                           ; $75c7: $a1
	sbc  a                                           ; $75c8: $9f
	dec  c                                           ; $75c9: $0d
	inc  b                                           ; $75ca: $04
	ld   [$9202], sp                                 ; $75cb: $08 $02 $92
	ld   [hl], l                                     ; $75ce: $75
	ld   [bc], a                                     ; $75cf: $02
	jr   nz, jr_04a_75d5                             ; $75d0: $20 $03

	ld   a, c                                        ; $75d2: $79
	ld   [bc], a                                     ; $75d3: $02
	xor  c                                           ; $75d4: $a9

jr_04a_75d5:
	ld   h, a                                        ; $75d5: $67
	ld   h, d                                        ; $75d6: $62
	ld   h, l                                        ; $75d7: $65
	ld   [hl], h                                     ; $75d8: $74
	adc  l                                           ; $75d9: $8d
	ld   [hl], h                                     ; $75da: $74
	dec  c                                           ; $75db: $0d
	ld   [hl], a                                     ; $75dc: $77
	ld   d, h                                        ; $75dd: $54
	ld   [hl], l                                     ; $75de: $75
	ld   h, l                                        ; $75df: $65
	ld   l, l                                        ; $75e0: $6d
	ld   sp, hl                                      ; $75e1: $f9
	dec  c                                           ; $75e2: $0d
	nop                                              ; $75e3: $00
	ld   a, [bc]                                     ; $75e4: $0a
	add  hl, de                                      ; $75e5: $19
	dec  b                                           ; $75e6: $05
	ld   [bc], a                                     ; $75e7: $02
	ld   h, a                                        ; $75e8: $67
	ld   h, d                                        ; $75e9: $62
	ld   e, l                                        ; $75ea: $5d
	dec  b                                           ; $75eb: $05
	inc  de                                          ; $75ec: $13
	ld   h, l                                        ; $75ed: $65
	ld   d, d                                        ; $75ee: $52
	ld   [hl], l                                     ; $75ef: $75
	ld   h, a                                        ; $75f0: $67
	nop                                              ; $75f1: $00
	nop                                              ; $75f2: $00
	ld   h, a                                        ; $75f3: $67
	ld   h, d                                        ; $75f4: $62
	ld   e, l                                        ; $75f5: $5d
	ld   [hl], d                                     ; $75f6: $72
	sub  a                                           ; $75f7: $97
	ld   d, d                                        ; $75f8: $52
	ld   [hl], l                                     ; $75f9: $75
	ld   h, a                                        ; $75fa: $67
	nop                                              ; $75fb: $00
	ld   bc, $0807                                   ; $75fc: $01 $07 $08
	inc  b                                           ; $75ff: $04
	ld   [bc], a                                     ; $7600: $02
	inc  bc                                          ; $7601: $03
	ld   bc, $2000                                   ; $7602: $01 $00 $20
	nop                                              ; $7605: $00
	rlca                                             ; $7606: $07
	ld   d, a                                        ; $7607: $57
	inc  b                                           ; $7608: $04
	ld   [bc], a                                     ; $7609: $02
	inc  bc                                          ; $760a: $03
	ld   bc, $2001                                   ; $760b: $01 $01 $20
	nop                                              ; $760e: $00
	ld   b, $91                                      ; $760f: $06 $91
	inc  b                                           ; $7611: $04
	rrca                                             ; $7612: $0f
	nop                                              ; $7613: $00
	ld   bc, $6701                                   ; $7614: $01 $01 $67
	ld   h, d                                        ; $7617: $62
	ld   e, l                                        ; $7618: $5d
	dec  b                                           ; $7619: $05
	inc  de                                          ; $761a: $13
	ld   h, l                                        ; $761b: $65
	ld   d, d                                        ; $761c: $52
	ld   [hl], l                                     ; $761d: $75
	ld   h, a                                        ; $761e: $67
	sbc  a                                           ; $761f: $9f
	dec  c                                           ; $7620: $0d
	inc  b                                           ; $7621: $04
	ld   c, c                                        ; $7622: $49
	sub  b                                           ; $7623: $90
	ld   e, c                                        ; $7624: $59
	sub  b                                           ; $7625: $90
	sbc  [hl]                                        ; $7626: $9e
	ld   h, l                                        ; $7627: $65
	and  c                                           ; $7628: $a1
	ld   l, c                                        ; $7629: $69
	and  c                                           ; $762a: $a1
	ld   [hl], l                                     ; $762b: $75
	rst  $38                                         ; $762c: $ff
	rst  $38                                         ; $762d: $ff
	dec  c                                           ; $762e: $0d
	nop                                              ; $762f: $00
	ld   a, [bc]                                     ; $7630: $0a
	inc  e                                           ; $7631: $1c
	ld   bc, $0101                                   ; $7632: $01 $01 $01
	dec  e                                           ; $7635: $1d
	ld   b, b                                        ; $7636: $40
	ld   de, $1103                                   ; $7637: $11 $03 $11
	ld   bc, $2802                                   ; $763a: $01 $02 $28
	nop                                              ; $763d: $00
	ld   bc, $8383                                   ; $763e: $01 $83 $83
	rst  $38                                         ; $7641: $ff
	rst  $38                                         ; $7642: $ff
	dec  c                                           ; $7643: $0d
	ld   l, e                                        ; $7644: $6b
	ld   d, h                                        ; $7645: $54
	ld   [bc], a                                     ; $7646: $02
	sbc  l                                           ; $7647: $9d
	ld   [hl], c                                     ; $7648: $71
	ld   [hl], h                                     ; $7649: $74
	sub  b                                           ; $764a: $90
	sub  a                                           ; $764b: $97
	ld   d, [hl]                                     ; $764c: $56
	sbc  c                                           ; $764d: $99
	halt                                             ; $764e: $76
	dec  c                                           ; $764f: $0d
	ld   d, b                                        ; $7650: $50
	ld   l, l                                        ; $7651: $6d
	ld   h, l                                        ; $7652: $65
	sub  b                                           ; $7653: $90
	ld   d, h                                        ; $7654: $54
	sbc  d                                           ; $7655: $9a
	ld   h, l                                        ; $7656: $65
	ld   d, d                                        ; $7657: $52
	ld   [hl], l                                     ; $7658: $75
	ld   h, a                                        ; $7659: $67
	sbc  a                                           ; $765a: $9f
	dec  c                                           ; $765b: $0d
	nop                                              ; $765c: $00
	ld   a, [bc]                                     ; $765d: $0a
	ld   b, $bf                                      ; $765e: $06 $bf
	inc  b                                           ; $7660: $04
	rrca                                             ; $7661: $0f
	nop                                              ; $7662: $00
	ld   bc, $6701                                   ; $7663: $01 $01 $67
	ld   h, d                                        ; $7666: $62
	ld   e, l                                        ; $7667: $5d
	ld   [hl], d                                     ; $7668: $72
	sub  a                                           ; $7669: $97
	ld   d, d                                        ; $766a: $52
	ld   [hl], l                                     ; $766b: $75
	ld   h, a                                        ; $766c: $67
	rst  $38                                         ; $766d: $ff
	rst  $38                                         ; $766e: $ff
	dec  c                                           ; $766f: $0d
	nop                                              ; $7670: $00
	ld   a, [bc]                                     ; $7671: $0a
	inc  e                                           ; $7672: $1c
	ld   bc, $0404                                   ; $7673: $01 $04 $04
	dec  e                                           ; $7676: $1d
	ld   b, b                                        ; $7677: $40
	ld   de, $1103                                   ; $7678: $11 $03 $11
	ld   bc, $2901                                   ; $767b: $01 $01 $29
	nop                                              ; $767e: $00
	ld   bc, $ffff                                   ; $767f: $01 $ff $ff
	ld   l, e                                        ; $7682: $6b
	ld   d, h                                        ; $7683: $54
	ld   [hl], l                                     ; $7684: $75
	ld   h, a                                        ; $7685: $67
	ld   e, c                                        ; $7686: $59
	sbc  a                                           ; $7687: $9f
	dec  c                                           ; $7688: $0d
	ld   l, a                                        ; $7689: $6f
	sub  l                                           ; $768a: $95
	ld   [hl], c                                     ; $768b: $71
	halt                                             ; $768c: $76
	ld   h, h                                        ; $768d: $64
	and  c                                           ; $768e: $a1
	ld   a, e                                        ; $768f: $7b
	and  c                                           ; $7690: $a1
	ld   [hl], l                                     ; $7691: $75
	ld   h, a                                        ; $7692: $67
	ld   a, e                                        ; $7693: $7b
	sbc  a                                           ; $7694: $9f
	dec  c                                           ; $7695: $0d
	nop                                              ; $7696: $00
	ld   a, [bc]                                     ; $7697: $0a
	ld   b, $bf                                      ; $7698: $06 $bf
	inc  b                                           ; $769a: $04
	inc  e                                           ; $769b: $1c
	ld   bc, $0000                                   ; $769c: $01 $00 $00
	ld   bc, $9e50                                   ; $769f: $01 $50 $9e
	ld   [bc], a                                     ; $76a2: $02
	and  c                                           ; $76a3: $a1
	ld   a, c                                        ; $76a4: $79
	ld   h, l                                        ; $76a5: $65
	ld   a, b                                        ; $76a6: $78
	ld   d, d                                        ; $76a7: $52
	ld   [hl], l                                     ; $76a8: $75
	ld   e, l                                        ; $76a9: $5d
	ld   l, [hl]                                     ; $76aa: $6e
	ld   h, e                                        ; $76ab: $63
	ld   d, d                                        ; $76ac: $52
	rst  $38                                         ; $76ad: $ff
	rst  $38                                         ; $76ae: $ff
	dec  c                                           ; $76af: $0d
	ld   l, a                                        ; $76b0: $6f
	sub  l                                           ; $76b1: $95
	ld   [hl], c                                     ; $76b2: $71
	halt                                             ; $76b3: $76
	ld   [bc], a                                     ; $76b4: $02
	jp   nz, $7452                                   ; $76b5: $c2 $52 $74

	adc  l                                           ; $76b8: $8d
	ld   l, l                                        ; $76b9: $6d
	ld   l, [hl]                                     ; $76ba: $6e
	ld   e, a                                        ; $76bb: $5f
	ld   [hl], l                                     ; $76bc: $75
	ld   h, a                                        ; $76bd: $67
	dec  c                                           ; $76be: $0d
	ld   e, c                                        ; $76bf: $59
	sub  a                                           ; $76c0: $97
	rst  $38                                         ; $76c1: $ff
	rst  $38                                         ; $76c2: $ff
	dec  c                                           ; $76c3: $0d
	nop                                              ; $76c4: $00
	ld   a, [bc]                                     ; $76c5: $0a
	ld   b, $bf                                      ; $76c6: $06 $bf
	inc  b                                           ; $76c8: $04
	inc  e                                           ; $76c9: $1c
	ld   [bc], a                                     ; $76ca: $02
	nop                                              ; $76cb: $00
	nop                                              ; $76cc: $00
	ld   bc, $0008                                   ; $76cd: $01 $08 $00
	ld   h, e                                        ; $76d0: $63
	and  c                                           ; $76d1: $a1
	halt                                             ; $76d2: $76
	dec  c                                           ; $76d3: $0d
	ld   e, b                                        ; $76d4: $58
	ld   [hl], c                                     ; $76d5: $71
	ld   h, l                                        ; $76d6: $65
	sub  c                                           ; $76d7: $91
	ld   [hl], c                                     ; $76d8: $71
	ld   l, l                                        ; $76d9: $6d
	sbc  l                                           ; $76da: $9d
	ld   a, e                                        ; $76db: $7b
	rst  $38                                         ; $76dc: $ff
	rst  $38                                         ; $76dd: $ff
	ld   sp, hl                                      ; $76de: $f9
	dec  c                                           ; $76df: $0d
	nop                                              ; $76e0: $00
	ld   a, [bc]                                     ; $76e1: $0a
	ld   bc, $7c61                                   ; $76e2: $01 $61 $7c
	inc  b                                           ; $76e5: $04
	dec  bc                                          ; $76e6: $0b
	ld   [hl], l                                     ; $76e7: $75
	inc  bc                                          ; $76e8: $03
	xor  c                                           ; $76e9: $a9
	ld   e, d                                        ; $76ea: $5a
	ld   [bc], a                                     ; $76eb: $02
	jr   nz, jr_04a_76f2                             ; $76ec: $20 $04

	ld   a, c                                        ; $76ee: $79
	ld   e, e                                        ; $76ef: $5b
	sbc  d                                           ; $76f0: $9a
	ld   d, d                                        ; $76f1: $52

jr_04a_76f2:
	ld   l, [hl]                                     ; $76f2: $6e
	halt                                             ; $76f3: $76
	dec  c                                           ; $76f4: $0d
	dec  b                                           ; $76f5: $05
	pop  de                                          ; $76f6: $d1
	ld   [hl], c                                     ; $76f7: $71
	ld   [hl], h                                     ; $76f8: $74
	sub  a                                           ; $76f9: $97
	ld   [hl], c                                     ; $76fa: $71
	ld   h, l                                        ; $76fb: $65
	sub  c                                           ; $76fc: $91
	sbc  c                                           ; $76fd: $99
	ld   a, h                                        ; $76fe: $7c
	ld   e, c                                        ; $76ff: $59
	ld   h, l                                        ; $7700: $65
	sub  a                                           ; $7701: $97
	ld   sp, hl                                      ; $7702: $f9
	dec  c                                           ; $7703: $0d
	nop                                              ; $7704: $00
	ld   a, [bc]                                     ; $7705: $0a
	add  hl, de                                      ; $7706: $19
	dec  b                                           ; $7707: $05
	ld   [bc], a                                     ; $7708: $02
	ld   h, a                                        ; $7709: $67
	adc  l                                           ; $770a: $8d
	sbc  d                                           ; $770b: $9a
	ld   h, e                                        ; $770c: $63
	and  c                                           ; $770d: $a1
	ld   e, d                                        ; $770e: $5a
	ld   [bc], a                                     ; $770f: $02
	jr   nz, jr_04a_7716                             ; $7710: $20 $04

	ld   a, c                                        ; $7712: $79
	ld   [hl], l                                     ; $7713: $75
	ld   h, a                                        ; $7714: $67
	nop                                              ; $7715: $00

jr_04a_7716:
	nop                                              ; $7716: $00
	adc  l                                           ; $7717: $8d
	ld   a, b                                        ; $7718: $78
	ld   h, e                                        ; $7719: $63
	and  c                                           ; $771a: $a1
	inc  bc                                          ; $771b: $03
	ld   d, a                                        ; $771c: $57
	ld   [bc], a                                     ; $771d: $02
	nop                                              ; $771e: $00
	ld   e, e                                        ; $771f: $5b
	sbc  d                                           ; $7720: $9a
	ld   d, d                                        ; $7721: $52
	ld   [hl], l                                     ; $7722: $75
	ld   h, a                                        ; $7723: $67
	nop                                              ; $7724: $00
	ld   bc, $3107                                   ; $7725: $01 $07 $31
	dec  b                                           ; $7728: $05
	ld   [bc], a                                     ; $7729: $02
	inc  bc                                          ; $772a: $03
	ld   bc, $2000                                   ; $772b: $01 $00 $20
	nop                                              ; $772e: $00
	rlca                                             ; $772f: $07
	adc  h                                           ; $7730: $8c
	dec  b                                           ; $7731: $05
	ld   [bc], a                                     ; $7732: $02
	inc  bc                                          ; $7733: $03
	ld   bc, $2001                                   ; $7734: $01 $01 $20
	nop                                              ; $7737: $00
	ld   b, $fa                                      ; $7738: $06 $fa
	dec  b                                           ; $773a: $05
	rrca                                             ; $773b: $0f
	nop                                              ; $773c: $00
	ld   bc, $6701                                   ; $773d: $01 $01 $67
	adc  l                                           ; $7740: $8d
	sbc  d                                           ; $7741: $9a
	ld   h, e                                        ; $7742: $63
	and  c                                           ; $7743: $a1
	ld   e, d                                        ; $7744: $5a
	ld   [bc], a                                     ; $7745: $02
	jr   nz, jr_04a_774c                             ; $7746: $20 $04

	ld   a, c                                        ; $7748: $79
	ld   [hl], l                                     ; $7749: $75
	ld   h, a                                        ; $774a: $67
	sbc  a                                           ; $774b: $9f

jr_04a_774c:
	dec  c                                           ; $774c: $0d
	nop                                              ; $774d: $00
	ld   a, [bc]                                     ; $774e: $0a
	inc  e                                           ; $774f: $1c
	ld   [bc], a                                     ; $7750: $02
	ld   bc, $1d01                                   ; $7751: $01 $01 $1d
	ld   b, b                                        ; $7754: $40
	ld   [de], a                                     ; $7755: $12
	inc  bc                                          ; $7756: $03
	ld   [de], a                                     ; $7757: $12
	ld   bc, $2803                                   ; $7758: $01 $03 $28
	nop                                              ; $775b: $00
	ld   bc, $9750                                   ; $775c: $01 $50 $97
	sbc  [hl]                                        ; $775f: $9e
	sbc  l                                           ; $7760: $9d
	ld   e, c                                        ; $7761: $59
	ld   [hl], c                                     ; $7762: $71
	ld   [hl], h                                     ; $7763: $74
	sbc  c                                           ; $7764: $99
	ld   h, [hl]                                     ; $7765: $66
	sub  c                                           ; $7766: $91
	dec  c                                           ; $7767: $0d
	ld   d, b                                        ; $7768: $50
	sbc  b                                           ; $7769: $98
	adc  h                                           ; $776a: $8c
	ld   l, c                                        ; $776b: $69
	and  c                                           ; $776c: $a1
	ld   h, c                                        ; $776d: $61
	halt                                             ; $776e: $76
	sbc  a                                           ; $776f: $9f
	dec  c                                           ; $7770: $0d
	ld   e, b                                        ; $7771: $58
	ei                                               ; $7772: $fb
	adc  c                                           ; $7773: $89
	adc  c                                           ; $7774: $89
	adc  c                                           ; $7775: $89
	adc  c                                           ; $7776: $89
	adc  c                                           ; $7777: $89
	rst  $38                                         ; $7778: $ff
	rst  $38                                         ; $7779: $ff
	dec  c                                           ; $777a: $0d
	nop                                              ; $777b: $00
	ld   a, [bc]                                     ; $777c: $0a
	inc  e                                           ; $777d: $1c
	ld   b, $05                                      ; $777e: $06 $05
	dec  b                                           ; $7780: $05
	ld   bc, $6958                                   ; $7781: $01 $58 $69
	ld   h, [hl]                                     ; $7784: $66
	ld   a, c                                        ; $7785: $79
	ld   [bc], a                                     ; $7786: $02
	add  e                                           ; $7787: $83
	adc  h                                           ; $7788: $8c
	ld   [hl], c                                     ; $7789: $71
	ld   [hl], h                                     ; $778a: $74
	and  c                                           ; $778b: $a1
	ld   l, [hl]                                     ; $778c: $6e
	sbc  e                                           ; $778d: $9b
	rst  $38                                         ; $778e: $ff
	rst  $38                                         ; $778f: $ff
	dec  c                                           ; $7790: $0d
	nop                                              ; $7791: $00
	ld   a, [bc]                                     ; $7792: $0a
	ld   b, $42                                      ; $7793: $06 $42
	ld   b, $0f                                      ; $7795: $06 $0f
	nop                                              ; $7797: $00
	ld   bc, $8d01                                   ; $7798: $01 $01 $8d
	ld   a, b                                        ; $779b: $78
	ld   h, e                                        ; $779c: $63
	and  c                                           ; $779d: $a1
	inc  bc                                          ; $779e: $03
	ld   d, a                                        ; $779f: $57
	ld   [bc], a                                     ; $77a0: $02
	nop                                              ; $77a1: $00
	ld   e, e                                        ; $77a2: $5b
	sbc  d                                           ; $77a3: $9a
	ld   d, d                                        ; $77a4: $52
	ld   [hl], l                                     ; $77a5: $75
	ld   h, a                                        ; $77a6: $67
	sbc  a                                           ; $77a7: $9f
	dec  c                                           ; $77a8: $0d
	nop                                              ; $77a9: $00
	ld   a, [bc]                                     ; $77aa: $0a
	inc  e                                           ; $77ab: $1c
	ld   [bc], a                                     ; $77ac: $02
	rlca                                             ; $77ad: $07
	rlca                                             ; $77ae: $07
	dec  e                                           ; $77af: $1d
	ld   b, b                                        ; $77b0: $40
	ld   [de], a                                     ; $77b1: $12
	inc  bc                                          ; $77b2: $03
	ld   [de], a                                     ; $77b3: $12
	ld   bc, $2903                                   ; $77b4: $01 $03 $29
	nop                                              ; $77b7: $00
	ld   bc, $788d                                   ; $77b8: $01 $8d $78
	ld   h, e                                        ; $77bb: $63
	and  c                                           ; $77bc: $a1
	rst  $38                                         ; $77bd: $ff
	rst  $38                                         ; $77be: $ff
	ld   sp, hl                                      ; $77bf: $f9
	dec  c                                           ; $77c0: $0d
	ld   l, e                                        ; $77c1: $6b
	sbc  d                                           ; $77c2: $9a
	ld   [hl], c                                     ; $77c3: $71
	ld   [hl], h                                     ; $77c4: $74
	sbc  [hl]                                        ; $77c5: $9e
	sbc  l                                           ; $77c6: $9d
	ld   l, l                                        ; $77c7: $6d
	ld   e, l                                        ; $77c8: $5d
	ld   h, l                                        ; $77c9: $65
	halt                                             ; $77ca: $76
	dec  c                                           ; $77cb: $0d
	xor  h                                           ; $77cc: $ac
	push af                                          ; $77cd: $f5
	bit  4, e                                        ; $77ce: $cb $63
	and  c                                           ; $77d0: $a1
	ld   e, d                                        ; $77d1: $5a
	inc  b                                           ; $77d2: $04
	dec  e                                           ; $77d3: $1d
	ld   b, $39                                      ; $77d4: $06 $39
	ld   l, [hl]                                     ; $77d6: $6e
	halt                                             ; $77d7: $76
	ld   [hl], l                                     ; $77d8: $75
	sub  b                                           ; $77d9: $90
	ld   sp, hl                                      ; $77da: $f9
	dec  c                                           ; $77db: $0d
	nop                                              ; $77dc: $00
	ld   a, [bc]                                     ; $77dd: $0a
	inc  e                                           ; $77de: $1c
	ld   b, $02                                      ; $77df: $06 $02
	ld   [bc], a                                     ; $77e1: $02
	ld   bc, $5477                                   ; $77e2: $01 $77 $54
	ld   h, l                                        ; $77e5: $65
	ld   [hl], h                                     ; $77e6: $74
	ld   l, e                                        ; $77e7: $6b
	ld   h, c                                        ; $77e8: $61
	ld   [hl], l                                     ; $77e9: $75
	sbc  [hl]                                        ; $77ea: $9e
	ld   d, b                                        ; $77eb: $50
	ld   l, l                                        ; $77ec: $6d
	ld   d, d                                        ; $77ed: $52
	and  b                                           ; $77ee: $a0
	dec  c                                           ; $77ef: $0d
	ld   [bc], a                                     ; $77f0: $02
	inc  l                                           ; $77f1: $2c
	ld   e, e                                        ; $77f2: $5b
	ld   [bc], a                                     ; $77f3: $02
	ld   a, e                                        ; $77f4: $7b
	ld   d, d                                        ; $77f5: $52
	ld   a, c                                        ; $77f6: $79
	inc  bc                                          ; $77f7: $03
	add  b                                           ; $77f8: $80
	ld   h, a                                        ; $77f9: $67
	and  c                                           ; $77fa: $a1
	ld   l, [hl]                                     ; $77fb: $6e
	sub  [hl]                                        ; $77fc: $96
	ld   a, [$000d]                                  ; $77fd: $fa $0d $00
	ld   a, [bc]                                     ; $7800: $0a
	ld   b, $42                                      ; $7801: $06 $42
	ld   b, $1c                                      ; $7803: $06 $1c
	ld   [bc], a                                     ; $7805: $02
	rlca                                             ; $7806: $07
	rlca                                             ; $7807: $07
	dec  e                                           ; $7808: $1d
	ld   b, b                                        ; $7809: $40
	ld   [de], a                                     ; $780a: $12
	inc  bc                                          ; $780b: $03
	ld   [de], a                                     ; $780c: $12
	ld   bc, $2902                                   ; $780d: $01 $02 $29
	nop                                              ; $7810: $00
	ld   bc, $5490                                   ; $7811: $01 $90 $54
	rst  $38                                         ; $7814: $ff
	rst  $38                                         ; $7815: $ff
	dec  c                                           ; $7816: $0d
	ld   a, l                                        ; $7817: $7d
	ld   [hl], c                                     ; $7818: $71
	ld   e, e                                        ; $7819: $5b
	sbc  b                                           ; $781a: $98
	ld   h, l                                        ; $781b: $65
	ld   a, b                                        ; $781c: $78
	ld   d, d                                        ; $781d: $52
	inc  bc                                          ; $781e: $03
	add  d                                           ; $781f: $82
	ld   [hl], l                                     ; $7820: $75
	ld   h, a                                        ; $7821: $67
	ld   h, c                                        ; $7822: $61
	halt                                             ; $7823: $76
	sbc  a                                           ; $7824: $9f
	dec  c                                           ; $7825: $0d
	nop                                              ; $7826: $00
	ld   a, [bc]                                     ; $7827: $0a
	inc  e                                           ; $7828: $1c
	ld   b, $02                                      ; $7829: $06 $02
	ld   [bc], a                                     ; $782b: $02
	ld   bc, $8f58                                   ; $782c: $01 $58 $8f
	ld   d, [hl]                                     ; $782f: $56
	ld   e, d                                        ; $7830: $5a
	sbc  [hl]                                        ; $7831: $9e
	ld   l, e                                        ; $7832: $6b
	ld   d, h                                        ; $7833: $54
	ld   d, d                                        ; $7834: $52
	ld   d, h                                        ; $7835: $54
	inc  bc                                          ; $7836: $03
	call c, Call_04a_7956                            ; $7837: $dc $56 $79
	ld   e, l                                        ; $783a: $5d
	ld   d, d                                        ; $783b: $52
	dec  c                                           ; $783c: $0d
	inc  bc                                          ; $783d: $03
	dec  d                                           ; $783e: $15
	inc  b                                           ; $783f: $04
	cp   a                                           ; $7840: $bf
	ld   h, a                                        ; $7841: $67
	sbc  c                                           ; $7842: $99
	ld   e, c                                        ; $7843: $59
	sub  a                                           ; $7844: $97
	ld   l, [hl]                                     ; $7845: $6e
	sbc  e                                           ; $7846: $9b
	rst  $38                                         ; $7847: $ff
	rst  $38                                         ; $7848: $ff
	dec  c                                           ; $7849: $0d
	nop                                              ; $784a: $00
	ld   a, [bc]                                     ; $784b: $0a
	inc  e                                           ; $784c: $1c
	ld   b, $01                                      ; $784d: $06 $01
	ld   bc, $0801                                   ; $784f: $01 $01 $08
	nop                                              ; $7852: $00
	sbc  [hl]                                        ; $7853: $9e
	dec  c                                           ; $7854: $0d
	ld   h, c                                        ; $7855: $61

Call_04a_7856:
	ld   a, h                                        ; $7856: $7c
	or   [hl]                                        ; $7857: $b6
	db   $dd                                         ; $7858: $dd

Jump_04a_7859:
	rst  ToBoot                                         ; $7859: $c7
	push af                                          ; $785a: $f5
	inc  bc                                          ; $785b: $03
	ld   l, [hl]                                     ; $785c: $6e
	ld   a, h                                        ; $785d: $7c
	ld   h, c                                        ; $785e: $61
	halt                                             ; $785f: $76
	ld   a, l                                        ; $7860: $7d
	dec  c                                           ; $7861: $0d
	ld   d, b                                        ; $7862: $50
	adc  h                                           ; $7863: $8c
	sbc  b                                           ; $7864: $98
	ld   [bc], a                                     ; $7865: $02
	and  c                                           ; $7866: $a1
	ld   a, c                                        ; $7867: $79
	ld   h, a                                        ; $7868: $67
	and  c                                           ; $7869: $a1
	ld   a, b                                        ; $786a: $78
	sub  [hl]                                        ; $786b: $96
	ld   a, b                                        ; $786c: $78
	sbc  a                                           ; $786d: $9f

Jump_04a_786e:
	dec  c                                           ; $786e: $0d
	nop                                              ; $786f: $00
	ld   a, [bc]                                     ; $7870: $0a
	ld   b, $6a                                      ; $7871: $06 $6a
	ld   b, $1c                                      ; $7873: $06 $1c
	ld   b, $00                                      ; $7875: $06 $00
	nop                                              ; $7877: $00
	ld   bc, $4f03                                   ; $7878: $01 $03 $4f
	ld   a, c                                        ; $787b: $79
	sub  b                                           ; $787c: $90
	ld   [bc], a                                     ; $787d: $02
	jp   nz, Jump_04a_6d52                           ; $787e: $c2 $52 $6d

	ld   e, c                                        ; $7881: $59
	sub  b                                           ; $7882: $90
	ld   h, l                                        ; $7883: $65
	sbc  d                                           ; $7884: $9a
	ld   a, e                                        ; $7885: $7b
	ld   d, [hl]                                     ; $7886: $56
	ld   e, a                                        ; $7887: $5f
	ld   [hl], a                                     ; $7888: $77
	dec  c                                           ; $7889: $0d
	ld   e, b                                        ; $788a: $58
	inc  bc                                          ; $788b: $03
	ld   c, a                                        ; $788c: $4f
	sbc  [hl]                                        ; $788d: $9e
	or   d                                           ; $788e: $b2
	push af                                          ; $788f: $f5
	xor  h                                           ; $7890: $ac
	halt                                             ; $7891: $76
	ld   e, c                                        ; $7892: $59
	ld   a, l                                        ; $7893: $7d
	ld   [bc], a                                     ; $7894: $02
	call nc, Call_04a_7c52                           ; $7895: $d4 $52 $7c
	ld   e, c                                        ; $7898: $59
	ld   sp, hl                                      ; $7899: $f9
	dec  c                                           ; $789a: $0d
	nop                                              ; $789b: $00
	ld   a, [bc]                                     ; $789c: $0a
	add  hl, de                                      ; $789d: $19
	dec  b                                           ; $789e: $05
	ld   [bc], a                                     ; $789f: $02
	ld   [hl], d                                     ; $78a0: $72
	sub  [hl]                                        ; $78a1: $96
	ld   d, d                                        ; $78a2: $52
	nop                                              ; $78a3: $00
	nop                                              ; $78a4: $00
	sub  [hl]                                        ; $78a5: $96
	sbc  l                                           ; $78a6: $9d
	ld   d, d                                        ; $78a7: $52
	nop                                              ; $78a8: $00
	ld   bc, $b507                                   ; $78a9: $01 $07 $b5
	ld   b, $02                                      ; $78ac: $06 $02
	inc  bc                                          ; $78ae: $03
	ld   bc, $2000                                   ; $78af: $01 $00 $20
	nop                                              ; $78b2: $00
	rlca                                             ; $78b3: $07
	ld   bc, $0207                                   ; $78b4: $01 $07 $02
	inc  bc                                          ; $78b7: $03
	ld   bc, $2001                                   ; $78b8: $01 $01 $20
	nop                                              ; $78bb: $00
	ld   b, $51                                      ; $78bc: $06 $51
	rlca                                             ; $78be: $07
	rrca                                             ; $78bf: $0f
	nop                                              ; $78c0: $00
	ld   bc, $8c01                                   ; $78c1: $01 $01 $8c
	ld   d, b                                        ; $78c4: $50
	adc  h                                           ; $78c5: $8c
	ld   d, b                                        ; $78c6: $50
	rst  $38                                         ; $78c7: $ff
	rst  $38                                         ; $78c8: $ff
	halt                                             ; $78c9: $76
	ld   d, d                                        ; $78ca: $52
	ld   d, h                                        ; $78cb: $54
	halt                                             ; $78cc: $76
	ld   h, c                                        ; $78cd: $61
	ld   [hl], l                                     ; $78ce: $75
	ld   h, a                                        ; $78cf: $67
	sbc  a                                           ; $78d0: $9f
	dec  c                                           ; $78d1: $0d
	nop                                              ; $78d2: $00
	ld   a, [bc]                                     ; $78d3: $0a
	inc  e                                           ; $78d4: $1c
	ld   b, $01                                      ; $78d5: $06 $01
	ld   bc, $401d                                   ; $78d7: $01 $1d $40
	ld   d, $03                                      ; $78da: $16 $03
	ld   d, $01                                      ; $78dc: $16 $01
	inc  bc                                          ; $78de: $03
	jr   z, jr_04a_78e1                              ; $78df: $28 $00

jr_04a_78e1:
	ld   bc, $9e58                                   ; $78e1: $01 $58 $9e
	ld   a, b                                        ; $78e4: $78
	and  c                                           ; $78e5: $a1
	ld   e, c                                        ; $78e6: $59
	inc  bc                                          ; $78e7: $03
	sub  h                                           ; $78e8: $94
	ld   [bc], a                                     ; $78e9: $02
	ld   hl, sp+$50                                  ; $78ea: $f8 $50
	sbc  b                                           ; $78ec: $98
	ld   h, b                                        ; $78ed: $60
	ld   a, b                                        ; $78ee: $78
	dec  c                                           ; $78ef: $0d
	cp   h                                           ; $78f0: $bc
	db   $ec                                         ; $78f1: $ec
	sub  $66                                         ; $78f2: $d6 $66
	sub  c                                           ; $78f4: $91
	ld   a, e                                        ; $78f5: $7b
	ld   d, [hl]                                     ; $78f6: $56
	ld   e, c                                        ; $78f7: $59
	sbc  a                                           ; $78f8: $9f
	dec  c                                           ; $78f9: $0d
	ld   l, l                                        ; $78fa: $6d
	ld   a, h                                        ; $78fb: $7c
	sub  b                                           ; $78fc: $90
	ld   h, l                                        ; $78fd: $65
	ld   d, d                                        ; $78fe: $52
	ld   e, c                                        ; $78ff: $59
	ld   e, h                                        ; $7900: $5c
	sbc  b                                           ; $7901: $98
	ld   l, [hl]                                     ; $7902: $6e
	ld   l, d                                        ; $7903: $6a
	sbc  a                                           ; $7904: $9f
	dec  c                                           ; $7905: $0d
	nop                                              ; $7906: $00
	ld   a, [bc]                                     ; $7907: $0a
	ld   b, $73                                      ; $7908: $06 $73
	rlca                                             ; $790a: $07
	rrca                                             ; $790b: $0f
	nop                                              ; $790c: $00
	ld   bc, $6f01                                   ; $790d: $01 $01 $6f
	sub  l                                           ; $7910: $95
	ld   [hl], c                                     ; $7911: $71
	halt                                             ; $7912: $76
	rst  $38                                         ; $7913: $ff
	rst  $38                                         ; $7914: $ff
	ld   l, e                                        ; $7915: $6b
	ld   d, h                                        ; $7916: $54
	ld   d, d                                        ; $7917: $52
	ld   d, h                                        ; $7918: $54
	ld   a, h                                        ; $7919: $7c
	ld   a, l                                        ; $791a: $7d
	rst  $38                                         ; $791b: $ff
	rst  $38                                         ; $791c: $ff
	dec  c                                           ; $791d: $0d
	nop                                              ; $791e: $00
	ld   a, [bc]                                     ; $791f: $0a
	inc  e                                           ; $7920: $1c
	ld   b, $05                                      ; $7921: $06 $05
	dec  b                                           ; $7923: $05
	dec  e                                           ; $7924: $1d
	ld   b, b                                        ; $7925: $40
	ld   d, $03                                      ; $7926: $16 $03
	ld   d, $01                                      ; $7928: $16 $01
	ld   bc, $0029                                   ; $792a: $01 $29 $00
	ld   bc, $5258                                   ; $792d: $01 $58 $52
	ld   e, b                                        ; $7930: $58
	ld   d, d                                        ; $7931: $52
	rst  $38                                         ; $7932: $ff
	rst  $38                                         ; $7933: $ff
	ld   l, e                                        ; $7934: $6b
	and  c                                           ; $7935: $a1
	ld   a, b                                        ; $7936: $78
	inc  bc                                          ; $7937: $03
	inc  a                                           ; $7938: $3c
	ld   [bc], a                                     ; $7939: $02
	and  c                                           ; $793a: $a1
	ld   h, [hl]                                     ; $793b: $66
	sub  c                                           ; $793c: $91
	dec  c                                           ; $793d: $0d
	inc  b                                           ; $793e: $04
	ld   [$2f04], sp                                 ; $793f: $08 $04 $2f
	ld   a, l                                        ; $7942: $7d
	inc  bc                                          ; $7943: $03
	sub  e                                           ; $7944: $93
	sbc  d                                           ; $7945: $9a
	ld   a, e                                        ; $7946: $7b
	ld   d, [hl]                                     ; $7947: $56
	ld   l, d                                        ; $7948: $6a
	sbc  [hl]                                        ; $7949: $9e
	dec  c                                           ; $794a: $0d
	ld   h, l                                        ; $794b: $65
	ld   [hl], c                                     ; $794c: $71
	ld   e, c                                        ; $794d: $59
	sbc  b                                           ; $794e: $98
	ld   h, l                                        ; $794f: $65
	ld   [hl], h                                     ; $7950: $74
	ld   e, l                                        ; $7951: $5d
	sbc  d                                           ; $7952: $9a
	sub  [hl]                                        ; $7953: $96
	sbc  a                                           ; $7954: $9f
	dec  c                                           ; $7955: $0d

Call_04a_7956:
	nop                                              ; $7956: $00
	ld   a, [bc]                                     ; $7957: $0a
	ld   b, $73                                      ; $7958: $06 $73
	rlca                                             ; $795a: $07
	inc  e                                           ; $795b: $1c
	ld   b, $02                                      ; $795c: $06 $02
	ld   [bc], a                                     ; $795e: $02
	dec  e                                           ; $795f: $1d
	ld   b, b                                        ; $7960: $40
	ld   d, $03                                      ; $7961: $16 $03
	ld   d, $01                                      ; $7963: $16 $01
	ld   [bc], a                                     ; $7965: $02
	add  hl, hl                                      ; $7966: $29
	nop                                              ; $7967: $00
	ld   bc, $a178                                   ; $7968: $01 $78 $a1
	ld   e, c                                        ; $796b: $59
	ret  nc                                          ; $796c: $d0

	xor  [hl]                                        ; $796d: $ae
	ret  nc                                          ; $796e: $d0

	xor  [hl]                                        ; $796f: $ae
	ld   h, l                                        ; $7970: $65
	ld   a, b                                        ; $7971: $78
	ld   d, d                                        ; $7972: $52
	dec  c                                           ; $7973: $0d
	and  $c5                                         ; $7974: $e6 $c5
	ld   l, [hl]                                     ; $7976: $6e
	ld   a, b                                        ; $7977: $78
	rst  $38                                         ; $7978: $ff
	rst  $38                                         ; $7979: $ff
	dec  c                                           ; $797a: $0d
	nop                                              ; $797b: $00
	ld   a, [bc]                                     ; $797c: $0a
	inc  e                                           ; $797d: $1c
	inc  bc                                          ; $797e: $03
	nop                                              ; $797f: $00
	nop                                              ; $7980: $00
	ld   bc, $f5ac                                   ; $7981: $01 $ac $f5
	res  3, [hl]                                     ; $7984: $cb $9e
	ld   d, b                                        ; $7986: $50
	adc  h                                           ; $7987: $8c
	sbc  b                                           ; $7988: $98
	ret  c                                           ; $7989: $d8

	xor  $c4                                         ; $798a: $ee $c4
	cp   b                                           ; $798c: $b8
	push hl                                          ; $798d: $e5
	ei                                               ; $798e: $fb
	and  b                                           ; $798f: $a0
	dec  c                                           ; $7990: $0d
	ld   e, c                                        ; $7991: $59
	ld   e, a                                        ; $7992: $5f
	ld   [hl], h                                     ; $7993: $74
	ld   a, l                                        ; $7994: $7d
	pop  bc                                          ; $7995: $c1
	db   $e3                                         ; $7996: $e3
	sub  [hl]                                        ; $7997: $96
	sbc  a                                           ; $7998: $9f
	dec  c                                           ; $7999: $0d
	nop                                              ; $799a: $00
	ld   a, [bc]                                     ; $799b: $0a
	ld   b, $95                                      ; $799c: $06 $95
	rlca                                             ; $799e: $07
	inc  e                                           ; $799f: $1c
	inc  bc                                          ; $79a0: $03
	inc  b                                           ; $79a1: $04
	inc  b                                           ; $79a2: $04
	ld   bc, $8f62                                   ; $79a3: $01 $62 $8f
	and  c                                           ; $79a6: $a1
	ld   a, b                                        ; $79a7: $78
	ld   h, e                                        ; $79a8: $63
	ld   d, d                                        ; $79a9: $52
	sbc  a                                           ; $79aa: $9f
	dec  c                                           ; $79ab: $0d
	inc  b                                           ; $79ac: $04
	ld   c, c                                        ; $79ad: $49
	ld   l, [hl]                                     ; $79ae: $6e
	ld   e, c                                        ; $79af: $59
	inc  bc                                          ; $79b0: $03
	dec  d                                           ; $79b1: $15
	inc  b                                           ; $79b2: $04
	cp   a                                           ; $79b3: $bf
	inc  b                                           ; $79b4: $04
	ld   c, $02                                      ; $79b5: $0e $02
	add  [hl]                                        ; $79b7: $86
	adc  l                                           ; $79b8: $8d
	ld   l, l                                        ; $79b9: $6d
	ld   d, d                                        ; $79ba: $52
	ld   a, c                                        ; $79bb: $79
	dec  c                                           ; $79bc: $0d
	ld   a, b                                        ; $79bd: $78
	ld   [hl], c                                     ; $79be: $71
	ld   l, a                                        ; $79bf: $6f
	sub  c                                           ; $79c0: $91
	ld   [hl], c                                     ; $79c1: $71
	ld   [hl], h                                     ; $79c2: $74
	rst  $38                                         ; $79c3: $ff
	rst  $38                                         ; $79c4: $ff
	dec  c                                           ; $79c5: $0d
	nop                                              ; $79c6: $00
	ld   a, [bc]                                     ; $79c7: $0a
	add  hl, de                                      ; $79c8: $19
	dec  b                                           ; $79c9: $05
	ld   [bc], a                                     ; $79ca: $02
	ld   l, e                                        ; $79cb: $6b
	and  c                                           ; $79cc: $a1
	ld   a, b                                        ; $79cd: $78
	ld   h, c                                        ; $79ce: $61
	halt                                             ; $79cf: $76
	ld   a, b                                        ; $79d0: $78
	ld   d, d                                        ; $79d1: $52
	ld   [hl], l                                     ; $79d2: $75
	ld   h, a                                        ; $79d3: $67
	nop                                              ; $79d4: $00
	nop                                              ; $79d5: $00
	ld   e, c                                        ; $79d6: $59
	and  c                                           ; $79d7: $a1
	add  a                                           ; $79d8: $87
	and  c                                           ; $79d9: $a1
	ld   h, l                                        ; $79da: $65
	ld   [hl], h                                     ; $79db: $74
	ld   e, l                                        ; $79dc: $5d
	ld   l, [hl]                                     ; $79dd: $6e
	ld   h, e                                        ; $79de: $63
	ld   d, d                                        ; $79df: $52
	nop                                              ; $79e0: $00
	ld   bc, $ed07                                   ; $79e1: $01 $07 $ed
	rlca                                             ; $79e4: $07
	ld   [bc], a                                     ; $79e5: $02
	inc  bc                                          ; $79e6: $03
	ld   bc, $2000                                   ; $79e7: $01 $00 $20
	nop                                              ; $79ea: $00
	rlca                                             ; $79eb: $07
	inc  h                                           ; $79ec: $24
	ld   [$0302], sp                                 ; $79ed: $08 $02 $03
	ld   bc, $2001                                   ; $79f0: $01 $01 $20
	nop                                              ; $79f3: $00
	ld   b, $62                                      ; $79f4: $06 $62
	ld   [$000f], sp                                 ; $79f6: $08 $0f $00
	ld   bc, $6b01                                   ; $79f9: $01 $01 $6b
	and  c                                           ; $79fc: $a1
	ld   a, b                                        ; $79fd: $78
	ld   h, c                                        ; $79fe: $61
	halt                                             ; $79ff: $76
	ld   a, b                                        ; $7a00: $78
	ld   d, d                                        ; $7a01: $52
	ld   [hl], l                                     ; $7a02: $75
	ld   h, a                                        ; $7a03: $67
	sbc  a                                           ; $7a04: $9f
	dec  c                                           ; $7a05: $0d
	nop                                              ; $7a06: $00
	ld   a, [bc]                                     ; $7a07: $0a
	inc  e                                           ; $7a08: $1c
	inc  bc                                          ; $7a09: $03
	inc  bc                                          ; $7a0a: $03
	inc  bc                                          ; $7a0b: $03
	dec  e                                           ; $7a0c: $1d
	ld   b, b                                        ; $7a0d: $40
	inc  de                                          ; $7a0e: $13
	inc  bc                                          ; $7a0f: $03
	inc  de                                          ; $7a10: $13
	ld   bc, $2802                                   ; $7a11: $01 $02 $28
	nop                                              ; $7a14: $00
	ld   bc, $546b                                   ; $7a15: $01 $6b $54
	ld   [bc], a                                     ; $7a18: $02
	sbc  l                                           ; $7a19: $9d
	ld   [hl], c                                     ; $7a1a: $71
	ld   [hl], h                                     ; $7a1b: $74
	sub  b                                           ; $7a1c: $90
	sub  a                                           ; $7a1d: $97
	ld   d, [hl]                                     ; $7a1e: $56
	sbc  c                                           ; $7a1f: $99
	halt                                             ; $7a20: $76
	dec  c                                           ; $7a21: $0d
	inc  bc                                          ; $7a22: $03
	ld   e, e                                        ; $7a23: $5b
	ld   e, c                                        ; $7a24: $59
	sbc  c                                           ; $7a25: $99
	sbc  l                                           ; $7a26: $9d
	sbc  a                                           ; $7a27: $9f
	dec  c                                           ; $7a28: $0d
	nop                                              ; $7a29: $00
	ld   a, [bc]                                     ; $7a2a: $0a
	ld   b, $88                                      ; $7a2b: $06 $88
	ld   [$000f], sp                                 ; $7a2d: $08 $0f $00
	ld   bc, $5901                                   ; $7a30: $01 $01 $59
	and  c                                           ; $7a33: $a1
	add  a                                           ; $7a34: $87
	and  c                                           ; $7a35: $a1
	ld   h, l                                        ; $7a36: $65
	ld   [hl], h                                     ; $7a37: $74
	ld   e, l                                        ; $7a38: $5d
	ld   l, [hl]                                     ; $7a39: $6e
	ld   h, e                                        ; $7a3a: $63
	ld   d, d                                        ; $7a3b: $52
	rst  $38                                         ; $7a3c: $ff
	rst  $38                                         ; $7a3d: $ff
	dec  c                                           ; $7a3e: $0d
	nop                                              ; $7a3f: $00
	ld   a, [bc]                                     ; $7a40: $0a
	inc  e                                           ; $7a41: $1c
	inc  bc                                          ; $7a42: $03
	inc  b                                           ; $7a43: $04
	inc  b                                           ; $7a44: $04
	ld   bc, $ece2                                   ; $7a45: $01 $e2 $ec
	sub  b                                           ; $7a48: $90
	ld   a, b                                        ; $7a49: $78
	ld   d, d                                        ; $7a4a: $52
	sbc  l                                           ; $7a4b: $9d
	ld   a, e                                        ; $7a4c: $7b
	sbc  a                                           ; $7a4d: $9f
	dec  c                                           ; $7a4e: $0d
	ld   [hl], l                                     ; $7a4f: $75
	sub  b                                           ; $7a50: $90
	sbc  [hl]                                        ; $7a51: $9e
	ld   h, c                                        ; $7a52: $61
	ld   a, h                                        ; $7a53: $7c
	add  e                                           ; $7a54: $83
	and  c                                           ; $7a55: $a1
	ld   d, d                                        ; $7a56: $52
	ld   e, e                                        ; $7a57: $5b
	ld   a, c                                        ; $7a58: $79
	sub  b                                           ; $7a59: $90
	dec  c                                           ; $7a5a: $0d
	ld   a, b                                        ; $7a5b: $78
	sbc  d                                           ; $7a5c: $9a
	ld   [hl], h                                     ; $7a5d: $74
	sub  b                                           ; $7a5e: $90
	sub  a                                           ; $7a5f: $97
	sbc  l                                           ; $7a60: $9d
	ld   a, b                                        ; $7a61: $78
	ld   d, d                                        ; $7a62: $52
	halt                                             ; $7a63: $76
	rst  $38                                         ; $7a64: $ff
	rst  $38                                         ; $7a65: $ff
	dec  c                                           ; $7a66: $0d
	nop                                              ; $7a67: $00
	ld   a, [bc]                                     ; $7a68: $0a
	ld   b, $88                                      ; $7a69: $06 $88
	ld   [$031c], sp                                 ; $7a6b: $08 $1c $03
	inc  bc                                          ; $7a6e: $03
	inc  bc                                          ; $7a6f: $03
	ld   bc, $a16b                                   ; $7a70: $01 $6b $a1
	ld   a, b                                        ; $7a73: $78
	ld   a, c                                        ; $7a74: $79
	ld   e, e                                        ; $7a75: $5b
	and  c                                           ; $7a76: $a1
	ld   l, a                                        ; $7a77: $6f
	sub  l                                           ; $7a78: $95
	ld   d, h                                        ; $7a79: $54
	ld   h, l                                        ; $7a7a: $65
	ld   a, b                                        ; $7a7b: $78
	ld   e, l                                        ; $7a7c: $5d
	ld   [hl], h                                     ; $7a7d: $74
	sub  b                                           ; $7a7e: $90
	dec  c                                           ; $7a7f: $0d
	ld   d, d                                        ; $7a80: $52
	ld   d, d                                        ; $7a81: $52
	sbc  l                                           ; $7a82: $9d
	sub  [hl]                                        ; $7a83: $96
	sbc  a                                           ; $7a84: $9f
	dec  c                                           ; $7a85: $0d
	db   $ec                                         ; $7a86: $ec
	db   $eb                                         ; $7a87: $eb
	call nz, $bab0                                   ; $7a88: $c4 $b0 $ba
	ld   a, b                                        ; $7a8b: $78
	ld   h, e                                        ; $7a8c: $63
	ld   d, d                                        ; $7a8d: $52
	sbc  a                                           ; $7a8e: $9f
	dec  c                                           ; $7a8f: $0d
	nop                                              ; $7a90: $00
	ld   a, [bc]                                     ; $7a91: $0a
	inc  e                                           ; $7a92: $1c
	dec  b                                           ; $7a93: $05
	nop                                              ; $7a94: $00
	nop                                              ; $7a95: $00
	ld   bc, $5078                                   ; $7a96: $01 $78 $50
	sbc  [hl]                                        ; $7a99: $9e
	ld   [$7d00], sp                                 ; $7a9a: $08 $00 $7d
	and  c                                           ; $7a9d: $a1
	sbc  a                                           ; $7a9e: $9f
	dec  c                                           ; $7a9f: $0d
	and  a                                           ; $7aa0: $a7
	jp   nz, $9759                                   ; $7aa1: $c2 $59 $97

	sub  b                                           ; $7aa4: $90
	inc  bc                                          ; $7aa5: $03
	dec  d                                           ; $7aa6: $15
	inc  b                                           ; $7aa7: $04
	cp   a                                           ; $7aa8: $bf
	ld   h, e                                        ; $7aa9: $63
	ld   l, c                                        ; $7aaa: $69
	ld   [hl], h                                     ; $7aab: $74
	dec  c                                           ; $7aac: $0d
	sub  b                                           ; $7aad: $90
	sbc  e                                           ; $7aae: $9b
	ld   [hl], h                                     ; $7aaf: $74
	xor  c                                           ; $7ab0: $a9
	xor  c                                           ; $7ab1: $a9
	ld   e, c                                        ; $7ab2: $59
	ld   sp, hl                                      ; $7ab3: $f9
	dec  c                                           ; $7ab4: $0d
	nop                                              ; $7ab5: $00
	ld   a, [bc]                                     ; $7ab6: $0a
	ld   b, $b0                                      ; $7ab7: $06 $b0
	ld   [$0301], sp                                 ; $7ab9: $08 $01 $03
	ld   c, a                                        ; $7abc: $4f
	ld   a, c                                        ; $7abd: $79
	sub  b                                           ; $7abe: $90
	ld   [bc], a                                     ; $7abf: $02
	jp   nz, Jump_04a_6d52                           ; $7ac0: $c2 $52 $6d

	ld   e, c                                        ; $7ac3: $59
	sub  b                                           ; $7ac4: $90
	ld   h, l                                        ; $7ac5: $65
	sbc  d                                           ; $7ac6: $9a
	and  c                                           ; $7ac7: $a1
	ld   e, a                                        ; $7ac8: $5f
	ld   [hl], a                                     ; $7ac9: $77
	sbc  [hl]                                        ; $7aca: $9e
	dec  c                                           ; $7acb: $0d
	ld   [$7d00], sp                                 ; $7acc: $08 $00 $7d
	and  c                                           ; $7acf: $a1
	ld   [hl], c                                     ; $7ad0: $71
	ld   [hl], h                                     ; $7ad1: $74
	sbc  [hl]                                        ; $7ad2: $9e
	ld   [bc], a                                     ; $7ad3: $02
	add  h                                           ; $7ad4: $84
	ld   [bc], a                                     ; $7ad5: $02
	and  d                                           ; $7ad6: $a2
	ld   a, l                                        ; $7ad7: $7d
	dec  c                                           ; $7ad8: $0d
	inc  bc                                          ; $7ad9: $03
	and  [hl]                                        ; $7ada: $a6
	dec  b                                           ; $7adb: $05
	call nc, Call_04a_6597                           ; $7adc: $d4 $97 $65
	ld   d, d                                        ; $7adf: $52
	halt                                             ; $7ae0: $76
	dec  b                                           ; $7ae1: $05
	pop  de                                          ; $7ae2: $d1
	ld   d, h                                        ; $7ae3: $54
	ld   sp, hl                                      ; $7ae4: $f9
	dec  c                                           ; $7ae5: $0d
	nop                                              ; $7ae6: $00
	ld   a, [bc]                                     ; $7ae7: $0a
	add  hl, de                                      ; $7ae8: $19
	dec  b                                           ; $7ae9: $05
	ld   [bc], a                                     ; $7aea: $02
	dec  b                                           ; $7aeb: $05
	pop  de                                          ; $7aec: $d1
	ld   d, h                                        ; $7aed: $54
	nop                                              ; $7aee: $00
	nop                                              ; $7aef: $00
	dec  b                                           ; $7af0: $05
	pop  de                                          ; $7af1: $d1
	sbc  l                                           ; $7af2: $9d
	ld   a, b                                        ; $7af3: $78
	ld   d, d                                        ; $7af4: $52
	nop                                              ; $7af5: $00
	ld   bc, $0207                                   ; $7af6: $01 $07 $02
	add  hl, bc                                      ; $7af9: $09
	ld   [bc], a                                     ; $7afa: $02
	inc  bc                                          ; $7afb: $03
	ld   bc, $2000                                   ; $7afc: $01 $00 $20
	nop                                              ; $7aff: $00
	rlca                                             ; $7b00: $07
	dec  a                                           ; $7b01: $3d
	add  hl, bc                                      ; $7b02: $09
	ld   [bc], a                                     ; $7b03: $02
	inc  bc                                          ; $7b04: $03
	ld   bc, $2001                                   ; $7b05: $01 $01 $20
	nop                                              ; $7b08: $00
	ld   b, $7f                                      ; $7b09: $06 $7f
	add  hl, bc                                      ; $7b0b: $09
	rrca                                             ; $7b0c: $0f
	nop                                              ; $7b0d: $00
	ld   bc, $0501                                   ; $7b0e: $01 $01 $05
	pop  de                                          ; $7b11: $d1
	ld   d, d                                        ; $7b12: $52
	adc  h                                           ; $7b13: $8c
	ld   h, a                                        ; $7b14: $67
	sbc  a                                           ; $7b15: $9f
	dec  c                                           ; $7b16: $0d
	nop                                              ; $7b17: $00
	ld   a, [bc]                                     ; $7b18: $0a
	inc  e                                           ; $7b19: $1c
	dec  b                                           ; $7b1a: $05
	ld   bc, $1d01                                   ; $7b1b: $01 $01 $1d
	ld   b, b                                        ; $7b1e: $40
	dec  d                                           ; $7b1f: $15
	inc  bc                                          ; $7b20: $03
	dec  d                                           ; $7b21: $15
	ld   bc, $2803                                   ; $7b22: $01 $03 $28
	nop                                              ; $7b25: $00
	ld   bc, $f5dc                                   ; $7b26: $01 $dc $f5
	rst  JumpTable                                         ; $7b29: $df
	ld   e, c                                        ; $7b2a: $59
	ld   sp, hl                                      ; $7b2b: $f9
	dec  c                                           ; $7b2c: $0d
	ld   a, b                                        ; $7b2d: $78
	and  c                                           ; $7b2e: $a1
	ld   e, c                                        ; $7b2f: $59
	sbc  [hl]                                        ; $7b30: $9e
	ld   [$7d00], sp                                 ; $7b31: $08 $00 $7d
	and  c                                           ; $7b34: $a1
	halt                                             ; $7b35: $76
	ld   a, l                                        ; $7b36: $7d
	dec  c                                           ; $7b37: $0d
	dec  b                                           ; $7b38: $05
	jr   nz, jr_04a_7b8b                             ; $7b39: $20 $50

	ld   d, d                                        ; $7b3b: $52
	ld   l, e                                        ; $7b3c: $6b
	ld   d, h                                        ; $7b3d: $54
	sub  d                                           ; $7b3e: $92
	ld   a, b                                        ; $7b3f: $78
	sbc  a                                           ; $7b40: $9f
	dec  c                                           ; $7b41: $0d
	nop                                              ; $7b42: $00
	ld   a, [bc]                                     ; $7b43: $0a
	ld   b, $b4                                      ; $7b44: $06 $b4
	add  hl, bc                                      ; $7b46: $09
	rrca                                             ; $7b47: $0f
	nop                                              ; $7b48: $00
	ld   bc, $0501                                   ; $7b49: $01 $01 $05
	pop  de                                          ; $7b4c: $d1
	ld   d, d                                        ; $7b4d: $52
	adc  h                                           ; $7b4e: $8c
	ld   l, c                                        ; $7b4f: $69
	and  c                                           ; $7b50: $a1
	sbc  a                                           ; $7b51: $9f
	dec  c                                           ; $7b52: $0d
	nop                                              ; $7b53: $00
	ld   a, [bc]                                     ; $7b54: $0a
	inc  e                                           ; $7b55: $1c
	dec  b                                           ; $7b56: $05
	ld   [bc], a                                     ; $7b57: $02
	ld   [bc], a                                     ; $7b58: $02
	dec  e                                           ; $7b59: $1d
	ld   b, b                                        ; $7b5a: $40
	dec  d                                           ; $7b5b: $15
	inc  bc                                          ; $7b5c: $03
	dec  d                                           ; $7b5d: $15
	ld   bc, $2901                                   ; $7b5e: $01 $01 $29
	nop                                              ; $7b61: $00
	ld   bc, $a178                                   ; $7b62: $01 $78 $a1
	sub  d                                           ; $7b65: $92
	rst  $38                                         ; $7b66: $ff
	rst  $38                                         ; $7b67: $ff
	ld   [hl], d                                     ; $7b68: $72
	adc  h                                           ; $7b69: $8c
	sub  a                                           ; $7b6a: $97
	and  c                                           ; $7b6b: $a1
	ld   a, b                                        ; $7b6c: $78
	ld   c, a                                        ; $7b6d: $4f
	rst  $38                                         ; $7b6e: $ff
	rst  $38                                         ; $7b6f: $ff
	dec  c                                           ; $7b70: $0d
	ld   h, c                                        ; $7b71: $61
	sbc  d                                           ; $7b72: $9a
	ld   e, c                                        ; $7b73: $59
	sub  a                                           ; $7b74: $97
	ld   a, l                                        ; $7b75: $7d
	ld   [bc], a                                     ; $7b76: $02
	add  h                                           ; $7b77: $84
	ld   [bc], a                                     ; $7b78: $02
	and  d                                           ; $7b79: $a2
	ld   a, h                                        ; $7b7a: $7c
	inc  bc                                          ; $7b7b: $03
	ld   l, a                                        ; $7b7c: $6f
	inc  bc                                          ; $7b7d: $03
	sbc  $92                                         ; $7b7e: $de $92
	ld   a, h                                        ; $7b80: $7c
	ld   a, c                                        ; $7b81: $79
	sbc  a                                           ; $7b82: $9f
	dec  c                                           ; $7b83: $0d
	nop                                              ; $7b84: $00
	ld   a, [bc]                                     ; $7b85: $0a
	ld   b, $b4                                      ; $7b86: $06 $b4
	add  hl, bc                                      ; $7b88: $09
	inc  e                                           ; $7b89: $1c
	dec  b                                           ; $7b8a: $05

jr_04a_7b8b:
	ld   [bc], a                                     ; $7b8b: $02
	ld   [bc], a                                     ; $7b8c: $02
	dec  e                                           ; $7b8d: $1d
	ld   b, b                                        ; $7b8e: $40
	dec  d                                           ; $7b8f: $15
	inc  bc                                          ; $7b90: $03
	dec  d                                           ; $7b91: $15
	ld   bc, $2902                                   ; $7b92: $01 $02 $29
	nop                                              ; $7b95: $00
	ld   bc, $9403                                   ; $7b96: $01 $03 $94
	inc  b                                           ; $7b99: $04
	sbc  [hl]                                        ; $7b9a: $9e
	ld   a, h                                        ; $7b9b: $7c
	ld   [bc], a                                     ; $7b9c: $02
	ld   h, l                                        ; $7b9d: $65
	ld   d, [hl]                                     ; $7b9e: $56
	ld   a, l                                        ; $7b9f: $7d
	sbc  [hl]                                        ; $7ba0: $9e
	ld   l, a                                        ; $7ba1: $6f
	sub  c                                           ; $7ba2: $91
	and  c                                           ; $7ba3: $a1
	halt                                             ; $7ba4: $76
	dec  c                                           ; $7ba5: $0d
	ld   [bc], a                                     ; $7ba6: $02
	sbc  l                                           ; $7ba7: $9d
	ld   [hl], c                                     ; $7ba8: $71
	ld   l, l                                        ; $7ba9: $6d
	adc  c                                           ; $7baa: $89
	ld   d, h                                        ; $7bab: $54
	ld   e, d                                        ; $7bac: $5a
	ld   d, [hl]                                     ; $7bad: $56
	ld   d, [hl]                                     ; $7bae: $56
	ld   [hl], l                                     ; $7baf: $75
	rst  $38                                         ; $7bb0: $ff
	rst  $38                                         ; $7bb1: $ff
	dec  c                                           ; $7bb2: $0d
	ld   h, d                                        ; $7bb3: $62
	ld   e, c                                        ; $7bb4: $59
	ld   d, d                                        ; $7bb5: $52
	ld   a, h                                        ; $7bb6: $7c
	sub  b                                           ; $7bb7: $90
	halt                                             ; $7bb8: $76
	sub  d                                           ; $7bb9: $92
	sbc  a                                           ; $7bba: $9f
	dec  c                                           ; $7bbb: $0d
	nop                                              ; $7bbc: $00
	ld   a, [bc]                                     ; $7bbd: $0a
	inc  e                                           ; $7bbe: $1c
	inc  b                                           ; $7bbf: $04
	nop                                              ; $7bc0: $00
	nop                                              ; $7bc1: $00
	ld   bc, $567b                                   ; $7bc2: $01 $7b $56
	ld   a, e                                        ; $7bc5: $7b
	ld   d, [hl]                                     ; $7bc6: $56
	sbc  [hl]                                        ; $7bc7: $9e
	and  e                                           ; $7bc8: $a3
	and  l                                           ; $7bc9: $a5
	db   $ec                                         ; $7bca: $ec
	cp   d                                           ; $7bcb: $ba
	sub  b                                           ; $7bcc: $90
	dec  c                                           ; $7bcd: $0d
	ld   h, l                                        ; $7bce: $65
	ld   [hl], d                                     ; $7bcf: $72
	sub  b                                           ; $7bd0: $90
	and  c                                           ; $7bd1: $a1
	ld   h, l                                        ; $7bd2: $65
	ld   l, l                                        ; $7bd3: $6d
	ei                                               ; $7bd4: $fb
	ld   d, d                                        ; $7bd5: $52
	ld   a, [$000d]                                  ; $7bd6: $fa $0d $00
	ld   a, [bc]                                     ; $7bd9: $0a
	ld   b, $d3                                      ; $7bda: $06 $d3
	add  hl, bc                                      ; $7bdc: $09
	ld   bc, $526f                                   ; $7bdd: $01 $6f $52
	ld   [bc], a                                     ; $7be0: $02
	inc  de                                          ; $7be1: $13
	ld   l, a                                        ; $7be2: $6f
	sub  c                                           ; $7be3: $91
	and  c                                           ; $7be4: $a1
	ld   [hl], h                                     ; $7be5: $74
	dec  c                                           ; $7be6: $0d
	ld   e, b                                        ; $7be7: $58
	ld   [bc], a                                     ; $7be8: $02
	inc  de                                          ; $7be9: $13
	ld   l, a                                        ; $7bea: $6f
	sub  c                                           ; $7beb: $91
	and  c                                           ; $7bec: $a1
	adc  l                                           ; $7bed: $8d
	ld   l, l                                        ; $7bee: $6d
	ld   d, d                                        ; $7bef: $52
	ld   a, c                                        ; $7bf0: $79
	dec  c                                           ; $7bf1: $0d
	ld   a, b                                        ; $7bf2: $78
	sbc  b                                           ; $7bf3: $98
	ld   l, l                                        ; $7bf4: $6d
	ld   d, d                                        ; $7bf5: $52
	ld   a, h                                        ; $7bf6: $7c
	ld   sp, hl                                      ; $7bf7: $f9
	dec  c                                           ; $7bf8: $0d
	nop                                              ; $7bf9: $00
	ld   a, [bc]                                     ; $7bfa: $0a
	add  hl, de                                      ; $7bfb: $19
	dec  b                                           ; $7bfc: $05
	inc  bc                                          ; $7bfd: $03
	ld   l, e                                        ; $7bfe: $6b
	ld   d, h                                        ; $7bff: $54
	ld   l, [hl]                                     ; $7c00: $6e
	sub  [hl]                                        ; $7c01: $96
	nop                                              ; $7c02: $00
	nop                                              ; $7c03: $00
	ld   l, a                                        ; $7c04: $6f
	ld   e, d                                        ; $7c05: $5a
	ld   d, h                                        ; $7c06: $54
	sub  [hl]                                        ; $7c07: $96
	nop                                              ; $7c08: $00
	ld   bc, $0258                                   ; $7c09: $01 $58 $02
	inc  de                                          ; $7c0c: $13
	ld   l, a                                        ; $7c0d: $6f
	sub  c                                           ; $7c0e: $91
	and  c                                           ; $7c0f: $a1
	ld   [hl], h                                     ; $7c10: $74
	sbc  [hl]                                        ; $7c11: $9e
	ld   l, [hl]                                     ; $7c12: $6e
	sbc  d                                           ; $7c13: $9a
	ld   sp, hl                                      ; $7c14: $f9
	nop                                              ; $7c15: $00
	ld   [bc], a                                     ; $7c16: $02
	rlca                                             ; $7c17: $07
	dec  hl                                          ; $7c18: $2b
	ld   a, [bc]                                     ; $7c19: $0a
	ld   [bc], a                                     ; $7c1a: $02
	inc  bc                                          ; $7c1b: $03
	ld   bc, $2000                                   ; $7c1c: $01 $00 $20
	nop                                              ; $7c1f: $00
	rlca                                             ; $7c20: $07
	ld   h, [hl]                                     ; $7c21: $66
	ld   a, [bc]                                     ; $7c22: $0a
	ld   [bc], a                                     ; $7c23: $02
	inc  bc                                          ; $7c24: $03
	ld   bc, $2001                                   ; $7c25: $01 $01 $20
	nop                                              ; $7c28: $00
	rlca                                             ; $7c29: $07
	db   $dd                                         ; $7c2a: $dd
	ld   a, [bc]                                     ; $7c2b: $0a
	ld   [bc], a                                     ; $7c2c: $02
	inc  bc                                          ; $7c2d: $03
	ld   bc, $2002                                   ; $7c2e: $01 $02 $20
	nop                                              ; $7c31: $00
	ld   b, $22                                      ; $7c32: $06 $22
	dec  bc                                          ; $7c34: $0b
	rrca                                             ; $7c35: $0f
	nop                                              ; $7c36: $00
	ld   bc, $6b01                                   ; $7c37: $01 $01 $6b
	ld   d, h                                        ; $7c3a: $54
	ld   l, [hl]                                     ; $7c3b: $6e
	sub  [hl]                                        ; $7c3c: $96
	sbc  a                                           ; $7c3d: $9f
	dec  c                                           ; $7c3e: $0d
	nop                                              ; $7c3f: $00
	ld   a, [bc]                                     ; $7c40: $0a
	inc  e                                           ; $7c41: $1c
	inc  b                                           ; $7c42: $04
	ld   bc, $1d01                                   ; $7c43: $01 $01 $1d
	ld   b, b                                        ; $7c46: $40
	inc  d                                           ; $7c47: $14
	inc  bc                                          ; $7c48: $03
	inc  d                                           ; $7c49: $14
	ld   bc, $2803                                   ; $7c4a: $01 $03 $28
	nop                                              ; $7c4d: $00
	ld   bc, $546b                                   ; $7c4e: $01 $6b $54
	ld   a, b                                        ; $7c51: $78

Call_04a_7c52:
	and  c                                           ; $7c52: $a1
	ld   l, [hl]                                     ; $7c53: $6e
	ei                                               ; $7c54: $fb
	ld   a, [$660d]                                  ; $7c55: $fa $0d $66
	sub  c                                           ; $7c58: $91
	sbc  [hl]                                        ; $7c59: $9e
	and  e                                           ; $7c5a: $a3
	and  l                                           ; $7c5b: $a5
	db   $ec                                         ; $7c5c: $ec
	cp   d                                           ; $7c5d: $ba
	dec  c                                           ; $7c5e: $0d
	ld   e, b                                        ; $7c5f: $58
	ld   d, h                                        ; $7c60: $54
	ld   d, [hl]                                     ; $7c61: $56
	and  c                                           ; $7c62: $a1
	ld   h, l                                        ; $7c63: $65
	ld   [hl], h                                     ; $7c64: $74
	ld   d, b                                        ; $7c65: $50
	ld   h, b                                        ; $7c66: $60
	sbc  c                                           ; $7c67: $99
	ld   a, e                                        ; $7c68: $7b
	ld   a, [$000d]                                  ; $7c69: $fa $0d $00
	ld   a, [bc]                                     ; $7c6c: $0a
	ld   b, $65                                      ; $7c6d: $06 $65
	dec  bc                                          ; $7c6f: $0b
	rrca                                             ; $7c70: $0f
	nop                                              ; $7c71: $00
	ld   bc, $6f01                                   ; $7c72: $01 $01 $6f
	ld   e, d                                        ; $7c75: $5a
	ld   d, h                                        ; $7c76: $54
	sub  [hl]                                        ; $7c77: $96
	sbc  a                                           ; $7c78: $9f
	dec  c                                           ; $7c79: $0d
	nop                                              ; $7c7a: $00
	ld   a, [bc]                                     ; $7c7b: $0a
	inc  e                                           ; $7c7c: $1c
	inc  b                                           ; $7c7d: $04
	ld   b, $06                                      ; $7c7e: $06 $06
	ld   bc, $fb56                                   ; $7c80: $01 $56 $fb
	ld   sp, hl                                      ; $7c83: $f9
	dec  c                                           ; $7c84: $0d
	ld   l, a                                        ; $7c85: $6f
	ld   e, d                                        ; $7c86: $5a
	ld   d, h                                        ; $7c87: $54
	ld   a, h                                        ; $7c88: $7c
	ei                                               ; $7c89: $fb
	ld   sp, hl                                      ; $7c8a: $f9
	dec  c                                           ; $7c8b: $0d
	nop                                              ; $7c8c: $00
	ld   a, [bc]                                     ; $7c8d: $0a
	rrca                                             ; $7c8e: $0f
	add  hl, bc                                      ; $7c8f: $09
	ld   bc, $7d01                                   ; $7c90: $01 $01 $7d
	ld   a, l                                        ; $7c93: $7d
	ld   a, l                                        ; $7c94: $7d
	rst  $38                                         ; $7c95: $ff
	rst  $38                                         ; $7c96: $ff
	dec  c                                           ; $7c97: $0d
	adc  h                                           ; $7c98: $8c
	ld   d, b                                        ; $7c99: $50
	sbc  [hl]                                        ; $7c9a: $9e
	dec  b                                           ; $7c9b: $05
	ld   [hl], e                                     ; $7c9c: $73
	ld   a, b                                        ; $7c9d: $78
	and  c                                           ; $7c9e: $a1
	ld   e, c                                        ; $7c9f: $59
	inc  b                                           ; $7ca0: $04
	call nc, $1f06                                   ; $7ca1: $d4 $06 $1f
	ld   a, c                                        ; $7ca4: $79

Jump_04a_7ca5:
	ld   h, l                                        ; $7ca5: $65
	ld   [hl], h                                     ; $7ca6: $74
	sub  b                                           ; $7ca7: $90
	dec  c                                           ; $7ca8: $0d
	ld   h, l                                        ; $7ca9: $65
	sub  l                                           ; $7caa: $95
	ld   d, h                                        ; $7cab: $54
	ld   e, d                                        ; $7cac: $5a
	ld   a, b                                        ; $7cad: $78
	ld   d, d                                        ; $7cae: $52
	ld   h, l                                        ; $7caf: $65
	ld   a, b                                        ; $7cb0: $78
	rst  $38                                         ; $7cb1: $ff
	rst  $38                                         ; $7cb2: $ff
	dec  c                                           ; $7cb3: $0d
	nop                                              ; $7cb4: $00
	ld   a, [bc]                                     ; $7cb5: $0a
	inc  e                                           ; $7cb6: $1c
	inc  b                                           ; $7cb7: $04
	rlca                                             ; $7cb8: $07
	rlca                                             ; $7cb9: $07
	dec  e                                           ; $7cba: $1d
	ld   b, b                                        ; $7cbb: $40
	inc  d                                           ; $7cbc: $14
	inc  bc                                          ; $7cbd: $03
	inc  d                                           ; $7cbe: $14
	ld   bc, $2902                                   ; $7cbf: $01 $02 $29
	nop                                              ; $7cc2: $00
	ld   bc, $fb6e                                   ; $7cc3: $01 $6e $fb
	adc  a                                           ; $7cc6: $8f
	ld   a, [$580d]                                  ; $7cc7: $fa $0d $58
	ld   [bc], a                                     ; $7cca: $02
	inc  de                                          ; $7ccb: $13
	ld   l, a                                        ; $7ccc: $6f
	sub  c                                           ; $7ccd: $91
	and  c                                           ; $7cce: $a1
	adc  l                                           ; $7ccf: $8d
	ld   l, l                                        ; $7cd0: $6d
	ld   d, d                                        ; $7cd1: $52
	ld   a, c                                        ; $7cd2: $79
	dec  c                                           ; $7cd3: $0d
	ld   a, b                                        ; $7cd4: $78
	ld   [hl], c                                     ; $7cd5: $71
	ld   [hl], h                                     ; $7cd6: $74
	ld   e, l                                        ; $7cd7: $5d
	sbc  d                                           ; $7cd8: $9a
	ld   a, b                                        ; $7cd9: $78
	ld   e, l                                        ; $7cda: $5d
	ld   l, a                                        ; $7cdb: $6f
	sub  c                                           ; $7cdc: $91
	and  $c1                                         ; $7cdd: $e6 $c1
	ei                                               ; $7cdf: $fb
	ld   a, [$000d]                                  ; $7ce0: $fa $0d $00
	ld   a, [bc]                                     ; $7ce3: $0a
	ld   b, $65                                      ; $7ce4: $06 $65
	dec  bc                                          ; $7ce6: $0b
	rrca                                             ; $7ce7: $0f
	nop                                              ; $7ce8: $00
	ld   bc, $5801                                   ; $7ce9: $01 $01 $58
	ld   [bc], a                                     ; $7cec: $02
	inc  de                                          ; $7ced: $13
	ld   l, a                                        ; $7cee: $6f
	sub  c                                           ; $7cef: $91
	and  c                                           ; $7cf0: $a1
	ld   [hl], h                                     ; $7cf1: $74
	sbc  [hl]                                        ; $7cf2: $9e
	ld   l, [hl]                                     ; $7cf3: $6e
	sbc  d                                           ; $7cf4: $9a
	ld   sp, hl                                      ; $7cf5: $f9
	dec  c                                           ; $7cf6: $0d
	nop                                              ; $7cf7: $00
	ld   a, [bc]                                     ; $7cf8: $0a
	inc  e                                           ; $7cf9: $1c
	inc  b                                           ; $7cfa: $04
	ld   bc, $0101                                   ; $7cfb: $01 $01 $01
	ld   e, b                                        ; $7cfe: $58
	ld   [bc], a                                     ; $7cff: $02
	inc  de                                          ; $7d00: $13
	ld   l, a                                        ; $7d01: $6f
	sub  c                                           ; $7d02: $91
	and  c                                           ; $7d03: $a1
	ld   a, l                                        ; $7d04: $7d
	sbc  [hl]                                        ; $7d05: $9e
	dec  c                                           ; $7d06: $0d
	ld   e, b                                        ; $7d07: $58
	ld   [bc], a                                     ; $7d08: $02
	inc  de                                          ; $7d09: $13
	ld   l, a                                        ; $7d0a: $6f
	sub  c                                           ; $7d0b: $91
	and  c                                           ; $7d0c: $a1
	ld   l, [hl]                                     ; $7d0d: $6e
	sub  [hl]                                        ; $7d0e: $96
	sbc  a                                           ; $7d0f: $9f
	dec  c                                           ; $7d10: $0d
	nop                                              ; $7d11: $00
	ld   a, [bc]                                     ; $7d12: $0a
	rrca                                             ; $7d13: $0f
	add  hl, bc                                      ; $7d14: $09
	inc  b                                           ; $7d15: $04
	ld   bc, $8c67                                   ; $7d16: $01 $67 $8c
	and  c                                           ; $7d19: $a1
	rst  $38                                         ; $7d1a: $ff
	rst  $38                                         ; $7d1b: $ff
	dec  c                                           ; $7d1c: $0d
	dec  b                                           ; $7d1d: $05
	ld   [hl], e                                     ; $7d1e: $73
	ld   a, h                                        ; $7d1f: $7c
	ld   h, c                                        ; $7d20: $61
	halt                                             ; $7d21: $76
	ld   a, b                                        ; $7d22: $78
	and  c                                           ; $7d23: $a1
	ld   l, [hl]                                     ; $7d24: $6e
	sbc  a                                           ; $7d25: $9f
	dec  c                                           ; $7d26: $0d
	nop                                              ; $7d27: $00
	ld   a, [bc]                                     ; $7d28: $0a
	ld   b, $65                                      ; $7d29: $06 $65
	dec  bc                                          ; $7d2b: $0b
	inc  e                                           ; $7d2c: $1c
	inc  b                                           ; $7d2d: $04
	ld   [bc], a                                     ; $7d2e: $02
	ld   [bc], a                                     ; $7d2f: $02
	dec  e                                           ; $7d30: $1d
	ld   b, b                                        ; $7d31: $40
	inc  d                                           ; $7d32: $14
	inc  bc                                          ; $7d33: $03
	inc  d                                           ; $7d34: $14
	ld   bc, $2901                                   ; $7d35: $01 $01 $29
	nop                                              ; $7d38: $00
	ld   bc, $a178                                   ; $7d39: $01 $78 $a1
	ld   [hl], l                                     ; $7d3c: $75
	ld   l, [hl]                                     ; $7d3d: $6e
	adc  h                                           ; $7d3e: $8c
	ld   [hl], c                                     ; $7d3f: $71
	ld   l, a                                        ; $7d40: $6f
	sub  c                                           ; $7d41: $91
	ld   d, h                                        ; $7d42: $54
	ld   a, h                                        ; $7d43: $7c
	ld   sp, hl                                      ; $7d44: $f9
	dec  c                                           ; $7d45: $0d
	nop                                              ; $7d46: $00
	ld   a, [bc]                                     ; $7d47: $0a
	rrca                                             ; $7d48: $0f
	add  hl, bc                                      ; $7d49: $09
	ld   bc, $7d01                                   ; $7d4a: $01 $01 $7d
	ld   a, l                                        ; $7d4d: $7d
	ld   a, l                                        ; $7d4e: $7d
	rst  $38                                         ; $7d4f: $ff
	rst  $38                                         ; $7d50: $ff
	pop  bc                                          ; $7d51: $c1
	db   $e3                                         ; $7d52: $e3
	ld   l, [hl]                                     ; $7d53: $6e
	sub  [hl]                                        ; $7d54: $96
	and  e                                           ; $7d55: $a3
	and  l                                           ; $7d56: $a5
	db   $ec                                         ; $7d57: $ec
	cp   d                                           ; $7d58: $ba
	sbc  a                                           ; $7d59: $9f
	dec  c                                           ; $7d5a: $0d
	ld   [$5d00], sp                                 ; $7d5b: $08 $00 $5d
	and  c                                           ; $7d5e: $a1
	ld   e, d                                        ; $7d5f: $5a
	dec  c                                           ; $7d60: $0d
	ld   h, c                                        ; $7d61: $61
	adc  h                                           ; $7d62: $8c
	ld   [hl], c                                     ; $7d63: $71
	ld   [hl], h                                     ; $7d64: $74
	sbc  c                                           ; $7d65: $99
	ld   h, [hl]                                     ; $7d66: $66
	sub  c                                           ; $7d67: $91
	ld   a, b                                        ; $7d68: $78
	ld   d, d                                        ; $7d69: $52
	ld   e, c                                        ; $7d6a: $59
	sbc  a                                           ; $7d6b: $9f
	dec  c                                           ; $7d6c: $0d
	nop                                              ; $7d6d: $00
	ld   a, [bc]                                     ; $7d6e: $0a
	inc  e                                           ; $7d6f: $1c
	dec  bc                                          ; $7d70: $0b
	ld   hl, $010d                                   ; $7d71: $21 $0d $01
	add  e                                           ; $7d74: $83
	add  e                                           ; $7d75: $83
	rst  $38                                         ; $7d76: $ff
	rst  $38                                         ; $7d77: $ff
	dec  c                                           ; $7d78: $0d
	ld   [$5d00], sp                                 ; $7d79: $08 $00 $5d
	and  c                                           ; $7d7c: $a1
	sub  b                                           ; $7d7d: $90
	inc  bc                                          ; $7d7e: $03
	add  d                                           ; $7d7f: $82
	ld   [bc], a                                     ; $7d80: $02
	and  c                                           ; $7d81: $a1
	inc  bc                                          ; $7d82: $03
	or   b                                           ; $7d83: $b0
	ld   a, e                                        ; $7d84: $7b
	sbc  a                                           ; $7d85: $9f
	dec  c                                           ; $7d86: $0d
	nop                                              ; $7d87: $00
	ld   a, [bc]                                     ; $7d88: $0a
	inc  e                                           ; $7d89: $1c
	ld   a, [bc]                                     ; $7d8a: $0a
	ld   bc, $0101                                   ; $7d8b: $01 $01 $01
	ld   l, e                                        ; $7d8e: $6b
	ld   d, h                                        ; $7d8f: $54
	ld   [hl], l                                     ; $7d90: $75
	ld   a, b                                        ; $7d91: $78
	ld   e, e                                        ; $7d92: $5b
	sub  c                                           ; $7d93: $91
	sbc  [hl]                                        ; $7d94: $9e
	inc  b                                           ; $7d95: $04
	dec  c                                           ; $7d96: $0d
	ld   [bc], a                                     ; $7d97: $02
	sub  [hl]                                        ; $7d98: $96
	inc  b                                           ; $7d99: $04
	ld   b, l                                        ; $7d9a: $45
	inc  b                                           ; $7d9b: $04
	ld   a, [bc]                                     ; $7d9c: $0a
	ld   a, b                                        ; $7d9d: $78
	and  c                                           ; $7d9e: $a1
	ld   e, c                                        ; $7d9f: $59
	dec  c                                           ; $7da0: $0d
	ld   [hl], l                                     ; $7da1: $75
	ld   e, e                                        ; $7da2: $5b
	ld   a, e                                        ; $7da3: $7b
	ld   d, [hl]                                     ; $7da4: $56
	sub  [hl]                                        ; $7da5: $96
	sbc  a                                           ; $7da6: $9f
	dec  c                                           ; $7da7: $0d
	nop                                              ; $7da8: $00
	ld   a, [bc]                                     ; $7da9: $0a
	inc  e                                           ; $7daa: $1c
	inc  c                                           ; $7dab: $0c
	ld   bc, $0101                                   ; $7dac: $01 $01 $01
	ld   e, d                                        ; $7daf: $5a
	and  c                                           ; $7db0: $a1
	ld   a, [hl]                                     ; $7db1: $7e
	ld   [hl], c                                     ; $7db2: $71
	ld   [hl], h                                     ; $7db3: $74
	ld   e, l                                        ; $7db4: $5d
	ld   l, [hl]                                     ; $7db5: $6e
	ld   h, e                                        ; $7db6: $63
	ld   d, d                                        ; $7db7: $52
	ld   a, e                                        ; $7db8: $7b
	sbc  a                                           ; $7db9: $9f
	dec  c                                           ; $7dba: $0d
	nop                                              ; $7dbb: $00
	ld   a, [bc]                                     ; $7dbc: $0a
	inc  e                                           ; $7dbd: $1c
	dec  c                                           ; $7dbe: $0d
	ld   bc, $0101                                   ; $7dbf: $01 $01 $01
	ld   d, b                                        ; $7dc2: $50
	ld   l, l                                        ; $7dc3: $6d
	ld   h, l                                        ; $7dc4: $65
	ld   l, l                                        ; $7dc5: $6d
	ld   l, a                                        ; $7dc6: $6f
	sub  b                                           ; $7dc7: $90
	dec  c                                           ; $7dc8: $0d
	ld   e, b                                        ; $7dc9: $58
	ld   d, h                                        ; $7dca: $54
	ld   d, [hl]                                     ; $7dcb: $56
	and  c                                           ; $7dcc: $a1
	ld   h, a                                        ; $7dcd: $67
	sbc  c                                           ; $7dce: $99
	ld   e, c                                        ; $7dcf: $59
	sub  a                                           ; $7dd0: $97
	ld   a, e                                        ; $7dd1: $7b
	sbc  a                                           ; $7dd2: $9f
	dec  c                                           ; $7dd3: $0d
	nop                                              ; $7dd4: $00
	ld   a, [bc]                                     ; $7dd5: $0a
	inc  e                                           ; $7dd6: $1c
	ld   c, $01                                      ; $7dd7: $0e $01
	ld   bc, $d601                                   ; $7dd9: $01 $01 $d6
	and  d                                           ; $7ddc: $a2
	and  l                                           ; $7ddd: $a5
	ret                                              ; $7dde: $c9


	ld   [hl], l                                     ; $7ddf: $75
	ld   h, a                                        ; $7de0: $67
	sub  [hl]                                        ; $7de1: $96
	sbc  a                                           ; $7de2: $9f
	dec  c                                           ; $7de3: $0d
	nop                                              ; $7de4: $00
	ld   a, [bc]                                     ; $7de5: $0a
	inc  e                                           ; $7de6: $1c
	ld   a, [bc]                                     ; $7de7: $0a
	ld   bc, $0101                                   ; $7de8: $01 $01 $01
	sub  [hl]                                        ; $7deb: $96
	ld   h, l                                        ; $7dec: $65
	ld   a, [$6110]                                  ; $7ded: $fa $10 $61
	ld   h, c                                        ; $7df0: $61
	ld   a, l                                        ; $7df1: $7d
	ld   [bc], a                                     ; $7df2: $02
	jr   nz, jr_04a_7df9                             ; $7df3: $20 $04

	ld   e, [hl]                                     ; $7df5: $5e
	sbc  [hl]                                        ; $7df6: $9e
	dec  b                                           ; $7df7: $05
	ld   [hl], e                                     ; $7df8: $73

jr_04a_7df9:
	ld   e, d                                        ; $7df9: $5a
	dec  c                                           ; $7dfa: $0d
	ld   [$7c00], sp                                 ; $7dfb: $08 $00 $7c
	ld   l, l                                        ; $7dfe: $6d
	adc  a                                           ; $7dff: $8f
	ld   a, c                                        ; $7e00: $79
	ld   b, $37                                      ; $7e01: $06 $37
	ld   [bc], a                                     ; $7e03: $02
	adc  [hl]                                        ; $7e04: $8e
	and  b                                           ; $7e05: $a0
	dec  c                                           ; $7e06: $0d
	add  b                                           ; $7e07: $80
	sbc  e                                           ; $7e08: $9b
	ld   d, h                                        ; $7e09: $54
	ld   h, l                                        ; $7e0a: $65
	ld   [hl], h                                     ; $7e0b: $74
	sub  d                                           ; $7e0c: $92
	sbc  e                                           ; $7e0d: $9b
	ld   d, h                                        ; $7e0e: $54
	ld   a, [$000d]                                  ; $7e0f: $fa $0d $00
	ld   a, [bc]                                     ; $7e12: $0a
	rrca                                             ; $7e13: $0f
	nop                                              ; $7e14: $00
	ld   bc, $0013                                   ; $7e15: $01 $13 $00
	inc  d                                           ; $7e18: $14
	ld   c, h                                        ; $7e19: $4c
	nop                                              ; $7e1a: $00
	ld   bc, $fbd4                                   ; $7e1b: $01 $d4 $fb
	ld   a, [$d410]                                  ; $7e1e: $fa $10 $d4
	ei                                               ; $7e21: $fb
	ld   a, [$d410]                                  ; $7e22: $fa $10 $d4
	ei                                               ; $7e25: $fb
	ld   a, [$000d]                                  ; $7e26: $fa $0d $00
	ld   a, [bc]                                     ; $7e29: $0a
	dec  c                                           ; $7e2a: $0d
	ld   a, [bc]                                     ; $7e2b: $0a
	inc  bc                                          ; $7e2c: $03
	rrca                                             ; $7e2d: $0f
	add  hl, bc                                      ; $7e2e: $09
	dec  bc                                          ; $7e2f: $0b
	ld   bc, $525f                                   ; $7e30: $01 $5f $52
	adc  c                                           ; $7e33: $89
	ld   d, h                                        ; $7e34: $54
	ld   sp, hl                                      ; $7e35: $f9
	dec  c                                           ; $7e36: $0d
	nop                                              ; $7e37: $00
	ld   a, [bc]                                     ; $7e38: $0a
	inc  e                                           ; $7e39: $1c
	ld   a, [bc]                                     ; $7e3a: $0a
	ld   [bc], a                                     ; $7e3b: $02
	ld   [bc], a                                     ; $7e3c: $02
	ld   bc, $9250                                   ; $7e3d: $01 $50 $92
	adc  a                                           ; $7e40: $8f
	ld   e, l                                        ; $7e41: $5d
	and  c                                           ; $7e42: $a1
	ld   a, [$650d]                                  ; $7e43: $fa $0d $65
	ld   e, e                                        ; $7e46: $5b
	sub  e                                           ; $7e47: $93
	ld   d, h                                        ; $7e48: $54
	sbc  [hl]                                        ; $7e49: $9e
	dec  b                                           ; $7e4a: $05
	pop  hl                                          ; $7e4b: $e1
	dec  b                                           ; $7e4c: $05
	add  e                                           ; $7e4d: $83
	and  b                                           ; $7e4e: $a0
	dec  c                                           ; $7e4f: $0d
	ld   e, c                                        ; $7e50: $59
	ld   e, l                                        ; $7e51: $5d
	ld   a, c                                        ; $7e52: $79
	and  c                                           ; $7e53: $a1
	ld   h, a                                        ; $7e54: $67
	sbc  c                                           ; $7e55: $99
	and  c                                           ; $7e56: $a1
	ld   l, [hl]                                     ; $7e57: $6e
	ld   a, [$000d]                                  ; $7e58: $fa $0d $00
	ld   a, [bc]                                     ; $7e5b: $0a
	rrca                                             ; $7e5c: $0f
	dec  bc                                          ; $7e5d: $0b
	ld   c, $01                                      ; $7e5e: $0e $01
	ld   a, l                                        ; $7e60: $7d
	ld   d, d                                        ; $7e61: $52
	ld   a, [$000d]                                  ; $7e62: $fa $0d $00
	ld   a, [bc]                                     ; $7e65: $0a
	inc  e                                           ; $7e66: $1c
	ld   a, [bc]                                     ; $7e67: $0a
	ld   [bc], a                                     ; $7e68: $02
	ld   [bc], a                                     ; $7e69: $02
	ld   bc, $5703                                   ; $7e6a: $01 $03 $57
	ld   [bc], a                                     ; $7e6d: $02
	nop                                              ; $7e6e: $00
	sbc  [hl]                                        ; $7e6f: $9e
	inc  bc                                          ; $7e70: $03
	ld   a, [hl+]                                    ; $7e71: $2a
	dec  b                                           ; $7e72: $05
	ld   bc, $4d03                                   ; $7e73: $01 $03 $4d
	ld   a, c                                        ; $7e76: $79
	inc  bc                                          ; $7e77: $03
	ld   h, d                                        ; $7e78: $62
	ld   [bc], a                                     ; $7e79: $02
	ld   a, e                                        ; $7e7a: $7b
	ld   l, c                                        ; $7e7b: $69
	sub  [hl]                                        ; $7e7c: $96
	ld   a, [$000d]                                  ; $7e7d: $fa $0d $00
	ld   a, [bc]                                     ; $7e80: $0a
	rrca                                             ; $7e81: $0f
	ld   bc, $0102                                   ; $7e82: $01 $02 $01
	dec  b                                           ; $7e85: $05
	nop                                              ; $7e86: $00
	ld   [bc], a                                     ; $7e87: $02
	or   h                                           ; $7e88: $b4
	ld   a, [$000d]                                  ; $7e89: $fa $0d $00
	ld   a, [bc]                                     ; $7e8c: $0a
	add  hl, de                                      ; $7e8d: $19
	inc  bc                                          ; $7e8e: $03
	ld   bc, $0005                                   ; $7e8f: $01 $05 $00
	ld   [bc], a                                     ; $7e92: $02
	or   h                                           ; $7e93: $b4
	ld   a, [rRAMG]                                  ; $7e94: $fa $00 $00
	rlca                                             ; $7e97: $07
	sbc  c                                           ; $7e98: $99
	inc  c                                           ; $7e99: $0c
	ld   [bc], a                                     ; $7e9a: $02
	inc  bc                                          ; $7e9b: $03
	ld   bc, $2000                                   ; $7e9c: $01 $00 $20
	nop                                              ; $7e9f: $00
	ld   b, $cc                                      ; $7ea0: $06 $cc
	inc  c                                           ; $7ea2: $0c
	rrca                                             ; $7ea3: $0f
	nop                                              ; $7ea4: $00
	ld   bc, $0c13                                   ; $7ea5: $01 $13 $0c
	ld   bc, $0005                                   ; $7ea8: $01 $05 $00
	ld   [bc], a                                     ; $7eab: $02
	or   h                                           ; $7eac: $b4
	ld   a, [$000d]                                  ; $7ead: $fa $0d $00
	ld   a, [bc]                                     ; $7eb0: $0a
	inc  e                                           ; $7eb1: $1c
	add  hl, bc                                      ; $7eb2: $09
	nop                                              ; $7eb3: $00
	nop                                              ; $7eb4: $00
	ld   bc, $6596                                   ; $7eb5: $01 $96 $65
	sbc  [hl]                                        ; $7eb8: $9e
	ld   [$5d00], sp                                 ; $7eb9: $08 $00 $5d
	and  c                                           ; $7ebc: $a1
	sbc  a                                           ; $7ebd: $9f
	dec  c                                           ; $7ebe: $0d
	dec  b                                           ; $7ebf: $05
	ld   [hl], e                                     ; $7ec0: $73
	ld   a, c                                        ; $7ec1: $79
	ld   [hl], d                                     ; $7ec2: $72
	ld   d, d                                        ; $7ec3: $52
	ld   [hl], h                                     ; $7ec4: $74
	ld   e, e                                        ; $7ec5: $5b
	ld   [hl], h                                     ; $7ec6: $74
	ld   e, l                                        ; $7ec7: $5d
	sbc  d                                           ; $7ec8: $9a
	sbc  a                                           ; $7ec9: $9f
	dec  c                                           ; $7eca: $0d
	nop                                              ; $7ecb: $00
	ld   a, [bc]                                     ; $7ecc: $0a
	dec  c                                           ; $7ecd: $0d
	nop                                              ; $7ece: $00
	nop                                              ; $7ecf: $00
	rrca                                             ; $7ed0: $0f
	nop                                              ; $7ed1: $00
	ld   bc, $f606                                   ; $7ed2: $01 $06 $f6
	inc  c                                           ; $7ed5: $0c
	inc  e                                           ; $7ed6: $1c
	add  hl, bc                                      ; $7ed7: $09
	ld   [bc], a                                     ; $7ed8: $02
	ld   [bc], a                                     ; $7ed9: $02
	ld   bc, $4904                                   ; $7eda: $01 $04 $49
	sub  d                                           ; $7edd: $92
	ld   [hl], c                                     ; $7ede: $71
	ld   [hl], h                                     ; $7edf: $74
	sbc  c                                           ; $7ee0: $99
	and  c                                           ; $7ee1: $a1
	ld   l, [hl]                                     ; $7ee2: $6e
	ld   a, [$030d]                                  ; $7ee3: $fa $0d $03
	ld   a, [hl+]                                    ; $7ee6: $2a
	dec  b                                           ; $7ee7: $05
	ld   bc, $4d03                                   ; $7ee8: $01 $03 $4d
	add  [hl]                                        ; $7eeb: $86
	ld   d, d                                        ; $7eec: $52
	ld   l, e                                        ; $7eed: $6b
	ld   e, [hl]                                     ; $7eee: $5e
	and  c                                           ; $7eef: $a1
	ld   l, [hl]                                     ; $7ef0: $6e
	ld   a, [$000d]                                  ; $7ef1: $fa $0d $00
	ld   a, [bc]                                     ; $7ef4: $0a
	dec  c                                           ; $7ef5: $0d
	nop                                              ; $7ef6: $00
	nop                                              ; $7ef7: $00
	rrca                                             ; $7ef8: $0f
	nop                                              ; $7ef9: $00
	ld   bc, $0c13                                   ; $7efa: $01 $13 $0c
	ld   b, $f6                                      ; $7efd: $06 $f6
	inc  c                                           ; $7eff: $0c
	inc  hl                                          ; $7f00: $23
	ld   h, e                                        ; $7f01: $63
	inc  e                                           ; $7f02: $1c
	ld   a, [bc]                                     ; $7f03: $0a
	ld   [hl+], a                                    ; $7f04: $22
	ld   c, $01                                      ; $7f05: $0e $01
	inc  bc                                          ; $7f07: $03
	ld   d, a                                        ; $7f08: $57
	ld   [bc], a                                     ; $7f09: $02
	nop                                              ; $7f0a: $00
	ld   l, e                                        ; $7f0b: $6b
	sbc  e                                           ; $7f0c: $9b
	ld   [hl], c                                     ; $7f0d: $71
	ld   l, l                                        ; $7f0e: $6d
	sub  [hl]                                        ; $7f0f: $96
	ld   d, h                                        ; $7f10: $54
	ld   l, [hl]                                     ; $7f11: $6e
	ld   a, b                                        ; $7f12: $78
	rst  $38                                         ; $7f13: $ff
	rst  $38                                         ; $7f14: $ff
	dec  c                                           ; $7f15: $0d
	nop                                              ; $7f16: $00
	ld   a, [bc]                                     ; $7f17: $0a
	ld   bc, $9250                                   ; $7f18: $01 $50 $92
	adc  a                                           ; $7f1b: $8f
	ld   e, l                                        ; $7f1c: $5d
	and  c                                           ; $7f1d: $a1
	sbc  [hl]                                        ; $7f1e: $9e
	dec  b                                           ; $7f1f: $05
	pop  hl                                          ; $7f20: $e1
	dec  b                                           ; $7f21: $05
	add  e                                           ; $7f22: $83
	ld   a, l                                        ; $7f23: $7d
	ld   sp, hl                                      ; $7f24: $f9
	dec  c                                           ; $7f25: $0d
	nop                                              ; $7f26: $00
	ld   a, [bc]                                     ; $7f27: $0a
	inc  e                                           ; $7f28: $1c
	dec  bc                                          ; $7f29: $0b
	ld   [bc], a                                     ; $7f2a: $02
	ld   [bc], a                                     ; $7f2b: $02
	ld   bc, $6503                                   ; $7f2c: $01 $03 $65
	inc  b                                           ; $7f2f: $04
	rst  $20                                         ; $7f30: $e7
	ld   [bc], a                                     ; $7f31: $02
	sbc  c                                           ; $7f32: $99
	ld   [bc], a                                     ; $7f33: $02
	inc  c                                           ; $7f34: $0c
	ld   a, c                                        ; $7f35: $79
	inc  bc                                          ; $7f36: $03
	ld   c, d                                        ; $7f37: $4a
	inc  b                                           ; $7f38: $04
	dec  c                                           ; $7f39: $0d
	inc  b                                           ; $7f3a: $04
	and  b                                           ; $7f3b: $a0
	inc  b                                           ; $7f3c: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f3d: $cf
	ld   a, h                                        ; $7f3e: $7c
	ld   [bc], a                                     ; $7f3f: $02
	ld   e, b                                        ; $7f40: $58
	inc  b                                           ; $7f41: $04
	dec  c                                           ; $7f42: $0d
	ld   e, d                                        ; $7f43: $5a
	dec  c                                           ; $7f44: $0d
	inc  bc                                          ; $7f45: $03
	add  b                                           ; $7f46: $80
	ld   [bc], a                                     ; $7f47: $02
	ld   h, d                                        ; $7f48: $62
	ld   h, l                                        ; $7f49: $65
	ld   l, l                                        ; $7f4a: $6d
	halt                                             ; $7f4b: $76
	ld   a, h                                        ; $7f4c: $7c
	adc  c                                           ; $7f4d: $89
	ld   d, h                                        ; $7f4e: $54
	ld   h, c                                        ; $7f4f: $61
	ld   e, l                                        ; $7f50: $5d
	ld   e, d                                        ; $7f51: $5a
	dec  c                                           ; $7f52: $0d
	inc  b                                           ; $7f53: $04
	ld   b, l                                        ; $7f54: $45
	ld   [hl], c                                     ; $7f55: $71
	ld   [hl], h                                     ; $7f56: $74
	adc  h                                           ; $7f57: $8c
	ld   h, a                                        ; $7f58: $67
	rst  $38                                         ; $7f59: $ff
	rst  $38                                         ; $7f5a: $ff
	dec  c                                           ; $7f5b: $0d
	nop                                              ; $7f5c: $00
	ld   a, [bc]                                     ; $7f5d: $0a
	rrca                                             ; $7f5e: $0f
	add  hl, bc                                      ; $7f5f: $09
	inc  d                                           ; $7f60: $14
	ld   bc, $638c                                   ; $7f61: $01 $8c $63
	ld   e, c                                        ; $7f64: $59
	ld   [bc], a                                     ; $7f65: $02
	dec  [hl]                                        ; $7f66: $35
	ld   b, $07                                      ; $7f67: $06 $07
	dec  b                                           ; $7f69: $05
	dec  sp                                          ; $7f6a: $3b
	ld   [bc], a                                     ; $7f6b: $02
	add  [hl]                                        ; $7f6c: $86
	ld   e, d                                        ; $7f6d: $5a
	ld   sp, hl                                      ; $7f6e: $f9
	dec  c                                           ; $7f6f: $0d
	nop                                              ; $7f70: $00
	ld   a, [bc]                                     ; $7f71: $0a
	inc  e                                           ; $7f72: $1c
	dec  bc                                          ; $7f73: $0b
	ld   [bc], a                                     ; $7f74: $02
	ld   [bc], a                                     ; $7f75: $02
	ld   bc, $5652                                   ; $7f76: $01 $52 $56
	sbc  [hl]                                        ; $7f79: $9e
	ld   l, a                                        ; $7f7a: $6f
	ld   e, d                                        ; $7f7b: $5a
	ld   d, h                                        ; $7f7c: $54
	sbc  l                                           ; $7f7d: $9d
	rst  $38                                         ; $7f7e: $ff
	rst  $38                                         ; $7f7f: $ff
	dec  c                                           ; $7f80: $0d
	nop                                              ; $7f81: $00
	ld   a, [bc]                                     ; $7f82: $0a
	ld   bc, $6503                                   ; $7f83: $01 $03 $65
	inc  b                                           ; $7f86: $04
	rst  $20                                         ; $7f87: $e7
	ld   [bc], a                                     ; $7f88: $02
	sbc  c                                           ; $7f89: $99
	ld   [bc], a                                     ; $7f8a: $02
	inc  c                                           ; $7f8b: $0c
	ld   a, c                                        ; $7f8c: $79
	inc  bc                                          ; $7f8d: $03
	add  b                                           ; $7f8e: $80
	ld   [bc], a                                     ; $7f8f: $02
	ld   h, d                                        ; $7f90: $62
	ld   h, l                                        ; $7f91: $65
	ld   l, l                                        ; $7f92: $6d
	inc  bc                                          ; $7f93: $03
	ld   c, d                                        ; $7f94: $4a
	inc  b                                           ; $7f95: $04
	dec  c                                           ; $7f96: $0d
	inc  b                                           ; $7f97: $04
	and  b                                           ; $7f98: $a0
	inc  b                                           ; $7f99: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f9a: $cf
	ld   [bc], a                                     ; $7f9b: $02
	ld   e, b                                        ; $7f9c: $58
	dec  c                                           ; $7f9d: $0d
	rst  $38                                         ; $7f9e: $ff
	rst  $38                                         ; $7f9f: $ff
	ret  z                                           ; $7fa0: $c8

	ei                                               ; $7fa1: $fb
	ret  nz                                          ; $7fa2: $c0

	ld   e, c                                        ; $7fa3: $59
	sub  a                                           ; $7fa4: $97
	ld   h, a                                        ; $7fa5: $67
	ld   d, d                                        ; $7fa6: $52
	ld   l, e                                        ; $7fa7: $6b
	ld   e, l                                        ; $7fa8: $5d
	ld   h, l                                        ; $7fa9: $65
	ld   [hl], h                                     ; $7faa: $74
	dec  c                                           ; $7fab: $0d
	ld   a, [de]                                     ; $7fac: $1a
	ld   a, [de]                                     ; $7fad: $1a
	ld   bc, $020e                                   ; $7fae: $01 $0e $02
	jr   c, jr_04a_7fb7                              ; $7fb1: $38 $04

	ld   d, d                                        ; $7fb3: $52
	sub  [hl]                                        ; $7fb4: $96
	rst  $38                                         ; $7fb5: $ff
	rst  $38                                         ; $7fb6: $ff

jr_04a_7fb7:
	dec  c                                           ; $7fb7: $0d
	nop                                              ; $7fb8: $00
	ld   a, [bc]                                     ; $7fb9: $0a
	rrca                                             ; $7fba: $0f
	ld   a, [bc]                                     ; $7fbb: $0a
	rrca                                             ; $7fbc: $0f
	ld   bc, $4904                                   ; $7fbd: $01 $04 $49
	ld   l, [hl]                                     ; $7fc0: $6e
	halt                                             ; $7fc1: $76
	ld   sp, hl                                      ; $7fc2: $f9
	dec  c                                           ; $7fc3: $0d
	nop                                              ; $7fc4: $00
	ld   a, [bc]                                     ; $7fc5: $0a
	rrca                                             ; $7fc6: $0f
	dec  b                                           ; $7fc7: $05
	inc  c                                           ; $7fc8: $0c
	ld   bc, $fa50                                   ; $7fc9: $01 $50 $fa
	ld   a, [$000d]                                  ; $7fcc: $fa $0d $00
	ld   a, [bc]                                     ; $7fcf: $0a
	rrca                                             ; $7fd0: $0f
	inc  bc                                          ; $7fd1: $03
	rrca                                             ; $7fd2: $0f
	ld   bc, $5477                                   ; $7fd3: $01 $77 $54
	ld   h, l                                        ; $7fd6: $65
	ld   l, l                                        ; $7fd7: $6d
	ld   a, h                                        ; $7fd8: $7c
	ld   [bc], a                                     ; $7fd9: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7fda: $cf
	dec  b                                           ; $7fdb: $05
	ld   a, [de]                                     ; $7fdc: $1a
	ld   sp, hl                                      ; $7fdd: $f9
	dec  c                                           ; $7fde: $0d
	nop                                              ; $7fdf: $00
	ld   a, [bc]                                     ; $7fe0: $0a
	rrca                                             ; $7fe1: $0f
	dec  b                                           ; $7fe2: $05
	db   $10                                         ; $7fe3: $10
	ld   bc, $9250                                   ; $7fe4: $01 $50 $92
	adc  a                                           ; $7fe7: $8f
	ld   a, l                                        ; $7fe8: $7d
	and  c                                           ; $7fe9: $a1
	rst  $38                                         ; $7fea: $ff
	rst  $38                                         ; $7feb: $ff
	dec  c                                           ; $7fec: $0d
	sub  b                                           ; $7fed: $90
	ld   h, l                                        ; $7fee: $65
	ld   e, c                                        ; $7fef: $59
	ld   h, l                                        ; $7ff0: $65
	ld   [hl], h                                     ; $7ff1: $74
	sbc  [hl]                                        ; $7ff2: $9e
	ld   l, e                                        ; $7ff3: $6b
	ld   a, h                                        ; $7ff4: $7c
	ld   [bc], a                                     ; $7ff5: $02
	jr   c, jr_04a_7ffc                              ; $7ff6: $38 $04

	ld   d, d                                        ; $7ff8: $52
	rst  $38                                         ; $7ff9: $ff
	rst  $38                                         ; $7ffa: $ff
	dec  c                                           ; $7ffb: $0d

jr_04a_7ffc:
	nop                                              ; $7ffc: $00
	ld   a, [bc]                                     ; $7ffd: $0a
	inc  e                                           ; $7ffe: $1c
	dec  bc                                          ; $7fff: $0b
