; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $061", ROMX[$4000], BANK[$61]

	sbc  a                                           ; $4000: $9f
	dec  c                                           ; $4001: $0d
	nop                                              ; $4002: $00
	ld   a, [bc]                                     ; $4003: $0a
	ld   bc, $6596                                   ; $4004: $01 $96 $65
	sbc  [hl]                                        ; $4007: $9e
	ld   h, [hl]                                     ; $4008: $66
	sub  c                                           ; $4009: $91
	ld   d, b                                        ; $400a: $50
	ld   [bc], a                                     ; $400b: $02
	and  l                                           ; $400c: $a5
	inc  b                                           ; $400d: $04
	add  hl, hl                                      ; $400e: $29
	ld   a, l                                        ; $400f: $7d
	dec  c                                           ; $4010: $0d
	cp   d                                           ; $4011: $ba
	push de                                          ; $4012: $d5
	ei                                               ; $4013: $fb
	jp   z, $c4a3                                    ; $4014: $ca $a3 $c4

	ret  c                                           ; $4017: $d8

	ld   h, l                                        ; $4018: $65
	ld   [hl], h                                     ; $4019: $74
	ld   d, d                                        ; $401a: $52
	ld   e, l                                        ; $401b: $5d
	ld   l, d                                        ; $401c: $6a
	sbc  a                                           ; $401d: $9f
	dec  c                                           ; $401e: $0d
	nop                                              ; $401f: $00
	ld   a, [bc]                                     ; $4020: $0a
	ld   b, $df                                      ; $4021: $06 $df
	inc  d                                           ; $4023: $14
	ld   bc, $e3c1                                   ; $4024: $01 $c1 $e3
	ld   l, [hl]                                     ; $4027: $6e
	sbc  [hl]                                        ; $4028: $9e
	pop  bc                                          ; $4029: $c1
	db   $e3                                         ; $402a: $e3
	ld   l, [hl]                                     ; $402b: $6e
	sbc  a                                           ; $402c: $9f
	dec  c                                           ; $402d: $0d
	sub  b                                           ; $402e: $90
	ld   [hl], c                                     ; $402f: $71
	halt                                             ; $4030: $76
	sbc  [hl]                                        ; $4031: $9e
	ld   [bc], a                                     ; $4032: $02
	ld   c, b                                        ; $4033: $48
	ld   [bc], a                                     ; $4034: $02
	sub  c                                           ; $4035: $91
	and  b                                           ; $4036: $a0
	inc  b                                           ; $4037: $04
	ld   b, l                                        ; $4038: $45
	sbc  d                                           ; $4039: $9a
	ld   a, b                                        ; $403a: $78
	ld   e, e                                        ; $403b: $5b
	sub  c                                           ; $403c: $91
	sbc  a                                           ; $403d: $9f
	dec  c                                           ; $403e: $0d
	nop                                              ; $403f: $00
	ld   a, [bc]                                     ; $4040: $0a
	ld   bc, $5f96                                   ; $4041: $01 $96 $5f
	ld   [hl], h                                     ; $4044: $74
	ld   a, [hl]                                     ; $4045: $7e
	ld   [hl], c                                     ; $4046: $71
	ld   e, c                                        ; $4047: $59
	sbc  b                                           ; $4048: $98
	ld   h, [hl]                                     ; $4049: $66
	sub  c                                           ; $404a: $91
	sbc  [hl]                                        ; $404b: $9e
	dec  c                                           ; $404c: $0d
	dec  b                                           ; $404d: $05
	add  hl, de                                      ; $404e: $19
	inc  bc                                          ; $404f: $03
	and  h                                           ; $4050: $a4
	ld   a, c                                        ; $4051: $79
	ld   a, b                                        ; $4052: $78
	sub  a                                           ; $4053: $97
	ld   a, b                                        ; $4054: $78
	ld   d, d                                        ; $4055: $52
	ld   l, d                                        ; $4056: $6a
	sbc  a                                           ; $4057: $9f
	dec  c                                           ; $4058: $0d
	sub  b                                           ; $4059: $90
	ld   d, h                                        ; $405a: $54
	ld   [bc], a                                     ; $405b: $02
	jr   nz, jr_061_4060                             ; $405c: $20 $02

	sub  e                                           ; $405e: $93
	dec  b                                           ; $405f: $05

jr_061_4060:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4060: $cf
	adc  a                                           ; $4061: $8f
	ld   [hl], c                                     ; $4062: $71
	ld   e, c                                        ; $4063: $59
	sub  a                                           ; $4064: $97
	ld   l, [hl]                                     ; $4065: $6e
	sbc  a                                           ; $4066: $9f
	dec  c                                           ; $4067: $0d
	nop                                              ; $4068: $00
	ld   a, [bc]                                     ; $4069: $0a
	ld   b, $51                                      ; $406a: $06 $51
	inc  c                                           ; $406c: $0c
	inc  e                                           ; $406d: $1c
	ld   b, $02                                      ; $406e: $06 $02
	ld   [bc], a                                     ; $4070: $02
	ld   bc, $1c03                                   ; $4071: $01 $03 $1c
	inc  b                                           ; $4074: $04
	ld   d, e                                        ; $4075: $53
	ld   a, l                                        ; $4076: $7d
	ld   d, d                                        ; $4077: $52
	ld   d, d                                        ; $4078: $52
	ld   e, c                                        ; $4079: $59
	ld   sp, hl                                      ; $407a: $f9
	dec  c                                           ; $407b: $0d
	ld   d, d                                        ; $407c: $52
	ld   e, l                                        ; $407d: $5d
	ld   l, d                                        ; $407e: $6a
	ld   a, [$000d]                                  ; $407f: $fa $0d $00
	ld   a, [bc]                                     ; $4082: $0a
	ld   bc, $6903                                   ; $4083: $01 $03 $69
	inc  bc                                          ; $4086: $03
	inc  c                                           ; $4087: $0c
	ld   a, l                                        ; $4088: $7d
	sbc  [hl]                                        ; $4089: $9e
	inc  b                                           ; $408a: $04
	dec  bc                                          ; $408b: $0b
	inc  bc                                          ; $408c: $03
	ret  nc                                          ; $408d: $d0

	sub  $a8                                         ; $408e: $d6 $a8
	and  l                                           ; $4090: $a5
	push af                                          ; $4091: $f5
	ret                                              ; $4092: $c9


	ld   a, h                                        ; $4093: $7c
	dec  c                                           ; $4094: $0d
	ld   [bc], a                                     ; $4095: $02
	inc  [hl]                                        ; $4096: $34
	inc  bc                                          ; $4097: $03
	ret  nc                                          ; $4098: $d0

	ld   h, b                                        ; $4099: $60
	sbc  b                                           ; $409a: $98
	ld   l, [hl]                                     ; $409b: $6e
	ld   a, [$000d]                                  ; $409c: $fa $0d $00
	ld   a, [bc]                                     ; $409f: $0a
	inc  d                                           ; $40a0: $14
	dec  d                                           ; $40a1: $15
	ld   bc, $0319                                   ; $40a2: $01 $19 $03
	inc  bc                                          ; $40a5: $03
	inc  bc                                          ; $40a6: $03
	ld   c, d                                        ; $40a7: $4a
	ld   [bc], a                                     ; $40a8: $02
	ld   [hl], c                                     ; $40a9: $71
	ld   [hl], e                                     ; $40aa: $73
	ld   e, e                                        ; $40ab: $5b
	nop                                              ; $40ac: $00
	nop                                              ; $40ad: $00
	cp   c                                           ; $40ae: $b9
	push hl                                          ; $40af: $e5
	push af                                          ; $40b0: $f5
	ret  c                                           ; $40b1: $d8

	ld   h, l                                        ; $40b2: $65
	ld   [hl], h                                     ; $40b3: $74
	xor  [hl]                                        ; $40b4: $ae
	call nz, $00b0                                   ; $40b5: $c4 $b0 $00
	ld   bc, $e5b9                                   ; $40b8: $01 $b9 $e5
	push af                                          ; $40bb: $f5
	ret  c                                           ; $40bc: $d8

	ld   h, l                                        ; $40bd: $65
	ld   [hl], h                                     ; $40be: $74
	ld   e, c                                        ; $40bf: $59
	sbc  l                                           ; $40c0: $9d
	ld   h, a                                        ; $40c1: $67
	nop                                              ; $40c2: $00
	ld   [bc], a                                     ; $40c3: $02
	rlca                                             ; $40c4: $07
	or   c                                           ; $40c5: $b1
	dec  d                                           ; $40c6: $15
	ld   [bc], a                                     ; $40c7: $02
	inc  bc                                          ; $40c8: $03
	ld   bc, $2000                                   ; $40c9: $01 $00 $20
	nop                                              ; $40cc: $00
	rlca                                             ; $40cd: $07
	ld   d, h                                        ; $40ce: $54
	dec  d                                           ; $40cf: $15
	ld   [bc], a                                     ; $40d0: $02
	inc  bc                                          ; $40d1: $03
	ld   bc, $2001                                   ; $40d2: $01 $01 $20
	nop                                              ; $40d5: $00
	rlca                                             ; $40d6: $07
	sub  d                                           ; $40d7: $92
	dec  d                                           ; $40d8: $15
	ld   [bc], a                                     ; $40d9: $02
	inc  bc                                          ; $40da: $03
	ld   bc, $2002                                   ; $40db: $01 $02 $20
	nop                                              ; $40de: $00
	ld   b, $18                                      ; $40df: $06 $18
	ld   d, $0f                                      ; $40e1: $16 $0f
	nop                                              ; $40e3: $00
	ld   bc, $7801                                   ; $40e4: $01 $01 $78
	sub  a                                           ; $40e7: $97
	ld   a, [hl]                                     ; $40e8: $7e
	sbc  [hl]                                        ; $40e9: $9e
	cp   c                                           ; $40ea: $b9
	push hl                                          ; $40eb: $e5
	push af                                          ; $40ec: $f5
	ret  c                                           ; $40ed: $d8

	ld   a, [$6b0d]                                  ; $40ee: $fa $0d $6b
	ld   h, l                                        ; $40f1: $65
	ld   [hl], h                                     ; $40f2: $74
	sbc  [hl]                                        ; $40f3: $9e
	xor  [hl]                                        ; $40f4: $ae
	ei                                               ; $40f5: $fb
	call nz, $fab0                                   ; $40f6: $c4 $b0 $fa
	ld   a, [$000d]                                  ; $40f9: $fa $0d $00
	ld   a, [bc]                                     ; $40fc: $0a
	inc  e                                           ; $40fd: $1c
	ld   b, $00                                      ; $40fe: $06 $00
	nop                                              ; $4100: $00
	ld   bc, $7158                                   ; $4101: $01 $58 $71
	halt                                             ; $4104: $76
	sbc  a                                           ; $4105: $9f
	dec  c                                           ; $4106: $0d
	ld   d, b                                        ; $4107: $50
	add  h                                           ; $4108: $84
	ld   a, b                                        ; $4109: $78
	ld   d, d                                        ; $410a: $52
	sbc  [hl]                                        ; $410b: $9e
	ld   d, b                                        ; $410c: $50
	add  h                                           ; $410d: $84
	ld   a, b                                        ; $410e: $78
	ld   d, d                                        ; $410f: $52
	rst  $38                                         ; $4110: $ff
	dec  c                                           ; $4111: $0d
	nop                                              ; $4112: $00
	ld   a, [bc]                                     ; $4113: $0a
	dec  b                                           ; $4114: $05
	ld   b, b                                        ; $4115: $40
	rst  $38                                         ; $4116: $ff
	inc  bc                                          ; $4117: $03
	rst  $38                                         ; $4118: $ff
	ld   bc, $2801                                   ; $4119: $01 $01 $28
	nop                                              ; $411c: $00
	ld   b, $61                                      ; $411d: $06 $61
	ld   d, $0f                                      ; $411f: $16 $0f
	nop                                              ; $4121: $00
	ld   bc, $7801                                   ; $4122: $01 $01 $78
	sub  a                                           ; $4125: $97
	ld   a, [hl]                                     ; $4126: $7e
	sbc  [hl]                                        ; $4127: $9e
	cp   c                                           ; $4128: $b9
	push hl                                          ; $4129: $e5
	push af                                          ; $412a: $f5
	ret  c                                           ; $412b: $d8

	ld   a, [$000d]                                  ; $412c: $fa $0d $00
	ld   a, [bc]                                     ; $412f: $0a
	inc  e                                           ; $4130: $1c
	ld   b, $01                                      ; $4131: $06 $01
	ld   bc, $9601                                   ; $4133: $01 $01 $96
	ei                                               ; $4136: $fb
	ld   h, l                                        ; $4137: $65
	sbc  a                                           ; $4138: $9f
	dec  c                                           ; $4139: $0d
	nop                                              ; $413a: $00
	ld   a, [bc]                                     ; $413b: $0a
	ld   b, $61                                      ; $413c: $06 $61
	ld   d, $0f                                      ; $413e: $16 $0f
	nop                                              ; $4140: $00
	ld   bc, $0301                                   ; $4141: $01 $01 $03
	ld   c, d                                        ; $4144: $4a
	ld   [bc], a                                     ; $4145: $02
	ld   [hl], c                                     ; $4146: $71
	ld   [hl], e                                     ; $4147: $73
	ld   e, e                                        ; $4148: $5b
	ld   l, [hl]                                     ; $4149: $6e
	ld   a, [$000d]                                  ; $414a: $fa $0d $00
	ld   a, [bc]                                     ; $414d: $0a
	inc  d                                           ; $414e: $14
	rlca                                             ; $414f: $07
	ld   bc, $a501                                   ; $4150: $01 $01 $a5
	call nz, $fbc0                                   ; $4153: $c4 $c0 $fb
	ei                                               ; $4156: $fb
	ei                                               ; $4157: $fb
	call nz, $000d                                   ; $4158: $c4 $0d $00
	ld   a, [bc]                                     ; $415b: $0a
	rlca                                             ; $415c: $07
	sub  b                                           ; $415d: $90
	dec  bc                                          ; $415e: $0b
	inc  bc                                          ; $415f: $03
	jr   nz, jr_061_4163                             ; $4160: $20 $01

	ld   a, [bc]                                     ; $4162: $0a

jr_061_4163:
	inc  hl                                          ; $4163: $23
	nop                                              ; $4164: $00
	ld   sp, $2040                                   ; $4165: $31 $40 $20
	inc  bc                                          ; $4168: $03
	jr   nz, jr_061_416c                             ; $4169: $20 $01

	ld   a, [bc]                                     ; $416b: $0a

jr_061_416c:
	add  hl, hl                                      ; $416c: $29
	nop                                              ; $416d: $00
	inc  e                                           ; $416e: $1c
	ld   b, $05                                      ; $416f: $06 $05
	dec  b                                           ; $4171: $05
	ld   bc, $6e6d                                   ; $4172: $01 $6d $6e
	dec  b                                           ; $4175: $05
	ld   c, l                                        ; $4176: $4d
	ld   a, c                                        ; $4177: $79
	sbc  [hl]                                        ; $4178: $9e
	ld   d, b                                        ; $4179: $50
	ld   l, l                                        ; $417a: $6d
	ld   d, d                                        ; $417b: $52
	and  b                                           ; $417c: $a0
	ld   [bc], a                                     ; $417d: $02
	ld   c, b                                        ; $417e: $48
	ld   [bc], a                                     ; $417f: $02
	sub  c                                           ; $4180: $91
	ld   h, l                                        ; $4181: $65
	ld   [hl], h                                     ; $4182: $74
	sub  b                                           ; $4183: $90
	dec  c                                           ; $4184: $0d
	pop  bc                                          ; $4185: $c1
	db   $e3                                         ; $4186: $e3
	ld   l, [hl]                                     ; $4187: $6e
	sbc  a                                           ; $4188: $9f
	adc  h                                           ; $4189: $8c
	ld   l, b                                        ; $418a: $68
	ld   a, l                                        ; $418b: $7d
	ld   e, c                                        ; $418c: $59
	sbc  l                                           ; $418d: $9d
	ld   h, e                                        ; $418e: $63
	ld   a, b                                        ; $418f: $78
	ld   d, d                                        ; $4190: $52
	halt                                             ; $4191: $76
	sbc  a                                           ; $4192: $9f
	dec  c                                           ; $4193: $0d
	nop                                              ; $4194: $00
	inc  e                                           ; $4195: $1c
	ld   b, $02                                      ; $4196: $06 $02
	ld   [bc], a                                     ; $4198: $02
	ld   bc, $6803                                   ; $4199: $01 $03 $68
	ld   d, d                                        ; $419c: $52
	ld   e, l                                        ; $419d: $5d
	ld   l, d                                        ; $419e: $6a
	ld   a, [$000d]                                  ; $419f: $fa $0d $00
	ld   a, [bc]                                     ; $41a2: $0a
	ld   b, $61                                      ; $41a3: $06 $61
	ld   d, $0f                                      ; $41a5: $16 $0f
	nop                                              ; $41a7: $00
	ld   bc, $0714                                   ; $41a8: $01 $14 $07
	ld   bc, $a501                                   ; $41ab: $01 $01 $a5
	call nz, $fbc7                                   ; $41ae: $c4 $c7 $fb
	dec  c                                           ; $41b1: $0d
	nop                                              ; $41b2: $00
	ld   a, [bc]                                     ; $41b3: $0a
	rlca                                             ; $41b4: $07
	sub  b                                           ; $41b5: $90
	dec  bc                                          ; $41b6: $0b
	inc  bc                                          ; $41b7: $03
	jr   nz, jr_061_41bb                             ; $41b8: $20 $01

	ld   a, [bc]                                     ; $41ba: $0a

jr_061_41bb:
	inc  hl                                          ; $41bb: $23
	nop                                              ; $41bc: $00
	ld   sp, $2040                                   ; $41bd: $31 $40 $20
	inc  bc                                          ; $41c0: $03
	jr   nz, jr_061_41c4                             ; $41c1: $20 $01

	ld   a, [bc]                                     ; $41c3: $0a

jr_061_41c4:
	add  hl, hl                                      ; $41c4: $29
	nop                                              ; $41c5: $00
	inc  e                                           ; $41c6: $1c
	ld   b, $05                                      ; $41c7: $06 $05
	dec  b                                           ; $41c9: $05
	ld   bc, $acd1                                   ; $41ca: $01 $d1 $ac
	ld   a, [GetRandomNumInPreSpecifiedRange]                                  ; $41cd: $fa $10 $0d
	db   $dd                                         ; $41d0: $dd
	or   d                                           ; $41d1: $b2
	ld   [hl], c                                     ; $41d2: $71
	halt                                             ; $41d3: $76
	ld   h, a                                        ; $41d4: $67
	and  c                                           ; $41d5: $a1
	ld   h, [hl]                                     ; $41d6: $66
	sub  c                                           ; $41d7: $91
	ld   a, e                                        ; $41d8: $7b
	ld   d, l                                        ; $41d9: $55
	sub  [hl]                                        ; $41da: $96
	sbc  a                                           ; $41db: $9f
	dec  c                                           ; $41dc: $0d
	nop                                              ; $41dd: $00
	inc  e                                           ; $41de: $1c
	ld   b, $02                                      ; $41df: $06 $02
	ld   [bc], a                                     ; $41e1: $02
	ld   bc, $6803                                   ; $41e2: $01 $03 $68
	ld   d, d                                        ; $41e5: $52
	ld   e, l                                        ; $41e6: $5d
	ld   l, d                                        ; $41e7: $6a
	ld   a, [$000d]                                  ; $41e8: $fa $0d $00
	ld   a, [bc]                                     ; $41eb: $0a
	ld   b, $61                                      ; $41ec: $06 $61
	ld   d, $1c                                      ; $41ee: $16 $1c
	ld   b, $02                                      ; $41f0: $06 $02
	ld   [bc], a                                     ; $41f2: $02
	ld   bc, $6803                                   ; $41f3: $01 $03 $68
	ld   a, l                                        ; $41f6: $7d
	inc  bc                                          ; $41f7: $03
	ld   c, d                                        ; $41f8: $4a
	ld   [bc], a                                     ; $41f9: $02
	ld   [hl], c                                     ; $41fa: $71
	ld   [hl], e                                     ; $41fb: $73
	ld   e, e                                        ; $41fc: $5b
	ld   [hl], l                                     ; $41fd: $75
	dec  c                                           ; $41fe: $0d
	inc  b                                           ; $41ff: $04
	dec  bc                                          ; $4200: $0b
	inc  bc                                          ; $4201: $03
	ret  nc                                          ; $4202: $d0

	and  b                                           ; $4203: $a0
	ld   [bc], a                                     ; $4204: $02
	ld   c, b                                        ; $4205: $48
	ld   [bc], a                                     ; $4206: $02
	sub  c                                           ; $4207: $91
	ld   l, [hl]                                     ; $4208: $6e
	ld   a, [$000d]                                  ; $4209: $fa $0d $00
	ld   a, [bc]                                     ; $420c: $0a
	inc  d                                           ; $420d: $14
	dec  d                                           ; $420e: $15
	ld   bc, $0319                                   ; $420f: $01 $19 $03
	inc  bc                                          ; $4212: $03
	ld   [bc], a                                     ; $4213: $02
	ld   h, [hl]                                     ; $4214: $66
	and  b                                           ; $4215: $a0
	inc  bc                                          ; $4216: $03
	sub  e                                           ; $4217: $93
	sbc  b                                           ; $4218: $98
	ld   [bc], a                                     ; $4219: $02
	inc  [hl]                                        ; $421a: $34
	inc  bc                                          ; $421b: $03
	ret  nc                                          ; $421c: $d0

	ld   h, b                                        ; $421d: $60
	sbc  b                                           ; $421e: $98
	nop                                              ; $421f: $00
	nop                                              ; $4220: $00
	inc  bc                                          ; $4221: $03
	ret  c                                           ; $4222: $d8

	and  b                                           ; $4223: $a0
	inc  bc                                          ; $4224: $03
	sub  e                                           ; $4225: $93
	sbc  b                                           ; $4226: $98
	inc  bc                                          ; $4227: $03
	ld   c, d                                        ; $4228: $4a
	ld   [bc], a                                     ; $4229: $02
	ld   [hl], c                                     ; $422a: $71
	ld   [hl], e                                     ; $422b: $73
	ld   e, e                                        ; $422c: $5b
	nop                                              ; $422d: $00
	ld   bc, $6602                                   ; $422e: $01 $02 $66
	and  b                                           ; $4231: $a0
	inc  bc                                          ; $4232: $03
	sub  e                                           ; $4233: $93
	sbc  c                                           ; $4234: $99
	nop                                              ; $4235: $00
	ld   [bc], a                                     ; $4236: $02
	rlca                                             ; $4237: $07
	rst  ToBoot                                         ; $4238: $c7
	ld   d, $02                                      ; $4239: $16 $02
	inc  bc                                          ; $423b: $03
	ld   bc, $2000                                   ; $423c: $01 $00 $20
	nop                                              ; $423f: $00
	rlca                                             ; $4240: $07
	ld   sp, $0217                                   ; $4241: $31 $17 $02
	inc  bc                                          ; $4244: $03
	ld   bc, $2001                                   ; $4245: $01 $01 $20
	nop                                              ; $4248: $00
	rlca                                             ; $4249: $07
	ld   bc, $0217                                   ; $424a: $01 $17 $02
	inc  bc                                          ; $424d: $03
	ld   bc, $2002                                   ; $424e: $01 $02 $20
	nop                                              ; $4251: $00
	ld   b, $b2                                      ; $4252: $06 $b2
	rla                                              ; $4254: $17
	rrca                                             ; $4255: $0f
	nop                                              ; $4256: $00
	ld   bc, $0201                                   ; $4257: $01 $01 $02
	ld   h, [hl]                                     ; $425a: $66
	and  b                                           ; $425b: $a0
	inc  bc                                          ; $425c: $03
	sub  e                                           ; $425d: $93
	ld   [hl], c                                     ; $425e: $71
	ld   [hl], h                                     ; $425f: $74
	ld   a, [$020d]                                  ; $4260: $fa $0d $02
	inc  [hl]                                        ; $4263: $34
	inc  bc                                          ; $4264: $03
	ret  nc                                          ; $4265: $d0

	ld   h, b                                        ; $4266: $60
	sbc  b                                           ; $4267: $98
	ld   l, [hl]                                     ; $4268: $6e
	ld   a, [$0dfa]                                  ; $4269: $fa $fa $0d
	nop                                              ; $426c: $00
	ld   a, [bc]                                     ; $426d: $0a
	inc  e                                           ; $426e: $1c
	ld   b, $00                                      ; $426f: $06 $00
	nop                                              ; $4271: $00
	ld   bc, $7158                                   ; $4272: $01 $58 $71
	halt                                             ; $4275: $76
	ld   a, [$520d]                                  ; $4276: $fa $0d $52
	ld   d, d                                        ; $4279: $52
	ld   [bc], a                                     ; $427a: $02
	ld   c, b                                        ; $427b: $48
	ld   [bc], a                                     ; $427c: $02
	sub  c                                           ; $427d: $91
	ld   l, [hl]                                     ; $427e: $6e
	ld   a, [$000d]                                  ; $427f: $fa $0d $00
	ld   a, [bc]                                     ; $4282: $0a
	dec  b                                           ; $4283: $05
	ld   b, b                                        ; $4284: $40
	rst  $38                                         ; $4285: $ff
	inc  bc                                          ; $4286: $03
	rst  $38                                         ; $4287: $ff
	ld   bc, $2801                                   ; $4288: $01 $01 $28
	nop                                              ; $428b: $00
	ld   b, $04                                      ; $428c: $06 $04
	jr   jr_061_429f                                 ; $428e: $18 $0f

	nop                                              ; $4290: $00
	ld   bc, $0201                                   ; $4291: $01 $01 $02
	ld   h, [hl]                                     ; $4294: $66
	and  b                                           ; $4295: $a0
	inc  bc                                          ; $4296: $03
	sub  e                                           ; $4297: $93
	sbc  c                                           ; $4298: $99
	ld   a, [$0dfa]                                  ; $4299: $fa $fa $0d
	nop                                              ; $429c: $00
	ld   a, [bc]                                     ; $429d: $0a
	inc  e                                           ; $429e: $1c

jr_061_429f:
	ld   b, $01                                      ; $429f: $06 $01
	ld   bc, $9601                                   ; $42a1: $01 $01 $96
	ld   e, a                                        ; $42a4: $5f
	ld   [hl], h                                     ; $42a5: $74
	ld   a, [hl]                                     ; $42a6: $7e
	ld   e, c                                        ; $42a7: $59
	sbc  b                                           ; $42a8: $98
	ld   d, d                                        ; $42a9: $52
	ld   a, b                                        ; $42aa: $78
	ld   d, d                                        ; $42ab: $52
	ld   [hl], l                                     ; $42ac: $75
	dec  c                                           ; $42ad: $0d
	ld   [bc], a                                     ; $42ae: $02
	ld   c, b                                        ; $42af: $48
	ld   [bc], a                                     ; $42b0: $02
	sub  c                                           ; $42b1: $91
	sub  b                                           ; $42b2: $90
	ld   h, l                                        ; $42b3: $65
	ld   [hl], h                                     ; $42b4: $74
	ld   h, c                                        ; $42b5: $61
	ld   d, d                                        ; $42b6: $52
	sub  [hl]                                        ; $42b7: $96
	ld   a, [$000d]                                  ; $42b8: $fa $0d $00
	ld   a, [bc]                                     ; $42bb: $0a
	ld   b, $04                                      ; $42bc: $06 $04
	jr   jr_061_42cf                                 ; $42be: $18 $0f

	nop                                              ; $42c0: $00
	ld   bc, $0301                                   ; $42c1: $01 $01 $03
	ret  c                                           ; $42c4: $d8

	and  b                                           ; $42c5: $a0
	inc  bc                                          ; $42c6: $03
	sub  e                                           ; $42c7: $93
	ld   [hl], c                                     ; $42c8: $71
	ld   [hl], h                                     ; $42c9: $74
	sbc  [hl]                                        ; $42ca: $9e
	inc  bc                                          ; $42cb: $03
	ld   c, d                                        ; $42cc: $4a
	ld   [bc], a                                     ; $42cd: $02
	ld   [hl], c                                     ; $42ce: $71

jr_061_42cf:
	ld   [hl], e                                     ; $42cf: $73
	ld   e, e                                        ; $42d0: $5b
	ld   a, [$000d]                                  ; $42d1: $fa $0d $00
	ld   a, [bc]                                     ; $42d4: $0a
	inc  d                                           ; $42d5: $14
	rlca                                             ; $42d6: $07
	ld   bc, $b101                                   ; $42d7: $01 $01 $b1
	call nz, $ffff                                   ; $42da: $c4 $ff $ff
	dec  c                                           ; $42dd: $0d
	ld   d, d                                        ; $42de: $52
	sbc  [hl]                                        ; $42df: $9e
	inc  bc                                          ; $42e0: $03
	ld   h, $5a                                      ; $42e1: $26 $5a
	rst  $38                                         ; $42e3: $ff
	rst  $38                                         ; $42e4: $ff
	dec  c                                           ; $42e5: $0d
	nop                                              ; $42e6: $00
	ld   a, [bc]                                     ; $42e7: $0a
	rlca                                             ; $42e8: $07
	sub  b                                           ; $42e9: $90
	dec  bc                                          ; $42ea: $0b
	inc  bc                                          ; $42eb: $03
	jr   nz, jr_061_42ef                             ; $42ec: $20 $01

	ld   a, [bc]                                     ; $42ee: $0a

jr_061_42ef:
	inc  hl                                          ; $42ef: $23
	nop                                              ; $42f0: $00
	ld   sp, $2040                                   ; $42f1: $31 $40 $20
	inc  bc                                          ; $42f4: $03
	jr   nz, jr_061_42f8                             ; $42f5: $20 $01

	ld   a, [bc]                                     ; $42f7: $0a

jr_061_42f8:
	add  hl, hl                                      ; $42f8: $29
	nop                                              ; $42f9: $00
	inc  e                                           ; $42fa: $1c
	ld   b, $05                                      ; $42fb: $06 $05
	dec  b                                           ; $42fd: $05
	ld   bc, $5258                                   ; $42fe: $01 $58 $52
	ld   e, b                                        ; $4301: $58
	ld   d, d                                        ; $4302: $52
	sbc  a                                           ; $4303: $9f
	inc  b                                           ; $4304: $04
	dec  bc                                          ; $4305: $0b
	inc  bc                                          ; $4306: $03
	ret  nc                                          ; $4307: $d0

	and  b                                           ; $4308: $a0
	dec  b                                           ; $4309: $05
	call Call_061_6d71                               ; $430a: $cd $71 $6d
	and  c                                           ; $430d: $a1
	dec  c                                           ; $430e: $0d
	ld   l, [hl]                                     ; $430f: $6e
	ld   e, c                                        ; $4310: $59
	sub  a                                           ; $4311: $97
	ld   [bc], a                                     ; $4312: $02
	ld   h, [hl]                                     ; $4313: $66
	ld   [bc], a                                     ; $4314: $02
	xor  h                                           ; $4315: $ac
	and  b                                           ; $4316: $a0
	inc  bc                                          ; $4317: $03
	sub  e                                           ; $4318: $93
	ld   [hl], c                                     ; $4319: $71
	ld   [hl], h                                     ; $431a: $74
	dec  c                                           ; $431b: $0d
	nop                                              ; $431c: $00
	inc  e                                           ; $431d: $1c
	ld   b, $02                                      ; $431e: $06 $02
	ld   [bc], a                                     ; $4320: $02
	ld   bc, $656b                                   ; $4321: $01 $6b $65
	ld   [hl], h                                     ; $4324: $74
	sbc  [hl]                                        ; $4325: $9e
	ld   d, b                                        ; $4326: $50
	ld   l, l                                        ; $4327: $6d
	ld   d, d                                        ; $4328: $52
	ld   a, c                                        ; $4329: $79
	ld   [bc], a                                     ; $432a: $02
	ld   c, b                                        ; $432b: $48
	ld   [bc], a                                     ; $432c: $02
	sub  c                                           ; $432d: $91
	ld   l, [hl]                                     ; $432e: $6e
	sbc  a                                           ; $432f: $9f
	dec  c                                           ; $4330: $0d
	nop                                              ; $4331: $00
	ld   a, [bc]                                     ; $4332: $0a
	ld   bc, $fb02                                   ; $4333: $01 $02 $fb
	ld   e, a                                        ; $4336: $5f
	sbc  c                                           ; $4337: $99
	ld   l, d                                        ; $4338: $6a
	ld   a, [$000d]                                  ; $4339: $fa $0d $00
	ld   a, [bc]                                     ; $433c: $0a
	ld   b, $04                                      ; $433d: $06 $04
	jr   jr_061_4350                                 ; $433f: $18 $0f

	nop                                              ; $4341: $00
	ld   bc, $0714                                   ; $4342: $01 $14 $07
	ld   bc, $b301                                   ; $4345: $01 $01 $b3
	call c, $ffc4                                    ; $4348: $dc $c4 $ff
	rst  $38                                         ; $434b: $ff
	dec  c                                           ; $434c: $0d
	ld   d, d                                        ; $434d: $52
	sbc  [hl]                                        ; $434e: $9e
	inc  bc                                          ; $434f: $03

jr_061_4350:
	ld   h, $5a                                      ; $4350: $26 $5a
	rst  $38                                         ; $4352: $ff
	rst  $38                                         ; $4353: $ff
	dec  c                                           ; $4354: $0d
	nop                                              ; $4355: $00
	ld   a, [bc]                                     ; $4356: $0a
	rlca                                             ; $4357: $07
	sub  b                                           ; $4358: $90
	dec  bc                                          ; $4359: $0b
	inc  bc                                          ; $435a: $03
	jr   nz, jr_061_435e                             ; $435b: $20 $01

	ld   a, [bc]                                     ; $435d: $0a

jr_061_435e:
	inc  hl                                          ; $435e: $23
	nop                                              ; $435f: $00
	ld   sp, $2040                                   ; $4360: $31 $40 $20
	inc  bc                                          ; $4363: $03
	jr   nz, jr_061_4367                             ; $4364: $20 $01

	ld   a, [bc]                                     ; $4366: $0a

jr_061_4367:
	add  hl, hl                                      ; $4367: $29
	nop                                              ; $4368: $00
	inc  e                                           ; $4369: $1c
	ld   b, $05                                      ; $436a: $06 $05
	dec  b                                           ; $436c: $05
	ld   bc, $acd1                                   ; $436d: $01 $d1 $ac
	ld   a, [GetRandomNumInPreSpecifiedRange]                                  ; $4370: $fa $10 $0d
	db   $dd                                         ; $4373: $dd
	or   d                                           ; $4374: $b2
	ld   [hl], c                                     ; $4375: $71
	halt                                             ; $4376: $76
	ld   h, a                                        ; $4377: $67
	and  c                                           ; $4378: $a1
	ld   h, [hl]                                     ; $4379: $66
	sub  c                                           ; $437a: $91
	ld   a, e                                        ; $437b: $7b
	ld   d, l                                        ; $437c: $55
	sub  [hl]                                        ; $437d: $96
	sbc  a                                           ; $437e: $9f
	dec  c                                           ; $437f: $0d
	nop                                              ; $4380: $00
	inc  e                                           ; $4381: $1c
	ld   b, $02                                      ; $4382: $06 $02
	ld   [bc], a                                     ; $4384: $02
	ld   bc, $fb02                                   ; $4385: $01 $02 $fb
	ld   e, a                                        ; $4388: $5f
	sbc  c                                           ; $4389: $99
	ld   l, d                                        ; $438a: $6a
	ld   a, [$000d]                                  ; $438b: $fa $0d $00
	ld   a, [bc]                                     ; $438e: $0a
	ld   b, $04                                      ; $438f: $06 $04
	jr   jr_061_43af                                 ; $4391: $18 $1c

	ld   b, $02                                      ; $4393: $06 $02
	ld   [bc], a                                     ; $4395: $02
	ld   bc, $6803                                   ; $4396: $01 $03 $68
	ld   a, l                                        ; $4399: $7d
	sbc  [hl]                                        ; $439a: $9e
	dec  b                                           ; $439b: $05
	ld   h, l                                        ; $439c: $65
	ld   [bc], a                                     ; $439d: $02
	ld   [hl], c                                     ; $439e: $71
	ld   [hl], l                                     ; $439f: $75
	inc  bc                                          ; $43a0: $03
	ld   h, l                                        ; $43a1: $65
	inc  bc                                          ; $43a2: $03
	ret  nc                                          ; $43a3: $d0

	add  [hl]                                        ; $43a4: $86
	ld   [bc], a                                     ; $43a5: $02
	ld   c, b                                        ; $43a6: $48
	ld   [bc], a                                     ; $43a7: $02
	sub  c                                           ; $43a8: $91
	ld   l, [hl]                                     ; $43a9: $6e
	ld   a, [$000d]                                  ; $43aa: $fa $0d $00
	ld   a, [bc]                                     ; $43ad: $0a
	inc  d                                           ; $43ae: $14

jr_061_43af:
	dec  d                                           ; $43af: $15
	ld   bc, $0319                                   ; $43b0: $01 $19 $03
	inc  bc                                          ; $43b3: $03
	ld   h, l                                        ; $43b4: $65
	sub  c                                           ; $43b5: $91
	ld   e, d                                        ; $43b6: $5a
	and  c                                           ; $43b7: $a1
	ld   [hl], l                                     ; $43b8: $75
	ld   [bc], a                                     ; $43b9: $02
	inc  [hl]                                        ; $43ba: $34
	inc  bc                                          ; $43bb: $03
	ret  nc                                          ; $43bc: $d0

	ld   h, b                                        ; $43bd: $60
	sbc  b                                           ; $43be: $98
	nop                                              ; $43bf: $00
	nop                                              ; $43c0: $00
	ld   h, l                                        ; $43c1: $65
	sub  c                                           ; $43c2: $91
	ld   e, d                                        ; $43c3: $5a
	and  c                                           ; $43c4: $a1
	ld   [hl], l                                     ; $43c5: $75
	ld   e, c                                        ; $43c6: $59
	sbc  l                                           ; $43c7: $9d
	ld   h, a                                        ; $43c8: $67
	nop                                              ; $43c9: $00
	ld   bc, $e5b9                                   ; $43ca: $01 $b9 $e5
	push af                                          ; $43cd: $f5
	ret  c                                           ; $43ce: $d8

	ld   h, l                                        ; $43cf: $65
	ld   [hl], h                                     ; $43d0: $74
	inc  bc                                          ; $43d1: $03
	ld   h, l                                        ; $43d2: $65
	inc  bc                                          ; $43d3: $03
	ret  nc                                          ; $43d4: $d0

	ld   h, b                                        ; $43d5: $60
	sbc  b                                           ; $43d6: $98
	nop                                              ; $43d7: $00
	ld   [bc], a                                     ; $43d8: $02
	rlca                                             ; $43d9: $07
	ld   l, c                                        ; $43da: $69
	jr   @+$04                                       ; $43db: $18 $02

	inc  bc                                          ; $43dd: $03
	ld   bc, $2000                                   ; $43de: $01 $00 $20
	nop                                              ; $43e1: $00
	rlca                                             ; $43e2: $07
	and  c                                           ; $43e3: $a1
	jr   @+$04                                       ; $43e4: $18 $02

	inc  bc                                          ; $43e6: $03
	ld   bc, $2001                                   ; $43e7: $01 $01 $20
	nop                                              ; $43ea: $00
	rlca                                             ; $43eb: $07
	rst  ToBoot                                         ; $43ec: $c7
	jr   @+$04                                       ; $43ed: $18 $02

	inc  bc                                          ; $43ef: $03
	ld   bc, $2002                                   ; $43f0: $01 $02 $20
	nop                                              ; $43f3: $00
	ld   b, $2f                                      ; $43f4: $06 $2f
	add  hl, de                                      ; $43f6: $19
	rrca                                             ; $43f7: $0f
	nop                                              ; $43f8: $00
	ld   bc, $6501                                   ; $43f9: $01 $01 $65
	sub  c                                           ; $43fc: $91
	ld   e, d                                        ; $43fd: $5a
	and  c                                           ; $43fe: $a1
	ld   [hl], l                                     ; $43ff: $75
	sbc  [hl]                                        ; $4400: $9e
	ld   [bc], a                                     ; $4401: $02
	inc  [hl]                                        ; $4402: $34
	inc  bc                                          ; $4403: $03
	ret  nc                                          ; $4404: $d0

	ld   h, b                                        ; $4405: $60
	sbc  b                                           ; $4406: $98
	ld   l, [hl]                                     ; $4407: $6e
	ld   a, [$000d]                                  ; $4408: $fa $0d $00
	ld   a, [bc]                                     ; $440b: $0a
	inc  e                                           ; $440c: $1c
	ld   b, $00                                      ; $440d: $06 $00
	nop                                              ; $440f: $00
	ld   bc, $7158                                   ; $4410: $01 $58 $71
	halt                                             ; $4413: $76
	ld   a, [$500d]                                  ; $4414: $fa $0d $50
	add  h                                           ; $4417: $84
	ld   a, e                                        ; $4418: $7b
	ld   d, l                                        ; $4419: $55
	sbc  [hl]                                        ; $441a: $9e
	ld   d, b                                        ; $441b: $50
	add  h                                           ; $441c: $84
	ld   a, e                                        ; $441d: $7b
	ld   d, l                                        ; $441e: $55
	rst  $38                                         ; $441f: $ff
	dec  c                                           ; $4420: $0d
	nop                                              ; $4421: $00
	ld   a, [bc]                                     ; $4422: $0a
	dec  b                                           ; $4423: $05
	ld   b, b                                        ; $4424: $40
	rst  $38                                         ; $4425: $ff
	inc  bc                                          ; $4426: $03
	rst  $38                                         ; $4427: $ff
	ld   bc, $2801                                   ; $4428: $01 $01 $28
	nop                                              ; $442b: $00
	ld   b, $7c                                      ; $442c: $06 $7c
	add  hl, de                                      ; $442e: $19
	rrca                                             ; $442f: $0f
	nop                                              ; $4430: $00
	ld   bc, $6501                                   ; $4431: $01 $01 $65
	sub  c                                           ; $4434: $91
	ld   e, d                                        ; $4435: $5a
	and  c                                           ; $4436: $a1
	ld   [hl], l                                     ; $4437: $75
	ld   e, c                                        ; $4438: $59
	sbc  l                                           ; $4439: $9d
	ld   h, a                                        ; $443a: $67
	ld   l, h                                        ; $443b: $6c
	ld   a, [$000d]                                  ; $443c: $fa $0d $00
	ld   a, [bc]                                     ; $443f: $0a
	inc  e                                           ; $4440: $1c
	ld   b, $01                                      ; $4441: $06 $01
	ld   bc, $5801                                   ; $4443: $01 $01 $58
	ld   [hl], c                                     ; $4446: $71
	ld   a, [$590d]                                  ; $4447: $fa $0d $59
	sbc  l                                           ; $444a: $9d
	ld   h, l                                        ; $444b: $65
	ld   l, l                                        ; $444c: $6d
	ld   a, b                                        ; $444d: $78
	ld   a, [$000d]                                  ; $444e: $fa $0d $00
	ld   a, [bc]                                     ; $4451: $0a
	ld   b, $7c                                      ; $4452: $06 $7c
	add  hl, de                                      ; $4454: $19
	rrca                                             ; $4455: $0f
	nop                                              ; $4456: $00
	ld   bc, $b901                                   ; $4457: $01 $01 $b9
	push hl                                          ; $445a: $e5
	push af                                          ; $445b: $f5
	ret  c                                           ; $445c: $d8

	ld   h, l                                        ; $445d: $65
	ld   [hl], h                                     ; $445e: $74
	inc  bc                                          ; $445f: $03
	ld   h, l                                        ; $4460: $65
	inc  bc                                          ; $4461: $03
	ret  nc                                          ; $4462: $d0

	ld   h, b                                        ; $4463: $60
	sbc  b                                           ; $4464: $98
	ld   a, [$000d]                                  ; $4465: $fa $0d $00
	ld   a, [bc]                                     ; $4468: $0a
	inc  d                                           ; $4469: $14
	rlca                                             ; $446a: $07
	ld   bc, $a501                                   ; $446b: $01 $01 $a5
	call nz, $fbc0                                   ; $446e: $c4 $c0 $fb
	ei                                               ; $4471: $fb
	ei                                               ; $4472: $fb
	dec  c                                           ; $4473: $0d
	nop                                              ; $4474: $00
	ld   a, [bc]                                     ; $4475: $0a
	rlca                                             ; $4476: $07
	sub  b                                           ; $4477: $90
	dec  bc                                          ; $4478: $0b
	inc  bc                                          ; $4479: $03
	jr   nz, jr_061_447d                             ; $447a: $20 $01

	ld   a, [bc]                                     ; $447c: $0a

jr_061_447d:
	inc  hl                                          ; $447d: $23
	nop                                              ; $447e: $00
	ld   sp, $2040                                   ; $447f: $31 $40 $20
	inc  bc                                          ; $4482: $03
	jr   nz, jr_061_4486                             ; $4483: $20 $01

	ld   a, [bc]                                     ; $4485: $0a

jr_061_4486:
	add  hl, hl                                      ; $4486: $29
	nop                                              ; $4487: $00
	inc  e                                           ; $4488: $1c
	ld   b, $05                                      ; $4489: $06 $05
	dec  b                                           ; $448b: $05
	ld   bc, $5258                                   ; $448c: $01 $58 $52
	ld   e, b                                        ; $448f: $58
	ld   d, d                                        ; $4490: $52
	sbc  a                                           ; $4491: $9f
	inc  bc                                          ; $4492: $03
	ld   h, l                                        ; $4493: $65
	inc  bc                                          ; $4494: $03
	ret  nc                                          ; $4495: $d0

	and  b                                           ; $4496: $a0
	ld   a, e                                        ; $4497: $7b
	sub  a                                           ; $4498: $97
	ld   [hl], c                                     ; $4499: $71
	ld   l, l                                        ; $449a: $6d
	ld   a, h                                        ; $449b: $7c
	ld   a, c                                        ; $449c: $79
	dec  c                                           ; $449d: $0d
	cp   c                                           ; $449e: $b9
	push hl                                          ; $449f: $e5
	push af                                          ; $44a0: $f5
	ret  c                                           ; $44a1: $d8

	ld   h, l                                        ; $44a2: $65
	ld   [hl], h                                     ; $44a3: $74
	ld   [hl], a                                     ; $44a4: $77
	ld   d, h                                        ; $44a5: $54
	ld   h, a                                        ; $44a6: $67
	and  c                                           ; $44a7: $a1
	ld   l, [hl]                                     ; $44a8: $6e
	ld   sp, hl                                      ; $44a9: $f9
	dec  c                                           ; $44aa: $0d
	nop                                              ; $44ab: $00
	inc  e                                           ; $44ac: $1c
	ld   b, $02                                      ; $44ad: $06 $02
	ld   [bc], a                                     ; $44af: $02
	ld   bc, $fb02                                   ; $44b0: $01 $02 $fb
	ld   e, a                                        ; $44b3: $5f
	sbc  c                                           ; $44b4: $99
	ld   l, d                                        ; $44b5: $6a
	ld   a, [$000d]                                  ; $44b6: $fa $0d $00
	ld   a, [bc]                                     ; $44b9: $0a
	ld   b, $7c                                      ; $44ba: $06 $7c
	add  hl, de                                      ; $44bc: $19
	rrca                                             ; $44bd: $0f
	nop                                              ; $44be: $00
	ld   bc, $0714                                   ; $44bf: $01 $14 $07
	ld   bc, $b101                                   ; $44c2: $01 $01 $b1
	pop  af                                          ; $44c5: $f1
	db   $fc                                         ; $44c6: $fc
	db   $fc                                         ; $44c7: $fc
	db   $fc                                         ; $44c8: $fc
	push af                                          ; $44c9: $f5
	rst  $38                                         ; $44ca: $ff
	rst  $38                                         ; $44cb: $ff
	dec  c                                           ; $44cc: $0d
	nop                                              ; $44cd: $00
	ld   a, [bc]                                     ; $44ce: $0a
	rlca                                             ; $44cf: $07
	sub  b                                           ; $44d0: $90
	dec  bc                                          ; $44d1: $0b
	inc  bc                                          ; $44d2: $03
	jr   nz, jr_061_44d6                             ; $44d3: $20 $01

	ld   a, [bc]                                     ; $44d5: $0a

jr_061_44d6:
	inc  hl                                          ; $44d6: $23
	nop                                              ; $44d7: $00
	ld   sp, $2040                                   ; $44d8: $31 $40 $20
	inc  bc                                          ; $44db: $03
	jr   nz, jr_061_44df                             ; $44dc: $20 $01

	ld   a, [bc]                                     ; $44de: $0a

jr_061_44df:
	add  hl, hl                                      ; $44df: $29
	nop                                              ; $44e0: $00
	inc  e                                           ; $44e1: $1c
	ld   b, $05                                      ; $44e2: $06 $05
	dec  b                                           ; $44e4: $05
	ld   bc, $acd1                                   ; $44e5: $01 $d1 $ac
	ld   a, [GetRandomNumInPreSpecifiedRange]                                  ; $44e8: $fa $10 $0d
	db   $dd                                         ; $44eb: $dd
	or   d                                           ; $44ec: $b2
	ld   [hl], c                                     ; $44ed: $71
	halt                                             ; $44ee: $76
	ld   h, a                                        ; $44ef: $67
	and  c                                           ; $44f0: $a1
	ld   h, [hl]                                     ; $44f1: $66
	sub  c                                           ; $44f2: $91
	ld   a, e                                        ; $44f3: $7b
	ld   d, l                                        ; $44f4: $55
	sub  [hl]                                        ; $44f5: $96
	sbc  a                                           ; $44f6: $9f
	dec  c                                           ; $44f7: $0d
	nop                                              ; $44f8: $00
	inc  e                                           ; $44f9: $1c
	ld   b, $02                                      ; $44fa: $06 $02
	ld   [bc], a                                     ; $44fc: $02
	ld   bc, $fb02                                   ; $44fd: $01 $02 $fb
	ld   e, a                                        ; $4500: $5f
	sbc  c                                           ; $4501: $99
	ld   l, d                                        ; $4502: $6a
	ld   a, [$000d]                                  ; $4503: $fa $0d $00
	ld   a, [bc]                                     ; $4506: $0a
	ld   b, $7c                                      ; $4507: $06 $7c
	add  hl, de                                      ; $4509: $19
	inc  e                                           ; $450a: $1c
	ld   b, $02                                      ; $450b: $06 $02
	ld   [bc], a                                     ; $450d: $02
	ld   bc, $6503                                   ; $450e: $01 $03 $65
	inc  bc                                          ; $4511: $03
	ret  nc                                          ; $4512: $d0

	sub  $a8                                         ; $4513: $d6 $a8
	and  l                                           ; $4515: $a5
	push af                                          ; $4516: $f5
	ret                                              ; $4517: $c9


	ld   a, h                                        ; $4518: $7c
	dec  c                                           ; $4519: $0d
	ld   [bc], a                                     ; $451a: $02
	inc  [hl]                                        ; $451b: $34
	inc  bc                                          ; $451c: $03
	ret  nc                                          ; $451d: $d0

	ld   h, b                                        ; $451e: $60
	sbc  b                                           ; $451f: $98
	ld   l, [hl]                                     ; $4520: $6e
	ld   a, [$000d]                                  ; $4521: $fa $0d $00
	ld   a, [bc]                                     ; $4524: $0a
	inc  d                                           ; $4525: $14
	dec  d                                           ; $4526: $15
	ld   bc, $0319                                   ; $4527: $01 $19 $03
	inc  bc                                          ; $452a: $03
	inc  bc                                          ; $452b: $03
	ld   a, l                                        ; $452c: $7d
	ld   [hl], l                                     ; $452d: $75
	ld   b, $17                                      ; $452e: $06 $17
	ld   d, d                                        ; $4530: $52
	dec  b                                           ; $4531: $05
	ld   h, l                                        ; $4532: $65
	ld   [bc], a                                     ; $4533: $02
	ld   [hl], c                                     ; $4534: $71
	nop                                              ; $4535: $00
	nop                                              ; $4536: $00
	inc  bc                                          ; $4537: $03
	ld   a, l                                        ; $4538: $7d
	ld   [hl], l                                     ; $4539: $75
	ld   b, $17                                      ; $453a: $06 $17
	ld   d, d                                        ; $453c: $52
	ld   a, h                                        ; $453d: $7c
	ld   e, a                                        ; $453e: $5f
	sbc  c                                           ; $453f: $99
	nop                                              ; $4540: $00
	ld   bc, $6503                                   ; $4541: $01 $03 $65
	inc  bc                                          ; $4544: $03
	ret  nc                                          ; $4545: $d0

	ld   h, b                                        ; $4546: $60
	sbc  b                                           ; $4547: $98
	nop                                              ; $4548: $00
	ld   [bc], a                                     ; $4549: $02
	rlca                                             ; $454a: $07
	jp   c, $0219                                    ; $454b: $da $19 $02

	inc  bc                                          ; $454e: $03
	ld   bc, $2000                                   ; $454f: $01 $00 $20
	nop                                              ; $4552: $00
	rlca                                             ; $4553: $07
	ld   [$021a], sp                                 ; $4554: $08 $1a $02
	inc  bc                                          ; $4557: $03
	ld   bc, $2001                                   ; $4558: $01 $01 $20
	nop                                              ; $455b: $00
	rlca                                             ; $455c: $07
	cpl                                              ; $455d: $2f
	ld   a, [de]                                     ; $455e: $1a
	ld   [bc], a                                     ; $455f: $02
	inc  bc                                          ; $4560: $03
	ld   bc, $2002                                   ; $4561: $01 $02 $20
	nop                                              ; $4564: $00
	ld   b, $8d                                      ; $4565: $06 $8d
	ld   a, [de]                                     ; $4567: $1a
	rrca                                             ; $4568: $0f
	nop                                              ; $4569: $00
	ld   bc, $0301                                   ; $456a: $01 $01 $03
	ld   a, l                                        ; $456d: $7d
	ld   [hl], l                                     ; $456e: $75
	ld   b, $17                                      ; $456f: $06 $17
	ld   [hl], c                                     ; $4571: $71
	ld   [hl], h                                     ; $4572: $74
	sbc  [hl]                                        ; $4573: $9e
	dec  b                                           ; $4574: $05
	ld   h, l                                        ; $4575: $65
	ld   [bc], a                                     ; $4576: $02
	ld   [hl], c                                     ; $4577: $71
	ld   l, [hl]                                     ; $4578: $6e
	ld   a, [$000d]                                  ; $4579: $fa $0d $00
	ld   a, [bc]                                     ; $457c: $0a
	inc  e                                           ; $457d: $1c
	ld   b, $00                                      ; $457e: $06 $00
	nop                                              ; $4580: $00
	ld   bc, $9992                                   ; $4581: $01 $92 $99
	ld   a, b                                        ; $4584: $78
	ld   [hl], c                                     ; $4585: $71
	ld   a, [$000d]                                  ; $4586: $fa $0d $00
	ld   a, [bc]                                     ; $4589: $0a
	dec  b                                           ; $458a: $05
	ld   b, b                                        ; $458b: $40
	rst  $38                                         ; $458c: $ff
	inc  bc                                          ; $458d: $03
	rst  $38                                         ; $458e: $ff
	ld   bc, $2801                                   ; $458f: $01 $01 $28
	nop                                              ; $4592: $00
	ld   b, $dd                                      ; $4593: $06 $dd
	ld   a, [de]                                     ; $4595: $1a
	rrca                                             ; $4596: $0f
	nop                                              ; $4597: $00
	ld   bc, $0301                                   ; $4598: $01 $01 $03
	ld   a, l                                        ; $459b: $7d
	ld   [hl], l                                     ; $459c: $75
	ld   b, $17                                      ; $459d: $06 $17
	ld   d, d                                        ; $459f: $52
	ld   a, h                                        ; $45a0: $7c
	ld   e, a                                        ; $45a1: $5f
	sbc  c                                           ; $45a2: $99
	ld   a, [$000d]                                  ; $45a3: $fa $0d $00
	ld   a, [bc]                                     ; $45a6: $0a
	inc  e                                           ; $45a7: $1c
	ld   b, $01                                      ; $45a8: $06 $01
	ld   bc, $0201                                   ; $45aa: $01 $01 $02
	ld   c, b                                        ; $45ad: $48
	ld   [bc], a                                     ; $45ae: $02
	sub  c                                           ; $45af: $91
	sub  b                                           ; $45b0: $90
	ld   h, l                                        ; $45b1: $65
	ld   [hl], h                                     ; $45b2: $74
	ld   h, c                                        ; $45b3: $61
	ld   d, d                                        ; $45b4: $52
	sub  [hl]                                        ; $45b5: $96
	ld   a, [$000d]                                  ; $45b6: $fa $0d $00
	ld   a, [bc]                                     ; $45b9: $0a
	ld   b, $dd                                      ; $45ba: $06 $dd
	ld   a, [de]                                     ; $45bc: $1a
	rrca                                             ; $45bd: $0f
	nop                                              ; $45be: $00
	ld   bc, $0301                                   ; $45bf: $01 $01 $03
	ld   h, l                                        ; $45c2: $65
	inc  bc                                          ; $45c3: $03
	ret  nc                                          ; $45c4: $d0

	ld   h, b                                        ; $45c5: $60
	sbc  b                                           ; $45c6: $98
	ld   l, [hl]                                     ; $45c7: $6e
	ld   a, [$000d]                                  ; $45c8: $fa $0d $00
	ld   a, [bc]                                     ; $45cb: $0a
	inc  d                                           ; $45cc: $14
	rlca                                             ; $45cd: $07
	ld   bc, $a301                                   ; $45ce: $01 $01 $a3
	and  l                                           ; $45d1: $a5
	ret  nz                                          ; $45d2: $c0

	ret  nz                                          ; $45d3: $c0

	ret  nz                                          ; $45d4: $c0

	dec  c                                           ; $45d5: $0d
	nop                                              ; $45d6: $00
	ld   a, [bc]                                     ; $45d7: $0a
	rlca                                             ; $45d8: $07
	sub  b                                           ; $45d9: $90
	dec  bc                                          ; $45da: $0b
	inc  bc                                          ; $45db: $03
	jr   nz, jr_061_45df                             ; $45dc: $20 $01

	ld   a, [bc]                                     ; $45de: $0a

jr_061_45df:
	inc  hl                                          ; $45df: $23
	nop                                              ; $45e0: $00
	ld   sp, $2040                                   ; $45e1: $31 $40 $20
	inc  bc                                          ; $45e4: $03
	jr   nz, jr_061_45e8                             ; $45e5: $20 $01

	ld   a, [bc]                                     ; $45e7: $0a

jr_061_45e8:
	add  hl, hl                                      ; $45e8: $29
	nop                                              ; $45e9: $00
	inc  e                                           ; $45ea: $1c
	ld   b, $05                                      ; $45eb: $06 $05
	dec  b                                           ; $45ed: $05
	ld   bc, $5258                                   ; $45ee: $01 $58 $52
	ld   e, b                                        ; $45f1: $58
	ld   d, d                                        ; $45f2: $52
	sbc  a                                           ; $45f3: $9f
	ld   e, c                                        ; $45f4: $59
	sbc  l                                           ; $45f5: $9d
	ld   h, e                                        ; $45f6: $63
	ld   l, b                                        ; $45f7: $68
	ld   a, c                                        ; $45f8: $79
	dec  c                                           ; $45f9: $0d
	ld   [bc], a                                     ; $45fa: $02
	ld   c, b                                        ; $45fb: $48
	ld   [bc], a                                     ; $45fc: $02
	sub  c                                           ; $45fd: $91
	ld   l, [hl]                                     ; $45fe: $6e
	ld   e, a                                        ; $45ff: $5f
	ld   h, l                                        ; $4600: $65
	ld   [hl], h                                     ; $4601: $74
	sub  b                                           ; $4602: $90
	pop  bc                                          ; $4603: $c1
	db   $e3                                         ; $4604: $e3
	ld   l, [hl]                                     ; $4605: $6e
	ld   l, d                                        ; $4606: $6a
	sbc  a                                           ; $4607: $9f
	dec  c                                           ; $4608: $0d
	nop                                              ; $4609: $00
	inc  e                                           ; $460a: $1c
	ld   b, $02                                      ; $460b: $06 $02
	ld   [bc], a                                     ; $460d: $02
	ld   bc, $fb02                                   ; $460e: $01 $02 $fb
	ld   e, a                                        ; $4611: $5f
	sbc  c                                           ; $4612: $99
	ld   l, d                                        ; $4613: $6a
	ld   a, [$000d]                                  ; $4614: $fa $0d $00
	ld   a, [bc]                                     ; $4617: $0a
	ld   b, $dd                                      ; $4618: $06 $dd
	ld   a, [de]                                     ; $461a: $1a
	rrca                                             ; $461b: $0f
	nop                                              ; $461c: $00
	ld   bc, $0714                                   ; $461d: $01 $14 $07
	ld   bc, $a301                                   ; $4620: $01 $01 $a3
	and  l                                           ; $4623: $a5
	ret  nz                                          ; $4624: $c0

	ret  nz                                          ; $4625: $c0

	ret  nz                                          ; $4626: $c0

	ret  nz                                          ; $4627: $c0

	ret  nz                                          ; $4628: $c0

	ret  nz                                          ; $4629: $c0

	ret  nz                                          ; $462a: $c0

	rst  $38                                         ; $462b: $ff
	rst  $38                                         ; $462c: $ff
	dec  c                                           ; $462d: $0d
	nop                                              ; $462e: $00
	ld   a, [bc]                                     ; $462f: $0a
	rlca                                             ; $4630: $07
	sub  b                                           ; $4631: $90
	dec  bc                                          ; $4632: $0b
	inc  bc                                          ; $4633: $03
	jr   nz, jr_061_4637                             ; $4634: $20 $01

	ld   a, [bc]                                     ; $4636: $0a

jr_061_4637:
	inc  hl                                          ; $4637: $23
	nop                                              ; $4638: $00
	ld   sp, $2040                                   ; $4639: $31 $40 $20
	inc  bc                                          ; $463c: $03
	jr   nz, jr_061_4640                             ; $463d: $20 $01

	ld   a, [bc]                                     ; $463f: $0a

jr_061_4640:
	add  hl, hl                                      ; $4640: $29
	nop                                              ; $4641: $00
	inc  e                                           ; $4642: $1c
	ld   b, $05                                      ; $4643: $06 $05
	dec  b                                           ; $4645: $05
	ld   bc, $acd1                                   ; $4646: $01 $d1 $ac
	ld   a, [GetRandomNumInPreSpecifiedRange]                                  ; $4649: $fa $10 $0d
	db   $dd                                         ; $464c: $dd
	or   d                                           ; $464d: $b2
	ld   [hl], c                                     ; $464e: $71
	halt                                             ; $464f: $76
	ld   h, a                                        ; $4650: $67
	and  c                                           ; $4651: $a1
	ld   h, [hl]                                     ; $4652: $66
	sub  c                                           ; $4653: $91
	ld   a, e                                        ; $4654: $7b
	ld   d, l                                        ; $4655: $55
	sub  [hl]                                        ; $4656: $96
	sbc  a                                           ; $4657: $9f
	dec  c                                           ; $4658: $0d
	nop                                              ; $4659: $00
	inc  e                                           ; $465a: $1c
	ld   b, $02                                      ; $465b: $06 $02
	ld   [bc], a                                     ; $465d: $02
	ld   bc, $fb02                                   ; $465e: $01 $02 $fb
	ld   e, a                                        ; $4661: $5f
	sbc  c                                           ; $4662: $99
	ld   l, d                                        ; $4663: $6a
	ld   a, [$000d]                                  ; $4664: $fa $0d $00
	ld   a, [bc]                                     ; $4667: $0a
	ld   b, $dd                                      ; $4668: $06 $dd
	ld   a, [de]                                     ; $466a: $1a
	inc  e                                           ; $466b: $1c
	ld   b, $02                                      ; $466c: $06 $02
	ld   [bc], a                                     ; $466e: $02
	ld   bc, $6903                                   ; $466f: $01 $03 $69
	ld   [bc], a                                     ; $4672: $02
	xor  d                                           ; $4673: $aa
	ld   a, l                                        ; $4674: $7d
	ld   e, b                                        ; $4675: $58
	sub  b                                           ; $4676: $90
	ld   d, d                                        ; $4677: $52
	ld   [hl], c                                     ; $4678: $71
	ld   e, e                                        ; $4679: $5b
	sbc  b                                           ; $467a: $98
	dec  c                                           ; $467b: $0d
	inc  bc                                          ; $467c: $03
	ld   h, l                                        ; $467d: $65
	inc  bc                                          ; $467e: $03
	ret  nc                                          ; $467f: $d0

	adc  h                                           ; $4680: $8c
	sbc  l                                           ; $4681: $9d
	ld   h, l                                        ; $4682: $65
	ld   h, b                                        ; $4683: $60
	sbc  b                                           ; $4684: $98
	ld   l, [hl]                                     ; $4685: $6e
	ld   a, [$000d]                                  ; $4686: $fa $0d $00
	ld   a, [bc]                                     ; $4689: $0a
	inc  d                                           ; $468a: $14
	dec  d                                           ; $468b: $15
	ld   bc, $0319                                   ; $468c: $01 $19 $03
	inc  bc                                          ; $468f: $03
	ld   h, l                                        ; $4690: $65
	sub  c                                           ; $4691: $91
	ld   e, d                                        ; $4692: $5a
	and  c                                           ; $4693: $a1
	ld   [hl], l                                     ; $4694: $75
	ld   [bc], a                                     ; $4695: $02
	inc  [hl]                                        ; $4696: $34
	inc  bc                                          ; $4697: $03
	ret  nc                                          ; $4698: $d0

	ld   h, b                                        ; $4699: $60
	sbc  b                                           ; $469a: $98
	nop                                              ; $469b: $00
	nop                                              ; $469c: $00
	ld   h, l                                        ; $469d: $65
	sub  c                                           ; $469e: $91
	ld   e, d                                        ; $469f: $5a
	and  c                                           ; $46a0: $a1
	ld   [hl], l                                     ; $46a1: $75
	ld   e, c                                        ; $46a2: $59
	sbc  l                                           ; $46a3: $9d
	ld   h, a                                        ; $46a4: $67
	nop                                              ; $46a5: $00
	ld   bc, $c8a7                                   ; $46a6: $01 $a7 $c8
	ld   [hl], l                                     ; $46a9: $75
	rst  $10                                         ; $46aa: $d7
	rst  $28                                         ; $46ab: $ef
	call nz, Call_061_65b0                           ; $46ac: $c4 $b0 $65
	ld   [hl], h                                     ; $46af: $74
	inc  b                                           ; $46b0: $04
	dec  bc                                          ; $46b1: $0b
	inc  bc                                          ; $46b2: $03
	ret  nc                                          ; $46b3: $d0

	ld   h, b                                        ; $46b4: $60
	sbc  b                                           ; $46b5: $98
	nop                                              ; $46b6: $00
	ld   [bc], a                                     ; $46b7: $02
	rlca                                             ; $46b8: $07
	ld   c, b                                        ; $46b9: $48
	dec  de                                          ; $46ba: $1b
	ld   [bc], a                                     ; $46bb: $02
	inc  bc                                          ; $46bc: $03
	ld   bc, $2000                                   ; $46bd: $01 $00 $20
	nop                                              ; $46c0: $00
	rlca                                             ; $46c1: $07
	ld   a, [hl]                                     ; $46c2: $7e
	dec  de                                          ; $46c3: $1b
	ld   [bc], a                                     ; $46c4: $02
	inc  bc                                          ; $46c5: $03
	ld   bc, $2001                                   ; $46c6: $01 $01 $20
	nop                                              ; $46c9: $00
	rlca                                             ; $46ca: $07
	and  b                                           ; $46cb: $a0
	dec  de                                          ; $46cc: $1b
	ld   [bc], a                                     ; $46cd: $02
	inc  bc                                          ; $46ce: $03
	ld   bc, $2002                                   ; $46cf: $01 $02 $20
	nop                                              ; $46d2: $00
	ld   b, $2e                                      ; $46d3: $06 $2e
	inc  e                                           ; $46d5: $1c
	rrca                                             ; $46d6: $0f
	nop                                              ; $46d7: $00
	ld   bc, $6501                                   ; $46d8: $01 $01 $65
	sub  c                                           ; $46db: $91
	ld   e, d                                        ; $46dc: $5a
	and  c                                           ; $46dd: $a1
	ld   [hl], l                                     ; $46de: $75
	sbc  [hl]                                        ; $46df: $9e
	ld   [bc], a                                     ; $46e0: $02
	inc  [hl]                                        ; $46e1: $34
	inc  bc                                          ; $46e2: $03
	ret  nc                                          ; $46e3: $d0

	ld   h, b                                        ; $46e4: $60
	sbc  b                                           ; $46e5: $98
	ld   a, [$0dfa]                                  ; $46e6: $fa $fa $0d
	nop                                              ; $46e9: $00
	ld   a, [bc]                                     ; $46ea: $0a
	inc  e                                           ; $46eb: $1c
	ld   b, $00                                      ; $46ec: $06 $00
	nop                                              ; $46ee: $00
	ld   bc, $7158                                   ; $46ef: $01 $58 $71
	halt                                             ; $46f2: $76
	ld   a, [$920d]                                  ; $46f3: $fa $0d $92
	sbc  c                                           ; $46f6: $99
	ld   h, [hl]                                     ; $46f7: $66
	sub  c                                           ; $46f8: $91
	ld   a, e                                        ; $46f9: $7b
	ei                                               ; $46fa: $fb
	ld   e, c                                        ; $46fb: $59
	ld   a, [$000d]                                  ; $46fc: $fa $0d $00
	ld   a, [bc]                                     ; $46ff: $0a
	dec  b                                           ; $4700: $05
	ld   b, b                                        ; $4701: $40
	rst  $38                                         ; $4702: $ff
	inc  bc                                          ; $4703: $03
	rst  $38                                         ; $4704: $ff
	ld   bc, $2801                                   ; $4705: $01 $01 $28
	nop                                              ; $4708: $00
	ld   b, $7c                                      ; $4709: $06 $7c
	inc  e                                           ; $470b: $1c
	rrca                                             ; $470c: $0f
	nop                                              ; $470d: $00
	ld   bc, $6501                                   ; $470e: $01 $01 $65
	sub  c                                           ; $4711: $91
	ld   e, d                                        ; $4712: $5a
	and  c                                           ; $4713: $a1
	ld   [hl], l                                     ; $4714: $75
	sbc  [hl]                                        ; $4715: $9e
	ld   e, c                                        ; $4716: $59
	sbc  l                                           ; $4717: $9d
	ld   h, a                                        ; $4718: $67
	ld   a, [$000d]                                  ; $4719: $fa $0d $00
	ld   a, [bc]                                     ; $471c: $0a
	inc  e                                           ; $471d: $1c
	ld   b, $01                                      ; $471e: $06 $01
	ld   bc, $9601                                   ; $4720: $01 $01 $96
	ld   [hl], c                                     ; $4723: $71
	ld   h, l                                        ; $4724: $65
	sub  c                                           ; $4725: $91
	ei                                               ; $4726: $fb
	ld   a, [$000d]                                  ; $4727: $fa $0d $00
	ld   a, [bc]                                     ; $472a: $0a
	ld   b, $7c                                      ; $472b: $06 $7c
	inc  e                                           ; $472d: $1c
	rrca                                             ; $472e: $0f
	nop                                              ; $472f: $00
	ld   bc, $a701                                   ; $4730: $01 $01 $a7
	ret  z                                           ; $4733: $c8

	ld   [hl], l                                     ; $4734: $75
	rst  $10                                         ; $4735: $d7
	rst  $28                                         ; $4736: $ef
	call nz, Call_061_65b0                           ; $4737: $c4 $b0 $65
	ld   [hl], h                                     ; $473a: $74
	dec  c                                           ; $473b: $0d
	inc  b                                           ; $473c: $04
	dec  bc                                          ; $473d: $0b
	inc  bc                                          ; $473e: $03
	ret  nc                                          ; $473f: $d0

	ld   h, b                                        ; $4740: $60
	sbc  b                                           ; $4741: $98
	ld   l, [hl]                                     ; $4742: $6e
	ld   a, [$000d]                                  ; $4743: $fa $0d $00
	ld   a, [bc]                                     ; $4746: $0a
	inc  d                                           ; $4747: $14
	rlca                                             ; $4748: $07
	ld   bc, $a301                                   ; $4749: $01 $01 $a3
	and  l                                           ; $474c: $a5
	ret  nz                                          ; $474d: $c0

	ei                                               ; $474e: $fb
	ei                                               ; $474f: $fb
	ei                                               ; $4750: $fb
	ei                                               ; $4751: $fb
	rst  $38                                         ; $4752: $ff
	rst  $38                                         ; $4753: $ff
	dec  c                                           ; $4754: $0d
	and  l                                           ; $4755: $a5
	call nz, $fbc7                                   ; $4756: $c4 $c7 $fb
	rst  $38                                         ; $4759: $ff
	rst  $38                                         ; $475a: $ff
	dec  c                                           ; $475b: $0d
	nop                                              ; $475c: $00
	ld   a, [bc]                                     ; $475d: $0a
	rlca                                             ; $475e: $07
	sub  b                                           ; $475f: $90
	dec  bc                                          ; $4760: $0b
	inc  bc                                          ; $4761: $03
	jr   nz, jr_061_4765                             ; $4762: $20 $01

	ld   a, [bc]                                     ; $4764: $0a

jr_061_4765:
	inc  hl                                          ; $4765: $23
	nop                                              ; $4766: $00
	ld   sp, $2040                                   ; $4767: $31 $40 $20
	inc  bc                                          ; $476a: $03
	jr   nz, jr_061_476e                             ; $476b: $20 $01

	ld   a, [bc]                                     ; $476d: $0a

jr_061_476e:
	add  hl, hl                                      ; $476e: $29
	nop                                              ; $476f: $00
	inc  e                                           ; $4770: $1c
	ld   b, $05                                      ; $4771: $06 $05
	dec  b                                           ; $4773: $05
	ld   bc, $5258                                   ; $4774: $01 $58 $52
	ld   a, [$0e04]                                  ; $4777: $fa $04 $0e
	inc  bc                                          ; $477a: $03
	sbc  l                                           ; $477b: $9d
	inc  b                                           ; $477c: $04
	and  [hl]                                        ; $477d: $a6
	ld   e, c                                        ; $477e: $59
	ld   sp, hl                                      ; $477f: $f9
	dec  c                                           ; $4780: $0d
	ld   e, b                                        ; $4781: $58
	sub  b                                           ; $4782: $90
	ld   d, d                                        ; $4783: $52
	ld   [hl], c                                     ; $4784: $71
	ld   e, e                                        ; $4785: $5b
	sbc  b                                           ; $4786: $98
	ld   d, d                                        ; $4787: $52
	ld   [hl], c                                     ; $4788: $71
	ld   l, l                                        ; $4789: $6d
	ld   e, c                                        ; $478a: $59
	sub  a                                           ; $478b: $97
	ld   a, b                                        ; $478c: $78
	rst  $38                                         ; $478d: $ff
	rst  $38                                         ; $478e: $ff
	dec  c                                           ; $478f: $0d
	nop                                              ; $4790: $00
	ld   a, [bc]                                     ; $4791: $0a
	ld   bc, $6903                                   ; $4792: $01 $03 $69
	ld   [bc], a                                     ; $4795: $02
	xor  d                                           ; $4796: $aa
	ld   a, h                                        ; $4797: $7c
	inc  bc                                          ; $4798: $03
	ld   h, l                                        ; $4799: $65
	inc  bc                                          ; $479a: $03
	ret  nc                                          ; $479b: $d0

	adc  h                                           ; $479c: $8c
	sbc  l                                           ; $479d: $9d
	ld   h, l                                        ; $479e: $65
	ld   h, b                                        ; $479f: $60
	sbc  b                                           ; $47a0: $98
	ld   a, l                                        ; $47a1: $7d
	sbc  [hl]                                        ; $47a2: $9e
	dec  c                                           ; $47a3: $0d
	ld   [bc], a                                     ; $47a4: $02
	rst  $38                                         ; $47a5: $ff
	ld   e, a                                        ; $47a6: $5f
	ld   l, b                                        ; $47a7: $68
	ld   a, c                                        ; $47a8: $79
	sbc  [hl]                                        ; $47a9: $9e
	ld   h, l                                        ; $47aa: $65
	sub  c                                           ; $47ab: $91
	ld   e, d                                        ; $47ac: $5a
	and  c                                           ; $47ad: $a1
	ld   [hl], l                                     ; $47ae: $75
	dec  c                                           ; $47af: $0d
	sub  [hl]                                        ; $47b0: $96
	ld   e, a                                        ; $47b1: $5f
	ld   a, b                                        ; $47b2: $78
	ld   e, e                                        ; $47b3: $5b
	sub  c                                           ; $47b4: $91
	sbc  a                                           ; $47b5: $9f
	dec  c                                           ; $47b6: $0d
	nop                                              ; $47b7: $00
	ld   a, [bc]                                     ; $47b8: $0a
	ld   b, $7c                                      ; $47b9: $06 $7c
	inc  e                                           ; $47bb: $1c
	rrca                                             ; $47bc: $0f
	nop                                              ; $47bd: $00
	ld   bc, $0714                                   ; $47be: $01 $14 $07
	ld   bc, $b101                                   ; $47c1: $01 $01 $b1
	reti                                             ; $47c4: $d9


	call nz, $ffff                                   ; $47c5: $c4 $ff $ff
	dec  c                                           ; $47c8: $0d
	pop  de                                          ; $47c9: $d1
	ret  nz                                          ; $47ca: $c0

	push af                                          ; $47cb: $f5
	xor  [hl]                                        ; $47cc: $ae
	rst  $20                                         ; $47cd: $e7
	ei                                               ; $47ce: $fb
	db   $fc                                         ; $47cf: $fc
	rst  $38                                         ; $47d0: $ff
	rst  $38                                         ; $47d1: $ff
	dec  c                                           ; $47d2: $0d
	nop                                              ; $47d3: $00
	ld   a, [bc]                                     ; $47d4: $0a
	rlca                                             ; $47d5: $07
	sub  b                                           ; $47d6: $90
	dec  bc                                          ; $47d7: $0b
	inc  bc                                          ; $47d8: $03
	jr   nz, jr_061_47dc                             ; $47d9: $20 $01

	ld   a, [bc]                                     ; $47db: $0a

jr_061_47dc:
	inc  hl                                          ; $47dc: $23
	nop                                              ; $47dd: $00
	ld   sp, $2040                                   ; $47de: $31 $40 $20
	inc  bc                                          ; $47e1: $03
	jr   nz, jr_061_47e5                             ; $47e2: $20 $01

	ld   a, [bc]                                     ; $47e4: $0a

jr_061_47e5:
	add  hl, hl                                      ; $47e5: $29
	nop                                              ; $47e6: $00
	inc  e                                           ; $47e7: $1c
	ld   b, $05                                      ; $47e8: $06 $05
	dec  b                                           ; $47ea: $05
	ld   bc, $acd1                                   ; $47eb: $01 $d1 $ac
	ld   a, [GetRandomNumInPreSpecifiedRange]                                  ; $47ee: $fa $10 $0d
	db   $dd                                         ; $47f1: $dd
	or   d                                           ; $47f2: $b2
	ld   [hl], c                                     ; $47f3: $71
	halt                                             ; $47f4: $76
	ld   h, a                                        ; $47f5: $67
	and  c                                           ; $47f6: $a1
	ld   h, [hl]                                     ; $47f7: $66
	sub  c                                           ; $47f8: $91
	ld   a, e                                        ; $47f9: $7b
	ld   d, l                                        ; $47fa: $55
	sub  [hl]                                        ; $47fb: $96
	sbc  a                                           ; $47fc: $9f
	dec  c                                           ; $47fd: $0d
	adc  h                                           ; $47fe: $8c
	ld   [hl], c                                     ; $47ff: $71
	ld   l, l                                        ; $4800: $6d
	ld   e, l                                        ; $4801: $5d
	db   $fc                                         ; $4802: $fc
	sbc  a                                           ; $4803: $9f
	dec  c                                           ; $4804: $0d
	nop                                              ; $4805: $00
	ld   a, [bc]                                     ; $4806: $0a
	ld   b, $7c                                      ; $4807: $06 $7c
	inc  e                                           ; $4809: $1c
	rlca                                             ; $480a: $07
	dec  e                                           ; $480b: $1d
	dec  e                                           ; $480c: $1d
	inc  bc                                          ; $480d: $03
	rst  $38                                         ; $480e: $ff
	ld   bc, $2002                                   ; $480f: $01 $02 $20
	inc  bc                                          ; $4812: $03
	rst  $38                                         ; $4813: $ff
	ld   bc, $2003                                   ; $4814: $01 $03 $20
	inc  e                                           ; $4817: $1c
	inc  bc                                          ; $4818: $03
	rst  $38                                         ; $4819: $ff
	ld   bc, $2004                                   ; $481a: $01 $04 $20
	inc  e                                           ; $481d: $1c
	nop                                              ; $481e: $00
	rlca                                             ; $481f: $07
	ld   l, h                                        ; $4820: $6c
	dec  e                                           ; $4821: $1d
	inc  bc                                          ; $4822: $03
	rst  $38                                         ; $4823: $ff
	ld   bc, $2301                                   ; $4824: $01 $01 $23
	nop                                              ; $4827: $00
	inc  e                                           ; $4828: $1c
	ld   b, $07                                      ; $4829: $06 $07
	rlca                                             ; $482b: $07
	dec  e                                           ; $482c: $1d
	ld   b, b                                        ; $482d: $40
	ld   d, $03                                      ; $482e: $16 $03
	ld   d, $01                                      ; $4830: $16 $01
	inc  bc                                          ; $4832: $03
	jr   z, jr_061_4835                              ; $4833: $28 $00

jr_061_4835:
	ld   bc, $7196                                   ; $4835: $01 $96 $71
	ld   h, l                                        ; $4838: $65
	sub  c                                           ; $4839: $91
	ei                                               ; $483a: $fb
	ld   a, [$d10d]                                  ; $483b: $fa $0d $d1
	call nz, $ecc2                                   ; $483e: $c4 $c2 $ec
	ld   l, [hl]                                     ; $4841: $6e
	ld   l, d                                        ; $4842: $6a
	ld   [$fa00], sp                                 ; $4843: $08 $00 $fa
	ld   a, [$000d]                                  ; $4846: $fa $0d $00
	ld   a, [bc]                                     ; $4849: $0a
	ld   bc, $f5b6                                   ; $484a: $01 $b6 $f5
	xor  [hl]                                        ; $484d: $ae
	rst  $20                                         ; $484e: $e7
	ei                                               ; $484f: $fb
	sbc  a                                           ; $4850: $9f
	dec  c                                           ; $4851: $0d
	ld   h, c                                        ; $4852: $61
	sbc  d                                           ; $4853: $9a
	ld   [hl], l                                     ; $4854: $75
	sbc  [hl]                                        ; $4855: $9e
	ld   h, c                                        ; $4856: $61
	ld   a, h                                        ; $4857: $7c
	ld   [bc], a                                     ; $4858: $02
	adc  h                                           ; $4859: $8c
	ld   a, c                                        ; $485a: $79
	adc  l                                           ; $485b: $8d
	ld   e, d                                        ; $485c: $5a
	ld   e, e                                        ; $485d: $5b
	ld   e, d                                        ; $485e: $5a
	dec  c                                           ; $485f: $0d
	ld   e, c                                        ; $4860: $59
	ld   e, c                                        ; $4861: $59
	ld   [hl], c                                     ; $4862: $71
	ld   l, l                                        ; $4863: $6d
	ld   l, d                                        ; $4864: $6a
	sbc  a                                           ; $4865: $9f
	dec  c                                           ; $4866: $0d
	nop                                              ; $4867: $00
	ld   a, [bc]                                     ; $4868: $0a
	ld   d, $26                                      ; $4869: $16 $26
	rrca                                             ; $486b: $0f
	ld   b, $01                                      ; $486c: $06 $01
	ld   bc, $9a61                                   ; $486e: $01 $61 $9a
	ld   [hl], l                                     ; $4871: $75
	sbc  [hl]                                        ; $4872: $9e
	dec  b                                           ; $4873: $05
	and  h                                           ; $4874: $a4
	and  b                                           ; $4875: $a0
	add  e                                           ; $4876: $83
	ld   e, e                                        ; $4877: $5b
	ld   a, b                                        ; $4878: $78
	sbc  a                                           ; $4879: $9f
	dec  c                                           ; $487a: $0d
	nop                                              ; $487b: $00
	ld   a, [bc]                                     ; $487c: $0a
	rrca                                             ; $487d: $0f
	ld   b, $01                                      ; $487e: $06 $01
	ld   bc, $9166                                   ; $4880: $01 $66 $91
	sbc  [hl]                                        ; $4883: $9e
	ld   [bc], a                                     ; $4884: $02
	and  l                                           ; $4885: $a5
	inc  b                                           ; $4886: $04
	xor  d                                           ; $4887: $aa
	ld   a, l                                        ; $4888: $7d
	sub  b                                           ; $4889: $90
	ld   d, h                                        ; $488a: $54
	sub  h                                           ; $488b: $94
	ld   [hl], c                                     ; $488c: $71
	ld   e, l                                        ; $488d: $5d
	sbc  b                                           ; $488e: $98
	dec  c                                           ; $488f: $0d
	inc  bc                                          ; $4890: $03
	and  a                                           ; $4891: $a7
	and  c                                           ; $4892: $a1
	ld   [hl], l                                     ; $4893: $75
	ld   e, l                                        ; $4894: $5d
	sbc  d                                           ; $4895: $9a
	sbc  a                                           ; $4896: $9f
	dec  c                                           ; $4897: $0d
	ld   e, b                                        ; $4898: $58
	inc  b                                           ; $4899: $04
	ld   a, e                                        ; $489a: $7b
	sbc  d                                           ; $489b: $9a
	ld   h, e                                        ; $489c: $63
	and  c                                           ; $489d: $a1
	sbc  a                                           ; $489e: $9f
	dec  c                                           ; $489f: $0d
	nop                                              ; $48a0: $00
	ld   a, [bc]                                     ; $48a1: $0a
	dec  b                                           ; $48a2: $05
	add  b                                           ; $48a3: $80
	adc  d                                           ; $48a4: $8a
	ld   bc, $0001                                   ; $48a5: $01 $01 $00
	add  hl, hl                                      ; $48a8: $29
	nop                                              ; $48a9: $00
	nop                                              ; $48aa: $00
	inc  e                                           ; $48ab: $1c
	ld   b, $01                                      ; $48ac: $06 $01
	ld   bc, $401d                                   ; $48ae: $01 $1d $40
	ld   d, $03                                      ; $48b1: $16 $03
	ld   d, $01                                      ; $48b3: $16 $01
	ld   [bc], a                                     ; $48b5: $02
	jr   z, jr_061_48b8                              ; $48b6: $28 $00

jr_061_48b8:
	ld   bc, $a154                                   ; $48b8: $01 $54 $a1
	sbc  a                                           ; $48bb: $9f
	adc  h                                           ; $48bc: $8c
	ld   l, b                                        ; $48bd: $68
	adc  h                                           ; $48be: $8c
	ld   l, b                                        ; $48bf: $68
	ld   e, c                                        ; $48c0: $59
	rst  $38                                         ; $48c1: $ff
	rst  $38                                         ; $48c2: $ff
	dec  c                                           ; $48c3: $0d
	or   [hl]                                        ; $48c4: $b6
	push af                                          ; $48c5: $f5
	xor  [hl]                                        ; $48c6: $ae
	rst  $20                                         ; $48c7: $e7
	ei                                               ; $48c8: $fb
	sbc  [hl]                                        ; $48c9: $9e
	ld   [$9f00], sp                                 ; $48ca: $08 $00 $9f
	dec  c                                           ; $48cd: $0d
	nop                                              ; $48ce: $00
	ld   a, [bc]                                     ; $48cf: $0a
	ld   bc, $9166                                   ; $48d0: $01 $66 $91
	sbc  [hl]                                        ; $48d3: $9e
	ld   [bc], a                                     ; $48d4: $02
	and  l                                           ; $48d5: $a5
	inc  b                                           ; $48d6: $04
	xor  d                                           ; $48d7: $aa
	ld   a, l                                        ; $48d8: $7d
	sub  b                                           ; $48d9: $90
	ld   d, h                                        ; $48da: $54
	sub  h                                           ; $48db: $94
	ld   [hl], c                                     ; $48dc: $71
	ld   e, l                                        ; $48dd: $5d
	sbc  b                                           ; $48de: $98
	dec  c                                           ; $48df: $0d
	inc  bc                                          ; $48e0: $03
	and  a                                           ; $48e1: $a7
	and  c                                           ; $48e2: $a1
	ld   [hl], l                                     ; $48e3: $75
	ld   e, l                                        ; $48e4: $5d
	sbc  d                                           ; $48e5: $9a
	sbc  a                                           ; $48e6: $9f
	ld   e, b                                        ; $48e7: $58
	inc  b                                           ; $48e8: $04
	ld   a, e                                        ; $48e9: $7b
	sbc  d                                           ; $48ea: $9a
	ld   h, e                                        ; $48eb: $63
	and  c                                           ; $48ec: $a1
	sbc  a                                           ; $48ed: $9f
	dec  c                                           ; $48ee: $0d
	nop                                              ; $48ef: $00
	ld   a, [bc]                                     ; $48f0: $0a
	dec  b                                           ; $48f1: $05
	add  b                                           ; $48f2: $80
	adc  d                                           ; $48f3: $8a
	ld   bc, $0001                                   ; $48f4: $01 $01 $00
	add  hl, hl                                      ; $48f7: $29
	nop                                              ; $48f8: $00
	nop                                              ; $48f9: $00
	inc  e                                           ; $48fa: $1c
	ld   b, $00                                      ; $48fb: $06 $00
	nop                                              ; $48fd: $00
	ld   bc, $0358                                   ; $48fe: $01 $58 $03
	ld   c, a                                        ; $4901: $4f
	ld   a, c                                        ; $4902: $79
	sub  c                                           ; $4903: $91
	sbc  [hl]                                        ; $4904: $9e
	adc  h                                           ; $4905: $8c
	ld   l, [hl]                                     ; $4906: $6e
	dec  c                                           ; $4907: $0d
	adc  [hl]                                        ; $4908: $8e
	sbc  b                                           ; $4909: $98
	ld   l, [hl]                                     ; $490a: $6e
	ld   [hl], c                                     ; $490b: $71
	ld   l, l                                        ; $490c: $6d
	ld   e, c                                        ; $490d: $59
	ld   [hl], c                                     ; $490e: $71
	ld   l, l                                        ; $490f: $6d
	ld   e, c                                        ; $4910: $59
	ld   a, b                                        ; $4911: $78
	rst  $38                                         ; $4912: $ff
	rst  $38                                         ; $4913: $ff
	dec  c                                           ; $4914: $0d
	ld   [hl], l                                     ; $4915: $75
	sub  b                                           ; $4916: $90
	sbc  [hl]                                        ; $4917: $9e
	adc  h                                           ; $4918: $8c
	ld   d, b                                        ; $4919: $50
	ld   l, l                                        ; $491a: $6d
	ld   h, a                                        ; $491b: $67
	ld   e, c                                        ; $491c: $59
	ld   [hl], c                                     ; $491d: $71
	ld   l, l                                        ; $491e: $6d
	ld   l, d                                        ; $491f: $6a
	sbc  a                                           ; $4920: $9f
	dec  c                                           ; $4921: $0d
	nop                                              ; $4922: $00
	ld   a, [bc]                                     ; $4923: $0a
	ld   bc, $9166                                   ; $4924: $01 $66 $91
	sbc  [hl]                                        ; $4927: $9e
	ld   [bc], a                                     ; $4928: $02
	and  l                                           ; $4929: $a5
	inc  b                                           ; $492a: $04
	xor  d                                           ; $492b: $aa
	ld   a, l                                        ; $492c: $7d
	sub  b                                           ; $492d: $90
	ld   d, h                                        ; $492e: $54
	sub  h                                           ; $492f: $94
	ld   [hl], c                                     ; $4930: $71
	ld   e, l                                        ; $4931: $5d
	sbc  b                                           ; $4932: $98
	dec  c                                           ; $4933: $0d
	inc  bc                                          ; $4934: $03
	and  a                                           ; $4935: $a7
	and  c                                           ; $4936: $a1
	ld   [hl], l                                     ; $4937: $75
	ld   e, l                                        ; $4938: $5d
	sbc  d                                           ; $4939: $9a
	sbc  a                                           ; $493a: $9f
	ld   e, b                                        ; $493b: $58
	inc  b                                           ; $493c: $04
	ld   a, e                                        ; $493d: $7b
	sbc  d                                           ; $493e: $9a
	ld   h, e                                        ; $493f: $63
	and  c                                           ; $4940: $a1
	sbc  a                                           ; $4941: $9f
	dec  c                                           ; $4942: $0d
	nop                                              ; $4943: $00
	ld   a, [bc]                                     ; $4944: $0a
	dec  b                                           ; $4945: $05
	add  b                                           ; $4946: $80
	adc  d                                           ; $4947: $8a
	ld   bc, $0001                                   ; $4948: $01 $01 $00
	add  hl, hl                                      ; $494b: $29
	nop                                              ; $494c: $00
	nop                                              ; $494d: $00
	nop                                              ; $494e: $00
	inc  bc                                          ; $494f: $03
	inc  d                                           ; $4950: $14
	ld   bc, $24aa                                   ; $4951: $01 $aa $24
	inc  b                                           ; $4954: $04
	add  b                                           ; $4955: $80
	ld   c, e                                        ; $4956: $4b
	ld   bc, $20ff                                   ; $4957: $01 $ff $20
	inc  e                                           ; $495a: $1c
	nop                                              ; $495b: $00
	ld   c, $01                                      ; $495c: $0e $01
	rrca                                             ; $495e: $0f
	nop                                              ; $495f: $00
	ld   bc, $0f02                                   ; $4960: $01 $02 $0f
	nop                                              ; $4963: $00
	ld   bc, $6301                                   ; $4964: $01 $01 $63
	ld   d, b                                        ; $4967: $50
	sbc  [hl]                                        ; $4968: $9e
	ld   [bc], a                                     ; $4969: $02
	and  l                                           ; $496a: $a5
	inc  b                                           ; $496b: $04
	xor  d                                           ; $496c: $aa
	sub  b                                           ; $496d: $90
	ld   [bc], a                                     ; $496e: $02
	jr   nz, jr_061_4975                             ; $496f: $20 $04

	xor  d                                           ; $4971: $aa
	dec  c                                           ; $4972: $0d
	ld   e, d                                        ; $4973: $5a
	and  c                                           ; $4974: $a1

jr_061_4975:
	ld   a, [hl]                                     ; $4975: $7e
	sbc  c                                           ; $4976: $99
	ld   l, h                                        ; $4977: $6c
	db   $fc                                         ; $4978: $fc
	sbc  a                                           ; $4979: $9f
	dec  c                                           ; $497a: $0d
	nop                                              ; $497b: $00
	ld   a, [bc]                                     ; $497c: $0a
	inc  d                                           ; $497d: $14
	ld   b, $01                                      ; $497e: $06 $01
	rrca                                             ; $4980: $0f
	inc  b                                           ; $4981: $04
	nop                                              ; $4982: $00
	ld   bc, $526f                                   ; $4983: $01 $6f $52
	ld   [bc], a                                     ; $4986: $02
	inc  de                                          ; $4987: $13
	ld   l, a                                        ; $4988: $6f
	sub  c                                           ; $4989: $91
	and  c                                           ; $498a: $a1
	sbc  a                                           ; $498b: $9f
	dec  c                                           ; $498c: $0d
	ld   e, b                                        ; $498d: $58
	ld   a, l                                        ; $498e: $7d
	sub  [hl]                                        ; $498f: $96
	ld   d, h                                        ; $4990: $54
	sbc  a                                           ; $4991: $9f
	dec  c                                           ; $4992: $0d
	nop                                              ; $4993: $00
	ld   a, [bc]                                     ; $4994: $0a
	inc  d                                           ; $4995: $14
	ld   a, [bc]                                     ; $4996: $0a
	ld   bc, $040d                                   ; $4997: $01 $0d $04
	ld   bc, $000f                                   ; $499a: $01 $0f $00
	ld   bc, $5801                                   ; $499d: $01 $01 $58
	ld   a, l                                        ; $49a0: $7d
	sub  [hl]                                        ; $49a1: $96
	ld   d, h                                        ; $49a2: $54
	and  e                                           ; $49a3: $a3
	and  l                                           ; $49a4: $a5
	db   $ec                                         ; $49a5: $ec
	cp   d                                           ; $49a6: $ba
	sbc  a                                           ; $49a7: $9f
	dec  c                                           ; $49a8: $0d
	inc  b                                           ; $49a9: $04
	ld   c, c                                        ; $49aa: $49
	ld   e, c                                        ; $49ab: $59
	sub  [hl]                                        ; $49ac: $96
	ld   d, h                                        ; $49ad: $54
	ld   e, c                                        ; $49ae: $59
	ld   d, d                                        ; $49af: $52
	ld   sp, hl                                      ; $49b0: $f9
	dec  c                                           ; $49b1: $0d
	nop                                              ; $49b2: $00
	ld   a, [bc]                                     ; $49b3: $0a
	inc  e                                           ; $49b4: $1c
	inc  b                                           ; $49b5: $04
	nop                                              ; $49b6: $00
	nop                                              ; $49b7: $00
	ld   bc, $7c50                                   ; $49b8: $01 $50 $7c
	ld   a, e                                        ; $49bb: $7b
	sbc  [hl]                                        ; $49bc: $9e
	ld   d, b                                        ; $49bd: $50
	ld   a, h                                        ; $49be: $7c
	ld   a, e                                        ; $49bf: $7b
	sbc  a                                           ; $49c0: $9f
	dec  c                                           ; $49c1: $0d
	ld   h, e                                        ; $49c2: $63
	ld   e, l                                        ; $49c3: $5d
	sub  a                                           ; $49c4: $97
	halt                                             ; $49c5: $76
	ld   e, b                                        ; $49c6: $58
	ld   [bc], a                                     ; $49c7: $02
	inc  de                                          ; $49c8: $13
	ld   l, a                                        ; $49c9: $6f
	sub  c                                           ; $49ca: $91
	and  c                                           ; $49cb: $a1
	ld   e, d                                        ; $49cc: $5a
	sbc  [hl]                                        ; $49cd: $9e
	ld   e, e                                        ; $49ce: $5b
	sub  l                                           ; $49cf: $95
	ld   d, h                                        ; $49d0: $54
	dec  c                                           ; $49d1: $0d
	ld   [hl], a                                     ; $49d2: $77
	ld   h, c                                        ; $49d3: $61
	ld   e, c                                        ; $49d4: $59
	add  [hl]                                        ; $49d5: $86
	ld   [hl], l                                     ; $49d6: $75
	ld   e, c                                        ; $49d7: $59
	ld   e, a                                        ; $49d8: $5f
	sbc  c                                           ; $49d9: $99
	and  c                                           ; $49da: $a1
	ld   l, [hl]                                     ; $49db: $6e
	ld   [hl], c                                     ; $49dc: $71
	ld   [hl], h                                     ; $49dd: $74
	sbc  a                                           ; $49de: $9f
	dec  c                                           ; $49df: $0d
	nop                                              ; $49e0: $00
	ld   a, [bc]                                     ; $49e1: $0a
	inc  e                                           ; $49e2: $1c
	inc  b                                           ; $49e3: $04
	rlca                                             ; $49e4: $07
	rlca                                             ; $49e5: $07
	ld   bc, $7c50                                   ; $49e6: $01 $50 $7c
	add  e                                           ; $49e9: $83
	ld   l, l                                        ; $49ea: $6d
	sbc  b                                           ; $49eb: $98
	sbc  [hl]                                        ; $49ec: $9e
	dec  c                                           ; $49ed: $0d
	cp   l                                           ; $49ee: $bd
	call nz, $a5c0                                   ; $49ef: $c4 $c0 $a5
	ld   a, c                                        ; $49f2: $79
	ld   d, b                                        ; $49f3: $50
	sub  d                                           ; $49f4: $92
	ld   h, l                                        ; $49f5: $65
	ld   d, d                                        ; $49f6: $52
	sub  [hl]                                        ; $49f7: $96
	sbc  a                                           ; $49f8: $9f
	dec  c                                           ; $49f9: $0d
	nop                                              ; $49fa: $00
	ld   a, [bc]                                     ; $49fb: $0a
	ld   bc, $fbc8                                   ; $49fc: $01 $c8 $fb
	ret                                              ; $49ff: $c9


	ld   l, [hl]                                     ; $4a00: $6e
	sub  [hl]                                        ; $4a01: $96
	sbc  [hl]                                        ; $4a02: $9e
	ld   l, d                                        ; $4a03: $6a
	ld   [hl], c                                     ; $4a04: $71
	ld   l, l                                        ; $4a05: $6d
	ld   d, d                                        ; $4a06: $52
	ld   a, c                                        ; $4a07: $79
	sbc  a                                           ; $4a08: $9f
	dec  c                                           ; $4a09: $0d
	ld   d, b                                        ; $4a0a: $50
	halt                                             ; $4a0b: $76
	and  b                                           ; $4a0c: $a0
	ld   [hl], d                                     ; $4a0d: $72
	ld   e, a                                        ; $4a0e: $5f
	ld   [hl], h                                     ; $4a0f: $74
	adc  l                                           ; $4a10: $8d
	sub  [hl]                                        ; $4a11: $96
	ld   d, h                                        ; $4a12: $54
	sub  [hl]                                        ; $4a13: $96
	sbc  a                                           ; $4a14: $9f
	dec  c                                           ; $4a15: $0d
	nop                                              ; $4a16: $00
	ld   a, [bc]                                     ; $4a17: $0a
	add  hl, de                                      ; $4a18: $19
	dec  b                                           ; $4a19: $05
	ld   [bc], a                                     ; $4a1a: $02
	ld   d, d                                        ; $4a1b: $52
	ld   d, d                                        ; $4a1c: $52
	sub  [hl]                                        ; $4a1d: $96
	nop                                              ; $4a1e: $00
	nop                                              ; $4a1f: $00
	ld   h, c                                        ; $4a20: $61
	halt                                             ; $4a21: $76
	sbc  l                                           ; $4a22: $9d
	sbc  c                                           ; $4a23: $99
	nop                                              ; $4a24: $00
	ld   bc, $df07                                   ; $4a25: $01 $07 $df
	nop                                              ; $4a28: $00
	ld   [bc], a                                     ; $4a29: $02
	inc  bc                                          ; $4a2a: $03
	ld   bc, $2000                                   ; $4a2b: $01 $00 $20
	nop                                              ; $4a2e: $00
	rlca                                             ; $4a2f: $07
	inc  de                                          ; $4a30: $13
	ld   bc, $0302                                   ; $4a31: $01 $02 $03
	ld   bc, $2001                                   ; $4a34: $01 $01 $20
	nop                                              ; $4a37: $00
	ld   b, $64                                      ; $4a38: $06 $64
	ld   bc, $000f                                   ; $4a3a: $01 $0f $00
	ld   bc, $040d                                   ; $4a3d: $01 $0d $04
	ld   bc, $5801                                   ; $4a40: $01 $01 $58
	sub  b                                           ; $4a43: $90
	ld   h, l                                        ; $4a44: $65
	sbc  e                                           ; $4a45: $9b
	ld   l, e                                        ; $4a46: $6b
	ld   d, h                                        ; $4a47: $54
	ld   l, [hl]                                     ; $4a48: $6e
	ld   a, e                                        ; $4a49: $7b
	sbc  a                                           ; $4a4a: $9f
	dec  c                                           ; $4a4b: $0d
	ld   h, [hl]                                     ; $4a4c: $66
	sub  c                                           ; $4a4d: $91
	sbc  [hl]                                        ; $4a4e: $9e
	ld   [bc], a                                     ; $4a4f: $02
	ld   a, a                                        ; $4a50: $7f
	ld   h, c                                        ; $4a51: $61
	ld   d, h                                        ; $4a52: $54
	ld   e, c                                        ; $4a53: $59
	sbc  a                                           ; $4a54: $9f
	dec  c                                           ; $4a55: $0d
	nop                                              ; $4a56: $00
	ld   a, [bc]                                     ; $4a57: $0a
	rrca                                             ; $4a58: $0f
	inc  b                                           ; $4a59: $04
	ld   bc, $5401                                   ; $4a5a: $01 $01 $54
	and  c                                           ; $4a5d: $a1
	sbc  [hl]                                        ; $4a5e: $9e
	ld   d, d                                        ; $4a5f: $52
	ld   h, c                                        ; $4a60: $61
	ld   d, h                                        ; $4a61: $54
	ld   a, [$000d]                                  ; $4a62: $fa $0d $00
	ld   a, [bc]                                     ; $4a65: $0a
	rrca                                             ; $4a66: $0f
	nop                                              ; $4a67: $00
	ld   bc, $000d                                   ; $4a68: $01 $0d $00
	nop                                              ; $4a6b: $00
	ld   b, $a9                                      ; $4a6c: $06 $a9
	ld   bc, $000f                                   ; $4a6e: $01 $0f $00
	ld   bc, $c101                                   ; $4a71: $01 $01 $c1
	db   $e3                                         ; $4a74: $e3
	ld   l, [hl]                                     ; $4a75: $6e
	sub  [hl]                                        ; $4a76: $96
	sbc  a                                           ; $4a77: $9f
	dec  c                                           ; $4a78: $0d
	ld   d, b                                        ; $4a79: $50
	halt                                             ; $4a7a: $76
	and  b                                           ; $4a7b: $a0
	ld   [hl], d                                     ; $4a7c: $72
	ld   e, a                                        ; $4a7d: $5f
	sbc  c                                           ; $4a7e: $99
	ld   l, [hl]                                     ; $4a7f: $6e
	ld   a, b                                        ; $4a80: $78
	and  c                                           ; $4a81: $a1
	ld   [hl], h                                     ; $4a82: $74
	sbc  a                                           ; $4a83: $9f
	dec  c                                           ; $4a84: $0d
	ld   l, e                                        ; $4a85: $6b
	and  c                                           ; $4a86: $a1
	ld   a, b                                        ; $4a87: $78
	ld   h, c                                        ; $4a88: $61
	halt                                             ; $4a89: $76
	ld   h, l                                        ; $4a8a: $65
	ld   l, a                                        ; $4a8b: $6f
	sub  c                                           ; $4a8c: $91
	ld   d, d                                        ; $4a8d: $52
	ld   e, a                                        ; $4a8e: $5f
	ld   a, b                                        ; $4a8f: $78
	ld   d, d                                        ; $4a90: $52
	sub  [hl]                                        ; $4a91: $96
	sbc  a                                           ; $4a92: $9f
	dec  c                                           ; $4a93: $0d
	nop                                              ; $4a94: $00
	ld   a, [bc]                                     ; $4a95: $0a
	inc  e                                           ; $4a96: $1c
	inc  b                                           ; $4a97: $04
	inc  b                                           ; $4a98: $04
	inc  b                                           ; $4a99: $04
	dec  e                                           ; $4a9a: $1d
	ld   b, b                                        ; $4a9b: $40
	inc  d                                           ; $4a9c: $14
	inc  bc                                          ; $4a9d: $03
	inc  d                                           ; $4a9e: $14
	ld   bc, $2902                                   ; $4a9f: $01 $02 $29
	nop                                              ; $4aa2: $00
	ld   bc, $fb78                                   ; $4aa3: $01 $78 $fb
	and  c                                           ; $4aa6: $a1
	ld   l, [hl]                                     ; $4aa7: $6e
	sbc  a                                           ; $4aa8: $9f
	dec  c                                           ; $4aa9: $0d
	ld   [hl], d                                     ; $4aaa: $72
	adc  h                                           ; $4aab: $8c
	and  c                                           ; $4aac: $a1
	ld   a, b                                        ; $4aad: $78
	ld   d, d                                        ; $4aae: $52
	ld   a, h                                        ; $4aaf: $7c
	ei                                               ; $4ab0: $fb
	sbc  a                                           ; $4ab1: $9f
	dec  c                                           ; $4ab2: $0d
	nop                                              ; $4ab3: $00
	ld   a, [bc]                                     ; $4ab4: $0a
	dec  c                                           ; $4ab5: $0d
	nop                                              ; $4ab6: $00
	nop                                              ; $4ab7: $00
	rrca                                             ; $4ab8: $0f
	nop                                              ; $4ab9: $00
	ld   bc, $1e09                                   ; $4aba: $01 $09 $1e
	add  hl, hl                                      ; $4abd: $29
	ld   bc, $0f00                                   ; $4abe: $01 $00 $0f
	inc  b                                           ; $4ac1: $04
	rlca                                             ; $4ac2: $07
	ld   bc, $7978                                   ; $4ac3: $01 $78 $79
	ld   e, c                                        ; $4ac6: $59
	sbc  [hl]                                        ; $4ac7: $9e
	add  a                                           ; $4ac8: $87
	ld   [hl], d                                     ; $4ac9: $72
	ld   a, h                                        ; $4aca: $7c
	sub  [hl]                                        ; $4acb: $96
	ld   d, h                                        ; $4acc: $54
	ld   h, [hl]                                     ; $4acd: $66
	ld   e, d                                        ; $4ace: $5a
	dec  c                                           ; $4acf: $0d
	ld   d, b                                        ; $4ad0: $50
	sbc  c                                           ; $4ad1: $99
	ld   a, h                                        ; $4ad2: $7c
	ld   sp, hl                                      ; $4ad3: $f9
	dec  c                                           ; $4ad4: $0d
	nop                                              ; $4ad5: $00
	ld   a, [bc]                                     ; $4ad6: $0a
	ld   bc, $9166                                   ; $4ad7: $01 $66 $91
	ld   d, b                                        ; $4ada: $50
	sbc  [hl]                                        ; $4adb: $9e
	ld   d, d                                        ; $4adc: $52
	ld   d, d                                        ; $4add: $52
	sub  [hl]                                        ; $4ade: $96
	sbc  a                                           ; $4adf: $9f
	add  a                                           ; $4ae0: $87
	ld   [hl], d                                     ; $4ae1: $72
	ld   a, c                                        ; $4ae2: $79
	sbc  a                                           ; $4ae3: $9f
	dec  c                                           ; $4ae4: $0d
	and  e                                           ; $4ae5: $a3
	and  l                                           ; $4ae6: $a5
	db   $ec                                         ; $4ae7: $ec
	cp   d                                           ; $4ae8: $ba
	add  b                                           ; $4ae9: $80
	halt                                             ; $4aea: $76
	sbc  b                                           ; $4aeb: $98
	ld   [hl], l                                     ; $4aec: $75
	dec  c                                           ; $4aed: $0d
	ld   d, d                                        ; $4aee: $52
	ld   [hl], c                                     ; $4aef: $71
	ld   [hl], h                                     ; $4af0: $74
	ld   h, c                                        ; $4af1: $61
	sub  [hl]                                        ; $4af2: $96
	ei                                               ; $4af3: $fb
	ld   [hl], c                                     ; $4af4: $71
	halt                                             ; $4af5: $76
	sbc  a                                           ; $4af6: $9f
	dec  c                                           ; $4af7: $0d
	nop                                              ; $4af8: $00
	ld   a, [bc]                                     ; $4af9: $0a
	dec  c                                           ; $4afa: $0d
	nop                                              ; $4afb: $00
	nop                                              ; $4afc: $00
	rrca                                             ; $4afd: $0f
	nop                                              ; $4afe: $00
	ld   bc, $1e09                                   ; $4aff: $01 $09 $1e
	add  hl, hl                                      ; $4b02: $29
	ld   bc, $0c00                                   ; $4b03: $01 $00 $0c
	ld   [bc], a                                     ; $4b06: $02
	ld   c, $86                                      ; $4b07: $0e $86
	inc  e                                           ; $4b09: $1c
	inc  b                                           ; $4b0a: $04
	nop                                              ; $4b0b: $00
	nop                                              ; $4b0c: $00
	ld   bc, $7150                                   ; $4b0d: $01 $50 $71
	rst  $38                                         ; $4b10: $ff
	rst  $38                                         ; $4b11: $ff
	ld   d, d                                        ; $4b12: $52
	ld   l, l                                        ; $4b13: $6d
	ld   d, d                                        ; $4b14: $52
	ld   l, l                                        ; $4b15: $6d
	sbc  a                                           ; $4b16: $9f
	dec  c                                           ; $4b17: $0d
	nop                                              ; $4b18: $00
	dec  b                                           ; $4b19: $05
	ld   b, b                                        ; $4b1a: $40
	ld   d, c                                        ; $4b1b: $51
	ld   bc, $0000                                   ; $4b1c: $01 $00 $00
	ld   bc, $5d63                                   ; $4b1f: $01 $63 $5d
	sub  a                                           ; $4b22: $97
	halt                                             ; $4b23: $76
	ld   e, b                                        ; $4b24: $58
	ld   [bc], a                                     ; $4b25: $02
	inc  de                                          ; $4b26: $13
	ld   l, a                                        ; $4b27: $6f
	sub  c                                           ; $4b28: $91
	and  c                                           ; $4b29: $a1
	sbc  a                                           ; $4b2a: $9f
	dec  c                                           ; $4b2b: $0d
	ld   l, l                                        ; $4b2c: $6d
	ld   a, h                                        ; $4b2d: $7c
	ld   h, l                                        ; $4b2e: $65
	ld   l, e                                        ; $4b2f: $6b
	ld   d, h                                        ; $4b30: $54
	ld   a, c                                        ; $4b31: $79
	ld   d, b                                        ; $4b32: $50
	sbc  c                                           ; $4b33: $99
	ld   d, d                                        ; $4b34: $52
	ld   [hl], h                                     ; $4b35: $74
	sbc  c                                           ; $4b36: $99
	sub  [hl]                                        ; $4b37: $96
	sbc  a                                           ; $4b38: $9f
	dec  c                                           ; $4b39: $0d
	nop                                              ; $4b3a: $00
	ld   a, [bc]                                     ; $4b3b: $0a
	rrca                                             ; $4b3c: $0f
	nop                                              ; $4b3d: $00
	ld   bc, $8901                                   ; $4b3e: $01 $01 $89
	and  c                                           ; $4b41: $a1
	halt                                             ; $4b42: $76
	ld   l, [hl]                                     ; $4b43: $6e
	ld   a, e                                        ; $4b44: $7b
	sbc  a                                           ; $4b45: $9f
	dec  c                                           ; $4b46: $0d
	ld   [hl], a                                     ; $4b47: $77
	ld   h, c                                        ; $4b48: $61
	add  [hl]                                        ; $4b49: $86
	ld   [bc], a                                     ; $4b4a: $02
	ld   a, a                                        ; $4b4b: $7f
	ld   e, l                                        ; $4b4c: $5d
	and  c                                           ; $4b4d: $a1
	ld   l, [hl]                                     ; $4b4e: $6e
	sbc  e                                           ; $4b4f: $9b
	ld   d, h                                        ; $4b50: $54
	rst  $38                                         ; $4b51: $ff
	rst  $38                                         ; $4b52: $ff
	dec  c                                           ; $4b53: $0d
	nop                                              ; $4b54: $00
	ld   a, [bc]                                     ; $4b55: $0a
	inc  e                                           ; $4b56: $1c
	inc  b                                           ; $4b57: $04
	nop                                              ; $4b58: $00
	nop                                              ; $4b59: $00
	ld   bc, $6176                                   ; $4b5a: $01 $76 $61
	sbc  e                                           ; $4b5d: $9b
	ld   [hl], l                                     ; $4b5e: $75
	sbc  [hl]                                        ; $4b5f: $9e
	ld   l, a                                        ; $4b60: $6f
	ld   d, d                                        ; $4b61: $52
	ld   [bc], a                                     ; $4b62: $02
	inc  de                                          ; $4b63: $13
	ld   l, a                                        ; $4b64: $6f
	sub  c                                           ; $4b65: $91
	and  c                                           ; $4b66: $a1
	sbc  a                                           ; $4b67: $9f
	dec  c                                           ; $4b68: $0d
	cp   c                                           ; $4b69: $b9
	push hl                                          ; $4b6a: $e5
	push af                                          ; $4b6b: $f5
	sbc  $fb                                         ; $4b6c: $de $fb
	db   $ed                                         ; $4b6e: $ed
	ld   a, h                                        ; $4b6f: $7c
	xor  l                                           ; $4b70: $ad
	ei                                               ; $4b71: $fb
	db   $ed                                         ; $4b72: $ed
	sub  $ee                                         ; $4b73: $d6 $ee
	push af                                          ; $4b75: $f5
	jp   z, Jump_061_7c0d                            ; $4b76: $ca $0d $7c

	ld   a, b                                        ; $4b79: $78
	adc  h                                           ; $4b7a: $8c
	ld   d, [hl]                                     ; $4b7b: $56
	sbc  [hl]                                        ; $4b7c: $9e
	ld   h, l                                        ; $4b7d: $65
	ld   [hl], c                                     ; $4b7e: $71
	ld   [hl], h                                     ; $4b7f: $74
	sbc  c                                           ; $4b80: $99
	ld   sp, hl                                      ; $4b81: $f9
	dec  c                                           ; $4b82: $0d
	nop                                              ; $4b83: $00
	ld   a, [bc]                                     ; $4b84: $0a
	add  hl, de                                      ; $4b85: $19
	dec  b                                           ; $4b86: $05
	inc  bc                                          ; $4b87: $03
	sub  $eb                                         ; $4b88: $d6 $eb
	push af                                          ; $4b8a: $f5
	cp   b                                           ; $4b8b: $b8
	ei                                               ; $4b8c: $fb
	call $0000                                      ; $4b8d: $cd $00 $00
	sub  $eb                                         ; $4b90: $d6 $eb
	push af                                          ; $4b92: $f5
	cp   [hl]                                        ; $4b93: $be
	pop  af                                          ; $4b94: $f1
	ei                                               ; $4b95: $fb
	cp   e                                           ; $4b96: $bb
	nop                                              ; $4b97: $00
	ld   bc, $ebd6                                   ; $4b98: $01 $d6 $eb
	push af                                          ; $4b9b: $f5
	pop  bc                                          ; $4b9c: $c1
	ei                                               ; $4b9d: $fb
	cp   d                                           ; $4b9e: $ba
	nop                                              ; $4b9f: $00
	ld   [bc], a                                     ; $4ba0: $02
	rlca                                             ; $4ba1: $07
	add  $02                                         ; $4ba2: $c6 $02
	ld   [bc], a                                     ; $4ba4: $02
	inc  bc                                          ; $4ba5: $03
	ld   bc, $2000                                   ; $4ba6: $01 $00 $20
	nop                                              ; $4ba9: $00
	rlca                                             ; $4baa: $07
	ld   h, e                                        ; $4bab: $63
	ld   [bc], a                                     ; $4bac: $02
	ld   [bc], a                                     ; $4bad: $02
	inc  bc                                          ; $4bae: $03
	ld   bc, $2001                                   ; $4baf: $01 $01 $20
	nop                                              ; $4bb2: $00
	rlca                                             ; $4bb3: $07
	sub  l                                           ; $4bb4: $95
	ld   [bc], a                                     ; $4bb5: $02
	ld   [bc], a                                     ; $4bb6: $02
	inc  bc                                          ; $4bb7: $03
	ld   bc, $2002                                   ; $4bb8: $01 $02 $20
	nop                                              ; $4bbb: $00
	ld   b, $63                                      ; $4bbc: $06 $63
	ld   [bc], a                                     ; $4bbe: $02
	rrca                                             ; $4bbf: $0f
	nop                                              ; $4bc0: $00
	ld   bc, $d601                                   ; $4bc1: $01 $01 $d6
	db   $eb                                         ; $4bc4: $eb
	push af                                          ; $4bc5: $f5
	cp   [hl]                                        ; $4bc6: $be
	pop  af                                          ; $4bc7: $f1
	ei                                               ; $4bc8: $fb
	cp   e                                           ; $4bc9: $bb
	rst  $38                                         ; $4bca: $ff
	rst  $38                                         ; $4bcb: $ff
	dec  c                                           ; $4bcc: $0d
	ld   l, [hl]                                     ; $4bcd: $6e
	ld   [hl], c                                     ; $4bce: $71
	ld   l, l                                        ; $4bcf: $6d
	ld   [hl], c                                     ; $4bd0: $71
	ld   e, a                                        ; $4bd1: $5f
	ld   sp, hl                                      ; $4bd2: $f9
	dec  c                                           ; $4bd3: $0d
	nop                                              ; $4bd4: $00
	ld   a, [bc]                                     ; $4bd5: $0a
	inc  e                                           ; $4bd6: $1c
	inc  b                                           ; $4bd7: $04
	inc  bc                                          ; $4bd8: $03
	inc  bc                                          ; $4bd9: $03
	ld   bc, $5a6f                                   ; $4bda: $01 $6f $5a
	ld   d, h                                        ; $4bdd: $54
	sub  [hl]                                        ; $4bde: $96
	db   $fc                                         ; $4bdf: $fc
	sbc  a                                           ; $4be0: $9f
	dec  c                                           ; $4be1: $0d
	sub  $eb                                         ; $4be2: $d6 $eb
	push af                                          ; $4be4: $f5
	cp   b                                           ; $4be5: $b8
	ei                                               ; $4be6: $fb
	call $966e                                       ; $4be7: $cd $6e $96
	sbc  a                                           ; $4bea: $9f
	dec  c                                           ; $4beb: $0d
	nop                                              ; $4bec: $00
	ld   a, [bc]                                     ; $4bed: $0a
	ld   b, $03                                      ; $4bee: $06 $03
	inc  bc                                          ; $4bf0: $03
	rrca                                             ; $4bf1: $0f
	nop                                              ; $4bf2: $00
	ld   bc, $d601                                   ; $4bf3: $01 $01 $d6
	db   $eb                                         ; $4bf6: $eb
	push af                                          ; $4bf7: $f5
	pop  bc                                          ; $4bf8: $c1
	ei                                               ; $4bf9: $fb
	cp   d                                           ; $4bfa: $ba
	rst  $38                                         ; $4bfb: $ff
	rst  $38                                         ; $4bfc: $ff
	dec  c                                           ; $4bfd: $0d
	ld   l, [hl]                                     ; $4bfe: $6e
	ld   [hl], c                                     ; $4bff: $71
	ld   l, l                                        ; $4c00: $6d
	ld   [hl], c                                     ; $4c01: $71
	ld   e, a                                        ; $4c02: $5f
	ld   sp, hl                                      ; $4c03: $f9
	dec  c                                           ; $4c04: $0d
	nop                                              ; $4c05: $00
	ld   a, [bc]                                     ; $4c06: $0a
	inc  e                                           ; $4c07: $1c
	inc  b                                           ; $4c08: $04
	inc  bc                                          ; $4c09: $03
	inc  bc                                          ; $4c0a: $03
	ld   bc, $5a6f                                   ; $4c0b: $01 $6f $5a
	ld   d, h                                        ; $4c0e: $54
	sub  [hl]                                        ; $4c0f: $96
	db   $fc                                         ; $4c10: $fc
	sbc  a                                           ; $4c11: $9f
	dec  c                                           ; $4c12: $0d
	sub  $eb                                         ; $4c13: $d6 $eb
	push af                                          ; $4c15: $f5
	cp   b                                           ; $4c16: $b8
	ei                                               ; $4c17: $fb
	call $966e                                       ; $4c18: $cd $6e $96
	sbc  a                                           ; $4c1b: $9f
	dec  c                                           ; $4c1c: $0d
	nop                                              ; $4c1d: $00
	ld   a, [bc]                                     ; $4c1e: $0a
	ld   b, $03                                      ; $4c1f: $06 $03
	inc  bc                                          ; $4c21: $03
	rrca                                             ; $4c22: $0f
	nop                                              ; $4c23: $00
	ld   bc, $d601                                   ; $4c24: $01 $01 $d6
	db   $eb                                         ; $4c27: $eb
	push af                                          ; $4c28: $f5
	cp   b                                           ; $4c29: $b8
	ei                                               ; $4c2a: $fb
	call $9b6e                                       ; $4c2b: $cd $6e $9b
	ld   sp, hl                                      ; $4c2e: $f9
	dec  c                                           ; $4c2f: $0d
	nop                                              ; $4c30: $00
	ld   a, [bc]                                     ; $4c31: $0a
	inc  e                                           ; $4c32: $1c
	inc  b                                           ; $4c33: $04
	ld   bc, $1d01                                   ; $4c34: $01 $01 $1d
	ld   b, b                                        ; $4c37: $40
	inc  d                                           ; $4c38: $14
	inc  bc                                          ; $4c39: $03
	inc  d                                           ; $4c3a: $14
	ld   bc, $2802                                   ; $4c3b: $01 $02 $28
	nop                                              ; $4c3e: $00
	ld   bc, $546b                                   ; $4c3f: $01 $6b $54
	sbc  [hl]                                        ; $4c42: $9e
	sub  $eb                                         ; $4c43: $d6 $eb
	push af                                          ; $4c45: $f5
	cp   b                                           ; $4c46: $b8
	ei                                               ; $4c47: $fb
	call $0d9f                                       ; $4c48: $cd $9f $0d
	sub  [hl]                                        ; $4c4b: $96
	ld   e, l                                        ; $4c4c: $5d
	ld   h, l                                        ; $4c4d: $65
	ld   [hl], c                                     ; $4c4e: $71
	ld   [hl], h                                     ; $4c4f: $74
	ld   l, l                                        ; $4c50: $6d
	ld   a, e                                        ; $4c51: $7b
	sbc  a                                           ; $4c52: $9f
	dec  c                                           ; $4c53: $0d
	ld   l, a                                        ; $4c54: $6f
	ld   d, d                                        ; $4c55: $52
	ld   [bc], a                                     ; $4c56: $02
	inc  de                                          ; $4c57: $13
	ld   l, a                                        ; $4c58: $6f
	sub  c                                           ; $4c59: $91
	and  c                                           ; $4c5a: $a1
	sbc  a                                           ; $4c5b: $9f
	dec  c                                           ; $4c5c: $0d
	nop                                              ; $4c5d: $00
	ld   a, [bc]                                     ; $4c5e: $0a
	inc  e                                           ; $4c5f: $1c
	inc  b                                           ; $4c60: $04
	nop                                              ; $4c61: $00
	nop                                              ; $4c62: $00
	ld   bc, $9e50                                   ; $4c63: $01 $50 $9e
	ld   e, c                                        ; $4c66: $59
	ld   [hl], a                                     ; $4c67: $77
	and  b                                           ; $4c68: $a0
	ld   a, [bc]                                     ; $4c69: $0a
	ld   [bc], a                                     ; $4c6a: $02
	adc  l                                           ; $4c6b: $8d
	ld   e, h                                        ; $4c6c: $5c
	ld   a, c                                        ; $4c6d: $79
	adc  h                                           ; $4c6e: $8c
	ld   e, d                                        ; $4c6f: $5a
	ld   [hl], c                                     ; $4c70: $71
	ld   l, l                                        ; $4c71: $6d
	sub  [hl]                                        ; $4c72: $96
	sbc  a                                           ; $4c73: $9f
	ld   a, [bc]                                     ; $4c74: $0a
	inc  bc                                          ; $4c75: $03
	dec  c                                           ; $4c76: $0d
	nop                                              ; $4c77: $00
	ld   a, [bc]                                     ; $4c78: $0a
	dec  c                                           ; $4c79: $0d
	nop                                              ; $4c7a: $00
	nop                                              ; $4c7b: $00
	rrca                                             ; $4c7c: $0f
	nop                                              ; $4c7d: $00
	ld   bc, $9123                                   ; $4c7e: $01 $23 $91
	inc  e                                           ; $4c81: $1c
	inc  b                                           ; $4c82: $04
	ld   b, $06                                      ; $4c83: $06 $06
	ld   bc, $9e50                                   ; $4c85: $01 $50 $9e
	ld   h, e                                        ; $4c88: $63
	ld   e, l                                        ; $4c89: $5d
	sub  a                                           ; $4c8a: $97
	ld   e, d                                        ; $4c8b: $5a
	ld   [hl], d                                     ; $4c8c: $72
	adc  h                                           ; $4c8d: $8c
	ld   l, b                                        ; $4c8e: $68
	ld   d, d                                        ; $4c8f: $52
	ld   l, l                                        ; $4c90: $6d
	sbc  a                                           ; $4c91: $9f
	dec  c                                           ; $4c92: $0d
	ld   d, b                                        ; $4c93: $50
	ei                                               ; $4c94: $fb
	ld   a, [$5810]                                  ; $4c95: $fa $10 $58
	ld   [bc], a                                     ; $4c98: $02
	inc  de                                          ; $4c99: $13
	ld   l, a                                        ; $4c9a: $6f
	sub  c                                           ; $4c9b: $91
	and  c                                           ; $4c9c: $a1
	ld   a, c                                        ; $4c9d: $79
	dec  c                                           ; $4c9e: $0d
	ld   l, [hl]                                     ; $4c9f: $6e
	ld   e, e                                        ; $4ca0: $5b
	ld   [hl], d                                     ; $4ca1: $72
	ld   d, d                                        ; $4ca2: $52
	ld   [hl], h                                     ; $4ca3: $74
	sbc  c                                           ; $4ca4: $99
	ld   a, [$0dfa]                                  ; $4ca5: $fa $fa $0d
	nop                                              ; $4ca8: $00
	ld   a, [bc]                                     ; $4ca9: $0a
	add  hl, de                                      ; $4caa: $19
	dec  b                                           ; $4cab: $05
	inc  bc                                          ; $4cac: $03
	ld   [hl], d                                     ; $4cad: $72
	adc  h                                           ; $4cae: $8c
	ld   l, b                                        ; $4caf: $68
	ld   d, d                                        ; $4cb0: $52
	ld   l, l                                        ; $4cb1: $6d
	and  c                                           ; $4cb2: $a1
	ld   l, [hl]                                     ; $4cb3: $6e
	sub  [hl]                                        ; $4cb4: $96
	nop                                              ; $4cb5: $00
	nop                                              ; $4cb6: $00
	ld   [bc], a                                     ; $4cb7: $02
	dec  hl                                          ; $4cb8: $2b
	ld   h, l                                        ; $4cb9: $65
	ld   [bc], a                                     ; $4cba: $02
	ld   a, e                                        ; $4cbb: $7b
	ld   d, h                                        ; $4cbc: $54
	add  e                                           ; $4cbd: $83
	ld   l, l                                        ; $4cbe: $6d
	sbc  b                                           ; $4cbf: $98
	ld   l, [hl]                                     ; $4cc0: $6e
	ld   e, c                                        ; $4cc1: $59
	sub  a                                           ; $4cc2: $97
	nop                                              ; $4cc3: $00
	ld   bc, $9754                                   ; $4cc4: $01 $54 $97
	sub  d                                           ; $4cc7: $92
	adc  h                                           ; $4cc8: $8c
	ld   h, l                                        ; $4cc9: $65
	ld   d, d                                        ; $4cca: $52
	nop                                              ; $4ccb: $00
	ld   [bc], a                                     ; $4ccc: $02
	rlca                                             ; $4ccd: $07
	adc  a                                           ; $4cce: $8f
	inc  bc                                          ; $4ccf: $03
	ld   [bc], a                                     ; $4cd0: $02
	inc  bc                                          ; $4cd1: $03
	ld   bc, $2000                                   ; $4cd2: $01 $00 $20
	nop                                              ; $4cd5: $00
	rlca                                             ; $4cd6: $07
	db   $e4                                         ; $4cd7: $e4
	inc  bc                                          ; $4cd8: $03
	ld   [bc], a                                     ; $4cd9: $02
	inc  bc                                          ; $4cda: $03
	ld   bc, $2001                                   ; $4cdb: $01 $01 $20
	nop                                              ; $4cde: $00
	rlca                                             ; $4cdf: $07
	ld   e, a                                        ; $4ce0: $5f
	inc  b                                           ; $4ce1: $04
	ld   [bc], a                                     ; $4ce2: $02
	inc  bc                                          ; $4ce3: $03
	ld   bc, $2002                                   ; $4ce4: $01 $02 $20
	nop                                              ; $4ce7: $00
	ld   b, $ce                                      ; $4ce8: $06 $ce
	inc  b                                           ; $4cea: $04
	rrca                                             ; $4ceb: $0f
	nop                                              ; $4cec: $00
	ld   bc, $040d                                   ; $4ced: $01 $0d $04
	rlca                                             ; $4cf0: $07
	ld   bc, $8c72                                   ; $4cf1: $01 $72 $8c
	ld   l, b                                        ; $4cf4: $68
	ld   d, d                                        ; $4cf5: $52
	ld   l, l                                        ; $4cf6: $6d
	and  c                                           ; $4cf7: $a1
	ld   l, [hl]                                     ; $4cf8: $6e
	ld   e, c                                        ; $4cf9: $59
	sub  a                                           ; $4cfa: $97
	dec  c                                           ; $4cfb: $0d
	ld   h, l                                        ; $4cfc: $65
	ld   e, c                                        ; $4cfd: $59
	ld   l, l                                        ; $4cfe: $6d
	ld   a, b                                        ; $4cff: $78
	ld   d, d                                        ; $4d00: $52
	sub  [hl]                                        ; $4d01: $96
	sbc  a                                           ; $4d02: $9f
	dec  c                                           ; $4d03: $0d
	ld   h, e                                        ; $4d04: $63
	ld   h, e                                        ; $4d05: $63
	ld   d, [hl]                                     ; $4d06: $56
	ld   a, b                                        ; $4d07: $78
	ld   d, d                                        ; $4d08: $52
	halt                                             ; $4d09: $76
	or   d                                           ; $4d0a: $b2
	xor  l                                           ; $4d0b: $ad
	ld   h, a                                        ; $4d0c: $67
	sbc  c                                           ; $4d0d: $99
	ld   e, c                                        ; $4d0e: $59
	sub  a                                           ; $4d0f: $97
	sbc  a                                           ; $4d10: $9f
	dec  c                                           ; $4d11: $0d
	nop                                              ; $4d12: $00
	ld   a, [bc]                                     ; $4d13: $0a
	inc  e                                           ; $4d14: $1c
	inc  b                                           ; $4d15: $04
	rlca                                             ; $4d16: $07
	rlca                                             ; $4d17: $07
	ld   bc, $fc54                                   ; $4d18: $01 $54 $fc
	db   $fc                                         ; $4d1b: $fc
	db   $fc                                         ; $4d1c: $fc
	db   $fc                                         ; $4d1d: $fc
	db   $fc                                         ; $4d1e: $fc
	sbc  a                                           ; $4d1f: $9f
	dec  c                                           ; $4d20: $0d
	ld   l, e                                        ; $4d21: $6b
	ld   d, h                                        ; $4d22: $54
	ld   a, b                                        ; $4d23: $78
	and  c                                           ; $4d24: $a1
	ld   l, [hl]                                     ; $4d25: $6e
	ld   e, a                                        ; $4d26: $5f
	ld   [hl], a                                     ; $4d27: $77
	ld   d, a                                        ; $4d28: $57
	db   $fc                                         ; $4d29: $fc
	db   $fc                                         ; $4d2a: $fc
	db   $fc                                         ; $4d2b: $fc
	db   $fc                                         ; $4d2c: $fc
	db   $fc                                         ; $4d2d: $fc
	dec  c                                           ; $4d2e: $0d
	cp   e                                           ; $4d2f: $bb
	db   $ed                                         ; $4d30: $ed
	and  l                                           ; $4d31: $a5
	ld   a, b                                        ; $4d32: $78
	sbc  [hl]                                        ; $4d33: $9e
	ld   h, e                                        ; $4d34: $63
	ld   e, l                                        ; $4d35: $5d
	sub  a                                           ; $4d36: $97
	ld   a, l                                        ; $4d37: $7d
	rst  $38                                         ; $4d38: $ff
	rst  $38                                         ; $4d39: $ff
	dec  c                                           ; $4d3a: $0d
	nop                                              ; $4d3b: $00
	ld   a, [bc]                                     ; $4d3c: $0a
	ld   b, $ce                                      ; $4d3d: $06 $ce
	inc  b                                           ; $4d3f: $04
	rrca                                             ; $4d40: $0f
	nop                                              ; $4d41: $00
	ld   bc, $040d                                   ; $4d42: $01 $0d $04
	rlca                                             ; $4d45: $07
	ld   bc, $508c                                   ; $4d46: $01 $8c $50
	sbc  [hl]                                        ; $4d49: $9e
	ld   [bc], a                                     ; $4d4a: $02
	dec  hl                                          ; $4d4b: $2b
	ld   h, l                                        ; $4d4c: $65
	ld   [bc], a                                     ; $4d4d: $02
	ld   a, e                                        ; $4d4e: $7b
	ld   d, h                                        ; $4d4f: $54
	ld   b, $09                                      ; $4d50: $06 $09
	inc  bc                                          ; $4d52: $03
	add  d                                           ; $4d53: $82
	ld   l, [hl]                                     ; $4d54: $6e
	ld   e, c                                        ; $4d55: $59
	sub  a                                           ; $4d56: $97
	dec  c                                           ; $4d57: $0d
	ld   l, e                                        ; $4d58: $6b
	and  c                                           ; $4d59: $a1
	ld   a, b                                        ; $4d5a: $78
	inc  b                                           ; $4d5b: $04
	ld   a, d                                        ; $4d5c: $7a
	inc  b                                           ; $4d5d: $04
	ret  c                                           ; $4d5e: $d8

	sub  b                                           ; $4d5f: $90
	ld   d, b                                        ; $4d60: $50
	sbc  c                                           ; $4d61: $99
	ld   l, [hl]                                     ; $4d62: $6e
	sbc  e                                           ; $4d63: $9b
	sbc  a                                           ; $4d64: $9f
	dec  c                                           ; $4d65: $0d
	nop                                              ; $4d66: $00
	ld   a, [bc]                                     ; $4d67: $0a
	inc  e                                           ; $4d68: $1c
	inc  b                                           ; $4d69: $04
	rlca                                             ; $4d6a: $07
	rlca                                             ; $4d6b: $07
	ld   bc, $5a6f                                   ; $4d6c: $01 $6f $5a
	ld   d, h                                        ; $4d6f: $54
	sub  b                                           ; $4d70: $90
	and  c                                           ; $4d71: $a1
	sbc  a                                           ; $4d72: $9f
	dec  c                                           ; $4d73: $0d
	ld   [hl], d                                     ; $4d74: $72
	adc  h                                           ; $4d75: $8c
	ld   l, b                                        ; $4d76: $68
	ld   d, d                                        ; $4d77: $52
	ld   l, l                                        ; $4d78: $6d
	ld   h, e                                        ; $4d79: $63
	ld   e, l                                        ; $4d7a: $5d
	sub  a                                           ; $4d7b: $97
	and  b                                           ; $4d7c: $a0
	dec  c                                           ; $4d7d: $0d
	ld   h, e                                        ; $4d7e: $63
	ld   h, e                                        ; $4d7f: $63
	ld   d, [hl]                                     ; $4d80: $56
	ld   l, l                                        ; $4d81: $6d
	ld   l, [hl]                                     ; $4d82: $6e
	ld   e, a                                        ; $4d83: $5f
	ld   l, [hl]                                     ; $4d84: $6e
	sub  b                                           ; $4d85: $90
	and  c                                           ; $4d86: $a1
	sbc  a                                           ; $4d87: $9f
	dec  c                                           ; $4d88: $0d
	nop                                              ; $4d89: $00
	ld   a, [bc]                                     ; $4d8a: $0a
	dec  e                                           ; $4d8b: $1d
	ld   b, b                                        ; $4d8c: $40
	inc  d                                           ; $4d8d: $14
	inc  bc                                          ; $4d8e: $03
	inc  d                                           ; $4d8f: $14
	ld   bc, $2902                                   ; $4d90: $01 $02 $29
	nop                                              ; $4d93: $00
	ld   bc, $9a6b                                   ; $4d94: $01 $6b $9a
	ld   a, c                                        ; $4d97: $79
	sbc  [hl]                                        ; $4d98: $9e
	ld   d, b                                        ; $4d99: $50
	ld   d, d                                        ; $4d9a: $52
	ld   h, l                                        ; $4d9b: $65
	ld   d, b                                        ; $4d9c: $50
	ld   [hl], c                                     ; $4d9d: $71
	ld   [hl], h                                     ; $4d9e: $74
	sbc  c                                           ; $4d9f: $99
	ld   a, h                                        ; $4da0: $7c
	ld   a, l                                        ; $4da1: $7d
	dec  c                                           ; $4da2: $0d
	and  e                                           ; $4da3: $a3
	and  l                                           ; $4da4: $a5
	db   $ec                                         ; $4da5: $ec
	cp   d                                           ; $4da6: $ba
	halt                                             ; $4da7: $76
	ld   e, b                                        ; $4da8: $58
	ld   [bc], a                                     ; $4da9: $02
	inc  de                                          ; $4daa: $13
	ld   l, a                                        ; $4dab: $6f
	sub  c                                           ; $4dac: $91
	and  c                                           ; $4dad: $a1
	dec  c                                           ; $4dae: $0d
	ld   a, b                                        ; $4daf: $78
	and  c                                           ; $4db0: $a1
	ld   l, [hl]                                     ; $4db1: $6e
	sub  b                                           ; $4db2: $90
	and  c                                           ; $4db3: $a1
	sbc  a                                           ; $4db4: $9f
	dec  c                                           ; $4db5: $0d
	nop                                              ; $4db6: $00
	ld   a, [bc]                                     ; $4db7: $0a
	ld   b, $ce                                      ; $4db8: $06 $ce
	inc  b                                           ; $4dba: $04
	rrca                                             ; $4dbb: $0f
	nop                                              ; $4dbc: $00
	ld   bc, $040d                                   ; $4dbd: $01 $0d $04
	rlca                                             ; $4dc0: $07
	ld   bc, $0301                                   ; $4dc1: $01 $01 $03
	ld   d, h                                        ; $4dc4: $54
	sbc  [hl]                                        ; $4dc5: $9e
	ld   d, h                                        ; $4dc6: $54
	sub  a                                           ; $4dc7: $97
	sub  d                                           ; $4dc8: $92
	adc  h                                           ; $4dc9: $8c
	ld   h, l                                        ; $4dca: $65
	ld   d, d                                        ; $4dcb: $52
	ld   l, h                                        ; $4dcc: $6c
	rst  $38                                         ; $4dcd: $ff
	rst  $38                                         ; $4dce: $ff
	dec  c                                           ; $4dcf: $0d
	db   $10                                         ; $4dd0: $10
	inc  b                                           ; $4dd1: $04
	ld   c, $03                                      ; $4dd2: $0e $03
	sub  b                                           ; $4dd4: $90
	ld   h, e                                        ; $4dd5: $63
	and  c                                           ; $4dd6: $a1
	rst  $38                                         ; $4dd7: $ff
	rst  $38                                         ; $4dd8: $ff
	ld   bc, $0d04                                   ; $4dd9: $01 $04 $0d
	nop                                              ; $4ddc: $00
	ld   a, [bc]                                     ; $4ddd: $0a
	inc  e                                           ; $4dde: $1c
	inc  b                                           ; $4ddf: $04
	rlca                                             ; $4de0: $07
	rlca                                             ; $4de1: $07
	ld   bc, $9e50                                   ; $4de2: $01 $50 $9e
	ld   l, a                                        ; $4de5: $6f
	ld   d, d                                        ; $4de6: $52
	ld   [bc], a                                     ; $4de7: $02
	inc  de                                          ; $4de8: $13
	ld   l, a                                        ; $4de9: $6f
	sub  c                                           ; $4dea: $91
	and  c                                           ; $4deb: $a1
	sbc  a                                           ; $4dec: $9f
	dec  c                                           ; $4ded: $0d
	ld   d, d                                        ; $4dee: $52
	adc  h                                           ; $4def: $8c
	ld   bc, $5407                                   ; $4df0: $01 $07 $54
	sub  a                                           ; $4df3: $97
	sub  d                                           ; $4df4: $92
	adc  h                                           ; $4df5: $8c
	ld   h, l                                        ; $4df6: $65
	ld   d, d                                        ; $4df7: $52
	ld   bc, $7108                                   ; $4df8: $01 $08 $71
	ld   [hl], h                                     ; $4dfb: $74
	dec  c                                           ; $4dfc: $0d
	ld   e, b                                        ; $4dfd: $58
	sub  b                                           ; $4dfe: $90
	ld   [hl], c                                     ; $4dff: $71
	ld   l, l                                        ; $4e00: $6d
	ld   [hl], l                                     ; $4e01: $75
	ld   h, l                                        ; $4e02: $65
	sub  l                                           ; $4e03: $95
	sbc  a                                           ; $4e04: $9f
	dec  c                                           ; $4e05: $0d
	nop                                              ; $4e06: $00
	ld   a, [bc]                                     ; $4e07: $0a
	dec  e                                           ; $4e08: $1d
	ld   b, b                                        ; $4e09: $40
	inc  d                                           ; $4e0a: $14
	inc  bc                                          ; $4e0b: $03
	inc  d                                           ; $4e0c: $14
	ld   bc, $2901                                   ; $4e0d: $01 $01 $29
	nop                                              ; $4e10: $00
	ld   bc, $9252                                   ; $4e11: $01 $52 $92
	sub  a                                           ; $4e14: $97
	ld   h, l                                        ; $4e15: $65
	ld   d, d                                        ; $4e16: $52
	and  c                                           ; $4e17: $a1
	ld   l, [hl]                                     ; $4e18: $6e
	db   $fc                                         ; $4e19: $fc
	sbc  a                                           ; $4e1a: $9f
	dec  c                                           ; $4e1b: $0d
	ld   l, a                                        ; $4e1c: $6f
	ld   d, d                                        ; $4e1d: $52
	ld   [bc], a                                     ; $4e1e: $02
	inc  de                                          ; $4e1f: $13
	ld   l, a                                        ; $4e20: $6f
	sub  c                                           ; $4e21: $91
	and  c                                           ; $4e22: $a1
	sbc  a                                           ; $4e23: $9f
	dec  c                                           ; $4e24: $0d
	nop                                              ; $4e25: $00
	ld   a, [bc]                                     ; $4e26: $0a
	ld   b, $ce                                      ; $4e27: $06 $ce
	inc  b                                           ; $4e29: $04
	inc  e                                           ; $4e2a: $1c
	inc  b                                           ; $4e2b: $04
	nop                                              ; $4e2c: $00
	nop                                              ; $4e2d: $00
	ld   bc, $9e50                                   ; $4e2e: $01 $50 $9e
	ld   h, c                                        ; $4e31: $61
	and  c                                           ; $4e32: $a1
	ld   [hl], a                                     ; $4e33: $77
	ld   a, l                                        ; $4e34: $7d
	ld   e, c                                        ; $4e35: $59
	ld   [hl], a                                     ; $4e36: $77
	and  b                                           ; $4e37: $a0
	ld   a, [bc]                                     ; $4e38: $0a
	ld   [bc], a                                     ; $4e39: $02
	add  b                                           ; $4e3a: $80
	ld   l, [hl]                                     ; $4e3b: $6e
	sbc  b                                           ; $4e3c: $98
	ld   a, c                                        ; $4e3d: $79
	dec  c                                           ; $4e3e: $0d
	adc  h                                           ; $4e3f: $8c
	ld   e, d                                        ; $4e40: $5a
	ld   [hl], c                                     ; $4e41: $71
	ld   l, l                                        ; $4e42: $6d
	sub  [hl]                                        ; $4e43: $96
	sbc  a                                           ; $4e44: $9f
	ld   a, [bc]                                     ; $4e45: $0a
	inc  bc                                          ; $4e46: $03
	dec  c                                           ; $4e47: $0d
	nop                                              ; $4e48: $00
	ld   a, [bc]                                     ; $4e49: $0a
	dec  c                                           ; $4e4a: $0d
	nop                                              ; $4e4b: $00
	nop                                              ; $4e4c: $00
	rrca                                             ; $4e4d: $0f
	nop                                              ; $4e4e: $00
	ld   bc, $8023                                   ; $4e4f: $01 $23 $80
	inc  e                                           ; $4e52: $1c
	inc  b                                           ; $4e53: $04
	nop                                              ; $4e54: $00
	nop                                              ; $4e55: $00
	ld   bc, $a178                                   ; $4e56: $01 $78 $a1
	ld   l, [hl]                                     ; $4e59: $6e
	ld   e, c                                        ; $4e5a: $59
	sbc  [hl]                                        ; $4e5b: $9e
	ld   l, l                                        ; $4e5c: $6d
	ld   a, h                                        ; $4e5d: $7c
	ld   h, l                                        ; $4e5e: $65
	ld   l, e                                        ; $4e5f: $6b
	ld   d, h                                        ; $4e60: $54
	ld   a, b                                        ; $4e61: $78
	dec  c                                           ; $4e62: $0d
	halt                                             ; $4e63: $76
	ld   h, c                                        ; $4e64: $61
	sbc  e                                           ; $4e65: $9b
	ld   a, c                                        ; $4e66: $79
	ld   e, e                                        ; $4e67: $5b
	ld   l, l                                        ; $4e68: $6d
	sub  [hl]                                        ; $4e69: $96
	sbc  a                                           ; $4e6a: $9f
	dec  c                                           ; $4e6b: $0d
	nop                                              ; $4e6c: $00
	ld   a, [bc]                                     ; $4e6d: $0a
	add  hl, de                                      ; $4e6e: $19
	dec  b                                           ; $4e6f: $05
	inc  bc                                          ; $4e70: $03
	adc  h                                           ; $4e71: $8c
	ld   d, b                                        ; $4e72: $50
	sbc  [hl]                                        ; $4e73: $9e
	ret  z                                           ; $4e74: $c8

	ei                                               ; $4e75: $fb
	ret                                              ; $4e76: $c9


	ld   l, [hl]                                     ; $4e77: $6e
	ld   e, c                                        ; $4e78: $59
	sub  a                                           ; $4e79: $97
	ld   a, e                                        ; $4e7a: $7b
	nop                                              ; $4e7b: $00
	nop                                              ; $4e7c: $00
	ld   l, l                                        ; $4e7d: $6d
	ld   l, [hl]                                     ; $4e7e: $6e
	ld   a, h                                        ; $4e7f: $7c
	inc  bc                                          ; $4e80: $03
	pop  hl                                          ; $4e81: $e1
	sbc  b                                           ; $4e82: $98
	inc  b                                           ; $4e83: $04
	ld   d, $8d                                      ; $4e84: $16 $8d
	ld   l, l                                        ; $4e86: $6d
	ld   d, d                                        ; $4e87: $52
	nop                                              ; $4e88: $00
	ld   bc, $9754                                   ; $4e89: $01 $54 $97
	sub  d                                           ; $4e8c: $92
	adc  h                                           ; $4e8d: $8c
	ld   h, l                                        ; $4e8e: $65
	ld   d, d                                        ; $4e8f: $52
	nop                                              ; $4e90: $00
	ld   [bc], a                                     ; $4e91: $02
	rlca                                             ; $4e92: $07
	ld   d, h                                        ; $4e93: $54
	dec  b                                           ; $4e94: $05
	ld   [bc], a                                     ; $4e95: $02
	inc  bc                                          ; $4e96: $03
	ld   bc, $2000                                   ; $4e97: $01 $00 $20
	nop                                              ; $4e9a: $00
	rlca                                             ; $4e9b: $07
	ld   [bc], a                                     ; $4e9c: $02
	ld   b, $02                                      ; $4e9d: $06 $02
	inc  bc                                          ; $4e9f: $03
	ld   bc, $2001                                   ; $4ea0: $01 $01 $20
	nop                                              ; $4ea3: $00
	rlca                                             ; $4ea4: $07
	add  hl, sp                                      ; $4ea5: $39
	ld   b, $02                                      ; $4ea6: $06 $02
	inc  bc                                          ; $4ea8: $03
	ld   bc, $2002                                   ; $4ea9: $01 $02 $20
	nop                                              ; $4eac: $00
	ld   b, $ad                                      ; $4ead: $06 $ad
	ld   b, $0f                                      ; $4eaf: $06 $0f
	nop                                              ; $4eb1: $00
	ld   bc, $6b01                                   ; $4eb2: $01 $01 $6b
	sbc  b                                           ; $4eb5: $98
	sub  c                                           ; $4eb6: $91
	sbc  [hl]                                        ; $4eb7: $9e
	adc  h                                           ; $4eb8: $8c
	ld   d, b                                        ; $4eb9: $50
	sbc  [hl]                                        ; $4eba: $9e
	ret  z                                           ; $4ebb: $c8

	ei                                               ; $4ebc: $fb
	ret                                              ; $4ebd: $c9


	ld   l, [hl]                                     ; $4ebe: $6e
	ld   [hl], c                                     ; $4ebf: $71
	ld   l, l                                        ; $4ec0: $6d
	sub  a                                           ; $4ec1: $97
	dec  c                                           ; $4ec2: $0d
	dec  b                                           ; $4ec3: $05
	inc  de                                          ; $4ec4: $13
	ld   h, l                                        ; $4ec5: $65
	ld   d, d                                        ; $4ec6: $52
	halt                                             ; $4ec7: $76
	ld   h, c                                        ; $4ec8: $61
	sbc  e                                           ; $4ec9: $9b
	ld   a, c                                        ; $4eca: $79
	sub  b                                           ; $4ecb: $90
	ld   [bc], a                                     ; $4ecc: $02
	ld   a, a                                        ; $4ecd: $7f
	ld   e, l                                        ; $4ece: $5d
	ld   l, [hl]                                     ; $4ecf: $6e
	sbc  e                                           ; $4ed0: $9b
	ld   d, h                                        ; $4ed1: $54
	sbc  a                                           ; $4ed2: $9f
	dec  c                                           ; $4ed3: $0d
	nop                                              ; $4ed4: $00
	ld   a, [bc]                                     ; $4ed5: $0a
	inc  e                                           ; $4ed6: $1c
	inc  b                                           ; $4ed7: $04
	rlca                                             ; $4ed8: $07
	rlca                                             ; $4ed9: $07
	ld   bc, $fc56                                   ; $4eda: $01 $56 $fc
	db   $fc                                         ; $4edd: $fc
	db   $fc                                         ; $4ede: $fc
	db   $fc                                         ; $4edf: $fc
	db   $fc                                         ; $4ee0: $fc
	sbc  a                                           ; $4ee1: $9f
	dec  c                                           ; $4ee2: $0d
	ld   l, a                                        ; $4ee3: $6f
	ld   e, d                                        ; $4ee4: $5a
	ld   d, h                                        ; $4ee5: $54
	ld   a, [$c810]                                  ; $4ee6: $fa $10 $c8
	ei                                               ; $4ee9: $fb
	ret                                              ; $4eea: $c9


	ld   h, [hl]                                     ; $4eeb: $66
	sub  c                                           ; $4eec: $91
	ld   a, b                                        ; $4eed: $78
	ld   d, d                                        ; $4eee: $52
	sub  [hl]                                        ; $4eef: $96
	sbc  a                                           ; $4ef0: $9f
	dec  c                                           ; $4ef1: $0d
	ld   a, c                                        ; $4ef2: $79
	and  c                                           ; $4ef3: $a1
	adc  [hl]                                        ; $4ef4: $8e
	ld   l, [hl]                                     ; $4ef5: $6e
	sub  [hl]                                        ; $4ef6: $96
	ld   e, e                                        ; $4ef7: $5b
	ld   [hl], c                                     ; $4ef8: $71
	halt                                             ; $4ef9: $76
	sbc  a                                           ; $4efa: $9f
	dec  c                                           ; $4efb: $0d
	nop                                              ; $4efc: $00
	ld   a, [bc]                                     ; $4efd: $0a
	rrca                                             ; $4efe: $0f
	nop                                              ; $4eff: $00
	ld   bc, $6e01                                   ; $4f00: $01 $01 $6e
	ld   [hl], c                                     ; $4f03: $71
	ld   [hl], h                                     ; $4f04: $74
	ld   bc, $5007                                   ; $4f05: $01 $07 $50
	sub  d                                           ; $4f08: $92
	ld   h, l                                        ; $4f09: $65
	ld   d, d                                        ; $4f0a: $52
	ld   bc, $7108                                   ; $4f0b: $01 $08 $71
	ld   [hl], h                                     ; $4f0e: $74
	dec  c                                           ; $4f0f: $0d
	ld   [bc], a                                     ; $4f10: $02
	sbc  l                                           ; $4f11: $9d
	ld   [hl], c                                     ; $4f12: $71
	ld   l, l                                        ; $4f13: $6d
	ld   a, h                                        ; $4f14: $7c
	and  e                                           ; $4f15: $a3
	and  l                                           ; $4f16: $a5
	db   $ec                                         ; $4f17: $ec
	cp   d                                           ; $4f18: $ba
	ld   l, [hl]                                     ; $4f19: $6e
	sub  [hl]                                        ; $4f1a: $96
	sbc  a                                           ; $4f1b: $9f
	dec  c                                           ; $4f1c: $0d
	nop                                              ; $4f1d: $00
	ld   a, [bc]                                     ; $4f1e: $0a
	inc  e                                           ; $4f1f: $1c
	inc  b                                           ; $4f20: $04
	rlca                                             ; $4f21: $07
	rlca                                             ; $4f22: $07
	dec  e                                           ; $4f23: $1d
	ld   b, b                                        ; $4f24: $40
	inc  d                                           ; $4f25: $14
	inc  bc                                          ; $4f26: $03
	inc  d                                           ; $4f27: $14
	ld   bc, $2902                                   ; $4f28: $01 $02 $29
	nop                                              ; $4f2b: $00
	ld   bc, $546b                                   ; $4f2c: $01 $6b $54
	ld   l, [hl]                                     ; $4f2f: $6e
	ld   e, a                                        ; $4f30: $5f
	ld   [hl], a                                     ; $4f31: $77
	sbc  [hl]                                        ; $4f32: $9e
	ld   l, a                                        ; $4f33: $6f
	ld   e, d                                        ; $4f34: $5a
	ld   d, h                                        ; $4f35: $54
	and  c                                           ; $4f36: $a1
	ld   l, [hl]                                     ; $4f37: $6e
	sub  b                                           ; $4f38: $90
	and  c                                           ; $4f39: $a1
	sbc  a                                           ; $4f3a: $9f
	dec  c                                           ; $4f3b: $0d
	ld   e, b                                        ; $4f3c: $58
	ld   [bc], a                                     ; $4f3d: $02
	inc  de                                          ; $4f3e: $13
	ld   l, a                                        ; $4f3f: $6f
	sub  c                                           ; $4f40: $91
	and  c                                           ; $4f41: $a1
	halt                                             ; $4f42: $76
	ret  z                                           ; $4f43: $c8

	ei                                               ; $4f44: $fb
	ret                                              ; $4f45: $c9


	ld   [hl], l                                     ; $4f46: $75
	ld   e, e                                        ; $4f47: $5b
	sbc  c                                           ; $4f48: $99
	ld   a, h                                        ; $4f49: $7c
	ld   a, l                                        ; $4f4a: $7d
	dec  c                                           ; $4f4b: $0d
	and  e                                           ; $4f4c: $a3
	and  l                                           ; $4f4d: $a5
	db   $ec                                         ; $4f4e: $ec
	cp   d                                           ; $4f4f: $ba
	ld   l, [hl]                                     ; $4f50: $6e
	ld   e, a                                        ; $4f51: $5f
	ld   a, b                                        ; $4f52: $78
	and  c                                           ; $4f53: $a1
	ld   l, [hl]                                     ; $4f54: $6e
	sub  b                                           ; $4f55: $90
	and  c                                           ; $4f56: $a1
	sbc  a                                           ; $4f57: $9f
	dec  c                                           ; $4f58: $0d
	nop                                              ; $4f59: $00
	ld   a, [bc]                                     ; $4f5a: $0a
	ld   b, $ad                                      ; $4f5b: $06 $ad
	ld   b, $0f                                      ; $4f5d: $06 $0f
	nop                                              ; $4f5f: $00
	ld   bc, $5201                                   ; $4f60: $01 $01 $52
	sub  d                                           ; $4f63: $92
	rst  $38                                         ; $4f64: $ff
	rst  $38                                         ; $4f65: $ff
	dec  c                                           ; $4f66: $0d
	ld   l, l                                        ; $4f67: $6d
	ld   l, [hl]                                     ; $4f68: $6e
	ld   a, h                                        ; $4f69: $7c
	inc  bc                                          ; $4f6a: $03
	pop  hl                                          ; $4f6b: $e1
	sbc  b                                           ; $4f6c: $98
	inc  b                                           ; $4f6d: $04
	ld   d, $8d                                      ; $4f6e: $16 $8d
	ld   l, l                                        ; $4f70: $6d
	ld   d, d                                        ; $4f71: $52
	ld   l, [hl]                                     ; $4f72: $6e
	sub  [hl]                                        ; $4f73: $96
	sbc  a                                           ; $4f74: $9f
	dec  c                                           ; $4f75: $0d
	nop                                              ; $4f76: $00
	ld   a, [bc]                                     ; $4f77: $0a
	inc  e                                           ; $4f78: $1c
	inc  b                                           ; $4f79: $04
	ld   bc, $1d01                                   ; $4f7a: $01 $01 $1d
	ld   b, b                                        ; $4f7d: $40
	inc  d                                           ; $4f7e: $14
	inc  bc                                          ; $4f7f: $03
	inc  d                                           ; $4f80: $14
	ld   bc, $2802                                   ; $4f81: $01 $02 $28
	nop                                              ; $4f84: $00
	ld   bc, $a154                                   ; $4f85: $01 $54 $a1
	sbc  [hl]                                        ; $4f88: $9e
	ld   l, e                                        ; $4f89: $6b
	ld   d, h                                        ; $4f8a: $54
	ld   l, [hl]                                     ; $4f8b: $6e
	sub  [hl]                                        ; $4f8c: $96
	ld   a, e                                        ; $4f8d: $7b
	sbc  a                                           ; $4f8e: $9f
	dec  c                                           ; $4f8f: $0d
	nop                                              ; $4f90: $00
	ld   a, [bc]                                     ; $4f91: $0a
	ld   b, $ad                                      ; $4f92: $06 $ad
	ld   b, $0f                                      ; $4f94: $06 $0f
	nop                                              ; $4f96: $00
	ld   bc, $0101                                   ; $4f97: $01 $01 $01
	inc  bc                                          ; $4f9a: $03
	ld   d, h                                        ; $4f9b: $54
	sbc  [hl]                                        ; $4f9c: $9e
	ld   d, h                                        ; $4f9d: $54
	sub  a                                           ; $4f9e: $97
	sub  d                                           ; $4f9f: $92
	adc  h                                           ; $4fa0: $8c
	ld   h, l                                        ; $4fa1: $65
	ld   d, d                                        ; $4fa2: $52
	ld   l, h                                        ; $4fa3: $6c
	rst  $38                                         ; $4fa4: $ff
	rst  $38                                         ; $4fa5: $ff
	dec  c                                           ; $4fa6: $0d
	db   $10                                         ; $4fa7: $10
	inc  b                                           ; $4fa8: $04
	ld   c, $03                                      ; $4fa9: $0e $03
	sub  b                                           ; $4fab: $90
	ld   h, e                                        ; $4fac: $63
	and  c                                           ; $4fad: $a1
	rst  $38                                         ; $4fae: $ff
	rst  $38                                         ; $4faf: $ff
	ld   bc, $0d04                                   ; $4fb0: $01 $04 $0d
	nop                                              ; $4fb3: $00
	ld   a, [bc]                                     ; $4fb4: $0a
	inc  e                                           ; $4fb5: $1c
	inc  b                                           ; $4fb6: $04
	rlca                                             ; $4fb7: $07
	rlca                                             ; $4fb8: $07
	ld   bc, $9e50                                   ; $4fb9: $01 $50 $9e
	ld   l, a                                        ; $4fbc: $6f
	ld   d, d                                        ; $4fbd: $52
	ld   [bc], a                                     ; $4fbe: $02
	inc  de                                          ; $4fbf: $13
	ld   l, a                                        ; $4fc0: $6f
	sub  c                                           ; $4fc1: $91
	and  c                                           ; $4fc2: $a1
	sbc  a                                           ; $4fc3: $9f
	dec  c                                           ; $4fc4: $0d
	ld   d, d                                        ; $4fc5: $52
	adc  h                                           ; $4fc6: $8c
	ld   bc, $5407                                   ; $4fc7: $01 $07 $54
	sub  a                                           ; $4fca: $97
	sub  d                                           ; $4fcb: $92
	adc  h                                           ; $4fcc: $8c
	ld   h, l                                        ; $4fcd: $65
	ld   d, d                                        ; $4fce: $52
	ld   bc, $7108                                   ; $4fcf: $01 $08 $71
	ld   [hl], h                                     ; $4fd2: $74
	dec  c                                           ; $4fd3: $0d
	ld   e, b                                        ; $4fd4: $58
	sub  b                                           ; $4fd5: $90
	ld   [hl], c                                     ; $4fd6: $71
	ld   l, l                                        ; $4fd7: $6d
	ld   [hl], l                                     ; $4fd8: $75
	ld   h, l                                        ; $4fd9: $65
	sub  l                                           ; $4fda: $95
	sbc  a                                           ; $4fdb: $9f
	dec  c                                           ; $4fdc: $0d
	nop                                              ; $4fdd: $00
	ld   a, [bc]                                     ; $4fde: $0a
	dec  e                                           ; $4fdf: $1d
	ld   b, b                                        ; $4fe0: $40
	inc  d                                           ; $4fe1: $14
	inc  bc                                          ; $4fe2: $03
	inc  d                                           ; $4fe3: $14
	ld   bc, $2901                                   ; $4fe4: $01 $01 $29
	nop                                              ; $4fe7: $00
	ld   bc, $fc83                                   ; $4fe8: $01 $83 $fc
	and  c                                           ; $4feb: $a1
	rst  $38                                         ; $4fec: $ff
	rst  $38                                         ; $4fed: $ff
	dec  c                                           ; $4fee: $0d
	ld   l, a                                        ; $4fef: $6f
	ld   d, d                                        ; $4ff0: $52
	ld   [bc], a                                     ; $4ff1: $02
	inc  de                                          ; $4ff2: $13
	ld   l, a                                        ; $4ff3: $6f
	sub  c                                           ; $4ff4: $91
	and  c                                           ; $4ff5: $a1
	sub  b                                           ; $4ff6: $90
	sbc  [hl]                                        ; $4ff7: $9e
	ld   h, e                                        ; $4ff8: $63
	ld   e, l                                        ; $4ff9: $5d
	sub  a                                           ; $4ffa: $97
	ld   e, d                                        ; $4ffb: $5a
	dec  c                                           ; $4ffc: $0d
	ld   h, a                                        ; $4ffd: $67
	ld   e, e                                        ; $4ffe: $5b
	ld   a, b                                        ; $4fff: $78
	and  c                                           ; $5000: $a1
	ld   l, [hl]                                     ; $5001: $6e
	sbc  a                                           ; $5002: $9f
	dec  c                                           ; $5003: $0d
	nop                                              ; $5004: $00
	ld   a, [bc]                                     ; $5005: $0a
	ld   b, $ad                                      ; $5006: $06 $ad
	ld   b, $1c                                      ; $5008: $06 $1c
	inc  b                                           ; $500a: $04
	nop                                              ; $500b: $00
	nop                                              ; $500c: $00
	ld   bc, $9e50                                   ; $500d: $01 $50 $9e
	adc  h                                           ; $5010: $8c
	ld   l, l                                        ; $5011: $6d
	sbc  [hl]                                        ; $5012: $9e
	ld   e, c                                        ; $5013: $59
	ld   [hl], a                                     ; $5014: $77
	and  b                                           ; $5015: $a0
	ld   a, [bc]                                     ; $5016: $0a
	ld   [bc], a                                     ; $5017: $02
	add  b                                           ; $5018: $80
	ld   l, [hl]                                     ; $5019: $6e
	sbc  b                                           ; $501a: $98
	ld   a, c                                        ; $501b: $79
	dec  c                                           ; $501c: $0d
	adc  h                                           ; $501d: $8c
	ld   e, d                                        ; $501e: $5a
	ld   [hl], c                                     ; $501f: $71
	ld   l, l                                        ; $5020: $6d
	sub  [hl]                                        ; $5021: $96
	sbc  a                                           ; $5022: $9f
	ld   a, [bc]                                     ; $5023: $0a
	inc  bc                                          ; $5024: $03
	dec  c                                           ; $5025: $0d
	nop                                              ; $5026: $00
	ld   a, [bc]                                     ; $5027: $0a
	dec  c                                           ; $5028: $0d
	nop                                              ; $5029: $00
	nop                                              ; $502a: $00
	rrca                                             ; $502b: $0f
	nop                                              ; $502c: $00
	ld   bc, $8423                                   ; $502d: $01 $23 $84
	inc  e                                           ; $5030: $1c
	inc  b                                           ; $5031: $04
	inc  bc                                          ; $5032: $03
	inc  bc                                          ; $5033: $03
	ld   bc, $a161                                   ; $5034: $01 $61 $a1
	ld   [hl], a                                     ; $5037: $77
	ld   a, l                                        ; $5038: $7d
	sbc  [hl]                                        ; $5039: $9e
	ld   h, e                                        ; $503a: $63
	adc  l                                           ; $503b: $8d
	ld   h, l                                        ; $503c: $65
	ld   l, e                                        ; $503d: $6b
	ld   d, h                                        ; $503e: $54
	ld   a, b                                        ; $503f: $78
	halt                                             ; $5040: $76
	ld   h, c                                        ; $5041: $61
	sbc  e                                           ; $5042: $9b
	dec  c                                           ; $5043: $0d
	ld   l, [hl]                                     ; $5044: $6e
	rst  $38                                         ; $5045: $ff
	rst  $38                                         ; $5046: $ff
	adc  h                                           ; $5047: $8c
	ld   h, a                                        ; $5048: $67
	adc  h                                           ; $5049: $8c
	ld   h, a                                        ; $504a: $67
	sbc  [hl]                                        ; $504b: $9e
	ld   d, b                                        ; $504c: $50
	sub  d                                           ; $504d: $92
	ld   h, l                                        ; $504e: $65
	ld   d, d                                        ; $504f: $52
	ld   a, [$000d]                                  ; $5050: $fa $0d $00
	ld   a, [bc]                                     ; $5053: $0a
	inc  e                                           ; $5054: $1c
	inc  b                                           ; $5055: $04
	nop                                              ; $5056: $00
	nop                                              ; $5057: $00
	ld   bc, $6176                                   ; $5058: $01 $76 $61
	sbc  e                                           ; $505b: $9b
	ld   [hl], l                                     ; $505c: $75
	sbc  [hl]                                        ; $505d: $9e
	ld   l, a                                        ; $505e: $6f
	ld   d, d                                        ; $505f: $52
	ld   [bc], a                                     ; $5060: $02
	inc  de                                          ; $5061: $13
	ld   l, a                                        ; $5062: $6f
	sub  c                                           ; $5063: $91
	and  c                                           ; $5064: $a1
	sbc  a                                           ; $5065: $9f
	dec  c                                           ; $5066: $0d
	nop                                              ; $5067: $00
	ld   a, [bc]                                     ; $5068: $0a
	ld   bc, $8c52                                   ; $5069: $01 $52 $8c
	adc  h                                           ; $506c: $8c
	ld   [hl], l                                     ; $506d: $75
	inc  d                                           ; $506e: $14
	ld   e, c                                        ; $506f: $59
	ld   d, d                                        ; $5070: $52
	ld   a, h                                        ; $5071: $7c
	adc  h                                           ; $5072: $8c
	ld   e, d                                        ; $5073: $5a
	sbc  b                                           ; $5074: $98
	ld   e, c                                        ; $5075: $59
	ld   [hl], a                                     ; $5076: $77
	dec  c                                           ; $5077: $0d
	ld   [hl], a                                     ; $5078: $77
	ld   [hl], c                                     ; $5079: $71
	ld   l, a                                        ; $507a: $6f
	ld   a, c                                        ; $507b: $79
	adc  h                                           ; $507c: $8c
	ld   e, d                                        ; $507d: $5a
	ld   [hl], c                                     ; $507e: $71
	ld   l, l                                        ; $507f: $6d
	ld   e, c                                        ; $5080: $59
	sbc  [hl]                                        ; $5081: $9e
	dec  c                                           ; $5082: $0d
	ld   e, b                                        ; $5083: $58
	adc  d                                           ; $5084: $8a
	ld   d, [hl]                                     ; $5085: $56
	ld   [hl], h                                     ; $5086: $74
	sbc  c                                           ; $5087: $99
	ld   sp, hl                                      ; $5088: $f9
	dec  c                                           ; $5089: $0d
	nop                                              ; $508a: $00
	ld   a, [bc]                                     ; $508b: $0a
	add  hl, de                                      ; $508c: $19
	dec  b                                           ; $508d: $05
	inc  bc                                          ; $508e: $03
	ld   [bc], a                                     ; $508f: $02
	inc  e                                           ; $5090: $1c
	ld   bc, $0313                                   ; $5091: $01 $13 $03
	ld   h, b                                        ; $5094: $60
	ld   bc, $0313                                   ; $5095: $01 $13 $03
	ld   h, b                                        ; $5098: $60
	nop                                              ; $5099: $00
	nop                                              ; $509a: $00
	inc  bc                                          ; $509b: $03
	ld   h, b                                        ; $509c: $60
	ld   bc, $0213                                   ; $509d: $01 $13 $02
	inc  e                                           ; $50a0: $1c
	ld   bc, $0313                                   ; $50a1: $01 $13 $03
	ld   h, b                                        ; $50a4: $60
	nop                                              ; $50a5: $00
	ld   bc, $1c02                                   ; $50a6: $01 $02 $1c
	ld   bc, $0313                                   ; $50a9: $01 $13 $03
	ld   h, b                                        ; $50ac: $60
	ld   bc, $0213                                   ; $50ad: $01 $13 $02
	inc  e                                           ; $50b0: $1c
	nop                                              ; $50b1: $00
	ld   [bc], a                                     ; $50b2: $02
	rlca                                             ; $50b3: $07
	or   c                                           ; $50b4: $b1
	rlca                                             ; $50b5: $07
	ld   [bc], a                                     ; $50b6: $02
	inc  bc                                          ; $50b7: $03
	ld   bc, $2000                                   ; $50b8: $01 $00 $20
	nop                                              ; $50bb: $00
	rlca                                             ; $50bc: $07
	ld   [hl], l                                     ; $50bd: $75
	rlca                                             ; $50be: $07
	ld   [bc], a                                     ; $50bf: $02
	inc  bc                                          ; $50c0: $03
	ld   bc, $2001                                   ; $50c1: $01 $01 $20
	nop                                              ; $50c4: $00
	rlca                                             ; $50c5: $07
	ld   [hl], l                                     ; $50c6: $75
	rlca                                             ; $50c7: $07
	ld   [bc], a                                     ; $50c8: $02
	inc  bc                                          ; $50c9: $03
	ld   bc, $2002                                   ; $50ca: $01 $02 $20
	nop                                              ; $50cd: $00
	ld   b, $75                                      ; $50ce: $06 $75
	rlca                                             ; $50d0: $07
	rrca                                             ; $50d1: $0f
	inc  b                                           ; $50d2: $04
	nop                                              ; $50d3: $00
	ld   bc, $0701                                   ; $50d4: $01 $01 $07
	adc  l                                           ; $50d7: $8d
	ld   e, h                                        ; $50d8: $5c
	ld   bc, $8013                                   ; $50d9: $01 $13 $80
	ld   l, [hl]                                     ; $50dc: $6e
	sbc  b                                           ; $50dd: $98
	ld   bc, $8013                                   ; $50de: $01 $13 $80
	ld   l, [hl]                                     ; $50e1: $6e
	sbc  b                                           ; $50e2: $98
	ld   bc, $0d08                                   ; $50e3: $01 $08 $0d
	ld   l, [hl]                                     ; $50e6: $6e
	sub  [hl]                                        ; $50e7: $96
	sbc  a                                           ; $50e8: $9f
	dec  c                                           ; $50e9: $0d
	nop                                              ; $50ea: $00
	ld   a, [bc]                                     ; $50eb: $0a
	ld   bc, $5659                                   ; $50ec: $01 $59 $56
	sbc  c                                           ; $50ef: $99
	halt                                             ; $50f0: $76
	ld   e, e                                        ; $50f1: $5b
	ld   a, h                                        ; $50f2: $7c
	ld   l, l                                        ; $50f3: $6d
	adc  a                                           ; $50f4: $8f
	ld   a, c                                        ; $50f5: $79
	sbc  [hl]                                        ; $50f6: $9e
	ld   h, c                                        ; $50f7: $61
	sbc  d                                           ; $50f8: $9a
	ld   e, c                                        ; $50f9: $59
	sub  a                                           ; $50fa: $97
	dec  c                                           ; $50fb: $0d
	ld   h, e                                        ; $50fc: $63
	ld   e, e                                        ; $50fd: $5b
	sub  b                                           ; $50fe: $90
	ld   e, b                                        ; $50ff: $58
	adc  d                                           ; $5100: $8a
	ld   d, [hl]                                     ; $5101: $56
	halt                                             ; $5102: $76
	ld   d, d                                        ; $5103: $52
	ld   [hl], h                                     ; $5104: $74
	ld   a, e                                        ; $5105: $7b
	sbc  a                                           ; $5106: $9f
	dec  c                                           ; $5107: $0d
	nop                                              ; $5108: $00
	ld   a, [bc]                                     ; $5109: $0a
	ld   b, $0b                                      ; $510a: $06 $0b
	ld   [$041c], sp                                 ; $510c: $08 $1c $04
	ld   bc, $1d01                                   ; $510f: $01 $01 $1d
	ld   b, b                                        ; $5112: $40
	inc  d                                           ; $5113: $14
	inc  bc                                          ; $5114: $03
	inc  d                                           ; $5115: $14
	ld   bc, $2803                                   ; $5116: $01 $03 $28
	nop                                              ; $5119: $00
	ld   bc, $b5ba                                   ; $511a: $01 $ba $b5
	and  l                                           ; $511d: $a5
	ld   e, e                                        ; $511e: $5b
	ld   e, b                                        ; $511f: $58
	ld   e, l                                        ; $5120: $5d
	sbc  b                                           ; $5121: $98
	sub  l                                           ; $5122: $95
	ld   e, l                                        ; $5123: $5d
	ld   a, [$630d]                                  ; $5124: $fa $0d $63
	ld   h, a                                        ; $5127: $67
	ld   e, d                                        ; $5128: $5a
	ld   l, a                                        ; $5129: $6f
	ld   d, d                                        ; $512a: $52
	ld   [bc], a                                     ; $512b: $02
	inc  de                                          ; $512c: $13
	ld   l, a                                        ; $512d: $6f
	sub  c                                           ; $512e: $91
	and  c                                           ; $512f: $a1
	ld   a, [$000d]                                  ; $5130: $fa $0d $00
	ld   a, [bc]                                     ; $5133: $0a
	ld   bc, $0701                                   ; $5134: $01 $01 $07
	adc  l                                           ; $5137: $8d
	ld   e, h                                        ; $5138: $5c
	ld   bc, $8013                                   ; $5139: $01 $13 $80
	ld   l, [hl]                                     ; $513c: $6e
	sbc  b                                           ; $513d: $98
	ld   bc, $8013                                   ; $513e: $01 $13 $80
	ld   l, [hl]                                     ; $5141: $6e
	sbc  b                                           ; $5142: $98
	ld   bc, $9f08                                   ; $5143: $01 $08 $9f
	dec  c                                           ; $5146: $0d
	ld   e, c                                        ; $5147: $59
	ld   d, [hl]                                     ; $5148: $56
	sbc  c                                           ; $5149: $99
	halt                                             ; $514a: $76
	ld   e, e                                        ; $514b: $5b
	ld   a, h                                        ; $514c: $7c
	ld   l, l                                        ; $514d: $6d
	adc  a                                           ; $514e: $8f
	ld   a, c                                        ; $514f: $79
	sbc  [hl]                                        ; $5150: $9e
	ld   h, c                                        ; $5151: $61
	sbc  d                                           ; $5152: $9a
	ld   e, c                                        ; $5153: $59
	sub  a                                           ; $5154: $97
	dec  c                                           ; $5155: $0d
	ld   h, e                                        ; $5156: $63
	ld   e, e                                        ; $5157: $5b
	sub  b                                           ; $5158: $90
	ld   e, b                                        ; $5159: $58
	adc  d                                           ; $515a: $8a
	ld   d, [hl]                                     ; $515b: $56
	halt                                             ; $515c: $76
	ld   d, d                                        ; $515d: $52
	ld   [hl], h                                     ; $515e: $74
	ld   a, e                                        ; $515f: $7b
	sbc  a                                           ; $5160: $9f
	dec  c                                           ; $5161: $0d
	nop                                              ; $5162: $00
	ld   a, [bc]                                     ; $5163: $0a
	ld   b, $0b                                      ; $5164: $06 $0b
	ld   [$041c], sp                                 ; $5166: $08 $1c $04
	nop                                              ; $5169: $00
	nop                                              ; $516a: $00
	ld   bc, $9e50                                   ; $516b: $01 $50 $9e
	ld   h, c                                        ; $516e: $61
	and  c                                           ; $516f: $a1
	ld   [hl], a                                     ; $5170: $77
	ld   a, l                                        ; $5171: $7d
	sbc  [hl]                                        ; $5172: $9e
	ld   e, c                                        ; $5173: $59
	ld   [hl], a                                     ; $5174: $77
	and  b                                           ; $5175: $a0
	ld   a, [bc]                                     ; $5176: $0a
	ld   [bc], a                                     ; $5177: $02
	adc  l                                           ; $5178: $8d
	ld   e, h                                        ; $5179: $5c
	ld   a, c                                        ; $517a: $79
	dec  c                                           ; $517b: $0d
	adc  h                                           ; $517c: $8c
	ld   e, d                                        ; $517d: $5a
	ld   [hl], c                                     ; $517e: $71
	ld   l, l                                        ; $517f: $6d
	sub  [hl]                                        ; $5180: $96
	sbc  a                                           ; $5181: $9f
	ld   a, [bc]                                     ; $5182: $0a
	inc  bc                                          ; $5183: $03
	dec  c                                           ; $5184: $0d
	nop                                              ; $5185: $00
	ld   a, [bc]                                     ; $5186: $0a
	dec  c                                           ; $5187: $0d
	nop                                              ; $5188: $00
	nop                                              ; $5189: $00
	rrca                                             ; $518a: $0f
	nop                                              ; $518b: $00
	ld   bc, $9223                                   ; $518c: $01 $23 $92
	inc  e                                           ; $518f: $1c
	inc  b                                           ; $5190: $04
	nop                                              ; $5191: $00
	nop                                              ; $5192: $00
	ld   bc, $9a50                                   ; $5193: $01 $50 $9a
	rst  $38                                         ; $5196: $ff
	rst  $38                                         ; $5197: $ff
	dec  c                                           ; $5198: $0d
	ld   h, [hl]                                     ; $5199: $66
	and  c                                           ; $519a: $a1
	ld   h, [hl]                                     ; $519b: $66
	sub  c                                           ; $519c: $91
	ld   l, [hl]                                     ; $519d: $6e
	sub  [hl]                                        ; $519e: $96
	rst  $38                                         ; $519f: $ff
	rst  $38                                         ; $51a0: $ff
	dec  c                                           ; $51a1: $0d
	nop                                              ; $51a2: $00
	ld   a, [bc]                                     ; $51a3: $0a
	rrca                                             ; $51a4: $0f
	nop                                              ; $51a5: $00
	ld   bc, $a301                                   ; $51a6: $01 $01 $a3
	and  l                                           ; $51a9: $a5
	db   $ec                                         ; $51aa: $ec
	cp   d                                           ; $51ab: $ba
	sbc  a                                           ; $51ac: $9f
	dec  c                                           ; $51ad: $0d
	ld   l, a                                        ; $51ae: $6f
	sub  l                                           ; $51af: $95
	ld   [hl], c                                     ; $51b0: $71
	halt                                             ; $51b1: $76
	ld   [bc], a                                     ; $51b2: $02
	jp   nz, Jump_061_7452                           ; $51b3: $c2 $52 $74

	ld   d, d                                        ; $51b6: $52
	ld   d, d                                        ; $51b7: $52
	ld   sp, hl                                      ; $51b8: $f9
	dec  c                                           ; $51b9: $0d
	nop                                              ; $51ba: $00
	ld   a, [bc]                                     ; $51bb: $0a
	rrca                                             ; $51bc: $0f
	inc  b                                           ; $51bd: $04
	nop                                              ; $51be: $00
	ld   bc, $7978                                   ; $51bf: $01 $78 $79
	ld   sp, hl                                      ; $51c2: $f9
	dec  c                                           ; $51c3: $0d
	nop                                              ; $51c4: $00
	ld   a, [bc]                                     ; $51c5: $0a
	add  hl, de                                      ; $51c6: $19
	dec  b                                           ; $51c7: $05
	inc  bc                                          ; $51c8: $03
	ld   h, e                                        ; $51c9: $63
	ld   e, l                                        ; $51ca: $5d
	sub  a                                           ; $51cb: $97
	ld   a, c                                        ; $51cc: $79
	ld   [hl], d                                     ; $51cd: $72
	ld   d, d                                        ; $51ce: $52
	ld   [hl], h                                     ; $51cf: $74
	ld   [bc], a                                     ; $51d0: $02
	jp   nz, $005d                                   ; $51d1: $c2 $5d $00

	nop                                              ; $51d4: $00
	inc  b                                           ; $51d5: $04
	ld   c, $03                                      ; $51d6: $0e $03
	sub  b                                           ; $51d8: $90
	ld   a, c                                        ; $51d9: $79
	ld   [hl], d                                     ; $51da: $72
	ld   d, d                                        ; $51db: $52
	ld   [hl], h                                     ; $51dc: $74
	ld   [bc], a                                     ; $51dd: $02
	jp   nz, $005d                                   ; $51de: $c2 $5d $00

	ld   bc, $9250                                   ; $51e1: $01 $50 $92
	adc  a                                           ; $51e4: $8f
	ld   a, c                                        ; $51e5: $79
	ld   [hl], d                                     ; $51e6: $72
	ld   d, d                                        ; $51e7: $52
	ld   [hl], h                                     ; $51e8: $74
	ld   [bc], a                                     ; $51e9: $02
	jp   nz, $005d                                   ; $51ea: $c2 $5d $00

	ld   [bc], a                                     ; $51ed: $02
	rlca                                             ; $51ee: $07
	or   b                                           ; $51ef: $b0
	ld   [$0302], sp                                 ; $51f0: $08 $02 $03
	ld   bc, $2000                                   ; $51f3: $01 $00 $20
	nop                                              ; $51f6: $00
	rlca                                             ; $51f7: $07
	db   $fc                                         ; $51f8: $fc
	ld   [$0302], sp                                 ; $51f9: $08 $02 $03
	ld   bc, $2001                                   ; $51fc: $01 $01 $20
	nop                                              ; $51ff: $00
	rlca                                             ; $5200: $07
	ld   c, [hl]                                     ; $5201: $4e
	add  hl, bc                                      ; $5202: $09
	ld   [bc], a                                     ; $5203: $02
	inc  bc                                          ; $5204: $03
	ld   bc, $2002                                   ; $5205: $01 $02 $20
	nop                                              ; $5208: $00
	ld   b, $97                                      ; $5209: $06 $97
	add  hl, bc                                      ; $520b: $09
	rrca                                             ; $520c: $0f
	nop                                              ; $520d: $00
	ld   bc, $a301                                   ; $520e: $01 $01 $a3
	and  l                                           ; $5211: $a5
	db   $ec                                         ; $5212: $ec
	cp   d                                           ; $5213: $ba
	ld   a, l                                        ; $5214: $7d
	sbc  [hl]                                        ; $5215: $9e
	ld   h, e                                        ; $5216: $63
	ld   e, l                                        ; $5217: $5d
	sub  a                                           ; $5218: $97
	ld   h, e                                        ; $5219: $63
	and  c                                           ; $521a: $a1
	ld   a, h                                        ; $521b: $7c
	ld   h, c                                        ; $521c: $61
	halt                                             ; $521d: $76
	dec  c                                           ; $521e: $0d
	ld   [hl], a                                     ; $521f: $77
	ld   d, h                                        ; $5220: $54
	dec  b                                           ; $5221: $05
	pop  de                                          ; $5222: $d1
	ld   [hl], c                                     ; $5223: $71
	ld   [hl], h                                     ; $5224: $74
	sbc  c                                           ; $5225: $99
	ld   a, h                                        ; $5226: $7c
	ld   sp, hl                                      ; $5227: $f9
	dec  c                                           ; $5228: $0d
	nop                                              ; $5229: $00
	ld   a, [bc]                                     ; $522a: $0a
	inc  e                                           ; $522b: $1c
	inc  b                                           ; $522c: $04
	rlca                                             ; $522d: $07
	rlca                                             ; $522e: $07
	ld   bc, $5d63                                   ; $522f: $01 $63 $5d
	sub  a                                           ; $5232: $97
	ld   a, l                                        ; $5233: $7d
	ld   a, e                                        ; $5234: $7b
	sbc  [hl]                                        ; $5235: $9e
	ld   d, d                                        ; $5236: $52
	ld   [hl], c                                     ; $5237: $71
	ld   [hl], d                                     ; $5238: $72
	sub  b                                           ; $5239: $90
	dec  c                                           ; $523a: $0d
	ld   e, b                                        ; $523b: $58
	ld   [bc], a                                     ; $523c: $02
	inc  de                                          ; $523d: $13
	ld   l, a                                        ; $523e: $6f
	sub  c                                           ; $523f: $91
	and  c                                           ; $5240: $a1
	and  b                                           ; $5241: $a0
	add  b                                           ; $5242: $80
	halt                                             ; $5243: $76
	sbc  b                                           ; $5244: $98
	ld   h, [hl]                                     ; $5245: $66
	adc  a                                           ; $5246: $8f
	dec  c                                           ; $5247: $0d
	ld   h, a                                        ; $5248: $67
	sbc  c                                           ; $5249: $99
	ld   e, c                                        ; $524a: $59
	sub  a                                           ; $524b: $97
	sbc  [hl]                                        ; $524c: $9e
	cp   e                                           ; $524d: $bb
	db   $ed                                         ; $524e: $ed
	and  l                                           ; $524f: $a5
	sub  [hl]                                        ; $5250: $96
	sbc  a                                           ; $5251: $9f
	dec  c                                           ; $5252: $0d
	nop                                              ; $5253: $00
	ld   a, [bc]                                     ; $5254: $0a
	ld   b, $97                                      ; $5255: $06 $97
	add  hl, bc                                      ; $5257: $09
	rrca                                             ; $5258: $0f
	nop                                              ; $5259: $00

Jump_061_525a:
	ld   bc, $a301                                   ; $525a: $01 $01 $a3
	and  l                                           ; $525d: $a5
	db   $ec                                         ; $525e: $ec
	cp   d                                           ; $525f: $ba
	ld   a, l                                        ; $5260: $7d
	sbc  [hl]                                        ; $5261: $9e
	inc  b                                           ; $5262: $04
	ld   c, $03                                      ; $5263: $0e $03
	sub  b                                           ; $5265: $90
	ld   h, e                                        ; $5266: $63
	and  c                                           ; $5267: $a1
	ld   a, h                                        ; $5268: $7c
	ld   h, c                                        ; $5269: $61
	halt                                             ; $526a: $76
	dec  c                                           ; $526b: $0d
	ld   [hl], a                                     ; $526c: $77
	ld   d, h                                        ; $526d: $54
	dec  b                                           ; $526e: $05
	pop  de                                          ; $526f: $d1
	ld   [hl], c                                     ; $5270: $71
	ld   [hl], h                                     ; $5271: $74
	sbc  c                                           ; $5272: $99
	ld   a, h                                        ; $5273: $7c
	ld   sp, hl                                      ; $5274: $f9
	dec  c                                           ; $5275: $0d
	nop                                              ; $5276: $00
	ld   a, [bc]                                     ; $5277: $0a
	inc  e                                           ; $5278: $1c
	inc  b                                           ; $5279: $04
	inc  bc                                          ; $527a: $03
	inc  bc                                          ; $527b: $03
	ld   bc, $0258                                   ; $527c: $01 $58 $02
	inc  de                                          ; $527f: $13
	ld   l, a                                        ; $5280: $6f
	sub  c                                           ; $5281: $91
	and  c                                           ; $5282: $a1
	ld   a, l                                        ; $5283: $7d
	and  e                                           ; $5284: $a3
	and  l                                           ; $5285: $a5
	db   $ec                                         ; $5286: $ec
	cp   d                                           ; $5287: $ba
	ld   a, h                                        ; $5288: $7c
	dec  c                                           ; $5289: $0d
	ld   h, c                                        ; $528a: $61
	ld   d, d                                        ; $528b: $52
	add  c                                           ; $528c: $81
	halt                                             ; $528d: $76
	ld   a, b                                        ; $528e: $78
	ld   a, h                                        ; $528f: $7c
	ld   a, c                                        ; $5290: $79
	sbc  [hl]                                        ; $5291: $9e
	ld   [hl], a                                     ; $5292: $77
	ld   d, h                                        ; $5293: $54
	ld   h, l                                        ; $5294: $65
	ld   [hl], h                                     ; $5295: $74
	dec  c                                           ; $5296: $0d
	ld   h, e                                        ; $5297: $63
	ld   e, l                                        ; $5298: $5d
	sub  a                                           ; $5299: $97
	halt                                             ; $529a: $76
	ld   a, b                                        ; $529b: $78
	ld   e, c                                        ; $529c: $59
	sub  [hl]                                        ; $529d: $96
	ld   h, l                                        ; $529e: $65
	ld   a, b                                        ; $529f: $78
	and  c                                           ; $52a0: $a1
	ld   l, [hl]                                     ; $52a1: $6e
	sbc  e                                           ; $52a2: $9b
	ld   sp, hl                                      ; $52a3: $f9
	dec  c                                           ; $52a4: $0d
	nop                                              ; $52a5: $00
	ld   a, [bc]                                     ; $52a6: $0a
	ld   b, $97                                      ; $52a7: $06 $97
	add  hl, bc                                      ; $52a9: $09
	rrca                                             ; $52aa: $0f
	nop                                              ; $52ab: $00
	ld   bc, $a301                                   ; $52ac: $01 $01 $a3
	and  l                                           ; $52af: $a5
	db   $ec                                         ; $52b0: $ec
	cp   d                                           ; $52b1: $ba
	ld   a, l                                        ; $52b2: $7d
	sbc  [hl]                                        ; $52b3: $9e
	ld   d, b                                        ; $52b4: $50
	sub  d                                           ; $52b5: $92
	adc  a                                           ; $52b6: $8f
	ld   h, e                                        ; $52b7: $63
	and  c                                           ; $52b8: $a1
	ld   a, h                                        ; $52b9: $7c
	ld   h, c                                        ; $52ba: $61
	halt                                             ; $52bb: $76
	dec  c                                           ; $52bc: $0d
	ld   [hl], a                                     ; $52bd: $77
	ld   d, h                                        ; $52be: $54
	dec  b                                           ; $52bf: $05
	pop  de                                          ; $52c0: $d1
	ld   d, h                                        ; $52c1: $54
	ld   sp, hl                                      ; $52c2: $f9
	dec  c                                           ; $52c3: $0d
	nop                                              ; $52c4: $00
	ld   a, [bc]                                     ; $52c5: $0a
	inc  e                                           ; $52c6: $1c
	inc  b                                           ; $52c7: $04
	ld   bc, $0101                                   ; $52c8: $01 $01 $01
	ld   d, b                                        ; $52cb: $50
	sub  d                                           ; $52cc: $92
	adc  a                                           ; $52cd: $8f
	ld   e, b                                        ; $52ce: $58
	ld   a, e                                        ; $52cf: $7b
	ld   d, [hl]                                     ; $52d0: $56
	ld   l, a                                        ; $52d1: $6f
	sub  c                                           ; $52d2: $91
	and  c                                           ; $52d3: $a1
	ld   sp, hl                                      ; $52d4: $f9
	dec  c                                           ; $52d5: $0d
	ld   d, b                                        ; $52d6: $50
	and  c                                           ; $52d7: $a1
	adc  h                                           ; $52d8: $8c
	sbc  b                                           ; $52d9: $98
	ld   e, b                                        ; $52da: $58
	ld   h, c                                        ; $52db: $61
	and  c                                           ; $52dc: $a1
	ld   a, b                                        ; $52dd: $78
	ld   d, d                                        ; $52de: $52
	ld   h, l                                        ; $52df: $65
	sbc  [hl]                                        ; $52e0: $9e
	dec  c                                           ; $52e1: $0d
	sub  d                                           ; $52e2: $92
	ld   h, e                                        ; $52e3: $63
	ld   h, l                                        ; $52e4: $65
	ld   d, d                                        ; $52e5: $52
	ld   e, c                                        ; $52e6: $59
	sub  a                                           ; $52e7: $97
	cp   d                                           ; $52e8: $ba
	xor  [hl]                                        ; $52e9: $ae
	ld   l, [hl]                                     ; $52ea: $6e
	sub  [hl]                                        ; $52eb: $96
	sbc  a                                           ; $52ec: $9f
	dec  c                                           ; $52ed: $0d
	nop                                              ; $52ee: $00
	ld   a, [bc]                                     ; $52ef: $0a
	ld   b, $97                                      ; $52f0: $06 $97
	add  hl, bc                                      ; $52f2: $09
	inc  e                                           ; $52f3: $1c
	inc  b                                           ; $52f4: $04
	nop                                              ; $52f5: $00
	nop                                              ; $52f6: $00
	ld   bc, $9e50                                   ; $52f7: $01 $50 $9e
	ld   h, c                                        ; $52fa: $61
	and  c                                           ; $52fb: $a1
	ld   [hl], a                                     ; $52fc: $77
	ld   a, l                                        ; $52fd: $7d
	sbc  [hl]                                        ; $52fe: $9e
	ld   e, c                                        ; $52ff: $59
	ld   [hl], a                                     ; $5300: $77
	and  b                                           ; $5301: $a0
	ld   a, [bc]                                     ; $5302: $0a
	ld   [bc], a                                     ; $5303: $02
	add  b                                           ; $5304: $80
	ld   l, [hl]                                     ; $5305: $6e
	sbc  b                                           ; $5306: $98
	ld   a, c                                        ; $5307: $79
	dec  c                                           ; $5308: $0d
	adc  h                                           ; $5309: $8c
	ld   e, d                                        ; $530a: $5a
	ld   [hl], c                                     ; $530b: $71
	ld   l, l                                        ; $530c: $6d
	sub  [hl]                                        ; $530d: $96
	sbc  a                                           ; $530e: $9f
	ld   a, [bc]                                     ; $530f: $0a
	inc  bc                                          ; $5310: $03
	dec  c                                           ; $5311: $0d
	nop                                              ; $5312: $00
	ld   a, [bc]                                     ; $5313: $0a
	dec  c                                           ; $5314: $0d
	nop                                              ; $5315: $00
	nop                                              ; $5316: $00
	rrca                                             ; $5317: $0f
	nop                                              ; $5318: $00
	ld   bc, $8223                                   ; $5319: $01 $23 $82
	inc  e                                           ; $531c: $1c
	inc  b                                           ; $531d: $04
	ld   b, $06                                      ; $531e: $06 $06
	ld   bc, $ff50                                   ; $5320: $01 $50 $ff
	rst  $38                                         ; $5323: $ff
	rst  $38                                         ; $5324: $ff
	rst  $38                                         ; $5325: $ff
	dec  c                                           ; $5326: $0d
	ld   e, b                                        ; $5327: $58
	sub  b                                           ; $5328: $90
	ld   d, d                                        ; $5329: $52
	ld   l, [hl]                                     ; $532a: $6e
	ld   h, l                                        ; $532b: $65
	ld   l, l                                        ; $532c: $6d
	sbc  a                                           ; $532d: $9f
	dec  c                                           ; $532e: $0d
	ld   h, e                                        ; $532f: $63
	ld   e, l                                        ; $5330: $5d
	sub  a                                           ; $5331: $97
	halt                                             ; $5332: $76
	ld   e, b                                        ; $5333: $58
	ld   [bc], a                                     ; $5334: $02
	inc  de                                          ; $5335: $13
	ld   l, a                                        ; $5336: $6f
	sub  c                                           ; $5337: $91
	and  c                                           ; $5338: $a1
	ld   a, l                                        ; $5339: $7d
	rst  $38                                         ; $533a: $ff
	rst  $38                                         ; $533b: $ff
	dec  c                                           ; $533c: $0d
	nop                                              ; $533d: $00
	ld   a, [bc]                                     ; $533e: $0a
	ld   bc, $a161                                   ; $533f: $01 $61 $a1
	ld   [hl], a                                     ; $5342: $77
	ld   a, h                                        ; $5343: $7c
	ld   h, c                                        ; $5344: $61
	ld   d, h                                        ; $5345: $54
	ld   d, [hl]                                     ; $5346: $56
	and  c                                           ; $5347: $a1
	ld   a, h                                        ; $5348: $7c
	add  h                                           ; $5349: $84
	ld   h, [hl]                                     ; $534a: $66
	and  b                                           ; $534b: $a0
	dec  c                                           ; $534c: $0d
	ld   d, d                                        ; $534d: $52
	ld   a, h                                        ; $534e: $7c
	ld   [hl], c                                     ; $534f: $71
	ld   [hl], h                                     ; $5350: $74
	sbc  [hl]                                        ; $5351: $9e
	ld   e, b                                        ; $5352: $58
	add  e                                           ; $5353: $83
	ld   l, [hl]                                     ; $5354: $6e
	and  b                                           ; $5355: $a0
	sub  b                                           ; $5356: $90
	sub  a                                           ; $5357: $97
	ld   d, d                                        ; $5358: $52
	ld   a, c                                        ; $5359: $79
	dec  c                                           ; $535a: $0d
	ld   e, e                                        ; $535b: $5b
	ld   l, l                                        ; $535c: $6d
	and  c                                           ; $535d: $a1
	ld   l, [hl]                                     ; $535e: $6e
	sbc  a                                           ; $535f: $9f
	dec  c                                           ; $5360: $0d
	nop                                              ; $5361: $00
	ld   a, [bc]                                     ; $5362: $0a
	ld   bc, $7c5b                                   ; $5363: $01 $5b $7c
	ld   d, h                                        ; $5366: $54
	sbc  [hl]                                        ; $5367: $9e
	ld   e, b                                        ; $5368: $58
	ld   h, [hl]                                     ; $5369: $66
	ld   l, a                                        ; $536a: $6f
	sub  c                                           ; $536b: $91
	and  c                                           ; $536c: $a1
	ld   e, d                                        ; $536d: $5a
	dec  c                                           ; $536e: $0d
	ld   l, e                                        ; $536f: $6b
	and  c                                           ; $5370: $a1
	ld   a, b                                        ; $5371: $78
	ld   h, c                                        ; $5372: $61
	halt                                             ; $5373: $76
	and  b                                           ; $5374: $a0
	sbc  [hl]                                        ; $5375: $9e
	ld   a, l                                        ; $5376: $7d
	ld   a, b                                        ; $5377: $78
	ld   h, l                                        ; $5378: $65
	ld   [hl], h                                     ; $5379: $74
	ld   l, l                                        ; $537a: $6d
	rst  $38                                         ; $537b: $ff
	rst  $38                                         ; $537c: $ff
	dec  c                                           ; $537d: $0d
	ret  z                                           ; $537e: $c8

	ei                                               ; $537f: $fb
	ret                                              ; $5380: $c9


	ld   h, [hl]                                     ; $5381: $66
	sub  c                                           ; $5382: $91
	ld   a, b                                        ; $5383: $78
	ld   e, c                                        ; $5384: $59
	ld   [hl], c                                     ; $5385: $71
	ld   l, l                                        ; $5386: $6d
	and  c                                           ; $5387: $a1
	ld   l, [hl]                                     ; $5388: $6e
	rst  $38                                         ; $5389: $ff
	rst  $38                                         ; $538a: $ff
	dec  c                                           ; $538b: $0d
	nop                                              ; $538c: $00
	ld   a, [bc]                                     ; $538d: $0a
	inc  e                                           ; $538e: $1c
	inc  b                                           ; $538f: $04
	ld   bc, $0101                                   ; $5390: $01 $01 $01
	ld   d, b                                        ; $5393: $50
	ei                                               ; $5394: $fb
	sub  [hl]                                        ; $5395: $96
	ld   e, c                                        ; $5396: $59
	ld   [hl], c                                     ; $5397: $71
	ld   l, l                                        ; $5398: $6d
	ld   a, [$6f0d]                                  ; $5399: $fa $0d $6f
	ld   d, d                                        ; $539c: $52
	ld   [bc], a                                     ; $539d: $02
	inc  de                                          ; $539e: $13
	ld   l, a                                        ; $539f: $6f
	sub  c                                           ; $53a0: $91
	and  c                                           ; $53a1: $a1
	sbc  [hl]                                        ; $53a2: $9e
	ld   e, c                                        ; $53a3: $59
	ld   d, [hl]                                     ; $53a4: $56
	sbc  e                                           ; $53a5: $9b
	ld   d, h                                        ; $53a6: $54
	sub  [hl]                                        ; $53a7: $96
	sbc  a                                           ; $53a8: $9f
	dec  c                                           ; $53a9: $0d
	ld   [hl], l                                     ; $53aa: $75
	sub  b                                           ; $53ab: $90
	sbc  [hl]                                        ; $53ac: $9e
	ld   e, e                                        ; $53ad: $5b
	ld   l, l                                        ; $53ae: $6d
	adc  l                                           ; $53af: $8d
	ld   l, a                                        ; $53b0: $6f
	ld   e, b                                        ; $53b1: $58
	adc  d                                           ; $53b2: $8a
	ld   d, [hl]                                     ; $53b3: $56
	ld   [hl], h                                     ; $53b4: $74
	sbc  c                                           ; $53b5: $99
	ld   sp, hl                                      ; $53b6: $f9
	dec  c                                           ; $53b7: $0d
	nop                                              ; $53b8: $00
	ld   a, [bc]                                     ; $53b9: $0a
	add  hl, de                                      ; $53ba: $19
	dec  b                                           ; $53bb: $05
	inc  bc                                          ; $53bc: $03
	ld   [bc], a                                     ; $53bd: $02
	inc  e                                           ; $53be: $1c
	ld   bc, $0313                                   ; $53bf: $01 $13 $03
	ld   h, b                                        ; $53c2: $60
	ld   bc, $0313                                   ; $53c3: $01 $13 $03
	ld   h, b                                        ; $53c6: $60
	ld   bc, $0213                                   ; $53c7: $01 $13 $02
	inc  e                                           ; $53ca: $1c
	ld   bc, $0313                                   ; $53cb: $01 $13 $03
	ld   h, b                                        ; $53ce: $60
	nop                                              ; $53cf: $00
	nop                                              ; $53d0: $00
	inc  bc                                          ; $53d1: $03
	ld   h, b                                        ; $53d2: $60
	ld   bc, $0213                                   ; $53d3: $01 $13 $02
	inc  e                                           ; $53d6: $1c
	ld   bc, $0313                                   ; $53d7: $01 $13 $03
	ld   h, b                                        ; $53da: $60
	ld   bc, $0313                                   ; $53db: $01 $13 $03
	ld   h, b                                        ; $53de: $60
	ld   bc, $0213                                   ; $53df: $01 $13 $02
	inc  e                                           ; $53e2: $1c
	nop                                              ; $53e3: $00
	ld   bc, $1c02                                   ; $53e4: $01 $02 $1c
	ld   bc, $0313                                   ; $53e7: $01 $13 $03
	ld   h, b                                        ; $53ea: $60
	ld   bc, $0213                                   ; $53eb: $01 $13 $02
	inc  e                                           ; $53ee: $1c
	ld   bc, $0313                                   ; $53ef: $01 $13 $03
	ld   h, b                                        ; $53f2: $60
	ld   bc, $0313                                   ; $53f3: $01 $13 $03
	ld   h, b                                        ; $53f6: $60
	nop                                              ; $53f7: $00
	ld   [bc], a                                     ; $53f8: $02
	rlca                                             ; $53f9: $07
	ld   h, l                                        ; $53fa: $65
	dec  bc                                          ; $53fb: $0b
	ld   [bc], a                                     ; $53fc: $02
	inc  bc                                          ; $53fd: $03
	ld   bc, $2000                                   ; $53fe: $01 $00 $20
	nop                                              ; $5401: $00
	rlca                                             ; $5402: $07
	cp   e                                           ; $5403: $bb
	ld   a, [bc]                                     ; $5404: $0a
	ld   [bc], a                                     ; $5405: $02
	inc  bc                                          ; $5406: $03
	ld   bc, $2001                                   ; $5407: $01 $01 $20
	nop                                              ; $540a: $00
	rlca                                             ; $540b: $07
	cp   e                                           ; $540c: $bb
	ld   a, [bc]                                     ; $540d: $0a
	ld   [bc], a                                     ; $540e: $02
	inc  bc                                          ; $540f: $03
	ld   bc, $2002                                   ; $5410: $01 $02 $20
	nop                                              ; $5413: $00
	ld   b, $bb                                      ; $5414: $06 $bb
	ld   a, [bc]                                     ; $5416: $0a
	inc  e                                           ; $5417: $1c
	inc  b                                           ; $5418: $04
	nop                                              ; $5419: $00
	nop                                              ; $541a: $00
	ld   bc, $0701                                   ; $541b: $01 $01 $07
	adc  l                                           ; $541e: $8d
	ld   e, h                                        ; $541f: $5c
	ld   bc, $8013                                   ; $5420: $01 $13 $80
	ld   l, [hl]                                     ; $5423: $6e
	sbc  b                                           ; $5424: $98
	ld   bc, $8013                                   ; $5425: $01 $13 $80
	ld   l, [hl]                                     ; $5428: $6e
	sbc  b                                           ; $5429: $98
	ld   bc, $0d13                                   ; $542a: $01 $13 $0d
	adc  l                                           ; $542d: $8d
	ld   e, h                                        ; $542e: $5c
	ld   bc, $8013                                   ; $542f: $01 $13 $80
	ld   l, [hl]                                     ; $5432: $6e
	sbc  b                                           ; $5433: $98
	ld   bc, $6e08                                   ; $5434: $01 $08 $6e
	sub  [hl]                                        ; $5437: $96
	sbc  a                                           ; $5438: $9f
	dec  c                                           ; $5439: $0d
	nop                                              ; $543a: $00
	ld   a, [bc]                                     ; $543b: $0a
	ld   bc, $5659                                   ; $543c: $01 $59 $56
	sbc  c                                           ; $543f: $99
	halt                                             ; $5440: $76
	ld   e, e                                        ; $5441: $5b
	ld   a, l                                        ; $5442: $7d
	sbc  [hl]                                        ; $5443: $9e
	ld   e, h                                        ; $5444: $5c
	sub  c                                           ; $5445: $91
	ld   e, l                                        ; $5446: $5d
	ld   l, [hl]                                     ; $5447: $6e
	sub  [hl]                                        ; $5448: $96
	sbc  a                                           ; $5449: $9f
	dec  c                                           ; $544a: $0d
	adc  l                                           ; $544b: $8d
	ld   e, h                                        ; $544c: $5c
	ld   a, c                                        ; $544d: $79
	adc  h                                           ; $544e: $8c
	ld   e, d                                        ; $544f: $5a
	ld   [hl], c                                     ; $5450: $71
	ld   l, l                                        ; $5451: $6d
	halt                                             ; $5452: $76
	ld   h, c                                        ; $5453: $61
	ld   a, l                                        ; $5454: $7d
	dec  c                                           ; $5455: $0d
	add  b                                           ; $5456: $80
	ld   l, [hl]                                     ; $5457: $6e
	sbc  b                                           ; $5458: $98
	ld   a, c                                        ; $5459: $79
	ld   a, e                                        ; $545a: $7b
	sbc  a                                           ; $545b: $9f
	dec  c                                           ; $545c: $0d
	nop                                              ; $545d: $00
	ld   a, [bc]                                     ; $545e: $0a
	ld   bc, $656b                                   ; $545f: $01 $6b $65
	ld   [hl], h                                     ; $5462: $74
	halt                                             ; $5463: $76
	ld   d, h                                        ; $5464: $54
	ld   l, d                                        ; $5465: $6a
	and  c                                           ; $5466: $a1
	sbc  [hl]                                        ; $5467: $9e
	ld   h, [hl]                                     ; $5468: $66
	sub  e                                           ; $5469: $93
	and  c                                           ; $546a: $a1
	ld   a, [hl]                                     ; $546b: $7e
	and  c                                           ; $546c: $a1
	sub  b                                           ; $546d: $90
	dec  c                                           ; $546e: $0d
	ld   e, e                                        ; $546f: $5b
	ld   l, l                                        ; $5470: $6d
	halt                                             ; $5471: $76
	ld   e, e                                        ; $5472: $5b
	ld   a, h                                        ; $5473: $7c
	sbc  [hl]                                        ; $5474: $9e
	ld   e, h                                        ; $5475: $5c
	sub  c                                           ; $5476: $91
	ld   e, l                                        ; $5477: $5d
	ld   a, c                                        ; $5478: $79
	dec  c                                           ; $5479: $0d
	ld   a, b                                        ; $547a: $78
	sbc  c                                           ; $547b: $99
	ld   e, c                                        ; $547c: $59
	sub  a                                           ; $547d: $97
	ld   a, e                                        ; $547e: $7b
	sbc  a                                           ; $547f: $9f
	dec  c                                           ; $5480: $0d
	nop                                              ; $5481: $00
	ld   a, [bc]                                     ; $5482: $0a
	ld   bc, $6d5b                                   ; $5483: $01 $5b $6d
	halt                                             ; $5486: $76
	ld   e, e                                        ; $5487: $5b
	ld   a, h                                        ; $5488: $7c
	sbc  [hl]                                        ; $5489: $9e
	adc  h                                           ; $548a: $8c
	ld   e, d                                        ; $548b: $5a
	sbc  b                                           ; $548c: $98
	ld   e, c                                        ; $548d: $59
	ld   [hl], a                                     ; $548e: $77
	and  b                                           ; $548f: $a0
	dec  c                                           ; $5490: $0d
	sub  b                                           ; $5491: $90
	ld   d, h                                        ; $5492: $54
	ld   d, d                                        ; $5493: $52
	ld   l, a                                        ; $5494: $6f
	ld   [hl], a                                     ; $5495: $77
	ld   d, d                                        ; $5496: $52
	ld   d, h                                        ; $5497: $54
	sub  [hl]                                        ; $5498: $96
	sbc  a                                           ; $5499: $9f
	dec  c                                           ; $549a: $0d
	nop                                              ; $549b: $00
	ld   a, [bc]                                     ; $549c: $0a
	ld   bc, $0701                                   ; $549d: $01 $01 $07
	adc  l                                           ; $54a0: $8d
	ld   e, h                                        ; $54a1: $5c
	ld   bc, $8013                                   ; $54a2: $01 $13 $80
	ld   l, [hl]                                     ; $54a5: $6e
	sbc  b                                           ; $54a6: $98
	ld   bc, $8013                                   ; $54a7: $01 $13 $80
	ld   l, [hl]                                     ; $54aa: $6e
	sbc  b                                           ; $54ab: $98
	ld   bc, $0d13                                   ; $54ac: $01 $13 $0d
	adc  l                                           ; $54af: $8d
	ld   e, h                                        ; $54b0: $5c
	ld   bc, $8013                                   ; $54b1: $01 $13 $80
	ld   l, [hl]                                     ; $54b4: $6e
	sbc  b                                           ; $54b5: $98
	ld   bc, $6e08                                   ; $54b6: $01 $08 $6e
	sub  [hl]                                        ; $54b9: $96
	sbc  a                                           ; $54ba: $9f
	dec  c                                           ; $54bb: $0d
	nop                                              ; $54bc: $00
	ld   a, [bc]                                     ; $54bd: $0a
	ld   b, $26                                      ; $54be: $06 $26
	inc  c                                           ; $54c0: $0c
	inc  e                                           ; $54c1: $1c
	inc  b                                           ; $54c2: $04
	ld   bc, $1d01                                   ; $54c3: $01 $01 $1d
	ld   b, b                                        ; $54c6: $40
	inc  d                                           ; $54c7: $14
	inc  bc                                          ; $54c8: $03
	inc  d                                           ; $54c9: $14
	ld   bc, $2803                                   ; $54ca: $01 $03 $28
	nop                                              ; $54cd: $00
	ld   bc, $b5ba                                   ; $54ce: $01 $ba $b5
	and  l                                           ; $54d1: $a5
	ld   e, e                                        ; $54d2: $5b
	ld   e, b                                        ; $54d3: $58
	ld   e, l                                        ; $54d4: $5d
	sbc  b                                           ; $54d5: $98
	sub  l                                           ; $54d6: $95
	ld   e, l                                        ; $54d7: $5d
	ld   a, [$630d]                                  ; $54d8: $fa $0d $63
	ld   h, a                                        ; $54db: $67
	ld   e, d                                        ; $54dc: $5a
	ld   l, a                                        ; $54dd: $6f
	ld   d, d                                        ; $54de: $52
	ld   [bc], a                                     ; $54df: $02
	inc  de                                          ; $54e0: $13
	ld   l, a                                        ; $54e1: $6f
	sub  c                                           ; $54e2: $91
	and  c                                           ; $54e3: $a1
	ld   a, [$000d]                                  ; $54e4: $fa $0d $00
	ld   a, [bc]                                     ; $54e7: $0a
	inc  e                                           ; $54e8: $1c
	inc  b                                           ; $54e9: $04
	nop                                              ; $54ea: $00
	nop                                              ; $54eb: $00
	ld   bc, $9166                                   ; $54ec: $01 $66 $91
	ld   d, b                                        ; $54ef: $50
	sbc  [hl]                                        ; $54f0: $9e
	ld   e, c                                        ; $54f1: $59
	ld   d, [hl]                                     ; $54f2: $56
	sbc  c                                           ; $54f3: $99
	and  c                                           ; $54f4: $a1
	ld   l, [hl]                                     ; $54f5: $6e
	ld   e, a                                        ; $54f6: $5f
	ld   [hl], a                                     ; $54f7: $77
	rst  $38                                         ; $54f8: $ff
	rst  $38                                         ; $54f9: $ff
	dec  c                                           ; $54fa: $0d
	ld   e, c                                        ; $54fb: $59
	ld   d, [hl]                                     ; $54fc: $56
	sbc  c                                           ; $54fd: $99
	halt                                             ; $54fe: $76
	ld   e, e                                        ; $54ff: $5b
	ld   a, l                                        ; $5500: $7d
	sbc  [hl]                                        ; $5501: $9e
	ld   e, h                                        ; $5502: $5c
	sub  c                                           ; $5503: $91
	ld   e, l                                        ; $5504: $5d
	ld   l, [hl]                                     ; $5505: $6e
	sub  [hl]                                        ; $5506: $96
	sbc  a                                           ; $5507: $9f
	dec  c                                           ; $5508: $0d
	nop                                              ; $5509: $00
	ld   a, [bc]                                     ; $550a: $0a
	ld   bc, $5c8d                                   ; $550b: $01 $8d $5c
	ld   a, c                                        ; $550e: $79
	adc  h                                           ; $550f: $8c
	ld   e, d                                        ; $5510: $5a
	ld   [hl], c                                     ; $5511: $71
	ld   l, l                                        ; $5512: $6d
	halt                                             ; $5513: $76
	ld   h, c                                        ; $5514: $61
	ld   a, l                                        ; $5515: $7d
	dec  c                                           ; $5516: $0d
	add  b                                           ; $5517: $80
	ld   l, [hl]                                     ; $5518: $6e
	sbc  b                                           ; $5519: $98
	ld   a, c                                        ; $551a: $79
	ld   a, e                                        ; $551b: $7b
	sbc  a                                           ; $551c: $9f
	dec  c                                           ; $551d: $0d
	nop                                              ; $551e: $00
	ld   a, [bc]                                     ; $551f: $0a
	ld   bc, $656b                                   ; $5520: $01 $6b $65
	ld   [hl], h                                     ; $5523: $74
	halt                                             ; $5524: $76
	ld   d, h                                        ; $5525: $54
	ld   l, d                                        ; $5526: $6a
	and  c                                           ; $5527: $a1
	sbc  [hl]                                        ; $5528: $9e
	ld   h, [hl]                                     ; $5529: $66
	sub  e                                           ; $552a: $93
	and  c                                           ; $552b: $a1
	ld   a, [hl]                                     ; $552c: $7e
	and  c                                           ; $552d: $a1
	sub  b                                           ; $552e: $90
	dec  c                                           ; $552f: $0d
	ld   e, e                                        ; $5530: $5b
	ld   l, l                                        ; $5531: $6d
	halt                                             ; $5532: $76
	ld   e, e                                        ; $5533: $5b
	ld   a, h                                        ; $5534: $7c
	sbc  [hl]                                        ; $5535: $9e
	ld   e, h                                        ; $5536: $5c
	sub  c                                           ; $5537: $91
	ld   e, l                                        ; $5538: $5d
	ld   a, c                                        ; $5539: $79
	dec  c                                           ; $553a: $0d
	ld   a, b                                        ; $553b: $78
	sbc  c                                           ; $553c: $99
	ld   e, c                                        ; $553d: $59
	sub  a                                           ; $553e: $97
	ld   a, e                                        ; $553f: $7b
	sbc  a                                           ; $5540: $9f
	dec  c                                           ; $5541: $0d
	nop                                              ; $5542: $00
	ld   a, [bc]                                     ; $5543: $0a
	ld   bc, $6d5b                                   ; $5544: $01 $5b $6d
	halt                                             ; $5547: $76
	ld   e, e                                        ; $5548: $5b
	ld   a, h                                        ; $5549: $7c
	sbc  [hl]                                        ; $554a: $9e
	adc  h                                           ; $554b: $8c
	ld   e, d                                        ; $554c: $5a
	sbc  b                                           ; $554d: $98
	ld   e, c                                        ; $554e: $59
	ld   [hl], a                                     ; $554f: $77
	and  b                                           ; $5550: $a0
	dec  c                                           ; $5551: $0d
	sub  b                                           ; $5552: $90
	ld   d, h                                        ; $5553: $54
	ld   d, d                                        ; $5554: $52
	ld   l, a                                        ; $5555: $6f
	ld   [hl], a                                     ; $5556: $77
	ld   d, d                                        ; $5557: $52
	ld   d, h                                        ; $5558: $54
	sub  [hl]                                        ; $5559: $96
	sbc  a                                           ; $555a: $9f
	dec  c                                           ; $555b: $0d
	nop                                              ; $555c: $00
	ld   a, [bc]                                     ; $555d: $0a
	ld   bc, $0701                                   ; $555e: $01 $01 $07
	adc  l                                           ; $5561: $8d
	ld   e, h                                        ; $5562: $5c
	ld   bc, $8013                                   ; $5563: $01 $13 $80
	ld   l, [hl]                                     ; $5566: $6e
	sbc  b                                           ; $5567: $98
	ld   bc, $8013                                   ; $5568: $01 $13 $80
	ld   l, [hl]                                     ; $556b: $6e
	sbc  b                                           ; $556c: $98
	ld   bc, $0d13                                   ; $556d: $01 $13 $0d
	adc  l                                           ; $5570: $8d
	ld   e, h                                        ; $5571: $5c
	ld   bc, $8013                                   ; $5572: $01 $13 $80
	ld   l, [hl]                                     ; $5575: $6e
	sbc  b                                           ; $5576: $98
	ld   bc, $6e08                                   ; $5577: $01 $08 $6e
	sub  [hl]                                        ; $557a: $96
	sbc  a                                           ; $557b: $9f
	dec  c                                           ; $557c: $0d
	nop                                              ; $557d: $00
	ld   a, [bc]                                     ; $557e: $0a
	ld   b, $26                                      ; $557f: $06 $26
	inc  c                                           ; $5581: $0c
	ld   bc, $9166                                   ; $5582: $01 $66 $91
	sbc  [hl]                                        ; $5585: $9e
	ld   e, c                                        ; $5586: $59
	ld   d, [hl]                                     ; $5587: $56
	sbc  e                                           ; $5588: $9b
	ld   d, h                                        ; $5589: $54
	sbc  a                                           ; $558a: $9f
	dec  c                                           ; $558b: $0d
	ld   l, a                                        ; $558c: $6f
	ld   d, d                                        ; $558d: $52
	ld   [bc], a                                     ; $558e: $02
	inc  de                                          ; $558f: $13
	ld   l, a                                        ; $5590: $6f
	sub  c                                           ; $5591: $91
	and  c                                           ; $5592: $a1
	sbc  a                                           ; $5593: $9f
	dec  c                                           ; $5594: $0d
	adc  h                                           ; $5595: $8c
	ld   l, b                                        ; $5596: $68
	sbc  [hl]                                        ; $5597: $9e
	ld   [hl], a                                     ; $5598: $77
	ld   [hl], c                                     ; $5599: $71
	ld   l, a                                        ; $559a: $6f
	ld   a, c                                        ; $559b: $79
	adc  h                                           ; $559c: $8c
	ld   e, d                                        ; $559d: $5a
	sbc  c                                           ; $559e: $99
	ld   sp, hl                                      ; $559f: $f9
	dec  c                                           ; $55a0: $0d
	nop                                              ; $55a1: $00
	ld   a, [bc]                                     ; $55a2: $0a
	add  hl, de                                      ; $55a3: $19
	dec  b                                           ; $55a4: $05
	ld   [bc], a                                     ; $55a5: $02
	ld   [bc], a                                     ; $55a6: $02
	inc  e                                           ; $55a7: $1c
	ld   a, c                                        ; $55a8: $79
	ld   [bc], a                                     ; $55a9: $02
	adc  [hl]                                        ; $55aa: $8e
	ld   e, d                                        ; $55ab: $5a
	sbc  c                                           ; $55ac: $99
	nop                                              ; $55ad: $00
	nop                                              ; $55ae: $00
	inc  bc                                          ; $55af: $03
	ld   h, b                                        ; $55b0: $60
	ld   a, c                                        ; $55b1: $79
	ld   [bc], a                                     ; $55b2: $02
	adc  [hl]                                        ; $55b3: $8e
	ld   e, d                                        ; $55b4: $5a
	sbc  c                                           ; $55b5: $99
	nop                                              ; $55b6: $00
	ld   bc, $fa07                                   ; $55b7: $01 $07 $fa
	inc  c                                           ; $55ba: $0c
	ld   [bc], a                                     ; $55bb: $02
	inc  bc                                          ; $55bc: $03
	ld   bc, $2000                                   ; $55bd: $01 $00 $20
	nop                                              ; $55c0: $00
	rlca                                             ; $55c1: $07
	sbc  b                                           ; $55c2: $98
	inc  c                                           ; $55c3: $0c
	ld   [bc], a                                     ; $55c4: $02
	inc  bc                                          ; $55c5: $03
	ld   bc, $2001                                   ; $55c6: $01 $01 $20
	nop                                              ; $55c9: $00
	ld   b, $71                                      ; $55ca: $06 $71
	inc  c                                           ; $55cc: $0c
	inc  e                                           ; $55cd: $1c
	inc  b                                           ; $55ce: $04
	inc  bc                                          ; $55cf: $03
	inc  bc                                          ; $55d0: $03
	dec  e                                           ; $55d1: $1d
	ld   b, b                                        ; $55d2: $40
	inc  d                                           ; $55d3: $14
	inc  bc                                          ; $55d4: $03
	inc  d                                           ; $55d5: $14
	ld   bc, $2901                                   ; $55d6: $01 $01 $29
	nop                                              ; $55d9: $00
	ld   bc, $927d                                   ; $55da: $01 $7d $92
	ld   e, l                                        ; $55dd: $5d
	sbc  [hl]                                        ; $55de: $9e
	ld   d, d                                        ; $55df: $52
	ld   h, c                                        ; $55e0: $61
	ld   d, h                                        ; $55e1: $54
	sub  [hl]                                        ; $55e2: $96
	db   $fc                                         ; $55e3: $fc
	sbc  a                                           ; $55e4: $9f
	dec  c                                           ; $55e5: $0d
	nop                                              ; $55e6: $00
	ld   a, [bc]                                     ; $55e7: $0a
	dec  b                                           ; $55e8: $05
	ld   b, b                                        ; $55e9: $40
	rst  $38                                         ; $55ea: $ff
	inc  bc                                          ; $55eb: $03
	rst  $38                                         ; $55ec: $ff
	ld   bc, $2801                                   ; $55ed: $01 $01 $28
	nop                                              ; $55f0: $00
	ld   b, $47                                      ; $55f1: $06 $47
	inc  c                                           ; $55f3: $0c
	rrca                                             ; $55f4: $0f
	nop                                              ; $55f5: $00
	ld   bc, $0301                                   ; $55f6: $01 $01 $03
	ld   h, b                                        ; $55f9: $60
	ld   a, c                                        ; $55fa: $79
	ld   [bc], a                                     ; $55fb: $02
	adc  [hl]                                        ; $55fc: $8e
	ld   e, d                                        ; $55fd: $5a
	sbc  e                                           ; $55fe: $9b
	ld   d, h                                        ; $55ff: $54
	sbc  a                                           ; $5600: $9f
	dec  c                                           ; $5601: $0d
	nop                                              ; $5602: $00
	ld   a, [bc]                                     ; $5603: $0a
	dec  b                                           ; $5604: $05
	ld   b, b                                        ; $5605: $40
	rst  $38                                         ; $5606: $ff
	inc  bc                                          ; $5607: $03
	rst  $38                                         ; $5608: $ff
	ld   bc, $2801                                   ; $5609: $01 $01 $28
	nop                                              ; $560c: $00
	dec  c                                           ; $560d: $0d
	nop                                              ; $560e: $00
	nop                                              ; $560f: $00
	inc  hl                                          ; $5610: $23
	add  e                                           ; $5611: $83
	inc  e                                           ; $5612: $1c
	inc  b                                           ; $5613: $04
	ld   b, $06                                      ; $5614: $06 $06
	dec  e                                           ; $5616: $1d
	ld   b, b                                        ; $5617: $40
	inc  d                                           ; $5618: $14
	inc  bc                                          ; $5619: $03
	inc  d                                           ; $561a: $14
	ld   bc, $2901                                   ; $561b: $01 $01 $29
	nop                                              ; $561e: $00
	ld   bc, $6161                                   ; $561f: $01 $61 $61
	sbc  [hl]                                        ; $5622: $9e
	ld   [hl], a                                     ; $5623: $77
	ld   h, c                                        ; $5624: $61
	ld   sp, hl                                      ; $5625: $f9
	dec  c                                           ; $5626: $0d
	ld   l, a                                        ; $5627: $6f
	ld   d, d                                        ; $5628: $52
	ld   [bc], a                                     ; $5629: $02
	inc  de                                          ; $562a: $13
	ld   l, a                                        ; $562b: $6f
	sub  c                                           ; $562c: $91
	and  c                                           ; $562d: $a1
	sbc  [hl]                                        ; $562e: $9e
	adc  h                                           ; $562f: $8c
	ld   l, a                                        ; $5630: $6f
	ld   e, d                                        ; $5631: $5a
	ld   d, [hl]                                     ; $5632: $56
	ld   [hl], h                                     ; $5633: $74
	sbc  c                                           ; $5634: $99
	sbc  a                                           ; $5635: $9f
	dec  c                                           ; $5636: $0d
	sub  b                                           ; $5637: $90
	halt                                             ; $5638: $76
	ld   a, h                                        ; $5639: $7c
	ld   a, [hl]                                     ; $563a: $7e
	ld   h, l                                        ; $563b: $65
	sub  l                                           ; $563c: $95
	ld   a, c                                        ; $563d: $79
	sbc  [hl]                                        ; $563e: $9e
	sub  b                                           ; $563f: $90
	ld   [hl], a                                     ; $5640: $77
	sbc  c                                           ; $5641: $99
	sub  [hl]                                        ; $5642: $96
	sbc  a                                           ; $5643: $9f
	dec  c                                           ; $5644: $0d
	nop                                              ; $5645: $00
	ld   a, [bc]                                     ; $5646: $0a
	dec  c                                           ; $5647: $0d
	nop                                              ; $5648: $00
	nop                                              ; $5649: $00
	rrca                                             ; $564a: $0f
	nop                                              ; $564b: $00
	ld   bc, $8223                                   ; $564c: $01 $23 $82
	inc  e                                           ; $564f: $1c
	inc  b                                           ; $5650: $04
	nop                                              ; $5651: $00
	nop                                              ; $5652: $00
	ld   b, $47                                      ; $5653: $06 $47
	inc  c                                           ; $5655: $0c
	rrca                                             ; $5656: $0f
	nop                                              ; $5657: $00
	ld   bc, $0201                                   ; $5658: $01 $01 $02
	inc  e                                           ; $565b: $1c
	ld   a, c                                        ; $565c: $79
	ld   [bc], a                                     ; $565d: $02
	adc  [hl]                                        ; $565e: $8e
	ld   e, d                                        ; $565f: $5a
	sbc  e                                           ; $5660: $9b
	ld   d, h                                        ; $5661: $54
	sbc  a                                           ; $5662: $9f
	dec  c                                           ; $5663: $0d
	nop                                              ; $5664: $00
	ld   a, [bc]                                     ; $5665: $0a
	dec  c                                           ; $5666: $0d
	nop                                              ; $5667: $00
	nop                                              ; $5668: $00
	inc  hl                                          ; $5669: $23
	sub  d                                           ; $566a: $92
	inc  e                                           ; $566b: $1c
	inc  b                                           ; $566c: $04
	ld   bc, $1d01                                   ; $566d: $01 $01 $1d
	ld   b, b                                        ; $5670: $40
	inc  d                                           ; $5671: $14
	inc  bc                                          ; $5672: $03
	inc  d                                           ; $5673: $14
	ld   bc, $2801                                   ; $5674: $01 $01 $28
	nop                                              ; $5677: $00
	ld   bc, $7150                                   ; $5678: $01 $50 $71
	ld   [hl], h                                     ; $567b: $74
	sbc  c                                           ; $567c: $99
	sbc  [hl]                                        ; $567d: $9e
	ld   d, b                                        ; $567e: $50
	ld   [hl], c                                     ; $567f: $71
	ld   [hl], h                                     ; $5680: $74
	sbc  c                                           ; $5681: $99
	sbc  a                                           ; $5682: $9f
	dec  c                                           ; $5683: $0d
	ld   l, e                                        ; $5684: $6b
	ld   a, h                                        ; $5685: $7c
	ld   l, a                                        ; $5686: $6f
	sub  l                                           ; $5687: $95
	ld   d, h                                        ; $5688: $54
	ld   h, l                                        ; $5689: $65
	sbc  a                                           ; $568a: $9f
	dec  c                                           ; $568b: $0d
	ld   h, [hl]                                     ; $568c: $66
	sub  c                                           ; $568d: $91
	ld   d, b                                        ; $568e: $50
	sbc  [hl]                                        ; $568f: $9e
	ld   [hl], d                                     ; $5690: $72
	ld   e, h                                        ; $5691: $5c
	ld   a, l                                        ; $5692: $7d
	ld   [hl], a                                     ; $5693: $77
	ld   [hl], c                                     ; $5694: $71
	ld   l, a                                        ; $5695: $6f
	ld   sp, hl                                      ; $5696: $f9
	dec  c                                           ; $5697: $0d
	nop                                              ; $5698: $00
	ld   a, [bc]                                     ; $5699: $0a
	add  hl, de                                      ; $569a: $19
	dec  b                                           ; $569b: $05
	ld   [bc], a                                     ; $569c: $02
	inc  bc                                          ; $569d: $03
	ld   h, b                                        ; $569e: $60
	ld   a, c                                        ; $569f: $79
	ld   [bc], a                                     ; $56a0: $02
	adc  [hl]                                        ; $56a1: $8e
	ld   e, d                                        ; $56a2: $5a
	sbc  c                                           ; $56a3: $99
	nop                                              ; $56a4: $00
	nop                                              ; $56a5: $00
	ld   [bc], a                                     ; $56a6: $02
	inc  e                                           ; $56a7: $1c
	ld   a, c                                        ; $56a8: $79
	ld   [bc], a                                     ; $56a9: $02
	adc  [hl]                                        ; $56aa: $8e
	ld   e, d                                        ; $56ab: $5a
	sbc  c                                           ; $56ac: $99
	nop                                              ; $56ad: $00
	ld   bc, $f107                                   ; $56ae: $01 $07 $f1
	dec  c                                           ; $56b1: $0d
	ld   [bc], a                                     ; $56b2: $02
	inc  bc                                          ; $56b3: $03
	ld   bc, $2000                                   ; $56b4: $01 $00 $20
	nop                                              ; $56b7: $00
	rlca                                             ; $56b8: $07
	adc  a                                           ; $56b9: $8f
	dec  c                                           ; $56ba: $0d
	ld   [bc], a                                     ; $56bb: $02
	inc  bc                                          ; $56bc: $03
	ld   bc, $2001                                   ; $56bd: $01 $01 $20
	nop                                              ; $56c0: $00
	ld   b, $68                                      ; $56c1: $06 $68
	dec  c                                           ; $56c3: $0d
	inc  e                                           ; $56c4: $1c
	inc  b                                           ; $56c5: $04
	inc  bc                                          ; $56c6: $03
	inc  bc                                          ; $56c7: $03
	dec  e                                           ; $56c8: $1d
	ld   b, b                                        ; $56c9: $40
	inc  d                                           ; $56ca: $14
	inc  bc                                          ; $56cb: $03
	inc  d                                           ; $56cc: $14
	ld   bc, $2901                                   ; $56cd: $01 $01 $29
	nop                                              ; $56d0: $00
	ld   bc, $927d                                   ; $56d1: $01 $7d $92
	ld   e, l                                        ; $56d4: $5d
	sbc  [hl]                                        ; $56d5: $9e
	ld   d, d                                        ; $56d6: $52
	ld   h, c                                        ; $56d7: $61
	ld   d, h                                        ; $56d8: $54
	sub  [hl]                                        ; $56d9: $96
	db   $fc                                         ; $56da: $fc
	sbc  a                                           ; $56db: $9f
	dec  c                                           ; $56dc: $0d
	nop                                              ; $56dd: $00
	ld   a, [bc]                                     ; $56de: $0a
	dec  b                                           ; $56df: $05
	ld   b, b                                        ; $56e0: $40
	rst  $38                                         ; $56e1: $ff
	inc  bc                                          ; $56e2: $03
	rst  $38                                         ; $56e3: $ff
	ld   bc, $2801                                   ; $56e4: $01 $01 $28
	nop                                              ; $56e7: $00
	ld   b, $3e                                      ; $56e8: $06 $3e
	dec  c                                           ; $56ea: $0d
	rrca                                             ; $56eb: $0f
	nop                                              ; $56ec: $00
	ld   bc, $0201                                   ; $56ed: $01 $01 $02
	inc  e                                           ; $56f0: $1c
	ld   a, c                                        ; $56f1: $79
	ld   [bc], a                                     ; $56f2: $02
	adc  [hl]                                        ; $56f3: $8e
	ld   e, d                                        ; $56f4: $5a
	sbc  e                                           ; $56f5: $9b
	ld   d, h                                        ; $56f6: $54
	sbc  a                                           ; $56f7: $9f
	dec  c                                           ; $56f8: $0d
	nop                                              ; $56f9: $00
	ld   a, [bc]                                     ; $56fa: $0a
	dec  b                                           ; $56fb: $05
	ld   b, b                                        ; $56fc: $40
	rst  $38                                         ; $56fd: $ff
	inc  bc                                          ; $56fe: $03
	rst  $38                                         ; $56ff: $ff
	ld   bc, $2801                                   ; $5700: $01 $01 $28
	nop                                              ; $5703: $00
	dec  c                                           ; $5704: $0d
	nop                                              ; $5705: $00
	nop                                              ; $5706: $00
	inc  hl                                          ; $5707: $23
	ld   a, l                                        ; $5708: $7d
	inc  e                                           ; $5709: $1c
	inc  b                                           ; $570a: $04
	ld   b, $06                                      ; $570b: $06 $06
	dec  e                                           ; $570d: $1d
	ld   b, b                                        ; $570e: $40
	inc  d                                           ; $570f: $14
	inc  bc                                          ; $5710: $03
	inc  d                                           ; $5711: $14
	ld   bc, $2901                                   ; $5712: $01 $01 $29
	nop                                              ; $5715: $00
	ld   bc, $6161                                   ; $5716: $01 $61 $61
	sbc  [hl]                                        ; $5719: $9e
	ld   [hl], a                                     ; $571a: $77
	ld   h, c                                        ; $571b: $61
	ld   sp, hl                                      ; $571c: $f9
	dec  c                                           ; $571d: $0d
	ld   l, a                                        ; $571e: $6f
	ld   d, d                                        ; $571f: $52
	ld   [bc], a                                     ; $5720: $02
	inc  de                                          ; $5721: $13
	ld   l, a                                        ; $5722: $6f
	sub  c                                           ; $5723: $91
	and  c                                           ; $5724: $a1
	sbc  [hl]                                        ; $5725: $9e
	adc  h                                           ; $5726: $8c
	ld   l, a                                        ; $5727: $6f
	ld   e, d                                        ; $5728: $5a
	ld   d, [hl]                                     ; $5729: $56
	ld   [hl], h                                     ; $572a: $74
	sbc  c                                           ; $572b: $99
	sbc  a                                           ; $572c: $9f
	dec  c                                           ; $572d: $0d
	sub  b                                           ; $572e: $90
	halt                                             ; $572f: $76
	ld   a, h                                        ; $5730: $7c
	ld   a, [hl]                                     ; $5731: $7e
	ld   h, l                                        ; $5732: $65
	sub  l                                           ; $5733: $95
	ld   a, c                                        ; $5734: $79
	sbc  [hl]                                        ; $5735: $9e
	sub  b                                           ; $5736: $90
	ld   [hl], a                                     ; $5737: $77
	sbc  c                                           ; $5738: $99
	sub  [hl]                                        ; $5739: $96
	sbc  a                                           ; $573a: $9f
	dec  c                                           ; $573b: $0d
	nop                                              ; $573c: $00
	ld   a, [bc]                                     ; $573d: $0a
	dec  c                                           ; $573e: $0d
	nop                                              ; $573f: $00
	nop                                              ; $5740: $00
	rrca                                             ; $5741: $0f
	nop                                              ; $5742: $00
	ld   bc, $9223                                   ; $5743: $01 $23 $92
	inc  e                                           ; $5746: $1c
	inc  b                                           ; $5747: $04
	nop                                              ; $5748: $00
	nop                                              ; $5749: $00
	ld   b, $3e                                      ; $574a: $06 $3e
	dec  c                                           ; $574c: $0d
	rrca                                             ; $574d: $0f
	nop                                              ; $574e: $00
	ld   bc, $0301                                   ; $574f: $01 $01 $03
	ld   h, b                                        ; $5752: $60
	ld   a, c                                        ; $5753: $79
	ld   [bc], a                                     ; $5754: $02
	adc  [hl]                                        ; $5755: $8e
	ld   e, d                                        ; $5756: $5a
	sbc  e                                           ; $5757: $9b
	ld   d, h                                        ; $5758: $54
	sbc  a                                           ; $5759: $9f
	dec  c                                           ; $575a: $0d
	nop                                              ; $575b: $00
	ld   a, [bc]                                     ; $575c: $0a
	dec  c                                           ; $575d: $0d
	nop                                              ; $575e: $00
	nop                                              ; $575f: $00
	inc  hl                                          ; $5760: $23
	add  h                                           ; $5761: $84
	inc  e                                           ; $5762: $1c
	inc  b                                           ; $5763: $04
	ld   bc, $1d01                                   ; $5764: $01 $01 $1d
	ld   b, b                                        ; $5767: $40
	inc  d                                           ; $5768: $14
	inc  bc                                          ; $5769: $03
	inc  d                                           ; $576a: $14
	ld   bc, $2801                                   ; $576b: $01 $01 $28
	nop                                              ; $576e: $00
	ld   bc, $7150                                   ; $576f: $01 $50 $71
	ld   [hl], h                                     ; $5772: $74
	sbc  c                                           ; $5773: $99
	sbc  [hl]                                        ; $5774: $9e
	ld   d, b                                        ; $5775: $50
	ld   [hl], c                                     ; $5776: $71
	ld   [hl], h                                     ; $5777: $74
	sbc  c                                           ; $5778: $99
	sbc  a                                           ; $5779: $9f
	dec  c                                           ; $577a: $0d
	ld   l, e                                        ; $577b: $6b
	ld   a, h                                        ; $577c: $7c
	ld   l, a                                        ; $577d: $6f
	sub  l                                           ; $577e: $95
	ld   d, h                                        ; $577f: $54
	ld   h, l                                        ; $5780: $65
	sbc  a                                           ; $5781: $9f
	dec  c                                           ; $5782: $0d
	ld   h, [hl]                                     ; $5783: $66
	sub  c                                           ; $5784: $91
	ld   d, b                                        ; $5785: $50
	sbc  [hl]                                        ; $5786: $9e
	ld   [hl], d                                     ; $5787: $72
	ld   e, h                                        ; $5788: $5c
	ld   a, l                                        ; $5789: $7d
	ld   [hl], a                                     ; $578a: $77
	ld   [hl], c                                     ; $578b: $71
	ld   l, a                                        ; $578c: $6f
	ld   sp, hl                                      ; $578d: $f9
	dec  c                                           ; $578e: $0d
	nop                                              ; $578f: $00
	ld   a, [bc]                                     ; $5790: $0a
	add  hl, de                                      ; $5791: $19
	dec  b                                           ; $5792: $05
	ld   [bc], a                                     ; $5793: $02
	ld   [bc], a                                     ; $5794: $02
	inc  e                                           ; $5795: $1c
	ld   a, c                                        ; $5796: $79
	ld   [bc], a                                     ; $5797: $02
	adc  [hl]                                        ; $5798: $8e
	ld   e, d                                        ; $5799: $5a
	sbc  c                                           ; $579a: $99
	nop                                              ; $579b: $00
	nop                                              ; $579c: $00
	inc  bc                                          ; $579d: $03
	ld   h, b                                        ; $579e: $60
	ld   a, c                                        ; $579f: $79
	ld   [bc], a                                     ; $57a0: $02
	adc  [hl]                                        ; $57a1: $8e
	ld   e, d                                        ; $57a2: $5a
	sbc  c                                           ; $57a3: $99
	nop                                              ; $57a4: $00
	ld   bc, $e807                                   ; $57a5: $01 $07 $e8
	ld   c, $02                                      ; $57a8: $0e $02
	inc  bc                                          ; $57aa: $03
	ld   bc, $2000                                   ; $57ab: $01 $00 $20
	nop                                              ; $57ae: $00
	rlca                                             ; $57af: $07
	add  [hl]                                        ; $57b0: $86
	ld   c, $02                                      ; $57b1: $0e $02
	inc  bc                                          ; $57b3: $03
	ld   bc, $2001                                   ; $57b4: $01 $01 $20
	nop                                              ; $57b7: $00
	ld   b, $5f                                      ; $57b8: $06 $5f
	ld   c, $1c                                      ; $57ba: $0e $1c
	inc  b                                           ; $57bc: $04
	inc  bc                                          ; $57bd: $03
	inc  bc                                          ; $57be: $03
	dec  e                                           ; $57bf: $1d
	ld   b, b                                        ; $57c0: $40
	inc  d                                           ; $57c1: $14
	inc  bc                                          ; $57c2: $03
	inc  d                                           ; $57c3: $14
	ld   bc, $2901                                   ; $57c4: $01 $01 $29
	nop                                              ; $57c7: $00
	ld   bc, $927d                                   ; $57c8: $01 $7d $92
	ld   e, l                                        ; $57cb: $5d
	sbc  [hl]                                        ; $57cc: $9e
	ld   d, d                                        ; $57cd: $52
	ld   h, c                                        ; $57ce: $61
	ld   d, h                                        ; $57cf: $54
	sub  [hl]                                        ; $57d0: $96
	db   $fc                                         ; $57d1: $fc
	sbc  a                                           ; $57d2: $9f
	dec  c                                           ; $57d3: $0d
	nop                                              ; $57d4: $00
	ld   a, [bc]                                     ; $57d5: $0a
	dec  b                                           ; $57d6: $05
	ld   b, b                                        ; $57d7: $40
	rst  $38                                         ; $57d8: $ff
	inc  bc                                          ; $57d9: $03
	rst  $38                                         ; $57da: $ff
	ld   bc, $2801                                   ; $57db: $01 $01 $28
	nop                                              ; $57de: $00
	ld   b, $35                                      ; $57df: $06 $35
	ld   c, $0f                                      ; $57e1: $0e $0f
	nop                                              ; $57e3: $00
	ld   bc, $0301                                   ; $57e4: $01 $01 $03
	ld   h, b                                        ; $57e7: $60
	ld   a, c                                        ; $57e8: $79
	ld   [bc], a                                     ; $57e9: $02
	adc  [hl]                                        ; $57ea: $8e
	ld   e, d                                        ; $57eb: $5a
	sbc  e                                           ; $57ec: $9b
	ld   d, h                                        ; $57ed: $54
	sbc  a                                           ; $57ee: $9f
	dec  c                                           ; $57ef: $0d
	nop                                              ; $57f0: $00
	ld   a, [bc]                                     ; $57f1: $0a
	dec  b                                           ; $57f2: $05
	ld   b, b                                        ; $57f3: $40
	rst  $38                                         ; $57f4: $ff
	inc  bc                                          ; $57f5: $03
	rst  $38                                         ; $57f6: $ff
	ld   bc, $2801                                   ; $57f7: $01 $01 $28
	nop                                              ; $57fa: $00
	dec  c                                           ; $57fb: $0d
	nop                                              ; $57fc: $00
	nop                                              ; $57fd: $00
	inc  hl                                          ; $57fe: $23
	sbc  e                                           ; $57ff: $9b
	inc  e                                           ; $5800: $1c
	inc  b                                           ; $5801: $04
	ld   b, $06                                      ; $5802: $06 $06
	dec  e                                           ; $5804: $1d
	ld   b, b                                        ; $5805: $40
	inc  d                                           ; $5806: $14
	inc  bc                                          ; $5807: $03
	inc  d                                           ; $5808: $14
	ld   bc, $2901                                   ; $5809: $01 $01 $29
	nop                                              ; $580c: $00
	ld   bc, $6161                                   ; $580d: $01 $61 $61
	sbc  [hl]                                        ; $5810: $9e
	ld   [hl], a                                     ; $5811: $77
	ld   h, c                                        ; $5812: $61
	ld   sp, hl                                      ; $5813: $f9
	dec  c                                           ; $5814: $0d
	ld   l, a                                        ; $5815: $6f
	ld   d, d                                        ; $5816: $52
	ld   [bc], a                                     ; $5817: $02
	inc  de                                          ; $5818: $13
	ld   l, a                                        ; $5819: $6f
	sub  c                                           ; $581a: $91
	and  c                                           ; $581b: $a1
	sbc  [hl]                                        ; $581c: $9e
	adc  h                                           ; $581d: $8c
	ld   l, a                                        ; $581e: $6f
	ld   e, d                                        ; $581f: $5a
	ld   d, [hl]                                     ; $5820: $56
	ld   [hl], h                                     ; $5821: $74
	sbc  c                                           ; $5822: $99
	sbc  a                                           ; $5823: $9f
	dec  c                                           ; $5824: $0d
	sub  b                                           ; $5825: $90
	halt                                             ; $5826: $76
	ld   a, h                                        ; $5827: $7c
	ld   a, [hl]                                     ; $5828: $7e
	ld   h, l                                        ; $5829: $65
	sub  l                                           ; $582a: $95
	ld   a, c                                        ; $582b: $79
	sbc  [hl]                                        ; $582c: $9e
	sub  b                                           ; $582d: $90
	ld   [hl], a                                     ; $582e: $77
	sbc  c                                           ; $582f: $99
	sub  [hl]                                        ; $5830: $96
	sbc  a                                           ; $5831: $9f
	dec  c                                           ; $5832: $0d
	nop                                              ; $5833: $00
	ld   a, [bc]                                     ; $5834: $0a
	dec  c                                           ; $5835: $0d
	nop                                              ; $5836: $00
	nop                                              ; $5837: $00
	rrca                                             ; $5838: $0f
	nop                                              ; $5839: $00
	ld   bc, $8423                                   ; $583a: $01 $23 $84
	inc  e                                           ; $583d: $1c
	inc  b                                           ; $583e: $04
	nop                                              ; $583f: $00
	nop                                              ; $5840: $00
	ld   b, $35                                      ; $5841: $06 $35
	ld   c, $0f                                      ; $5843: $0e $0f
	nop                                              ; $5845: $00
	ld   bc, $0201                                   ; $5846: $01 $01 $02
	inc  e                                           ; $5849: $1c
	ld   a, c                                        ; $584a: $79
	ld   [bc], a                                     ; $584b: $02
	adc  [hl]                                        ; $584c: $8e
	ld   e, d                                        ; $584d: $5a
	sbc  e                                           ; $584e: $9b
	ld   d, h                                        ; $584f: $54
	sbc  a                                           ; $5850: $9f
	dec  c                                           ; $5851: $0d
	nop                                              ; $5852: $00
	ld   a, [bc]                                     ; $5853: $0a
	dec  c                                           ; $5854: $0d
	nop                                              ; $5855: $00
	nop                                              ; $5856: $00
	inc  hl                                          ; $5857: $23
	add  b                                           ; $5858: $80
	inc  e                                           ; $5859: $1c
	inc  b                                           ; $585a: $04
	ld   bc, $1d01                                   ; $585b: $01 $01 $1d
	ld   b, b                                        ; $585e: $40
	inc  d                                           ; $585f: $14
	inc  bc                                          ; $5860: $03
	inc  d                                           ; $5861: $14
	ld   bc, $2801                                   ; $5862: $01 $01 $28
	nop                                              ; $5865: $00
	ld   bc, $7150                                   ; $5866: $01 $50 $71
	ld   [hl], h                                     ; $5869: $74
	sbc  c                                           ; $586a: $99
	sbc  [hl]                                        ; $586b: $9e
	ld   d, b                                        ; $586c: $50
	ld   [hl], c                                     ; $586d: $71
	ld   [hl], h                                     ; $586e: $74
	sbc  c                                           ; $586f: $99
	sbc  a                                           ; $5870: $9f
	dec  c                                           ; $5871: $0d
	ld   l, e                                        ; $5872: $6b
	ld   a, h                                        ; $5873: $7c
	ld   l, a                                        ; $5874: $6f
	sub  l                                           ; $5875: $95
	ld   d, h                                        ; $5876: $54
	ld   h, l                                        ; $5877: $65
	sbc  a                                           ; $5878: $9f
	dec  c                                           ; $5879: $0d
	ld   h, [hl]                                     ; $587a: $66
	sub  c                                           ; $587b: $91
	ld   d, b                                        ; $587c: $50
	sbc  [hl]                                        ; $587d: $9e
	ld   [hl], d                                     ; $587e: $72
	ld   e, h                                        ; $587f: $5c
	ld   a, l                                        ; $5880: $7d
	ld   [hl], a                                     ; $5881: $77
	ld   [hl], c                                     ; $5882: $71
	ld   l, a                                        ; $5883: $6f
	ld   sp, hl                                      ; $5884: $f9
	dec  c                                           ; $5885: $0d
	nop                                              ; $5886: $00
	ld   a, [bc]                                     ; $5887: $0a
	add  hl, de                                      ; $5888: $19
	dec  b                                           ; $5889: $05
	ld   [bc], a                                     ; $588a: $02
	ld   [bc], a                                     ; $588b: $02
	inc  e                                           ; $588c: $1c
	ld   a, c                                        ; $588d: $79
	ld   [bc], a                                     ; $588e: $02
	adc  [hl]                                        ; $588f: $8e
	ld   e, d                                        ; $5890: $5a
	sbc  c                                           ; $5891: $99
	nop                                              ; $5892: $00
	nop                                              ; $5893: $00
	inc  bc                                          ; $5894: $03
	ld   h, b                                        ; $5895: $60
	ld   a, c                                        ; $5896: $79
	ld   [bc], a                                     ; $5897: $02
	adc  [hl]                                        ; $5898: $8e
	ld   e, d                                        ; $5899: $5a
	sbc  c                                           ; $589a: $99
	nop                                              ; $589b: $00
	ld   bc, $df07                                   ; $589c: $01 $07 $df
	rrca                                             ; $589f: $0f
	ld   [bc], a                                     ; $58a0: $02
	inc  bc                                          ; $58a1: $03
	ld   bc, $2000                                   ; $58a2: $01 $00 $20
	nop                                              ; $58a5: $00
	rlca                                             ; $58a6: $07
	ld   a, l                                        ; $58a7: $7d
	rrca                                             ; $58a8: $0f
	ld   [bc], a                                     ; $58a9: $02
	inc  bc                                          ; $58aa: $03
	ld   bc, $2001                                   ; $58ab: $01 $01 $20
	nop                                              ; $58ae: $00
	ld   b, $56                                      ; $58af: $06 $56
	rrca                                             ; $58b1: $0f
	inc  e                                           ; $58b2: $1c
	inc  b                                           ; $58b3: $04
	inc  bc                                          ; $58b4: $03
	inc  bc                                          ; $58b5: $03
	dec  e                                           ; $58b6: $1d
	ld   b, b                                        ; $58b7: $40
	inc  d                                           ; $58b8: $14
	inc  bc                                          ; $58b9: $03
	inc  d                                           ; $58ba: $14
	ld   bc, $2901                                   ; $58bb: $01 $01 $29
	nop                                              ; $58be: $00
	ld   bc, $927d                                   ; $58bf: $01 $7d $92
	ld   e, l                                        ; $58c2: $5d
	sbc  [hl]                                        ; $58c3: $9e
	ld   d, d                                        ; $58c4: $52
	ld   h, c                                        ; $58c5: $61
	ld   d, h                                        ; $58c6: $54
	sub  [hl]                                        ; $58c7: $96
	db   $fc                                         ; $58c8: $fc
	sbc  a                                           ; $58c9: $9f
	dec  c                                           ; $58ca: $0d
	nop                                              ; $58cb: $00
	ld   a, [bc]                                     ; $58cc: $0a
	dec  b                                           ; $58cd: $05
	ld   b, b                                        ; $58ce: $40
	rst  $38                                         ; $58cf: $ff
	inc  bc                                          ; $58d0: $03
	rst  $38                                         ; $58d1: $ff
	ld   bc, $2801                                   ; $58d2: $01 $01 $28
	nop                                              ; $58d5: $00
	ld   b, $2c                                      ; $58d6: $06 $2c
	rrca                                             ; $58d8: $0f
	rrca                                             ; $58d9: $0f
	nop                                              ; $58da: $00
	ld   bc, $0301                                   ; $58db: $01 $01 $03
	ld   h, b                                        ; $58de: $60
	ld   a, c                                        ; $58df: $79
	ld   [bc], a                                     ; $58e0: $02
	adc  [hl]                                        ; $58e1: $8e
	ld   e, d                                        ; $58e2: $5a
	sbc  e                                           ; $58e3: $9b
	ld   d, h                                        ; $58e4: $54
	sbc  a                                           ; $58e5: $9f
	dec  c                                           ; $58e6: $0d
	nop                                              ; $58e7: $00
	ld   a, [bc]                                     ; $58e8: $0a
	dec  b                                           ; $58e9: $05
	ld   b, b                                        ; $58ea: $40
	rst  $38                                         ; $58eb: $ff
	inc  bc                                          ; $58ec: $03
	rst  $38                                         ; $58ed: $ff
	ld   bc, $2801                                   ; $58ee: $01 $01 $28
	nop                                              ; $58f1: $00
	dec  c                                           ; $58f2: $0d
	nop                                              ; $58f3: $00
	nop                                              ; $58f4: $00
	inc  hl                                          ; $58f5: $23
	add  a                                           ; $58f6: $87
	inc  e                                           ; $58f7: $1c
	inc  b                                           ; $58f8: $04
	ld   b, $06                                      ; $58f9: $06 $06
	dec  e                                           ; $58fb: $1d
	ld   b, b                                        ; $58fc: $40
	inc  d                                           ; $58fd: $14
	inc  bc                                          ; $58fe: $03
	inc  d                                           ; $58ff: $14
	ld   bc, $2901                                   ; $5900: $01 $01 $29
	nop                                              ; $5903: $00
	ld   bc, $6161                                   ; $5904: $01 $61 $61
	sbc  [hl]                                        ; $5907: $9e
	ld   [hl], a                                     ; $5908: $77
	ld   h, c                                        ; $5909: $61
	ld   sp, hl                                      ; $590a: $f9
	dec  c                                           ; $590b: $0d
	ld   l, a                                        ; $590c: $6f
	ld   d, d                                        ; $590d: $52
	ld   [bc], a                                     ; $590e: $02
	inc  de                                          ; $590f: $13
	ld   l, a                                        ; $5910: $6f
	sub  c                                           ; $5911: $91
	and  c                                           ; $5912: $a1
	sbc  [hl]                                        ; $5913: $9e
	adc  h                                           ; $5914: $8c
	ld   l, a                                        ; $5915: $6f
	ld   e, d                                        ; $5916: $5a
	ld   d, [hl]                                     ; $5917: $56
	ld   [hl], h                                     ; $5918: $74
	sbc  c                                           ; $5919: $99
	sbc  a                                           ; $591a: $9f
	dec  c                                           ; $591b: $0d
	sub  b                                           ; $591c: $90
	halt                                             ; $591d: $76
	ld   a, h                                        ; $591e: $7c
	ld   a, [hl]                                     ; $591f: $7e
	ld   h, l                                        ; $5920: $65
	sub  l                                           ; $5921: $95
	ld   a, c                                        ; $5922: $79
	sbc  [hl]                                        ; $5923: $9e
	sub  b                                           ; $5924: $90
	ld   [hl], a                                     ; $5925: $77
	sbc  c                                           ; $5926: $99
	sub  [hl]                                        ; $5927: $96
	sbc  a                                           ; $5928: $9f
	dec  c                                           ; $5929: $0d
	nop                                              ; $592a: $00
	ld   a, [bc]                                     ; $592b: $0a
	dec  c                                           ; $592c: $0d
	nop                                              ; $592d: $00
	nop                                              ; $592e: $00
	rrca                                             ; $592f: $0f
	nop                                              ; $5930: $00
	ld   bc, $8023                                   ; $5931: $01 $23 $80
	inc  e                                           ; $5934: $1c
	inc  b                                           ; $5935: $04
	nop                                              ; $5936: $00
	nop                                              ; $5937: $00
	ld   b, $2c                                      ; $5938: $06 $2c
	rrca                                             ; $593a: $0f
	rrca                                             ; $593b: $0f
	nop                                              ; $593c: $00
	ld   bc, $0201                                   ; $593d: $01 $01 $02
	inc  e                                           ; $5940: $1c
	ld   a, c                                        ; $5941: $79
	ld   [bc], a                                     ; $5942: $02
	adc  [hl]                                        ; $5943: $8e
	ld   e, d                                        ; $5944: $5a
	sbc  e                                           ; $5945: $9b
	ld   d, h                                        ; $5946: $54
	sbc  a                                           ; $5947: $9f
	dec  c                                           ; $5948: $0d
	nop                                              ; $5949: $00
	ld   a, [bc]                                     ; $594a: $0a
	dec  c                                           ; $594b: $0d
	nop                                              ; $594c: $00
	nop                                              ; $594d: $00
	inc  hl                                          ; $594e: $23
	sub  c                                           ; $594f: $91
	inc  e                                           ; $5950: $1c
	inc  b                                           ; $5951: $04
	ld   bc, $1d01                                   ; $5952: $01 $01 $1d
	ld   b, b                                        ; $5955: $40
	inc  d                                           ; $5956: $14
	inc  bc                                          ; $5957: $03
	inc  d                                           ; $5958: $14
	ld   bc, $2801                                   ; $5959: $01 $01 $28
	nop                                              ; $595c: $00
	ld   bc, $7150                                   ; $595d: $01 $50 $71
	ld   [hl], h                                     ; $5960: $74
	sbc  c                                           ; $5961: $99
	sbc  [hl]                                        ; $5962: $9e
	ld   d, b                                        ; $5963: $50
	ld   [hl], c                                     ; $5964: $71
	ld   [hl], h                                     ; $5965: $74
	sbc  c                                           ; $5966: $99
	sbc  a                                           ; $5967: $9f
	dec  c                                           ; $5968: $0d
	ld   l, e                                        ; $5969: $6b
	ld   a, h                                        ; $596a: $7c
	ld   l, a                                        ; $596b: $6f
	sub  l                                           ; $596c: $95
	ld   d, h                                        ; $596d: $54
	ld   h, l                                        ; $596e: $65
	sbc  a                                           ; $596f: $9f
	dec  c                                           ; $5970: $0d
	ld   h, [hl]                                     ; $5971: $66
	sub  c                                           ; $5972: $91
	ld   d, b                                        ; $5973: $50
	sbc  [hl]                                        ; $5974: $9e
	ld   [hl], d                                     ; $5975: $72
	ld   e, h                                        ; $5976: $5c
	ld   a, l                                        ; $5977: $7d
	ld   [hl], a                                     ; $5978: $77
	ld   [hl], c                                     ; $5979: $71
	ld   l, a                                        ; $597a: $6f
	ld   sp, hl                                      ; $597b: $f9
	dec  c                                           ; $597c: $0d
	nop                                              ; $597d: $00
	ld   a, [bc]                                     ; $597e: $0a
	add  hl, de                                      ; $597f: $19
	dec  b                                           ; $5980: $05
	ld   [bc], a                                     ; $5981: $02
	ld   [bc], a                                     ; $5982: $02
	inc  e                                           ; $5983: $1c
	ld   a, c                                        ; $5984: $79
	ld   [bc], a                                     ; $5985: $02
	adc  [hl]                                        ; $5986: $8e
	ld   e, d                                        ; $5987: $5a
	sbc  c                                           ; $5988: $99
	nop                                              ; $5989: $00
	nop                                              ; $598a: $00
	inc  bc                                          ; $598b: $03
	ld   h, b                                        ; $598c: $60
	ld   a, c                                        ; $598d: $79
	ld   [bc], a                                     ; $598e: $02
	adc  [hl]                                        ; $598f: $8e
	ld   e, d                                        ; $5990: $5a
	sbc  c                                           ; $5991: $99
	nop                                              ; $5992: $00
	ld   bc, $7407                                   ; $5993: $01 $07 $74
	db   $10                                         ; $5996: $10
	ld   [bc], a                                     ; $5997: $02
	inc  bc                                          ; $5998: $03
	ld   bc, $2000                                   ; $5999: $01 $00 $20
	nop                                              ; $599c: $00
	rlca                                             ; $599d: $07
	call c, $0210                                    ; $599e: $dc $10 $02
	inc  bc                                          ; $59a1: $03
	ld   bc, $2001                                   ; $59a2: $01 $01 $20
	nop                                              ; $59a5: $00
	ld   b, $4d                                      ; $59a6: $06 $4d
	db   $10                                         ; $59a8: $10
	inc  e                                           ; $59a9: $1c
	inc  b                                           ; $59aa: $04
	inc  bc                                          ; $59ab: $03
	inc  bc                                          ; $59ac: $03
	dec  e                                           ; $59ad: $1d
	ld   b, b                                        ; $59ae: $40
	inc  d                                           ; $59af: $14
	inc  bc                                          ; $59b0: $03
	inc  d                                           ; $59b1: $14
	ld   bc, $2901                                   ; $59b2: $01 $01 $29
	nop                                              ; $59b5: $00
	ld   bc, $927d                                   ; $59b6: $01 $7d $92
	ld   e, l                                        ; $59b9: $5d
	sbc  [hl]                                        ; $59ba: $9e
	ld   d, d                                        ; $59bb: $52
	ld   h, c                                        ; $59bc: $61
	ld   d, h                                        ; $59bd: $54
	sub  [hl]                                        ; $59be: $96
	db   $fc                                         ; $59bf: $fc
	sbc  a                                           ; $59c0: $9f
	dec  c                                           ; $59c1: $0d
	nop                                              ; $59c2: $00
	ld   a, [bc]                                     ; $59c3: $0a
	dec  b                                           ; $59c4: $05
	ld   b, b                                        ; $59c5: $40
	rst  $38                                         ; $59c6: $ff
	inc  bc                                          ; $59c7: $03
	rst  $38                                         ; $59c8: $ff
	ld   bc, $2801                                   ; $59c9: $01 $01 $28
	nop                                              ; $59cc: $00
	ld   b, $23                                      ; $59cd: $06 $23
	db   $10                                         ; $59cf: $10
	rrca                                             ; $59d0: $0f
	nop                                              ; $59d1: $00
	ld   bc, $0201                                   ; $59d2: $01 $01 $02
	inc  e                                           ; $59d5: $1c
	ld   a, c                                        ; $59d6: $79
	ld   [bc], a                                     ; $59d7: $02
	adc  [hl]                                        ; $59d8: $8e
	ld   e, d                                        ; $59d9: $5a
	sbc  e                                           ; $59da: $9b
	ld   d, h                                        ; $59db: $54
	sbc  a                                           ; $59dc: $9f
	dec  c                                           ; $59dd: $0d
	nop                                              ; $59de: $00
	ld   a, [bc]                                     ; $59df: $0a
	dec  b                                           ; $59e0: $05
	ld   b, b                                        ; $59e1: $40
	rst  $38                                         ; $59e2: $ff
	inc  bc                                          ; $59e3: $03
	rst  $38                                         ; $59e4: $ff
	ld   bc, $2801                                   ; $59e5: $01 $01 $28
	nop                                              ; $59e8: $00
	dec  c                                           ; $59e9: $0d
	nop                                              ; $59ea: $00
	nop                                              ; $59eb: $00
	inc  hl                                          ; $59ec: $23
	sub  h                                           ; $59ed: $94
	inc  e                                           ; $59ee: $1c
	inc  b                                           ; $59ef: $04
	ld   b, $06                                      ; $59f0: $06 $06
	dec  e                                           ; $59f2: $1d
	ld   b, b                                        ; $59f3: $40
	inc  d                                           ; $59f4: $14
	inc  bc                                          ; $59f5: $03
	inc  d                                           ; $59f6: $14
	ld   bc, $2901                                   ; $59f7: $01 $01 $29
	nop                                              ; $59fa: $00
	ld   bc, $a178                                   ; $59fb: $01 $78 $a1
	ld   l, [hl]                                     ; $59fe: $6e
	ld   e, c                                        ; $59ff: $59
	sbc  [hl]                                        ; $5a00: $9e
	ld   l, l                                        ; $5a01: $6d
	ld   a, h                                        ; $5a02: $7c
	ld   h, l                                        ; $5a03: $65
	ld   l, e                                        ; $5a04: $6b
	ld   d, h                                        ; $5a05: $54
	rst  $38                                         ; $5a06: $ff
	rst  $38                                         ; $5a07: $ff
	dec  c                                           ; $5a08: $0d
	ld   l, a                                        ; $5a09: $6f
	ld   d, d                                        ; $5a0a: $52
	ld   [bc], a                                     ; $5a0b: $02
	inc  de                                          ; $5a0c: $13
	ld   l, a                                        ; $5a0d: $6f
	sub  c                                           ; $5a0e: $91
	and  c                                           ; $5a0f: $a1
	sbc  [hl]                                        ; $5a10: $9e
	adc  h                                           ; $5a11: $8c
	ld   l, a                                        ; $5a12: $6f
	ld   e, d                                        ; $5a13: $5a
	ld   d, [hl]                                     ; $5a14: $56
	ld   [hl], h                                     ; $5a15: $74
	sbc  c                                           ; $5a16: $99
	sbc  a                                           ; $5a17: $9f
	dec  c                                           ; $5a18: $0d
	sub  b                                           ; $5a19: $90
	halt                                             ; $5a1a: $76
	ld   a, h                                        ; $5a1b: $7c
	ld   a, [hl]                                     ; $5a1c: $7e
	ld   h, l                                        ; $5a1d: $65
	sub  l                                           ; $5a1e: $95
	ld   a, c                                        ; $5a1f: $79
	sbc  [hl]                                        ; $5a20: $9e
	sub  b                                           ; $5a21: $90
	ld   [hl], a                                     ; $5a22: $77
	sbc  c                                           ; $5a23: $99
	sub  [hl]                                        ; $5a24: $96
	sbc  a                                           ; $5a25: $9f
	dec  c                                           ; $5a26: $0d
	nop                                              ; $5a27: $00
	ld   a, [bc]                                     ; $5a28: $0a
	dec  c                                           ; $5a29: $0d
	nop                                              ; $5a2a: $00
	nop                                              ; $5a2b: $00
	rrca                                             ; $5a2c: $0f
	nop                                              ; $5a2d: $00
	ld   bc, $9123                                   ; $5a2e: $01 $23 $91
	inc  e                                           ; $5a31: $1c
	inc  b                                           ; $5a32: $04
	nop                                              ; $5a33: $00
	nop                                              ; $5a34: $00
	ld   b, $23                                      ; $5a35: $06 $23
	db   $10                                         ; $5a37: $10
	rrca                                             ; $5a38: $0f
	nop                                              ; $5a39: $00
	ld   bc, $0301                                   ; $5a3a: $01 $01 $03
	ld   h, b                                        ; $5a3d: $60
	ld   a, c                                        ; $5a3e: $79
	ld   [bc], a                                     ; $5a3f: $02
	adc  [hl]                                        ; $5a40: $8e
	ld   e, d                                        ; $5a41: $5a
	sbc  e                                           ; $5a42: $9b
	ld   d, h                                        ; $5a43: $54
	sbc  a                                           ; $5a44: $9f
	dec  c                                           ; $5a45: $0d
	nop                                              ; $5a46: $00
	ld   a, [bc]                                     ; $5a47: $0a
	dec  c                                           ; $5a48: $0d
	nop                                              ; $5a49: $00
	nop                                              ; $5a4a: $00
	inc  hl                                          ; $5a4b: $23
	add  [hl]                                        ; $5a4c: $86
	inc  e                                           ; $5a4d: $1c
	inc  b                                           ; $5a4e: $04
	ld   bc, $1d01                                   ; $5a4f: $01 $01 $1d
	ld   b, b                                        ; $5a52: $40
	inc  d                                           ; $5a53: $14
	inc  bc                                          ; $5a54: $03
	inc  d                                           ; $5a55: $14
	ld   bc, $2803                                   ; $5a56: $01 $03 $28
	nop                                              ; $5a59: $00
	ld   bc, $7150                                   ; $5a5a: $01 $50 $71
	ld   [hl], h                                     ; $5a5d: $74
	sbc  c                                           ; $5a5e: $99
	sbc  [hl]                                        ; $5a5f: $9e
	ld   d, b                                        ; $5a60: $50
	ld   [hl], c                                     ; $5a61: $71
	ld   [hl], h                                     ; $5a62: $74
	sbc  c                                           ; $5a63: $99
	sbc  a                                           ; $5a64: $9f
	dec  c                                           ; $5a65: $0d
	sub  d                                           ; $5a66: $92
	ld   [hl], c                                     ; $5a67: $71
	ld   l, l                                        ; $5a68: $6d
	ei                                               ; $5a69: $fb
	ld   a, [$000d]                                  ; $5a6a: $fa $0d $00
	ld   a, [bc]                                     ; $5a6d: $0a
	rrca                                             ; $5a6e: $0f
	nop                                              ; $5a6f: $00
	ld   bc, $9407                                   ; $5a70: $01 $07 $94
	ld   de, $ff03                                   ; $5a73: $11 $03 $ff
	ld   bc, $2000                                   ; $5a76: $01 $00 $20
	nop                                              ; $5a79: $00
	ld   bc, $9166                                   ; $5a7a: $01 $66 $91
	sbc  [hl]                                        ; $5a7d: $9e
	inc  b                                           ; $5a7e: $04
	ld   [$9202], sp                                 ; $5a7f: $08 $02 $92
	ld   a, c                                        ; $5a82: $79
	sub  b                                           ; $5a83: $90
	ld   [hl], a                                     ; $5a84: $77
	sbc  e                                           ; $5a85: $9b
	ld   d, h                                        ; $5a86: $54
	ld   e, c                                        ; $5a87: $59
	sbc  a                                           ; $5a88: $9f
	dec  c                                           ; $5a89: $0d
	nop                                              ; $5a8a: $00
	ld   a, [bc]                                     ; $5a8b: $0a
	dec  c                                           ; $5a8c: $0d
	nop                                              ; $5a8d: $00
	nop                                              ; $5a8e: $00
	inc  hl                                          ; $5a8f: $23
	ld   b, $1c                                      ; $5a90: $06 $1c
	inc  b                                           ; $5a92: $04
	ld   bc, $0101                                   ; $5a93: $01 $01 $01
	ld   l, a                                        ; $5a96: $6f
	ld   d, d                                        ; $5a97: $52
	ld   [bc], a                                     ; $5a98: $02
	inc  de                                          ; $5a99: $13
	ld   l, a                                        ; $5a9a: $6f
	sub  c                                           ; $5a9b: $91
	and  c                                           ; $5a9c: $a1
	sbc  a                                           ; $5a9d: $9f
	ld   e, e                                        ; $5a9e: $5b
	sub  l                                           ; $5a9f: $95
	ld   d, h                                        ; $5aa0: $54
	ld   a, l                                        ; $5aa1: $7d
	sbc  [hl]                                        ; $5aa2: $9e
	dec  c                                           ; $5aa3: $0d
	ld   d, b                                        ; $5aa4: $50
	sbc  b                                           ; $5aa5: $98
	ld   e, d                                        ; $5aa6: $5a
	halt                                             ; $5aa7: $76
	ld   d, h                                        ; $5aa8: $54
	ld   a, [$7810]                                  ; $5aa9: $fa $10 $78
	and  c                                           ; $5aac: $a1
	ld   e, c                                        ; $5aad: $59
	ld   l, l                                        ; $5aae: $6d
	and  c                                           ; $5aaf: $a1
	ld   [hl], h                                     ; $5ab0: $74
	ld   d, d                                        ; $5ab1: $52
	dec  c                                           ; $5ab2: $0d
	adc  l                                           ; $5ab3: $8d
	ld   l, l                                        ; $5ab4: $6d
	ld   d, d                                        ; $5ab5: $52
	ld   [hl], l                                     ; $5ab6: $75
	sbc  [hl]                                        ; $5ab7: $9e
	ld   l, l                                        ; $5ab8: $6d
	ld   a, h                                        ; $5ab9: $7c
	ld   h, l                                        ; $5aba: $65
	ld   e, c                                        ; $5abb: $59
	ld   [hl], c                                     ; $5abc: $71
	ld   l, l                                        ; $5abd: $6d
	sbc  a                                           ; $5abe: $9f
	dec  c                                           ; $5abf: $0d
	nop                                              ; $5ac0: $00
	ld   a, [bc]                                     ; $5ac1: $0a
	dec  b                                           ; $5ac2: $05
	add  b                                           ; $5ac3: $80
	ld   c, h                                        ; $5ac4: $4c
	ld   bc, $0001                                   ; $5ac5: $01 $01 $00
	ld   bc, $9166                                   ; $5ac8: $01 $66 $91
	sbc  [hl]                                        ; $5acb: $9e
	and  e                                           ; $5acc: $a3
	and  l                                           ; $5acd: $a5
	db   $ec                                         ; $5ace: $ec
	cp   d                                           ; $5acf: $ba
	ld   a, e                                        ; $5ad0: $7b
	adc  [hl]                                        ; $5ad1: $8e
	ld   d, d                                        ; $5ad2: $52
	ld   e, c                                        ; $5ad3: $59
	sub  a                                           ; $5ad4: $97
	dec  c                                           ; $5ad5: $0d
	sub  b                                           ; $5ad6: $90
	ld   d, h                                        ; $5ad7: $54
	ld   a, e                                        ; $5ad8: $7b
	sbc  c                                           ; $5ad9: $99
	ld   a, e                                        ; $5ada: $7b
	sbc  a                                           ; $5adb: $9f
	dec  c                                           ; $5adc: $0d
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
	add  hl, hl                                      ; $5aed: $29
	nop                                              ; $5aee: $00
	nop                                              ; $5aef: $00
	rrca                                             ; $5af0: $0f
	nop                                              ; $5af1: $00
	ld   bc, $a301                                   ; $5af2: $01 $01 $a3
	and  l                                           ; $5af5: $a5
	db   $ec                                         ; $5af6: $ec
	cp   d                                           ; $5af7: $ba
	sbc  a                                           ; $5af8: $9f
	adc  h                                           ; $5af9: $8c
	ld   l, [hl]                                     ; $5afa: $6e
	inc  bc                                          ; $5afb: $03
	ld   l, a                                        ; $5afc: $6f
	ld   [bc], a                                     ; $5afd: $02
	xor  c                                           ; $5afe: $a9
	ld   d, b                                        ; $5aff: $50
	sbc  c                                           ; $5b00: $99
	ld   h, l                                        ; $5b01: $65
	sbc  [hl]                                        ; $5b02: $9e
	dec  c                                           ; $5b03: $0d
	ld   h, c                                        ; $5b04: $61
	ld   a, h                                        ; $5b05: $7c
	inc  bc                                          ; $5b06: $03
	ld   a, b                                        ; $5b07: $78
	ld   a, h                                        ; $5b08: $7c
	ld   [bc], a                                     ; $5b09: $02
	sbc  c                                           ; $5b0a: $99
	ld   [bc], a                                     ; $5b0b: $02
	inc  c                                           ; $5b0c: $0c
	ld   [hl], l                                     ; $5b0d: $75
	sbc  [hl]                                        ; $5b0e: $9e
	ld   l, a                                        ; $5b0f: $6f
	sub  l                                           ; $5b10: $95
	ld   [hl], c                                     ; $5b11: $71
	halt                                             ; $5b12: $76
	dec  c                                           ; $5b13: $0d
	ld   d, b                                        ; $5b14: $50
	ld   l, e                                        ; $5b15: $6b
	and  c                                           ; $5b16: $a1
	ld   [hl], l                                     ; $5b17: $75
	ld   d, d                                        ; $5b18: $52
	ld   h, c                                        ; $5b19: $61
	ld   d, h                                        ; $5b1a: $54
	ld   e, c                                        ; $5b1b: $59
	ld   sp, hl                                      ; $5b1c: $f9
	dec  c                                           ; $5b1d: $0d
	nop                                              ; $5b1e: $00
	ld   a, [bc]                                     ; $5b1f: $0a
	inc  e                                           ; $5b20: $1c
	inc  b                                           ; $5b21: $04
	ld   bc, $0101                                   ; $5b22: $01 $01 $01
	call c, $c9f5                                    ; $5b25: $dc $f5 $c9
	ld   a, c                                        ; $5b28: $79
	ld   a, [$0df9]                                  ; $5b29: $fa $f9 $0d
	sbc  l                                           ; $5b2c: $9d
	ei                                               ; $5b2d: $fb
	ld   d, d                                        ; $5b2e: $52
	ld   a, [$000d]                                  ; $5b2f: $fa $0d $00
	ld   a, [bc]                                     ; $5b32: $0a
	dec  c                                           ; $5b33: $0d
	nop                                              ; $5b34: $00
	nop                                              ; $5b35: $00
	ld   d, $2e                                      ; $5b36: $16 $2e
	rrca                                             ; $5b38: $0f
	inc  b                                           ; $5b39: $04
	ld   bc, $6f01                                   ; $5b3a: $01 $01 $6f
	ld   d, d                                        ; $5b3d: $52
	ld   [bc], a                                     ; $5b3e: $02
	inc  de                                          ; $5b3f: $13
	ld   l, a                                        ; $5b40: $6f
	sub  c                                           ; $5b41: $91
	ei                                               ; $5b42: $fb
	ei                                               ; $5b43: $fb
	ei                                               ; $5b44: $fb
	and  c                                           ; $5b45: $a1
	sbc  a                                           ; $5b46: $9f
	dec  c                                           ; $5b47: $0d
	nop                                              ; $5b48: $00
	ld   a, [bc]                                     ; $5b49: $0a
	rrca                                             ; $5b4a: $0f
	nop                                              ; $5b4b: $00
	ld   bc, $020c                                   ; $5b4c: $01 $0c $02
	ld   c, $06                                      ; $5b4f: $0e $06
	inc  e                                           ; $5b51: $1c
	inc  b                                           ; $5b52: $04
	ld   bc, $1d01                                   ; $5b53: $01 $01 $1d
	ld   b, b                                        ; $5b56: $40
	inc  d                                           ; $5b57: $14
	inc  bc                                          ; $5b58: $03
	inc  d                                           ; $5b59: $14
	ld   bc, $2803                                   ; $5b5a: $01 $03 $28
	nop                                              ; $5b5d: $00
	ld   bc, $526f                                   ; $5b5e: $01 $6f $52
	ld   [bc], a                                     ; $5b61: $02
	inc  de                                          ; $5b62: $13
	ld   l, a                                        ; $5b63: $6f
	sub  c                                           ; $5b64: $91
	and  c                                           ; $5b65: $a1
	sbc  a                                           ; $5b66: $9f
	ld   e, e                                        ; $5b67: $5b
	sub  l                                           ; $5b68: $95
	ld   d, h                                        ; $5b69: $54
	ld   a, l                                        ; $5b6a: $7d
	sbc  [hl]                                        ; $5b6b: $9e
	dec  c                                           ; $5b6c: $0d
	ld   d, b                                        ; $5b6d: $50
	sbc  b                                           ; $5b6e: $98
	ld   e, d                                        ; $5b6f: $5a
	halt                                             ; $5b70: $76
	ld   d, h                                        ; $5b71: $54
	ld   a, [$7810]                                  ; $5b72: $fa $10 $78
	and  c                                           ; $5b75: $a1
	ld   e, c                                        ; $5b76: $59
	ld   l, l                                        ; $5b77: $6d
	and  c                                           ; $5b78: $a1
	ld   [hl], h                                     ; $5b79: $74
	ld   d, d                                        ; $5b7a: $52
	dec  c                                           ; $5b7b: $0d
	adc  l                                           ; $5b7c: $8d
	ld   l, l                                        ; $5b7d: $6d
	ld   d, d                                        ; $5b7e: $52
	ld   [hl], l                                     ; $5b7f: $75
	sbc  [hl]                                        ; $5b80: $9e
	ld   l, l                                        ; $5b81: $6d
	ld   a, h                                        ; $5b82: $7c
	ld   h, l                                        ; $5b83: $65
	ld   e, c                                        ; $5b84: $59
	ld   [hl], c                                     ; $5b85: $71
	ld   l, l                                        ; $5b86: $6d
	sbc  a                                           ; $5b87: $9f
	dec  c                                           ; $5b88: $0d
	nop                                              ; $5b89: $00
	ld   a, [bc]                                     ; $5b8a: $0a
	ld   bc, $9166                                   ; $5b8b: $01 $66 $91
	sbc  [hl]                                        ; $5b8e: $9e
	and  e                                           ; $5b8f: $a3
	and  l                                           ; $5b90: $a5
	db   $ec                                         ; $5b91: $ec
	cp   d                                           ; $5b92: $ba
	ld   a, e                                        ; $5b93: $7b
	adc  [hl]                                        ; $5b94: $8e
	ld   d, d                                        ; $5b95: $52
	ld   e, c                                        ; $5b96: $59
	sub  a                                           ; $5b97: $97
	dec  c                                           ; $5b98: $0d
	nop                                              ; $5b99: $00
	dec  b                                           ; $5b9a: $05
	add  b                                           ; $5b9b: $80
	ld   c, h                                        ; $5b9c: $4c
	ld   bc, $0001                                   ; $5b9d: $01 $01 $00
	ld   bc, $5490                                   ; $5ba0: $01 $90 $54
	ld   a, e                                        ; $5ba3: $7b
	sbc  c                                           ; $5ba4: $99
	ld   a, e                                        ; $5ba5: $7b
	sbc  a                                           ; $5ba6: $9f
	dec  c                                           ; $5ba7: $0d
	ld   e, b                                        ; $5ba8: $58
	sub  d                                           ; $5ba9: $92
	ld   h, a                                        ; $5baa: $67
	adc  l                                           ; $5bab: $8d
	sbc  a                                           ; $5bac: $9f
	dec  c                                           ; $5bad: $0d
	nop                                              ; $5bae: $00
	ld   a, [bc]                                     ; $5baf: $0a
	dec  c                                           ; $5bb0: $0d
	nop                                              ; $5bb1: $00
	nop                                              ; $5bb2: $00
	rrca                                             ; $5bb3: $0f
	nop                                              ; $5bb4: $00
	ld   bc, $1e09                                   ; $5bb5: $01 $09 $1e
	add  hl, hl                                      ; $5bb8: $29
	nop                                              ; $5bb9: $00
	nop                                              ; $5bba: $00
	nop                                              ; $5bbb: $00
	inc  bc                                          ; $5bbc: $03
	inc  de                                          ; $5bbd: $13
	ld   bc, $24aa                                   ; $5bbe: $01 $aa $24
	inc  b                                           ; $5bc1: $04
	add  b                                           ; $5bc2: $80
	ld   [hl], l                                     ; $5bc3: $75
	ld   bc, $20ff                                   ; $5bc4: $01 $ff $20
	inc  e                                           ; $5bc7: $1c
	nop                                              ; $5bc8: $00
	ld   c, $01                                      ; $5bc9: $0e $01
	rrca                                             ; $5bcb: $0f
	nop                                              ; $5bcc: $00
	ld   bc, $0102                                   ; $5bcd: $01 $02 $01
	and  c                                           ; $5bd0: $a1
	db   $fc                                         ; $5bd1: $fc
	ld   h, e                                        ; $5bd2: $63
	sbc  l                                           ; $5bd3: $9d
	sub  d                                           ; $5bd4: $92
	ld   e, c                                        ; $5bd5: $59
	ld   a, b                                        ; $5bd6: $78
	inc  bc                                          ; $5bd7: $03
	ld   d, $6e                                      ; $5bd8: $16 $6e
	rst  $38                                         ; $5bda: $ff
	rst  $38                                         ; $5bdb: $ff
	dec  c                                           ; $5bdc: $0d
	ld   [bc], a                                     ; $5bdd: $02
	and  l                                           ; $5bde: $a5
	inc  b                                           ; $5bdf: $04
	xor  d                                           ; $5be0: $aa
	sub  b                                           ; $5be1: $90
	ld   e, d                                        ; $5be2: $5a
	and  c                                           ; $5be3: $a1
	ld   a, [hl]                                     ; $5be4: $7e
	sbc  c                                           ; $5be5: $99
	ld   l, h                                        ; $5be6: $6c
	ld   a, [$0dfa]                                  ; $5be7: $fa $fa $0d
	nop                                              ; $5bea: $00
	ld   a, [bc]                                     ; $5beb: $0a
	inc  d                                           ; $5bec: $14
	ld   b, $01                                      ; $5bed: $06 $01
	rrca                                             ; $5bef: $0f
	inc  bc                                          ; $5bf0: $03
	inc  bc                                          ; $5bf1: $03
	ld   bc, $7d58                                   ; $5bf2: $01 $58 $7d
	sub  [hl]                                        ; $5bf5: $96
	ld   d, h                                        ; $5bf6: $54
	sbc  a                                           ; $5bf7: $9f
	dec  c                                           ; $5bf8: $0d
	ld   [$5d00], sp                                 ; $5bf9: $08 $00 $5d
	and  c                                           ; $5bfc: $a1
	sbc  a                                           ; $5bfd: $9f
	dec  c                                           ; $5bfe: $0d
	nop                                              ; $5bff: $00
	ld   a, [bc]                                     ; $5c00: $0a
	rrca                                             ; $5c01: $0f
	nop                                              ; $5c02: $00
	ld   bc, $7d01                                   ; $5c03: $01 $01 $7d
	ld   d, d                                        ; $5c06: $52
	sbc  a                                           ; $5c07: $9f
	dec  c                                           ; $5c08: $0d
	ld   e, b                                        ; $5c09: $58
	ld   a, l                                        ; $5c0a: $7d
	sub  [hl]                                        ; $5c0b: $96
	ld   d, h                                        ; $5c0c: $54
	ld   h, d                                        ; $5c0d: $62
	ld   h, h                                        ; $5c0e: $64
	ld   d, d                                        ; $5c0f: $52
	adc  h                                           ; $5c10: $8c
	ld   h, a                                        ; $5c11: $67
	sbc  a                                           ; $5c12: $9f
	dec  c                                           ; $5c13: $0d
	nop                                              ; $5c14: $00
	ld   a, [bc]                                     ; $5c15: $0a
	inc  d                                           ; $5c16: $14
	ld   a, [bc]                                     ; $5c17: $0a
	ld   bc, $031c                                   ; $5c18: $01 $1c $03
	nop                                              ; $5c1b: $00
	nop                                              ; $5c1c: $00
	ld   bc, $6d8c                                   ; $5c1d: $01 $8c $6d
	ld   l, a                                        ; $5c20: $6f
	sub  l                                           ; $5c21: $95
	ld   [hl], c                                     ; $5c22: $71
	halt                                             ; $5c23: $76
	inc  bc                                          ; $5c24: $03
	ld   l, e                                        ; $5c25: $6b
	inc  b                                           ; $5c26: $04
	ld   [de], a                                     ; $5c27: $12
	ld   [hl], c                                     ; $5c28: $71
	ld   [hl], h                                     ; $5c29: $74
	inc  b                                           ; $5c2a: $04
	db   $e3                                         ; $5c2b: $e3
	ld   h, l                                        ; $5c2c: $65
	ld   d, d                                        ; $5c2d: $52
	dec  c                                           ; $5c2e: $0d
	ld   h, c                                        ; $5c2f: $61
	halt                                             ; $5c30: $76
	ld   e, d                                        ; $5c31: $5a
	ld   d, b                                        ; $5c32: $50
	sbc  c                                           ; $5c33: $99
	ld   a, h                                        ; $5c34: $7c
	sub  [hl]                                        ; $5c35: $96
	sbc  a                                           ; $5c36: $9f
	dec  c                                           ; $5c37: $0d
	nop                                              ; $5c38: $00
	ld   a, [bc]                                     ; $5c39: $0a
	ld   bc, $fe04                                   ; $5c3a: $01 $04 $fe
	ld   a, c                                        ; $5c3d: $79
	sub  [hl]                                        ; $5c3e: $96
	ld   [hl], c                                     ; $5c3f: $71
	ld   [hl], h                                     ; $5c40: $74
	sbc  [hl]                                        ; $5c41: $9e
	adc  h                                           ; $5c42: $8c
	sbc  c                                           ; $5c43: $99
	ld   [bc], a                                     ; $5c44: $02
	jr   nz, jr_061_5c4b                             ; $5c45: $20 $04

	xor  d                                           ; $5c47: $aa
	dec  c                                           ; $5c48: $0d
	ld   [hl], d                                     ; $5c49: $72
	add  h                                           ; $5c4a: $84

jr_061_5c4b:
	sbc  d                                           ; $5c4b: $9a
	ld   l, a                                        ; $5c4c: $6f
	sub  c                                           ; $5c4d: $91
	ld   d, h                                        ; $5c4e: $54
	and  c                                           ; $5c4f: $a1
	ld   l, [hl]                                     ; $5c50: $6e
	ld   e, a                                        ; $5c51: $5f
	ld   [hl], a                                     ; $5c52: $77
	rst  $38                                         ; $5c53: $ff
	rst  $38                                         ; $5c54: $ff
	dec  c                                           ; $5c55: $0d
	nop                                              ; $5c56: $00
	ld   a, [bc]                                     ; $5c57: $0a
	ld   bc, $8503                                   ; $5c58: $01 $03 $85
	inc  b                                           ; $5c5b: $04
	xor  e                                           ; $5c5c: $ab
	inc  bc                                          ; $5c5d: $03
	add  d                                           ; $5c5e: $82
	ld   a, c                                        ; $5c5f: $79
	ld   a, l                                        ; $5c60: $7d
	inc  bc                                          ; $5c61: $03
	ret  z                                           ; $5c62: $c8

	ld   e, c                                        ; $5c63: $59
	sub  a                                           ; $5c64: $97
	sbc  [hl]                                        ; $5c65: $9e
	dec  b                                           ; $5c66: $05
	jr   nz, jr_061_5cce                             ; $5c67: $20 $65

	ld   [hl], h                                     ; $5c69: $74
	dec  c                                           ; $5c6a: $0d
	ld   e, b                                        ; $5c6b: $58
	ld   e, l                                        ; $5c6c: $5d
	ld   e, c                                        ; $5c6d: $59
	sub  a                                           ; $5c6e: $97
	sbc  [hl]                                        ; $5c6f: $9e
	inc  bc                                          ; $5c70: $03
	ld   l, l                                        ; $5c71: $6d
	dec  b                                           ; $5c72: $05
	add  hl, de                                      ; $5c73: $19
	ld   a, h                                        ; $5c74: $7c
	ld   [bc], a                                     ; $5c75: $02
	jp   $a178                                       ; $5c76: $c3 $78 $a1


	ld   e, c                                        ; $5c79: $59
	ld   a, l                                        ; $5c7a: $7d
	dec  c                                           ; $5c7b: $0d
	inc  bc                                          ; $5c7c: $03
	ld   [hl], l                                     ; $5c7d: $75
	inc  b                                           ; $5c7e: $04
	xor  e                                           ; $5c7f: $ab
	inc  b                                           ; $5c80: $04
	sub  $04                                         ; $5c81: $d6 $04
	di                                               ; $5c83: $f3
	sub  [hl]                                        ; $5c84: $96
	sbc  a                                           ; $5c85: $9f
	dec  c                                           ; $5c86: $0d
	nop                                              ; $5c87: $00
	ld   a, [bc]                                     ; $5c88: $0a
	add  hl, de                                      ; $5c89: $19
	dec  b                                           ; $5c8a: $05
	ld   [bc], a                                     ; $5c8b: $02
	ld   a, l                                        ; $5c8c: $7d
	ld   d, d                                        ; $5c8d: $52
	sbc  [hl]                                        ; $5c8e: $9e
	ld   d, d                                        ; $5c8f: $52
	ld   d, d                                        ; $5c90: $52
	ld   [hl], l                                     ; $5c91: $75
	ld   h, a                                        ; $5c92: $67
	sub  [hl]                                        ; $5c93: $96
	sbc  a                                           ; $5c94: $9f
	nop                                              ; $5c95: $00
	nop                                              ; $5c96: $00
	ld   h, c                                        ; $5c97: $61
	halt                                             ; $5c98: $76
	sbc  l                                           ; $5c99: $9d
	sbc  c                                           ; $5c9a: $99
	nop                                              ; $5c9b: $00
	ld   bc, $e907                                   ; $5c9c: $01 $07 $e9
	nop                                              ; $5c9f: $00
	ld   [bc], a                                     ; $5ca0: $02
	inc  bc                                          ; $5ca1: $03
	ld   bc, $2000                                   ; $5ca2: $01 $00 $20
	nop                                              ; $5ca5: $00
	rlca                                             ; $5ca6: $07
	ld   [hl-], a                                    ; $5ca7: $32
	ld   bc, $0302                                   ; $5ca8: $01 $02 $03
	ld   bc, $2001                                   ; $5cab: $01 $01 $20
	nop                                              ; $5cae: $00
	ld   b, $8c                                      ; $5caf: $06 $8c
	ld   bc, $000f                                   ; $5cb1: $01 $0f $00
	ld   bc, $5201                                   ; $5cb4: $01 $01 $52
	ld   d, d                                        ; $5cb7: $52
	ld   [hl], l                                     ; $5cb8: $75
	ld   h, a                                        ; $5cb9: $67
	sub  [hl]                                        ; $5cba: $96
	sbc  a                                           ; $5cbb: $9f
	rst  JumpTable                                         ; $5cbc: $df
	db   $ec                                         ; $5cbd: $ec
	and  e                                           ; $5cbe: $a3
	ld   h, e                                        ; $5cbf: $63
	and  c                                           ; $5cc0: $a1
	sbc  a                                           ; $5cc1: $9f
	dec  c                                           ; $5cc2: $0d
	inc  b                                           ; $5cc3: $04
	ld   l, l                                        ; $5cc4: $6d
	ld   [hl], l                                     ; $5cc5: $75
	ld   e, b                                        ; $5cc6: $58
	inc  b                                           ; $5cc7: $04
	db   $ec                                         ; $5cc8: $ec
	ld   a, c                                        ; $5cc9: $79
	dec  b                                           ; $5cca: $05
	ld   d, $74                                      ; $5ccb: $16 $74
	sbc  c                                           ; $5ccd: $99

jr_061_5cce:
	ld   a, b                                        ; $5cce: $78
	sub  a                                           ; $5ccf: $97
	sbc  a                                           ; $5cd0: $9f
	dec  c                                           ; $5cd1: $0d
	nop                                              ; $5cd2: $00
	ld   a, [bc]                                     ; $5cd3: $0a
	inc  e                                           ; $5cd4: $1c
	inc  bc                                          ; $5cd5: $03
	inc  bc                                          ; $5cd6: $03
	inc  bc                                          ; $5cd7: $03
	ld   bc, $9850                                   ; $5cd8: $01 $50 $98
	ld   e, d                                        ; $5cdb: $5a
	halt                                             ; $5cdc: $76
	ld   d, h                                        ; $5cdd: $54
	sbc  a                                           ; $5cde: $9f
	dec  c                                           ; $5cdf: $0d
	ld   h, [hl]                                     ; $5ce0: $66
	sub  c                                           ; $5ce1: $91
	sbc  [hl]                                        ; $5ce2: $9e
	ld   h, e                                        ; $5ce3: $63
	ld   [hl], c                                     ; $5ce4: $71
	ld   l, e                                        ; $5ce5: $6b
	ld   e, l                                        ; $5ce6: $5d
	ld   [bc], a                                     ; $5ce7: $02
	ld   a, [de]                                     ; $5ce8: $1a
	dec  b                                           ; $5ce9: $05
	ldh  a, [$78]                                    ; $5cea: $f0 $78
	and  c                                           ; $5cec: $a1
	ld   l, [hl]                                     ; $5ced: $6e
	ld   e, a                                        ; $5cee: $5f
	ld   [hl], a                                     ; $5cef: $77
	dec  c                                           ; $5cf0: $0d
	rst  $38                                         ; $5cf1: $ff
	rst  $38                                         ; $5cf2: $ff
	rst  $38                                         ; $5cf3: $ff
	rst  $38                                         ; $5cf4: $ff
	dec  c                                           ; $5cf5: $0d
	nop                                              ; $5cf6: $00
	ld   a, [bc]                                     ; $5cf7: $0a
	ld   b, $c4                                      ; $5cf8: $06 $c4
	ld   bc, $000f                                   ; $5cfa: $01 $0f $00
	ld   bc, $6701                                   ; $5cfd: $01 $01 $67
	adc  l                                           ; $5d00: $8d
	adc  h                                           ; $5d01: $8c
	ld   l, c                                        ; $5d02: $69
	and  c                                           ; $5d03: $a1
	sbc  a                                           ; $5d04: $9f
	dec  c                                           ; $5d05: $0d
	ld   [bc], a                                     ; $5d06: $02
	and  l                                           ; $5d07: $a5
	inc  b                                           ; $5d08: $04
	xor  d                                           ; $5d09: $aa
	ld   a, l                                        ; $5d0a: $7d
	ld   l, a                                        ; $5d0b: $6f
	sub  l                                           ; $5d0c: $95
	ld   [hl], c                                     ; $5d0d: $71
	halt                                             ; $5d0e: $76
	dec  c                                           ; $5d0f: $0d
	inc  b                                           ; $5d10: $04
	di                                               ; $5d11: $f3
	ld   e, d                                        ; $5d12: $5a
	ld   d, b                                        ; $5d13: $50
	sbc  c                                           ; $5d14: $99
	and  c                                           ; $5d15: $a1
	ld   [hl], l                                     ; $5d16: $75
	ld   h, a                                        ; $5d17: $67
	sbc  a                                           ; $5d18: $9f
	dec  c                                           ; $5d19: $0d
	nop                                              ; $5d1a: $00
	ld   a, [bc]                                     ; $5d1b: $0a
	inc  e                                           ; $5d1c: $1c
	inc  bc                                          ; $5d1d: $03
	inc  b                                           ; $5d1e: $04
	inc  b                                           ; $5d1f: $04
	dec  e                                           ; $5d20: $1d
	ld   b, b                                        ; $5d21: $40
	inc  de                                          ; $5d22: $13
	inc  bc                                          ; $5d23: $03
	inc  de                                          ; $5d24: $13
	ld   bc, $2901                                   ; $5d25: $01 $01 $29
	nop                                              ; $5d28: $00
	ld   bc, $546b                                   ; $5d29: $01 $6b $54
	ld   a, b                                        ; $5d2c: $78
	ld   a, h                                        ; $5d2d: $7c
	rst  $38                                         ; $5d2e: $ff
	rst  $38                                         ; $5d2f: $ff
	dec  c                                           ; $5d30: $0d
	ld   l, e                                        ; $5d31: $6b
	sbc  d                                           ; $5d32: $9a
	ld   a, b                                        ; $5d33: $78
	sub  a                                           ; $5d34: $97
	inc  bc                                          ; $5d35: $03
	dec  c                                           ; $5d36: $0d
	inc  b                                           ; $5d37: $04
	ld   a, b                                        ; $5d38: $78
	ld   a, b                                        ; $5d39: $78
	ld   d, d                                        ; $5d3a: $52
	sbc  l                                           ; $5d3b: $9d
	ld   a, e                                        ; $5d3c: $7b
	sbc  a                                           ; $5d3d: $9f
	dec  c                                           ; $5d3e: $0d
	ld   h, [hl]                                     ; $5d3f: $66
	sub  c                                           ; $5d40: $91
	ld   d, b                                        ; $5d41: $50
	sbc  [hl]                                        ; $5d42: $9e
	adc  h                                           ; $5d43: $8c
	ld   l, l                                        ; $5d44: $6d
	ld   a, e                                        ; $5d45: $7b
	sbc  a                                           ; $5d46: $9f
	dec  c                                           ; $5d47: $0d
	nop                                              ; $5d48: $00
	ld   a, [bc]                                     ; $5d49: $0a
	dec  c                                           ; $5d4a: $0d
	nop                                              ; $5d4b: $00
	nop                                              ; $5d4c: $00
	rrca                                             ; $5d4d: $0f
	nop                                              ; $5d4e: $00
	ld   bc, $1e09                                   ; $5d4f: $01 $09 $1e
	add  hl, hl                                      ; $5d52: $29
	ld   bc, $1c00                                   ; $5d53: $01 $00 $1c
	inc  bc                                          ; $5d56: $03
	inc  b                                           ; $5d57: $04
	inc  b                                           ; $5d58: $04
	dec  e                                           ; $5d59: $1d
	ld   b, b                                        ; $5d5a: $40
	inc  de                                          ; $5d5b: $13
	inc  bc                                          ; $5d5c: $03
	inc  de                                          ; $5d5d: $13
	ld   bc, $2901                                   ; $5d5e: $01 $01 $29
	nop                                              ; $5d61: $00
	ld   bc, $9e50                                   ; $5d62: $01 $50 $9e
	inc  b                                           ; $5d65: $04
	ld   c, c                                        ; $5d66: $49
	ld   e, c                                        ; $5d67: $59
	inc  b                                           ; $5d68: $04
	di                                               ; $5d69: $f3
	ld   e, d                                        ; $5d6a: $5a
	ld   d, b                                        ; $5d6b: $50
	sbc  c                                           ; $5d6c: $99
	ld   a, b                                        ; $5d6d: $78
	sub  a                                           ; $5d6e: $97
	dec  c                                           ; $5d6f: $0d
	inc  b                                           ; $5d70: $04
	ld   d, h                                        ; $5d71: $54
	ld   a, c                                        ; $5d72: $79
	ld   d, d                                        ; $5d73: $52
	ld   d, d                                        ; $5d74: $52
	ld   a, h                                        ; $5d75: $7c
	sub  [hl]                                        ; $5d76: $96
	sbc  a                                           ; $5d77: $9f
	dec  c                                           ; $5d78: $0d
	ld   h, [hl]                                     ; $5d79: $66
	sub  c                                           ; $5d7a: $91
	ld   d, b                                        ; $5d7b: $50
	ld   a, e                                        ; $5d7c: $7b
	rst  $38                                         ; $5d7d: $ff
	rst  $38                                         ; $5d7e: $ff
	dec  c                                           ; $5d7f: $0d
	nop                                              ; $5d80: $00
	ld   a, [bc]                                     ; $5d81: $0a
	dec  c                                           ; $5d82: $0d
	nop                                              ; $5d83: $00
	nop                                              ; $5d84: $00
	rrca                                             ; $5d85: $0f
	nop                                              ; $5d86: $00
	ld   bc, $1e09                                   ; $5d87: $01 $09 $1e
	add  hl, hl                                      ; $5d8a: $29
	ld   bc, $1c00                                   ; $5d8b: $01 $00 $1c
	inc  bc                                          ; $5d8e: $03
	nop                                              ; $5d8f: $00
	nop                                              ; $5d90: $00
	ld   bc, $8b03                                   ; $5d91: $01 $03 $8b
	ld   a, l                                        ; $5d94: $7d
	ld   a, e                                        ; $5d95: $7b
	sbc  [hl]                                        ; $5d96: $9e
	inc  bc                                          ; $5d97: $03
	ld   l, c                                        ; $5d98: $69
	ld   [bc], a                                     ; $5d99: $02
	and  b                                           ; $5d9a: $a0
	inc  b                                           ; $5d9b: $04
	ld   [$9202], sp                                 ; $5d9c: $08 $02 $92
	inc  b                                           ; $5d9f: $04
	ld   b, a                                        ; $5da0: $47
	ld   [hl], l                                     ; $5da1: $75
	dec  c                                           ; $5da2: $0d
	ld   d, d                                        ; $5da3: $52
	sbc  e                                           ; $5da4: $9b
	ld   d, d                                        ; $5da5: $52
	sbc  e                                           ; $5da6: $9b
	ld   a, b                                        ; $5da7: $78
	ld   [bc], a                                     ; $5da8: $02
	ld   h, h                                        ; $5da9: $64
	ld   [bc], a                                     ; $5daa: $02
	ld   h, d                                        ; $5dab: $62
	inc  bc                                          ; $5dac: $03
	and  c                                           ; $5dad: $a1
	ld   e, d                                        ; $5dae: $5a
	ld   [bc], a                                     ; $5daf: $02
	ld   e, d                                        ; $5db0: $5a
	ld   e, e                                        ; $5db1: $5b
	ld   [hl], h                                     ; $5db2: $74
	sbc  c                                           ; $5db3: $99
	halt                                             ; $5db4: $76
	dec  c                                           ; $5db5: $0d
	inc  b                                           ; $5db6: $04
	pop  hl                                          ; $5db7: $e1
	inc  b                                           ; $5db8: $04
	rst  $38                                         ; $5db9: $ff
	ld   l, l                                        ; $5dba: $6d
	ld   l, a                                        ; $5dbb: $6f
	ld   e, d                                        ; $5dbc: $5a
	and  a                                           ; $5dbd: $a7
	pop  af                                          ; $5dbe: $f1
	or   [hl]                                        ; $5dbf: $b6
	ld   h, l                                        ; $5dc0: $65
	ld   [hl], h                                     ; $5dc1: $74
	sbc  c                                           ; $5dc2: $99
	ld   a, h                                        ; $5dc3: $7c
	sub  [hl]                                        ; $5dc4: $96
	sbc  a                                           ; $5dc5: $9f
	dec  c                                           ; $5dc6: $0d
	nop                                              ; $5dc7: $00
	ld   a, [bc]                                     ; $5dc8: $0a
	inc  e                                           ; $5dc9: $1c
	inc  bc                                          ; $5dca: $03
	inc  bc                                          ; $5dcb: $03
	inc  bc                                          ; $5dcc: $03
	ld   bc, $9075                                   ; $5dcd: $01 $75 $90
	ld   a, e                                        ; $5dd0: $7b
	sbc  [hl]                                        ; $5dd1: $9e
	ld   e, e                                        ; $5dd2: $5b
	ld   [hl], c                                     ; $5dd3: $71
	halt                                             ; $5dd4: $76
	ld   h, a                                        ; $5dd5: $67
	add  a                                           ; $5dd6: $87
	ld   [hl], h                                     ; $5dd7: $74
	ld   a, c                                        ; $5dd8: $79
	ld   [bc], a                                     ; $5dd9: $02
	call $0e02                                       ; $5dda: $cd $02 $0e
	ld   e, d                                        ; $5ddd: $5a
	dec  c                                           ; $5dde: $0d
	ld   d, b                                        ; $5ddf: $50
	sbc  c                                           ; $5de0: $99
	ld   a, l                                        ; $5de1: $7d
	ld   l, b                                        ; $5de2: $68
	ld   a, b                                        ; $5de3: $78
	ld   a, h                                        ; $5de4: $7c
	sbc  a                                           ; $5de5: $9f
	dec  c                                           ; $5de6: $0d
	nop                                              ; $5de7: $00
	ld   a, [bc]                                     ; $5de8: $0a
	inc  e                                           ; $5de9: $1c
	inc  bc                                          ; $5dea: $03
	nop                                              ; $5deb: $00
	nop                                              ; $5dec: $00
	ld   bc, $9a6b                                   ; $5ded: $01 $6b $9a
	and  b                                           ; $5df0: $a0
	sbc  [hl]                                        ; $5df1: $9e
	ld   d, d                                        ; $5df2: $52
	ld   [hl], c                                     ; $5df3: $71
	ld   h, l                                        ; $5df4: $65
	sub  l                                           ; $5df5: $95
	ld   a, c                                        ; $5df6: $79
	ld   [bc], a                                     ; $5df7: $02
	or   h                                           ; $5df8: $b4
	ld   [bc], a                                     ; $5df9: $02
	add  e                                           ; $5dfa: $83
	ld   h, l                                        ; $5dfb: $65
	ld   [hl], h                                     ; $5dfc: $74
	dec  c                                           ; $5dfd: $0d
	inc  b                                           ; $5dfe: $04
	db   $e3                                         ; $5dff: $e3
	ld   h, l                                        ; $5e00: $65
	ld   d, d                                        ; $5e01: $52
	ld   a, h                                        ; $5e02: $7c
	sub  [hl]                                        ; $5e03: $96
	sbc  a                                           ; $5e04: $9f
	dec  c                                           ; $5e05: $0d
	ld   b, $08                                      ; $5e06: $06 $08
	ld   a, l                                        ; $5e08: $7d
	inc  bc                                          ; $5e09: $03
	ld   d, a                                        ; $5e0a: $57
	inc  b                                           ; $5e0b: $04
	sub  l                                           ; $5e0c: $95
	ld   [hl], l                                     ; $5e0d: $75
	inc  b                                           ; $5e0e: $04
	ld   c, [hl]                                     ; $5e0f: $4e
	ld   [hl], d                                     ; $5e10: $72
	rst  $38                                         ; $5e11: $ff
	rst  $38                                         ; $5e12: $ff
	dec  c                                           ; $5e13: $0d
	nop                                              ; $5e14: $00
	ld   a, [bc]                                     ; $5e15: $0a
	inc  e                                           ; $5e16: $1c
	inc  bc                                          ; $5e17: $03
	rlca                                             ; $5e18: $07
	rlca                                             ; $5e19: $07
	ld   bc, $7150                                   ; $5e1a: $01 $50 $71
	ld   a, [$0210]                                  ; $5e1d: $fa $10 $02
	and  l                                           ; $5e20: $a5
	ld   [bc], a                                     ; $5e21: $02
	and  c                                           ; $5e22: $a1
	ld   e, d                                        ; $5e23: $5a
	ld   [hl], d                                     ; $5e24: $72
	ld   d, d                                        ; $5e25: $52
	ld   l, l                                        ; $5e26: $6d
	and  c                                           ; $5e27: $a1
	ld   l, [hl]                                     ; $5e28: $6e
	ld   e, a                                        ; $5e29: $5f
	ld   [hl], a                                     ; $5e2a: $77
	dec  c                                           ; $5e2b: $0d
	ld   d, d                                        ; $5e2c: $52
	sbc  l                                           ; $5e2d: $9d
	sub  h                                           ; $5e2e: $94
	sbc  c                                           ; $5e2f: $99
	inc  b                                           ; $5e30: $04
	ld   [$9202], sp                                 ; $5e31: $08 $02 $92
	ld   a, h                                        ; $5e34: $7c
	inc  b                                           ; $5e35: $04
	ld   c, [hl]                                     ; $5e36: $4e
	inc  b                                           ; $5e37: $04
	and  b                                           ; $5e38: $a0
	dec  b                                           ; $5e39: $05
	pop  de                                          ; $5e3a: $d1
	dec  b                                           ; $5e3b: $05
	halt                                             ; $5e3c: $76
	ld   a, e                                        ; $5e3d: $7b
	sbc  a                                           ; $5e3e: $9f
	dec  c                                           ; $5e3f: $0d
	nop                                              ; $5e40: $00
	ld   a, [bc]                                     ; $5e41: $0a
	inc  e                                           ; $5e42: $1c
	inc  bc                                          ; $5e43: $03
	nop                                              ; $5e44: $00
	nop                                              ; $5e45: $00
	ld   bc, $9166                                   ; $5e46: $01 $66 $91
	ld   d, b                                        ; $5e49: $50
	sbc  [hl]                                        ; $5e4a: $9e
	adc  h                                           ; $5e4b: $8c
	ld   l, b                                        ; $5e4c: $68
	ld   [bc], a                                     ; $5e4d: $02
	jr   nz, jr_061_5ec2                             ; $5e4e: $20 $72

	inc  b                                           ; $5e50: $04
	call nc, $9759                                   ; $5e51: $d4 $59 $97
	sub  [hl]                                        ; $5e54: $96
	sbc  a                                           ; $5e55: $9f
	dec  c                                           ; $5e56: $0d
	nop                                              ; $5e57: $00
	ld   a, [bc]                                     ; $5e58: $0a
	ld   bc, $0701                                   ; $5e59: $01 $01 $07
	inc  b                                           ; $5e5c: $04
	rst  $28                                         ; $5e5d: $ef
	ld   a, b                                        ; $5e5e: $78
	inc  b                                           ; $5e5f: $04
	rst  $28                                         ; $5e60: $ef
	ld   a, b                                        ; $5e61: $78
	add  b                                           ; $5e62: $80
	add  c                                           ; $5e63: $81
	ld   e, l                                        ; $5e64: $5d
	or   b                                           ; $5e65: $b0
	xor  a                                           ; $5e66: $af
	ld   a, h                                        ; $5e67: $7c
	ld   [bc], a                                     ; $5e68: $02
	inc  bc                                          ; $5e69: $03
	ld   bc, $0d08                                   ; $5e6a: $01 $08 $0d
	ld   h, c                                        ; $5e6d: $61
	sbc  d                                           ; $5e6e: $9a
	ld   a, l                                        ; $5e6f: $7d
	sbc  [hl]                                        ; $5e70: $9e
	ld   [hl], a                                     ; $5e71: $77
	ld   d, h                                        ; $5e72: $54
	ld   d, d                                        ; $5e73: $52
	ld   d, h                                        ; $5e74: $54
	ld   [bc], a                                     ; $5e75: $02
	jp   Jump_061_6559                               ; $5e76: $c3 $59 $65


	sub  a                                           ; $5e79: $97
	ld   sp, hl                                      ; $5e7a: $f9
	dec  c                                           ; $5e7b: $0d
	nop                                              ; $5e7c: $00
	ld   a, [bc]                                     ; $5e7d: $0a
	rrca                                             ; $5e7e: $0f
	nop                                              ; $5e7f: $00
	ld   bc, $b001                                   ; $5e80: $01 $01 $b0
	xor  a                                           ; $5e83: $af
	ld   a, h                                        ; $5e84: $7c
	ld   [bc], a                                     ; $5e85: $02
	inc  bc                                          ; $5e86: $03
	ld   [hl], c                                     ; $5e87: $71
	ld   [hl], h                                     ; $5e88: $74
	ld   [bc], a                                     ; $5e89: $02
	sbc  l                                           ; $5e8a: $9d
	ld   d, h                                        ; $5e8b: $54
	halt                                             ; $5e8c: $76
	rst  $38                                         ; $5e8d: $ff
	rst  $38                                         ; $5e8e: $ff
	dec  c                                           ; $5e8f: $0d
	nop                                              ; $5e90: $00
	ld   a, [bc]                                     ; $5e91: $0a
	add  hl, de                                      ; $5e92: $19
	dec  b                                           ; $5e93: $05
	inc  bc                                          ; $5e94: $03
	inc  b                                           ; $5e95: $04
	ld   c, $04                                      ; $5e96: $0e $04
	ld   d, $02                                      ; $5e98: $16 $02
	xor  b                                           ; $5e9a: $a8
	ld   a, h                                        ; $5e9b: $7c
	inc  bc                                          ; $5e9c: $03
	ld   a, e                                        ; $5e9d: $7b
	dec  b                                           ; $5e9e: $05
	ld   de, $00f9                                   ; $5e9f: $11 $f9 $00
	nop                                              ; $5ea2: $00
	dec  b                                           ; $5ea3: $05
	ld   [hl], a                                     ; $5ea4: $77
	ld   a, h                                        ; $5ea5: $7c
	dec  b                                           ; $5ea6: $05
	ld   a, b                                        ; $5ea7: $78
	inc  bc                                          ; $5ea8: $03
	inc  de                                          ; $5ea9: $13
	sbc  b                                           ; $5eaa: $98
	ld   sp, hl                                      ; $5eab: $f9
	nop                                              ; $5eac: $00
	ld   bc, $9365                                   ; $5ead: $01 $65 $93
	adc  l                                           ; $5eb0: $8d
	ld   e, d                                        ; $5eb1: $5a
	or   b                                           ; $5eb2: $b0
	xor  a                                           ; $5eb3: $af
	dec  b                                           ; $5eb4: $05
	pop  af                                          ; $5eb5: $f1
	ld   l, a                                        ; $5eb6: $6f
	nop                                              ; $5eb7: $00
	ld   [bc], a                                     ; $5eb8: $02
	rlca                                             ; $5eb9: $07
	ld   [hl], b                                     ; $5eba: $70
	inc  bc                                          ; $5ebb: $03
	ld   [bc], a                                     ; $5ebc: $02
	inc  bc                                          ; $5ebd: $03
	ld   bc, $2000                                   ; $5ebe: $01 $00 $20
	nop                                              ; $5ec1: $00

jr_061_5ec2:
	rlca                                             ; $5ec2: $07
	and  e                                           ; $5ec3: $a3
	inc  bc                                          ; $5ec4: $03
	ld   [bc], a                                     ; $5ec5: $02
	inc  bc                                          ; $5ec6: $03
	ld   bc, $2001                                   ; $5ec7: $01 $01 $20
	nop                                              ; $5eca: $00
	rlca                                             ; $5ecb: $07
	pop  hl                                          ; $5ecc: $e1
	inc  bc                                          ; $5ecd: $03
	ld   [bc], a                                     ; $5ece: $02
	inc  bc                                          ; $5ecf: $03
	ld   bc, $2002                                   ; $5ed0: $01 $02 $20
	nop                                              ; $5ed3: $00
	ld   b, $0e                                      ; $5ed4: $06 $0e
	inc  bc                                          ; $5ed6: $03
	rrca                                             ; $5ed7: $0f
	inc  bc                                          ; $5ed8: $03
	nop                                              ; $5ed9: $00
	ld   bc, $5477                                   ; $5eda: $01 $77 $54
	ld   h, l                                        ; $5edd: $65
	ld   l, l                                        ; $5ede: $6d
	ld   a, h                                        ; $5edf: $7c
	ld   sp, hl                                      ; $5ee0: $f9
	ld   [$5d00], sp                                 ; $5ee1: $08 $00 $5d
	and  c                                           ; $5ee4: $a1
	sbc  a                                           ; $5ee5: $9f
	dec  c                                           ; $5ee6: $0d
	dec  b                                           ; $5ee7: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ee8: $cf
	adc  a                                           ; $5ee9: $8f
	ld   e, c                                        ; $5eea: $59
	sub  a                                           ; $5eeb: $97
	ld   [bc], a                                     ; $5eec: $02
	ld   h, l                                        ; $5eed: $65
	ld   d, [hl]                                     ; $5eee: $56
	ld   [bc], a                                     ; $5eef: $02
	ld   b, b                                        ; $5ef0: $40
	and  c                                           ; $5ef1: $a1
	ld   [hl], l                                     ; $5ef2: $75
	ld   l, a                                        ; $5ef3: $6f
	sub  c                                           ; $5ef4: $91
	dec  c                                           ; $5ef5: $0d
	pop  bc                                          ; $5ef6: $c1
	db   $e3                                         ; $5ef7: $e3
	ld   h, [hl]                                     ; $5ef8: $66
	sub  c                                           ; $5ef9: $91
	ld   a, b                                        ; $5efa: $78
	ld   d, d                                        ; $5efb: $52
	sbc  a                                           ; $5efc: $9f
	dec  c                                           ; $5efd: $0d
	nop                                              ; $5efe: $00
	ld   a, [bc]                                     ; $5eff: $0a
	ld   bc, $c803                                   ; $5f00: $01 $03 $c8
	ld   a, l                                        ; $5f03: $7d
	sbc  [hl]                                        ; $5f04: $9e
	ld   bc, $0407                                   ; $5f05: $01 $07 $04
	ld   c, $04                                      ; $5f08: $0e $04
	ld   d, $02                                      ; $5f0a: $16 $02
	xor  b                                           ; $5f0c: $a8
	ld   a, h                                        ; $5f0d: $7c
	inc  bc                                          ; $5f0e: $03
	ld   a, e                                        ; $5f0f: $7b
	dec  b                                           ; $5f10: $05
	ld   de, $0801                                   ; $5f11: $11 $01 $08
	dec  c                                           ; $5f14: $0d
	ld   h, [hl]                                     ; $5f15: $66
	sub  c                                           ; $5f16: $91
	ld   a, b                                        ; $5f17: $78
	ld   d, d                                        ; $5f18: $52
	ld   e, c                                        ; $5f19: $59
	halt                                             ; $5f1a: $76
	dec  b                                           ; $5f1b: $05
	pop  de                                          ; $5f1c: $d1
	ld   d, h                                        ; $5f1d: $54
	and  c                                           ; $5f1e: $a1
	ld   l, [hl]                                     ; $5f1f: $6e
	ld   e, a                                        ; $5f20: $5f
	ld   [hl], a                                     ; $5f21: $77
	sbc  a                                           ; $5f22: $9f
	dec  c                                           ; $5f23: $0d
	ld   l, [hl]                                     ; $5f24: $6e
	halt                                             ; $5f25: $76
	ld   h, l                                        ; $5f26: $65
	ld   l, l                                        ; $5f27: $6d
	sub  a                                           ; $5f28: $97
	sbc  [hl]                                        ; $5f29: $9e
	inc  bc                                          ; $5f2a: $03
	xor  c                                           ; $5f2b: $a9
	ld   e, d                                        ; $5f2c: $5a
	sbc  [hl]                                        ; $5f2d: $9e
	ld   [hl], a                                     ; $5f2e: $77
	ld   d, h                                        ; $5f2f: $54
	ld   h, l                                        ; $5f30: $65
	ld   [hl], h                                     ; $5f31: $74
	ld   sp, hl                                      ; $5f32: $f9
	dec  c                                           ; $5f33: $0d
	nop                                              ; $5f34: $00
	ld   a, [bc]                                     ; $5f35: $0a
	ld   b, $1d                                      ; $5f36: $06 $1d
	inc  b                                           ; $5f38: $04
	rrca                                             ; $5f39: $0f
	nop                                              ; $5f3a: $00
	ld   bc, $0401                                   ; $5f3b: $01 $01 $04
	ld   c, $04                                      ; $5f3e: $0e $04
	ld   d, $02                                      ; $5f40: $16 $02
	xor  b                                           ; $5f42: $a8
	ld   a, h                                        ; $5f43: $7c
	inc  bc                                          ; $5f44: $03
	ld   a, e                                        ; $5f45: $7b
	dec  b                                           ; $5f46: $05
	ld   de, $9166                                   ; $5f47: $11 $66 $91
	ld   a, b                                        ; $5f4a: $78
	ld   d, d                                        ; $5f4b: $52
	ld   [hl], l                                     ; $5f4c: $75
	ld   h, a                                        ; $5f4d: $67
	ld   e, c                                        ; $5f4e: $59
	ld   sp, hl                                      ; $5f4f: $f9
	dec  c                                           ; $5f50: $0d
	nop                                              ; $5f51: $00
	ld   a, [bc]                                     ; $5f52: $0a
	rrca                                             ; $5f53: $0f
	inc  bc                                          ; $5f54: $03
	nop                                              ; $5f55: $00
	ld   bc, $766e                                   ; $5f56: $01 $6e $76
	ld   h, l                                        ; $5f59: $65
	ld   l, l                                        ; $5f5a: $6d
	sub  a                                           ; $5f5b: $97
	sbc  [hl]                                        ; $5f5c: $9e
	inc  bc                                          ; $5f5d: $03
	xor  c                                           ; $5f5e: $a9
	ld   e, d                                        ; $5f5f: $5a
	sbc  [hl]                                        ; $5f60: $9e
	ld   [hl], a                                     ; $5f61: $77
	ld   d, h                                        ; $5f62: $54
	ld   h, l                                        ; $5f63: $65
	ld   [hl], h                                     ; $5f64: $74
	ld   sp, hl                                      ; $5f65: $f9
	dec  c                                           ; $5f66: $0d
	nop                                              ; $5f67: $00
	ld   a, [bc]                                     ; $5f68: $0a
	ld   b, $1d                                      ; $5f69: $06 $1d
	inc  b                                           ; $5f6b: $04
	rrca                                             ; $5f6c: $0f
	nop                                              ; $5f6d: $00
	ld   bc, $0501                                   ; $5f6e: $01 $01 $05
	ld   [hl], a                                     ; $5f71: $77
	ld   a, h                                        ; $5f72: $7c
	dec  b                                           ; $5f73: $05
	ld   a, b                                        ; $5f74: $78
	inc  bc                                          ; $5f75: $03
	inc  de                                          ; $5f76: $13
	sbc  b                                           ; $5f77: $98
	ld   [hl], l                                     ; $5f78: $75
	ld   h, a                                        ; $5f79: $67
	sub  [hl]                                        ; $5f7a: $96
	sbc  a                                           ; $5f7b: $9f
	dec  c                                           ; $5f7c: $0d
	ld   e, e                                        ; $5f7d: $5b
	ld   [hl], c                                     ; $5f7e: $71
	halt                                             ; $5f7f: $76
	rst  $38                                         ; $5f80: $ff
	rst  $38                                         ; $5f81: $ff
	sbc  a                                           ; $5f82: $9f
	dec  c                                           ; $5f83: $0d
	ld   a, b                                        ; $5f84: $78
	and  c                                           ; $5f85: $a1
	ld   e, c                                        ; $5f86: $59
	sbc  [hl]                                        ; $5f87: $9e
	ld   h, c                                        ; $5f88: $61
	sbc  l                                           ; $5f89: $9d
	ld   d, d                                        ; $5f8a: $52
	ld   a, b                                        ; $5f8b: $78
	db   $fc                                         ; $5f8c: $fc
	sbc  a                                           ; $5f8d: $9f
	dec  c                                           ; $5f8e: $0d
	nop                                              ; $5f8f: $00
	ld   a, [bc]                                     ; $5f90: $0a
	rrca                                             ; $5f91: $0f
	inc  bc                                          ; $5f92: $03
	nop                                              ; $5f93: $00
	ld   bc, $766e                                   ; $5f94: $01 $6e $76
	ld   h, l                                        ; $5f97: $65
	ld   l, l                                        ; $5f98: $6d
	sub  a                                           ; $5f99: $97
	sbc  [hl]                                        ; $5f9a: $9e
	inc  bc                                          ; $5f9b: $03
	xor  c                                           ; $5f9c: $a9
	ld   e, d                                        ; $5f9d: $5a
	sbc  [hl]                                        ; $5f9e: $9e
	ld   [hl], a                                     ; $5f9f: $77
	ld   d, h                                        ; $5fa0: $54
	ld   h, l                                        ; $5fa1: $65
	ld   [hl], h                                     ; $5fa2: $74
	ld   sp, hl                                      ; $5fa3: $f9
	dec  c                                           ; $5fa4: $0d
	nop                                              ; $5fa5: $00
	ld   a, [bc]                                     ; $5fa6: $0a
	ld   b, $bd                                      ; $5fa7: $06 $bd
	add  hl, bc                                      ; $5fa9: $09
	rrca                                             ; $5faa: $0f
	nop                                              ; $5fab: $00
	ld   bc, $b001                                   ; $5fac: $01 $01 $b0
	xor  a                                           ; $5faf: $af
	and  b                                           ; $5fb0: $a0
	dec  b                                           ; $5fb1: $05
	pop  af                                          ; $5fb2: $f1
	ld   [hl], d                                     ; $5fb3: $72
	ld   a, h                                        ; $5fb4: $7c
	ld   e, d                                        ; $5fb5: $5a
	ld   h, l                                        ; $5fb6: $65
	sub  e                                           ; $5fb7: $93
	adc  l                                           ; $5fb8: $8d
	ld   a, h                                        ; $5fb9: $7c
	inc  bc                                          ; $5fba: $03
	add  d                                           ; $5fbb: $82
	ld   e, d                                        ; $5fbc: $5a
	dec  c                                           ; $5fbd: $0d
	ld   d, d                                        ; $5fbe: $52
	sbc  c                                           ; $5fbf: $99
	and  c                                           ; $5fc0: $a1
	ld   h, [hl]                                     ; $5fc1: $66
	sub  c                                           ; $5fc2: $91
	ld   a, b                                        ; $5fc3: $78
	ld   d, d                                        ; $5fc4: $52
	and  c                                           ; $5fc5: $a1
	ld   [hl], l                                     ; $5fc6: $75
	ld   h, a                                        ; $5fc7: $67
	ld   e, c                                        ; $5fc8: $59
	ld   sp, hl                                      ; $5fc9: $f9
	dec  c                                           ; $5fca: $0d
	nop                                              ; $5fcb: $00
	ld   a, [bc]                                     ; $5fcc: $0a
	rrca                                             ; $5fcd: $0f
	inc  bc                                          ; $5fce: $03
	inc  b                                           ; $5fcf: $04
	ld   bc, $766e                                   ; $5fd0: $01 $6e $76
	ld   h, l                                        ; $5fd3: $65
	ld   l, l                                        ; $5fd4: $6d
	sub  a                                           ; $5fd5: $97
	sbc  [hl]                                        ; $5fd6: $9e
	inc  bc                                          ; $5fd7: $03
	xor  c                                           ; $5fd8: $a9
	ld   e, d                                        ; $5fd9: $5a
	sbc  [hl]                                        ; $5fda: $9e
	ld   [hl], a                                     ; $5fdb: $77
	ld   d, h                                        ; $5fdc: $54
	ld   h, l                                        ; $5fdd: $65
	ld   [hl], h                                     ; $5fde: $74
	ld   sp, hl                                      ; $5fdf: $f9
	dec  c                                           ; $5fe0: $0d
	nop                                              ; $5fe1: $00
	ld   a, [bc]                                     ; $5fe2: $0a
	ld   b, $0e                                      ; $5fe3: $06 $0e
	inc  c                                           ; $5fe5: $0c
	add  hl, de                                      ; $5fe6: $19
	dec  b                                           ; $5fe7: $05
	inc  bc                                          ; $5fe8: $03
	ld   h, e                                        ; $5fe9: $63
	ld   e, l                                        ; $5fea: $5d
	sub  a                                           ; $5feb: $97
	ld   h, e                                        ; $5fec: $63
	and  c                                           ; $5fed: $a1
	ld   e, d                                        ; $5fee: $5a
	rst  $38                                         ; $5fef: $ff
	rst  $38                                         ; $5ff0: $ff
	nop                                              ; $5ff1: $00
	nop                                              ; $5ff2: $00
	and  e                                           ; $5ff3: $a3
	and  l                                           ; $5ff4: $a5
	db   $ec                                         ; $5ff5: $ec
	cp   d                                           ; $5ff6: $ba
	ld   e, d                                        ; $5ff7: $5a
	rst  $38                                         ; $5ff8: $ff
	rst  $38                                         ; $5ff9: $ff
	nop                                              ; $5ffa: $00
	ld   bc, $0e04                                   ; $5ffb: $01 $04 $0e
	inc  bc                                          ; $5ffe: $03
	sub  b                                           ; $5fff: $90
	ld   h, e                                        ; $6000: $63
	and  c                                           ; $6001: $a1
	ld   e, d                                        ; $6002: $5a
	rst  $38                                         ; $6003: $ff
	rst  $38                                         ; $6004: $ff
	nop                                              ; $6005: $00
	ld   [bc], a                                     ; $6006: $02
	rlca                                             ; $6007: $07
	call $0204                                       ; $6008: $cd $04 $02
	inc  bc                                          ; $600b: $03
	ld   bc, $2000                                   ; $600c: $01 $00 $20
	nop                                              ; $600f: $00
	rlca                                             ; $6010: $07
	ld   l, e                                        ; $6011: $6b
	ld   b, $02                                      ; $6012: $06 $02
	inc  bc                                          ; $6014: $03
	ld   bc, $2001                                   ; $6015: $01 $01 $20
	nop                                              ; $6018: $00
	rlca                                             ; $6019: $07
	adc  $08                                         ; $601a: $ce $08
	ld   [bc], a                                     ; $601c: $02
	inc  bc                                          ; $601d: $03
	ld   bc, $2002                                   ; $601e: $01 $02 $20
	nop                                              ; $6021: $00
	ld   b, $5c                                      ; $6022: $06 $5c
	inc  b                                           ; $6024: $04
	inc  e                                           ; $6025: $1c
	inc  bc                                          ; $6026: $03
	inc  bc                                          ; $6027: $03
	inc  bc                                          ; $6028: $03
	ld   bc, $4904                                   ; $6029: $01 $04 $49
	and  b                                           ; $602c: $a0
	ld   [bc], a                                     ; $602d: $02
	ld   h, l                                        ; $602e: $65
	ld   d, [hl]                                     ; $602f: $56
	ld   [bc], a                                     ; $6030: $02
	ld   b, b                                        ; $6031: $40
	and  c                                           ; $6032: $a1
	ld   [hl], l                                     ; $6033: $75
	sbc  c                                           ; $6034: $99
	ld   a, h                                        ; $6035: $7c
	ld   sp, hl                                      ; $6036: $f9
	dec  c                                           ; $6037: $0d
	inc  bc                                          ; $6038: $03
	ret  z                                           ; $6039: $c8

	ld   a, l                                        ; $603a: $7d
	sbc  [hl]                                        ; $603b: $9e
	ld   [bc], a                                     ; $603c: $02
	sub  l                                           ; $603d: $95
	inc  b                                           ; $603e: $04
	jr   jr_061_609b                                 ; $603f: $18 $5a

	ld   [hl], d                                     ; $6041: $72
	ld   d, d                                        ; $6042: $52
	ld   l, l                                        ; $6043: $6d
	sbc  l                                           ; $6044: $9d
	sub  [hl]                                        ; $6045: $96
	sbc  a                                           ; $6046: $9f
	dec  c                                           ; $6047: $0d
	nop                                              ; $6048: $00
	ld   a, [bc]                                     ; $6049: $0a
	inc  e                                           ; $604a: $1c
	inc  bc                                          ; $604b: $03
	nop                                              ; $604c: $00
	nop                                              ; $604d: $00
	ld   bc, $0e04                                   ; $604e: $01 $04 $0e
	inc  b                                           ; $6051: $04
	ld   d, $02                                      ; $6052: $16 $02
	xor  b                                           ; $6054: $a8
	ld   a, h                                        ; $6055: $7c
	inc  bc                                          ; $6056: $03
	ld   a, e                                        ; $6057: $7b
	dec  b                                           ; $6058: $05
	ld   de, $0df9                                   ; $6059: $11 $f9 $0d
	ld   l, [hl]                                     ; $605c: $6e
	halt                                             ; $605d: $76
	ld   h, l                                        ; $605e: $65
	ld   l, l                                        ; $605f: $6d
	sub  a                                           ; $6060: $97
	rst  $38                                         ; $6061: $ff
	rst  $38                                         ; $6062: $ff
	ld   h, e                                        ; $6063: $63
	ld   e, l                                        ; $6064: $5d
	sub  a                                           ; $6065: $97
	rst  $38                                         ; $6066: $ff
	rst  $38                                         ; $6067: $ff
	dec  c                                           ; $6068: $0d
	ld   h, [hl]                                     ; $6069: $66
	sub  c                                           ; $606a: $91
	ld   a, b                                        ; $606b: $78
	ld   d, d                                        ; $606c: $52
	ld   e, c                                        ; $606d: $59
	ld   h, l                                        ; $606e: $65
	sub  a                                           ; $606f: $97
	ld   sp, hl                                      ; $6070: $f9
	dec  c                                           ; $6071: $0d
	nop                                              ; $6072: $00
	ld   a, [bc]                                     ; $6073: $0a
	ld   bc, $0008                                   ; $6074: $01 $08 $00
	ld   e, l                                        ; $6077: $5d
	and  c                                           ; $6078: $a1
	sbc  a                                           ; $6079: $9f
	dec  c                                           ; $607a: $0d
	ld   h, e                                        ; $607b: $63
	ld   e, l                                        ; $607c: $5d
	sub  a                                           ; $607d: $97
	ld   a, h                                        ; $607e: $7c
	inc  bc                                          ; $607f: $03
	ld   c, e                                        ; $6080: $4b
	add  [hl]                                        ; $6081: $86
	ld   [bc], a                                     ; $6082: $02
	ld   a, a                                        ; $6083: $7f
	ld   e, e                                        ; $6084: $5b
	adc  h                                           ; $6085: $8c
	ld   h, l                                        ; $6086: $65
	sub  l                                           ; $6087: $95
	ld   d, h                                        ; $6088: $54
	sbc  a                                           ; $6089: $9f
	dec  c                                           ; $608a: $0d
	nop                                              ; $608b: $00
	ld   a, [bc]                                     ; $608c: $0a
	dec  c                                           ; $608d: $0d
	nop                                              ; $608e: $00
	nop                                              ; $608f: $00
	rrca                                             ; $6090: $0f
	nop                                              ; $6091: $00
	ld   bc, $9c06                                   ; $6092: $01 $06 $9c
	rlca                                             ; $6095: $07
	rrca                                             ; $6096: $0f
	nop                                              ; $6097: $00
	ld   bc, $6301                                   ; $6098: $01 $01 $63

jr_061_609b:
	ld   e, l                                        ; $609b: $5d
	sub  a                                           ; $609c: $97
	ld   h, e                                        ; $609d: $63
	and  c                                           ; $609e: $a1
	ld   h, [hl]                                     ; $609f: $66
	sub  c                                           ; $60a0: $91
	ld   a, b                                        ; $60a1: $78
	ld   d, d                                        ; $60a2: $52
	ld   [hl], l                                     ; $60a3: $75
	ld   h, a                                        ; $60a4: $67
	ld   e, c                                        ; $60a5: $59
	ld   sp, hl                                      ; $60a6: $f9
	dec  c                                           ; $60a7: $0d
	dec  b                                           ; $60a8: $05
	db   $10                                         ; $60a9: $10
	inc  bc                                          ; $60aa: $03
	ld   a, c                                        ; $60ab: $79
	ld   a, h                                        ; $60ac: $7c
	ld   [bc], a                                     ; $60ad: $02
	sbc  c                                           ; $60ae: $99
	ld   [bc], a                                     ; $60af: $02
	rra                                              ; $60b0: $1f
	ld   a, c                                        ; $60b1: $79
	ld   [bc], a                                     ; $60b2: $02
	jp   nc, Jump_061_745f                           ; $60b3: $d2 $5f $74

	dec  c                                           ; $60b6: $0d
	ld   [bc], a                                     ; $60b7: $02
	and  c                                           ; $60b8: $a1
	and  b                                           ; $60b9: $a0
	ld   e, e                                        ; $60ba: $5b
	ld   e, c                                        ; $60bb: $59
	ld   l, c                                        ; $60bc: $69
	ld   [hl], h                                     ; $60bd: $74
	inc  bc                                          ; $60be: $03
	ld   a, e                                        ; $60bf: $7b
	dec  b                                           ; $60c0: $05
	ld   de, hScriptOpcodeParams                                   ; $60c1: $11 $a0 $ff
	rst  $38                                         ; $60c4: $ff
	dec  c                                           ; $60c5: $0d
	nop                                              ; $60c6: $00
	ld   a, [bc]                                     ; $60c7: $0a
	rrca                                             ; $60c8: $0f
	inc  bc                                          ; $60c9: $03
	nop                                              ; $60ca: $00
	ld   bc, $599d                                   ; $60cb: $01 $9d $59
	ld   [hl], c                                     ; $60ce: $71
	ld   l, l                                        ; $60cf: $6d
	sbc  l                                           ; $60d0: $9d
	sbc  a                                           ; $60d1: $9f
	dec  c                                           ; $60d2: $0d
	ld   h, [hl]                                     ; $60d3: $66
	sub  c                                           ; $60d4: $91
	sbc  [hl]                                        ; $60d5: $9e
	ld   h, e                                        ; $60d6: $63
	ld   e, l                                        ; $60d7: $5d
	sub  a                                           ; $60d8: $97
	ld   a, h                                        ; $60d9: $7c
	inc  bc                                          ; $60da: $03
	ld   c, e                                        ; $60db: $4b
	add  [hl]                                        ; $60dc: $86
	dec  c                                           ; $60dd: $0d
	ld   [bc], a                                     ; $60de: $02
	ld   a, a                                        ; $60df: $7f
	ld   e, e                                        ; $60e0: $5b
	adc  h                                           ; $60e1: $8c
	ld   h, l                                        ; $60e2: $65
	sub  l                                           ; $60e3: $95
	ld   d, h                                        ; $60e4: $54
	sbc  a                                           ; $60e5: $9f
	dec  c                                           ; $60e6: $0d
	nop                                              ; $60e7: $00
	ld   a, [bc]                                     ; $60e8: $0a
	dec  c                                           ; $60e9: $0d
	nop                                              ; $60ea: $00
	nop                                              ; $60eb: $00
	rrca                                             ; $60ec: $0f
	nop                                              ; $60ed: $00
	ld   bc, $4e23                                   ; $60ee: $01 $23 $4e
	inc  e                                           ; $60f1: $1c
	ld   bc, $0000                                   ; $60f2: $01 $00 $00
	ld   bc, $9750                                   ; $60f5: $01 $50 $97
	sbc  [hl]                                        ; $60f8: $9e
	rst  JumpTable                                         ; $60f9: $df
	db   $ec                                         ; $60fa: $ec
	and  e                                           ; $60fb: $a3
	ld   h, e                                        ; $60fc: $63
	and  c                                           ; $60fd: $a1
	sbc  [hl]                                        ; $60fe: $9e
	dec  c                                           ; $60ff: $0d
	ld   [$6300], sp                                 ; $6100: $08 $00 $63
	and  c                                           ; $6103: $a1
	sbc  a                                           ; $6104: $9f
	dec  c                                           ; $6105: $0d
	ld   [hl], a                                     ; $6106: $77
	ld   d, h                                        ; $6107: $54
	ld   e, c                                        ; $6108: $59
	ld   h, l                                        ; $6109: $65
	ld   l, l                                        ; $610a: $6d
	ld   a, h                                        ; $610b: $7c
	ld   [hl], l                                     ; $610c: $75
	ld   h, a                                        ; $610d: $67
	ld   e, c                                        ; $610e: $59
	ld   sp, hl                                      ; $610f: $f9
	dec  c                                           ; $6110: $0d
	nop                                              ; $6111: $00
	ld   a, [bc]                                     ; $6112: $0a
	rrca                                             ; $6113: $0f
	inc  bc                                          ; $6114: $03
	inc  b                                           ; $6115: $04
	ld   bc, $8b03                                   ; $6116: $01 $03 $8b
	ld   a, l                                        ; $6119: $7d
	rst  $38                                         ; $611a: $ff
	rst  $38                                         ; $611b: $ff
	rst  $38                                         ; $611c: $ff
	rst  $38                                         ; $611d: $ff
	dec  c                                           ; $611e: $0d
	ld   e, c                                        ; $611f: $59
	ld   e, l                                        ; $6120: $5d
	ld   e, c                                        ; $6121: $59
	ld   e, l                                        ; $6122: $5d
	ld   h, l                                        ; $6123: $65
	ld   e, c                                        ; $6124: $59
	ld   h, [hl]                                     ; $6125: $66
	ld   e, c                                        ; $6126: $59
	rst  $38                                         ; $6127: $ff
	rst  $38                                         ; $6128: $ff
	dec  c                                           ; $6129: $0d
	halt                                             ; $612a: $76
	sbc  [hl]                                        ; $612b: $9e
	ld   d, d                                        ; $612c: $52
	ld   d, h                                        ; $612d: $54
	ld   h, c                                        ; $612e: $61
	halt                                             ; $612f: $76
	ld   a, b                                        ; $6130: $78
	and  c                                           ; $6131: $a1
	ld   l, [hl]                                     ; $6132: $6e
	ld   e, a                                        ; $6133: $5f
	ld   [hl], a                                     ; $6134: $77
	rst  $38                                         ; $6135: $ff
	rst  $38                                         ; $6136: $ff
	dec  c                                           ; $6137: $0d
	nop                                              ; $6138: $00
	ld   a, [bc]                                     ; $6139: $0a
	inc  e                                           ; $613a: $1c
	ld   bc, $0404                                   ; $613b: $01 $04 $04
	ld   bc, $8d67                                   ; $613e: $01 $67 $8d
	adc  h                                           ; $6141: $8c
	ld   l, c                                        ; $6142: $69
	and  c                                           ; $6143: $a1
	rst  $38                                         ; $6144: $ff
	rst  $38                                         ; $6145: $ff
	dec  c                                           ; $6146: $0d
	ld   l, e                                        ; $6147: $6b
	ld   d, h                                        ; $6148: $54
	ld   [hl], l                                     ; $6149: $75
	ld   h, a                                        ; $614a: $67
	sbc  a                                           ; $614b: $9f
	inc  b                                           ; $614c: $04
	rst  $28                                         ; $614d: $ef
	inc  b                                           ; $614e: $04
	dec  bc                                          ; $614f: $0b
	ld   a, c                                        ; $6150: $79
	or   b                                           ; $6151: $b0
	xor  a                                           ; $6152: $af
	and  b                                           ; $6153: $a0
	dec  b                                           ; $6154: $05
	pop  af                                          ; $6155: $f1
	ld   [hl], d                                     ; $6156: $72
	dec  c                                           ; $6157: $0d
	ld   [bc], a                                     ; $6158: $02
	inc  bc                                          ; $6159: $03
	ld   a, l                                        ; $615a: $7d
	ld   d, b                                        ; $615b: $50
	ld   l, l                                        ; $615c: $6d
	ld   h, l                                        ; $615d: $65
	ld   [hl], l                                     ; $615e: $75
	ld   h, a                                        ; $615f: $67
	sbc  a                                           ; $6160: $9f
	dec  c                                           ; $6161: $0d
	nop                                              ; $6162: $00
	ld   a, [bc]                                     ; $6163: $0a
	ld   bc, $1005                                   ; $6164: $01 $05 $10
	inc  bc                                          ; $6167: $03
	ld   a, c                                        ; $6168: $79
	ld   a, h                                        ; $6169: $7c
	ld   [bc], a                                     ; $616a: $02
	sbc  c                                           ; $616b: $99
	ld   [bc], a                                     ; $616c: $02
	rra                                              ; $616d: $1f
	ld   a, c                                        ; $616e: $79
	ld   [bc], a                                     ; $616f: $02
	jp   nc, Jump_061_745f                           ; $6170: $d2 $5f $74

	dec  c                                           ; $6173: $0d
	inc  b                                           ; $6174: $04
	ld   c, $04                                      ; $6175: $0e $04
	ld   d, $02                                      ; $6177: $16 $02
	xor  b                                           ; $6179: $a8
	ld   a, h                                        ; $617a: $7c
	inc  bc                                          ; $617b: $03
	ld   a, e                                        ; $617c: $7b
	dec  b                                           ; $617d: $05
	ld   de, hScriptOpcodeParams                                   ; $617e: $11 $a0 $ff
	rst  $38                                         ; $6181: $ff
	dec  c                                           ; $6182: $0d
	nop                                              ; $6183: $00
	ld   a, [bc]                                     ; $6184: $0a
	rrca                                             ; $6185: $0f
	inc  bc                                          ; $6186: $03
	nop                                              ; $6187: $00
	ld   bc, $599d                                   ; $6188: $01 $9d $59
	ld   [hl], c                                     ; $618b: $71
	ld   l, l                                        ; $618c: $6d
	sbc  l                                           ; $618d: $9d
	sbc  a                                           ; $618e: $9f
	ld   h, e                                        ; $618f: $63
	ld   e, l                                        ; $6190: $5d
	sub  a                                           ; $6191: $97
	sbc  a                                           ; $6192: $9f
	dec  c                                           ; $6193: $0d
	ld   [hl], l                                     ; $6194: $75
	sub  b                                           ; $6195: $90
	ld   a, e                                        ; $6196: $7b
	sbc  [hl]                                        ; $6197: $9e
	inc  b                                           ; $6198: $04
	rst  $28                                         ; $6199: $ef
	inc  b                                           ; $619a: $04
	dec  bc                                          ; $619b: $0b
	ld   a, c                                        ; $619c: $79
	or   b                                           ; $619d: $b0
	xor  a                                           ; $619e: $af
	and  b                                           ; $619f: $a0
	dec  b                                           ; $61a0: $05
	pop  af                                          ; $61a1: $f1
	ld   [hl], d                                     ; $61a2: $72
	ld   a, h                                        ; $61a3: $7c
	ld   a, l                                        ; $61a4: $7d
	dec  c                                           ; $61a5: $0d
	ld   h, e                                        ; $61a6: $63
	ld   h, a                                        ; $61a7: $67
	ld   e, d                                        ; $61a8: $5a
	ld   a, c                                        ; $61a9: $79
	inc  b                                           ; $61aa: $04
	cp   l                                           ; $61ab: $bd
	dec  b                                           ; $61ac: $05
	ld   l, b                                        ; $61ad: $68
	ld   h, [hl]                                     ; $61ae: $66
	sub  c                                           ; $61af: $91
	ld   a, b                                        ; $61b0: $78
	ld   d, d                                        ; $61b1: $52
	ld   sp, hl                                      ; $61b2: $f9
	dec  c                                           ; $61b3: $0d
	nop                                              ; $61b4: $00
	ld   a, [bc]                                     ; $61b5: $0a
	rrca                                             ; $61b6: $0f
	inc  bc                                          ; $61b7: $03
	inc  bc                                          ; $61b8: $03
	ld   bc, $7b03                                   ; $61b9: $01 $03 $7b
	dec  b                                           ; $61bc: $05
	ld   de, $9778                                   ; $61bd: $11 $78 $97
	adc  l                                           ; $61c0: $8d
	and  c                                           ; $61c1: $a1
	ld   a, b                                        ; $61c2: $78
	ld   a, c                                        ; $61c3: $79
	inc  bc                                          ; $61c4: $03
	and  l                                           ; $61c5: $a5
	ld   e, c                                        ; $61c6: $59
	ld   e, a                                        ; $61c7: $5f
	ld   [hl], h                                     ; $61c8: $74
	dec  c                                           ; $61c9: $0d
	inc  b                                           ; $61ca: $04
	xor  l                                           ; $61cb: $ad
	ld   [bc], a                                     ; $61cc: $02
	xor  c                                           ; $61cd: $a9
	ld   a, c                                        ; $61ce: $79
	sub  d                                           ; $61cf: $92
	sbc  d                                           ; $61d0: $9a
	ld   a, [hl]                                     ; $61d1: $7e
	ld   d, d                                        ; $61d2: $52
	ld   d, d                                        ; $61d3: $52
	ld   h, [hl]                                     ; $61d4: $66
	sub  c                                           ; $61d5: $91
	ld   a, b                                        ; $61d6: $78
	ld   d, d                                        ; $61d7: $52
	sbc  a                                           ; $61d8: $9f
	dec  c                                           ; $61d9: $0d
	nop                                              ; $61da: $00
	ld   a, [bc]                                     ; $61db: $0a
	ld   bc, $9166                                   ; $61dc: $01 $66 $91
	ld   d, b                                        ; $61df: $50
	sbc  [hl]                                        ; $61e0: $9e
	sub  [hl]                                        ; $61e1: $96
	sbc  e                                           ; $61e2: $9b
	ld   h, l                                        ; $61e3: $65
	ld   e, l                                        ; $61e4: $5d
	ld   a, e                                        ; $61e5: $7b
	sbc  a                                           ; $61e6: $9f
	dec  c                                           ; $61e7: $0d
	nop                                              ; $61e8: $00
	ld   a, [bc]                                     ; $61e9: $0a
	dec  c                                           ; $61ea: $0d
	nop                                              ; $61eb: $00
	nop                                              ; $61ec: $00
	rrca                                             ; $61ed: $0f
	nop                                              ; $61ee: $00
	ld   bc, $020c                                   ; $61ef: $01 $0c $02
	ld   c, $60                                      ; $61f2: $0e $60
	inc  e                                           ; $61f4: $1c
	inc  bc                                          ; $61f5: $03
	inc  bc                                          ; $61f6: $03
	inc  bc                                          ; $61f7: $03
	dec  e                                           ; $61f8: $1d
	ld   b, b                                        ; $61f9: $40
	inc  de                                          ; $61fa: $13
	inc  bc                                          ; $61fb: $03
	inc  de                                          ; $61fc: $13
	ld   bc, $2803                                   ; $61fd: $01 $03 $28
	nop                                              ; $6200: $00
	ld   bc, $0008                                   ; $6201: $01 $08 $00
	ld   e, l                                        ; $6204: $5d
	and  c                                           ; $6205: $a1
	sbc  a                                           ; $6206: $9f
	ld   [bc], a                                     ; $6207: $02
	sub  l                                           ; $6208: $95
	inc  bc                                          ; $6209: $03
	jp   c, Jump_061_6d65                            ; $620a: $da $65 $6d

	sbc  l                                           ; $620d: $9d
	sbc  a                                           ; $620e: $9f
	dec  c                                           ; $620f: $0d
	cp   e                                           ; $6210: $bb
	pop  de                                          ; $6211: $d1
	db   $ec                                         ; $6212: $ec
	inc  bc                                          ; $6213: $03
	ld   c, d                                        ; $6214: $4a
	ld   [bc], a                                     ; $6215: $02
	or   h                                           ; $6216: $b4
	ld   h, [hl]                                     ; $6217: $66
	sub  c                                           ; $6218: $91
	ld   a, b                                        ; $6219: $78
	ld   d, d                                        ; $621a: $52
	sbc  a                                           ; $621b: $9f
	dec  c                                           ; $621c: $0d
	nop                                              ; $621d: $00
	ld   a, [bc]                                     ; $621e: $0a
	ld   bc, $9166                                   ; $621f: $01 $66 $91
	sbc  [hl]                                        ; $6222: $9e
	inc  bc                                          ; $6223: $03
	ld   l, b                                        ; $6224: $68
	ld   a, h                                        ; $6225: $7c
	ld   b, $08                                      ; $6226: $06 $08
	ld   a, c                                        ; $6228: $79
	ld   d, d                                        ; $6229: $52
	ld   e, l                                        ; $622a: $5d
	sbc  l                                           ; $622b: $9d
	sub  [hl]                                        ; $622c: $96
	sbc  a                                           ; $622d: $9f
	dec  c                                           ; $622e: $0d
	nop                                              ; $622f: $00
	ld   a, [bc]                                     ; $6230: $0a
	ld   b, $58                                      ; $6231: $06 $58
	ld   c, $0f                                      ; $6233: $0e $0f
	nop                                              ; $6235: $00
	ld   bc, $a301                                   ; $6236: $01 $01 $a3
	and  l                                           ; $6239: $a5
	db   $ec                                         ; $623a: $ec
	cp   d                                           ; $623b: $ba
	ld   h, [hl]                                     ; $623c: $66
	sub  c                                           ; $623d: $91
	ld   a, b                                        ; $623e: $78
	ld   d, d                                        ; $623f: $52
	ld   [hl], l                                     ; $6240: $75
	ld   h, a                                        ; $6241: $67
	ld   e, c                                        ; $6242: $59
	ld   sp, hl                                      ; $6243: $f9
	dec  c                                           ; $6244: $0d
	inc  b                                           ; $6245: $04
	rst  $28                                         ; $6246: $ef
	ld   a, b                                        ; $6247: $78
	inc  b                                           ; $6248: $04
	rst  $28                                         ; $6249: $ef
	ld   a, b                                        ; $624a: $78
	cp   c                                           ; $624b: $b9
	push hl                                          ; $624c: $e5
	push af                                          ; $624d: $f5
	sbc  $fb                                         ; $624e: $de $fb
	db   $ed                                         ; $6250: $ed
	ld   a, h                                        ; $6251: $7c
	ld   [bc], a                                     ; $6252: $02
	and  [hl]                                        ; $6253: $a6
	dec  c                                           ; $6254: $0d
	and  b                                           ; $6255: $a0
	inc  bc                                          ; $6256: $03
	xor  h                                           ; $6257: $ac
	ld   [hl], c                                     ; $6258: $71
	ld   [hl], h                                     ; $6259: $74
	ld   d, d                                        ; $625a: $52
	sbc  c                                           ; $625b: $99
	halt                                             ; $625c: $76
	ld   e, c                                        ; $625d: $59
	rst  $38                                         ; $625e: $ff
	rst  $38                                         ; $625f: $ff
	dec  c                                           ; $6260: $0d
	nop                                              ; $6261: $00
	ld   a, [bc]                                     ; $6262: $0a
	rrca                                             ; $6263: $0f
	inc  bc                                          ; $6264: $03
	nop                                              ; $6265: $00
	ld   bc, $599d                                   ; $6266: $01 $9d $59
	ld   [hl], c                                     ; $6269: $71
	ld   l, l                                        ; $626a: $6d
	sbc  l                                           ; $626b: $9d
	sbc  a                                           ; $626c: $9f
	dec  c                                           ; $626d: $0d
	ld   h, [hl]                                     ; $626e: $66
	sub  c                                           ; $626f: $91
	sbc  [hl]                                        ; $6270: $9e
	and  e                                           ; $6271: $a3
	and  l                                           ; $6272: $a5
	db   $ec                                         ; $6273: $ec
	cp   d                                           ; $6274: $ba
	ld   a, h                                        ; $6275: $7c
	inc  bc                                          ; $6276: $03
	ld   c, e                                        ; $6277: $4b
	add  [hl]                                        ; $6278: $86
	dec  c                                           ; $6279: $0d
	ld   [bc], a                                     ; $627a: $02
	ld   a, a                                        ; $627b: $7f
	ld   e, e                                        ; $627c: $5b
	adc  h                                           ; $627d: $8c
	ld   h, l                                        ; $627e: $65
	sub  l                                           ; $627f: $95
	ld   d, h                                        ; $6280: $54
	sbc  a                                           ; $6281: $9f
	dec  c                                           ; $6282: $0d
	nop                                              ; $6283: $00
	ld   a, [bc]                                     ; $6284: $0a
	dec  c                                           ; $6285: $0d
	nop                                              ; $6286: $00
	nop                                              ; $6287: $00
	rrca                                             ; $6288: $0f
	nop                                              ; $6289: $00
	ld   bc, $5623                                   ; $628a: $01 $23 $56
	inc  e                                           ; $628d: $1c
	inc  b                                           ; $628e: $04
	nop                                              ; $628f: $00
	nop                                              ; $6290: $00
	ld   bc, $ecdf                                   ; $6291: $01 $df $ec
	and  e                                           ; $6294: $a3
	sbc  [hl]                                        ; $6295: $9e
	ld   l, a                                        ; $6296: $6f
	ld   d, d                                        ; $6297: $52
	ld   [bc], a                                     ; $6298: $02
	inc  de                                          ; $6299: $13
	ld   l, a                                        ; $629a: $6f
	sub  c                                           ; $629b: $91
	and  c                                           ; $629c: $a1
	rst  $38                                         ; $629d: $ff
	rst  $38                                         ; $629e: $ff
	dec  c                                           ; $629f: $0d
	ld   [hl], a                                     ; $62a0: $77
	ld   d, h                                        ; $62a1: $54
	ld   h, l                                        ; $62a2: $65
	ld   l, l                                        ; $62a3: $6d
	ld   a, h                                        ; $62a4: $7c
	ld   sp, hl                                      ; $62a5: $f9
	dec  c                                           ; $62a6: $0d
	nop                                              ; $62a7: $00
	ld   a, [bc]                                     ; $62a8: $0a
	rrca                                             ; $62a9: $0f
	inc  bc                                          ; $62aa: $03
	nop                                              ; $62ab: $00
	ld   bc, $8b03                                   ; $62ac: $01 $03 $8b
	ld   a, l                                        ; $62af: $7d
	rst  $38                                         ; $62b0: $ff
	rst  $38                                         ; $62b1: $ff
	rst  $38                                         ; $62b2: $ff
	rst  $38                                         ; $62b3: $ff
	dec  c                                           ; $62b4: $0d
	ld   e, c                                        ; $62b5: $59
	ld   e, l                                        ; $62b6: $5d
	ld   e, c                                        ; $62b7: $59
	ld   e, l                                        ; $62b8: $5d
	ld   h, l                                        ; $62b9: $65
	ld   e, c                                        ; $62ba: $59
	ld   h, [hl]                                     ; $62bb: $66
	ld   e, c                                        ; $62bc: $59
	rst  $38                                         ; $62bd: $ff
	rst  $38                                         ; $62be: $ff
	dec  c                                           ; $62bf: $0d
	halt                                             ; $62c0: $76
	sbc  [hl]                                        ; $62c1: $9e
	ld   d, d                                        ; $62c2: $52
	ld   d, h                                        ; $62c3: $54
	ld   h, c                                        ; $62c4: $61
	halt                                             ; $62c5: $76
	ld   a, b                                        ; $62c6: $78
	and  c                                           ; $62c7: $a1
	ld   l, [hl]                                     ; $62c8: $6e
	ld   e, a                                        ; $62c9: $5f
	ld   [hl], a                                     ; $62ca: $77
	rst  $38                                         ; $62cb: $ff
	rst  $38                                         ; $62cc: $ff
	dec  c                                           ; $62cd: $0d
	nop                                              ; $62ce: $00
	ld   a, [bc]                                     ; $62cf: $0a
	inc  e                                           ; $62d0: $1c
	inc  b                                           ; $62d1: $04
	ld   b, $06                                      ; $62d2: $06 $06
	ld   bc, $fc56                                   ; $62d4: $01 $56 $fc
	sbc  [hl]                                        ; $62d7: $9e
	ld   l, e                                        ; $62d8: $6b
	and  c                                           ; $62d9: $a1
	ld   a, b                                        ; $62da: $78
	ld   a, h                                        ; $62db: $7c
	ld   h, l                                        ; $62dc: $65
	sub  a                                           ; $62dd: $97
	ld   a, b                                        ; $62de: $78
	ld   d, d                                        ; $62df: $52
	sbc  a                                           ; $62e0: $9f
	dec  c                                           ; $62e1: $0d
	and  e                                           ; $62e2: $a3
	and  l                                           ; $62e3: $a5
	db   $ec                                         ; $62e4: $ec
	cp   d                                           ; $62e5: $ba
	ld   h, [hl]                                     ; $62e6: $66
	sub  c                                           ; $62e7: $91
	ld   a, b                                        ; $62e8: $78
	ld   d, d                                        ; $62e9: $52
	sub  [hl]                                        ; $62ea: $96
	sbc  a                                           ; $62eb: $9f
	dec  c                                           ; $62ec: $0d
	ld   h, [hl]                                     ; $62ed: $66
	sub  c                                           ; $62ee: $91
	ld   d, b                                        ; $62ef: $50
	ld   a, e                                        ; $62f0: $7b
	sbc  a                                           ; $62f1: $9f
	dec  c                                           ; $62f2: $0d
	nop                                              ; $62f3: $00
	ld   a, [bc]                                     ; $62f4: $0a
	dec  c                                           ; $62f5: $0d
	nop                                              ; $62f6: $00
	nop                                              ; $62f7: $00
	rrca                                             ; $62f8: $0f
	nop                                              ; $62f9: $00
	ld   bc, $020c                                   ; $62fa: $01 $0c $02
	ld   b, $37                                      ; $62fd: $06 $37
	rlca                                             ; $62ff: $07
	ld   c, $60                                      ; $6300: $0e $60
	inc  e                                           ; $6302: $1c
	inc  bc                                          ; $6303: $03
	inc  b                                           ; $6304: $04
	inc  b                                           ; $6305: $04
	dec  e                                           ; $6306: $1d
	ld   b, b                                        ; $6307: $40
	inc  de                                          ; $6308: $13
	inc  bc                                          ; $6309: $03
	inc  de                                          ; $630a: $13
	ld   bc, $2901                                   ; $630b: $01 $01 $29
	nop                                              ; $630e: $00
	ld   bc, $e3c1                                   ; $630f: $01 $c1 $e3
	ld   h, [hl]                                     ; $6312: $66
	sub  c                                           ; $6313: $91
	ld   a, b                                        ; $6314: $78
	ld   d, d                                        ; $6315: $52
	sbc  a                                           ; $6316: $9f
	dec  c                                           ; $6317: $0d
	ld   [$5d00], sp                                 ; $6318: $08 $00 $5d
	and  c                                           ; $631b: $a1
	sbc  a                                           ; $631c: $9f
	dec  c                                           ; $631d: $0d
	rst  $38                                         ; $631e: $ff
	rst  $38                                         ; $631f: $ff
	rst  $38                                         ; $6320: $ff
	rst  $38                                         ; $6321: $ff
	rst  $38                                         ; $6322: $ff
	rst  $38                                         ; $6323: $ff
	rst  $38                                         ; $6324: $ff
	rst  $38                                         ; $6325: $ff
	dec  c                                           ; $6326: $0d
	nop                                              ; $6327: $00
	ld   a, [bc]                                     ; $6328: $0a
	inc  e                                           ; $6329: $1c
	inc  bc                                          ; $632a: $03
	rlca                                             ; $632b: $07
	rlca                                             ; $632c: $07
	ld   bc, $599d                                   ; $632d: $01 $9d $59
	ld   [hl], c                                     ; $6330: $71
	ld   l, l                                        ; $6331: $6d
	sbc  l                                           ; $6332: $9d
	ld   a, [$afb0]                                  ; $6333: $fa $b0 $af
	ld   a, h                                        ; $6336: $7c
	ld   [bc], a                                     ; $6337: $02
	inc  bc                                          ; $6338: $03
	ld   a, h                                        ; $6339: $7c
	inc  bc                                          ; $633a: $03
	ld   c, d                                        ; $633b: $4a
	inc  b                                           ; $633c: $04
	dec  c                                           ; $633d: $0d
	sbc  a                                           ; $633e: $9f
	dec  c                                           ; $633f: $0d
	ld   h, e                                        ; $6340: $63
	ld   e, l                                        ; $6341: $5d
	sub  a                                           ; $6342: $97
	sub  [hl]                                        ; $6343: $96
	ld   e, e                                        ; $6344: $5b
	ld   [hl], c                                     ; $6345: $71
	halt                                             ; $6346: $76
	ld   a, [$040d]                                  ; $6347: $fa $0d $04
	ld   c, $04                                      ; $634a: $0e $04
	ld   d, $02                                      ; $634c: $16 $02
	xor  b                                           ; $634e: $a8
	ld   a, h                                        ; $634f: $7c
	inc  bc                                          ; $6350: $03
	ld   a, e                                        ; $6351: $7b
	dec  b                                           ; $6352: $05
	ld   de, $65a0                                   ; $6353: $11 $a0 $65
	ld   [hl], h                                     ; $6356: $74
	ld   l, l                                        ; $6357: $6d
	and  c                                           ; $6358: $a1
	ld   l, [hl]                                     ; $6359: $6e
	sbc  l                                           ; $635a: $9d
	sbc  a                                           ; $635b: $9f
	dec  c                                           ; $635c: $0d
	nop                                              ; $635d: $00
	ld   a, [bc]                                     ; $635e: $0a
	dec  c                                           ; $635f: $0d
	nop                                              ; $6360: $00
	nop                                              ; $6361: $00
	rrca                                             ; $6362: $0f
	nop                                              ; $6363: $00
	ld   bc, $4e23                                   ; $6364: $01 $23 $4e
	inc  e                                           ; $6367: $1c
	ld   bc, $0000                                   ; $6368: $01 $00 $00
	ld   bc, $9750                                   ; $636b: $01 $50 $97
	sbc  [hl]                                        ; $636e: $9e
	rst  JumpTable                                         ; $636f: $df
	db   $ec                                         ; $6370: $ec
	and  e                                           ; $6371: $a3
	ld   h, e                                        ; $6372: $63
	and  c                                           ; $6373: $a1
	sbc  [hl]                                        ; $6374: $9e
	dec  c                                           ; $6375: $0d
	ld   [$6300], sp                                 ; $6376: $08 $00 $63
	and  c                                           ; $6379: $a1
	sbc  a                                           ; $637a: $9f
	dec  c                                           ; $637b: $0d
	ld   [hl], a                                     ; $637c: $77
	ld   d, h                                        ; $637d: $54
	ld   e, c                                        ; $637e: $59
	ld   h, l                                        ; $637f: $65
	ld   l, l                                        ; $6380: $6d
	ld   a, h                                        ; $6381: $7c
	ld   [hl], l                                     ; $6382: $75
	ld   h, a                                        ; $6383: $67
	ld   e, c                                        ; $6384: $59
	ld   sp, hl                                      ; $6385: $f9
	dec  c                                           ; $6386: $0d
	nop                                              ; $6387: $00
	ld   a, [bc]                                     ; $6388: $0a
	rrca                                             ; $6389: $0f
	inc  bc                                          ; $638a: $03
	inc  b                                           ; $638b: $04
	ld   bc, $8b03                                   ; $638c: $01 $03 $8b
	ld   a, l                                        ; $638f: $7d
	rst  $38                                         ; $6390: $ff
	rst  $38                                         ; $6391: $ff
	rst  $38                                         ; $6392: $ff
	rst  $38                                         ; $6393: $ff
	dec  c                                           ; $6394: $0d
	ld   e, c                                        ; $6395: $59
	ld   e, l                                        ; $6396: $5d
	ld   e, c                                        ; $6397: $59
	ld   e, l                                        ; $6398: $5d
	ld   h, l                                        ; $6399: $65
	ld   e, c                                        ; $639a: $59
	ld   h, [hl]                                     ; $639b: $66
	ld   e, c                                        ; $639c: $59
	rst  $38                                         ; $639d: $ff
	rst  $38                                         ; $639e: $ff
	dec  c                                           ; $639f: $0d
	halt                                             ; $63a0: $76
	sbc  [hl]                                        ; $63a1: $9e
	ld   d, d                                        ; $63a2: $52
	ld   d, h                                        ; $63a3: $54
	ld   h, c                                        ; $63a4: $61
	halt                                             ; $63a5: $76
	ld   a, b                                        ; $63a6: $78
	and  c                                           ; $63a7: $a1
	ld   l, [hl]                                     ; $63a8: $6e
	ld   e, a                                        ; $63a9: $5f
	ld   [hl], a                                     ; $63aa: $77
	rst  $38                                         ; $63ab: $ff
	rst  $38                                         ; $63ac: $ff
	dec  c                                           ; $63ad: $0d
	nop                                              ; $63ae: $00
	ld   a, [bc]                                     ; $63af: $0a
	inc  e                                           ; $63b0: $1c
	ld   bc, $0404                                   ; $63b1: $01 $04 $04
	ld   bc, $8d67                                   ; $63b4: $01 $67 $8d
	adc  h                                           ; $63b7: $8c
	ld   l, c                                        ; $63b8: $69
	and  c                                           ; $63b9: $a1
	rst  $38                                         ; $63ba: $ff
	rst  $38                                         ; $63bb: $ff
	dec  c                                           ; $63bc: $0d
	ld   l, e                                        ; $63bd: $6b
	ld   d, h                                        ; $63be: $54
	ld   [hl], l                                     ; $63bf: $75
	ld   h, a                                        ; $63c0: $67
	sbc  a                                           ; $63c1: $9f
	inc  b                                           ; $63c2: $04
	rst  $28                                         ; $63c3: $ef
	inc  b                                           ; $63c4: $04
	dec  bc                                          ; $63c5: $0b
	ld   a, h                                        ; $63c6: $7c
	or   b                                           ; $63c7: $b0
	xor  a                                           ; $63c8: $af
	and  b                                           ; $63c9: $a0
	dec  b                                           ; $63ca: $05
	pop  af                                          ; $63cb: $f1
	ld   [hl], d                                     ; $63cc: $72
	dec  c                                           ; $63cd: $0d
	ld   [bc], a                                     ; $63ce: $02
	inc  bc                                          ; $63cf: $03
	ld   a, l                                        ; $63d0: $7d
	ld   d, b                                        ; $63d1: $50
	ld   l, l                                        ; $63d2: $6d
	ld   h, l                                        ; $63d3: $65
	ld   [hl], l                                     ; $63d4: $75
	ld   h, a                                        ; $63d5: $67
	sbc  a                                           ; $63d6: $9f
	dec  c                                           ; $63d7: $0d
	nop                                              ; $63d8: $00
	ld   a, [bc]                                     ; $63d9: $0a
	ld   bc, $1005                                   ; $63da: $01 $05 $10
	inc  bc                                          ; $63dd: $03
	ld   a, c                                        ; $63de: $79
	ld   a, h                                        ; $63df: $7c
	ld   [bc], a                                     ; $63e0: $02
	sbc  c                                           ; $63e1: $99
	ld   [bc], a                                     ; $63e2: $02
	rra                                              ; $63e3: $1f
	ld   a, c                                        ; $63e4: $79
	ld   [bc], a                                     ; $63e5: $02
	jp   nc, Jump_061_745f                           ; $63e6: $d2 $5f $74

	dec  c                                           ; $63e9: $0d
	inc  b                                           ; $63ea: $04
	ld   c, $04                                      ; $63eb: $0e $04
	ld   d, $02                                      ; $63ed: $16 $02
	xor  b                                           ; $63ef: $a8
	ld   a, h                                        ; $63f0: $7c
	inc  bc                                          ; $63f1: $03
	ld   a, e                                        ; $63f2: $7b
	dec  b                                           ; $63f3: $05
	ld   de, hScriptOpcodeParams                                   ; $63f4: $11 $a0 $ff
	rst  $38                                         ; $63f7: $ff
	dec  c                                           ; $63f8: $0d
	nop                                              ; $63f9: $00
	ld   a, [bc]                                     ; $63fa: $0a
	rrca                                             ; $63fb: $0f
	inc  bc                                          ; $63fc: $03
	nop                                              ; $63fd: $00
	ld   bc, $599d                                   ; $63fe: $01 $9d $59
	ld   [hl], c                                     ; $6401: $71
	ld   l, l                                        ; $6402: $6d
	sbc  l                                           ; $6403: $9d
	sbc  a                                           ; $6404: $9f
	ld   h, e                                        ; $6405: $63
	ld   e, l                                        ; $6406: $5d
	sub  a                                           ; $6407: $97
	sbc  a                                           ; $6408: $9f
	dec  c                                           ; $6409: $0d
	ld   [hl], l                                     ; $640a: $75
	sub  b                                           ; $640b: $90
	ld   a, e                                        ; $640c: $7b
	sbc  [hl]                                        ; $640d: $9e
	inc  b                                           ; $640e: $04
	rst  $28                                         ; $640f: $ef
	inc  b                                           ; $6410: $04
	dec  bc                                          ; $6411: $0b
	ld   a, c                                        ; $6412: $79
	or   b                                           ; $6413: $b0
	xor  a                                           ; $6414: $af
	and  b                                           ; $6415: $a0
	dec  b                                           ; $6416: $05
	pop  af                                          ; $6417: $f1
	ld   [hl], d                                     ; $6418: $72
	ld   a, h                                        ; $6419: $7c
	ld   a, l                                        ; $641a: $7d
	dec  c                                           ; $641b: $0d
	ld   h, e                                        ; $641c: $63
	ld   h, a                                        ; $641d: $67
	ld   e, d                                        ; $641e: $5a
	ld   a, c                                        ; $641f: $79
	inc  b                                           ; $6420: $04
	cp   l                                           ; $6421: $bd
	dec  b                                           ; $6422: $05
	ld   l, b                                        ; $6423: $68
	ld   h, [hl]                                     ; $6424: $66
	sub  c                                           ; $6425: $91
	ld   a, b                                        ; $6426: $78
	ld   d, d                                        ; $6427: $52
	ld   sp, hl                                      ; $6428: $f9
	dec  c                                           ; $6429: $0d
	nop                                              ; $642a: $00
	ld   a, [bc]                                     ; $642b: $0a
	rrca                                             ; $642c: $0f
	inc  bc                                          ; $642d: $03
	inc  bc                                          ; $642e: $03
	ld   bc, $7b03                                   ; $642f: $01 $03 $7b
	dec  b                                           ; $6432: $05
	ld   de, $9778                                   ; $6433: $11 $78 $97
	adc  l                                           ; $6436: $8d
	and  c                                           ; $6437: $a1
	ld   a, b                                        ; $6438: $78
	ld   a, c                                        ; $6439: $79
	inc  bc                                          ; $643a: $03
	and  l                                           ; $643b: $a5
	ld   e, c                                        ; $643c: $59
	ld   e, a                                        ; $643d: $5f
	ld   [hl], h                                     ; $643e: $74
	dec  c                                           ; $643f: $0d
	inc  b                                           ; $6440: $04
	xor  l                                           ; $6441: $ad
	ld   [bc], a                                     ; $6442: $02
	xor  c                                           ; $6443: $a9
	ld   a, c                                        ; $6444: $79
	sub  d                                           ; $6445: $92
	sbc  d                                           ; $6446: $9a
	ld   a, [hl]                                     ; $6447: $7e
	ld   d, d                                        ; $6448: $52
	ld   d, d                                        ; $6449: $52
	ld   h, [hl]                                     ; $644a: $66
	sub  c                                           ; $644b: $91
	ld   a, b                                        ; $644c: $78
	ld   d, d                                        ; $644d: $52
	sbc  a                                           ; $644e: $9f
	dec  c                                           ; $644f: $0d
	nop                                              ; $6450: $00
	ld   a, [bc]                                     ; $6451: $0a
	ld   bc, $9166                                   ; $6452: $01 $66 $91
	ld   d, b                                        ; $6455: $50
	sbc  [hl]                                        ; $6456: $9e
	sub  [hl]                                        ; $6457: $96
	sbc  e                                           ; $6458: $9b
	ld   h, l                                        ; $6459: $65
	ld   e, l                                        ; $645a: $5d
	ld   a, e                                        ; $645b: $7b
	sbc  a                                           ; $645c: $9f
	dec  c                                           ; $645d: $0d
	nop                                              ; $645e: $00
	ld   a, [bc]                                     ; $645f: $0a
	dec  c                                           ; $6460: $0d
	nop                                              ; $6461: $00
	nop                                              ; $6462: $00
	rrca                                             ; $6463: $0f
	nop                                              ; $6464: $00
	ld   bc, $020c                                   ; $6465: $01 $0c $02
	ld   c, $60                                      ; $6468: $0e $60
	inc  e                                           ; $646a: $1c
	inc  bc                                          ; $646b: $03
	nop                                              ; $646c: $00
	nop                                              ; $646d: $00
	ld   bc, $9166                                   ; $646e: $01 $66 $91
	sbc  [hl]                                        ; $6471: $9e
	inc  bc                                          ; $6472: $03
	ld   l, b                                        ; $6473: $68
	ld   a, h                                        ; $6474: $7c
	ld   b, $08                                      ; $6475: $06 $08
	ld   a, c                                        ; $6477: $79
	ld   [bc], a                                     ; $6478: $02
	ld   a, a                                        ; $6479: $7f
	ld   e, e                                        ; $647a: $5b
	adc  h                                           ; $647b: $8c
	ld   h, l                                        ; $647c: $65
	sub  l                                           ; $647d: $95
	ld   d, h                                        ; $647e: $54
	sbc  a                                           ; $647f: $9f
	dec  c                                           ; $6480: $0d
	inc  bc                                          ; $6481: $03
	ld   l, b                                        ; $6482: $68
	ld   a, l                                        ; $6483: $7d
	ld   e, d                                        ; $6484: $5a
	and  c                                           ; $6485: $a1
	ld   a, [hl]                                     ; $6486: $7e
	ld   [hl], c                                     ; $6487: $71
	ld   [hl], h                                     ; $6488: $74
	ld   a, e                                        ; $6489: $7b
	sbc  a                                           ; $648a: $9f
	dec  c                                           ; $648b: $0d
	ld   [$5d00], sp                                 ; $648c: $08 $00 $5d
	and  c                                           ; $648f: $a1
	sbc  a                                           ; $6490: $9f
	dec  c                                           ; $6491: $0d
	nop                                              ; $6492: $00
	ld   a, [bc]                                     ; $6493: $0a
	ld   b, $58                                      ; $6494: $06 $58
	ld   c, $0f                                      ; $6496: $0e $0f
	nop                                              ; $6498: $00
	ld   bc, $0401                                   ; $6499: $01 $01 $04
	ld   c, $03                                      ; $649c: $0e $03
	sub  b                                           ; $649e: $90
	ld   h, e                                        ; $649f: $63
	and  c                                           ; $64a0: $a1
	ld   h, [hl]                                     ; $64a1: $66
	sub  c                                           ; $64a2: $91
	ld   a, b                                        ; $64a3: $78
	ld   d, d                                        ; $64a4: $52
	ld   [hl], l                                     ; $64a5: $75
	ld   h, a                                        ; $64a6: $67
	ld   e, c                                        ; $64a7: $59
	ld   sp, hl                                      ; $64a8: $f9
	dec  c                                           ; $64a9: $0d
	or   b                                           ; $64aa: $b0
	xor  a                                           ; $64ab: $af
	and  b                                           ; $64ac: $a0
	ld   l, l                                        ; $64ad: $6d
	ld   l, l                                        ; $64ae: $6d
	ld   d, d                                        ; $64af: $52
	ld   [hl], h                                     ; $64b0: $74
	cp   d                                           ; $64b1: $ba
	ret                                              ; $64b2: $c9


	xor  $ba                                         ; $64b3: $ee $ba
	and  b                                           ; $64b5: $a0
	dec  c                                           ; $64b6: $0d
	ld   a, l                                        ; $64b7: $7d
	ld   [hl], c                                     ; $64b8: $71
	ld   h, e                                        ; $64b9: $63
	and  c                                           ; $64ba: $a1
	ld   h, e                                        ; $64bb: $63
	ld   l, c                                        ; $64bc: $69
	ld   [hl], h                                     ; $64bd: $74
	sbc  c                                           ; $64be: $99
	halt                                             ; $64bf: $76
	ld   e, c                                        ; $64c0: $59
	rst  $38                                         ; $64c1: $ff
	rst  $38                                         ; $64c2: $ff
	dec  c                                           ; $64c3: $0d
	nop                                              ; $64c4: $00
	ld   a, [bc]                                     ; $64c5: $0a
	inc  e                                           ; $64c6: $1c
	inc  bc                                          ; $64c7: $03
	inc  b                                           ; $64c8: $04
	inc  b                                           ; $64c9: $04
	ld   bc, $ffff                                   ; $64ca: $01 $ff $ff
	cp   d                                           ; $64cd: $ba
	ret                                              ; $64ce: $c9


	xor  $ba                                         ; $64cf: $ee $ba
	ld   sp, hl                                      ; $64d1: $f9
	dec  c                                           ; $64d2: $0d
	ld   h, [hl]                                     ; $64d3: $66
	sub  c                                           ; $64d4: $91
	sbc  [hl]                                        ; $64d5: $9e
	inc  b                                           ; $64d6: $04
	ld   a, [bc]                                     ; $64d7: $0a
	inc  bc                                          ; $64d8: $03
	jp   nc, $037c                                   ; $64d9: $d2 $7c $03

	ld   c, e                                        ; $64dc: $4b
	add  [hl]                                        ; $64dd: $86
	dec  c                                           ; $64de: $0d
	ld   [bc], a                                     ; $64df: $02
	ld   a, a                                        ; $64e0: $7f
	ld   e, e                                        ; $64e1: $5b
	adc  h                                           ; $64e2: $8c
	ld   h, l                                        ; $64e3: $65
	sub  l                                           ; $64e4: $95
	ld   d, h                                        ; $64e5: $54
	sbc  a                                           ; $64e6: $9f
	dec  c                                           ; $64e7: $0d
	nop                                              ; $64e8: $00
	ld   a, [bc]                                     ; $64e9: $0a
	dec  c                                           ; $64ea: $0d
	nop                                              ; $64eb: $00
	nop                                              ; $64ec: $00
	rrca                                             ; $64ed: $0f
	nop                                              ; $64ee: $00
	ld   bc, $3923                                   ; $64ef: $01 $23 $39
	inc  e                                           ; $64f2: $1c
	add  hl, bc                                      ; $64f3: $09
	nop                                              ; $64f4: $00
	nop                                              ; $64f5: $00
	ld   bc, $ecdf                                   ; $64f6: $01 $df $ec
	and  e                                           ; $64f9: $a3
	sbc  [hl]                                        ; $64fa: $9e
	ld   [$5d00], sp                                 ; $64fb: $08 $00 $5d
	and  c                                           ; $64fe: $a1
	dec  c                                           ; $64ff: $0d
	ld   [hl], a                                     ; $6500: $77
	ld   d, h                                        ; $6501: $54
	ld   h, l                                        ; $6502: $65
	ld   l, l                                        ; $6503: $6d
	and  c                                           ; $6504: $a1
	ld   l, [hl]                                     ; $6505: $6e
	ld   d, d                                        ; $6506: $52
	ld   sp, hl                                      ; $6507: $f9
	dec  c                                           ; $6508: $0d
	ld   b, $09                                      ; $6509: $06 $09
	inc  bc                                          ; $650b: $03
	add  d                                           ; $650c: $82

Jump_061_650d:
	ld   l, e                                        ; $650d: $6b
	sbc  e                                           ; $650e: $9b
	ld   [hl], c                                     ; $650f: $71
	ld   [hl], h                                     ; $6510: $74
	sbc  a                                           ; $6511: $9f
	dec  c                                           ; $6512: $0d
	nop                                              ; $6513: $00
	ld   a, [bc]                                     ; $6514: $0a
	rrca                                             ; $6515: $0f
	inc  bc                                          ; $6516: $03
	inc  b                                           ; $6517: $04
	ld   bc, $8b03                                   ; $6518: $01 $03 $8b
	ld   a, l                                        ; $651b: $7d
	rst  $38                                         ; $651c: $ff
	rst  $38                                         ; $651d: $ff
	rst  $38                                         ; $651e: $ff
	rst  $38                                         ; $651f: $ff
	dec  c                                           ; $6520: $0d
	ld   e, c                                        ; $6521: $59
	ld   e, l                                        ; $6522: $5d
	ld   e, c                                        ; $6523: $59
	ld   e, l                                        ; $6524: $5d
	ld   h, l                                        ; $6525: $65
	ld   e, c                                        ; $6526: $59
	ld   h, [hl]                                     ; $6527: $66
	ld   e, c                                        ; $6528: $59
	rst  $38                                         ; $6529: $ff
	rst  $38                                         ; $652a: $ff
	dec  c                                           ; $652b: $0d
	halt                                             ; $652c: $76
	sbc  [hl]                                        ; $652d: $9e
	ld   d, d                                        ; $652e: $52
	ld   d, h                                        ; $652f: $54
	ld   h, c                                        ; $6530: $61
	halt                                             ; $6531: $76
	ld   a, b                                        ; $6532: $78
	ld   a, h                                        ; $6533: $7c
	ld   [hl], l                                     ; $6534: $75
	ld   h, a                                        ; $6535: $67
	ld   e, d                                        ; $6536: $5a
	rst  $38                                         ; $6537: $ff
	rst  $38                                         ; $6538: $ff
	dec  c                                           ; $6539: $0d
	nop                                              ; $653a: $00
	ld   a, [bc]                                     ; $653b: $0a
	inc  e                                           ; $653c: $1c
	add  hl, bc                                      ; $653d: $09
	inc  b                                           ; $653e: $04
	inc  b                                           ; $653f: $04
	ld   bc, $9252                                   ; $6540: $01 $52 $92
	sbc  [hl]                                        ; $6543: $9e
	dec  b                                           ; $6544: $05
	ld   [hl], e                                     ; $6545: $73
	ld   h, [hl]                                     ; $6546: $66
	sub  c                                           ; $6547: $91
	ld   a, b                                        ; $6548: $78
	ld   d, d                                        ; $6549: $52
	sub  [hl]                                        ; $654a: $96
	sbc  a                                           ; $654b: $9f
	dec  c                                           ; $654c: $0d
	ld   d, h                                        ; $654d: $54
	db   $fc                                         ; $654e: $fc
	and  c                                           ; $654f: $a1
	sbc  [hl]                                        ; $6550: $9e
	inc  bc                                          ; $6551: $03
	xor  c                                           ; $6552: $a9
	ld   a, b                                        ; $6553: $78
	and  c                                           ; $6554: $a1
	ld   l, [hl]                                     ; $6555: $6e
	sbc  e                                           ; $6556: $9b
	ld   d, h                                        ; $6557: $54
	rst  $38                                         ; $6558: $ff

Jump_061_6559:
	rst  $38                                         ; $6559: $ff
	dec  c                                           ; $655a: $0d
	nop                                              ; $655b: $00
	ld   a, [bc]                                     ; $655c: $0a
	rrca                                             ; $655d: $0f
	inc  bc                                          ; $655e: $03
	inc  b                                           ; $655f: $04
	ld   bc, $8d67                                   ; $6560: $01 $67 $8d
	adc  h                                           ; $6563: $8c
	ld   l, c                                        ; $6564: $69
	and  c                                           ; $6565: $a1
	inc  b                                           ; $6566: $04
	ld   a, [bc]                                     ; $6567: $0a
	inc  bc                                          ; $6568: $03
	jp   nc, $0d9f                                   ; $6569: $d2 $9f $0d

	ld   e, b                                        ; $656c: $58
	inc  bc                                          ; $656d: $03
	or   e                                           ; $656e: $b3
	ld   e, d                                        ; $656f: $5a
	ld   l, c                                        ; $6570: $69
	ld   d, d                                        ; $6571: $52
	ld   l, l                                        ; $6572: $6d
	ld   h, l                                        ; $6573: $65
	adc  h                                           ; $6574: $8c
	ld   h, l                                        ; $6575: $65
	ld   l, l                                        ; $6576: $6d
	sbc  a                                           ; $6577: $9f
	dec  c                                           ; $6578: $0d
	nop                                              ; $6579: $00
	ld   a, [bc]                                     ; $657a: $0a
	dec  c                                           ; $657b: $0d
	nop                                              ; $657c: $00
	nop                                              ; $657d: $00
	rrca                                             ; $657e: $0f
	nop                                              ; $657f: $00
	ld   bc, $020c                                   ; $6580: $01 $0c $02
	ld   b, $37                                      ; $6583: $06 $37
	rlca                                             ; $6585: $07
	add  hl, de                                      ; $6586: $19
	dec  b                                           ; $6587: $05
	inc  bc                                          ; $6588: $03
	ld   h, e                                        ; $6589: $63
	ld   e, l                                        ; $658a: $5d
	sub  a                                           ; $658b: $97
	ld   h, e                                        ; $658c: $63
	and  c                                           ; $658d: $a1
	ld   e, d                                        ; $658e: $5a
	rst  $38                                         ; $658f: $ff
	rst  $38                                         ; $6590: $ff
	nop                                              ; $6591: $00
	nop                                              ; $6592: $00
	and  e                                           ; $6593: $a3
	and  l                                           ; $6594: $a5
	db   $ec                                         ; $6595: $ec
	cp   d                                           ; $6596: $ba
	ld   e, d                                        ; $6597: $5a
	rst  $38                                         ; $6598: $ff
	rst  $38                                         ; $6599: $ff
	nop                                              ; $659a: $00
	ld   bc, $0e04                                   ; $659b: $01 $04 $0e
	inc  bc                                          ; $659e: $03
	sub  b                                           ; $659f: $90
	ld   h, e                                        ; $65a0: $63
	and  c                                           ; $65a1: $a1
	ld   e, d                                        ; $65a2: $5a
	rst  $38                                         ; $65a3: $ff
	rst  $38                                         ; $65a4: $ff
	nop                                              ; $65a5: $00
	ld   [bc], a                                     ; $65a6: $02
	rlca                                             ; $65a7: $07
	ld   b, e                                        ; $65a8: $43
	ld   a, [bc]                                     ; $65a9: $0a
	ld   [bc], a                                     ; $65aa: $02
	inc  bc                                          ; $65ab: $03
	ld   bc, $2000                                   ; $65ac: $01 $00 $20
	nop                                              ; $65af: $00

Call_061_65b0:
	rlca                                             ; $65b0: $07
	call nz, $020a                                   ; $65b1: $c4 $0a $02
	inc  bc                                          ; $65b4: $03
	ld   bc, $2001                                   ; $65b5: $01 $01 $20
	nop                                              ; $65b8: $00
	rlca                                             ; $65b9: $07
	ld   h, b                                        ; $65ba: $60
	dec  bc                                          ; $65bb: $0b
	ld   [bc], a                                     ; $65bc: $02
	inc  bc                                          ; $65bd: $03
	ld   bc, $2002                                   ; $65be: $01 $02 $20
	nop                                              ; $65c1: $00
	ld   b, $fc                                      ; $65c2: $06 $fc
	add  hl, bc                                      ; $65c4: $09
	rrca                                             ; $65c5: $0f
	inc  bc                                          ; $65c6: $03
	nop                                              ; $65c7: $00
	ld   bc, $7705                                   ; $65c8: $01 $05 $77
	ld   a, h                                        ; $65cb: $7c
	dec  b                                           ; $65cc: $05
	ld   a, b                                        ; $65cd: $78
	inc  bc                                          ; $65ce: $03
	inc  de                                          ; $65cf: $13
	sbc  b                                           ; $65d0: $98
	rst  $38                                         ; $65d1: $ff
	rst  $38                                         ; $65d2: $ff
	ld   sp, hl                                      ; $65d3: $f9
	dec  c                                           ; $65d4: $0d
	rst  $38                                         ; $65d5: $ff
	rst  $38                                         ; $65d6: $ff
	ld   l, e                                        ; $65d7: $6b
	sbc  d                                           ; $65d8: $9a
	ld   a, l                                        ; $65d9: $7d
	ld   a, b                                        ; $65da: $78
	ld   d, d                                        ; $65db: $52
	ld   [hl], l                                     ; $65dc: $75
	ld   h, l                                        ; $65dd: $65
	sub  l                                           ; $65de: $95
	ld   d, h                                        ; $65df: $54
	rst  $38                                         ; $65e0: $ff
	rst  $38                                         ; $65e1: $ff
	dec  c                                           ; $65e2: $0d
	nop                                              ; $65e3: $00
	ld   a, [bc]                                     ; $65e4: $0a
	ld   bc, $afb0                                   ; $65e5: $01 $b0 $af
	rst  $38                                         ; $65e8: $ff
	rst  $38                                         ; $65e9: $ff
	rst  $38                                         ; $65ea: $ff
	rst  $38                                         ; $65eb: $ff
	dec  c                                           ; $65ec: $0d
	rst  $38                                         ; $65ed: $ff
	rst  $38                                         ; $65ee: $ff
	inc  b                                           ; $65ef: $04
	ld   c, $04                                      ; $65f0: $0e $04
	ld   d, $02                                      ; $65f2: $16 $02
	xor  b                                           ; $65f4: $a8
	ld   sp, hl                                      ; $65f5: $f9
	dec  c                                           ; $65f6: $0d
	nop                                              ; $65f7: $00
	inc  e                                           ; $65f8: $1c
	inc  bc                                          ; $65f9: $03
	rlca                                             ; $65fa: $07
	rlca                                             ; $65fb: $07
	ld   bc, $ffff                                   ; $65fc: $01 $ff $ff
	rst  $38                                         ; $65ff: $ff
	rst  $38                                         ; $6600: $ff
	ld   l, e                                        ; $6601: $6b
	ld   d, h                                        ; $6602: $54
	ld   l, [hl]                                     ; $6603: $6e
	sbc  l                                           ; $6604: $9d
	ld   a, [$000d]                                  ; $6605: $fa $0d $00
	ld   a, [bc]                                     ; $6608: $0a
	ld   b, $60                                      ; $6609: $06 $60
	rlca                                             ; $660b: $07
	rrca                                             ; $660c: $0f
	nop                                              ; $660d: $00
	ld   bc, $6301                                   ; $660e: $01 $01 $63
	ld   e, l                                        ; $6611: $5d
	sub  a                                           ; $6612: $97
	ld   h, e                                        ; $6613: $63
	and  c                                           ; $6614: $a1
	sbc  [hl]                                        ; $6615: $9e
	ld   h, [hl]                                     ; $6616: $66
	sub  c                                           ; $6617: $91
	ld   a, b                                        ; $6618: $78
	ld   d, d                                        ; $6619: $52
	ld   [hl], l                                     ; $661a: $75
	ld   h, a                                        ; $661b: $67
	ld   e, c                                        ; $661c: $59
	ld   sp, hl                                      ; $661d: $f9
	dec  c                                           ; $661e: $0d
	inc  b                                           ; $661f: $04
	rst  $30                                         ; $6620: $f7
	dec  b                                           ; $6621: $05
	or   a                                           ; $6622: $b7
	inc  b                                           ; $6623: $04
	and  b                                           ; $6624: $a0
	inc  b                                           ; $6625: $04
	inc  h                                           ; $6626: $24
	ld   a, b                                        ; $6627: $78
	inc  b                                           ; $6628: $04
	ld   c, $03                                      ; $6629: $0e $03
	sub  b                                           ; $662b: $90
	ld   h, e                                        ; $662c: $63
	and  c                                           ; $662d: $a1
	ld   a, c                                        ; $662e: $79
	dec  c                                           ; $662f: $0d
	inc  b                                           ; $6630: $04
	dec  b                                           ; $6631: $05
	ld   h, l                                        ; $6632: $65
	ld   [hl], h                                     ; $6633: $74
	rst  $38                                         ; $6634: $ff
	rst  $38                                         ; $6635: $ff
	rst  $38                                         ; $6636: $ff
	rst  $38                                         ; $6637: $ff
	dec  c                                           ; $6638: $0d
	nop                                              ; $6639: $00
	ld   a, [bc]                                     ; $663a: $0a
	inc  e                                           ; $663b: $1c
	inc  bc                                          ; $663c: $03
	rlca                                             ; $663d: $07
	rlca                                             ; $663e: $07
	ld   bc, $fc56                                   ; $663f: $01 $56 $fc
	db   $fc                                         ; $6642: $fc
	db   $fc                                         ; $6643: $fc
	db   $fc                                         ; $6644: $fc
	dec  c                                           ; $6645: $0d
	ld   d, d                                        ; $6646: $52
	ld   e, l                                        ; $6647: $5d
	sub  a                                           ; $6648: $97
	ld   a, b                                        ; $6649: $78
	and  c                                           ; $664a: $a1
	ld   [hl], l                                     ; $664b: $75
	sub  b                                           ; $664c: $90
	sbc  [hl]                                        ; $664d: $9e
	ld   l, e                                        ; $664e: $6b
	sbc  d                                           ; $664f: $9a
	ld   a, l                                        ; $6650: $7d
	dec  c                                           ; $6651: $0d
	ld   a, b                                        ; $6652: $78
	ld   d, d                                        ; $6653: $52
	and  c                                           ; $6654: $a1
	ld   h, [hl]                                     ; $6655: $66
	sub  c                                           ; $6656: $91
	ld   a, b                                        ; $6657: $78
	ld   d, d                                        ; $6658: $52
	ld   sp, hl                                      ; $6659: $f9
	dec  c                                           ; $665a: $0d
	nop                                              ; $665b: $00
	ld   a, [bc]                                     ; $665c: $0a
	inc  e                                           ; $665d: $1c
	inc  bc                                          ; $665e: $03
	nop                                              ; $665f: $00
	nop                                              ; $6660: $00
	ld   bc, $fc54                                   ; $6661: $01 $54 $fc
	and  c                                           ; $6664: $a1
	rst  $38                                         ; $6665: $ff
	rst  $38                                         ; $6666: $ff
	or   b                                           ; $6667: $b0
	xor  a                                           ; $6668: $af
	rst  $38                                         ; $6669: $ff
	rst  $38                                         ; $666a: $ff
	rst  $38                                         ; $666b: $ff
	rst  $38                                         ; $666c: $ff
	dec  c                                           ; $666d: $0d
	rst  $38                                         ; $666e: $ff
	rst  $38                                         ; $666f: $ff
	inc  b                                           ; $6670: $04
	ld   c, $04                                      ; $6671: $0e $04
	ld   d, $02                                      ; $6673: $16 $02
	xor  b                                           ; $6675: $a8
	ld   sp, hl                                      ; $6676: $f9
	dec  c                                           ; $6677: $0d
	nop                                              ; $6678: $00
	inc  e                                           ; $6679: $1c
	inc  bc                                          ; $667a: $03
	rlca                                             ; $667b: $07
	rlca                                             ; $667c: $07
	ld   bc, $ffff                                   ; $667d: $01 $ff $ff
	rst  $38                                         ; $6680: $ff
	rst  $38                                         ; $6681: $ff
	ld   l, e                                        ; $6682: $6b
	ld   d, h                                        ; $6683: $54
	ld   l, [hl]                                     ; $6684: $6e
	sbc  l                                           ; $6685: $9d
	ld   a, [$000d]                                  ; $6686: $fa $0d $00
	ld   a, [bc]                                     ; $6689: $0a
	ld   b, $60                                      ; $668a: $06 $60
	rlca                                             ; $668c: $07
	rrca                                             ; $668d: $0f
	nop                                              ; $668e: $00
	ld   bc, $a301                                   ; $668f: $01 $01 $a3
	and  l                                           ; $6692: $a5
	db   $ec                                         ; $6693: $ec
	cp   d                                           ; $6694: $ba
	ld   h, [hl]                                     ; $6695: $66
	sub  c                                           ; $6696: $91
	ld   a, b                                        ; $6697: $78
	ld   d, d                                        ; $6698: $52
	ld   [hl], l                                     ; $6699: $75
	ld   h, a                                        ; $669a: $67
	ld   e, c                                        ; $669b: $59
	ld   sp, hl                                      ; $669c: $f9
	dec  c                                           ; $669d: $0d
	inc  bc                                          ; $669e: $03
	add  [hl]                                        ; $669f: $86
	ld   [bc], a                                     ; $66a0: $02
	xor  l                                           ; $66a1: $ad
	ld   d, b                                        ; $66a2: $50
	ld   [hl], d                                     ; $66a3: $72
	ld   e, c                                        ; $66a4: $59
	ld   d, d                                        ; $66a5: $52
	ld   h, l                                        ; $66a6: $65
	ld   l, l                                        ; $66a7: $6d
	inc  bc                                          ; $66a8: $03
	or   b                                           ; $66a9: $b0
	ld   a, c                                        ; $66aa: $79
	inc  b                                           ; $66ab: $04
	dec  b                                           ; $66ac: $05
	ld   h, l                                        ; $66ad: $65
	ld   [hl], h                                     ; $66ae: $74
	dec  c                                           ; $66af: $0d
	ld   l, e                                        ; $66b0: $6b
	ld   a, h                                        ; $66b1: $7c
	ld   d, h                                        ; $66b2: $54
	sub  a                                           ; $66b3: $97
	adc  l                                           ; $66b4: $8d
	and  b                                           ; $66b5: $a0
	rst  $38                                         ; $66b6: $ff
	rst  $38                                         ; $66b7: $ff
	rst  $38                                         ; $66b8: $ff
	rst  $38                                         ; $66b9: $ff
	dec  c                                           ; $66ba: $0d
	nop                                              ; $66bb: $00
	ld   a, [bc]                                     ; $66bc: $0a
	inc  e                                           ; $66bd: $1c
	inc  bc                                          ; $66be: $03
	ld   [bc], a                                     ; $66bf: $02
	ld   [bc], a                                     ; $66c0: $02
	ld   bc, $0008                                   ; $66c1: $01 $08 $00
	ld   e, l                                        ; $66c4: $5d
	and  c                                           ; $66c5: $a1
	ld   sp, hl                                      ; $66c6: $f9
	dec  c                                           ; $66c7: $0d
	ld   d, b                                        ; $66c8: $50
	ld   a, b                                        ; $66c9: $78
	ld   l, l                                        ; $66ca: $6d
	sbc  [hl]                                        ; $66cb: $9e
	and  e                                           ; $66cc: $a3
	and  l                                           ; $66cd: $a5
	db   $ec                                         ; $66ce: $ec
	cp   d                                           ; $66cf: $ba
	ld   e, d                                        ; $66d0: $5a
	dec  c                                           ; $66d1: $0d
	ld   e, e                                        ; $66d2: $5b
	sub  a                                           ; $66d3: $97
	ld   d, d                                        ; $66d4: $52
	ld   a, b                                        ; $66d5: $78
	ld   a, h                                        ; $66d6: $7c
	ld   sp, hl                                      ; $66d7: $f9
	dec  c                                           ; $66d8: $0d
	nop                                              ; $66d9: $00
	ld   a, [bc]                                     ; $66da: $0a
	inc  e                                           ; $66db: $1c
	inc  bc                                          ; $66dc: $03
	ld   b, $06                                      ; $66dd: $06 $06
	dec  e                                           ; $66df: $1d
	ld   b, b                                        ; $66e0: $40
	inc  de                                          ; $66e1: $13
	inc  bc                                          ; $66e2: $03
	inc  de                                          ; $66e3: $13
	ld   bc, $2903                                   ; $66e4: $01 $03 $29
	nop                                              ; $66e7: $00
	ld   bc, $a16b                                   ; $66e8: $01 $6b $a1
	ld   a, b                                        ; $66eb: $78
	pop  de                                          ; $66ec: $d1
	xor  h                                           ; $66ed: $ac
	ld   a, b                                        ; $66ee: $78
	ld   h, c                                        ; $66ef: $61
	halt                                             ; $66f0: $76
	ld   e, d                                        ; $66f1: $5a
	dec  c                                           ; $66f2: $0d
	ld   d, b                                        ; $66f3: $50
	sbc  c                                           ; $66f4: $99
	sbc  l                                           ; $66f5: $9d
	ld   e, a                                        ; $66f6: $5f
	ld   a, b                                        ; $66f7: $78
	ld   d, d                                        ; $66f8: $52
	ld   [hl], l                                     ; $66f9: $75
	ld   h, l                                        ; $66fa: $65
	sub  l                                           ; $66fb: $95
	sbc  a                                           ; $66fc: $9f
	dec  c                                           ; $66fd: $0d
	nop                                              ; $66fe: $00
	ld   a, [bc]                                     ; $66ff: $0a
	inc  e                                           ; $6700: $1c
	inc  bc                                          ; $6701: $03
	nop                                              ; $6702: $00
	nop                                              ; $6703: $00
	ld   bc, $ffff                                   ; $6704: $01 $ff $ff
	rst  $38                                         ; $6707: $ff
	rst  $38                                         ; $6708: $ff
	or   b                                           ; $6709: $b0
	xor  a                                           ; $670a: $af
	rst  $38                                         ; $670b: $ff
	rst  $38                                         ; $670c: $ff
	rst  $38                                         ; $670d: $ff
	rst  $38                                         ; $670e: $ff
	dec  c                                           ; $670f: $0d
	rst  $38                                         ; $6710: $ff
	rst  $38                                         ; $6711: $ff
	inc  b                                           ; $6712: $04
	ld   c, $04                                      ; $6713: $0e $04
	ld   d, $02                                      ; $6715: $16 $02
	xor  b                                           ; $6717: $a8
	ld   sp, hl                                      ; $6718: $f9
	dec  c                                           ; $6719: $0d
	rst  $38                                         ; $671a: $ff
	rst  $38                                         ; $671b: $ff
	rst  $38                                         ; $671c: $ff
	rst  $38                                         ; $671d: $ff
	ld   l, e                                        ; $671e: $6b
	ld   d, h                                        ; $671f: $54
	ld   l, [hl]                                     ; $6720: $6e
	sbc  l                                           ; $6721: $9d
	ld   a, [$000d]                                  ; $6722: $fa $0d $00
	ld   a, [bc]                                     ; $6725: $0a
	ld   b, $60                                      ; $6726: $06 $60
	rlca                                             ; $6728: $07
	rrca                                             ; $6729: $0f
	nop                                              ; $672a: $00
	ld   bc, $0401                                   ; $672b: $01 $01 $04
	ld   c, $03                                      ; $672e: $0e $03
	sub  b                                           ; $6730: $90
	ld   h, e                                        ; $6731: $63
	and  c                                           ; $6732: $a1
	ld   h, [hl]                                     ; $6733: $66
	sub  c                                           ; $6734: $91
	ld   a, b                                        ; $6735: $78
	ld   d, d                                        ; $6736: $52
	ld   [hl], l                                     ; $6737: $75
	ld   h, a                                        ; $6738: $67
	ld   e, c                                        ; $6739: $59
	ld   sp, hl                                      ; $673a: $f9
	dec  c                                           ; $673b: $0d
	inc  b                                           ; $673c: $04
	xor  d                                           ; $673d: $aa
	ld   [bc], a                                     ; $673e: $02
	ld   e, a                                        ; $673f: $5f
	ld   a, h                                        ; $6740: $7c
	and  a                                           ; $6741: $a7
	call nz, $f5d8                                   ; $6742: $c4 $d8 $f5
	and  b                                           ; $6745: $a0
	ld   a, l                                        ; $6746: $7d
	sub  a                                           ; $6747: $97
	ld   h, a                                        ; $6748: $67
	add  a                                           ; $6749: $87
	ld   e, l                                        ; $674a: $5d
	dec  c                                           ; $674b: $0d
	inc  bc                                          ; $674c: $03
	and  e                                           ; $674d: $a3
	inc  b                                           ; $674e: $04
	rst  $28                                         ; $674f: $ef
	ld   a, c                                        ; $6750: $79
	rst  $38                                         ; $6751: $ff
	rst  $38                                         ; $6752: $ff
	dec  c                                           ; $6753: $0d
	nop                                              ; $6754: $00
	ld   a, [bc]                                     ; $6755: $0a
	inc  e                                           ; $6756: $1c
	inc  bc                                          ; $6757: $03
	ld   [bc], a                                     ; $6758: $02
	ld   [bc], a                                     ; $6759: $02
	ld   bc, $f5dc                                   ; $675a: $01 $dc $f5
	ret                                              ; $675d: $c9


	ld   a, c                                        ; $675e: $79
	ld   l, e                                        ; $675f: $6b
	ld   d, h                                        ; $6760: $54
	dec  b                                           ; $6761: $05
	pop  de                                          ; $6762: $d1
	ld   d, h                                        ; $6763: $54
	ld   a, h                                        ; $6764: $7c
	ld   sp, hl                                      ; $6765: $f9
	dec  c                                           ; $6766: $0d
	ld   h, [hl]                                     ; $6767: $66
	sub  c                                           ; $6768: $91
	sbc  [hl]                                        ; $6769: $9e
	inc  b                                           ; $676a: $04
	ld   a, [bc]                                     ; $676b: $0a
	inc  bc                                          ; $676c: $03
	jp   nc, $037c                                   ; $676d: $d2 $7c $03

	ld   c, e                                        ; $6770: $4b
	add  [hl]                                        ; $6771: $86
	ld   [bc], a                                     ; $6772: $02
	ld   a, a                                        ; $6773: $7f
	ld   [hl], c                                     ; $6774: $71
	ld   [hl], h                                     ; $6775: $74
	dec  c                                           ; $6776: $0d
	ld   [bc], a                                     ; $6777: $02
	jp   nz, Jump_061_7452                           ; $6778: $c2 $52 $74

	adc  l                                           ; $677b: $8d
	sbc  c                                           ; $677c: $99
	ld   sp, hl                                      ; $677d: $f9
	dec  c                                           ; $677e: $0d
	nop                                              ; $677f: $00
	ld   a, [bc]                                     ; $6780: $0a
	inc  e                                           ; $6781: $1c
	inc  bc                                          ; $6782: $03
	ld   b, $06                                      ; $6783: $06 $06
	dec  e                                           ; $6785: $1d
	ld   b, b                                        ; $6786: $40
	inc  de                                          ; $6787: $13
	inc  bc                                          ; $6788: $03
	inc  de                                          ; $6789: $13
	ld   bc, $2902                                   ; $678a: $01 $02 $29
	nop                                              ; $678d: $00
	ld   bc, $5b75                                   ; $678e: $01 $75 $5b
	ld   a, b                                        ; $6791: $78
	ld   d, d                                        ; $6792: $52
	ld   [hl], l                                     ; $6793: $75
	ld   h, l                                        ; $6794: $65
	sub  l                                           ; $6795: $95
	sbc  a                                           ; $6796: $9f
	dec  c                                           ; $6797: $0d
	pop  de                                          ; $6798: $d1
	xor  h                                           ; $6799: $ac
	ld   a, b                                        ; $679a: $78
	ld   h, c                                        ; $679b: $61
	halt                                             ; $679c: $76
	and  b                                           ; $679d: $a0
	ld   [bc], a                                     ; $679e: $02
	sbc  l                                           ; $679f: $9d
	ld   d, h                                        ; $67a0: $54
	ld   a, h                                        ; $67a1: $7c
	ld   a, l                                        ; $67a2: $7d
	dec  c                                           ; $67a3: $0d
	ld   e, b                                        ; $67a4: $58
	sub  [hl]                                        ; $67a5: $96
	ld   h, l                                        ; $67a6: $65
	ld   a, b                                        ; $67a7: $78
	ld   h, e                                        ; $67a8: $63
	ld   d, d                                        ; $67a9: $52
	sbc  a                                           ; $67aa: $9f
	dec  c                                           ; $67ab: $0d
	nop                                              ; $67ac: $00
	ld   a, [bc]                                     ; $67ad: $0a
	inc  e                                           ; $67ae: $1c
	inc  bc                                          ; $67af: $03
	nop                                              ; $67b0: $00
	nop                                              ; $67b1: $00
	ld   bc, $ffff                                   ; $67b2: $01 $ff $ff
	rst  $38                                         ; $67b5: $ff
	rst  $38                                         ; $67b6: $ff
	or   b                                           ; $67b7: $b0
	xor  a                                           ; $67b8: $af
	rst  $38                                         ; $67b9: $ff
	rst  $38                                         ; $67ba: $ff
	rst  $38                                         ; $67bb: $ff
	rst  $38                                         ; $67bc: $ff
	dec  c                                           ; $67bd: $0d
	rst  $38                                         ; $67be: $ff
	rst  $38                                         ; $67bf: $ff
	inc  b                                           ; $67c0: $04
	ld   c, $04                                      ; $67c1: $0e $04
	ld   d, $02                                      ; $67c3: $16 $02
	xor  b                                           ; $67c5: $a8
	ld   sp, hl                                      ; $67c6: $f9
	dec  c                                           ; $67c7: $0d
	rst  $38                                         ; $67c8: $ff
	rst  $38                                         ; $67c9: $ff
	rst  $38                                         ; $67ca: $ff
	rst  $38                                         ; $67cb: $ff
	ld   l, e                                        ; $67cc: $6b
	ld   d, h                                        ; $67cd: $54
	ld   l, [hl]                                     ; $67ce: $6e
	sbc  l                                           ; $67cf: $9d
	ld   a, [$000d]                                  ; $67d0: $fa $0d $00
	ld   a, [bc]                                     ; $67d3: $0a
	ld   b, $60                                      ; $67d4: $06 $60
	rlca                                             ; $67d6: $07
	add  hl, de                                      ; $67d7: $19
	dec  b                                           ; $67d8: $05
	inc  bc                                          ; $67d9: $03
	ld   h, e                                        ; $67da: $63
	ld   e, l                                        ; $67db: $5d
	sub  a                                           ; $67dc: $97
	ld   h, e                                        ; $67dd: $63
	and  c                                           ; $67de: $a1
	ld   e, d                                        ; $67df: $5a
	rst  $38                                         ; $67e0: $ff
	rst  $38                                         ; $67e1: $ff
	nop                                              ; $67e2: $00
	nop                                              ; $67e3: $00
	and  e                                           ; $67e4: $a3
	and  l                                           ; $67e5: $a5
	db   $ec                                         ; $67e6: $ec
	cp   d                                           ; $67e7: $ba
	ld   e, d                                        ; $67e8: $5a
	rst  $38                                         ; $67e9: $ff
	rst  $38                                         ; $67ea: $ff
	nop                                              ; $67eb: $00
	ld   bc, $0e04                                   ; $67ec: $01 $04 $0e
	inc  bc                                          ; $67ef: $03
	sub  b                                           ; $67f0: $90
	ld   h, e                                        ; $67f1: $63
	and  c                                           ; $67f2: $a1
	ld   e, d                                        ; $67f3: $5a
	rst  $38                                         ; $67f4: $ff
	rst  $38                                         ; $67f5: $ff
	nop                                              ; $67f6: $00
	ld   [bc], a                                     ; $67f7: $02
	rlca                                             ; $67f8: $07
	sbc  [hl]                                        ; $67f9: $9e
	inc  c                                           ; $67fa: $0c
	ld   [bc], a                                     ; $67fb: $02
	inc  bc                                          ; $67fc: $03
	ld   bc, $2000                                   ; $67fd: $01 $00 $20
	nop                                              ; $6800: $00
	rlca                                             ; $6801: $07
	inc  [hl]                                        ; $6802: $34
	dec  c                                           ; $6803: $0d
	ld   [bc], a                                     ; $6804: $02
	inc  bc                                          ; $6805: $03
	ld   bc, $2001                                   ; $6806: $01 $01 $20
	nop                                              ; $6809: $00
	rlca                                             ; $680a: $07
	jp   nc, $020d                                   ; $680b: $d2 $0d $02

	inc  bc                                          ; $680e: $03
	ld   bc, $2002                                   ; $680f: $01 $02 $20
	nop                                              ; $6812: $00
	ld   b, $4d                                      ; $6813: $06 $4d
	inc  c                                           ; $6815: $0c
	inc  e                                           ; $6816: $1c
	inc  bc                                          ; $6817: $03
	nop                                              ; $6818: $00
	nop                                              ; $6819: $00
	ld   bc, $5477                                   ; $681a: $01 $77 $54
	ld   h, l                                        ; $681d: $65
	ld   l, l                                        ; $681e: $6d
	ld   a, h                                        ; $681f: $7c
	ld   sp, hl                                      ; $6820: $f9
	dec  c                                           ; $6821: $0d
	ld   h, l                                        ; $6822: $65
	sub  e                                           ; $6823: $93
	adc  l                                           ; $6824: $8d
	halt                                             ; $6825: $76
	ld   [bc], a                                     ; $6826: $02
	sbc  l                                           ; $6827: $9d
	ld   [hl], c                                     ; $6828: $71
	ld   l, l                                        ; $6829: $6d
	ld   a, h                                        ; $682a: $7c
	ld   a, l                                        ; $682b: $7d
	dec  c                                           ; $682c: $0d
	ld   d, b                                        ; $682d: $50
	ld   a, b                                        ; $682e: $78
	ld   l, l                                        ; $682f: $6d
	sub  [hl]                                        ; $6830: $96
	sbc  a                                           ; $6831: $9f
	dec  c                                           ; $6832: $0d
	nop                                              ; $6833: $00
	ld   a, [bc]                                     ; $6834: $0a
	ld   bc, $ffff                                   ; $6835: $01 $ff $ff
	or   b                                           ; $6838: $b0
	xor  a                                           ; $6839: $af
	and  b                                           ; $683a: $a0
	dec  b                                           ; $683b: $05
	pop  af                                          ; $683c: $f1
	ld   [hl], d                                     ; $683d: $72
	ld   a, h                                        ; $683e: $7c
	ld   e, d                                        ; $683f: $5a
	ld   h, l                                        ; $6840: $65
	sub  e                                           ; $6841: $93
	adc  l                                           ; $6842: $8d
	rst  $38                                         ; $6843: $ff
	rst  $38                                         ; $6844: $ff
	dec  c                                           ; $6845: $0d
	rst  $38                                         ; $6846: $ff
	rst  $38                                         ; $6847: $ff
	and  c                                           ; $6848: $a1
	ld   sp, hl                                      ; $6849: $f9
	dec  c                                           ; $684a: $0d
	nop                                              ; $684b: $00
	inc  e                                           ; $684c: $1c
	inc  bc                                          ; $684d: $03
	rlca                                             ; $684e: $07
	rlca                                             ; $684f: $07
	ld   bc, $afb0                                   ; $6850: $01 $b0 $af
	rst  $38                                         ; $6853: $ff
	rst  $38                                         ; $6854: $ff
	inc  b                                           ; $6855: $04
	ld   c, $04                                      ; $6856: $0e $04
	ld   d, $02                                      ; $6858: $16 $02
	xor  b                                           ; $685a: $a8
	rst  $38                                         ; $685b: $ff
	ld   l, e                                        ; $685c: $6b
	ld   d, h                                        ; $685d: $54
	ld   l, [hl]                                     ; $685e: $6e
	sbc  l                                           ; $685f: $9d
	ld   a, [$000d]                                  ; $6860: $fa $0d $00
	ld   a, [bc]                                     ; $6863: $0a
	ld   b, $60                                      ; $6864: $06 $60
	rlca                                             ; $6866: $07
	rrca                                             ; $6867: $0f
	nop                                              ; $6868: $00
	ld   bc, $6301                                   ; $6869: $01 $01 $63
	ld   e, l                                        ; $686c: $5d
	sub  a                                           ; $686d: $97
	ld   h, e                                        ; $686e: $63
	and  c                                           ; $686f: $a1
	sbc  [hl]                                        ; $6870: $9e
	ld   h, [hl]                                     ; $6871: $66
	sub  c                                           ; $6872: $91
	ld   a, b                                        ; $6873: $78
	ld   d, d                                        ; $6874: $52
	ld   [hl], l                                     ; $6875: $75
	ld   h, a                                        ; $6876: $67
	ld   e, c                                        ; $6877: $59
	ld   sp, hl                                      ; $6878: $f9
	dec  c                                           ; $6879: $0d
	ld   [bc], a                                     ; $687a: $02
	cp   h                                           ; $687b: $bc
	ld   a, h                                        ; $687c: $7c
	inc  bc                                          ; $687d: $03
	ld   a, e                                        ; $687e: $7b
	ld   [bc], a                                     ; $687f: $02
	ld   a, a                                        ; $6880: $7f
	ld   [hl], l                                     ; $6881: $75
	sbc  [hl]                                        ; $6882: $9e
	ld   [bc], a                                     ; $6883: $02
	jr   nz, jr_061_6889                             ; $6884: $20 $03

	ld   [hl], l                                     ; $6886: $75
	inc  b                                           ; $6887: $04
	and  b                                           ; $6888: $a0

jr_061_6889:
	dec  b                                           ; $6889: $05
	ld   h, b                                        ; $688a: $60
	ld   a, c                                        ; $688b: $79
	or   b                                           ; $688c: $b0
	xor  a                                           ; $688d: $af
	and  b                                           ; $688e: $a0
	dec  c                                           ; $688f: $0d
	dec  b                                           ; $6890: $05
	pop  af                                          ; $6891: $f1
	ld   [hl], c                                     ; $6892: $71
	ld   [hl], h                                     ; $6893: $74
	dec  b                                           ; $6894: $05
	ldh  [$03], a                                    ; $6895: $e0 $03
	sub  b                                           ; $6897: $90
	and  b                                           ; $6898: $a0
	inc  bc                                          ; $6899: $03
	ld   h, d                                        ; $689a: $62
	inc  b                                           ; $689b: $04
	dec  bc                                          ; $689c: $0b
	ld   h, e                                        ; $689d: $63
	ld   l, c                                        ; $689e: $69
	sbc  c                                           ; $689f: $99
	rst  $38                                         ; $68a0: $ff
	rst  $38                                         ; $68a1: $ff
	dec  c                                           ; $68a2: $0d
	nop                                              ; $68a3: $00
	ld   a, [bc]                                     ; $68a4: $0a
	inc  e                                           ; $68a5: $1c
	inc  bc                                          ; $68a6: $03
	rlca                                             ; $68a7: $07
	rlca                                             ; $68a8: $07
	ld   bc, $9756                                   ; $68a9: $01 $56 $97
	ld   e, l                                        ; $68ac: $5d
	sbc  [hl]                                        ; $68ad: $9e
	ld   h, e                                        ; $68ae: $63
	sbc  l                                           ; $68af: $9d
	ld   e, d                                        ; $68b0: $5a
	ld   h, l                                        ; $68b1: $65
	ld   d, d                                        ; $68b2: $52
	inc  bc                                          ; $68b3: $03
	ld   a, e                                        ; $68b4: $7b
	ld   [bc], a                                     ; $68b5: $02
	ld   a, a                                        ; $68b6: $7f
	ld   a, e                                        ; $68b7: $7b
	sbc  a                                           ; $68b8: $9f
	dec  c                                           ; $68b9: $0d
	adc  h                                           ; $68ba: $8c
	ld   d, b                                        ; $68bb: $50
	sbc  [hl]                                        ; $68bc: $9e
	ld   l, e                                        ; $68bd: $6b
	sbc  d                                           ; $68be: $9a
	ld   a, l                                        ; $68bf: $7d
	ld   a, b                                        ; $68c0: $78
	ld   d, d                                        ; $68c1: $52
	ld   [hl], l                                     ; $68c2: $75
	ld   h, l                                        ; $68c3: $65
	sub  l                                           ; $68c4: $95
	sbc  a                                           ; $68c5: $9f
	dec  c                                           ; $68c6: $0d
	ld   d, d                                        ; $68c7: $52
	ld   e, l                                        ; $68c8: $5d
	sub  a                                           ; $68c9: $97
	ld   a, b                                        ; $68ca: $78
	and  c                                           ; $68cb: $a1
	ld   [hl], l                                     ; $68cc: $75
	sub  b                                           ; $68cd: $90
	rst  $38                                         ; $68ce: $ff
	rst  $38                                         ; $68cf: $ff
	dec  c                                           ; $68d0: $0d
	nop                                              ; $68d1: $00
	ld   a, [bc]                                     ; $68d2: $0a
	inc  e                                           ; $68d3: $1c
	inc  bc                                          ; $68d4: $03
	nop                                              ; $68d5: $00
	nop                                              ; $68d6: $00
	ld   bc, $fc54                                   ; $68d7: $01 $54 $fc
	and  c                                           ; $68da: $a1
	rst  $38                                         ; $68db: $ff
	rst  $38                                         ; $68dc: $ff
	or   b                                           ; $68dd: $b0
	xor  a                                           ; $68de: $af
	rst  $38                                         ; $68df: $ff
	rst  $38                                         ; $68e0: $ff
	rst  $38                                         ; $68e1: $ff
	rst  $38                                         ; $68e2: $ff
	dec  c                                           ; $68e3: $0d
	rst  $38                                         ; $68e4: $ff
	rst  $38                                         ; $68e5: $ff
	inc  b                                           ; $68e6: $04
	ld   c, $04                                      ; $68e7: $0e $04
	ld   d, $02                                      ; $68e9: $16 $02
	xor  b                                           ; $68eb: $a8
	ld   sp, hl                                      ; $68ec: $f9
	dec  c                                           ; $68ed: $0d
	rst  $38                                         ; $68ee: $ff
	rst  $38                                         ; $68ef: $ff
	rst  $38                                         ; $68f0: $ff
	rst  $38                                         ; $68f1: $ff
	ld   l, e                                        ; $68f2: $6b
	ld   d, h                                        ; $68f3: $54
	ld   l, [hl]                                     ; $68f4: $6e
	sbc  l                                           ; $68f5: $9d
	ld   a, [$000d]                                  ; $68f6: $fa $0d $00
	ld   a, [bc]                                     ; $68f9: $0a
	ld   b, $60                                      ; $68fa: $06 $60
	rlca                                             ; $68fc: $07
	rrca                                             ; $68fd: $0f
	nop                                              ; $68fe: $00
	ld   bc, $a301                                   ; $68ff: $01 $01 $a3
	and  l                                           ; $6902: $a5
	db   $ec                                         ; $6903: $ec
	cp   d                                           ; $6904: $ba
	ld   h, [hl]                                     ; $6905: $66
	sub  c                                           ; $6906: $91
	ld   a, b                                        ; $6907: $78
	ld   d, d                                        ; $6908: $52
	ld   [hl], l                                     ; $6909: $75
	ld   h, a                                        ; $690a: $67
	ld   e, c                                        ; $690b: $59
	ld   sp, hl                                      ; $690c: $f9
	dec  c                                           ; $690d: $0d
	or   b                                           ; $690e: $b0
	xor  a                                           ; $690f: $af
	and  b                                           ; $6910: $a0
	dec  b                                           ; $6911: $05
	pop  af                                          ; $6912: $f1
	ld   [hl], d                                     ; $6913: $72
	ld   a, h                                        ; $6914: $7c
	ld   e, d                                        ; $6915: $5a
	add  b                                           ; $6916: $80
	ld   l, e                                        ; $6917: $6b
	ld   e, c                                        ; $6918: $59
	ld   a, b                                        ; $6919: $78
	dec  c                                           ; $691a: $0d
	ld   h, l                                        ; $691b: $65
	sub  e                                           ; $691c: $93
	adc  l                                           ; $691d: $8d
	halt                                             ; $691e: $76
	ld   e, c                                        ; $691f: $59
	rst  $38                                         ; $6920: $ff
	rst  $38                                         ; $6921: $ff
	dec  c                                           ; $6922: $0d
	nop                                              ; $6923: $00
	ld   a, [bc]                                     ; $6924: $0a
	inc  e                                           ; $6925: $1c
	inc  bc                                          ; $6926: $03
	inc  b                                           ; $6927: $04
	inc  b                                           ; $6928: $04
	ld   bc, $9a6b                                   ; $6929: $01 $6b $9a
	ld   l, [hl]                                     ; $692c: $6e
	ld   [hl], c                                     ; $692d: $71
	ld   l, l                                        ; $692e: $6d
	sub  a                                           ; $692f: $97
	sbc  [hl]                                        ; $6930: $9e
	and  e                                           ; $6931: $a3
	and  l                                           ; $6932: $a5
	db   $ec                                         ; $6933: $ec
	cp   d                                           ; $6934: $ba
	ld   a, l                                        ; $6935: $7d
	dec  c                                           ; $6936: $0d
	ld   h, a                                        ; $6937: $67
	ld   e, [hl]                                     ; $6938: $5e
	ld   a, c                                        ; $6939: $79
	ld   h, [hl]                                     ; $693a: $66
	adc  h                                           ; $693b: $8c
	and  c                                           ; $693c: $a1
	ld   h, l                                        ; $693d: $65
	ld   a, c                                        ; $693e: $79
	ld   e, l                                        ; $693f: $5d
	sbc  c                                           ; $6940: $99
	sbc  l                                           ; $6941: $9d
	sbc  a                                           ; $6942: $9f
	dec  c                                           ; $6943: $0d
	dec  b                                           ; $6944: $05
	ld   b, l                                        ; $6945: $45
	inc  b                                           ; $6946: $04
	xor  d                                           ; $6947: $aa
	ld   a, l                                        ; $6948: $7d
	or   b                                           ; $6949: $b0
	xor  a                                           ; $694a: $af
	inc  b                                           ; $694b: $04
	ld   a, [hl]                                     ; $694c: $7e
	inc  b                                           ; $694d: $04
	adc  a                                           ; $694e: $8f
	dec  b                                           ; $694f: $05
	pop  af                                          ; $6950: $f1
	ld   [hl], h                                     ; $6951: $74
	ld   l, l                                        ; $6952: $6d
	sbc  [hl]                                        ; $6953: $9e
	halt                                             ; $6954: $76
	ld   e, c                                        ; $6955: $59
	rst  $38                                         ; $6956: $ff
	dec  c                                           ; $6957: $0d
	nop                                              ; $6958: $00
	ld   a, [bc]                                     ; $6959: $0a
	ld   bc, $508c                                   ; $695a: $01 $8c $50
	sbc  [hl]                                        ; $695d: $9e
	ld   l, e                                        ; $695e: $6b
	and  c                                           ; $695f: $a1
	ld   a, b                                        ; $6960: $78
	pop  de                                          ; $6961: $d1
	xor  h                                           ; $6962: $ac
	ld   a, b                                        ; $6963: $78
	dec  b                                           ; $6964: $05
	jr   nz, jr_061_69e4                             ; $6965: $20 $7d

	dec  c                                           ; $6967: $0d
	ld   e, b                                        ; $6968: $58
	ld   d, d                                        ; $6969: $52
	halt                                             ; $696a: $76
	ld   d, d                                        ; $696b: $52
	ld   [hl], h                                     ; $696c: $74
	rst  $38                                         ; $696d: $ff
	rst  $38                                         ; $696e: $ff
	dec  c                                           ; $696f: $0d
	nop                                              ; $6970: $00
	ld   a, [bc]                                     ; $6971: $0a
	inc  e                                           ; $6972: $1c
	inc  bc                                          ; $6973: $03
	nop                                              ; $6974: $00
	nop                                              ; $6975: $00
	ld   bc, $ffff                                   ; $6976: $01 $ff $ff
	rst  $38                                         ; $6979: $ff
	rst  $38                                         ; $697a: $ff
	or   b                                           ; $697b: $b0
	xor  a                                           ; $697c: $af
	rst  $38                                         ; $697d: $ff
	rst  $38                                         ; $697e: $ff
	rst  $38                                         ; $697f: $ff
	rst  $38                                         ; $6980: $ff
	dec  c                                           ; $6981: $0d
	rst  $38                                         ; $6982: $ff
	rst  $38                                         ; $6983: $ff
	inc  b                                           ; $6984: $04
	ld   c, $04                                      ; $6985: $0e $04
	ld   d, $02                                      ; $6987: $16 $02
	xor  b                                           ; $6989: $a8
	ld   sp, hl                                      ; $698a: $f9
	dec  c                                           ; $698b: $0d
	rst  $38                                         ; $698c: $ff
	rst  $38                                         ; $698d: $ff
	rst  $38                                         ; $698e: $ff
	rst  $38                                         ; $698f: $ff
	ld   l, e                                        ; $6990: $6b
	ld   d, h                                        ; $6991: $54
	ld   l, [hl]                                     ; $6992: $6e
	sbc  l                                           ; $6993: $9d
	ld   a, [$000d]                                  ; $6994: $fa $0d $00
	ld   a, [bc]                                     ; $6997: $0a
	ld   b, $60                                      ; $6998: $06 $60
	rlca                                             ; $699a: $07
	rrca                                             ; $699b: $0f
	nop                                              ; $699c: $00
	ld   bc, $0401                                   ; $699d: $01 $01 $04
	ld   c, $03                                      ; $69a0: $0e $03
	sub  b                                           ; $69a2: $90
	ld   h, e                                        ; $69a3: $63
	and  c                                           ; $69a4: $a1
	ld   h, [hl]                                     ; $69a5: $66
	sub  c                                           ; $69a6: $91
	ld   a, b                                        ; $69a7: $78
	ld   d, d                                        ; $69a8: $52
	ld   [hl], l                                     ; $69a9: $75
	ld   h, a                                        ; $69aa: $67
	ld   e, c                                        ; $69ab: $59
	ld   sp, hl                                      ; $69ac: $f9
	dec  c                                           ; $69ad: $0d
	inc  b                                           ; $69ae: $04
	ld   c, $03                                      ; $69af: $0e $03
	sub  b                                           ; $69b1: $90
	ld   [bc], a                                     ; $69b2: $02
	jr   nz, jr_061_69ba                             ; $69b3: $20 $05

	inc  c                                           ; $69b5: $0c
	sbc  a                                           ; $69b6: $9f
	ld   h, l                                        ; $69b7: $65
	sub  e                                           ; $69b8: $93
	adc  l                                           ; $69b9: $8d

jr_061_69ba:
	ld   a, l                                        ; $69ba: $7d
	or   b                                           ; $69bb: $b0
	xor  a                                           ; $69bc: $af
	dec  b                                           ; $69bd: $05
	pop  af                                          ; $69be: $f1
	ld   l, a                                        ; $69bf: $6f
	sbc  a                                           ; $69c0: $9f
	dec  c                                           ; $69c1: $0d
	ld   a, b                                        ; $69c2: $78
	and  c                                           ; $69c3: $a1
	ld   l, a                                        ; $69c4: $6f
	sub  c                                           ; $69c5: $91
	ld   [hl], c                                     ; $69c6: $71
	ld   [hl], h                                     ; $69c7: $74
	rst  $38                                         ; $69c8: $ff
	rst  $38                                         ; $69c9: $ff
	dec  c                                           ; $69ca: $0d
	nop                                              ; $69cb: $00
	ld   a, [bc]                                     ; $69cc: $0a
	inc  e                                           ; $69cd: $1c
	inc  bc                                          ; $69ce: $03
	inc  b                                           ; $69cf: $04
	inc  b                                           ; $69d0: $04
	ld   bc, $7c50                                   ; $69d1: $01 $50 $7c
	ld   a, e                                        ; $69d4: $7b
	db   $fc                                         ; $69d5: $fc
	sbc  [hl]                                        ; $69d6: $9e
	ld   [$5d00], sp                                 ; $69d7: $08 $00 $5d
	and  c                                           ; $69da: $a1
	sbc  a                                           ; $69db: $9f
	dec  c                                           ; $69dc: $0d
	adc  h                                           ; $69dd: $8c
	ld   h, [hl]                                     ; $69de: $66
	adc  a                                           ; $69df: $8f
	ld   a, c                                        ; $69e0: $79
	sub  d                                           ; $69e1: $92
	ld   [hl], c                                     ; $69e2: $71
	ld   [hl], h                                     ; $69e3: $74

jr_061_69e4:
	ld   l, a                                        ; $69e4: $6f
	sub  l                                           ; $69e5: $95
	ld   d, h                                        ; $69e6: $54
	ld   l, [hl]                                     ; $69e7: $6e
	ld   d, d                                        ; $69e8: $52
	sbc  a                                           ; $69e9: $9f
	dec  c                                           ; $69ea: $0d
	ld   a, e                                        ; $69eb: $7b
	sbc  [hl]                                        ; $69ec: $9e
	ld   e, b                                        ; $69ed: $58
	ld   [bc], a                                     ; $69ee: $02
	add  b                                           ; $69ef: $80
	ld   d, d                                        ; $69f0: $52
	ld   l, [hl]                                     ; $69f1: $6e
	ld   e, c                                        ; $69f2: $59
	sub  a                                           ; $69f3: $97
	sbc  a                                           ; $69f4: $9f
	dec  c                                           ; $69f5: $0d
	nop                                              ; $69f6: $00
	ld   a, [bc]                                     ; $69f7: $0a
	inc  e                                           ; $69f8: $1c
	inc  bc                                          ; $69f9: $03
	nop                                              ; $69fa: $00
	nop                                              ; $69fb: $00
	ld   bc, $ffff                                   ; $69fc: $01 $ff $ff
	rst  $38                                         ; $69ff: $ff
	rst  $38                                         ; $6a00: $ff
	or   b                                           ; $6a01: $b0
	xor  a                                           ; $6a02: $af
	rst  $38                                         ; $6a03: $ff
	rst  $38                                         ; $6a04: $ff
	rst  $38                                         ; $6a05: $ff
	rst  $38                                         ; $6a06: $ff
	dec  c                                           ; $6a07: $0d
	rst  $38                                         ; $6a08: $ff
	rst  $38                                         ; $6a09: $ff
	inc  b                                           ; $6a0a: $04
	ld   c, $04                                      ; $6a0b: $0e $04
	ld   d, $02                                      ; $6a0d: $16 $02
	xor  b                                           ; $6a0f: $a8
	ld   sp, hl                                      ; $6a10: $f9
	dec  c                                           ; $6a11: $0d
	rst  $38                                         ; $6a12: $ff
	rst  $38                                         ; $6a13: $ff
	rst  $38                                         ; $6a14: $ff
	rst  $38                                         ; $6a15: $ff
	ld   l, e                                        ; $6a16: $6b
	ld   d, h                                        ; $6a17: $54
	ld   l, [hl]                                     ; $6a18: $6e
	sbc  l                                           ; $6a19: $9d
	ld   a, [$000d]                                  ; $6a1a: $fa $0d $00
	ld   a, [bc]                                     ; $6a1d: $0a
	ld   b, $60                                      ; $6a1e: $06 $60
	rlca                                             ; $6a20: $07
	inc  e                                           ; $6a21: $1c
	inc  bc                                          ; $6a22: $03
	nop                                              ; $6a23: $00
	nop                                              ; $6a24: $00
	ld   bc, $0906                                   ; $6a25: $01 $06 $09
	ld   [hl], d                                     ; $6a28: $72
	inc  b                                           ; $6a29: $04
	call nc, $067c                                   ; $6a2a: $d4 $7c $06
	ld   [$0d7d], sp                                 ; $6a2d: $08 $7d $0d
	ld   bc, $7a07                                   ; $6a30: $01 $07 $7a
	sbc  d                                           ; $6a33: $9a
	sbc  c                                           ; $6a34: $99
	ld   b, $2f                                      ; $6a35: $06 $2f
	ld   [bc], a                                     ; $6a37: $02
	inc  [hl]                                        ; $6a38: $34
	ld   bc, $9f08                                   ; $6a39: $01 $08 $9f
	dec  c                                           ; $6a3c: $0d
	ld   h, c                                        ; $6a3d: $61
	sbc  d                                           ; $6a3e: $9a
	ld   a, l                                        ; $6a3f: $7d
	sbc  [hl]                                        ; $6a40: $9e
	ld   [hl], a                                     ; $6a41: $77
	ld   d, h                                        ; $6a42: $54
	ld   d, d                                        ; $6a43: $52
	ld   d, h                                        ; $6a44: $54
	ld   [bc], a                                     ; $6a45: $02
	jp   Jump_061_6559                               ; $6a46: $c3 $59 $65


	sub  a                                           ; $6a49: $97
	ld   sp, hl                                      ; $6a4a: $f9
	dec  c                                           ; $6a4b: $0d
	nop                                              ; $6a4c: $00
	ld   a, [bc]                                     ; $6a4d: $0a
	rrca                                             ; $6a4e: $0f
	nop                                              ; $6a4f: $00
	ld   bc, $0601                                   ; $6a50: $01 $01 $06
	cpl                                              ; $6a53: $2f
	ld   [bc], a                                     ; $6a54: $02
	inc  [hl]                                        ; $6a55: $34
	ld   e, d                                        ; $6a56: $5a
	ld   a, d                                        ; $6a57: $7a
	sbc  d                                           ; $6a58: $9a
	sbc  c                                           ; $6a59: $99
	ld   [hl], c                                     ; $6a5a: $71
	ld   [hl], h                                     ; $6a5b: $74
	dec  c                                           ; $6a5c: $0d
	ld   d, d                                        ; $6a5d: $52
	ld   d, h                                        ; $6a5e: $54
	ld   h, c                                        ; $6a5f: $61
	halt                                             ; $6a60: $76
	ld   a, l                                        ; $6a61: $7d
	rst  $38                                         ; $6a62: $ff
	rst  $38                                         ; $6a63: $ff
	dec  c                                           ; $6a64: $0d
	nop                                              ; $6a65: $00
	ld   a, [bc]                                     ; $6a66: $0a
	add  hl, de                                      ; $6a67: $19
	dec  b                                           ; $6a68: $05
	inc  bc                                          ; $6a69: $03
	inc  bc                                          ; $6a6a: $03
	ld   e, c                                        ; $6a6b: $59
	ld   [bc], a                                     ; $6a6c: $02
	ld   [hl-], a                                    ; $6a6d: $32
	ld   sp, hl                                      ; $6a6e: $f9
	nop                                              ; $6a6f: $00
	nop                                              ; $6a70: $00
	dec  b                                           ; $6a71: $05
	and  h                                           ; $6a72: $a4
	ld   [hl], c                                     ; $6a73: $71
	ld   e, c                                        ; $6a74: $59
	ld   e, e                                        ; $6a75: $5b
	ld   sp, hl                                      ; $6a76: $f9
	nop                                              ; $6a77: $00
	ld   bc, $5494                                   ; $6a78: $01 $94 $54
	sbc  d                                           ; $6a7b: $9a
	ld   d, d                                        ; $6a7c: $52
	ld   sp, hl                                      ; $6a7d: $f9
	nop                                              ; $6a7e: $00
	ld   [bc], a                                     ; $6a7f: $02
	rlca                                             ; $6a80: $07
	dec  hl                                          ; $6a81: $2b
	rrca                                             ; $6a82: $0f
	ld   [bc], a                                     ; $6a83: $02
	inc  bc                                          ; $6a84: $03
	ld   bc, $2000                                   ; $6a85: $01 $00 $20
	nop                                              ; $6a88: $00
	rlca                                             ; $6a89: $07
	ld   [hl], d                                     ; $6a8a: $72
	rrca                                             ; $6a8b: $0f
	ld   [bc], a                                     ; $6a8c: $02
	inc  bc                                          ; $6a8d: $03
	ld   bc, $2001                                   ; $6a8e: $01 $01 $20
	nop                                              ; $6a91: $00
	rlca                                             ; $6a92: $07
	xor  [hl]                                        ; $6a93: $ae
	rrca                                             ; $6a94: $0f
	ld   [bc], a                                     ; $6a95: $02
	inc  bc                                          ; $6a96: $03
	ld   bc, $2002                                   ; $6a97: $01 $02 $20
	nop                                              ; $6a9a: $00
	ld   b, $d5                                      ; $6a9b: $06 $d5
	ld   c, $1c                                      ; $6a9d: $0e $1c
	inc  bc                                          ; $6a9f: $03
	nop                                              ; $6aa0: $00
	nop                                              ; $6aa1: $00
	ld   bc, $5477                                   ; $6aa2: $01 $77 $54
	ld   h, l                                        ; $6aa5: $65
	ld   l, l                                        ; $6aa6: $6d
	ld   a, h                                        ; $6aa7: $7c
	ld   sp, hl                                      ; $6aa8: $f9
	dec  c                                           ; $6aa9: $0d
	db   $dd                                         ; $6aaa: $dd
	or   d                                           ; $6aab: $b2
	ld   [hl], c                                     ; $6aac: $71
	halt                                             ; $6aad: $76
	ld   h, l                                        ; $6aae: $65
	ld   a, b                                        ; $6aaf: $78
	ld   d, d                                        ; $6ab0: $52
	ld   [hl], l                                     ; $6ab1: $75
	ld   [bc], a                                     ; $6ab2: $02
	ld   h, l                                        ; $6ab3: $65
	ld   d, [hl]                                     ; $6ab4: $56
	ld   [hl], h                                     ; $6ab5: $74
	dec  c                                           ; $6ab6: $0d
	nop                                              ; $6ab7: $00
	ld   a, [bc]                                     ; $6ab8: $0a
	ld   bc, $715b                                   ; $6ab9: $01 $5b $71
	halt                                             ; $6abc: $76
	ld   bc, $0307                                   ; $6abd: $01 $07 $03
	ld   e, c                                        ; $6ac0: $59
	ld   [bc], a                                     ; $6ac1: $02
	ld   [hl-], a                                    ; $6ac2: $32
	ld   bc, $6608                                   ; $6ac3: $01 $08 $66
	sub  c                                           ; $6ac6: $91
	ld   a, b                                        ; $6ac7: $78
	ld   d, d                                        ; $6ac8: $52
	ld   e, c                                        ; $6ac9: $59
	ld   h, l                                        ; $6aca: $65
	sub  a                                           ; $6acb: $97
	dec  c                                           ; $6acc: $0d
	ld   l, e                                        ; $6acd: $6b
	ld   a, h                                        ; $6ace: $7c
	adc  h                                           ; $6acf: $8c
	adc  h                                           ; $6ad0: $8c
	inc  b                                           ; $6ad1: $04
	sub  l                                           ; $6ad2: $95
	ld   [bc], a                                     ; $6ad3: $02
	ld   hl, $0479                                   ; $6ad4: $21 $79 $04
	jp   Jump_061_6d71                               ; $6ad7: $c3 $71 $6d


	halt                                             ; $6ada: $76
	ld   e, c                                        ; $6adb: $59
	rst  $38                                         ; $6adc: $ff
	rst  $38                                         ; $6add: $ff
	dec  c                                           ; $6ade: $0d
	ld   l, [hl]                                     ; $6adf: $6e
	halt                                             ; $6ae0: $76
	ld   h, l                                        ; $6ae1: $65
	ld   l, l                                        ; $6ae2: $6d
	sub  a                                           ; $6ae3: $97
	sbc  [hl]                                        ; $6ae4: $9e
	inc  bc                                          ; $6ae5: $03
	xor  c                                           ; $6ae6: $a9
	ld   e, d                                        ; $6ae7: $5a
	sbc  [hl]                                        ; $6ae8: $9e
	ld   [hl], a                                     ; $6ae9: $77
	ld   d, h                                        ; $6aea: $54
	ld   h, l                                        ; $6aeb: $65
	ld   [hl], h                                     ; $6aec: $74
	ld   sp, hl                                      ; $6aed: $f9
	dec  c                                           ; $6aee: $0d
	nop                                              ; $6aef: $00
	ld   a, [bc]                                     ; $6af0: $0a
	ld   b, $f8                                      ; $6af1: $06 $f8
	rrca                                             ; $6af3: $0f
	rrca                                             ; $6af4: $0f
	nop                                              ; $6af5: $00
	ld   bc, $0201                                   ; $6af6: $01 $01 $02
	ld   [hl-], a                                    ; $6af9: $32
	ld   d, d                                        ; $6afa: $52
	ld   l, [hl]                                     ; $6afb: $6e
	ld   [bc], a                                     ; $6afc: $02
	xor  d                                           ; $6afd: $aa
	sbc  [hl]                                        ; $6afe: $9e
	ld   l, e                                        ; $6aff: $6b
	ld   a, h                                        ; $6b00: $7c
	adc  h                                           ; $6b01: $8c
	adc  h                                           ; $6b02: $8c
	inc  bc                                          ; $6b03: $03
	sub  h                                           ; $6b04: $94
	inc  b                                           ; $6b05: $04
	sbc  [hl]                                        ; $6b06: $9e
	ld   a, h                                        ; $6b07: $7c
	dec  c                                           ; $6b08: $0d
	inc  b                                           ; $6b09: $04
	sub  l                                           ; $6b0a: $95
	ld   [bc], a                                     ; $6b0b: $02
	ld   hl, $0479                                   ; $6b0c: $21 $79 $04
	jp   Jump_061_7471                               ; $6b0f: $c3 $71 $74


	ld   d, d                                        ; $6b12: $52
	sbc  c                                           ; $6b13: $99
	ld   e, c                                        ; $6b14: $59
	sub  a                                           ; $6b15: $97
	ld   h, [hl]                                     ; $6b16: $66
	sub  c                                           ; $6b17: $91
	dec  c                                           ; $6b18: $0d
	ld   a, b                                        ; $6b19: $78
	ld   d, d                                        ; $6b1a: $52
	ld   [hl], l                                     ; $6b1b: $75
	ld   h, a                                        ; $6b1c: $67
	ld   e, c                                        ; $6b1d: $59
	ld   sp, hl                                      ; $6b1e: $f9
	dec  c                                           ; $6b1f: $0d
	nop                                              ; $6b20: $00
	ld   a, [bc]                                     ; $6b21: $0a
	rrca                                             ; $6b22: $0f
	inc  bc                                          ; $6b23: $03
	nop                                              ; $6b24: $00
	ld   bc, $766e                                   ; $6b25: $01 $6e $76
	ld   h, l                                        ; $6b28: $65
	ld   l, l                                        ; $6b29: $6d
	sub  a                                           ; $6b2a: $97
	sbc  [hl]                                        ; $6b2b: $9e
	inc  bc                                          ; $6b2c: $03
	xor  c                                           ; $6b2d: $a9
	ld   e, d                                        ; $6b2e: $5a
	sbc  [hl]                                        ; $6b2f: $9e
	ld   [hl], a                                     ; $6b30: $77
	ld   d, h                                        ; $6b31: $54
	ld   h, l                                        ; $6b32: $65
	ld   [hl], h                                     ; $6b33: $74
	ld   sp, hl                                      ; $6b34: $f9
	dec  c                                           ; $6b35: $0d
	nop                                              ; $6b36: $00
	ld   a, [bc]                                     ; $6b37: $0a
	ld   b, $f8                                      ; $6b38: $06 $f8
	rrca                                             ; $6b3a: $0f
	rrca                                             ; $6b3b: $0f
	nop                                              ; $6b3c: $00
	ld   bc, $bb01                                   ; $6b3d: $01 $01 $bb
	pop  de                                          ; $6b40: $d1
	db   $ec                                         ; $6b41: $ec
	sbc  [hl]                                        ; $6b42: $9e
	dec  b                                           ; $6b43: $05
	and  h                                           ; $6b44: $a4
	ld   [hl], c                                     ; $6b45: $71
	ld   e, c                                        ; $6b46: $59
	ld   e, e                                        ; $6b47: $5b
	ld   h, e                                        ; $6b48: $63
	and  c                                           ; $6b49: $a1
	dec  c                                           ; $6b4a: $0d
	ld   h, [hl]                                     ; $6b4b: $66
	sub  c                                           ; $6b4c: $91
	ld   a, b                                        ; $6b4d: $78
	ld   d, d                                        ; $6b4e: $52
	ld   [hl], l                                     ; $6b4f: $75
	ld   h, a                                        ; $6b50: $67
	ld   e, c                                        ; $6b51: $59
	ld   sp, hl                                      ; $6b52: $f9
	dec  c                                           ; $6b53: $0d
	nop                                              ; $6b54: $00
	ld   a, [bc]                                     ; $6b55: $0a
	rrca                                             ; $6b56: $0f
	inc  bc                                          ; $6b57: $03
	nop                                              ; $6b58: $00
	ld   bc, $766e                                   ; $6b59: $01 $6e $76
	ld   h, l                                        ; $6b5c: $65
	ld   l, l                                        ; $6b5d: $6d
	sub  a                                           ; $6b5e: $97
	sbc  [hl]                                        ; $6b5f: $9e
	inc  bc                                          ; $6b60: $03
	xor  c                                           ; $6b61: $a9
	ld   e, d                                        ; $6b62: $5a
	ld   sp, hl                                      ; $6b63: $f9
	dec  c                                           ; $6b64: $0d
	ld   a, b                                        ; $6b65: $78
	ld   l, d                                        ; $6b66: $6a
	sbc  [hl]                                        ; $6b67: $9e
	dec  b                                           ; $6b68: $05
	and  h                                           ; $6b69: $a4
	and  b                                           ; $6b6a: $a0
	add  e                                           ; $6b6b: $83
	ld   e, c                                        ; $6b6c: $59
	ld   a, b                                        ; $6b6d: $78
	ld   d, d                                        ; $6b6e: $52
	ld   a, h                                        ; $6b6f: $7c
	ld   sp, hl                                      ; $6b70: $f9
	dec  c                                           ; $6b71: $0d
	nop                                              ; $6b72: $00
	ld   a, [bc]                                     ; $6b73: $0a
	ld   b, $17                                      ; $6b74: $06 $17
	rla                                              ; $6b76: $17
	rrca                                             ; $6b77: $0f
	nop                                              ; $6b78: $00
	ld   bc, $0601                                   ; $6b79: $01 $01 $06
	cpl                                              ; $6b7c: $2f
	ld   [bc], a                                     ; $6b7d: $02
	inc  [hl]                                        ; $6b7e: $34
	ld   e, d                                        ; $6b7f: $5a
	ld   a, d                                        ; $6b80: $7a
	sbc  d                                           ; $6b81: $9a
	ld   [hl], h                                     ; $6b82: $74
	sbc  c                                           ; $6b83: $99
	rst  $38                                         ; $6b84: $ff
	rst  $38                                         ; $6b85: $ff
	dec  c                                           ; $6b86: $0d
	ld   l, e                                        ; $6b87: $6b
	sbc  d                                           ; $6b88: $9a
	ld   a, l                                        ; $6b89: $7d
	sub  b                                           ; $6b8a: $90
	ld   d, h                                        ; $6b8b: $54
	sbc  [hl]                                        ; $6b8c: $9e
	sub  h                                           ; $6b8d: $94
	ld   d, h                                        ; $6b8e: $54
	sbc  d                                           ; $6b8f: $9a
	ld   d, d                                        ; $6b90: $52
	dec  c                                           ; $6b91: $0d
	ld   [hl], l                                     ; $6b92: $75
	ld   h, l                                        ; $6b93: $65
	sub  l                                           ; $6b94: $95
	ld   d, h                                        ; $6b95: $54
	sbc  a                                           ; $6b96: $9f
	dec  c                                           ; $6b97: $0d
	nop                                              ; $6b98: $00
	ld   a, [bc]                                     ; $6b99: $0a
	rrca                                             ; $6b9a: $0f
	inc  bc                                          ; $6b9b: $03
	nop                                              ; $6b9c: $00
	ld   bc, $5494                                   ; $6b9d: $01 $94 $54
	sbc  d                                           ; $6ba0: $9a
	ld   d, d                                        ; $6ba1: $52
	ld   sp, hl                                      ; $6ba2: $f9
	dec  c                                           ; $6ba3: $0d
	ld   h, [hl]                                     ; $6ba4: $66
	sub  c                                           ; $6ba5: $91
	ld   d, b                                        ; $6ba6: $50
	sbc  [hl]                                        ; $6ba7: $9e
	ld   l, e                                        ; $6ba8: $6b
	ld   a, h                                        ; $6ba9: $7c
	sub  h                                           ; $6baa: $94
	ld   d, h                                        ; $6bab: $54
	sbc  d                                           ; $6bac: $9a
	ld   d, d                                        ; $6bad: $52
	ld   e, d                                        ; $6bae: $5a
	inc  bc                                          ; $6baf: $03
	add  b                                           ; $6bb0: $80
	sbc  c                                           ; $6bb1: $99
	dec  c                                           ; $6bb2: $0d
	ld   [bc], a                                     ; $6bb3: $02
	call $0e02                                       ; $6bb4: $cd $02 $0e
	ld   a, l                                        ; $6bb7: $7d
	inc  b                                           ; $6bb8: $04
	ld   c, c                                        ; $6bb9: $49
	ld   sp, hl                                      ; $6bba: $f9
	dec  c                                           ; $6bbb: $0d
	nop                                              ; $6bbc: $00
	ld   a, [bc]                                     ; $6bbd: $0a
	ld   b, $74                                      ; $6bbe: $06 $74
	add  hl, de                                      ; $6bc0: $19
	add  hl, de                                      ; $6bc1: $19
	dec  b                                           ; $6bc2: $05
	inc  bc                                          ; $6bc3: $03
	ld   h, a                                        ; $6bc4: $67
	adc  l                                           ; $6bc5: $8d
	sbc  d                                           ; $6bc6: $9a
	ld   h, e                                        ; $6bc7: $63
	and  c                                           ; $6bc8: $a1
	ld   e, d                                        ; $6bc9: $5a
	rst  $38                                         ; $6bca: $ff
	rst  $38                                         ; $6bcb: $ff
	nop                                              ; $6bcc: $00
	nop                                              ; $6bcd: $00
	xor  h                                           ; $6bce: $ac
	push af                                          ; $6bcf: $f5
	bit  3, d                                        ; $6bd0: $cb $5a
	rst  $38                                         ; $6bd2: $ff
	rst  $38                                         ; $6bd3: $ff
	nop                                              ; $6bd4: $00
	ld   bc, $d704                                   ; $6bd5: $01 $04 $d7
	inc  b                                           ; $6bd8: $04
	ld   hl, $0b04                                   ; $6bd9: $21 $04 $0b
	inc  bc                                          ; $6bdc: $03
	ld   h, h                                        ; $6bdd: $64
	ld   e, d                                        ; $6bde: $5a
	rst  $38                                         ; $6bdf: $ff
	rst  $38                                         ; $6be0: $ff
	nop                                              ; $6be1: $00
	ld   [bc], a                                     ; $6be2: $02
	rlca                                             ; $6be3: $07
	sbc  d                                           ; $6be4: $9a
	db   $10                                         ; $6be5: $10
	ld   [bc], a                                     ; $6be6: $02
	inc  bc                                          ; $6be7: $03
	ld   bc, $2000                                   ; $6be8: $01 $00 $20
	nop                                              ; $6beb: $00
	rlca                                             ; $6bec: $07
	db   $ed                                         ; $6bed: $ed
	ld   [de], a                                     ; $6bee: $12
	ld   [bc], a                                     ; $6bef: $02
	inc  bc                                          ; $6bf0: $03
	ld   bc, $2001                                   ; $6bf1: $01 $01 $20
	nop                                              ; $6bf4: $00
	rlca                                             ; $6bf5: $07
	ld   a, [$0215]                                  ; $6bf6: $fa $15 $02
	inc  bc                                          ; $6bf9: $03
	ld   bc, $2002                                   ; $6bfa: $01 $02 $20
	nop                                              ; $6bfd: $00
	ld   b, $38                                      ; $6bfe: $06 $38
	db   $10                                         ; $6c00: $10
	inc  e                                           ; $6c01: $1c
	inc  bc                                          ; $6c02: $03
	inc  bc                                          ; $6c03: $03
	inc  bc                                          ; $6c04: $03
	ld   bc, $6502                                   ; $6c05: $01 $02 $65
	ld   d, [hl]                                     ; $6c08: $56
	ld   d, b                                        ; $6c09: $50
	ld   e, [hl]                                     ; $6c0a: $5e
	ld   a, e                                        ; $6c0b: $7b
	ld   [hl], h                                     ; $6c0c: $74
	sbc  c                                           ; $6c0d: $99
	ld   a, h                                        ; $6c0e: $7c
	ld   sp, hl                                      ; $6c0f: $f9
	dec  c                                           ; $6c10: $0d
	inc  bc                                          ; $6c11: $03
	ret  z                                           ; $6c12: $c8

	ld   a, l                                        ; $6c13: $7d
	sbc  [hl]                                        ; $6c14: $9e
	ld   [bc], a                                     ; $6c15: $02
	sub  l                                           ; $6c16: $95
	inc  b                                           ; $6c17: $04
	jr   jr_061_6c74                                 ; $6c18: $18 $5a

	ld   [hl], d                                     ; $6c1a: $72
	ld   d, d                                        ; $6c1b: $52
	ld   l, l                                        ; $6c1c: $6d
	sbc  l                                           ; $6c1d: $9d
	sub  [hl]                                        ; $6c1e: $96
	sbc  a                                           ; $6c1f: $9f
	dec  c                                           ; $6c20: $0d
	nop                                              ; $6c21: $00
	ld   a, [bc]                                     ; $6c22: $0a
	ld   bc, $5903                                   ; $6c23: $01 $03 $59
	ld   [bc], a                                     ; $6c26: $02
	ld   [hl-], a                                    ; $6c27: $32
	halt                                             ; $6c28: $76
	ld   [bc], a                                     ; $6c29: $02
	sbc  l                                           ; $6c2a: $9d
	ld   d, [hl]                                     ; $6c2b: $56
	ld   a, [hl]                                     ; $6c2c: $7e
	rst  $38                                         ; $6c2d: $ff
	rst  $38                                         ; $6c2e: $ff
	dec  c                                           ; $6c2f: $0d
	ld   h, a                                        ; $6c30: $67
	adc  l                                           ; $6c31: $8d
	sbc  d                                           ; $6c32: $9a
	rst  $38                                         ; $6c33: $ff
	rst  $38                                         ; $6c34: $ff
	dec  c                                           ; $6c35: $0d
	ld   h, [hl]                                     ; $6c36: $66
	sub  c                                           ; $6c37: $91
	ld   a, b                                        ; $6c38: $78
	ld   d, d                                        ; $6c39: $52
	ld   e, c                                        ; $6c3a: $59
	ld   h, l                                        ; $6c3b: $65
	sub  a                                           ; $6c3c: $97
	ld   sp, hl                                      ; $6c3d: $f9
	dec  c                                           ; $6c3e: $0d
	nop                                              ; $6c3f: $00
	ld   a, [bc]                                     ; $6c40: $0a
	ld   bc, $0008                                   ; $6c41: $01 $08 $00
	ld   e, l                                        ; $6c44: $5d
	and  c                                           ; $6c45: $a1
	sbc  a                                           ; $6c46: $9f
	dec  c                                           ; $6c47: $0d
	ld   h, a                                        ; $6c48: $67
	adc  l                                           ; $6c49: $8d
	sbc  d                                           ; $6c4a: $9a
	ld   a, h                                        ; $6c4b: $7c
	inc  bc                                          ; $6c4c: $03
	ld   c, e                                        ; $6c4d: $4b
	add  [hl]                                        ; $6c4e: $86
	ld   [bc], a                                     ; $6c4f: $02
	ld   a, a                                        ; $6c50: $7f
	ld   e, e                                        ; $6c51: $5b
	adc  h                                           ; $6c52: $8c
	ld   h, l                                        ; $6c53: $65
	sub  l                                           ; $6c54: $95
	ld   d, h                                        ; $6c55: $54
	sbc  a                                           ; $6c56: $9f
	dec  c                                           ; $6c57: $0d
	nop                                              ; $6c58: $00
	ld   a, [bc]                                     ; $6c59: $0a
	dec  c                                           ; $6c5a: $0d
	nop                                              ; $6c5b: $00
	nop                                              ; $6c5c: $00
	rrca                                             ; $6c5d: $0f
	nop                                              ; $6c5e: $00
	ld   bc, $4706                                   ; $6c5f: $01 $06 $47
	inc  d                                           ; $6c62: $14
	rrca                                             ; $6c63: $0f
	nop                                              ; $6c64: $00
	ld   bc, $6701                                   ; $6c65: $01 $01 $67
	adc  l                                           ; $6c68: $8d
	sbc  d                                           ; $6c69: $9a
	ld   h, e                                        ; $6c6a: $63
	and  c                                           ; $6c6b: $a1
	ld   h, [hl]                                     ; $6c6c: $66
	sub  c                                           ; $6c6d: $91
	ld   a, b                                        ; $6c6e: $78
	ld   d, d                                        ; $6c6f: $52
	ld   [hl], l                                     ; $6c70: $75
	ld   h, a                                        ; $6c71: $67
	ld   e, c                                        ; $6c72: $59
	ld   sp, hl                                      ; $6c73: $f9

jr_061_6c74:
	dec  c                                           ; $6c74: $0d
	inc  b                                           ; $6c75: $04
	rst  $28                                         ; $6c76: $ef
	inc  b                                           ; $6c77: $04
	dec  bc                                          ; $6c78: $0b
	sbc  [hl]                                        ; $6c79: $9e
	inc  bc                                          ; $6c7a: $03
	xor  c                                           ; $6c7b: $a9
	sub  b                                           ; $6c7c: $90
	ld   [bc], a                                     ; $6c7d: $02
	sub  l                                           ; $6c7e: $95
	ld   [hl], h                                     ; $6c7f: $74
	ld   a, b                                        ; $6c80: $78
	ld   d, d                                        ; $6c81: $52
	halt                                             ; $6c82: $76
	ld   h, c                                        ; $6c83: $61
	sbc  e                                           ; $6c84: $9b
	ld   [hl], l                                     ; $6c85: $75
	dec  c                                           ; $6c86: $0d
	ld   h, c                                        ; $6c87: $61
	ld   [hl], c                                     ; $6c88: $71
	ld   l, e                                        ; $6c89: $6b
	sbc  b                                           ; $6c8a: $98
	inc  bc                                          ; $6c8b: $03
	db   $ec                                         ; $6c8c: $ec
	dec  b                                           ; $6c8d: $05
	add  hl, de                                      ; $6c8e: $19
	halt                                             ; $6c8f: $76
	ld   e, c                                        ; $6c90: $59
	rst  $38                                         ; $6c91: $ff
	rst  $38                                         ; $6c92: $ff
	dec  c                                           ; $6c93: $0d
	nop                                              ; $6c94: $00
	ld   a, [bc]                                     ; $6c95: $0a
	ld   bc, $9e75                                   ; $6c96: $01 $75 $9e
	ld   [hl], d                                     ; $6c99: $72
	ld   d, d                                        ; $6c9a: $52
	ld   d, h                                        ; $6c9b: $54
	ld   [hl], c                                     ; $6c9c: $71
	ld   e, c                                        ; $6c9d: $59
	sbc  b                                           ; $6c9e: $98
	ret  nz                                          ; $6c9f: $c0

	xor  e                                           ; $6ca0: $ab
	db   $ed                                         ; $6ca1: $ed
	and  b                                           ; $6ca2: $a0
	dec  c                                           ; $6ca3: $0d
	inc  b                                           ; $6ca4: $04
	and  e                                           ; $6ca5: $a3
	sbc  d                                           ; $6ca6: $9a
	sbc  c                                           ; $6ca7: $99
	sbc  a                                           ; $6ca8: $9f
	ld   [hl], l                                     ; $6ca9: $75
	sub  b                                           ; $6caa: $90
	sbc  [hl]                                        ; $6cab: $9e
	inc  bc                                          ; $6cac: $03
	xor  c                                           ; $6cad: $a9
	sub  b                                           ; $6cae: $90
	ld   [bc], a                                     ; $6caf: $02
	sub  l                                           ; $6cb0: $95
	ld   [hl], h                                     ; $6cb1: $74
	ld   a, b                                        ; $6cb2: $78
	ld   d, d                                        ; $6cb3: $52
	dec  c                                           ; $6cb4: $0d
	ld   e, c                                        ; $6cb5: $59
	sub  a                                           ; $6cb6: $97
	ld   d, d                                        ; $6cb7: $52
	ld   d, d                                        ; $6cb8: $52
	sub  d                                           ; $6cb9: $92
	sbc  [hl]                                        ; $6cba: $9e
	ld   [hl], h                                     ; $6cbb: $74
	ld   [bc], a                                     ; $6cbc: $02
	scf                                              ; $6cbd: $37
	ld   h, [hl]                                     ; $6cbe: $66
	ld   [hl], l                                     ; $6cbf: $75
	rst  $38                                         ; $6cc0: $ff
	rst  $38                                         ; $6cc1: $ff
	dec  c                                           ; $6cc2: $0d
	nop                                              ; $6cc3: $00
	ld   a, [bc]                                     ; $6cc4: $0a
	inc  e                                           ; $6cc5: $1c
	inc  bc                                          ; $6cc6: $03
	nop                                              ; $6cc7: $00
	nop                                              ; $6cc8: $00
	ld   bc, $599d                                   ; $6cc9: $01 $9d $59
	ld   [hl], c                                     ; $6ccc: $71
	ld   l, l                                        ; $6ccd: $6d
	sbc  l                                           ; $6cce: $9d
	sbc  a                                           ; $6ccf: $9f
	dec  c                                           ; $6cd0: $0d
	ld   h, [hl]                                     ; $6cd1: $66
	sub  c                                           ; $6cd2: $91
	sbc  [hl]                                        ; $6cd3: $9e
	ld   h, a                                        ; $6cd4: $67
	adc  l                                           ; $6cd5: $8d
	sbc  d                                           ; $6cd6: $9a
	ld   a, h                                        ; $6cd7: $7c
	inc  bc                                          ; $6cd8: $03
	ld   c, e                                        ; $6cd9: $4b
	add  [hl]                                        ; $6cda: $86
	dec  c                                           ; $6cdb: $0d
	ld   [bc], a                                     ; $6cdc: $02
	ld   a, a                                        ; $6cdd: $7f
	ld   e, e                                        ; $6cde: $5b
	adc  h                                           ; $6cdf: $8c
	ld   h, l                                        ; $6ce0: $65
	sub  l                                           ; $6ce1: $95
	ld   d, h                                        ; $6ce2: $54
	sbc  a                                           ; $6ce3: $9f
	dec  c                                           ; $6ce4: $0d
	nop                                              ; $6ce5: $00
	ld   a, [bc]                                     ; $6ce6: $0a
	dec  c                                           ; $6ce7: $0d
	nop                                              ; $6ce8: $00
	nop                                              ; $6ce9: $00
	rrca                                             ; $6cea: $0f
	nop                                              ; $6ceb: $00
	ld   bc, $5023                                   ; $6cec: $01 $23 $50
	inc  e                                           ; $6cef: $1c
	ld   [bc], a                                     ; $6cf0: $02
	nop                                              ; $6cf1: $00
	nop                                              ; $6cf2: $00
	ld   bc, $9750                                   ; $6cf3: $01 $50 $97
	sbc  [hl]                                        ; $6cf6: $9e
	rst  JumpTable                                         ; $6cf7: $df
	db   $ec                                         ; $6cf8: $ec
	and  e                                           ; $6cf9: $a3
	ld   h, e                                        ; $6cfa: $63
	and  c                                           ; $6cfb: $a1
	sbc  [hl]                                        ; $6cfc: $9e
	dec  c                                           ; $6cfd: $0d
	ld   [$6300], sp                                 ; $6cfe: $08 $00 $63
	and  c                                           ; $6d01: $a1
	sbc  a                                           ; $6d02: $9f
	dec  c                                           ; $6d03: $0d
	ld   [hl], a                                     ; $6d04: $77
	ld   d, h                                        ; $6d05: $54
	ld   e, c                                        ; $6d06: $59
	ld   h, l                                        ; $6d07: $65
	ld   l, l                                        ; $6d08: $6d
	and  c                                           ; $6d09: $a1
	ld   [hl], l                                     ; $6d0a: $75
	ld   h, a                                        ; $6d0b: $67
	ld   a, h                                        ; $6d0c: $7c
	ld   sp, hl                                      ; $6d0d: $f9
	dec  c                                           ; $6d0e: $0d
	nop                                              ; $6d0f: $00
	ld   a, [bc]                                     ; $6d10: $0a
	rrca                                             ; $6d11: $0f
	inc  bc                                          ; $6d12: $03
	inc  b                                           ; $6d13: $04
	ld   bc, $8b03                                   ; $6d14: $01 $03 $8b
	ld   a, l                                        ; $6d17: $7d
	rst  $38                                         ; $6d18: $ff
	rst  $38                                         ; $6d19: $ff
	rst  $38                                         ; $6d1a: $ff
	rst  $38                                         ; $6d1b: $ff
	dec  c                                           ; $6d1c: $0d
	ld   e, c                                        ; $6d1d: $59
	ld   e, l                                        ; $6d1e: $5d
	ld   e, c                                        ; $6d1f: $59
	ld   e, l                                        ; $6d20: $5d
	ld   h, l                                        ; $6d21: $65
	ld   e, c                                        ; $6d22: $59
	ld   h, [hl]                                     ; $6d23: $66
	ld   e, c                                        ; $6d24: $59
	rst  $38                                         ; $6d25: $ff
	rst  $38                                         ; $6d26: $ff
	dec  c                                           ; $6d27: $0d
	halt                                             ; $6d28: $76
	sbc  [hl]                                        ; $6d29: $9e
	ld   d, d                                        ; $6d2a: $52
	ld   d, h                                        ; $6d2b: $54
	ld   h, c                                        ; $6d2c: $61
	halt                                             ; $6d2d: $76
	ld   a, b                                        ; $6d2e: $78
	and  c                                           ; $6d2f: $a1
	ld   l, [hl]                                     ; $6d30: $6e
	ld   e, a                                        ; $6d31: $5f
	ld   [hl], a                                     ; $6d32: $77
	rst  $38                                         ; $6d33: $ff
	rst  $38                                         ; $6d34: $ff
	dec  c                                           ; $6d35: $0d
	nop                                              ; $6d36: $00
	ld   a, [bc]                                     ; $6d37: $0a
	inc  e                                           ; $6d38: $1c
	ld   [bc], a                                     ; $6d39: $02
	inc  bc                                          ; $6d3a: $03
	inc  bc                                          ; $6d3b: $03
	ld   bc, $9e50                                   ; $6d3c: $01 $50 $9e
	ld   d, b                                        ; $6d3f: $50
	sub  a                                           ; $6d40: $97
	ld   d, d                                        ; $6d41: $52
	sub  d                                           ; $6d42: $92
	ld   l, [hl]                                     ; $6d43: $6e
	sbc  a                                           ; $6d44: $9f
	dec  c                                           ; $6d45: $0d
	ld   e, b                                        ; $6d46: $58
	adc  c                                           ; $6d47: $89
	adc  c                                           ; $6d48: $89
	adc  c                                           ; $6d49: $89
	adc  c                                           ; $6d4a: $89
	adc  c                                           ; $6d4b: $89
	adc  c                                           ; $6d4c: $89
	rst  $38                                         ; $6d4d: $ff
	rst  $38                                         ; $6d4e: $ff
	dec  c                                           ; $6d4f: $0d
	ld   h, d                                        ; $6d50: $62
	adc  a                                           ; $6d51: $8f
	and  c                                           ; $6d52: $a1
	ld   d, b                                        ; $6d53: $50
	ld   l, e                                        ; $6d54: $6b
	ld   a, [hl]                                     ; $6d55: $7e
	ld   l, c                                        ; $6d56: $69
	sbc  a                                           ; $6d57: $9f
	dec  c                                           ; $6d58: $0d
	nop                                              ; $6d59: $00
	ld   a, [bc]                                     ; $6d5a: $0a
	inc  e                                           ; $6d5b: $1c
	ld   [bc], a                                     ; $6d5c: $02
	inc  b                                           ; $6d5d: $04
	inc  b                                           ; $6d5e: $04
	ld   bc, $6f03                                   ; $6d5f: $01 $03 $6f
	ld   bc, $0414                                   ; $6d62: $01 $14 $04

Jump_061_6d65:
	rst  $28                                         ; $6d65: $ef
	inc  b                                           ; $6d66: $04
	dec  bc                                          ; $6d67: $0b
	ld   a, c                                        ; $6d68: $79
	ld   [bc], a                                     ; $6d69: $02
	ld   [hl-], a                                    ; $6d6a: $32
	ld   d, d                                        ; $6d6b: $52
	ld   [hl], l                                     ; $6d6c: $75
	adc  h                                           ; $6d6d: $8c
	ld   h, l                                        ; $6d6e: $65
	ld   l, l                                        ; $6d6f: $6d
	ld   a, h                                        ; $6d70: $7c

Call_061_6d71:
Jump_061_6d71:
	rst  $38                                         ; $6d71: $ff
	rst  $38                                         ; $6d72: $ff
	dec  c                                           ; $6d73: $0d
	ld   d, b                                        ; $6d74: $50
	sbc  c                                           ; $6d75: $99
	inc  bc                                          ; $6d76: $03
	ld   l, a                                        ; $6d77: $6f
	sbc  [hl]                                        ; $6d78: $9e
	ret  nz                                          ; $6d79: $c0

	xor  e                                           ; $6d7a: $ab
	db   $ed                                         ; $6d7b: $ed
	and  b                                           ; $6d7c: $a0
	inc  bc                                          ; $6d7d: $03
	and  b                                           ; $6d7e: $a0
	ld   [hl], c                                     ; $6d7f: $71
	ld   [hl], h                                     ; $6d80: $74
	ld   [bc], a                                     ; $6d81: $02
	ld   a, a                                        ; $6d82: $7f
	ld   e, l                                        ; $6d83: $5d
	dec  c                                           ; $6d84: $0d
	ld   a, h                                        ; $6d85: $7c
	and  b                                           ; $6d86: $a0
	inc  b                                           ; $6d87: $04
	and  e                                           ; $6d88: $a3
	sbc  d                                           ; $6d89: $9a
	ld   [hl], h                                     ; $6d8a: $74
	ld   h, l                                        ; $6d8b: $65
	adc  h                                           ; $6d8c: $8c

Call_061_6d8d:
	ld   [hl], c                                     ; $6d8d: $71
	ld   [hl], h                                     ; $6d8e: $74
	rst  $38                                         ; $6d8f: $ff
	rst  $38                                         ; $6d90: $ff
	dec  c                                           ; $6d91: $0d
	nop                                              ; $6d92: $00
	ld   a, [bc]                                     ; $6d93: $0a
	inc  e                                           ; $6d94: $1c
	ld   [bc], a                                     ; $6d95: $02
	ld   b, $06                                      ; $6d96: $06 $06
	ld   bc, $5d96                                   ; $6d98: $01 $96 $5d
	ld   d, b                                        ; $6d9b: $50
	sbc  b                                           ; $6d9c: $98
	adc  h                                           ; $6d9d: $8c
	ld   h, a                                        ; $6d9e: $67
	ld   [hl], l                                     ; $6d9f: $75
	ld   h, l                                        ; $6da0: $65
	sub  l                                           ; $6da1: $95
	ld   d, h                                        ; $6da2: $54
	ld   sp, hl                                      ; $6da3: $f9
	dec  c                                           ; $6da4: $0d
	ld   [bc], a                                     ; $6da5: $02
	jr   nz, jr_061_6dac                             ; $6da6: $20 $04

	add  hl, hl                                      ; $6da8: $29
	inc  b                                           ; $6da9: $04
	and  e                                           ; $6daa: $a3
	sbc  d                                           ; $6dab: $9a

jr_061_6dac:
	sbc  c                                           ; $6dac: $99
	halt                                             ; $6dad: $76
	sbc  [hl]                                        ; $6dae: $9e
	ld   a, b                                        ; $6daf: $78
	ld   l, d                                        ; $6db0: $6a
	ld   e, c                                        ; $6db1: $59
	dec  b                                           ; $6db2: $05
	ld   e, h                                        ; $6db3: $5c
	ld   [bc], a                                     ; $6db4: $02
	sub  e                                           ; $6db5: $93
	dec  c                                           ; $6db6: $0d
	inc  b                                           ; $6db7: $04
	and  e                                           ; $6db8: $a3
	sbc  d                                           ; $6db9: $9a
	ld   [hl], h                                     ; $6dba: $74
	ld   h, l                                        ; $6dbb: $65
	adc  h                                           ; $6dbc: $8c
	ld   d, h                                        ; $6dbd: $54
	rst  $38                                         ; $6dbe: $ff
	rst  $38                                         ; $6dbf: $ff
	and  e                                           ; $6dc0: $a3
	xor  $75                                         ; $6dc1: $ee $75
	ld   h, a                                        ; $6dc3: $67
	sbc  l                                           ; $6dc4: $9d
	sbc  a                                           ; $6dc5: $9f
	dec  c                                           ; $6dc6: $0d
	nop                                              ; $6dc7: $00
	ld   a, [bc]                                     ; $6dc8: $0a
	rrca                                             ; $6dc9: $0f
	inc  bc                                          ; $6dca: $03
	nop                                              ; $6dcb: $00
	ld   bc, $9e75                                   ; $6dcc: $01 $75 $9e
	ld   h, c                                        ; $6dcf: $61
	ld   h, c                                        ; $6dd0: $61
	inc  bc                                          ; $6dd1: $03
	ld   l, c                                        ; $6dd2: $69
	ld   [bc], a                                     ; $6dd3: $02
	and  b                                           ; $6dd4: $a0
	sbc  [hl]                                        ; $6dd5: $9e
	ld   [bc], a                                     ; $6dd6: $02
	ld   [hl-], a                                    ; $6dd7: $32
	ld   e, h                                        ; $6dd8: $5c
	ld   a, c                                        ; $6dd9: $79
	ld   a, l                                        ; $6dda: $7d
	ld   [bc], a                                     ; $6ddb: $02
	ld   a, a                                        ; $6ddc: $7f
	ld   e, l                                        ; $6ddd: $5d
	ld   e, d                                        ; $6dde: $5a
	dec  c                                           ; $6ddf: $0d
	ret  nz                                          ; $6de0: $c0

	xor  e                                           ; $6de1: $ab
	db   $ed                                         ; $6de2: $ed
	ld   a, l                                        ; $6de3: $7d
	inc  bc                                          ; $6de4: $03
	and  b                                           ; $6de5: $a0
	ld   [hl], c                                     ; $6de6: $71
	ld   [hl], h                                     ; $6de7: $74
	ld   d, d                                        ; $6de8: $52
	ld   e, c                                        ; $6de9: $59
	ld   a, b                                        ; $6dea: $78
	ld   e, c                                        ; $6deb: $59
	ld   [hl], c                                     ; $6dec: $71
	ld   l, l                                        ; $6ded: $6d
	sbc  a                                           ; $6dee: $9f
	dec  c                                           ; $6def: $0d
	halt                                             ; $6df0: $76
	ld   d, d                                        ; $6df1: $52
	ld   d, h                                        ; $6df2: $54
	sbc  l                                           ; $6df3: $9d
	ld   e, a                                        ; $6df4: $5f
	ld   a, e                                        ; $6df5: $7b
	sbc  a                                           ; $6df6: $9f
	dec  c                                           ; $6df7: $0d
	nop                                              ; $6df8: $00
	ld   a, [bc]                                     ; $6df9: $0a
	rrca                                             ; $6dfa: $0f
	inc  bc                                          ; $6dfb: $03
	ld   [bc], a                                     ; $6dfc: $02
	dec  c                                           ; $6dfd: $0d
	ld   [bc], a                                     ; $6dfe: $02
	dec  b                                           ; $6dff: $05
	ld   bc, $9605                                   ; $6e00: $01 $05 $96
	sbc  c                                           ; $6e03: $99
	sbc  l                                           ; $6e04: $9d
	ld   a, e                                        ; $6e05: $7b
	ld   h, a                                        ; $6e06: $67
	adc  l                                           ; $6e07: $8d
	sbc  d                                           ; $6e08: $9a
	sbc  a                                           ; $6e09: $9f
	ld   b, $2f                                      ; $6e0a: $06 $2f
	ld   [bc], a                                     ; $6e0c: $02
	inc  [hl]                                        ; $6e0d: $34
	ld   e, d                                        ; $6e0e: $5a
	ld   a, d                                        ; $6e0f: $7a
	sbc  d                                           ; $6e10: $9a
	ld   [hl], h                                     ; $6e11: $74
	dec  c                                           ; $6e12: $0d
	dec  b                                           ; $6e13: $05
	sbc  b                                           ; $6e14: $98
	ld   a, b                                        ; $6e15: $78
	ld   d, d                                        ; $6e16: $52
	ld   h, l                                        ; $6e17: $65
	sbc  [hl]                                        ; $6e18: $9e
	inc  b                                           ; $6e19: $04
	pop  hl                                          ; $6e1a: $e1
	inc  b                                           ; $6e1b: $04
	rst  $38                                         ; $6e1c: $ff
	ld   l, l                                        ; $6e1d: $6d
	ld   l, a                                        ; $6e1e: $6f
	ld   e, d                                        ; $6e1f: $5a
	dec  c                                           ; $6e20: $0d
	sub  h                                           ; $6e21: $94
	ld   d, h                                        ; $6e22: $54
	sbc  d                                           ; $6e23: $9a
	ld   d, d                                        ; $6e24: $52
	ld   l, [hl]                                     ; $6e25: $6e
	ld   [hl], c                                     ; $6e26: $71
	ld   [hl], h                                     ; $6e27: $74
	sbc  [hl]                                        ; $6e28: $9e
	ld   h, e                                        ; $6e29: $63
	sbc  l                                           ; $6e2a: $9d
	ld   e, [hl]                                     ; $6e2b: $5e
	ld   a, h                                        ; $6e2c: $7c
	sub  [hl]                                        ; $6e2d: $96
	sbc  a                                           ; $6e2e: $9f
	dec  c                                           ; $6e2f: $0d
	nop                                              ; $6e30: $00
	ld   a, [bc]                                     ; $6e31: $0a
	ld   bc, $a502                                   ; $6e32: $01 $02 $a5
	ld   [bc], a                                     ; $6e35: $02
	xor  d                                           ; $6e36: $aa
	ld   a, l                                        ; $6e37: $7d
	sbc  [hl]                                        ; $6e38: $9e
	ld   e, e                                        ; $6e39: $5b
	ld   l, a                                        ; $6e3a: $6f
	and  c                                           ; $6e3b: $a1
	halt                                             ; $6e3c: $76
	ret  nz                                          ; $6e3d: $c0

	xor  e                                           ; $6e3e: $ab
	db   $ed                                         ; $6e3f: $ed
	and  b                                           ; $6e40: $a0
	dec  c                                           ; $6e41: $0d
	inc  bc                                          ; $6e42: $03
	and  b                                           ; $6e43: $a0
	ld   [hl], c                                     ; $6e44: $71
	ld   [hl], h                                     ; $6e45: $74
	ld   [bc], a                                     ; $6e46: $02
	ld   a, a                                        ; $6e47: $7f
	ld   [hl], c                                     ; $6e48: $71
	ld   [hl], h                                     ; $6e49: $74
	sbc  [hl]                                        ; $6e4a: $9e
	inc  bc                                          ; $6e4b: $03
	xor  [hl]                                        ; $6e4c: $ae
	ld   d, d                                        ; $6e4d: $52
	ld   a, b                                        ; $6e4e: $78
	ld   h, e                                        ; $6e4f: $63
	ld   d, d                                        ; $6e50: $52
	sbc  a                                           ; $6e51: $9f
	dec  c                                           ; $6e52: $0d
	sbc  l                                           ; $6e53: $9d
	ld   e, c                                        ; $6e54: $59
	ld   [hl], c                                     ; $6e55: $71
	ld   l, l                                        ; $6e56: $6d
	sbc  l                                           ; $6e57: $9d
	ld   a, e                                        ; $6e58: $7b
	sbc  a                                           ; $6e59: $9f
	dec  c                                           ; $6e5a: $0d
	nop                                              ; $6e5b: $00
	ld   a, [bc]                                     ; $6e5c: $0a
	inc  e                                           ; $6e5d: $1c
	ld   [bc], a                                     ; $6e5e: $02
	rlca                                             ; $6e5f: $07
	rlca                                             ; $6e60: $07
	ld   bc, $ffff                                   ; $6e61: $01 $ff $ff
	sbc  l                                           ; $6e64: $9d
	ld   e, c                                        ; $6e65: $59
	sbc  b                                           ; $6e66: $98
	adc  h                                           ; $6e67: $8c
	ld   h, l                                        ; $6e68: $65
	ld   l, l                                        ; $6e69: $6d
	sbc  l                                           ; $6e6a: $9d
	rst  $38                                         ; $6e6b: $ff
	rst  $38                                         ; $6e6c: $ff
	dec  c                                           ; $6e6d: $0d
	nop                                              ; $6e6e: $00
	ld   a, [bc]                                     ; $6e6f: $0a
	dec  c                                           ; $6e70: $0d
	nop                                              ; $6e71: $00
	nop                                              ; $6e72: $00
	rrca                                             ; $6e73: $0f
	nop                                              ; $6e74: $00
	ld   bc, $020c                                   ; $6e75: $01 $0c $02
	ld   c, $44                                      ; $6e78: $0e $44
	inc  e                                           ; $6e7a: $1c
	inc  bc                                          ; $6e7b: $03
	inc  bc                                          ; $6e7c: $03
	inc  bc                                          ; $6e7d: $03
	dec  e                                           ; $6e7e: $1d
	ld   b, b                                        ; $6e7f: $40
	inc  de                                          ; $6e80: $13
	inc  bc                                          ; $6e81: $03
	inc  de                                          ; $6e82: $13
	ld   bc, $2803                                   ; $6e83: $01 $03 $28
	nop                                              ; $6e86: $00
	ld   bc, $0008                                   ; $6e87: $01 $08 $00
	ld   e, l                                        ; $6e8a: $5d
	and  c                                           ; $6e8b: $a1
	sbc  a                                           ; $6e8c: $9f
	ld   [bc], a                                     ; $6e8d: $02
	sub  l                                           ; $6e8e: $95
	inc  bc                                          ; $6e8f: $03
	jp   c, Jump_061_6d65                            ; $6e90: $da $65 $6d

	sbc  l                                           ; $6e93: $9d
	sbc  a                                           ; $6e94: $9f
	dec  c                                           ; $6e95: $0d
	cp   e                                           ; $6e96: $bb
	pop  de                                          ; $6e97: $d1
	db   $ec                                         ; $6e98: $ec
	inc  bc                                          ; $6e99: $03
	ld   c, d                                        ; $6e9a: $4a
	ld   [bc], a                                     ; $6e9b: $02
	or   h                                           ; $6e9c: $b4
	ld   h, [hl]                                     ; $6e9d: $66
	sub  c                                           ; $6e9e: $91
	ld   a, b                                        ; $6e9f: $78
	ld   d, d                                        ; $6ea0: $52
	sbc  a                                           ; $6ea1: $9f
	dec  c                                           ; $6ea2: $0d
	nop                                              ; $6ea3: $00
	ld   a, [bc]                                     ; $6ea4: $0a
	ld   bc, $9166                                   ; $6ea5: $01 $66 $91
	sbc  [hl]                                        ; $6ea8: $9e
	inc  bc                                          ; $6ea9: $03
	ld   l, b                                        ; $6eaa: $68
	ld   a, h                                        ; $6eab: $7c
	ld   b, $08                                      ; $6eac: $06 $08
	sub  [hl]                                        ; $6eae: $96
	sbc  a                                           ; $6eaf: $9f
	dec  c                                           ; $6eb0: $0d
	nop                                              ; $6eb1: $00
	ld   a, [bc]                                     ; $6eb2: $0a
	ld   b, $8f                                      ; $6eb3: $06 $8f
	dec  de                                          ; $6eb5: $1b
	rrca                                             ; $6eb6: $0f
	nop                                              ; $6eb7: $00
	ld   bc, $ac01                                   ; $6eb8: $01 $01 $ac
	push af                                          ; $6ebb: $f5
	bit  4, e                                        ; $6ebc: $cb $63
	and  c                                           ; $6ebe: $a1
	ld   h, [hl]                                     ; $6ebf: $66
	sub  c                                           ; $6ec0: $91
	ld   a, b                                        ; $6ec1: $78
	ld   d, d                                        ; $6ec2: $52
	ld   [hl], l                                     ; $6ec3: $75
	ld   h, a                                        ; $6ec4: $67
	ld   e, c                                        ; $6ec5: $59
	ld   sp, hl                                      ; $6ec6: $f9
	dec  c                                           ; $6ec7: $0d
	dec  b                                           ; $6ec8: $05
	and  e                                           ; $6ec9: $a3
	dec  b                                           ; $6eca: $05
	sbc  d                                           ; $6ecb: $9a
	ld   h, e                                        ; $6ecc: $63
	and  c                                           ; $6ecd: $a1
	ld   [hl], l                                     ; $6ece: $75
	ld   h, a                                        ; $6ecf: $67
	ld   e, c                                        ; $6ed0: $59
	sub  a                                           ; $6ed1: $97
	sbc  [hl]                                        ; $6ed2: $9e
	ld   [bc], a                                     ; $6ed3: $02
	ld   [hl-], a                                    ; $6ed4: $32
	ld   d, d                                        ; $6ed5: $52
	ld   l, [hl]                                     ; $6ed6: $6e
	ld   [bc], a                                     ; $6ed7: $02
	xor  d                                           ; $6ed8: $aa
	dec  c                                           ; $6ed9: $0d
	ld   l, e                                        ; $6eda: $6b
	ld   a, h                                        ; $6edb: $7c
	adc  h                                           ; $6edc: $8c
	adc  h                                           ; $6edd: $8c
	inc  b                                           ; $6ede: $04
	sub  l                                           ; $6edf: $95
	ld   [bc], a                                     ; $6ee0: $02
	ld   hl, $758c                                   ; $6ee1: $21 $8c $75
	rst  $38                                         ; $6ee4: $ff
	rst  $38                                         ; $6ee5: $ff
	dec  c                                           ; $6ee6: $0d
	nop                                              ; $6ee7: $00
	ld   a, [bc]                                     ; $6ee8: $0a
	inc  e                                           ; $6ee9: $1c
	inc  bc                                          ; $6eea: $03
	nop                                              ; $6eeb: $00
	nop                                              ; $6eec: $00
	ld   bc, $599d                                   ; $6eed: $01 $9d $59
	ld   [hl], c                                     ; $6ef0: $71
	ld   l, l                                        ; $6ef1: $6d
	sbc  l                                           ; $6ef2: $9d
	sbc  a                                           ; $6ef3: $9f
	dec  c                                           ; $6ef4: $0d
	ld   h, [hl]                                     ; $6ef5: $66
	sub  c                                           ; $6ef6: $91
	sbc  [hl]                                        ; $6ef7: $9e
	xor  h                                           ; $6ef8: $ac
	push af                                          ; $6ef9: $f5
	bit  7, h                                        ; $6efa: $cb $7c
	inc  bc                                          ; $6efc: $03
	ld   c, e                                        ; $6efd: $4b
	add  [hl]                                        ; $6efe: $86
	dec  c                                           ; $6eff: $0d
	ld   [bc], a                                     ; $6f00: $02
	ld   a, a                                        ; $6f01: $7f
	ld   e, e                                        ; $6f02: $5b
	adc  h                                           ; $6f03: $8c
	ld   h, l                                        ; $6f04: $65
	sub  l                                           ; $6f05: $95
	ld   d, h                                        ; $6f06: $54
	sbc  a                                           ; $6f07: $9f
	dec  c                                           ; $6f08: $0d
	nop                                              ; $6f09: $00
	ld   a, [bc]                                     ; $6f0a: $0a
	dec  c                                           ; $6f0b: $0d
	nop                                              ; $6f0c: $00
	nop                                              ; $6f0d: $00
	rrca                                             ; $6f0e: $0f
	nop                                              ; $6f0f: $00
	ld   bc, $5823                                   ; $6f10: $01 $23 $58
	inc  e                                           ; $6f13: $1c
	ld   b, $00                                      ; $6f14: $06 $00
	nop                                              ; $6f16: $00
	ld   bc, $ecdf                                   ; $6f17: $01 $df $ec
	and  e                                           ; $6f1a: $a3
	sbc  [hl]                                        ; $6f1b: $9e
	ld   [$0d00], sp                                 ; $6f1c: $08 $00 $0d
	ld   [hl], a                                     ; $6f1f: $77
	ld   d, h                                        ; $6f20: $54
	ld   h, l                                        ; $6f21: $65
	ld   l, l                                        ; $6f22: $6d
	and  c                                           ; $6f23: $a1
	ld   l, [hl]                                     ; $6f24: $6e
	ld   sp, hl                                      ; $6f25: $f9
	dec  c                                           ; $6f26: $0d
	nop                                              ; $6f27: $00
	ld   a, [bc]                                     ; $6f28: $0a
	rrca                                             ; $6f29: $0f
	inc  bc                                          ; $6f2a: $03
	nop                                              ; $6f2b: $00
	ld   bc, $8b03                                   ; $6f2c: $01 $03 $8b
	ld   a, l                                        ; $6f2f: $7d
	rst  $38                                         ; $6f30: $ff
	rst  $38                                         ; $6f31: $ff
	rst  $38                                         ; $6f32: $ff
	rst  $38                                         ; $6f33: $ff
	dec  c                                           ; $6f34: $0d
	ld   e, c                                        ; $6f35: $59
	ld   e, l                                        ; $6f36: $5d
	ld   e, c                                        ; $6f37: $59
	ld   e, l                                        ; $6f38: $5d
	ld   h, l                                        ; $6f39: $65
	ld   e, c                                        ; $6f3a: $59
	ld   h, [hl]                                     ; $6f3b: $66
	ld   e, c                                        ; $6f3c: $59
	rst  $38                                         ; $6f3d: $ff
	rst  $38                                         ; $6f3e: $ff
	dec  c                                           ; $6f3f: $0d
	halt                                             ; $6f40: $76
	sbc  [hl]                                        ; $6f41: $9e
	ld   d, d                                        ; $6f42: $52
	ld   d, h                                        ; $6f43: $54
	ld   h, c                                        ; $6f44: $61
	halt                                             ; $6f45: $76
	ld   a, b                                        ; $6f46: $78
	and  c                                           ; $6f47: $a1
	ld   l, [hl]                                     ; $6f48: $6e
	ld   e, a                                        ; $6f49: $5f
	ld   [hl], a                                     ; $6f4a: $77
	rst  $38                                         ; $6f4b: $ff
	rst  $38                                         ; $6f4c: $ff
	dec  c                                           ; $6f4d: $0d
	nop                                              ; $6f4e: $00
	ld   a, [bc]                                     ; $6f4f: $0a
	inc  e                                           ; $6f50: $1c
	ld   b, $03                                      ; $6f51: $06 $03
	inc  bc                                          ; $6f53: $03
	ld   bc, $9a6b                                   ; $6f54: $01 $6b $9a
	sbc  [hl]                                        ; $6f57: $9e
	ld   d, b                                        ; $6f58: $50
	ld   l, l                                        ; $6f59: $6d
	ld   d, d                                        ; $6f5a: $52
	ld   h, [hl]                                     ; $6f5b: $66
	sub  c                                           ; $6f5c: $91
	ld   a, b                                        ; $6f5d: $78
	ld   d, d                                        ; $6f5e: $52
	sub  [hl]                                        ; $6f5f: $96
	sbc  a                                           ; $6f60: $9f
	dec  c                                           ; $6f61: $0d
	ld   l, e                                        ; $6f62: $6b
	ld   d, h                                        ; $6f63: $54
	ld   l, [hl]                                     ; $6f64: $6e
	ld   a, b                                        ; $6f65: $78
	rst  $38                                         ; $6f66: $ff
	rst  $38                                         ; $6f67: $ff
	dec  c                                           ; $6f68: $0d
	nop                                              ; $6f69: $00
	ld   a, [bc]                                     ; $6f6a: $0a
	inc  e                                           ; $6f6b: $1c
	ld   b, $02                                      ; $6f6c: $06 $02
	ld   [bc], a                                     ; $6f6e: $02
	ld   bc, $599d                                   ; $6f6f: $01 $9d $59
	ld   [hl], c                                     ; $6f72: $71
	ld   l, l                                        ; $6f73: $6d
	ld   a, [$b610]                                  ; $6f74: $fa $10 $b6
	db   $dd                                         ; $6f77: $dd
	rst  ToBoot                                         ; $6f78: $c7
	push af                                          ; $6f79: $f5
	inc  bc                                          ; $6f7a: $03
	ld   l, [hl]                                     ; $6f7b: $6e
	ld   l, [hl]                                     ; $6f7c: $6e
	ld   a, [$000d]                                  ; $6f7d: $fa $0d $00
	ld   a, [bc]                                     ; $6f80: $0a
	ld   bc, $a154                                   ; $6f81: $01 $54 $a1
	sbc  [hl]                                        ; $6f84: $9e
	ld   l, e                                        ; $6f85: $6b
	ld   d, h                                        ; $6f86: $54
	ld   a, c                                        ; $6f87: $79
	ld   l, a                                        ; $6f88: $6f
	ld   e, d                                        ; $6f89: $5a
	ld   d, d                                        ; $6f8a: $52
	ld   a, b                                        ; $6f8b: $78
	ld   d, d                                        ; $6f8c: $52
	ld   a, [$000d]                                  ; $6f8d: $fa $0d $00
	inc  e                                           ; $6f90: $1c
	ld   b, $00                                      ; $6f91: $06 $00
	nop                                              ; $6f93: $00
	ld   bc, $9166                                   ; $6f94: $01 $66 $91
	sbc  [hl]                                        ; $6f97: $9e
	ld   l, e                                        ; $6f98: $6b
	ld   d, h                                        ; $6f99: $54
	ld   d, d                                        ; $6f9a: $52
	ld   d, h                                        ; $6f9b: $54
	ld   h, c                                        ; $6f9c: $61
	halt                                             ; $6f9d: $76
	ld   [hl], l                                     ; $6f9e: $75
	sbc  a                                           ; $6f9f: $9f
	dec  c                                           ; $6fa0: $0d
	nop                                              ; $6fa1: $00
	ld   a, [bc]                                     ; $6fa2: $0a
	dec  c                                           ; $6fa3: $0d
	nop                                              ; $6fa4: $00
	nop                                              ; $6fa5: $00
	rrca                                             ; $6fa6: $0f
	nop                                              ; $6fa7: $00
	ld   bc, $020c                                   ; $6fa8: $01 $0c $02
	ld   b, $e5                                      ; $6fab: $06 $e5
	inc  de                                          ; $6fad: $13
	ld   c, $60                                      ; $6fae: $0e $60
	inc  e                                           ; $6fb0: $1c
	inc  bc                                          ; $6fb1: $03
	inc  b                                           ; $6fb2: $04
	inc  b                                           ; $6fb3: $04
	dec  e                                           ; $6fb4: $1d
	ld   b, b                                        ; $6fb5: $40
	inc  de                                          ; $6fb6: $13
	inc  bc                                          ; $6fb7: $03
	inc  de                                          ; $6fb8: $13
	ld   bc, $2901                                   ; $6fb9: $01 $01 $29
	nop                                              ; $6fbc: $00
	ld   bc, $e3c1                                   ; $6fbd: $01 $c1 $e3
	ld   h, [hl]                                     ; $6fc0: $66
	sub  c                                           ; $6fc1: $91
	ld   a, b                                        ; $6fc2: $78
	ld   d, d                                        ; $6fc3: $52
	sbc  a                                           ; $6fc4: $9f
	dec  c                                           ; $6fc5: $0d
	ld   [$5d00], sp                                 ; $6fc6: $08 $00 $5d
	and  c                                           ; $6fc9: $a1
	sbc  a                                           ; $6fca: $9f
	dec  c                                           ; $6fcb: $0d
	rst  $38                                         ; $6fcc: $ff
	rst  $38                                         ; $6fcd: $ff
	rst  $38                                         ; $6fce: $ff
	rst  $38                                         ; $6fcf: $ff
	rst  $38                                         ; $6fd0: $ff
	rst  $38                                         ; $6fd1: $ff
	rst  $38                                         ; $6fd2: $ff
	rst  $38                                         ; $6fd3: $ff
	dec  c                                           ; $6fd4: $0d
	nop                                              ; $6fd5: $00
	ld   a, [bc]                                     ; $6fd6: $0a
	inc  e                                           ; $6fd7: $1c
	inc  bc                                          ; $6fd8: $03
	rlca                                             ; $6fd9: $07
	rlca                                             ; $6fda: $07
	ld   bc, $599d                                   ; $6fdb: $01 $9d $59
	ld   [hl], c                                     ; $6fde: $71
	ld   l, l                                        ; $6fdf: $6d
	sbc  l                                           ; $6fe0: $9d
	ld   a, [$0310]                                  ; $6fe1: $fa $10 $03
	ld   e, c                                        ; $6fe4: $59
	ld   [hl], l                                     ; $6fe5: $75
	inc  bc                                          ; $6fe6: $03
	ld   e, c                                        ; $6fe7: $59
	ld   [bc], a                                     ; $6fe8: $02
	ld   [hl-], a                                    ; $6fe9: $32
	rst  $38                                         ; $6fea: $ff
	rst  $38                                         ; $6feb: $ff
	dec  c                                           ; $6fec: $0d
	ld   a, b                                        ; $6fed: $78
	sub  a                                           ; $6fee: $97
	sbc  [hl]                                        ; $6fef: $9e
	ld   h, a                                        ; $6ff0: $67
	adc  l                                           ; $6ff1: $8d
	sbc  d                                           ; $6ff2: $9a
	sub  [hl]                                        ; $6ff3: $96
	ld   e, e                                        ; $6ff4: $5b
	ld   [hl], c                                     ; $6ff5: $71
	halt                                             ; $6ff6: $76
	ld   a, [$c00d]                                  ; $6ff7: $fa $0d $c0
	xor  e                                           ; $6ffa: $ab
	db   $ed                                         ; $6ffb: $ed
	and  b                                           ; $6ffc: $a0
	inc  bc                                          ; $6ffd: $03
	xor  [hl]                                        ; $6ffe: $ae
	ld   [hl], c                                     ; $6fff: $71
	ld   [hl], h                                     ; $7000: $74
	ld   a, b                                        ; $7001: $78
	ld   d, d                                        ; $7002: $52
	and  c                                           ; $7003: $a1
	ld   l, [hl]                                     ; $7004: $6e
	sbc  l                                           ; $7005: $9d
	sbc  a                                           ; $7006: $9f
	dec  c                                           ; $7007: $0d
	nop                                              ; $7008: $00
	ld   a, [bc]                                     ; $7009: $0a
	dec  c                                           ; $700a: $0d
	nop                                              ; $700b: $00
	nop                                              ; $700c: $00
	rrca                                             ; $700d: $0f
	nop                                              ; $700e: $00
	ld   bc, $5023                                   ; $700f: $01 $23 $50
	inc  e                                           ; $7012: $1c
	ld   [bc], a                                     ; $7013: $02
	nop                                              ; $7014: $00
	nop                                              ; $7015: $00
	ld   bc, $9750                                   ; $7016: $01 $50 $97
	sbc  [hl]                                        ; $7019: $9e
	rst  JumpTable                                         ; $701a: $df
	db   $ec                                         ; $701b: $ec
	and  e                                           ; $701c: $a3
	ld   h, e                                        ; $701d: $63
	and  c                                           ; $701e: $a1
	sbc  [hl]                                        ; $701f: $9e
	dec  c                                           ; $7020: $0d
	ld   [$6300], sp                                 ; $7021: $08 $00 $63
	and  c                                           ; $7024: $a1
	sbc  a                                           ; $7025: $9f
	dec  c                                           ; $7026: $0d
	ld   [hl], a                                     ; $7027: $77
	ld   d, h                                        ; $7028: $54
	ld   e, c                                        ; $7029: $59
	ld   h, l                                        ; $702a: $65
	ld   l, l                                        ; $702b: $6d
	and  c                                           ; $702c: $a1
	ld   [hl], l                                     ; $702d: $75
	ld   h, a                                        ; $702e: $67
	ld   a, h                                        ; $702f: $7c
	ld   sp, hl                                      ; $7030: $f9
	dec  c                                           ; $7031: $0d
	nop                                              ; $7032: $00
	ld   a, [bc]                                     ; $7033: $0a
	rrca                                             ; $7034: $0f
	inc  bc                                          ; $7035: $03
	inc  b                                           ; $7036: $04
	ld   bc, $8b03                                   ; $7037: $01 $03 $8b
	ld   a, l                                        ; $703a: $7d
	rst  $38                                         ; $703b: $ff
	rst  $38                                         ; $703c: $ff
	rst  $38                                         ; $703d: $ff
	rst  $38                                         ; $703e: $ff
	dec  c                                           ; $703f: $0d
	ld   e, c                                        ; $7040: $59
	ld   e, l                                        ; $7041: $5d
	ld   e, c                                        ; $7042: $59
	ld   e, l                                        ; $7043: $5d
	ld   h, l                                        ; $7044: $65
	ld   e, c                                        ; $7045: $59
	ld   h, [hl]                                     ; $7046: $66
	ld   e, c                                        ; $7047: $59
	rst  $38                                         ; $7048: $ff
	rst  $38                                         ; $7049: $ff
	dec  c                                           ; $704a: $0d
	halt                                             ; $704b: $76
	sbc  [hl]                                        ; $704c: $9e
	ld   d, d                                        ; $704d: $52
	ld   d, h                                        ; $704e: $54
	ld   h, c                                        ; $704f: $61
	halt                                             ; $7050: $76
	ld   a, b                                        ; $7051: $78
	and  c                                           ; $7052: $a1
	ld   l, [hl]                                     ; $7053: $6e
	ld   e, a                                        ; $7054: $5f
	ld   [hl], a                                     ; $7055: $77
	rst  $38                                         ; $7056: $ff
	rst  $38                                         ; $7057: $ff
	dec  c                                           ; $7058: $0d
	nop                                              ; $7059: $00
	ld   a, [bc]                                     ; $705a: $0a
	inc  e                                           ; $705b: $1c
	ld   [bc], a                                     ; $705c: $02
	inc  bc                                          ; $705d: $03
	inc  bc                                          ; $705e: $03
	ld   bc, $9e50                                   ; $705f: $01 $50 $9e
	ld   d, b                                        ; $7062: $50
	sub  a                                           ; $7063: $97
	ld   d, d                                        ; $7064: $52
	sub  d                                           ; $7065: $92
	ld   l, [hl]                                     ; $7066: $6e
	sbc  a                                           ; $7067: $9f
	dec  c                                           ; $7068: $0d
	ld   e, b                                        ; $7069: $58
	adc  c                                           ; $706a: $89
	adc  c                                           ; $706b: $89
	adc  c                                           ; $706c: $89
	adc  c                                           ; $706d: $89
	adc  c                                           ; $706e: $89
	adc  c                                           ; $706f: $89
	rst  $38                                         ; $7070: $ff
	rst  $38                                         ; $7071: $ff
	dec  c                                           ; $7072: $0d
	ld   h, d                                        ; $7073: $62
	adc  a                                           ; $7074: $8f
	and  c                                           ; $7075: $a1
	ld   d, b                                        ; $7076: $50
	ld   l, e                                        ; $7077: $6b
	ld   a, [hl]                                     ; $7078: $7e
	ld   l, c                                        ; $7079: $69
	sbc  a                                           ; $707a: $9f
	dec  c                                           ; $707b: $0d
	nop                                              ; $707c: $00
	ld   a, [bc]                                     ; $707d: $0a
	inc  e                                           ; $707e: $1c
	ld   [bc], a                                     ; $707f: $02
	inc  b                                           ; $7080: $04
	inc  b                                           ; $7081: $04
	ld   bc, $6f03                                   ; $7082: $01 $03 $6f
	ld   bc, $0414                                   ; $7085: $01 $14 $04
	rst  $28                                         ; $7088: $ef
	inc  b                                           ; $7089: $04
	dec  bc                                          ; $708a: $0b
	ld   a, c                                        ; $708b: $79
	ld   [bc], a                                     ; $708c: $02
	ld   [hl-], a                                    ; $708d: $32
	ld   d, d                                        ; $708e: $52
	ld   [hl], l                                     ; $708f: $75
	adc  h                                           ; $7090: $8c
	ld   h, l                                        ; $7091: $65
	ld   l, l                                        ; $7092: $6d
	ld   a, h                                        ; $7093: $7c
	rst  $38                                         ; $7094: $ff
	rst  $38                                         ; $7095: $ff
	dec  c                                           ; $7096: $0d
	ld   d, b                                        ; $7097: $50
	sbc  c                                           ; $7098: $99
	inc  bc                                          ; $7099: $03
	ld   l, a                                        ; $709a: $6f
	sbc  [hl]                                        ; $709b: $9e
	ret  nz                                          ; $709c: $c0

	xor  e                                           ; $709d: $ab
	db   $ed                                         ; $709e: $ed
	and  b                                           ; $709f: $a0
	inc  bc                                          ; $70a0: $03
	and  b                                           ; $70a1: $a0
	ld   [hl], c                                     ; $70a2: $71
	ld   [hl], h                                     ; $70a3: $74
	ld   [bc], a                                     ; $70a4: $02
	ld   a, a                                        ; $70a5: $7f
	ld   e, l                                        ; $70a6: $5d
	dec  c                                           ; $70a7: $0d
	ld   a, h                                        ; $70a8: $7c
	and  b                                           ; $70a9: $a0
	inc  b                                           ; $70aa: $04
	and  e                                           ; $70ab: $a3
	sbc  d                                           ; $70ac: $9a
	ld   [hl], h                                     ; $70ad: $74
	ld   h, l                                        ; $70ae: $65
	adc  h                                           ; $70af: $8c
	ld   [hl], c                                     ; $70b0: $71
	ld   [hl], h                                     ; $70b1: $74
	rst  $38                                         ; $70b2: $ff
	rst  $38                                         ; $70b3: $ff
	dec  c                                           ; $70b4: $0d
	nop                                              ; $70b5: $00
	ld   a, [bc]                                     ; $70b6: $0a
	inc  e                                           ; $70b7: $1c
	ld   [bc], a                                     ; $70b8: $02
	ld   b, $06                                      ; $70b9: $06 $06
	ld   bc, $5d96                                   ; $70bb: $01 $96 $5d
	ld   d, b                                        ; $70be: $50
	sbc  b                                           ; $70bf: $98
	adc  h                                           ; $70c0: $8c
	ld   h, a                                        ; $70c1: $67
	ld   [hl], l                                     ; $70c2: $75
	ld   h, l                                        ; $70c3: $65
	sub  l                                           ; $70c4: $95
	ld   d, h                                        ; $70c5: $54
	ld   sp, hl                                      ; $70c6: $f9
	dec  c                                           ; $70c7: $0d
	ld   [bc], a                                     ; $70c8: $02
	jr   nz, jr_061_70cf                             ; $70c9: $20 $04

	add  hl, hl                                      ; $70cb: $29
	inc  b                                           ; $70cc: $04
	and  e                                           ; $70cd: $a3
	sbc  d                                           ; $70ce: $9a

jr_061_70cf:
	sbc  c                                           ; $70cf: $99
	halt                                             ; $70d0: $76
	sbc  [hl]                                        ; $70d1: $9e
	ld   a, b                                        ; $70d2: $78
	ld   l, d                                        ; $70d3: $6a
	ld   e, c                                        ; $70d4: $59
	dec  b                                           ; $70d5: $05
	ld   e, h                                        ; $70d6: $5c
	ld   [bc], a                                     ; $70d7: $02
	sub  e                                           ; $70d8: $93
	dec  c                                           ; $70d9: $0d
	inc  b                                           ; $70da: $04
	and  e                                           ; $70db: $a3
	sbc  d                                           ; $70dc: $9a
	ld   [hl], h                                     ; $70dd: $74
	ld   h, l                                        ; $70de: $65
	adc  h                                           ; $70df: $8c
	ld   d, h                                        ; $70e0: $54
	rst  $38                                         ; $70e1: $ff
	rst  $38                                         ; $70e2: $ff
	and  e                                           ; $70e3: $a3
	xor  $75                                         ; $70e4: $ee $75
	ld   h, a                                        ; $70e6: $67
	sbc  l                                           ; $70e7: $9d
	sbc  a                                           ; $70e8: $9f
	dec  c                                           ; $70e9: $0d
	nop                                              ; $70ea: $00
	ld   a, [bc]                                     ; $70eb: $0a
	rrca                                             ; $70ec: $0f
	inc  bc                                          ; $70ed: $03
	nop                                              ; $70ee: $00
	ld   bc, $9e75                                   ; $70ef: $01 $75 $9e
	ld   h, c                                        ; $70f2: $61
	ld   h, c                                        ; $70f3: $61
	inc  bc                                          ; $70f4: $03
	ld   l, c                                        ; $70f5: $69
	ld   [bc], a                                     ; $70f6: $02
	and  b                                           ; $70f7: $a0
	sbc  [hl]                                        ; $70f8: $9e
	ld   [bc], a                                     ; $70f9: $02
	ld   [hl-], a                                    ; $70fa: $32
	ld   e, h                                        ; $70fb: $5c
	ld   a, c                                        ; $70fc: $79
	ld   a, l                                        ; $70fd: $7d
	ld   [bc], a                                     ; $70fe: $02
	ld   a, a                                        ; $70ff: $7f
	ld   e, l                                        ; $7100: $5d
	ld   e, d                                        ; $7101: $5a
	dec  c                                           ; $7102: $0d
	ret  nz                                          ; $7103: $c0

	xor  e                                           ; $7104: $ab
	db   $ed                                         ; $7105: $ed
	ld   a, l                                        ; $7106: $7d
	inc  bc                                          ; $7107: $03
	and  b                                           ; $7108: $a0
	ld   [hl], c                                     ; $7109: $71
	ld   [hl], h                                     ; $710a: $74
	ld   d, d                                        ; $710b: $52
	ld   e, c                                        ; $710c: $59
	ld   a, b                                        ; $710d: $78
	ld   e, c                                        ; $710e: $59
	ld   [hl], c                                     ; $710f: $71
	ld   l, l                                        ; $7110: $6d
	sbc  a                                           ; $7111: $9f
	dec  c                                           ; $7112: $0d
	halt                                             ; $7113: $76
	ld   d, d                                        ; $7114: $52
	ld   d, h                                        ; $7115: $54
	sbc  l                                           ; $7116: $9d
	ld   e, a                                        ; $7117: $5f
	ld   a, e                                        ; $7118: $7b
	sbc  a                                           ; $7119: $9f
	dec  c                                           ; $711a: $0d
	nop                                              ; $711b: $00
	ld   a, [bc]                                     ; $711c: $0a
	rrca                                             ; $711d: $0f
	inc  bc                                          ; $711e: $03
	ld   [bc], a                                     ; $711f: $02
	dec  c                                           ; $7120: $0d
	ld   [bc], a                                     ; $7121: $02
	dec  b                                           ; $7122: $05
	ld   bc, $9605                                   ; $7123: $01 $05 $96
	sbc  c                                           ; $7126: $99
	sbc  l                                           ; $7127: $9d
	ld   a, e                                        ; $7128: $7b
	ld   h, a                                        ; $7129: $67
	adc  l                                           ; $712a: $8d
	sbc  d                                           ; $712b: $9a
	sbc  a                                           ; $712c: $9f
	ld   b, $2f                                      ; $712d: $06 $2f
	ld   [bc], a                                     ; $712f: $02
	inc  [hl]                                        ; $7130: $34
	ld   e, d                                        ; $7131: $5a
	ld   a, d                                        ; $7132: $7a
	sbc  d                                           ; $7133: $9a
	ld   [hl], h                                     ; $7134: $74
	dec  c                                           ; $7135: $0d
	dec  b                                           ; $7136: $05
	sbc  b                                           ; $7137: $98
	ld   a, b                                        ; $7138: $78
	ld   d, d                                        ; $7139: $52
	ld   h, l                                        ; $713a: $65
	sbc  [hl]                                        ; $713b: $9e
	inc  b                                           ; $713c: $04
	pop  hl                                          ; $713d: $e1
	inc  b                                           ; $713e: $04
	rst  $38                                         ; $713f: $ff
	ld   l, l                                        ; $7140: $6d
	ld   l, a                                        ; $7141: $6f
	ld   e, d                                        ; $7142: $5a
	dec  c                                           ; $7143: $0d
	sub  h                                           ; $7144: $94
	ld   d, h                                        ; $7145: $54
	sbc  d                                           ; $7146: $9a
	ld   d, d                                        ; $7147: $52
	ld   l, [hl]                                     ; $7148: $6e
	ld   [hl], c                                     ; $7149: $71
	ld   [hl], h                                     ; $714a: $74
	sbc  [hl]                                        ; $714b: $9e
	ld   h, e                                        ; $714c: $63
	sbc  l                                           ; $714d: $9d
	ld   e, [hl]                                     ; $714e: $5e
	ld   a, h                                        ; $714f: $7c
	sub  [hl]                                        ; $7150: $96
	sbc  a                                           ; $7151: $9f
	dec  c                                           ; $7152: $0d
	nop                                              ; $7153: $00
	ld   a, [bc]                                     ; $7154: $0a
	ld   bc, $a502                                   ; $7155: $01 $02 $a5
	ld   [bc], a                                     ; $7158: $02
	xor  d                                           ; $7159: $aa
	ld   a, l                                        ; $715a: $7d
	sbc  [hl]                                        ; $715b: $9e
	ld   e, e                                        ; $715c: $5b
	ld   l, a                                        ; $715d: $6f
	and  c                                           ; $715e: $a1
	halt                                             ; $715f: $76
	ret  nz                                          ; $7160: $c0

	xor  e                                           ; $7161: $ab
	db   $ed                                         ; $7162: $ed
	and  b                                           ; $7163: $a0
	dec  c                                           ; $7164: $0d
	inc  bc                                          ; $7165: $03
	and  b                                           ; $7166: $a0
	ld   [hl], c                                     ; $7167: $71
	ld   [hl], h                                     ; $7168: $74
	ld   [bc], a                                     ; $7169: $02
	ld   a, a                                        ; $716a: $7f
	ld   [hl], c                                     ; $716b: $71
	ld   [hl], h                                     ; $716c: $74
	sbc  [hl]                                        ; $716d: $9e
	inc  bc                                          ; $716e: $03
	xor  [hl]                                        ; $716f: $ae
	ld   d, d                                        ; $7170: $52
	ld   a, b                                        ; $7171: $78
	ld   h, e                                        ; $7172: $63
	ld   d, d                                        ; $7173: $52
	sbc  a                                           ; $7174: $9f
	dec  c                                           ; $7175: $0d
	sbc  l                                           ; $7176: $9d
	ld   e, c                                        ; $7177: $59
	ld   [hl], c                                     ; $7178: $71
	ld   l, l                                        ; $7179: $6d
	sbc  l                                           ; $717a: $9d
	ld   a, e                                        ; $717b: $7b
	sbc  a                                           ; $717c: $9f
	dec  c                                           ; $717d: $0d
	nop                                              ; $717e: $00
	ld   a, [bc]                                     ; $717f: $0a
	inc  e                                           ; $7180: $1c
	ld   [bc], a                                     ; $7181: $02
	rlca                                             ; $7182: $07
	rlca                                             ; $7183: $07
	ld   bc, $ffff                                   ; $7184: $01 $ff $ff
	sbc  l                                           ; $7187: $9d
	ld   e, c                                        ; $7188: $59
	sbc  b                                           ; $7189: $98
	adc  h                                           ; $718a: $8c
	ld   h, l                                        ; $718b: $65
	ld   l, l                                        ; $718c: $6d
	sbc  l                                           ; $718d: $9d
	rst  $38                                         ; $718e: $ff
	rst  $38                                         ; $718f: $ff
	dec  c                                           ; $7190: $0d
	nop                                              ; $7191: $00
	ld   a, [bc]                                     ; $7192: $0a
	dec  c                                           ; $7193: $0d
	nop                                              ; $7194: $00
	nop                                              ; $7195: $00
	rrca                                             ; $7196: $0f
	nop                                              ; $7197: $00
	ld   bc, $020c                                   ; $7198: $01 $0c $02
	ld   c, $44                                      ; $719b: $0e $44
	inc  e                                           ; $719d: $1c
	inc  bc                                          ; $719e: $03
	nop                                              ; $719f: $00
	nop                                              ; $71a0: $00
	ld   bc, $9166                                   ; $71a1: $01 $66 $91
	sbc  [hl]                                        ; $71a4: $9e
	inc  bc                                          ; $71a5: $03
	ld   l, b                                        ; $71a6: $68
	ld   a, h                                        ; $71a7: $7c
	ld   b, $08                                      ; $71a8: $06 $08
	sub  [hl]                                        ; $71aa: $96
	sbc  a                                           ; $71ab: $9f
	dec  c                                           ; $71ac: $0d
	inc  bc                                          ; $71ad: $03
	ld   l, b                                        ; $71ae: $68
	ld   a, l                                        ; $71af: $7d
	ld   e, d                                        ; $71b0: $5a
	and  c                                           ; $71b1: $a1
	ld   a, [hl]                                     ; $71b2: $7e
	ld   [hl], c                                     ; $71b3: $71
	ld   [hl], h                                     ; $71b4: $74
	ld   a, e                                        ; $71b5: $7b
	sbc  a                                           ; $71b6: $9f
	dec  c                                           ; $71b7: $0d
	ld   [$5d00], sp                                 ; $71b8: $08 $00 $5d
	and  c                                           ; $71bb: $a1
	sbc  a                                           ; $71bc: $9f
	dec  c                                           ; $71bd: $0d
	nop                                              ; $71be: $00
	ld   a, [bc]                                     ; $71bf: $0a
	ld   b, $8f                                      ; $71c0: $06 $8f
	dec  de                                          ; $71c2: $1b
	rrca                                             ; $71c3: $0f
	nop                                              ; $71c4: $00
	ld   bc, $0401                                   ; $71c5: $01 $01 $04
	rst  $10                                         ; $71c8: $d7
	inc  b                                           ; $71c9: $04
	ld   hl, $0b04                                   ; $71ca: $21 $04 $0b
	inc  bc                                          ; $71cd: $03
	ld   h, h                                        ; $71ce: $64
	ld   h, [hl]                                     ; $71cf: $66
	sub  c                                           ; $71d0: $91
	ld   a, b                                        ; $71d1: $78
	ld   d, d                                        ; $71d2: $52
	ld   [hl], l                                     ; $71d3: $75
	ld   h, a                                        ; $71d4: $67
	ld   e, c                                        ; $71d5: $59
	ld   sp, hl                                      ; $71d6: $f9
	dec  c                                           ; $71d7: $0d
	dec  b                                           ; $71d8: $05
	or   e                                           ; $71d9: $b3
	ld   [hl], c                                     ; $71da: $71
	ld   a, a                                        ; $71db: $7f
	sub  a                                           ; $71dc: $97
	ld   [hl], c                                     ; $71dd: $71
	ld   [hl], h                                     ; $71de: $74
	sbc  [hl]                                        ; $71df: $9e
	inc  bc                                          ; $71e0: $03
	ld   e, c                                        ; $71e1: $59
	ld   [bc], a                                     ; $71e2: $02
	ld   [hl-], a                                    ; $71e3: $32
	inc  b                                           ; $71e4: $04
	ld   a, d                                        ; $71e5: $7a
	ld   a, c                                        ; $71e6: $79
	dec  c                                           ; $71e7: $0d
	inc  b                                           ; $71e8: $04
	ld   a, a                                        ; $71e9: $7f
	add  c                                           ; $71ea: $81
	ld   [bc], a                                     ; $71eb: $02
	ld   b, b                                        ; $71ec: $40
	and  c                                           ; $71ed: $a1
	ld   [hl], l                                     ; $71ee: $75
	rst  $38                                         ; $71ef: $ff
	rst  $38                                         ; $71f0: $ff
	dec  c                                           ; $71f1: $0d
	nop                                              ; $71f2: $00
	ld   a, [bc]                                     ; $71f3: $0a
	inc  e                                           ; $71f4: $1c
	inc  bc                                          ; $71f5: $03
	inc  b                                           ; $71f6: $04
	inc  b                                           ; $71f7: $04
	ld   bc, $fc54                                   ; $71f8: $01 $54 $fc
	and  c                                           ; $71fb: $a1
	rst  $38                                         ; $71fc: $ff
	rst  $38                                         ; $71fd: $ff
	ld   [bc], a                                     ; $71fe: $02
	adc  e                                           ; $71ff: $8b
	inc  b                                           ; $7200: $04
	ld   b, e                                        ; $7201: $43
	ld   [bc], a                                     ; $7202: $02
	db   $fc                                         ; $7203: $fc
	ld   a, l                                        ; $7204: $7d
	ld   d, b                                        ; $7205: $50
	sbc  c                                           ; $7206: $99
	sbc  l                                           ; $7207: $9d
	ld   a, e                                        ; $7208: $7b
	sbc  a                                           ; $7209: $9f
	dec  c                                           ; $720a: $0d
	ld   h, [hl]                                     ; $720b: $66
	sub  c                                           ; $720c: $91
	sbc  [hl]                                        ; $720d: $9e
	inc  bc                                          ; $720e: $03
	add  l                                           ; $720f: $85
	inc  b                                           ; $7210: $04
	xor  e                                           ; $7211: $ab
	inc  bc                                          ; $7212: $03
	add  d                                           ; $7213: $82
	ld   a, h                                        ; $7214: $7c
	inc  bc                                          ; $7215: $03
	ld   c, e                                        ; $7216: $4b
	add  [hl]                                        ; $7217: $86
	dec  c                                           ; $7218: $0d
	ld   [bc], a                                     ; $7219: $02
	ld   a, a                                        ; $721a: $7f
	ld   e, e                                        ; $721b: $5b
	adc  h                                           ; $721c: $8c
	ld   h, l                                        ; $721d: $65
	sub  l                                           ; $721e: $95
	ld   d, h                                        ; $721f: $54
	sbc  a                                           ; $7220: $9f
	dec  c                                           ; $7221: $0d
	nop                                              ; $7222: $00
	ld   a, [bc]                                     ; $7223: $0a
	dec  c                                           ; $7224: $0d
	nop                                              ; $7225: $00
	nop                                              ; $7226: $00
	rrca                                             ; $7227: $0f
	nop                                              ; $7228: $00
	ld   bc, $0d23                                   ; $7229: $01 $23 $0d
	inc  e                                           ; $722c: $1c
	ld   a, [bc]                                     ; $722d: $0a
	nop                                              ; $722e: $00
	nop                                              ; $722f: $00
	ld   bc, $5896                                   ; $7230: $01 $96 $58
	sbc  [hl]                                        ; $7233: $9e
	rst  JumpTable                                         ; $7234: $df
	db   $ec                                         ; $7235: $ec
	and  e                                           ; $7236: $a3
	sbc  [hl]                                        ; $7237: $9e
	ld   l, e                                        ; $7238: $6b
	sbc  d                                           ; $7239: $9a
	ld   a, c                                        ; $723a: $79
	dec  c                                           ; $723b: $0d
	ld   [$9f00], sp                                 ; $723c: $08 $00 $9f
	ld   [hl], a                                     ; $723f: $77
	ld   d, h                                        ; $7240: $54
	ld   h, l                                        ; $7241: $65
	ld   l, l                                        ; $7242: $6d
	ld   d, d                                        ; $7243: $52
	sbc  [hl]                                        ; $7244: $9e
	dec  c                                           ; $7245: $0d
	ld   b, $09                                      ; $7246: $06 $09
	inc  bc                                          ; $7248: $03
	add  d                                           ; $7249: $82
	ld   l, e                                        ; $724a: $6b
	sbc  e                                           ; $724b: $9b
	ld   [hl], c                                     ; $724c: $71
	ld   [hl], h                                     ; $724d: $74
	sbc  a                                           ; $724e: $9f
	dec  c                                           ; $724f: $0d
	nop                                              ; $7250: $00
	ld   a, [bc]                                     ; $7251: $0a
	rrca                                             ; $7252: $0f
	inc  bc                                          ; $7253: $03
	inc  b                                           ; $7254: $04
	ld   bc, $8b03                                   ; $7255: $01 $03 $8b
	ld   a, l                                        ; $7258: $7d
	rst  $38                                         ; $7259: $ff
	rst  $38                                         ; $725a: $ff
	rst  $38                                         ; $725b: $ff
	rst  $38                                         ; $725c: $ff
	dec  c                                           ; $725d: $0d
	ld   e, c                                        ; $725e: $59
	ld   e, l                                        ; $725f: $5d
	ld   e, c                                        ; $7260: $59
	ld   e, l                                        ; $7261: $5d
	ld   h, l                                        ; $7262: $65
	ld   e, c                                        ; $7263: $59
	ld   h, [hl]                                     ; $7264: $66
	ld   e, c                                        ; $7265: $59
	rst  $38                                         ; $7266: $ff
	rst  $38                                         ; $7267: $ff
	dec  c                                           ; $7268: $0d
	halt                                             ; $7269: $76
	sbc  [hl]                                        ; $726a: $9e
	ld   d, d                                        ; $726b: $52
	ld   d, h                                        ; $726c: $54
	ld   h, c                                        ; $726d: $61
	halt                                             ; $726e: $76
	ld   a, b                                        ; $726f: $78
	ld   a, h                                        ; $7270: $7c
	ld   [hl], l                                     ; $7271: $75
	ld   h, a                                        ; $7272: $67
	ld   e, d                                        ; $7273: $5a
	rst  $38                                         ; $7274: $ff
	rst  $38                                         ; $7275: $ff
	dec  c                                           ; $7276: $0d
	nop                                              ; $7277: $00
	ld   a, [bc]                                     ; $7278: $0a
	inc  e                                           ; $7279: $1c
	ld   a, [bc]                                     ; $727a: $0a
	ld   [bc], a                                     ; $727b: $02
	ld   [bc], a                                     ; $727c: $02
	ld   bc, $acd1                                   ; $727d: $01 $d1 $ac
	ld   [bc], a                                     ; $7280: $02
	sbc  l                                           ; $7281: $9d
	ld   d, h                                        ; $7282: $54
	ld   a, b                                        ; $7283: $78
	ld   d, d                                        ; $7284: $52
	ld   a, [$050d]                                  ; $7285: $fa $0d $05
	or   e                                           ; $7288: $b3
	ld   [hl], c                                     ; $7289: $71
	ld   a, a                                        ; $728a: $7f
	sub  a                                           ; $728b: $97
	ld   [hl], c                                     ; $728c: $71
	ld   [hl], h                                     ; $728d: $74
	inc  bc                                          ; $728e: $03
	ld   e, c                                        ; $728f: $59
	ld   a, c                                        ; $7290: $79
	inc  b                                           ; $7291: $04
	ld   a, a                                        ; $7292: $7f
	add  c                                           ; $7293: $81
	ld   [bc], a                                     ; $7294: $02
	ld   b, b                                        ; $7295: $40
	and  c                                           ; $7296: $a1
	ld   l, [hl]                                     ; $7297: $6e
	sub  a                                           ; $7298: $97
	dec  c                                           ; $7299: $0d
	inc  bc                                          ; $729a: $03
	ld   a, $a1                                      ; $729b: $3e $a1
	ld   h, [hl]                                     ; $729d: $66
	adc  h                                           ; $729e: $8c
	ld   d, h                                        ; $729f: $54
	ld   l, [hl]                                     ; $72a0: $6e
	sbc  e                                           ; $72a1: $9b
	ld   d, h                                        ; $72a2: $54
	ld   e, d                                        ; $72a3: $5a
	sub  [hl]                                        ; $72a4: $96
	ld   a, [$000d]                                  ; $72a5: $fa $0d $00
	ld   a, [bc]                                     ; $72a8: $0a
	rrca                                             ; $72a9: $0f
	inc  bc                                          ; $72aa: $03
	inc  b                                           ; $72ab: $04
	ld   bc, $9a6b                                   ; $72ac: $01 $6b $9a
	ld   a, l                                        ; $72af: $7d
	sbc  [hl]                                        ; $72b0: $9e
	ld   l, e                                        ; $72b1: $6b
	ld   d, h                                        ; $72b2: $54
	ld   [hl], l                                     ; $72b3: $75
	ld   h, a                                        ; $72b4: $67
	ld   a, e                                        ; $72b5: $7b
	rst  $38                                         ; $72b6: $ff
	rst  $38                                         ; $72b7: $ff
	dec  c                                           ; $72b8: $0d
	ld   h, a                                        ; $72b9: $67
	adc  l                                           ; $72ba: $8d
	adc  h                                           ; $72bb: $8c
	ld   l, c                                        ; $72bc: $69
	and  c                                           ; $72bd: $a1
	inc  bc                                          ; $72be: $03
	add  l                                           ; $72bf: $85
	inc  b                                           ; $72c0: $04
	xor  e                                           ; $72c1: $ab
	inc  bc                                          ; $72c2: $03
	add  d                                           ; $72c3: $82
	sbc  a                                           ; $72c4: $9f
	dec  c                                           ; $72c5: $0d
	ld   e, b                                        ; $72c6: $58
	ld   h, e                                        ; $72c7: $63
	sbc  l                                           ; $72c8: $9d
	ld   e, d                                        ; $72c9: $5a
	ld   l, c                                        ; $72ca: $69
	ld   d, d                                        ; $72cb: $52
	ld   l, l                                        ; $72cc: $6d
	ld   h, l                                        ; $72cd: $65
	adc  h                                           ; $72ce: $8c
	ld   h, l                                        ; $72cf: $65
	ld   l, l                                        ; $72d0: $6d
	sbc  a                                           ; $72d1: $9f
	dec  c                                           ; $72d2: $0d
	nop                                              ; $72d3: $00
	ld   a, [bc]                                     ; $72d4: $0a
	dec  c                                           ; $72d5: $0d
	nop                                              ; $72d6: $00
	nop                                              ; $72d7: $00
	rrca                                             ; $72d8: $0f
	nop                                              ; $72d9: $00
	ld   bc, $020c                                   ; $72da: $01 $0c $02
	ld   b, $e5                                      ; $72dd: $06 $e5
	inc  de                                          ; $72df: $13
	add  hl, de                                      ; $72e0: $19
	dec  b                                           ; $72e1: $05
	inc  bc                                          ; $72e2: $03
	ld   h, a                                        ; $72e3: $67
	adc  l                                           ; $72e4: $8d
	sbc  d                                           ; $72e5: $9a
	ld   h, e                                        ; $72e6: $63
	and  c                                           ; $72e7: $a1
	ld   e, d                                        ; $72e8: $5a
	rst  $38                                         ; $72e9: $ff
	rst  $38                                         ; $72ea: $ff
	nop                                              ; $72eb: $00
	nop                                              ; $72ec: $00
	xor  h                                           ; $72ed: $ac
	push af                                          ; $72ee: $f5
	bit  3, d                                        ; $72ef: $cb $5a
	rst  $38                                         ; $72f1: $ff
	rst  $38                                         ; $72f2: $ff
	nop                                              ; $72f3: $00
	ld   bc, $d704                                   ; $72f4: $01 $04 $d7
	inc  b                                           ; $72f7: $04
	ld   hl, $0b04                                   ; $72f8: $21 $04 $0b
	inc  bc                                          ; $72fb: $03
	ld   h, h                                        ; $72fc: $64
	ld   e, d                                        ; $72fd: $5a
	rst  $38                                         ; $72fe: $ff
	rst  $38                                         ; $72ff: $ff
	nop                                              ; $7300: $00
	ld   [bc], a                                     ; $7301: $02
	rlca                                             ; $7302: $07
	and  [hl]                                        ; $7303: $a6
	rla                                              ; $7304: $17
	ld   [bc], a                                     ; $7305: $02
	inc  bc                                          ; $7306: $03
	ld   bc, $2000                                   ; $7307: $01 $00 $20
	nop                                              ; $730a: $00
	rlca                                             ; $730b: $07
	ld   l, $18                                      ; $730c: $2e $18
	ld   [bc], a                                     ; $730e: $02
	inc  bc                                          ; $730f: $03
	ld   bc, $2001                                   ; $7310: $01 $01 $20
	nop                                              ; $7313: $00
	rlca                                             ; $7314: $07
	sbc  $18                                         ; $7315: $de $18
	ld   [bc], a                                     ; $7317: $02
	inc  bc                                          ; $7318: $03
	ld   bc, $2002                                   ; $7319: $01 $02 $20
	nop                                              ; $731c: $00
	ld   b, $57                                      ; $731d: $06 $57
	rla                                              ; $731f: $17
	inc  e                                           ; $7320: $1c
	inc  bc                                          ; $7321: $03
	nop                                              ; $7322: $00
	nop                                              ; $7323: $00
	ld   bc, $ffff                                   ; $7324: $01 $ff $ff
	dec  b                                           ; $7327: $05
	and  h                                           ; $7328: $a4
	ld   [hl], c                                     ; $7329: $71
	ld   e, c                                        ; $732a: $59
	ld   e, e                                        ; $732b: $5b
	ld   sp, hl                                      ; $732c: $f9
	dec  c                                           ; $732d: $0d
	ld   d, d                                        ; $732e: $52
	ld   e, l                                        ; $732f: $5d
	sub  a                                           ; $7330: $97
	ld   a, b                                        ; $7331: $78
	and  c                                           ; $7332: $a1
	ld   [hl], l                                     ; $7333: $75
	sub  b                                           ; $7334: $90
	sbc  [hl]                                        ; $7335: $9e
	ld   b, $2f                                      ; $7336: $06 $2f
	ld   [bc], a                                     ; $7338: $02
	inc  [hl]                                        ; $7339: $34
	and  b                                           ; $733a: $a0
	ld   a, d                                        ; $733b: $7a
	sub  a                                           ; $733c: $97
	ld   h, a                                        ; $733d: $67
	dec  c                                           ; $733e: $0d
	adc  c                                           ; $733f: $89
	ld   [hl], a                                     ; $7340: $77
	ld   a, h                                        ; $7341: $7c
	dec  b                                           ; $7342: $05
	and  h                                           ; $7343: $a4
	ld   a, l                                        ; $7344: $7d
	rst  $38                                         ; $7345: $ff
	rst  $38                                         ; $7346: $ff
	rst  $38                                         ; $7347: $ff
	rst  $38                                         ; $7348: $ff
	dec  c                                           ; $7349: $0d
	nop                                              ; $734a: $00
	ld   a, [bc]                                     ; $734b: $0a
	ld   bc, $2f06                                   ; $734c: $01 $06 $2f
	ld   [bc], a                                     ; $734f: $02
	inc  [hl]                                        ; $7350: $34
	ld   e, d                                        ; $7351: $5a
	ld   a, d                                        ; $7352: $7a
	sbc  d                                           ; $7353: $9a
	ld   [hl], h                                     ; $7354: $74
	sbc  c                                           ; $7355: $99
	rst  $38                                         ; $7356: $ff
	rst  $38                                         ; $7357: $ff
	rst  $38                                         ; $7358: $ff
	rst  $38                                         ; $7359: $ff
	dec  c                                           ; $735a: $0d
	inc  bc                                          ; $735b: $03
	ld   e, c                                        ; $735c: $59
	rst  $38                                         ; $735d: $ff
	rst  $38                                         ; $735e: $ff
	adc  l                                           ; $735f: $8d
	ld   l, b                                        ; $7360: $68
	rst  $38                                         ; $7361: $ff
	rst  $38                                         ; $7362: $ff
	dec  c                                           ; $7363: $0d
	ld   l, e                                        ; $7364: $6b
	ld   d, h                                        ; $7365: $54
	ld   l, [hl]                                     ; $7366: $6e
	sbc  l                                           ; $7367: $9d
	ld   a, [$000d]                                  ; $7368: $fa $0d $00
	ld   a, [bc]                                     ; $736b: $0a
	ld   b, $0e                                      ; $736c: $06 $0e
	inc  d                                           ; $736e: $14
	rrca                                             ; $736f: $0f
	nop                                              ; $7370: $00
	ld   bc, $6701                                   ; $7371: $01 $01 $67
	adc  l                                           ; $7374: $8d
	sbc  d                                           ; $7375: $9a
	ld   h, e                                        ; $7376: $63
	and  c                                           ; $7377: $a1
	sbc  [hl]                                        ; $7378: $9e
	ld   h, [hl]                                     ; $7379: $66
	sub  c                                           ; $737a: $91
	ld   a, b                                        ; $737b: $78
	ld   d, d                                        ; $737c: $52
	ld   [hl], l                                     ; $737d: $75
	ld   h, a                                        ; $737e: $67
	ld   e, c                                        ; $737f: $59
	ld   sp, hl                                      ; $7380: $f9
	dec  c                                           ; $7381: $0d
	inc  bc                                          ; $7382: $03
	adc  e                                           ; $7383: $8b
	ld   a, l                                        ; $7384: $7d
	adc  l                                           ; $7385: $8d
	ld   a, b                                        ; $7386: $78
	ld   a, h                                        ; $7387: $7c
	inc  b                                           ; $7388: $04
	dec  hl                                          ; $7389: $2b
	sub  a                                           ; $738a: $97
	ld   a, b                                        ; $738b: $78
	ld   d, d                                        ; $738c: $52
	halt                                             ; $738d: $76
	ld   h, c                                        ; $738e: $61
	sbc  e                                           ; $738f: $9b
	ld   [hl], l                                     ; $7390: $75
	dec  c                                           ; $7391: $0d
	ld   b, $22                                      ; $7392: $06 $22
	inc  bc                                          ; $7394: $03
	db   $fd                                         ; $7395: $fd
	inc  bc                                          ; $7396: $03
	ld   l, l                                        ; $7397: $6d
	ld   h, l                                        ; $7398: $65
	ld   [hl], h                                     ; $7399: $74
	ld   d, d                                        ; $739a: $52
	sbc  c                                           ; $739b: $99
	halt                                             ; $739c: $76
	ld   e, c                                        ; $739d: $59
	rst  $38                                         ; $739e: $ff
	rst  $38                                         ; $739f: $ff
	dec  c                                           ; $73a0: $0d
	nop                                              ; $73a1: $00
	ld   a, [bc]                                     ; $73a2: $0a
	inc  e                                           ; $73a3: $1c
	inc  bc                                          ; $73a4: $03
	nop                                              ; $73a5: $00
	nop                                              ; $73a6: $00
	ld   bc, $9a6b                                   ; $73a7: $01 $6b $9a
	ld   l, [hl]                                     ; $73aa: $6e
	ld   [hl], c                                     ; $73ab: $71
	ld   l, l                                        ; $73ac: $6d
	sub  a                                           ; $73ad: $97
	sbc  [hl]                                        ; $73ae: $9e
	inc  bc                                          ; $73af: $03
	db   $ec                                         ; $73b0: $ec
	dec  b                                           ; $73b1: $05
	add  hl, de                                      ; $73b2: $19
	inc  bc                                          ; $73b3: $03
	ld   c, l                                        ; $73b4: $4d
	ld   [hl], l                                     ; $73b5: $75
	dec  c                                           ; $73b6: $0d
	sub  d                                           ; $73b7: $92
	sbc  c                                           ; $73b8: $99
	ld   [hl], l                                     ; $73b9: $75
	ld   h, l                                        ; $73ba: $65
	sub  l                                           ; $73bb: $95
	ld   d, h                                        ; $73bc: $54
	sbc  a                                           ; $73bd: $9f
	ld   b, $2f                                      ; $73be: $06 $2f
	ld   [bc], a                                     ; $73c0: $02
	inc  [hl]                                        ; $73c1: $34
	ld   [hl], l                                     ; $73c2: $75
	inc  bc                                          ; $73c3: $03
	db   $fd                                         ; $73c4: $fd
	inc  bc                                          ; $73c5: $03
	ld   l, l                                        ; $73c6: $6d
	dec  c                                           ; $73c7: $0d
	ld   a, b                                        ; $73c8: $78
	and  c                                           ; $73c9: $a1
	ld   [hl], h                                     ; $73ca: $74
	ld   h, c                                        ; $73cb: $61
	halt                                             ; $73cc: $76
	ld   a, b                                        ; $73cd: $78
	ld   d, d                                        ; $73ce: $52
	sbc  l                                           ; $73cf: $9d
	sbc  a                                           ; $73d0: $9f
	dec  c                                           ; $73d1: $0d
	nop                                              ; $73d2: $00
	ld   a, [bc]                                     ; $73d3: $0a
	ld   bc, $2f06                                   ; $73d4: $01 $06 $2f
	ld   [bc], a                                     ; $73d7: $02
	inc  [hl]                                        ; $73d8: $34
	ld   e, d                                        ; $73d9: $5a
	ld   a, d                                        ; $73da: $7a
	sbc  d                                           ; $73db: $9a
	ld   [hl], h                                     ; $73dc: $74
	sbc  c                                           ; $73dd: $99
	rst  $38                                         ; $73de: $ff
	rst  $38                                         ; $73df: $ff
	rst  $38                                         ; $73e0: $ff
	rst  $38                                         ; $73e1: $ff
	dec  c                                           ; $73e2: $0d
	inc  bc                                          ; $73e3: $03
	ld   e, c                                        ; $73e4: $59
	rst  $38                                         ; $73e5: $ff
	rst  $38                                         ; $73e6: $ff
	adc  l                                           ; $73e7: $8d
	ld   l, b                                        ; $73e8: $68
	rst  $38                                         ; $73e9: $ff
	rst  $38                                         ; $73ea: $ff
	dec  c                                           ; $73eb: $0d
	ld   l, e                                        ; $73ec: $6b
	ld   d, h                                        ; $73ed: $54
	ld   l, [hl]                                     ; $73ee: $6e
	sbc  l                                           ; $73ef: $9d
	ld   a, [$000d]                                  ; $73f0: $fa $0d $00
	ld   a, [bc]                                     ; $73f3: $0a
	ld   b, $0e                                      ; $73f4: $06 $0e
	inc  d                                           ; $73f6: $14
	rrca                                             ; $73f7: $0f
	nop                                              ; $73f8: $00
	ld   bc, $ac01                                   ; $73f9: $01 $01 $ac
	push af                                          ; $73fc: $f5
	bit  4, e                                        ; $73fd: $cb $63
	and  c                                           ; $73ff: $a1
	ld   h, [hl]                                     ; $7400: $66
	sub  c                                           ; $7401: $91
	ld   a, b                                        ; $7402: $78
	ld   d, d                                        ; $7403: $52
	ld   [hl], l                                     ; $7404: $75
	ld   h, a                                        ; $7405: $67
	ld   e, c                                        ; $7406: $59
	ld   sp, hl                                      ; $7407: $f9
	dec  c                                           ; $7408: $0d
	ld   b, $22                                      ; $7409: $06 $22
	inc  bc                                          ; $740b: $03
	db   $fd                                         ; $740c: $fd
	inc  bc                                          ; $740d: $03
	ld   l, l                                        ; $740e: $6d
	ld   [hl], l                                     ; $740f: $75
	dec  b                                           ; $7410: $05
	and  h                                           ; $7411: $a4
	adc  h                                           ; $7412: $8c
	adc  l                                           ; $7413: $8d
	sbc  d                                           ; $7414: $9a
	rst  $38                                         ; $7415: $ff
	rst  $38                                         ; $7416: $ff
	dec  c                                           ; $7417: $0d
	ld   l, e                                        ; $7418: $6b
	ld   a, h                                        ; $7419: $7c
	adc  h                                           ; $741a: $8c
	adc  h                                           ; $741b: $8c
	inc  b                                           ; $741c: $04
	sub  l                                           ; $741d: $95
	ld   [bc], a                                     ; $741e: $02
	ld   hl, $ff86                                   ; $741f: $21 $86 $ff
	rst  $38                                         ; $7422: $ff
	dec  c                                           ; $7423: $0d
	nop                                              ; $7424: $00
	ld   a, [bc]                                     ; $7425: $0a
	inc  e                                           ; $7426: $1c
	inc  bc                                          ; $7427: $03
	inc  b                                           ; $7428: $04
	inc  b                                           ; $7429: $04
	ld   bc, $ffff                                   ; $742a: $01 $ff $ff
	ld   [bc], a                                     ; $742d: $02
	ld   h, l                                        ; $742e: $65
	ld   d, [hl]                                     ; $742f: $56
	sub  a                                           ; $7430: $97
	sbc  d                                           ; $7431: $9a
	ld   a, b                                        ; $7432: $78
	ld   e, l                                        ; $7433: $5d
	sub  b                                           ; $7434: $90
	ld   a, b                                        ; $7435: $78
	ld   d, d                                        ; $7436: $52
	ld   e, a                                        ; $7437: $5f
	ld   [hl], a                                     ; $7438: $77
	rst  $38                                         ; $7439: $ff
	dec  c                                           ; $743a: $0d
	ld   l, e                                        ; $743b: $6b
	ld   h, c                                        ; $743c: $61
	adc  h                                           ; $743d: $8c
	ld   [hl], l                                     ; $743e: $75
	dec  b                                           ; $743f: $05
	and  h                                           ; $7440: $a4
	and  b                                           ; $7441: $a0
	ld   e, c                                        ; $7442: $59
	ld   d, d                                        ; $7443: $52
	ld   [hl], h                                     ; $7444: $74
	sbc  c                                           ; $7445: $99
	dec  c                                           ; $7446: $0d
	xor  h                                           ; $7447: $ac
	push af                                          ; $7448: $f5
	bit  7, l                                        ; $7449: $cb $7d
	ld   [bc], a                                     ; $744b: $02
	sub  l                                           ; $744c: $95
	ld   l, l                                        ; $744d: $6d
	ld   h, c                                        ; $744e: $61
	halt                                             ; $744f: $76
	ld   a, b                                        ; $7450: $78
	ld   d, d                                        ; $7451: $52

Jump_061_7452:
	sbc  l                                           ; $7452: $9d
	rst  $38                                         ; $7453: $ff
	rst  $38                                         ; $7454: $ff
	dec  c                                           ; $7455: $0d
	nop                                              ; $7456: $00
	ld   a, [bc]                                     ; $7457: $0a
	inc  e                                           ; $7458: $1c
	inc  bc                                          ; $7459: $03
	nop                                              ; $745a: $00
	nop                                              ; $745b: $00
	ld   bc, $9a6b                                   ; $745c: $01 $6b $9a

Jump_061_745f:
	ld   a, c                                        ; $745f: $79
	sbc  [hl]                                        ; $7460: $9e
	xor  h                                           ; $7461: $ac
	push af                                          ; $7462: $f5
	bit  7, l                                        ; $7463: $cb $7d
	ret  nc                                          ; $7465: $d0

	jp   nz, $aedf                                   ; $7466: $c2 $df $ae

	dec  c                                           ; $7469: $0d
	ld   h, l                                        ; $746a: $65
	ld   [hl], h                                     ; $746b: $74
	sbc  c                                           ; $746c: $99
	ld   e, c                                        ; $746d: $59
	sub  a                                           ; $746e: $97
	sbc  [hl]                                        ; $746f: $9e
	ld   l, e                                        ; $7470: $6b

Jump_061_7471:
	and  c                                           ; $7471: $a1
	ld   a, b                                        ; $7472: $78
	ld   a, c                                        ; $7473: $79
	dec  b                                           ; $7474: $05
	and  h                                           ; $7475: $a4

jr_061_7476:
	ld   a, l                                        ; $7476: $7d
	dec  c                                           ; $7477: $0d
	dec  b                                           ; $7478: $05
	ld   [de], a                                     ; $7479: $12
	ld   l, a                                        ; $747a: $6f
	ld   a, b                                        ; $747b: $78
	ld   d, d                                        ; $747c: $52
	ld   a, l                                        ; $747d: $7d
	ld   l, b                                        ; $747e: $68
	sub  [hl]                                        ; $747f: $96
	sbc  a                                           ; $7480: $9f
	dec  c                                           ; $7481: $0d
	nop                                              ; $7482: $00
	ld   a, [bc]                                     ; $7483: $0a
	ld   bc, $2f06                                   ; $7484: $01 $06 $2f
	ld   [bc], a                                     ; $7487: $02
	inc  [hl]                                        ; $7488: $34
	ld   e, d                                        ; $7489: $5a
	ld   a, d                                        ; $748a: $7a
	sbc  d                                           ; $748b: $9a
	ld   [hl], h                                     ; $748c: $74
	sbc  c                                           ; $748d: $99
	rst  $38                                         ; $748e: $ff
	rst  $38                                         ; $748f: $ff
	rst  $38                                         ; $7490: $ff
	rst  $38                                         ; $7491: $ff
	dec  c                                           ; $7492: $0d
	inc  bc                                          ; $7493: $03
	ld   e, c                                        ; $7494: $59
	rst  $38                                         ; $7495: $ff
	rst  $38                                         ; $7496: $ff
	adc  l                                           ; $7497: $8d
	ld   l, b                                        ; $7498: $68
	rst  $38                                         ; $7499: $ff
	rst  $38                                         ; $749a: $ff
	dec  c                                           ; $749b: $0d
	ld   l, e                                        ; $749c: $6b
	ld   d, h                                        ; $749d: $54
	ld   l, [hl]                                     ; $749e: $6e
	sbc  l                                           ; $749f: $9d
	ld   a, [$000d]                                  ; $74a0: $fa $0d $00
	ld   a, [bc]                                     ; $74a3: $0a
	ld   b, $0e                                      ; $74a4: $06 $0e
	inc  d                                           ; $74a6: $14
	rrca                                             ; $74a7: $0f
	nop                                              ; $74a8: $00
	ld   bc, $0401                                   ; $74a9: $01 $01 $04
	rst  $10                                         ; $74ac: $d7
	inc  b                                           ; $74ad: $04
	ld   hl, $0b04                                   ; $74ae: $21 $04 $0b
	inc  bc                                          ; $74b1: $03
	ld   h, h                                        ; $74b2: $64
	ld   h, [hl]                                     ; $74b3: $66
	sub  c                                           ; $74b4: $91
	ld   a, b                                        ; $74b5: $78
	ld   d, d                                        ; $74b6: $52
	ld   [hl], l                                     ; $74b7: $75
	ld   h, a                                        ; $74b8: $67
	ld   e, c                                        ; $74b9: $59
	ld   sp, hl                                      ; $74ba: $f9
	dec  c                                           ; $74bb: $0d
	inc  bc                                          ; $74bc: $03
	jr   nz, @+$7e                                   ; $74bd: $20 $7c

	ld   [bc], a                                     ; $74bf: $02
	rlca                                             ; $74c0: $07
	adc  l                                           ; $74c1: $8d
	ld   [bc], a                                     ; $74c2: $02
	rst  $20                                         ; $74c3: $e7
	ld   e, h                                        ; $74c4: $5c
	ld   [hl], l                                     ; $74c5: $75
	rst  $38                                         ; $74c6: $ff
	rst  $38                                         ; $74c7: $ff
	rst  $38                                         ; $74c8: $ff
	rst  $38                                         ; $74c9: $ff
	dec  c                                           ; $74ca: $0d
	ld   d, b                                        ; $74cb: $50
	ld   [hl], c                                     ; $74cc: $71
	ld   a, [$4d05]                                  ; $74cd: $fa $05 $4d
	dec  b                                           ; $74d0: $05
	ccf                                              ; $74d1: $3f
	ld   a, c                                        ; $74d2: $79
	inc  bc                                          ; $74d3: $03
	jr   nz, jr_061_7476                             ; $74d4: $20 $a0

	ld   h, c                                        ; $74d6: $61
	adc  d                                           ; $74d7: $8a
	ld   h, l                                        ; $74d8: $65
	ld   [hl], h                                     ; $74d9: $74
	sbc  c                                           ; $74da: $99
	ld   a, [$000d]                                  ; $74db: $fa $0d $00
	ld   a, [bc]                                     ; $74de: $0a
	inc  e                                           ; $74df: $1c
	inc  bc                                          ; $74e0: $03
	inc  b                                           ; $74e1: $04
	inc  b                                           ; $74e2: $04
	ld   bc, $9a6b                                   ; $74e3: $01 $6b $9a
	ld   l, [hl]                                     ; $74e6: $6e
	ld   [hl], c                                     ; $74e7: $71
	ld   l, l                                        ; $74e8: $6d
	sub  a                                           ; $74e9: $97
	sbc  [hl]                                        ; $74ea: $9e
	ld   b, $2f                                      ; $74eb: $06 $2f
	ld   [bc], a                                     ; $74ed: $02
	inc  [hl]                                        ; $74ee: $34
	ld   a, l                                        ; $74ef: $7d
	jp   c, $dac9                                    ; $74f0: $da $c9 $da

	ret                                              ; $74f3: $c9


	dec  c                                           ; $74f4: $0d
	ld   h, a                                        ; $74f5: $67
	sbc  c                                           ; $74f6: $99
	ld   a, l                                        ; $74f7: $7d
	ld   l, b                                        ; $74f8: $68
	sub  [hl]                                        ; $74f9: $96
	sbc  a                                           ; $74fa: $9f
	ld   l, e                                        ; $74fb: $6b
	and  c                                           ; $74fc: $a1
	ld   a, b                                        ; $74fd: $78
	ld   h, c                                        ; $74fe: $61
	halt                                             ; $74ff: $76
	ld   a, l                                        ; $7500: $7d
	dec  c                                           ; $7501: $0d
	ld   a, b                                        ; $7502: $78
	ld   e, l                                        ; $7503: $5d
	sbc  [hl]                                        ; $7504: $9e
	inc  bc                                          ; $7505: $03
	ld   l, $03                                      ; $7506: $2e $03
	pop  hl                                          ; $7508: $e1
	ld   a, h                                        ; $7509: $7c
	inc  bc                                          ; $750a: $03
	ld   e, c                                        ; $750b: $59
	adc  l                                           ; $750c: $8d

Call_061_750d:
	ld   l, l                                        ; $750d: $6d
	ld   d, d                                        ; $750e: $52
	rst  $38                                         ; $750f: $ff
	dec  c                                           ; $7510: $0d
	nop                                              ; $7511: $00
	ld   a, [bc]                                     ; $7512: $0a
	inc  e                                           ; $7513: $1c
	inc  bc                                          ; $7514: $03
	nop                                              ; $7515: $00
	nop                                              ; $7516: $00
	ld   bc, $5903                                   ; $7517: $01 $03 $59
	ld   sp, hl                                      ; $751a: $f9
	db   $10                                         ; $751b: $10
	ld   b, $2f                                      ; $751c: $06 $2f
	ld   [bc], a                                     ; $751e: $02
	inc  [hl]                                        ; $751f: $34
	ld   e, d                                        ; $7520: $5a
	ld   a, d                                        ; $7521: $7a
	sbc  d                                           ; $7522: $9a
	ld   [hl], h                                     ; $7523: $74
	sbc  c                                           ; $7524: $99
	rst  $38                                         ; $7525: $ff
	rst  $38                                         ; $7526: $ff
	rst  $38                                         ; $7527: $ff
	dec  c                                           ; $7528: $0d
	inc  bc                                          ; $7529: $03
	ld   e, c                                        ; $752a: $59
	rst  $38                                         ; $752b: $ff
	rst  $38                                         ; $752c: $ff
	adc  l                                           ; $752d: $8d
	ld   l, b                                        ; $752e: $68
	rst  $38                                         ; $752f: $ff
	rst  $38                                         ; $7530: $ff
	dec  c                                           ; $7531: $0d
	ld   l, e                                        ; $7532: $6b
	ld   d, h                                        ; $7533: $54
	ld   l, [hl]                                     ; $7534: $6e
	sbc  l                                           ; $7535: $9d
	ld   a, [$000d]                                  ; $7536: $fa $0d $00
	ld   a, [bc]                                     ; $7539: $0a
	ld   b, $0e                                      ; $753a: $06 $0e
	inc  d                                           ; $753c: $14
	add  hl, de                                      ; $753d: $19
	dec  b                                           ; $753e: $05
	inc  bc                                          ; $753f: $03
	inc  b                                           ; $7540: $04
	pop  hl                                          ; $7541: $e1
	inc  b                                           ; $7542: $04
	rst  $38                                         ; $7543: $ff
	ld   h, e                                        ; $7544: $63
	and  c                                           ; $7545: $a1
	ld   e, d                                        ; $7546: $5a
	rst  $38                                         ; $7547: $ff
	rst  $38                                         ; $7548: $ff
	nop                                              ; $7549: $00
	nop                                              ; $754a: $00
	and  e                                           ; $754b: $a3
	and  l                                           ; $754c: $a5
	db   $ec                                         ; $754d: $ec
	cp   d                                           ; $754e: $ba
	ld   e, d                                        ; $754f: $5a
	rst  $38                                         ; $7550: $ff
	rst  $38                                         ; $7551: $ff
	nop                                              ; $7552: $00
	ld   bc, $f5ac                                   ; $7553: $01 $ac $f5
	bit  4, e                                        ; $7556: $cb $63
	and  c                                           ; $7558: $a1
	ld   e, d                                        ; $7559: $5a
	rst  $38                                         ; $755a: $ff
	rst  $38                                         ; $755b: $ff
	nop                                              ; $755c: $00
	ld   [bc], a                                     ; $755d: $02
	rlca                                             ; $755e: $07
	ld   hl, sp+$19                                  ; $755f: $f8 $19
	ld   [bc], a                                     ; $7561: $02
	inc  bc                                          ; $7562: $03
	ld   bc, $2000                                   ; $7563: $01 $00 $20
	nop                                              ; $7566: $00
	rlca                                             ; $7567: $07
	ld   a, e                                        ; $7568: $7b
	ld   a, [de]                                     ; $7569: $1a
	ld   [bc], a                                     ; $756a: $02
	inc  bc                                          ; $756b: $03
	ld   bc, $2001                                   ; $756c: $01 $01 $20
	nop                                              ; $756f: $00
	rlca                                             ; $7570: $07
	ld   d, $1b                                      ; $7571: $16 $1b
	ld   [bc], a                                     ; $7573: $02
	inc  bc                                          ; $7574: $03
	ld   bc, $2002                                   ; $7575: $01 $02 $20
	nop                                              ; $7578: $00
	ld   b, $b3                                      ; $7579: $06 $b3
	add  hl, de                                      ; $757b: $19
	rrca                                             ; $757c: $0f
	inc  bc                                          ; $757d: $03
	nop                                              ; $757e: $00
	ld   bc, $5494                                   ; $757f: $01 $94 $54
	sbc  d                                           ; $7582: $9a
	ld   d, d                                        ; $7583: $52
	ld   a, l                                        ; $7584: $7d
	ld   a, b                                        ; $7585: $78
	ld   d, d                                        ; $7586: $52
	halt                                             ; $7587: $76
	dec  b                                           ; $7588: $05
	pop  de                                          ; $7589: $d1
	ld   d, h                                        ; $758a: $54
	sbc  l                                           ; $758b: $9d
	sbc  a                                           ; $758c: $9f
	dec  c                                           ; $758d: $0d
	sub  b                                           ; $758e: $90
	ld   d, h                                        ; $758f: $54
	ld   l, a                                        ; $7590: $6f
	sub  l                                           ; $7591: $95
	ld   [hl], c                                     ; $7592: $71
	halt                                             ; $7593: $76
	ld   [bc], a                                     ; $7594: $02
	ld   h, l                                        ; $7595: $65
	ld   d, [hl]                                     ; $7596: $56
	ld   a, b                                        ; $7597: $78
	ld   d, d                                        ; $7598: $52
	halt                                             ; $7599: $76
	sbc  a                                           ; $759a: $9f
	dec  c                                           ; $759b: $0d
	ld   a, e                                        ; $759c: $7b
	sbc  [hl]                                        ; $759d: $9e
	ld   [$5d00], sp                                 ; $759e: $08 $00 $5d
	and  c                                           ; $75a1: $a1
	sbc  a                                           ; $75a2: $9f
	dec  c                                           ; $75a3: $0d
	nop                                              ; $75a4: $00
	ld   a, [bc]                                     ; $75a5: $0a
	ld   bc, $688d                                   ; $75a6: $01 $8d $68
	rst  $38                                         ; $75a9: $ff
	rst  $38                                         ; $75aa: $ff
	inc  bc                                          ; $75ab: $03
	ld   e, c                                        ; $75ac: $59
	rst  $38                                         ; $75ad: $ff
	rst  $38                                         ; $75ae: $ff
	inc  bc                                          ; $75af: $03
	ld   e, c                                        ; $75b0: $59
	ld   [bc], a                                     ; $75b1: $02
	ld   [hl-], a                                    ; $75b2: $32
	rst  $38                                         ; $75b3: $ff
	rst  $38                                         ; $75b4: $ff
	dec  c                                           ; $75b5: $0d
	ld   l, e                                        ; $75b6: $6b
	ld   d, h                                        ; $75b7: $54
	ld   l, [hl]                                     ; $75b8: $6e
	sbc  l                                           ; $75b9: $9d
	ld   a, [$000d]                                  ; $75ba: $fa $0d $00
	ld   a, [bc]                                     ; $75bd: $0a
	ld   b, $0e                                      ; $75be: $06 $0e
	inc  d                                           ; $75c0: $14
	rrca                                             ; $75c1: $0f
	nop                                              ; $75c2: $00
	ld   bc, $0401                                   ; $75c3: $01 $01 $04
	pop  hl                                          ; $75c6: $e1
	inc  b                                           ; $75c7: $04
	rst  $38                                         ; $75c8: $ff
	ld   h, e                                        ; $75c9: $63
	and  c                                           ; $75ca: $a1
	ld   h, [hl]                                     ; $75cb: $66
	sub  c                                           ; $75cc: $91
	ld   a, b                                        ; $75cd: $78
	ld   d, d                                        ; $75ce: $52
	ld   [hl], l                                     ; $75cf: $75
	ld   h, a                                        ; $75d0: $67
	ld   e, c                                        ; $75d1: $59
	sbc  a                                           ; $75d2: $9f
	dec  c                                           ; $75d3: $0d
	inc  b                                           ; $75d4: $04
	ld   [$9202], sp                                 ; $75d5: $08 $02 $92
	ld   a, h                                        ; $75d8: $7c
	dec  b                                           ; $75d9: $05
	jr   nz, jr_061_75e0                             ; $75da: $20 $04

	dec  d                                           ; $75dc: $15
	ld   [hl], e                                     ; $75dd: $73
	ld   e, l                                        ; $75de: $5d
	sbc  b                                           ; $75df: $98

jr_061_75e0:
	ld   a, c                                        ; $75e0: $79
	rst  $38                                         ; $75e1: $ff
	rst  $38                                         ; $75e2: $ff
	dec  c                                           ; $75e3: $0d
	nop                                              ; $75e4: $00
	ld   a, [bc]                                     ; $75e5: $0a
	inc  e                                           ; $75e6: $1c
	inc  bc                                          ; $75e7: $03
	rlca                                             ; $75e8: $07
	rlca                                             ; $75e9: $07
	ld   bc, $acd1                                   ; $75ea: $01 $d1 $ac
	ld   a, e                                        ; $75ed: $7b
	db   $fc                                         ; $75ee: $fc
	sbc  a                                           ; $75ef: $9f
	sub  h                                           ; $75f0: $94
	ld   d, h                                        ; $75f1: $54
	sbc  d                                           ; $75f2: $9a
	ld   d, d                                        ; $75f3: $52
	ld   e, d                                        ; $75f4: $5a
	inc  bc                                          ; $75f5: $03
	add  b                                           ; $75f6: $80
	sbc  c                                           ; $75f7: $99
	dec  c                                           ; $75f8: $0d
	ld   [bc], a                                     ; $75f9: $02
	sub  d                                           ; $75fa: $92
	inc  b                                           ; $75fb: $04
	ld   a, d                                        ; $75fc: $7a
	ld   a, c                                        ; $75fd: $79
	ld   e, b                                        ; $75fe: $58
	ld   [bc], a                                     ; $75ff: $02
	add  c                                           ; $7600: $81
	ld   h, e                                        ; $7601: $63
	and  c                                           ; $7602: $a1
	ld   e, d                                        ; $7603: $5a
	ld   e, l                                        ; $7604: $5d
	sbc  c                                           ; $7605: $99
	sbc  l                                           ; $7606: $9d
	ld   e, a                                        ; $7607: $5f
	dec  c                                           ; $7608: $0d
	ld   a, b                                        ; $7609: $78
	ld   d, d                                        ; $760a: $52
	ld   h, [hl]                                     ; $760b: $66
	sub  c                                           ; $760c: $91
	ld   a, b                                        ; $760d: $78
	ld   d, d                                        ; $760e: $52
	ld   a, h                                        ; $760f: $7c
	sbc  a                                           ; $7610: $9f
	dec  c                                           ; $7611: $0d
	nop                                              ; $7612: $00
	ld   a, [bc]                                     ; $7613: $0a
	inc  e                                           ; $7614: $1c
	inc  bc                                          ; $7615: $03
	nop                                              ; $7616: $00
	nop                                              ; $7617: $00
	ld   bc, $5490                                   ; $7618: $01 $90 $54
	inc  bc                                          ; $761b: $03
	ld   l, h                                        ; $761c: $6c
	ld   h, l                                        ; $761d: $65
	adc  h                                           ; $761e: $8c
	ld   h, [hl]                                     ; $761f: $66
	adc  a                                           ; $7620: $8f
	ld   a, c                                        ; $7621: $79
	ld   [bc], a                                     ; $7622: $02
	ld   h, l                                        ; $7623: $65
	ld   d, [hl]                                     ; $7624: $56
	ld   a, b                                        ; $7625: $78
	ld   h, e                                        ; $7626: $63
	ld   d, d                                        ; $7627: $52
	sbc  a                                           ; $7628: $9f
	dec  c                                           ; $7629: $0d
	inc  bc                                          ; $762a: $03
	ld   e, c                                        ; $762b: $59
	rst  $38                                         ; $762c: $ff
	rst  $38                                         ; $762d: $ff
	adc  l                                           ; $762e: $8d
	ld   l, b                                        ; $762f: $68
	rst  $38                                         ; $7630: $ff
	rst  $38                                         ; $7631: $ff
	inc  bc                                          ; $7632: $03
	ld   e, c                                        ; $7633: $59
	ld   [bc], a                                     ; $7634: $02
	ld   [hl-], a                                    ; $7635: $32
	rst  $38                                         ; $7636: $ff
	rst  $38                                         ; $7637: $ff
	dec  c                                           ; $7638: $0d
	ld   l, e                                        ; $7639: $6b
	ld   d, h                                        ; $763a: $54
	ld   l, [hl]                                     ; $763b: $6e
	sbc  l                                           ; $763c: $9d
	ld   a, [$000d]                                  ; $763d: $fa $0d $00
	ld   a, [bc]                                     ; $7640: $0a
	ld   b, $0e                                      ; $7641: $06 $0e
	inc  d                                           ; $7643: $14
	rrca                                             ; $7644: $0f
	nop                                              ; $7645: $00
	ld   bc, $a301                                   ; $7646: $01 $01 $a3
	and  l                                           ; $7649: $a5
	db   $ec                                         ; $764a: $ec
	cp   d                                           ; $764b: $ba
	ld   h, [hl]                                     ; $764c: $66
	sub  c                                           ; $764d: $91
	ld   a, b                                        ; $764e: $78
	ld   d, d                                        ; $764f: $52
	ld   [hl], l                                     ; $7650: $75
	ld   h, a                                        ; $7651: $67
	ld   e, c                                        ; $7652: $59
	ld   sp, hl                                      ; $7653: $f9
	dec  c                                           ; $7654: $0d
	cp   c                                           ; $7655: $b9
	rst  $20                                         ; $7656: $e7
	ei                                               ; $7657: $fb
	cp   d                                           ; $7658: $ba
	and  b                                           ; $7659: $a0
	ld   [bc], a                                     ; $765a: $02
	rlca                                             ; $765b: $07
	adc  l                                           ; $765c: $8d
	ld   a, b                                        ; $765d: $78
	ld   e, d                                        ; $765e: $5a
	sub  a                                           ; $765f: $97
	dec  c                                           ; $7660: $0d
	inc  b                                           ; $7661: $04
	sbc  a                                           ; $7662: $9f
	ld   d, d                                        ; $7663: $52
	ld   [hl], h                                     ; $7664: $74
	ld   [hl], h                                     ; $7665: $74
	sbc  [hl]                                        ; $7666: $9e
	ld   h, c                                        ; $7667: $61
	adc  d                                           ; $7668: $8a
	ld   h, l                                        ; $7669: $65
	ld   l, l                                        ; $766a: $6d
	halt                                             ; $766b: $76
	ld   e, c                                        ; $766c: $59
	ld   sp, hl                                      ; $766d: $f9
	dec  c                                           ; $766e: $0d
	nop                                              ; $766f: $00
	ld   a, [bc]                                     ; $7670: $0a
	inc  e                                           ; $7671: $1c
	inc  bc                                          ; $7672: $03
	inc  b                                           ; $7673: $04
	inc  b                                           ; $7674: $04
	ld   bc, $9a6b                                   ; $7675: $01 $6b $9a
	ld   l, [hl]                                     ; $7678: $6e
	ld   [hl], c                                     ; $7679: $71
	ld   l, l                                        ; $767a: $6d
	sub  a                                           ; $767b: $97
	sbc  [hl]                                        ; $767c: $9e
	dec  c                                           ; $767d: $0d
	inc  bc                                          ; $767e: $03
	ld   [hl], $7d                                   ; $767f: $36 $7d
	jp   c, $dac9                                    ; $7681: $da $c9 $da

	ret                                              ; $7684: $c9


	ld   a, c                                        ; $7685: $79
	ld   a, b                                        ; $7686: $78
	ld   [hl], c                                     ; $7687: $71
	ld   [hl], h                                     ; $7688: $74
	sbc  c                                           ; $7689: $99
	dec  c                                           ; $768a: $0d
	ld   a, l                                        ; $768b: $7d
	ld   l, b                                        ; $768c: $68
	sub  [hl]                                        ; $768d: $96
	sbc  a                                           ; $768e: $9f
	dec  c                                           ; $768f: $0d
	nop                                              ; $7690: $00
	ld   a, [bc]                                     ; $7691: $0a
	ld   bc, $9075                                   ; $7692: $01 $75 $90
	sbc  [hl]                                        ; $7695: $9e
	inc  bc                                          ; $7696: $03
	ld   [hl], $5a                                   ; $7697: $36 $5a
	ld   a, d                                        ; $7699: $7a
	sbc  d                                           ; $769a: $9a
	ld   [hl], h                                     ; $769b: $74
	ld   d, d                                        ; $769c: $52
	sbc  c                                           ; $769d: $99
	ld   a, h                                        ; $769e: $7c
	ld   a, l                                        ; $769f: $7d
	dec  c                                           ; $76a0: $0d
	ld   [hl], a                                     ; $76a1: $77
	ld   d, h                                        ; $76a2: $54
	ld   [bc], a                                     ; $76a3: $02
	sub  l                                           ; $76a4: $95
	ld   [hl], h                                     ; $76a5: $74
	sub  b                                           ; $76a6: $90
	inc  bc                                          ; $76a7: $03
	ld   l, $03                                      ; $76a8: $2e $03
	pop  hl                                          ; $76aa: $e1
	ld   a, h                                        ; $76ab: $7c
	inc  bc                                          ; $76ac: $03
	ld   e, c                                        ; $76ad: $59
	ld   l, [hl]                                     ; $76ae: $6e
	ld   h, l                                        ; $76af: $65
	rst  $38                                         ; $76b0: $ff
	rst  $38                                         ; $76b1: $ff
	dec  c                                           ; $76b2: $0d
	nop                                              ; $76b3: $00
	ld   a, [bc]                                     ; $76b4: $0a
	inc  e                                           ; $76b5: $1c
	inc  bc                                          ; $76b6: $03
	nop                                              ; $76b7: $00
	nop                                              ; $76b8: $00
	ld   bc, $5903                                   ; $76b9: $01 $03 $59
	ld   sp, hl                                      ; $76bc: $f9
	db   $10                                         ; $76bd: $10
	ld   b, $2f                                      ; $76be: $06 $2f
	ld   [bc], a                                     ; $76c0: $02
	inc  [hl]                                        ; $76c1: $34
	ld   e, d                                        ; $76c2: $5a
	ld   a, d                                        ; $76c3: $7a
	sbc  d                                           ; $76c4: $9a
	ld   [hl], h                                     ; $76c5: $74
	sbc  c                                           ; $76c6: $99
	rst  $38                                         ; $76c7: $ff
	rst  $38                                         ; $76c8: $ff
	rst  $38                                         ; $76c9: $ff
	dec  c                                           ; $76ca: $0d
	inc  bc                                          ; $76cb: $03
	ld   e, c                                        ; $76cc: $59
	rst  $38                                         ; $76cd: $ff
	rst  $38                                         ; $76ce: $ff
	adc  l                                           ; $76cf: $8d
	ld   l, b                                        ; $76d0: $68
	rst  $38                                         ; $76d1: $ff
	rst  $38                                         ; $76d2: $ff
	dec  c                                           ; $76d3: $0d
	ld   l, e                                        ; $76d4: $6b
	ld   d, h                                        ; $76d5: $54
	ld   l, [hl]                                     ; $76d6: $6e
	sbc  l                                           ; $76d7: $9d
	ld   a, [$000d]                                  ; $76d8: $fa $0d $00
	ld   a, [bc]                                     ; $76db: $0a
	ld   b, $0e                                      ; $76dc: $06 $0e
	inc  d                                           ; $76de: $14
	rrca                                             ; $76df: $0f
	nop                                              ; $76e0: $00
	ld   bc, $ac01                                   ; $76e1: $01 $01 $ac
	push af                                          ; $76e4: $f5
	bit  4, e                                        ; $76e5: $cb $63
	and  c                                           ; $76e7: $a1
	ld   e, d                                        ; $76e8: $5a
	ld   d, d                                        ; $76e9: $52
	ld   l, l                                        ; $76ea: $6d
	ld   l, b                                        ; $76eb: $68
	sub  a                                           ; $76ec: $97
	ld   [hl], l                                     ; $76ed: $75
	dec  c                                           ; $76ee: $0d
	sub  d                                           ; $76ef: $92
	ld   [hl], c                                     ; $76f0: $71
	ld   [hl], h                                     ; $76f1: $74
	sbc  c                                           ; $76f2: $99
	halt                                             ; $76f3: $76
	ld   e, c                                        ; $76f4: $59
	rst  $38                                         ; $76f5: $ff
	rst  $38                                         ; $76f6: $ff
	dec  c                                           ; $76f7: $0d
	nop                                              ; $76f8: $00
	ld   a, [bc]                                     ; $76f9: $0a
	inc  e                                           ; $76fa: $1c
	inc  bc                                          ; $76fb: $03
	inc  b                                           ; $76fc: $04
	inc  b                                           ; $76fd: $04
	dec  e                                           ; $76fe: $1d
	ld   b, b                                        ; $76ff: $40
	inc  de                                          ; $7700: $13
	inc  bc                                          ; $7701: $03
	inc  de                                          ; $7702: $13
	ld   bc, $2901                                   ; $7703: $01 $01 $29
	nop                                              ; $7706: $00
	ld   bc, $7c50                                   ; $7707: $01 $50 $7c
	ld   a, e                                        ; $770a: $7b
	db   $fc                                         ; $770b: $fc
	sbc  [hl]                                        ; $770c: $9e
	ld   [$5d00], sp                                 ; $770d: $08 $00 $5d
	and  c                                           ; $7710: $a1
	sbc  a                                           ; $7711: $9f
	dec  c                                           ; $7712: $0d
	adc  h                                           ; $7713: $8c
	ld   h, [hl]                                     ; $7714: $66
	adc  a                                           ; $7715: $8f
	ld   a, c                                        ; $7716: $79
	sub  d                                           ; $7717: $92
	ld   [hl], c                                     ; $7718: $71
	ld   [hl], h                                     ; $7719: $74
	ld   l, a                                        ; $771a: $6f
	sub  l                                           ; $771b: $95
	ld   d, h                                        ; $771c: $54
	ld   l, [hl]                                     ; $771d: $6e
	ld   d, d                                        ; $771e: $52
	sbc  a                                           ; $771f: $9f
	dec  c                                           ; $7720: $0d
	ld   a, e                                        ; $7721: $7b
	sbc  [hl]                                        ; $7722: $9e
	ld   e, b                                        ; $7723: $58
	ld   [bc], a                                     ; $7724: $02
	add  b                                           ; $7725: $80
	ld   d, d                                        ; $7726: $52
	ld   l, [hl]                                     ; $7727: $6e
	ld   e, c                                        ; $7728: $59
	sub  a                                           ; $7729: $97
	sbc  a                                           ; $772a: $9f
	dec  c                                           ; $772b: $0d
	nop                                              ; $772c: $00
	ld   a, [bc]                                     ; $772d: $0a
	inc  e                                           ; $772e: $1c
	inc  bc                                          ; $772f: $03
	nop                                              ; $7730: $00
	nop                                              ; $7731: $00
	ld   bc, $5903                                   ; $7732: $01 $03 $59
	ld   sp, hl                                      ; $7735: $f9
	db   $10                                         ; $7736: $10
	ld   b, $2f                                      ; $7737: $06 $2f
	ld   [bc], a                                     ; $7739: $02
	inc  [hl]                                        ; $773a: $34
	ld   e, d                                        ; $773b: $5a
	ld   a, d                                        ; $773c: $7a
	sbc  d                                           ; $773d: $9a
	ld   [hl], h                                     ; $773e: $74
	sbc  c                                           ; $773f: $99
	rst  $38                                         ; $7740: $ff
	rst  $38                                         ; $7741: $ff
	rst  $38                                         ; $7742: $ff
	dec  c                                           ; $7743: $0d
	inc  bc                                          ; $7744: $03
	ld   e, c                                        ; $7745: $59
	rst  $38                                         ; $7746: $ff
	rst  $38                                         ; $7747: $ff
	adc  l                                           ; $7748: $8d
	ld   l, b                                        ; $7749: $68
	rst  $38                                         ; $774a: $ff
	rst  $38                                         ; $774b: $ff
	dec  c                                           ; $774c: $0d
	ld   l, e                                        ; $774d: $6b
	ld   d, h                                        ; $774e: $54
	ld   l, [hl]                                     ; $774f: $6e
	sbc  l                                           ; $7750: $9d
	ld   a, [$000d]                                  ; $7751: $fa $0d $00
	ld   a, [bc]                                     ; $7754: $0a
	ld   b, $0e                                      ; $7755: $06 $0e
	inc  d                                           ; $7757: $14
	inc  e                                           ; $7758: $1c
	inc  bc                                          ; $7759: $03
	nop                                              ; $775a: $00
	nop                                              ; $775b: $00
	ld   bc, $0906                                   ; $775c: $01 $06 $09
	ld   [hl], d                                     ; $775f: $72
	ld   b, $19                                      ; $7760: $06 $19
	ld   [hl], e                                     ; $7762: $73
	ld   d, d                                        ; $7763: $52
	ld   l, l                                        ; $7764: $6d
	sbc  l                                           ; $7765: $9d
	ld   a, e                                        ; $7766: $7b
	sbc  a                                           ; $7767: $9f
	dec  c                                           ; $7768: $0d
	ld   d, b                                        ; $7769: $50
	halt                                             ; $776a: $76
	dec  b                                           ; $776b: $05
	ld   a, [hl+]                                    ; $776c: $2a
	ld   [hl], d                                     ; $776d: $72
	rst  $38                                         ; $776e: $ff
	rst  $38                                         ; $776f: $ff
	dec  c                                           ; $7770: $0d
	nop                                              ; $7771: $00
	ld   a, [bc]                                     ; $7772: $0a
	inc  e                                           ; $7773: $1c
	inc  bc                                          ; $7774: $03
	inc  bc                                          ; $7775: $03
	inc  bc                                          ; $7776: $03
	ld   bc, $9075                                   ; $7777: $01 $75 $90
	ld   a, e                                        ; $777a: $7b
	sbc  a                                           ; $777b: $9f
	inc  bc                                          ; $777c: $03
	adc  e                                           ; $777d: $8b
	ld   a, l                                        ; $777e: $7d
	sbc  [hl]                                        ; $777f: $9e
	inc  bc                                          ; $7780: $03
	inc  sp                                          ; $7781: $33
	ld   [hl], d                                     ; $7782: $72
	ld   a, l                                        ; $7783: $7d
	ld   [bc], a                                     ; $7784: $02
	sub  l                                           ; $7785: $95
	inc  b                                           ; $7786: $04
	jr   jr_061_77e3                                 ; $7787: $18 $5a

	dec  c                                           ; $7789: $0d
	inc  b                                           ; $778a: $04
	ld   [hl], c                                     ; $778b: $71
	ld   d, d                                        ; $778c: $52
	ld   [hl], h                                     ; $778d: $74
	ld   d, d                                        ; $778e: $52
	sbc  c                                           ; $778f: $99
	ld   a, h                                        ; $7790: $7c
	sbc  a                                           ; $7791: $9f
	dec  c                                           ; $7792: $0d
	nop                                              ; $7793: $00
	ld   a, [bc]                                     ; $7794: $0a
	ld   bc, $2002                                   ; $7795: $01 $02 $20
	ld   [hl], d                                     ; $7798: $72
	ld   a, l                                        ; $7799: $7d
	sbc  [hl]                                        ; $779a: $9e
	dec  c                                           ; $779b: $0d
	ld   bc, $ac07                                   ; $779c: $01 $07 $ac
	jp   c, $0479                                    ; $779f: $da $79 $04

	or   c                                           ; $77a2: $b1
	ld   e, e                                        ; $77a3: $5b
	inc  bc                                          ; $77a4: $03
	ld   h, l                                        ; $77a5: $65
	ld   e, d                                        ; $77a6: $5a
	sbc  c                                           ; $77a7: $99
	sub  b                                           ; $77a8: $90
	sub  [hl]                                        ; $77a9: $96
	ld   d, h                                        ; $77aa: $54
	ld   bc, $9f08                                   ; $77ab: $01 $08 $9f
	dec  c                                           ; $77ae: $0d
	inc  bc                                          ; $77af: $03
	xor  c                                           ; $77b0: $a9
	ld   a, h                                        ; $77b1: $7c
	ld   h, l                                        ; $77b2: $65
	sbc  l                                           ; $77b3: $9d
	ld   h, h                                        ; $77b4: $64
	ld   e, c                                        ; $77b5: $59
	sbc  l                                           ; $77b6: $9d
	ld   e, c                                        ; $77b7: $59
	sbc  c                                           ; $77b8: $99
	ld   e, c                                        ; $77b9: $59
	ld   h, l                                        ; $77ba: $65
	sub  a                                           ; $77bb: $97
	ld   sp, hl                                      ; $77bc: $f9
	dec  c                                           ; $77bd: $0d
	nop                                              ; $77be: $00
	ld   a, [bc]                                     ; $77bf: $0a
	ld   bc, $f5d3                                   ; $77c0: $01 $d3 $f5
	ret                                              ; $77c3: $c9


	ld   a, l                                        ; $77c4: $7d
	ld   a, e                                        ; $77c5: $7b
	sbc  [hl]                                        ; $77c6: $9e
	sub  b                                           ; $77c7: $90
	sub  [hl]                                        ; $77c8: $96
	ld   d, h                                        ; $77c9: $54
	ld   [hl], c                                     ; $77ca: $71
	ld   [hl], h                                     ; $77cb: $74
	ld   [bc], a                                     ; $77cc: $02
	sbc  l                                           ; $77cd: $9d
	ld   [hl], c                                     ; $77ce: $71
	ld   [hl], h                                     ; $77cf: $74
	dec  c                                           ; $77d0: $0d
	sub  b                                           ; $77d1: $90
	db   $d3                                         ; $77d2: $d3
	call nc, Call_061_6d8d                           ; $77d3: $d4 $8d $6d
	ld   d, d                                        ; $77d6: $52
	ld   a, b                                        ; $77d7: $78
	sub  b                                           ; $77d8: $90
	ld   a, h                                        ; $77d9: $7c
	ld   a, b                                        ; $77da: $78
	ld   a, h                                        ; $77db: $7c
	sub  [hl]                                        ; $77dc: $96
	sbc  a                                           ; $77dd: $9f
	dec  c                                           ; $77de: $0d
	nop                                              ; $77df: $00
	ld   a, [bc]                                     ; $77e0: $0a
	add  hl, de                                      ; $77e1: $19
	dec  b                                           ; $77e2: $05

jr_061_77e3:
	inc  bc                                          ; $77e3: $03
	xor  h                                           ; $77e4: $ac
	push af                                          ; $77e5: $f5
	bit  4, e                                        ; $77e6: $cb $63
	and  c                                           ; $77e8: $a1
	nop                                              ; $77e9: $00
	nop                                              ; $77ea: $00
	ld   [bc], a                                     ; $77eb: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $77ec: $cf
	dec  b                                           ; $77ed: $05
	ld   a, [de]                                     ; $77ee: $1a
	ld   h, e                                        ; $77ef: $63
	and  c                                           ; $77f0: $a1
	nop                                              ; $77f1: $00
	ld   bc, $9250                                   ; $77f2: $01 $50 $92
	adc  a                                           ; $77f5: $8f
	ld   h, e                                        ; $77f6: $63
	and  c                                           ; $77f7: $a1
	nop                                              ; $77f8: $00
	ld   [bc], a                                     ; $77f9: $02
	rlca                                             ; $77fa: $07
	and  b                                           ; $77fb: $a0
	inc  e                                           ; $77fc: $1c
	ld   [bc], a                                     ; $77fd: $02
	inc  bc                                          ; $77fe: $03
	ld   bc, $2000                                   ; $77ff: $01 $00 $20
	nop                                              ; $7802: $00
	rlca                                             ; $7803: $07
	push hl                                          ; $7804: $e5
	inc  e                                           ; $7805: $1c
	ld   [bc], a                                     ; $7806: $02
	inc  bc                                          ; $7807: $03
	ld   bc, $2001                                   ; $7808: $01 $01 $20
	nop                                              ; $780b: $00
	rlca                                             ; $780c: $07
	add  e                                           ; $780d: $83
	dec  e                                           ; $780e: $1d
	ld   [bc], a                                     ; $780f: $02
	inc  bc                                          ; $7810: $03
	ld   bc, $2002                                   ; $7811: $01 $02 $20
	nop                                              ; $7814: $00
	ld   b, $4f                                      ; $7815: $06 $4f
	inc  e                                           ; $7817: $1c
	inc  e                                           ; $7818: $1c
	inc  bc                                          ; $7819: $03
	nop                                              ; $781a: $00
	nop                                              ; $781b: $00
	ld   bc, $527d                                   ; $781c: $01 $7d $52
	sbc  [hl]                                        ; $781f: $9e
	inc  bc                                          ; $7820: $03
	ld   l, a                                        ; $7821: $6f
	ld   [bc], a                                     ; $7822: $02
	xor  c                                           ; $7823: $a9
	sub  [hl]                                        ; $7824: $96
	sbc  a                                           ; $7825: $9f
	dec  c                                           ; $7826: $0d
	inc  bc                                          ; $7827: $03
	call c, Call_061_7d56                            ; $7828: $dc $56 $7d
	ld   a, e                                        ; $782b: $7b
	sbc  [hl]                                        ; $782c: $9e
	ld   e, b                                        ; $782d: $58
	ld   l, e                                        ; $782e: $6b
	sub  a                                           ; $782f: $97
	ld   e, l                                        ; $7830: $5d
	xor  h                                           ; $7831: $ac
	push af                                          ; $7832: $f5
	res  2, [hl]                                     ; $7833: $cb $96
	sbc  a                                           ; $7835: $9f
	dec  c                                           ; $7836: $0d
	nop                                              ; $7837: $00
	ld   a, [bc]                                     ; $7838: $0a
	ld   bc, $1105                                   ; $7839: $01 $05 $11
	inc  b                                           ; $783c: $04
	pop  hl                                          ; $783d: $e1
	ld   a, l                                        ; $783e: $7d
	sbc  [hl]                                        ; $783f: $9e
	inc  bc                                          ; $7840: $03
	db   $ec                                         ; $7841: $ec
	dec  b                                           ; $7842: $05
	add  hl, de                                      ; $7843: $19
	inc  bc                                          ; $7844: $03
	ld   c, l                                        ; $7845: $4d
	ld   a, h                                        ; $7846: $7c
	xor  h                                           ; $7847: $ac
	jp   c, $0d92                                    ; $7848: $da $92 $0d

	xor  h                                           ; $784b: $ac
	push af                                          ; $784c: $f5
	bit  7, h                                        ; $784d: $cb $7c
	inc  b                                           ; $784f: $04
	sub  l                                           ; $7850: $95
	ld   [bc], a                                     ; $7851: $02
	ld   hl, $037c                                   ; $7852: $21 $7c $03
	add  h                                           ; $7855: $84
	ld   b, $0a                                      ; $7856: $06 $0a
	ld   a, c                                        ; $7858: $79
	ld   l, [hl]                                     ; $7859: $6e
	ld   e, a                                        ; $785a: $5f
	dec  c                                           ; $785b: $0d
	ld   d, b                                        ; $785c: $50
	sbc  c                                           ; $785d: $99
	ld   [hl], c                                     ; $785e: $71
	ld   [hl], h                                     ; $785f: $74
	ld   h, c                                        ; $7860: $61
	halt                                             ; $7861: $76
	sbc  a                                           ; $7862: $9f
	dec  c                                           ; $7863: $0d
	nop                                              ; $7864: $00
	ld   a, [bc]                                     ; $7865: $0a
	ld   b, $14                                      ; $7866: $06 $14
	ld   e, $0f                                      ; $7868: $1e $0f
	nop                                              ; $786a: $00
	ld   bc, $ac01                                   ; $786b: $01 $01 $ac
	push af                                          ; $786e: $f5
	bit  4, e                                        ; $786f: $cb $63
	and  c                                           ; $7871: $a1
	sbc  [hl]                                        ; $7872: $9e
	ld   h, [hl]                                     ; $7873: $66
	sub  c                                           ; $7874: $91
	ld   a, b                                        ; $7875: $78
	ld   d, d                                        ; $7876: $52
	ld   [hl], l                                     ; $7877: $75
	ld   h, a                                        ; $7878: $67
	ld   e, c                                        ; $7879: $59
	ld   sp, hl                                      ; $787a: $f9
	dec  c                                           ; $787b: $0d
	dec  b                                           ; $787c: $05
	ld   de, $e104                                   ; $787d: $11 $04 $e1
	ld   a, l                                        ; $7880: $7d
	sbc  [hl]                                        ; $7881: $9e
	db   $d3                                         ; $7882: $d3
	push af                                          ; $7883: $f5
	ret                                              ; $7884: $c9


	ld   a, c                                        ; $7885: $79
	ld   d, b                                        ; $7886: $50
	ld   [hl], c                                     ; $7887: $71
	ld   l, l                                        ; $7888: $6d
	db   $d3                                         ; $7889: $d3
	call nc, Call_061_750d                           ; $788a: $d4 $0d $75
	ld   h, a                                        ; $788d: $67
	sbc  a                                           ; $788e: $9f
	dec  c                                           ; $788f: $0d
	nop                                              ; $7890: $00
	ld   a, [bc]                                     ; $7891: $0a
	rrca                                             ; $7892: $0f
	inc  bc                                          ; $7893: $03
	inc  bc                                          ; $7894: $03
	ld   bc, $d6d6                                   ; $7895: $01 $d6 $d6
	sub  $9e                                         ; $7898: $d6 $9e
	ld   h, e                                        ; $789a: $63
	ld   h, a                                        ; $789b: $67
	ld   e, d                                        ; $789c: $5a
	ld   a, e                                        ; $789d: $7b
	sbc  a                                           ; $789e: $9f
	dec  c                                           ; $789f: $0d
	nop                                              ; $78a0: $00
	ld   a, [bc]                                     ; $78a1: $0a
	dec  b                                           ; $78a2: $05
	ld   b, b                                        ; $78a3: $40
	rst  $38                                         ; $78a4: $ff
	inc  bc                                          ; $78a5: $03
	rst  $38                                         ; $78a6: $ff
	ld   bc, $2801                                   ; $78a7: $01 $01 $28
	nop                                              ; $78aa: $00
	ld   b, $14                                      ; $78ab: $06 $14
	ld   e, $0f                                      ; $78ad: $1e $0f
	nop                                              ; $78af: $00
	ld   bc, $0201                                   ; $78b0: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $78b3: $cf
	dec  b                                           ; $78b4: $05
	ld   a, [de]                                     ; $78b5: $1a
	ld   h, e                                        ; $78b6: $63
	and  c                                           ; $78b7: $a1
	ld   h, [hl]                                     ; $78b8: $66
	sub  c                                           ; $78b9: $91
	ld   a, b                                        ; $78ba: $78
	ld   d, d                                        ; $78bb: $52
	ld   [hl], l                                     ; $78bc: $75
	ld   h, a                                        ; $78bd: $67
	ld   e, c                                        ; $78be: $59
	ld   sp, hl                                      ; $78bf: $f9
	dec  c                                           ; $78c0: $0d
	ld   d, b                                        ; $78c1: $50
	ld   l, a                                        ; $78c2: $6f
	ld   h, c                                        ; $78c3: $61
	ld   l, a                                        ; $78c4: $6f
	ld   [hl], l                                     ; $78c5: $75
	pop  de                                          ; $78c6: $d1
	or   b                                           ; $78c7: $b0
	ret  nc                                          ; $78c8: $d0

	push bc                                          ; $78c9: $c5
	and  b                                           ; $78ca: $a0
	ld   [bc], a                                     ; $78cb: $02
	ld   e, d                                        ; $78cc: $5a
	ld   h, c                                        ; $78cd: $61
	ld   h, l                                        ; $78ce: $65
	ld   [hl], h                                     ; $78cf: $74
	dec  c                                           ; $78d0: $0d
	ld   d, d                                        ; $78d1: $52
	sbc  c                                           ; $78d2: $99
	adc  l                                           ; $78d3: $8d
	ld   l, l                                        ; $78d4: $6d
	ld   d, d                                        ; $78d5: $52
	ld   l, [hl]                                     ; $78d6: $6e
	ld   h, l                                        ; $78d7: $65
	sbc  a                                           ; $78d8: $9f
	dec  c                                           ; $78d9: $0d
	nop                                              ; $78da: $00
	ld   a, [bc]                                     ; $78db: $0a
	rrca                                             ; $78dc: $0f
	inc  bc                                          ; $78dd: $03
	inc  bc                                          ; $78de: $03
	ld   bc, $5a6f                                   ; $78df: $01 $6f $5a
	ld   d, h                                        ; $78e2: $54
	sbc  l                                           ; $78e3: $9d
	sbc  a                                           ; $78e4: $9f
	ld   [bc], a                                     ; $78e5: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $78e6: $cf
	dec  b                                           ; $78e7: $05
	ld   a, [de]                                     ; $78e8: $1a
	ld   e, d                                        ; $78e9: $5a
	pop  de                                          ; $78ea: $d1
	or   b                                           ; $78eb: $b0
	ret  nc                                          ; $78ec: $d0

	push bc                                          ; $78ed: $c5
	dec  c                                           ; $78ee: $0d
	ld   h, e                                        ; $78ef: $63
	ld   l, c                                        ; $78f0: $69
	ld   l, l                                        ; $78f1: $6d
	ld   [bc], a                                     ; $78f2: $02
	xor  d                                           ; $78f3: $aa
	ld   a, l                                        ; $78f4: $7d
	sbc  [hl]                                        ; $78f5: $9e
	ld   h, a                                        ; $78f6: $67
	add  a                                           ; $78f7: $87
	ld   [hl], h                                     ; $78f8: $74
	ld   [bc], a                                     ; $78f9: $02
	xor  h                                           ; $78fa: $ac
	inc  bc                                          ; $78fb: $03
	pop  hl                                          ; $78fc: $e1
	sbc  b                                           ; $78fd: $98
	ld   a, c                                        ; $78fe: $79
	dec  c                                           ; $78ff: $0d
	inc  bc                                          ; $7900: $03
	ld   a, e                                        ; $7901: $7b
	dec  b                                           ; $7902: $05
	ld   de, $9a63                                   ; $7903: $11 $63 $9a
	sbc  c                                           ; $7906: $99
	ld   a, h                                        ; $7907: $7c
	sub  [hl]                                        ; $7908: $96
	sbc  a                                           ; $7909: $9f
	dec  c                                           ; $790a: $0d
	nop                                              ; $790b: $00
	ld   a, [bc]                                     ; $790c: $0a
	inc  e                                           ; $790d: $1c
	inc  bc                                          ; $790e: $03
	nop                                              ; $790f: $00
	nop                                              ; $7910: $00
	ld   bc, $6b58                                   ; $7911: $01 $58 $6b
	sub  a                                           ; $7914: $97
	ld   e, l                                        ; $7915: $5d
	xor  h                                           ; $7916: $ac
	push af                                          ; $7917: $f5
	res  2, [hl]                                     ; $7918: $cb $96
	sbc  a                                           ; $791a: $9f
	dec  b                                           ; $791b: $05
	ld   de, $e104                                   ; $791c: $11 $04 $e1
	ld   a, l                                        ; $791f: $7d
	sbc  [hl]                                        ; $7920: $9e
	dec  c                                           ; $7921: $0d
	inc  bc                                          ; $7922: $03
	db   $ec                                         ; $7923: $ec
	dec  b                                           ; $7924: $05
	add  hl, de                                      ; $7925: $19
	inc  bc                                          ; $7926: $03
	ld   c, l                                        ; $7927: $4d
	ld   a, h                                        ; $7928: $7c
	xor  h                                           ; $7929: $ac
	jp   c, $ac92                                    ; $792a: $da $92 $ac

	push af                                          ; $792d: $f5
	bit  7, h                                        ; $792e: $cb $7c
	inc  b                                           ; $7930: $04
	sub  l                                           ; $7931: $95
	ld   [bc], a                                     ; $7932: $02
	ld   hl, $0d7c                                   ; $7933: $21 $7c $0d
	inc  bc                                          ; $7936: $03
	add  h                                           ; $7937: $84
	ld   b, $0a                                      ; $7938: $06 $0a
	ld   l, [hl]                                     ; $793a: $6e
	ld   e, a                                        ; $793b: $5f
	db   $d3                                         ; $793c: $d3
	call nc, $505a                                   ; $793d: $d4 $5a $50
	sbc  c                                           ; $7940: $99
	ld   [hl], c                                     ; $7941: $71
	ld   [hl], h                                     ; $7942: $74
	ld   h, c                                        ; $7943: $61
	halt                                             ; $7944: $76
	sbc  a                                           ; $7945: $9f
	dec  c                                           ; $7946: $0d
	nop                                              ; $7947: $00
	ld   a, [bc]                                     ; $7948: $0a
	ld   b, $14                                      ; $7949: $06 $14
	ld   e, $0f                                      ; $794b: $1e $0f
	nop                                              ; $794d: $00
	ld   bc, $5001                                   ; $794e: $01 $01 $50
	sub  d                                           ; $7951: $92
	adc  a                                           ; $7952: $8f
	ld   h, e                                        ; $7953: $63
	and  c                                           ; $7954: $a1
	rst  $38                                         ; $7955: $ff
	rst  $38                                         ; $7956: $ff
	dec  c                                           ; $7957: $0d
	ld   l, [hl]                                     ; $7958: $6e
	ld   [hl], c                                     ; $7959: $71
	ld   l, l                                        ; $795a: $6d
	sub  a                                           ; $795b: $97
	inc  b                                           ; $795c: $04
	ret  c                                           ; $795d: $d8

	inc  b                                           ; $795e: $04
	xor  h                                           ; $795f: $ac
	ld   d, d                                        ; $7960: $52
	ld   a, h                                        ; $7961: $7c
	ld   a, c                                        ; $7962: $79
	ld   a, b                                        ; $7963: $78
	db   $fc                                         ; $7964: $fc
	dec  c                                           ; $7965: $0d
	nop                                              ; $7966: $00
	ld   a, [bc]                                     ; $7967: $0a
	inc  e                                           ; $7968: $1c
	inc  bc                                          ; $7969: $03
	ld   [bc], a                                     ; $796a: $02
	ld   [bc], a                                     ; $796b: $02
	dec  e                                           ; $796c: $1d
	ld   b, b                                        ; $796d: $40
	inc  de                                          ; $796e: $13
	inc  bc                                          ; $796f: $03
	inc  de                                          ; $7970: $13
	ld   bc, $2901                                   ; $7971: $01 $01 $29
	nop                                              ; $7974: $00
	ld   bc, $2d05                                   ; $7975: $01 $05 $2d
	inc  b                                           ; $7978: $04
	or   d                                           ; $7979: $b2
	ld   h, [hl]                                     ; $797a: $66
	sub  c                                           ; $797b: $91
	ld   a, b                                        ; $797c: $78
	ld   e, l                                        ; $797d: $5d
	ld   [hl], h                                     ; $797e: $74
	dec  b                                           ; $797f: $05
	or   h                                           ; $7980: $b4
	dec  b                                           ; $7981: $05
	ld   de, $7865                                   ; $7982: $11 $65 $78
	ld   h, e                                        ; $7985: $63
	ld   d, d                                        ; $7986: $52
	sbc  a                                           ; $7987: $9f
	dec  c                                           ; $7988: $0d
	adc  h                                           ; $7989: $8c
	ld   [hl], c                                     ; $798a: $71
	ld   l, l                                        ; $798b: $6d
	ld   e, l                                        ; $798c: $5d
	sub  b                                           ; $798d: $90
	ei                                               ; $798e: $fb
	sbc  a                                           ; $798f: $9f
	dec  c                                           ; $7990: $0d
	nop                                              ; $7991: $00
	ld   a, [bc]                                     ; $7992: $0a
	inc  e                                           ; $7993: $1c
	inc  bc                                          ; $7994: $03
	nop                                              ; $7995: $00
	nop                                              ; $7996: $00
	ld   bc, $c803                                   ; $7997: $01 $03 $c8
	ld   a, l                                        ; $799a: $7d
	xor  h                                           ; $799b: $ac
	push af                                          ; $799c: $f5
	bit  5, [hl]                                     ; $799d: $cb $6e
	halt                                             ; $799f: $76
	dec  b                                           ; $79a0: $05
	pop  de                                          ; $79a1: $d1
	ld   [hl], c                                     ; $79a2: $71
	ld   [hl], h                                     ; $79a3: $74
	sbc  c                                           ; $79a4: $99
	ld   a, h                                        ; $79a5: $7c
	sbc  a                                           ; $79a6: $9f
	dec  c                                           ; $79a7: $0d
	nop                                              ; $79a8: $00
	ld   a, [bc]                                     ; $79a9: $0a
	ld   bc, $1105                                   ; $79aa: $01 $05 $11
	inc  b                                           ; $79ad: $04
	pop  hl                                          ; $79ae: $e1
	ld   a, l                                        ; $79af: $7d
	sbc  [hl]                                        ; $79b0: $9e
	inc  bc                                          ; $79b1: $03
	db   $ec                                         ; $79b2: $ec
	dec  b                                           ; $79b3: $05
	add  hl, de                                      ; $79b4: $19
	inc  bc                                          ; $79b5: $03
	ld   c, l                                        ; $79b6: $4d
	ld   a, h                                        ; $79b7: $7c
	xor  h                                           ; $79b8: $ac
	jp   c, $0d92                                    ; $79b9: $da $92 $0d

	xor  h                                           ; $79bc: $ac
	push af                                          ; $79bd: $f5
	bit  7, h                                        ; $79be: $cb $7c
	inc  b                                           ; $79c0: $04
	sub  l                                           ; $79c1: $95
	ld   [bc], a                                     ; $79c2: $02
	ld   hl, $037c                                   ; $79c3: $21 $7c $03
	add  h                                           ; $79c6: $84
	ld   b, $0a                                      ; $79c7: $06 $0a
	ld   a, c                                        ; $79c9: $79
	ld   l, [hl]                                     ; $79ca: $6e
	ld   e, a                                        ; $79cb: $5f
	dec  c                                           ; $79cc: $0d
	db   $d3                                         ; $79cd: $d3
	call nc, $505a                                   ; $79ce: $d4 $5a $50
	sbc  c                                           ; $79d1: $99
	ld   [hl], c                                     ; $79d2: $71
	ld   [hl], h                                     ; $79d3: $74
	ld   h, c                                        ; $79d4: $61
	halt                                             ; $79d5: $76
	sbc  a                                           ; $79d6: $9f
	dec  c                                           ; $79d7: $0d
	nop                                              ; $79d8: $00
	ld   a, [bc]                                     ; $79d9: $0a
	ld   b, $14                                      ; $79da: $06 $14
	ld   e, $01                                      ; $79dc: $1e $01
	ld   h, [hl]                                     ; $79de: $66
	sub  c                                           ; $79df: $91
	sbc  [hl]                                        ; $79e0: $9e
	xor  h                                           ; $79e1: $ac
	push af                                          ; $79e2: $f5
	bit  7, h                                        ; $79e3: $cb $7c
	inc  bc                                          ; $79e5: $03
	ld   c, e                                        ; $79e6: $4b
	add  [hl]                                        ; $79e7: $86
	dec  c                                           ; $79e8: $0d
	ld   [bc], a                                     ; $79e9: $02
	ld   a, a                                        ; $79ea: $7f
	ld   [hl], c                                     ; $79eb: $71
	ld   [hl], h                                     ; $79ec: $74
	adc  l                                           ; $79ed: $8d
	adc  h                                           ; $79ee: $8c
	ld   h, l                                        ; $79ef: $65
	sub  l                                           ; $79f0: $95
	ld   d, h                                        ; $79f1: $54
	ld   e, c                                        ; $79f2: $59
	sbc  a                                           ; $79f3: $9f
	dec  c                                           ; $79f4: $0d
	nop                                              ; $79f5: $00
	ld   a, [bc]                                     ; $79f6: $0a
	dec  c                                           ; $79f7: $0d
	nop                                              ; $79f8: $00
	nop                                              ; $79f9: $00
	rrca                                             ; $79fa: $0f
	nop                                              ; $79fb: $00
	ld   bc, $5823                                   ; $79fc: $01 $23 $58
	inc  e                                           ; $79ff: $1c
	ld   b, $00                                      ; $7a00: $06 $00
	nop                                              ; $7a02: $00
	ld   bc, $5496                                   ; $7a03: $01 $96 $54
	sbc  [hl]                                        ; $7a06: $9e
	rst  JumpTable                                         ; $7a07: $df
	db   $ec                                         ; $7a08: $ec
	and  e                                           ; $7a09: $a3
	sbc  a                                           ; $7a0a: $9f
	dec  c                                           ; $7a0b: $0d
	ld   l, e                                        ; $7a0c: $6b
	sbc  d                                           ; $7a0d: $9a
	ld   a, c                                        ; $7a0e: $79
	ld   [$9f00], sp                                 ; $7a0f: $08 $00 $9f
	dec  c                                           ; $7a12: $0d
	inc  b                                           ; $7a13: $04
	ld   c, c                                        ; $7a14: $49
	ld   e, c                                        ; $7a15: $59
	ld   d, b                                        ; $7a16: $50
	ld   [hl], c                                     ; $7a17: $71
	ld   l, l                                        ; $7a18: $6d
	ld   a, h                                        ; $7a19: $7c
	ld   e, c                                        ; $7a1a: $59
	ld   sp, hl                                      ; $7a1b: $f9
	dec  c                                           ; $7a1c: $0d
	nop                                              ; $7a1d: $00
	ld   a, [bc]                                     ; $7a1e: $0a
	rrca                                             ; $7a1f: $0f
	inc  bc                                          ; $7a20: $03
	inc  b                                           ; $7a21: $04
	ld   bc, $8b03                                   ; $7a22: $01 $03 $8b
	ld   a, l                                        ; $7a25: $7d
	rst  $38                                         ; $7a26: $ff
	rst  $38                                         ; $7a27: $ff
	rst  $38                                         ; $7a28: $ff
	rst  $38                                         ; $7a29: $ff
	dec  c                                           ; $7a2a: $0d
	ld   e, c                                        ; $7a2b: $59
	ld   e, l                                        ; $7a2c: $5d
	ld   e, c                                        ; $7a2d: $59
	ld   e, l                                        ; $7a2e: $5d
	ld   h, l                                        ; $7a2f: $65
	ld   e, c                                        ; $7a30: $59
	ld   h, [hl]                                     ; $7a31: $66
	ld   e, c                                        ; $7a32: $59
	rst  $38                                         ; $7a33: $ff
	rst  $38                                         ; $7a34: $ff
	dec  c                                           ; $7a35: $0d
	halt                                             ; $7a36: $76
	sbc  [hl]                                        ; $7a37: $9e
	ld   d, d                                        ; $7a38: $52
	ld   d, h                                        ; $7a39: $54
	ld   h, c                                        ; $7a3a: $61
	halt                                             ; $7a3b: $76
	ld   a, b                                        ; $7a3c: $78
	and  c                                           ; $7a3d: $a1
	ld   l, [hl]                                     ; $7a3e: $6e
	ld   e, a                                        ; $7a3f: $5f
	ld   [hl], a                                     ; $7a40: $77
	rst  $38                                         ; $7a41: $ff
	rst  $38                                         ; $7a42: $ff
	dec  c                                           ; $7a43: $0d
	nop                                              ; $7a44: $00
	ld   a, [bc]                                     ; $7a45: $0a
	inc  e                                           ; $7a46: $1c
	ld   b, $04                                      ; $7a47: $06 $04
	inc  b                                           ; $7a49: $04
	ld   bc, $8c67                                   ; $7a4a: $01 $67 $8c
	and  c                                           ; $7a4d: $a1
	sbc  [hl]                                        ; $7a4e: $9e
	ld   h, a                                        ; $7a4f: $67
	adc  h                                           ; $7a50: $8c
	and  c                                           ; $7a51: $a1
	sbc  a                                           ; $7a52: $9f
	dec  c                                           ; $7a53: $0d
	ld   l, e                                        ; $7a54: $6b
	sbc  d                                           ; $7a55: $9a
	sbc  [hl]                                        ; $7a56: $9e
	ld   d, b                                        ; $7a57: $50
	ld   l, l                                        ; $7a58: $6d
	ld   d, d                                        ; $7a59: $52
	ld   l, [hl]                                     ; $7a5a: $6e
	sbc  a                                           ; $7a5b: $9f
	dec  c                                           ; $7a5c: $0d
	inc  bc                                          ; $7a5d: $03
	ld   l, c                                        ; $7a5e: $69
	ld   [bc], a                                     ; $7a5f: $02
	and  b                                           ; $7a60: $a0
	sbc  [hl]                                        ; $7a61: $9e
	inc  b                                           ; $7a62: $04
	dec  c                                           ; $7a63: $0d
	ld   a, h                                        ; $7a64: $7c
	inc  bc                                          ; $7a65: $03
	cp   $03                                         ; $7a66: $fe $03
	add  [hl]                                        ; $7a68: $86
	ld   e, d                                        ; $7a69: $5a
	sub  [hl]                                        ; $7a6a: $96
	ld   e, l                                        ; $7a6b: $5d
	ld   [hl], c                                     ; $7a6c: $71
	ld   [hl], h                                     ; $7a6d: $74
	ld   h, e                                        ; $7a6e: $63
	dec  c                                           ; $7a6f: $0d
	nop                                              ; $7a70: $00
	ld   a, [bc]                                     ; $7a71: $0a
	inc  e                                           ; $7a72: $1c
	ld   b, $01                                      ; $7a73: $06 $01
	ld   bc, $7201                                   ; $7a75: $01 $01 $72
	ld   d, d                                        ; $7a78: $52
	sbc  [hl]                                        ; $7a79: $9e
	xor  h                                           ; $7a7a: $ac
	jp   c, $ada0                                    ; $7a7b: $da $a0 $ad

	cp   b                                           ; $7a7e: $b8
	xor  l                                           ; $7a7f: $ad
	cp   b                                           ; $7a80: $b8
	dec  c                                           ; $7a81: $0d
	ld   a, b                                        ; $7a82: $78
	ld   e, [hl]                                     ; $7a83: $5e
	ld   [hl], c                                     ; $7a84: $71
	ld   l, a                                        ; $7a85: $6f
	sub  c                                           ; $7a86: $91
	ld   d, h                                        ; $7a87: $54
	and  c                                           ; $7a88: $a1
	ld   l, [hl]                                     ; $7a89: $6e
	sub  [hl]                                        ; $7a8a: $96
	sbc  a                                           ; $7a8b: $9f
	dec  c                                           ; $7a8c: $0d
	ld   h, d                                        ; $7a8d: $62
	adc  a                                           ; $7a8e: $8f
	and  c                                           ; $7a8f: $a1
	ld   a, b                                        ; $7a90: $78
	sbc  a                                           ; $7a91: $9f
	dec  c                                           ; $7a92: $0d
	nop                                              ; $7a93: $00
	ld   a, [bc]                                     ; $7a94: $0a
	rrca                                             ; $7a95: $0f
	inc  bc                                          ; $7a96: $03
	nop                                              ; $7a97: $00
	ld   bc, $f5ac                                   ; $7a98: $01 $ac $f5
	res  3, [hl]                                     ; $7a9b: $cb $9e
	xor  h                                           ; $7a9d: $ac
	jp   c, Jump_061_525a                            ; $7a9e: $da $5a $52

	ld   l, l                                        ; $7aa1: $6d
	adc  [hl]                                        ; $7aa2: $8e
	ld   e, c                                        ; $7aa3: $59
	sub  a                                           ; $7aa4: $97
	dec  c                                           ; $7aa5: $0d
	ld   [bc], a                                     ; $7aa6: $02
	and  l                                           ; $7aa7: $a5
	ld   [bc], a                                     ; $7aa8: $02
	xor  d                                           ; $7aa9: $aa
	ld   a, l                                        ; $7aaa: $7d
	sub  d                                           ; $7aab: $92
	adc  a                                           ; $7aac: $8f
	ld   [hl], h                                     ; $7aad: $74
	ld   l, a                                        ; $7aae: $6f
	sub  l                                           ; $7aaf: $95
	ld   d, h                                        ; $7ab0: $54
	ld   l, [hl]                                     ; $7ab1: $6e
	ld   d, d                                        ; $7ab2: $52
	ld   a, e                                        ; $7ab3: $7b
	sbc  a                                           ; $7ab4: $9f
	dec  c                                           ; $7ab5: $0d
	nop                                              ; $7ab6: $00
	ld   a, [bc]                                     ; $7ab7: $0a
	inc  e                                           ; $7ab8: $1c
	ld   b, $00                                      ; $7ab9: $06 $00
	nop                                              ; $7abb: $00
	ld   bc, $5050                                   ; $7abc: $01 $50 $50
	sbc  [hl]                                        ; $7abf: $9e
	sbc  l                                           ; $7ac0: $9d
	ld   e, c                                        ; $7ac1: $59
	ld   [hl], c                                     ; $7ac2: $71
	ld   l, l                                        ; $7ac3: $6d
	sub  [hl]                                        ; $7ac4: $96
	sbc  a                                           ; $7ac5: $9f
	dec  c                                           ; $7ac6: $0d
	ld   h, a                                        ; $7ac7: $67
	adc  h                                           ; $7ac8: $8c
	ld   a, b                                        ; $7ac9: $78
	ld   e, c                                        ; $7aca: $59
	ld   [hl], c                                     ; $7acb: $71
	ld   l, l                                        ; $7acc: $6d
	ld   a, b                                        ; $7acd: $78
	sbc  a                                           ; $7ace: $9f
	dec  c                                           ; $7acf: $0d
	nop                                              ; $7ad0: $00
	ld   a, [bc]                                     ; $7ad1: $0a
	dec  c                                           ; $7ad2: $0d
	nop                                              ; $7ad3: $00
	nop                                              ; $7ad4: $00
	rrca                                             ; $7ad5: $0f
	nop                                              ; $7ad6: $00
	ld   bc, $020c                                   ; $7ad7: $01 $0c $02
	rlca                                             ; $7ada: $07
	ld   b, b                                        ; $7adb: $40
	rra                                              ; $7adc: $1f
	inc  bc                                          ; $7add: $03
	rst  $38                                         ; $7ade: $ff
	ld   bc, $2001                                   ; $7adf: $01 $01 $20
	nop                                              ; $7ae2: $00
	ld   c, $48                                      ; $7ae3: $0e $48
	inc  e                                           ; $7ae5: $1c
	inc  bc                                          ; $7ae6: $03
	ld   [bc], a                                     ; $7ae7: $02
	ld   [bc], a                                     ; $7ae8: $02
	ld   bc, $7190                                   ; $7ae9: $01 $90 $71
	halt                                             ; $7aec: $76
	sub  [hl]                                        ; $7aed: $96
	ld   e, l                                        ; $7aee: $5d
	ld   [bc], a                                     ; $7aef: $02
	ld   h, l                                        ; $7af0: $65
	ld   d, [hl]                                     ; $7af1: $56
	ld   [hl], h                                     ; $7af2: $74
	sbc  a                                           ; $7af3: $9f
	dec  c                                           ; $7af4: $0d
	ld   h, [hl]                                     ; $7af5: $66
	sub  c                                           ; $7af6: $91
	sbc  [hl]                                        ; $7af7: $9e
	inc  bc                                          ; $7af8: $03
	ld   l, b                                        ; $7af9: $68
	ld   a, h                                        ; $7afa: $7c
	ld   b, $08                                      ; $7afb: $06 $08
	sbc  [hl]                                        ; $7afd: $9e
	ld   d, d                                        ; $7afe: $52
	ld   e, l                                        ; $7aff: $5d
	sbc  l                                           ; $7b00: $9d
	sub  [hl]                                        ; $7b01: $96
	sbc  a                                           ; $7b02: $9f
	dec  c                                           ; $7b03: $0d
	nop                                              ; $7b04: $00
	ld   a, [bc]                                     ; $7b05: $0a
	ld   b, $7c                                      ; $7b06: $06 $7c
	rra                                              ; $7b08: $1f
	ld   c, $48                                      ; $7b09: $0e $48
	inc  e                                           ; $7b0b: $1c
	inc  bc                                          ; $7b0c: $03
	inc  bc                                          ; $7b0d: $03
	inc  bc                                          ; $7b0e: $03
	dec  e                                           ; $7b0f: $1d
	ld   b, b                                        ; $7b10: $40
	inc  de                                          ; $7b11: $13
	inc  bc                                          ; $7b12: $03
	inc  de                                          ; $7b13: $13
	ld   bc, $2803                                   ; $7b14: $01 $03 $28
	nop                                              ; $7b17: $00
	ld   bc, $0008                                   ; $7b18: $01 $08 $00
	ld   e, l                                        ; $7b1b: $5d
	and  c                                           ; $7b1c: $a1
	sbc  a                                           ; $7b1d: $9f
	ld   [bc], a                                     ; $7b1e: $02
	sub  l                                           ; $7b1f: $95
	inc  bc                                          ; $7b20: $03
	jp   c, Jump_061_6d65                            ; $7b21: $da $65 $6d

	sbc  l                                           ; $7b24: $9d
	sbc  a                                           ; $7b25: $9f
	dec  c                                           ; $7b26: $0d
	cp   e                                           ; $7b27: $bb
	pop  de                                          ; $7b28: $d1
	db   $ec                                         ; $7b29: $ec
	inc  bc                                          ; $7b2a: $03
	ld   c, d                                        ; $7b2b: $4a
	ld   [bc], a                                     ; $7b2c: $02
	or   h                                           ; $7b2d: $b4
	ld   h, [hl]                                     ; $7b2e: $66
	sub  c                                           ; $7b2f: $91
	ld   a, b                                        ; $7b30: $78
	ld   d, d                                        ; $7b31: $52
	sbc  a                                           ; $7b32: $9f
	dec  c                                           ; $7b33: $0d
	ld   h, [hl]                                     ; $7b34: $66
	sub  c                                           ; $7b35: $91
	sbc  [hl]                                        ; $7b36: $9e
	inc  bc                                          ; $7b37: $03
	ld   l, b                                        ; $7b38: $68
	ld   a, h                                        ; $7b39: $7c
	ld   b, $08                                      ; $7b3a: $06 $08
	sbc  [hl]                                        ; $7b3c: $9e
	ld   d, d                                        ; $7b3d: $52
	ld   e, l                                        ; $7b3e: $5d
	sbc  l                                           ; $7b3f: $9d
	sub  [hl]                                        ; $7b40: $96
	sbc  a                                           ; $7b41: $9f
	dec  c                                           ; $7b42: $0d
	nop                                              ; $7b43: $00
	ld   a, [bc]                                     ; $7b44: $0a
	inc  e                                           ; $7b45: $1c
	inc  bc                                          ; $7b46: $03
	nop                                              ; $7b47: $00
	nop                                              ; $7b48: $00
	ld   bc, $0701                                   ; $7b49: $01 $01 $07
	ld   [bc], a                                     ; $7b4c: $02
	or   [hl]                                        ; $7b4d: $b6
	inc  b                                           ; $7b4e: $04
	ld   a, a                                        ; $7b4f: $7f
	add  h                                           ; $7b50: $84
	inc  b                                           ; $7b51: $04
	xor  h                                           ; $7b52: $ac
	ld   d, d                                        ; $7b53: $52
	inc  b                                           ; $7b54: $04
	ld   h, [hl]                                     ; $7b55: $66
	ld   bc, $9f08                                   ; $7b56: $01 $08 $9f
	dec  c                                           ; $7b59: $0d
	nop                                              ; $7b5a: $00
	dec  b                                           ; $7b5b: $05
	ld   b, b                                        ; $7b5c: $40
	rst  $38                                         ; $7b5d: $ff
	ld   bc, $0000                                   ; $7b5e: $01 $00 $00
	ld   bc, $a903                                   ; $7b61: $01 $03 $a9
	ld   a, h                                        ; $7b64: $7c
	ld   h, l                                        ; $7b65: $65
	sbc  l                                           ; $7b66: $9d
	ld   h, h                                        ; $7b67: $64
	ld   e, c                                        ; $7b68: $59
	sbc  l                                           ; $7b69: $9d
	ld   e, c                                        ; $7b6a: $59
	sbc  c                                           ; $7b6b: $99
	ld   e, c                                        ; $7b6c: $59
	ld   h, l                                        ; $7b6d: $65
	sub  a                                           ; $7b6e: $97
	ld   sp, hl                                      ; $7b6f: $f9
	dec  c                                           ; $7b70: $0d
	ld   h, c                                        ; $7b71: $61
	sbc  d                                           ; $7b72: $9a
	ld   a, l                                        ; $7b73: $7d
	db   $d3                                         ; $7b74: $d3
	push af                                          ; $7b75: $f5
	ret                                              ; $7b76: $c9


	ld   a, b                                        ; $7b77: $78
	ld   h, l                                        ; $7b78: $65
	sub  [hl]                                        ; $7b79: $96
	sbc  a                                           ; $7b7a: $9f
	dec  c                                           ; $7b7b: $0d
	nop                                              ; $7b7c: $00
	ld   a, [bc]                                     ; $7b7d: $0a
	add  hl, de                                      ; $7b7e: $19
	dec  b                                           ; $7b7f: $05
	inc  bc                                          ; $7b80: $03
	and  e                                           ; $7b81: $a3
	and  l                                           ; $7b82: $a5
	db   $ec                                         ; $7b83: $ec
	cp   d                                           ; $7b84: $ba
	nop                                              ; $7b85: $00
	nop                                              ; $7b86: $00
	ld   [bc], a                                     ; $7b87: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b88: $cf
	dec  b                                           ; $7b89: $05
	ld   a, [de]                                     ; $7b8a: $1a
	ld   h, e                                        ; $7b8b: $63
	and  c                                           ; $7b8c: $a1
	nop                                              ; $7b8d: $00
	ld   bc, $5d63                                   ; $7b8e: $01 $63 $5d
	sub  a                                           ; $7b91: $97
	ld   h, e                                        ; $7b92: $63
	and  c                                           ; $7b93: $a1
	nop                                              ; $7b94: $00
	ld   [bc], a                                     ; $7b95: $02
	rlca                                             ; $7b96: $07
	jr   c, @+$22                                    ; $7b97: $38 $20

	ld   [bc], a                                     ; $7b99: $02
	inc  bc                                          ; $7b9a: $03
	ld   bc, $2000                                   ; $7b9b: $01 $00 $20
	nop                                              ; $7b9e: $00
	rlca                                             ; $7b9f: $07
	add  [hl]                                        ; $7ba0: $86
	jr   nz, @+$04                                   ; $7ba1: $20 $02

	inc  bc                                          ; $7ba3: $03
	ld   bc, $2001                                   ; $7ba4: $01 $01 $20
	nop                                              ; $7ba7: $00
	rlca                                             ; $7ba8: $07
	inc  h                                           ; $7ba9: $24
	ld   hl, $0302                                   ; $7baa: $21 $02 $03
	ld   bc, $2002                                   ; $7bad: $01 $02 $20
	nop                                              ; $7bb0: $00
	ld   b, $eb                                      ; $7bb1: $06 $eb
	rra                                              ; $7bb3: $1f
	inc  e                                           ; $7bb4: $1c
	inc  bc                                          ; $7bb5: $03
	nop                                              ; $7bb6: $00
	nop                                              ; $7bb7: $00
	ld   bc, $527d                                   ; $7bb8: $01 $7d $52
	sbc  [hl]                                        ; $7bbb: $9e
	inc  bc                                          ; $7bbc: $03
	ld   l, a                                        ; $7bbd: $6f
	ld   [bc], a                                     ; $7bbe: $02
	xor  c                                           ; $7bbf: $a9
	sub  [hl]                                        ; $7bc0: $96
	sbc  a                                           ; $7bc1: $9f
	dec  c                                           ; $7bc2: $0d
	inc  bc                                          ; $7bc3: $03
	call c, Call_061_7d56                            ; $7bc4: $dc $56 $7d
	ld   a, e                                        ; $7bc7: $7b
	rst  $38                                         ; $7bc8: $ff
	rst  $38                                         ; $7bc9: $ff
	dec  c                                           ; $7bca: $0d
	ld   e, b                                        ; $7bcb: $58
	ld   l, e                                        ; $7bcc: $6b
	sub  a                                           ; $7bcd: $97
	ld   e, l                                        ; $7bce: $5d
	and  e                                           ; $7bcf: $a3
	and  l                                           ; $7bd0: $a5
	db   $ec                                         ; $7bd1: $ec
	cp   d                                           ; $7bd2: $ba
	sub  [hl]                                        ; $7bd3: $96
	sbc  a                                           ; $7bd4: $9f
	dec  c                                           ; $7bd5: $0d
	nop                                              ; $7bd6: $00
	ld   a, [bc]                                     ; $7bd7: $0a
	inc  e                                           ; $7bd8: $1c
	inc  bc                                          ; $7bd9: $03
	inc  bc                                          ; $7bda: $03
	inc  bc                                          ; $7bdb: $03
	ld   bc, $1105                                   ; $7bdc: $01 $05 $11
	inc  b                                           ; $7bdf: $04
	pop  hl                                          ; $7be0: $e1
	ld   a, l                                        ; $7be1: $7d
	sbc  [hl]                                        ; $7be2: $9e
	ld   [bc], a                                     ; $7be3: $02
	or   [hl]                                        ; $7be4: $b6
	inc  b                                           ; $7be5: $04
	ld   a, a                                        ; $7be6: $7f
	add  h                                           ; $7be7: $84
	ld   [hl], c                                     ; $7be8: $71
	ld   [hl], h                                     ; $7be9: $74
	halt                                             ; $7bea: $76
	ld   h, c                                        ; $7beb: $61
	ld   a, e                                        ; $7bec: $7b
	sbc  a                                           ; $7bed: $9f
	dec  c                                           ; $7bee: $0d
	inc  b                                           ; $7bef: $04
	ld   b, d                                        ; $7bf0: $42
	adc  d                                           ; $7bf1: $8a
	ld   e, a                                        ; $7bf2: $5f
	ld   [hl], h                                     ; $7bf3: $74
	sbc  c                                           ; $7bf4: $99
	ld   a, h                                        ; $7bf5: $7c
	sub  [hl]                                        ; $7bf6: $96
	ld   e, e                                        ; $7bf7: $5b
	ld   [hl], c                                     ; $7bf8: $71
	halt                                             ; $7bf9: $76
	sbc  a                                           ; $7bfa: $9f
	dec  c                                           ; $7bfb: $0d
	nop                                              ; $7bfc: $00
	ld   a, [bc]                                     ; $7bfd: $0a
	ld   b, $c1                                      ; $7bfe: $06 $c1
	ld   hl, $000f                                   ; $7c00: $21 $0f $00
	ld   bc, $a301                                   ; $7c03: $01 $01 $a3
	and  l                                           ; $7c06: $a5
	db   $ec                                         ; $7c07: $ec
	cp   d                                           ; $7c08: $ba
	sbc  [hl]                                        ; $7c09: $9e
	ld   h, [hl]                                     ; $7c0a: $66
	sub  c                                           ; $7c0b: $91
	ld   a, b                                        ; $7c0c: $78

Jump_061_7c0d:
	ld   d, d                                        ; $7c0d: $52
	ld   [hl], l                                     ; $7c0e: $75
	ld   h, a                                        ; $7c0f: $67
	ld   e, c                                        ; $7c10: $59
	ld   sp, hl                                      ; $7c11: $f9
	dec  c                                           ; $7c12: $0d
	dec  b                                           ; $7c13: $05
	ld   de, $e104                                   ; $7c14: $11 $04 $e1
	ld   a, l                                        ; $7c17: $7d
	sbc  [hl]                                        ; $7c18: $9e
	ld   [bc], a                                     ; $7c19: $02
	or   [hl]                                        ; $7c1a: $b6
	inc  b                                           ; $7c1b: $04
	ld   a, a                                        ; $7c1c: $7f
	add  h                                           ; $7c1d: $84
	ld   [hl], c                                     ; $7c1e: $71
	ld   [hl], h                                     ; $7c1f: $74
	halt                                             ; $7c20: $76
	ld   h, c                                        ; $7c21: $61
	ld   [hl], l                                     ; $7c22: $75
	ld   h, a                                        ; $7c23: $67
	sbc  a                                           ; $7c24: $9f
	dec  c                                           ; $7c25: $0d
	inc  b                                           ; $7c26: $04
	ld   b, d                                        ; $7c27: $42
	adc  d                                           ; $7c28: $8a
	ld   e, a                                        ; $7c29: $5f
	ld   [hl], h                                     ; $7c2a: $74
	sbc  c                                           ; $7c2b: $99
	ld   a, h                                        ; $7c2c: $7c
	ld   e, c                                        ; $7c2d: $59
	ld   a, b                                        ; $7c2e: $78
	ld   sp, hl                                      ; $7c2f: $f9
	dec  c                                           ; $7c30: $0d
	nop                                              ; $7c31: $00
	ld   a, [bc]                                     ; $7c32: $0a
	rrca                                             ; $7c33: $0f
	inc  bc                                          ; $7c34: $03
	inc  bc                                          ; $7c35: $03
	ld   bc, $d6d6                                   ; $7c36: $01 $d6 $d6
	sub  $9e                                         ; $7c39: $d6 $9e
	ld   h, e                                        ; $7c3b: $63
	ld   h, a                                        ; $7c3c: $67
	ld   e, d                                        ; $7c3d: $5a
	ld   a, e                                        ; $7c3e: $7b
	sbc  a                                           ; $7c3f: $9f
	dec  c                                           ; $7c40: $0d
	nop                                              ; $7c41: $00
	ld   a, [bc]                                     ; $7c42: $0a
	dec  b                                           ; $7c43: $05
	ld   b, b                                        ; $7c44: $40
	rst  $38                                         ; $7c45: $ff
	inc  bc                                          ; $7c46: $03
	rst  $38                                         ; $7c47: $ff
	ld   bc, $2801                                   ; $7c48: $01 $01 $28
	nop                                              ; $7c4b: $00
	ld   b, $c1                                      ; $7c4c: $06 $c1
	ld   hl, $000f                                   ; $7c4e: $21 $0f $00
	ld   bc, $0201                                   ; $7c51: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c54: $cf
	dec  b                                           ; $7c55: $05
	ld   a, [de]                                     ; $7c56: $1a
	ld   h, e                                        ; $7c57: $63
	and  c                                           ; $7c58: $a1
	ld   h, [hl]                                     ; $7c59: $66
	sub  c                                           ; $7c5a: $91
	ld   a, b                                        ; $7c5b: $78
	ld   d, d                                        ; $7c5c: $52
	ld   [hl], l                                     ; $7c5d: $75
	ld   h, a                                        ; $7c5e: $67
	ld   e, c                                        ; $7c5f: $59
	ld   sp, hl                                      ; $7c60: $f9
	dec  c                                           ; $7c61: $0d
	ld   bc, $0407                                   ; $7c62: $01 $07 $04
	ld   e, h                                        ; $7c65: $5c
	inc  bc                                          ; $7c66: $03
	ccf                                              ; $7c67: $3f
	dec  b                                           ; $7c68: $05
	ld   a, [bc]                                     ; $7c69: $0a
	ld   e, l                                        ; $7c6a: $5d
	and  c                                           ; $7c6b: $a1
	ld   bc, $7508                                   ; $7c6c: $01 $08 $75
	sub  b                                           ; $7c6f: $90
	dec  c                                           ; $7c70: $0d
	inc  bc                                          ; $7c71: $03
	xor  h                                           ; $7c72: $ac
	ld   [hl], c                                     ; $7c73: $71
	ld   l, l                                        ; $7c74: $6d
	and  c                                           ; $7c75: $a1
	ld   h, [hl]                                     ; $7c76: $66
	sub  c                                           ; $7c77: $91
	ld   a, b                                        ; $7c78: $78
	ld   d, d                                        ; $7c79: $52
	ld   [hl], l                                     ; $7c7a: $75
	ld   h, a                                        ; $7c7b: $67
	ld   e, c                                        ; $7c7c: $59
	ld   sp, hl                                      ; $7c7d: $f9
	dec  c                                           ; $7c7e: $0d
	nop                                              ; $7c7f: $00
	ld   a, [bc]                                     ; $7c80: $0a
	rrca                                             ; $7c81: $0f
	inc  bc                                          ; $7c82: $03
	inc  bc                                          ; $7c83: $03
	ld   bc, $9a6b                                   ; $7c84: $01 $6b $9a
	ld   l, [hl]                                     ; $7c87: $6e
	ld   [hl], c                                     ; $7c88: $71
	ld   l, l                                        ; $7c89: $6d
	sub  a                                           ; $7c8a: $97
	sbc  [hl]                                        ; $7c8b: $9e
	inc  b                                           ; $7c8c: $04
	ld   c, $04                                      ; $7c8d: $0e $04
	ld   e, [hl]                                     ; $7c8f: $5e
	inc  b                                           ; $7c90: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c91: $cf
	sub  [hl]                                        ; $7c92: $96
	sbc  a                                           ; $7c93: $9f
	dec  c                                           ; $7c94: $0d
	ld   [bc], a                                     ; $7c95: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c96: $cf
	dec  b                                           ; $7c97: $05
	ld   a, [de]                                     ; $7c98: $1a
	ld   a, b                                        ; $7c99: $78
	sub  a                                           ; $7c9a: $97
	sbc  [hl]                                        ; $7c9b: $9e
	ld   h, a                                        ; $7c9c: $67
	ld   e, [hl]                                     ; $7c9d: $5e
	adc  l                                           ; $7c9e: $8d
	and  c                                           ; $7c9f: $a1
	ld   a, b                                        ; $7ca0: $78
	ld   a, c                                        ; $7ca1: $79
	inc  bc                                          ; $7ca2: $03
	sub  h                                           ; $7ca3: $94
	inc  b                                           ; $7ca4: $04
	jp   c, Jump_061_650d                            ; $7ca5: $da $0d $65

	ld   a, c                                        ; $7ca8: $79
	ld   e, l                                        ; $7ca9: $5d
	sbc  c                                           ; $7caa: $99
	sbc  l                                           ; $7cab: $9d
	sub  [hl]                                        ; $7cac: $96
	sbc  a                                           ; $7cad: $9f
	dec  c                                           ; $7cae: $0d
	nop                                              ; $7caf: $00
	ld   a, [bc]                                     ; $7cb0: $0a
	inc  e                                           ; $7cb1: $1c
	inc  bc                                          ; $7cb2: $03
	nop                                              ; $7cb3: $00
	nop                                              ; $7cb4: $00
	ld   bc, $4a03                                   ; $7cb5: $01 $03 $4a
	ld   [bc], a                                     ; $7cb8: $02
	or   h                                           ; $7cb9: $b4
	ld   a, l                                        ; $7cba: $7d
	sbc  [hl]                                        ; $7cbb: $9e
	ld   e, b                                        ; $7cbc: $58
	ld   l, e                                        ; $7cbd: $6b
	sub  a                                           ; $7cbe: $97
	ld   e, l                                        ; $7cbf: $5d
	and  e                                           ; $7cc0: $a3
	and  l                                           ; $7cc1: $a5
	db   $ec                                         ; $7cc2: $ec
	cp   d                                           ; $7cc3: $ba
	sub  [hl]                                        ; $7cc4: $96
	sbc  a                                           ; $7cc5: $9f
	dec  c                                           ; $7cc6: $0d
	inc  b                                           ; $7cc7: $04
	rst  $28                                         ; $7cc8: $ef
	inc  b                                           ; $7cc9: $04
	dec  bc                                          ; $7cca: $0b
	ld   a, c                                        ; $7ccb: $79
	inc  b                                           ; $7ccc: $04
	ld   b, d                                        ; $7ccd: $42
	adc  d                                           ; $7cce: $8a
	ld   e, a                                        ; $7ccf: $5f
	ld   [hl], h                                     ; $7cd0: $74
	sbc  [hl]                                        ; $7cd1: $9e
	cp   b                                           ; $7cd2: $b8
	ei                                               ; $7cd3: $fb
	push bc                                          ; $7cd4: $c5
	ld   [hl], l                                     ; $7cd5: $75
	sub  b                                           ; $7cd6: $90
	dec  c                                           ; $7cd7: $0d
	ld   e, c                                        ; $7cd8: $59
	add  h                                           ; $7cd9: $84
	ld   [hl], c                                     ; $7cda: $71
	ld   [hl], h                                     ; $7cdb: $74
	inc  b                                           ; $7cdc: $04
	ld   a, a                                        ; $7cdd: $7f
	and  c                                           ; $7cde: $a1
	ld   [hl], l                                     ; $7cdf: $75
	sbc  c                                           ; $7ce0: $99
	and  c                                           ; $7ce1: $a1
	ld   h, [hl]                                     ; $7ce2: $66
	sub  c                                           ; $7ce3: $91
	ld   a, b                                        ; $7ce4: $78
	ld   d, d                                        ; $7ce5: $52
	sbc  a                                           ; $7ce6: $9f
	dec  c                                           ; $7ce7: $0d
	nop                                              ; $7ce8: $00
	ld   a, [bc]                                     ; $7ce9: $0a
	ld   b, $c1                                      ; $7cea: $06 $c1
	ld   hl, $000f                                   ; $7cec: $21 $0f $00
	ld   bc, $6301                                   ; $7cef: $01 $01 $63
	ld   e, l                                        ; $7cf2: $5d
	sub  a                                           ; $7cf3: $97
	ld   h, e                                        ; $7cf4: $63
	and  c                                           ; $7cf5: $a1
	sbc  [hl]                                        ; $7cf6: $9e
	ld   e, c                                        ; $7cf7: $59
	ld   a, b                                        ; $7cf8: $78
	rst  $38                                         ; $7cf9: $ff
	rst  $38                                         ; $7cfa: $ff
	dec  c                                           ; $7cfb: $0d
	ld   d, h                                        ; $7cfc: $54
	ld   e, c                                        ; $7cfd: $59
	sbc  d                                           ; $7cfe: $9a
	ld   [hl], h                                     ; $7cff: $74
	inc  b                                           ; $7d00: $04
	ld   a, a                                        ; $7d01: $7f
	add  c                                           ; $7d02: $81
	ld   l, e                                        ; $7d03: $6b
	ld   d, h                                        ; $7d04: $54
	ld   a, b                                        ; $7d05: $78
	ld   a, h                                        ; $7d06: $7c
	sbc  [hl]                                        ; $7d07: $9e
	ld   h, e                                        ; $7d08: $63
	ld   e, l                                        ; $7d09: $5d
	sub  a                                           ; $7d0a: $97
	dec  c                                           ; $7d0b: $0d
	ld   h, e                                        ; $7d0c: $63
	and  c                                           ; $7d0d: $a1
	ld   e, [hl]                                     ; $7d0e: $5e
	sub  a                                           ; $7d0f: $97
	ld   d, d                                        ; $7d10: $52
	ld   l, [hl]                                     ; $7d11: $6e
	ld   e, c                                        ; $7d12: $59
	sub  a                                           ; $7d13: $97
	sbc  a                                           ; $7d14: $9f
	dec  c                                           ; $7d15: $0d
	nop                                              ; $7d16: $00
	ld   a, [bc]                                     ; $7d17: $0a
	inc  e                                           ; $7d18: $1c
	inc  bc                                          ; $7d19: $03
	ld   [bc], a                                     ; $7d1a: $02
	ld   [bc], a                                     ; $7d1b: $02
	dec  e                                           ; $7d1c: $1d
	ld   b, b                                        ; $7d1d: $40
	inc  de                                          ; $7d1e: $13
	inc  bc                                          ; $7d1f: $03
	inc  de                                          ; $7d20: $13
	ld   bc, $2901                                   ; $7d21: $01 $01 $29
	nop                                              ; $7d24: $00
	ld   bc, $7850                                   ; $7d25: $01 $50 $78
	ld   l, l                                        ; $7d28: $6d
	sbc  [hl]                                        ; $7d29: $9e
	ld   h, e                                        ; $7d2a: $63
	ld   e, l                                        ; $7d2b: $5d
	sub  a                                           ; $7d2c: $97
	ld   a, h                                        ; $7d2d: $7c
	ld   h, c                                        ; $7d2e: $61
	halt                                             ; $7d2f: $76
	dec  c                                           ; $7d30: $0d
	ld   [hl], a                                     ; $7d31: $77
	and  c                                           ; $7d32: $a1
	ld   a, b                                        ; $7d33: $78
	inc  bc                                          ; $7d34: $03
	add  [hl]                                        ; $7d35: $86
	ld   l, [hl]                                     ; $7d36: $6e
	halt                                             ; $7d37: $76
	dec  b                                           ; $7d38: $05
	pop  de                                          ; $7d39: $d1
	ld   [hl], c                                     ; $7d3a: $71
	ld   [hl], h                                     ; $7d3b: $74
	sbc  c                                           ; $7d3c: $99
	ld   a, h                                        ; $7d3d: $7c
	ld   sp, hl                                      ; $7d3e: $f9
	dec  c                                           ; $7d3f: $0d
	adc  h                                           ; $7d40: $8c
	ld   h, [hl]                                     ; $7d41: $66
	adc  a                                           ; $7d42: $8f
	ld   a, c                                        ; $7d43: $79
	ld   [bc], a                                     ; $7d44: $02
	ld   h, l                                        ; $7d45: $65
	ld   d, [hl]                                     ; $7d46: $56
	ld   a, b                                        ; $7d47: $78
	ld   h, e                                        ; $7d48: $63
	ld   d, d                                        ; $7d49: $52
	sbc  a                                           ; $7d4a: $9f
	dec  c                                           ; $7d4b: $0d
	nop                                              ; $7d4c: $00
	ld   a, [bc]                                     ; $7d4d: $0a
	inc  e                                           ; $7d4e: $1c
	inc  bc                                          ; $7d4f: $03
	nop                                              ; $7d50: $00
	nop                                              ; $7d51: $00
	ld   bc, $4a03                                   ; $7d52: $01 $03 $4a
	ld   [bc], a                                     ; $7d55: $02

Call_061_7d56:
	or   h                                           ; $7d56: $b4
	ld   a, l                                        ; $7d57: $7d
	sbc  [hl]                                        ; $7d58: $9e
	ld   e, b                                        ; $7d59: $58
	ld   l, e                                        ; $7d5a: $6b
	sub  a                                           ; $7d5b: $97
	ld   e, l                                        ; $7d5c: $5d
	and  e                                           ; $7d5d: $a3
	and  l                                           ; $7d5e: $a5
	db   $ec                                         ; $7d5f: $ec
	cp   d                                           ; $7d60: $ba
	sub  [hl]                                        ; $7d61: $96
	sbc  a                                           ; $7d62: $9f
	dec  c                                           ; $7d63: $0d
	inc  b                                           ; $7d64: $04
	rst  $28                                         ; $7d65: $ef
	inc  b                                           ; $7d66: $04
	dec  bc                                          ; $7d67: $0b
	ld   a, c                                        ; $7d68: $79
	inc  b                                           ; $7d69: $04
	ld   b, d                                        ; $7d6a: $42
	adc  d                                           ; $7d6b: $8a
	ld   e, a                                        ; $7d6c: $5f
	ld   [hl], h                                     ; $7d6d: $74
	sbc  [hl]                                        ; $7d6e: $9e
	cp   b                                           ; $7d6f: $b8
	ei                                               ; $7d70: $fb
	push bc                                          ; $7d71: $c5
	ld   [hl], l                                     ; $7d72: $75
	sub  b                                           ; $7d73: $90
	dec  c                                           ; $7d74: $0d
	ld   e, c                                        ; $7d75: $59
	add  h                                           ; $7d76: $84
	ld   [hl], c                                     ; $7d77: $71
	ld   [hl], h                                     ; $7d78: $74
	inc  b                                           ; $7d79: $04
	ld   a, a                                        ; $7d7a: $7f
	and  c                                           ; $7d7b: $a1
	ld   [hl], l                                     ; $7d7c: $75
	sbc  c                                           ; $7d7d: $99
	and  c                                           ; $7d7e: $a1
	ld   h, [hl]                                     ; $7d7f: $66
	sub  c                                           ; $7d80: $91
	ld   a, b                                        ; $7d81: $78
	ld   d, d                                        ; $7d82: $52
	sbc  a                                           ; $7d83: $9f
	dec  c                                           ; $7d84: $0d
	nop                                              ; $7d85: $00
	ld   a, [bc]                                     ; $7d86: $0a
	ld   b, $c1                                      ; $7d87: $06 $c1
	ld   hl, $6601                                   ; $7d89: $21 $01 $66
	sub  c                                           ; $7d8c: $91
	sbc  [hl]                                        ; $7d8d: $9e
	and  e                                           ; $7d8e: $a3
	and  l                                           ; $7d8f: $a5
	db   $ec                                         ; $7d90: $ec
	cp   d                                           ; $7d91: $ba
	ld   a, h                                        ; $7d92: $7c
	inc  bc                                          ; $7d93: $03
	ld   c, e                                        ; $7d94: $4b
	add  [hl]                                        ; $7d95: $86
	dec  c                                           ; $7d96: $0d
	ld   [bc], a                                     ; $7d97: $02
	ld   a, a                                        ; $7d98: $7f
	ld   [hl], c                                     ; $7d99: $71
	ld   [hl], h                                     ; $7d9a: $74
	adc  l                                           ; $7d9b: $8d
	adc  h                                           ; $7d9c: $8c
	ld   h, l                                        ; $7d9d: $65
	sub  l                                           ; $7d9e: $95
	ld   d, h                                        ; $7d9f: $54
	ld   e, c                                        ; $7da0: $59
	sbc  a                                           ; $7da1: $9f
	dec  c                                           ; $7da2: $0d
	nop                                              ; $7da3: $00
	ld   a, [bc]                                     ; $7da4: $0a
	dec  c                                           ; $7da5: $0d
	nop                                              ; $7da6: $00
	nop                                              ; $7da7: $00
	rrca                                             ; $7da8: $0f
	nop                                              ; $7da9: $00
	ld   bc, $5623                                   ; $7daa: $01 $23 $56
	inc  e                                           ; $7dad: $1c
	inc  b                                           ; $7dae: $04
	nop                                              ; $7daf: $00
	nop                                              ; $7db0: $00
	ld   bc, $9e50                                   ; $7db1: $01 $50 $9e
	rst  JumpTable                                         ; $7db4: $df
	db   $ec                                         ; $7db5: $ec
	and  e                                           ; $7db6: $a3
	dec  c                                           ; $7db7: $0d
	ld   l, e                                        ; $7db8: $6b
	sbc  d                                           ; $7db9: $9a
	ld   a, c                                        ; $7dba: $79
	sbc  [hl]                                        ; $7dbb: $9e
	ld   l, a                                        ; $7dbc: $6f
	ld   d, d                                        ; $7dbd: $52
	ld   [bc], a                                     ; $7dbe: $02
	inc  de                                          ; $7dbf: $13
	ld   l, a                                        ; $7dc0: $6f
	sub  c                                           ; $7dc1: $91
	and  c                                           ; $7dc2: $a1
	sbc  a                                           ; $7dc3: $9f
	dec  c                                           ; $7dc4: $0d
	ld   [hl], a                                     ; $7dc5: $77
	ld   d, h                                        ; $7dc6: $54
	ld   h, l                                        ; $7dc7: $65
	ld   l, l                                        ; $7dc8: $6d
	ld   a, h                                        ; $7dc9: $7c
	ld   sp, hl                                      ; $7dca: $f9
	dec  c                                           ; $7dcb: $0d
	nop                                              ; $7dcc: $00
	ld   a, [bc]                                     ; $7dcd: $0a
	rrca                                             ; $7dce: $0f
	inc  bc                                          ; $7dcf: $03
	inc  b                                           ; $7dd0: $04
	ld   bc, $8b03                                   ; $7dd1: $01 $03 $8b
	ld   a, l                                        ; $7dd4: $7d
	rst  $38                                         ; $7dd5: $ff
	rst  $38                                         ; $7dd6: $ff
	rst  $38                                         ; $7dd7: $ff
	rst  $38                                         ; $7dd8: $ff
	dec  c                                           ; $7dd9: $0d
	ld   e, c                                        ; $7dda: $59
	ld   e, l                                        ; $7ddb: $5d
	ld   e, c                                        ; $7ddc: $59
	ld   e, l                                        ; $7ddd: $5d
	ld   h, l                                        ; $7dde: $65
	ld   e, c                                        ; $7ddf: $59
	ld   h, [hl]                                     ; $7de0: $66
	ld   e, c                                        ; $7de1: $59
	rst  $38                                         ; $7de2: $ff
	rst  $38                                         ; $7de3: $ff
	dec  c                                           ; $7de4: $0d
	halt                                             ; $7de5: $76
	sbc  [hl]                                        ; $7de6: $9e
	ld   d, d                                        ; $7de7: $52
	ld   d, h                                        ; $7de8: $54
	ld   h, c                                        ; $7de9: $61
	halt                                             ; $7dea: $76
	ld   a, b                                        ; $7deb: $78
	and  c                                           ; $7dec: $a1
	ld   l, [hl]                                     ; $7ded: $6e
	ld   e, a                                        ; $7dee: $5f
	ld   [hl], a                                     ; $7def: $77
	rst  $38                                         ; $7df0: $ff
	rst  $38                                         ; $7df1: $ff
	dec  c                                           ; $7df2: $0d
	nop                                              ; $7df3: $00
	ld   a, [bc]                                     ; $7df4: $0a
	inc  e                                           ; $7df5: $1c
	inc  b                                           ; $7df6: $04
	inc  bc                                          ; $7df7: $03
	inc  bc                                          ; $7df8: $03
	ld   bc, $9a6b                                   ; $7df9: $01 $6b $9a
	ld   e, e                                        ; $7dfc: $5b
	ld   [hl], c                                     ; $7dfd: $71
	halt                                             ; $7dfe: $76
	and  e                                           ; $7dff: $a3
	and  l                                           ; $7e00: $a5
	db   $ec                                         ; $7e01: $ec
	cp   d                                           ; $7e02: $ba
	ld   l, [hl]                                     ; $7e03: $6e
	sub  [hl]                                        ; $7e04: $96
	sbc  a                                           ; $7e05: $9f
	dec  c                                           ; $7e06: $0d
	ld   l, a                                        ; $7e07: $6f
	ld   e, c                                        ; $7e08: $59
	ld   h, d                                        ; $7e09: $62
	sbc  e                                           ; $7e0a: $9b
	sbc  [hl]                                        ; $7e0b: $9e
	ld   e, b                                        ; $7e0c: $58
	ld   e, e                                        ; $7e0d: $5b
	sbc  c                                           ; $7e0e: $99
	halt                                             ; $7e0f: $76
	cp   b                                           ; $7e10: $b8
	ei                                               ; $7e11: $fb
	push bc                                          ; $7e12: $c5
	ld   e, d                                        ; $7e13: $5a
	dec  c                                           ; $7e14: $0d
	sub  h                                           ; $7e15: $94
	ld   e, c                                        ; $7e16: $59
	ld   a, c                                        ; $7e17: $79
	ld   e, b                                        ; $7e18: $58
	ld   l, a                                        ; $7e19: $6f
	ld   [hl], h                                     ; $7e1a: $74
	ld   l, l                                        ; $7e1b: $6d
	sbc  b                                           ; $7e1c: $98
	ld   h, a                                        ; $7e1d: $67
	sbc  c                                           ; $7e1e: $99
	ld   a, h                                        ; $7e1f: $7c
	sbc  a                                           ; $7e20: $9f
	dec  c                                           ; $7e21: $0d
	nop                                              ; $7e22: $00
	ld   a, [bc]                                     ; $7e23: $0a
	ld   bc, $8f62                                   ; $7e24: $01 $62 $8f
	and  c                                           ; $7e27: $a1
	ld   a, e                                        ; $7e28: $7b
	sbc  a                                           ; $7e29: $9f
	rst  JumpTable                                         ; $7e2a: $df
	db   $ec                                         ; $7e2b: $ec
	and  e                                           ; $7e2c: $a3
	sbc  a                                           ; $7e2d: $9f
	dec  c                                           ; $7e2e: $0d
	nop                                              ; $7e2f: $00
	ld   a, [bc]                                     ; $7e30: $0a
	rrca                                             ; $7e31: $0f
	inc  bc                                          ; $7e32: $03
	inc  bc                                          ; $7e33: $03
	ld   bc, $5252                                   ; $7e34: $01 $52 $52
	ld   a, h                                        ; $7e37: $7c
	sub  [hl]                                        ; $7e38: $96
	sbc  [hl]                                        ; $7e39: $9e
	and  e                                           ; $7e3a: $a3
	and  l                                           ; $7e3b: $a5
	db   $ec                                         ; $7e3c: $ec
	cp   d                                           ; $7e3d: $ba
	sbc  a                                           ; $7e3e: $9f
	dec  c                                           ; $7e3f: $0d
	sbc  l                                           ; $7e40: $9d
	ld   h, h                                        ; $7e41: $64
	halt                                             ; $7e42: $76
	ld   h, [hl]                                     ; $7e43: $66
	sub  c                                           ; $7e44: $91
	ld   a, b                                        ; $7e45: $78
	ld   d, d                                        ; $7e46: $52
	and  c                                           ; $7e47: $a1
	ld   l, [hl]                                     ; $7e48: $6e
	ld   e, c                                        ; $7e49: $59
	sub  a                                           ; $7e4a: $97
	sbc  a                                           ; $7e4b: $9f
	dec  c                                           ; $7e4c: $0d
	nop                                              ; $7e4d: $00
	ld   a, [bc]                                     ; $7e4e: $0a
	ld   bc, $a18d                                   ; $7e4f: $01 $8d $a1
	ld   a, b                                        ; $7e52: $78
	ld   a, c                                        ; $7e53: $79
	ld   a, l                                        ; $7e54: $7d
	dec  b                                           ; $7e55: $05
	ld   de, $e104                                   ; $7e56: $11 $04 $e1
	and  b                                           ; $7e59: $a0
	dec  b                                           ; $7e5a: $05
	jr   nz, @+$67                                   ; $7e5b: $20 $65

	ld   [hl], h                                     ; $7e5d: $74
	dec  c                                           ; $7e5e: $0d
	ld   e, b                                        ; $7e5f: $58
	ld   e, l                                        ; $7e60: $5d
	ld   e, c                                        ; $7e61: $59
	sub  a                                           ; $7e62: $97
	sbc  [hl]                                        ; $7e63: $9e
	inc  b                                           ; $7e64: $04
	ld   c, $03                                      ; $7e65: $0e $03
	sbc  l                                           ; $7e67: $9d
	inc  b                                           ; $7e68: $04
	and  [hl]                                        ; $7e69: $a6
	sub  [hl]                                        ; $7e6a: $96
	sbc  a                                           ; $7e6b: $9f
	dec  c                                           ; $7e6c: $0d
	ld   h, [hl]                                     ; $7e6d: $66
	sub  c                                           ; $7e6e: $91
	ld   d, b                                        ; $7e6f: $50
	ld   a, e                                        ; $7e70: $7b
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
	rlca                                             ; $7e7d: $07
	add  sp, $22                                     ; $7e7e: $e8 $22
	inc  bc                                          ; $7e80: $03
	rst  $38                                         ; $7e81: $ff
	ld   bc, $2001                                   ; $7e82: $01 $01 $20
	nop                                              ; $7e85: $00
	ld   c, $4a                                      ; $7e86: $0e $4a
	inc  e                                           ; $7e88: $1c
	inc  bc                                          ; $7e89: $03
	inc  b                                           ; $7e8a: $04
	inc  b                                           ; $7e8b: $04
	ld   bc, $9a61                                   ; $7e8c: $01 $61 $9a
	ld   e, [hl]                                     ; $7e8f: $5e
	sub  a                                           ; $7e90: $97
	ld   d, d                                        ; $7e91: $52
	ld   a, l                                        ; $7e92: $7d
	sbc  [hl]                                        ; $7e93: $9e
	sbc  l                                           ; $7e94: $9d
	ld   e, c                                        ; $7e95: $59
	ld   [hl], c                                     ; $7e96: $71
	ld   [hl], h                                     ; $7e97: $74
	dec  c                                           ; $7e98: $0d
	inc  b                                           ; $7e99: $04
	db   $e3                                         ; $7e9a: $e3
	ld   h, l                                        ; $7e9b: $65
	ld   e, c                                        ; $7e9c: $59
	ld   [hl], c                                     ; $7e9d: $71
	ld   l, l                                        ; $7e9e: $6d
	sbc  l                                           ; $7e9f: $9d
	rst  $38                                         ; $7ea0: $ff
	rst  $38                                         ; $7ea1: $ff
	sbc  a                                           ; $7ea2: $9f
	dec  c                                           ; $7ea3: $0d
	ld   h, [hl]                                     ; $7ea4: $66
	sub  c                                           ; $7ea5: $91
	sbc  [hl]                                        ; $7ea6: $9e
	inc  bc                                          ; $7ea7: $03
	ld   l, b                                        ; $7ea8: $68
	sub  [hl]                                        ; $7ea9: $96
	sbc  a                                           ; $7eaa: $9f
	dec  c                                           ; $7eab: $0d
	nop                                              ; $7eac: $00
	ld   a, [bc]                                     ; $7ead: $0a
	ld   b, $1e                                      ; $7eae: $06 $1e
	inc  hl                                          ; $7eb0: $23
	ld   c, $4a                                      ; $7eb1: $0e $4a
	inc  e                                           ; $7eb3: $1c
	inc  bc                                          ; $7eb4: $03
	inc  bc                                          ; $7eb5: $03
	inc  bc                                          ; $7eb6: $03
	dec  e                                           ; $7eb7: $1d
	ld   b, b                                        ; $7eb8: $40
	inc  de                                          ; $7eb9: $13
	inc  bc                                          ; $7eba: $03
	inc  de                                          ; $7ebb: $13
	ld   bc, $2803                                   ; $7ebc: $01 $03 $28
	nop                                              ; $7ebf: $00
	ld   bc, $0008                                   ; $7ec0: $01 $08 $00
	ld   e, l                                        ; $7ec3: $5d
	and  c                                           ; $7ec4: $a1
	sbc  a                                           ; $7ec5: $9f
	sub  d                                           ; $7ec6: $92
	sbc  c                                           ; $7ec7: $99
	sbc  l                                           ; $7ec8: $9d
	ld   a, e                                        ; $7ec9: $7b
	sbc  a                                           ; $7eca: $9f
	dec  c                                           ; $7ecb: $0d
	cp   e                                           ; $7ecc: $bb
	pop  de                                          ; $7ecd: $d1
	db   $ec                                         ; $7ece: $ec
	inc  bc                                          ; $7ecf: $03
	ld   c, d                                        ; $7ed0: $4a
	ld   [bc], a                                     ; $7ed1: $02
	or   h                                           ; $7ed2: $b4
	ld   h, [hl]                                     ; $7ed3: $66
	sub  c                                           ; $7ed4: $91
	ld   a, b                                        ; $7ed5: $78
	ld   d, d                                        ; $7ed6: $52
	sbc  a                                           ; $7ed7: $9f
	dec  c                                           ; $7ed8: $0d
	ld   h, [hl]                                     ; $7ed9: $66
	sub  c                                           ; $7eda: $91
	sbc  [hl]                                        ; $7edb: $9e
	inc  bc                                          ; $7edc: $03
	ld   l, b                                        ; $7edd: $68
	ld   a, h                                        ; $7ede: $7c
	ld   b, $08                                      ; $7edf: $06 $08
	ld   a, l                                        ; $7ee1: $7d
	rst  $38                                         ; $7ee2: $ff
	rst  $38                                         ; $7ee3: $ff
	dec  c                                           ; $7ee4: $0d
	nop                                              ; $7ee5: $00
	ld   a, [bc]                                     ; $7ee6: $0a
	inc  e                                           ; $7ee7: $1c
	inc  bc                                          ; $7ee8: $03
	nop                                              ; $7ee9: $00
	nop                                              ; $7eea: $00
	ld   bc, $0701                                   ; $7eeb: $01 $01 $07
	dec  b                                           ; $7eee: $05
	call nc, $1304                                   ; $7eef: $d4 $04 $13
	ld   a, h                                        ; $7ef2: $7c
	inc  bc                                          ; $7ef3: $03
	db   $e3                                         ; $7ef4: $e3
	inc  bc                                          ; $7ef5: $03
	db   $e4                                         ; $7ef6: $e4
	ld   bc, $9f08                                   ; $7ef7: $01 $08 $9f
	dec  c                                           ; $7efa: $0d
	nop                                              ; $7efb: $00
	dec  b                                           ; $7efc: $05
	ld   b, b                                        ; $7efd: $40
	rst  $38                                         ; $7efe: $ff
	ld   bc, $0000                                   ; $7eff: $01 $00 $00
	ld   bc, $a903                                   ; $7f02: $01 $03 $a9
	ld   a, h                                        ; $7f05: $7c
	ld   h, l                                        ; $7f06: $65
	sbc  l                                           ; $7f07: $9d
	ld   h, h                                        ; $7f08: $64
	ld   e, c                                        ; $7f09: $59
	sbc  l                                           ; $7f0a: $9d
	ld   e, c                                        ; $7f0b: $59
	sbc  c                                           ; $7f0c: $99
	ld   e, c                                        ; $7f0d: $59
	ld   h, l                                        ; $7f0e: $65
	sub  a                                           ; $7f0f: $97
	ld   sp, hl                                      ; $7f10: $f9
	dec  c                                           ; $7f11: $0d
	ld   h, c                                        ; $7f12: $61
	sbc  d                                           ; $7f13: $9a
	sub  b                                           ; $7f14: $90
	db   $d3                                         ; $7f15: $d3
	push af                                          ; $7f16: $f5
	ret                                              ; $7f17: $c9


	ld   a, b                                        ; $7f18: $78
	ld   h, l                                        ; $7f19: $65
	sub  [hl]                                        ; $7f1a: $96
	sbc  a                                           ; $7f1b: $9f
	dec  c                                           ; $7f1c: $0d
	nop                                              ; $7f1d: $00
	ld   a, [bc]                                     ; $7f1e: $0a
	add  hl, de                                      ; $7f1f: $19
	dec  b                                           ; $7f20: $05
	inc  bc                                          ; $7f21: $03
	ld   [bc], a                                     ; $7f22: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f23: $cf
	dec  b                                           ; $7f24: $05
	ld   a, [de]                                     ; $7f25: $1a
	ld   h, e                                        ; $7f26: $63
	and  c                                           ; $7f27: $a1
	nop                                              ; $7f28: $00
	nop                                              ; $7f29: $00
	inc  b                                           ; $7f2a: $04
	rst  $10                                         ; $7f2b: $d7
	inc  b                                           ; $7f2c: $04
	ld   hl, $0b04                                   ; $7f2d: $21 $04 $0b
	inc  bc                                          ; $7f30: $03
	ld   h, h                                        ; $7f31: $64
	nop                                              ; $7f32: $00
	ld   bc, $5d63                                   ; $7f33: $01 $63 $5d
	sub  a                                           ; $7f36: $97
	ld   h, e                                        ; $7f37: $63
	and  c                                           ; $7f38: $a1
	nop                                              ; $7f39: $00
	ld   [bc], a                                     ; $7f3a: $02
	rlca                                             ; $7f3b: $07
	pop  af                                          ; $7f3c: $f1
	inc  hl                                          ; $7f3d: $23
	ld   [bc], a                                     ; $7f3e: $02
	inc  bc                                          ; $7f3f: $03
	ld   bc, $2000                                   ; $7f40: $01 $00 $20
	nop                                              ; $7f43: $00
	rlca                                             ; $7f44: $07
	dec  [hl]                                        ; $7f45: $35
	inc  h                                           ; $7f46: $24
	ld   [bc], a                                     ; $7f47: $02
	inc  bc                                          ; $7f48: $03
	ld   bc, $2001                                   ; $7f49: $01 $01 $20
	nop                                              ; $7f4c: $00
	rlca                                             ; $7f4d: $07
	or   $24                                         ; $7f4e: $f6 $24
	ld   [bc], a                                     ; $7f50: $02
	inc  bc                                          ; $7f51: $03
	ld   bc, $2002                                   ; $7f52: $01 $02 $20
	nop                                              ; $7f55: $00
	ld   b, $90                                      ; $7f56: $06 $90
	inc  hl                                          ; $7f58: $23
	inc  e                                           ; $7f59: $1c
	inc  bc                                          ; $7f5a: $03
	nop                                              ; $7f5b: $00
	nop                                              ; $7f5c: $00
	ld   bc, $527d                                   ; $7f5d: $01 $7d $52
	sbc  [hl]                                        ; $7f60: $9e
	inc  bc                                          ; $7f61: $03
	ld   l, a                                        ; $7f62: $6f
	ld   [bc], a                                     ; $7f63: $02
	xor  c                                           ; $7f64: $a9
	sub  [hl]                                        ; $7f65: $96
	sbc  a                                           ; $7f66: $9f
	dec  c                                           ; $7f67: $0d
	inc  bc                                          ; $7f68: $03
	call c, Call_061_7d56                            ; $7f69: $dc $56 $7d
	ld   a, e                                        ; $7f6c: $7b
	sbc  [hl]                                        ; $7f6d: $9e
	ld   e, b                                        ; $7f6e: $58
	ld   l, e                                        ; $7f6f: $6b
	sub  a                                           ; $7f70: $97
	ld   e, l                                        ; $7f71: $5d
	ld   [bc], a                                     ; $7f72: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f73: $cf
	dec  b                                           ; $7f74: $05
	ld   a, [de]                                     ; $7f75: $1a
	sub  [hl]                                        ; $7f76: $96
	sbc  a                                           ; $7f77: $9f
	dec  c                                           ; $7f78: $0d
	nop                                              ; $7f79: $00
	ld   a, [bc]                                     ; $7f7a: $0a
	inc  e                                           ; $7f7b: $1c
	inc  bc                                          ; $7f7c: $03
	inc  bc                                          ; $7f7d: $03
	inc  bc                                          ; $7f7e: $03
	ld   bc, $1105                                   ; $7f7f: $01 $05 $11
	inc  b                                           ; $7f82: $04
	pop  hl                                          ; $7f83: $e1
	ld   a, l                                        ; $7f84: $7d
	sbc  [hl]                                        ; $7f85: $9e
	inc  bc                                          ; $7f86: $03
	ld   l, c                                        ; $7f87: $69
	ld   [bc], a                                     ; $7f88: $02
	and  b                                           ; $7f89: $a0
	inc  b                                           ; $7f8a: $04
	ld   c, $5b                                      ; $7f8b: $0e $5b
	ld   a, b                                        ; $7f8d: $78
	inc  bc                                          ; $7f8e: $03
	adc  e                                           ; $7f8f: $8b
	ld   [bc], a                                     ; $7f90: $02
	sub  [hl]                                        ; $7f91: $96
	and  b                                           ; $7f92: $a0
	dec  c                                           ; $7f93: $0d
	ld   h, l                                        ; $7f94: $65
	ld   [hl], h                                     ; $7f95: $74
	sbc  c                                           ; $7f96: $99
	sub  a                                           ; $7f97: $97
	ld   h, l                                        ; $7f98: $65
	ld   d, d                                        ; $7f99: $52
	ld   e, c                                        ; $7f9a: $59
	sub  a                                           ; $7f9b: $97
	sbc  [hl]                                        ; $7f9c: $9e
	ld   l, l                                        ; $7f9d: $6d
	adc  h                                           ; $7f9e: $8c
	ld   a, c                                        ; $7f9f: $79
	inc  bc                                          ; $7fa0: $03
	db   $e4                                         ; $7fa1: $e4
	ld   [bc], a                                     ; $7fa2: $02
	and  c                                           ; $7fa3: $a1
	dec  c                                           ; $7fa4: $0d
	ld   a, h                                        ; $7fa5: $7c
	inc  b                                           ; $7fa6: $04
	db   $e4                                         ; $7fa7: $e4
	dec  b                                           ; $7fa8: $05
	ld   h, [hl]                                     ; $7fa9: $66
	ld   e, d                                        ; $7faa: $5a
	xor  e                                           ; $7fab: $ab
	ei                                               ; $7fac: $fb
	pop  de                                          ; $7fad: $d1
	ei                                               ; $7fae: $fb
	ld   h, a                                        ; $7faf: $67
	sbc  c                                           ; $7fb0: $99
	ld   a, h                                        ; $7fb1: $7c
	ld   a, e                                        ; $7fb2: $7b
	sbc  a                                           ; $7fb3: $9f
	dec  c                                           ; $7fb4: $0d
	nop                                              ; $7fb5: $00
	ld   a, [bc]                                     ; $7fb6: $0a
	ld   b, $a5                                      ; $7fb7: $06 $a5
	dec  h                                           ; $7fb9: $25
	rrca                                             ; $7fba: $0f
	nop                                              ; $7fbb: $00
	ld   bc, $0201                                   ; $7fbc: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7fbf: $cf
	dec  b                                           ; $7fc0: $05
	ld   a, [de]                                     ; $7fc1: $1a
	ld   h, e                                        ; $7fc2: $63
	and  c                                           ; $7fc3: $a1
	sbc  [hl]                                        ; $7fc4: $9e
	ld   h, [hl]                                     ; $7fc5: $66
	sub  c                                           ; $7fc6: $91
	ld   a, b                                        ; $7fc7: $78
	ld   d, d                                        ; $7fc8: $52
	ld   [hl], l                                     ; $7fc9: $75
	ld   h, a                                        ; $7fca: $67
	ld   e, c                                        ; $7fcb: $59
	ld   sp, hl                                      ; $7fcc: $f9
	dec  c                                           ; $7fcd: $0d
	dec  b                                           ; $7fce: $05
	ld   de, $e104                                   ; $7fcf: $11 $04 $e1
	ld   a, l                                        ; $7fd2: $7d
	sbc  [hl]                                        ; $7fd3: $9e
	cp   e                                           ; $7fd4: $bb
	pop  de                                          ; $7fd5: $d1
	db   $ec                                         ; $7fd6: $ec
	inc  bc                                          ; $7fd7: $03
	adc  e                                           ; $7fd8: $8b
	ld   [bc], a                                     ; $7fd9: $02
	sub  [hl]                                        ; $7fda: $96
	ld   [hl], l                                     ; $7fdb: $75
	ld   h, a                                        ; $7fdc: $67
	sbc  a                                           ; $7fdd: $9f
	dec  c                                           ; $7fde: $0d
	nop                                              ; $7fdf: $00
	ld   a, [bc]                                     ; $7fe0: $0a
	inc  e                                           ; $7fe1: $1c
	inc  bc                                          ; $7fe2: $03
	inc  bc                                          ; $7fe3: $03
	inc  bc                                          ; $7fe4: $03
	ld   bc, $d6d6                                   ; $7fe5: $01 $d6 $d6
	sub  $9e                                         ; $7fe8: $d6 $9e
	ld   h, e                                        ; $7fea: $63
	ld   h, a                                        ; $7feb: $67
	ld   e, d                                        ; $7fec: $5a
	ld   a, e                                        ; $7fed: $7b
	sbc  a                                           ; $7fee: $9f
	dec  c                                           ; $7fef: $0d
	nop                                              ; $7ff0: $00
	ld   a, [bc]                                     ; $7ff1: $0a
	dec  b                                           ; $7ff2: $05
	ld   b, b                                        ; $7ff3: $40
	rst  $38                                         ; $7ff4: $ff
	inc  bc                                          ; $7ff5: $03
	rst  $38                                         ; $7ff6: $ff
	ld   bc, $2801                                   ; $7ff7: $01 $01 $28
	nop                                              ; $7ffa: $00
	ld   b, $a5                                      ; $7ffb: $06 $a5
	dec  h                                           ; $7ffd: $25
	rrca                                             ; $7ffe: $0f
	nop                                              ; $7fff: $00
