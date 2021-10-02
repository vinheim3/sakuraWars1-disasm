; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $054", ROMX[$4000], BANK[$54]

	inc  b                                           ; $4000: $04
	rlca                                             ; $4001: $07
	rlca                                             ; $4002: $07
	ld   bc, $9252                                   ; $4003: $01 $52 $92
	ld   l, [hl]                                     ; $4006: $6e
	sbc  a                                           ; $4007: $9f
	dec  c                                           ; $4008: $0d
	and  e                                           ; $4009: $a3
	and  l                                           ; $400a: $a5
	db   $ec                                         ; $400b: $ec
	cp   d                                           ; $400c: $ba
	ld   e, b                                        ; $400d: $58
	ld   a, b                                        ; $400e: $78
	ld   e, c                                        ; $400f: $59
	ld   h, a                                        ; $4010: $67
	ld   d, d                                        ; $4011: $52
	ld   l, l                                        ; $4012: $6d
	sbc  a                                           ; $4013: $9f
	dec  c                                           ; $4014: $0d
	nop                                              ; $4015: $00
	ld   a, [bc]                                     ; $4016: $0a
	add  hl, de                                      ; $4017: $19
	dec  b                                           ; $4018: $05
	ld   [bc], a                                     ; $4019: $02
	inc  b                                           ; $401a: $04
	ld   c, c                                        ; $401b: $49
	ld   e, c                                        ; $401c: $59
	inc  bc                                          ; $401d: $03
	ld   l, d                                        ; $401e: $6a
	add  a                                           ; $401f: $87
	ld   a, c                                        ; $4020: $79
	ld   [bc], a                                     ; $4021: $02
	ld   a, a                                        ; $4022: $7f
	ld   e, l                                        ; $4023: $5d
	nop                                              ; $4024: $00
	nop                                              ; $4025: $00
	inc  b                                           ; $4026: $04
	ld   [$9202], sp                                 ; $4027: $08 $02 $92
	ld   a, c                                        ; $402a: $79
	ld   [bc], a                                     ; $402b: $02
	or   l                                           ; $402c: $b5
	sbc  c                                           ; $402d: $99
	nop                                              ; $402e: $00
	ld   bc, $2907                                   ; $402f: $01 $07 $29
	ld   c, $02                                      ; $4032: $0e $02
	inc  bc                                          ; $4034: $03
	ld   bc, $2000                                   ; $4035: $01 $00 $20
	nop                                              ; $4038: $00
	rlca                                             ; $4039: $07
	ld   [hl], b                                     ; $403a: $70
	ld   c, $02                                      ; $403b: $0e $02
	inc  bc                                          ; $403d: $03
	ld   bc, $2001                                   ; $403e: $01 $01 $20
	nop                                              ; $4041: $00
	ld   b, $36                                      ; $4042: $06 $36
	dec  c                                           ; $4044: $0d
	rrca                                             ; $4045: $0f
	nop                                              ; $4046: $00
	ld   bc, $0101                                   ; $4047: $01 $01 $01
	inc  bc                                          ; $404a: $03
	ld   d, h                                        ; $404b: $54
	db   $fc                                         ; $404c: $fc
	and  c                                           ; $404d: $a1
	rst  $38                                         ; $404e: $ff
	rst  $38                                         ; $404f: $ff
	inc  bc                                          ; $4050: $03
	dec  c                                           ; $4051: $0d
	inc  b                                           ; $4052: $04
	ld   a, b                                        ; $4053: $78
	ld   a, b                                        ; $4054: $78
	ld   d, d                                        ; $4055: $52
	ld   e, c                                        ; $4056: $59
	rst  $38                                         ; $4057: $ff
	rst  $38                                         ; $4058: $ff
	ld   bc, $0d04                                   ; $4059: $01 $04 $0d
	ld   h, [hl]                                     ; $405c: $66
	sub  c                                           ; $405d: $91
	sbc  [hl]                                        ; $405e: $9e
	ld   h, d                                        ; $405f: $62
	ld   a, l                                        ; $4060: $7d
	and  c                                           ; $4061: $a1
	inc  bc                                          ; $4062: $03
	ld   l, d                                        ; $4063: $6a
	add  a                                           ; $4064: $87
	ld   a, c                                        ; $4065: $79
	ld   [bc], a                                     ; $4066: $02
	ld   a, a                                        ; $4067: $7f
	ld   h, c                                        ; $4068: $61
	ld   d, h                                        ; $4069: $54
	ld   e, c                                        ; $406a: $59
	sbc  a                                           ; $406b: $9f
	dec  c                                           ; $406c: $0d
	nop                                              ; $406d: $00
	ld   a, [bc]                                     ; $406e: $0a
	inc  e                                           ; $406f: $1c
	inc  b                                           ; $4070: $04
	ld   bc, $1d01                                   ; $4071: $01 $01 $1d
	ld   b, b                                        ; $4074: $40
	inc  d                                           ; $4075: $14
	inc  bc                                          ; $4076: $03
	inc  d                                           ; $4077: $14
	ld   bc, $2801                                   ; $4078: $01 $01 $28
	nop                                              ; $407b: $00
	ld   bc, $a154                                   ; $407c: $01 $54 $a1
	ld   a, [$000d]                                  ; $407f: $fa $0d $00
	ld   a, [bc]                                     ; $4082: $0a
	dec  c                                           ; $4083: $0d
	nop                                              ; $4084: $00
	nop                                              ; $4085: $00
	rrca                                             ; $4086: $0f
	nop                                              ; $4087: $00
	ld   bc, $3e06                                   ; $4088: $01 $06 $3e
	rrca                                             ; $408b: $0f
	rrca                                             ; $408c: $0f
	nop                                              ; $408d: $00
	ld   bc, $c101                                   ; $408e: $01 $01 $c1
	db   $e3                                         ; $4091: $e3
	ld   l, [hl]                                     ; $4092: $6e
	sub  [hl]                                        ; $4093: $96
	sbc  a                                           ; $4094: $9f
	dec  c                                           ; $4095: $0d
	adc  l                                           ; $4096: $8d
	and  c                                           ; $4097: $a1
	ld   a, b                                        ; $4098: $78
	ld   a, c                                        ; $4099: $79
	inc  bc                                          ; $409a: $03
	ld   [hl], l                                     ; $409b: $75
	inc  b                                           ; $409c: $04
	xor  e                                           ; $409d: $ab
	ld   e, c                                        ; $409e: $59
	ld   e, a                                        ; $409f: $5f
	ld   l, a                                        ; $40a0: $6f
	sub  c                                           ; $40a1: $91
	ld   d, d                                        ; $40a2: $52
	ld   e, a                                        ; $40a3: $5f
	ld   a, b                                        ; $40a4: $78
	ld   d, d                                        ; $40a5: $52
	dec  c                                           ; $40a6: $0d
	ld   e, c                                        ; $40a7: $59
	sub  a                                           ; $40a8: $97
	sbc  [hl]                                        ; $40a9: $9e
	ld   [bc], a                                     ; $40aa: $02
	or   l                                           ; $40ab: $b5
	sbc  c                                           ; $40ac: $99
	sub  [hl]                                        ; $40ad: $96
	sbc  a                                           ; $40ae: $9f
	dec  c                                           ; $40af: $0d
	nop                                              ; $40b0: $00
	ld   a, [bc]                                     ; $40b1: $0a
	inc  e                                           ; $40b2: $1c
	inc  b                                           ; $40b3: $04
	inc  b                                           ; $40b4: $04
	inc  b                                           ; $40b5: $04
	dec  e                                           ; $40b6: $1d
	ld   b, b                                        ; $40b7: $40
	inc  d                                           ; $40b8: $14
	inc  bc                                          ; $40b9: $03
	inc  d                                           ; $40ba: $14
	ld   bc, $2903                                   ; $40bb: $01 $03 $29
	nop                                              ; $40be: $00
	ld   bc, $ffff                                   ; $40bf: $01 $ff $ff
	ld   [hl], d                                     ; $40c2: $72
	adc  h                                           ; $40c3: $8c
	and  c                                           ; $40c4: $a1
	ld   a, b                                        ; $40c5: $78
	ld   d, d                                        ; $40c6: $52
	ld   a, h                                        ; $40c7: $7c
	rst  $38                                         ; $40c8: $ff
	rst  $38                                         ; $40c9: $ff
	dec  c                                           ; $40ca: $0d
	nop                                              ; $40cb: $00
	ld   a, [bc]                                     ; $40cc: $0a
	dec  c                                           ; $40cd: $0d
	nop                                              ; $40ce: $00
	nop                                              ; $40cf: $00
	rrca                                             ; $40d0: $0f
	nop                                              ; $40d1: $00
	ld   bc, $020c                                   ; $40d2: $01 $0c $02
	ld   c, $04                                      ; $40d5: $0e $04
	rrca                                             ; $40d7: $0f
	inc  bc                                          ; $40d8: $03
	rlca                                             ; $40d9: $07
	dec  c                                           ; $40da: $0d
	inc  b                                           ; $40db: $04
	inc  b                                           ; $40dc: $04
	ld   bc, $9e50                                   ; $40dd: $01 $50 $9e
	and  e                                           ; $40e0: $a3
	and  l                                           ; $40e1: $a5
	db   $ec                                         ; $40e2: $ec
	cp   d                                           ; $40e3: $ba
	ld   a, [$080d]                                  ; $40e4: $fa $0d $08
	nop                                              ; $40e7: $00
	ld   e, l                                        ; $40e8: $5d
	and  c                                           ; $40e9: $a1
	sbc  [hl]                                        ; $40ea: $9e
	and  e                                           ; $40eb: $a3
	and  l                                           ; $40ec: $a5
	db   $ec                                         ; $40ed: $ec
	cp   d                                           ; $40ee: $ba
	and  b                                           ; $40ef: $a0
	dec  c                                           ; $40f0: $0d
	inc  b                                           ; $40f1: $04
	db   $fd                                         ; $40f2: $fd
	sbc  d                                           ; $40f3: $9a
	inc  b                                           ; $40f4: $04
	jp   $7465                                       ; $40f5: $c3 $65 $74


	ld   e, l                                        ; $40f8: $5d
	sbc  d                                           ; $40f9: $9a
	ld   l, l                                        ; $40fa: $6d
	ld   a, h                                        ; $40fb: $7c
	ld   a, e                                        ; $40fc: $7b
	sbc  a                                           ; $40fd: $9f
	dec  c                                           ; $40fe: $0d
	nop                                              ; $40ff: $00
	ld   a, [bc]                                     ; $4100: $0a
	rrca                                             ; $4101: $0f
	inc  bc                                          ; $4102: $03
	inc  bc                                          ; $4103: $03
	dec  e                                           ; $4104: $1d
	ld   b, b                                        ; $4105: $40
	inc  de                                          ; $4106: $13
	inc  bc                                          ; $4107: $03
	inc  de                                          ; $4108: $13
	ld   bc, $2802                                   ; $4109: $01 $02 $28
	nop                                              ; $410c: $00
	ld   bc, $9850                                   ; $410d: $01 $50 $98
	ld   e, d                                        ; $4110: $5a
	halt                                             ; $4111: $76
	ld   d, h                                        ; $4112: $54
	sbc  a                                           ; $4113: $9f
	dec  c                                           ; $4114: $0d
	ld   [$5d00], sp                                 ; $4115: $08 $00 $5d
	and  c                                           ; $4118: $a1
	sbc  a                                           ; $4119: $9f
	dec  c                                           ; $411a: $0d
	nop                                              ; $411b: $00
	ld   a, [bc]                                     ; $411c: $0a
	inc  e                                           ; $411d: $1c
	inc  bc                                          ; $411e: $03
	ld   [bc], a                                     ; $411f: $02
	ld   [bc], a                                     ; $4120: $02
	ld   bc, $5063                                   ; $4121: $01 $63 $50
	sbc  [hl]                                        ; $4124: $9e
	and  e                                           ; $4125: $a3
	and  l                                           ; $4126: $a5
	db   $ec                                         ; $4127: $ec
	cp   d                                           ; $4128: $ba
	sbc  a                                           ; $4129: $9f
	dec  c                                           ; $412a: $0d
	adc  l                                           ; $412b: $8d
	and  c                                           ; $412c: $a1
	ld   a, b                                        ; $412d: $78
	inc  b                                           ; $412e: $04
	rla                                              ; $412f: $17
	ld   [hl], c                                     ; $4130: $71
	ld   [hl], h                                     ; $4131: $74
	sbc  c                                           ; $4132: $99
	sbc  l                                           ; $4133: $9d
	sbc  a                                           ; $4134: $9f
	dec  c                                           ; $4135: $0d
	dec  b                                           ; $4136: $05
	add  hl, de                                      ; $4137: $19
	inc  bc                                          ; $4138: $03
	and  h                                           ; $4139: $a4
	and  b                                           ; $413a: $a0
	dec  b                                           ; $413b: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $413c: $cf
	adc  a                                           ; $413d: $8f
	sbc  c                                           ; $413e: $99
	sbc  l                                           ; $413f: $9d
	sub  [hl]                                        ; $4140: $96
	sbc  a                                           ; $4141: $9f
	dec  c                                           ; $4142: $0d
	nop                                              ; $4143: $00
	ld   a, [bc]                                     ; $4144: $0a
	inc  e                                           ; $4145: $1c
	inc  b                                           ; $4146: $04
	inc  bc                                          ; $4147: $03
	inc  bc                                          ; $4148: $03
	ld   bc, $fb7d                                   ; $4149: $01 $7d $fb
	ld   d, d                                        ; $414c: $52
	sbc  a                                           ; $414d: $9f
	dec  c                                           ; $414e: $0d
	nop                                              ; $414f: $00
	ld   a, [bc]                                     ; $4150: $0a
	dec  b                                           ; $4151: $05
	add  b                                           ; $4152: $80
	ld   c, e                                        ; $4153: $4b
	ld   bc, $0001                                   ; $4154: $01 $01 $00
	add  hl, hl                                      ; $4157: $29
	ld   [$2300], sp                                 ; $4158: $08 $00 $23
	sub  b                                           ; $415b: $90
	inc  e                                           ; $415c: $1c
	inc  b                                           ; $415d: $04
	nop                                              ; $415e: $00
	nop                                              ; $415f: $00
	ld   bc, $526f                                   ; $4160: $01 $6f $52
	ld   [bc], a                                     ; $4163: $02
	inc  de                                          ; $4164: $13
	ld   l, a                                        ; $4165: $6f
	sub  c                                           ; $4166: $91
	and  c                                           ; $4167: $a1
	sbc  [hl]                                        ; $4168: $9e
	ld   a, b                                        ; $4169: $78
	ld   a, c                                        ; $416a: $79
	ld   l, l                                        ; $416b: $6d
	add  a                                           ; $416c: $87
	sbc  c                                           ; $416d: $99
	ld   a, h                                        ; $416e: $7c
	ld   sp, hl                                      ; $416f: $f9
	dec  c                                           ; $4170: $0d
	nop                                              ; $4171: $00
	ld   a, [bc]                                     ; $4172: $0a
	add  hl, de                                      ; $4173: $19
	dec  b                                           ; $4174: $05
	inc  bc                                          ; $4175: $03
	cp   d                                           ; $4176: $ba
	rst  ToBoot                                         ; $4177: $c7
	ei                                               ; $4178: $fb
	xor  [hl]                                        ; $4179: $ae
	nop                                              ; $417a: $00
	nop                                              ; $417b: $00
	ret  nc                                          ; $417c: $d0

	and  $b8                                         ; $417d: $e6 $b8
	db   $eb                                         ; $417f: $eb
	and  l                                           ; $4180: $a5
	cp   d                                           ; $4181: $ba
	nop                                              ; $4182: $00
	ld   bc, $0358                                   ; $4183: $01 $58 $03
	add  [hl]                                        ; $4186: $86
	inc  bc                                          ; $4187: $03
	sbc  b                                           ; $4188: $98
	db   $eb                                         ; $4189: $eb
	push af                                          ; $418a: $f5
	jp   nz, $0200                                   ; $418b: $c2 $00 $02

	rlca                                             ; $418e: $07
	ret  nc                                          ; $418f: $d0

	rrca                                             ; $4190: $0f
	ld   [bc], a                                     ; $4191: $02
	inc  bc                                          ; $4192: $03
	ld   bc, $2000                                   ; $4193: $01 $00 $20
	nop                                              ; $4196: $00
	rlca                                             ; $4197: $07
	ld   d, $10                                      ; $4198: $16 $10
	ld   [bc], a                                     ; $419a: $02
	inc  bc                                          ; $419b: $03
	ld   bc, $2001                                   ; $419c: $01 $01 $20
	nop                                              ; $419f: $00
	rlca                                             ; $41a0: $07
	ld   c, e                                        ; $41a1: $4b
	db   $10                                         ; $41a2: $10
	ld   [bc], a                                     ; $41a3: $02
	inc  bc                                          ; $41a4: $03
	ld   bc, $2002                                   ; $41a5: $01 $02 $20
	nop                                              ; $41a8: $00
	ld   b, $90                                      ; $41a9: $06 $90
	rrca                                             ; $41ab: $0f
	inc  e                                           ; $41ac: $1c
	inc  b                                           ; $41ad: $04
	rlca                                             ; $41ae: $07
	rlca                                             ; $41af: $07
	dec  e                                           ; $41b0: $1d
	ld   b, b                                        ; $41b1: $40
	inc  d                                           ; $41b2: $14
	inc  bc                                          ; $41b3: $03
	inc  d                                           ; $41b4: $14
	ld   bc, $2902                                   ; $41b5: $01 $02 $29
	nop                                              ; $41b8: $00
	ld   bc, $6e8c                                   ; $41b9: $01 $8c $6e
	sbc  [hl]                                        ; $41bc: $9e
	ld   e, e                                        ; $41bd: $5b
	adc  a                                           ; $41be: $8f
	sub  a                                           ; $41bf: $97
	sbc  d                                           ; $41c0: $9a
	ld   a, b                                        ; $41c1: $78
	ld   d, d                                        ; $41c2: $52
	ld   a, h                                        ; $41c3: $7c
	ld   sp, hl                                      ; $41c4: $f9
	dec  c                                           ; $41c5: $0d
	sub  h                                           ; $41c6: $94
	ld   d, h                                        ; $41c7: $54
	ld   h, [hl]                                     ; $41c8: $66
	sub  e                                           ; $41c9: $93
	ld   d, h                                        ; $41ca: $54
	add  e                                           ; $41cb: $83
	ld   l, [hl]                                     ; $41cc: $6e
	and  c                                           ; $41cd: $a1
	ld   l, [hl]                                     ; $41ce: $6e
	ld   a, e                                        ; $41cf: $7b
	sbc  a                                           ; $41d0: $9f
	dec  c                                           ; $41d1: $0d
	nop                                              ; $41d2: $00
	ld   a, [bc]                                     ; $41d3: $0a
	ld   bc, $927d                                   ; $41d4: $01 $7d $92
	ld   e, l                                        ; $41d7: $5d
	ld   e, e                                        ; $41d8: $5b
	adc  a                                           ; $41d9: $8f
	ld   [hl], h                                     ; $41da: $74
	sub  [hl]                                        ; $41db: $96
	sbc  [hl]                                        ; $41dc: $9e
	dec  c                                           ; $41dd: $0d
	ld   l, a                                        ; $41de: $6f
	ld   d, d                                        ; $41df: $52
	ld   [bc], a                                     ; $41e0: $02
	inc  de                                          ; $41e1: $13
	ld   l, a                                        ; $41e2: $6f
	sub  c                                           ; $41e3: $91
	and  c                                           ; $41e4: $a1
	sbc  a                                           ; $41e5: $9f
	dec  c                                           ; $41e6: $0d
	nop                                              ; $41e7: $00
	ld   a, [bc]                                     ; $41e8: $0a
	ld   b, $57                                      ; $41e9: $06 $57
	rrca                                             ; $41eb: $0f
	rrca                                             ; $41ec: $0f
	nop                                              ; $41ed: $00
	ld   bc, $6101                                   ; $41ee: $01 $01 $61
	ld   h, c                                        ; $41f1: $61
	ld   a, l                                        ; $41f2: $7d
	jp   z, $fbac                                    ; $41f3: $ca $ac $fb

	push af                                          ; $41f6: $f5
	halt                                             ; $41f7: $76
	dec  c                                           ; $41f8: $0d
	cp   d                                           ; $41f9: $ba
	rst  ToBoot                                         ; $41fa: $c7
	ei                                               ; $41fb: $fb
	xor  [hl]                                        ; $41fc: $ae
	ld   l, [hl]                                     ; $41fd: $6e
	ld   a, [$000d]                                  ; $41fe: $fa $0d $00
	ld   a, [bc]                                     ; $4201: $0a
	inc  e                                           ; $4202: $1c
	inc  b                                           ; $4203: $04
	ld   bc, $1d01                                   ; $4204: $01 $01 $1d
	ld   b, b                                        ; $4207: $40
	inc  d                                           ; $4208: $14
	inc  bc                                          ; $4209: $03
	inc  d                                           ; $420a: $14
	ld   bc, $2802                                   ; $420b: $01 $02 $28
	nop                                              ; $420e: $00
	ld   bc, $509d                                   ; $420f: $01 $9d $50
	sbc  [hl]                                        ; $4212: $9e
	ld   l, a                                        ; $4213: $6f
	ld   d, d                                        ; $4214: $52
	ld   [bc], a                                     ; $4215: $02
	inc  de                                          ; $4216: $13
	ld   l, a                                        ; $4217: $6f
	sub  c                                           ; $4218: $91
	and  c                                           ; $4219: $a1
	dec  c                                           ; $421a: $0d
	ld   e, b                                        ; $421b: $58
	ld   e, c                                        ; $421c: $59
	ld   a, e                                        ; $421d: $7b
	sub  b                                           ; $421e: $90
	ld   l, a                                        ; $421f: $6f
	db   $fc                                         ; $4220: $fc
	sbc  a                                           ; $4221: $9f
	dec  c                                           ; $4222: $0d
	nop                                              ; $4223: $00
	ld   a, [bc]                                     ; $4224: $0a
	dec  c                                           ; $4225: $0d
	nop                                              ; $4226: $00
	nop                                              ; $4227: $00
	rrca                                             ; $4228: $0f
	nop                                              ; $4229: $00
	ld   bc, $020c                                   ; $422a: $01 $0c $02
	add  hl, bc                                      ; $422d: $09
	inc  d                                           ; $422e: $14
	ld   b, $a9                                      ; $422f: $06 $a9
	db   $10                                         ; $4231: $10
	rrca                                             ; $4232: $0f
	nop                                              ; $4233: $00
	ld   bc, $0401                                   ; $4234: $01 $01 $04
	rst  ToBoot                                         ; $4237: $c7
	inc  b                                           ; $4238: $04
	sub  d                                           ; $4239: $92
	ld   a, h                                        ; $423a: $7c
	ret  nc                                          ; $423b: $d0

	and  $b8                                         ; $423c: $e6 $b8
	db   $eb                                         ; $423e: $eb
	and  l                                           ; $423f: $a5
	cp   d                                           ; $4240: $ba
	ld   e, c                                        ; $4241: $59
	ld   a, b                                        ; $4242: $78
	ld   sp, hl                                      ; $4243: $f9
	dec  c                                           ; $4244: $0d
	nop                                              ; $4245: $00
	ld   a, [bc]                                     ; $4246: $0a
	inc  e                                           ; $4247: $1c
	inc  b                                           ; $4248: $04
	ld   b, $06                                      ; $4249: $06 $06
	ld   bc, $fc78                                   ; $424b: $01 $78 $fc
	and  c                                           ; $424e: $a1
	ld   l, [hl]                                     ; $424f: $6e
	sbc  [hl]                                        ; $4250: $9e
	add  e                                           ; $4251: $83
	ld   [hl], d                                     ; $4252: $72
	ld   d, h                                        ; $4253: $54
	ld   l, [hl]                                     ; $4254: $6e
	ld   a, e                                        ; $4255: $7b
	sbc  a                                           ; $4256: $9f
	dec  c                                           ; $4257: $0d
	nop                                              ; $4258: $00
	ld   a, [bc]                                     ; $4259: $0a
	dec  c                                           ; $425a: $0d
	nop                                              ; $425b: $00
	nop                                              ; $425c: $00
	rrca                                             ; $425d: $0f
	nop                                              ; $425e: $00
	ld   bc, $020c                                   ; $425f: $01 $0c $02
	add  hl, bc                                      ; $4262: $09
	inc  d                                           ; $4263: $14
	ld   b, $a9                                      ; $4264: $06 $a9
	db   $10                                         ; $4266: $10
	rrca                                             ; $4267: $0f
	nop                                              ; $4268: $00
	ld   bc, $6101                                   ; $4269: $01 $01 $61
	ld   h, c                                        ; $426c: $61
	ld   a, l                                        ; $426d: $7d
	sbc  [hl]                                        ; $426e: $9e
	ld   [bc], a                                     ; $426f: $02
	jr   nz, @+$74                                   ; $4270: $20 $72

	rst  $38                                         ; $4272: $ff
	rst  $38                                         ; $4273: $ff
	dec  c                                           ; $4274: $0d
	ld   e, b                                        ; $4275: $58
	inc  bc                                          ; $4276: $03
	add  [hl]                                        ; $4277: $86
	inc  bc                                          ; $4278: $03
	sbc  b                                           ; $4279: $98
	db   $eb                                         ; $427a: $eb
	push af                                          ; $427b: $f5
	jp   nz, $9075                                   ; $427c: $c2 $75 $90

	dec  c                                           ; $427f: $0d
	inc  bc                                          ; $4280: $03
	ld   l, d                                        ; $4281: $6a
	add  a                                           ; $4282: $87
	ld   [hl], h                                     ; $4283: $74
	adc  l                                           ; $4284: $8d
	sub  [hl]                                        ; $4285: $96
	ld   d, h                                        ; $4286: $54
	ld   e, c                                        ; $4287: $59
	ld   a, b                                        ; $4288: $78
	ld   sp, hl                                      ; $4289: $f9
	dec  c                                           ; $428a: $0d
	nop                                              ; $428b: $00
	ld   a, [bc]                                     ; $428c: $0a
	inc  e                                           ; $428d: $1c
	inc  b                                           ; $428e: $04
	ld   bc, $1d01                                   ; $428f: $01 $01 $1d
	ld   b, b                                        ; $4292: $40
	inc  d                                           ; $4293: $14
	inc  bc                                          ; $4294: $03
	inc  d                                           ; $4295: $14
	ld   bc, $2803                                   ; $4296: $01 $03 $28
	nop                                              ; $4299: $00
	ld   bc, $fc9d                                   ; $429a: $01 $9d $fc
	ld   d, d                                        ; $429d: $52
	sbc  a                                           ; $429e: $9f
	dec  c                                           ; $429f: $0d
	and  e                                           ; $42a0: $a3
	and  l                                           ; $42a1: $a5
	db   $ec                                         ; $42a2: $ec
	cp   d                                           ; $42a3: $ba
	halt                                             ; $42a4: $76
	ld   d, d                                        ; $42a5: $52
	ld   [hl], c                                     ; $42a6: $71
	ld   h, l                                        ; $42a7: $65
	sub  l                                           ; $42a8: $95
	ld   l, [hl]                                     ; $42a9: $6e
	db   $fc                                         ; $42aa: $fc
	sbc  a                                           ; $42ab: $9f
	dec  c                                           ; $42ac: $0d
	ld   a, l                                        ; $42ad: $7d
	ld   l, l                                        ; $42ae: $6d
	sbc  [hl]                                        ; $42af: $9e
	ld   l, a                                        ; $42b0: $6f
	sub  l                                           ; $42b1: $95
	ld   d, h                                        ; $42b2: $54
	ld   l, [hl]                                     ; $42b3: $6e
	ld   d, d                                        ; $42b4: $52
	ld   a, e                                        ; $42b5: $7b
	db   $fc                                         ; $42b6: $fc
	sbc  a                                           ; $42b7: $9f
	dec  c                                           ; $42b8: $0d
	nop                                              ; $42b9: $00
	ld   a, [bc]                                     ; $42ba: $0a
	dec  c                                           ; $42bb: $0d
	nop                                              ; $42bc: $00
	nop                                              ; $42bd: $00
	rrca                                             ; $42be: $0f
	nop                                              ; $42bf: $00
	ld   bc, $020c                                   ; $42c0: $01 $0c $02
	add  hl, bc                                      ; $42c3: $09
	inc  d                                           ; $42c4: $14
	ld   c, $90                                      ; $42c5: $0e $90
	inc  e                                           ; $42c7: $1c
	inc  b                                           ; $42c8: $04
	ld   bc, $0101                                   ; $42c9: $01 $01 $01
	ld   e, b                                        ; $42cc: $58
	ld   d, d                                        ; $42cd: $52
	ld   h, l                                        ; $42ce: $65
	ld   e, c                                        ; $42cf: $59
	ld   [hl], c                                     ; $42d0: $71
	ld   l, l                                        ; $42d1: $6d
	ld   a, e                                        ; $42d2: $7b
	sbc  a                                           ; $42d3: $9f
	dec  c                                           ; $42d4: $0d
	ld   l, a                                        ; $42d5: $6f
	ld   d, d                                        ; $42d6: $52
	ld   [bc], a                                     ; $42d7: $02
	inc  de                                          ; $42d8: $13
	ld   l, a                                        ; $42d9: $6f
	sub  c                                           ; $42da: $91
	and  c                                           ; $42db: $a1
	sbc  a                                           ; $42dc: $9f
	dec  c                                           ; $42dd: $0d
	nop                                              ; $42de: $00
	ld   a, [bc]                                     ; $42df: $0a
	rrca                                             ; $42e0: $0f
	nop                                              ; $42e1: $00
	ld   bc, $9601                                   ; $42e2: $01 $01 $96
	ld   h, l                                        ; $42e5: $65
	sbc  [hl]                                        ; $42e6: $9e
	ld   e, b                                        ; $42e7: $58
	ld   a, b                                        ; $42e8: $78
	ld   e, c                                        ; $42e9: $59
	sub  b                                           ; $42ea: $90
	ld   d, d                                        ; $42eb: $52
	ld   [hl], c                                     ; $42ec: $71
	ld   a, a                                        ; $42ed: $7f
	ld   d, d                                        ; $42ee: $52
	ld   a, c                                        ; $42ef: $79
	dec  c                                           ; $42f0: $0d
	ld   a, b                                        ; $42f1: $78
	ld   [hl], c                                     ; $42f2: $71
	ld   l, l                                        ; $42f3: $6d
	ld   h, c                                        ; $42f4: $61
	halt                                             ; $42f5: $76
	ld   l, [hl]                                     ; $42f6: $6e
	ld   h, l                                        ; $42f7: $65
	sbc  a                                           ; $42f8: $9f
	dec  c                                           ; $42f9: $0d
	ld   l, e                                        ; $42fa: $6b
	sbc  e                                           ; $42fb: $9b
	ld   l, e                                        ; $42fc: $6b
	sbc  e                                           ; $42fd: $9b
	ld   [bc], a                                     ; $42fe: $02
	or   l                                           ; $42ff: $b5
	sbc  e                                           ; $4300: $9b
	ld   d, h                                        ; $4301: $54
	ld   e, c                                        ; $4302: $59
	ld   sp, hl                                      ; $4303: $f9
	dec  c                                           ; $4304: $0d
	nop                                              ; $4305: $00
	ld   a, [bc]                                     ; $4306: $0a
	inc  e                                           ; $4307: $1c
	inc  b                                           ; $4308: $04
	ld   bc, $0101                                   ; $4309: $01 $01 $01
	ld   d, h                                        ; $430c: $54
	and  c                                           ; $430d: $a1
	ld   a, [$000d]                                  ; $430e: $fa $0d $00
	ld   a, [bc]                                     ; $4311: $0a
	dec  c                                           ; $4312: $0d
	nop                                              ; $4313: $00
	nop                                              ; $4314: $00
	rrca                                             ; $4315: $0f
	nop                                              ; $4316: $00
	ld   bc, $ff06                                   ; $4317: $01 $06 $ff
	db   $10                                         ; $431a: $10
	inc  c                                           ; $431b: $0c
	ld   [bc], a                                     ; $431c: $02
	ld   c, $06                                      ; $431d: $0e $06
	dec  c                                           ; $431f: $0d
	inc  b                                           ; $4320: $04
	inc  bc                                          ; $4321: $03
	rrca                                             ; $4322: $0f
	inc  bc                                          ; $4323: $03
	rlca                                             ; $4324: $07
	ld   bc, $0008                                   ; $4325: $01 $08 $00
	ld   e, l                                        ; $4328: $5d
	and  c                                           ; $4329: $a1
	ld   a, [$a30d]                                  ; $432a: $fa $0d $a3
	and  l                                           ; $432d: $a5
	db   $ec                                         ; $432e: $ec
	cp   d                                           ; $432f: $ba
	ld   a, [$000d]                                  ; $4330: $fa $0d $00
	ld   a, [bc]                                     ; $4333: $0a
	rrca                                             ; $4334: $0f
	inc  bc                                          ; $4335: $03
	ld   [bc], a                                     ; $4336: $02
	ld   bc, $a161                                   ; $4337: $01 $61 $a1
	ld   a, b                                        ; $433a: $78
	ld   a, c                                        ; $433b: $79
	ld   e, b                                        ; $433c: $58
	ld   l, e                                        ; $433d: $6b
	ld   e, l                                        ; $433e: $5d
	adc  h                                           ; $433f: $8c
	ld   [hl], l                                     ; $4340: $75
	dec  c                                           ; $4341: $0d
	inc  b                                           ; $4342: $04
	ld   c, c                                        ; $4343: $49
	ld   h, l                                        ; $4344: $65
	ld   [hl], h                                     ; $4345: $74
	ld   l, l                                        ; $4346: $6d
	ld   a, h                                        ; $4347: $7c
	ld   a, [$8d0d]                                  ; $4348: $fa $0d $8d
	and  c                                           ; $434b: $a1
	ld   a, b                                        ; $434c: $78
	inc  bc                                          ; $434d: $03
	ld   [hl], l                                     ; $434e: $75
	inc  b                                           ; $434f: $04
	xor  e                                           ; $4350: $ab
	ld   h, l                                        ; $4351: $65
	ld   [hl], h                                     ; $4352: $74
	ld   l, l                                        ; $4353: $6d
	ld   a, h                                        ; $4354: $7c
	sub  [hl]                                        ; $4355: $96
	ld   a, [$000d]                                  ; $4356: $fa $0d $00
	ld   a, [bc]                                     ; $4359: $0a
	ld   bc, $a5a3                                   ; $435a: $01 $a3 $a5
	db   $ec                                         ; $435d: $ec
	cp   d                                           ; $435e: $ba
	sbc  a                                           ; $435f: $9f
	dec  c                                           ; $4360: $0d
	ld   [bc], a                                     ; $4361: $02
	and  l                                           ; $4362: $a5
	ld   [bc], a                                     ; $4363: $02
	sub  e                                           ; $4364: $93
	ld   a, l                                        ; $4365: $7d
	sub  b                                           ; $4366: $90
	ld   d, h                                        ; $4367: $54
	sbc  [hl]                                        ; $4368: $9e
	ld   [bc], a                                     ; $4369: $02
	adc  d                                           ; $436a: $8a
	ld   h, e                                        ; $436b: $63
	ld   a, b                                        ; $436c: $78
	ld   d, d                                        ; $436d: $52
	sbc  l                                           ; $436e: $9d
	sub  [hl]                                        ; $436f: $96
	sbc  a                                           ; $4370: $9f
	dec  c                                           ; $4371: $0d
	ld   e, b                                        ; $4372: $58
	ld   h, l                                        ; $4373: $65
	ld   e, b                                        ; $4374: $58
	ld   e, e                                        ; $4375: $5b
	ld   h, l                                        ; $4376: $65
	ld   a, b                                        ; $4377: $78
	ld   e, l                                        ; $4378: $5d
	ld   l, a                                        ; $4379: $6f
	sub  c                                           ; $437a: $91
	ld   a, e                                        ; $437b: $7b
	sbc  a                                           ; $437c: $9f
	dec  c                                           ; $437d: $0d
	nop                                              ; $437e: $00
	ld   a, [bc]                                     ; $437f: $0a
	dec  c                                           ; $4380: $0d
	inc  b                                           ; $4381: $04
	inc  b                                           ; $4382: $04
	ld   bc, $b2d1                                   ; $4383: $01 $d1 $b2
	push bc                                          ; $4386: $c5
	and  b                                           ; $4387: $a0
	inc  bc                                          ; $4388: $03
	and  b                                           ; $4389: $a0
	ld   [hl], c                                     ; $438a: $71
	ld   [hl], h                                     ; $438b: $74
	dec  c                                           ; $438c: $0d
	inc  bc                                          ; $438d: $03
	add  l                                           ; $438e: $85
	inc  b                                           ; $438f: $04
	xor  e                                           ; $4390: $ab
	inc  bc                                          ; $4391: $03
	add  d                                           ; $4392: $82
	inc  bc                                          ; $4393: $03
	ld   c, l                                        ; $4394: $4d
	ld   a, h                                        ; $4395: $7c
	inc  bc                                          ; $4396: $03
	ld   c, a                                        ; $4397: $4f
	ld   [hl], l                                     ; $4398: $75
	dec  b                                           ; $4399: $05
	ld   d, $71                                      ; $439a: $16 $71
	ld   [hl], h                                     ; $439c: $74
	ld   a, b                                        ; $439d: $78
	ld   h, e                                        ; $439e: $63
	ld   d, d                                        ; $439f: $52
	sbc  a                                           ; $43a0: $9f
	dec  c                                           ; $43a1: $0d
	nop                                              ; $43a2: $00
	ld   a, [bc]                                     ; $43a3: $0a
	inc  e                                           ; $43a4: $1c
	inc  b                                           ; $43a5: $04
	ld   b, $06                                      ; $43a6: $06 $06
	ld   bc, $fb56                                   ; $43a8: $01 $56 $fb
	ei                                               ; $43ab: $fb
	ei                                               ; $43ac: $fb
	ei                                               ; $43ad: $fb
	ld   [hl], c                                     ; $43ae: $71
	ld   a, [$000d]                                  ; $43af: $fa $0d $00
	ld   a, [bc]                                     ; $43b2: $0a
	add  hl, de                                      ; $43b3: $19
	dec  b                                           ; $43b4: $05
	ld   [bc], a                                     ; $43b5: $02
	inc  b                                           ; $43b6: $04
	ld   l, l                                        ; $43b7: $6d
	sub  b                                           ; $43b8: $90
	ld   d, d                                        ; $43b9: $52
	ld   [hl], c                                     ; $43ba: $71
	ld   h, l                                        ; $43bb: $65
	sub  l                                           ; $43bc: $95
	ld   a, c                                        ; $43bd: $79
	dec  b                                           ; $43be: $05
	ld   d, $72                                      ; $43bf: $16 $72
	sub  [hl]                                        ; $43c1: $96
	nop                                              ; $43c2: $00
	nop                                              ; $43c3: $00
	inc  b                                           ; $43c4: $04
	ld   l, l                                        ; $43c5: $6d
	ld   l, [hl]                                     ; $43c6: $6e
	ld   e, a                                        ; $43c7: $5f
	ld   e, d                                        ; $43c8: $5a
	inc  b                                           ; $43c9: $04
	and  d                                           ; $43ca: $a2
	and  b                                           ; $43cb: $a0
	ld   [bc], a                                     ; $43cc: $02
	rst  $38                                         ; $43cd: $ff
	ld   e, a                                        ; $43ce: $5f
	adc  h                                           ; $43cf: $8c
	ld   h, a                                        ; $43d0: $67
	nop                                              ; $43d1: $00
	ld   bc, $cc07                                   ; $43d2: $01 $07 $cc
	ld   de, $0302                                   ; $43d5: $11 $02 $03
	ld   bc, $2000                                   ; $43d8: $01 $00 $20
	nop                                              ; $43db: $00
	rlca                                             ; $43dc: $07
	ld   d, [hl]                                     ; $43dd: $56
	ld   [de], a                                     ; $43de: $12
	ld   [bc], a                                     ; $43df: $02
	inc  bc                                          ; $43e0: $03
	ld   bc, $2001                                   ; $43e1: $01 $01 $20
	nop                                              ; $43e4: $00
	ld   b, $3a                                      ; $43e5: $06 $3a
	inc  de                                          ; $43e7: $13
	rrca                                             ; $43e8: $0f
	nop                                              ; $43e9: $00
	ld   bc, $040d                                   ; $43ea: $01 $0d $04
	inc  b                                           ; $43ed: $04
	ld   bc, $ecdf                                   ; $43ee: $01 $df $ec
	and  e                                           ; $43f1: $a3
	ld   h, e                                        ; $43f2: $63
	and  c                                           ; $43f3: $a1
	ld   a, [$6110]                                  ; $43f4: $fa $10 $61
	and  c                                           ; $43f7: $a1
	ld   a, b                                        ; $43f8: $78
	ld   a, c                                        ; $43f9: $79
	ld   e, b                                        ; $43fa: $58
	ld   l, e                                        ; $43fb: $6b
	ld   e, l                                        ; $43fc: $5d
	dec  c                                           ; $43fd: $0d
	adc  h                                           ; $43fe: $8c
	ld   [hl], l                                     ; $43ff: $75
	and  e                                           ; $4400: $a3
	and  l                                           ; $4401: $a5
	db   $ec                                         ; $4402: $ec
	cp   d                                           ; $4403: $ba
	and  b                                           ; $4404: $a0
	ld   [bc], a                                     ; $4405: $02
	inc  l                                           ; $4406: $2c
	ld   [hl], c                                     ; $4407: $71
	inc  b                                           ; $4408: $04
	ld   h, $98                                      ; $4409: $26 $98
	ld   [bc], a                                     ; $440b: $02
	sub  e                                           ; $440c: $93
	ld   h, l                                        ; $440d: $65
	ld   [hl], h                                     ; $440e: $74
	dec  c                                           ; $440f: $0d
	ld   l, l                                        ; $4410: $6d
	ld   a, h                                        ; $4411: $7c
	ld   a, l                                        ; $4412: $7d
	inc  b                                           ; $4413: $04
	ld   l, l                                        ; $4414: $6d
	ld   [hl], l                                     ; $4415: $75
	ld   h, a                                        ; $4416: $67
	sbc  a                                           ; $4417: $9f
	dec  c                                           ; $4418: $0d
	nop                                              ; $4419: $00
	ld   a, [bc]                                     ; $441a: $0a
	ld   bc, $6d04                                   ; $441b: $01 $04 $6d
	sub  b                                           ; $441e: $90
	ld   d, d                                        ; $441f: $52
	ld   [hl], c                                     ; $4420: $71
	ld   h, l                                        ; $4421: $65
	sub  l                                           ; $4422: $95
	ld   a, c                                        ; $4423: $79
	inc  b                                           ; $4424: $04
	and  d                                           ; $4425: $a2
	and  b                                           ; $4426: $a0
	ld   d, h                                        ; $4427: $54
	ld   e, a                                        ; $4428: $5f
	adc  h                                           ; $4429: $8c
	ld   h, a                                        ; $442a: $67
	sbc  a                                           ; $442b: $9f
	dec  c                                           ; $442c: $0d
	nop                                              ; $442d: $00
	ld   a, [bc]                                     ; $442e: $0a
	rrca                                             ; $442f: $0f
	inc  bc                                          ; $4430: $03
	nop                                              ; $4431: $00
	ld   bc, $546b                                   ; $4432: $01 $6b $54
	rst  $38                                         ; $4435: $ff
	rst  $38                                         ; $4436: $ff
	dec  c                                           ; $4437: $0d
	inc  bc                                          ; $4438: $03
	ld   c, [hl]                                     ; $4439: $4e
	inc  bc                                          ; $443a: $03
	ld   l, e                                        ; $443b: $6b
	ld   a, c                                        ; $443c: $79
	ld   a, b                                        ; $443d: $78
	ld   h, e                                        ; $443e: $63
	ld   d, d                                        ; $443f: $52
	sbc  a                                           ; $4440: $9f
	dec  c                                           ; $4441: $0d
	nop                                              ; $4442: $00
	ld   a, [bc]                                     ; $4443: $0a
	dec  c                                           ; $4444: $0d
	nop                                              ; $4445: $00
	nop                                              ; $4446: $00
	rrca                                             ; $4447: $0f
	nop                                              ; $4448: $00
	ld   bc, $020c                                   ; $4449: $01 $0c $02
	ld   d, $2d                                      ; $444c: $16 $2d
	rrca                                             ; $444e: $0f
	inc  b                                           ; $444f: $04
	ld   bc, $6f01                                   ; $4450: $01 $01 $6f
	ld   d, d                                        ; $4453: $52
	ld   [bc], a                                     ; $4454: $02
	inc  de                                          ; $4455: $13
	ld   l, a                                        ; $4456: $6f
	sub  c                                           ; $4457: $91
	and  c                                           ; $4458: $a1
	sbc  a                                           ; $4459: $9f
	dec  c                                           ; $445a: $0d
	ld   e, e                                        ; $445b: $5b
	sub  l                                           ; $445c: $95
	ld   d, h                                        ; $445d: $54
	ld   a, l                                        ; $445e: $7d
	sbc  [hl]                                        ; $445f: $9e
	ld   d, b                                        ; $4460: $50
	sbc  b                                           ; $4461: $98
	ld   e, d                                        ; $4462: $5a
	halt                                             ; $4463: $76
	ld   d, h                                        ; $4464: $54
	sbc  a                                           ; $4465: $9f
	dec  c                                           ; $4466: $0d
	nop                                              ; $4467: $00
	ld   a, [bc]                                     ; $4468: $0a
	dec  b                                           ; $4469: $05
	add  b                                           ; $446a: $80
	ld   c, e                                        ; $446b: $4b
	ld   bc, $0001                                   ; $446c: $01 $01 $00
	add  hl, hl                                      ; $446f: $29
	nop                                              ; $4470: $00
	nop                                              ; $4471: $00
	rrca                                             ; $4472: $0f
	nop                                              ; $4473: $00
	ld   bc, $040d                                   ; $4474: $01 $0d $04
	inc  b                                           ; $4477: $04
	ld   bc, $ecdf                                   ; $4478: $01 $df $ec
	and  e                                           ; $447b: $a3
	ld   h, e                                        ; $447c: $63
	and  c                                           ; $447d: $a1
	ld   a, [$6110]                                  ; $447e: $fa $10 $61
	and  c                                           ; $4481: $a1
	ld   a, b                                        ; $4482: $78
	ld   a, c                                        ; $4483: $79
	ld   e, b                                        ; $4484: $58
	ld   l, e                                        ; $4485: $6b
	ld   e, l                                        ; $4486: $5d
	dec  c                                           ; $4487: $0d
	adc  h                                           ; $4488: $8c
	ld   [hl], l                                     ; $4489: $75
	and  e                                           ; $448a: $a3
	and  l                                           ; $448b: $a5
	db   $ec                                         ; $448c: $ec
	cp   d                                           ; $448d: $ba
	and  b                                           ; $448e: $a0
	ld   [bc], a                                     ; $448f: $02
	inc  l                                           ; $4490: $2c
	ld   [hl], c                                     ; $4491: $71
	inc  b                                           ; $4492: $04
	ld   h, $98                                      ; $4493: $26 $98
	ld   [bc], a                                     ; $4495: $02
	sub  e                                           ; $4496: $93
	ld   h, l                                        ; $4497: $65
	ld   [hl], h                                     ; $4498: $74
	dec  c                                           ; $4499: $0d
	ld   l, l                                        ; $449a: $6d
	ld   a, h                                        ; $449b: $7c
	ld   a, l                                        ; $449c: $7d
	inc  b                                           ; $449d: $04
	ld   l, l                                        ; $449e: $6d
	ld   [hl], l                                     ; $449f: $75
	ld   h, a                                        ; $44a0: $67
	sbc  a                                           ; $44a1: $9f
	dec  c                                           ; $44a2: $0d
	nop                                              ; $44a3: $00
	ld   a, [bc]                                     ; $44a4: $0a
	ld   bc, $6d04                                   ; $44a5: $01 $04 $6d
	ld   l, [hl]                                     ; $44a8: $6e
	ld   e, a                                        ; $44a9: $5f
	ld   e, d                                        ; $44aa: $5a
	inc  b                                           ; $44ab: $04
	and  d                                           ; $44ac: $a2
	and  b                                           ; $44ad: $a0
	ld   [bc], a                                     ; $44ae: $02
	rst  $38                                         ; $44af: $ff
	ld   e, a                                        ; $44b0: $5f
	adc  h                                           ; $44b1: $8c
	ld   h, a                                        ; $44b2: $67
	sbc  a                                           ; $44b3: $9f
	dec  c                                           ; $44b4: $0d
	and  e                                           ; $44b5: $a3
	and  l                                           ; $44b6: $a5
	db   $ec                                         ; $44b7: $ec
	cp   d                                           ; $44b8: $ba
	ld   a, l                                        ; $44b9: $7d
	sub  h                                           ; $44ba: $94
	sbc  c                                           ; $44bb: $99
	ld   h, l                                        ; $44bc: $65
	ld   [hl], h                                     ; $44bd: $74
	sub  d                                           ; $44be: $92
	ld   [hl], c                                     ; $44bf: $71
	ld   [hl], h                                     ; $44c0: $74
	dec  c                                           ; $44c1: $0d
	ld   [bc], a                                     ; $44c2: $02
	inc  [hl]                                        ; $44c3: $34
	ld   h, e                                        ; $44c4: $63
	ld   d, d                                        ; $44c5: $52
	sbc  a                                           ; $44c6: $9f
	dec  c                                           ; $44c7: $0d
	nop                                              ; $44c8: $00
	ld   a, [bc]                                     ; $44c9: $0a
	rrca                                             ; $44ca: $0f
	inc  bc                                          ; $44cb: $03
	nop                                              ; $44cc: $00
	ld   bc, $ffff                                   ; $44cd: $01 $ff $ff
	rst  $38                                         ; $44d0: $ff
	rst  $38                                         ; $44d1: $ff
	rst  $38                                         ; $44d2: $ff
	rst  $38                                         ; $44d3: $ff
	dec  c                                           ; $44d4: $0d
	nop                                              ; $44d5: $00
	ld   a, [bc]                                     ; $44d6: $0a
	inc  e                                           ; $44d7: $1c
	inc  b                                           ; $44d8: $04
	inc  bc                                          ; $44d9: $03
	inc  bc                                          ; $44da: $03
	ld   bc, $a16b                                   ; $44db: $01 $6b $a1
	ld   a, b                                        ; $44de: $78
	ld   a, h                                        ; $44df: $7c
	pop  bc                                          ; $44e0: $c1
	db   $e3                                         ; $44e1: $e3
	ld   l, [hl]                                     ; $44e2: $6e
	sub  [hl]                                        ; $44e3: $96
	sbc  a                                           ; $44e4: $9f
	dec  c                                           ; $44e5: $0d
	and  e                                           ; $44e6: $a3
	and  l                                           ; $44e7: $a5
	db   $ec                                         ; $44e8: $ec
	cp   d                                           ; $44e9: $ba
	sub  b                                           ; $44ea: $90
	ld   d, d                                        ; $44eb: $52
	ld   [hl], c                                     ; $44ec: $71
	ld   h, l                                        ; $44ed: $65
	sub  l                                           ; $44ee: $95
	ld   a, c                                        ; $44ef: $79
	ld   a, [hl]                                     ; $44f0: $7e
	ld   [hl], d                                     ; $44f1: $72
	and  b                                           ; $44f2: $a0
	dec  c                                           ; $44f3: $0d
	ld   d, h                                        ; $44f4: $54
	ld   e, a                                        ; $44f5: $5f
	sbc  c                                           ; $44f6: $99
	ld   a, [$000d]                                  ; $44f7: $fa $0d $00
	ld   a, [bc]                                     ; $44fa: $0a
	rrca                                             ; $44fb: $0f
	inc  bc                                          ; $44fc: $03
	nop                                              ; $44fd: $00
	ld   bc, $ffff                                   ; $44fe: $01 $ff $ff
	inc  bc                                          ; $4501: $03
	ld   c, [hl]                                     ; $4502: $4e
	inc  bc                                          ; $4503: $03
	ld   l, e                                        ; $4504: $6b
	ld   a, c                                        ; $4505: $79
	ld   a, b                                        ; $4506: $78
	ld   h, e                                        ; $4507: $63
	ld   d, d                                        ; $4508: $52
	rst  $38                                         ; $4509: $ff
	rst  $38                                         ; $450a: $ff
	dec  c                                           ; $450b: $0d
	nop                                              ; $450c: $00
	ld   a, [bc]                                     ; $450d: $0a
	dec  c                                           ; $450e: $0d
	nop                                              ; $450f: $00
	nop                                              ; $4510: $00
	rrca                                             ; $4511: $0f
	nop                                              ; $4512: $00
	ld   bc, $020c                                   ; $4513: $01 $0c $02
	ld   d, $2d                                      ; $4516: $16 $2d
	rrca                                             ; $4518: $0f
	inc  b                                           ; $4519: $04
	ld   bc, $401d                                   ; $451a: $01 $1d $40
	inc  d                                           ; $451d: $14
	inc  bc                                          ; $451e: $03
	inc  d                                           ; $451f: $14
	ld   bc, $2803                                   ; $4520: $01 $03 $28
	nop                                              ; $4523: $00
	ld   bc, $526f                                   ; $4524: $01 $6f $52
	ld   [bc], a                                     ; $4527: $02
	inc  de                                          ; $4528: $13
	ld   l, a                                        ; $4529: $6f
	sub  c                                           ; $452a: $91
	and  c                                           ; $452b: $a1
	sbc  a                                           ; $452c: $9f
	dec  c                                           ; $452d: $0d
	ld   e, e                                        ; $452e: $5b
	sub  l                                           ; $452f: $95
	ld   d, h                                        ; $4530: $54
	ld   a, l                                        ; $4531: $7d
	sbc  [hl]                                        ; $4532: $9e
	ld   l, l                                        ; $4533: $6d
	ld   a, h                                        ; $4534: $7c
	ld   h, l                                        ; $4535: $65
	ld   e, c                                        ; $4536: $59
	ld   [hl], c                                     ; $4537: $71
	ld   l, l                                        ; $4538: $6d
	sub  [hl]                                        ; $4539: $96
	sbc  a                                           ; $453a: $9f
	dec  c                                           ; $453b: $0d
	nop                                              ; $453c: $00
	dec  b                                           ; $453d: $05
	add  b                                           ; $453e: $80
	ld   c, e                                        ; $453f: $4b
	ld   bc, $0001                                   ; $4540: $01 $01 $00
	ld   bc, $f5dc                                   ; $4543: $01 $dc $f5
	ret                                              ; $4546: $c9


	ld   a, c                                        ; $4547: $79
	sbc  [hl]                                        ; $4548: $9e
	ld   d, b                                        ; $4549: $50
	sbc  b                                           ; $454a: $98
	ld   e, d                                        ; $454b: $5a
	halt                                             ; $454c: $76
	ld   d, h                                        ; $454d: $54
	ld   a, e                                        ; $454e: $7b
	sbc  a                                           ; $454f: $9f
	dec  c                                           ; $4550: $0d
	nop                                              ; $4551: $00
	ld   a, [bc]                                     ; $4552: $0a
	add  hl, hl                                      ; $4553: $29
	nop                                              ; $4554: $00
	nop                                              ; $4555: $00
	inc  e                                           ; $4556: $1c
	inc  b                                           ; $4557: $04
	inc  b                                           ; $4558: $04
	inc  b                                           ; $4559: $04
	ld   bc, $fb7d                                   ; $455a: $01 $7d $fb
	ld   d, d                                        ; $455d: $52
	rst  $38                                         ; $455e: $ff
	rst  $38                                         ; $455f: $ff
	dec  c                                           ; $4560: $0d
	nop                                              ; $4561: $00
	ld   a, [bc]                                     ; $4562: $0a
	dec  b                                           ; $4563: $05
	add  b                                           ; $4564: $80
	ld   c, e                                        ; $4565: $4b
	ld   bc, $0001                                   ; $4566: $01 $01 $00
	add  hl, hl                                      ; $4569: $29
	nop                                              ; $456a: $00
	nop                                              ; $456b: $00
	nop                                              ; $456c: $00
	inc  bc                                          ; $456d: $03
	inc  de                                          ; $456e: $13
	ld   bc, $2491                                   ; $456f: $01 $91 $24
	nop                                              ; $4572: $00
	ld   c, $01                                      ; $4573: $0e $01
	rrca                                             ; $4575: $0f
	nop                                              ; $4576: $00
	ld   bc, $0102                                   ; $4577: $01 $02 $01
	sub  [hl]                                        ; $457a: $96
	ld   h, l                                        ; $457b: $65
	ld   a, [$630d]                                  ; $457c: $fa $0d $63
	sbc  l                                           ; $457f: $9d
	sub  d                                           ; $4580: $92
	ld   e, c                                        ; $4581: $59
	ld   a, b                                        ; $4582: $78
	inc  bc                                          ; $4583: $03
	ld   d, $6e                                      ; $4584: $16 $6e
	ld   a, [$000d]                                  ; $4586: $fa $0d $00
	inc  d                                           ; $4589: $14
	ld   b, $01                                      ; $458a: $06 $01
	ld   bc, $a502                                   ; $458c: $01 $02 $a5
	inc  b                                           ; $458f: $04
	xor  d                                           ; $4590: $aa
	sub  b                                           ; $4591: $90
	ld   e, d                                        ; $4592: $5a
	and  c                                           ; $4593: $a1
	ld   a, [hl]                                     ; $4594: $7e
	sbc  c                                           ; $4595: $99
	ld   l, h                                        ; $4596: $6c
	ld   a, [$0dfa]                                  ; $4597: $fa $fa $0d
	nop                                              ; $459a: $00
	ld   a, [bc]                                     ; $459b: $0a
	rrca                                             ; $459c: $0f
	inc  bc                                          ; $459d: $03
	inc  bc                                          ; $459e: $03
	ld   bc, $7d58                                   ; $459f: $01 $58 $7d
	sub  [hl]                                        ; $45a2: $96
	ld   d, h                                        ; $45a3: $54
	sbc  a                                           ; $45a4: $9f
	dec  c                                           ; $45a5: $0d
	ld   [$5d00], sp                                 ; $45a6: $08 $00 $5d
	and  c                                           ; $45a9: $a1
	sbc  a                                           ; $45aa: $9f
	dec  c                                           ; $45ab: $0d
	nop                                              ; $45ac: $00
	ld   a, [bc]                                     ; $45ad: $0a
	rrca                                             ; $45ae: $0f
	nop                                              ; $45af: $00
	ld   bc, $7d01                                   ; $45b0: $01 $01 $7d
	ld   d, d                                        ; $45b3: $52
	sbc  a                                           ; $45b4: $9f
	dec  c                                           ; $45b5: $0d
	ld   e, b                                        ; $45b6: $58
	ld   a, l                                        ; $45b7: $7d
	sub  [hl]                                        ; $45b8: $96
	ld   d, h                                        ; $45b9: $54
	ld   h, d                                        ; $45ba: $62
	ld   h, h                                        ; $45bb: $64
	ld   d, d                                        ; $45bc: $52
	adc  h                                           ; $45bd: $8c
	ld   h, a                                        ; $45be: $67
	sbc  a                                           ; $45bf: $9f
	dec  c                                           ; $45c0: $0d
	nop                                              ; $45c1: $00
	ld   a, [bc]                                     ; $45c2: $0a
	inc  d                                           ; $45c3: $14
	ld   a, [bc]                                     ; $45c4: $0a
	ld   bc, $031c                                   ; $45c5: $01 $1c $03
	inc  bc                                          ; $45c8: $03
	inc  bc                                          ; $45c9: $03
	ld   bc, $6b03                                   ; $45ca: $01 $03 $6b
	inc  b                                           ; $45cd: $04
	ld   [de], a                                     ; $45ce: $12
	ld   [hl], c                                     ; $45cf: $71
	ld   [hl], h                                     ; $45d0: $74
	inc  b                                           ; $45d1: $04
	db   $e3                                         ; $45d2: $e3
	ld   h, l                                        ; $45d3: $65
	ld   d, d                                        ; $45d4: $52
	ld   h, c                                        ; $45d5: $61
	halt                                             ; $45d6: $76
	ld   e, d                                        ; $45d7: $5a
	ld   d, b                                        ; $45d8: $50
	sbc  c                                           ; $45d9: $99
	and  c                                           ; $45da: $a1
	dec  c                                           ; $45db: $0d
	ld   l, [hl]                                     ; $45dc: $6e
	ld   e, a                                        ; $45dd: $5f
	ld   [hl], a                                     ; $45de: $77
	inc  bc                                          ; $45df: $03
	ld   l, a                                        ; $45e0: $6f
	ld   [bc], a                                     ; $45e1: $02
	xor  c                                           ; $45e2: $a9
	ld   d, b                                        ; $45e3: $50
	sbc  c                                           ; $45e4: $99
	ld   sp, hl                                      ; $45e5: $f9
	db   $10                                         ; $45e6: $10
	ld   [bc], a                                     ; $45e7: $02
	jr   nz, jr_054_45ee                             ; $45e8: $20 $04

	xor  d                                           ; $45ea: $aa
	ld   e, d                                        ; $45eb: $5a
	ld   e, c                                        ; $45ec: $59
	sbc  b                                           ; $45ed: $98

jr_054_45ee:
	dec  c                                           ; $45ee: $0d
	ld   a, h                                        ; $45ef: $7c
	inc  bc                                          ; $45f0: $03
	dec  c                                           ; $45f1: $0d
	ld   [bc], a                                     ; $45f2: $02
	jp   $a178                                       ; $45f3: $c3 $78 $a1


	ld   l, [hl]                                     ; $45f6: $6e
	ld   e, a                                        ; $45f7: $5f
	ld   [hl], a                                     ; $45f8: $77
	rst  $38                                         ; $45f9: $ff
	rst  $38                                         ; $45fa: $ff
	dec  c                                           ; $45fb: $0d
	nop                                              ; $45fc: $00
	ld   a, [bc]                                     ; $45fd: $0a
	ld   bc, $6d03                                   ; $45fe: $01 $03 $6d
	dec  b                                           ; $4601: $05
	add  hl, de                                      ; $4602: $19
	ld   a, h                                        ; $4603: $7c
	ld   [bc], a                                     ; $4604: $02
	jp   $9e7d                                       ; $4605: $c3 $7d $9e


	inc  bc                                          ; $4608: $03
	ret  z                                           ; $4609: $c8

	ld   e, c                                        ; $460a: $59
	sub  a                                           ; $460b: $97
	inc  bc                                          ; $460c: $03
	add  l                                           ; $460d: $85
	inc  b                                           ; $460e: $04
	xor  e                                           ; $460f: $ab
	inc  bc                                          ; $4610: $03
	add  d                                           ; $4611: $82
	ld   a, c                                        ; $4612: $79
	dec  c                                           ; $4613: $0d
	dec  b                                           ; $4614: $05
	jr   nz, jr_054_467c                             ; $4615: $20 $65

	ld   [hl], h                                     ; $4617: $74
	ld   e, b                                        ; $4618: $58
	ld   e, l                                        ; $4619: $5d
	ld   e, c                                        ; $461a: $59
	sub  a                                           ; $461b: $97
	sbc  [hl]                                        ; $461c: $9e
	inc  bc                                          ; $461d: $03
	ld   [hl], l                                     ; $461e: $75
	inc  b                                           ; $461f: $04
	xor  e                                           ; $4620: $ab
	inc  b                                           ; $4621: $04
	sub  $04                                         ; $4622: $d6 $04
	di                                               ; $4624: $f3
	sub  [hl]                                        ; $4625: $96
	sbc  a                                           ; $4626: $9f
	dec  c                                           ; $4627: $0d
	nop                                              ; $4628: $00
	ld   a, [bc]                                     ; $4629: $0a
	add  hl, de                                      ; $462a: $19
	dec  b                                           ; $462b: $05
	ld   [bc], a                                     ; $462c: $02
	ld   a, l                                        ; $462d: $7d
	ld   d, d                                        ; $462e: $52
	sbc  [hl]                                        ; $462f: $9e
	ld   d, d                                        ; $4630: $52
	ld   d, d                                        ; $4631: $52
	ld   [hl], l                                     ; $4632: $75
	ld   h, a                                        ; $4633: $67
	sub  [hl]                                        ; $4634: $96
	sbc  a                                           ; $4635: $9f
	nop                                              ; $4636: $00
	nop                                              ; $4637: $00
	ld   h, c                                        ; $4638: $61
	halt                                             ; $4639: $76
	sbc  l                                           ; $463a: $9d
	sbc  c                                           ; $463b: $99
	nop                                              ; $463c: $00
	ld   bc, $e007                                   ; $463d: $01 $07 $e0
	nop                                              ; $4640: $00
	ld   [bc], a                                     ; $4641: $02
	inc  bc                                          ; $4642: $03
	ld   bc, $2000                                   ; $4643: $01 $00 $20
	nop                                              ; $4646: $00
	rlca                                             ; $4647: $07
	inc  hl                                          ; $4648: $23
	ld   bc, $0302                                   ; $4649: $01 $02 $03
	ld   bc, $2001                                   ; $464c: $01 $01 $20
	nop                                              ; $464f: $00
	ld   b, $7b                                      ; $4650: $06 $7b
	ld   bc, $000f                                   ; $4652: $01 $0f $00
	ld   bc, $5201                                   ; $4655: $01 $01 $52
	ld   d, d                                        ; $4658: $52
	ld   [hl], l                                     ; $4659: $75
	ld   h, a                                        ; $465a: $67
	sub  [hl]                                        ; $465b: $96
	sbc  a                                           ; $465c: $9f
	rst  JumpTable                                         ; $465d: $df
	db   $ec                                         ; $465e: $ec
	and  e                                           ; $465f: $a3
	ld   h, e                                        ; $4660: $63
	and  c                                           ; $4661: $a1
	sbc  a                                           ; $4662: $9f
	dec  c                                           ; $4663: $0d
	inc  b                                           ; $4664: $04
	ld   l, l                                        ; $4665: $6d
	ld   [hl], l                                     ; $4666: $75
	ld   e, b                                        ; $4667: $58
	inc  b                                           ; $4668: $04
	db   $ec                                         ; $4669: $ec
	ld   a, c                                        ; $466a: $79
	dec  b                                           ; $466b: $05
	ld   d, $74                                      ; $466c: $16 $74
	sbc  c                                           ; $466e: $99
	ld   a, b                                        ; $466f: $78
	sub  a                                           ; $4670: $97
	sbc  a                                           ; $4671: $9f
	dec  c                                           ; $4672: $0d
	nop                                              ; $4673: $00
	ld   a, [bc]                                     ; $4674: $0a
	inc  e                                           ; $4675: $1c
	inc  bc                                          ; $4676: $03
	inc  bc                                          ; $4677: $03
	inc  bc                                          ; $4678: $03
	ld   bc, $9850                                   ; $4679: $01 $50 $98

jr_054_467c:
	ld   e, d                                        ; $467c: $5a
	halt                                             ; $467d: $76
	ld   d, h                                        ; $467e: $54
	sbc  a                                           ; $467f: $9f
	dec  c                                           ; $4680: $0d
	ld   h, [hl]                                     ; $4681: $66
	sub  c                                           ; $4682: $91
	sbc  [hl]                                        ; $4683: $9e
	ld   [hl], d                                     ; $4684: $72
	ld   d, d                                        ; $4685: $52
	ld   [hl], h                                     ; $4686: $74
	ld   e, e                                        ; $4687: $5b
	ld   [hl], h                                     ; $4688: $74
	sbc  a                                           ; $4689: $9f
	dec  c                                           ; $468a: $0d
	nop                                              ; $468b: $00
	ld   a, [bc]                                     ; $468c: $0a
	dec  c                                           ; $468d: $0d
	nop                                              ; $468e: $00
	nop                                              ; $468f: $00
	rrca                                             ; $4690: $0f
	nop                                              ; $4691: $00
	ld   bc, $b706                                   ; $4692: $01 $06 $b7
	ld   bc, $000f                                   ; $4695: $01 $0f $00
	ld   bc, $6701                                   ; $4698: $01 $01 $67
	adc  l                                           ; $469b: $8d
	adc  h                                           ; $469c: $8c
	ld   l, c                                        ; $469d: $69
	and  c                                           ; $469e: $a1
	sbc  a                                           ; $469f: $9f
	dec  c                                           ; $46a0: $0d
	ld   [bc], a                                     ; $46a1: $02
	and  l                                           ; $46a2: $a5
	inc  b                                           ; $46a3: $04
	xor  d                                           ; $46a4: $aa
	ld   a, l                                        ; $46a5: $7d
	ld   l, a                                        ; $46a6: $6f
	sub  l                                           ; $46a7: $95
	ld   [hl], c                                     ; $46a8: $71
	halt                                             ; $46a9: $76
	dec  c                                           ; $46aa: $0d
	inc  b                                           ; $46ab: $04
	di                                               ; $46ac: $f3
	ld   e, d                                        ; $46ad: $5a
	ld   d, b                                        ; $46ae: $50
	sbc  c                                           ; $46af: $99
	and  c                                           ; $46b0: $a1
	ld   [hl], l                                     ; $46b1: $75
	ld   h, a                                        ; $46b2: $67
	sbc  a                                           ; $46b3: $9f
	dec  c                                           ; $46b4: $0d
	nop                                              ; $46b5: $00
	ld   a, [bc]                                     ; $46b6: $0a
	inc  e                                           ; $46b7: $1c
	inc  bc                                          ; $46b8: $03
	inc  b                                           ; $46b9: $04
	inc  b                                           ; $46ba: $04
	dec  e                                           ; $46bb: $1d
	ld   b, b                                        ; $46bc: $40
	inc  de                                          ; $46bd: $13
	inc  bc                                          ; $46be: $03
	inc  de                                          ; $46bf: $13
	ld   bc, $2901                                   ; $46c0: $01 $01 $29
	nop                                              ; $46c3: $00
	ld   bc, $546b                                   ; $46c4: $01 $6b $54
	ld   [hl], l                                     ; $46c7: $75
	ld   h, a                                        ; $46c8: $67
	ld   e, c                                        ; $46c9: $59
	rst  $38                                         ; $46ca: $ff
	rst  $38                                         ; $46cb: $ff
	dec  c                                           ; $46cc: $0d
	ld   l, e                                        ; $46cd: $6b
	sbc  d                                           ; $46ce: $9a
	ld   [hl], l                                     ; $46cf: $75
	ld   a, l                                        ; $46d0: $7d
	inc  bc                                          ; $46d1: $03
	dec  c                                           ; $46d2: $0d
	inc  b                                           ; $46d3: $04
	ld   a, b                                        ; $46d4: $78
	ld   a, b                                        ; $46d5: $78
	ld   d, d                                        ; $46d6: $52
	sbc  l                                           ; $46d7: $9d
	ld   a, e                                        ; $46d8: $7b
	sbc  a                                           ; $46d9: $9f
	dec  c                                           ; $46da: $0d
	ld   h, [hl]                                     ; $46db: $66
	sub  c                                           ; $46dc: $91
	ld   d, b                                        ; $46dd: $50
	rst  $38                                         ; $46de: $ff
	rst  $38                                         ; $46df: $ff
	dec  c                                           ; $46e0: $0d
	nop                                              ; $46e1: $00
	ld   a, [bc]                                     ; $46e2: $0a
	dec  c                                           ; $46e3: $0d
	nop                                              ; $46e4: $00
	nop                                              ; $46e5: $00
	rrca                                             ; $46e6: $0f
	nop                                              ; $46e7: $00
	ld   bc, $1e09                                   ; $46e8: $01 $09 $1e
	add  hl, hl                                      ; $46eb: $29
	ld   bc, $1c00                                   ; $46ec: $01 $00 $1c
	inc  bc                                          ; $46ef: $03
	inc  b                                           ; $46f0: $04
	inc  b                                           ; $46f1: $04
	dec  e                                           ; $46f2: $1d
	ld   b, b                                        ; $46f3: $40
	inc  de                                          ; $46f4: $13
	inc  bc                                          ; $46f5: $03
	inc  de                                          ; $46f6: $13
	ld   bc, $2901                                   ; $46f7: $01 $01 $29
	nop                                              ; $46fa: $00
	ld   bc, $9e50                                   ; $46fb: $01 $50 $9e
	inc  b                                           ; $46fe: $04
	ld   c, c                                        ; $46ff: $49
	ld   e, c                                        ; $4700: $59
	inc  b                                           ; $4701: $04
	di                                               ; $4702: $f3
	ld   e, d                                        ; $4703: $5a
	ld   d, b                                        ; $4704: $50
	sbc  c                                           ; $4705: $99
	ld   a, b                                        ; $4706: $78
	sub  a                                           ; $4707: $97
	dec  c                                           ; $4708: $0d
	inc  b                                           ; $4709: $04
	ld   d, h                                        ; $470a: $54
	ld   a, c                                        ; $470b: $79
	ld   d, d                                        ; $470c: $52
	ld   d, d                                        ; $470d: $52
	ld   a, h                                        ; $470e: $7c
	sub  [hl]                                        ; $470f: $96
	sbc  a                                           ; $4710: $9f
	dec  c                                           ; $4711: $0d
	ld   l, e                                        ; $4712: $6b
	sbc  d                                           ; $4713: $9a
	ld   h, [hl]                                     ; $4714: $66
	sub  c                                           ; $4715: $91
	ld   d, b                                        ; $4716: $50
	sbc  [hl]                                        ; $4717: $9e
	adc  h                                           ; $4718: $8c
	ld   l, l                                        ; $4719: $6d
	ld   a, e                                        ; $471a: $7b
	sbc  a                                           ; $471b: $9f
	dec  c                                           ; $471c: $0d
	nop                                              ; $471d: $00
	ld   a, [bc]                                     ; $471e: $0a
	dec  c                                           ; $471f: $0d
	nop                                              ; $4720: $00
	nop                                              ; $4721: $00
	rrca                                             ; $4722: $0f
	nop                                              ; $4723: $00
	ld   bc, $1e09                                   ; $4724: $01 $09 $1e
	add  hl, hl                                      ; $4727: $29
	ld   bc, $2300                                   ; $4728: $01 $00 $23
	ld   [hl], h                                     ; $472b: $74
	inc  e                                           ; $472c: $1c
	inc  bc                                          ; $472d: $03
	inc  b                                           ; $472e: $04
	inc  b                                           ; $472f: $04
	ld   bc, $7c61                                   ; $4730: $01 $61 $7c
	ld   [bc], a                                     ; $4733: $02
	cp   $02                                         ; $4734: $fe $02
	ld   e, c                                        ; $4736: $59
	ld   a, h                                        ; $4737: $7c
	dec  b                                           ; $4738: $05
	ld   l, c                                        ; $4739: $69
	ld   a, c                                        ; $473a: $79
	ld   d, b                                        ; $473b: $50
	sbc  c                                           ; $473c: $99
	inc  b                                           ; $473d: $04
	ld   h, c                                        ; $473e: $61
	inc  b                                           ; $473f: $04
	sub  d                                           ; $4740: $92
	and  b                                           ; $4741: $a0
	dec  c                                           ; $4742: $0d
	inc  bc                                          ; $4743: $03
	jr   jr_054_47b7                                 ; $4744: $18 $71

	ld   [hl], h                                     ; $4746: $74
	ld   e, e                                        ; $4747: $5b
	ld   [hl], h                                     ; $4748: $74
	inc  b                                           ; $4749: $04
	db   $e3                                         ; $474a: $e3
	ld   h, l                                        ; $474b: $65
	ld   d, d                                        ; $474c: $52
	and  c                                           ; $474d: $a1
	ld   l, [hl]                                     ; $474e: $6e
	ld   e, a                                        ; $474f: $5f
	ld   [hl], a                                     ; $4750: $77
	rst  $38                                         ; $4751: $ff
	rst  $38                                         ; $4752: $ff
	dec  c                                           ; $4753: $0d
	inc  bc                                          ; $4754: $03
	db   $e4                                         ; $4755: $e4
	dec  b                                           ; $4756: $05
	ld   [hl], l                                     ; $4757: $75
	ld   e, d                                        ; $4758: $5a
	ld   e, e                                        ; $4759: $5b
	sbc  d                                           ; $475a: $9a
	ld   [hl], h                                     ; $475b: $74
	sbc  c                                           ; $475c: $99
	ld   a, h                                        ; $475d: $7c
	sub  [hl]                                        ; $475e: $96
	rst  $38                                         ; $475f: $ff
	rst  $38                                         ; $4760: $ff
	dec  c                                           ; $4761: $0d
	nop                                              ; $4762: $00
	ld   a, [bc]                                     ; $4763: $0a
	ld   bc, $596e                                   ; $4764: $01 $6e $59
	sub  a                                           ; $4767: $97
	sbc  [hl]                                        ; $4768: $9e
	adc  h                                           ; $4769: $8c
	ld   l, b                                        ; $476a: $68
	ld   a, l                                        ; $476b: $7d
	ld   [bc], a                                     ; $476c: $02
	cp   $02                                         ; $476d: $fe $02
	ld   e, c                                        ; $476f: $59
	ld   a, h                                        ; $4770: $7c
	inc  bc                                          ; $4771: $03
	xor  l                                           ; $4772: $ad
	and  c                                           ; $4773: $a1
	inc  b                                           ; $4774: $04
	dec  bc                                          ; $4775: $0b
	ld   b, $0a                                      ; $4776: $06 $0a
	dec  c                                           ; $4778: $0d
	ld   a, c                                        ; $4779: $79
	ld   d, b                                        ; $477a: $50
	sbc  c                                           ; $477b: $99
	ld   bc, $5907                                   ; $477c: $01 $07 $59
	ld   d, d                                        ; $477f: $52
	ld   l, a                                        ; $4780: $6f
	sub  e                                           ; $4781: $93
	ld   d, h                                        ; $4782: $54
	inc  bc                                          ; $4783: $03
	db   $e4                                         ; $4784: $e4
	inc  bc                                          ; $4785: $03
	add  sp, $01                                     ; $4786: $e8 $01
	ld   [$0da0], sp                                 ; $4788: $08 $a0 $0d
	inc  bc                                          ; $478b: $03
	jr   jr_054_47ff                                 ; $478c: $18 $71

	ld   [hl], h                                     ; $478e: $74
	ld   e, e                                        ; $478f: $5b
	ld   [hl], h                                     ; $4790: $74
	ld   l, a                                        ; $4791: $6f
	sub  l                                           ; $4792: $95
	ld   d, h                                        ; $4793: $54
	ld   l, [hl]                                     ; $4794: $6e
	ld   d, d                                        ; $4795: $52
	sbc  a                                           ; $4796: $9f
	dec  c                                           ; $4797: $0d
	nop                                              ; $4798: $00
	ld   a, [bc]                                     ; $4799: $0a
	inc  e                                           ; $479a: $1c
	inc  bc                                          ; $479b: $03
	nop                                              ; $479c: $00
	nop                                              ; $479d: $00
	ld   bc, $fbed                                   ; $479e: $01 $ed $fb
	ret                                              ; $47a1: $c9


	ld   a, l                                        ; $47a2: $7d
	inc  bc                                          ; $47a3: $03
	ret  z                                           ; $47a4: $c8

	ld   e, d                                        ; $47a5: $5a
	inc  bc                                          ; $47a6: $03
	ld   a, [hl+]                                    ; $47a7: $2a
	inc  bc                                          ; $47a8: $03
	add  hl, hl                                      ; $47a9: $29
	ld   h, a                                        ; $47aa: $67
	sbc  c                                           ; $47ab: $99
	sbc  l                                           ; $47ac: $9d
	sbc  a                                           ; $47ad: $9f
	dec  c                                           ; $47ae: $0d
	ld   d, d                                        ; $47af: $52
	ld   d, d                                        ; $47b0: $52
	ld   sp, hl                                      ; $47b1: $f9
	dec  c                                           ; $47b2: $0d
	ld   [hl], l                                     ; $47b3: $75
	ld   a, l                                        ; $47b4: $7d
	sbc  [hl]                                        ; $47b5: $9e
	ld   e, b                                        ; $47b6: $58

jr_054_47b7:
	ld   [bc], a                                     ; $47b7: $02
	add  b                                           ; $47b8: $80
	ld   d, d                                        ; $47b9: $52
	ld   h, a                                        ; $47ba: $67
	sbc  c                                           ; $47bb: $99
	sbc  l                                           ; $47bc: $9d
	sbc  a                                           ; $47bd: $9f
	dec  c                                           ; $47be: $0d
	nop                                              ; $47bf: $00
	ld   a, [bc]                                     ; $47c0: $0a
	dec  c                                           ; $47c1: $0d
	nop                                              ; $47c2: $00
	nop                                              ; $47c3: $00
	rrca                                             ; $47c4: $0f
	nop                                              ; $47c5: $00
	ld   bc, $020c                                   ; $47c6: $01 $0c $02
	ld   c, $03                                      ; $47c9: $0e $03
	rrca                                             ; $47cb: $0f
	inc  bc                                          ; $47cc: $03
	nop                                              ; $47cd: $00
	ld   bc, $1c03                                   ; $47ce: $01 $03 $1c
	inc  b                                           ; $47d1: $04
	ld   d, e                                        ; $47d2: $53
	ld   a, l                                        ; $47d3: $7d
	ld   d, d                                        ; $47d4: $52
	ld   d, d                                        ; $47d5: $52
	ld   sp, hl                                      ; $47d6: $f9
	db   $10                                         ; $47d7: $10
	ld   d, d                                        ; $47d8: $52
	ld   e, l                                        ; $47d9: $5d
	sbc  l                                           ; $47da: $9d
	sub  [hl]                                        ; $47db: $96
	sbc  a                                           ; $47dc: $9f
	dec  c                                           ; $47dd: $0d
	adc  h                                           ; $47de: $8c
	ld   l, b                                        ; $47df: $68
	ld   a, [bc]                                     ; $47e0: $0a
	ld   [bc], a                                     ; $47e1: $02
	inc  bc                                          ; $47e2: $03
	ld   c, a                                        ; $47e3: $4f
	add  [hl]                                        ; $47e4: $86
	rla                                              ; $47e5: $17
	inc  b                                           ; $47e6: $04
	sbc  a                                           ; $47e7: $9f
	ld   a, [bc]                                     ; $47e8: $0a
	inc  bc                                          ; $47e9: $03
	sbc  a                                           ; $47ea: $9f
	dec  c                                           ; $47eb: $0d
	nop                                              ; $47ec: $00
	ld   a, [bc]                                     ; $47ed: $0a
	rrca                                             ; $47ee: $0f
	nop                                              ; $47ef: $00
	ld   bc, $0301                                   ; $47f0: $01 $01 $03
	ld   c, a                                        ; $47f3: $4f
	ld   a, c                                        ; $47f4: $79
	rla                                              ; $47f5: $17
	inc  b                                           ; $47f6: $04
	sbc  a                                           ; $47f7: $9f
	rst  $38                                         ; $47f8: $ff
	rst  $38                                         ; $47f9: $ff
	halt                                             ; $47fa: $76
	sbc  a                                           ; $47fb: $9f
	dec  c                                           ; $47fc: $0d
	dec  b                                           ; $47fd: $05
	ld   l, d                                        ; $47fe: $6a

jr_054_47ff:
	inc  b                                           ; $47ff: $04
	dec  de                                          ; $4800: $1b
	ld   h, l                                        ; $4801: $65
	adc  h                                           ; $4802: $8c
	ld   h, l                                        ; $4803: $65
	ld   l, l                                        ; $4804: $6d
	sbc  a                                           ; $4805: $9f
	dec  c                                           ; $4806: $0d
	nop                                              ; $4807: $00
	ld   a, [bc]                                     ; $4808: $0a
	rrca                                             ; $4809: $0f
	inc  bc                                          ; $480a: $03
	nop                                              ; $480b: $00
	ld   bc, $6803                                   ; $480c: $01 $03 $68
	ld   a, l                                        ; $480f: $7d
	ld   a, [bc]                                     ; $4810: $0a
	ld   [bc], a                                     ; $4811: $02
	ld   [bc], a                                     ; $4812: $02
	inc  e                                           ; $4813: $1c
	ld   a, c                                        ; $4814: $79
	inc  d                                           ; $4815: $14
	inc  b                                           ; $4816: $04
	sbc  a                                           ; $4817: $9f
	ld   a, [bc]                                     ; $4818: $0a
	inc  bc                                          ; $4819: $03
	sbc  a                                           ; $481a: $9f
	dec  c                                           ; $481b: $0d
	nop                                              ; $481c: $00
	ld   a, [bc]                                     ; $481d: $0a
	rrca                                             ; $481e: $0f
	nop                                              ; $481f: $00
	ld   bc, $0201                                   ; $4820: $01 $01 $02
	inc  e                                           ; $4823: $1c
	ld   a, c                                        ; $4824: $79
	inc  d                                           ; $4825: $14
	inc  b                                           ; $4826: $04
	sbc  a                                           ; $4827: $9f
	rst  $38                                         ; $4828: $ff
	rst  $38                                         ; $4829: $ff
	halt                                             ; $482a: $76
	sbc  a                                           ; $482b: $9f
	dec  c                                           ; $482c: $0d
	dec  b                                           ; $482d: $05
	ld   l, d                                        ; $482e: $6a
	inc  b                                           ; $482f: $04
	dec  de                                          ; $4830: $1b
	ld   h, l                                        ; $4831: $65
	adc  h                                           ; $4832: $8c
	ld   h, l                                        ; $4833: $65
	ld   l, l                                        ; $4834: $6d
	sbc  a                                           ; $4835: $9f
	dec  c                                           ; $4836: $0d
	nop                                              ; $4837: $00
	ld   a, [bc]                                     ; $4838: $0a
	rrca                                             ; $4839: $0f
	inc  bc                                          ; $483a: $03
	nop                                              ; $483b: $00
	ld   bc, $6903                                   ; $483c: $01 $03 $69
	ld   [bc], a                                     ; $483f: $02
	xor  d                                           ; $4840: $aa
	ld   a, c                                        ; $4841: $79
	ld   a, [bc]                                     ; $4842: $0a
	ld   [bc], a                                     ; $4843: $02
	inc  bc                                          ; $4844: $03
	ld   c, a                                        ; $4845: $4f
	add  [hl]                                        ; $4846: $86
	add  hl, de                                      ; $4847: $19
	inc  b                                           ; $4848: $04
	sbc  a                                           ; $4849: $9f
	ld   a, [bc]                                     ; $484a: $0a
	inc  bc                                          ; $484b: $03
	sub  [hl]                                        ; $484c: $96
	sbc  a                                           ; $484d: $9f
	dec  c                                           ; $484e: $0d
	nop                                              ; $484f: $00
	ld   a, [bc]                                     ; $4850: $0a
	rrca                                             ; $4851: $0f
	nop                                              ; $4852: $00
	ld   bc, $0301                                   ; $4853: $01 $01 $03
	ld   c, a                                        ; $4856: $4f
	ld   a, c                                        ; $4857: $79
	add  hl, de                                      ; $4858: $19
	inc  b                                           ; $4859: $04
	sbc  a                                           ; $485a: $9f
	rst  $38                                         ; $485b: $ff
	rst  $38                                         ; $485c: $ff
	halt                                             ; $485d: $76
	sbc  a                                           ; $485e: $9f
	dec  c                                           ; $485f: $0d
	ld   h, c                                        ; $4860: $61
	ld   h, c                                        ; $4861: $61
	ld   [hl], l                                     ; $4862: $75
	ld   h, a                                        ; $4863: $67
	ld   e, c                                        ; $4864: $59
	ld   sp, hl                                      ; $4865: $f9
	dec  c                                           ; $4866: $0d
	nop                                              ; $4867: $00
	ld   a, [bc]                                     ; $4868: $0a
	rrca                                             ; $4869: $0f
	inc  bc                                          ; $486a: $03
	nop                                              ; $486b: $00
	ld   bc, $546b                                   ; $486c: $01 $6b $54
	sub  [hl]                                        ; $486f: $96
	sbc  a                                           ; $4870: $9f
	dec  c                                           ; $4871: $0d
	ld   l, e                                        ; $4872: $6b
	ld   a, h                                        ; $4873: $7c
	ld   b, $0a                                      ; $4874: $06 $0a
	sbc  b                                           ; $4876: $98
	ld   a, c                                        ; $4877: $79
	ld   e, c                                        ; $4878: $59
	ld   d, d                                        ; $4879: $52
	ld   l, a                                        ; $487a: $6f
	sub  e                                           ; $487b: $93
	ld   d, h                                        ; $487c: $54
	inc  bc                                          ; $487d: $03
	db   $e4                                         ; $487e: $e4
	inc  bc                                          ; $487f: $03
	add  sp, $0d                                     ; $4880: $e8 $0d
	ld   a, b                                        ; $4882: $78
	ld   d, d                                        ; $4883: $52
	ld   e, c                                        ; $4884: $59
	ld   h, l                                        ; $4885: $65
	sub  a                                           ; $4886: $97
	ld   sp, hl                                      ; $4887: $f9
	dec  c                                           ; $4888: $0d
	nop                                              ; $4889: $00
	ld   a, [bc]                                     ; $488a: $0a
	rrca                                             ; $488b: $0f
	nop                                              ; $488c: $00
	ld   bc, $5001                                   ; $488d: $01 $01 $50
	sbc  b                                           ; $4890: $98
	adc  h                                           ; $4891: $8c
	ld   h, l                                        ; $4892: $65
	ld   l, l                                        ; $4893: $6d
	sbc  a                                           ; $4894: $9f
	dec  c                                           ; $4895: $0d
	rst  $38                                         ; $4896: $ff
	rst  $38                                         ; $4897: $ff
	ld   e, a                                        ; $4898: $5f
	ld   [hl], a                                     ; $4899: $77
	sbc  [hl]                                        ; $489a: $9e
	inc  bc                                          ; $489b: $03
	db   $e4                                         ; $489c: $e4
	inc  bc                                          ; $489d: $03
	push hl                                          ; $489e: $e5
	ld   e, d                                        ; $489f: $5a
	inc  b                                           ; $48a0: $04
	ld   b, l                                        ; $48a1: $45
	ld   [hl], c                                     ; $48a2: $71
	ld   [hl], h                                     ; $48a3: $74
	dec  c                                           ; $48a4: $0d
	ld   d, d                                        ; $48a5: $52
	adc  h                                           ; $48a6: $8c
	ld   l, c                                        ; $48a7: $69
	and  c                                           ; $48a8: $a1
	ld   e, d                                        ; $48a9: $5a
	rst  $38                                         ; $48aa: $ff
	rst  $38                                         ; $48ab: $ff
	dec  c                                           ; $48ac: $0d
	nop                                              ; $48ad: $00
	ld   a, [bc]                                     ; $48ae: $0a
	rrca                                             ; $48af: $0f
	inc  bc                                          ; $48b0: $03
	inc  b                                           ; $48b1: $04
	ld   bc, $9750                                   ; $48b2: $01 $50 $97
	sbc  [hl]                                        ; $48b5: $9e
	ld   l, e                                        ; $48b6: $6b
	ld   d, h                                        ; $48b7: $54
	ld   a, b                                        ; $48b8: $78
	ld   a, h                                        ; $48b9: $7c
	ld   sp, hl                                      ; $48ba: $f9
	dec  c                                           ; $48bb: $0d
	ld   h, [hl]                                     ; $48bc: $66
	sub  c                                           ; $48bd: $91
	ld   d, b                                        ; $48be: $50
	sbc  [hl]                                        ; $48bf: $9e
	ld   l, a                                        ; $48c0: $6f
	sub  l                                           ; $48c1: $95
	ld   [hl], c                                     ; $48c2: $71
	halt                                             ; $48c3: $76
	inc  bc                                          ; $48c4: $03
	db   $e4                                         ; $48c5: $e4
	inc  bc                                          ; $48c6: $03
	push hl                                          ; $48c7: $e5
	inc  bc                                          ; $48c8: $03
	jr   jr_054_493c                                 ; $48c9: $18 $71

	ld   [hl], h                                     ; $48cb: $74
	dec  c                                           ; $48cc: $0d
	ld   e, l                                        ; $48cd: $5d
	sbc  c                                           ; $48ce: $99
	sbc  l                                           ; $48cf: $9d
	ld   a, e                                        ; $48d0: $7b
	sbc  a                                           ; $48d1: $9f
	dec  c                                           ; $48d2: $0d
	nop                                              ; $48d3: $00
	ld   a, [bc]                                     ; $48d4: $0a
	rrca                                             ; $48d5: $0f
	inc  bc                                          ; $48d6: $03
	nop                                              ; $48d7: $00
	ld   bc, $9e50                                   ; $48d8: $01 $50 $9e
	ld   l, e                                        ; $48db: $6b
	ld   d, h                                        ; $48dc: $54
	ld   l, e                                        ; $48dd: $6b
	ld   d, h                                        ; $48de: $54
	ld   [$5d00], sp                                 ; $48df: $08 $00 $5d
	and  c                                           ; $48e2: $a1
	sbc  a                                           ; $48e3: $9f
	dec  c                                           ; $48e4: $0d
	sub  b                                           ; $48e5: $90
	ld   [hl], a                                     ; $48e6: $77
	ld   [hl], c                                     ; $48e7: $71
	ld   [hl], h                                     ; $48e8: $74
	ld   e, l                                        ; $48e9: $5d
	sbc  c                                           ; $48ea: $99
	inc  bc                                          ; $48eb: $03
	ld   l, a                                        ; $48ec: $6f
	ld   a, l                                        ; $48ed: $7d
	inc  b                                           ; $48ee: $04
	ld   d, $02                                      ; $48ef: $16 $02
	ld   a, [$0da0]                                  ; $48f1: $fa $a0 $0d
	adc  h                                           ; $48f4: $8c
	ld   l, a                                        ; $48f5: $6f
	ld   e, d                                        ; $48f6: $5a
	ld   d, [hl]                                     ; $48f7: $56
	ld   a, b                                        ; $48f8: $78
	ld   d, d                                        ; $48f9: $52
	ld   [hl], l                                     ; $48fa: $75
	ld   a, e                                        ; $48fb: $7b
	sbc  a                                           ; $48fc: $9f
	dec  c                                           ; $48fd: $0d
	nop                                              ; $48fe: $00
	ld   a, [bc]                                     ; $48ff: $0a
	dec  c                                           ; $4900: $0d
	nop                                              ; $4901: $00
	nop                                              ; $4902: $00
	rrca                                             ; $4903: $0f
	nop                                              ; $4904: $00
	ld   bc, $5601                                   ; $4905: $01 $01 $56
	rst  $38                                         ; $4908: $ff
	rst  $38                                         ; $4909: $ff
	rst  JumpTable                                         ; $490a: $df
	sbc  [hl]                                        ; $490b: $9e
	rst  JumpTable                                         ; $490c: $df
	db   $ec                                         ; $490d: $ec
	and  e                                           ; $490e: $a3
	ld   h, e                                        ; $490f: $63
	and  c                                           ; $4910: $a1
	ld   sp, hl                                      ; $4911: $f9
	dec  c                                           ; $4912: $0d
	ld   [bc], a                                     ; $4913: $02
	or   l                                           ; $4914: $b5
	sbc  b                                           ; $4915: $98
	inc  b                                           ; $4916: $04
	ld   d, $7c                                      ; $4917: $16 $7c
	inc  bc                                          ; $4919: $03
	ld   a, [hl+]                                    ; $491a: $2a
	inc  bc                                          ; $491b: $03
	add  hl, hl                                      ; $491c: $29
	ld   a, l                                        ; $491d: $7d
	rst  $38                                         ; $491e: $ff
	rst  $38                                         ; $491f: $ff
	dec  c                                           ; $4920: $0d
	rst  $38                                         ; $4921: $ff
	rst  $38                                         ; $4922: $ff
	ld   d, b                                        ; $4923: $50
	sbc  [hl]                                        ; $4924: $9e
	ld   [bc], a                                     ; $4925: $02
	ld   a, a                                        ; $4926: $7f
	ld   [hl], c                                     ; $4927: $71
	ld   [hl], h                                     ; $4928: $74
	ld   h, l                                        ; $4929: $65
	adc  h                                           ; $492a: $8c
	ld   [hl], c                                     ; $492b: $71
	ld   l, l                                        ; $492c: $6d
	sbc  a                                           ; $492d: $9f
	dec  c                                           ; $492e: $0d
	nop                                              ; $492f: $00
	ld   a, [bc]                                     ; $4930: $0a
	ld   bc, $ffff                                   ; $4931: $01 $ff $ff
	inc  bc                                          ; $4934: $03
	dec  c                                           ; $4935: $0d
	inc  b                                           ; $4936: $04
	ld   a, b                                        ; $4937: $78
	ld   a, b                                        ; $4938: $78
	ld   d, d                                        ; $4939: $52
	sbc  [hl]                                        ; $493a: $9e
	ld   [bc], a                                     ; $493b: $02

jr_054_493c:
	sub  a                                           ; $493c: $97
	dec  b                                           ; $493d: $05
	inc  hl                                          ; $493e: $23
	and  b                                           ; $493f: $a0
	ld   l, l                                        ; $4940: $6d
	sub  [hl]                                        ; $4941: $96
	sbc  b                                           ; $4942: $98
	ld   a, c                                        ; $4943: $79
	dec  c                                           ; $4944: $0d
	inc  b                                           ; $4945: $04
	jp   Jump_054_549b                               ; $4946: $c3 $9b $54


	sbc  a                                           ; $4949: $9f
	ld   d, [hl]                                     ; $494a: $56
	rst  $38                                         ; $494b: $ff
	rst  $38                                         ; $494c: $ff
	halt                                             ; $494d: $76
	sbc  [hl]                                        ; $494e: $9e
	adc  h                                           ; $494f: $8c
	sbc  l                                           ; $4950: $9d
	sbc  d                                           ; $4951: $9a
	ld   [bc], a                                     ; $4952: $02
	inc  e                                           ; $4953: $1c
	dec  c                                           ; $4954: $0d
	ld   h, l                                        ; $4955: $65
	ld   [hl], h                                     ; $4956: $74
	halt                                             ; $4957: $76
	rst  $38                                         ; $4958: $ff
	rst  $38                                         ; $4959: $ff
	adc  h                                           ; $495a: $8c
	ld   l, b                                        ; $495b: $68
	ld   a, l                                        ; $495c: $7d
	rst  $38                                         ; $495d: $ff
	rst  $38                                         ; $495e: $ff
	dec  c                                           ; $495f: $0d
	nop                                              ; $4960: $00
	ld   a, [bc]                                     ; $4961: $0a
	add  hl, de                                      ; $4962: $19
	dec  b                                           ; $4963: $05
	inc  bc                                          ; $4964: $03
	inc  bc                                          ; $4965: $03
	ld   c, a                                        ; $4966: $4f
	add  [hl]                                        ; $4967: $86
	add  hl, de                                      ; $4968: $19
	inc  b                                           ; $4969: $04
	sbc  a                                           ; $496a: $9f
	nop                                              ; $496b: $00
	nop                                              ; $496c: $00
	inc  bc                                          ; $496d: $03
	ld   c, a                                        ; $496e: $4f
	add  [hl]                                        ; $496f: $86
	ld   [de], a                                     ; $4970: $12
	ld   de, $9f04                                   ; $4971: $11 $04 $9f
	nop                                              ; $4974: $00
	ld   bc, $4f03                                   ; $4975: $01 $03 $4f
	add  [hl]                                        ; $4978: $86
	rla                                              ; $4979: $17
	inc  b                                           ; $497a: $04
	sbc  a                                           ; $497b: $9f
	nop                                              ; $497c: $00
	ld   [bc], a                                     ; $497d: $02
	rlca                                             ; $497e: $07
	ld   a, $04                                      ; $497f: $3e $04

jr_054_4981:
	ld   [bc], a                                     ; $4981: $02
	inc  bc                                          ; $4982: $03
	ld   bc, $2000                                   ; $4983: $01 $00 $20
	nop                                              ; $4986: $00
	rlca                                             ; $4987: $07
	ld   d, e                                        ; $4988: $53
	inc  b                                           ; $4989: $04
	ld   [bc], a                                     ; $498a: $02
	inc  bc                                          ; $498b: $03
	ld   bc, $2001                                   ; $498c: $01 $01 $20
	nop                                              ; $498f: $00
	rlca                                             ; $4990: $07
	xor  h                                           ; $4991: $ac
	inc  b                                           ; $4992: $04
	ld   [bc], a                                     ; $4993: $02
	inc  bc                                          ; $4994: $03
	ld   bc, $2002                                   ; $4995: $01 $02 $20
	nop                                              ; $4998: $00
	ld   b, $29                                      ; $4999: $06 $29
	inc  b                                           ; $499b: $04
	rrca                                             ; $499c: $0f
	nop                                              ; $499d: $00
	ld   bc, $0301                                   ; $499e: $01 $01 $03
	ld   c, a                                        ; $49a1: $4f
	add  [hl]                                        ; $49a2: $86
	dec  b                                           ; $49a3: $05
	db   $dd                                         ; $49a4: $dd
	adc  h                                           ; $49a5: $8c
	ld   a, b                                        ; $49a6: $78
	ld   e, e                                        ; $49a7: $5b
	sub  c                                           ; $49a8: $91
	rst  $38                                         ; $49a9: $ff
	rst  $38                                         ; $49aa: $ff
	dec  c                                           ; $49ab: $0d
	nop                                              ; $49ac: $00
	ld   a, [bc]                                     ; $49ad: $0a
	ld   b, $ef                                      ; $49ae: $06 $ef
	inc  bc                                          ; $49b0: $03
	rrca                                             ; $49b1: $0f
	nop                                              ; $49b2: $00
	ld   bc, $9601                                   ; $49b3: $01 $01 $96
	ld   h, l                                        ; $49b6: $65
	sbc  [hl]                                        ; $49b7: $9e
	ld   l, [hl]                                     ; $49b8: $6e
	ld   d, d                                        ; $49b9: $52
	ld   h, [hl]                                     ; $49ba: $66
	sub  l                                           ; $49bb: $95
	ld   d, h                                        ; $49bc: $54
	add  h                                           ; $49bd: $84
	ld   l, [hl]                                     ; $49be: $6e
	sbc  a                                           ; $49bf: $9f
	dec  c                                           ; $49c0: $0d
	nop                                              ; $49c1: $00
	ld   a, [bc]                                     ; $49c2: $0a
	ld   b, $07                                      ; $49c3: $06 $07
	dec  b                                           ; $49c5: $05
	rrca                                             ; $49c6: $0f
	nop                                              ; $49c7: $00
	ld   bc, $030c                                   ; $49c8: $01 $0c $03
	ld   bc, $9e50                                   ; $49cb: $01 $50 $9e
	and  l                                           ; $49ce: $a5
	rst  ToBoot                                         ; $49cf: $c7
	call nz, $0dfa                                   ; $49d0: $c4 $fa $0d
	ld   h, c                                        ; $49d3: $61
	sbc  [hl]                                        ; $49d4: $9e
	ld   h, c                                        ; $49d5: $61
	and  c                                           ; $49d6: $a1
	ld   a, b                                        ; $49d7: $78
	halt                                             ; $49d8: $76
	ld   h, c                                        ; $49d9: $61
	sbc  e                                           ; $49da: $9b
	inc  b                                           ; $49db: $04
	jr   c, jr_054_4981                              ; $49dc: $38 $a3

	xor  $a5                                         ; $49de: $ee $a5
	ld   e, d                                        ; $49e0: $5a
	dec  c                                           ; $49e1: $0d
	rst  $38                                         ; $49e2: $ff
	rst  $38                                         ; $49e3: $ff
	ld   [hl], d                                     ; $49e4: $72
	adc  h                                           ; $49e5: $8c
	ld   l, b                                        ; $49e6: $68
	ld   d, d                                        ; $49e7: $52
	ld   l, l                                        ; $49e8: $6d
	sub  [hl]                                        ; $49e9: $96
	rst  $38                                         ; $49ea: $ff
	rst  $38                                         ; $49eb: $ff
	dec  c                                           ; $49ec: $0d
	nop                                              ; $49ed: $00
	ld   a, [bc]                                     ; $49ee: $0a
	rlca                                             ; $49ef: $07
	pop  af                                          ; $49f0: $f1
	rlca                                             ; $49f1: $07
	inc  bc                                          ; $49f2: $03
	jr   nz, jr_054_49f6                             ; $49f3: $20 $01

	ld   a, [bc]                                     ; $49f5: $0a

jr_054_49f6:
	inc  hl                                          ; $49f6: $23
	nop                                              ; $49f7: $00
	ld   bc, $5490                                   ; $49f8: $01 $90 $54
	ld   [bc], a                                     ; $49fb: $02
	jr   nz, jr_054_4a02                             ; $49fc: $20 $04

	add  hl, hl                                      ; $49fe: $29
	sbc  [hl]                                        ; $49ff: $9e
	ld   [bc], a                                     ; $4a00: $02
	xor  h                                           ; $4a01: $ac

jr_054_4a02:
	ld   a, h                                        ; $4a02: $7c
	inc  b                                           ; $4a03: $04
	ld   a, d                                        ; $4a04: $7a
	inc  bc                                          ; $4a05: $03
	ld   c, e                                        ; $4a06: $4b
	ld   a, c                                        ; $4a07: $79
	dec  c                                           ; $4a08: $0d
	sub  b                                           ; $4a09: $90
	ld   [hl], a                                     ; $4a0a: $77
	ld   [hl], c                                     ; $4a0b: $71
	ld   [hl], h                                     ; $4a0c: $74
	halt                                             ; $4a0d: $76
	rst  $38                                         ; $4a0e: $ff
	rst  $38                                         ; $4a0f: $ff
	dec  c                                           ; $4a10: $0d
	nop                                              ; $4a11: $00
	ld   a, [bc]                                     ; $4a12: $0a
	ld   sp, $2040                                   ; $4a13: $31 $40 $20
	inc  bc                                          ; $4a16: $03
	jr   nz, jr_054_4a1a                             ; $4a17: $20 $01

	ld   a, [bc]                                     ; $4a19: $0a

jr_054_4a1a:
	add  hl, hl                                      ; $4a1a: $29
	nop                                              ; $4a1b: $00
	ld   b, $ef                                      ; $4a1c: $06 $ef
	inc  bc                                          ; $4a1e: $03
	rrca                                             ; $4a1f: $0f
	nop                                              ; $4a20: $00
	ld   bc, $7501                                   ; $4a21: $01 $01 $75
	sbc  [hl]                                        ; $4a24: $9e
	ld   [hl], d                                     ; $4a25: $72
	ld   e, h                                        ; $4a26: $5c
	ld   a, c                                        ; $4a27: $79
	inc  bc                                          ; $4a28: $03
	ld   h, b                                        ; $4a29: $60
	and  b                                           ; $4a2a: $a0
	ld   [bc], a                                     ; $4a2b: $02
	jp   nc, Jump_054_7452                           ; $4a2c: $d2 $52 $74

	rst  $38                                         ; $4a2f: $ff
	rst  $38                                         ; $4a30: $ff
	dec  c                                           ; $4a31: $0d
	nop                                              ; $4a32: $00
	inc  c                                           ; $4a33: $0c
	inc  bc                                          ; $4a34: $03
	ld   bc, $c7a5                                   ; $4a35: $01 $a5 $c7
	call nz, $0dfa                                   ; $4a38: $c4 $fa $0d
	rst  $38                                         ; $4a3b: $ff
	rst  $38                                         ; $4a3c: $ff
	inc  b                                           ; $4a3d: $04
	add  a                                           ; $4a3e: $87
	ld   l, [hl]                                     ; $4a3f: $6e
	rst  $38                                         ; $4a40: $ff
	rst  $38                                         ; $4a41: $ff
	adc  h                                           ; $4a42: $8c
	ld   l, a                                        ; $4a43: $6f
	ld   e, d                                        ; $4a44: $5a
	ld   d, [hl]                                     ; $4a45: $56
	ld   l, l                                        ; $4a46: $6d
	dec  c                                           ; $4a47: $0d
	nop                                              ; $4a48: $00
	ld   a, [bc]                                     ; $4a49: $0a
	rlca                                             ; $4a4a: $07
	pop  af                                          ; $4a4b: $f1
	rlca                                             ; $4a4c: $07
	inc  bc                                          ; $4a4d: $03
	jr   nz, jr_054_4a51                             ; $4a4e: $20 $01

	ld   a, [bc]                                     ; $4a50: $0a

jr_054_4a51:
	inc  hl                                          ; $4a51: $23
	nop                                              ; $4a52: $00
	ld   bc, $5490                                   ; $4a53: $01 $90 $54
	ld   [bc], a                                     ; $4a56: $02
	jr   nz, jr_054_4a5d                             ; $4a57: $20 $04

	add  hl, hl                                      ; $4a59: $29
	sbc  [hl]                                        ; $4a5a: $9e
	ld   [bc], a                                     ; $4a5b: $02
	xor  h                                           ; $4a5c: $ac

jr_054_4a5d:
	ld   a, h                                        ; $4a5d: $7c
	inc  b                                           ; $4a5e: $04
	ld   a, d                                        ; $4a5f: $7a
	inc  bc                                          ; $4a60: $03
	ld   c, e                                        ; $4a61: $4b
	ld   a, c                                        ; $4a62: $79
	dec  c                                           ; $4a63: $0d
	sub  b                                           ; $4a64: $90
	ld   [hl], a                                     ; $4a65: $77
	ld   [hl], c                                     ; $4a66: $71
	ld   [hl], h                                     ; $4a67: $74
	halt                                             ; $4a68: $76
	rst  $38                                         ; $4a69: $ff
	rst  $38                                         ; $4a6a: $ff
	dec  c                                           ; $4a6b: $0d
	nop                                              ; $4a6c: $00
	ld   a, [bc]                                     ; $4a6d: $0a
	ld   sp, $2040                                   ; $4a6e: $31 $40 $20
	inc  bc                                          ; $4a71: $03
	jr   nz, jr_054_4a75                             ; $4a72: $20 $01

	ld   a, [bc]                                     ; $4a74: $0a

jr_054_4a75:
	add  hl, hl                                      ; $4a75: $29
	nop                                              ; $4a76: $00
	ld   b, $ef                                      ; $4a77: $06 $ef
	inc  bc                                          ; $4a79: $03
	ld   bc, $7463                                   ; $4a7a: $01 $63 $74
	inc  bc                                          ; $4a7d: $03
	ld   l, b                                        ; $4a7e: $68
	ld   a, l                                        ; $4a7f: $7d
	rst  $38                                         ; $4a80: $ff
	rst  $38                                         ; $4a81: $ff
	dec  c                                           ; $4a82: $0d
	nop                                              ; $4a83: $00
	ld   a, [bc]                                     ; $4a84: $0a
	add  hl, de                                      ; $4a85: $19
	dec  b                                           ; $4a86: $05
	inc  bc                                          ; $4a87: $03
	ld   [bc], a                                     ; $4a88: $02
	inc  e                                           ; $4a89: $1c
	add  [hl]                                        ; $4a8a: $86
	inc  d                                           ; $4a8b: $14
	inc  b                                           ; $4a8c: $04
	sbc  a                                           ; $4a8d: $9f
	nop                                              ; $4a8e: $00
	nop                                              ; $4a8f: $00
	ld   [bc], a                                     ; $4a90: $02
	inc  e                                           ; $4a91: $1c
	add  [hl]                                        ; $4a92: $86
	dec  d                                           ; $4a93: $15
	inc  b                                           ; $4a94: $04
	sbc  a                                           ; $4a95: $9f
	nop                                              ; $4a96: $00
	ld   bc, $6003                                   ; $4a97: $01 $03 $60
	add  [hl]                                        ; $4a9a: $86
	inc  d                                           ; $4a9b: $14
	inc  b                                           ; $4a9c: $04
	sbc  a                                           ; $4a9d: $9f
	nop                                              ; $4a9e: $00
	ld   [bc], a                                     ; $4a9f: $02
	rlca                                             ; $4aa0: $07
	ld   h, c                                        ; $4aa1: $61
	dec  b                                           ; $4aa2: $05
	ld   [bc], a                                     ; $4aa3: $02
	inc  bc                                          ; $4aa4: $03
	ld   bc, $2000                                   ; $4aa5: $01 $00 $20
	nop                                              ; $4aa8: $00
	rlca                                             ; $4aa9: $07
	halt                                             ; $4aaa: $76
	dec  b                                           ; $4aab: $05
	ld   [bc], a                                     ; $4aac: $02
	inc  bc                                          ; $4aad: $03
	ld   bc, $2001                                   ; $4aae: $01 $01 $20
	nop                                              ; $4ab1: $00
	rlca                                             ; $4ab2: $07
	rlc  l                                           ; $4ab3: $cb $05
	ld   [bc], a                                     ; $4ab5: $02
	inc  bc                                          ; $4ab6: $03
	ld   bc, $2002                                   ; $4ab7: $01 $02 $20
	nop                                              ; $4aba: $00
	ld   b, $4b                                      ; $4abb: $06 $4b
	dec  b                                           ; $4abd: $05
	rrca                                             ; $4abe: $0f
	nop                                              ; $4abf: $00
	ld   bc, $7701                                   ; $4ac0: $01 $01 $77
	ld   [hl], c                                     ; $4ac3: $71
	ld   l, a                                        ; $4ac4: $6f
	ld   e, c                                        ; $4ac5: $59
	ld   [bc], a                                     ; $4ac6: $02
	ld   a, a                                        ; $4ac7: $7f
	ld   e, c                                        ; $4ac8: $59
	ld   a, b                                        ; $4ac9: $78
	ld   e, e                                        ; $4aca: $5b
	sub  c                                           ; $4acb: $91
	rst  $38                                         ; $4acc: $ff
	rst  $38                                         ; $4acd: $ff
	dec  c                                           ; $4ace: $0d
	nop                                              ; $4acf: $00
	ld   a, [bc]                                     ; $4ad0: $0a
	ld   b, $12                                      ; $4ad1: $06 $12
	dec  b                                           ; $4ad3: $05
	rrca                                             ; $4ad4: $0f
	nop                                              ; $4ad5: $00
	ld   bc, $9601                                   ; $4ad6: $01 $01 $96
	ld   h, l                                        ; $4ad9: $65
	sbc  [hl]                                        ; $4ada: $9e
	ld   l, [hl]                                     ; $4adb: $6e
	ld   d, d                                        ; $4adc: $52
	ld   h, [hl]                                     ; $4add: $66
	sub  l                                           ; $4ade: $95
	ld   d, h                                        ; $4adf: $54
	add  h                                           ; $4ae0: $84
	ld   l, [hl]                                     ; $4ae1: $6e
	sbc  a                                           ; $4ae2: $9f
	dec  c                                           ; $4ae3: $0d
	nop                                              ; $4ae4: $00
	ld   a, [bc]                                     ; $4ae5: $0a
	ld   b, $28                                      ; $4ae6: $06 $28
	ld   b, $0f                                      ; $4ae8: $06 $0f
	nop                                              ; $4aea: $00
	ld   bc, $030c                                   ; $4aeb: $01 $0c $03
	ld   bc, $9d54                                   ; $4aee: $01 $54 $9d
	ld   [hl], c                                     ; $4af1: $71
	ld   a, [$a510]                                  ; $4af2: $fa $10 $a5
	call nz, $fcc7                                   ; $4af5: $c4 $c7 $fc
	db   $fc                                         ; $4af8: $fc
	db   $fc                                         ; $4af9: $fc
	dec  c                                           ; $4afa: $0d
	rst  $38                                         ; $4afb: $ff
	rst  $38                                         ; $4afc: $ff
	ld   a, b                                        ; $4afd: $78
	sbc  [hl]                                        ; $4afe: $9e
	ld   a, b                                        ; $4aff: $78
	and  c                                           ; $4b00: $a1
	ld   l, [hl]                                     ; $4b01: $6e
	ld   h, c                                        ; $4b02: $61
	ld   a, h                                        ; $4b03: $7c
	ld   [bc], a                                     ; $4b04: $02
	ld   e, b                                        ; $4b05: $58
	ld   [bc], a                                     ; $4b06: $02
	ld   d, [hl]                                     ; $4b07: $56
	ld   a, l                                        ; $4b08: $7d
	rst  $38                                         ; $4b09: $ff
	rst  $38                                         ; $4b0a: $ff
	dec  c                                           ; $4b0b: $0d
	nop                                              ; $4b0c: $00
	ld   a, [bc]                                     ; $4b0d: $0a
	rlca                                             ; $4b0e: $07
	pop  af                                          ; $4b0f: $f1
	rlca                                             ; $4b10: $07
	inc  bc                                          ; $4b11: $03
	jr   nz, jr_054_4b15                             ; $4b12: $20 $01

	ld   a, [bc]                                     ; $4b14: $0a

jr_054_4b15:
	inc  hl                                          ; $4b15: $23
	nop                                              ; $4b16: $00
	ld   bc, $5490                                   ; $4b17: $01 $90 $54
	ld   [bc], a                                     ; $4b1a: $02
	jr   nz, jr_054_4b21                             ; $4b1b: $20 $04

	add  hl, hl                                      ; $4b1d: $29
	sbc  [hl]                                        ; $4b1e: $9e
	ld   [bc], a                                     ; $4b1f: $02
	xor  h                                           ; $4b20: $ac

jr_054_4b21:
	ld   a, h                                        ; $4b21: $7c
	inc  b                                           ; $4b22: $04
	ld   a, d                                        ; $4b23: $7a
	inc  bc                                          ; $4b24: $03
	ld   c, e                                        ; $4b25: $4b
	ld   a, c                                        ; $4b26: $79
	dec  c                                           ; $4b27: $0d
	sub  b                                           ; $4b28: $90
	ld   [hl], a                                     ; $4b29: $77
	ld   [hl], c                                     ; $4b2a: $71
	ld   [hl], h                                     ; $4b2b: $74
	halt                                             ; $4b2c: $76
	rst  $38                                         ; $4b2d: $ff
	rst  $38                                         ; $4b2e: $ff
	dec  c                                           ; $4b2f: $0d
	nop                                              ; $4b30: $00
	ld   a, [bc]                                     ; $4b31: $0a
	ld   sp, $2040                                   ; $4b32: $31 $40 $20
	inc  bc                                          ; $4b35: $03
	jr   nz, jr_054_4b39                             ; $4b36: $20 $01

	ld   a, [bc]                                     ; $4b38: $0a

jr_054_4b39:
	add  hl, hl                                      ; $4b39: $29
	nop                                              ; $4b3a: $00
	ld   b, $12                                      ; $4b3b: $06 $12
	dec  b                                           ; $4b3d: $05
	rrca                                             ; $4b3e: $0f
	nop                                              ; $4b3f: $00
	ld   bc, $030c                                   ; $4b40: $01 $0c $03
	ld   bc, $7154                                   ; $4b43: $01 $54 $71
	ld   a, [$a510]                                  ; $4b46: $fa $10 $a5
	call nz, $fcc0                                   ; $4b49: $c4 $c0 $fc
	db   $fc                                         ; $4b4c: $fc
	db   $fc                                         ; $4b4d: $fc
	dec  c                                           ; $4b4e: $0d
	rst  $38                                         ; $4b4f: $ff
	rst  $38                                         ; $4b50: $ff
	inc  bc                                          ; $4b51: $03
	inc  h                                           ; $4b52: $24
	ld   h, l                                        ; $4b53: $65
	inc  bc                                          ; $4b54: $03
	dec  de                                          ; $4b55: $1b
	sbc  b                                           ; $4b56: $98
	inc  b                                           ; $4b57: $04
	di                                               ; $4b58: $f3
	ld   a, h                                        ; $4b59: $7c
	sbc  l                                           ; $4b5a: $9d
	sub  a                                           ; $4b5b: $97
	ld   sp, hl                                      ; $4b5c: $f9
	dec  c                                           ; $4b5d: $0d
	rst  $38                                         ; $4b5e: $ff
	ld   h, e                                        ; $4b5f: $63
	ld   e, l                                        ; $4b60: $5d
	sub  a                                           ; $4b61: $97
	ld   h, e                                        ; $4b62: $63
	and  c                                           ; $4b63: $a1
	ld   a, h                                        ; $4b64: $7c
	ld   e, c                                        ; $4b65: $59
	rst  $38                                         ; $4b66: $ff
	rst  $38                                         ; $4b67: $ff
	dec  c                                           ; $4b68: $0d
	nop                                              ; $4b69: $00
	ld   a, [bc]                                     ; $4b6a: $0a
	rlca                                             ; $4b6b: $07
	pop  af                                          ; $4b6c: $f1
	rlca                                             ; $4b6d: $07
	inc  bc                                          ; $4b6e: $03
	jr   nz, jr_054_4b72                             ; $4b6f: $20 $01

	ld   a, [bc]                                     ; $4b71: $0a

jr_054_4b72:
	inc  hl                                          ; $4b72: $23
	nop                                              ; $4b73: $00
	ld   bc, $5490                                   ; $4b74: $01 $90 $54
	ld   [bc], a                                     ; $4b77: $02
	jr   nz, jr_054_4b7e                             ; $4b78: $20 $04

	add  hl, hl                                      ; $4b7a: $29
	sbc  [hl]                                        ; $4b7b: $9e
	ld   [bc], a                                     ; $4b7c: $02
	xor  h                                           ; $4b7d: $ac

jr_054_4b7e:
	ld   a, h                                        ; $4b7e: $7c
	inc  b                                           ; $4b7f: $04
	ld   a, d                                        ; $4b80: $7a
	inc  bc                                          ; $4b81: $03
	ld   c, e                                        ; $4b82: $4b
	ld   a, c                                        ; $4b83: $79
	dec  c                                           ; $4b84: $0d
	sub  b                                           ; $4b85: $90
	ld   [hl], a                                     ; $4b86: $77
	ld   [hl], c                                     ; $4b87: $71
	ld   [hl], h                                     ; $4b88: $74
	halt                                             ; $4b89: $76
	rst  $38                                         ; $4b8a: $ff
	rst  $38                                         ; $4b8b: $ff
	dec  c                                           ; $4b8c: $0d
	nop                                              ; $4b8d: $00
	ld   a, [bc]                                     ; $4b8e: $0a
	ld   sp, $2040                                   ; $4b8f: $31 $40 $20
	inc  bc                                          ; $4b92: $03
	jr   nz, jr_054_4b96                             ; $4b93: $20 $01

	ld   a, [bc]                                     ; $4b95: $0a

jr_054_4b96:
	add  hl, hl                                      ; $4b96: $29
	nop                                              ; $4b97: $00
	ld   b, $12                                      ; $4b98: $06 $12
	dec  b                                           ; $4b9a: $05
	ld   bc, $656b                                   ; $4b9b: $01 $6b $65
	ld   [hl], h                                     ; $4b9e: $74
	inc  bc                                          ; $4b9f: $03
	ld   l, c                                        ; $4ba0: $69
	ld   [bc], a                                     ; $4ba1: $02
	xor  d                                           ; $4ba2: $aa
	ld   a, l                                        ; $4ba3: $7d
	rst  $38                                         ; $4ba4: $ff
	rst  $38                                         ; $4ba5: $ff
	dec  c                                           ; $4ba6: $0d
	nop                                              ; $4ba7: $00
	ld   a, [bc]                                     ; $4ba8: $0a
	add  hl, de                                      ; $4ba9: $19
	dec  b                                           ; $4baa: $05
	inc  bc                                          ; $4bab: $03
	inc  bc                                          ; $4bac: $03
	ld   c, a                                        ; $4bad: $4f
	add  [hl]                                        ; $4bae: $86
	rla                                              ; $4baf: $17
	inc  b                                           ; $4bb0: $04
	sbc  a                                           ; $4bb1: $9f
	nop                                              ; $4bb2: $00
	nop                                              ; $4bb3: $00
	ld   [bc], a                                     ; $4bb4: $02
	inc  e                                           ; $4bb5: $1c
	add  [hl]                                        ; $4bb6: $86
	rla                                              ; $4bb7: $17
	inc  b                                           ; $4bb8: $04
	sbc  a                                           ; $4bb9: $9f
	nop                                              ; $4bba: $00
	ld   bc, $aa02                                   ; $4bbb: $01 $02 $aa
	sbc  e                                           ; $4bbe: $9b
	add  [hl]                                        ; $4bbf: $86
	rla                                              ; $4bc0: $17
	inc  b                                           ; $4bc1: $04
	sbc  a                                           ; $4bc2: $9f
	nop                                              ; $4bc3: $00
	ld   [bc], a                                     ; $4bc4: $02
	rlca                                             ; $4bc5: $07
	add  l                                           ; $4bc6: $85
	ld   b, $02                                      ; $4bc7: $06 $02
	inc  bc                                          ; $4bc9: $03
	ld   bc, $2000                                   ; $4bca: $01 $00 $20
	nop                                              ; $4bcd: $00
	rlca                                             ; $4bce: $07
	sbc  d                                           ; $4bcf: $9a
	ld   b, $02                                      ; $4bd0: $06 $02
	inc  bc                                          ; $4bd2: $03
	ld   bc, $2001                                   ; $4bd3: $01 $01 $20
	nop                                              ; $4bd6: $00
	rlca                                             ; $4bd7: $07
	db   $e3                                         ; $4bd8: $e3
	ld   b, $02                                      ; $4bd9: $06 $02
	inc  bc                                          ; $4bdb: $03
	ld   bc, $2002                                   ; $4bdc: $01 $02 $20
	nop                                              ; $4bdf: $00
	ld   b, $70                                      ; $4be0: $06 $70
	ld   b, $0f                                      ; $4be2: $06 $0f
	nop                                              ; $4be4: $00
	ld   bc, $0301                                   ; $4be5: $01 $01 $03
	ld   c, a                                        ; $4be8: $4f
	add  [hl]                                        ; $4be9: $86
	dec  b                                           ; $4bea: $05
	db   $dd                                         ; $4beb: $dd
	adc  h                                           ; $4bec: $8c
	ld   a, b                                        ; $4bed: $78
	ld   e, e                                        ; $4bee: $5b
	sub  c                                           ; $4bef: $91
	rst  $38                                         ; $4bf0: $ff
	rst  $38                                         ; $4bf1: $ff
	dec  c                                           ; $4bf2: $0d
	nop                                              ; $4bf3: $00
	ld   a, [bc]                                     ; $4bf4: $0a
	ld   b, $36                                      ; $4bf5: $06 $36
	ld   b, $0f                                      ; $4bf7: $06 $0f
	nop                                              ; $4bf9: $00
	ld   bc, $9601                                   ; $4bfa: $01 $01 $96
	ld   h, l                                        ; $4bfd: $65
	sbc  [hl]                                        ; $4bfe: $9e
	ld   l, [hl]                                     ; $4bff: $6e
	ld   d, d                                        ; $4c00: $52
	ld   h, [hl]                                     ; $4c01: $66
	sub  l                                           ; $4c02: $95
	ld   d, h                                        ; $4c03: $54
	add  h                                           ; $4c04: $84
	ld   l, [hl]                                     ; $4c05: $6e
	sbc  a                                           ; $4c06: $9f
	dec  c                                           ; $4c07: $0d
	nop                                              ; $4c08: $00
	ld   a, [bc]                                     ; $4c09: $0a
	ld   b, $36                                      ; $4c0a: $06 $36
	rlca                                             ; $4c0c: $07
	rrca                                             ; $4c0d: $0f
	nop                                              ; $4c0e: $00
	ld   bc, $030c                                   ; $4c0f: $01 $0c $03
	ld   bc, $c7a5                                   ; $4c12: $01 $a5 $c7
	call nz, $0dfa                                   ; $4c15: $c4 $fa $0d
	rst  $38                                         ; $4c18: $ff
	rst  $38                                         ; $4c19: $ff
	inc  b                                           ; $4c1a: $04
	add  a                                           ; $4c1b: $87
	ld   e, c                                        ; $4c1c: $59
	rst  $38                                         ; $4c1d: $ff
	rst  $38                                         ; $4c1e: $ff
	rst  $38                                         ; $4c1f: $ff
	rst  $38                                         ; $4c20: $ff
	rst  $38                                         ; $4c21: $ff
	rst  $38                                         ; $4c22: $ff
	dec  c                                           ; $4c23: $0d
	nop                                              ; $4c24: $00
	ld   a, [bc]                                     ; $4c25: $0a
	rlca                                             ; $4c26: $07
	pop  af                                          ; $4c27: $f1
	rlca                                             ; $4c28: $07
	inc  bc                                          ; $4c29: $03
	jr   nz, jr_054_4c2d                             ; $4c2a: $20 $01

	ld   a, [bc]                                     ; $4c2c: $0a

jr_054_4c2d:
	inc  hl                                          ; $4c2d: $23
	nop                                              ; $4c2e: $00
	ld   bc, $5490                                   ; $4c2f: $01 $90 $54
	ld   [bc], a                                     ; $4c32: $02
	jr   nz, jr_054_4c39                             ; $4c33: $20 $04

	add  hl, hl                                      ; $4c35: $29
	sbc  [hl]                                        ; $4c36: $9e
	ld   [bc], a                                     ; $4c37: $02
	xor  h                                           ; $4c38: $ac

jr_054_4c39:
	ld   a, h                                        ; $4c39: $7c
	inc  b                                           ; $4c3a: $04
	ld   a, d                                        ; $4c3b: $7a
	inc  bc                                          ; $4c3c: $03
	ld   c, e                                        ; $4c3d: $4b
	ld   a, c                                        ; $4c3e: $79
	dec  c                                           ; $4c3f: $0d
	sub  b                                           ; $4c40: $90
	ld   [hl], a                                     ; $4c41: $77
	ld   [hl], c                                     ; $4c42: $71
	ld   [hl], h                                     ; $4c43: $74
	halt                                             ; $4c44: $76
	rst  $38                                         ; $4c45: $ff
	rst  $38                                         ; $4c46: $ff
	dec  c                                           ; $4c47: $0d
	nop                                              ; $4c48: $00
	ld   a, [bc]                                     ; $4c49: $0a
	ld   sp, $2040                                   ; $4c4a: $31 $40 $20
	inc  bc                                          ; $4c4d: $03
	jr   nz, jr_054_4c51                             ; $4c4e: $20 $01

	ld   a, [bc]                                     ; $4c50: $0a

jr_054_4c51:
	add  hl, hl                                      ; $4c51: $29
	nop                                              ; $4c52: $00
	ld   b, $36                                      ; $4c53: $06 $36
	ld   b, $0f                                      ; $4c55: $06 $0f
	nop                                              ; $4c57: $00
	ld   bc, $030c                                   ; $4c58: $01 $0c $03
	ld   bc, $c4a5                                   ; $4c5b: $01 $a5 $c4
	rst  ToBoot                                         ; $4c5e: $c7
	db   $fc                                         ; $4c5f: $fc
	db   $fc                                         ; $4c60: $fc
	db   $fc                                         ; $4c61: $fc
	db   $fc                                         ; $4c62: $fc
	dec  c                                           ; $4c63: $0d
	ld   a, b                                        ; $4c64: $78
	and  c                                           ; $4c65: $a1
	ld   [hl], l                                     ; $4c66: $75
	ret  nz                                          ; $4c67: $c0

	db   $eb                                         ; $4c68: $eb
	and  l                                           ; $4c69: $a5
	ld   e, d                                        ; $4c6a: $5a
	ld   h, c                                        ; $4c6b: $61
	and  c                                           ; $4c6c: $a1
	ld   a, b                                        ; $4c6d: $78
	dec  c                                           ; $4c6e: $0d
	halt                                             ; $4c6f: $76
	ld   h, c                                        ; $4c70: $61
	ld   a, c                                        ; $4c71: $79
	rst  $38                                         ; $4c72: $ff
	rst  $38                                         ; $4c73: $ff
	rst  $38                                         ; $4c74: $ff
	rst  $38                                         ; $4c75: $ff
	dec  c                                           ; $4c76: $0d
	nop                                              ; $4c77: $00
	ld   a, [bc]                                     ; $4c78: $0a
	rlca                                             ; $4c79: $07
	pop  af                                          ; $4c7a: $f1
	rlca                                             ; $4c7b: $07
	inc  bc                                          ; $4c7c: $03
	jr   nz, jr_054_4c80                             ; $4c7d: $20 $01

	ld   a, [bc]                                     ; $4c7f: $0a

jr_054_4c80:
	inc  hl                                          ; $4c80: $23
	nop                                              ; $4c81: $00
	ld   bc, $5490                                   ; $4c82: $01 $90 $54
	ld   [bc], a                                     ; $4c85: $02
	jr   nz, jr_054_4c8c                             ; $4c86: $20 $04

	add  hl, hl                                      ; $4c88: $29
	sbc  [hl]                                        ; $4c89: $9e
	ld   [bc], a                                     ; $4c8a: $02
	xor  h                                           ; $4c8b: $ac

jr_054_4c8c:
	ld   a, h                                        ; $4c8c: $7c
	inc  b                                           ; $4c8d: $04
	ld   a, d                                        ; $4c8e: $7a
	inc  bc                                          ; $4c8f: $03
	ld   c, e                                        ; $4c90: $4b
	ld   a, c                                        ; $4c91: $79
	dec  c                                           ; $4c92: $0d
	sub  b                                           ; $4c93: $90
	ld   [hl], a                                     ; $4c94: $77
	ld   [hl], c                                     ; $4c95: $71
	ld   [hl], h                                     ; $4c96: $74
	halt                                             ; $4c97: $76
	rst  $38                                         ; $4c98: $ff
	rst  $38                                         ; $4c99: $ff
	dec  c                                           ; $4c9a: $0d
	nop                                              ; $4c9b: $00
	ld   a, [bc]                                     ; $4c9c: $0a
	ld   sp, $2040                                   ; $4c9d: $31 $40 $20
	inc  bc                                          ; $4ca0: $03
	jr   nz, jr_054_4ca4                             ; $4ca1: $20 $01

	ld   a, [bc]                                     ; $4ca3: $0a

jr_054_4ca4:
	add  hl, hl                                      ; $4ca4: $29
	nop                                              ; $4ca5: $00
	ld   b, $36                                      ; $4ca6: $06 $36
	ld   b, $0c                                      ; $4ca8: $06 $0c
	ld   [bc], a                                     ; $4caa: $02
	ld   c, $74                                      ; $4cab: $0e $74
	inc  e                                           ; $4cad: $1c
	inc  bc                                          ; $4cae: $03
	inc  bc                                          ; $4caf: $03
	inc  bc                                          ; $4cb0: $03
	dec  e                                           ; $4cb1: $1d
	ld   b, b                                        ; $4cb2: $40
	inc  de                                          ; $4cb3: $13
	inc  bc                                          ; $4cb4: $03
	inc  de                                          ; $4cb5: $13
	ld   bc, $2803                                   ; $4cb6: $01 $03 $28
	nop                                              ; $4cb9: $00
	ld   bc, $9e50                                   ; $4cba: $01 $50 $9e
	ld   [$5d00], sp                                 ; $4cbd: $08 $00 $5d
	and  c                                           ; $4cc0: $a1
	sbc  a                                           ; $4cc1: $9f
	dec  c                                           ; $4cc2: $0d
	inc  b                                           ; $4cc3: $04
	sub  $02                                         ; $4cc4: $d6 $02
	jp   $0379                                       ; $4cc6: $c3 $79 $03


	add  b                                           ; $4cc9: $80
	ld   [hl], h                                     ; $4cca: $74
	ld   h, c                                        ; $4ccb: $61
	sbc  d                                           ; $4ccc: $9a
	ld   l, l                                        ; $4ccd: $6d
	ld   a, h                                        ; $4cce: $7c
	ld   a, e                                        ; $4ccf: $7b
	sbc  a                                           ; $4cd0: $9f
	dec  c                                           ; $4cd1: $0d
	nop                                              ; $4cd2: $00
	ld   a, [bc]                                     ; $4cd3: $0a
	rrca                                             ; $4cd4: $0f
	nop                                              ; $4cd5: $00
	ld   bc, $5601                                   ; $4cd6: $01 $01 $56
	ld   d, [hl]                                     ; $4cd9: $56
	sbc  [hl]                                        ; $4cda: $9e
	ld   a, b                                        ; $4cdb: $78
	and  c                                           ; $4cdc: $a1
	halt                                             ; $4cdd: $76
	ld   e, c                                        ; $4cde: $59
	rst  $38                                         ; $4cdf: $ff
	rst  $38                                         ; $4ce0: $ff
	dec  c                                           ; $4ce1: $0d
	nop                                              ; $4ce2: $00
	ld   a, [bc]                                     ; $4ce3: $0a
	inc  e                                           ; $4ce4: $1c
	inc  bc                                          ; $4ce5: $03
	inc  b                                           ; $4ce6: $04
	inc  b                                           ; $4ce7: $04
	ld   bc, $0008                                   ; $4ce8: $01 $08 $00
	ld   e, l                                        ; $4ceb: $5d
	and  c                                           ; $4cec: $a1
	sbc  a                                           ; $4ced: $9f
	dec  c                                           ; $4cee: $0d
	dec  b                                           ; $4cef: $05
	ld   b, [hl]                                     ; $4cf0: $46
	ld   h, l                                        ; $4cf1: $65
	ld   b, $27                                      ; $4cf2: $06 $27
	ld   a, b                                        ; $4cf4: $78
	ld   d, d                                        ; $4cf5: $52
	ld   e, a                                        ; $4cf6: $5f
	ld   [hl], a                                     ; $4cf7: $77
	sbc  [hl]                                        ; $4cf8: $9e
	dec  c                                           ; $4cf9: $0d
	inc  bc                                          ; $4cfa: $03
	db   $e4                                         ; $4cfb: $e4
	inc  bc                                          ; $4cfc: $03
	push hl                                          ; $4cfd: $e5
	ld   e, d                                        ; $4cfe: $5a
	ld   a, b                                        ; $4cff: $78
	ld   e, c                                        ; $4d00: $59
	ld   [hl], c                                     ; $4d01: $71
	ld   l, l                                        ; $4d02: $6d
	ld   a, h                                        ; $4d03: $7c
	sub  [hl]                                        ; $4d04: $96
	sbc  a                                           ; $4d05: $9f
	dec  c                                           ; $4d06: $0d
	nop                                              ; $4d07: $00
	ld   a, [bc]                                     ; $4d08: $0a
	ld   bc, $9565                                   ; $4d09: $01 $65 $95
	ld   d, h                                        ; $4d0c: $54
	ld   e, d                                        ; $4d0d: $5a
	ld   a, b                                        ; $4d0e: $78
	ld   d, d                                        ; $4d0f: $52
	ld   e, c                                        ; $4d10: $59
	sub  a                                           ; $4d11: $97
	sbc  [hl]                                        ; $4d12: $9e
	dec  c                                           ; $4d13: $0d
	ld   l, e                                        ; $4d14: $6b
	ld   a, h                                        ; $4d15: $7c
	adc  h                                           ; $4d16: $8c
	adc  h                                           ; $4d17: $8c
	ld   [bc], a                                     ; $4d18: $02
	ld   a, a                                        ; $4d19: $7f
	ld   [hl], c                                     ; $4d1a: $71
	ld   [hl], h                                     ; $4d1b: $74
	ld   l, a                                        ; $4d1c: $6f
	sub  l                                           ; $4d1d: $95
	ld   d, h                                        ; $4d1e: $54
	ld   l, [hl]                                     ; $4d1f: $6e
	ld   d, d                                        ; $4d20: $52
	sbc  a                                           ; $4d21: $9f
	dec  c                                           ; $4d22: $0d
	nop                                              ; $4d23: $00
	ld   a, [bc]                                     ; $4d24: $0a
	inc  e                                           ; $4d25: $1c
	inc  bc                                          ; $4d26: $03
	nop                                              ; $4d27: $00
	nop                                              ; $4d28: $00
	ld   bc, $6d8c                                   ; $4d29: $01 $8c $6d
	db   $ed                                         ; $4d2c: $ed
	ei                                               ; $4d2d: $fb
	ret                                              ; $4d2e: $c9


	and  b                                           ; $4d2f: $a0
	inc  bc                                          ; $4d30: $03
	ld   a, [hl+]                                    ; $4d31: $2a
	inc  bc                                          ; $4d32: $03
	add  hl, hl                                      ; $4d33: $29
	ld   h, a                                        ; $4d34: $67
	sbc  c                                           ; $4d35: $99
	ld   e, c                                        ; $4d36: $59
	sub  a                                           ; $4d37: $97
	sbc  [hl]                                        ; $4d38: $9e
	dec  c                                           ; $4d39: $0d
	ld   [bc], a                                     ; $4d3a: $02
	cp   $02                                         ; $4d3b: $fe $02
	ld   e, c                                        ; $4d3d: $59
	ld   a, h                                        ; $4d3e: $7c
	ld   [bc], a                                     ; $4d3f: $02
	jr   nz, jr_054_4d46                             ; $4d40: $20 $04

	ld   a, c                                        ; $4d42: $79
	ld   e, b                                        ; $4d43: $58
	ld   e, l                                        ; $4d44: $5d
	ld   a, c                                        ; $4d45: $79

jr_054_4d46:
	ld   d, b                                        ; $4d46: $50
	sbc  c                                           ; $4d47: $99
	inc  b                                           ; $4d48: $04
	ld   h, c                                        ; $4d49: $61
	inc  b                                           ; $4d4a: $04
	sub  d                                           ; $4d4b: $92
	and  b                                           ; $4d4c: $a0
	dec  c                                           ; $4d4d: $0d
	inc  bc                                          ; $4d4e: $03
	jr   jr_054_4dc2                                 ; $4d4f: $18 $71

	ld   [hl], h                                     ; $4d51: $74
	ld   e, e                                        ; $4d52: $5b
	ld   [hl], h                                     ; $4d53: $74
	ld   a, e                                        ; $4d54: $7b
	sbc  a                                           ; $4d55: $9f
	dec  c                                           ; $4d56: $0d
	nop                                              ; $4d57: $00
	ld   a, [bc]                                     ; $4d58: $0a
	dec  c                                           ; $4d59: $0d
	nop                                              ; $4d5a: $00
	nop                                              ; $4d5b: $00
	rrca                                             ; $4d5c: $0f
	nop                                              ; $4d5d: $00
	ld   bc, $020c                                   ; $4d5e: $01 $0c $02
	ld   b, $b2                                      ; $4d61: $06 $b2
	ld   [$5001], sp                                 ; $4d63: $08 $01 $50
	sbc  d                                           ; $4d66: $9a
	sbc  [hl]                                        ; $4d67: $9e
	ld   a, b                                        ; $4d68: $78
	and  c                                           ; $4d69: $a1
	ld   l, [hl]                                     ; $4d6a: $6e
	ld   e, c                                        ; $4d6b: $59
	inc  b                                           ; $4d6c: $04
	dec  c                                           ; $4d6d: $0d
	ld   a, c                                        ; $4d6e: $79
	dec  c                                           ; $4d6f: $0d
	dec  b                                           ; $4d70: $05
	ld   a, [bc]                                     ; $4d71: $0a
	ld   e, d                                        ; $4d72: $5a
	inc  b                                           ; $4d73: $04
	ld   b, l                                        ; $4d74: $45
	sub  a                                           ; $4d75: $97
	ld   a, b                                        ; $4d76: $78
	ld   d, d                                        ; $4d77: $52
	ld   l, h                                        ; $4d78: $6c
	rst  $38                                         ; $4d79: $ff
	rst  $38                                         ; $4d7a: $ff
	dec  c                                           ; $4d7b: $0d
	ld   d, b                                        ; $4d7c: $50
	sbc  [hl]                                        ; $4d7d: $9e
	sub  b                                           ; $4d7e: $90
	ld   d, h                                        ; $4d7f: $54
	inc  b                                           ; $4d80: $04
	dec  c                                           ; $4d81: $0d
	dec  b                                           ; $4d82: $05
	ld   a, [bc]                                     ; $4d83: $0a
	ld   e, d                                        ; $4d84: $5a
	ld   a, b                                        ; $4d85: $78
	ld   d, d                                        ; $4d86: $52
	rst  $38                                         ; $4d87: $ff
	rst  $38                                         ; $4d88: $ff
	dec  c                                           ; $4d89: $0d
	nop                                              ; $4d8a: $00
	ld   a, [bc]                                     ; $4d8b: $0a
	inc  c                                           ; $4d8c: $0c
	ld   [bc], a                                     ; $4d8d: $02
	ld   c, $73                                      ; $4d8e: $0e $73
	inc  e                                           ; $4d90: $1c
	inc  bc                                          ; $4d91: $03
	inc  b                                           ; $4d92: $04
	inc  b                                           ; $4d93: $04
	ld   bc, $0e04                                   ; $4d94: $01 $04 $0e
	inc  bc                                          ; $4d97: $03
	sbc  l                                           ; $4d98: $9d
	inc  b                                           ; $4d99: $04
	and  [hl]                                        ; $4d9a: $a6
	ld   sp, hl                                      ; $4d9b: $f9
	db   $10                                         ; $4d9c: $10
	ld   [$5d00], sp                                 ; $4d9d: $08 $00 $5d
	and  c                                           ; $4da0: $a1
	sbc  a                                           ; $4da1: $9f
	dec  c                                           ; $4da2: $0d
	ld   [bc], a                                     ; $4da3: $02
	and  l                                           ; $4da4: $a5
	inc  b                                           ; $4da5: $04
	xor  d                                           ; $4da6: $aa
	ld   a, l                                        ; $4da7: $7d
	sub  b                                           ; $4da8: $90
	ld   d, h                                        ; $4da9: $54
	sbc  [hl]                                        ; $4daa: $9e
	inc  b                                           ; $4dab: $04
	sub  l                                           ; $4dac: $95
	ld   [bc], a                                     ; $4dad: $02
	ld   hl, $9475                                   ; $4dae: $21 $75 $94
	ld   [hl], c                                     ; $4db1: $71
	ld   e, l                                        ; $4db2: $5d
	sbc  b                                           ; $4db3: $98
	dec  c                                           ; $4db4: $0d
	inc  bc                                          ; $4db5: $03
	and  a                                           ; $4db6: $a7
	adc  l                                           ; $4db7: $8d
	ld   a, b                                        ; $4db8: $78
	ld   h, e                                        ; $4db9: $63
	ld   d, d                                        ; $4dba: $52
	sbc  a                                           ; $4dbb: $9f
	ld   h, [hl]                                     ; $4dbc: $66
	sub  c                                           ; $4dbd: $91
	ld   d, b                                        ; $4dbe: $50
	ld   a, e                                        ; $4dbf: $7b
	sbc  a                                           ; $4dc0: $9f
	dec  c                                           ; $4dc1: $0d

jr_054_4dc2:
	nop                                              ; $4dc2: $00
	ld   a, [bc]                                     ; $4dc3: $0a
	dec  c                                           ; $4dc4: $0d
	nop                                              ; $4dc5: $00
	nop                                              ; $4dc6: $00
	rrca                                             ; $4dc7: $0f
	nop                                              ; $4dc8: $00
	ld   bc, $020c                                   ; $4dc9: $01 $0c $02
	ld   c, $02                                      ; $4dcc: $0e $02
	rrca                                             ; $4dce: $0f
	nop                                              ; $4dcf: $00
	ld   bc, $0201                                   ; $4dd0: $01 $01 $02
	and  l                                           ; $4dd3: $a5
	inc  b                                           ; $4dd4: $04
	xor  d                                           ; $4dd5: $aa
	ld   a, l                                        ; $4dd6: $7d
	rst  JumpTable                                         ; $4dd7: $df
	db   $ec                                         ; $4dd8: $ec
	and  e                                           ; $4dd9: $a3
	ld   h, e                                        ; $4dda: $63
	and  c                                           ; $4ddb: $a1
	ld   a, c                                        ; $4ddc: $79
	dec  c                                           ; $4ddd: $0d
	adc  a                                           ; $4dde: $8f
	ld   d, d                                        ; $4ddf: $52
	sbc  l                                           ; $4de0: $9d
	ld   e, l                                        ; $4de1: $5d
	and  b                                           ; $4de2: $a0
	ld   e, c                                        ; $4de3: $59
	ld   e, a                                        ; $4de4: $5f
	ld   [hl], h                                     ; $4de5: $74
	ld   h, l                                        ; $4de6: $65
	adc  h                                           ; $4de7: $8c
	ld   [hl], c                                     ; $4de8: $71
	ld   l, l                                        ; $4de9: $6d
	ld   a, b                                        ; $4dea: $78
	rst  $38                                         ; $4deb: $ff
	dec  c                                           ; $4dec: $0d
	nop                                              ; $4ded: $00
	ld   a, [bc]                                     ; $4dee: $0a
	dec  b                                           ; $4def: $05
	ld   b, b                                        ; $4df0: $40
	ld   d, b                                        ; $4df1: $50
	ld   bc, $0000                                   ; $4df2: $01 $00 $00
	ld   bc, $ffff                                   ; $4df5: $01 $ff $ff
	and  c                                           ; $4df8: $a1
	ld   sp, hl                                      ; $4df9: $f9
	db   $10                                         ; $4dfa: $10
	sub  b                                           ; $4dfb: $90
	ld   d, h                                        ; $4dfc: $54
	ld   h, c                                        ; $4dfd: $61
	and  c                                           ; $4dfe: $a1
	ld   a, b                                        ; $4dff: $78
	inc  bc                                          ; $4e00: $03
	ld   l, a                                        ; $4e01: $6f
	ld   [bc], a                                     ; $4e02: $02
	xor  c                                           ; $4e03: $a9
	ld   e, c                                        ; $4e04: $59
	rst  $38                                         ; $4e05: $ff
	dec  c                                           ; $4e06: $0d
	inc  b                                           ; $4e07: $04
	xor  d                                           ; $4e08: $aa
	ld   [bc], a                                     ; $4e09: $02
	sub  a                                           ; $4e0a: $97
	and  b                                           ; $4e0b: $a0
	ld   [hl], d                                     ; $4e0c: $72
	ld   e, a                                        ; $4e0d: $5f
	ld   [hl], h                                     ; $4e0e: $74
	sbc  [hl]                                        ; $4e0f: $9e
	inc  bc                                          ; $4e10: $03
	ld   d, $8c                                      ; $4e11: $16 $8c
	ld   [hl], l                                     ; $4e13: $75
	inc  b                                           ; $4e14: $04
	ld   b, d                                        ; $4e15: $42
	sub  [hl]                                        ; $4e16: $96
	ld   d, h                                        ; $4e17: $54
	sbc  a                                           ; $4e18: $9f
	dec  c                                           ; $4e19: $0d
	nop                                              ; $4e1a: $00
	ld   a, [bc]                                     ; $4e1b: $0a
	ld   sp, $2040                                   ; $4e1c: $31 $40 $20
	ld   bc, $0096                                   ; $4e1f: $01 $96 $00
	add  hl, hl                                      ; $4e22: $29
	nop                                              ; $4e23: $00
	nop                                              ; $4e24: $00
	ld   c, $03                                      ; $4e25: $0e $03
	rrca                                             ; $4e27: $0f
	inc  bc                                          ; $4e28: $03
	nop                                              ; $4e29: $00
	ld   bc, $9166                                   ; $4e2a: $01 $66 $91
	ld   d, b                                        ; $4e2d: $50
	sbc  [hl]                                        ; $4e2e: $9e
	ld   d, d                                        ; $4e2f: $52
	ld   e, l                                        ; $4e30: $5d
	sbc  l                                           ; $4e31: $9d
	sub  [hl]                                        ; $4e32: $96
	sbc  a                                           ; $4e33: $9f
	dec  c                                           ; $4e34: $0d
	adc  h                                           ; $4e35: $8c
	ld   l, b                                        ; $4e36: $68
	ld   a, l                                        ; $4e37: $7d
	sbc  [hl]                                        ; $4e38: $9e
	ld   a, [bc]                                     ; $4e39: $0a
	ld   [bc], a                                     ; $4e3a: $02
	inc  bc                                          ; $4e3b: $03
	ld   c, a                                        ; $4e3c: $4f
	ld   a, c                                        ; $4e3d: $79
	ld   [de], a                                     ; $4e3e: $12
	ld   de, $9f04                                   ; $4e3f: $11 $04 $9f
	ld   a, [bc]                                     ; $4e42: $0a
	inc  bc                                          ; $4e43: $03
	sbc  a                                           ; $4e44: $9f
	dec  c                                           ; $4e45: $0d
	nop                                              ; $4e46: $00
	ld   a, [bc]                                     ; $4e47: $0a
	rrca                                             ; $4e48: $0f
	nop                                              ; $4e49: $00
	ld   bc, $0301                                   ; $4e4a: $01 $01 $03
	ld   c, a                                        ; $4e4d: $4f
	ld   a, c                                        ; $4e4e: $79
	ld   [de], a                                     ; $4e4f: $12
	ld   de, $9f04                                   ; $4e50: $11 $04 $9f
	rst  $38                                         ; $4e53: $ff
	rst  $38                                         ; $4e54: $ff
	halt                                             ; $4e55: $76
	sbc  a                                           ; $4e56: $9f
	dec  c                                           ; $4e57: $0d
	dec  b                                           ; $4e58: $05
	ld   l, d                                        ; $4e59: $6a
	inc  b                                           ; $4e5a: $04
	dec  de                                          ; $4e5b: $1b
	ld   h, l                                        ; $4e5c: $65
	adc  h                                           ; $4e5d: $8c
	ld   h, l                                        ; $4e5e: $65
	ld   l, l                                        ; $4e5f: $6d
	sbc  a                                           ; $4e60: $9f
	dec  c                                           ; $4e61: $0d
	nop                                              ; $4e62: $00
	ld   a, [bc]                                     ; $4e63: $0a
	rrca                                             ; $4e64: $0f
	inc  bc                                          ; $4e65: $03
	nop                                              ; $4e66: $00
	ld   bc, $6803                                   ; $4e67: $01 $03 $68
	ld   a, l                                        ; $4e6a: $7d
	ld   a, [bc]                                     ; $4e6b: $0a
	ld   [bc], a                                     ; $4e6c: $02
	inc  bc                                          ; $4e6d: $03
	ld   h, b                                        ; $4e6e: $60
	ld   a, c                                        ; $4e6f: $79
	jr   jr_054_4e76                                 ; $4e70: $18 $04

	sbc  a                                           ; $4e72: $9f
	ld   a, [bc]                                     ; $4e73: $0a
	inc  bc                                          ; $4e74: $03
	sbc  a                                           ; $4e75: $9f

jr_054_4e76:
	dec  c                                           ; $4e76: $0d
	nop                                              ; $4e77: $00
	ld   a, [bc]                                     ; $4e78: $0a
	rrca                                             ; $4e79: $0f
	nop                                              ; $4e7a: $00
	ld   bc, $0301                                   ; $4e7b: $01 $01 $03
	ld   h, b                                        ; $4e7e: $60
	ld   a, c                                        ; $4e7f: $79
	jr   jr_054_4e86                                 ; $4e80: $18 $04

	sbc  a                                           ; $4e82: $9f
	rst  $38                                         ; $4e83: $ff
	rst  $38                                         ; $4e84: $ff
	halt                                             ; $4e85: $76

jr_054_4e86:
	sbc  a                                           ; $4e86: $9f
	dec  c                                           ; $4e87: $0d
	dec  b                                           ; $4e88: $05
	ld   l, d                                        ; $4e89: $6a
	inc  b                                           ; $4e8a: $04
	dec  de                                          ; $4e8b: $1b
	ld   h, l                                        ; $4e8c: $65
	adc  h                                           ; $4e8d: $8c
	ld   h, l                                        ; $4e8e: $65
	ld   l, l                                        ; $4e8f: $6d
	sbc  a                                           ; $4e90: $9f
	dec  c                                           ; $4e91: $0d
	nop                                              ; $4e92: $00
	ld   a, [bc]                                     ; $4e93: $0a
	rrca                                             ; $4e94: $0f
	inc  bc                                          ; $4e95: $03
	nop                                              ; $4e96: $00
	ld   bc, $6803                                   ; $4e97: $01 $03 $68
	ld   a, l                                        ; $4e9a: $7d
	ld   a, [bc]                                     ; $4e9b: $0a
	ld   [bc], a                                     ; $4e9c: $02
	inc  bc                                          ; $4e9d: $03
	ld   c, a                                        ; $4e9e: $4f
	ld   a, c                                        ; $4e9f: $79
	inc  d                                           ; $4ea0: $14
	inc  b                                           ; $4ea1: $04
	sbc  a                                           ; $4ea2: $9f
	ld   a, [bc]                                     ; $4ea3: $0a
	inc  bc                                          ; $4ea4: $03
	sbc  a                                           ; $4ea5: $9f
	dec  c                                           ; $4ea6: $0d
	nop                                              ; $4ea7: $00
	ld   a, [bc]                                     ; $4ea8: $0a
	rrca                                             ; $4ea9: $0f
	nop                                              ; $4eaa: $00
	ld   bc, $0301                                   ; $4eab: $01 $01 $03
	ld   c, a                                        ; $4eae: $4f
	ld   a, c                                        ; $4eaf: $79
	inc  d                                           ; $4eb0: $14
	inc  b                                           ; $4eb1: $04
	sbc  a                                           ; $4eb2: $9f
	rst  $38                                         ; $4eb3: $ff
	rst  $38                                         ; $4eb4: $ff
	halt                                             ; $4eb5: $76
	sbc  a                                           ; $4eb6: $9f
	dec  c                                           ; $4eb7: $0d
	dec  b                                           ; $4eb8: $05
	ld   l, d                                        ; $4eb9: $6a
	inc  b                                           ; $4eba: $04
	dec  de                                          ; $4ebb: $1b
	ld   h, l                                        ; $4ebc: $65
	adc  h                                           ; $4ebd: $8c
	ld   h, l                                        ; $4ebe: $65
	ld   l, l                                        ; $4ebf: $6d
	sbc  a                                           ; $4ec0: $9f
	dec  c                                           ; $4ec1: $0d
	nop                                              ; $4ec2: $00
	ld   a, [bc]                                     ; $4ec3: $0a
	rrca                                             ; $4ec4: $0f
	inc  bc                                          ; $4ec5: $03
	nop                                              ; $4ec6: $00
	ld   bc, $6803                                   ; $4ec7: $01 $03 $68
	ld   a, l                                        ; $4eca: $7d
	ld   a, [bc]                                     ; $4ecb: $0a
	ld   [bc], a                                     ; $4ecc: $02
	ld   [bc], a                                     ; $4ecd: $02
	inc  e                                           ; $4ece: $1c
	ld   a, c                                        ; $4ecf: $79
	ld   d, $04                                      ; $4ed0: $16 $04
	sbc  a                                           ; $4ed2: $9f
	ld   a, [bc]                                     ; $4ed3: $0a
	inc  bc                                          ; $4ed4: $03
	sbc  a                                           ; $4ed5: $9f
	dec  c                                           ; $4ed6: $0d
	nop                                              ; $4ed7: $00
	ld   a, [bc]                                     ; $4ed8: $0a
	rrca                                             ; $4ed9: $0f
	nop                                              ; $4eda: $00
	ld   bc, $0201                                   ; $4edb: $01 $01 $02
	inc  e                                           ; $4ede: $1c
	ld   a, c                                        ; $4edf: $79
	ld   d, $04                                      ; $4ee0: $16 $04
	sbc  a                                           ; $4ee2: $9f
	rst  $38                                         ; $4ee3: $ff
	rst  $38                                         ; $4ee4: $ff
	halt                                             ; $4ee5: $76
	sbc  a                                           ; $4ee6: $9f
	dec  c                                           ; $4ee7: $0d
	dec  b                                           ; $4ee8: $05
	ld   l, d                                        ; $4ee9: $6a
	inc  b                                           ; $4eea: $04
	dec  de                                          ; $4eeb: $1b
	ld   h, l                                        ; $4eec: $65
	adc  h                                           ; $4eed: $8c
	ld   h, l                                        ; $4eee: $65
	ld   l, l                                        ; $4eef: $6d
	sbc  a                                           ; $4ef0: $9f
	dec  c                                           ; $4ef1: $0d
	nop                                              ; $4ef2: $00
	ld   a, [bc]                                     ; $4ef3: $0a
	rrca                                             ; $4ef4: $0f
	inc  bc                                          ; $4ef5: $03
	nop                                              ; $4ef6: $00
	ld   bc, $6903                                   ; $4ef7: $01 $03 $69
	ld   [bc], a                                     ; $4efa: $02
	xor  d                                           ; $4efb: $aa
	ld   a, c                                        ; $4efc: $79
	sbc  [hl]                                        ; $4efd: $9e
	ld   a, [bc]                                     ; $4efe: $0a
	ld   [bc], a                                     ; $4eff: $02
	inc  bc                                          ; $4f00: $03
	ld   c, a                                        ; $4f01: $4f
	ld   a, c                                        ; $4f02: $79
	add  hl, de                                      ; $4f03: $19
	inc  b                                           ; $4f04: $04
	sbc  a                                           ; $4f05: $9f
	ld   a, [bc]                                     ; $4f06: $0a
	inc  bc                                          ; $4f07: $03
	sbc  a                                           ; $4f08: $9f
	dec  c                                           ; $4f09: $0d
	nop                                              ; $4f0a: $00
	ld   a, [bc]                                     ; $4f0b: $0a
	rrca                                             ; $4f0c: $0f

jr_054_4f0d:
	nop                                              ; $4f0d: $00
	ld   bc, $0301                                   ; $4f0e: $01 $01 $03
	ld   c, a                                        ; $4f11: $4f
	ld   a, c                                        ; $4f12: $79
	add  hl, de                                      ; $4f13: $19
	inc  b                                           ; $4f14: $04
	sbc  a                                           ; $4f15: $9f
	rst  $38                                         ; $4f16: $ff
	rst  $38                                         ; $4f17: $ff
	halt                                             ; $4f18: $76
	sbc  a                                           ; $4f19: $9f
	dec  c                                           ; $4f1a: $0d
	dec  b                                           ; $4f1b: $05
	ld   l, d                                        ; $4f1c: $6a
	inc  b                                           ; $4f1d: $04
	dec  de                                          ; $4f1e: $1b
	ld   h, l                                        ; $4f1f: $65
	adc  h                                           ; $4f20: $8c
	ld   h, l                                        ; $4f21: $65
	ld   l, l                                        ; $4f22: $6d
	sbc  a                                           ; $4f23: $9f
	dec  c                                           ; $4f24: $0d
	nop                                              ; $4f25: $00
	ld   a, [bc]                                     ; $4f26: $0a
	rrca                                             ; $4f27: $0f
	inc  bc                                          ; $4f28: $03
	nop                                              ; $4f29: $00
	ld   bc, $546b                                   ; $4f2a: $01 $6b $54
	sub  [hl]                                        ; $4f2d: $96
	sbc  a                                           ; $4f2e: $9f
	dec  c                                           ; $4f2f: $0d
	ld   l, e                                        ; $4f30: $6b
	ld   a, h                                        ; $4f31: $7c
	ld   d, b                                        ; $4f32: $50
	ld   l, l                                        ; $4f33: $6d
	sbc  b                                           ; $4f34: $98
	ld   a, c                                        ; $4f35: $79
	inc  b                                           ; $4f36: $04
	add  a                                           ; $4f37: $87
	ld   e, d                                        ; $4f38: $5a
	ld   d, b                                        ; $4f39: $50
	sbc  c                                           ; $4f3a: $99
	ld   [hl], l                                     ; $4f3b: $75
	ld   h, l                                        ; $4f3c: $65
	sub  l                                           ; $4f3d: $95
	sbc  a                                           ; $4f3e: $9f
	dec  c                                           ; $4f3f: $0d
	nop                                              ; $4f40: $00
	ld   a, [bc]                                     ; $4f41: $0a
	rrca                                             ; $4f42: $0f
	nop                                              ; $4f43: $00
	ld   bc, $6101                                   ; $4f44: $01 $01 $61
	ld   a, h                                        ; $4f47: $7c
	inc  b                                           ; $4f48: $04
	add  a                                           ; $4f49: $87
	ld   a, h                                        ; $4f4a: $7c
	inc  b                                           ; $4f4b: $04
	dec  bc                                          ; $4f4c: $0b
	ld   a, c                                        ; $4f4d: $79
	inc  b                                           ; $4f4e: $04
	ld   b, l                                        ; $4f4f: $45
	ld   [hl], c                                     ; $4f50: $71
	ld   [hl], h                                     ; $4f51: $74
	ld   d, d                                        ; $4f52: $52
	sbc  c                                           ; $4f53: $99
	dec  c                                           ; $4f54: $0d
	inc  b                                           ; $4f55: $04
	ld   h, c                                        ; $4f56: $61
	inc  b                                           ; $4f57: $04
	sub  d                                           ; $4f58: $92
	ld   [hl], l                                     ; $4f59: $75
	ld   h, a                                        ; $4f5a: $67
	ld   e, c                                        ; $4f5b: $59
	ei                                               ; $4f5c: $fb
	ei                                               ; $4f5d: $fb
	ei                                               ; $4f5e: $fb
	sbc  a                                           ; $4f5f: $9f
	dec  c                                           ; $4f60: $0d
	nop                                              ; $4f61: $00
	ld   a, [bc]                                     ; $4f62: $0a
	rrca                                             ; $4f63: $0f
	inc  bc                                          ; $4f64: $03
	inc  bc                                          ; $4f65: $03
	ld   bc, $546b                                   ; $4f66: $01 $6b $54
	sub  [hl]                                        ; $4f69: $96
	sbc  [hl]                                        ; $4f6a: $9e
	inc  b                                           ; $4f6b: $04
	add  a                                           ; $4f6c: $87
	ld   e, c                                        ; $4f6d: $59
	sub  a                                           ; $4f6e: $97
	add  b                                           ; $4f6f: $80
	halt                                             ; $4f70: $76
	ld   [hl], d                                     ; $4f71: $72
	inc  bc                                          ; $4f72: $03
	jr   jr_054_4f0d                                 ; $4f73: $18 $98

	dec  c                                           ; $4f75: $0d
	inc  bc                                          ; $4f76: $03
	add  b                                           ; $4f77: $80
	ld   h, l                                        ; $4f78: $65
	ld   [hl], h                                     ; $4f79: $74
	inc  bc                                          ; $4f7a: $03
	and  b                                           ; $4f7b: $a0
	ld   [hl], c                                     ; $4f7c: $71
	ld   [hl], h                                     ; $4f7d: $74
	ld   e, e                                        ; $4f7e: $5b
	ld   [hl], h                                     ; $4f7f: $74
	ld   l, a                                        ; $4f80: $6f
	sub  l                                           ; $4f81: $95
	ld   d, h                                        ; $4f82: $54
	ld   l, [hl]                                     ; $4f83: $6e
	ld   d, d                                        ; $4f84: $52
	sbc  a                                           ; $4f85: $9f
	dec  c                                           ; $4f86: $0d
	nop                                              ; $4f87: $00
	ld   a, [bc]                                     ; $4f88: $0a
	rrca                                             ; $4f89: $0f
	inc  c                                           ; $4f8a: $0c
	nop                                              ; $4f8b: $00
	ld   bc, $ecdf                                   ; $4f8c: $01 $df $ec
	and  e                                           ; $4f8f: $a3
	ld   h, e                                        ; $4f90: $63
	and  c                                           ; $4f91: $a1
	sbc  a                                           ; $4f92: $9f
	dec  c                                           ; $4f93: $0d
	inc  bc                                          ; $4f94: $03
	add  l                                           ; $4f95: $85
	inc  b                                           ; $4f96: $04
	xor  e                                           ; $4f97: $ab
	inc  bc                                          ; $4f98: $03
	add  d                                           ; $4f99: $82
	ld   e, d                                        ; $4f9a: $5a
	ld   e, b                                        ; $4f9b: $58
	ld   [bc], a                                     ; $4f9c: $02
	ld   a, b                                        ; $4f9d: $78
	add  c                                           ; $4f9e: $81
	ld   [hl], l                                     ; $4f9f: $75
	ld   h, a                                        ; $4fa0: $67
	sbc  a                                           ; $4fa1: $9f
	dec  c                                           ; $4fa2: $0d
	inc  b                                           ; $4fa3: $04
	ld   c, $05                                      ; $4fa4: $0e $05
	cp   d                                           ; $4fa6: $ba
	dec  b                                           ; $4fa7: $05
	jr   z, jr_054_5018                              ; $4fa8: $28 $6e

	ld   l, e                                        ; $4faa: $6b
	ld   d, h                                        ; $4fab: $54
	ld   [hl], l                                     ; $4fac: $75
	ld   h, a                                        ; $4fad: $67
	sbc  a                                           ; $4fae: $9f
	dec  c                                           ; $4faf: $0d
	nop                                              ; $4fb0: $00
	ld   a, [bc]                                     ; $4fb1: $0a
	rrca                                             ; $4fb2: $0f
	inc  bc                                          ; $4fb3: $03
	nop                                              ; $4fb4: $00
	ld   bc, $a502                                   ; $4fb5: $01 $02 $a5
	sbc  [hl]                                        ; $4fb8: $9e
	ld   [bc], a                                     ; $4fb9: $02
	ld   a, a                                        ; $4fba: $7f
	ld   e, l                                        ; $4fbb: $5d
	sbc  l                                           ; $4fbc: $9d
	sbc  a                                           ; $4fbd: $9f
	dec  c                                           ; $4fbe: $0d
	nop                                              ; $4fbf: $00
	ld   a, [bc]                                     ; $4fc0: $0a
	dec  c                                           ; $4fc1: $0d
	nop                                              ; $4fc2: $00
	nop                                              ; $4fc3: $00
	rrca                                             ; $4fc4: $0f
	nop                                              ; $4fc5: $00
	ld   bc, $5601                                   ; $4fc6: $01 $01 $56
	rst  $38                                         ; $4fc9: $ff
	rst  $38                                         ; $4fca: $ff
	rst  JumpTable                                         ; $4fcb: $df
	sbc  [hl]                                        ; $4fcc: $9e
	rst  JumpTable                                         ; $4fcd: $df
	db   $ec                                         ; $4fce: $ec
	and  e                                           ; $4fcf: $a3
	ld   h, e                                        ; $4fd0: $63
	and  c                                           ; $4fd1: $a1
	ld   sp, hl                                      ; $4fd2: $f9
	dec  c                                           ; $4fd3: $0d
	rst  $38                                         ; $4fd4: $ff
	rst  $38                                         ; $4fd5: $ff
	adc  h                                           ; $4fd6: $8c
	ld   l, l                                        ; $4fd7: $6d
	ld   e, c                                        ; $4fd8: $59
	sub  [hl]                                        ; $4fd9: $96
	rst  $38                                         ; $4fda: $ff
	rst  $38                                         ; $4fdb: $ff
	dec  c                                           ; $4fdc: $0d
	nop                                              ; $4fdd: $00
	ld   a, [bc]                                     ; $4fde: $0a
	ld   bc, $ffff                                   ; $4fdf: $01 $ff $ff
	inc  bc                                          ; $4fe2: $03
	dec  c                                           ; $4fe3: $0d
	inc  b                                           ; $4fe4: $04
	ld   a, b                                        ; $4fe5: $78
	ld   a, b                                        ; $4fe6: $78
	ld   d, d                                        ; $4fe7: $52
	ld   a, b                                        ; $4fe8: $78
	rst  $38                                         ; $4fe9: $ff
	rst  $38                                         ; $4fea: $ff
	dec  c                                           ; $4feb: $0d
	ld   [bc], a                                     ; $4fec: $02
	sub  a                                           ; $4fed: $97
	dec  b                                           ; $4fee: $05
	inc  hl                                          ; $4fef: $23
	and  b                                           ; $4ff0: $a0
	ld   l, l                                        ; $4ff1: $6d
	sub  [hl]                                        ; $4ff2: $96
	sbc  b                                           ; $4ff3: $98
	ld   a, c                                        ; $4ff4: $79
	sub  b                                           ; $4ff5: $90
	ld   [hl], a                                     ; $4ff6: $77
	sbc  c                                           ; $4ff7: $99
	ld   e, c                                        ; $4ff8: $59
	rst  $38                                         ; $4ff9: $ff
	rst  $38                                         ; $4ffa: $ff
	dec  c                                           ; $4ffb: $0d
	nop                                              ; $4ffc: $00
	ld   a, [bc]                                     ; $4ffd: $0a
	ld   bc, $ff56                                   ; $4ffe: $01 $56 $ff
	rst  $38                                         ; $5001: $ff
	halt                                             ; $5002: $76
	sbc  [hl]                                        ; $5003: $9e
	adc  h                                           ; $5004: $8c
	ld   l, b                                        ; $5005: $68
	ld   a, l                                        ; $5006: $7d
	dec  c                                           ; $5007: $0d
	adc  h                                           ; $5008: $8c
	sbc  l                                           ; $5009: $9d
	sbc  d                                           ; $500a: $9a
	ld   [bc], a                                     ; $500b: $02
	inc  e                                           ; $500c: $1c
	and  b                                           ; $500d: $a0
	ld   h, l                                        ; $500e: $65
	ld   [hl], h                                     ; $500f: $74
	rst  $38                                         ; $5010: $ff
	rst  $38                                         ; $5011: $ff
	dec  c                                           ; $5012: $0d
	nop                                              ; $5013: $00
	ld   a, [bc]                                     ; $5014: $0a
	add  hl, de                                      ; $5015: $19
	dec  b                                           ; $5016: $05
	inc  bc                                          ; $5017: $03

jr_054_5018:
	inc  bc                                          ; $5018: $03
	ld   c, a                                        ; $5019: $4f
	add  [hl]                                        ; $501a: $86
	add  hl, de                                      ; $501b: $19
	inc  b                                           ; $501c: $04
	sbc  a                                           ; $501d: $9f
	nop                                              ; $501e: $00
	nop                                              ; $501f: $00
	inc  bc                                          ; $5020: $03
	ld   c, a                                        ; $5021: $4f
	add  [hl]                                        ; $5022: $86
	ld   [de], a                                     ; $5023: $12
	ld   de, $9f04                                   ; $5024: $11 $04 $9f
	nop                                              ; $5027: $00
	ld   bc, $4f03                                   ; $5028: $01 $03 $4f
	add  [hl]                                        ; $502b: $86
	jr   jr_054_5032                                 ; $502c: $18 $04

	sbc  a                                           ; $502e: $9f
	nop                                              ; $502f: $00
	ld   [bc], a                                     ; $5030: $02
	rlca                                             ; $5031: $07

jr_054_5032:
	pop  af                                          ; $5032: $f1
	ld   a, [bc]                                     ; $5033: $0a
	ld   [bc], a                                     ; $5034: $02
	inc  bc                                          ; $5035: $03
	ld   bc, $2000                                   ; $5036: $01 $00 $20
	nop                                              ; $5039: $00
	rlca                                             ; $503a: $07
	ld   b, $0b                                      ; $503b: $06 $0b
	ld   [bc], a                                     ; $503d: $02
	inc  bc                                          ; $503e: $03
	ld   bc, $2001                                   ; $503f: $01 $01 $20
	nop                                              ; $5042: $00
	rlca                                             ; $5043: $07
	ld   h, d                                        ; $5044: $62
	dec  bc                                          ; $5045: $0b
	ld   [bc], a                                     ; $5046: $02
	inc  bc                                          ; $5047: $03
	ld   bc, $2002                                   ; $5048: $01 $02 $20
	nop                                              ; $504b: $00
	ld   b, $dc                                      ; $504c: $06 $dc
	ld   a, [bc]                                     ; $504e: $0a
	rrca                                             ; $504f: $0f
	nop                                              ; $5050: $00
	ld   bc, $0301                                   ; $5051: $01 $01 $03
	ld   c, a                                        ; $5054: $4f
	add  [hl]                                        ; $5055: $86
	dec  b                                           ; $5056: $05
	db   $dd                                         ; $5057: $dd
	adc  h                                           ; $5058: $8c
	ld   a, b                                        ; $5059: $78

Jump_054_505a:
	ld   e, e                                        ; $505a: $5b
	sub  c                                           ; $505b: $91
	rst  $38                                         ; $505c: $ff
	rst  $38                                         ; $505d: $ff
	dec  c                                           ; $505e: $0d
	nop                                              ; $505f: $00
	ld   a, [bc]                                     ; $5060: $0a
	ld   b, $a2                                      ; $5061: $06 $a2
	ld   a, [bc]                                     ; $5063: $0a
	rrca                                             ; $5064: $0f
	nop                                              ; $5065: $00
	ld   bc, $9601                                   ; $5066: $01 $01 $96
	ld   h, l                                        ; $5069: $65
	sbc  [hl]                                        ; $506a: $9e
	ld   l, [hl]                                     ; $506b: $6e
	ld   d, d                                        ; $506c: $52
	ld   h, [hl]                                     ; $506d: $66
	sub  l                                           ; $506e: $95
	ld   d, h                                        ; $506f: $54
	add  h                                           ; $5070: $84
	ld   l, [hl]                                     ; $5071: $6e
	sbc  a                                           ; $5072: $9f
	dec  c                                           ; $5073: $0d
	nop                                              ; $5074: $00
	ld   a, [bc]                                     ; $5075: $0a
	ld   b, $c1                                      ; $5076: $06 $c1
	dec  bc                                          ; $5078: $0b
	rrca                                             ; $5079: $0f
	nop                                              ; $507a: $00
	ld   bc, $030c                                   ; $507b: $01 $0c $03
	ld   bc, $9e50                                   ; $507e: $01 $50 $9e
	and  l                                           ; $5081: $a5
	rst  ToBoot                                         ; $5082: $c7
	call nz, $ffff                                   ; $5083: $c4 $ff $ff
	ld   [hl], d                                     ; $5086: $72
	adc  h                                           ; $5087: $8c
	ld   l, b                                        ; $5088: $68
	ld   d, d                                        ; $5089: $52
	ld   l, l                                        ; $508a: $6d
	dec  c                                           ; $508b: $0d
	inc  b                                           ; $508c: $04
	ld   c, c                                        ; $508d: $49
	ld   l, [hl]                                     ; $508e: $6e
	ld   h, c                                        ; $508f: $61
	sbc  b                                           ; $5090: $98
	sub  c                                           ; $5091: $91
	rst  $38                                         ; $5092: $ff
	rst  $38                                         ; $5093: $ff
	dec  c                                           ; $5094: $0d
	rst  $38                                         ; $5095: $ff
	rst  $38                                         ; $5096: $ff
	ld   [bc], a                                     ; $5097: $02
	jr   c, jr_054_509e                              ; $5098: $38 $04

	ld   d, d                                        ; $509a: $52
	ld   a, h                                        ; $509b: $7c
	inc  bc                                          ; $509c: $03
	ld   l, e                                        ; $509d: $6b

jr_054_509e:
	ld   l, [hl]                                     ; $509e: $6e
	sub  [hl]                                        ; $509f: $96
	rst  $38                                         ; $50a0: $ff
	rst  $38                                         ; $50a1: $ff
	dec  c                                           ; $50a2: $0d
	nop                                              ; $50a3: $00
	ld   a, [bc]                                     ; $50a4: $0a
	rlca                                             ; $50a5: $07
	pop  af                                          ; $50a6: $f1
	rlca                                             ; $50a7: $07
	inc  bc                                          ; $50a8: $03
	jr   nz, jr_054_50ac                             ; $50a9: $20 $01

	ld   a, [bc]                                     ; $50ab: $0a

jr_054_50ac:
	inc  hl                                          ; $50ac: $23
	nop                                              ; $50ad: $00
	ld   bc, $5490                                   ; $50ae: $01 $90 $54
	ld   [bc], a                                     ; $50b1: $02
	jr   nz, jr_054_50b8                             ; $50b2: $20 $04

	add  hl, hl                                      ; $50b4: $29
	sbc  [hl]                                        ; $50b5: $9e
	ld   [bc], a                                     ; $50b6: $02
	xor  h                                           ; $50b7: $ac

jr_054_50b8:
	ld   a, h                                        ; $50b8: $7c
	inc  b                                           ; $50b9: $04
	ld   a, d                                        ; $50ba: $7a
	inc  bc                                          ; $50bb: $03
	ld   c, e                                        ; $50bc: $4b
	ld   a, c                                        ; $50bd: $79
	dec  c                                           ; $50be: $0d
	inc  b                                           ; $50bf: $04
	jp   Jump_054_7471                               ; $50c0: $c3 $71 $74


	halt                                             ; $50c3: $76
	rst  $38                                         ; $50c4: $ff
	rst  $38                                         ; $50c5: $ff
	dec  c                                           ; $50c6: $0d
	nop                                              ; $50c7: $00
	ld   a, [bc]                                     ; $50c8: $0a
	ld   sp, $2040                                   ; $50c9: $31 $40 $20
	inc  bc                                          ; $50cc: $03
	jr   nz, jr_054_50d0                             ; $50cd: $20 $01

	ld   a, [bc]                                     ; $50cf: $0a

jr_054_50d0:
	add  hl, hl                                      ; $50d0: $29
	nop                                              ; $50d1: $00
	ld   b, $a2                                      ; $50d2: $06 $a2
	ld   a, [bc]                                     ; $50d4: $0a
	rrca                                             ; $50d5: $0f
	nop                                              ; $50d6: $00
	ld   bc, $030c                                   ; $50d7: $01 $0c $03
	ld   bc, $9e75                                   ; $50da: $01 $75 $9e
	ld   [hl], d                                     ; $50dd: $72
	ld   e, h                                        ; $50de: $5c
	ld   a, c                                        ; $50df: $79
	ld   [bc], a                                     ; $50e0: $02
	inc  e                                           ; $50e1: $1c
	and  b                                           ; $50e2: $a0
	ld   [bc], a                                     ; $50e3: $02
	jp   nc, Jump_054_7452                           ; $50e4: $d2 $52 $74

	rst  $38                                         ; $50e7: $ff
	rst  $38                                         ; $50e8: $ff
	dec  c                                           ; $50e9: $0d
	and  l                                           ; $50ea: $a5
	rst  ToBoot                                         ; $50eb: $c7
	call nz, $10fa                                   ; $50ec: $c4 $fa $10
	rst  $38                                         ; $50ef: $ff
	rst  $38                                         ; $50f0: $ff
	cp   h                                           ; $50f1: $bc
	db   $e3                                         ; $50f2: $e3
	push af                                          ; $50f3: $f5
	ret                                              ; $50f4: $c9


	ld   b, $01                                      ; $50f5: $06 $01
	ld   sp, hl                                      ; $50f7: $f9
	dec  c                                           ; $50f8: $0d
	rst  $38                                         ; $50f9: $ff
	adc  h                                           ; $50fa: $8c
	ld   l, a                                        ; $50fb: $6f
	ld   e, d                                        ; $50fc: $5a
	ld   d, [hl]                                     ; $50fd: $56
	ld   l, l                                        ; $50fe: $6d
	rst  $38                                         ; $50ff: $ff
	rst  $38                                         ; $5100: $ff
	dec  c                                           ; $5101: $0d
	nop                                              ; $5102: $00
	ld   a, [bc]                                     ; $5103: $0a
	rlca                                             ; $5104: $07
	pop  af                                          ; $5105: $f1
	rlca                                             ; $5106: $07
	inc  bc                                          ; $5107: $03
	jr   nz, jr_054_510b                             ; $5108: $20 $01

	ld   a, [bc]                                     ; $510a: $0a

jr_054_510b:
	inc  hl                                          ; $510b: $23
	nop                                              ; $510c: $00
	ld   bc, $5490                                   ; $510d: $01 $90 $54
	ld   [bc], a                                     ; $5110: $02
	jr   nz, jr_054_5117                             ; $5111: $20 $04

	add  hl, hl                                      ; $5113: $29
	sbc  [hl]                                        ; $5114: $9e
	ld   [bc], a                                     ; $5115: $02
	xor  h                                           ; $5116: $ac

jr_054_5117:
	ld   a, h                                        ; $5117: $7c
	inc  b                                           ; $5118: $04
	ld   a, d                                        ; $5119: $7a
	inc  bc                                          ; $511a: $03
	ld   c, e                                        ; $511b: $4b
	ld   a, c                                        ; $511c: $79
	dec  c                                           ; $511d: $0d
	inc  b                                           ; $511e: $04
	jp   Jump_054_7471                               ; $511f: $c3 $71 $74


	halt                                             ; $5122: $76
	rst  $38                                         ; $5123: $ff
	rst  $38                                         ; $5124: $ff
	dec  c                                           ; $5125: $0d
	nop                                              ; $5126: $00
	ld   a, [bc]                                     ; $5127: $0a
	ld   sp, $2040                                   ; $5128: $31 $40 $20
	inc  bc                                          ; $512b: $03
	jr   nz, jr_054_512f                             ; $512c: $20 $01

	ld   a, [bc]                                     ; $512e: $0a

jr_054_512f:
	add  hl, hl                                      ; $512f: $29
	nop                                              ; $5130: $00
	ld   b, $a2                                      ; $5131: $06 $a2
	ld   a, [bc]                                     ; $5133: $0a
	ld   bc, $7463                                   ; $5134: $01 $63 $74
	inc  bc                                          ; $5137: $03
	ld   l, b                                        ; $5138: $68
	ld   a, l                                        ; $5139: $7d
	rst  $38                                         ; $513a: $ff
	rst  $38                                         ; $513b: $ff
	dec  c                                           ; $513c: $0d
	nop                                              ; $513d: $00
	ld   a, [bc]                                     ; $513e: $0a
	add  hl, de                                      ; $513f: $19
	dec  b                                           ; $5140: $05
	inc  bc                                          ; $5141: $03
	ld   [bc], a                                     ; $5142: $02
	inc  e                                           ; $5143: $1c
	add  [hl]                                        ; $5144: $86
	ld   d, $04                                      ; $5145: $16 $04
	sbc  a                                           ; $5147: $9f
	nop                                              ; $5148: $00
	nop                                              ; $5149: $00
	inc  bc                                          ; $514a: $03
	ld   h, b                                        ; $514b: $60
	add  [hl]                                        ; $514c: $86
	ld   d, $04                                      ; $514d: $16 $04
	sbc  a                                           ; $514f: $9f
	nop                                              ; $5150: $00
	ld   bc, $6003                                   ; $5151: $01 $03 $60
	add  [hl]                                        ; $5154: $86
	jr   jr_054_515b                                 ; $5155: $18 $04

	sbc  a                                           ; $5157: $9f
	nop                                              ; $5158: $00
	ld   [bc], a                                     ; $5159: $02
	rlca                                             ; $515a: $07

jr_054_515b:
	dec  de                                          ; $515b: $1b
	inc  c                                           ; $515c: $0c
	ld   [bc], a                                     ; $515d: $02
	inc  bc                                          ; $515e: $03
	ld   bc, $2000                                   ; $515f: $01 $00 $20
	nop                                              ; $5162: $00
	rlca                                             ; $5163: $07
	jr   nc, @+$0e                                   ; $5164: $30 $0c

	ld   [bc], a                                     ; $5166: $02
	inc  bc                                          ; $5167: $03
	ld   bc, $2001                                   ; $5168: $01 $01 $20
	nop                                              ; $516b: $00
	rlca                                             ; $516c: $07
	adc  l                                           ; $516d: $8d
	inc  c                                           ; $516e: $0c
	ld   [bc], a                                     ; $516f: $02
	inc  bc                                          ; $5170: $03
	ld   bc, $2002                                   ; $5171: $01 $02 $20
	nop                                              ; $5174: $00
	ld   b, $05                                      ; $5175: $06 $05
	inc  c                                           ; $5177: $0c
	rrca                                             ; $5178: $0f
	nop                                              ; $5179: $00
	ld   bc, $7701                                   ; $517a: $01 $01 $77
	ld   [hl], c                                     ; $517d: $71
	ld   l, a                                        ; $517e: $6f
	ld   e, c                                        ; $517f: $59
	ld   [bc], a                                     ; $5180: $02
	ld   a, a                                        ; $5181: $7f
	ld   e, c                                        ; $5182: $59
	ld   a, b                                        ; $5183: $78
	ld   e, e                                        ; $5184: $5b
	sub  c                                           ; $5185: $91
	rst  $38                                         ; $5186: $ff
	rst  $38                                         ; $5187: $ff
	dec  c                                           ; $5188: $0d
	nop                                              ; $5189: $00
	ld   a, [bc]                                     ; $518a: $0a
	ld   b, $cc                                      ; $518b: $06 $cc
	dec  bc                                          ; $518d: $0b
	rrca                                             ; $518e: $0f
	nop                                              ; $518f: $00
	ld   bc, $9601                                   ; $5190: $01 $01 $96
	ld   h, l                                        ; $5193: $65
	sbc  [hl]                                        ; $5194: $9e
	ld   l, [hl]                                     ; $5195: $6e
	ld   d, d                                        ; $5196: $52
	ld   h, [hl]                                     ; $5197: $66
	sub  l                                           ; $5198: $95
	ld   d, h                                        ; $5199: $54
	add  h                                           ; $519a: $84
	ld   l, [hl]                                     ; $519b: $6e
	sbc  a                                           ; $519c: $9f
	dec  c                                           ; $519d: $0d
	nop                                              ; $519e: $00
	ld   a, [bc]                                     ; $519f: $0a
	ld   b, $e8                                      ; $51a0: $06 $e8
	inc  c                                           ; $51a2: $0c
	rrca                                             ; $51a3: $0f
	nop                                              ; $51a4: $00
	ld   bc, $030c                                   ; $51a5: $01 $0c $03
	ld   bc, $9d54                                   ; $51a8: $01 $54 $9d
	ld   [hl], c                                     ; $51ab: $71
	ld   a, [$a510]                                  ; $51ac: $fa $10 $a5
	call nz, $fcc7                                   ; $51af: $c4 $c7 $fc
	db   $fc                                         ; $51b2: $fc
	db   $fc                                         ; $51b3: $fc
	dec  c                                           ; $51b4: $0d
	rst  $38                                         ; $51b5: $ff
	rst  $38                                         ; $51b6: $ff
	ret  nz                                          ; $51b7: $c0

	and  l                                           ; $51b8: $a5
	and  $f9                                         ; $51b9: $e6 $f9
	db   $10                                         ; $51bb: $10
	pop  de                                          ; $51bc: $d1
	and  l                                           ; $51bd: $a5
	or   b                                           ; $51be: $b0
	ld   a, h                                        ; $51bf: $7c
	ld   sp, hl                                      ; $51c0: $f9
	dec  c                                           ; $51c1: $0d
	rst  $38                                         ; $51c2: $ff
	sub  b                                           ; $51c3: $90
	db   $fc                                         ; $51c4: $fc
	ld   [bc], a                                     ; $51c5: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $51c6: $cf
	dec  b                                           ; $51c7: $05
	ld   a, [de]                                     ; $51c8: $1a
	ld   h, e                                        ; $51c9: $63
	and  c                                           ; $51ca: $a1
	rst  $38                                         ; $51cb: $ff
	rst  $38                                         ; $51cc: $ff
	dec  c                                           ; $51cd: $0d
	nop                                              ; $51ce: $00
	ld   a, [bc]                                     ; $51cf: $0a
	rlca                                             ; $51d0: $07
	pop  af                                          ; $51d1: $f1
	rlca                                             ; $51d2: $07
	inc  bc                                          ; $51d3: $03
	jr   nz, jr_054_51d7                             ; $51d4: $20 $01

	ld   a, [bc]                                     ; $51d6: $0a

jr_054_51d7:
	inc  hl                                          ; $51d7: $23
	nop                                              ; $51d8: $00
	ld   bc, $5490                                   ; $51d9: $01 $90 $54
	ld   [bc], a                                     ; $51dc: $02
	jr   nz, jr_054_51e3                             ; $51dd: $20 $04

	add  hl, hl                                      ; $51df: $29
	sbc  [hl]                                        ; $51e0: $9e
	ld   [bc], a                                     ; $51e1: $02
	xor  h                                           ; $51e2: $ac

jr_054_51e3:
	ld   a, h                                        ; $51e3: $7c
	inc  b                                           ; $51e4: $04
	ld   a, d                                        ; $51e5: $7a
	inc  bc                                          ; $51e6: $03
	ld   c, e                                        ; $51e7: $4b
	ld   a, c                                        ; $51e8: $79
	dec  c                                           ; $51e9: $0d
	inc  b                                           ; $51ea: $04
	jp   Jump_054_7471                               ; $51eb: $c3 $71 $74


	halt                                             ; $51ee: $76
	rst  $38                                         ; $51ef: $ff
	rst  $38                                         ; $51f0: $ff
	dec  c                                           ; $51f1: $0d
	nop                                              ; $51f2: $00
	ld   a, [bc]                                     ; $51f3: $0a
	ld   sp, $2040                                   ; $51f4: $31 $40 $20
	inc  bc                                          ; $51f7: $03
	jr   nz, jr_054_51fb                             ; $51f8: $20 $01

	ld   a, [bc]                                     ; $51fa: $0a

jr_054_51fb:
	add  hl, hl                                      ; $51fb: $29
	nop                                              ; $51fc: $00
	ld   b, $cc                                      ; $51fd: $06 $cc
	dec  bc                                          ; $51ff: $0b
	rrca                                             ; $5200: $0f
	nop                                              ; $5201: $00
	ld   bc, $030c                                   ; $5202: $01 $0c $03
	ld   bc, $7154                                   ; $5205: $01 $54 $71
	ld   a, [$a510]                                  ; $5208: $fa $10 $a5
	call nz, $fcc0                                   ; $520b: $c4 $c0 $fc
	db   $fc                                         ; $520e: $fc
	db   $fc                                         ; $520f: $fc
	dec  c                                           ; $5210: $0d
	rst  $38                                         ; $5211: $ff
	rst  $38                                         ; $5212: $ff
	add  a                                           ; $5213: $87
	sbc  [hl]                                        ; $5214: $9e
	jp   c, $c2f5                                    ; $5215: $da $f5 $c2

	ret  c                                           ; $5218: $d8

	xor  $ba                                         ; $5219: $ee $ba
	rst  $38                                         ; $521b: $ff
	rst  $38                                         ; $521c: $ff
	dec  c                                           ; $521d: $0d
	rst  $38                                         ; $521e: $ff
	sub  b                                           ; $521f: $90
	db   $fc                                         ; $5220: $fc
	xor  h                                           ; $5221: $ac
	push af                                          ; $5222: $f5
	bit  4, e                                        ; $5223: $cb $63
	and  c                                           ; $5225: $a1
	rst  $38                                         ; $5226: $ff
	rst  $38                                         ; $5227: $ff
	dec  c                                           ; $5228: $0d
	nop                                              ; $5229: $00
	ld   a, [bc]                                     ; $522a: $0a
	rlca                                             ; $522b: $07
	pop  af                                          ; $522c: $f1
	rlca                                             ; $522d: $07
	inc  bc                                          ; $522e: $03
	jr   nz, jr_054_5232                             ; $522f: $20 $01

	ld   a, [bc]                                     ; $5231: $0a

jr_054_5232:
	inc  hl                                          ; $5232: $23
	nop                                              ; $5233: $00
	ld   bc, $5490                                   ; $5234: $01 $90 $54
	ld   [bc], a                                     ; $5237: $02
	jr   nz, jr_054_523e                             ; $5238: $20 $04

	add  hl, hl                                      ; $523a: $29
	sbc  [hl]                                        ; $523b: $9e
	ld   [bc], a                                     ; $523c: $02
	xor  h                                           ; $523d: $ac

jr_054_523e:
	ld   a, h                                        ; $523e: $7c
	inc  b                                           ; $523f: $04
	ld   a, d                                        ; $5240: $7a
	inc  bc                                          ; $5241: $03
	ld   c, e                                        ; $5242: $4b
	ld   a, c                                        ; $5243: $79
	dec  c                                           ; $5244: $0d
	inc  b                                           ; $5245: $04
	jp   Jump_054_7471                               ; $5246: $c3 $71 $74


	halt                                             ; $5249: $76
	rst  $38                                         ; $524a: $ff
	rst  $38                                         ; $524b: $ff
	dec  c                                           ; $524c: $0d
	nop                                              ; $524d: $00
	ld   a, [bc]                                     ; $524e: $0a
	ld   sp, $2040                                   ; $524f: $31 $40 $20
	inc  bc                                          ; $5252: $03
	jr   nz, jr_054_5256                             ; $5253: $20 $01

	ld   a, [bc]                                     ; $5255: $0a

jr_054_5256:
	add  hl, hl                                      ; $5256: $29
	nop                                              ; $5257: $00
	ld   b, $cc                                      ; $5258: $06 $cc
	dec  bc                                          ; $525a: $0b
	ld   bc, $7463                                   ; $525b: $01 $63 $74
	inc  bc                                          ; $525e: $03
	ld   l, b                                        ; $525f: $68
	ld   a, l                                        ; $5260: $7d
	rst  $38                                         ; $5261: $ff
	rst  $38                                         ; $5262: $ff
	dec  c                                           ; $5263: $0d
	nop                                              ; $5264: $00
	ld   a, [bc]                                     ; $5265: $0a
	add  hl, de                                      ; $5266: $19
	dec  b                                           ; $5267: $05
	inc  bc                                          ; $5268: $03
	inc  bc                                          ; $5269: $03
	ld   c, a                                        ; $526a: $4f
	add  [hl]                                        ; $526b: $86
	inc  d                                           ; $526c: $14
	inc  b                                           ; $526d: $04
	sbc  a                                           ; $526e: $9f
	nop                                              ; $526f: $00
	nop                                              ; $5270: $00
	inc  bc                                          ; $5271: $03
	ld   c, a                                        ; $5272: $4f
	add  [hl]                                        ; $5273: $86
	jr   @+$06                                       ; $5274: $18 $04

	sbc  a                                           ; $5276: $9f
	nop                                              ; $5277: $00
	ld   bc, $aa02                                   ; $5278: $01 $02 $aa
	sbc  e                                           ; $527b: $9b
	add  [hl]                                        ; $527c: $86
	jr   jr_054_5283                                 ; $527d: $18 $04

	sbc  a                                           ; $527f: $9f
	nop                                              ; $5280: $00
	ld   [bc], a                                     ; $5281: $02
	rlca                                             ; $5282: $07

jr_054_5283:
	ld   b, e                                        ; $5283: $43
	dec  c                                           ; $5284: $0d
	ld   [bc], a                                     ; $5285: $02
	inc  bc                                          ; $5286: $03
	ld   bc, $2000                                   ; $5287: $01 $00 $20
	nop                                              ; $528a: $00
	rlca                                             ; $528b: $07
	ld   e, b                                        ; $528c: $58
	dec  c                                           ; $528d: $0d
	ld   [bc], a                                     ; $528e: $02
	inc  bc                                          ; $528f: $03
	ld   bc, $2001                                   ; $5290: $01 $01 $20
	nop                                              ; $5293: $00
	rlca                                             ; $5294: $07
	xor  l                                           ; $5295: $ad
	dec  c                                           ; $5296: $0d
	ld   [bc], a                                     ; $5297: $02
	inc  bc                                          ; $5298: $03
	ld   bc, $2002                                   ; $5299: $01 $02 $20
	nop                                              ; $529c: $00
	ld   b, $2d                                      ; $529d: $06 $2d
	dec  c                                           ; $529f: $0d
	rrca                                             ; $52a0: $0f
	nop                                              ; $52a1: $00
	ld   bc, $7701                                   ; $52a2: $01 $01 $77
	ld   [hl], c                                     ; $52a5: $71
	ld   l, a                                        ; $52a6: $6f
	ld   e, c                                        ; $52a7: $59
	ld   [bc], a                                     ; $52a8: $02
	ld   a, a                                        ; $52a9: $7f
	ld   e, c                                        ; $52aa: $59
	ld   a, b                                        ; $52ab: $78
	ld   e, e                                        ; $52ac: $5b
	sub  c                                           ; $52ad: $91
	rst  $38                                         ; $52ae: $ff
	rst  $38                                         ; $52af: $ff
	dec  c                                           ; $52b0: $0d
	nop                                              ; $52b1: $00
	ld   a, [bc]                                     ; $52b2: $0a
	ld   b, $f3                                      ; $52b3: $06 $f3
	inc  c                                           ; $52b5: $0c
	rrca                                             ; $52b6: $0f
	nop                                              ; $52b7: $00
	ld   bc, $9601                                   ; $52b8: $01 $01 $96
	ld   h, l                                        ; $52bb: $65
	sbc  [hl]                                        ; $52bc: $9e
	ld   l, [hl]                                     ; $52bd: $6e
	ld   d, d                                        ; $52be: $52
	ld   h, [hl]                                     ; $52bf: $66
	sub  l                                           ; $52c0: $95
	ld   d, h                                        ; $52c1: $54
	add  h                                           ; $52c2: $84
	ld   l, [hl]                                     ; $52c3: $6e
	sbc  a                                           ; $52c4: $9f
	dec  c                                           ; $52c5: $0d
	nop                                              ; $52c6: $00
	ld   a, [bc]                                     ; $52c7: $0a
	ld   b, $09                                      ; $52c8: $06 $09
	ld   c, $0f                                      ; $52ca: $0e $0f
	nop                                              ; $52cc: $00
	ld   bc, $030c                                   ; $52cd: $01 $0c $03
	ld   bc, $c0a5                                   ; $52d0: $01 $a5 $c0
	call nz, $0dfa                                   ; $52d3: $c4 $fa $0d
	rst  $38                                         ; $52d6: $ff
	rst  $38                                         ; $52d7: $ff
	ld   [hl], l                                     ; $52d8: $75
	ld   e, c                                        ; $52d9: $59
	ld   d, d                                        ; $52da: $52
	or   b                                           ; $52db: $b0
	rst  JumpTable                                         ; $52dc: $df
	ld   a, h                                        ; $52dd: $7c
	ld   a, l                                        ; $52de: $7d
	sbc  b                                           ; $52df: $98
	adc  d                                           ; $52e0: $8a
	ld   [hl], h                                     ; $52e1: $74
	ld   sp, hl                                      ; $52e2: $f9
	dec  c                                           ; $52e3: $0d
	rst  $38                                         ; $52e4: $ff
	sub  b                                           ; $52e5: $90
	db   $fc                                         ; $52e6: $fc
	and  e                                           ; $52e7: $a3
	and  l                                           ; $52e8: $a5
	db   $ec                                         ; $52e9: $ec
	cp   d                                           ; $52ea: $ba
	rst  $38                                         ; $52eb: $ff
	rst  $38                                         ; $52ec: $ff
	dec  c                                           ; $52ed: $0d
	nop                                              ; $52ee: $00
	ld   a, [bc]                                     ; $52ef: $0a
	rlca                                             ; $52f0: $07
	pop  af                                          ; $52f1: $f1
	rlca                                             ; $52f2: $07
	inc  bc                                          ; $52f3: $03
	jr   nz, jr_054_52f7                             ; $52f4: $20 $01

	ld   a, [bc]                                     ; $52f6: $0a

jr_054_52f7:
	inc  hl                                          ; $52f7: $23
	nop                                              ; $52f8: $00
	ld   bc, $5490                                   ; $52f9: $01 $90 $54
	ld   [bc], a                                     ; $52fc: $02
	jr   nz, jr_054_5303                             ; $52fd: $20 $04

	add  hl, hl                                      ; $52ff: $29
	sbc  [hl]                                        ; $5300: $9e
	ld   [bc], a                                     ; $5301: $02
	xor  h                                           ; $5302: $ac

jr_054_5303:
	ld   a, h                                        ; $5303: $7c
	inc  b                                           ; $5304: $04
	ld   a, d                                        ; $5305: $7a
	inc  bc                                          ; $5306: $03
	ld   c, e                                        ; $5307: $4b
	ld   a, c                                        ; $5308: $79
	dec  c                                           ; $5309: $0d
	inc  b                                           ; $530a: $04
	jp   Jump_054_7471                               ; $530b: $c3 $71 $74


	halt                                             ; $530e: $76
	rst  $38                                         ; $530f: $ff
	rst  $38                                         ; $5310: $ff
	dec  c                                           ; $5311: $0d
	nop                                              ; $5312: $00
	ld   a, [bc]                                     ; $5313: $0a
	ld   sp, $2040                                   ; $5314: $31 $40 $20
	inc  bc                                          ; $5317: $03
	jr   nz, jr_054_531b                             ; $5318: $20 $01

	ld   a, [bc]                                     ; $531a: $0a

jr_054_531b:
	add  hl, hl                                      ; $531b: $29
	nop                                              ; $531c: $00
	ld   b, $f3                                      ; $531d: $06 $f3
	inc  c                                           ; $531f: $0c
	rrca                                             ; $5320: $0f
	nop                                              ; $5321: $00
	ld   bc, $030c                                   ; $5322: $01 $0c $03
	ld   bc, $c7a5                                   ; $5325: $01 $a5 $c7
	rst  ToBoot                                         ; $5328: $c7
	rst  ToBoot                                         ; $5329: $c7
	rst  $38                                         ; $532a: $ff
	rst  $38                                         ; $532b: $ff
	dec  c                                           ; $532c: $0d
	rst  $38                                         ; $532d: $ff
	rst  $38                                         ; $532e: $ff
	ld   [bc], a                                     ; $532f: $02
	jr   nz, jr_054_5337                             ; $5330: $20 $05

	or   d                                           ; $5332: $b2
	call nc, Call_054_7cf5                           ; $5333: $d4 $f5 $7c
	or   d                                           ; $5336: $b2

jr_054_5337:
	ei                                               ; $5337: $fb
	cp   d                                           ; $5338: $ba
	rst  $38                                         ; $5339: $ff
	rst  $38                                         ; $533a: $ff
	dec  c                                           ; $533b: $0d
	rst  $38                                         ; $533c: $ff
	sub  b                                           ; $533d: $90
	db   $fc                                         ; $533e: $fc
	inc  b                                           ; $533f: $04
	rst  $10                                         ; $5340: $d7
	inc  b                                           ; $5341: $04
	ld   hl, $0b04                                   ; $5342: $21 $04 $0b
	inc  bc                                          ; $5345: $03
	ld   h, h                                        ; $5346: $64
	rst  $38                                         ; $5347: $ff
	rst  $38                                         ; $5348: $ff
	dec  c                                           ; $5349: $0d
	nop                                              ; $534a: $00
	ld   a, [bc]                                     ; $534b: $0a
	rlca                                             ; $534c: $07
	pop  af                                          ; $534d: $f1
	rlca                                             ; $534e: $07
	inc  bc                                          ; $534f: $03
	jr   nz, jr_054_5353                             ; $5350: $20 $01

	ld   a, [bc]                                     ; $5352: $0a

jr_054_5353:
	inc  hl                                          ; $5353: $23
	nop                                              ; $5354: $00
	ld   bc, $5490                                   ; $5355: $01 $90 $54
	ld   [bc], a                                     ; $5358: $02
	jr   nz, jr_054_535f                             ; $5359: $20 $04

	add  hl, hl                                      ; $535b: $29
	sbc  [hl]                                        ; $535c: $9e
	ld   [bc], a                                     ; $535d: $02
	xor  h                                           ; $535e: $ac

jr_054_535f:
	ld   a, h                                        ; $535f: $7c
	inc  b                                           ; $5360: $04
	ld   a, d                                        ; $5361: $7a
	inc  bc                                          ; $5362: $03
	ld   c, e                                        ; $5363: $4b
	ld   a, c                                        ; $5364: $79
	dec  c                                           ; $5365: $0d
	inc  b                                           ; $5366: $04
	jp   Jump_054_7471                               ; $5367: $c3 $71 $74


	halt                                             ; $536a: $76
	rst  $38                                         ; $536b: $ff
	rst  $38                                         ; $536c: $ff
	dec  c                                           ; $536d: $0d
	nop                                              ; $536e: $00
	ld   a, [bc]                                     ; $536f: $0a
	ld   sp, $2040                                   ; $5370: $31 $40 $20
	inc  bc                                          ; $5373: $03
	jr   nz, jr_054_5377                             ; $5374: $20 $01

	ld   a, [bc]                                     ; $5376: $0a

jr_054_5377:
	add  hl, hl                                      ; $5377: $29
	nop                                              ; $5378: $00
	ld   b, $f3                                      ; $5379: $06 $f3
	inc  c                                           ; $537b: $0c
	ld   bc, $7463                                   ; $537c: $01 $63 $74
	inc  bc                                          ; $537f: $03
	ld   l, b                                        ; $5380: $68
	ld   a, l                                        ; $5381: $7d
	rst  $38                                         ; $5382: $ff
	rst  $38                                         ; $5383: $ff
	dec  c                                           ; $5384: $0d
	nop                                              ; $5385: $00
	ld   a, [bc]                                     ; $5386: $0a
	add  hl, de                                      ; $5387: $19
	dec  b                                           ; $5388: $05
	inc  bc                                          ; $5389: $03
	inc  bc                                          ; $538a: $03
	ld   h, b                                        ; $538b: $60
	add  [hl]                                        ; $538c: $86
	jr   jr_054_5393                                 ; $538d: $18 $04

	sbc  a                                           ; $538f: $9f
	nop                                              ; $5390: $00
	nop                                              ; $5391: $00
	ld   [bc], a                                     ; $5392: $02

jr_054_5393:
	inc  e                                           ; $5393: $1c
	add  [hl]                                        ; $5394: $86
	jr   @+$06                                       ; $5395: $18 $04

	sbc  a                                           ; $5397: $9f
	nop                                              ; $5398: $00
	ld   bc, $1c02                                   ; $5399: $01 $02 $1c
	add  [hl]                                        ; $539c: $86
	ld   d, $04                                      ; $539d: $16 $04
	sbc  a                                           ; $539f: $9f
	nop                                              ; $53a0: $00
	ld   [bc], a                                     ; $53a1: $02
	rlca                                             ; $53a2: $07
	ld   h, e                                        ; $53a3: $63
	ld   c, $02                                      ; $53a4: $0e $02
	inc  bc                                          ; $53a6: $03
	ld   bc, $2000                                   ; $53a7: $01 $00 $20
	nop                                              ; $53aa: $00
	rlca                                             ; $53ab: $07
	ld   a, b                                        ; $53ac: $78
	ld   c, $02                                      ; $53ad: $0e $02
	inc  bc                                          ; $53af: $03
	ld   bc, $2001                                   ; $53b0: $01 $01 $20
	nop                                              ; $53b3: $00
	rlca                                             ; $53b4: $07
	reti                                             ; $53b5: $d9


	ld   c, $02                                      ; $53b6: $0e $02
	inc  bc                                          ; $53b8: $03
	ld   bc, $2002                                   ; $53b9: $01 $02 $20
	nop                                              ; $53bc: $00
	ld   b, $4d                                      ; $53bd: $06 $4d
	ld   c, $0f                                      ; $53bf: $0e $0f
	nop                                              ; $53c1: $00
	ld   bc, $7701                                   ; $53c2: $01 $01 $77
	ld   [hl], c                                     ; $53c5: $71
	ld   l, a                                        ; $53c6: $6f
	ld   e, c                                        ; $53c7: $59
	ld   [bc], a                                     ; $53c8: $02
	ld   a, a                                        ; $53c9: $7f
	ld   e, c                                        ; $53ca: $59
	ld   a, b                                        ; $53cb: $78
	ld   e, e                                        ; $53cc: $5b
	sub  c                                           ; $53cd: $91
	rst  $38                                         ; $53ce: $ff
	rst  $38                                         ; $53cf: $ff
	dec  c                                           ; $53d0: $0d
	nop                                              ; $53d1: $00
	ld   a, [bc]                                     ; $53d2: $0a
	ld   b, $14                                      ; $53d3: $06 $14
	ld   c, $0f                                      ; $53d5: $0e $0f
	nop                                              ; $53d7: $00
	ld   bc, $9601                                   ; $53d8: $01 $01 $96
	ld   h, l                                        ; $53db: $65
	sbc  [hl]                                        ; $53dc: $9e
	ld   l, [hl]                                     ; $53dd: $6e
	ld   d, d                                        ; $53de: $52
	ld   h, [hl]                                     ; $53df: $66
	sub  l                                           ; $53e0: $95
	ld   d, h                                        ; $53e1: $54
	add  h                                           ; $53e2: $84
	ld   l, [hl]                                     ; $53e3: $6e
	sbc  a                                           ; $53e4: $9f
	dec  c                                           ; $53e5: $0d
	nop                                              ; $53e6: $00
	ld   a, [bc]                                     ; $53e7: $0a
	ld   b, $2e                                      ; $53e8: $06 $2e
	rrca                                             ; $53ea: $0f
	rrca                                             ; $53eb: $0f
	nop                                              ; $53ec: $00
	ld   bc, $030c                                   ; $53ed: $01 $0c $03
	ld   bc, $c7a5                                   ; $53f0: $01 $a5 $c7
	call nz, $10fa                                   ; $53f3: $c4 $fa $10
	inc  b                                           ; $53f6: $04
	ld   c, c                                        ; $53f7: $49
	ld   e, c                                        ; $53f8: $59
	dec  b                                           ; $53f9: $05
	ld   [de], a                                     ; $53fa: $12
	ld   l, a                                        ; $53fb: $6f
	ld   [hl], h                                     ; $53fc: $74
	ld   e, e                                        ; $53fd: $5b
	ld   l, l                                        ; $53fe: $6d
	sbc  a                                           ; $53ff: $9f
	dec  c                                           ; $5400: $0d
	rst  $38                                         ; $5401: $ff
	rst  $38                                         ; $5402: $ff
	inc  b                                           ; $5403: $04
	adc  a                                           ; $5404: $8f
	ld   sp, hl                                      ; $5405: $f9
	db   $10                                         ; $5406: $10
	ret  nc                                          ; $5407: $d0

	ei                                               ; $5408: $fb
	jp   z, $d1ac                                    ; $5409: $ca $ac $d1

	ei                                               ; $540c: $fb
	rst  $38                                         ; $540d: $ff
	dec  c                                           ; $540e: $0d
	rst  $38                                         ; $540f: $ff
	sub  b                                           ; $5410: $90
	db   $fc                                         ; $5411: $fc
	rst  JumpTable                                         ; $5412: $df
	db   $ec                                         ; $5413: $ec
	and  e                                           ; $5414: $a3
	ld   h, e                                        ; $5415: $63
	and  c                                           ; $5416: $a1
	rst  $38                                         ; $5417: $ff
	rst  $38                                         ; $5418: $ff
	dec  c                                           ; $5419: $0d
	nop                                              ; $541a: $00
	ld   a, [bc]                                     ; $541b: $0a
	rlca                                             ; $541c: $07
	pop  af                                          ; $541d: $f1
	rlca                                             ; $541e: $07
	inc  bc                                          ; $541f: $03
	jr   nz, jr_054_5423                             ; $5420: $20 $01

	ld   a, [bc]                                     ; $5422: $0a

jr_054_5423:
	inc  hl                                          ; $5423: $23
	nop                                              ; $5424: $00
	ld   bc, $5490                                   ; $5425: $01 $90 $54
	ld   [bc], a                                     ; $5428: $02
	jr   nz, jr_054_542f                             ; $5429: $20 $04

	add  hl, hl                                      ; $542b: $29
	sbc  [hl]                                        ; $542c: $9e
	ld   [bc], a                                     ; $542d: $02
	xor  h                                           ; $542e: $ac

jr_054_542f:
	ld   a, h                                        ; $542f: $7c
	inc  b                                           ; $5430: $04
	ld   a, d                                        ; $5431: $7a
	inc  bc                                          ; $5432: $03
	ld   c, e                                        ; $5433: $4b
	ld   a, c                                        ; $5434: $79
	dec  c                                           ; $5435: $0d
	inc  b                                           ; $5436: $04
	jp   Jump_054_7471                               ; $5437: $c3 $71 $74


	halt                                             ; $543a: $76
	rst  $38                                         ; $543b: $ff
	rst  $38                                         ; $543c: $ff
	dec  c                                           ; $543d: $0d
	nop                                              ; $543e: $00
	ld   a, [bc]                                     ; $543f: $0a
	ld   sp, $2040                                   ; $5440: $31 $40 $20
	inc  bc                                          ; $5443: $03
	jr   nz, jr_054_5447                             ; $5444: $20 $01

	ld   a, [bc]                                     ; $5446: $0a

jr_054_5447:
	add  hl, hl                                      ; $5447: $29
	nop                                              ; $5448: $00
	ld   b, $14                                      ; $5449: $06 $14
	ld   c, $0f                                      ; $544b: $0e $0f
	nop                                              ; $544d: $00
	ld   bc, $030c                                   ; $544e: $01 $0c $03
	ld   bc, $a550                                   ; $5451: $01 $50 $a5
	rst  ToBoot                                         ; $5454: $c7
	call nz, $ffff                                   ; $5455: $c4 $ff $ff
	dec  c                                           ; $5458: $0d
	rst  $38                                         ; $5459: $ff
	rst  $38                                         ; $545a: $ff
	ld   a, b                                        ; $545b: $78
	sbc  [hl]                                        ; $545c: $9e
	inc  bc                                          ; $545d: $03
	jp   nc, $2c04                                   ; $545e: $d2 $04 $2c

	rst  $38                                         ; $5461: $ff
	rst  $38                                         ; $5462: $ff
	dec  c                                           ; $5463: $0d
	rst  $38                                         ; $5464: $ff
	sub  b                                           ; $5465: $90
	db   $fc                                         ; $5466: $fc
	ld   h, a                                        ; $5467: $67
	adc  l                                           ; $5468: $8d
	sbc  d                                           ; $5469: $9a
	ld   h, e                                        ; $546a: $63
	and  c                                           ; $546b: $a1
	rst  $38                                         ; $546c: $ff
	rst  $38                                         ; $546d: $ff
	dec  c                                           ; $546e: $0d
	nop                                              ; $546f: $00
	ld   a, [bc]                                     ; $5470: $0a
	rlca                                             ; $5471: $07
	pop  af                                          ; $5472: $f1
	rlca                                             ; $5473: $07
	inc  bc                                          ; $5474: $03
	jr   nz, jr_054_5478                             ; $5475: $20 $01

	ld   a, [bc]                                     ; $5477: $0a

jr_054_5478:
	inc  hl                                          ; $5478: $23
	nop                                              ; $5479: $00
	ld   bc, $5490                                   ; $547a: $01 $90 $54
	ld   [bc], a                                     ; $547d: $02
	jr   nz, jr_054_5484                             ; $547e: $20 $04

	add  hl, hl                                      ; $5480: $29
	sbc  [hl]                                        ; $5481: $9e
	ld   [bc], a                                     ; $5482: $02
	xor  h                                           ; $5483: $ac

jr_054_5484:
	ld   a, h                                        ; $5484: $7c
	inc  b                                           ; $5485: $04
	ld   a, d                                        ; $5486: $7a
	inc  bc                                          ; $5487: $03
	ld   c, e                                        ; $5488: $4b
	ld   a, c                                        ; $5489: $79
	dec  c                                           ; $548a: $0d
	inc  b                                           ; $548b: $04
	jp   Jump_054_7471                               ; $548c: $c3 $71 $74


	halt                                             ; $548f: $76
	rst  $38                                         ; $5490: $ff
	rst  $38                                         ; $5491: $ff
	dec  c                                           ; $5492: $0d
	nop                                              ; $5493: $00
	ld   a, [bc]                                     ; $5494: $0a
	ld   sp, $2040                                   ; $5495: $31 $40 $20
	inc  bc                                          ; $5498: $03
	jr   nz, jr_054_549c                             ; $5499: $20 $01

Jump_054_549b:
	ld   a, [bc]                                     ; $549b: $0a

jr_054_549c:
	add  hl, hl                                      ; $549c: $29
	nop                                              ; $549d: $00
	ld   b, $14                                      ; $549e: $06 $14
	ld   c, $01                                      ; $54a0: $0e $01
	ld   l, e                                        ; $54a2: $6b
	ld   h, l                                        ; $54a3: $65
	ld   [hl], h                                     ; $54a4: $74
	inc  bc                                          ; $54a5: $03
	ld   l, c                                        ; $54a6: $69
	ld   [bc], a                                     ; $54a7: $02
	xor  d                                           ; $54a8: $aa
	ld   a, l                                        ; $54a9: $7d
	rst  $38                                         ; $54aa: $ff
	rst  $38                                         ; $54ab: $ff
	dec  c                                           ; $54ac: $0d
	nop                                              ; $54ad: $00
	ld   a, [bc]                                     ; $54ae: $0a
	add  hl, de                                      ; $54af: $19
	dec  b                                           ; $54b0: $05
	inc  bc                                          ; $54b1: $03
	inc  bc                                          ; $54b2: $03
	ld   c, a                                        ; $54b3: $4f
	add  [hl]                                        ; $54b4: $86
	ld   [de], a                                     ; $54b5: $12
	ld   de, $9f04                                   ; $54b6: $11 $04 $9f
	nop                                              ; $54b9: $00
	nop                                              ; $54ba: $00
	inc  bc                                          ; $54bb: $03
	ld   h, b                                        ; $54bc: $60
	add  [hl]                                        ; $54bd: $86
	ld   [de], a                                     ; $54be: $12
	ld   de, $9f04                                   ; $54bf: $11 $04 $9f
	nop                                              ; $54c2: $00
	ld   bc, $aa02                                   ; $54c3: $01 $02 $aa
	sbc  e                                           ; $54c6: $9b
	add  [hl]                                        ; $54c7: $86
	ld   [de], a                                     ; $54c8: $12
	ld   de, $9f04                                   ; $54c9: $11 $04 $9f
	nop                                              ; $54cc: $00
	ld   [bc], a                                     ; $54cd: $02
	rlca                                             ; $54ce: $07
	adc  [hl]                                        ; $54cf: $8e
	rrca                                             ; $54d0: $0f
	ld   [bc], a                                     ; $54d1: $02
	inc  bc                                          ; $54d2: $03
	ld   bc, $2000                                   ; $54d3: $01 $00 $20
	nop                                              ; $54d6: $00
	rlca                                             ; $54d7: $07
	and  e                                           ; $54d8: $a3
	rrca                                             ; $54d9: $0f
	ld   [bc], a                                     ; $54da: $02
	inc  bc                                          ; $54db: $03
	ld   bc, $2001                                   ; $54dc: $01 $01 $20
	nop                                              ; $54df: $00
	rlca                                             ; $54e0: $07
	ld   sp, hl                                      ; $54e1: $f9
	rrca                                             ; $54e2: $0f
	ld   [bc], a                                     ; $54e3: $02
	inc  bc                                          ; $54e4: $03
	ld   bc, $2002                                   ; $54e5: $01 $02 $20
	nop                                              ; $54e8: $00
	ld   b, $79                                      ; $54e9: $06 $79
	rrca                                             ; $54eb: $0f
	rrca                                             ; $54ec: $0f
	nop                                              ; $54ed: $00
	ld   bc, $0301                                   ; $54ee: $01 $01 $03
	ld   c, a                                        ; $54f1: $4f
	add  [hl]                                        ; $54f2: $86
	dec  b                                           ; $54f3: $05
	db   $dd                                         ; $54f4: $dd
	adc  h                                           ; $54f5: $8c
	ld   a, b                                        ; $54f6: $78
	ld   e, e                                        ; $54f7: $5b
	sub  c                                           ; $54f8: $91
	rst  $38                                         ; $54f9: $ff
	rst  $38                                         ; $54fa: $ff
	dec  c                                           ; $54fb: $0d
	nop                                              ; $54fc: $00
	ld   a, [bc]                                     ; $54fd: $0a
	ld   b, $3c                                      ; $54fe: $06 $3c
	rrca                                             ; $5500: $0f
	rrca                                             ; $5501: $0f
	nop                                              ; $5502: $00
	ld   bc, $9601                                   ; $5503: $01 $01 $96
	ld   h, l                                        ; $5506: $65
	sbc  [hl]                                        ; $5507: $9e
	ld   l, [hl]                                     ; $5508: $6e
	ld   d, d                                        ; $5509: $52
	ld   h, [hl]                                     ; $550a: $66
	sub  l                                           ; $550b: $95
	ld   d, h                                        ; $550c: $54
	add  h                                           ; $550d: $84
	ld   l, [hl]                                     ; $550e: $6e
	sbc  a                                           ; $550f: $9f
	dec  c                                           ; $5510: $0d
	nop                                              ; $5511: $00
	ld   a, [bc]                                     ; $5512: $0a
	ld   b, $4d                                      ; $5513: $06 $4d
	db   $10                                         ; $5515: $10
	rrca                                             ; $5516: $0f
	nop                                              ; $5517: $00
	ld   bc, $030c                                   ; $5518: $01 $0c $03
	ld   bc, $c7a5                                   ; $551b: $01 $a5 $c7
	call nz, $0dfa                                   ; $551e: $c4 $fa $0d
	rst  $38                                         ; $5521: $ff
	rst  $38                                         ; $5522: $ff
	ld   [bc], a                                     ; $5523: $02
	jr   c, jr_054_552a                              ; $5524: $38 $04

	ld   d, d                                        ; $5526: $52
	ld   a, h                                        ; $5527: $7c
	inc  bc                                          ; $5528: $03
	ld   a, l                                        ; $5529: $7d

jr_054_552a:
	rst  $38                                         ; $552a: $ff
	rst  $38                                         ; $552b: $ff
	ld   sp, hl                                      ; $552c: $f9
	dec  c                                           ; $552d: $0d
	ld   a, b                                        ; $552e: $78
	ld   l, d                                        ; $552f: $6a
	ld   h, c                                        ; $5530: $61
	and  c                                           ; $5531: $a1
	ld   a, b                                        ; $5532: $78
	halt                                             ; $5533: $76
	ld   h, c                                        ; $5534: $61
	sbc  e                                           ; $5535: $9b
	ld   a, c                                        ; $5536: $79
	rst  $38                                         ; $5537: $ff
	rst  $38                                         ; $5538: $ff
	dec  c                                           ; $5539: $0d
	nop                                              ; $553a: $00
	ld   a, [bc]                                     ; $553b: $0a
	rlca                                             ; $553c: $07
	pop  af                                          ; $553d: $f1
	rlca                                             ; $553e: $07
	inc  bc                                          ; $553f: $03
	jr   nz, jr_054_5543                             ; $5540: $20 $01

	ld   a, [bc]                                     ; $5542: $0a

jr_054_5543:
	inc  hl                                          ; $5543: $23
	nop                                              ; $5544: $00
	ld   bc, $5490                                   ; $5545: $01 $90 $54
	ld   [bc], a                                     ; $5548: $02
	jr   nz, jr_054_554f                             ; $5549: $20 $04

	add  hl, hl                                      ; $554b: $29
	sbc  [hl]                                        ; $554c: $9e
	ld   [bc], a                                     ; $554d: $02
	xor  h                                           ; $554e: $ac

jr_054_554f:
	ld   a, h                                        ; $554f: $7c
	inc  b                                           ; $5550: $04
	ld   a, d                                        ; $5551: $7a
	inc  bc                                          ; $5552: $03
	ld   c, e                                        ; $5553: $4b
	ld   a, c                                        ; $5554: $79
	dec  c                                           ; $5555: $0d
	inc  b                                           ; $5556: $04
	jp   Jump_054_7471                               ; $5557: $c3 $71 $74


	halt                                             ; $555a: $76
	rst  $38                                         ; $555b: $ff
	rst  $38                                         ; $555c: $ff
	dec  c                                           ; $555d: $0d
	nop                                              ; $555e: $00
	ld   a, [bc]                                     ; $555f: $0a
	ld   sp, $2040                                   ; $5560: $31 $40 $20
	inc  bc                                          ; $5563: $03
	jr   nz, jr_054_5567                             ; $5564: $20 $01

	ld   a, [bc]                                     ; $5566: $0a

jr_054_5567:
	add  hl, hl                                      ; $5567: $29
	nop                                              ; $5568: $00
	ld   b, $3c                                      ; $5569: $06 $3c
	rrca                                             ; $556b: $0f
	rrca                                             ; $556c: $0f
	nop                                              ; $556d: $00
	ld   bc, $030c                                   ; $556e: $01 $0c $03
	ld   bc, $c7a5                                   ; $5571: $01 $a5 $c7
	call nz, $0dfa                                   ; $5574: $c4 $fa $0d
	rst  $38                                         ; $5577: $ff
	inc  bc                                          ; $5578: $03
	daa                                              ; $5579: $27
	ld   [bc], a                                     ; $557a: $02
	sub  c                                           ; $557b: $91
	ld   a, h                                        ; $557c: $7c
	inc  b                                           ; $557d: $04
	jr   nz, jr_054_55d9                             ; $557e: $20 $59

	rst  $38                                         ; $5580: $ff
	rst  $38                                         ; $5581: $ff
	dec  c                                           ; $5582: $0d
	rst  $38                                         ; $5583: $ff
	sub  b                                           ; $5584: $90
	db   $fc                                         ; $5585: $fc
	rst  JumpTable                                         ; $5586: $df
	db   $ec                                         ; $5587: $ec
	and  e                                           ; $5588: $a3
	ld   h, e                                        ; $5589: $63
	and  c                                           ; $558a: $a1
	rst  $38                                         ; $558b: $ff
	rst  $38                                         ; $558c: $ff
	dec  c                                           ; $558d: $0d
	nop                                              ; $558e: $00
	ld   a, [bc]                                     ; $558f: $0a
	rlca                                             ; $5590: $07
	pop  af                                          ; $5591: $f1
	rlca                                             ; $5592: $07
	inc  bc                                          ; $5593: $03
	jr   nz, jr_054_5597                             ; $5594: $20 $01

	ld   a, [bc]                                     ; $5596: $0a

jr_054_5597:
	inc  hl                                          ; $5597: $23
	nop                                              ; $5598: $00
	ld   bc, $5490                                   ; $5599: $01 $90 $54
	ld   [bc], a                                     ; $559c: $02
	jr   nz, jr_054_55a3                             ; $559d: $20 $04

	add  hl, hl                                      ; $559f: $29
	sbc  [hl]                                        ; $55a0: $9e
	ld   [bc], a                                     ; $55a1: $02
	xor  h                                           ; $55a2: $ac

jr_054_55a3:
	ld   a, h                                        ; $55a3: $7c
	inc  b                                           ; $55a4: $04
	ld   a, d                                        ; $55a5: $7a
	inc  bc                                          ; $55a6: $03
	ld   c, e                                        ; $55a7: $4b
	ld   a, c                                        ; $55a8: $79
	dec  c                                           ; $55a9: $0d
	inc  b                                           ; $55aa: $04
	jp   Jump_054_7471                               ; $55ab: $c3 $71 $74


	halt                                             ; $55ae: $76
	rst  $38                                         ; $55af: $ff
	rst  $38                                         ; $55b0: $ff
	dec  c                                           ; $55b1: $0d
	nop                                              ; $55b2: $00
	ld   a, [bc]                                     ; $55b3: $0a
	ld   sp, $2040                                   ; $55b4: $31 $40 $20
	inc  bc                                          ; $55b7: $03
	jr   nz, jr_054_55bb                             ; $55b8: $20 $01

	ld   a, [bc]                                     ; $55ba: $0a

jr_054_55bb:
	add  hl, hl                                      ; $55bb: $29
	nop                                              ; $55bc: $00
	ld   b, $3c                                      ; $55bd: $06 $3c
	rrca                                             ; $55bf: $0f
	inc  c                                           ; $55c0: $0c
	ld   [bc], a                                     ; $55c1: $02
	ld   c, $74                                      ; $55c2: $0e $74
	inc  e                                           ; $55c4: $1c
	inc  bc                                          ; $55c5: $03
	inc  bc                                          ; $55c6: $03
	inc  bc                                          ; $55c7: $03
	dec  e                                           ; $55c8: $1d
	ld   b, b                                        ; $55c9: $40
	inc  de                                          ; $55ca: $13
	inc  bc                                          ; $55cb: $03
	inc  de                                          ; $55cc: $13
	ld   bc, $2803                                   ; $55cd: $01 $03 $28
	nop                                              ; $55d0: $00
	ld   bc, $9e50                                   ; $55d1: $01 $50 $9e
	ld   [$5d00], sp                                 ; $55d4: $08 $00 $5d
	and  c                                           ; $55d7: $a1
	sbc  a                                           ; $55d8: $9f

jr_054_55d9:
	dec  c                                           ; $55d9: $0d
	inc  b                                           ; $55da: $04
	sub  $02                                         ; $55db: $d6 $02
	jp   $0379                                       ; $55dd: $c3 $79 $03


jr_054_55e0:
	add  b                                           ; $55e0: $80
	ld   [hl], h                                     ; $55e1: $74
	ld   h, c                                        ; $55e2: $61
	sbc  d                                           ; $55e3: $9a
	ld   l, l                                        ; $55e4: $6d
	ld   a, h                                        ; $55e5: $7c
	ld   a, e                                        ; $55e6: $7b
	sbc  a                                           ; $55e7: $9f
	dec  c                                           ; $55e8: $0d
	nop                                              ; $55e9: $00
	ld   a, [bc]                                     ; $55ea: $0a
	rrca                                             ; $55eb: $0f
	nop                                              ; $55ec: $00
	ld   bc, $5601                                   ; $55ed: $01 $01 $56
	ld   d, [hl]                                     ; $55f0: $56
	sbc  [hl]                                        ; $55f1: $9e
	ld   [hl], a                                     ; $55f2: $77
	ld   d, h                                        ; $55f3: $54
	ld   a, c                                        ; $55f4: $79
	ld   e, c                                        ; $55f5: $59
	rst  $38                                         ; $55f6: $ff
	rst  $38                                         ; $55f7: $ff
	dec  c                                           ; $55f8: $0d
	nop                                              ; $55f9: $00
	ld   a, [bc]                                     ; $55fa: $0a
	ld   d, $21                                      ; $55fb: $16 $21
	rrca                                             ; $55fd: $0f
	inc  bc                                          ; $55fe: $03
	inc  bc                                          ; $55ff: $03
	ld   bc, $546b                                   ; $5600: $01 $6b $54
	sbc  [hl]                                        ; $5603: $9e
	or   h                                           ; $5604: $b4
	xor  $a0                                         ; $5605: $ee $a0
	inc  b                                           ; $5607: $04
	inc  d                                           ; $5608: $14
	ld   h, l                                        ; $5609: $65
	ld   [hl], h                                     ; $560a: $74
	ld   d, d                                        ; $560b: $52
	ld   l, l                                        ; $560c: $6d
	ld   a, h                                        ; $560d: $7c
	sub  [hl]                                        ; $560e: $96
	sbc  a                                           ; $560f: $9f
	dec  c                                           ; $5610: $0d
	nop                                              ; $5611: $00
	ld   a, [bc]                                     ; $5612: $0a
	rrca                                             ; $5613: $0f
	nop                                              ; $5614: $00
	ld   bc, $7501                                   ; $5615: $01 $01 $75
	sbc  [hl]                                        ; $5618: $9e
	inc  bc                                          ; $5619: $03
	db   $e4                                         ; $561a: $e4
	dec  b                                           ; $561b: $05
	ld   [hl], l                                     ; $561c: $75
	rst  $38                                         ; $561d: $ff
	rst  $38                                         ; $561e: $ff
	ld   sp, hl                                      ; $561f: $f9
	dec  c                                           ; $5620: $0d
	nop                                              ; $5621: $00
	ld   a, [bc]                                     ; $5622: $0a
	rrca                                             ; $5623: $0f
	inc  bc                                          ; $5624: $03
	inc  bc                                          ; $5625: $03
	ld   bc, $5063                                   ; $5626: $01 $63 $50
	sbc  [hl]                                        ; $5629: $9e
	sub  b                                           ; $562a: $90
	ld   d, h                                        ; $562b: $54
	ld   e, b                                        ; $562c: $58
	sbc  l                                           ; $562d: $9d
	ld   e, c                                        ; $562e: $59
	sbc  b                                           ; $562f: $98
	ld   a, e                                        ; $5630: $7b
	sbc  a                                           ; $5631: $9f
	dec  c                                           ; $5632: $0d
	ld   [bc], a                                     ; $5633: $02
	ld   sp, $7005                                   ; $5634: $31 $05 $70
	sub  b                                           ; $5637: $90
	ld   a, b                                        ; $5638: $78
	sbc  d                                           ; $5639: $9a
	ld   l, l                                        ; $563a: $6d
	ld   [hl], l                                     ; $563b: $75
	ld   h, l                                        ; $563c: $65
	sub  l                                           ; $563d: $95
	ld   d, h                                        ; $563e: $54
	ld   e, c                                        ; $563f: $59
	sub  a                                           ; $5640: $97
	dec  c                                           ; $5641: $0d
	ld   h, c                                        ; $5642: $61
	sbc  d                                           ; $5643: $9a
	sbc  [hl]                                        ; $5644: $9e
	inc  bc                                          ; $5645: $03
	jr   jr_054_55e0                                 ; $5646: $18 $98

	inc  b                                           ; $5648: $04
	ld   [hl], c                                     ; $5649: $71
	ld   e, a                                        ; $564a: $5f
	ld   [hl], h                                     ; $564b: $74
	ld   e, e                                        ; $564c: $5b
	ld   [hl], h                                     ; $564d: $74
	sbc  a                                           ; $564e: $9f
	dec  c                                           ; $564f: $0d
	nop                                              ; $5650: $00
	ld   a, [bc]                                     ; $5651: $0a
	dec  c                                           ; $5652: $0d
	nop                                              ; $5653: $00
	nop                                              ; $5654: $00
	rrca                                             ; $5655: $0f
	nop                                              ; $5656: $00
	ld   bc, $020c                                   ; $5657: $01 $0c $02
	ld   b, $ea                                      ; $565a: $06 $ea
	db   $10                                         ; $565c: $10
	ld   c, $03                                      ; $565d: $0e $03
	rrca                                             ; $565f: $0f
	inc  bc                                          ; $5660: $03
	nop                                              ; $5661: $00
	ld   bc, $7152                                   ; $5662: $01 $52 $71
	ld   e, e                                        ; $5665: $5b
	ld   a, c                                        ; $5666: $79
	ld   [bc], a                                     ; $5667: $02
	rst  $30                                         ; $5668: $f7
	inc  b                                           ; $5669: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $566a: $cf
	ld   h, a                                        ; $566b: $67
	sbc  c                                           ; $566c: $99
	sbc  l                                           ; $566d: $9d
	ld   a, e                                        ; $566e: $7b
	sbc  a                                           ; $566f: $9f
	dec  c                                           ; $5670: $0d
	ld   a, [bc]                                     ; $5671: $0a
	ld   [bc], a                                     ; $5672: $02
	inc  bc                                          ; $5673: $03
	ld   c, a                                        ; $5674: $4f
	ld   a, c                                        ; $5675: $79
	inc  de                                          ; $5676: $13
	inc  b                                           ; $5677: $04
	sbc  a                                           ; $5678: $9f
	sbc  [hl]                                        ; $5679: $9e
	ld   [bc], a                                     ; $567a: $02
	inc  e                                           ; $567b: $1c
	ld   a, c                                        ; $567c: $79
	ld   d, $04                                      ; $567d: $16 $04
	sbc  a                                           ; $567f: $9f
	sbc  [hl]                                        ; $5680: $9e
	inc  bc                                          ; $5681: $03
	ld   c, a                                        ; $5682: $4f
	ld   a, c                                        ; $5683: $79
	rla                                              ; $5684: $17
	inc  b                                           ; $5685: $04
	sbc  a                                           ; $5686: $9f
	dec  c                                           ; $5687: $0d
	inc  bc                                          ; $5688: $03
	ld   h, b                                        ; $5689: $60
	ld   a, c                                        ; $568a: $79
	dec  d                                           ; $568b: $15
	inc  b                                           ; $568c: $04
	sbc  a                                           ; $568d: $9f
	sbc  [hl]                                        ; $568e: $9e
	inc  bc                                          ; $568f: $03
	ld   c, a                                        ; $5690: $4f
	ld   a, c                                        ; $5691: $79
	ld   [de], a                                     ; $5692: $12
	inc  b                                           ; $5693: $04
	sbc  a                                           ; $5694: $9f
	ld   a, [bc]                                     ; $5695: $0a
	inc  bc                                          ; $5696: $03
	sub  [hl]                                        ; $5697: $96
	sbc  a                                           ; $5698: $9f
	dec  c                                           ; $5699: $0d
	nop                                              ; $569a: $00
	ld   a, [bc]                                     ; $569b: $0a
	rrca                                             ; $569c: $0f
	dec  c                                           ; $569d: $0d
	inc  bc                                          ; $569e: $03
	ld   bc, $ecdf                                   ; $569f: $01 $df $ec
	and  e                                           ; $56a2: $a3
	ld   h, e                                        ; $56a3: $63
	ei                                               ; $56a4: $fb
	and  c                                           ; $56a5: $a1
	ld   a, [$ac0d]                                  ; $56a6: $fa $0d $ac
	push af                                          ; $56a9: $f5
	bit  4, e                                        ; $56aa: $cb $63
	and  c                                           ; $56ac: $a1
	halt                                             ; $56ad: $76
	ld   h, a                                        ; $56ae: $67
	adc  l                                           ; $56af: $8d
	sbc  d                                           ; $56b0: $9a
	ld   h, e                                        ; $56b1: $63
	and  c                                           ; $56b2: $a1
	ld   e, d                                        ; $56b3: $5a
	dec  c                                           ; $56b4: $0d
	adc  h                                           ; $56b5: $8c
	ld   l, l                                        ; $56b6: $6d
	or   d                                           ; $56b7: $b2
	push af                                          ; $56b8: $f5
	xor  h                                           ; $56b9: $ac
	ld   h, l                                        ; $56ba: $65
	ld   [hl], h                                     ; $56bb: $74
	adc  h                                           ; $56bc: $8c
	ld   h, a                                        ; $56bd: $67
	sbc  a                                           ; $56be: $9f
	dec  c                                           ; $56bf: $0d
	nop                                              ; $56c0: $00
	ld   a, [bc]                                     ; $56c1: $0a
	rrca                                             ; $56c2: $0f
	inc  bc                                          ; $56c3: $03
	ld   [bc], a                                     ; $56c4: $02
	ld   bc, $a502                                   ; $56c5: $01 $02 $a5
	sbc  [hl]                                        ; $56c8: $9e
	ld   [bc], a                                     ; $56c9: $02
	ld   a, a                                        ; $56ca: $7f
	ld   e, l                                        ; $56cb: $5d
	sbc  l                                           ; $56cc: $9d
	sbc  a                                           ; $56cd: $9f
	dec  c                                           ; $56ce: $0d
	nop                                              ; $56cf: $00
	ld   a, [bc]                                     ; $56d0: $0a
	rrca                                             ; $56d1: $0f
	inc  bc                                          ; $56d2: $03
	inc  bc                                          ; $56d3: $03
	ld   bc, $9166                                   ; $56d4: $01 $66 $91
	sbc  [hl]                                        ; $56d7: $9e
	ld   e, b                                        ; $56d8: $58
	ld   [bc], a                                     ; $56d9: $02
	add  b                                           ; $56da: $80
	ld   d, d                                        ; $56db: $52
	ld   a, e                                        ; $56dc: $7b
	sbc  a                                           ; $56dd: $9f
	dec  c                                           ; $56de: $0d
	nop                                              ; $56df: $00
	ld   a, [bc]                                     ; $56e0: $0a
	rrca                                             ; $56e1: $0f
	nop                                              ; $56e2: $00
	ld   bc, $5601                                   ; $56e3: $01 $01 $56
	rst  $38                                         ; $56e6: $ff
	rst  $38                                         ; $56e7: $ff
	rst  JumpTable                                         ; $56e8: $df
	sbc  [hl]                                        ; $56e9: $9e
	rst  JumpTable                                         ; $56ea: $df
	db   $ec                                         ; $56eb: $ec
	and  e                                           ; $56ec: $a3
	ld   h, e                                        ; $56ed: $63
	and  c                                           ; $56ee: $a1
	rst  $38                                         ; $56ef: $ff
	rst  $38                                         ; $56f0: $ff
	ld   sp, hl                                      ; $56f1: $f9
	dec  c                                           ; $56f2: $0d
	rst  $38                                         ; $56f3: $ff
	rst  $38                                         ; $56f4: $ff
	inc  d                                           ; $56f5: $14
	ld   [bc], a                                     ; $56f6: $02
	sub  e                                           ; $56f7: $93
	inc  b                                           ; $56f8: $04
	call nc, $966e                                   ; $56f9: $d4 $6e $96
	rst  $38                                         ; $56fc: $ff
	rst  $38                                         ; $56fd: $ff
	dec  c                                           ; $56fe: $0d
	or   h                                           ; $56ff: $b4
	push af                                          ; $5700: $f5
	ret                                              ; $5701: $c9


	adc  l                                           ; $5702: $8d
	ld   l, l                                        ; $5703: $6d
	ld   d, d                                        ; $5704: $52
	ld   l, [hl]                                     ; $5705: $6e
	ld   a, b                                        ; $5706: $78
	sbc  [hl]                                        ; $5707: $9e
	adc  h                                           ; $5708: $8c
	ld   [hl], c                                     ; $5709: $71
	ld   l, l                                        ; $570a: $6d
	ld   e, l                                        ; $570b: $5d
	rst  $38                                         ; $570c: $ff
	dec  c                                           ; $570d: $0d
	nop                                              ; $570e: $00
	ld   a, [bc]                                     ; $570f: $0a
	ld   bc, $9166                                   ; $5710: $01 $66 $91
	sbc  [hl]                                        ; $5713: $9e
	ld   [bc], a                                     ; $5714: $02
	sub  a                                           ; $5715: $97
	dec  b                                           ; $5716: $05
	inc  hl                                          ; $5717: $23
	and  b                                           ; $5718: $a0
	ld   l, l                                        ; $5719: $6d
	sub  [hl]                                        ; $571a: $96
	sbc  b                                           ; $571b: $98
	ld   a, c                                        ; $571c: $79
	dec  c                                           ; $571d: $0d
	ld   [bc], a                                     ; $571e: $02
	ld   a, a                                        ; $571f: $7f
	ld   e, e                                        ; $5720: $5b
	adc  h                                           ; $5721: $8c
	ld   h, a                                        ; $5722: $67
	ld   e, c                                        ; $5723: $59
	sbc  a                                           ; $5724: $9f
	dec  c                                           ; $5725: $0d
	nop                                              ; $5726: $00
	ld   a, [bc]                                     ; $5727: $0a
	ld   bc, $ff56                                   ; $5728: $01 $56 $ff
	rst  $38                                         ; $572b: $ff
	halt                                             ; $572c: $76
	sbc  [hl]                                        ; $572d: $9e
	adc  h                                           ; $572e: $8c
	ld   l, b                                        ; $572f: $68
	ld   a, l                                        ; $5730: $7d
	rst  $38                                         ; $5731: $ff
	rst  $38                                         ; $5732: $ff
	dec  c                                           ; $5733: $0d
	nop                                              ; $5734: $00
	ld   a, [bc]                                     ; $5735: $0a
	add  hl, de                                      ; $5736: $19
	dec  b                                           ; $5737: $05
	inc  bc                                          ; $5738: $03
	inc  bc                                          ; $5739: $03
	ld   c, a                                        ; $573a: $4f
	add  [hl]                                        ; $573b: $86
	inc  de                                          ; $573c: $13
	inc  b                                           ; $573d: $04
	sbc  a                                           ; $573e: $9f
	nop                                              ; $573f: $00
	nop                                              ; $5740: $00
	inc  bc                                          ; $5741: $03
	ld   c, a                                        ; $5742: $4f
	add  [hl]                                        ; $5743: $86
	ld   d, $04                                      ; $5744: $16 $04
	sbc  a                                           ; $5746: $9f
	nop                                              ; $5747: $00
	ld   bc, $4f03                                   ; $5748: $01 $03 $4f
	add  [hl]                                        ; $574b: $86
	jr   jr_054_5752                                 ; $574c: $18 $04

	sbc  a                                           ; $574e: $9f
	nop                                              ; $574f: $00
	ld   [bc], a                                     ; $5750: $02
	rlca                                             ; $5751: $07

jr_054_5752:
	ld   de, $0212                                   ; $5752: $11 $12 $02
	inc  bc                                          ; $5755: $03
	ld   bc, $2000                                   ; $5756: $01 $00 $20
	nop                                              ; $5759: $00
	rlca                                             ; $575a: $07
	ld   h, $12                                      ; $575b: $26 $12
	ld   [bc], a                                     ; $575d: $02
	inc  bc                                          ; $575e: $03
	ld   bc, $2001                                   ; $575f: $01 $01 $20
	nop                                              ; $5762: $00
	rlca                                             ; $5763: $07
	ld   a, a                                        ; $5764: $7f
	ld   [de], a                                     ; $5765: $12
	ld   [bc], a                                     ; $5766: $02
	inc  bc                                          ; $5767: $03
	ld   bc, $2002                                   ; $5768: $01 $02 $20
	nop                                              ; $576b: $00
	ld   b, $fc                                      ; $576c: $06 $fc
	ld   de, $000f                                   ; $576e: $11 $0f $00
	ld   bc, $0301                                   ; $5771: $01 $01 $03
	ld   c, a                                        ; $5774: $4f
	add  [hl]                                        ; $5775: $86
	dec  b                                           ; $5776: $05
	db   $dd                                         ; $5777: $dd
	adc  h                                           ; $5778: $8c
	ld   a, b                                        ; $5779: $78
	ld   e, e                                        ; $577a: $5b
	sub  c                                           ; $577b: $91
	rst  $38                                         ; $577c: $ff
	rst  $38                                         ; $577d: $ff
	dec  c                                           ; $577e: $0d
	nop                                              ; $577f: $00
	ld   a, [bc]                                     ; $5780: $0a
	ld   b, $c3                                      ; $5781: $06 $c3
	ld   de, $000f                                   ; $5783: $11 $0f $00
	ld   bc, $9601                                   ; $5786: $01 $01 $96
	ld   h, l                                        ; $5789: $65
	sbc  [hl]                                        ; $578a: $9e
	ld   l, [hl]                                     ; $578b: $6e
	ld   d, d                                        ; $578c: $52
	ld   h, [hl]                                     ; $578d: $66
	sub  l                                           ; $578e: $95
	ld   d, h                                        ; $578f: $54
	add  h                                           ; $5790: $84
	ld   l, [hl]                                     ; $5791: $6e
	sbc  a                                           ; $5792: $9f
	dec  c                                           ; $5793: $0d
	nop                                              ; $5794: $00
	ld   a, [bc]                                     ; $5795: $0a
	ld   b, $d9                                      ; $5796: $06 $d9
	ld   [de], a                                     ; $5798: $12
	rrca                                             ; $5799: $0f
	nop                                              ; $579a: $00
	ld   bc, $030c                                   ; $579b: $01 $0c $03
	ld   bc, $9e75                                   ; $579e: $01 $75 $9e
	ld   [hl], d                                     ; $57a1: $72
	ld   e, h                                        ; $57a2: $5c
	ld   a, c                                        ; $57a3: $79
	ld   [bc], a                                     ; $57a4: $02
	inc  e                                           ; $57a5: $1c
	and  b                                           ; $57a6: $a0
	ld   [bc], a                                     ; $57a7: $02
	jp   nc, Jump_054_7452                           ; $57a8: $d2 $52 $74

	rst  $38                                         ; $57ab: $ff
	rst  $38                                         ; $57ac: $ff
	dec  c                                           ; $57ad: $0d
	and  l                                           ; $57ae: $a5
	rst  ToBoot                                         ; $57af: $c7
	call nz, $0dfa                                   ; $57b0: $c4 $fa $0d
	rst  $38                                         ; $57b3: $ff
	rst  $38                                         ; $57b4: $ff
	inc  b                                           ; $57b5: $04
	add  a                                           ; $57b6: $87
	ld   l, [hl]                                     ; $57b7: $6e
	ld   sp, hl                                      ; $57b8: $f9
	db   $10                                         ; $57b9: $10
	rst  $38                                         ; $57ba: $ff
	adc  h                                           ; $57bb: $8c
	ld   l, a                                        ; $57bc: $6f
	ld   e, d                                        ; $57bd: $5a
	ld   d, [hl]                                     ; $57be: $56
	ld   l, l                                        ; $57bf: $6d
	sbc  a                                           ; $57c0: $9f
	dec  c                                           ; $57c1: $0d
	nop                                              ; $57c2: $00
	ld   a, [bc]                                     ; $57c3: $0a
	rlca                                             ; $57c4: $07
	pop  af                                          ; $57c5: $f1
	rlca                                             ; $57c6: $07
	inc  bc                                          ; $57c7: $03
	jr   nz, jr_054_57cb                             ; $57c8: $20 $01

	ld   a, [bc]                                     ; $57ca: $0a

jr_054_57cb:
	inc  hl                                          ; $57cb: $23
	nop                                              ; $57cc: $00
	ld   bc, $5490                                   ; $57cd: $01 $90 $54
	ld   [bc], a                                     ; $57d0: $02
	jr   nz, jr_054_57d7                             ; $57d1: $20 $04

	add  hl, hl                                      ; $57d3: $29
	sbc  [hl]                                        ; $57d4: $9e
	inc  b                                           ; $57d5: $04
	ld   b, l                                        ; $57d6: $45

jr_054_57d7:
	sbc  b                                           ; $57d7: $98
	ld   [bc], a                                     ; $57d8: $02
	xor  [hl]                                        ; $57d9: $ae
	ld   a, c                                        ; $57da: $79
	dec  c                                           ; $57db: $0d
	inc  b                                           ; $57dc: $04
	jp   Jump_054_7471                               ; $57dd: $c3 $71 $74


	halt                                             ; $57e0: $76
	rst  $38                                         ; $57e1: $ff
	rst  $38                                         ; $57e2: $ff
	dec  c                                           ; $57e3: $0d
	nop                                              ; $57e4: $00
	ld   a, [bc]                                     ; $57e5: $0a
	ld   sp, $2040                                   ; $57e6: $31 $40 $20
	inc  bc                                          ; $57e9: $03
	jr   nz, jr_054_57ed                             ; $57ea: $20 $01

	ld   a, [bc]                                     ; $57ec: $0a

jr_054_57ed:
	add  hl, hl                                      ; $57ed: $29
	nop                                              ; $57ee: $00
	ld   b, $c3                                      ; $57ef: $06 $c3
	ld   de, $000f                                   ; $57f1: $11 $0f $00
	ld   bc, $030c                                   ; $57f4: $01 $0c $03
	ld   bc, $9e75                                   ; $57f7: $01 $75 $9e
	ld   [hl], d                                     ; $57fa: $72
	ld   e, h                                        ; $57fb: $5c
	ld   a, c                                        ; $57fc: $79
	ld   [bc], a                                     ; $57fd: $02
	inc  e                                           ; $57fe: $1c
	and  b                                           ; $57ff: $a0
	ld   [bc], a                                     ; $5800: $02
	jp   nc, Jump_054_7452                           ; $5801: $d2 $52 $74

	rst  $38                                         ; $5804: $ff
	rst  $38                                         ; $5805: $ff
	dec  c                                           ; $5806: $0d
	and  l                                           ; $5807: $a5
	rst  ToBoot                                         ; $5808: $c7
	call nz, $0dfa                                   ; $5809: $c4 $fa $0d
	rst  $38                                         ; $580c: $ff
	rst  $38                                         ; $580d: $ff
	inc  bc                                          ; $580e: $03
	db   $e4                                         ; $580f: $e4
	dec  b                                           ; $5810: $05
	db   $ed                                         ; $5811: $ed
	ld   sp, hl                                      ; $5812: $f9
	db   $10                                         ; $5813: $10
	rst  $38                                         ; $5814: $ff
	adc  h                                           ; $5815: $8c
	ld   l, a                                        ; $5816: $6f
	ld   e, d                                        ; $5817: $5a
	ld   d, [hl]                                     ; $5818: $56
	ld   l, l                                        ; $5819: $6d
	sbc  a                                           ; $581a: $9f
	dec  c                                           ; $581b: $0d
	nop                                              ; $581c: $00
	ld   a, [bc]                                     ; $581d: $0a
	rlca                                             ; $581e: $07
	pop  af                                          ; $581f: $f1
	rlca                                             ; $5820: $07
	inc  bc                                          ; $5821: $03
	jr   nz, jr_054_5825                             ; $5822: $20 $01

	ld   a, [bc]                                     ; $5824: $0a

jr_054_5825:
	inc  hl                                          ; $5825: $23
	nop                                              ; $5826: $00
	ld   bc, $5490                                   ; $5827: $01 $90 $54
	ld   [bc], a                                     ; $582a: $02
	jr   nz, jr_054_5831                             ; $582b: $20 $04

	add  hl, hl                                      ; $582d: $29
	sbc  [hl]                                        ; $582e: $9e
	inc  b                                           ; $582f: $04
	ld   b, l                                        ; $5830: $45

jr_054_5831:
	sbc  b                                           ; $5831: $98
	ld   [bc], a                                     ; $5832: $02
	xor  [hl]                                        ; $5833: $ae
	ld   a, c                                        ; $5834: $79
	dec  c                                           ; $5835: $0d
	inc  b                                           ; $5836: $04
	jp   Jump_054_7471                               ; $5837: $c3 $71 $74


	halt                                             ; $583a: $76
	rst  $38                                         ; $583b: $ff
	rst  $38                                         ; $583c: $ff
	dec  c                                           ; $583d: $0d
	nop                                              ; $583e: $00
	ld   a, [bc]                                     ; $583f: $0a
	ld   sp, $2040                                   ; $5840: $31 $40 $20
	inc  bc                                          ; $5843: $03
	jr   nz, jr_054_5847                             ; $5844: $20 $01

	ld   a, [bc]                                     ; $5846: $0a

jr_054_5847:
	add  hl, hl                                      ; $5847: $29
	nop                                              ; $5848: $00
	ld   b, $c3                                      ; $5849: $06 $c3
	ld   de, $6301                                   ; $584b: $11 $01 $63
	ld   [hl], h                                     ; $584e: $74
	inc  bc                                          ; $584f: $03
	ld   l, b                                        ; $5850: $68
	ld   a, l                                        ; $5851: $7d
	rst  $38                                         ; $5852: $ff
	rst  $38                                         ; $5853: $ff
	dec  c                                           ; $5854: $0d
	nop                                              ; $5855: $00
	ld   a, [bc]                                     ; $5856: $0a
	add  hl, de                                      ; $5857: $19
	dec  b                                           ; $5858: $05
	inc  bc                                          ; $5859: $03
	ld   [bc], a                                     ; $585a: $02
	inc  e                                           ; $585b: $1c
	add  [hl]                                        ; $585c: $86
	ld   d, $04                                      ; $585d: $16 $04
	sbc  a                                           ; $585f: $9f
	nop                                              ; $5860: $00
	nop                                              ; $5861: $00
	inc  bc                                          ; $5862: $03
	ld   h, b                                        ; $5863: $60
	add  [hl]                                        ; $5864: $86
	ld   d, $04                                      ; $5865: $16 $04
	sbc  a                                           ; $5867: $9f
	nop                                              ; $5868: $00
	ld   bc, $1c02                                   ; $5869: $01 $02 $1c
	add  [hl]                                        ; $586c: $86
	jr   jr_054_5873                                 ; $586d: $18 $04

	sbc  a                                           ; $586f: $9f
	nop                                              ; $5870: $00
	ld   [bc], a                                     ; $5871: $02
	rlca                                             ; $5872: $07

jr_054_5873:
	inc  sp                                          ; $5873: $33
	inc  de                                          ; $5874: $13
	ld   [bc], a                                     ; $5875: $02
	inc  bc                                          ; $5876: $03
	ld   bc, $2000                                   ; $5877: $01 $00 $20
	nop                                              ; $587a: $00
	rlca                                             ; $587b: $07
	ld   c, b                                        ; $587c: $48
	inc  de                                          ; $587d: $13
	ld   [bc], a                                     ; $587e: $02
	inc  bc                                          ; $587f: $03
	ld   bc, $2001                                   ; $5880: $01 $01 $20
	nop                                              ; $5883: $00
	rlca                                             ; $5884: $07
	and  a                                           ; $5885: $a7
	inc  de                                          ; $5886: $13
	ld   [bc], a                                     ; $5887: $02
	inc  bc                                          ; $5888: $03
	ld   bc, $2002                                   ; $5889: $01 $02 $20
	nop                                              ; $588c: $00
	ld   b, $1d                                      ; $588d: $06 $1d
	inc  de                                          ; $588f: $13
	rrca                                             ; $5890: $0f
	nop                                              ; $5891: $00
	ld   bc, $7701                                   ; $5892: $01 $01 $77
	ld   [hl], c                                     ; $5895: $71
	ld   l, a                                        ; $5896: $6f
	ld   e, c                                        ; $5897: $59
	ld   [bc], a                                     ; $5898: $02
	ld   a, a                                        ; $5899: $7f
	ld   e, c                                        ; $589a: $59
	ld   a, b                                        ; $589b: $78
	ld   e, e                                        ; $589c: $5b
	sub  c                                           ; $589d: $91
	rst  $38                                         ; $589e: $ff
	rst  $38                                         ; $589f: $ff
	dec  c                                           ; $58a0: $0d
	nop                                              ; $58a1: $00
	ld   a, [bc]                                     ; $58a2: $0a
	ld   b, $e4                                      ; $58a3: $06 $e4
	ld   [de], a                                     ; $58a5: $12
	rrca                                             ; $58a6: $0f
	nop                                              ; $58a7: $00
	ld   bc, $9601                                   ; $58a8: $01 $01 $96
	ld   h, l                                        ; $58ab: $65
	sbc  [hl]                                        ; $58ac: $9e
	ld   l, [hl]                                     ; $58ad: $6e
	ld   d, d                                        ; $58ae: $52
	ld   h, [hl]                                     ; $58af: $66
	sub  l                                           ; $58b0: $95
	ld   d, h                                        ; $58b1: $54
	add  h                                           ; $58b2: $84
	ld   l, [hl]                                     ; $58b3: $6e
	sbc  a                                           ; $58b4: $9f
	dec  c                                           ; $58b5: $0d
	nop                                              ; $58b6: $00
	ld   a, [bc]                                     ; $58b7: $0a
	ld   b, $02                                      ; $58b8: $06 $02
	inc  d                                           ; $58ba: $14
	rrca                                             ; $58bb: $0f
	nop                                              ; $58bc: $00
	ld   bc, $030c                                   ; $58bd: $01 $0c $03
	ld   bc, $f5ad                                   ; $58c0: $01 $ad $f5
	ld   a, [$a510]                                  ; $58c3: $fa $10 $a5
	call nz, $fcc7                                   ; $58c6: $c4 $c7 $fc
	db   $fc                                         ; $58c9: $fc
	db   $fc                                         ; $58ca: $fc
	dec  c                                           ; $58cb: $0d
	rst  $38                                         ; $58cc: $ff
	rst  $38                                         ; $58cd: $ff
	inc  b                                           ; $58ce: $04
	ld   c, c                                        ; $58cf: $49
	ld   e, c                                        ; $58d0: $59
	dec  b                                           ; $58d1: $05
	ld   [de], a                                     ; $58d2: $12
	ld   l, a                                        ; $58d3: $6f
	ld   [hl], h                                     ; $58d4: $74
	ld   e, e                                        ; $58d5: $5b
	ld   l, l                                        ; $58d6: $6d
	ld   sp, hl                                      ; $58d7: $f9
	dec  c                                           ; $58d8: $0d
	rst  $38                                         ; $58d9: $ff
	inc  b                                           ; $58da: $04
	xor  h                                           ; $58db: $ac
	ld   d, d                                        ; $58dc: $52
	xor  a                                           ; $58dd: $af
	ret  nz                                          ; $58de: $c0

	ei                                               ; $58df: $fb
	ld   sp, hl                                      ; $58e0: $f9
	db   $10                                         ; $58e1: $10
	ld   sp, hl                                      ; $58e2: $f9
	db   $10                                         ; $58e3: $10
	rst  $38                                         ; $58e4: $ff
	rst  $38                                         ; $58e5: $ff
	ld   sp, hl                                      ; $58e6: $f9
	dec  c                                           ; $58e7: $0d
	nop                                              ; $58e8: $00
	ld   a, [bc]                                     ; $58e9: $0a
	rlca                                             ; $58ea: $07
	pop  af                                          ; $58eb: $f1
	rlca                                             ; $58ec: $07
	inc  bc                                          ; $58ed: $03
	jr   nz, jr_054_58f1                             ; $58ee: $20 $01

	ld   a, [bc]                                     ; $58f0: $0a

jr_054_58f1:
	inc  hl                                          ; $58f1: $23
	nop                                              ; $58f2: $00
	ld   bc, $5490                                   ; $58f3: $01 $90 $54
	ld   [bc], a                                     ; $58f6: $02
	jr   nz, jr_054_58fd                             ; $58f7: $20 $04

	add  hl, hl                                      ; $58f9: $29
	sbc  [hl]                                        ; $58fa: $9e
	ld   [bc], a                                     ; $58fb: $02
	xor  h                                           ; $58fc: $ac

jr_054_58fd:
	ld   a, h                                        ; $58fd: $7c
	inc  b                                           ; $58fe: $04
	ld   a, d                                        ; $58ff: $7a
	inc  bc                                          ; $5900: $03
	ld   c, e                                        ; $5901: $4b
	ld   a, c                                        ; $5902: $79
	dec  c                                           ; $5903: $0d
	inc  b                                           ; $5904: $04
	jp   Jump_054_7471                               ; $5905: $c3 $71 $74


	halt                                             ; $5908: $76
	rst  $38                                         ; $5909: $ff
	rst  $38                                         ; $590a: $ff
	dec  c                                           ; $590b: $0d
	nop                                              ; $590c: $00
	ld   a, [bc]                                     ; $590d: $0a
	ld   sp, $2040                                   ; $590e: $31 $40 $20
	inc  bc                                          ; $5911: $03
	jr   nz, jr_054_5915                             ; $5912: $20 $01

	ld   a, [bc]                                     ; $5914: $0a

jr_054_5915:
	add  hl, hl                                      ; $5915: $29
	nop                                              ; $5916: $00
	ld   b, $e4                                      ; $5917: $06 $e4
	ld   [de], a                                     ; $5919: $12
	rrca                                             ; $591a: $0f
	nop                                              ; $591b: $00
	ld   bc, $030c                                   ; $591c: $01 $0c $03
	ld   bc, $7154                                   ; $591f: $01 $54 $71
	ld   a, [$a510]                                  ; $5922: $fa $10 $a5
	call nz, $fcc0                                   ; $5925: $c4 $c0 $fc
	db   $fc                                         ; $5928: $fc
	db   $fc                                         ; $5929: $fc
	dec  c                                           ; $592a: $0d
	rst  $38                                         ; $592b: $ff
	rst  $38                                         ; $592c: $ff
	or   [hl]                                        ; $592d: $b6
	sbc  [hl]                                        ; $592e: $9e
	or   [hl]                                        ; $592f: $b6
	push af                                          ; $5930: $f5
	jp   z, $c4d1                                    ; $5931: $ca $d1 $c4

	or   c                                           ; $5934: $b1
	rst  $38                                         ; $5935: $ff
	rst  $38                                         ; $5936: $ff
	dec  c                                           ; $5937: $0d
	rst  $38                                         ; $5938: $ff
	sub  b                                           ; $5939: $90
	db   $fc                                         ; $593a: $fc
	xor  h                                           ; $593b: $ac
	push af                                          ; $593c: $f5
	bit  4, e                                        ; $593d: $cb $63
	and  c                                           ; $593f: $a1
	rst  $38                                         ; $5940: $ff
	rst  $38                                         ; $5941: $ff
	dec  c                                           ; $5942: $0d
	nop                                              ; $5943: $00
	ld   a, [bc]                                     ; $5944: $0a
	rlca                                             ; $5945: $07
	pop  af                                          ; $5946: $f1
	rlca                                             ; $5947: $07
	inc  bc                                          ; $5948: $03
	jr   nz, jr_054_594c                             ; $5949: $20 $01

	ld   a, [bc]                                     ; $594b: $0a

jr_054_594c:
	inc  hl                                          ; $594c: $23
	nop                                              ; $594d: $00
	ld   bc, $5490                                   ; $594e: $01 $90 $54
	ld   [bc], a                                     ; $5951: $02
	jr   nz, jr_054_5958                             ; $5952: $20 $04

	add  hl, hl                                      ; $5954: $29
	sbc  [hl]                                        ; $5955: $9e
	ld   [bc], a                                     ; $5956: $02
	xor  h                                           ; $5957: $ac

jr_054_5958:
	ld   a, h                                        ; $5958: $7c
	inc  b                                           ; $5959: $04
	ld   a, d                                        ; $595a: $7a
	inc  bc                                          ; $595b: $03
	ld   c, e                                        ; $595c: $4b
	ld   a, c                                        ; $595d: $79
	dec  c                                           ; $595e: $0d
	inc  b                                           ; $595f: $04
	jp   Jump_054_7471                               ; $5960: $c3 $71 $74


	halt                                             ; $5963: $76
	rst  $38                                         ; $5964: $ff
	rst  $38                                         ; $5965: $ff
	dec  c                                           ; $5966: $0d
	nop                                              ; $5967: $00
	ld   a, [bc]                                     ; $5968: $0a
	ld   sp, $2040                                   ; $5969: $31 $40 $20
	inc  bc                                          ; $596c: $03
	jr   nz, jr_054_5970                             ; $596d: $20 $01

	ld   a, [bc]                                     ; $596f: $0a

jr_054_5970:
	add  hl, hl                                      ; $5970: $29
	nop                                              ; $5971: $00
	ld   b, $e4                                      ; $5972: $06 $e4
	ld   [de], a                                     ; $5974: $12
	ld   bc, $7463                                   ; $5975: $01 $63 $74
	inc  bc                                          ; $5978: $03
	ld   l, b                                        ; $5979: $68
	ld   a, l                                        ; $597a: $7d
	rst  $38                                         ; $597b: $ff
	rst  $38                                         ; $597c: $ff
	dec  c                                           ; $597d: $0d
	nop                                              ; $597e: $00
	ld   a, [bc]                                     ; $597f: $0a
	add  hl, de                                      ; $5980: $19
	dec  b                                           ; $5981: $05
	inc  bc                                          ; $5982: $03
	inc  bc                                          ; $5983: $03
	ld   c, a                                        ; $5984: $4f
	add  [hl]                                        ; $5985: $86
	rla                                              ; $5986: $17
	inc  b                                           ; $5987: $04
	sbc  a                                           ; $5988: $9f
	nop                                              ; $5989: $00
	nop                                              ; $598a: $00
	inc  bc                                          ; $598b: $03
	ld   c, a                                        ; $598c: $4f
	add  [hl]                                        ; $598d: $86
	jr   @+$06                                       ; $598e: $18 $04

	sbc  a                                           ; $5990: $9f
	nop                                              ; $5991: $00
	ld   bc, $aa02                                   ; $5992: $01 $02 $aa
	sbc  e                                           ; $5995: $9b
	add  [hl]                                        ; $5996: $86
	jr   jr_054_599d                                 ; $5997: $18 $04

	sbc  a                                           ; $5999: $9f
	nop                                              ; $599a: $00
	ld   [bc], a                                     ; $599b: $02
	rlca                                             ; $599c: $07

jr_054_599d:
	ld   e, l                                        ; $599d: $5d
	inc  d                                           ; $599e: $14
	ld   [bc], a                                     ; $599f: $02
	inc  bc                                          ; $59a0: $03
	ld   bc, $2000                                   ; $59a1: $01 $00 $20
	nop                                              ; $59a4: $00
	rlca                                             ; $59a5: $07
	ld   [hl], d                                     ; $59a6: $72
	inc  d                                           ; $59a7: $14
	ld   [bc], a                                     ; $59a8: $02
	inc  bc                                          ; $59a9: $03
	ld   bc, $2001                                   ; $59aa: $01 $01 $20
	nop                                              ; $59ad: $00
	rlca                                             ; $59ae: $07
	ret                                              ; $59af: $c9


	inc  d                                           ; $59b0: $14
	ld   [bc], a                                     ; $59b1: $02
	inc  bc                                          ; $59b2: $03
	ld   bc, $2002                                   ; $59b3: $01 $02 $20
	nop                                              ; $59b6: $00
	ld   b, $47                                      ; $59b7: $06 $47
	inc  d                                           ; $59b9: $14
	rrca                                             ; $59ba: $0f
	nop                                              ; $59bb: $00
	ld   bc, $7701                                   ; $59bc: $01 $01 $77
	ld   [hl], c                                     ; $59bf: $71
	ld   l, a                                        ; $59c0: $6f
	ld   e, c                                        ; $59c1: $59
	ld   [bc], a                                     ; $59c2: $02
	ld   a, a                                        ; $59c3: $7f
	ld   e, c                                        ; $59c4: $59
	ld   a, b                                        ; $59c5: $78
	ld   e, e                                        ; $59c6: $5b
	sub  c                                           ; $59c7: $91
	rst  $38                                         ; $59c8: $ff
	rst  $38                                         ; $59c9: $ff
	dec  c                                           ; $59ca: $0d
	nop                                              ; $59cb: $00
	ld   a, [bc]                                     ; $59cc: $0a
	ld   b, $0d                                      ; $59cd: $06 $0d
	inc  d                                           ; $59cf: $14
	rrca                                             ; $59d0: $0f
	nop                                              ; $59d1: $00
	ld   bc, $9601                                   ; $59d2: $01 $01 $96
	ld   h, l                                        ; $59d5: $65
	sbc  [hl]                                        ; $59d6: $9e
	ld   l, [hl]                                     ; $59d7: $6e
	ld   d, d                                        ; $59d8: $52
	ld   h, [hl]                                     ; $59d9: $66
	sub  l                                           ; $59da: $95
	ld   d, h                                        ; $59db: $54
	add  h                                           ; $59dc: $84
	ld   l, [hl]                                     ; $59dd: $6e
	sbc  a                                           ; $59de: $9f
	dec  c                                           ; $59df: $0d
	nop                                              ; $59e0: $00
	ld   a, [bc]                                     ; $59e1: $0a
	ld   b, $23                                      ; $59e2: $06 $23
	dec  d                                           ; $59e4: $15
	rrca                                             ; $59e5: $0f
	nop                                              ; $59e6: $00
	ld   bc, $030c                                   ; $59e7: $01 $0c $03
	ld   bc, $c0a5                                   ; $59ea: $01 $a5 $c0
	call nz, $0dfa                                   ; $59ed: $c4 $fa $0d
	rst  $38                                         ; $59f0: $ff
	rst  $38                                         ; $59f1: $ff
	ldh  [$9e], a                                    ; $59f2: $e0 $9e
	ldh  [$b6], a                                    ; $59f4: $e0 $b6
	and  l                                           ; $59f6: $a5
	db   $ed                                         ; $59f7: $ed
	ld   sp, hl                                      ; $59f8: $f9
	dec  c                                           ; $59f9: $0d
	rst  $38                                         ; $59fa: $ff
	ld   h, c                                        ; $59fb: $61
	sbc  [hl]                                        ; $59fc: $9e
	inc  b                                           ; $59fd: $04
	add  [hl]                                        ; $59fe: $86
	ld   d, d                                        ; $59ff: $52
	ld   a, b                                        ; $5a00: $78
	ld   h, c                                        ; $5a01: $61
	ld   a, h                                        ; $5a02: $7c
	ld   [bc], a                                     ; $5a03: $02
	cp   $02                                         ; $5a04: $fe $02
	ld   e, c                                        ; $5a06: $59
	rst  $38                                         ; $5a07: $ff
	rst  $38                                         ; $5a08: $ff
	dec  c                                           ; $5a09: $0d
	nop                                              ; $5a0a: $00
	ld   a, [bc]                                     ; $5a0b: $0a
	rlca                                             ; $5a0c: $07
	pop  af                                          ; $5a0d: $f1
	rlca                                             ; $5a0e: $07
	inc  bc                                          ; $5a0f: $03
	jr   nz, jr_054_5a13                             ; $5a10: $20 $01

	ld   a, [bc]                                     ; $5a12: $0a

jr_054_5a13:
	inc  hl                                          ; $5a13: $23
	nop                                              ; $5a14: $00
	ld   bc, $5490                                   ; $5a15: $01 $90 $54
	ld   [bc], a                                     ; $5a18: $02
	jr   nz, jr_054_5a1f                             ; $5a19: $20 $04

	add  hl, hl                                      ; $5a1b: $29
	sbc  [hl]                                        ; $5a1c: $9e
	ld   [bc], a                                     ; $5a1d: $02
	xor  h                                           ; $5a1e: $ac

jr_054_5a1f:
	ld   a, h                                        ; $5a1f: $7c
	inc  b                                           ; $5a20: $04
	ld   a, d                                        ; $5a21: $7a
	inc  bc                                          ; $5a22: $03
	ld   c, e                                        ; $5a23: $4b
	ld   a, c                                        ; $5a24: $79
	dec  c                                           ; $5a25: $0d
	inc  b                                           ; $5a26: $04
	jp   Jump_054_7471                               ; $5a27: $c3 $71 $74


	halt                                             ; $5a2a: $76
	rst  $38                                         ; $5a2b: $ff
	rst  $38                                         ; $5a2c: $ff
	dec  c                                           ; $5a2d: $0d
	nop                                              ; $5a2e: $00
	ld   a, [bc]                                     ; $5a2f: $0a
	ld   sp, $2040                                   ; $5a30: $31 $40 $20
	inc  bc                                          ; $5a33: $03
	jr   nz, jr_054_5a37                             ; $5a34: $20 $01

	ld   a, [bc]                                     ; $5a36: $0a

jr_054_5a37:
	add  hl, hl                                      ; $5a37: $29
	nop                                              ; $5a38: $00
	ld   b, $0d                                      ; $5a39: $06 $0d
	inc  d                                           ; $5a3b: $14
	rrca                                             ; $5a3c: $0f
	nop                                              ; $5a3d: $00
	ld   bc, $030c                                   ; $5a3e: $01 $0c $03
	ld   bc, $c7a5                                   ; $5a41: $01 $a5 $c7
	rst  ToBoot                                         ; $5a44: $c7
	rst  ToBoot                                         ; $5a45: $c7
	rst  $38                                         ; $5a46: $ff
	rst  $38                                         ; $5a47: $ff
	dec  c                                           ; $5a48: $0d
	rst  $38                                         ; $5a49: $ff
	rst  $38                                         ; $5a4a: $ff
	ld   h, c                                        ; $5a4b: $61
	sbc  l                                           ; $5a4c: $9d
	sbc  d                                           ; $5a4d: $9a
	ld   l, l                                        ; $5a4e: $6d
	inc  b                                           ; $5a4f: $04
	ld   a, a                                        ; $5a50: $7f
	ld   [bc], a                                     ; $5a51: $02
	ld   a, a                                        ; $5a52: $7f
	ld   [bc], a                                     ; $5a53: $02
	ld   e, b                                        ; $5a54: $58
	rst  $38                                         ; $5a55: $ff
	rst  $38                                         ; $5a56: $ff
	dec  c                                           ; $5a57: $0d
	rst  $38                                         ; $5a58: $ff
	sub  b                                           ; $5a59: $90
	db   $fc                                         ; $5a5a: $fc
	ld   [bc], a                                     ; $5a5b: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a5c: $cf
	dec  b                                           ; $5a5d: $05
	ld   a, [de]                                     ; $5a5e: $1a
	ld   h, e                                        ; $5a5f: $63
	and  c                                           ; $5a60: $a1
	rst  $38                                         ; $5a61: $ff
	rst  $38                                         ; $5a62: $ff
	dec  c                                           ; $5a63: $0d
	nop                                              ; $5a64: $00
	ld   a, [bc]                                     ; $5a65: $0a
	rlca                                             ; $5a66: $07
	pop  af                                          ; $5a67: $f1
	rlca                                             ; $5a68: $07
	inc  bc                                          ; $5a69: $03
	jr   nz, jr_054_5a6d                             ; $5a6a: $20 $01

	ld   a, [bc]                                     ; $5a6c: $0a

jr_054_5a6d:
	inc  hl                                          ; $5a6d: $23
	nop                                              ; $5a6e: $00
	ld   bc, $5490                                   ; $5a6f: $01 $90 $54
	ld   [bc], a                                     ; $5a72: $02
	jr   nz, jr_054_5a79                             ; $5a73: $20 $04

	add  hl, hl                                      ; $5a75: $29
	sbc  [hl]                                        ; $5a76: $9e
	ld   [bc], a                                     ; $5a77: $02
	xor  h                                           ; $5a78: $ac

jr_054_5a79:
	ld   a, h                                        ; $5a79: $7c
	inc  b                                           ; $5a7a: $04
	ld   a, d                                        ; $5a7b: $7a
	inc  bc                                          ; $5a7c: $03
	ld   c, e                                        ; $5a7d: $4b
	ld   a, c                                        ; $5a7e: $79
	dec  c                                           ; $5a7f: $0d
	inc  b                                           ; $5a80: $04
	jp   Jump_054_7471                               ; $5a81: $c3 $71 $74


	halt                                             ; $5a84: $76
	rst  $38                                         ; $5a85: $ff
	rst  $38                                         ; $5a86: $ff
	dec  c                                           ; $5a87: $0d
	nop                                              ; $5a88: $00
	ld   a, [bc]                                     ; $5a89: $0a
	ld   sp, $2040                                   ; $5a8a: $31 $40 $20
	inc  bc                                          ; $5a8d: $03
	jr   nz, jr_054_5a91                             ; $5a8e: $20 $01

	ld   a, [bc]                                     ; $5a90: $0a

jr_054_5a91:
	add  hl, hl                                      ; $5a91: $29
	nop                                              ; $5a92: $00
	ld   b, $0d                                      ; $5a93: $06 $0d
	inc  d                                           ; $5a95: $14
	ld   bc, $7463                                   ; $5a96: $01 $63 $74
	inc  bc                                          ; $5a99: $03
	ld   l, b                                        ; $5a9a: $68
	ld   a, l                                        ; $5a9b: $7d
	rst  $38                                         ; $5a9c: $ff
	rst  $38                                         ; $5a9d: $ff
	dec  c                                           ; $5a9e: $0d
	nop                                              ; $5a9f: $00
	ld   a, [bc]                                     ; $5aa0: $0a
	add  hl, de                                      ; $5aa1: $19
	dec  b                                           ; $5aa2: $05
	inc  bc                                          ; $5aa3: $03
	inc  bc                                          ; $5aa4: $03
	ld   h, b                                        ; $5aa5: $60
	add  [hl]                                        ; $5aa6: $86
	dec  d                                           ; $5aa7: $15
	inc  b                                           ; $5aa8: $04
	sbc  a                                           ; $5aa9: $9f
	nop                                              ; $5aaa: $00
	nop                                              ; $5aab: $00
	inc  bc                                          ; $5aac: $03
	ld   h, b                                        ; $5aad: $60
	add  [hl]                                        ; $5aae: $86
	jr   @+$06                                       ; $5aaf: $18 $04

	sbc  a                                           ; $5ab1: $9f
	nop                                              ; $5ab2: $00
	ld   bc, $1c02                                   ; $5ab3: $01 $02 $1c
	add  [hl]                                        ; $5ab6: $86
	dec  d                                           ; $5ab7: $15
	inc  b                                           ; $5ab8: $04
	sbc  a                                           ; $5ab9: $9f
	nop                                              ; $5aba: $00
	ld   [bc], a                                     ; $5abb: $02
	rlca                                             ; $5abc: $07
	ld   a, l                                        ; $5abd: $7d
	dec  d                                           ; $5abe: $15
	ld   [bc], a                                     ; $5abf: $02
	inc  bc                                          ; $5ac0: $03
	ld   bc, $2000                                   ; $5ac1: $01 $00 $20
	nop                                              ; $5ac4: $00
	rlca                                             ; $5ac5: $07
	sub  d                                           ; $5ac6: $92
	dec  d                                           ; $5ac7: $15
	ld   [bc], a                                     ; $5ac8: $02
	inc  bc                                          ; $5ac9: $03
	ld   bc, $2001                                   ; $5aca: $01 $01 $20
	nop                                              ; $5acd: $00
	rlca                                             ; $5ace: $07
	jp   hl                                          ; $5acf: $e9


	dec  d                                           ; $5ad0: $15
	ld   [bc], a                                     ; $5ad1: $02
	inc  bc                                          ; $5ad2: $03
	ld   bc, $2002                                   ; $5ad3: $01 $02 $20
	nop                                              ; $5ad6: $00
	ld   b, $67                                      ; $5ad7: $06 $67
	dec  d                                           ; $5ad9: $15
	rrca                                             ; $5ada: $0f
	nop                                              ; $5adb: $00
	ld   bc, $7701                                   ; $5adc: $01 $01 $77
	ld   [hl], c                                     ; $5adf: $71
	ld   l, a                                        ; $5ae0: $6f
	ld   e, c                                        ; $5ae1: $59
	ld   [bc], a                                     ; $5ae2: $02
	ld   a, a                                        ; $5ae3: $7f
	ld   e, c                                        ; $5ae4: $59
	ld   a, b                                        ; $5ae5: $78
	ld   e, e                                        ; $5ae6: $5b
	sub  c                                           ; $5ae7: $91
	rst  $38                                         ; $5ae8: $ff
	rst  $38                                         ; $5ae9: $ff
	dec  c                                           ; $5aea: $0d
	nop                                              ; $5aeb: $00
	ld   a, [bc]                                     ; $5aec: $0a
	ld   b, $2e                                      ; $5aed: $06 $2e
	dec  d                                           ; $5aef: $15
	rrca                                             ; $5af0: $0f
	nop                                              ; $5af1: $00
	ld   bc, $9601                                   ; $5af2: $01 $01 $96
	ld   h, l                                        ; $5af5: $65
	sbc  [hl]                                        ; $5af6: $9e
	ld   l, [hl]                                     ; $5af7: $6e
	ld   d, d                                        ; $5af8: $52
	ld   h, [hl]                                     ; $5af9: $66
	sub  l                                           ; $5afa: $95
	ld   d, h                                        ; $5afb: $54
	add  h                                           ; $5afc: $84
	ld   l, [hl]                                     ; $5afd: $6e
	sbc  a                                           ; $5afe: $9f
	dec  c                                           ; $5aff: $0d
	nop                                              ; $5b00: $00
	ld   a, [bc]                                     ; $5b01: $0a
	ld   b, $43                                      ; $5b02: $06 $43
	ld   d, $0f                                      ; $5b04: $16 $0f
	nop                                              ; $5b06: $00
	ld   bc, $030c                                   ; $5b07: $01 $0c $03
	ld   bc, $c7a5                                   ; $5b0a: $01 $a5 $c7
	call nz, $0dfa                                   ; $5b0d: $c4 $fa $0d
	rst  $38                                         ; $5b10: $ff
	rst  $38                                         ; $5b11: $ff
	ld   [bc], a                                     ; $5b12: $02
	jr   c, @+$06                                    ; $5b13: $38 $04

	ld   d, d                                        ; $5b15: $52
	ld   a, h                                        ; $5b16: $7c
	dec  b                                           ; $5b17: $05
	xor  $04                                         ; $5b18: $ee $04
	dec  c                                           ; $5b1a: $0d
	rst  $38                                         ; $5b1b: $ff
	rst  $38                                         ; $5b1c: $ff
	dec  c                                           ; $5b1d: $0d
	rst  $38                                         ; $5b1e: $ff
	ld   a, b                                        ; $5b1f: $78
	ld   l, d                                        ; $5b20: $6a
	ld   h, c                                        ; $5b21: $61
	and  c                                           ; $5b22: $a1
	ld   a, b                                        ; $5b23: $78
	inc  bc                                          ; $5b24: $03
	ld   c, e                                        ; $5b25: $4b
	ld   a, c                                        ; $5b26: $79
	rst  $38                                         ; $5b27: $ff
	rst  $38                                         ; $5b28: $ff
	dec  c                                           ; $5b29: $0d
	nop                                              ; $5b2a: $00
	ld   a, [bc]                                     ; $5b2b: $0a
	rlca                                             ; $5b2c: $07
	pop  af                                          ; $5b2d: $f1
	rlca                                             ; $5b2e: $07
	inc  bc                                          ; $5b2f: $03
	jr   nz, jr_054_5b33                             ; $5b30: $20 $01

	ld   a, [bc]                                     ; $5b32: $0a

jr_054_5b33:
	inc  hl                                          ; $5b33: $23
	nop                                              ; $5b34: $00
	ld   bc, $5490                                   ; $5b35: $01 $90 $54
	ld   [bc], a                                     ; $5b38: $02
	jr   nz, jr_054_5b3f                             ; $5b39: $20 $04

	add  hl, hl                                      ; $5b3b: $29
	sbc  [hl]                                        ; $5b3c: $9e
	ld   [bc], a                                     ; $5b3d: $02
	xor  h                                           ; $5b3e: $ac

jr_054_5b3f:
	ld   a, h                                        ; $5b3f: $7c
	inc  b                                           ; $5b40: $04
	ld   a, d                                        ; $5b41: $7a
	inc  bc                                          ; $5b42: $03
	ld   c, e                                        ; $5b43: $4b
	ld   a, c                                        ; $5b44: $79
	dec  c                                           ; $5b45: $0d
	inc  b                                           ; $5b46: $04
	jp   Jump_054_7471                               ; $5b47: $c3 $71 $74


	halt                                             ; $5b4a: $76
	rst  $38                                         ; $5b4b: $ff
	rst  $38                                         ; $5b4c: $ff
	dec  c                                           ; $5b4d: $0d
	nop                                              ; $5b4e: $00
	ld   a, [bc]                                     ; $5b4f: $0a
	ld   sp, $2040                                   ; $5b50: $31 $40 $20
	inc  bc                                          ; $5b53: $03
	jr   nz, jr_054_5b57                             ; $5b54: $20 $01

	ld   a, [bc]                                     ; $5b56: $0a

jr_054_5b57:
	add  hl, hl                                      ; $5b57: $29
	nop                                              ; $5b58: $00
	ld   b, $2e                                      ; $5b59: $06 $2e
	dec  d                                           ; $5b5b: $15
	rrca                                             ; $5b5c: $0f
	nop                                              ; $5b5d: $00
	ld   bc, $030c                                   ; $5b5e: $01 $0c $03
	ld   bc, $a550                                   ; $5b61: $01 $50 $a5
	rst  ToBoot                                         ; $5b64: $c7
	call nz, $ffff                                   ; $5b65: $c4 $ff $ff
	dec  c                                           ; $5b68: $0d
	rst  $38                                         ; $5b69: $ff
	rst  $38                                         ; $5b6a: $ff
	inc  b                                           ; $5b6b: $04
	push de                                          ; $5b6c: $d5
	inc  b                                           ; $5b6d: $04
	add  a                                           ; $5b6e: $87
	ld   sp, hl                                      ; $5b6f: $f9
	db   $10                                         ; $5b70: $10
	ld   [bc], a                                     ; $5b71: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b72: $cf
	inc  bc                                          ; $5b73: $03
	jp   $ffff                                       ; $5b74: $c3 $ff $ff


	ld   sp, hl                                      ; $5b77: $f9
	dec  c                                           ; $5b78: $0d
	rst  $38                                         ; $5b79: $ff
	sub  b                                           ; $5b7a: $90
	db   $fc                                         ; $5b7b: $fc
	ld   h, a                                        ; $5b7c: $67
	adc  l                                           ; $5b7d: $8d
	sbc  d                                           ; $5b7e: $9a
	ld   h, e                                        ; $5b7f: $63
	and  c                                           ; $5b80: $a1
	rst  $38                                         ; $5b81: $ff
	rst  $38                                         ; $5b82: $ff
	dec  c                                           ; $5b83: $0d
	nop                                              ; $5b84: $00
	ld   a, [bc]                                     ; $5b85: $0a
	rlca                                             ; $5b86: $07
	pop  af                                          ; $5b87: $f1
	rlca                                             ; $5b88: $07
	inc  bc                                          ; $5b89: $03
	jr   nz, jr_054_5b8d                             ; $5b8a: $20 $01

	ld   a, [bc]                                     ; $5b8c: $0a

jr_054_5b8d:
	inc  hl                                          ; $5b8d: $23
	nop                                              ; $5b8e: $00
	ld   bc, $5490                                   ; $5b8f: $01 $90 $54
	ld   [bc], a                                     ; $5b92: $02
	jr   nz, jr_054_5b99                             ; $5b93: $20 $04

	add  hl, hl                                      ; $5b95: $29
	sbc  [hl]                                        ; $5b96: $9e
	ld   [bc], a                                     ; $5b97: $02
	xor  h                                           ; $5b98: $ac

jr_054_5b99:
	ld   a, h                                        ; $5b99: $7c
	inc  b                                           ; $5b9a: $04
	ld   a, d                                        ; $5b9b: $7a
	inc  bc                                          ; $5b9c: $03
	ld   c, e                                        ; $5b9d: $4b
	ld   a, c                                        ; $5b9e: $79
	dec  c                                           ; $5b9f: $0d
	inc  b                                           ; $5ba0: $04
	jp   Jump_054_7471                               ; $5ba1: $c3 $71 $74


	halt                                             ; $5ba4: $76
	rst  $38                                         ; $5ba5: $ff
	rst  $38                                         ; $5ba6: $ff
	dec  c                                           ; $5ba7: $0d
	nop                                              ; $5ba8: $00
	ld   a, [bc]                                     ; $5ba9: $0a
	ld   sp, $2040                                   ; $5baa: $31 $40 $20
	inc  bc                                          ; $5bad: $03
	jr   nz, jr_054_5bb1                             ; $5bae: $20 $01

	ld   a, [bc]                                     ; $5bb0: $0a

jr_054_5bb1:
	add  hl, hl                                      ; $5bb1: $29
	nop                                              ; $5bb2: $00
	ld   b, $2e                                      ; $5bb3: $06 $2e
	dec  d                                           ; $5bb5: $15
	ld   bc, $656b                                   ; $5bb6: $01 $6b $65
	ld   [hl], h                                     ; $5bb9: $74
	inc  bc                                          ; $5bba: $03
	ld   l, c                                        ; $5bbb: $69
	ld   [bc], a                                     ; $5bbc: $02
	xor  d                                           ; $5bbd: $aa
	ld   a, l                                        ; $5bbe: $7d
	rst  $38                                         ; $5bbf: $ff
	rst  $38                                         ; $5bc0: $ff
	dec  c                                           ; $5bc1: $0d
	nop                                              ; $5bc2: $00
	ld   a, [bc]                                     ; $5bc3: $0a
	add  hl, de                                      ; $5bc4: $19
	dec  b                                           ; $5bc5: $05
	inc  bc                                          ; $5bc6: $03
	inc  bc                                          ; $5bc7: $03
	ld   c, a                                        ; $5bc8: $4f
	add  [hl]                                        ; $5bc9: $86
	ld   [de], a                                     ; $5bca: $12
	inc  b                                           ; $5bcb: $04
	sbc  a                                           ; $5bcc: $9f
	nop                                              ; $5bcd: $00
	nop                                              ; $5bce: $00
	inc  bc                                          ; $5bcf: $03
	ld   c, a                                        ; $5bd0: $4f
	add  [hl]                                        ; $5bd1: $86
	inc  de                                          ; $5bd2: $13
	inc  b                                           ; $5bd3: $04
	sbc  a                                           ; $5bd4: $9f
	nop                                              ; $5bd5: $00
	ld   bc, $4f03                                   ; $5bd6: $01 $03 $4f
	add  [hl]                                        ; $5bd9: $86
	inc  d                                           ; $5bda: $14
	inc  b                                           ; $5bdb: $04
	sbc  a                                           ; $5bdc: $9f
	nop                                              ; $5bdd: $00
	ld   [bc], a                                     ; $5bde: $02
	rlca                                             ; $5bdf: $07
	sbc  a                                           ; $5be0: $9f
	ld   d, $02                                      ; $5be1: $16 $02
	inc  bc                                          ; $5be3: $03
	ld   bc, $2000                                   ; $5be4: $01 $00 $20
	nop                                              ; $5be7: $00
	rlca                                             ; $5be8: $07
	or   h                                           ; $5be9: $b4
	ld   d, $02                                      ; $5bea: $16 $02
	inc  bc                                          ; $5bec: $03
	ld   bc, $2001                                   ; $5bed: $01 $01 $20
	nop                                              ; $5bf0: $00
	rlca                                             ; $5bf1: $07
	or   h                                           ; $5bf2: $b4
	ld   d, $02                                      ; $5bf3: $16 $02
	inc  bc                                          ; $5bf5: $03
	ld   bc, $2002                                   ; $5bf6: $01 $02 $20
	nop                                              ; $5bf9: $00
	ld   b, $8a                                      ; $5bfa: $06 $8a
	ld   d, $0f                                      ; $5bfc: $16 $0f
	nop                                              ; $5bfe: $00
	ld   bc, $0301                                   ; $5bff: $01 $01 $03
	ld   c, a                                        ; $5c02: $4f
	add  [hl]                                        ; $5c03: $86
	dec  b                                           ; $5c04: $05
	db   $dd                                         ; $5c05: $dd
	adc  h                                           ; $5c06: $8c
	ld   a, b                                        ; $5c07: $78
	ld   e, e                                        ; $5c08: $5b
	sub  c                                           ; $5c09: $91
	rst  $38                                         ; $5c0a: $ff
	rst  $38                                         ; $5c0b: $ff
	dec  c                                           ; $5c0c: $0d
	nop                                              ; $5c0d: $00
	ld   a, [bc]                                     ; $5c0e: $0a
	ld   b, $51                                      ; $5c0f: $06 $51
	ld   d, $0f                                      ; $5c11: $16 $0f
	nop                                              ; $5c13: $00
	ld   bc, $9601                                   ; $5c14: $01 $01 $96
	ld   h, l                                        ; $5c17: $65
	sbc  [hl]                                        ; $5c18: $9e
	ld   l, [hl]                                     ; $5c19: $6e
	ld   d, d                                        ; $5c1a: $52
	ld   h, [hl]                                     ; $5c1b: $66
	sub  l                                           ; $5c1c: $95
	ld   d, h                                        ; $5c1d: $54
	add  h                                           ; $5c1e: $84
	ld   l, [hl]                                     ; $5c1f: $6e
	sbc  a                                           ; $5c20: $9f
	dec  c                                           ; $5c21: $0d
	nop                                              ; $5c22: $00
	ld   a, [bc]                                     ; $5c23: $0a
	ld   b, $12                                      ; $5c24: $06 $12

jr_054_5c26:
	rla                                              ; $5c26: $17
	rrca                                             ; $5c27: $0f
	nop                                              ; $5c28: $00
	ld   bc, $030c                                   ; $5c29: $01 $0c $03
	ld   bc, $c7a5                                   ; $5c2c: $01 $a5 $c7
	call nz, $10fa                                   ; $5c2f: $c4 $fa $10
	rst  $38                                         ; $5c32: $ff
	rst  $38                                         ; $5c33: $ff
	and  c                                           ; $5c34: $a1
	ld   sp, hl                                      ; $5c35: $f9
	dec  c                                           ; $5c36: $0d
	rst  $38                                         ; $5c37: $ff
	rst  $38                                         ; $5c38: $ff
	ld   b, $0b                                      ; $5c39: $06 $0b
	dec  b                                           ; $5c3b: $05
	rst  $28                                         ; $5c3c: $ef
	xor  l                                           ; $5c3d: $ad
	db   $eb                                         ; $5c3e: $eb
	cp   d                                           ; $5c3f: $ba
	ld   sp, hl                                      ; $5c40: $f9
	rst  $38                                         ; $5c41: $ff
	sub  b                                           ; $5c42: $90
	db   $fc                                         ; $5c43: $fc
	dec  c                                           ; $5c44: $0d
	ld   h, c                                        ; $5c45: $61
	and  c                                           ; $5c46: $a1
	ld   a, b                                        ; $5c47: $78
	halt                                             ; $5c48: $76
	ld   h, c                                        ; $5c49: $61
	ld   a, c                                        ; $5c4a: $79
	inc  b                                           ; $5c4b: $04
	jr   z, @+$5f                                    ; $5c4c: $28 $5d

	ld   a, b                                        ; $5c4e: $78
	sub  [hl]                                        ; $5c4f: $96
	rst  $38                                         ; $5c50: $ff
	rst  $38                                         ; $5c51: $ff
	dec  c                                           ; $5c52: $0d
	nop                                              ; $5c53: $00
	ld   a, [bc]                                     ; $5c54: $0a
	rlca                                             ; $5c55: $07
	pop  af                                          ; $5c56: $f1
	rlca                                             ; $5c57: $07
	inc  bc                                          ; $5c58: $03
	jr   nz, jr_054_5c5c                             ; $5c59: $20 $01

	ld   a, [bc]                                     ; $5c5b: $0a

jr_054_5c5c:
	inc  hl                                          ; $5c5c: $23
	nop                                              ; $5c5d: $00
	ld   bc, $5490                                   ; $5c5e: $01 $90 $54
	ld   [bc], a                                     ; $5c61: $02
	jr   nz, jr_054_5c68                             ; $5c62: $20 $04

	add  hl, hl                                      ; $5c64: $29
	sbc  [hl]                                        ; $5c65: $9e
	ld   [bc], a                                     ; $5c66: $02
	xor  h                                           ; $5c67: $ac

jr_054_5c68:
	ld   a, h                                        ; $5c68: $7c
	inc  b                                           ; $5c69: $04
	ld   a, d                                        ; $5c6a: $7a
	inc  bc                                          ; $5c6b: $03
	ld   c, e                                        ; $5c6c: $4b
	ld   a, c                                        ; $5c6d: $79
	dec  c                                           ; $5c6e: $0d
	inc  b                                           ; $5c6f: $04
	jp   Jump_054_7471                               ; $5c70: $c3 $71 $74


	halt                                             ; $5c73: $76
	rst  $38                                         ; $5c74: $ff
	rst  $38                                         ; $5c75: $ff
	dec  c                                           ; $5c76: $0d
	nop                                              ; $5c77: $00
	ld   a, [bc]                                     ; $5c78: $0a
	ld   sp, $2040                                   ; $5c79: $31 $40 $20
	inc  bc                                          ; $5c7c: $03
	jr   nz, jr_054_5c80                             ; $5c7d: $20 $01

	ld   a, [bc]                                     ; $5c7f: $0a

jr_054_5c80:
	add  hl, hl                                      ; $5c80: $29
	nop                                              ; $5c81: $00
	ld   b, $51                                      ; $5c82: $06 $51
	ld   d, $01                                      ; $5c84: $16 $01
	inc  bc                                          ; $5c86: $03
	db   $e4                                         ; $5c87: $e4
	dec  b                                           ; $5c88: $05
	ld   [hl], l                                     ; $5c89: $75
	and  b                                           ; $5c8a: $a0
	inc  bc                                          ; $5c8b: $03
	jr   jr_054_5c26                                 ; $5c8c: $18 $98

	inc  b                                           ; $5c8e: $04
	ld   [hl], c                                     ; $5c8f: $71
	ld   e, a                                        ; $5c90: $5f
	ld   [hl], h                                     ; $5c91: $74
	halt                                             ; $5c92: $76
	rst  $38                                         ; $5c93: $ff
	rst  $38                                         ; $5c94: $ff
	dec  c                                           ; $5c95: $0d
	nop                                              ; $5c96: $00
	ld   a, [bc]                                     ; $5c97: $0a
	ld   c, $71                                      ; $5c98: $0e $71
	ld   bc, $6596                                   ; $5c9a: $01 $96 $65
	sbc  [hl]                                        ; $5c9d: $9e
	ld   h, c                                        ; $5c9e: $61
	sbc  d                                           ; $5c9f: $9a
	ld   [hl], l                                     ; $5ca0: $75
	add  hl, hl                                      ; $5ca1: $29
	dec  h                                           ; $5ca2: $25
	ld   l, [hl]                                     ; $5ca3: $6e
	sbc  a                                           ; $5ca4: $9f
	dec  c                                           ; $5ca5: $0d
	nop                                              ; $5ca6: $00
	ld   a, [bc]                                     ; $5ca7: $0a
	inc  c                                           ; $5ca8: $0c
	ld   [bc], a                                     ; $5ca9: $02
	ld   c, $74                                      ; $5caa: $0e $74
	inc  e                                           ; $5cac: $1c
	inc  bc                                          ; $5cad: $03
	inc  bc                                          ; $5cae: $03
	inc  bc                                          ; $5caf: $03
	ld   bc, $9e50                                   ; $5cb0: $01 $50 $9e
	ld   [$5d00], sp                                 ; $5cb3: $08 $00 $5d
	and  c                                           ; $5cb6: $a1
	sbc  a                                           ; $5cb7: $9f
	dec  c                                           ; $5cb8: $0d
	inc  b                                           ; $5cb9: $04
	sub  $02                                         ; $5cba: $d6 $02
	jp   $0379                                       ; $5cbc: $c3 $79 $03


	db   $e4                                         ; $5cbf: $e4
	dec  b                                           ; $5cc0: $05
	ld   [hl], l                                     ; $5cc1: $75
	ld   [hl], d                                     ; $5cc2: $72
	ld   e, a                                        ; $5cc3: $5f
	sbc  d                                           ; $5cc4: $9a
	ld   l, l                                        ; $5cc5: $6d
	ld   a, h                                        ; $5cc6: $7c
	ld   a, e                                        ; $5cc7: $7b
	sbc  a                                           ; $5cc8: $9f
	dec  c                                           ; $5cc9: $0d
	nop                                              ; $5cca: $00
	ld   a, [bc]                                     ; $5ccb: $0a
	rrca                                             ; $5ccc: $0f
	nop                                              ; $5ccd: $00
	ld   bc, $5601                                   ; $5cce: $01 $01 $56
	ld   d, [hl]                                     ; $5cd1: $56
	sbc  [hl]                                        ; $5cd2: $9e
	sub  b                                           ; $5cd3: $90
	ld   d, h                                        ; $5cd4: $54
	ld   a, b                                        ; $5cd5: $78
	sbc  d                                           ; $5cd6: $9a
	adc  h                                           ; $5cd7: $8c
	ld   h, l                                        ; $5cd8: $65
	ld   l, l                                        ; $5cd9: $6d
	sub  [hl]                                        ; $5cda: $96
	sbc  a                                           ; $5cdb: $9f
	dec  c                                           ; $5cdc: $0d
	nop                                              ; $5cdd: $00
	ld   a, [bc]                                     ; $5cde: $0a
	rrca                                             ; $5cdf: $0f
	inc  bc                                          ; $5ce0: $03
	inc  bc                                          ; $5ce1: $03
	ld   bc, $546b                                   ; $5ce2: $01 $6b $54
	sbc  [hl]                                        ; $5ce5: $9e
	ld   l, e                                        ; $5ce6: $6b
	sbc  d                                           ; $5ce7: $9a
	ld   a, l                                        ; $5ce8: $7d
	sub  [hl]                                        ; $5ce9: $96
	ld   e, c                                        ; $5cea: $59
	ld   [hl], c                                     ; $5ceb: $71
	ld   l, l                                        ; $5cec: $6d
	sbc  a                                           ; $5ced: $9f
	dec  c                                           ; $5cee: $0d
	inc  bc                                          ; $5cef: $03
	adc  e                                           ; $5cf0: $8b
	ld   a, l                                        ; $5cf1: $7d
	ld   a, e                                        ; $5cf2: $7b
	sbc  [hl]                                        ; $5cf3: $9e
	ld   h, c                                        ; $5cf4: $61
	sbc  d                                           ; $5cf5: $9a
	ld   a, l                                        ; $5cf6: $7d
	ld   [bc], a                                     ; $5cf7: $02
	ld   sp, $7005                                   ; $5cf8: $31 $05 $70
	ld   [hl], l                                     ; $5cfb: $75
	ld   a, h                                        ; $5cfc: $7c
	dec  c                                           ; $5cfd: $0d
	ld   [bc], a                                     ; $5cfe: $02
	ld   a, a                                        ; $5cff: $7f
	inc  b                                           ; $5d00: $04
	dec  de                                          ; $5d01: $1b
	inc  bc                                          ; $5d02: $03
	ld   l, l                                        ; $5d03: $6d
	dec  b                                           ; $5d04: $05
	add  hl, de                                      ; $5d05: $19
	sub  b                                           ; $5d06: $90
	ld   e, c                                        ; $5d07: $59
	ld   a, e                                        ; $5d08: $7b
	ld   [hl], h                                     ; $5d09: $74
	ld   l, l                                        ; $5d0a: $6d
	ld   a, h                                        ; $5d0b: $7c
	sub  [hl]                                        ; $5d0c: $96
	sbc  a                                           ; $5d0d: $9f
	dec  c                                           ; $5d0e: $0d
	nop                                              ; $5d0f: $00
	ld   a, [bc]                                     ; $5d10: $0a
	ld   sp, $2540                                   ; $5d11: $31 $40 $25
	inc  bc                                          ; $5d14: $03
	dec  h                                           ; $5d15: $25
	ld   bc, $2814                                   ; $5d16: $01 $14 $28
	nop                                              ; $5d19: $00
	dec  e                                           ; $5d1a: $1d
	ld   b, b                                        ; $5d1b: $40
	inc  de                                          ; $5d1c: $13
	inc  bc                                          ; $5d1d: $03
	inc  de                                          ; $5d1e: $13
	ld   bc, $2803                                   ; $5d1f: $01 $03 $28
	nop                                              ; $5d22: $00
	ld   bc, $0008                                   ; $5d23: $01 $08 $00
	ld   e, l                                        ; $5d26: $5d
	and  c                                           ; $5d27: $a1
	sbc  a                                           ; $5d28: $9f
	dec  c                                           ; $5d29: $0d
	sub  [hl]                                        ; $5d2a: $96
	ld   e, l                                        ; $5d2b: $5d
	ld   e, d                                        ; $5d2c: $5a
	and  c                                           ; $5d2d: $a1
	ld   a, [hl]                                     ; $5d2e: $7e
	ld   [hl], c                                     ; $5d2f: $71
	ld   l, l                                        ; $5d30: $6d
	sbc  l                                           ; $5d31: $9d
	ld   a, e                                        ; $5d32: $7b
	sbc  a                                           ; $5d33: $9f
	dec  c                                           ; $5d34: $0d
	ld   h, d                                        ; $5d35: $62
	ld   [bc], a                                     ; $5d36: $02
	sub  h                                           ; $5d37: $94
	dec  b                                           ; $5d38: $05
	rrca                                             ; $5d39: $0f
	ld   h, e                                        ; $5d3a: $63
	adc  h                                           ; $5d3b: $8c
	sbc  a                                           ; $5d3c: $9f
	dec  c                                           ; $5d3d: $0d
	nop                                              ; $5d3e: $00
	ld   a, [bc]                                     ; $5d3f: $0a
	ld   bc, $9166                                   ; $5d40: $01 $66 $91
	ld   d, b                                        ; $5d43: $50
	sbc  [hl]                                        ; $5d44: $9e
	sub  b                                           ; $5d45: $90
	ld   d, h                                        ; $5d46: $54
	ld   [bc], a                                     ; $5d47: $02
	and  l                                           ; $5d48: $a5
	inc  b                                           ; $5d49: $04
	xor  d                                           ; $5d4a: $aa
	ld   a, l                                        ; $5d4b: $7d
	dec  c                                           ; $5d4c: $0d
	nop                                              ; $5d4d: $00
	dec  b                                           ; $5d4e: $05
	ld   b, b                                        ; $5d4f: $40
	ld   d, b                                        ; $5d50: $50
	ld   bc, $0000                                   ; $5d51: $01 $00 $00
	ld   bc, $7194                                   ; $5d54: $01 $94 $71
	ld   e, l                                        ; $5d57: $5d
	sbc  b                                           ; $5d58: $98
	inc  b                                           ; $5d59: $04
	sub  l                                           ; $5d5a: $95
	ld   [bc], a                                     ; $5d5b: $02
	ld   hl, $0375                                   ; $5d5c: $21 $75 $03
	and  a                                           ; $5d5f: $a7
	adc  l                                           ; $5d60: $8d
	ld   a, b                                        ; $5d61: $78
	ld   h, e                                        ; $5d62: $63
	ld   d, d                                        ; $5d63: $52
	sbc  a                                           ; $5d64: $9f
	dec  c                                           ; $5d65: $0d
	ld   e, b                                        ; $5d66: $58
	inc  b                                           ; $5d67: $04
	ld   a, e                                        ; $5d68: $7b
	sbc  d                                           ; $5d69: $9a
	ld   h, e                                        ; $5d6a: $63
	adc  h                                           ; $5d6b: $8c
	ld   [hl], l                                     ; $5d6c: $75
	ld   h, l                                        ; $5d6d: $65
	ld   l, l                                        ; $5d6e: $6d
	sbc  a                                           ; $5d6f: $9f
	dec  c                                           ; $5d70: $0d
	nop                                              ; $5d71: $00
	ld   a, [bc]                                     ; $5d72: $0a
	dec  b                                           ; $5d73: $05
	add  b                                           ; $5d74: $80
	ld   [hl], l                                     ; $5d75: $75
	ld   bc, $0001                                   ; $5d76: $01 $01 $00
	add  hl, hl                                      ; $5d79: $29
	nop                                              ; $5d7a: $00
	nop                                              ; $5d7b: $00
	nop                                              ; $5d7c: $00
	inc  bc                                          ; $5d7d: $03
	dec  d                                           ; $5d7e: $15
	ld   bc, $2491                                   ; $5d7f: $01 $91 $24
	nop                                              ; $5d82: $00
	ld   c, $01                                      ; $5d83: $0e $01
	rrca                                             ; $5d85: $0f
	nop                                              ; $5d86: $00
	ld   bc, $0102                                   ; $5d87: $01 $02 $01
	ld   h, e                                        ; $5d8a: $63
	sbc  l                                           ; $5d8b: $9d
	sub  d                                           ; $5d8c: $92
	ld   e, c                                        ; $5d8d: $59
	ld   a, b                                        ; $5d8e: $78
	inc  bc                                          ; $5d8f: $03
	ld   d, $6e                                      ; $5d90: $16 $6e
	ld   a, b                                        ; $5d92: $78
	db   $fc                                         ; $5d93: $fc
	sbc  a                                           ; $5d94: $9f
	dec  c                                           ; $5d95: $0d
	ld   h, c                                        ; $5d96: $61
	and  c                                           ; $5d97: $a1
	ld   a, b                                        ; $5d98: $78
	ld   [bc], a                                     ; $5d99: $02
	and  c                                           ; $5d9a: $a1
	inc  b                                           ; $5d9b: $04
	sbc  [hl]                                        ; $5d9c: $9e
	ld   a, h                                        ; $5d9d: $7c
	ld   d, d                                        ; $5d9e: $52
	ld   d, d                                        ; $5d9f: $52
	inc  b                                           ; $5da0: $04
	xor  d                                           ; $5da1: $aa
	ld   a, l                                        ; $5da2: $7d
	sbc  [hl]                                        ; $5da3: $9e
	ld   a, b                                        ; $5da4: $78
	ld   a, c                                        ; $5da5: $79
	ld   e, c                                        ; $5da6: $59
	dec  c                                           ; $5da7: $0d
	cp   d                                           ; $5da8: $ba
	rst  ToBoot                                         ; $5da9: $c7
	xor  [hl]                                        ; $5daa: $ae
	ld   a, b                                        ; $5dab: $78
	ld   [bc], a                                     ; $5dac: $02
	jp   Jump_054_505a                               ; $5dad: $c3 $5a $50


	sbc  b                                           ; $5db0: $98
	ld   l, e                                        ; $5db1: $6b
	ld   d, h                                        ; $5db2: $54
	ld   l, [hl]                                     ; $5db3: $6e
	ld   a, b                                        ; $5db4: $78
	db   $fc                                         ; $5db5: $fc
	sbc  a                                           ; $5db6: $9f
	dec  c                                           ; $5db7: $0d
	nop                                              ; $5db8: $00
	ld   a, [bc]                                     ; $5db9: $0a
	inc  d                                           ; $5dba: $14
	ld   b, $01                                      ; $5dbb: $06 $01
	rrca                                             ; $5dbd: $0f
	dec  b                                           ; $5dbe: $05
	ld   bc, $0801                                   ; $5dbf: $01 $01 $08
	nop                                              ; $5dc2: $00
	ld   a, l                                        ; $5dc3: $7d
	and  c                                           ; $5dc4: $a1
	dec  c                                           ; $5dc5: $0d
	ld   l, a                                        ; $5dc6: $6f
	sub  l                                           ; $5dc7: $95
	ld   [hl], c                                     ; $5dc8: $71
	halt                                             ; $5dc9: $76
	xor  c                                           ; $5dca: $a9
	xor  c                                           ; $5dcb: $a9
	ld   e, c                                        ; $5dcc: $59
	ld   sp, hl                                      ; $5dcd: $f9
	dec  c                                           ; $5dce: $0d
	nop                                              ; $5dcf: $00
	ld   a, [bc]                                     ; $5dd0: $0a
	rrca                                             ; $5dd1: $0f
	nop                                              ; $5dd2: $00
	ld   bc, $7d01                                   ; $5dd3: $01 $01 $7d
	ld   d, d                                        ; $5dd6: $52
	sbc  [hl]                                        ; $5dd7: $9e
	ld   [hl], a                                     ; $5dd8: $77
	ld   d, h                                        ; $5dd9: $54
	ld   l, h                                        ; $5dda: $6c
	sbc  a                                           ; $5ddb: $9f
	dec  c                                           ; $5ddc: $0d
	nop                                              ; $5ddd: $00
	ld   a, [bc]                                     ; $5dde: $0a
	inc  d                                           ; $5ddf: $14
	ld   a, [bc]                                     ; $5de0: $0a
	ld   bc, $051c                                   ; $5de1: $01 $1c $05
	ld   bc, $0101                                   ; $5de4: $01 $01 $01
	ld   e, b                                        ; $5de7: $58
	ld   a, l                                        ; $5de8: $7d
	sub  [hl]                                        ; $5de9: $96
	ld   d, h                                        ; $5dea: $54
	ld   h, e                                        ; $5deb: $63
	and  c                                           ; $5dec: $a1
	sbc  a                                           ; $5ded: $9f
	dec  c                                           ; $5dee: $0d
	nop                                              ; $5def: $00
	ld   a, [bc]                                     ; $5df0: $0a
	rrca                                             ; $5df1: $0f
	nop                                              ; $5df2: $00
	ld   bc, $0201                                   ; $5df3: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5df6: $cf
	dec  b                                           ; $5df7: $05
	ld   a, [de]                                     ; $5df8: $1a
	ld   h, e                                        ; $5df9: $63
	and  c                                           ; $5dfa: $a1
	sbc  a                                           ; $5dfb: $9f
	dec  c                                           ; $5dfc: $0d
	ld   e, b                                        ; $5dfd: $58
	ld   a, l                                        ; $5dfe: $7d
	sub  [hl]                                        ; $5dff: $96
	ld   d, h                                        ; $5e00: $54
	ld   h, d                                        ; $5e01: $62
	ld   h, h                                        ; $5e02: $64
	ld   d, d                                        ; $5e03: $52
	adc  h                                           ; $5e04: $8c
	ld   h, a                                        ; $5e05: $67
	sbc  a                                           ; $5e06: $9f
	dec  c                                           ; $5e07: $0d
	inc  b                                           ; $5e08: $04
	ld   c, c                                        ; $5e09: $49
	ld   e, c                                        ; $5e0a: $59
	ld   h, d                                        ; $5e0b: $62
	inc  b                                           ; $5e0c: $04
	di                                               ; $5e0d: $f3
	ld   [hl], l                                     ; $5e0e: $75
	ld   h, a                                        ; $5e0f: $67
	ld   e, c                                        ; $5e10: $59
	ld   sp, hl                                      ; $5e11: $f9
	dec  c                                           ; $5e12: $0d
	nop                                              ; $5e13: $00
	ld   a, [bc]                                     ; $5e14: $0a
	inc  e                                           ; $5e15: $1c
	dec  b                                           ; $5e16: $05
	ld   bc, $0101                                   ; $5e17: $01 $01 $01
	ld   [bc], a                                     ; $5e1a: $02
	and  l                                           ; $5e1b: $a5
	inc  b                                           ; $5e1c: $04
	xor  d                                           ; $5e1d: $aa
	sbc  [hl]                                        ; $5e1e: $9e
	inc  bc                                          ; $5e1f: $03
	ld   l, e                                        ; $5e20: $6b
	inc  b                                           ; $5e21: $04
	ld   [de], a                                     ; $5e22: $12
	ld   [hl], c                                     ; $5e23: $71
	ld   [hl], h                                     ; $5e24: $74
	inc  b                                           ; $5e25: $04
	db   $e3                                         ; $5e26: $e3
	ld   h, l                                        ; $5e27: $65
	ld   d, d                                        ; $5e28: $52
	ld   h, c                                        ; $5e29: $61
	halt                                             ; $5e2a: $76
	ld   e, d                                        ; $5e2b: $5a
	dec  c                                           ; $5e2c: $0d
	ld   d, b                                        ; $5e2d: $50
	sbc  c                                           ; $5e2e: $99
	and  c                                           ; $5e2f: $a1
	sub  d                                           ; $5e30: $92
	ld   e, a                                        ; $5e31: $5f
	ld   [hl], a                                     ; $5e32: $77
	sbc  [hl]                                        ; $5e33: $9e
	ld   l, e                                        ; $5e34: $6b
	sbc  d                                           ; $5e35: $9a
	ld   e, d                                        ; $5e36: $5a
	rst  $38                                         ; $5e37: $ff
	rst  $38                                         ; $5e38: $ff
	dec  c                                           ; $5e39: $0d
	adc  h                                           ; $5e3a: $8c
	sbc  c                                           ; $5e3b: $99
	ld   [bc], a                                     ; $5e3c: $02
	jr   nz, jr_054_5e43                             ; $5e3d: $20 $04

	xor  d                                           ; $5e3f: $aa
	ld   e, c                                        ; $5e40: $59
	ld   e, c                                        ; $5e41: $59
	sbc  c                                           ; $5e42: $99

jr_054_5e43:
	inc  bc                                          ; $5e43: $03
	dec  c                                           ; $5e44: $0d
	ld   [bc], a                                     ; $5e45: $02
	jp   Jump_054_7b92                               ; $5e46: $c3 $92 $7b


	and  c                                           ; $5e49: $a1
	rst  $38                                         ; $5e4a: $ff
	rst  $38                                         ; $5e4b: $ff
	dec  c                                           ; $5e4c: $0d
	nop                                              ; $5e4d: $00
	ld   a, [bc]                                     ; $5e4e: $0a
	inc  e                                           ; $5e4f: $1c
	dec  b                                           ; $5e50: $05
	nop                                              ; $5e51: $00
	nop                                              ; $5e52: $00
	ld   bc, $508c                                   ; $5e53: $01 $8c $50
	sbc  [hl]                                        ; $5e56: $9e
	inc  bc                                          ; $5e57: $03
	ld   l, l                                        ; $5e58: $6d
	dec  b                                           ; $5e59: $05
	add  hl, de                                      ; $5e5a: $19
	halt                                             ; $5e5b: $76
	ld   e, c                                        ; $5e5c: $59
	inc  bc                                          ; $5e5d: $03
	and  a                                           ; $5e5e: $a7
	adc  [hl]                                        ; $5e5f: $8e
	ld   h, c                                        ; $5e60: $61
	halt                                             ; $5e61: $76
	ld   a, c                                        ; $5e62: $79
	dec  c                                           ; $5e63: $0d
	ld   a, b                                        ; $5e64: $78
	sbc  c                                           ; $5e65: $99
	ld   e, a                                        ; $5e66: $5f
	ld   [hl], a                                     ; $5e67: $77
	sbc  [hl]                                        ; $5e68: $9e
	inc  bc                                          ; $5e69: $03
	add  l                                           ; $5e6a: $85
	inc  b                                           ; $5e6b: $04
	xor  e                                           ; $5e6c: $ab
	inc  bc                                          ; $5e6d: $03
	add  d                                           ; $5e6e: $82
	ld   a, c                                        ; $5e6f: $79
	ld   a, l                                        ; $5e70: $7d
	and  a                                           ; $5e71: $a7
	jp   nz, $9759                                   ; $5e72: $c2 $59 $97

	dec  c                                           ; $5e75: $0d
	dec  b                                           ; $5e76: $05
	jr   nz, jr_054_5ede                             ; $5e77: $20 $65

	halt                                             ; $5e79: $76
	ld   e, l                                        ; $5e7a: $5d
	ld   e, c                                        ; $5e7b: $59
	sub  a                                           ; $5e7c: $97
	inc  b                                           ; $5e7d: $04
	ld   c, $03                                      ; $5e7e: $0e $03
	sbc  l                                           ; $5e80: $9d
	inc  b                                           ; $5e81: $04
	and  [hl]                                        ; $5e82: $a6
	sub  d                                           ; $5e83: $92
	sbc  a                                           ; $5e84: $9f
	dec  c                                           ; $5e85: $0d
	nop                                              ; $5e86: $00
	ld   a, [bc]                                     ; $5e87: $0a
	inc  e                                           ; $5e88: $1c
	dec  b                                           ; $5e89: $05
	ld   bc, $0101                                   ; $5e8a: $01 $01 $01
	ld   [hl], a                                     ; $5e8d: $77
	ld   d, h                                        ; $5e8e: $54
	ld   sp, hl                                      ; $5e8f: $f9
	db   $10                                         ; $5e90: $10
	inc  bc                                          ; $5e91: $03
	ld   l, e                                        ; $5e92: $6b
	inc  b                                           ; $5e93: $04
	ld   [de], a                                     ; $5e94: $12
	ld   [hl], c                                     ; $5e95: $71
	ld   [hl], h                                     ; $5e96: $74
	ld   e, l                                        ; $5e97: $5d
	sbc  d                                           ; $5e98: $9a
	sbc  c                                           ; $5e99: $99
	ld   sp, hl                                      ; $5e9a: $f9
	dec  c                                           ; $5e9b: $0d
	nop                                              ; $5e9c: $00
	ld   a, [bc]                                     ; $5e9d: $0a
	add  hl, de                                      ; $5e9e: $19
	dec  b                                           ; $5e9f: $05
	ld   [bc], a                                     ; $5ea0: $02
	ld   a, l                                        ; $5ea1: $7d
	ld   d, d                                        ; $5ea2: $52
	sbc  [hl]                                        ; $5ea3: $9e
	ld   d, d                                        ; $5ea4: $52
	ld   d, d                                        ; $5ea5: $52
	ld   [hl], l                                     ; $5ea6: $75
	ld   h, a                                        ; $5ea7: $67
	sub  [hl]                                        ; $5ea8: $96
	nop                                              ; $5ea9: $00
	nop                                              ; $5eaa: $00
	ld   h, c                                        ; $5eab: $61
	halt                                             ; $5eac: $76
	sbc  l                                           ; $5ead: $9d
	sbc  c                                           ; $5eae: $99
	nop                                              ; $5eaf: $00
	ld   bc, $b207                                   ; $5eb0: $01 $07 $b2
	ld   bc, $0302                                   ; $5eb3: $01 $02 $03
	ld   bc, $2000                                   ; $5eb6: $01 $00 $20
	nop                                              ; $5eb9: $00
	rlca                                             ; $5eba: $07
	ld   b, e                                        ; $5ebb: $43
	ld   bc, $0302                                   ; $5ebc: $01 $02 $03
	ld   bc, $2001                                   ; $5ebf: $01 $01 $20
	nop                                              ; $5ec2: $00
	ld   b, $86                                      ; $5ec3: $06 $86
	ld   bc, $000f                                   ; $5ec5: $01 $0f $00
	ld   bc, $6701                                   ; $5ec8: $01 $01 $67
	adc  l                                           ; $5ecb: $8d
	adc  h                                           ; $5ecc: $8c
	ld   l, c                                        ; $5ecd: $69
	and  c                                           ; $5ece: $a1
	sbc  a                                           ; $5ecf: $9f
	dec  c                                           ; $5ed0: $0d
	ld   [bc], a                                     ; $5ed1: $02
	and  l                                           ; $5ed2: $a5
	inc  b                                           ; $5ed3: $04
	xor  d                                           ; $5ed4: $aa
	ld   a, l                                        ; $5ed5: $7d
	ld   l, a                                        ; $5ed6: $6f
	sub  l                                           ; $5ed7: $95
	ld   [hl], c                                     ; $5ed8: $71
	halt                                             ; $5ed9: $76
	dec  c                                           ; $5eda: $0d
	inc  b                                           ; $5edb: $04
	di                                               ; $5edc: $f3
	ld   e, d                                        ; $5edd: $5a

jr_054_5ede:
	ld   d, b                                        ; $5ede: $50
	sbc  c                                           ; $5edf: $99
	and  c                                           ; $5ee0: $a1
	ld   [hl], l                                     ; $5ee1: $75
	ld   h, a                                        ; $5ee2: $67
	sbc  a                                           ; $5ee3: $9f
	dec  c                                           ; $5ee4: $0d
	nop                                              ; $5ee5: $00
	ld   a, [bc]                                     ; $5ee6: $0a
	inc  e                                           ; $5ee7: $1c
	dec  b                                           ; $5ee8: $05
	ld   [bc], a                                     ; $5ee9: $02
	ld   [bc], a                                     ; $5eea: $02
	ld   bc, $a178                                   ; $5eeb: $01 $78 $a1
	sub  d                                           ; $5eee: $92
	sbc  [hl]                                        ; $5eef: $9e
	ld   l, e                                        ; $5ef0: $6b
	ld   d, h                                        ; $5ef1: $54
	ld   a, b                                        ; $5ef2: $78
	and  c                                           ; $5ef3: $a1
	ld   e, c                                        ; $5ef4: $59
	rst  $38                                         ; $5ef5: $ff
	rst  $38                                         ; $5ef6: $ff
	dec  c                                           ; $5ef7: $0d
	adc  c                                           ; $5ef8: $89
	ld   a, b                                        ; $5ef9: $78
	sbc  [hl]                                        ; $5efa: $9e
	ld   h, l                                        ; $5efb: $65
	sub  c                                           ; $5efc: $91
	ei                                               ; $5efd: $fb
	ld   a, b                                        ; $5efe: $78
	ld   d, d                                        ; $5eff: $52
	ld   a, b                                        ; $5f00: $78
	db   $fc                                         ; $5f01: $fc
	sbc  a                                           ; $5f02: $9f
	dec  c                                           ; $5f03: $0d
	nop                                              ; $5f04: $00
	ld   a, [bc]                                     ; $5f05: $0a
	add  hl, hl                                      ; $5f06: $29
	ld   bc, $1c00                                   ; $5f07: $01 $00 $1c
	dec  b                                           ; $5f0a: $05
	ld   [bc], a                                     ; $5f0b: $02
	ld   [bc], a                                     ; $5f0c: $02
	dec  e                                           ; $5f0d: $1d
	ld   b, b                                        ; $5f0e: $40
	dec  d                                           ; $5f0f: $15
	inc  bc                                          ; $5f10: $03
	dec  d                                           ; $5f11: $15
	ld   bc, $2902                                   ; $5f12: $01 $02 $29
	nop                                              ; $5f15: $00
	ld   bc, $a178                                   ; $5f16: $01 $78 $a1
	sub  d                                           ; $5f19: $92
	sbc  [hl]                                        ; $5f1a: $9e
	ld   d, b                                        ; $5f1b: $50
	ld   e, c                                        ; $5f1c: $59
	and  c                                           ; $5f1d: $a1
	ld   a, h                                        ; $5f1e: $7c
	ld   e, c                                        ; $5f1f: $59
	ld   d, d                                        ; $5f20: $52
	ld   a, b                                        ; $5f21: $78
	sbc  a                                           ; $5f22: $9f
	dec  c                                           ; $5f23: $0d
	adc  c                                           ; $5f24: $89
	ld   a, b                                        ; $5f25: $78
	sbc  [hl]                                        ; $5f26: $9e
	ld   h, l                                        ; $5f27: $65
	sub  c                                           ; $5f28: $91
	ei                                               ; $5f29: $fb
	ld   a, b                                        ; $5f2a: $78
	ld   d, d                                        ; $5f2b: $52
	ld   a, b                                        ; $5f2c: $78
	db   $fc                                         ; $5f2d: $fc
	sbc  a                                           ; $5f2e: $9f
	dec  c                                           ; $5f2f: $0d
	nop                                              ; $5f30: $00
	ld   a, [bc]                                     ; $5f31: $0a
	add  hl, hl                                      ; $5f32: $29
	ld   bc, $0f00                                   ; $5f33: $01 $00 $0f
	nop                                              ; $5f36: $00
	ld   bc, $5201                                   ; $5f37: $01 $01 $52
	ld   d, d                                        ; $5f3a: $52
	ld   [hl], l                                     ; $5f3b: $75
	ld   h, a                                        ; $5f3c: $67
	sub  [hl]                                        ; $5f3d: $96
	sbc  a                                           ; $5f3e: $9f
	dec  c                                           ; $5f3f: $0d
	inc  b                                           ; $5f40: $04
	ld   l, l                                        ; $5f41: $6d
	ld   [hl], l                                     ; $5f42: $75
	ld   e, b                                        ; $5f43: $58
	inc  b                                           ; $5f44: $04
	db   $ec                                         ; $5f45: $ec
	ld   a, c                                        ; $5f46: $79
	dec  b                                           ; $5f47: $05
	ld   d, $74                                      ; $5f48: $16 $74
	sbc  c                                           ; $5f4a: $99
	ld   a, b                                        ; $5f4b: $78
	sub  a                                           ; $5f4c: $97
	rst  $38                                         ; $5f4d: $ff
	rst  $38                                         ; $5f4e: $ff
	dec  c                                           ; $5f4f: $0d
	nop                                              ; $5f50: $00
	ld   a, [bc]                                     ; $5f51: $0a
	inc  e                                           ; $5f52: $1c
	dec  b                                           ; $5f53: $05
	ld   bc, $1d01                                   ; $5f54: $01 $01 $1d
	ld   b, b                                        ; $5f57: $40
	dec  d                                           ; $5f58: $15
	inc  bc                                          ; $5f59: $03
	dec  d                                           ; $5f5a: $15
	ld   bc, $2802                                   ; $5f5b: $01 $02 $28
	nop                                              ; $5f5e: $00
	ld   bc, $546b                                   ; $5f5f: $01 $6b $54
	ld   e, c                                        ; $5f62: $59
	ld   a, [$580d]                                  ; $5f63: $fa $0d $58
	ld   e, b                                        ; $5f66: $58
	ld   e, e                                        ; $5f67: $5b
	ld   a, c                                        ; $5f68: $79
	ld   a, [$0310]                                  ; $5f69: $fa $10 $03
	ld   e, e                                        ; $5f6c: $5b
	ld   e, c                                        ; $5f6d: $59
	sbc  c                                           ; $5f6e: $99
	sbc  l                                           ; $5f6f: $9d
	db   $fc                                         ; $5f70: $fc
	sbc  a                                           ; $5f71: $9f
	dec  c                                           ; $5f72: $0d
	nop                                              ; $5f73: $00
	ld   a, [bc]                                     ; $5f74: $0a
	inc  e                                           ; $5f75: $1c
	dec  b                                           ; $5f76: $05
	nop                                              ; $5f77: $00
	nop                                              ; $5f78: $00
	ld   bc, $8b03                                   ; $5f79: $01 $03 $8b
	ld   a, l                                        ; $5f7c: $7d
	ld   [bc], a                                     ; $5f7d: $02
	jr   c, jr_054_5f84                              ; $5f7e: $38 $04

	ld   d, d                                        ; $5f80: $52
	ld   a, h                                        ; $5f81: $7c
	ld   l, a                                        ; $5f82: $6f
	sub  l                                           ; $5f83: $95

jr_054_5f84:
	ld   d, h                                        ; $5f84: $54
	ld   l, c                                        ; $5f85: $69
	ld   d, d                                        ; $5f86: $52
	and  b                                           ; $5f87: $a0
	dec  c                                           ; $5f88: $0d
	sub  d                                           ; $5f89: $92
	sbc  e                                           ; $5f8a: $9b
	ld   d, h                                        ; $5f8b: $54
	halt                                             ; $5f8c: $76
	dec  b                                           ; $5f8d: $05
	pop  de                                          ; $5f8e: $d1
	ld   [hl], c                                     ; $5f8f: $71
	ld   [hl], h                                     ; $5f90: $74
	sbc  c                                           ; $5f91: $99
	and  c                                           ; $5f92: $a1
	sub  d                                           ; $5f93: $92
	ld   e, a                                        ; $5f94: $5f
	ld   [hl], a                                     ; $5f95: $77
	rst  $38                                         ; $5f96: $ff
	rst  $38                                         ; $5f97: $ff
	dec  c                                           ; $5f98: $0d
	add  b                                           ; $5f99: $80
	halt                                             ; $5f9a: $76
	sbc  b                                           ; $5f9b: $98
	ld   h, [hl]                                     ; $5f9c: $66
	sub  c                                           ; $5f9d: $91
	ldh  [c], a                                      ; $5f9e: $e2
	db   $ec                                         ; $5f9f: $ec
	ld   a, b                                        ; $5fa0: $78
	and  c                                           ; $5fa1: $a1
	sub  d                                           ; $5fa2: $92
	sbc  a                                           ; $5fa3: $9f
	dec  c                                           ; $5fa4: $0d
	nop                                              ; $5fa5: $00
	ld   a, [bc]                                     ; $5fa6: $0a
	ld   bc, $936f                                   ; $5fa7: $01 $6f $93
	ei                                               ; $5faa: $fb
	ld   h, c                                        ; $5fab: $61
	halt                                             ; $5fac: $76
	ld   [hl], l                                     ; $5fad: $75
	sbc  [hl]                                        ; $5fae: $9e
	ld   e, b                                        ; $5faf: $58
	inc  bc                                          ; $5fb0: $03
	ld   l, e                                        ; $5fb1: $6b
	inc  b                                           ; $5fb2: $04
	ld   [de], a                                     ; $5fb3: $12
	ld   d, d                                        ; $5fb4: $52
	dec  c                                           ; $5fb5: $0d
	sub  [hl]                                        ; $5fb6: $96
	sbc  e                                           ; $5fb7: $9b
	ld   h, l                                        ; $5fb8: $65
	sub  e                                           ; $5fb9: $93
	ei                                               ; $5fba: $fb
	ld   a, c                                        ; $5fbb: $79
	ld   a, b                                        ; $5fbc: $78
	sbc  a                                           ; $5fbd: $9f
	dec  c                                           ; $5fbe: $0d
	nop                                              ; $5fbf: $00
	ld   a, [bc]                                     ; $5fc0: $0a
	dec  c                                           ; $5fc1: $0d
	nop                                              ; $5fc2: $00
	nop                                              ; $5fc3: $00
	rrca                                             ; $5fc4: $0f
	nop                                              ; $5fc5: $00
	ld   bc, $7b23                                   ; $5fc6: $01 $23 $7b
	inc  e                                           ; $5fc9: $1c
	dec  b                                           ; $5fca: $05
	nop                                              ; $5fcb: $00
	nop                                              ; $5fcc: $00
	ld   bc, wRandomNumStruct                                   ; $5fcd: $01 $a7 $c2
	ld   e, d                                        ; $5fd0: $5a
	ld   [bc], a                                     ; $5fd1: $02
	jr   c, jr_054_5fd8                              ; $5fd2: $38 $04

	ld   d, d                                        ; $5fd4: $52
	ld   a, h                                        ; $5fd5: $7c
	inc  b                                           ; $5fd6: $04
	ld   a, b                                        ; $5fd7: $78

jr_054_5fd8:
	and  b                                           ; $5fd8: $a0
	ld   [bc], a                                     ; $5fd9: $02
	sub  l                                           ; $5fda: $95
	sbc  c                                           ; $5fdb: $99
	ld   e, c                                        ; $5fdc: $59
	sub  a                                           ; $5fdd: $97
	dec  c                                           ; $5fde: $0d
	ld   [$7d00], sp                                 ; $5fdf: $08 $00 $7d
	and  c                                           ; $5fe2: $a1
	ld   a, l                                        ; $5fe3: $7d
	dec  c                                           ; $5fe4: $0d
	cp   d                                           ; $5fe5: $ba
	and  l                                           ; $5fe6: $a5
	call nz, $a0c2                                   ; $5fe7: $c4 $c2 $a0
	ld   [bc], a                                     ; $5fea: $02
	rla                                              ; $5feb: $17
	ld   h, l                                        ; $5fec: $65
	ld   [hl], h                                     ; $5fed: $74
	ld   a, b                                        ; $5fee: $78
	sbc  a                                           ; $5fef: $9f
	dec  c                                           ; $5ff0: $0d
	nop                                              ; $5ff1: $00
	ld   a, [bc]                                     ; $5ff2: $0a
	ld   bc, $2002                                   ; $5ff3: $01 $02 $20
	ld   [hl], d                                     ; $5ff6: $72
	ld   a, h                                        ; $5ff7: $7c
	ld   [bc], a                                     ; $5ff8: $02
	ld   c, a                                        ; $5ff9: $4f
	dec  b                                           ; $5ffa: $05
	ld   c, [hl]                                     ; $5ffb: $4e
	ld   a, c                                        ; $5ffc: $79
	inc  bc                                          ; $5ffd: $03
	inc  sp                                          ; $5ffe: $33
	ld   [hl], d                                     ; $5fff: $72
	ld   a, h                                        ; $6000: $7c
	dec  c                                           ; $6001: $0d
	cp   d                                           ; $6002: $ba
	and  l                                           ; $6003: $a5
	call nz, Call_054_6bc2                           ; $6004: $c4 $c2 $6b
	ld   d, h                                        ; $6007: $54
	ld   h, e                                        ; $6008: $63
	ld   e, d                                        ; $6009: $5a
	ld   d, b                                        ; $600a: $50
	sbc  c                                           ; $600b: $99
	and  c                                           ; $600c: $a1
	sub  d                                           ; $600d: $92
	sbc  a                                           ; $600e: $9f
	dec  c                                           ; $600f: $0d
	nop                                              ; $6010: $00
	ld   a, [bc]                                     ; $6011: $0a
	ld   bc, $546b                                   ; $6012: $01 $6b $54
	ld   h, e                                        ; $6015: $63
	ld   a, l                                        ; $6016: $7d
	pop  de                                          ; $6017: $d1
	db   $ed                                         ; $6018: $ed
	rst  $10                                         ; $6019: $d7
	ld   a, h                                        ; $601a: $7c
	ld   [bc], a                                     ; $601b: $02
	adc  b                                           ; $601c: $88
	inc  b                                           ; $601d: $04
	ld   l, [hl]                                     ; $601e: $6e
	sub  d                                           ; $601f: $92
	sbc  a                                           ; $6020: $9f
	dec  c                                           ; $6021: $0d
	ld   d, b                                        ; $6022: $50
	ld   e, a                                        ; $6023: $5f
	ld   l, l                                        ; $6024: $6d
	sub  a                                           ; $6025: $97
	sbc  [hl]                                        ; $6026: $9e
	ld   h, l                                        ; $6027: $65
	adc  a                                           ; $6028: $8f
	sbc  c                                           ; $6029: $99
	ld   e, c                                        ; $602a: $59
	sub  a                                           ; $602b: $97
	dec  c                                           ; $602c: $0d
	ld   h, l                                        ; $602d: $65
	ld   [hl], c                                     ; $602e: $71
	ld   e, c                                        ; $602f: $59
	sbc  b                                           ; $6030: $98
	ld   e, b                                        ; $6031: $58
	adc  d                                           ; $6032: $8a
	ld   d, [hl]                                     ; $6033: $56
	ld   [hl], h                                     ; $6034: $74
	sub  d                                           ; $6035: $92
	sbc  a                                           ; $6036: $9f
	dec  c                                           ; $6037: $0d
	nop                                              ; $6038: $00
	ld   a, [bc]                                     ; $6039: $0a
	ld   bc, $688c                                   ; $603a: $01 $8c $68
	sbc  [hl]                                        ; $603d: $9e
	ld   a, [bc]                                     ; $603e: $0a
	ld   [bc], a                                     ; $603f: $02
	inc  bc                                          ; $6040: $03
	ld   bc, $edd1                                   ; $6041: $01 $d1 $ed
	rst  $10                                         ; $6044: $d7
	and  b                                           ; $6045: $a0
	ld   d, b                                        ; $6046: $50
	ld   e, a                                        ; $6047: $5f
	sbc  c                                           ; $6048: $99
	ld   a, [bc]                                     ; $6049: $0a
	inc  bc                                          ; $604a: $03
	sbc  a                                           ; $604b: $9f
	dec  c                                           ; $604c: $0d
	inc  bc                                          ; $604d: $03
	ld   l, b                                        ; $604e: $68
	ld   a, c                                        ; $604f: $79
	sbc  [hl]                                        ; $6050: $9e
	ld   a, [bc]                                     ; $6051: $0a
	ld   [bc], a                                     ; $6052: $02
	inc  bc                                          ; $6053: $03
	ld   a, [bc]                                     ; $6054: $0a
	pop  de                                          ; $6055: $d1
	db   $ed                                         ; $6056: $ed
	rst  $10                                         ; $6057: $d7
	and  b                                           ; $6058: $a0
	ld   d, b                                        ; $6059: $50
	ld   e, a                                        ; $605a: $5f
	sbc  c                                           ; $605b: $99
	ld   a, [bc]                                     ; $605c: $0a
	inc  bc                                          ; $605d: $03
	sbc  a                                           ; $605e: $9f
	dec  c                                           ; $605f: $0d
	inc  bc                                          ; $6060: $03
	ld   l, c                                        ; $6061: $69
	ld   [bc], a                                     ; $6062: $02
	xor  d                                           ; $6063: $aa
	ld   a, c                                        ; $6064: $79
	ld   a, [bc]                                     ; $6065: $0a
	ld   [bc], a                                     ; $6066: $02
	ld   [bc], a                                     ; $6067: $02
	ld   [bc], a                                     ; $6068: $02
	pop  de                                          ; $6069: $d1
	db   $ed                                         ; $606a: $ed
	rst  $10                                         ; $606b: $d7
	and  b                                           ; $606c: $a0
	ld   d, b                                        ; $606d: $50
	ld   e, a                                        ; $606e: $5f
	sbc  c                                           ; $606f: $99
	ld   a, [bc]                                     ; $6070: $0a
	inc  bc                                          ; $6071: $03
	sbc  a                                           ; $6072: $9f
	dec  c                                           ; $6073: $0d
	nop                                              ; $6074: $00
	ld   a, [bc]                                     ; $6075: $0a
	ld   bc, $7889                                   ; $6076: $01 $89 $78
	sbc  [hl]                                        ; $6079: $9e
	ld   d, d                                        ; $607a: $52
	ld   e, l                                        ; $607b: $5d
	ld   [hl], l                                     ; $607c: $75
	sbc  a                                           ; $607d: $9f
	dec  c                                           ; $607e: $0d
	nop                                              ; $607f: $00
	ld   a, [bc]                                     ; $6080: $0a
	add  hl, de                                      ; $6081: $19
	dec  b                                           ; $6082: $05
	inc  bc                                          ; $6083: $03
	inc  bc                                          ; $6084: $03
	ld   bc, $edd1                                   ; $6085: $01 $d1 $ed
	rst  $10                                         ; $6088: $d7
	and  b                                           ; $6089: $a0
	ld   d, b                                        ; $608a: $50
	ld   e, a                                        ; $608b: $5f
	sbc  c                                           ; $608c: $99
	nop                                              ; $608d: $00
	nop                                              ; $608e: $00
	inc  bc                                          ; $608f: $03
	ld   bc, $edd1                                   ; $6090: $01 $d1 $ed
	rst  $10                                         ; $6093: $d7
	and  b                                           ; $6094: $a0
	ld   h, l                                        ; $6095: $65
	adc  a                                           ; $6096: $8f
	sbc  c                                           ; $6097: $99
	nop                                              ; $6098: $00
	ld   bc, $0a03                                   ; $6099: $01 $03 $0a
	pop  de                                          ; $609c: $d1
	db   $ed                                         ; $609d: $ed
	rst  $10                                         ; $609e: $d7
	and  b                                           ; $609f: $a0
	ld   d, b                                        ; $60a0: $50
	ld   e, a                                        ; $60a1: $5f
	sbc  c                                           ; $60a2: $99
	nop                                              ; $60a3: $00
	ld   [bc], a                                     ; $60a4: $02
	rlca                                             ; $60a5: $07
	ld   b, b                                        ; $60a6: $40
	inc  bc                                          ; $60a7: $03
	ld   [bc], a                                     ; $60a8: $02
	inc  bc                                          ; $60a9: $03
	ld   bc, $2000                                   ; $60aa: $01 $00 $20
	nop                                              ; $60ad: $00
	rlca                                             ; $60ae: $07
	ld   e, c                                        ; $60af: $59
	inc  bc                                          ; $60b0: $03
	ld   [bc], a                                     ; $60b1: $02
	inc  bc                                          ; $60b2: $03
	ld   bc, $2001                                   ; $60b3: $01 $01 $20
	nop                                              ; $60b6: $00
	rlca                                             ; $60b7: $07
	ld   e, c                                        ; $60b8: $59
	inc  bc                                          ; $60b9: $03
	ld   [bc], a                                     ; $60ba: $02
	inc  bc                                          ; $60bb: $03
	ld   bc, $2002                                   ; $60bc: $01 $02 $20
	nop                                              ; $60bf: $00
	ld   b, $c0                                      ; $60c0: $06 $c0
	inc  bc                                          ; $60c2: $03
	inc  e                                           ; $60c3: $1c
	dec  b                                           ; $60c4: $05
	ld   bc, $0101                                   ; $60c5: $01 $01 $01
	sub  [hl]                                        ; $60c8: $96
	ld   [hl], c                                     ; $60c9: $71
	ld   h, l                                        ; $60ca: $65
	sub  c                                           ; $60cb: $91
	sbc  a                                           ; $60cc: $9f
	ld   l, e                                        ; $60cd: $6b
	ld   a, h                                        ; $60ce: $7c
	inc  bc                                          ; $60cf: $03
	cp   $03                                         ; $60d0: $fe $03
	add  [hl]                                        ; $60d2: $86
	sub  d                                           ; $60d3: $92
	ld   [hl], l                                     ; $60d4: $75
	ld   a, [$000d]                                  ; $60d5: $fa $0d $00
	ld   a, [bc]                                     ; $60d8: $0a
	ld   b, $03                                      ; $60d9: $06 $03
	inc  b                                           ; $60db: $04
	inc  e                                           ; $60dc: $1c
	dec  b                                           ; $60dd: $05
	rlca                                             ; $60de: $07
	rlca                                             ; $60df: $07
	ld   bc, $aca3                                   ; $60e0: $01 $a3 $ac
	push af                                          ; $60e3: $f5
	sbc  [hl]                                        ; $60e4: $9e
	and  e                                           ; $60e5: $a3
	xor  h                                           ; $60e6: $ac
	push af                                          ; $60e7: $f5
	sbc  a                                           ; $60e8: $9f
	dec  c                                           ; $60e9: $0d
	nop                                              ; $60ea: $00
	dec  b                                           ; $60eb: $05
	ld   b, b                                        ; $60ec: $40
	rst  $38                                         ; $60ed: $ff
	inc  bc                                          ; $60ee: $03
	rst  $38                                         ; $60ef: $ff
	ld   bc, $2801                                   ; $60f0: $01 $01 $28
	nop                                              ; $60f3: $00
	ld   bc, $6f8c                                   ; $60f4: $01 $8c $6f
	ld   e, d                                        ; $60f7: $5a
	ld   d, [hl]                                     ; $60f8: $56
	ld   [hl], h                                     ; $60f9: $74
	sbc  c                                           ; $60fa: $99
	ld   e, d                                        ; $60fb: $5a
	ld   a, b                                        ; $60fc: $78
	sbc  a                                           ; $60fd: $9f
	dec  c                                           ; $60fe: $0d
	sub  b                                           ; $60ff: $90
	ld   d, h                                        ; $6100: $54
	ld   [bc], a                                     ; $6101: $02
	jr   nz, jr_054_6106                             ; $6102: $20 $02

	sub  e                                           ; $6104: $93
	ld   a, l                                        ; $6105: $7d

jr_054_6106:
	ld   h, [hl]                                     ; $6106: $66
	adc  a                                           ; $6107: $8f
	ld   e, c                                        ; $6108: $59
	sub  a                                           ; $6109: $97
	sub  d                                           ; $610a: $92
	sbc  a                                           ; $610b: $9f
	dec  c                                           ; $610c: $0d
	nop                                              ; $610d: $00
	ld   a, [bc]                                     ; $610e: $0a
	ld   bc, $5656                                   ; $610f: $01 $56 $56
	ld   e, c                                        ; $6112: $59
	sbc  [hl]                                        ; $6113: $9e
	ld   a, [bc]                                     ; $6114: $0a
	ld   [bc], a                                     ; $6115: $02
	inc  bc                                          ; $6116: $03
	ld   bc, $0310                                   ; $6117: $01 $10 $03
	ld   a, [bc]                                     ; $611a: $0a
	db   $10                                         ; $611b: $10
	ld   [bc], a                                     ; $611c: $02
	ld   [bc], a                                     ; $611d: $02
	ld   a, [bc]                                     ; $611e: $0a
	inc  bc                                          ; $611f: $03
	ld   a, h                                        ; $6120: $7c
	ld   [bc], a                                     ; $6121: $02
	ld   a, [$7904]                                  ; $6122: $fa $04 $79
	ld   [hl], l                                     ; $6125: $75
	dec  c                                           ; $6126: $0d
	pop  de                                          ; $6127: $d1
	db   $ed                                         ; $6128: $ed
	rst  $10                                         ; $6129: $d7
	and  b                                           ; $612a: $a0
	ld   d, b                                        ; $612b: $50
	ld   e, a                                        ; $612c: $5f
	ld   [hl], h                                     ; $612d: $74
	ld   d, d                                        ; $612e: $52
	ld   e, l                                        ; $612f: $5d
	and  c                                           ; $6130: $a1
	sub  d                                           ; $6131: $92
	sbc  a                                           ; $6132: $9f
	dec  c                                           ; $6133: $0d
	ld   h, l                                        ; $6134: $65
	ld   [hl], c                                     ; $6135: $71
	ld   e, c                                        ; $6136: $59
	sbc  b                                           ; $6137: $98
	ld   l, l                                        ; $6138: $6d
	ld   a, h                                        ; $6139: $7c
	adc  [hl]                                        ; $613a: $8e
	ld   [hl], l                                     ; $613b: $75
	sbc  a                                           ; $613c: $9f
	dec  c                                           ; $613d: $0d
	nop                                              ; $613e: $00
	ld   a, [bc]                                     ; $613f: $0a
	ld   b, $fe                                      ; $6140: $06 $fe
	ld   [bc], a                                     ; $6142: $02
	inc  e                                           ; $6143: $1c
	dec  b                                           ; $6144: $05
	rlca                                             ; $6145: $07
	rlca                                             ; $6146: $07
	dec  e                                           ; $6147: $1d
	ld   b, b                                        ; $6148: $40
	dec  d                                           ; $6149: $15
	inc  bc                                          ; $614a: $03
	dec  d                                           ; $614b: $15
	ld   bc, $2901                                   ; $614c: $01 $01 $29
	nop                                              ; $614f: $00
	ld   bc, $b2dd                                   ; $6150: $01 $dd $b2
	ei                                               ; $6153: $fb
	ld   [hl], c                                     ; $6154: $71
	halt                                             ; $6155: $76
	ld   h, l                                        ; $6156: $65
	ld   [hl], h                                     ; $6157: $74
	and  c                                           ; $6158: $a1
	halt                                             ; $6159: $76
	sbc  [hl]                                        ; $615a: $9e
	dec  c                                           ; $615b: $0d
	nop                                              ; $615c: $00
	dec  b                                           ; $615d: $05
	ld   b, b                                        ; $615e: $40
	rst  $38                                         ; $615f: $ff
	inc  bc                                          ; $6160: $03
	rst  $38                                         ; $6161: $ff
	ld   bc, $2801                                   ; $6162: $01 $01 $28
	nop                                              ; $6165: $00
	ld   bc, $916f                                   ; $6166: $01 $6f $91
	ld   [hl], c                                     ; $6169: $71
	ld   l, a                                        ; $616a: $6f
	sub  c                                           ; $616b: $91
	halt                                             ; $616c: $76
	sub  d                                           ; $616d: $92
	ld   [hl], c                                     ; $616e: $71
	ld   [hl], h                                     ; $616f: $74
	sub  d                                           ; $6170: $92
	sbc  a                                           ; $6171: $9f
	dec  c                                           ; $6172: $0d
	sub  b                                           ; $6173: $90
	ld   d, h                                        ; $6174: $54
	ld   [bc], a                                     ; $6175: $02
	jr   nz, jr_054_617a                             ; $6176: $20 $02

	sub  e                                           ; $6178: $93
	ld   a, l                                        ; $6179: $7d

jr_054_617a:
	ld   h, [hl]                                     ; $617a: $66
	adc  a                                           ; $617b: $8f
	ld   e, c                                        ; $617c: $59
	sub  a                                           ; $617d: $97
	sub  d                                           ; $617e: $92
	sbc  a                                           ; $617f: $9f
	dec  c                                           ; $6180: $0d
	nop                                              ; $6181: $00
	ld   a, [bc]                                     ; $6182: $0a
	ld   b, $8c                                      ; $6183: $06 $8c
	inc  bc                                          ; $6185: $03
	add  hl, de                                      ; $6186: $19
	dec  b                                           ; $6187: $05
	inc  bc                                          ; $6188: $03
	inc  bc                                          ; $6189: $03
	ld   a, [bc]                                     ; $618a: $0a
	pop  de                                          ; $618b: $d1
	db   $ed                                         ; $618c: $ed
	rst  $10                                         ; $618d: $d7
	and  b                                           ; $618e: $a0
	ld   d, b                                        ; $618f: $50
	ld   e, a                                        ; $6190: $5f
	sbc  c                                           ; $6191: $99
	nop                                              ; $6192: $00
	nop                                              ; $6193: $00
	ld   [bc], a                                     ; $6194: $02
	ld   [bc], a                                     ; $6195: $02
	pop  de                                          ; $6196: $d1
	db   $ed                                         ; $6197: $ed
	rst  $10                                         ; $6198: $d7
	and  b                                           ; $6199: $a0
	ld   h, l                                        ; $619a: $65
	adc  a                                           ; $619b: $8f
	sbc  c                                           ; $619c: $99
	nop                                              ; $619d: $00
	ld   bc, $0a03                                   ; $619e: $01 $03 $0a
	pop  de                                          ; $61a1: $d1
	db   $ed                                         ; $61a2: $ed
	rst  $10                                         ; $61a3: $d7
	and  b                                           ; $61a4: $a0
	ld   h, l                                        ; $61a5: $65
	adc  a                                           ; $61a6: $8f
	sbc  c                                           ; $61a7: $99
	nop                                              ; $61a8: $00
	ld   [bc], a                                     ; $61a9: $02
	rlca                                             ; $61aa: $07
	ld   b, l                                        ; $61ab: $45
	inc  b                                           ; $61ac: $04
	ld   [bc], a                                     ; $61ad: $02
	inc  bc                                          ; $61ae: $03
	ld   bc, $2000                                   ; $61af: $01 $00 $20
	nop                                              ; $61b2: $00
	rlca                                             ; $61b3: $07
	ld   e, c                                        ; $61b4: $59
	inc  bc                                          ; $61b5: $03
	ld   [bc], a                                     ; $61b6: $02
	inc  bc                                          ; $61b7: $03
	ld   bc, $2001                                   ; $61b8: $01 $01 $20
	nop                                              ; $61bb: $00
	rlca                                             ; $61bc: $07
	ld   e, c                                        ; $61bd: $59
	inc  bc                                          ; $61be: $03
	ld   [bc], a                                     ; $61bf: $02
	inc  bc                                          ; $61c0: $03
	ld   bc, $2002                                   ; $61c1: $01 $02 $20
	nop                                              ; $61c4: $00
	ld   b, $c0                                      ; $61c5: $06 $c0
	inc  bc                                          ; $61c7: $03
	inc  e                                           ; $61c8: $1c
	dec  b                                           ; $61c9: $05
	ld   bc, $0101                                   ; $61ca: $01 $01 $01
	sub  [hl]                                        ; $61cd: $96
	ld   [hl], c                                     ; $61ce: $71
	ld   h, l                                        ; $61cf: $65
	sub  c                                           ; $61d0: $91
	sbc  a                                           ; $61d1: $9f
	ld   l, e                                        ; $61d2: $6b
	ld   a, h                                        ; $61d3: $7c
	inc  bc                                          ; $61d4: $03
	cp   $03                                         ; $61d5: $fe $03
	add  [hl]                                        ; $61d7: $86
	sub  d                                           ; $61d8: $92
	ld   [hl], l                                     ; $61d9: $75
	ld   a, [$000d]                                  ; $61da: $fa $0d $00
	ld   a, [bc]                                     ; $61dd: $0a
	ld   b, $5e                                      ; $61de: $06 $5e
	inc  b                                           ; $61e0: $04
	add  hl, de                                      ; $61e1: $19
	dec  b                                           ; $61e2: $05
	inc  bc                                          ; $61e3: $03
	ld   [bc], a                                     ; $61e4: $02
	ld   [bc], a                                     ; $61e5: $02
	pop  de                                          ; $61e6: $d1
	db   $ed                                         ; $61e7: $ed
	rst  $10                                         ; $61e8: $d7
	and  b                                           ; $61e9: $a0
	ld   d, b                                        ; $61ea: $50
	ld   e, a                                        ; $61eb: $5f
	sbc  c                                           ; $61ec: $99
	nop                                              ; $61ed: $00
	nop                                              ; $61ee: $00
	ld   [bc], a                                     ; $61ef: $02
	ld   [bc], a                                     ; $61f0: $02
	pop  de                                          ; $61f1: $d1
	db   $ed                                         ; $61f2: $ed
	rst  $10                                         ; $61f3: $d7
	and  b                                           ; $61f4: $a0
	ld   h, l                                        ; $61f5: $65
	adc  a                                           ; $61f6: $8f
	sbc  c                                           ; $61f7: $99
	nop                                              ; $61f8: $00
	ld   bc, $0103                                   ; $61f9: $01 $03 $01
	pop  de                                          ; $61fc: $d1
	db   $ed                                         ; $61fd: $ed
	rst  $10                                         ; $61fe: $d7
	and  b                                           ; $61ff: $a0
	ld   d, b                                        ; $6200: $50
	ld   e, a                                        ; $6201: $5f
	sbc  c                                           ; $6202: $99
	nop                                              ; $6203: $00
	ld   [bc], a                                     ; $6204: $02
	rlca                                             ; $6205: $07
	and  b                                           ; $6206: $a0
	inc  b                                           ; $6207: $04
	ld   [bc], a                                     ; $6208: $02
	inc  bc                                          ; $6209: $03
	ld   bc, $2000                                   ; $620a: $01 $00 $20
	nop                                              ; $620d: $00
	rlca                                             ; $620e: $07
	ld   e, c                                        ; $620f: $59
	inc  bc                                          ; $6210: $03
	ld   [bc], a                                     ; $6211: $02
	inc  bc                                          ; $6212: $03
	ld   bc, $2001                                   ; $6213: $01 $01 $20
	nop                                              ; $6216: $00
	rlca                                             ; $6217: $07
	ld   e, c                                        ; $6218: $59
	inc  bc                                          ; $6219: $03
	ld   [bc], a                                     ; $621a: $02
	inc  bc                                          ; $621b: $03
	ld   bc, $2002                                   ; $621c: $01 $02 $20
	nop                                              ; $621f: $00
	ld   b, $c0                                      ; $6220: $06 $c0
	inc  bc                                          ; $6222: $03
	inc  e                                           ; $6223: $1c
	dec  b                                           ; $6224: $05
	ld   bc, $0101                                   ; $6225: $01 $01 $01
	sub  [hl]                                        ; $6228: $96
	ld   [hl], c                                     ; $6229: $71
	ld   h, l                                        ; $622a: $65
	sub  c                                           ; $622b: $91
	sbc  a                                           ; $622c: $9f
	xor  e                                           ; $622d: $ab
	call nz, $fbb2                                   ; $622e: $c4 $b2 $fb
	sub  d                                           ; $6231: $92
	ld   a, [$000d]                                  ; $6232: $fa $0d $00
	ld   a, [bc]                                     ; $6235: $0a
	ld   bc, $6596                                   ; $6236: $01 $96 $65
	sbc  [hl]                                        ; $6239: $9e
	ld   [bc], a                                     ; $623a: $02
	and  l                                           ; $623b: $a5
	inc  b                                           ; $623c: $04
	add  hl, hl                                      ; $623d: $29
	ld   a, l                                        ; $623e: $7d
	ld   [bc], a                                     ; $623f: $02
	and  l                                           ; $6240: $a5
	ld   a, h                                        ; $6241: $7c
	ld   [bc], a                                     ; $6242: $02
	ld   a, [hl-]                                    ; $6243: $3a
	ld   [bc], a                                     ; $6244: $02
	ld   a, [$0d75]                                  ; $6245: $fa $75 $0d
	ld   a, [bc]                                     ; $6248: $0a
	ld   [bc], a                                     ; $6249: $02
	ld   h, l                                        ; $624a: $65
	adc  a                                           ; $624b: $8f
	ld   [hl], h                                     ; $624c: $74
	ld   a, [bc]                                     ; $624d: $0a
	inc  bc                                          ; $624e: $03
	ld   d, d                                        ; $624f: $52
	ld   [hl], c                                     ; $6250: $71
	ld   [hl], h                                     ; $6251: $74
	ld   a, b                                        ; $6252: $78
	sbc  a                                           ; $6253: $9f
	dec  c                                           ; $6254: $0d
	ld   [bc], a                                     ; $6255: $02
	ld   a, [$7904]                                  ; $6256: $fa $04 $79
	ld   a, l                                        ; $6259: $7d
	ld   e, b                                        ; $625a: $58
	adc  d                                           ; $625b: $8a
	ld   d, [hl]                                     ; $625c: $56
	ld   [hl], h                                     ; $625d: $74
	sbc  c                                           ; $625e: $99
	sub  d                                           ; $625f: $92
	sbc  e                                           ; $6260: $9b
	sbc  a                                           ; $6261: $9f
	dec  c                                           ; $6262: $0d
	nop                                              ; $6263: $00
	ld   a, [bc]                                     ; $6264: $0a
	ld   bc, $7889                                   ; $6265: $01 $89 $78
	sbc  [hl]                                        ; $6268: $9e
	ld   d, d                                        ; $6269: $52
	ld   e, l                                        ; $626a: $5d
	ld   [hl], l                                     ; $626b: $75
	sbc  a                                           ; $626c: $9f
	dec  c                                           ; $626d: $0d
	nop                                              ; $626e: $00
	ld   a, [bc]                                     ; $626f: $0a
	add  hl, de                                      ; $6270: $19
	dec  b                                           ; $6271: $05
	inc  bc                                          ; $6272: $03
	ld   [bc], a                                     ; $6273: $02
	ld   [bc], a                                     ; $6274: $02
	pop  de                                          ; $6275: $d1
	db   $ed                                         ; $6276: $ed
	rst  $10                                         ; $6277: $d7
	and  b                                           ; $6278: $a0
	ld   h, l                                        ; $6279: $65
	adc  a                                           ; $627a: $8f
	sbc  c                                           ; $627b: $99
	nop                                              ; $627c: $00
	nop                                              ; $627d: $00
	inc  bc                                          ; $627e: $03
	ld   bc, $edd1                                   ; $627f: $01 $d1 $ed
	rst  $10                                         ; $6282: $d7
	and  b                                           ; $6283: $a0
	ld   h, l                                        ; $6284: $65
	adc  a                                           ; $6285: $8f
	sbc  c                                           ; $6286: $99
	nop                                              ; $6287: $00
	ld   bc, $0a03                                   ; $6288: $01 $03 $0a
	pop  de                                          ; $628b: $d1
	db   $ed                                         ; $628c: $ed
	rst  $10                                         ; $628d: $d7
	and  b                                           ; $628e: $a0
	ld   d, b                                        ; $628f: $50
	ld   e, a                                        ; $6290: $5f
	sbc  c                                           ; $6291: $99
	nop                                              ; $6292: $00
	ld   [bc], a                                     ; $6293: $02
	rlca                                             ; $6294: $07
	cpl                                              ; $6295: $2f
	dec  b                                           ; $6296: $05
	ld   [bc], a                                     ; $6297: $02
	inc  bc                                          ; $6298: $03
	ld   bc, $2000                                   ; $6299: $01 $00 $20
	nop                                              ; $629c: $00
	rlca                                             ; $629d: $07
	ld   c, d                                        ; $629e: $4a
	dec  b                                           ; $629f: $05
	ld   [bc], a                                     ; $62a0: $02
	inc  bc                                          ; $62a1: $03
	ld   bc, $2001                                   ; $62a2: $01 $01 $20
	nop                                              ; $62a5: $00
	rlca                                             ; $62a6: $07
	ld   c, d                                        ; $62a7: $4a
	dec  b                                           ; $62a8: $05
	ld   [bc], a                                     ; $62a9: $02
	inc  bc                                          ; $62aa: $03
	ld   bc, $2002                                   ; $62ab: $01 $02 $20
	nop                                              ; $62ae: $00
	ld   b, $b0                                      ; $62af: $06 $b0
	dec  b                                           ; $62b1: $05
	inc  e                                           ; $62b2: $1c
	dec  b                                           ; $62b3: $05
	ld   bc, $0101                                   ; $62b4: $01 $01 $01
	sub  [hl]                                        ; $62b7: $96
	ld   [hl], c                                     ; $62b8: $71
	ld   h, l                                        ; $62b9: $65
	sub  c                                           ; $62ba: $91
	sbc  [hl]                                        ; $62bb: $9e
	sub  [hl]                                        ; $62bc: $96
	ld   [hl], c                                     ; $62bd: $71
	ld   h, l                                        ; $62be: $65
	sub  c                                           ; $62bf: $91
	sbc  a                                           ; $62c0: $9f
	dec  c                                           ; $62c1: $0d
	xor  c                                           ; $62c2: $a9
	xor  c                                           ; $62c3: $a9
	ld   [hl], l                                     ; $62c4: $75
	db   $fc                                         ; $62c5: $fc
	sbc  a                                           ; $62c6: $9f
	dec  c                                           ; $62c7: $0d
	nop                                              ; $62c8: $00
	ld   a, [bc]                                     ; $62c9: $0a
	ld   b, $f3                                      ; $62ca: $06 $f3
	dec  b                                           ; $62cc: $05
	inc  e                                           ; $62cd: $1c
	dec  b                                           ; $62ce: $05
	rlca                                             ; $62cf: $07
	rlca                                             ; $62d0: $07
	ld   bc, $aca3                                   ; $62d1: $01 $a3 $ac
	push af                                          ; $62d4: $f5
	ld   e, d                                        ; $62d5: $5a
	ld   a, b                                        ; $62d6: $78
	db   $fc                                         ; $62d7: $fc
	sbc  a                                           ; $62d8: $9f
	dec  c                                           ; $62d9: $0d
	nop                                              ; $62da: $00
	dec  b                                           ; $62db: $05
	ld   b, b                                        ; $62dc: $40
	rst  $38                                         ; $62dd: $ff
	inc  bc                                          ; $62de: $03
	rst  $38                                         ; $62df: $ff
	ld   bc, $2801                                   ; $62e0: $01 $01 $28
	nop                                              ; $62e3: $00
	ld   bc, $6f8c                                   ; $62e4: $01 $8c $6f
	ld   e, d                                        ; $62e7: $5a
	ld   d, [hl]                                     ; $62e8: $56
	ld   [hl], h                                     ; $62e9: $74
	sbc  c                                           ; $62ea: $99
	sub  d                                           ; $62eb: $92
	and  c                                           ; $62ec: $a1
	sbc  a                                           ; $62ed: $9f
	dec  c                                           ; $62ee: $0d
	sub  b                                           ; $62ef: $90
	ld   d, h                                        ; $62f0: $54
	ld   [bc], a                                     ; $62f1: $02
	jr   nz, jr_054_62f6                             ; $62f2: $20 $02

	sub  e                                           ; $62f4: $93
	ld   a, l                                        ; $62f5: $7d

jr_054_62f6:
	ld   h, [hl]                                     ; $62f6: $66
	adc  a                                           ; $62f7: $8f
	ld   e, c                                        ; $62f8: $59
	sub  a                                           ; $62f9: $97
	sub  d                                           ; $62fa: $92
	sbc  a                                           ; $62fb: $9f
	dec  c                                           ; $62fc: $0d
	nop                                              ; $62fd: $00
	ld   a, [bc]                                     ; $62fe: $0a
	ld   bc, $5656                                   ; $62ff: $01 $56 $56
	ld   e, c                                        ; $6302: $59
	sbc  [hl]                                        ; $6303: $9e
	ld   a, [bc]                                     ; $6304: $0a
	ld   [bc], a                                     ; $6305: $02
	ld   [bc], a                                     ; $6306: $02
	ld   [bc], a                                     ; $6307: $02
	db   $10                                         ; $6308: $10
	inc  bc                                          ; $6309: $03
	ld   a, [bc]                                     ; $630a: $0a
	db   $10                                         ; $630b: $10
	inc  bc                                          ; $630c: $03
	ld   bc, $030a                                   ; $630d: $01 $0a $03
	ld   a, h                                        ; $6310: $7c
	ld   [bc], a                                     ; $6311: $02
	ld   a, [$7904]                                  ; $6312: $fa $04 $79
	ld   [hl], l                                     ; $6315: $75
	dec  c                                           ; $6316: $0d
	pop  de                                          ; $6317: $d1
	db   $ed                                         ; $6318: $ed
	rst  $10                                         ; $6319: $d7
	and  b                                           ; $631a: $a0
	ld   h, l                                        ; $631b: $65
	adc  a                                           ; $631c: $8f
	ld   [hl], h                                     ; $631d: $74
	ld   d, d                                        ; $631e: $52
	ld   e, l                                        ; $631f: $5d
	and  c                                           ; $6320: $a1
	sub  d                                           ; $6321: $92
	sbc  a                                           ; $6322: $9f
	dec  c                                           ; $6323: $0d
	ld   h, l                                        ; $6324: $65
	ld   [hl], c                                     ; $6325: $71
	ld   e, c                                        ; $6326: $59
	sbc  b                                           ; $6327: $98
	ld   l, l                                        ; $6328: $6d
	ld   a, h                                        ; $6329: $7c
	adc  [hl]                                        ; $632a: $8e
	ld   [hl], l                                     ; $632b: $75
	sbc  a                                           ; $632c: $9f
	dec  c                                           ; $632d: $0d
	nop                                              ; $632e: $00
	ld   a, [bc]                                     ; $632f: $0a
	ld   b, $ed                                      ; $6330: $06 $ed
	inc  b                                           ; $6332: $04
	inc  e                                           ; $6333: $1c
	dec  b                                           ; $6334: $05
	rlca                                             ; $6335: $07
	rlca                                             ; $6336: $07
	dec  e                                           ; $6337: $1d
	ld   b, b                                        ; $6338: $40
	dec  d                                           ; $6339: $15
	inc  bc                                          ; $633a: $03
	dec  d                                           ; $633b: $15
	ld   bc, $2901                                   ; $633c: $01 $01 $29
	nop                                              ; $633f: $00
	ld   bc, $9789                                   ; $6340: $01 $89 $97
	adc  c                                           ; $6343: $89
	sub  a                                           ; $6344: $97
	sbc  [hl]                                        ; $6345: $9e
	db   $dd                                         ; $6346: $dd
	ei                                               ; $6347: $fb
	ld   [hl], c                                     ; $6348: $71
	halt                                             ; $6349: $76
	ld   l, c                                        ; $634a: $69
	and  c                                           ; $634b: $a1
	halt                                             ; $634c: $76
	dec  c                                           ; $634d: $0d
	nop                                              ; $634e: $00
	dec  b                                           ; $634f: $05
	ld   b, b                                        ; $6350: $40
	rst  $38                                         ; $6351: $ff
	inc  bc                                          ; $6352: $03
	rst  $38                                         ; $6353: $ff
	ld   bc, $2801                                   ; $6354: $01 $01 $28
	nop                                              ; $6357: $00
	ld   bc, $916f                                   ; $6358: $01 $6f $91
	ld   [hl], c                                     ; $635b: $71
	ld   l, a                                        ; $635c: $6f
	sub  c                                           ; $635d: $91
	halt                                             ; $635e: $76
	sub  d                                           ; $635f: $92
	sbc  c                                           ; $6360: $99
	sbc  a                                           ; $6361: $9f
	dec  c                                           ; $6362: $0d
	sub  b                                           ; $6363: $90
	ld   d, h                                        ; $6364: $54
	ld   [bc], a                                     ; $6365: $02
	jr   nz, jr_054_636a                             ; $6366: $20 $02

	sub  e                                           ; $6368: $93
	ld   a, l                                        ; $6369: $7d

jr_054_636a:
	ld   h, [hl]                                     ; $636a: $66
	adc  a                                           ; $636b: $8f
	ld   e, c                                        ; $636c: $59
	sub  a                                           ; $636d: $97
	sub  d                                           ; $636e: $92
	sbc  a                                           ; $636f: $9f
	dec  c                                           ; $6370: $0d
	nop                                              ; $6371: $00
	ld   a, [bc]                                     ; $6372: $0a
	ld   b, $7c                                      ; $6373: $06 $7c
	dec  b                                           ; $6375: $05
	add  hl, de                                      ; $6376: $19
	dec  b                                           ; $6377: $05
	inc  bc                                          ; $6378: $03
	inc  bc                                          ; $6379: $03
	ld   a, [bc]                                     ; $637a: $0a
	pop  de                                          ; $637b: $d1
	db   $ed                                         ; $637c: $ed
	rst  $10                                         ; $637d: $d7
	and  b                                           ; $637e: $a0
	ld   h, l                                        ; $637f: $65
	adc  a                                           ; $6380: $8f
	sbc  c                                           ; $6381: $99
	nop                                              ; $6382: $00
	nop                                              ; $6383: $00
	ld   [bc], a                                     ; $6384: $02
	ld   [bc], a                                     ; $6385: $02
	pop  de                                          ; $6386: $d1
	db   $ed                                         ; $6387: $ed
	rst  $10                                         ; $6388: $d7
	and  b                                           ; $6389: $a0
	ld   h, l                                        ; $638a: $65
	adc  a                                           ; $638b: $8f
	sbc  c                                           ; $638c: $99
	nop                                              ; $638d: $00
	ld   bc, $0103                                   ; $638e: $01 $03 $01
	pop  de                                          ; $6391: $d1
	db   $ed                                         ; $6392: $ed
	rst  $10                                         ; $6393: $d7
	and  b                                           ; $6394: $a0
	ld   h, l                                        ; $6395: $65
	adc  a                                           ; $6396: $8f
	sbc  c                                           ; $6397: $99
	nop                                              ; $6398: $00
	ld   [bc], a                                     ; $6399: $02
	rlca                                             ; $639a: $07
	dec  [hl]                                        ; $639b: $35
	ld   b, $02                                      ; $639c: $06 $02
	inc  bc                                          ; $639e: $03
	ld   bc, $2000                                   ; $639f: $01 $00 $20
	nop                                              ; $63a2: $00
	rlca                                             ; $63a3: $07
	ld   c, d                                        ; $63a4: $4a
	dec  b                                           ; $63a5: $05
	ld   [bc], a                                     ; $63a6: $02
	inc  bc                                          ; $63a7: $03
	ld   bc, $2001                                   ; $63a8: $01 $01 $20
	nop                                              ; $63ab: $00
	rlca                                             ; $63ac: $07
	ld   c, d                                        ; $63ad: $4a
	dec  b                                           ; $63ae: $05
	ld   [bc], a                                     ; $63af: $02
	inc  bc                                          ; $63b0: $03
	ld   bc, $2002                                   ; $63b1: $01 $02 $20
	nop                                              ; $63b4: $00
	ld   b, $b0                                      ; $63b5: $06 $b0
	dec  b                                           ; $63b7: $05
	inc  e                                           ; $63b8: $1c
	dec  b                                           ; $63b9: $05
	ld   bc, $0101                                   ; $63ba: $01 $01 $01
	ld   d, h                                        ; $63bd: $54
	adc  h                                           ; $63be: $8c
	ld   d, d                                        ; $63bf: $52
	sbc  [hl]                                        ; $63c0: $9e
	ld   d, h                                        ; $63c1: $54
	adc  h                                           ; $63c2: $8c
	ld   d, d                                        ; $63c3: $52
	sbc  a                                           ; $63c4: $9f
	dec  c                                           ; $63c5: $0d
	xor  c                                           ; $63c6: $a9
	xor  c                                           ; $63c7: $a9
	ld   [bc], a                                     ; $63c8: $02
	scf                                              ; $63c9: $37
	ld   h, [hl]                                     ; $63ca: $66
	sub  d                                           ; $63cb: $92
	ld   [hl], l                                     ; $63cc: $75
	sbc  a                                           ; $63cd: $9f
	dec  c                                           ; $63ce: $0d
	nop                                              ; $63cf: $00
	ld   a, [bc]                                     ; $63d0: $0a
	ld   b, $51                                      ; $63d1: $06 $51
	ld   b, $19                                      ; $63d3: $06 $19
	dec  b                                           ; $63d5: $05
	inc  bc                                          ; $63d6: $03
	inc  bc                                          ; $63d7: $03
	ld   bc, $edd1                                   ; $63d8: $01 $d1 $ed
	rst  $10                                         ; $63db: $d7
	and  b                                           ; $63dc: $a0
	ld   h, l                                        ; $63dd: $65
	adc  a                                           ; $63de: $8f
	sbc  c                                           ; $63df: $99
	nop                                              ; $63e0: $00
	nop                                              ; $63e1: $00
	ld   [bc], a                                     ; $63e2: $02
	ld   [bc], a                                     ; $63e3: $02
	pop  de                                          ; $63e4: $d1
	db   $ed                                         ; $63e5: $ed
	rst  $10                                         ; $63e6: $d7
	and  b                                           ; $63e7: $a0
	ld   h, l                                        ; $63e8: $65
	adc  a                                           ; $63e9: $8f
	sbc  c                                           ; $63ea: $99
	nop                                              ; $63eb: $00
	ld   bc, $0103                                   ; $63ec: $01 $03 $01
	pop  de                                          ; $63ef: $d1
	db   $ed                                         ; $63f0: $ed
	rst  $10                                         ; $63f1: $d7
	and  b                                           ; $63f2: $a0
	ld   d, b                                        ; $63f3: $50
	ld   e, a                                        ; $63f4: $5f
	sbc  c                                           ; $63f5: $99
	nop                                              ; $63f6: $00
	ld   [bc], a                                     ; $63f7: $02
	rlca                                             ; $63f8: $07
	sub  e                                           ; $63f9: $93
	ld   b, $02                                      ; $63fa: $06 $02
	inc  bc                                          ; $63fc: $03
	ld   bc, $2000                                   ; $63fd: $01 $00 $20
	nop                                              ; $6400: $00
	rlca                                             ; $6401: $07
	ld   c, d                                        ; $6402: $4a
	dec  b                                           ; $6403: $05
	ld   [bc], a                                     ; $6404: $02
	inc  bc                                          ; $6405: $03
	ld   bc, $2001                                   ; $6406: $01 $01 $20
	nop                                              ; $6409: $00
	rlca                                             ; $640a: $07
	ld   c, d                                        ; $640b: $4a
	dec  b                                           ; $640c: $05
	ld   [bc], a                                     ; $640d: $02
	inc  bc                                          ; $640e: $03
	ld   bc, $2002                                   ; $640f: $01 $02 $20
	nop                                              ; $6412: $00
	ld   b, $b0                                      ; $6413: $06 $b0
	dec  b                                           ; $6415: $05
	inc  e                                           ; $6416: $1c
	dec  b                                           ; $6417: $05
	ld   bc, $0101                                   ; $6418: $01 $01 $01
	sub  [hl]                                        ; $641b: $96
	ld   [hl], c                                     ; $641c: $71
	ld   h, l                                        ; $641d: $65
	sub  c                                           ; $641e: $91
	sbc  a                                           ; $641f: $9f
	xor  e                                           ; $6420: $ab
	call nz, $fbb2                                   ; $6421: $c4 $b2 $fb
	sub  d                                           ; $6424: $92
	ld   a, [$000d]                                  ; $6425: $fa $0d $00
	ld   a, [bc]                                     ; $6428: $0a
	rlca                                             ; $6429: $07
	ldh  a, [rTMA]                                   ; $642a: $f0 $06
	inc  bc                                          ; $642c: $03
	rst  $38                                         ; $642d: $ff
	ld   bc, $2501                                   ; $642e: $01 $01 $25
	nop                                              ; $6431: $00
	inc  e                                           ; $6432: $1c
	dec  b                                           ; $6433: $05
	ld   bc, $1d01                                   ; $6434: $01 $01 $1d
	ld   b, b                                        ; $6437: $40
	dec  d                                           ; $6438: $15
	inc  bc                                          ; $6439: $03
	dec  d                                           ; $643a: $15
	ld   bc, $2803                                   ; $643b: $01 $03 $28
	nop                                              ; $643e: $00
	ld   bc, $6267                                   ; $643f: $01 $67 $62
	ld   d, d                                        ; $6442: $52
	ld   a, b                                        ; $6443: $78
	sbc  a                                           ; $6444: $9f
	ld   [$7d00], sp                                 ; $6445: $08 $00 $7d
	and  c                                           ; $6448: $a1
	sbc  a                                           ; $6449: $9f
	dec  c                                           ; $644a: $0d
	inc  bc                                          ; $644b: $03
	ld   l, e                                        ; $644c: $6b
	dec  b                                           ; $644d: $05
	ld   c, b                                        ; $644e: $48
	ld   d, [hl]                                     ; $644f: $56
	ld   d, [hl]                                     ; $6450: $56
	ld   a, b                                        ; $6451: $78
	ld   c, a                                        ; $6452: $4f
	sbc  a                                           ; $6453: $9f
	ld   [bc], a                                     ; $6454: $02
	sub  l                                           ; $6455: $95
	inc  bc                                          ; $6456: $03
	jp   c, $6d65                                    ; $6457: $da $65 $6d

	sbc  l                                           ; $645a: $9d
	sbc  a                                           ; $645b: $9f
	dec  c                                           ; $645c: $0d
	inc  bc                                          ; $645d: $03
	ld   l, b                                        ; $645e: $68
	sub  b                                           ; $645f: $90
	sbc  [hl]                                        ; $6460: $9e
	ld   l, e                                        ; $6461: $6b
	ld   a, h                                        ; $6462: $7c
	inc  bc                                          ; $6463: $03
	cp   $03                                         ; $6464: $fe $03
	add  [hl]                                        ; $6466: $86
	ld   [hl], l                                     ; $6467: $75
	ld   l, l                                        ; $6468: $6d
	ld   a, h                                        ; $6469: $7c
	adc  [hl]                                        ; $646a: $8e
	ld   [hl], l                                     ; $646b: $75
	sbc  a                                           ; $646c: $9f
	dec  c                                           ; $646d: $0d
	nop                                              ; $646e: $00
	ld   a, [bc]                                     ; $646f: $0a
	ld   b, $1a                                      ; $6470: $06 $1a
	rlca                                             ; $6472: $07
	inc  e                                           ; $6473: $1c
	dec  b                                           ; $6474: $05
	ld   [bc], a                                     ; $6475: $02
	ld   [bc], a                                     ; $6476: $02
	dec  e                                           ; $6477: $1d
	ld   b, b                                        ; $6478: $40
	dec  d                                           ; $6479: $15
	inc  bc                                          ; $647a: $03
	dec  d                                           ; $647b: $15
	ld   bc, $2901                                   ; $647c: $01 $01 $29
	nop                                              ; $647f: $00
	ld   bc, $956f                                   ; $6480: $01 $6f $95
	ld   [hl], c                                     ; $6483: $71
	halt                                             ; $6484: $76
	ldh  [$ba], a                                    ; $6485: $e0 $ba
	ld   h, l                                        ; $6487: $65
	ld   l, l                                        ; $6488: $6d
	ld   e, c                                        ; $6489: $59
	rst  $38                                         ; $648a: $ff
	rst  $38                                         ; $648b: $ff
	dec  c                                           ; $648c: $0d
	adc  h                                           ; $648d: $8c
	ld   d, b                                        ; $648e: $50
	sbc  [hl]                                        ; $648f: $9e
	ld   h, l                                        ; $6490: $65
	sub  c                                           ; $6491: $91
	ei                                               ; $6492: $fb
	ld   a, b                                        ; $6493: $78
	ld   d, d                                        ; $6494: $52
	ld   a, b                                        ; $6495: $78
	sbc  a                                           ; $6496: $9f
	dec  c                                           ; $6497: $0d
	nop                                              ; $6498: $00
	ld   a, [bc]                                     ; $6499: $0a
	ld   b, $1a                                      ; $649a: $06 $1a
	rlca                                             ; $649c: $07
	dec  b                                           ; $649d: $05
	ld   b, b                                        ; $649e: $40
	ld   [hl], h                                     ; $649f: $74
	inc  bc                                          ; $64a0: $03
	ld   [hl], h                                     ; $64a1: $74
	inc  bc                                          ; $64a2: $03
	rst  $38                                         ; $64a3: $ff
	jr   z, jr_054_64a6                              ; $64a4: $28 $00

jr_054_64a6:
	dec  b                                           ; $64a6: $05
	ld   b, b                                        ; $64a7: $40
	rst  $38                                         ; $64a8: $ff
	ld   bc, $0000                                   ; $64a9: $01 $00 $00
	ld   b, $2c                                      ; $64ac: $06 $2c
	rlca                                             ; $64ae: $07
	dec  c                                           ; $64af: $0d
	nop                                              ; $64b0: $00
	nop                                              ; $64b1: $00
	rrca                                             ; $64b2: $0f
	nop                                              ; $64b3: $00
	ld   bc, $0b0c                                   ; $64b4: $01 $0c $0b
	inc  e                                           ; $64b7: $1c
	dec  b                                           ; $64b8: $05
	nop                                              ; $64b9: $00
	nop                                              ; $64ba: $00
	ld   bc, $6803                                   ; $64bb: $01 $03 $68
	ld   a, l                                        ; $64be: $7d
	sbc  [hl]                                        ; $64bf: $9e
	xor  $d1                                         ; $64c0: $ee $d1
	ei                                               ; $64c2: $fb
	ld   l, e                                        ; $64c3: $6b
	ld   d, h                                        ; $64c4: $54
	ld   h, e                                        ; $64c5: $63
	ld   e, d                                        ; $64c6: $5a
	inc  b                                           ; $64c7: $04
	ld   b, l                                        ; $64c8: $45
	ld   [hl], c                                     ; $64c9: $71
	ld   [hl], h                                     ; $64ca: $74
	dec  c                                           ; $64cb: $0d
	ld   h, e                                        ; $64cc: $63
	ld   [hl], c                                     ; $64cd: $71
	ld   e, e                                        ; $64ce: $5b
	sub  [hl]                                        ; $64cf: $96
	sbc  b                                           ; $64d0: $98
	inc  bc                                          ; $64d1: $03
	ld   l, h                                        ; $64d2: $6c
	ld   h, l                                        ; $64d3: $65
	sub  d                                           ; $64d4: $92
	sub  d                                           ; $64d5: $92
	ld   h, c                                        ; $64d6: $61
	ld   h, l                                        ; $64d7: $65
	ld   e, l                                        ; $64d8: $5d
	dec  c                                           ; $64d9: $0d
	ld   a, b                                        ; $64da: $78
	sbc  c                                           ; $64db: $99
	ld   e, c                                        ; $64dc: $59
	sub  a                                           ; $64dd: $97
	ld   a, b                                        ; $64de: $78
	sbc  a                                           ; $64df: $9f
	dec  c                                           ; $64e0: $0d
	nop                                              ; $64e1: $00
	ld   a, [bc]                                     ; $64e2: $0a
	ld   bc, $a102                                   ; $64e3: $01 $02 $a1
	ld   [bc], a                                     ; $64e6: $02
	ld   a, e                                        ; $64e7: $7b
	ld   d, d                                        ; $64e8: $52
	inc  b                                           ; $64e9: $04
	ld   b, l                                        ; $64ea: $45
	sbc  d                                           ; $64eb: $9a
	ld   [hl], h                                     ; $64ec: $74
	sub  d                                           ; $64ed: $92
	ld   [hl], c                                     ; $64ee: $71
	ld   [hl], h                                     ; $64ef: $74
	sub  d                                           ; $64f0: $92
	sbc  a                                           ; $64f1: $9f
	dec  c                                           ; $64f2: $0d
	nop                                              ; $64f3: $00
	ld   a, [bc]                                     ; $64f4: $0a
	ld   bc, $688c                                   ; $64f5: $01 $8c $68
	sbc  [hl]                                        ; $64f8: $9e
	ld   a, [bc]                                     ; $64f9: $0a
	ld   [bc], a                                     ; $64fa: $02
	inc  bc                                          ; $64fb: $03
	ld   a, [bc]                                     ; $64fc: $0a
	pop  de                                          ; $64fd: $d1
	db   $ed                                         ; $64fe: $ed
	rst  $10                                         ; $64ff: $d7
	sbc  [hl]                                        ; $6500: $9e
	xor  $d1                                         ; $6501: $ee $d1
	ei                                               ; $6503: $fb
	ld   a, [bc]                                     ; $6504: $0a
	inc  bc                                          ; $6505: $03
	sbc  a                                           ; $6506: $9f
	dec  c                                           ; $6507: $0d
	inc  bc                                          ; $6508: $03
	ld   l, b                                        ; $6509: $68
	ld   a, c                                        ; $650a: $79
	ld   a, [bc]                                     ; $650b: $0a
	ld   [bc], a                                     ; $650c: $02
	ld   [bc], a                                     ; $650d: $02
	ld   [bc], a                                     ; $650e: $02
	pop  de                                          ; $650f: $d1
	db   $ed                                         ; $6510: $ed
	rst  $10                                         ; $6511: $d7
	and  b                                           ; $6512: $a0
	ld   d, b                                        ; $6513: $50
	ld   e, a                                        ; $6514: $5f
	sbc  c                                           ; $6515: $99
	ld   a, [bc]                                     ; $6516: $0a
	inc  bc                                          ; $6517: $03
	sbc  a                                           ; $6518: $9f
	dec  c                                           ; $6519: $0d
	inc  bc                                          ; $651a: $03
	ld   l, c                                        ; $651b: $69
	ld   [bc], a                                     ; $651c: $02
	xor  d                                           ; $651d: $aa
	ld   a, c                                        ; $651e: $79
	sbc  [hl]                                        ; $651f: $9e
	ld   a, [bc]                                     ; $6520: $0a
	ld   [bc], a                                     ; $6521: $02
	inc  bc                                          ; $6522: $03
	ld   bc, $edd1                                   ; $6523: $01 $d1 $ed
	rst  $10                                         ; $6526: $d7
	sbc  [hl]                                        ; $6527: $9e
	xor  $d1                                         ; $6528: $ee $d1
	ei                                               ; $652a: $fb
	ld   a, [bc]                                     ; $652b: $0a
	inc  bc                                          ; $652c: $03
	sbc  a                                           ; $652d: $9f
	dec  c                                           ; $652e: $0d
	nop                                              ; $652f: $00
	ld   a, [bc]                                     ; $6530: $0a
	ld   bc, $7889                                   ; $6531: $01 $89 $78
	sbc  [hl]                                        ; $6534: $9e
	ld   d, d                                        ; $6535: $52
	ld   e, l                                        ; $6536: $5d
	ld   [hl], l                                     ; $6537: $75
	sbc  a                                           ; $6538: $9f
	dec  c                                           ; $6539: $0d
	nop                                              ; $653a: $00
	ld   a, [bc]                                     ; $653b: $0a
	add  hl, de                                      ; $653c: $19
	dec  b                                           ; $653d: $05
	inc  bc                                          ; $653e: $03
	inc  bc                                          ; $653f: $03
	ld   a, [bc]                                     ; $6540: $0a
	pop  de                                          ; $6541: $d1
	db   $ed                                         ; $6542: $ed
	rst  $10                                         ; $6543: $d7
	sbc  [hl]                                        ; $6544: $9e
	xor  $d1                                         ; $6545: $ee $d1
	ei                                               ; $6547: $fb
	nop                                              ; $6548: $00
	nop                                              ; $6549: $00
	inc  bc                                          ; $654a: $03
	ld   bc, $edd1                                   ; $654b: $01 $d1 $ed
	rst  $10                                         ; $654e: $d7
	sbc  [hl]                                        ; $654f: $9e
	xor  $d1                                         ; $6550: $ee $d1
	ei                                               ; $6552: $fb
	nop                                              ; $6553: $00
	ld   bc, $0a03                                   ; $6554: $01 $03 $0a
	pop  de                                          ; $6557: $d1
	db   $ed                                         ; $6558: $ed
	rst  $10                                         ; $6559: $d7
	and  b                                           ; $655a: $a0
	ld   d, b                                        ; $655b: $50
	ld   e, a                                        ; $655c: $5f
	sbc  c                                           ; $655d: $99
	nop                                              ; $655e: $00
	ld   [bc], a                                     ; $655f: $02
	rlca                                             ; $6560: $07
	ei                                               ; $6561: $fb
	rlca                                             ; $6562: $07
	ld   [bc], a                                     ; $6563: $02
	inc  bc                                          ; $6564: $03
	ld   bc, $2000                                   ; $6565: $01 $00 $20
	nop                                              ; $6568: $00
	rlca                                             ; $6569: $07
	inc  de                                          ; $656a: $13
	ld   [$0302], sp                                 ; $656b: $08 $02 $03
	ld   bc, $2001                                   ; $656e: $01 $01 $20
	nop                                              ; $6571: $00
	rlca                                             ; $6572: $07
	inc  de                                          ; $6573: $13
	ld   [$0302], sp                                 ; $6574: $08 $02 $03
	ld   bc, $2002                                   ; $6577: $01 $02 $20
	nop                                              ; $657a: $00
	ld   b, $49                                      ; $657b: $06 $49
	ld   [$051c], sp                                 ; $657d: $08 $1c $05
	ld   bc, $0101                                   ; $6580: $01 $01 $01
	sub  [hl]                                        ; $6583: $96
	ld   [hl], c                                     ; $6584: $71
	ld   h, l                                        ; $6585: $65
	sub  c                                           ; $6586: $91
	sbc  a                                           ; $6587: $9f
	ld   l, e                                        ; $6588: $6b
	ld   a, h                                        ; $6589: $7c
	inc  bc                                          ; $658a: $03
	cp   $03                                         ; $658b: $fe $03
	add  [hl]                                        ; $658d: $86
	sub  d                                           ; $658e: $92
	ld   a, [$000d]                                  ; $658f: $fa $0d $00
	ld   a, [bc]                                     ; $6592: $0a
	ld   b, $8c                                      ; $6593: $06 $8c
	ld   [$051c], sp                                 ; $6595: $08 $1c $05
	rlca                                             ; $6598: $07
	rlca                                             ; $6599: $07
	ld   bc, $aca3                                   ; $659a: $01 $a3 $ac
	push af                                          ; $659d: $f5
	sbc  [hl]                                        ; $659e: $9e
	and  e                                           ; $659f: $a3
	xor  h                                           ; $65a0: $ac
	push af                                          ; $65a1: $f5
	sbc  a                                           ; $65a2: $9f
	dec  c                                           ; $65a3: $0d
	nop                                              ; $65a4: $00
	dec  b                                           ; $65a5: $05
	ld   b, b                                        ; $65a6: $40
	rst  $38                                         ; $65a7: $ff
	inc  bc                                          ; $65a8: $03
	rst  $38                                         ; $65a9: $ff
	ld   bc, $2801                                   ; $65aa: $01 $01 $28
	nop                                              ; $65ad: $00
	ld   bc, $6f8c                                   ; $65ae: $01 $8c $6f
	ld   e, d                                        ; $65b1: $5a
	ld   d, [hl]                                     ; $65b2: $56
	ld   [hl], h                                     ; $65b3: $74
	sbc  c                                           ; $65b4: $99
	ld   e, d                                        ; $65b5: $5a
	ld   a, b                                        ; $65b6: $78
	sbc  a                                           ; $65b7: $9f
	dec  c                                           ; $65b8: $0d
	sub  b                                           ; $65b9: $90
	ld   d, h                                        ; $65ba: $54
	ld   [bc], a                                     ; $65bb: $02
	jr   nz, jr_054_65c0                             ; $65bc: $20 $02

	sub  e                                           ; $65be: $93
	ld   a, l                                        ; $65bf: $7d

jr_054_65c0:
	ld   h, [hl]                                     ; $65c0: $66
	adc  a                                           ; $65c1: $8f
	ld   e, c                                        ; $65c2: $59
	sub  a                                           ; $65c3: $97
	sub  d                                           ; $65c4: $92
	sbc  a                                           ; $65c5: $9f
	dec  c                                           ; $65c6: $0d
	nop                                              ; $65c7: $00
	ld   a, [bc]                                     ; $65c8: $0a
	ld   b, $72                                      ; $65c9: $06 $72
	rlca                                             ; $65cb: $07
	inc  e                                           ; $65cc: $1c
	dec  b                                           ; $65cd: $05
	rlca                                             ; $65ce: $07
	rlca                                             ; $65cf: $07
	dec  e                                           ; $65d0: $1d
	ld   b, b                                        ; $65d1: $40
	dec  d                                           ; $65d2: $15
	inc  bc                                          ; $65d3: $03
	dec  d                                           ; $65d4: $15
	ld   bc, $2901                                   ; $65d5: $01 $01 $29
	nop                                              ; $65d8: $00
	ld   bc, $b2dd                                   ; $65d9: $01 $dd $b2
	ei                                               ; $65dc: $fb
	ld   [hl], c                                     ; $65dd: $71
	halt                                             ; $65de: $76
	ld   h, l                                        ; $65df: $65
	ld   [hl], h                                     ; $65e0: $74
	and  c                                           ; $65e1: $a1
	halt                                             ; $65e2: $76
	sbc  [hl]                                        ; $65e3: $9e
	dec  c                                           ; $65e4: $0d
	nop                                              ; $65e5: $00
	dec  b                                           ; $65e6: $05
	ld   b, b                                        ; $65e7: $40
	rst  $38                                         ; $65e8: $ff
	inc  bc                                          ; $65e9: $03
	rst  $38                                         ; $65ea: $ff
	ld   bc, $2801                                   ; $65eb: $01 $01 $28
	nop                                              ; $65ee: $00
	ld   bc, $916f                                   ; $65ef: $01 $6f $91
	ld   [hl], c                                     ; $65f2: $71
	ld   l, a                                        ; $65f3: $6f
	sub  c                                           ; $65f4: $91
	halt                                             ; $65f5: $76
	sub  d                                           ; $65f6: $92
	ld   [hl], c                                     ; $65f7: $71
	ld   [hl], h                                     ; $65f8: $74
	sub  d                                           ; $65f9: $92
	sbc  a                                           ; $65fa: $9f
	dec  c                                           ; $65fb: $0d
	sub  b                                           ; $65fc: $90
	ld   d, h                                        ; $65fd: $54
	ld   [bc], a                                     ; $65fe: $02
	jr   nz, jr_054_6603                             ; $65ff: $20 $02

	sub  e                                           ; $6601: $93
	ld   a, l                                        ; $6602: $7d

jr_054_6603:
	ld   h, [hl]                                     ; $6603: $66
	adc  a                                           ; $6604: $8f
	ld   e, c                                        ; $6605: $59
	sub  a                                           ; $6606: $97
	sub  d                                           ; $6607: $92
	sbc  a                                           ; $6608: $9f
	dec  c                                           ; $6609: $0d
	nop                                              ; $660a: $00
	ld   a, [bc]                                     ; $660b: $0a
	ld   b, $72                                      ; $660c: $06 $72
	rlca                                             ; $660e: $07
	add  hl, de                                      ; $660f: $19
	dec  b                                           ; $6610: $05
	inc  bc                                          ; $6611: $03
	ld   [bc], a                                     ; $6612: $02
	ld   [bc], a                                     ; $6613: $02
	pop  de                                          ; $6614: $d1
	db   $ed                                         ; $6615: $ed
	rst  $10                                         ; $6616: $d7
	and  b                                           ; $6617: $a0
	ld   d, b                                        ; $6618: $50
	ld   e, a                                        ; $6619: $5f
	sbc  c                                           ; $661a: $99
	nop                                              ; $661b: $00
	nop                                              ; $661c: $00
	inc  bc                                          ; $661d: $03
	ld   bc, $edd1                                   ; $661e: $01 $d1 $ed
	rst  $10                                         ; $6621: $d7
	sbc  [hl]                                        ; $6622: $9e
	xor  $d1                                         ; $6623: $ee $d1
	ei                                               ; $6625: $fb
	nop                                              ; $6626: $00
	ld   bc, $0202                                   ; $6627: $01 $02 $02
	pop  de                                          ; $662a: $d1
	db   $ed                                         ; $662b: $ed
	rst  $10                                         ; $662c: $d7
	sbc  [hl]                                        ; $662d: $9e
	xor  $d1                                         ; $662e: $ee $d1
	ei                                               ; $6630: $fb
	nop                                              ; $6631: $00
	ld   [bc], a                                     ; $6632: $02
	rlca                                             ; $6633: $07
	adc  $08                                         ; $6634: $ce $08
	ld   [bc], a                                     ; $6636: $02
	inc  bc                                          ; $6637: $03
	ld   bc, $2000                                   ; $6638: $01 $00 $20
	nop                                              ; $663b: $00
	rlca                                             ; $663c: $07
	inc  de                                          ; $663d: $13
	ld   [$0302], sp                                 ; $663e: $08 $02 $03
	ld   bc, $2001                                   ; $6641: $01 $01 $20
	nop                                              ; $6644: $00
	rlca                                             ; $6645: $07
	inc  de                                          ; $6646: $13
	ld   [$0302], sp                                 ; $6647: $08 $02 $03
	ld   bc, $2002                                   ; $664a: $01 $02 $20
	nop                                              ; $664d: $00
	ld   b, $49                                      ; $664e: $06 $49
	ld   [$051c], sp                                 ; $6650: $08 $1c $05
	ld   bc, $0101                                   ; $6653: $01 $01 $01
	ld   e, b                                        ; $6656: $58
	ld   e, b                                        ; $6657: $58
	ld   a, [$a910]                                  ; $6658: $fa $10 $a9
	xor  c                                           ; $665b: $a9
	ld   [bc], a                                     ; $665c: $02
	scf                                              ; $665d: $37
	ld   h, [hl]                                     ; $665e: $66
	sub  d                                           ; $665f: $92
	ld   [hl], l                                     ; $6660: $75
	ld   a, [$000d]                                  ; $6661: $fa $0d $00
	ld   a, [bc]                                     ; $6664: $0a
	ld   b, $e5                                      ; $6665: $06 $e5
	ld   [$0519], sp                                 ; $6667: $08 $19 $05
	inc  bc                                          ; $666a: $03
	inc  bc                                          ; $666b: $03
	ld   bc, $edd1                                   ; $666c: $01 $d1 $ed
	rst  $10                                         ; $666f: $d7
	sbc  [hl]                                        ; $6670: $9e
	xor  $d1                                         ; $6671: $ee $d1
	ei                                               ; $6673: $fb
	nop                                              ; $6674: $00
	nop                                              ; $6675: $00
	inc  bc                                          ; $6676: $03
	ld   bc, $edd1                                   ; $6677: $01 $d1 $ed
	rst  $10                                         ; $667a: $d7
	and  b                                           ; $667b: $a0
	ld   d, b                                        ; $667c: $50
	ld   e, a                                        ; $667d: $5f
	sbc  c                                           ; $667e: $99
	nop                                              ; $667f: $00
	ld   bc, $0a03                                   ; $6680: $01 $03 $0a
	pop  de                                          ; $6683: $d1
	db   $ed                                         ; $6684: $ed
	rst  $10                                         ; $6685: $d7
	sbc  [hl]                                        ; $6686: $9e
	xor  $d1                                         ; $6687: $ee $d1
	ei                                               ; $6689: $fb
	nop                                              ; $668a: $00
	ld   [bc], a                                     ; $668b: $02
	rlca                                             ; $668c: $07
	daa                                              ; $668d: $27
	add  hl, bc                                      ; $668e: $09
	ld   [bc], a                                     ; $668f: $02
	inc  bc                                          ; $6690: $03
	ld   bc, $2000                                   ; $6691: $01 $00 $20
	nop                                              ; $6694: $00
	rlca                                             ; $6695: $07
	inc  de                                          ; $6696: $13
	ld   [$0302], sp                                 ; $6697: $08 $02 $03
	ld   bc, $2001                                   ; $669a: $01 $01 $20
	nop                                              ; $669d: $00
	rlca                                             ; $669e: $07
	inc  de                                          ; $669f: $13
	ld   [$0302], sp                                 ; $66a0: $08 $02 $03
	ld   bc, $2002                                   ; $66a3: $01 $02 $20
	nop                                              ; $66a6: $00
	ld   b, $49                                      ; $66a7: $06 $49
	ld   [$051c], sp                                 ; $66a9: $08 $1c $05
	ld   bc, $0101                                   ; $66ac: $01 $01 $01
	sub  [hl]                                        ; $66af: $96
	ld   [hl], c                                     ; $66b0: $71
	ld   h, l                                        ; $66b1: $65
	sub  c                                           ; $66b2: $91
	sbc  a                                           ; $66b3: $9f
	xor  e                                           ; $66b4: $ab
	call nz, $fbb2                                   ; $66b5: $c4 $b2 $fb
	sub  d                                           ; $66b8: $92
	ld   a, [$000d]                                  ; $66b9: $fa $0d $00
	ld   a, [bc]                                     ; $66bc: $0a
	ld   bc, $6596                                   ; $66bd: $01 $96 $65
	sbc  [hl]                                        ; $66c0: $9e
	ld   [bc], a                                     ; $66c1: $02
	and  l                                           ; $66c2: $a5
	inc  b                                           ; $66c3: $04
	add  hl, hl                                      ; $66c4: $29
	ld   a, l                                        ; $66c5: $7d
	ld   [bc], a                                     ; $66c6: $02
	and  l                                           ; $66c7: $a5
	ld   a, h                                        ; $66c8: $7c
	ld   [bc], a                                     ; $66c9: $02
	ld   a, [hl-]                                    ; $66ca: $3a
	ld   [bc], a                                     ; $66cb: $02
	ld   a, [$fa92]                                  ; $66cc: $fa $92 $fa
	dec  c                                           ; $66cf: $0d
	ld   [bc], a                                     ; $66d0: $02
	ld   a, [$7904]                                  ; $66d1: $fa $04 $79
	ld   a, l                                        ; $66d4: $7d
	ld   e, b                                        ; $66d5: $58
	adc  d                                           ; $66d6: $8a
	ld   d, [hl]                                     ; $66d7: $56
	ld   [hl], h                                     ; $66d8: $74
	sbc  c                                           ; $66d9: $99
	sub  d                                           ; $66da: $92
	sbc  e                                           ; $66db: $9b
	sbc  a                                           ; $66dc: $9f
	dec  c                                           ; $66dd: $0d
	adc  c                                           ; $66de: $89
	ld   a, b                                        ; $66df: $78
	sbc  [hl]                                        ; $66e0: $9e
	ld   d, d                                        ; $66e1: $52
	ld   e, l                                        ; $66e2: $5d
	ld   [hl], l                                     ; $66e3: $75
	sbc  a                                           ; $66e4: $9f
	dec  c                                           ; $66e5: $0d
	nop                                              ; $66e6: $00
	ld   a, [bc]                                     ; $66e7: $0a
	add  hl, de                                      ; $66e8: $19
	dec  b                                           ; $66e9: $05
	inc  bc                                          ; $66ea: $03
	inc  bc                                          ; $66eb: $03
	ld   bc, $edd1                                   ; $66ec: $01 $d1 $ed
	rst  $10                                         ; $66ef: $d7
	sbc  [hl]                                        ; $66f0: $9e
	xor  $d1                                         ; $66f1: $ee $d1
	ei                                               ; $66f3: $fb
	nop                                              ; $66f4: $00
	nop                                              ; $66f5: $00
	inc  bc                                          ; $66f6: $03
	ld   bc, $edd1                                   ; $66f7: $01 $d1 $ed
	rst  $10                                         ; $66fa: $d7
	and  b                                           ; $66fb: $a0
	ld   d, b                                        ; $66fc: $50
	ld   e, a                                        ; $66fd: $5f
	sbc  c                                           ; $66fe: $99
	nop                                              ; $66ff: $00
	ld   bc, $0a03                                   ; $6700: $01 $03 $0a
	pop  de                                          ; $6703: $d1
	db   $ed                                         ; $6704: $ed
	rst  $10                                         ; $6705: $d7
	sbc  [hl]                                        ; $6706: $9e
	xor  $d1                                         ; $6707: $ee $d1
	ei                                               ; $6709: $fb
	nop                                              ; $670a: $00
	ld   [bc], a                                     ; $670b: $02
	rlca                                             ; $670c: $07
	and  a                                           ; $670d: $a7
	add  hl, bc                                      ; $670e: $09
	ld   [bc], a                                     ; $670f: $02
	inc  bc                                          ; $6710: $03
	ld   bc, $2000                                   ; $6711: $01 $00 $20
	nop                                              ; $6714: $00
	rlca                                             ; $6715: $07
	jp   nz, $0209                                   ; $6716: $c2 $09 $02

	inc  bc                                          ; $6719: $03
	ld   bc, $2001                                   ; $671a: $01 $01 $20
	nop                                              ; $671d: $00
	rlca                                             ; $671e: $07
	jp   nz, $0209                                   ; $671f: $c2 $09 $02

	inc  bc                                          ; $6722: $03
	ld   bc, $2002                                   ; $6723: $01 $02 $20
	nop                                              ; $6726: $00
	ld   b, $5e                                      ; $6727: $06 $5e
	ld   a, [bc]                                     ; $6729: $0a
	inc  e                                           ; $672a: $1c
	dec  b                                           ; $672b: $05
	ld   bc, $0101                                   ; $672c: $01 $01 $01
	sub  [hl]                                        ; $672f: $96
	ld   [hl], c                                     ; $6730: $71
	ld   h, l                                        ; $6731: $65
	sub  c                                           ; $6732: $91
	sbc  [hl]                                        ; $6733: $9e
	sub  [hl]                                        ; $6734: $96
	ld   [hl], c                                     ; $6735: $71
	ld   h, l                                        ; $6736: $65
	sub  c                                           ; $6737: $91
	sbc  a                                           ; $6738: $9f
	dec  c                                           ; $6739: $0d
	xor  c                                           ; $673a: $a9
	xor  c                                           ; $673b: $a9
	ld   [hl], l                                     ; $673c: $75
	db   $fc                                         ; $673d: $fc
	sbc  a                                           ; $673e: $9f
	dec  c                                           ; $673f: $0d
	nop                                              ; $6740: $00
	ld   a, [bc]                                     ; $6741: $0a
	ld   b, $a1                                      ; $6742: $06 $a1
	ld   a, [bc]                                     ; $6744: $0a
	inc  e                                           ; $6745: $1c
	dec  b                                           ; $6746: $05
	rlca                                             ; $6747: $07
	rlca                                             ; $6748: $07
	ld   bc, $aca3                                   ; $6749: $01 $a3 $ac
	push af                                          ; $674c: $f5
	ld   e, d                                        ; $674d: $5a
	ld   a, b                                        ; $674e: $78
	db   $fc                                         ; $674f: $fc
	sbc  a                                           ; $6750: $9f
	dec  c                                           ; $6751: $0d
	nop                                              ; $6752: $00
	dec  b                                           ; $6753: $05
	ld   b, b                                        ; $6754: $40
	rst  $38                                         ; $6755: $ff
	inc  bc                                          ; $6756: $03
	rst  $38                                         ; $6757: $ff
	ld   bc, $2801                                   ; $6758: $01 $01 $28
	nop                                              ; $675b: $00
	ld   bc, $6f8c                                   ; $675c: $01 $8c $6f
	ld   e, d                                        ; $675f: $5a
	ld   d, [hl]                                     ; $6760: $56
	ld   [hl], h                                     ; $6761: $74
	sbc  c                                           ; $6762: $99
	sub  d                                           ; $6763: $92
	and  c                                           ; $6764: $a1
	sbc  a                                           ; $6765: $9f
	dec  c                                           ; $6766: $0d
	sub  b                                           ; $6767: $90
	ld   d, h                                        ; $6768: $54
	ld   [bc], a                                     ; $6769: $02
	jr   nz, jr_054_676e                             ; $676a: $20 $02

	sub  e                                           ; $676c: $93
	ld   a, l                                        ; $676d: $7d

jr_054_676e:
	ld   h, [hl]                                     ; $676e: $66
	adc  a                                           ; $676f: $8f
	ld   e, c                                        ; $6770: $59
	sub  a                                           ; $6771: $97
	sub  d                                           ; $6772: $92
	sbc  a                                           ; $6773: $9f
	dec  c                                           ; $6774: $0d
	nop                                              ; $6775: $00
	ld   a, [bc]                                     ; $6776: $0a
	ld   bc, $5656                                   ; $6777: $01 $56 $56
	ld   e, c                                        ; $677a: $59
	sbc  [hl]                                        ; $677b: $9e
	ld   [bc], a                                     ; $677c: $02
	and  l                                           ; $677d: $a5
	inc  b                                           ; $677e: $04
	add  hl, hl                                      ; $677f: $29
	ld   a, l                                        ; $6780: $7d
	ld   h, e                                        ; $6781: $63
	ld   [hl], c                                     ; $6782: $71
	ld   e, e                                        ; $6783: $5b
	halt                                             ; $6784: $76
	ld   [bc], a                                     ; $6785: $02
	ld   a, [hl-]                                    ; $6786: $3a
	ld   a, h                                        ; $6787: $7c
	dec  c                                           ; $6788: $0d
	inc  bc                                          ; $6789: $03
	ld   l, e                                        ; $678a: $6b
	ld   [bc], a                                     ; $678b: $02
	ld   a, [$7879]                                  ; $678c: $fa $79 $78
	and  c                                           ; $678f: $a1
	ld   a, e                                        ; $6790: $7b
	and  c                                           ; $6791: $a1
	ld   [hl], l                                     ; $6792: $75
	sbc  a                                           ; $6793: $9f
	dec  c                                           ; $6794: $0d
	ld   h, l                                        ; $6795: $65
	ld   [hl], c                                     ; $6796: $71
	ld   e, c                                        ; $6797: $59
	sbc  b                                           ; $6798: $98
	ld   l, l                                        ; $6799: $6d
	ld   a, h                                        ; $679a: $7c
	adc  [hl]                                        ; $679b: $8e
	ld   [hl], l                                     ; $679c: $75
	sbc  a                                           ; $679d: $9f
	dec  c                                           ; $679e: $0d
	nop                                              ; $679f: $00
	ld   a, [bc]                                     ; $67a0: $0a
	ld   bc, $688c                                   ; $67a1: $01 $8c $68
	sbc  [hl]                                        ; $67a4: $9e
	ld   a, [bc]                                     ; $67a5: $0a
	ld   [bc], a                                     ; $67a6: $02
	inc  bc                                          ; $67a7: $03
	ld   bc, $edd1                                   ; $67a8: $01 $d1 $ed
	rst  $10                                         ; $67ab: $d7
	sbc  [hl]                                        ; $67ac: $9e
	xor  $d1                                         ; $67ad: $ee $d1
	ei                                               ; $67af: $fb
	ld   a, [bc]                                     ; $67b0: $0a
	inc  bc                                          ; $67b1: $03
	sbc  a                                           ; $67b2: $9f
	dec  c                                           ; $67b3: $0d
	inc  bc                                          ; $67b4: $03
	ld   l, b                                        ; $67b5: $68
	ld   a, c                                        ; $67b6: $79
	sbc  [hl]                                        ; $67b7: $9e
	ld   a, [bc]                                     ; $67b8: $0a
	ld   [bc], a                                     ; $67b9: $02
	ld   [bc], a                                     ; $67ba: $02
	ld   [bc], a                                     ; $67bb: $02
	pop  de                                          ; $67bc: $d1
	db   $ed                                         ; $67bd: $ed
	rst  $10                                         ; $67be: $d7
	and  b                                           ; $67bf: $a0
	ld   h, l                                        ; $67c0: $65
	adc  a                                           ; $67c1: $8f
	sbc  c                                           ; $67c2: $99
	ld   a, [bc]                                     ; $67c3: $0a
	inc  bc                                          ; $67c4: $03
	sbc  a                                           ; $67c5: $9f
	dec  c                                           ; $67c6: $0d
	inc  bc                                          ; $67c7: $03
	ld   l, c                                        ; $67c8: $69
	ld   [bc], a                                     ; $67c9: $02
	xor  d                                           ; $67ca: $aa
	ld   a, c                                        ; $67cb: $79
	sbc  [hl]                                        ; $67cc: $9e
	ld   a, [bc]                                     ; $67cd: $0a
	ld   [bc], a                                     ; $67ce: $02
	inc  bc                                          ; $67cf: $03
	ld   a, [bc]                                     ; $67d0: $0a
	pop  de                                          ; $67d1: $d1
	db   $ed                                         ; $67d2: $ed
	rst  $10                                         ; $67d3: $d7
	sbc  [hl]                                        ; $67d4: $9e
	xor  $d1                                         ; $67d5: $ee $d1
	ei                                               ; $67d7: $fb
	ld   a, [bc]                                     ; $67d8: $0a
	inc  bc                                          ; $67d9: $03
	sbc  a                                           ; $67da: $9f
	dec  c                                           ; $67db: $0d
	nop                                              ; $67dc: $00
	ld   a, [bc]                                     ; $67dd: $0a
	ld   b, $65                                      ; $67de: $06 $65
	add  hl, bc                                      ; $67e0: $09
	inc  e                                           ; $67e1: $1c
	dec  b                                           ; $67e2: $05
	rlca                                             ; $67e3: $07
	rlca                                             ; $67e4: $07
	dec  e                                           ; $67e5: $1d
	ld   b, b                                        ; $67e6: $40
	dec  d                                           ; $67e7: $15
	inc  bc                                          ; $67e8: $03
	dec  d                                           ; $67e9: $15
	ld   bc, $2901                                   ; $67ea: $01 $01 $29
	nop                                              ; $67ed: $00
	ld   bc, $9789                                   ; $67ee: $01 $89 $97
	adc  c                                           ; $67f1: $89
	sub  a                                           ; $67f2: $97
	sbc  [hl]                                        ; $67f3: $9e
	db   $dd                                         ; $67f4: $dd
	ei                                               ; $67f5: $fb
	ld   [hl], c                                     ; $67f6: $71
	halt                                             ; $67f7: $76
	ld   l, c                                        ; $67f8: $69
	and  c                                           ; $67f9: $a1
	halt                                             ; $67fa: $76
	dec  c                                           ; $67fb: $0d
	nop                                              ; $67fc: $00
	dec  b                                           ; $67fd: $05
	ld   b, b                                        ; $67fe: $40
	rst  $38                                         ; $67ff: $ff
	inc  bc                                          ; $6800: $03
	rst  $38                                         ; $6801: $ff
	ld   bc, $2801                                   ; $6802: $01 $01 $28
	nop                                              ; $6805: $00
	ld   bc, $916f                                   ; $6806: $01 $6f $91
	ld   [hl], c                                     ; $6809: $71
	ld   l, a                                        ; $680a: $6f
	sub  c                                           ; $680b: $91
	halt                                             ; $680c: $76
	sub  d                                           ; $680d: $92
	sbc  c                                           ; $680e: $99
	sbc  a                                           ; $680f: $9f
	dec  c                                           ; $6810: $0d
	sub  b                                           ; $6811: $90
	ld   d, h                                        ; $6812: $54
	ld   [bc], a                                     ; $6813: $02
	jr   nz, jr_054_6818                             ; $6814: $20 $02

	sub  e                                           ; $6816: $93
	ld   a, l                                        ; $6817: $7d

jr_054_6818:
	ld   h, [hl]                                     ; $6818: $66
	adc  a                                           ; $6819: $8f
	ld   e, c                                        ; $681a: $59
	sub  a                                           ; $681b: $97
	sub  d                                           ; $681c: $92
	sbc  a                                           ; $681d: $9f
	dec  c                                           ; $681e: $0d
	nop                                              ; $681f: $00
	ld   a, [bc]                                     ; $6820: $0a
	ld   b, $f4                                      ; $6821: $06 $f4
	add  hl, bc                                      ; $6823: $09
	add  hl, de                                      ; $6824: $19
	dec  b                                           ; $6825: $05
	inc  bc                                          ; $6826: $03
	ld   [bc], a                                     ; $6827: $02
	ld   [bc], a                                     ; $6828: $02
	pop  de                                          ; $6829: $d1
	db   $ed                                         ; $682a: $ed
	rst  $10                                         ; $682b: $d7
	and  b                                           ; $682c: $a0
	ld   h, l                                        ; $682d: $65
	adc  a                                           ; $682e: $8f
	sbc  c                                           ; $682f: $99
	nop                                              ; $6830: $00
	nop                                              ; $6831: $00
	inc  bc                                          ; $6832: $03
	ld   a, [bc]                                     ; $6833: $0a
	pop  de                                          ; $6834: $d1
	db   $ed                                         ; $6835: $ed
	rst  $10                                         ; $6836: $d7
	sbc  [hl]                                        ; $6837: $9e
	xor  $d1                                         ; $6838: $ee $d1
	ei                                               ; $683a: $fb
	nop                                              ; $683b: $00
	ld   bc, $0202                                   ; $683c: $01 $02 $02
	pop  de                                          ; $683f: $d1
	db   $ed                                         ; $6840: $ed
	rst  $10                                         ; $6841: $d7
	sbc  [hl]                                        ; $6842: $9e
	xor  $d1                                         ; $6843: $ee $d1
	ei                                               ; $6845: $fb
	nop                                              ; $6846: $00
	ld   [bc], a                                     ; $6847: $02
	rlca                                             ; $6848: $07
	db   $e3                                         ; $6849: $e3
	ld   a, [bc]                                     ; $684a: $0a
	ld   [bc], a                                     ; $684b: $02
	inc  bc                                          ; $684c: $03
	ld   bc, $2000                                   ; $684d: $01 $00 $20
	nop                                              ; $6850: $00
	rlca                                             ; $6851: $07
	jp   nz, $0209                                   ; $6852: $c2 $09 $02

	inc  bc                                          ; $6855: $03
	ld   bc, $2001                                   ; $6856: $01 $01 $20
	nop                                              ; $6859: $00
	rlca                                             ; $685a: $07
	jp   nz, $0209                                   ; $685b: $c2 $09 $02

	inc  bc                                          ; $685e: $03
	ld   bc, $2002                                   ; $685f: $01 $02 $20
	nop                                              ; $6862: $00
	ld   b, $5e                                      ; $6863: $06 $5e
	ld   a, [bc]                                     ; $6865: $0a
	inc  e                                           ; $6866: $1c
	dec  b                                           ; $6867: $05
	ld   bc, $0101                                   ; $6868: $01 $01 $01
	sub  d                                           ; $686b: $92
	sbc  c                                           ; $686c: $99
	sub  d                                           ; $686d: $92
	and  c                                           ; $686e: $a1
	ld   e, c                                        ; $686f: $59
	sbc  a                                           ; $6870: $9f
	dec  c                                           ; $6871: $0d
	xor  c                                           ; $6872: $a9
	xor  c                                           ; $6873: $a9
	ld   [bc], a                                     ; $6874: $02
	scf                                              ; $6875: $37
	ld   h, [hl]                                     ; $6876: $66
	sub  d                                           ; $6877: $92
	ld   [hl], l                                     ; $6878: $75
	sbc  a                                           ; $6879: $9f
	dec  c                                           ; $687a: $0d
	nop                                              ; $687b: $00
	ld   a, [bc]                                     ; $687c: $0a
	ld   b, $fd                                      ; $687d: $06 $fd
	ld   a, [bc]                                     ; $687f: $0a
	add  hl, de                                      ; $6880: $19
	dec  b                                           ; $6881: $05
	inc  bc                                          ; $6882: $03
	inc  bc                                          ; $6883: $03
	ld   a, [bc]                                     ; $6884: $0a
	pop  de                                          ; $6885: $d1
	db   $ed                                         ; $6886: $ed
	rst  $10                                         ; $6887: $d7
	sbc  [hl]                                        ; $6888: $9e
	xor  $d1                                         ; $6889: $ee $d1
	ei                                               ; $688b: $fb
	nop                                              ; $688c: $00
	nop                                              ; $688d: $00
	inc  bc                                          ; $688e: $03
	ld   bc, $edd1                                   ; $688f: $01 $d1 $ed
	rst  $10                                         ; $6892: $d7
	sbc  [hl]                                        ; $6893: $9e
	xor  $d1                                         ; $6894: $ee $d1
	ei                                               ; $6896: $fb
	nop                                              ; $6897: $00
	ld   bc, $0a03                                   ; $6898: $01 $03 $0a
	pop  de                                          ; $689b: $d1
	db   $ed                                         ; $689c: $ed
	rst  $10                                         ; $689d: $d7
	and  b                                           ; $689e: $a0
	ld   h, l                                        ; $689f: $65
	adc  a                                           ; $68a0: $8f
	sbc  c                                           ; $68a1: $99
	nop                                              ; $68a2: $00
	ld   [bc], a                                     ; $68a3: $02
	rlca                                             ; $68a4: $07
	ccf                                              ; $68a5: $3f
	dec  bc                                          ; $68a6: $0b
	ld   [bc], a                                     ; $68a7: $02
	inc  bc                                          ; $68a8: $03
	ld   bc, $2000                                   ; $68a9: $01 $00 $20
	nop                                              ; $68ac: $00
	rlca                                             ; $68ad: $07
	jp   nz, $0209                                   ; $68ae: $c2 $09 $02

	inc  bc                                          ; $68b1: $03
	ld   bc, $2001                                   ; $68b2: $01 $01 $20
	nop                                              ; $68b5: $00
	rlca                                             ; $68b6: $07
	jp   nz, $0209                                   ; $68b7: $c2 $09 $02

	inc  bc                                          ; $68ba: $03
	ld   bc, $2002                                   ; $68bb: $01 $02 $20
	nop                                              ; $68be: $00
	ld   b, $5e                                      ; $68bf: $06 $5e
	ld   a, [bc]                                     ; $68c1: $0a
	inc  e                                           ; $68c2: $1c
	dec  b                                           ; $68c3: $05
	ld   bc, $0101                                   ; $68c4: $01 $01 $01
	sub  [hl]                                        ; $68c7: $96
	ld   [hl], c                                     ; $68c8: $71
	ld   h, l                                        ; $68c9: $65
	sub  c                                           ; $68ca: $91
	ld   a, [$6b0d]                                  ; $68cb: $fa $0d $6b
	sbc  d                                           ; $68ce: $9a
	ld   [hl], l                                     ; $68cf: $75
	xor  c                                           ; $68d0: $a9
	xor  c                                           ; $68d1: $a9
	ld   [hl], l                                     ; $68d2: $75
	ld   a, [$000d]                                  ; $68d3: $fa $0d $00
	ld   a, [bc]                                     ; $68d6: $0a
	rlca                                             ; $68d7: $07
	xor  d                                           ; $68d8: $aa
	dec  bc                                          ; $68d9: $0b
	inc  bc                                          ; $68da: $03
	rst  $38                                         ; $68db: $ff
	ld   bc, $2501                                   ; $68dc: $01 $01 $25
	inc  bc                                          ; $68df: $03
	rst  $38                                         ; $68e0: $ff
	ld   bc, $2302                                   ; $68e1: $01 $02 $23
	inc  e                                           ; $68e4: $1c
	nop                                              ; $68e5: $00
	rlca                                             ; $68e6: $07
	rst  $10                                         ; $68e7: $d7
	dec  bc                                          ; $68e8: $0b
	inc  bc                                          ; $68e9: $03
	rst  $38                                         ; $68ea: $ff
	ld   bc, $2503                                   ; $68eb: $01 $03 $25
	nop                                              ; $68ee: $00
	inc  e                                           ; $68ef: $1c
	dec  b                                           ; $68f0: $05
	ld   bc, $1d01                                   ; $68f1: $01 $01 $1d
	ld   b, b                                        ; $68f4: $40
	dec  d                                           ; $68f5: $15
	inc  bc                                          ; $68f6: $03
	dec  d                                           ; $68f7: $15
	ld   bc, $2803                                   ; $68f8: $01 $03 $28
	nop                                              ; $68fb: $00
	ld   bc, $6267                                   ; $68fc: $01 $67 $62
	ld   d, d                                        ; $68ff: $52
	ld   a, b                                        ; $6900: $78
	sbc  a                                           ; $6901: $9f
	ld   [$7d00], sp                                 ; $6902: $08 $00 $7d
	and  c                                           ; $6905: $a1
	sbc  a                                           ; $6906: $9f
	dec  c                                           ; $6907: $0d
	inc  bc                                          ; $6908: $03
	ld   l, e                                        ; $6909: $6b
	dec  b                                           ; $690a: $05
	ld   c, b                                        ; $690b: $48
	ld   d, [hl]                                     ; $690c: $56
	ld   d, [hl]                                     ; $690d: $56
	sbc  l                                           ; $690e: $9d
	sbc  a                                           ; $690f: $9f
	ld   h, e                                        ; $6910: $63
	ld   h, a                                        ; $6911: $67
	ld   e, d                                        ; $6912: $5a
	sub  d                                           ; $6913: $92
	ld   [hl], l                                     ; $6914: $75
	sbc  a                                           ; $6915: $9f
	dec  c                                           ; $6916: $0d
	inc  bc                                          ; $6917: $03
	ld   l, b                                        ; $6918: $68
	sub  b                                           ; $6919: $90
	sbc  [hl]                                        ; $691a: $9e
	ld   l, e                                        ; $691b: $6b
	ld   a, h                                        ; $691c: $7c
	inc  bc                                          ; $691d: $03
	cp   $03                                         ; $691e: $fe $03
	add  [hl]                                        ; $6920: $86
	ld   [hl], l                                     ; $6921: $75
	ld   l, l                                        ; $6922: $6d
	ld   a, h                                        ; $6923: $7c
	adc  [hl]                                        ; $6924: $8e
	ld   [hl], l                                     ; $6925: $75
	sbc  a                                           ; $6926: $9f
	dec  c                                           ; $6927: $0d
	nop                                              ; $6928: $00
	ld   a, [bc]                                     ; $6929: $0a
	ld   b, $02                                      ; $692a: $06 $02
	inc  c                                           ; $692c: $0c
	inc  e                                           ; $692d: $1c
	dec  b                                           ; $692e: $05
	nop                                              ; $692f: $00
	nop                                              ; $6930: $00
	dec  e                                           ; $6931: $1d
	ld   b, b                                        ; $6932: $40
	dec  d                                           ; $6933: $15
	inc  bc                                          ; $6934: $03
	dec  d                                           ; $6935: $15
	ld   bc, $2802                                   ; $6936: $01 $02 $28
	nop                                              ; $6939: $00
	ld   bc, $508c                                   ; $693a: $01 $8c $50
	sbc  [hl]                                        ; $693d: $9e
	ld   l, e                                        ; $693e: $6b
	ld   a, h                                        ; $693f: $7c
	ld   [hl], h                                     ; $6940: $74
	ld   d, d                                        ; $6941: $52
	ld   [hl], a                                     ; $6942: $77
	ld   a, h                                        ; $6943: $7c
	dec  c                                           ; $6944: $0d
	ldh  [$ba], a                                    ; $6945: $e0 $ba
	sub  d                                           ; $6947: $92
	ld   [hl], c                                     ; $6948: $71
	ld   l, l                                        ; $6949: $6d
	sub  a                                           ; $694a: $97
	dec  c                                           ; $694b: $0d
	inc  bc                                          ; $694c: $03
	ld   h, l                                        ; $694d: $65
	inc  bc                                          ; $694e: $03
	add  b                                           ; $694f: $80
	dec  b                                           ; $6950: $05
	db   $10                                         ; $6951: $10
	sub  d                                           ; $6952: $92
	sbc  a                                           ; $6953: $9f
	dec  c                                           ; $6954: $0d
	nop                                              ; $6955: $00
	ld   a, [bc]                                     ; $6956: $0a
	ld   b, $02                                      ; $6957: $06 $02
	inc  c                                           ; $6959: $0c
	inc  e                                           ; $695a: $1c
	dec  b                                           ; $695b: $05
	ld   [bc], a                                     ; $695c: $02
	ld   [bc], a                                     ; $695d: $02
	dec  e                                           ; $695e: $1d
	ld   b, b                                        ; $695f: $40
	dec  d                                           ; $6960: $15
	inc  bc                                          ; $6961: $03
	dec  d                                           ; $6962: $15
	ld   bc, $2901                                   ; $6963: $01 $01 $29
	nop                                              ; $6966: $00
	ld   bc, $956f                                   ; $6967: $01 $6f $95
	ld   [hl], c                                     ; $696a: $71
	halt                                             ; $696b: $76
	ldh  [$ba], a                                    ; $696c: $e0 $ba
	ld   e, d                                        ; $696e: $5a
	inc  b                                           ; $696f: $04
	rrca                                             ; $6970: $0f
	ld   d, d                                        ; $6971: $52
	ld   a, b                                        ; $6972: $78
	db   $fc                                         ; $6973: $fc
	sbc  a                                           ; $6974: $9f
	dec  c                                           ; $6975: $0d
	adc  [hl]                                        ; $6976: $8e
	ld   l, b                                        ; $6977: $68
	ld   e, c                                        ; $6978: $59
	ld   h, l                                        ; $6979: $65
	ld   d, d                                        ; $697a: $52
	ld   e, c                                        ; $697b: $59
	ld   a, b                                        ; $697c: $78
	db   $fc                                         ; $697d: $fc
	sbc  a                                           ; $697e: $9f
	dec  c                                           ; $697f: $0d
	nop                                              ; $6980: $00
	ld   a, [bc]                                     ; $6981: $0a
	ld   b, $02                                      ; $6982: $06 $02
	inc  c                                           ; $6984: $0c
	dec  b                                           ; $6985: $05
	ld   b, b                                        ; $6986: $40
	ld   [hl], h                                     ; $6987: $74
	inc  bc                                          ; $6988: $03
	ld   [hl], h                                     ; $6989: $74
	inc  bc                                          ; $698a: $03
	rst  $38                                         ; $698b: $ff
	jr   z, jr_054_698e                              ; $698c: $28 $00

jr_054_698e:
	dec  b                                           ; $698e: $05
	ld   b, b                                        ; $698f: $40
	rst  $38                                         ; $6990: $ff
	ld   bc, $0000                                   ; $6991: $01 $00 $00
	ld   b, $14                                      ; $6994: $06 $14
	inc  c                                           ; $6996: $0c
	dec  c                                           ; $6997: $0d
	nop                                              ; $6998: $00
	nop                                              ; $6999: $00
	rrca                                             ; $699a: $0f
	nop                                              ; $699b: $00
	ld   bc, $0b0c                                   ; $699c: $01 $0c $0b
	inc  e                                           ; $699f: $1c
	dec  b                                           ; $69a0: $05
	nop                                              ; $69a1: $00
	nop                                              ; $69a2: $00
	ld   bc, $6803                                   ; $69a3: $01 $03 $68
	ld   a, l                                        ; $69a6: $7d
	sbc  [hl]                                        ; $69a7: $9e
	ld   [bc], a                                     ; $69a8: $02
	and  l                                           ; $69a9: $a5
	ld   a, h                                        ; $69aa: $7c
	halt                                             ; $69ab: $76
	inc  b                                           ; $69ac: $04
	ld   c, l                                        ; $69ad: $4d
	ld   [hl], h                                     ; $69ae: $74
	sbc  c                                           ; $69af: $99
	ld   e, a                                        ; $69b0: $5f
	ld   [hl], a                                     ; $69b1: $77
	sbc  [hl]                                        ; $69b2: $9e
	dec  c                                           ; $69b3: $0d
	inc  bc                                          ; $69b4: $03
	and  [hl]                                        ; $69b5: $a6
	inc  bc                                          ; $69b6: $03
	ld   [hl], b                                     ; $69b7: $70
	ld   e, l                                        ; $69b8: $5d
	sub  d                                           ; $69b9: $92
	sub  a                                           ; $69ba: $97
	ld   a, b                                        ; $69bb: $78
	and  e                                           ; $69bc: $a3
	xor  h                                           ; $69bd: $ac
	push af                                          ; $69be: $f5
	ld   a, e                                        ; $69bf: $7b
	and  c                                           ; $69c0: $a1
	sbc  a                                           ; $69c1: $9f
	dec  c                                           ; $69c2: $0d
	ld   e, d                                        ; $69c3: $5a
	and  c                                           ; $69c4: $a1
	ld   a, [hl]                                     ; $69c5: $7e
	ld   [hl], c                                     ; $69c6: $71
	ld   [hl], h                                     ; $69c7: $74
	sub  d                                           ; $69c8: $92
	sbc  a                                           ; $69c9: $9f
	dec  c                                           ; $69ca: $0d
	nop                                              ; $69cb: $00
	ld   a, [bc]                                     ; $69cc: $0a
	ld   bc, $688c                                   ; $69cd: $01 $8c $68
	sbc  [hl]                                        ; $69d0: $9e
	ld   a, [bc]                                     ; $69d1: $0a
	ld   [bc], a                                     ; $69d2: $02
	ld   [bc], a                                     ; $69d3: $02
	ld   [bc], a                                     ; $69d4: $02
	pop  de                                          ; $69d5: $d1
	db   $ed                                         ; $69d6: $ed
	rst  $10                                         ; $69d7: $d7
	sbc  [hl]                                        ; $69d8: $9e
	xor  $d1                                         ; $69d9: $ee $d1
	ei                                               ; $69db: $fb
	ld   a, [bc]                                     ; $69dc: $0a
	inc  bc                                          ; $69dd: $03
	sbc  a                                           ; $69de: $9f
	dec  c                                           ; $69df: $0d
	inc  bc                                          ; $69e0: $03
	ld   l, b                                        ; $69e1: $68
	ld   a, c                                        ; $69e2: $79
	sbc  [hl]                                        ; $69e3: $9e
	ld   a, [bc]                                     ; $69e4: $0a
	ld   [bc], a                                     ; $69e5: $02
	inc  bc                                          ; $69e6: $03
	ld   bc, $edd1                                   ; $69e7: $01 $d1 $ed
	rst  $10                                         ; $69ea: $d7
	sbc  [hl]                                        ; $69eb: $9e
	xor  $d1                                         ; $69ec: $ee $d1
	ei                                               ; $69ee: $fb
	ld   a, [bc]                                     ; $69ef: $0a
	inc  bc                                          ; $69f0: $03
	sbc  a                                           ; $69f1: $9f
	dec  c                                           ; $69f2: $0d
	inc  bc                                          ; $69f3: $03
	ld   l, c                                        ; $69f4: $69
	ld   [bc], a                                     ; $69f5: $02
	xor  d                                           ; $69f6: $aa
	ld   a, c                                        ; $69f7: $79
	ld   a, [bc]                                     ; $69f8: $0a
	ld   [bc], a                                     ; $69f9: $02
	inc  bc                                          ; $69fa: $03
	ld   a, [bc]                                     ; $69fb: $0a
	pop  de                                          ; $69fc: $d1
	db   $ed                                         ; $69fd: $ed
	rst  $10                                         ; $69fe: $d7
	and  b                                           ; $69ff: $a0
	ld   d, b                                        ; $6a00: $50
	ld   e, a                                        ; $6a01: $5f
	sbc  c                                           ; $6a02: $99
	ld   a, [bc]                                     ; $6a03: $0a
	inc  bc                                          ; $6a04: $03
	sbc  a                                           ; $6a05: $9f
	dec  c                                           ; $6a06: $0d
	nop                                              ; $6a07: $00
	ld   a, [bc]                                     ; $6a08: $0a
	ld   bc, $7889                                   ; $6a09: $01 $89 $78
	sbc  [hl]                                        ; $6a0c: $9e
	ld   d, d                                        ; $6a0d: $52
	ld   e, l                                        ; $6a0e: $5d
	ld   [hl], l                                     ; $6a0f: $75
	sbc  a                                           ; $6a10: $9f
	dec  c                                           ; $6a11: $0d
	nop                                              ; $6a12: $00
	ld   a, [bc]                                     ; $6a13: $0a
	add  hl, de                                      ; $6a14: $19
	inc  b                                           ; $6a15: $04
	inc  bc                                          ; $6a16: $03
	ld   [bc], a                                     ; $6a17: $02
	ld   [bc], a                                     ; $6a18: $02
	pop  de                                          ; $6a19: $d1
	db   $ed                                         ; $6a1a: $ed
	rst  $10                                         ; $6a1b: $d7
	sbc  [hl]                                        ; $6a1c: $9e
	xor  $d1                                         ; $6a1d: $ee $d1
	ei                                               ; $6a1f: $fb
	nop                                              ; $6a20: $00
	nop                                              ; $6a21: $00
	ld   [bc], a                                     ; $6a22: $02
	ld   [bc], a                                     ; $6a23: $02
	pop  de                                          ; $6a24: $d1
	db   $ed                                         ; $6a25: $ed
	rst  $10                                         ; $6a26: $d7
	and  b                                           ; $6a27: $a0
	ld   d, b                                        ; $6a28: $50
	ld   e, a                                        ; $6a29: $5f
	sbc  c                                           ; $6a2a: $99
	nop                                              ; $6a2b: $00
	ld   bc, $0a03                                   ; $6a2c: $01 $03 $0a
	pop  de                                          ; $6a2f: $d1
	db   $ed                                         ; $6a30: $ed
	rst  $10                                         ; $6a31: $d7
	sbc  [hl]                                        ; $6a32: $9e
	xor  $d1                                         ; $6a33: $ee $d1
	ei                                               ; $6a35: $fb
	nop                                              ; $6a36: $00
	ld   [bc], a                                     ; $6a37: $02
	rlca                                             ; $6a38: $07
	db   $d3                                         ; $6a39: $d3
	inc  c                                           ; $6a3a: $0c
	ld   [bc], a                                     ; $6a3b: $02
	inc  bc                                          ; $6a3c: $03
	ld   bc, $2000                                   ; $6a3d: $01 $00 $20
	nop                                              ; $6a40: $00
	rlca                                             ; $6a41: $07
	db   $ec                                         ; $6a42: $ec
	inc  c                                           ; $6a43: $0c
	ld   [bc], a                                     ; $6a44: $02
	inc  bc                                          ; $6a45: $03
	ld   bc, $2001                                   ; $6a46: $01 $01 $20
	nop                                              ; $6a49: $00
	rlca                                             ; $6a4a: $07
	db   $ec                                         ; $6a4b: $ec
	inc  c                                           ; $6a4c: $0c
	ld   [bc], a                                     ; $6a4d: $02
	inc  bc                                          ; $6a4e: $03
	ld   bc, $2002                                   ; $6a4f: $01 $02 $20
	nop                                              ; $6a52: $00
	ld   b, $23                                      ; $6a53: $06 $23
	dec  c                                           ; $6a55: $0d
	inc  e                                           ; $6a56: $1c
	dec  b                                           ; $6a57: $05
	ld   bc, $0101                                   ; $6a58: $01 $01 $01
	sub  [hl]                                        ; $6a5b: $96
	ld   [hl], c                                     ; $6a5c: $71
	ld   h, l                                        ; $6a5d: $65
	sub  c                                           ; $6a5e: $91
	ld   a, [$540d]                                  ; $6a5f: $fa $0d $54
	adc  h                                           ; $6a62: $8c
	ld   d, d                                        ; $6a63: $52
	sbc  [hl]                                        ; $6a64: $9e
	ld   d, h                                        ; $6a65: $54
	adc  h                                           ; $6a66: $8c
	ld   d, d                                        ; $6a67: $52
	ld   a, [$000d]                                  ; $6a68: $fa $0d $00
	ld   a, [bc]                                     ; $6a6b: $0a
	ld   b, $66                                      ; $6a6c: $06 $66
	dec  c                                           ; $6a6e: $0d
	inc  e                                           ; $6a6f: $1c
	dec  b                                           ; $6a70: $05
	rlca                                             ; $6a71: $07
	rlca                                             ; $6a72: $07
	ld   bc, $916f                                   ; $6a73: $01 $6f $91
	ld   d, h                                        ; $6a76: $54
	sbc  [hl]                                        ; $6a77: $9e
	ld   l, a                                        ; $6a78: $6f
	sub  c                                           ; $6a79: $91
	ld   d, h                                        ; $6a7a: $54
	sbc  a                                           ; $6a7b: $9f
	dec  c                                           ; $6a7c: $0d
	nop                                              ; $6a7d: $00
	dec  b                                           ; $6a7e: $05
	ld   b, b                                        ; $6a7f: $40
	rst  $38                                         ; $6a80: $ff
	inc  bc                                          ; $6a81: $03
	rst  $38                                         ; $6a82: $ff
	ld   bc, $2801                                   ; $6a83: $01 $01 $28
	nop                                              ; $6a86: $00
	ld   bc, $6f8c                                   ; $6a87: $01 $8c $6f
	ld   e, d                                        ; $6a8a: $5a
	ld   d, [hl]                                     ; $6a8b: $56
	ld   [hl], h                                     ; $6a8c: $74
	sbc  c                                           ; $6a8d: $99
	sub  d                                           ; $6a8e: $92
	and  c                                           ; $6a8f: $a1
	ld   e, c                                        ; $6a90: $59
	sbc  a                                           ; $6a91: $9f
	dec  c                                           ; $6a92: $0d
	sub  b                                           ; $6a93: $90
	ld   d, h                                        ; $6a94: $54
	ld   [bc], a                                     ; $6a95: $02
	jr   nz, jr_054_6a9a                             ; $6a96: $20 $02

	sub  e                                           ; $6a98: $93
	ld   a, l                                        ; $6a99: $7d

jr_054_6a9a:
	ld   h, [hl]                                     ; $6a9a: $66
	adc  a                                           ; $6a9b: $8f
	ld   e, c                                        ; $6a9c: $59
	sub  a                                           ; $6a9d: $97
	sub  d                                           ; $6a9e: $92
	sbc  a                                           ; $6a9f: $9f
	dec  c                                           ; $6aa0: $0d
	nop                                              ; $6aa1: $00
	ld   a, [bc]                                     ; $6aa2: $0a
	ld   b, $4a                                      ; $6aa3: $06 $4a
	inc  c                                           ; $6aa5: $0c
	inc  e                                           ; $6aa6: $1c
	dec  b                                           ; $6aa7: $05
	rlca                                             ; $6aa8: $07
	rlca                                             ; $6aa9: $07
	dec  e                                           ; $6aaa: $1d
	ld   b, b                                        ; $6aab: $40
	dec  d                                           ; $6aac: $15
	inc  bc                                          ; $6aad: $03
	dec  d                                           ; $6aae: $15
	ld   bc, $2901                                   ; $6aaf: $01 $01 $29
	nop                                              ; $6ab2: $00
	ld   bc, $b2dd                                   ; $6ab3: $01 $dd $b2
	ei                                               ; $6ab6: $fb
	ld   [hl], c                                     ; $6ab7: $71
	halt                                             ; $6ab8: $76
	ld   h, l                                        ; $6ab9: $65
	ld   [hl], h                                     ; $6aba: $74
	and  c                                           ; $6abb: $a1
	halt                                             ; $6abc: $76
	sbc  [hl]                                        ; $6abd: $9e
	dec  c                                           ; $6abe: $0d
	nop                                              ; $6abf: $00
	dec  b                                           ; $6ac0: $05
	ld   b, b                                        ; $6ac1: $40
	rst  $38                                         ; $6ac2: $ff
	inc  bc                                          ; $6ac3: $03
	rst  $38                                         ; $6ac4: $ff
	ld   bc, $2801                                   ; $6ac5: $01 $01 $28
	nop                                              ; $6ac8: $00
	ld   bc, $916f                                   ; $6ac9: $01 $6f $91
	ld   [hl], c                                     ; $6acc: $71
	ld   l, a                                        ; $6acd: $6f
	sub  c                                           ; $6ace: $91
	halt                                             ; $6acf: $76
	sub  d                                           ; $6ad0: $92
	ld   [hl], c                                     ; $6ad1: $71
	ld   [hl], h                                     ; $6ad2: $74
	sub  d                                           ; $6ad3: $92
	sbc  a                                           ; $6ad4: $9f
	dec  c                                           ; $6ad5: $0d
	sub  b                                           ; $6ad6: $90
	ld   d, h                                        ; $6ad7: $54
	ld   [bc], a                                     ; $6ad8: $02
	jr   nz, jr_054_6add                             ; $6ad9: $20 $02

	sub  e                                           ; $6adb: $93
	ld   a, l                                        ; $6adc: $7d

jr_054_6add:
	ld   h, [hl]                                     ; $6add: $66
	adc  a                                           ; $6ade: $8f
	ld   e, c                                        ; $6adf: $59
	sub  a                                           ; $6ae0: $97
	sub  d                                           ; $6ae1: $92
	sbc  a                                           ; $6ae2: $9f
	dec  c                                           ; $6ae3: $0d
	nop                                              ; $6ae4: $00
	ld   a, [bc]                                     ; $6ae5: $0a
	ld   b, $4a                                      ; $6ae6: $06 $4a
	inc  c                                           ; $6ae8: $0c
	add  hl, de                                      ; $6ae9: $19
	inc  b                                           ; $6aea: $04
	inc  bc                                          ; $6aeb: $03
	inc  bc                                          ; $6aec: $03
	ld   bc, $edd1                                   ; $6aed: $01 $d1 $ed
	rst  $10                                         ; $6af0: $d7
	sbc  [hl]                                        ; $6af1: $9e
	xor  $d1                                         ; $6af2: $ee $d1
	ei                                               ; $6af4: $fb
	nop                                              ; $6af5: $00
	nop                                              ; $6af6: $00
	inc  bc                                          ; $6af7: $03
	ld   bc, $edd1                                   ; $6af8: $01 $d1 $ed
	rst  $10                                         ; $6afb: $d7
	and  b                                           ; $6afc: $a0
	ld   d, b                                        ; $6afd: $50
	ld   e, a                                        ; $6afe: $5f
	sbc  c                                           ; $6aff: $99
	nop                                              ; $6b00: $00
	ld   bc, $0a03                                   ; $6b01: $01 $03 $0a
	pop  de                                          ; $6b04: $d1
	db   $ed                                         ; $6b05: $ed
	rst  $10                                         ; $6b06: $d7
	sbc  [hl]                                        ; $6b07: $9e
	xor  $d1                                         ; $6b08: $ee $d1
	ei                                               ; $6b0a: $fb
	nop                                              ; $6b0b: $00
	ld   [bc], a                                     ; $6b0c: $02
	rlca                                             ; $6b0d: $07
	xor  b                                           ; $6b0e: $a8
	dec  c                                           ; $6b0f: $0d
	ld   [bc], a                                     ; $6b10: $02
	inc  bc                                          ; $6b11: $03
	ld   bc, $2000                                   ; $6b12: $01 $00 $20
	nop                                              ; $6b15: $00
	rlca                                             ; $6b16: $07
	db   $ec                                         ; $6b17: $ec
	inc  c                                           ; $6b18: $0c
	ld   [bc], a                                     ; $6b19: $02
	inc  bc                                          ; $6b1a: $03
	ld   bc, $2001                                   ; $6b1b: $01 $01 $20
	nop                                              ; $6b1e: $00
	rlca                                             ; $6b1f: $07
	db   $ec                                         ; $6b20: $ec
	inc  c                                           ; $6b21: $0c
	ld   [bc], a                                     ; $6b22: $02
	inc  bc                                          ; $6b23: $03
	ld   bc, $2002                                   ; $6b24: $01 $02 $20
	nop                                              ; $6b27: $00
	ld   b, $23                                      ; $6b28: $06 $23
	dec  c                                           ; $6b2a: $0d
	inc  e                                           ; $6b2b: $1c
	dec  b                                           ; $6b2c: $05
	ld   bc, $0101                                   ; $6b2d: $01 $01 $01
	ld   e, b                                        ; $6b30: $58
	ld   e, b                                        ; $6b31: $58
	sbc  [hl]                                        ; $6b32: $9e
	xor  c                                           ; $6b33: $a9
	xor  c                                           ; $6b34: $a9
	ld   [bc], a                                     ; $6b35: $02
	scf                                              ; $6b36: $37
	ld   h, [hl]                                     ; $6b37: $66
	sub  d                                           ; $6b38: $92
	ld   [hl], l                                     ; $6b39: $75
	sbc  a                                           ; $6b3a: $9f
	dec  c                                           ; $6b3b: $0d
	nop                                              ; $6b3c: $00
	ld   a, [bc]                                     ; $6b3d: $0a
	ld   b, $be                                      ; $6b3e: $06 $be
	dec  c                                           ; $6b40: $0d
	add  hl, de                                      ; $6b41: $19
	inc  b                                           ; $6b42: $04
	inc  bc                                          ; $6b43: $03
	inc  bc                                          ; $6b44: $03
	ld   a, [bc]                                     ; $6b45: $0a
	pop  de                                          ; $6b46: $d1
	db   $ed                                         ; $6b47: $ed
	rst  $10                                         ; $6b48: $d7
	and  b                                           ; $6b49: $a0
	ld   d, b                                        ; $6b4a: $50
	ld   e, a                                        ; $6b4b: $5f
	sbc  c                                           ; $6b4c: $99
	nop                                              ; $6b4d: $00
	nop                                              ; $6b4e: $00
	inc  bc                                          ; $6b4f: $03
	ld   a, [bc]                                     ; $6b50: $0a
	pop  de                                          ; $6b51: $d1
	db   $ed                                         ; $6b52: $ed
	rst  $10                                         ; $6b53: $d7
	sbc  [hl]                                        ; $6b54: $9e
	xor  $d1                                         ; $6b55: $ee $d1
	ei                                               ; $6b57: $fb
	nop                                              ; $6b58: $00
	ld   bc, $0202                                   ; $6b59: $01 $02 $02
	pop  de                                          ; $6b5c: $d1
	db   $ed                                         ; $6b5d: $ed
	rst  $10                                         ; $6b5e: $d7
	and  b                                           ; $6b5f: $a0
	sbc  [hl]                                        ; $6b60: $9e
	xor  $d1                                         ; $6b61: $ee $d1
	ei                                               ; $6b63: $fb
	nop                                              ; $6b64: $00
	ld   [bc], a                                     ; $6b65: $02
	rlca                                             ; $6b66: $07
	ld   bc, $020e                                   ; $6b67: $01 $0e $02
	inc  bc                                          ; $6b6a: $03
	ld   bc, $2000                                   ; $6b6b: $01 $00 $20
	nop                                              ; $6b6e: $00
	rlca                                             ; $6b6f: $07
	db   $ec                                         ; $6b70: $ec
	inc  c                                           ; $6b71: $0c
	ld   [bc], a                                     ; $6b72: $02
	inc  bc                                          ; $6b73: $03
	ld   bc, $2001                                   ; $6b74: $01 $01 $20
	nop                                              ; $6b77: $00
	rlca                                             ; $6b78: $07
	db   $ec                                         ; $6b79: $ec
	inc  c                                           ; $6b7a: $0c
	ld   [bc], a                                     ; $6b7b: $02
	inc  bc                                          ; $6b7c: $03
	ld   bc, $2002                                   ; $6b7d: $01 $02 $20
	nop                                              ; $6b80: $00
	ld   b, $23                                      ; $6b81: $06 $23
	dec  c                                           ; $6b83: $0d
	inc  e                                           ; $6b84: $1c
	dec  b                                           ; $6b85: $05
	ld   bc, $0101                                   ; $6b86: $01 $01 $01
	sub  [hl]                                        ; $6b89: $96
	ld   [hl], c                                     ; $6b8a: $71
	ld   h, l                                        ; $6b8b: $65
	sub  c                                           ; $6b8c: $91
	sbc  a                                           ; $6b8d: $9f
	sub  b                                           ; $6b8e: $90
	ld   d, h                                        ; $6b8f: $54
	ld   l, a                                        ; $6b90: $6f
	sub  l                                           ; $6b91: $95
	ld   d, d                                        ; $6b92: $52
	sub  d                                           ; $6b93: $92
	ld   a, [$000d]                                  ; $6b94: $fa $0d $00
	ld   a, [bc]                                     ; $6b97: $0a
	ld   bc, $6596                                   ; $6b98: $01 $96 $65
	sbc  [hl]                                        ; $6b9b: $9e
	ld   [bc], a                                     ; $6b9c: $02
	and  l                                           ; $6b9d: $a5
	inc  b                                           ; $6b9e: $04
	add  hl, hl                                      ; $6b9f: $29
	ld   a, l                                        ; $6ba0: $7d
	ld   [bc], a                                     ; $6ba1: $02
	and  l                                           ; $6ba2: $a5
	ld   a, h                                        ; $6ba3: $7c
	ld   [bc], a                                     ; $6ba4: $02
	ld   a, [hl-]                                    ; $6ba5: $3a
	ld   [bc], a                                     ; $6ba6: $02
	ld   a, [$fa92]                                  ; $6ba7: $fa $92 $fa
	dec  c                                           ; $6baa: $0d
	ld   [bc], a                                     ; $6bab: $02
	ld   a, [$7904]                                  ; $6bac: $fa $04 $79
	ld   a, l                                        ; $6baf: $7d
	ld   e, b                                        ; $6bb0: $58
	adc  d                                           ; $6bb1: $8a
	ld   d, [hl]                                     ; $6bb2: $56
	ld   [hl], h                                     ; $6bb3: $74
	sbc  c                                           ; $6bb4: $99
	sub  d                                           ; $6bb5: $92
	sbc  e                                           ; $6bb6: $9b
	sbc  a                                           ; $6bb7: $9f
	dec  c                                           ; $6bb8: $0d
	adc  c                                           ; $6bb9: $89
	ld   a, b                                        ; $6bba: $78
	sbc  [hl]                                        ; $6bbb: $9e
	ld   d, d                                        ; $6bbc: $52
	ld   e, l                                        ; $6bbd: $5d
	ld   [hl], l                                     ; $6bbe: $75
	sbc  a                                           ; $6bbf: $9f
	dec  c                                           ; $6bc0: $0d
	nop                                              ; $6bc1: $00

Call_054_6bc2:
	ld   a, [bc]                                     ; $6bc2: $0a
	add  hl, de                                      ; $6bc3: $19
	inc  b                                           ; $6bc4: $04
	inc  bc                                          ; $6bc5: $03
	inc  bc                                          ; $6bc6: $03
	ld   a, [bc]                                     ; $6bc7: $0a
	pop  de                                          ; $6bc8: $d1
	db   $ed                                         ; $6bc9: $ed
	rst  $10                                         ; $6bca: $d7
	and  b                                           ; $6bcb: $a0
	ld   h, l                                        ; $6bcc: $65
	adc  a                                           ; $6bcd: $8f
	sbc  c                                           ; $6bce: $99
	nop                                              ; $6bcf: $00
	nop                                              ; $6bd0: $00
	ld   [bc], a                                     ; $6bd1: $02
	ld   [bc], a                                     ; $6bd2: $02
	pop  de                                          ; $6bd3: $d1
	db   $ed                                         ; $6bd4: $ed
	rst  $10                                         ; $6bd5: $d7
	sbc  [hl]                                        ; $6bd6: $9e
	xor  $d1                                         ; $6bd7: $ee $d1
	ei                                               ; $6bd9: $fb
	nop                                              ; $6bda: $00
	ld   bc, $0103                                   ; $6bdb: $01 $03 $01
	pop  de                                          ; $6bde: $d1
	db   $ed                                         ; $6bdf: $ed
	rst  $10                                         ; $6be0: $d7
	sbc  [hl]                                        ; $6be1: $9e
	xor  $d1                                         ; $6be2: $ee $d1
	ei                                               ; $6be4: $fb
	nop                                              ; $6be5: $00
	ld   [bc], a                                     ; $6be6: $02
	rlca                                             ; $6be7: $07
	add  d                                           ; $6be8: $82
	ld   c, $02                                      ; $6be9: $0e $02
	inc  bc                                          ; $6beb: $03
	ld   bc, $2000                                   ; $6bec: $01 $00 $20
	nop                                              ; $6bef: $00
	rlca                                             ; $6bf0: $07
	sbc  b                                           ; $6bf1: $98
	ld   c, $02                                      ; $6bf2: $0e $02
	inc  bc                                          ; $6bf4: $03
	ld   bc, $2001                                   ; $6bf5: $01 $01 $20
	nop                                              ; $6bf8: $00
	rlca                                             ; $6bf9: $07
	sbc  b                                           ; $6bfa: $98
	ld   c, $02                                      ; $6bfb: $0e $02
	inc  bc                                          ; $6bfd: $03
	ld   bc, $2002                                   ; $6bfe: $01 $02 $20
	nop                                              ; $6c01: $00
	ld   b, $35                                      ; $6c02: $06 $35
	rrca                                             ; $6c04: $0f
	inc  e                                           ; $6c05: $1c
	dec  b                                           ; $6c06: $05
	ld   bc, $0101                                   ; $6c07: $01 $01 $01
	sub  [hl]                                        ; $6c0a: $96
	ld   h, l                                        ; $6c0b: $65
	sbc  [hl]                                        ; $6c0c: $9e
	ld   l, e                                        ; $6c0d: $6b
	ld   a, h                                        ; $6c0e: $7c
	inc  bc                                          ; $6c0f: $03
	cp   $03                                         ; $6c10: $fe $03
	add  [hl]                                        ; $6c12: $86
	sub  d                                           ; $6c13: $92
	sbc  a                                           ; $6c14: $9f
	dec  c                                           ; $6c15: $0d
	nop                                              ; $6c16: $00
	ld   a, [bc]                                     ; $6c17: $0a
	ld   b, $78                                      ; $6c18: $06 $78
	rrca                                             ; $6c1a: $0f
	inc  e                                           ; $6c1b: $1c
	dec  b                                           ; $6c1c: $05
	rlca                                             ; $6c1d: $07
	rlca                                             ; $6c1e: $07
	ld   bc, $aca3                                   ; $6c1f: $01 $a3 $ac
	push af                                          ; $6c22: $f5
	ld   e, d                                        ; $6c23: $5a
	ld   a, b                                        ; $6c24: $78
	db   $fc                                         ; $6c25: $fc
	sbc  a                                           ; $6c26: $9f
	dec  c                                           ; $6c27: $0d
	nop                                              ; $6c28: $00
	dec  b                                           ; $6c29: $05
	ld   b, b                                        ; $6c2a: $40
	rst  $38                                         ; $6c2b: $ff
	inc  bc                                          ; $6c2c: $03
	rst  $38                                         ; $6c2d: $ff
	ld   bc, $2801                                   ; $6c2e: $01 $01 $28
	nop                                              ; $6c31: $00
	ld   bc, $6f8c                                   ; $6c32: $01 $8c $6f
	ld   e, d                                        ; $6c35: $5a
	ld   d, [hl]                                     ; $6c36: $56
	ld   [hl], h                                     ; $6c37: $74
	sbc  c                                           ; $6c38: $99
	sub  d                                           ; $6c39: $92
	and  c                                           ; $6c3a: $a1
	sbc  a                                           ; $6c3b: $9f
	dec  c                                           ; $6c3c: $0d
	sub  b                                           ; $6c3d: $90
	ld   d, h                                        ; $6c3e: $54
	ld   [bc], a                                     ; $6c3f: $02
	jr   nz, jr_054_6c44                             ; $6c40: $20 $02

	sub  e                                           ; $6c42: $93
	ld   a, l                                        ; $6c43: $7d

jr_054_6c44:
	ld   h, [hl]                                     ; $6c44: $66
	adc  a                                           ; $6c45: $8f
	ld   e, c                                        ; $6c46: $59
	sub  a                                           ; $6c47: $97
	sub  d                                           ; $6c48: $92
	sbc  a                                           ; $6c49: $9f
	dec  c                                           ; $6c4a: $0d
	nop                                              ; $6c4b: $00
	ld   a, [bc]                                     ; $6c4c: $0a
	ld   bc, $5656                                   ; $6c4d: $01 $56 $56
	ld   e, c                                        ; $6c50: $59
	sbc  [hl]                                        ; $6c51: $9e
	ld   [bc], a                                     ; $6c52: $02
	and  l                                           ; $6c53: $a5
	inc  b                                           ; $6c54: $04
	add  hl, hl                                      ; $6c55: $29
	ld   a, l                                        ; $6c56: $7d
	ld   h, e                                        ; $6c57: $63
	ld   [hl], c                                     ; $6c58: $71
	ld   e, e                                        ; $6c59: $5b
	halt                                             ; $6c5a: $76
	ld   [bc], a                                     ; $6c5b: $02
	ld   a, [hl-]                                    ; $6c5c: $3a
	ld   a, h                                        ; $6c5d: $7c
	dec  c                                           ; $6c5e: $0d
	inc  bc                                          ; $6c5f: $03
	ld   l, e                                        ; $6c60: $6b
	ld   [bc], a                                     ; $6c61: $02
	ld   a, [$7879]                                  ; $6c62: $fa $79 $78
	and  c                                           ; $6c65: $a1
	ld   a, e                                        ; $6c66: $7b
	and  c                                           ; $6c67: $a1
	ld   [hl], l                                     ; $6c68: $75
	sbc  a                                           ; $6c69: $9f
	dec  c                                           ; $6c6a: $0d
	ld   h, l                                        ; $6c6b: $65
	ld   [hl], c                                     ; $6c6c: $71
	ld   e, c                                        ; $6c6d: $59
	sbc  b                                           ; $6c6e: $98
	ld   l, l                                        ; $6c6f: $6d
	ld   a, h                                        ; $6c70: $7c
	adc  [hl]                                        ; $6c71: $8e
	ld   [hl], l                                     ; $6c72: $75
	sbc  a                                           ; $6c73: $9f
	dec  c                                           ; $6c74: $0d
	nop                                              ; $6c75: $00
	ld   a, [bc]                                     ; $6c76: $0a
	ld   bc, $688c                                   ; $6c77: $01 $8c $68
	sbc  [hl]                                        ; $6c7a: $9e
	ld   a, [bc]                                     ; $6c7b: $0a
	ld   [bc], a                                     ; $6c7c: $02
	inc  bc                                          ; $6c7d: $03
	ld   a, [bc]                                     ; $6c7e: $0a
	pop  de                                          ; $6c7f: $d1
	db   $ed                                         ; $6c80: $ed
	rst  $10                                         ; $6c81: $d7
	and  b                                           ; $6c82: $a0
	ld   h, l                                        ; $6c83: $65
	adc  a                                           ; $6c84: $8f
	sbc  c                                           ; $6c85: $99
	ld   a, [bc]                                     ; $6c86: $0a
	inc  bc                                          ; $6c87: $03
	sbc  a                                           ; $6c88: $9f
	dec  c                                           ; $6c89: $0d
	inc  bc                                          ; $6c8a: $03
	ld   l, b                                        ; $6c8b: $68
	ld   a, c                                        ; $6c8c: $79
	sbc  [hl]                                        ; $6c8d: $9e
	ld   a, [bc]                                     ; $6c8e: $0a
	ld   [bc], a                                     ; $6c8f: $02
	inc  bc                                          ; $6c90: $03
	ld   bc, $edd1                                   ; $6c91: $01 $d1 $ed
	rst  $10                                         ; $6c94: $d7
	sbc  [hl]                                        ; $6c95: $9e
	xor  $d1                                         ; $6c96: $ee $d1
	ei                                               ; $6c98: $fb
	ld   a, [bc]                                     ; $6c99: $0a
	inc  bc                                          ; $6c9a: $03
	sbc  a                                           ; $6c9b: $9f
	dec  c                                           ; $6c9c: $0d
	inc  bc                                          ; $6c9d: $03
	ld   l, c                                        ; $6c9e: $69
	ld   [bc], a                                     ; $6c9f: $02
	xor  d                                           ; $6ca0: $aa
	ld   a, c                                        ; $6ca1: $79
	sbc  [hl]                                        ; $6ca2: $9e
	ld   a, [bc]                                     ; $6ca3: $0a
	ld   [bc], a                                     ; $6ca4: $02
	ld   [bc], a                                     ; $6ca5: $02
	ld   [bc], a                                     ; $6ca6: $02
	pop  de                                          ; $6ca7: $d1
	db   $ed                                         ; $6ca8: $ed
	rst  $10                                         ; $6ca9: $d7
	sbc  [hl]                                        ; $6caa: $9e
	xor  $d1                                         ; $6cab: $ee $d1
	ei                                               ; $6cad: $fb
	ld   a, [bc]                                     ; $6cae: $0a
	inc  bc                                          ; $6caf: $03
	sub  d                                           ; $6cb0: $92
	sbc  a                                           ; $6cb1: $9f
	dec  c                                           ; $6cb2: $0d
	nop                                              ; $6cb3: $00
	ld   a, [bc]                                     ; $6cb4: $0a
	ld   b, $40                                      ; $6cb5: $06 $40
	ld   c, $1c                                      ; $6cb7: $0e $1c
	dec  b                                           ; $6cb9: $05
	rlca                                             ; $6cba: $07
	rlca                                             ; $6cbb: $07
	dec  e                                           ; $6cbc: $1d
	ld   b, b                                        ; $6cbd: $40
	dec  d                                           ; $6cbe: $15
	inc  bc                                          ; $6cbf: $03
	dec  d                                           ; $6cc0: $15
	ld   bc, $2901                                   ; $6cc1: $01 $01 $29
	nop                                              ; $6cc4: $00
	ld   bc, $9789                                   ; $6cc5: $01 $89 $97
	adc  c                                           ; $6cc8: $89
	sub  a                                           ; $6cc9: $97
	sbc  [hl]                                        ; $6cca: $9e
	db   $dd                                         ; $6ccb: $dd
	ei                                               ; $6ccc: $fb
	ld   [hl], c                                     ; $6ccd: $71
	halt                                             ; $6cce: $76
	ld   l, c                                        ; $6ccf: $69
	and  c                                           ; $6cd0: $a1
	halt                                             ; $6cd1: $76
	dec  c                                           ; $6cd2: $0d
	nop                                              ; $6cd3: $00
	dec  b                                           ; $6cd4: $05
	ld   b, b                                        ; $6cd5: $40
	rst  $38                                         ; $6cd6: $ff
	inc  bc                                          ; $6cd7: $03
	rst  $38                                         ; $6cd8: $ff
	ld   bc, $2801                                   ; $6cd9: $01 $01 $28
	nop                                              ; $6cdc: $00
	ld   bc, $916f                                   ; $6cdd: $01 $6f $91
	ld   [hl], c                                     ; $6ce0: $71
	ld   l, a                                        ; $6ce1: $6f
	sub  c                                           ; $6ce2: $91
	halt                                             ; $6ce3: $76
	sub  d                                           ; $6ce4: $92
	sbc  c                                           ; $6ce5: $99
	sbc  a                                           ; $6ce6: $9f
	dec  c                                           ; $6ce7: $0d
	sub  b                                           ; $6ce8: $90
	ld   d, h                                        ; $6ce9: $54
	ld   [bc], a                                     ; $6cea: $02
	jr   nz, jr_054_6cef                             ; $6ceb: $20 $02

	sub  e                                           ; $6ced: $93
	ld   a, l                                        ; $6cee: $7d

jr_054_6cef:
	ld   h, [hl]                                     ; $6cef: $66
	adc  a                                           ; $6cf0: $8f
	ld   e, c                                        ; $6cf1: $59
	sub  a                                           ; $6cf2: $97
	sub  d                                           ; $6cf3: $92
	sbc  a                                           ; $6cf4: $9f
	dec  c                                           ; $6cf5: $0d
	nop                                              ; $6cf6: $00
	ld   a, [bc]                                     ; $6cf7: $0a
	ld   b, $ca                                      ; $6cf8: $06 $ca
	ld   c, $19                                      ; $6cfa: $0e $19
	inc  b                                           ; $6cfc: $04
	inc  bc                                          ; $6cfd: $03
	inc  bc                                          ; $6cfe: $03
	ld   bc, $edd1                                   ; $6cff: $01 $d1 $ed
	rst  $10                                         ; $6d02: $d7
	sbc  [hl]                                        ; $6d03: $9e
	xor  $d1                                         ; $6d04: $ee $d1
	ei                                               ; $6d06: $fb
	nop                                              ; $6d07: $00
	nop                                              ; $6d08: $00
	inc  bc                                          ; $6d09: $03
	ld   bc, $edd1                                   ; $6d0a: $01 $d1 $ed
	rst  $10                                         ; $6d0d: $d7
	and  b                                           ; $6d0e: $a0
	ld   h, l                                        ; $6d0f: $65
	adc  a                                           ; $6d10: $8f
	sbc  c                                           ; $6d11: $99
	nop                                              ; $6d12: $00
	ld   bc, $0202                                   ; $6d13: $01 $02 $02
	pop  de                                          ; $6d16: $d1
	db   $ed                                         ; $6d17: $ed
	rst  $10                                         ; $6d18: $d7
	sbc  [hl]                                        ; $6d19: $9e
	xor  $d1                                         ; $6d1a: $ee $d1
	ei                                               ; $6d1c: $fb
	nop                                              ; $6d1d: $00
	ld   [bc], a                                     ; $6d1e: $02
	rlca                                             ; $6d1f: $07
	cp   d                                           ; $6d20: $ba
	rrca                                             ; $6d21: $0f
	ld   [bc], a                                     ; $6d22: $02
	inc  bc                                          ; $6d23: $03
	ld   bc, $2000                                   ; $6d24: $01 $00 $20
	nop                                              ; $6d27: $00
	rlca                                             ; $6d28: $07
	sbc  b                                           ; $6d29: $98
	ld   c, $02                                      ; $6d2a: $0e $02
	inc  bc                                          ; $6d2c: $03
	ld   bc, $2001                                   ; $6d2d: $01 $01 $20
	nop                                              ; $6d30: $00
	rlca                                             ; $6d31: $07
	sbc  b                                           ; $6d32: $98
	ld   c, $02                                      ; $6d33: $0e $02
	inc  bc                                          ; $6d35: $03
	ld   bc, $2002                                   ; $6d36: $01 $02 $20
	nop                                              ; $6d39: $00
	ld   b, $35                                      ; $6d3a: $06 $35
	rrca                                             ; $6d3c: $0f
	inc  e                                           ; $6d3d: $1c
	dec  b                                           ; $6d3e: $05
	ld   bc, $0101                                   ; $6d3f: $01 $01 $01
	ld   d, b                                        ; $6d42: $50
	halt                                             ; $6d43: $76
	ld   [bc], a                                     ; $6d44: $02
	jr   nz, jr_054_6d49                             ; $6d45: $20 $02

	sub  e                                           ; $6d47: $93
	sub  d                                           ; $6d48: $92

jr_054_6d49:
	sbc  [hl]                                        ; $6d49: $9e
	ld   e, d                                        ; $6d4a: $5a
	and  c                                           ; $6d4b: $a1
	ld   a, [hl]                                     ; $6d4c: $7e
	sbc  b                                           ; $6d4d: $98
	ld   a, [$000d]                                  ; $6d4e: $fa $0d $00
	ld   a, [bc]                                     ; $6d51: $0a
	ld   b, $d2                                      ; $6d52: $06 $d2
	rrca                                             ; $6d54: $0f
	add  hl, de                                      ; $6d55: $19
	inc  b                                           ; $6d56: $04
	inc  bc                                          ; $6d57: $03
	ld   [bc], a                                     ; $6d58: $02
	ld   [bc], a                                     ; $6d59: $02
	pop  de                                          ; $6d5a: $d1
	db   $ed                                         ; $6d5b: $ed
	rst  $10                                         ; $6d5c: $d7
	sbc  [hl]                                        ; $6d5d: $9e
	xor  $d1                                         ; $6d5e: $ee $d1
	ei                                               ; $6d60: $fb
	nop                                              ; $6d61: $00
	nop                                              ; $6d62: $00
	inc  bc                                          ; $6d63: $03
	ld   bc, $edd1                                   ; $6d64: $01 $d1 $ed
	rst  $10                                         ; $6d67: $d7
	sbc  [hl]                                        ; $6d68: $9e
	xor  $d1                                         ; $6d69: $ee $d1
	ei                                               ; $6d6b: $fb
	nop                                              ; $6d6c: $00
	ld   bc, $0202                                   ; $6d6d: $01 $02 $02
	pop  de                                          ; $6d70: $d1
	db   $ed                                         ; $6d71: $ed
	rst  $10                                         ; $6d72: $d7
	and  b                                           ; $6d73: $a0
	ld   h, l                                        ; $6d74: $65
	adc  a                                           ; $6d75: $8f
	sbc  c                                           ; $6d76: $99
	nop                                              ; $6d77: $00
	ld   [bc], a                                     ; $6d78: $02
	rlca                                             ; $6d79: $07
	inc  d                                           ; $6d7a: $14
	db   $10                                         ; $6d7b: $10
	ld   [bc], a                                     ; $6d7c: $02
	inc  bc                                          ; $6d7d: $03
	ld   bc, $2000                                   ; $6d7e: $01 $00 $20
	nop                                              ; $6d81: $00
	rlca                                             ; $6d82: $07
	sbc  b                                           ; $6d83: $98
	ld   c, $02                                      ; $6d84: $0e $02
	inc  bc                                          ; $6d86: $03
	ld   bc, $2001                                   ; $6d87: $01 $01 $20
	nop                                              ; $6d8a: $00
	rlca                                             ; $6d8b: $07
	sbc  b                                           ; $6d8c: $98
	ld   c, $02                                      ; $6d8d: $0e $02
	inc  bc                                          ; $6d8f: $03
	ld   bc, $2002                                   ; $6d90: $01 $02 $20
	nop                                              ; $6d93: $00
	ld   b, $35                                      ; $6d94: $06 $35
	rrca                                             ; $6d96: $0f
	inc  e                                           ; $6d97: $1c
	dec  b                                           ; $6d98: $05
	ld   bc, $0101                                   ; $6d99: $01 $01 $01
	sub  [hl]                                        ; $6d9c: $96
	ld   [hl], c                                     ; $6d9d: $71
	ld   h, l                                        ; $6d9e: $65
	sub  c                                           ; $6d9f: $91
	ld   a, [$0310]                                  ; $6da0: $fa $10 $03
	ld   a, [hl]                                     ; $6da3: $7e
	dec  b                                           ; $6da4: $05
	nop                                              ; $6da5: $00
	ld   a, [$000d]                                  ; $6da6: $fa $0d $00
	ld   a, [bc]                                     ; $6da9: $0a
	dec  b                                           ; $6daa: $05
	ld   b, b                                        ; $6dab: $40
	ld   [hl], h                                     ; $6dac: $74
	inc  bc                                          ; $6dad: $03
	ld   [hl], h                                     ; $6dae: $74
	inc  bc                                          ; $6daf: $03
	rst  $38                                         ; $6db0: $ff
	jr   z, jr_054_6db3                              ; $6db1: $28 $00

jr_054_6db3:
	dec  b                                           ; $6db3: $05
	ld   b, b                                        ; $6db4: $40
	rst  $38                                         ; $6db5: $ff
	ld   bc, $0000                                   ; $6db6: $01 $00 $00
	ld   b, $39                                      ; $6db9: $06 $39
	db   $10                                         ; $6dbb: $10
	dec  c                                           ; $6dbc: $0d
	nop                                              ; $6dbd: $00
	nop                                              ; $6dbe: $00
	rrca                                             ; $6dbf: $0f
	nop                                              ; $6dc0: $00
	ld   bc, $0b0c                                   ; $6dc1: $01 $0c $0b
	inc  e                                           ; $6dc4: $1c
	dec  b                                           ; $6dc5: $05
	dec  b                                           ; $6dc6: $05
	dec  b                                           ; $6dc7: $05
	ld   bc, $fc83                                   ; $6dc8: $01 $83 $fc
	rst  $38                                         ; $6dcb: $ff
	rst  $38                                         ; $6dcc: $ff
	dec  c                                           ; $6dcd: $0d
	sub  d                                           ; $6dce: $92
	sbc  d                                           ; $6dcf: $9a
	sub  d                                           ; $6dd0: $92
	sbc  d                                           ; $6dd1: $9a
	sbc  a                                           ; $6dd2: $9f
	sub  d                                           ; $6dd3: $92
	ld   [hl], c                                     ; $6dd4: $71
	halt                                             ; $6dd5: $76
	inc  bc                                          ; $6dd6: $03
	ld   a, [hl]                                     ; $6dd7: $7e
	sbc  l                                           ; $6dd8: $9d
	ld   [hl], c                                     ; $6dd9: $71
	ld   l, l                                        ; $6dda: $6d
	sbc  l                                           ; $6ddb: $9d
	sbc  a                                           ; $6ddc: $9f
	dec  c                                           ; $6ddd: $0d
	nop                                              ; $6dde: $00
	ld   a, [bc]                                     ; $6ddf: $0a
	rlca                                             ; $6de0: $07
	ccf                                              ; $6de1: $3f
	ld   de, $7403                                   ; $6de2: $11 $03 $74
	ld   bc, $2501                                   ; $6de5: $01 $01 $25
	inc  bc                                          ; $6de8: $03
	ld   [hl], h                                     ; $6de9: $74
	ld   bc, $2306                                   ; $6dea: $01 $06 $23
	inc  e                                           ; $6ded: $1c
	nop                                              ; $6dee: $00
	rlca                                             ; $6def: $07
	cp   c                                           ; $6df0: $b9
	ld   de, $7403                                   ; $6df1: $11 $03 $74
	ld   bc, $2507                                   ; $6df4: $01 $07 $25
	nop                                              ; $6df7: $00
	ld   bc, $ffff                                   ; $6df8: $01 $ff $ff
	rst  $38                                         ; $6dfb: $ff
	rst  $38                                         ; $6dfc: $ff
	ld   a, [$fafa]                                  ; $6dfd: $fa $fa $fa
	dec  c                                           ; $6e00: $0d
	nop                                              ; $6e01: $00
	inc  e                                           ; $6e02: $1c
	dec  b                                           ; $6e03: $05
	inc  bc                                          ; $6e04: $03
	inc  bc                                          ; $6e05: $03
	ld   bc, $0008                                   ; $6e06: $01 $08 $00
	ld   a, l                                        ; $6e09: $7d
	and  c                                           ; $6e0a: $a1
	sbc  [hl]                                        ; $6e0b: $9e
	ld   h, a                                        ; $6e0c: $67
	ld   h, d                                        ; $6e0d: $62
	ld   d, d                                        ; $6e0e: $52
	ld   a, [$d20d]                                  ; $6e0f: $fa $0d $d2
	ei                                               ; $6e12: $fb
	sub  $a8                                         ; $6e13: $d6 $a8
	or   b                                           ; $6e15: $b0
	ret                                              ; $6e16: $c9


	sub  d                                           ; $6e17: $92
	and  c                                           ; $6e18: $a1
	ld   a, [$000d]                                  ; $6e19: $fa $0d $00
	ld   a, [bc]                                     ; $6e1c: $0a
	inc  e                                           ; $6e1d: $1c
	dec  b                                           ; $6e1e: $05
	ld   bc, $1d01                                   ; $6e1f: $01 $01 $1d
	ld   b, b                                        ; $6e22: $40
	dec  d                                           ; $6e23: $15
	inc  bc                                          ; $6e24: $03
	dec  d                                           ; $6e25: $15
	ld   bc, $2803                                   ; $6e26: $01 $03 $28
	nop                                              ; $6e29: $00
	ld   bc, wRandomNumStruct                                   ; $6e2a: $01 $a7 $c2
	ld   a, h                                        ; $6e2d: $7c
	inc  bc                                          ; $6e2e: $03
	ld   e, e                                        ; $6e2f: $5b
	inc  bc                                          ; $6e30: $03
	ld   l, e                                        ; $6e31: $6b
	halt                                             ; $6e32: $76
	ld   h, l                                        ; $6e33: $65
	ld   [hl], h                                     ; $6e34: $74
	dec  c                                           ; $6e35: $0d
	ld   l, b                                        ; $6e36: $68
	ld   [hl], c                                     ; $6e37: $71
	halt                                             ; $6e38: $76
	inc  b                                           ; $6e39: $04
	ld   [$9102], sp                                 ; $6e3a: $08 $02 $91
	ld   a, c                                        ; $6e3d: $79
	ld   d, d                                        ; $6e3e: $52
	ld   [hl], h                                     ; $6e3f: $74
	dec  c                                           ; $6e40: $0d
	adc  c                                           ; $6e41: $89
	ld   h, l                                        ; $6e42: $65
	ld   d, d                                        ; $6e43: $52
	sbc  l                                           ; $6e44: $9d
	db   $fc                                         ; $6e45: $fc
	sbc  a                                           ; $6e46: $9f
	dec  c                                           ; $6e47: $0d
	nop                                              ; $6e48: $00
	ld   a, [bc]                                     ; $6e49: $0a
	ld   bc, $9166                                   ; $6e4a: $01 $66 $91
	sbc  [hl]                                        ; $6e4d: $9e
	ld   e, b                                        ; $6e4e: $58
	inc  b                                           ; $6e4f: $04
	ld   a, e                                        ; $6e50: $7b
	sbc  d                                           ; $6e51: $9a
	ld   h, e                                        ; $6e52: $63
	adc  h                                           ; $6e53: $8c
	ld   [hl], l                                     ; $6e54: $75
	ld   h, l                                        ; $6e55: $65
	ld   l, l                                        ; $6e56: $6d
	sbc  a                                           ; $6e57: $9f
	dec  c                                           ; $6e58: $0d
	ld   [bc], a                                     ; $6e59: $02
	and  l                                           ; $6e5a: $a5
	inc  b                                           ; $6e5b: $04
	xor  d                                           ; $6e5c: $aa
	ld   a, l                                        ; $6e5d: $7d
	sub  b                                           ; $6e5e: $90
	ld   d, h                                        ; $6e5f: $54
	inc  b                                           ; $6e60: $04
	sub  l                                           ; $6e61: $95
	ld   [bc], a                                     ; $6e62: $02
	ld   hl, $9079                                   ; $6e63: $21 $79 $90
	ld   [hl], a                                     ; $6e66: $77
	ld   [hl], c                                     ; $6e67: $71
	ld   [hl], h                                     ; $6e68: $74
	dec  c                                           ; $6e69: $0d
	sub  h                                           ; $6e6a: $94
	ld   [hl], c                                     ; $6e6b: $71
	ld   e, l                                        ; $6e6c: $5d
	sbc  b                                           ; $6e6d: $98
	inc  bc                                          ; $6e6e: $03
	and  a                                           ; $6e6f: $a7
	and  c                                           ; $6e70: $a1
	ld   [hl], l                                     ; $6e71: $75
	ld   a, b                                        ; $6e72: $78
	sbc  a                                           ; $6e73: $9f
	dec  c                                           ; $6e74: $0d
	nop                                              ; $6e75: $00
	ld   a, [bc]                                     ; $6e76: $0a
	ld   bc, wRandomNumStruct                                   ; $6e77: $01 $a7 $c2
	ld   a, l                                        ; $6e7a: $7d
	sub  b                                           ; $6e7b: $90
	ld   d, h                                        ; $6e7c: $54
	ld   l, a                                        ; $6e7d: $6f
	sub  l                                           ; $6e7e: $95
	ld   [hl], c                                     ; $6e7f: $71
	halt                                             ; $6e80: $76
	dec  c                                           ; $6e81: $0d
	ld   [bc], a                                     ; $6e82: $02
	jr   c, jr_054_6e89                              ; $6e83: $38 $04

	ld   d, d                                        ; $6e85: $52
	and  b                                           ; $6e86: $a0
	ld   d, d                                        ; $6e87: $52
	ld   h, [hl]                                     ; $6e88: $66

jr_054_6e89:
	ld   [hl], c                                     ; $6e89: $71
	ld   [hl], h                                     ; $6e8a: $74
	sbc  c                                           ; $6e8b: $99
	ld   h, e                                        ; $6e8c: $63
	ld   e, c                                        ; $6e8d: $59
	ld   d, d                                        ; $6e8e: $52
	sbc  a                                           ; $6e8f: $9f
	dec  c                                           ; $6e90: $0d
	nop                                              ; $6e91: $00
	ld   a, [bc]                                     ; $6e92: $0a
	dec  c                                           ; $6e93: $0d
	nop                                              ; $6e94: $00
	nop                                              ; $6e95: $00
	rrca                                             ; $6e96: $0f
	nop                                              ; $6e97: $00
	ld   bc, $020c                                   ; $6e98: $01 $0c $02
	ld   d, $29                                      ; $6e9b: $16 $29
	rrca                                             ; $6e9d: $0f
	dec  b                                           ; $6e9e: $05
	ld   bc, $8901                                   ; $6e9f: $01 $01 $89
	and  c                                           ; $6ea2: $a1
	adc  h                                           ; $6ea3: $8c
	sbc  [hl]                                        ; $6ea4: $9e
	dec  c                                           ; $6ea5: $0d
	nop                                              ; $6ea6: $00
	dec  b                                           ; $6ea7: $05
	add  b                                           ; $6ea8: $80
	inc  sp                                          ; $6ea9: $33
	ld   bc, $0001                                   ; $6eaa: $01 $01 $00
	ld   bc, $3802                                   ; $6ead: $01 $02 $38
	inc  b                                           ; $6eb0: $04
	ld   d, d                                        ; $6eb1: $52
	ld   a, l                                        ; $6eb2: $7d
	ld   e, c                                        ; $6eb3: $59
	sbc  l                                           ; $6eb4: $9d
	ld   d, d                                        ; $6eb5: $52
	ld   d, d                                        ; $6eb6: $52
	ld   a, b                                        ; $6eb7: $78
	db   $fc                                         ; $6eb8: $fc
	sbc  a                                           ; $6eb9: $9f
	dec  c                                           ; $6eba: $0d
	nop                                              ; $6ebb: $00
	ld   a, [bc]                                     ; $6ebc: $0a
	add  hl, bc                                      ; $6ebd: $09
	ld   e, $29                                      ; $6ebe: $1e $29
	nop                                              ; $6ec0: $00
	nop                                              ; $6ec1: $00
	inc  e                                           ; $6ec2: $1c
	dec  b                                           ; $6ec3: $05
	ld   bc, $1d01                                   ; $6ec4: $01 $01 $1d
	ld   b, b                                        ; $6ec7: $40
	dec  d                                           ; $6ec8: $15
	inc  bc                                          ; $6ec9: $03
	dec  d                                           ; $6eca: $15
	ld   bc, $2802                                   ; $6ecb: $01 $02 $28
	nop                                              ; $6ece: $00
	ld   bc, $a154                                   ; $6ecf: $01 $54 $a1
	sbc  [hl]                                        ; $6ed2: $9e
	inc  bc                                          ; $6ed3: $03
	ld   h, l                                        ; $6ed4: $65
	inc  bc                                          ; $6ed5: $03
	add  b                                           ; $6ed6: $80
	dec  b                                           ; $6ed7: $05
	db   $10                                         ; $6ed8: $10
	sbc  [hl]                                        ; $6ed9: $9e
	inc  bc                                          ; $6eda: $03
	ld   h, l                                        ; $6edb: $65
	inc  bc                                          ; $6edc: $03
	add  b                                           ; $6edd: $80
	dec  b                                           ; $6ede: $05
	db   $10                                         ; $6edf: $10
	sbc  a                                           ; $6ee0: $9f
	dec  c                                           ; $6ee1: $0d
	ld   e, b                                        ; $6ee2: $58
	ld   e, b                                        ; $6ee3: $58
	ld   e, e                                        ; $6ee4: $5b
	ld   a, c                                        ; $6ee5: $79
	ld   a, b                                        ; $6ee6: $78
	sbc  a                                           ; $6ee7: $9f
	ld   [$7d00], sp                                 ; $6ee8: $08 $00 $7d
	and  c                                           ; $6eeb: $a1
	sbc  a                                           ; $6eec: $9f
	dec  c                                           ; $6eed: $0d
	nop                                              ; $6eee: $00
	ld   a, [bc]                                     ; $6eef: $0a
	ld   bc, $7889                                   ; $6ef0: $01 $89 $78
	sbc  [hl]                                        ; $6ef3: $9e
	ld   [bc], a                                     ; $6ef4: $02
	and  l                                           ; $6ef5: $a5
	inc  b                                           ; $6ef6: $04
	xor  d                                           ; $6ef7: $aa
	ld   a, l                                        ; $6ef8: $7d
	ld   [hl], a                                     ; $6ef9: $77
	ld   d, h                                        ; $6efa: $54
	sub  b                                           ; $6efb: $90
	dec  c                                           ; $6efc: $0d
	ld   e, b                                        ; $6efd: $58
	inc  b                                           ; $6efe: $04
	ld   a, e                                        ; $6eff: $7b
	sbc  d                                           ; $6f00: $9a
	ld   h, e                                        ; $6f01: $63
	and  c                                           ; $6f02: $a1
	ld   [hl], l                                     ; $6f03: $75
	ld   h, l                                        ; $6f04: $65
	ld   l, l                                        ; $6f05: $6d
	sbc  a                                           ; $6f06: $9f
	dec  c                                           ; $6f07: $0d
	nop                                              ; $6f08: $00
	ld   a, [bc]                                     ; $6f09: $0a
	dec  b                                           ; $6f0a: $05
	add  b                                           ; $6f0b: $80
	inc  sp                                          ; $6f0c: $33
	ld   bc, $0001                                   ; $6f0d: $01 $01 $00
	ld   bc, $9504                                   ; $6f10: $01 $04 $95
	ld   [bc], a                                     ; $6f13: $02
	ld   hl, $9079                                   ; $6f14: $21 $79 $90
	ld   [hl], a                                     ; $6f17: $77
	ld   [hl], c                                     ; $6f18: $71
	ld   [hl], h                                     ; $6f19: $74
	dec  c                                           ; $6f1a: $0d
	sub  h                                           ; $6f1b: $94
	ld   [hl], c                                     ; $6f1c: $71
	ld   e, l                                        ; $6f1d: $5d
	sbc  b                                           ; $6f1e: $98
	inc  bc                                          ; $6f1f: $03
	and  a                                           ; $6f20: $a7
	and  c                                           ; $6f21: $a1
	ld   [hl], l                                     ; $6f22: $75
	ld   a, b                                        ; $6f23: $78
	sbc  a                                           ; $6f24: $9f
	dec  c                                           ; $6f25: $0d
	ld   e, b                                        ; $6f26: $58
	ld   e, b                                        ; $6f27: $58
	ld   e, e                                        ; $6f28: $5b
	ld   a, c                                        ; $6f29: $79
	ld   [hl], l                                     ; $6f2a: $75
	ld   h, l                                        ; $6f2b: $65
	ld   l, l                                        ; $6f2c: $6d
	sbc  a                                           ; $6f2d: $9f
	dec  c                                           ; $6f2e: $0d
	nop                                              ; $6f2f: $00
	ld   a, [bc]                                     ; $6f30: $0a
	dec  c                                           ; $6f31: $0d
	nop                                              ; $6f32: $00
	nop                                              ; $6f33: $00
	rrca                                             ; $6f34: $0f
	nop                                              ; $6f35: $00
	ld   bc, $1e09                                   ; $6f36: $01 $09 $1e
	add  hl, hl                                      ; $6f39: $29
	nop                                              ; $6f3a: $00
	nop                                              ; $6f3b: $00
	inc  e                                           ; $6f3c: $1c
	dec  b                                           ; $6f3d: $05
	ld   [bc], a                                     ; $6f3e: $02
	ld   [bc], a                                     ; $6f3f: $02
	ld   bc, $fc54                                   ; $6f40: $01 $54 $fc
	and  c                                           ; $6f43: $a1
	rst  $38                                         ; $6f44: $ff
	adc  [hl]                                        ; $6f45: $8e
	ld   l, b                                        ; $6f46: $68
	ld   e, c                                        ; $6f47: $59
	ld   h, l                                        ; $6f48: $65
	ld   d, d                                        ; $6f49: $52
	ld   e, c                                        ; $6f4a: $59
	ld   a, b                                        ; $6f4b: $78
	db   $fc                                         ; $6f4c: $fc
	sbc  a                                           ; $6f4d: $9f
	dec  c                                           ; $6f4e: $0d
	sub  b                                           ; $6f4f: $90
	ld   d, h                                        ; $6f50: $54
	ld   l, a                                        ; $6f51: $6f
	sub  l                                           ; $6f52: $95
	ld   d, d                                        ; $6f53: $52
	sbc  [hl]                                        ; $6f54: $9e
	ldh  [$ba], a                                    ; $6f55: $e0 $ba
	and  b                                           ; $6f57: $a0
	add  [hl]                                        ; $6f58: $86
	sub  a                                           ; $6f59: $97
	ld   h, l                                        ; $6f5a: $65
	ld   [hl], h                                     ; $6f5b: $74
	dec  c                                           ; $6f5c: $0d
	sub  b                                           ; $6f5d: $90
	sub  a                                           ; $6f5e: $97
	sbc  l                                           ; $6f5f: $9d
	and  c                                           ; $6f60: $a1
	halt                                             ; $6f61: $76
	rst  $38                                         ; $6f62: $ff
	rst  $38                                         ; $6f63: $ff
	dec  c                                           ; $6f64: $0d
	nop                                              ; $6f65: $00
	ld   a, [bc]                                     ; $6f66: $0a
	ld   bc, $a502                                   ; $6f67: $01 $02 $a5
	inc  b                                           ; $6f6a: $04
	xor  d                                           ; $6f6b: $aa
	inc  b                                           ; $6f6c: $04
	dec  bc                                          ; $6f6d: $0b
	ld   a, c                                        ; $6f6e: $79
	inc  bc                                          ; $6f6f: $03
	ld   a, [hl]                                     ; $6f70: $7e
	sbc  l                                           ; $6f71: $9d
	sbc  d                                           ; $6f72: $9a
	add  [hl]                                        ; $6f73: $86
	and  c                                           ; $6f74: $a1
	ld   a, h                                        ; $6f75: $7c
	dec  c                                           ; $6f76: $0d
	ld   l, a                                        ; $6f77: $6f
	sub  c                                           ; $6f78: $91
	ld   d, h                                        ; $6f79: $54
	ld   e, c                                        ; $6f7a: $59
	db   $fc                                         ; $6f7b: $fc
	sbc  [hl]                                        ; $6f7c: $9e
	dec  b                                           ; $6f7d: $05
	pop  de                                          ; $6f7e: $d1
	ld   l, l                                        ; $6f7f: $6d
	ld   [hl], l                                     ; $6f80: $75
	sbc  a                                           ; $6f81: $9f
	dec  c                                           ; $6f82: $0d
	adc  h                                           ; $6f83: $8c
	ld   d, b                                        ; $6f84: $50
	sbc  [hl]                                        ; $6f85: $9e
	inc  bc                                          ; $6f86: $03
	ld   a, [hl]                                     ; $6f87: $7e
	sbc  l                                           ; $6f88: $9d
	ld   [hl], c                                     ; $6f89: $71
	ld   l, l                                        ; $6f8a: $6d
	ld   h, l                                        ; $6f8b: $65
	sbc  [hl]                                        ; $6f8c: $9e
	ld   e, b                                        ; $6f8d: $58
	ld   e, b                                        ; $6f8e: $58
	ld   e, e                                        ; $6f8f: $5b
	ld   a, c                                        ; $6f90: $79
	sbc  a                                           ; $6f91: $9f
	dec  c                                           ; $6f92: $0d
	nop                                              ; $6f93: $00
	ld   a, [bc]                                     ; $6f94: $0a
	dec  e                                           ; $6f95: $1d
	ld   b, b                                        ; $6f96: $40
	dec  d                                           ; $6f97: $15
	inc  bc                                          ; $6f98: $03
	dec  d                                           ; $6f99: $15
	ld   bc, $2801                                   ; $6f9a: $01 $01 $28
	nop                                              ; $6f9d: $00
	ld   bc, $7889                                   ; $6f9e: $01 $89 $78
	sbc  [hl]                                        ; $6fa1: $9e
	ld   [bc], a                                     ; $6fa2: $02
	and  l                                           ; $6fa3: $a5
	inc  b                                           ; $6fa4: $04
	xor  d                                           ; $6fa5: $aa
	ld   a, l                                        ; $6fa6: $7d
	ld   [hl], a                                     ; $6fa7: $77
	ld   d, h                                        ; $6fa8: $54
	sub  b                                           ; $6fa9: $90
	dec  c                                           ; $6faa: $0d
	nop                                              ; $6fab: $00
	dec  b                                           ; $6fac: $05
	ld   b, b                                        ; $6fad: $40
	ld   d, d                                        ; $6fae: $52
	ld   bc, $0000                                   ; $6faf: $01 $00 $00
	ld   bc, $0458                                   ; $6fb2: $01 $58 $04
	ld   a, e                                        ; $6fb5: $7b
	sbc  d                                           ; $6fb6: $9a
	ld   h, e                                        ; $6fb7: $63
	and  c                                           ; $6fb8: $a1
	ld   [hl], l                                     ; $6fb9: $75
	ld   h, l                                        ; $6fba: $65
	ld   l, l                                        ; $6fbb: $6d
	sbc  a                                           ; $6fbc: $9f
	dec  c                                           ; $6fbd: $0d
	nop                                              ; $6fbe: $00
	ld   a, [bc]                                     ; $6fbf: $0a
	dec  b                                           ; $6fc0: $05
	add  b                                           ; $6fc1: $80
	inc  sp                                          ; $6fc2: $33
	ld   bc, $0001                                   ; $6fc3: $01 $01 $00
	dec  c                                           ; $6fc6: $0d
	nop                                              ; $6fc7: $00
	nop                                              ; $6fc8: $00
	rrca                                             ; $6fc9: $0f
	nop                                              ; $6fca: $00
	ld   bc, $1e09                                   ; $6fcb: $01 $09 $1e
	add  hl, hl                                      ; $6fce: $29
	nop                                              ; $6fcf: $00
	nop                                              ; $6fd0: $00
	nop                                              ; $6fd1: $00
	inc  bc                                          ; $6fd2: $03
	ld   de, $9101                                   ; $6fd3: $11 $01 $91
	inc  h                                           ; $6fd6: $24
	nop                                              ; $6fd7: $00
	ld   c, $01                                      ; $6fd8: $0e $01
	rrca                                             ; $6fda: $0f
	nop                                              ; $6fdb: $00
	ld   bc, $0102                                   ; $6fdc: $01 $02 $01
	sub  [hl]                                        ; $6fdf: $96
	ld   h, l                                        ; $6fe0: $65
	sbc  [hl]                                        ; $6fe1: $9e
	ld   [bc], a                                     ; $6fe2: $02
	and  l                                           ; $6fe3: $a5
	inc  b                                           ; $6fe4: $04
	xor  d                                           ; $6fe5: $aa
	sub  b                                           ; $6fe6: $90
	inc  b                                           ; $6fe7: $04
	dec  c                                           ; $6fe8: $0d
	inc  bc                                          ; $6fe9: $03
	cp   $d1                                         ; $6fea: $fe $d1
	call nz, $ecc2                                   ; $6fec: $c4 $c2 $ec
	ld   l, [hl]                                     ; $6fef: $6e
	sbc  a                                           ; $6ff0: $9f
	dec  c                                           ; $6ff1: $0d
	ld   h, c                                        ; $6ff2: $61
	and  c                                           ; $6ff3: $a1
	ld   a, b                                        ; $6ff4: $78
	inc  bc                                          ; $6ff5: $03
	ld   d, $79                                      ; $6ff6: $16 $79
	ld   a, l                                        ; $6ff8: $7d
	sbc  [hl]                                        ; $6ff9: $9e
	inc  b                                           ; $6ffa: $04
	ld   c, c                                        ; $6ffb: $49
	ld   e, c                                        ; $6ffc: $59
	ld   d, d                                        ; $6ffd: $52
	ld   d, d                                        ; $6ffe: $52
	ld   h, c                                        ; $6fff: $61
	halt                                             ; $7000: $76
	ld   e, d                                        ; $7001: $5a
	dec  c                                           ; $7002: $0d
	ld   [bc], a                                     ; $7003: $02
	ld   e, d                                        ; $7004: $5a
	ld   h, c                                        ; $7005: $61
	sbc  b                                           ; $7006: $98
	ld   l, e                                        ; $7007: $6b
	ld   d, h                                        ; $7008: $54
	ld   a, b                                        ; $7009: $78
	rst  $38                                         ; $700a: $ff
	rst  $38                                         ; $700b: $ff
	dec  c                                           ; $700c: $0d
	nop                                              ; $700d: $00
	ld   a, [bc]                                     ; $700e: $0a
	inc  d                                           ; $700f: $14
	ld   b, $01                                      ; $7010: $06 $01
	rrca                                             ; $7012: $0f
	ld   bc, $0101                                   ; $7013: $01 $01 $01
	ld   [$6300], sp                                 ; $7016: $08 $00 $63
	and  c                                           ; $7019: $a1
	sbc  a                                           ; $701a: $9f
	dec  c                                           ; $701b: $0d
	ld   e, b                                        ; $701c: $58
	ld   a, l                                        ; $701d: $7d
	sub  [hl]                                        ; $701e: $96
	ld   d, h                                        ; $701f: $54
	ld   h, d                                        ; $7020: $62
	ld   h, h                                        ; $7021: $64
	ld   d, d                                        ; $7022: $52
	adc  h                                           ; $7023: $8c
	ld   h, a                                        ; $7024: $67
	sbc  a                                           ; $7025: $9f
	dec  c                                           ; $7026: $0d
	nop                                              ; $7027: $00
	ld   a, [bc]                                     ; $7028: $0a
	rrca                                             ; $7029: $0f
	nop                                              ; $702a: $00
	ld   bc, $5001                                   ; $702b: $01 $01 $50
	sbc  [hl]                                        ; $702e: $9e
	ld   h, e                                        ; $702f: $63
	ld   e, l                                        ; $7030: $5d
	sub  a                                           ; $7031: $97
	ld   h, e                                        ; $7032: $63
	and  c                                           ; $7033: $a1
	sbc  a                                           ; $7034: $9f
	dec  c                                           ; $7035: $0d
	nop                                              ; $7036: $00
	ld   a, [bc]                                     ; $7037: $0a
	inc  d                                           ; $7038: $14
	ld   a, [bc]                                     ; $7039: $0a
	ld   bc, $000f                                   ; $703a: $01 $0f $00
	ld   bc, $010d                                   ; $703d: $01 $0d $01
	ld   bc, $6301                                   ; $7040: $01 $01 $63
	ld   e, l                                        ; $7043: $5d
	sub  a                                           ; $7044: $97
	ld   h, e                                        ; $7045: $63
	and  c                                           ; $7046: $a1
	sbc  a                                           ; $7047: $9f
	dec  c                                           ; $7048: $0d
	ld   e, b                                        ; $7049: $58
	ld   a, l                                        ; $704a: $7d
	sub  [hl]                                        ; $704b: $96
	ld   d, h                                        ; $704c: $54
	ld   h, d                                        ; $704d: $62
	ld   h, h                                        ; $704e: $64
	ld   d, d                                        ; $704f: $52
	adc  h                                           ; $7050: $8c
	ld   h, a                                        ; $7051: $67
	sbc  a                                           ; $7052: $9f
	dec  c                                           ; $7053: $0d
	inc  b                                           ; $7054: $04
	ld   c, c                                        ; $7055: $49
	ld   e, c                                        ; $7056: $59
	ld   h, d                                        ; $7057: $62
	inc  b                                           ; $7058: $04
	di                                               ; $7059: $f3
	ld   [hl], l                                     ; $705a: $75
	ld   h, a                                        ; $705b: $67
	ld   e, c                                        ; $705c: $59
	ld   sp, hl                                      ; $705d: $f9
	dec  c                                           ; $705e: $0d
	nop                                              ; $705f: $00
	ld   a, [bc]                                     ; $7060: $0a
	inc  e                                           ; $7061: $1c
	ld   bc, $0000                                   ; $7062: $01 $00 $00
	ld   bc, $a502                                   ; $7065: $01 $02 $a5
	inc  b                                           ; $7068: $04
	xor  d                                           ; $7069: $aa
	sbc  [hl]                                        ; $706a: $9e
	ld   [hl], a                                     ; $706b: $77
	ld   d, h                                        ; $706c: $54
	ld   h, l                                        ; $706d: $65
	ld   [hl], h                                     ; $706e: $74
	sub  b                                           ; $706f: $90
	inc  bc                                          ; $7070: $03
	ld   l, e                                        ; $7071: $6b
	inc  b                                           ; $7072: $04
	ld   [de], a                                     ; $7073: $12
	ld   [hl], c                                     ; $7074: $71
	ld   [hl], h                                     ; $7075: $74
	dec  c                                           ; $7076: $0d
	inc  b                                           ; $7077: $04
	db   $e3                                         ; $7078: $e3
	ld   h, l                                        ; $7079: $65
	ld   d, d                                        ; $707a: $52
	ld   h, c                                        ; $707b: $61
	halt                                             ; $707c: $76
	ld   e, d                                        ; $707d: $5a
	ld   d, b                                        ; $707e: $50
	sbc  c                                           ; $707f: $99
	and  c                                           ; $7080: $a1
	ld   [hl], l                                     ; $7081: $75
	ld   h, a                                        ; $7082: $67
	ld   e, a                                        ; $7083: $5f
	ld   [hl], a                                     ; $7084: $77
	dec  c                                           ; $7085: $0d
	rst  $38                                         ; $7086: $ff
	rst  $38                                         ; $7087: $ff
	dec  c                                           ; $7088: $0d
	nop                                              ; $7089: $00
	ld   a, [bc]                                     ; $708a: $0a
	ld   bc, $9a6b                                   ; $708b: $01 $6b $9a
	ld   e, d                                        ; $708e: $5a
	sbc  [hl]                                        ; $708f: $9e
	inc  b                                           ; $7090: $04
	ret  z                                           ; $7091: $c8

	ld   [bc], a                                     ; $7092: $02
	jr   nz, jr_054_7099                             ; $7093: $20 $04

	xor  d                                           ; $7095: $aa
	ld   e, c                                        ; $7096: $59
	ld   e, c                                        ; $7097: $59
	ld   [hl], c                                     ; $7098: $71

jr_054_7099:
	ld   l, a                                        ; $7099: $6f
	sub  c                                           ; $709a: $91
	ld   d, h                                        ; $709b: $54
	dec  c                                           ; $709c: $0d
	inc  bc                                          ; $709d: $03
	dec  c                                           ; $709e: $0d
	ld   [bc], a                                     ; $709f: $02
	jp   $a178                                       ; $70a0: $c3 $78 $a1


	ld   [hl], l                                     ; $70a3: $75
	ld   h, a                                        ; $70a4: $67
	sub  [hl]                                        ; $70a5: $96
	sbc  a                                           ; $70a6: $9f
	dec  c                                           ; $70a7: $0d
	nop                                              ; $70a8: $00
	ld   a, [bc]                                     ; $70a9: $0a
	ld   bc, $6d03                                   ; $70aa: $01 $03 $6d
	dec  b                                           ; $70ad: $05
	add  hl, de                                      ; $70ae: $19
	ld   a, l                                        ; $70af: $7d
	inc  bc                                          ; $70b0: $03
	and  a                                           ; $70b1: $a7
	and  c                                           ; $70b2: $a1
	ld   [hl], l                                     ; $70b3: $75
	sub  b                                           ; $70b4: $90
	inc  b                                           ; $70b5: $04
	ld   c, $03                                      ; $70b6: $0e $03
	sbc  l                                           ; $70b8: $9d
	inc  b                                           ; $70b9: $04
	and  [hl]                                        ; $70ba: $a6
	ld   a, b                                        ; $70bb: $78
	sub  [hl]                                        ; $70bc: $96
	ld   d, h                                        ; $70bd: $54
	ld   a, c                                        ; $70be: $79
	dec  c                                           ; $70bf: $0d
	inc  bc                                          ; $70c0: $03
	add  l                                           ; $70c1: $85
	inc  b                                           ; $70c2: $04
	xor  e                                           ; $70c3: $ab
	inc  bc                                          ; $70c4: $03
	add  d                                           ; $70c5: $82
	ld   a, c                                        ; $70c6: $79
	dec  b                                           ; $70c7: $05
	jr   nz, jr_054_712f                             ; $70c8: $20 $65

	ld   [hl], h                                     ; $70ca: $74
	ld   e, b                                        ; $70cb: $58
	ld   e, e                                        ; $70cc: $5b
	adc  h                                           ; $70cd: $8c
	ld   h, a                                        ; $70ce: $67
	ld   a, h                                        ; $70cf: $7c
	ld   [hl], l                                     ; $70d0: $75
	dec  c                                           ; $70d1: $0d
	inc  bc                                          ; $70d2: $03
	ld   l, e                                        ; $70d3: $6b
	inc  b                                           ; $70d4: $04
	ld   [de], a                                     ; $70d5: $12
	ld   [hl], c                                     ; $70d6: $71
	ld   [hl], h                                     ; $70d7: $74
	sub  b                                           ; $70d8: $90
	sub  a                                           ; $70d9: $97
	ld   d, [hl]                                     ; $70da: $56
	adc  h                                           ; $70db: $8c
	ld   l, c                                        ; $70dc: $69
	and  c                                           ; $70dd: $a1
	ld   e, c                                        ; $70de: $59
	ld   sp, hl                                      ; $70df: $f9
	dec  c                                           ; $70e0: $0d
	nop                                              ; $70e1: $00
	ld   a, [bc]                                     ; $70e2: $0a
	add  hl, de                                      ; $70e3: $19
	dec  b                                           ; $70e4: $05
	ld   [bc], a                                     ; $70e5: $02
	inc  bc                                          ; $70e6: $03
	ld   l, e                                        ; $70e7: $6b
	inc  b                                           ; $70e8: $04
	ld   [de], a                                     ; $70e9: $12
	ld   d, h                                        ; $70ea: $54
	nop                                              ; $70eb: $00
	nop                                              ; $70ec: $00
	ld   h, c                                        ; $70ed: $61
	halt                                             ; $70ee: $76
	sbc  l                                           ; $70ef: $9d
	sbc  c                                           ; $70f0: $99
	nop                                              ; $70f1: $00
	ld   bc, $f107                                   ; $70f2: $01 $07 $f1
	ld   bc, $0302                                   ; $70f5: $01 $02 $03
	ld   bc, $2000                                   ; $70f8: $01 $00 $20
	nop                                              ; $70fb: $00
	rlca                                             ; $70fc: $07
	jr   nc, jr_054_7100                             ; $70fd: $30 $01

	ld   [bc], a                                     ; $70ff: $02

jr_054_7100:
	inc  bc                                          ; $7100: $03
	ld   bc, $2001                                   ; $7101: $01 $01 $20
	nop                                              ; $7104: $00
	ld   b, $91                                      ; $7105: $06 $91
	ld   bc, $000f                                   ; $7107: $01 $0f $00
	ld   bc, $6701                                   ; $710a: $01 $01 $67
	adc  l                                           ; $710d: $8d
	adc  h                                           ; $710e: $8c
	ld   l, c                                        ; $710f: $69
	and  c                                           ; $7110: $a1
	sbc  a                                           ; $7111: $9f
	dec  c                                           ; $7112: $0d
	ld   [bc], a                                     ; $7113: $02
	and  l                                           ; $7114: $a5
	inc  b                                           ; $7115: $04
	xor  d                                           ; $7116: $aa
	ld   a, l                                        ; $7117: $7d
	ld   l, a                                        ; $7118: $6f
	sub  l                                           ; $7119: $95
	ld   [hl], c                                     ; $711a: $71
	halt                                             ; $711b: $76
	dec  c                                           ; $711c: $0d
	inc  b                                           ; $711d: $04
	di                                               ; $711e: $f3
	ld   e, d                                        ; $711f: $5a
	ld   d, b                                        ; $7120: $50
	sbc  c                                           ; $7121: $99
	and  c                                           ; $7122: $a1
	ld   [hl], l                                     ; $7123: $75
	ld   h, a                                        ; $7124: $67
	sbc  a                                           ; $7125: $9f
	dec  c                                           ; $7126: $0d
	nop                                              ; $7127: $00
	ld   a, [bc]                                     ; $7128: $0a
	inc  e                                           ; $7129: $1c
	ld   bc, $0404                                   ; $712a: $01 $04 $04
	dec  e                                           ; $712d: $1d
	ld   b, b                                        ; $712e: $40

jr_054_712f:
	ld   de, $1103                                   ; $712f: $11 $03 $11
	ld   bc, $2901                                   ; $7132: $01 $01 $29
	nop                                              ; $7135: $00
	ld   bc, $546b                                   ; $7136: $01 $6b $54
	ld   [hl], l                                     ; $7139: $75
	ld   h, a                                        ; $713a: $67
	ld   e, c                                        ; $713b: $59
	rst  $38                                         ; $713c: $ff
	rst  $38                                         ; $713d: $ff
	dec  c                                           ; $713e: $0d
	inc  bc                                          ; $713f: $03
	ld   d, $03                                      ; $7140: $16 $03
	ld   [hl], b                                     ; $7142: $70
	ld   e, l                                        ; $7143: $5d
	ld   a, c                                        ; $7144: $79
	ld   [bc], a                                     ; $7145: $02
	ld   e, d                                        ; $7146: $5a
	ld   h, c                                        ; $7147: $61
	ld   h, l                                        ; $7148: $65
	ld   [hl], h                                     ; $7149: $74
	ld   h, l                                        ; $714a: $65
	adc  h                                           ; $714b: $8c
	ld   [hl], c                                     ; $714c: $71
	ld   [hl], h                                     ; $714d: $74
	dec  c                                           ; $714e: $0d
	ld   h, a                                        ; $714f: $67
	adc  l                                           ; $7150: $8d
	adc  h                                           ; $7151: $8c
	ld   l, c                                        ; $7152: $69
	and  c                                           ; $7153: $a1
	ld   [hl], l                                     ; $7154: $75
	ld   h, l                                        ; $7155: $65
	ld   l, l                                        ; $7156: $6d
	sbc  a                                           ; $7157: $9f
	ld   [hl], l                                     ; $7158: $75
	ld   a, l                                        ; $7159: $7d
	sbc  a                                           ; $715a: $9f
	dec  c                                           ; $715b: $0d
	nop                                              ; $715c: $00
	ld   a, [bc]                                     ; $715d: $0a
	dec  c                                           ; $715e: $0d
	nop                                              ; $715f: $00
	nop                                              ; $7160: $00
	rrca                                             ; $7161: $0f
	nop                                              ; $7162: $00
	ld   bc, $1e09                                   ; $7163: $01 $09 $1e
	add  hl, hl                                      ; $7166: $29
	ld   bc, $1c00                                   ; $7167: $01 $00 $1c
	ld   bc, $0303                                   ; $716a: $01 $03 $03
	ld   bc, $9e50                                   ; $716d: $01 $50 $9e
	inc  b                                           ; $7170: $04
	ld   c, c                                        ; $7171: $49
	ld   e, c                                        ; $7172: $59
	inc  b                                           ; $7173: $04
	di                                               ; $7174: $f3
	ld   e, d                                        ; $7175: $5a
	ld   d, b                                        ; $7176: $50
	sbc  c                                           ; $7177: $99
	ld   a, b                                        ; $7178: $78
	sub  a                                           ; $7179: $97
	dec  c                                           ; $717a: $0d
	inc  b                                           ; $717b: $04
	ld   d, h                                        ; $717c: $54
	ld   a, c                                        ; $717d: $79
	ld   d, d                                        ; $717e: $52
	ld   d, d                                        ; $717f: $52
	and  c                                           ; $7180: $a1
	ld   [hl], l                                     ; $7181: $75
	ld   h, a                                        ; $7182: $67
	sub  [hl]                                        ; $7183: $96
	sbc  a                                           ; $7184: $9f
	dec  c                                           ; $7185: $0d
	nop                                              ; $7186: $00
	ld   a, [bc]                                     ; $7187: $0a
	inc  e                                           ; $7188: $1c
	ld   bc, $0404                                   ; $7189: $01 $04 $04
	dec  e                                           ; $718c: $1d
	ld   b, b                                        ; $718d: $40
	ld   de, $1103                                   ; $718e: $11 $03 $11
	ld   bc, $2902                                   ; $7191: $01 $02 $29
	nop                                              ; $7194: $00
	ld   bc, $1603                                   ; $7195: $01 $03 $16
	inc  bc                                          ; $7198: $03
	ld   [hl], b                                     ; $7199: $70
	ld   e, l                                        ; $719a: $5d
	ld   a, c                                        ; $719b: $79
	ld   [bc], a                                     ; $719c: $02
	ld   e, d                                        ; $719d: $5a
	ld   h, c                                        ; $719e: $61
	ld   h, l                                        ; $719f: $65
	ld   [hl], h                                     ; $71a0: $74
	ld   h, l                                        ; $71a1: $65
	adc  h                                           ; $71a2: $8c
	ld   [hl], c                                     ; $71a3: $71
	ld   [hl], h                                     ; $71a4: $74
	dec  c                                           ; $71a5: $0d
	ld   h, a                                        ; $71a6: $67
	adc  l                                           ; $71a7: $8d
	adc  h                                           ; $71a8: $8c
	ld   l, c                                        ; $71a9: $69
	and  c                                           ; $71aa: $a1
	ld   [hl], l                                     ; $71ab: $75
	ld   h, l                                        ; $71ac: $65
	ld   l, l                                        ; $71ad: $6d
	sbc  a                                           ; $71ae: $9f
	dec  c                                           ; $71af: $0d
	ld   [hl], l                                     ; $71b0: $75
	ld   a, l                                        ; $71b1: $7d
	sbc  [hl]                                        ; $71b2: $9e
	inc  bc                                          ; $71b3: $03
	add  e                                           ; $71b4: $83
	dec  b                                           ; $71b5: $05
	dec  c                                           ; $71b6: $0d
	ld   h, l                                        ; $71b7: $65
	adc  h                                           ; $71b8: $8c
	ld   h, a                                        ; $71b9: $67
	sbc  a                                           ; $71ba: $9f
	dec  c                                           ; $71bb: $0d
	nop                                              ; $71bc: $00
	ld   a, [bc]                                     ; $71bd: $0a
	dec  c                                           ; $71be: $0d
	nop                                              ; $71bf: $00
	nop                                              ; $71c0: $00
	rrca                                             ; $71c1: $0f
	nop                                              ; $71c2: $00
	ld   bc, $1e09                                   ; $71c3: $01 $09 $1e
	add  hl, hl                                      ; $71c6: $29
	ld   bc, $0f00                                   ; $71c7: $01 $00 $0f
	nop                                              ; $71ca: $00
	ld   bc, $5201                                   ; $71cb: $01 $01 $52
	ld   d, d                                        ; $71ce: $52
	ld   [hl], l                                     ; $71cf: $75
	ld   h, a                                        ; $71d0: $67
	sub  [hl]                                        ; $71d1: $96
	sbc  a                                           ; $71d2: $9f
	dec  c                                           ; $71d3: $0d
	inc  b                                           ; $71d4: $04
	ld   l, l                                        ; $71d5: $6d
	ld   [hl], l                                     ; $71d6: $75
	ld   e, b                                        ; $71d7: $58
	inc  b                                           ; $71d8: $04
	db   $ec                                         ; $71d9: $ec
	ld   a, c                                        ; $71da: $79
	dec  b                                           ; $71db: $05
	ld   d, $74                                      ; $71dc: $16 $74
	sbc  c                                           ; $71de: $99
	ld   a, b                                        ; $71df: $78
	sub  a                                           ; $71e0: $97
	sbc  a                                           ; $71e1: $9f
	dec  c                                           ; $71e2: $0d
	nop                                              ; $71e3: $00
	ld   a, [bc]                                     ; $71e4: $0a
	inc  e                                           ; $71e5: $1c
	ld   bc, $0101                                   ; $71e6: $01 $01 $01
	dec  e                                           ; $71e9: $1d
	ld   b, b                                        ; $71ea: $40
	ld   de, $1103                                   ; $71eb: $11 $03 $11
	ld   bc, $2802                                   ; $71ee: $01 $02 $28
	nop                                              ; $71f1: $00
	ld   bc, $8f04                                   ; $71f2: $01 $04 $8f
	inc  b                                           ; $71f5: $04
	jr   jr_054_726d                                 ; $71f6: $18 $75

	ld   h, a                                        ; $71f8: $67
	ld   e, c                                        ; $71f9: $59
	ld   a, [$500d]                                  ; $71fa: $fa $0d $50
	sbc  b                                           ; $71fd: $98
	ld   e, d                                        ; $71fe: $5a
	halt                                             ; $71ff: $76
	ld   d, h                                        ; $7200: $54
	ld   h, d                                        ; $7201: $62
	ld   h, h                                        ; $7202: $64
	ld   d, d                                        ; $7203: $52
	adc  h                                           ; $7204: $8c
	ld   h, a                                        ; $7205: $67
	sbc  a                                           ; $7206: $9f
	dec  c                                           ; $7207: $0d
	inc  bc                                          ; $7208: $03
	ld   e, e                                        ; $7209: $5b
	ld   e, c                                        ; $720a: $59
	sbc  b                                           ; $720b: $98
	adc  h                                           ; $720c: $8c
	ld   h, a                                        ; $720d: $67
	sbc  a                                           ; $720e: $9f
	dec  c                                           ; $720f: $0d
	nop                                              ; $7210: $00
	ld   a, [bc]                                     ; $7211: $0a
	inc  e                                           ; $7212: $1c
	ld   bc, $0000                                   ; $7213: $01 $00 $00
	ld   bc, $8b03                                   ; $7216: $01 $03 $8b
	ld   a, l                                        ; $7219: $7d
	sbc  [hl]                                        ; $721a: $9e
	inc  bc                                          ; $721b: $03
	ld   l, b                                        ; $721c: $68
	ld   [bc], a                                     ; $721d: $02
	sub  e                                           ; $721e: $93
	ld   a, h                                        ; $721f: $7c
	ld   [bc], a                                     ; $7220: $02
	sbc  c                                           ; $7221: $99
	ld   [bc], a                                     ; $7222: $02
	rra                                              ; $7223: $1f
	ld   a, c                                        ; $7224: $79
	ld   [bc], a                                     ; $7225: $02
	jp   nc, Jump_054_745f                           ; $7226: $d2 $5f $74

	dec  c                                           ; $7229: $0d
	ld   [bc], a                                     ; $722a: $02
	ld   de, $4c03                                   ; $722b: $11 $03 $4c
	inc  b                                           ; $722e: $04
	sub  l                                           ; $722f: $95
	ld   [bc], a                                     ; $7230: $02
	ld   hl, $0476                                   ; $7231: $21 $76 $04
	ld   d, $02                                      ; $7234: $16 $02
	xor  b                                           ; $7236: $a8
	inc  b                                           ; $7237: $04
	sub  l                                           ; $7238: $95
	ld   [bc], a                                     ; $7239: $02
	ld   hl, $037c                                   ; $723a: $21 $7c $03
	ld   a, h                                        ; $723d: $7c
	dec  b                                           ; $723e: $05
	ld   de, $0da0                                   ; $723f: $11 $a0 $0d
	ld   h, l                                        ; $7242: $65
	ld   a, b                                        ; $7243: $78
	ld   e, l                                        ; $7244: $5d
	ld   l, a                                        ; $7245: $6f
	sub  c                                           ; $7246: $91
	ld   d, d                                        ; $7247: $52
	ld   e, a                                        ; $7248: $5f
	ld   a, b                                        ; $7249: $78
	ld   d, d                                        ; $724a: $52
	ld   a, h                                        ; $724b: $7c
	ld   [hl], l                                     ; $724c: $75
	ld   h, a                                        ; $724d: $67
	ld   e, d                                        ; $724e: $5a
	rst  $38                                         ; $724f: $ff
	dec  c                                           ; $7250: $0d
	nop                                              ; $7251: $00
	ld   a, [bc]                                     ; $7252: $0a
	inc  e                                           ; $7253: $1c
	ld   bc, $0404                                   ; $7254: $01 $04 $04
	ld   bc, $a18d                                   ; $7257: $01 $8d $a1
	ld   a, b                                        ; $725a: $78
	ld   d, d                                        ; $725b: $52
	ld   l, e                                        ; $725c: $6b
	ld   e, d                                        ; $725d: $5a
	ld   h, l                                        ; $725e: $65
	ld   e, l                                        ; $725f: $5d
	ld   [hl], h                                     ; $7260: $74
	rst  $38                                         ; $7261: $ff
	rst  $38                                         ; $7262: $ff
	dec  c                                           ; $7263: $0d
	ld   [hl], l                                     ; $7264: $75
	sub  b                                           ; $7265: $90
	sbc  [hl]                                        ; $7266: $9e
	add  b                                           ; $7267: $80
	halt                                             ; $7268: $76
	sbc  b                                           ; $7269: $98
	ld   [hl], l                                     ; $726a: $75
	sub  d                                           ; $726b: $92
	sbc  c                                           ; $726c: $99

jr_054_726d:
	ld   a, c                                        ; $726d: $79
	ld   a, l                                        ; $726e: $7d
	dec  c                                           ; $726f: $0d
	inc  b                                           ; $7270: $04
	ld   c, $04                                      ; $7271: $0e $04
	adc  h                                           ; $7273: $8c
	ld   l, [hl]                                     ; $7274: $6e
	ld   h, l                                        ; $7275: $65
	rst  $38                                         ; $7276: $ff
	rst  $38                                         ; $7277: $ff
	dec  b                                           ; $7278: $05
	sub  [hl]                                        ; $7279: $96
	ld   [hl], c                                     ; $727a: $71
	ld   [hl], h                                     ; $727b: $74
	ld   l, l                                        ; $727c: $6d
	and  c                                           ; $727d: $a1
	ld   [hl], l                                     ; $727e: $75
	ld   h, a                                        ; $727f: $67
	sbc  a                                           ; $7280: $9f
	dec  c                                           ; $7281: $0d
	nop                                              ; $7282: $00
	ld   a, [bc]                                     ; $7283: $0a
	inc  e                                           ; $7284: $1c
	ld   bc, $0101                                   ; $7285: $01 $01 $01
	ld   bc, $9075                                   ; $7288: $01 $75 $90
	sbc  [hl]                                        ; $728b: $9e
	ld   [$6300], sp                                 ; $728c: $08 $00 $63
	and  c                                           ; $728f: $a1
	ld   a, c                                        ; $7290: $79
	dec  c                                           ; $7291: $0d
	inc  bc                                          ; $7292: $03
	ld   l, e                                        ; $7293: $6b
	inc  b                                           ; $7294: $04
	ld   [de], a                                     ; $7295: $12
	ld   [hl], c                                     ; $7296: $71
	ld   [hl], h                                     ; $7297: $74
	sub  b                                           ; $7298: $90
	sub  a                                           ; $7299: $97
	ld   d, [hl]                                     ; $729a: $56
	ld   a, [hl]                                     ; $729b: $7e
	sbc  [hl]                                        ; $729c: $9e
	sub  b                                           ; $729d: $90
	ld   d, h                                        ; $729e: $54
	dec  c                                           ; $729f: $0d
	pop  de                                          ; $72a0: $d1
	call nz, $ecc2                                   ; $72a1: $c4 $c2 $ec
	ld   [hl], l                                     ; $72a4: $75
	ld   h, a                                        ; $72a5: $67
	sub  [hl]                                        ; $72a6: $96
	sbc  a                                           ; $72a7: $9f
	dec  c                                           ; $72a8: $0d
	nop                                              ; $72a9: $00
	ld   a, [bc]                                     ; $72aa: $0a
	inc  e                                           ; $72ab: $1c
	ld   bc, $0101                                   ; $72ac: $01 $01 $01
	ld   bc, $7d75                                   ; $72af: $01 $75 $7d
	sbc  [hl]                                        ; $72b2: $9e
	adc  h                                           ; $72b3: $8c
	ld   l, b                                        ; $72b4: $68
	ld   a, l                                        ; $72b5: $7d
	ld   [bc], a                                     ; $72b6: $02
	ld   de, $4c03                                   ; $72b7: $11 $03 $4c
	inc  b                                           ; $72ba: $04
	sub  l                                           ; $72bb: $95
	ld   [bc], a                                     ; $72bc: $02
	ld   hl, $0d79                                   ; $72bd: $21 $79 $0d
	ld   [bc], a                                     ; $72c0: $02
	ld   a, a                                        ; $72c1: $7f
	ld   e, e                                        ; $72c2: $5b
	adc  h                                           ; $72c3: $8c
	ld   h, l                                        ; $72c4: $65
	sub  l                                           ; $72c5: $95
	ld   d, h                                        ; $72c6: $54
	sbc  a                                           ; $72c7: $9f
	dec  c                                           ; $72c8: $0d
	nop                                              ; $72c9: $00
	ld   a, [bc]                                     ; $72ca: $0a
	dec  c                                           ; $72cb: $0d
	nop                                              ; $72cc: $00
	nop                                              ; $72cd: $00
	rrca                                             ; $72ce: $0f
	nop                                              ; $72cf: $00
	ld   bc, $2d23                                   ; $72d0: $01 $23 $2d
	inc  e                                           ; $72d3: $1c
	ld   bc, $0000                                   ; $72d4: $01 $00 $00
	ld   bc, $6161                                   ; $72d7: $01 $61 $61
	ld   [hl], l                                     ; $72da: $75
	ld   a, l                                        ; $72db: $7d
	sbc  [hl]                                        ; $72dc: $9e
	ld   [bc], a                                     ; $72dd: $02
	ld   de, $4c03                                   ; $72de: $11 $03 $4c
	ld   a, h                                        ; $72e1: $7c
	inc  bc                                          ; $72e2: $03
	ld   a, h                                        ; $72e3: $7c
	dec  b                                           ; $72e4: $05
	ld   de, $0da0                                   ; $72e5: $11 $a0 $0d
	ld   h, l                                        ; $72e8: $65
	sub  [hl]                                        ; $72e9: $96
	ld   d, h                                        ; $72ea: $54
	halt                                             ; $72eb: $76
	dec  b                                           ; $72ec: $05
	pop  de                                          ; $72ed: $d1
	ld   d, d                                        ; $72ee: $52
	adc  h                                           ; $72ef: $8c
	ld   h, a                                        ; $72f0: $67
	sbc  a                                           ; $72f1: $9f
	dec  c                                           ; $72f2: $0d
	nop                                              ; $72f3: $00
	ld   a, [bc]                                     ; $72f4: $0a
	ld   bc, $6d50                                   ; $72f5: $01 $50 $6d
	ld   h, l                                        ; $72f8: $65
	ld   e, d                                        ; $72f9: $5a
	inc  bc                                          ; $72fa: $03
	ld   [$6d65], a                                  ; $72fb: $ea $65 $6d
	sub  b                                           ; $72fe: $90
	ld   a, h                                        ; $72ff: $7c
	and  b                                           ; $7300: $a0
	dec  c                                           ; $7301: $0d
	ld   l, e                                        ; $7302: $6b
	sbc  d                                           ; $7303: $9a
	ld   l, h                                        ; $7304: $6c
	sbc  d                                           ; $7305: $9a
	ld   a, h                                        ; $7306: $7c
	inc  b                                           ; $7307: $04
	ld   a, d                                        ; $7308: $7a
	inc  bc                                          ; $7309: $03
	ld   c, e                                        ; $730a: $4b
	ld   a, c                                        ; $730b: $79
	inc  b                                           ; $730c: $04
	jr   z, @+$54                                    ; $730d: $28 $52

	ld   [hl], h                                     ; $730f: $74
	dec  c                                           ; $7310: $0d
	ld   e, l                                        ; $7311: $5d
	ld   l, [hl]                                     ; $7312: $6e
	ld   h, e                                        ; $7313: $63
	ld   d, d                                        ; $7314: $52
	sbc  a                                           ; $7315: $9f
	dec  c                                           ; $7316: $0d
	nop                                              ; $7317: $00
	ld   a, [bc]                                     ; $7318: $0a
	ld   bc, $020a                                   ; $7319: $01 $0a $02
	inc  b                                           ; $731c: $04
	and  l                                           ; $731d: $a5
	ld   a, l                                        ; $731e: $7d
	ret  nc                                          ; $731f: $d0

	push af                                          ; $7320: $f5
	xor  l                                           ; $7321: $ad
	ei                                               ; $7322: $fb
	ld   a, [bc]                                     ; $7323: $0a
	inc  bc                                          ; $7324: $03
	sbc  [hl]                                        ; $7325: $9e
	ld   a, [bc]                                     ; $7326: $0a
	ld   [bc], a                                     ; $7327: $02
	ld   e, l                                        ; $7328: $5d
	ld   [hl], d                                     ; $7329: $72
	ld   a, l                                        ; $732a: $7d
	ld   l, l                                        ; $732b: $6d
	ld   a, b                                        ; $732c: $78
	ld   [bc], a                                     ; $732d: $02
	inc  [hl]                                        ; $732e: $34
	inc  bc                                          ; $732f: $03
	ret  nc                                          ; $7330: $d0

	ld   a, [bc]                                     ; $7331: $0a
	inc  bc                                          ; $7332: $03
	dec  c                                           ; $7333: $0d
	ld   a, [bc]                                     ; $7334: $0a
	ld   [bc], a                                     ; $7335: $02
	ld   l, e                                        ; $7336: $6b
	sbc  d                                           ; $7337: $9a
	ld   [bc], a                                     ; $7338: $02
	dec  bc                                          ; $7339: $0b
	ld   [bc], a                                     ; $733a: $02
	bit  7, l                                        ; $733b: $cb $7d
	sbc  [hl]                                        ; $733d: $9e
	ld   l, l                                        ; $733e: $6d
	ld   a, b                                        ; $733f: $78
	inc  bc                                          ; $7340: $03
	ld   h, l                                        ; $7341: $65
	inc  bc                                          ; $7342: $03
	ret  nc                                          ; $7343: $d0

	ld   a, [bc]                                     ; $7344: $0a
	inc  bc                                          ; $7345: $03
	ld   [hl], l                                     ; $7346: $75
	ld   h, a                                        ; $7347: $67
	sbc  a                                           ; $7348: $9f
	dec  c                                           ; $7349: $0d
	nop                                              ; $734a: $00
	ld   a, [bc]                                     ; $734b: $0a
	inc  e                                           ; $734c: $1c
	ld   bc, $0101                                   ; $734d: $01 $01 $01
	ld   bc, $7d75                                   ; $7350: $01 $75 $7d
	sbc  [hl]                                        ; $7353: $9e
	dec  b                                           ; $7354: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7355: $cf
	adc  a                                           ; $7356: $8f
	adc  h                                           ; $7357: $8c
	ld   h, a                                        ; $7358: $67
	sub  [hl]                                        ; $7359: $96
	sbc  a                                           ; $735a: $9f
	dec  c                                           ; $735b: $0d
	nop                                              ; $735c: $00
	ld   a, [bc]                                     ; $735d: $0a
	inc  e                                           ; $735e: $1c
	ld   bc, $0000                                   ; $735f: $01 $00 $00
	ld   bc, $688c                                   ; $7362: $01 $8c $68
	ld   a, l                                        ; $7365: $7d
	sbc  [hl]                                        ; $7366: $9e
	inc  b                                           ; $7367: $04
	db   $eb                                         ; $7368: $eb
	inc  b                                           ; $7369: $04
	ld   [hl], a                                     ; $736a: $77
	ld   a, h                                        ; $736b: $7c
	jp   z, $baee                                    ; $736c: $ca $ee $ba

	and  b                                           ; $736f: $a0
	add  hl, de                                      ; $7370: $19
	inc  b                                           ; $7371: $04
	rlca                                             ; $7372: $07
	sbc  a                                           ; $7373: $9f
	dec  c                                           ; $7374: $0d
	nop                                              ; $7375: $00
	ld   a, [bc]                                     ; $7376: $0a
	add  hl, de                                      ; $7377: $19
	dec  b                                           ; $7378: $05
	inc  bc                                          ; $7379: $03
	ret  nc                                          ; $737a: $d0

	push af                                          ; $737b: $f5
	xor  l                                           ; $737c: $ad
	ei                                               ; $737d: $fb
	ld   a, c                                        ; $737e: $79
	ld   e, c                                        ; $737f: $59
	ld   e, a                                        ; $7380: $5f
	sbc  c                                           ; $7381: $99
	nop                                              ; $7382: $00
	nop                                              ; $7383: $00
	ld   l, l                                        ; $7384: $6d
	ld   a, b                                        ; $7385: $78
	inc  bc                                          ; $7386: $03
	ld   h, l                                        ; $7387: $65
	inc  bc                                          ; $7388: $03
	ret  nc                                          ; $7389: $d0

	ld   a, c                                        ; $738a: $79
	inc  b                                           ; $738b: $04
	jr   z, jr_054_73eb                              ; $738c: $28 $5d

	nop                                              ; $738e: $00
	ld   bc, $786d                                   ; $738f: $01 $6d $78
	ld   [bc], a                                     ; $7392: $02
	inc  [hl]                                        ; $7393: $34
	inc  bc                                          ; $7394: $03
	ret  nc                                          ; $7395: $d0

	ld   a, c                                        ; $7396: $79
	inc  b                                           ; $7397: $04
	jr   z, jr_054_73f7                              ; $7398: $28 $5d

	nop                                              ; $739a: $00
	ld   [bc], a                                     ; $739b: $02
	rlca                                             ; $739c: $07
	ldh  [c], a                                      ; $739d: $e2
	inc  bc                                          ; $739e: $03
	ld   [bc], a                                     ; $739f: $02
	inc  bc                                          ; $73a0: $03
	ld   bc, $2000                                   ; $73a1: $01 $00 $20
	nop                                              ; $73a4: $00
	rlca                                             ; $73a5: $07
	add  hl, hl                                      ; $73a6: $29
	inc  b                                           ; $73a7: $04
	ld   [bc], a                                     ; $73a8: $02
	inc  bc                                          ; $73a9: $03
	ld   bc, $2001                                   ; $73aa: $01 $01 $20
	nop                                              ; $73ad: $00
	rlca                                             ; $73ae: $07
	ld   e, h                                        ; $73af: $5c
	inc  b                                           ; $73b0: $04
	ld   [bc], a                                     ; $73b1: $02
	inc  bc                                          ; $73b2: $03
	ld   bc, $2002                                   ; $73b3: $01 $02 $20
	nop                                              ; $73b6: $00
	ld   b, $8f                                      ; $73b7: $06 $8f
	inc  b                                           ; $73b9: $04
	rrca                                             ; $73ba: $0f
	nop                                              ; $73bb: $00
	ld   bc, wGameResultsReturnState                                   ; $73bc: $01 $01 $ca
	xor  $ba                                         ; $73bf: $ee $ba
	ld   a, l                                        ; $73c1: $7d
	inc  b                                           ; $73c2: $04
	and  l                                           ; $73c3: $a5
	ld   l, [hl]                                     ; $73c4: $6e
	ld   e, c                                        ; $73c5: $59
	sub  a                                           ; $73c6: $97
	sbc  [hl]                                        ; $73c7: $9e
	ret  nc                                          ; $73c8: $d0

	push af                                          ; $73c9: $f5
	xor  l                                           ; $73ca: $ad
	ei                                               ; $73cb: $fb
	sbc  a                                           ; $73cc: $9f
	dec  c                                           ; $73cd: $0d
	nop                                              ; $73ce: $00
	ld   a, [bc]                                     ; $73cf: $0a
	inc  e                                           ; $73d0: $1c
	ld   bc, $0101                                   ; $73d1: $01 $01 $01
	ld   bc, $546b                                   ; $73d4: $01 $6b $54
	ld   l, e                                        ; $73d7: $6b
	ld   d, h                                        ; $73d8: $54
	sbc  [hl]                                        ; $73d9: $9e
	dec  c                                           ; $73da: $0d
	inc  b                                           ; $73db: $04
	and  l                                           ; $73dc: $a5
	ld   a, l                                        ; $73dd: $7d
	ret  nc                                          ; $73de: $d0

	push af                                          ; $73df: $f5
	xor  l                                           ; $73e0: $ad
	ei                                               ; $73e1: $fb
	ld   [hl], l                                     ; $73e2: $75
	ld   h, a                                        ; $73e3: $67
	sbc  a                                           ; $73e4: $9f
	dec  c                                           ; $73e5: $0d
	nop                                              ; $73e6: $00
	dec  b                                           ; $73e7: $05
	ld   b, b                                        ; $73e8: $40
	rst  $38                                         ; $73e9: $ff
	inc  bc                                          ; $73ea: $03

jr_054_73eb:
	rst  $38                                         ; $73eb: $ff
	ld   bc, $2801                                   ; $73ec: $01 $01 $28
	nop                                              ; $73ef: $00
	ld   bc, $7c6b                                   ; $73f0: $01 $6b $7c
	inc  bc                                          ; $73f3: $03
	cp   $03                                         ; $73f4: $fe $03
	add  [hl]                                        ; $73f6: $86

jr_054_73f7:
	ld   [hl], l                                     ; $73f7: $75
	ld   h, a                                        ; $73f8: $67
	sub  [hl]                                        ; $73f9: $96
	sbc  a                                           ; $73fa: $9f
	dec  c                                           ; $73fb: $0d
	nop                                              ; $73fc: $00
	ld   a, [bc]                                     ; $73fd: $0a
	ld   b, $bc                                      ; $73fe: $06 $bc
	inc  b                                           ; $7400: $04
	rrca                                             ; $7401: $0f
	nop                                              ; $7402: $00
	ld   bc, wGameResultsReturnState                                   ; $7403: $01 $01 $ca
	xor  $ba                                         ; $7406: $ee $ba
	ld   a, l                                        ; $7408: $7d
	rst  $38                                         ; $7409: $ff
	rst  $38                                         ; $740a: $ff
	ld   l, l                                        ; $740b: $6d
	ld   a, b                                        ; $740c: $78
	inc  bc                                          ; $740d: $03
	ld   h, l                                        ; $740e: $65
	inc  bc                                          ; $740f: $03
	ret  nc                                          ; $7410: $d0

	ld   e, c                                        ; $7411: $59
	ld   a, b                                        ; $7412: $78
	ld   sp, hl                                      ; $7413: $f9
	dec  c                                           ; $7414: $0d
	nop                                              ; $7415: $00
	ld   a, [bc]                                     ; $7416: $0a
	inc  e                                           ; $7417: $1c
	ld   bc, $0202                                   ; $7418: $01 $02 $02
	ld   bc, $5a6f                                   ; $741b: $01 $6f $5a
	ld   d, d                                        ; $741e: $52
	adc  h                                           ; $741f: $8c
	ld   h, a                                        ; $7420: $67
	sub  [hl]                                        ; $7421: $96
	sbc  a                                           ; $7422: $9f
	dec  c                                           ; $7423: $0d
	inc  b                                           ; $7424: $04
	and  l                                           ; $7425: $a5
	ld   a, l                                        ; $7426: $7d
	ret  nc                                          ; $7427: $d0

	push af                                          ; $7428: $f5
	xor  l                                           ; $7429: $ad
	ei                                               ; $742a: $fb
	ld   [hl], l                                     ; $742b: $75
	ld   h, a                                        ; $742c: $67
	sbc  a                                           ; $742d: $9f
	dec  c                                           ; $742e: $0d
	nop                                              ; $742f: $00
	ld   a, [bc]                                     ; $7430: $0a
	ld   b, $bc                                      ; $7431: $06 $bc
	inc  b                                           ; $7433: $04
	rrca                                             ; $7434: $0f
	nop                                              ; $7435: $00
	ld   bc, wGameResultsReturnState                                   ; $7436: $01 $01 $ca
	xor  $ba                                         ; $7439: $ee $ba
	ld   a, l                                        ; $743b: $7d
	rst  $38                                         ; $743c: $ff
	rst  $38                                         ; $743d: $ff
	ld   l, l                                        ; $743e: $6d
	ld   a, b                                        ; $743f: $78
	ld   [bc], a                                     ; $7440: $02
	inc  [hl]                                        ; $7441: $34
	inc  bc                                          ; $7442: $03
	ret  nc                                          ; $7443: $d0

	ld   e, c                                        ; $7444: $59
	ld   a, b                                        ; $7445: $78
	ld   sp, hl                                      ; $7446: $f9
	dec  c                                           ; $7447: $0d
	nop                                              ; $7448: $00
	ld   a, [bc]                                     ; $7449: $0a
	inc  e                                           ; $744a: $1c
	ld   bc, $0202                                   ; $744b: $01 $02 $02
	ld   bc, $5a6f                                   ; $744e: $01 $6f $5a
	ld   d, d                                        ; $7451: $52

Jump_054_7452:
	adc  h                                           ; $7452: $8c
	ld   h, a                                        ; $7453: $67
	sub  [hl]                                        ; $7454: $96
	sbc  a                                           ; $7455: $9f
	dec  c                                           ; $7456: $0d
	inc  b                                           ; $7457: $04
	and  l                                           ; $7458: $a5
	ld   a, l                                        ; $7459: $7d
	ret  nc                                          ; $745a: $d0

	push af                                          ; $745b: $f5
	xor  l                                           ; $745c: $ad
	ei                                               ; $745d: $fb
	ld   [hl], l                                     ; $745e: $75

Jump_054_745f:
	ld   h, a                                        ; $745f: $67
	sbc  a                                           ; $7460: $9f
	dec  c                                           ; $7461: $0d
	nop                                              ; $7462: $00
	ld   a, [bc]                                     ; $7463: $0a
	ld   b, $bc                                      ; $7464: $06 $bc
	inc  b                                           ; $7466: $04
	inc  e                                           ; $7467: $1c
	ld   bc, $0707                                   ; $7468: $01 $07 $07
	ld   bc, $a504                                   ; $746b: $01 $04 $a5
	ld   a, l                                        ; $746e: $7d
	ret  nc                                          ; $746f: $d0

	push af                                          ; $7470: $f5

Jump_054_7471:
	xor  l                                           ; $7471: $ad
	ei                                               ; $7472: $fb
	ld   [hl], l                                     ; $7473: $75
	ld   h, a                                        ; $7474: $67
	sub  [hl]                                        ; $7475: $96
	sbc  a                                           ; $7476: $9f
	dec  c                                           ; $7477: $0d
	inc  bc                                          ; $7478: $03
	ld   [hl], b                                     ; $7479: $70
	ld   e, l                                        ; $747a: $5d
	sub  d                                           ; $747b: $92
	sub  a                                           ; $747c: $97
	ld   a, b                                        ; $747d: $78
	ld   d, d                                        ; $747e: $52
	halt                                             ; $747f: $76
	dec  c                                           ; $7480: $0d
	inc  b                                           ; $7481: $04
	xor  d                                           ; $7482: $aa
	ld   e, d                                        ; $7483: $5a
	dec  b                                           ; $7484: $05
	sub  a                                           ; $7485: $97
	sbc  d                                           ; $7486: $9a
	ld   [hl], h                                     ; $7487: $74
	ld   h, l                                        ; $7488: $65
	adc  h                                           ; $7489: $8c
	ld   d, d                                        ; $748a: $52
	adc  h                                           ; $748b: $8c
	ld   h, a                                        ; $748c: $67
	sbc  a                                           ; $748d: $9f
	dec  c                                           ; $748e: $0d
	nop                                              ; $748f: $00
	ld   a, [bc]                                     ; $7490: $0a
	ld   b, $bc                                      ; $7491: $06 $bc
	inc  b                                           ; $7493: $04
	inc  e                                           ; $7494: $1c
	ld   bc, $0000                                   ; $7495: $01 $00 $00
	ld   bc, $6803                                   ; $7498: $01 $03 $68
	ld   a, l                                        ; $749b: $7d
	sbc  [hl]                                        ; $749c: $9e
	ld   l, c                                        ; $749d: $69
	ld   [hl], c                                     ; $749e: $71
	ld   l, l                                        ; $749f: $6d
	and  b                                           ; $74a0: $a0
	rla                                              ; $74a1: $17
	inc  bc                                          ; $74a2: $03
	ld   a, l                                        ; $74a3: $7d
	sbc  a                                           ; $74a4: $9f
	dec  c                                           ; $74a5: $0d
	nop                                              ; $74a6: $00
	ld   a, [bc]                                     ; $74a7: $0a
	add  hl, de                                      ; $74a8: $19
	dec  b                                           ; $74a9: $05
	inc  bc                                          ; $74aa: $03
	ret  nc                                          ; $74ab: $d0

	push af                                          ; $74ac: $f5
	xor  l                                           ; $74ad: $ad
	ei                                               ; $74ae: $fb
	ld   a, c                                        ; $74af: $79
	ld   e, c                                        ; $74b0: $59
	ld   e, a                                        ; $74b1: $5f
	sbc  c                                           ; $74b2: $99
	nop                                              ; $74b3: $00
	nop                                              ; $74b4: $00
	ld   l, l                                        ; $74b5: $6d
	ld   a, b                                        ; $74b6: $78
	inc  bc                                          ; $74b7: $03
	ld   h, l                                        ; $74b8: $65
	inc  bc                                          ; $74b9: $03
	ret  nc                                          ; $74ba: $d0

	ld   a, c                                        ; $74bb: $79
	inc  b                                           ; $74bc: $04
	jr   z, jr_054_751c                              ; $74bd: $28 $5d

	nop                                              ; $74bf: $00
	ld   bc, $786d                                   ; $74c0: $01 $6d $78
	ld   [bc], a                                     ; $74c3: $02
	inc  [hl]                                        ; $74c4: $34
	inc  bc                                          ; $74c5: $03
	ret  nc                                          ; $74c6: $d0

	ld   a, c                                        ; $74c7: $79
	inc  b                                           ; $74c8: $04
	jr   z, jr_054_7528                              ; $74c9: $28 $5d

	nop                                              ; $74cb: $00
	ld   [bc], a                                     ; $74cc: $02
	rlca                                             ; $74cd: $07
	or   e                                           ; $74ce: $b3
	dec  b                                           ; $74cf: $05
	ld   [bc], a                                     ; $74d0: $02
	inc  bc                                          ; $74d1: $03
	ld   bc, $2000                                   ; $74d2: $01 $00 $20
	nop                                              ; $74d5: $00
	rlca                                             ; $74d6: $07
	ld   l, d                                        ; $74d7: $6a
	dec  b                                           ; $74d8: $05
	ld   [bc], a                                     ; $74d9: $02
	inc  bc                                          ; $74da: $03
	ld   bc, $2001                                   ; $74db: $01 $01 $20
	nop                                              ; $74de: $00
	rlca                                             ; $74df: $07
	inc  de                                          ; $74e0: $13
	dec  b                                           ; $74e1: $05
	ld   [bc], a                                     ; $74e2: $02
	inc  bc                                          ; $74e3: $03
	ld   bc, $2002                                   ; $74e4: $01 $02 $20
	nop                                              ; $74e7: $00
	ld   b, $fa                                      ; $74e8: $06 $fa
	dec  b                                           ; $74ea: $05
	rrca                                             ; $74eb: $0f
	nop                                              ; $74ec: $00
	ld   bc, $6901                                   ; $74ed: $01 $01 $69
	ld   [hl], c                                     ; $74f0: $71
	ld   l, l                                        ; $74f1: $6d
	ld   a, l                                        ; $74f2: $7d
	sbc  [hl]                                        ; $74f3: $9e
	ld   a, l                                        ; $74f4: $7d
	ld   e, e                                        ; $74f5: $5b
	sub  b                                           ; $74f6: $90
	ld   a, h                                        ; $74f7: $7c
	ld   l, [hl]                                     ; $74f8: $6e
	ld   e, c                                        ; $74f9: $59
	sub  a                                           ; $74fa: $97
	sbc  [hl]                                        ; $74fb: $9e
	dec  c                                           ; $74fc: $0d
	ld   l, l                                        ; $74fd: $6d
	ld   a, b                                        ; $74fe: $78
	ld   [bc], a                                     ; $74ff: $02
	inc  [hl]                                        ; $7500: $34
	inc  bc                                          ; $7501: $03
	ret  nc                                          ; $7502: $d0

	sbc  a                                           ; $7503: $9f
	dec  c                                           ; $7504: $0d
	nop                                              ; $7505: $00
	ld   a, [bc]                                     ; $7506: $0a
	inc  e                                           ; $7507: $1c
	ld   bc, $0101                                   ; $7508: $01 $01 $01
	ld   bc, $546b                                   ; $750b: $01 $6b $54
	ld   l, e                                        ; $750e: $6b
	ld   d, h                                        ; $750f: $54
	sbc  [hl]                                        ; $7510: $9e
	ld   l, c                                        ; $7511: $69
	ld   [hl], c                                     ; $7512: $71
	ld   l, l                                        ; $7513: $6d
	ld   a, l                                        ; $7514: $7d
	sbc  [hl]                                        ; $7515: $9e
	ld   a, l                                        ; $7516: $7d
	ld   e, e                                        ; $7517: $5b
	sub  b                                           ; $7518: $90
	ld   a, h                                        ; $7519: $7c
	dec  c                                           ; $751a: $0d
	ld   [hl], l                                     ; $751b: $75

jr_054_751c:
	ld   h, a                                        ; $751c: $67
	ld   e, c                                        ; $751d: $59
	sub  a                                           ; $751e: $97
	ld   [bc], a                                     ; $751f: $02
	inc  [hl]                                        ; $7520: $34
	inc  bc                                          ; $7521: $03
	ret  nc                                          ; $7522: $d0

	ld   [hl], l                                     ; $7523: $75
	ld   h, a                                        ; $7524: $67
	sbc  a                                           ; $7525: $9f
	dec  c                                           ; $7526: $0d
	nop                                              ; $7527: $00

jr_054_7528:
	dec  b                                           ; $7528: $05
	ld   b, b                                        ; $7529: $40
	rst  $38                                         ; $752a: $ff
	inc  bc                                          ; $752b: $03
	rst  $38                                         ; $752c: $ff
	ld   bc, $2801                                   ; $752d: $01 $01 $28
	nop                                              ; $7530: $00
	ld   bc, $7c6b                                   ; $7531: $01 $6b $7c
	inc  bc                                          ; $7534: $03
	cp   $03                                         ; $7535: $fe $03
	add  [hl]                                        ; $7537: $86
	ld   [hl], l                                     ; $7538: $75
	ld   h, a                                        ; $7539: $67
	sub  [hl]                                        ; $753a: $96
	sbc  a                                           ; $753b: $9f
	dec  c                                           ; $753c: $0d
	nop                                              ; $753d: $00
	ld   a, [bc]                                     ; $753e: $0a
	ld   b, $32                                      ; $753f: $06 $32
	ld   b, $0f                                      ; $7541: $06 $0f
	nop                                              ; $7543: $00
	ld   bc, $6901                                   ; $7544: $01 $01 $69
	ld   [hl], c                                     ; $7547: $71
	ld   l, l                                        ; $7548: $6d
	ld   sp, hl                                      ; $7549: $f9
	db   $10                                         ; $754a: $10
	ld   a, b                                        ; $754b: $78
	and  c                                           ; $754c: $a1
	ld   l, [hl]                                     ; $754d: $6e
	ld   l, e                                        ; $754e: $6b
	sbc  d                                           ; $754f: $9a
	ld   sp, hl                                      ; $7550: $f9
	dec  c                                           ; $7551: $0d
	halt                                             ; $7552: $76
	sbc  b                                           ; $7553: $98
	ld   d, b                                        ; $7554: $50
	ld   d, [hl]                                     ; $7555: $56
	ld   l, b                                        ; $7556: $68
	ld   l, l                                        ; $7557: $6d
	ld   a, b                                        ; $7558: $78
	inc  bc                                          ; $7559: $03
	ld   h, l                                        ; $755a: $65
	inc  bc                                          ; $755b: $03
	ret  nc                                          ; $755c: $d0

	ld   e, c                                        ; $755d: $59
	ld   a, b                                        ; $755e: $78
	ld   sp, hl                                      ; $755f: $f9
	dec  c                                           ; $7560: $0d
	nop                                              ; $7561: $00
	ld   a, [bc]                                     ; $7562: $0a
	inc  e                                           ; $7563: $1c
	ld   bc, $0202                                   ; $7564: $01 $02 $02
	ld   bc, $5a6f                                   ; $7567: $01 $6f $5a
	ld   d, d                                        ; $756a: $52
	adc  h                                           ; $756b: $8c
	ld   h, a                                        ; $756c: $67
	sub  [hl]                                        ; $756d: $96
	sbc  a                                           ; $756e: $9f
	dec  c                                           ; $756f: $0d
	ld   l, c                                        ; $7570: $69
	ld   [hl], c                                     ; $7571: $71
	ld   l, l                                        ; $7572: $6d
	ld   a, l                                        ; $7573: $7d
	sbc  [hl]                                        ; $7574: $9e
	ld   a, l                                        ; $7575: $7d
	ld   e, e                                        ; $7576: $5b
	sub  b                                           ; $7577: $90
	ld   a, h                                        ; $7578: $7c
	ld   [hl], l                                     ; $7579: $75
	ld   h, a                                        ; $757a: $67
	ld   e, c                                        ; $757b: $59
	sub  a                                           ; $757c: $97
	dec  c                                           ; $757d: $0d
	ld   [bc], a                                     ; $757e: $02
	inc  [hl]                                        ; $757f: $34
	inc  bc                                          ; $7580: $03
	ret  nc                                          ; $7581: $d0

	ld   [hl], l                                     ; $7582: $75
	ld   h, a                                        ; $7583: $67
	sbc  a                                           ; $7584: $9f
	dec  c                                           ; $7585: $0d
	nop                                              ; $7586: $00
	ld   a, [bc]                                     ; $7587: $0a
	ld   b, $32                                      ; $7588: $06 $32
	ld   b, $0f                                      ; $758a: $06 $0f
	nop                                              ; $758c: $00
	ld   bc, $6901                                   ; $758d: $01 $01 $69
	ld   [hl], c                                     ; $7590: $71
	ld   l, l                                        ; $7591: $6d
	ld   sp, hl                                      ; $7592: $f9
	db   $10                                         ; $7593: $10
	ld   a, b                                        ; $7594: $78
	and  c                                           ; $7595: $a1
	ld   l, [hl]                                     ; $7596: $6e
	ld   l, e                                        ; $7597: $6b
	sbc  d                                           ; $7598: $9a
	ld   sp, hl                                      ; $7599: $f9
	dec  c                                           ; $759a: $0d
	halt                                             ; $759b: $76
	sbc  b                                           ; $759c: $98
	ld   d, b                                        ; $759d: $50
	ld   d, [hl]                                     ; $759e: $56
	ld   l, b                                        ; $759f: $68
	ret  nc                                          ; $75a0: $d0

	push af                                          ; $75a1: $f5
	xor  l                                           ; $75a2: $ad
	ei                                               ; $75a3: $fb
	ld   e, c                                        ; $75a4: $59
	ld   a, b                                        ; $75a5: $78
	ld   sp, hl                                      ; $75a6: $f9
	dec  c                                           ; $75a7: $0d
	nop                                              ; $75a8: $00
	ld   a, [bc]                                     ; $75a9: $0a
	inc  e                                           ; $75aa: $1c
	ld   bc, $0202                                   ; $75ab: $01 $02 $02
	ld   bc, $5a6f                                   ; $75ae: $01 $6f $5a
	ld   d, d                                        ; $75b1: $52
	adc  h                                           ; $75b2: $8c
	ld   h, a                                        ; $75b3: $67
	sub  [hl]                                        ; $75b4: $96
	sbc  a                                           ; $75b5: $9f
	dec  c                                           ; $75b6: $0d
	ld   l, c                                        ; $75b7: $69
	ld   [hl], c                                     ; $75b8: $71
	ld   l, l                                        ; $75b9: $6d
	ld   a, l                                        ; $75ba: $7d
	sbc  [hl]                                        ; $75bb: $9e
	ld   a, l                                        ; $75bc: $7d
	ld   e, e                                        ; $75bd: $5b
	sub  b                                           ; $75be: $90
	ld   a, h                                        ; $75bf: $7c
	ld   [hl], l                                     ; $75c0: $75
	ld   h, a                                        ; $75c1: $67
	ld   e, c                                        ; $75c2: $59
	sub  a                                           ; $75c3: $97
	dec  c                                           ; $75c4: $0d
	ld   [bc], a                                     ; $75c5: $02
	inc  [hl]                                        ; $75c6: $34
	inc  bc                                          ; $75c7: $03
	ret  nc                                          ; $75c8: $d0

	ld   [hl], l                                     ; $75c9: $75
	ld   h, a                                        ; $75ca: $67
	sbc  a                                           ; $75cb: $9f
	dec  c                                           ; $75cc: $0d
	nop                                              ; $75cd: $00
	ld   a, [bc]                                     ; $75ce: $0a
	ld   b, $32                                      ; $75cf: $06 $32
	ld   b, $1c                                      ; $75d1: $06 $1c
	ld   bc, $0707                                   ; $75d3: $01 $07 $07
	ld   bc, $7169                                   ; $75d6: $01 $69 $71
	ld   l, l                                        ; $75d9: $6d
	ld   a, l                                        ; $75da: $7d
	sbc  [hl]                                        ; $75db: $9e
	ld   a, l                                        ; $75dc: $7d
	ld   e, e                                        ; $75dd: $5b
	sub  b                                           ; $75de: $90
	ld   a, h                                        ; $75df: $7c
	ld   [hl], l                                     ; $75e0: $75
	ld   h, a                                        ; $75e1: $67
	ld   e, c                                        ; $75e2: $59
	sub  a                                           ; $75e3: $97
	dec  c                                           ; $75e4: $0d
	ld   [bc], a                                     ; $75e5: $02
	inc  [hl]                                        ; $75e6: $34
	inc  bc                                          ; $75e7: $03
	ret  nc                                          ; $75e8: $d0

	ld   [hl], l                                     ; $75e9: $75
	ld   h, a                                        ; $75ea: $67
	sbc  a                                           ; $75eb: $9f
	ld   h, e                                        ; $75ec: $63
	ld   [hl], c                                     ; $75ed: $71
	ld   h, e                                        ; $75ee: $63
	halt                                             ; $75ef: $76
	sub  d                                           ; $75f0: $92
	sub  a                                           ; $75f1: $97
	ld   a, b                                        ; $75f2: $78
	ld   d, d                                        ; $75f3: $52
	halt                                             ; $75f4: $76
	dec  c                                           ; $75f5: $0d
	inc  b                                           ; $75f6: $04
	xor  d                                           ; $75f7: $aa
	ld   e, d                                        ; $75f8: $5a
	dec  b                                           ; $75f9: $05
	sub  a                                           ; $75fa: $97
	sbc  d                                           ; $75fb: $9a
	ld   [hl], h                                     ; $75fc: $74
	ld   h, l                                        ; $75fd: $65
	adc  h                                           ; $75fe: $8c
	ld   d, d                                        ; $75ff: $52
	adc  h                                           ; $7600: $8c
	ld   h, a                                        ; $7601: $67
	sub  [hl]                                        ; $7602: $96
	sbc  a                                           ; $7603: $9f
	dec  c                                           ; $7604: $0d
	nop                                              ; $7605: $00
	ld   a, [bc]                                     ; $7606: $0a
	ld   b, $32                                      ; $7607: $06 $32
	ld   b, $1c                                      ; $7609: $06 $1c
	ld   bc, $0000                                   ; $760b: $01 $00 $00
	ld   bc, $6803                                   ; $760e: $01 $03 $68
	ld   a, l                                        ; $7611: $7d
	sbc  [hl]                                        ; $7612: $9e
	adc  d                                           ; $7613: $8a
	ld   d, h                                        ; $7614: $54
	ld   h, l                                        ; $7615: $65
	and  b                                           ; $7616: $a0
	rla                                              ; $7617: $17
	ld   [hl], d                                     ; $7618: $72
	sbc  a                                           ; $7619: $9f
	dec  c                                           ; $761a: $0d
	nop                                              ; $761b: $00
	ld   a, [bc]                                     ; $761c: $0a
	add  hl, de                                      ; $761d: $19
	dec  b                                           ; $761e: $05
	inc  bc                                          ; $761f: $03
	ret  nc                                          ; $7620: $d0

	push af                                          ; $7621: $f5
	xor  l                                           ; $7622: $ad
	ei                                               ; $7623: $fb
	ld   a, c                                        ; $7624: $79
	ld   e, c                                        ; $7625: $59
	ld   e, a                                        ; $7626: $5f
	sbc  c                                           ; $7627: $99
	nop                                              ; $7628: $00
	nop                                              ; $7629: $00
	ld   l, l                                        ; $762a: $6d
	ld   a, b                                        ; $762b: $78
	inc  bc                                          ; $762c: $03
	ld   h, l                                        ; $762d: $65
	inc  bc                                          ; $762e: $03
	ret  nc                                          ; $762f: $d0

	ld   a, c                                        ; $7630: $79
	inc  b                                           ; $7631: $04
	jr   z, jr_054_7691                              ; $7632: $28 $5d

	nop                                              ; $7634: $00
	ld   bc, $786d                                   ; $7635: $01 $6d $78
	ld   [bc], a                                     ; $7638: $02
	inc  [hl]                                        ; $7639: $34
	inc  bc                                          ; $763a: $03
	ret  nc                                          ; $763b: $d0

	ld   a, c                                        ; $763c: $79
	inc  b                                           ; $763d: $04
	jr   z, jr_054_769d                              ; $763e: $28 $5d

	nop                                              ; $7640: $00
	ld   [bc], a                                     ; $7641: $02
	rlca                                             ; $7642: $07
	ret  c                                           ; $7643: $d8

	ld   b, $02                                      ; $7644: $06 $02
	inc  bc                                          ; $7646: $03
	ld   bc, $2000                                   ; $7647: $01 $00 $20
	nop                                              ; $764a: $00
	rlca                                             ; $764b: $07
	adc  b                                           ; $764c: $88
	ld   b, $02                                      ; $764d: $06 $02
	inc  bc                                          ; $764f: $03
	ld   bc, $2001                                   ; $7650: $01 $01 $20
	nop                                              ; $7653: $00
	rlca                                             ; $7654: $07
	dec  e                                           ; $7655: $1d
	rlca                                             ; $7656: $07
	ld   [bc], a                                     ; $7657: $02
	inc  bc                                          ; $7658: $03
	ld   bc, $2002                                   ; $7659: $01 $02 $20
	nop                                              ; $765c: $00
	ld   b, $65                                      ; $765d: $06 $65
	rlca                                             ; $765f: $07
	rrca                                             ; $7660: $0f
	nop                                              ; $7661: $00
	ld   bc, $8a01                                   ; $7662: $01 $01 $8a
	ld   d, h                                        ; $7665: $54
	ld   h, l                                        ; $7666: $65
	ld   a, l                                        ; $7667: $7d
	sbc  [hl]                                        ; $7668: $9e
	inc  b                                           ; $7669: $04
	and  l                                           ; $766a: $a5
	ld   [hl], l                                     ; $766b: $75
	sub  b                                           ; $766c: $90
	or   b                                           ; $766d: $b0
	push bc                                          ; $766e: $c5
	ld   [hl], l                                     ; $766f: $75
	sub  b                                           ; $7670: $90
	dec  c                                           ; $7671: $0d
	ld   a, b                                        ; $7672: $78
	ld   d, d                                        ; $7673: $52
	ld   e, c                                        ; $7674: $59
	sub  a                                           ; $7675: $97
	sbc  [hl]                                        ; $7676: $9e
	ld   l, l                                        ; $7677: $6d
	ld   a, b                                        ; $7678: $78
	inc  bc                                          ; $7679: $03
	ld   h, l                                        ; $767a: $65
	inc  bc                                          ; $767b: $03
	ret  nc                                          ; $767c: $d0

	sbc  a                                           ; $767d: $9f
	dec  c                                           ; $767e: $0d
	nop                                              ; $767f: $00
	ld   a, [bc]                                     ; $7680: $0a
	inc  e                                           ; $7681: $1c
	ld   bc, $0101                                   ; $7682: $01 $01 $01
	ld   bc, $546b                                   ; $7685: $01 $6b $54
	ld   l, e                                        ; $7688: $6b
	ld   d, h                                        ; $7689: $54
	sbc  [hl]                                        ; $768a: $9e
	adc  d                                           ; $768b: $8a
	ld   d, h                                        ; $768c: $54
	ld   h, l                                        ; $768d: $65
	ld   a, l                                        ; $768e: $7d
	inc  bc                                          ; $768f: $03
	ld   h, l                                        ; $7690: $65

jr_054_7691:
	inc  bc                                          ; $7691: $03
	ret  nc                                          ; $7692: $d0

	ld   [hl], l                                     ; $7693: $75
	ld   h, a                                        ; $7694: $67
	sbc  a                                           ; $7695: $9f
	dec  c                                           ; $7696: $0d
	ld   l, e                                        ; $7697: $6b
	ld   a, h                                        ; $7698: $7c
	inc  bc                                          ; $7699: $03
	cp   $03                                         ; $769a: $fe $03
	add  [hl]                                        ; $769c: $86

jr_054_769d:
	ld   [hl], l                                     ; $769d: $75
	ld   h, a                                        ; $769e: $67
	sub  [hl]                                        ; $769f: $96
	sbc  a                                           ; $76a0: $9f
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
	ld   b, $9f                                      ; $76ad: $06 $9f
	rlca                                             ; $76af: $07
	rrca                                             ; $76b0: $0f
	nop                                              ; $76b1: $00
	ld   bc, $8a01                                   ; $76b2: $01 $01 $8a
	ld   d, h                                        ; $76b5: $54
	ld   h, l                                        ; $76b6: $65
	ld   a, l                                        ; $76b7: $7d
	rst  $38                                         ; $76b8: $ff
	rst  $38                                         ; $76b9: $ff
	dec  c                                           ; $76ba: $0d
	halt                                             ; $76bb: $76
	sbc  b                                           ; $76bc: $98
	ld   d, b                                        ; $76bd: $50
	ld   d, [hl]                                     ; $76be: $56
	ld   l, b                                        ; $76bf: $68
	ret  nc                                          ; $76c0: $d0

	push af                                          ; $76c1: $f5
	xor  l                                           ; $76c2: $ad
	ei                                               ; $76c3: $fb
	ld   e, c                                        ; $76c4: $59
	ld   a, b                                        ; $76c5: $78
	ld   sp, hl                                      ; $76c6: $f9
	dec  c                                           ; $76c7: $0d
	nop                                              ; $76c8: $00
	ld   a, [bc]                                     ; $76c9: $0a
	inc  e                                           ; $76ca: $1c
	ld   bc, $0707                                   ; $76cb: $01 $07 $07
	ld   bc, $5a6f                                   ; $76ce: $01 $6f $5a
	ld   d, d                                        ; $76d1: $52
	adc  h                                           ; $76d2: $8c
	ld   h, a                                        ; $76d3: $67
	sub  [hl]                                        ; $76d4: $96
	sbc  a                                           ; $76d5: $9f
	dec  c                                           ; $76d6: $0d
	adc  d                                           ; $76d7: $8a
	ld   d, h                                        ; $76d8: $54
	ld   h, l                                        ; $76d9: $65
	ld   a, l                                        ; $76da: $7d
	sbc  [hl]                                        ; $76db: $9e
	ld   l, e                                        ; $76dc: $6b
	ld   a, h                                        ; $76dd: $7c
	inc  b                                           ; $76de: $04
	ld   e, $7c                                      ; $76df: $1e $7c
	inc  b                                           ; $76e1: $04
	sub  d                                           ; $76e2: $92
	ld   [hl], l                                     ; $76e3: $75
	ld   h, a                                        ; $76e4: $67
	ld   e, c                                        ; $76e5: $59
	sub  a                                           ; $76e6: $97
	dec  c                                           ; $76e7: $0d
	inc  bc                                          ; $76e8: $03
	ld   h, l                                        ; $76e9: $65
	inc  bc                                          ; $76ea: $03
	ret  nc                                          ; $76eb: $d0

	ld   [hl], l                                     ; $76ec: $75
	ld   h, a                                        ; $76ed: $67
	sbc  a                                           ; $76ee: $9f
	dec  c                                           ; $76ef: $0d
	nop                                              ; $76f0: $00
	ld   a, [bc]                                     ; $76f1: $0a
	ld   b, $9f                                      ; $76f2: $06 $9f
	rlca                                             ; $76f4: $07
	rrca                                             ; $76f5: $0f
	nop                                              ; $76f6: $00
	ld   bc, $8a01                                   ; $76f7: $01 $01 $8a
	ld   d, h                                        ; $76fa: $54
	ld   h, l                                        ; $76fb: $65
	ld   a, l                                        ; $76fc: $7d
	rst  $38                                         ; $76fd: $ff
	rst  $38                                         ; $76fe: $ff
	dec  c                                           ; $76ff: $0d
	halt                                             ; $7700: $76
	sbc  b                                           ; $7701: $98
	ld   d, b                                        ; $7702: $50
	ld   d, [hl]                                     ; $7703: $56
	ld   l, b                                        ; $7704: $68
	sbc  [hl]                                        ; $7705: $9e
	ld   l, l                                        ; $7706: $6d
	ld   a, b                                        ; $7707: $78
	ld   [bc], a                                     ; $7708: $02
	inc  [hl]                                        ; $7709: $34
	inc  bc                                          ; $770a: $03
	ret  nc                                          ; $770b: $d0

	ld   e, c                                        ; $770c: $59
	ld   a, b                                        ; $770d: $78
	ld   sp, hl                                      ; $770e: $f9
	dec  c                                           ; $770f: $0d
	nop                                              ; $7710: $00
	ld   a, [bc]                                     ; $7711: $0a
	inc  e                                           ; $7712: $1c
	ld   bc, $0707                                   ; $7713: $01 $07 $07
	ld   bc, $5a6f                                   ; $7716: $01 $6f $5a
	ld   d, d                                        ; $7719: $52
	adc  h                                           ; $771a: $8c
	ld   h, a                                        ; $771b: $67
	sub  [hl]                                        ; $771c: $96
	sbc  a                                           ; $771d: $9f
	dec  c                                           ; $771e: $0d
	adc  d                                           ; $771f: $8a
	ld   d, h                                        ; $7720: $54
	ld   h, l                                        ; $7721: $65
	ld   a, l                                        ; $7722: $7d
	sbc  [hl]                                        ; $7723: $9e
	ld   l, e                                        ; $7724: $6b
	ld   a, h                                        ; $7725: $7c
	inc  b                                           ; $7726: $04
	ld   e, $7c                                      ; $7727: $1e $7c
	inc  b                                           ; $7729: $04
	sub  d                                           ; $772a: $92
	ld   [hl], l                                     ; $772b: $75
	ld   h, a                                        ; $772c: $67
	ld   e, c                                        ; $772d: $59
	sub  a                                           ; $772e: $97
	dec  c                                           ; $772f: $0d
	inc  bc                                          ; $7730: $03
	ld   h, l                                        ; $7731: $65
	inc  bc                                          ; $7732: $03
	ret  nc                                          ; $7733: $d0

	ld   [hl], l                                     ; $7734: $75
	ld   h, a                                        ; $7735: $67
	sbc  a                                           ; $7736: $9f
	dec  c                                           ; $7737: $0d
	nop                                              ; $7738: $00
	ld   a, [bc]                                     ; $7739: $0a
	ld   b, $9f                                      ; $773a: $06 $9f
	rlca                                             ; $773c: $07
	inc  e                                           ; $773d: $1c
	ld   bc, $0202                                   ; $773e: $01 $02 $02
	ld   bc, $548a                                   ; $7741: $01 $8a $54
	ld   h, l                                        ; $7744: $65
	ld   a, l                                        ; $7745: $7d
	sbc  [hl]                                        ; $7746: $9e
	ld   l, e                                        ; $7747: $6b
	ld   a, h                                        ; $7748: $7c
	inc  b                                           ; $7749: $04
	ld   e, $7c                                      ; $774a: $1e $7c
	inc  b                                           ; $774c: $04
	sub  d                                           ; $774d: $92
	ld   [hl], l                                     ; $774e: $75
	ld   h, a                                        ; $774f: $67
	ld   e, c                                        ; $7750: $59
	sub  a                                           ; $7751: $97
	dec  c                                           ; $7752: $0d
	inc  bc                                          ; $7753: $03
	ld   h, l                                        ; $7754: $65
	inc  bc                                          ; $7755: $03
	ret  nc                                          ; $7756: $d0

	ld   [hl], l                                     ; $7757: $75
	ld   h, a                                        ; $7758: $67
	sbc  a                                           ; $7759: $9f
	inc  bc                                          ; $775a: $03
	ld   [hl], b                                     ; $775b: $70
	ld   e, l                                        ; $775c: $5d
	sub  d                                           ; $775d: $92
	sub  a                                           ; $775e: $97
	ld   a, b                                        ; $775f: $78
	ld   d, d                                        ; $7760: $52
	halt                                             ; $7761: $76
	dec  c                                           ; $7762: $0d
	inc  b                                           ; $7763: $04
	xor  d                                           ; $7764: $aa
	ld   e, d                                        ; $7765: $5a
	dec  b                                           ; $7766: $05
	sub  a                                           ; $7767: $97
	sbc  d                                           ; $7768: $9a
	ld   [hl], h                                     ; $7769: $74
	ld   h, l                                        ; $776a: $65
	adc  h                                           ; $776b: $8c
	ld   d, d                                        ; $776c: $52
	adc  h                                           ; $776d: $8c
	ld   h, a                                        ; $776e: $67
	sub  [hl]                                        ; $776f: $96
	sbc  a                                           ; $7770: $9f
	dec  c                                           ; $7771: $0d
	nop                                              ; $7772: $00
	ld   a, [bc]                                     ; $7773: $0a
	ld   b, $9f                                      ; $7774: $06 $9f
	rlca                                             ; $7776: $07
	inc  e                                           ; $7777: $1c
	ld   bc, $0000                                   ; $7778: $01 $00 $00
	ld   bc, $6803                                   ; $777b: $01 $03 $68
	ld   a, l                                        ; $777e: $7d
	sbc  [hl]                                        ; $777f: $9e
	cp   e                                           ; $7780: $bb
	db   $dd                                         ; $7781: $dd
	push af                                          ; $7782: $f5
	ld   a, h                                        ; $7783: $7c
	jp   c, $c9ed                                    ; $7784: $da $ed $c9

	and  b                                           ; $7787: $a0
	jr   jr_054_778e                                 ; $7788: $18 $04

	adc  a                                           ; $778a: $8f
	sbc  a                                           ; $778b: $9f
	dec  c                                           ; $778c: $0d
	nop                                              ; $778d: $00

jr_054_778e:
	ld   a, [bc]                                     ; $778e: $0a
	add  hl, de                                      ; $778f: $19
	dec  b                                           ; $7790: $05
	inc  bc                                          ; $7791: $03
	ret  nc                                          ; $7792: $d0

	push af                                          ; $7793: $f5
	xor  l                                           ; $7794: $ad
	ei                                               ; $7795: $fb
	ld   a, c                                        ; $7796: $79
	ld   e, c                                        ; $7797: $59
	ld   e, a                                        ; $7798: $5f
	sbc  c                                           ; $7799: $99
	nop                                              ; $779a: $00
	nop                                              ; $779b: $00
	ld   l, l                                        ; $779c: $6d
	ld   a, b                                        ; $779d: $78
	inc  bc                                          ; $779e: $03
	ld   h, l                                        ; $779f: $65
	inc  bc                                          ; $77a0: $03
	ret  nc                                          ; $77a1: $d0

	ld   a, c                                        ; $77a2: $79
	inc  b                                           ; $77a3: $04
	jr   z, jr_054_7803                              ; $77a4: $28 $5d

	nop                                              ; $77a6: $00
	ld   bc, $786d                                   ; $77a7: $01 $6d $78
	ld   [bc], a                                     ; $77aa: $02
	inc  [hl]                                        ; $77ab: $34
	inc  bc                                          ; $77ac: $03
	ret  nc                                          ; $77ad: $d0

	ld   a, c                                        ; $77ae: $79
	inc  b                                           ; $77af: $04
	jr   z, jr_054_780f                              ; $77b0: $28 $5d

	nop                                              ; $77b2: $00
	ld   [bc], a                                     ; $77b3: $02
	rlca                                             ; $77b4: $07
	ld   c, d                                        ; $77b5: $4a
	ld   [$0302], sp                                 ; $77b6: $08 $02 $03
	ld   bc, $2000                                   ; $77b9: $01 $00 $20
	nop                                              ; $77bc: $00
	rlca                                             ; $77bd: $07
	ld   a, [$0207]                                  ; $77be: $fa $07 $02
	inc  bc                                          ; $77c1: $03
	ld   bc, $2001                                   ; $77c2: $01 $01 $20
	nop                                              ; $77c5: $00
	rlca                                             ; $77c6: $07
	adc  b                                           ; $77c7: $88
	ld   [$0302], sp                                 ; $77c8: $08 $02 $03
	ld   bc, $2002                                   ; $77cb: $01 $02 $20
	nop                                              ; $77ce: $00
	ld   b, $c8                                      ; $77cf: $06 $c8
	ld   [$000f], sp                                 ; $77d1: $08 $0f $00
	ld   bc, $da01                                   ; $77d4: $01 $01 $da
	db   $ed                                         ; $77d7: $ed
	ret                                              ; $77d8: $c9


	ld   a, l                                        ; $77d9: $7d
	sbc  [hl]                                        ; $77da: $9e
	inc  b                                           ; $77db: $04
	and  l                                           ; $77dc: $a5
	ld   [hl], l                                     ; $77dd: $75
	sub  b                                           ; $77de: $90
	or   b                                           ; $77df: $b0
	push bc                                          ; $77e0: $c5
	ld   [hl], l                                     ; $77e1: $75
	sub  b                                           ; $77e2: $90
	dec  c                                           ; $77e3: $0d
	ld   a, b                                        ; $77e4: $78
	ld   d, d                                        ; $77e5: $52
	ld   e, c                                        ; $77e6: $59
	sub  a                                           ; $77e7: $97
	sbc  [hl]                                        ; $77e8: $9e
	ld   l, l                                        ; $77e9: $6d
	ld   a, b                                        ; $77ea: $78
	inc  bc                                          ; $77eb: $03
	ld   h, l                                        ; $77ec: $65
	inc  bc                                          ; $77ed: $03
	ret  nc                                          ; $77ee: $d0

	sbc  a                                           ; $77ef: $9f
	dec  c                                           ; $77f0: $0d
	nop                                              ; $77f1: $00
	ld   a, [bc]                                     ; $77f2: $0a
	inc  e                                           ; $77f3: $1c
	ld   bc, $0101                                   ; $77f4: $01 $01 $01
	ld   bc, $546b                                   ; $77f7: $01 $6b $54
	ld   l, e                                        ; $77fa: $6b
	ld   d, h                                        ; $77fb: $54
	sbc  [hl]                                        ; $77fc: $9e
	jp   c, $c9ed                                    ; $77fd: $da $ed $c9

	ld   a, l                                        ; $7800: $7d
	inc  bc                                          ; $7801: $03
	ld   h, l                                        ; $7802: $65

jr_054_7803:
	inc  bc                                          ; $7803: $03
	ret  nc                                          ; $7804: $d0

	ld   [hl], l                                     ; $7805: $75
	ld   h, a                                        ; $7806: $67
	sbc  a                                           ; $7807: $9f
	dec  c                                           ; $7808: $0d
	ld   l, e                                        ; $7809: $6b
	ld   a, h                                        ; $780a: $7c
	inc  bc                                          ; $780b: $03
	cp   $03                                         ; $780c: $fe $03
	add  [hl]                                        ; $780e: $86

jr_054_780f:
	ld   [hl], l                                     ; $780f: $75
	ld   h, a                                        ; $7810: $67
	sub  [hl]                                        ; $7811: $96
	sbc  a                                           ; $7812: $9f
	dec  c                                           ; $7813: $0d
	nop                                              ; $7814: $00
	ld   a, [bc]                                     ; $7815: $0a
	dec  b                                           ; $7816: $05
	ld   b, b                                        ; $7817: $40
	rst  $38                                         ; $7818: $ff
	inc  bc                                          ; $7819: $03
	rst  $38                                         ; $781a: $ff
	ld   bc, $2801                                   ; $781b: $01 $01 $28
	nop                                              ; $781e: $00
	ld   b, $03                                      ; $781f: $06 $03
	add  hl, bc                                      ; $7821: $09
	rrca                                             ; $7822: $0f
	nop                                              ; $7823: $00
	ld   bc, $da01                                   ; $7824: $01 $01 $da
	db   $ed                                         ; $7827: $ed
	ret                                              ; $7828: $c9


	ld   a, l                                        ; $7829: $7d
	rst  $38                                         ; $782a: $ff
	rst  $38                                         ; $782b: $ff
	ret  nc                                          ; $782c: $d0

	push af                                          ; $782d: $f5
	xor  l                                           ; $782e: $ad
	ei                                               ; $782f: $fb
	ld   e, c                                        ; $7830: $59
	ld   sp, hl                                      ; $7831: $f9
	dec  c                                           ; $7832: $0d
	nop                                              ; $7833: $00
	ld   a, [bc]                                     ; $7834: $0a
	inc  e                                           ; $7835: $1c
	ld   bc, $0202                                   ; $7836: $01 $02 $02
	ld   bc, $5a6f                                   ; $7839: $01 $6f $5a
	ld   d, d                                        ; $783c: $52
	adc  h                                           ; $783d: $8c
	ld   h, a                                        ; $783e: $67
	sub  [hl]                                        ; $783f: $96
	sbc  a                                           ; $7840: $9f
	dec  c                                           ; $7841: $0d
	jp   c, $c9ed                                    ; $7842: $da $ed $c9

	ld   a, l                                        ; $7845: $7d
	sbc  [hl]                                        ; $7846: $9e
	ld   l, e                                        ; $7847: $6b
	ld   a, h                                        ; $7848: $7c
	inc  b                                           ; $7849: $04
	ld   e, $7c                                      ; $784a: $1e $7c
	inc  b                                           ; $784c: $04
	sub  d                                           ; $784d: $92
	ld   [hl], l                                     ; $784e: $75
	ld   h, a                                        ; $784f: $67
	ld   e, c                                        ; $7850: $59
	sub  a                                           ; $7851: $97
	dec  c                                           ; $7852: $0d
	inc  bc                                          ; $7853: $03
	ld   h, l                                        ; $7854: $65
	inc  bc                                          ; $7855: $03
	ret  nc                                          ; $7856: $d0

	ld   [hl], l                                     ; $7857: $75
	ld   h, a                                        ; $7858: $67
	sbc  a                                           ; $7859: $9f
	dec  c                                           ; $785a: $0d
	nop                                              ; $785b: $00
	ld   a, [bc]                                     ; $785c: $0a
	ld   b, $03                                      ; $785d: $06 $03
	add  hl, bc                                      ; $785f: $09
	rrca                                             ; $7860: $0f
	nop                                              ; $7861: $00
	ld   bc, $da01                                   ; $7862: $01 $01 $da
	db   $ed                                         ; $7865: $ed
	ret                                              ; $7866: $c9


	ld   a, l                                        ; $7867: $7d
	rst  $38                                         ; $7868: $ff
	rst  $38                                         ; $7869: $ff
	ld   l, l                                        ; $786a: $6d
	ld   a, b                                        ; $786b: $78
	ld   [bc], a                                     ; $786c: $02
	inc  [hl]                                        ; $786d: $34
	inc  bc                                          ; $786e: $03
	ret  nc                                          ; $786f: $d0

	ld   e, c                                        ; $7870: $59
	ld   sp, hl                                      ; $7871: $f9
	dec  c                                           ; $7872: $0d
	nop                                              ; $7873: $00
	ld   a, [bc]                                     ; $7874: $0a
	inc  e                                           ; $7875: $1c
	ld   bc, $0202                                   ; $7876: $01 $02 $02
	ld   bc, $5a6f                                   ; $7879: $01 $6f $5a
	ld   d, d                                        ; $787c: $52
	adc  h                                           ; $787d: $8c
	ld   h, a                                        ; $787e: $67
	sub  [hl]                                        ; $787f: $96
	sbc  a                                           ; $7880: $9f
	dec  c                                           ; $7881: $0d
	jp   c, $c9ed                                    ; $7882: $da $ed $c9

	ld   a, l                                        ; $7885: $7d
	sbc  [hl]                                        ; $7886: $9e
	ld   l, e                                        ; $7887: $6b
	ld   a, h                                        ; $7888: $7c
	inc  b                                           ; $7889: $04
	ld   e, $7c                                      ; $788a: $1e $7c
	inc  b                                           ; $788c: $04
	sub  d                                           ; $788d: $92
	ld   [hl], l                                     ; $788e: $75
	ld   h, a                                        ; $788f: $67
	ld   e, c                                        ; $7890: $59
	sub  a                                           ; $7891: $97
	dec  c                                           ; $7892: $0d
	inc  bc                                          ; $7893: $03
	ld   h, l                                        ; $7894: $65
	inc  bc                                          ; $7895: $03
	ret  nc                                          ; $7896: $d0

	ld   [hl], l                                     ; $7897: $75
	ld   h, a                                        ; $7898: $67
	sbc  a                                           ; $7899: $9f
	dec  c                                           ; $789a: $0d
	nop                                              ; $789b: $00
	ld   a, [bc]                                     ; $789c: $0a
	ld   b, $03                                      ; $789d: $06 $03
	add  hl, bc                                      ; $789f: $09
	inc  e                                           ; $78a0: $1c
	ld   bc, $0707                                   ; $78a1: $01 $07 $07
	ld   bc, $edda                                   ; $78a4: $01 $da $ed
	ret                                              ; $78a7: $c9


	ld   a, l                                        ; $78a8: $7d
	sbc  [hl]                                        ; $78a9: $9e
	ld   l, e                                        ; $78aa: $6b
	ld   a, h                                        ; $78ab: $7c
	inc  b                                           ; $78ac: $04
	ld   e, $7c                                      ; $78ad: $1e $7c
	inc  b                                           ; $78af: $04
	sub  d                                           ; $78b0: $92
	ld   [hl], l                                     ; $78b1: $75
	ld   h, a                                        ; $78b2: $67
	ld   e, c                                        ; $78b3: $59
	sub  a                                           ; $78b4: $97
	dec  c                                           ; $78b5: $0d
	inc  bc                                          ; $78b6: $03
	ld   h, l                                        ; $78b7: $65
	inc  bc                                          ; $78b8: $03
	ret  nc                                          ; $78b9: $d0

	ld   [hl], l                                     ; $78ba: $75
	ld   h, a                                        ; $78bb: $67
	sbc  a                                           ; $78bc: $9f
	ld   h, e                                        ; $78bd: $63
	ld   [hl], c                                     ; $78be: $71
	ld   h, e                                        ; $78bf: $63
	halt                                             ; $78c0: $76
	sub  d                                           ; $78c1: $92
	sub  a                                           ; $78c2: $97
	ld   a, b                                        ; $78c3: $78
	ld   d, d                                        ; $78c4: $52
	halt                                             ; $78c5: $76
	dec  c                                           ; $78c6: $0d
	inc  b                                           ; $78c7: $04
	xor  d                                           ; $78c8: $aa
	ld   e, d                                        ; $78c9: $5a
	dec  b                                           ; $78ca: $05
	sub  a                                           ; $78cb: $97
	sbc  d                                           ; $78cc: $9a
	ld   [hl], h                                     ; $78cd: $74
	ld   h, l                                        ; $78ce: $65
	adc  h                                           ; $78cf: $8c
	ld   d, d                                        ; $78d0: $52
	adc  h                                           ; $78d1: $8c
	ld   h, a                                        ; $78d2: $67
	sub  [hl]                                        ; $78d3: $96
	sbc  a                                           ; $78d4: $9f
	dec  c                                           ; $78d5: $0d
	nop                                              ; $78d6: $00
	ld   a, [bc]                                     ; $78d7: $0a
	ld   b, $03                                      ; $78d8: $06 $03
	add  hl, bc                                      ; $78da: $09
	inc  e                                           ; $78db: $1c
	ld   bc, $0000                                   ; $78dc: $01 $00 $00
	ld   bc, $6803                                   ; $78df: $01 $03 $68
	ld   a, l                                        ; $78e2: $7d
	sbc  [hl]                                        ; $78e3: $9e
	cp   d                                           ; $78e4: $ba
	db   $eb                                         ; $78e5: $eb
	call nz, $bab0                                   ; $78e6: $c4 $b0 $ba
	and  b                                           ; $78e9: $a0
	dec  d                                           ; $78ea: $15
	inc  b                                           ; $78eb: $04
	adc  a                                           ; $78ec: $8f
	ld   [hl], l                                     ; $78ed: $75
	ld   h, a                                        ; $78ee: $67
	sbc  a                                           ; $78ef: $9f
	dec  c                                           ; $78f0: $0d
	nop                                              ; $78f1: $00
	ld   a, [bc]                                     ; $78f2: $0a
	add  hl, de                                      ; $78f3: $19
	dec  b                                           ; $78f4: $05
	inc  bc                                          ; $78f5: $03
	ret  nc                                          ; $78f6: $d0

	push af                                          ; $78f7: $f5
	xor  l                                           ; $78f8: $ad
	ei                                               ; $78f9: $fb
	ld   a, c                                        ; $78fa: $79
	ld   e, c                                        ; $78fb: $59
	ld   e, a                                        ; $78fc: $5f
	sbc  c                                           ; $78fd: $99
	nop                                              ; $78fe: $00
	nop                                              ; $78ff: $00
	ld   l, l                                        ; $7900: $6d
	ld   a, b                                        ; $7901: $78
	inc  bc                                          ; $7902: $03
	ld   h, l                                        ; $7903: $65
	inc  bc                                          ; $7904: $03
	ret  nc                                          ; $7905: $d0

	ld   a, c                                        ; $7906: $79
	inc  b                                           ; $7907: $04
	jr   z, jr_054_7967                              ; $7908: $28 $5d

	nop                                              ; $790a: $00
	ld   bc, $786d                                   ; $790b: $01 $6d $78
	ld   [bc], a                                     ; $790e: $02
	inc  [hl]                                        ; $790f: $34
	inc  bc                                          ; $7910: $03
	ret  nc                                          ; $7911: $d0

	ld   a, c                                        ; $7912: $79
	inc  b                                           ; $7913: $04
	jr   z, jr_054_7973                              ; $7914: $28 $5d

	nop                                              ; $7916: $00
	ld   [bc], a                                     ; $7917: $02
	rlca                                             ; $7918: $07
	ld   e, [hl]                                     ; $7919: $5e
	add  hl, bc                                      ; $791a: $09
	ld   [bc], a                                     ; $791b: $02
	inc  bc                                          ; $791c: $03
	ld   bc, $2000                                   ; $791d: $01 $00 $20
	nop                                              ; $7920: $00
	rlca                                             ; $7921: $07
	xor  h                                           ; $7922: $ac
	add  hl, bc                                      ; $7923: $09
	ld   [bc], a                                     ; $7924: $02
	inc  bc                                          ; $7925: $03
	ld   bc, $2001                                   ; $7926: $01 $01 $20
	nop                                              ; $7929: $00
	rlca                                             ; $792a: $07
	cp   $09                                         ; $792b: $fe $09
	ld   [bc], a                                     ; $792d: $02
	inc  bc                                          ; $792e: $03
	ld   bc, $2002                                   ; $792f: $01 $02 $20
	nop                                              ; $7932: $00
	ld   b, $50                                      ; $7933: $06 $50
	ld   a, [bc]                                     ; $7935: $0a
	rrca                                             ; $7936: $0f
	nop                                              ; $7937: $00
	ld   bc, $ba01                                   ; $7938: $01 $01 $ba
	db   $eb                                         ; $793b: $eb
	call nz, $bab0                                   ; $793c: $c4 $b0 $ba
	ld   a, l                                        ; $793f: $7d
	sbc  [hl]                                        ; $7940: $9e
	cp   e                                           ; $7941: $bb
	db   $dd                                         ; $7942: $dd
	push af                                          ; $7943: $f5
	ld   l, [hl]                                     ; $7944: $6e
	ld   e, c                                        ; $7945: $59
	sub  a                                           ; $7946: $97
	dec  c                                           ; $7947: $0d
	ret  nc                                          ; $7948: $d0

	push af                                          ; $7949: $f5
	xor  l                                           ; $794a: $ad
	ei                                               ; $794b: $fb
	sbc  a                                           ; $794c: $9f
	dec  c                                           ; $794d: $0d
	nop                                              ; $794e: $00
	ld   a, [bc]                                     ; $794f: $0a
	inc  e                                           ; $7950: $1c
	ld   bc, $0101                                   ; $7951: $01 $01 $01
	ld   bc, $546b                                   ; $7954: $01 $6b $54
	ld   l, e                                        ; $7957: $6b
	ld   d, h                                        ; $7958: $54
	sbc  [hl]                                        ; $7959: $9e
	cp   d                                           ; $795a: $ba
	db   $eb                                         ; $795b: $eb
	call nz, $bab0                                   ; $795c: $c4 $b0 $ba
	ld   a, l                                        ; $795f: $7d
	dec  c                                           ; $7960: $0d
	ret  nc                                          ; $7961: $d0

	push af                                          ; $7962: $f5
	xor  l                                           ; $7963: $ad
	ei                                               ; $7964: $fb
	ld   [hl], l                                     ; $7965: $75
	inc  bc                                          ; $7966: $03

jr_054_7967:
	ld   c, d                                        ; $7967: $4a
	ld   [bc], a                                     ; $7968: $02
	or   h                                           ; $7969: $b4
	ld   [hl], l                                     ; $796a: $75
	ld   h, a                                        ; $796b: $67
	sbc  a                                           ; $796c: $9f
	dec  c                                           ; $796d: $0d
	nop                                              ; $796e: $00
	ld   a, [bc]                                     ; $796f: $0a
	dec  b                                           ; $7970: $05
	ld   b, b                                        ; $7971: $40
	rst  $38                                         ; $7972: $ff

jr_054_7973:
	inc  bc                                          ; $7973: $03
	rst  $38                                         ; $7974: $ff
	ld   bc, $2801                                   ; $7975: $01 $01 $28
	nop                                              ; $7978: $00
	dec  c                                           ; $7979: $0d
	nop                                              ; $797a: $00
	nop                                              ; $797b: $00
	rrca                                             ; $797c: $0f
	nop                                              ; $797d: $00
	ld   bc, $020c                                   ; $797e: $01 $0c $02
	ld   b, $94                                      ; $7981: $06 $94
	ld   a, [bc]                                     ; $7983: $0a
	rrca                                             ; $7984: $0f
	nop                                              ; $7985: $00
	ld   bc, $ba01                                   ; $7986: $01 $01 $ba
	db   $eb                                         ; $7989: $eb
	call nz, $bab0                                   ; $798a: $c4 $b0 $ba
	ld   a, l                                        ; $798d: $7d
	sbc  [hl]                                        ; $798e: $9e
	ld   l, l                                        ; $798f: $6d
	ld   l, l                                        ; $7990: $6d
	and  c                                           ; $7991: $a1
	ld   [hl], l                                     ; $7992: $75
	dec  c                                           ; $7993: $0d
	ld   l, l                                        ; $7994: $6d
	ld   a, b                                        ; $7995: $78
	inc  bc                                          ; $7996: $03
	ld   h, l                                        ; $7997: $65
	inc  bc                                          ; $7998: $03
	ret  nc                                          ; $7999: $d0

	ld   [hl], l                                     ; $799a: $75
	ld   d, d                                        ; $799b: $52
	ld   d, d                                        ; $799c: $52
	ld   a, h                                        ; $799d: $7c
	ld   e, c                                        ; $799e: $59
	ld   a, b                                        ; $799f: $78
	ld   sp, hl                                      ; $79a0: $f9
	dec  c                                           ; $79a1: $0d
	nop                                              ; $79a2: $00
	ld   a, [bc]                                     ; $79a3: $0a
	inc  e                                           ; $79a4: $1c
	ld   bc, $0202                                   ; $79a5: $01 $02 $02
	ld   bc, $5a6f                                   ; $79a8: $01 $6f $5a
	ld   d, d                                        ; $79ab: $52
	adc  h                                           ; $79ac: $8c
	ld   h, a                                        ; $79ad: $67
	sub  [hl]                                        ; $79ae: $96
	sbc  a                                           ; $79af: $9f
	dec  c                                           ; $79b0: $0d
	cp   d                                           ; $79b1: $ba
	db   $eb                                         ; $79b2: $eb
	call nz, $bab0                                   ; $79b3: $c4 $b0 $ba
	ld   a, l                                        ; $79b6: $7d
	sbc  [hl]                                        ; $79b7: $9e
	ld   [bc], a                                     ; $79b8: $02
	ld   de, $4c03                                   ; $79b9: $11 $03 $4c
	ld   [hl], l                                     ; $79bc: $75
	ld   h, a                                        ; $79bd: $67
	ld   e, c                                        ; $79be: $59
	sub  a                                           ; $79bf: $97
	dec  c                                           ; $79c0: $0d
	ret  nc                                          ; $79c1: $d0

	push af                                          ; $79c2: $f5
	xor  l                                           ; $79c3: $ad
	ei                                               ; $79c4: $fb
	ld   [hl], l                                     ; $79c5: $75
	ld   h, a                                        ; $79c6: $67
	sbc  a                                           ; $79c7: $9f
	dec  c                                           ; $79c8: $0d
	nop                                              ; $79c9: $00
	ld   a, [bc]                                     ; $79ca: $0a
	dec  c                                           ; $79cb: $0d
	nop                                              ; $79cc: $00
	nop                                              ; $79cd: $00
	rrca                                             ; $79ce: $0f
	nop                                              ; $79cf: $00
	ld   bc, $020c                                   ; $79d0: $01 $0c $02
	ld   b, $94                                      ; $79d3: $06 $94
	ld   a, [bc]                                     ; $79d5: $0a
	rrca                                             ; $79d6: $0f
	nop                                              ; $79d7: $00
	ld   bc, $ba01                                   ; $79d8: $01 $01 $ba
	db   $eb                                         ; $79db: $eb
	call nz, $bab0                                   ; $79dc: $c4 $b0 $ba
	ld   a, l                                        ; $79df: $7d
	sbc  [hl]                                        ; $79e0: $9e
	ld   l, l                                        ; $79e1: $6d
	ld   l, l                                        ; $79e2: $6d
	and  c                                           ; $79e3: $a1
	ld   [hl], l                                     ; $79e4: $75
	dec  c                                           ; $79e5: $0d
	ld   l, l                                        ; $79e6: $6d
	ld   a, b                                        ; $79e7: $78
	ld   [bc], a                                     ; $79e8: $02
	inc  [hl]                                        ; $79e9: $34
	inc  bc                                          ; $79ea: $03
	ret  nc                                          ; $79eb: $d0

	ld   [hl], l                                     ; $79ec: $75
	ld   d, d                                        ; $79ed: $52
	ld   d, d                                        ; $79ee: $52
	ld   a, h                                        ; $79ef: $7c
	ld   e, c                                        ; $79f0: $59
	ld   a, b                                        ; $79f1: $78
	ld   sp, hl                                      ; $79f2: $f9
	dec  c                                           ; $79f3: $0d
	nop                                              ; $79f4: $00
	ld   a, [bc]                                     ; $79f5: $0a
	inc  e                                           ; $79f6: $1c
	ld   bc, $0202                                   ; $79f7: $01 $02 $02
	ld   bc, $5a6f                                   ; $79fa: $01 $6f $5a
	ld   d, d                                        ; $79fd: $52
	adc  h                                           ; $79fe: $8c
	ld   h, a                                        ; $79ff: $67
	sub  [hl]                                        ; $7a00: $96
	sbc  a                                           ; $7a01: $9f
	dec  c                                           ; $7a02: $0d
	cp   d                                           ; $7a03: $ba
	db   $eb                                         ; $7a04: $eb
	call nz, $bab0                                   ; $7a05: $c4 $b0 $ba
	ld   a, l                                        ; $7a08: $7d
	sbc  [hl]                                        ; $7a09: $9e
	ld   [bc], a                                     ; $7a0a: $02
	ld   de, $4c03                                   ; $7a0b: $11 $03 $4c
	ld   [hl], l                                     ; $7a0e: $75
	ld   h, a                                        ; $7a0f: $67
	ld   e, c                                        ; $7a10: $59
	sub  a                                           ; $7a11: $97
	dec  c                                           ; $7a12: $0d
	ret  nc                                          ; $7a13: $d0

	push af                                          ; $7a14: $f5
	xor  l                                           ; $7a15: $ad
	ei                                               ; $7a16: $fb
	ld   [hl], l                                     ; $7a17: $75
	ld   h, a                                        ; $7a18: $67
	sbc  a                                           ; $7a19: $9f
	dec  c                                           ; $7a1a: $0d
	nop                                              ; $7a1b: $00
	ld   a, [bc]                                     ; $7a1c: $0a
	dec  c                                           ; $7a1d: $0d
	nop                                              ; $7a1e: $00
	nop                                              ; $7a1f: $00
	rrca                                             ; $7a20: $0f
	nop                                              ; $7a21: $00
	ld   bc, $020c                                   ; $7a22: $01 $0c $02
	ld   b, $94                                      ; $7a25: $06 $94
	ld   a, [bc]                                     ; $7a27: $0a
	inc  e                                           ; $7a28: $1c
	ld   bc, $0707                                   ; $7a29: $01 $07 $07
	ld   bc, $ebba                                   ; $7a2c: $01 $ba $eb
	call nz, $bab0                                   ; $7a2f: $c4 $b0 $ba
	ld   a, l                                        ; $7a32: $7d
	sbc  [hl]                                        ; $7a33: $9e
	ld   [bc], a                                     ; $7a34: $02
	ld   de, $4c03                                   ; $7a35: $11 $03 $4c
	ld   [hl], l                                     ; $7a38: $75
	ld   h, a                                        ; $7a39: $67
	ld   e, c                                        ; $7a3a: $59
	sub  a                                           ; $7a3b: $97
	dec  c                                           ; $7a3c: $0d
	ret  nc                                          ; $7a3d: $d0

	push af                                          ; $7a3e: $f5
	xor  l                                           ; $7a3f: $ad
	ei                                               ; $7a40: $fb
	ld   [hl], l                                     ; $7a41: $75
	ld   h, a                                        ; $7a42: $67
	sbc  a                                           ; $7a43: $9f
	inc  bc                                          ; $7a44: $03
	ld   [hl], b                                     ; $7a45: $70
	ld   e, l                                        ; $7a46: $5d
	sub  d                                           ; $7a47: $92
	sub  a                                           ; $7a48: $97
	ld   a, b                                        ; $7a49: $78
	ld   d, d                                        ; $7a4a: $52
	halt                                             ; $7a4b: $76
	dec  c                                           ; $7a4c: $0d
	inc  b                                           ; $7a4d: $04
	xor  d                                           ; $7a4e: $aa
	ld   e, d                                        ; $7a4f: $5a
	dec  b                                           ; $7a50: $05
	sub  a                                           ; $7a51: $97
	sbc  d                                           ; $7a52: $9a
	ld   [hl], h                                     ; $7a53: $74
	ld   h, l                                        ; $7a54: $65
	adc  h                                           ; $7a55: $8c
	ld   d, d                                        ; $7a56: $52
	adc  h                                           ; $7a57: $8c
	ld   h, a                                        ; $7a58: $67
	sub  [hl]                                        ; $7a59: $96
	sbc  a                                           ; $7a5a: $9f
	dec  c                                           ; $7a5b: $0d
	nop                                              ; $7a5c: $00
	ld   a, [bc]                                     ; $7a5d: $0a
	dec  c                                           ; $7a5e: $0d
	nop                                              ; $7a5f: $00
	nop                                              ; $7a60: $00
	rrca                                             ; $7a61: $0f
	nop                                              ; $7a62: $00
	ld   bc, $020c                                   ; $7a63: $01 $0c $02
	ld   b, $94                                      ; $7a66: $06 $94
	ld   a, [bc]                                     ; $7a68: $0a
	ld   b, $94                                      ; $7a69: $06 $94
	ld   a, [bc]                                     ; $7a6b: $0a
	ld   c, $2d                                      ; $7a6c: $0e $2d
	inc  e                                           ; $7a6e: $1c
	ld   bc, $0101                                   ; $7a6f: $01 $01 $01
	ld   bc, $5483                                   ; $7a72: $01 $83 $54
	sbc  [hl]                                        ; $7a75: $9e
	sub  d                                           ; $7a76: $92
	ld   [hl], c                                     ; $7a77: $71
	halt                                             ; $7a78: $76
	ld   [bc], a                                     ; $7a79: $02
	ld   de, $4c03                                   ; $7a7a: $11 $03 $4c
	inc  b                                           ; $7a7d: $04
	sub  l                                           ; $7a7e: $95
	ld   [bc], a                                     ; $7a7f: $02
	ld   hl, $0d5a                                   ; $7a80: $21 $5a $0d
	ld   b, $19                                      ; $7a83: $06 $19
	ld   [hl], e                                     ; $7a85: $73
	ld   e, e                                        ; $7a86: $5b
	adc  h                                           ; $7a87: $8c
	ld   h, l                                        ; $7a88: $65
	ld   l, l                                        ; $7a89: $6d
	ld   a, e                                        ; $7a8a: $7b
	sbc  a                                           ; $7a8b: $9f
	dec  c                                           ; $7a8c: $0d
	inc  bc                                          ; $7a8d: $03
	ld   l, b                                        ; $7a8e: $68
	ld   a, l                                        ; $7a8f: $7d
	sbc  [hl]                                        ; $7a90: $9e
	inc  b                                           ; $7a91: $04
	ld   d, $02                                      ; $7a92: $16 $02
	xor  b                                           ; $7a94: $a8
	inc  b                                           ; $7a95: $04
	sub  l                                           ; $7a96: $95
	ld   [bc], a                                     ; $7a97: $02
	ld   hl, $6775                                   ; $7a98: $21 $75 $67
	sub  [hl]                                        ; $7a9b: $96
	sbc  a                                           ; $7a9c: $9f
	dec  c                                           ; $7a9d: $0d
	nop                                              ; $7a9e: $00
	ld   a, [bc]                                     ; $7a9f: $0a
	dec  c                                           ; $7aa0: $0d
	nop                                              ; $7aa1: $00
	nop                                              ; $7aa2: $00
	rrca                                             ; $7aa3: $0f
	nop                                              ; $7aa4: $00
	ld   bc, $d106                                   ; $7aa5: $01 $06 $d1
	ld   a, [bc]                                     ; $7aa8: $0a
	inc  hl                                          ; $7aa9: $23
	inc  h                                           ; $7aaa: $24
	inc  e                                           ; $7aab: $1c
	ld   bc, $0000                                   ; $7aac: $01 $00 $00
	ld   bc, $7463                                   ; $7aaf: $01 $63 $74
	sbc  [hl]                                        ; $7ab2: $9e
	ld   h, c                                        ; $7ab3: $61
	ld   a, h                                        ; $7ab4: $7c
	inc  b                                           ; $7ab5: $04
	ld   d, $02                                      ; $7ab6: $16 $02
	xor  b                                           ; $7ab8: $a8
	inc  b                                           ; $7ab9: $04
	sub  l                                           ; $7aba: $95
	ld   [bc], a                                     ; $7abb: $02
	ld   hl, $7d75                                   ; $7abc: $21 $75 $7d
	dec  c                                           ; $7abf: $0d
	inc  bc                                          ; $7ac0: $03
	xor  a                                           ; $7ac1: $af
	inc  b                                           ; $7ac2: $04
	ld   d, $02                                      ; $7ac3: $16 $02
	xor  b                                           ; $7ac5: $a8
	ld   a, h                                        ; $7ac6: $7c
	inc  bc                                          ; $7ac7: $03
	ld   a, h                                        ; $7ac8: $7c
	dec  b                                           ; $7ac9: $05
	ld   de, $0476                                   ; $7aca: $11 $76 $04
	and  b                                           ; $7acd: $a0
	inc  b                                           ; $7ace: $04
	rst  JumpTable                                         ; $7acf: $df
	inc  b                                           ; $7ad0: $04
	ld   h, c                                        ; $7ad1: $61
	ld   a, h                                        ; $7ad2: $7c
	dec  c                                           ; $7ad3: $0d
	halt                                             ; $7ad4: $76
	sbc  b                                           ; $7ad5: $98
	adc  h                                           ; $7ad6: $8c
	halt                                             ; $7ad7: $76
	adc  a                                           ; $7ad8: $8f
	and  b                                           ; $7ad9: $a0
	ld   [bc], a                                     ; $7ada: $02
	ld   a, a                                        ; $7adb: $7f
	ld   d, d                                        ; $7adc: $52
	adc  h                                           ; $7add: $8c
	ld   h, a                                        ; $7ade: $67
	sbc  a                                           ; $7adf: $9f
	dec  c                                           ; $7ae0: $0d
	nop                                              ; $7ae1: $00
	ld   a, [bc]                                     ; $7ae2: $0a
	ld   bc, $9a6b                                   ; $7ae3: $01 $6b $9a
	ld   h, [hl]                                     ; $7ae6: $66
	sub  c                                           ; $7ae7: $91
	sbc  [hl]                                        ; $7ae8: $9e
	ld   d, b                                        ; $7ae9: $50
	ld   l, l                                        ; $7aea: $6d
	ld   h, l                                        ; $7aeb: $65
	ld   e, d                                        ; $7aec: $5a
	inc  bc                                          ; $7aed: $03
	ld   [$6d65], a                                  ; $7aee: $ea $65 $6d
	sub  b                                           ; $7af1: $90
	ld   a, h                                        ; $7af2: $7c
	dec  c                                           ; $7af3: $0d
	and  b                                           ; $7af4: $a0
	sbc  [hl]                                        ; $7af5: $9e
	ld   l, e                                        ; $7af6: $6b
	sbc  d                                           ; $7af7: $9a
	ld   l, h                                        ; $7af8: $6c
	sbc  d                                           ; $7af9: $9a
	ld   a, h                                        ; $7afa: $7c
	inc  b                                           ; $7afb: $04
	ld   a, d                                        ; $7afc: $7a
	inc  bc                                          ; $7afd: $03
	ld   c, e                                        ; $7afe: $4b
	ld   a, c                                        ; $7aff: $79
	inc  b                                           ; $7b00: $04
	jr   z, jr_054_7b55                              ; $7b01: $28 $52

	ld   [hl], h                                     ; $7b03: $74
	dec  c                                           ; $7b04: $0d
	ld   e, l                                        ; $7b05: $5d
	ld   l, [hl]                                     ; $7b06: $6e
	ld   h, e                                        ; $7b07: $63
	ld   d, d                                        ; $7b08: $52
	sbc  a                                           ; $7b09: $9f
	dec  c                                           ; $7b0a: $0d
	nop                                              ; $7b0b: $00
	ld   a, [bc]                                     ; $7b0c: $0a
	ld   bc, $020a                                   ; $7b0d: $01 $0a $02
	inc  bc                                          ; $7b10: $03
	ccf                                              ; $7b11: $3f
	ld   d, d                                        ; $7b12: $52
	inc  b                                           ; $7b13: $04
	sub  d                                           ; $7b14: $92
	ld   a, l                                        ; $7b15: $7d
	ld   [bc], a                                     ; $7b16: $02
	inc  [hl]                                        ; $7b17: $34
	ld   a, [bc]                                     ; $7b18: $0a
	inc  bc                                          ; $7b19: $03
	sbc  [hl]                                        ; $7b1a: $9e
	ld   a, [bc]                                     ; $7b1b: $0a
	ld   [bc], a                                     ; $7b1c: $02
	ld   [bc], a                                     ; $7b1d: $02
	ld   [hl], $52                                   ; $7b1e: $36 $52
	inc  b                                           ; $7b20: $04
	sub  d                                           ; $7b21: $92
	ld   a, l                                        ; $7b22: $7d
	ld   l, l                                        ; $7b23: $6d
	ld   a, b                                        ; $7b24: $78
	ld   a, [bc]                                     ; $7b25: $0a
	inc  bc                                          ; $7b26: $03
	add  [hl]                                        ; $7b27: $86
	sbc  a                                           ; $7b28: $9f
	dec  c                                           ; $7b29: $0d
	ld   a, [bc]                                     ; $7b2a: $0a
	ld   [bc], a                                     ; $7b2b: $02
	ld   h, c                                        ; $7b2c: $61
	sbc  l                                           ; $7b2d: $9d
	sbc  d                                           ; $7b2e: $9a
	ld   [hl], h                                     ; $7b2f: $74
	ld   d, d                                        ; $7b30: $52
	sbc  c                                           ; $7b31: $99
	inc  b                                           ; $7b32: $04
	sub  d                                           ; $7b33: $92
	ld   a, l                                        ; $7b34: $7d
	inc  b                                           ; $7b35: $04
	push de                                          ; $7b36: $d5
	inc  b                                           ; $7b37: $04
	add  a                                           ; $7b38: $87
	ld   a, [bc]                                     ; $7b39: $0a
	inc  bc                                          ; $7b3a: $03
	add  [hl]                                        ; $7b3b: $86
	dec  c                                           ; $7b3c: $0d
	inc  b                                           ; $7b3d: $04
	ld   b, l                                        ; $7b3e: $45
	sbc  d                                           ; $7b3f: $9a
	ld   [hl], h                                     ; $7b40: $74
	ld   [bc], a                                     ; $7b41: $02
	inc  [hl]                                        ; $7b42: $34
	ld   h, e                                        ; $7b43: $63
	ld   d, d                                        ; $7b44: $52
	sbc  a                                           ; $7b45: $9f
	dec  c                                           ; $7b46: $0d
	nop                                              ; $7b47: $00
	ld   a, [bc]                                     ; $7b48: $0a
	inc  e                                           ; $7b49: $1c
	ld   bc, $0101                                   ; $7b4a: $01 $01 $01
	ld   bc, $7d75                                   ; $7b4d: $01 $75 $7d
	sbc  [hl]                                        ; $7b50: $9e
	dec  b                                           ; $7b51: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b52: $cf
	adc  a                                           ; $7b53: $8f
	adc  h                                           ; $7b54: $8c

jr_054_7b55:
	ld   h, a                                        ; $7b55: $67
	sub  [hl]                                        ; $7b56: $96
	sbc  a                                           ; $7b57: $9f
	dec  c                                           ; $7b58: $0d
	nop                                              ; $7b59: $00
	ld   a, [bc]                                     ; $7b5a: $0a
	inc  e                                           ; $7b5b: $1c
	ld   bc, $0000                                   ; $7b5c: $01 $00 $00
	ld   bc, $688c                                   ; $7b5f: $01 $8c $68
	ld   a, l                                        ; $7b62: $7d
	sbc  [hl]                                        ; $7b63: $9e
	cp   h                                           ; $7b64: $bc
	push af                                          ; $7b65: $f5
	cp   d                                           ; $7b66: $ba
	and  b                                           ; $7b67: $a0
	ld   [de], a                                     ; $7b68: $12
	ld   de, $3c02                                   ; $7b69: $11 $02 $3c
	sbc  a                                           ; $7b6c: $9f
	dec  c                                           ; $7b6d: $0d
	nop                                              ; $7b6e: $00
	ld   a, [bc]                                     ; $7b6f: $0a
	add  hl, de                                      ; $7b70: $19
	dec  b                                           ; $7b71: $05
	inc  bc                                          ; $7b72: $03
	ld   [bc], a                                     ; $7b73: $02
	inc  [hl]                                        ; $7b74: $34
	ld   a, c                                        ; $7b75: $79
	inc  b                                           ; $7b76: $04
	jr   z, jr_054_7bd6                              ; $7b77: $28 $5d

	nop                                              ; $7b79: $00
	nop                                              ; $7b7a: $00
	ld   l, l                                        ; $7b7b: $6d
	ld   a, b                                        ; $7b7c: $78
	ld   a, c                                        ; $7b7d: $79
	inc  b                                           ; $7b7e: $04
	jr   z, @+$5f                                    ; $7b7f: $28 $5d

	nop                                              ; $7b81: $00
	ld   bc, $d504                                   ; $7b82: $01 $04 $d5
	inc  b                                           ; $7b85: $04
	add  a                                           ; $7b86: $87
	add  [hl]                                        ; $7b87: $86
	inc  b                                           ; $7b88: $04
	ld   b, l                                        ; $7b89: $45
	sbc  d                                           ; $7b8a: $9a
	sbc  c                                           ; $7b8b: $99
	nop                                              ; $7b8c: $00
	ld   [bc], a                                     ; $7b8d: $02
	rlca                                             ; $7b8e: $07
	add  hl, de                                      ; $7b8f: $19
	inc  c                                           ; $7b90: $0c
	ld   [bc], a                                     ; $7b91: $02

Jump_054_7b92:
	inc  bc                                          ; $7b92: $03
	ld   bc, $2000                                   ; $7b93: $01 $00 $20
	nop                                              ; $7b96: $00
	rlca                                             ; $7b97: $07
	call nc, $020b                                   ; $7b98: $d4 $0b $02
	inc  bc                                          ; $7b9b: $03
	ld   bc, $2001                                   ; $7b9c: $01 $01 $20
	nop                                              ; $7b9f: $00
	rlca                                             ; $7ba0: $07
	ld   b, a                                        ; $7ba1: $47
	inc  c                                           ; $7ba2: $0c
	ld   [bc], a                                     ; $7ba3: $02
	inc  bc                                          ; $7ba4: $03
	ld   bc, $2002                                   ; $7ba5: $01 $02 $20
	nop                                              ; $7ba8: $00
	ld   b, $87                                      ; $7ba9: $06 $87
	inc  c                                           ; $7bab: $0c
	rrca                                             ; $7bac: $0f
	nop                                              ; $7bad: $00
	ld   bc, $bc01                                   ; $7bae: $01 $01 $bc
	push af                                          ; $7bb1: $f5
	cp   d                                           ; $7bb2: $ba
	ld   a, l                                        ; $7bb3: $7d
	ld   [bc], a                                     ; $7bb4: $02
	ld   [hl], $52                                   ; $7bb5: $36 $52
	ld   e, c                                        ; $7bb7: $59
	sub  a                                           ; $7bb8: $97
	sbc  [hl]                                        ; $7bb9: $9e
	ld   l, l                                        ; $7bba: $6d
	ld   a, b                                        ; $7bbb: $78
	sbc  a                                           ; $7bbc: $9f
	dec  c                                           ; $7bbd: $0d
	nop                                              ; $7bbe: $00
	ld   a, [bc]                                     ; $7bbf: $0a
	inc  e                                           ; $7bc0: $1c
	ld   bc, $0101                                   ; $7bc1: $01 $01 $01
	ld   bc, $546b                                   ; $7bc4: $01 $6b $54
	ld   l, e                                        ; $7bc7: $6b
	ld   d, h                                        ; $7bc8: $54
	sbc  [hl]                                        ; $7bc9: $9e
	dec  c                                           ; $7bca: $0d
	cp   h                                           ; $7bcb: $bc
	push af                                          ; $7bcc: $f5
	cp   d                                           ; $7bcd: $ba
	ld   a, l                                        ; $7bce: $7d
	ld   l, l                                        ; $7bcf: $6d
	ld   a, b                                        ; $7bd0: $78
	ld   [hl], l                                     ; $7bd1: $75
	ld   h, a                                        ; $7bd2: $67
	ld   a, e                                        ; $7bd3: $7b
	sbc  a                                           ; $7bd4: $9f
	dec  c                                           ; $7bd5: $0d

jr_054_7bd6:
	nop                                              ; $7bd6: $00
	dec  b                                           ; $7bd7: $05
	ld   b, b                                        ; $7bd8: $40
	rst  $38                                         ; $7bd9: $ff
	inc  bc                                          ; $7bda: $03
	rst  $38                                         ; $7bdb: $ff
	ld   bc, $2801                                   ; $7bdc: $01 $01 $28
	nop                                              ; $7bdf: $00
	ld   bc, $7c6b                                   ; $7be0: $01 $6b $7c
	inc  bc                                          ; $7be3: $03
	cp   $03                                         ; $7be4: $fe $03
	add  [hl]                                        ; $7be6: $86
	ld   [hl], l                                     ; $7be7: $75
	ld   h, a                                        ; $7be8: $67
	sub  [hl]                                        ; $7be9: $96
	sbc  a                                           ; $7bea: $9f
	dec  c                                           ; $7beb: $0d
	nop                                              ; $7bec: $00
	ld   a, [bc]                                     ; $7bed: $0a
	ld   b, $b9                                      ; $7bee: $06 $b9
	inc  c                                           ; $7bf0: $0c
	rrca                                             ; $7bf1: $0f
	nop                                              ; $7bf2: $00
	ld   bc, $bc01                                   ; $7bf3: $01 $01 $bc
	push af                                          ; $7bf6: $f5
	cp   d                                           ; $7bf7: $ba
	ld   a, l                                        ; $7bf8: $7d
	rst  $38                                         ; $7bf9: $ff
	rst  $38                                         ; $7bfa: $ff
	ld   [bc], a                                     ; $7bfb: $02
	inc  [hl]                                        ; $7bfc: $34
	ld   l, [hl]                                     ; $7bfd: $6e
	ld   a, b                                        ; $7bfe: $78
	sbc  a                                           ; $7bff: $9f
	dec  c                                           ; $7c00: $0d
	nop                                              ; $7c01: $00
	ld   a, [bc]                                     ; $7c02: $0a
	inc  e                                           ; $7c03: $1c
	ld   bc, $0202                                   ; $7c04: $01 $02 $02
	ld   bc, $5a6f                                   ; $7c07: $01 $6f $5a
	ld   d, d                                        ; $7c0a: $52
	adc  h                                           ; $7c0b: $8c
	ld   h, a                                        ; $7c0c: $67
	sbc  a                                           ; $7c0d: $9f
	dec  c                                           ; $7c0e: $0d
	cp   h                                           ; $7c0f: $bc
	push af                                          ; $7c10: $f5
	cp   d                                           ; $7c11: $ba
	ld   a, l                                        ; $7c12: $7d
	ld   l, l                                        ; $7c13: $6d
	ld   a, b                                        ; $7c14: $78
	ld   [hl], l                                     ; $7c15: $75
	ld   h, a                                        ; $7c16: $67
	sub  [hl]                                        ; $7c17: $96
	sbc  a                                           ; $7c18: $9f
	dec  c                                           ; $7c19: $0d
	nop                                              ; $7c1a: $00
	ld   a, [bc]                                     ; $7c1b: $0a
	ld   b, $b9                                      ; $7c1c: $06 $b9
	inc  c                                           ; $7c1e: $0c
	rrca                                             ; $7c1f: $0f
	nop                                              ; $7c20: $00
	ld   bc, $6101                                   ; $7c21: $01 $01 $61
	ld   a, h                                        ; $7c24: $7c
	cp   h                                           ; $7c25: $bc
	push af                                          ; $7c26: $f5
	cp   d                                           ; $7c27: $ba
	ld   a, l                                        ; $7c28: $7d
	rst  $38                                         ; $7c29: $ff
	inc  b                                           ; $7c2a: $04
	push de                                          ; $7c2b: $d5
	inc  b                                           ; $7c2c: $04
	add  a                                           ; $7c2d: $87
	ld   [hl], l                                     ; $7c2e: $75
	ld   d, d                                        ; $7c2f: $52
	ld   d, d                                        ; $7c30: $52
	sub  d                                           ; $7c31: $92
	sbc  a                                           ; $7c32: $9f
	dec  c                                           ; $7c33: $0d
	nop                                              ; $7c34: $00
	ld   a, [bc]                                     ; $7c35: $0a
	inc  e                                           ; $7c36: $1c
	ld   bc, $0202                                   ; $7c37: $01 $02 $02
	ld   bc, $5a6f                                   ; $7c3a: $01 $6f $5a
	ld   d, d                                        ; $7c3d: $52
	adc  h                                           ; $7c3e: $8c
	ld   h, a                                        ; $7c3f: $67
	sbc  a                                           ; $7c40: $9f
	dec  c                                           ; $7c41: $0d
	ld   l, e                                        ; $7c42: $6b
	ld   a, h                                        ; $7c43: $7c

jr_054_7c44:
	cp   h                                           ; $7c44: $bc
	push af                                          ; $7c45: $f5
	cp   d                                           ; $7c46: $ba
	ld   a, l                                        ; $7c47: $7d
	ld   h, c                                        ; $7c48: $61
	sbc  l                                           ; $7c49: $9d
	sbc  d                                           ; $7c4a: $9a
	ld   [hl], h                                     ; $7c4b: $74
	adc  h                                           ; $7c4c: $8c
	ld   l, c                                        ; $7c4d: $69
	and  c                                           ; $7c4e: $a1
	dec  c                                           ; $7c4f: $0d
	ld   e, c                                        ; $7c50: $59
	sub  a                                           ; $7c51: $97
	sbc  [hl]                                        ; $7c52: $9e
	ld   l, l                                        ; $7c53: $6d
	ld   a, b                                        ; $7c54: $78
	ld   [hl], l                                     ; $7c55: $75
	ld   h, a                                        ; $7c56: $67
	sub  [hl]                                        ; $7c57: $96
	sbc  a                                           ; $7c58: $9f
	dec  c                                           ; $7c59: $0d
	nop                                              ; $7c5a: $00
	ld   a, [bc]                                     ; $7c5b: $0a
	ld   b, $b9                                      ; $7c5c: $06 $b9
	inc  c                                           ; $7c5e: $0c
	inc  e                                           ; $7c5f: $1c
	ld   bc, $0707                                   ; $7c60: $01 $07 $07
	ld   bc, $f5bc                                   ; $7c63: $01 $bc $f5
	cp   d                                           ; $7c66: $ba
	ld   a, l                                        ; $7c67: $7d
	ld   l, l                                        ; $7c68: $6d
	ld   a, b                                        ; $7c69: $78
	ld   [hl], l                                     ; $7c6a: $75
	ld   h, a                                        ; $7c6b: $67
	sub  [hl]                                        ; $7c6c: $96
	sbc  a                                           ; $7c6d: $9f
	dec  c                                           ; $7c6e: $0d
	inc  bc                                          ; $7c6f: $03
	ld   [hl], b                                     ; $7c70: $70
	ld   e, l                                        ; $7c71: $5d
	sub  d                                           ; $7c72: $92
	sub  a                                           ; $7c73: $97
	ld   a, b                                        ; $7c74: $78
	ld   d, d                                        ; $7c75: $52
	halt                                             ; $7c76: $76
	sbc  [hl]                                        ; $7c77: $9e
	inc  b                                           ; $7c78: $04
	ld   b, d                                        ; $7c79: $42
	sbc  c                                           ; $7c7a: $99
	inc  bc                                          ; $7c7b: $03
	ld   l, a                                        ; $7c7c: $6f
	ld   [bc], a                                     ; $7c7d: $02
	xor  c                                           ; $7c7e: $a9
	ld   a, c                                        ; $7c7f: $79
	dec  c                                           ; $7c80: $0d
	ld   a, b                                        ; $7c81: $78
	ld   [hl], c                                     ; $7c82: $71
	ld   [hl], h                                     ; $7c83: $74
	ld   h, l                                        ; $7c84: $65
	adc  h                                           ; $7c85: $8c
	ld   d, d                                        ; $7c86: $52
	adc  h                                           ; $7c87: $8c
	ld   h, a                                        ; $7c88: $67
	sub  [hl]                                        ; $7c89: $96
	sbc  a                                           ; $7c8a: $9f
	dec  c                                           ; $7c8b: $0d
	nop                                              ; $7c8c: $00

jr_054_7c8d:
	ld   a, [bc]                                     ; $7c8d: $0a
	ld   b, $b9                                      ; $7c8e: $06 $b9
	inc  c                                           ; $7c90: $0c
	inc  e                                           ; $7c91: $1c
	ld   bc, $0000                                   ; $7c92: $01 $00 $00
	ld   bc, $6803                                   ; $7c95: $01 $03 $68
	ld   a, l                                        ; $7c98: $7d
	sbc  [hl]                                        ; $7c99: $9e
	ld   h, c                                        ; $7c9a: $61
	sbc  l                                           ; $7c9b: $9d
	sbc  d                                           ; $7c9c: $9a
	ld   l, l                                        ; $7c9d: $6d
	inc  b                                           ; $7c9e: $04
	jr   c, jr_054_7c44                              ; $7c9f: $38 $a3

	xor  $a5                                         ; $7ca1: $ee $a5
	sbc  a                                           ; $7ca3: $9f
	dec  c                                           ; $7ca4: $0d
	nop                                              ; $7ca5: $00
	ld   a, [bc]                                     ; $7ca6: $0a
	add  hl, de                                      ; $7ca7: $19
	dec  b                                           ; $7ca8: $05
	inc  bc                                          ; $7ca9: $03
	ld   [bc], a                                     ; $7caa: $02
	inc  [hl]                                        ; $7cab: $34
	ld   a, c                                        ; $7cac: $79
	inc  b                                           ; $7cad: $04
	jr   z, jr_054_7d0d                              ; $7cae: $28 $5d

	nop                                              ; $7cb0: $00
	nop                                              ; $7cb1: $00
	ld   l, l                                        ; $7cb2: $6d
	ld   a, b                                        ; $7cb3: $78
	ld   a, c                                        ; $7cb4: $79
	inc  b                                           ; $7cb5: $04
	jr   z, jr_054_7d15                              ; $7cb6: $28 $5d

	nop                                              ; $7cb8: $00
	ld   bc, $d504                                   ; $7cb9: $01 $04 $d5
	inc  b                                           ; $7cbc: $04
	add  a                                           ; $7cbd: $87
	add  [hl]                                        ; $7cbe: $86
	inc  b                                           ; $7cbf: $04
	ld   b, l                                        ; $7cc0: $45
	sbc  d                                           ; $7cc1: $9a
	sbc  c                                           ; $7cc2: $99
	nop                                              ; $7cc3: $00
	ld   [bc], a                                     ; $7cc4: $02
	rlca                                             ; $7cc5: $07
	ld   h, c                                        ; $7cc6: $61
	dec  c                                           ; $7cc7: $0d
	ld   [bc], a                                     ; $7cc8: $02
	inc  bc                                          ; $7cc9: $03
	ld   bc, $2000                                   ; $7cca: $01 $00 $20
	nop                                              ; $7ccd: $00
	rlca                                             ; $7cce: $07
	sbc  h                                           ; $7ccf: $9c
	dec  c                                           ; $7cd0: $0d
	ld   [bc], a                                     ; $7cd1: $02
	inc  bc                                          ; $7cd2: $03
	ld   bc, $2001                                   ; $7cd3: $01 $01 $20
	nop                                              ; $7cd6: $00
	rlca                                             ; $7cd7: $07
	dec  bc                                          ; $7cd8: $0b
	dec  c                                           ; $7cd9: $0d
	ld   [bc], a                                     ; $7cda: $02
	inc  bc                                          ; $7cdb: $03
	ld   bc, $2002                                   ; $7cdc: $01 $02 $20
	nop                                              ; $7cdf: $00
	ld   b, $d3                                      ; $7ce0: $06 $d3
	dec  c                                           ; $7ce2: $0d

jr_054_7ce3:
	rrca                                             ; $7ce3: $0f
	nop                                              ; $7ce4: $00
	ld   bc, $0401                                   ; $7ce5: $01 $01 $04
	jr   c, jr_054_7c8d                              ; $7ce8: $38 $a3

	xor  $a5                                         ; $7cea: $ee $a5
	ld   [hl], l                                     ; $7cec: $75
	inc  bc                                          ; $7ced: $03
	ccf                                              ; $7cee: $3f
	ld   d, d                                        ; $7cef: $52
	ld   e, a                                        ; $7cf0: $5f
	ld   [hl], a                                     ; $7cf1: $77
	rst  $38                                         ; $7cf2: $ff
	rst  $38                                         ; $7cf3: $ff
	dec  c                                           ; $7cf4: $0d

Call_054_7cf5:
	ld   h, c                                        ; $7cf5: $61
	sbc  l                                           ; $7cf6: $9d
	sbc  d                                           ; $7cf7: $9a
	ld   [hl], h                                     ; $7cf8: $74
	sbc  c                                           ; $7cf9: $99
	ld   e, c                                        ; $7cfa: $59
	sub  a                                           ; $7cfb: $97
	inc  b                                           ; $7cfc: $04
	push de                                          ; $7cfd: $d5
	inc  b                                           ; $7cfe: $04
	add  a                                           ; $7cff: $87
	sbc  a                                           ; $7d00: $9f
	dec  c                                           ; $7d01: $0d
	nop                                              ; $7d02: $00
	ld   a, [bc]                                     ; $7d03: $0a
	inc  e                                           ; $7d04: $1c
	ld   bc, $0101                                   ; $7d05: $01 $01 $01
	ld   bc, $546b                                   ; $7d08: $01 $6b $54
	ld   l, e                                        ; $7d0b: $6b
	ld   d, h                                        ; $7d0c: $54

jr_054_7d0d:
	sbc  [hl]                                        ; $7d0d: $9e
	ld   h, c                                        ; $7d0e: $61
	sbc  l                                           ; $7d0f: $9d
	sbc  d                                           ; $7d10: $9a
	ld   l, l                                        ; $7d11: $6d
	inc  b                                           ; $7d12: $04
	sub  d                                           ; $7d13: $92
	ld   a, l                                        ; $7d14: $7d

jr_054_7d15:
	dec  c                                           ; $7d15: $0d
	inc  b                                           ; $7d16: $04
	push de                                          ; $7d17: $d5
	inc  b                                           ; $7d18: $04
	add  a                                           ; $7d19: $87
	ld   [hl], l                                     ; $7d1a: $75
	ld   h, a                                        ; $7d1b: $67
	sbc  a                                           ; $7d1c: $9f
	dec  c                                           ; $7d1d: $0d

jr_054_7d1e:
	nop                                              ; $7d1e: $00
	dec  b                                           ; $7d1f: $05
	ld   b, b                                        ; $7d20: $40
	rst  $38                                         ; $7d21: $ff
	inc  bc                                          ; $7d22: $03
	rst  $38                                         ; $7d23: $ff
	ld   bc, $2801                                   ; $7d24: $01 $01 $28
	nop                                              ; $7d27: $00
	ld   bc, $7c6b                                   ; $7d28: $01 $6b $7c
	inc  bc                                          ; $7d2b: $03
	cp   $03                                         ; $7d2c: $fe $03
	add  [hl]                                        ; $7d2e: $86
	ld   [hl], l                                     ; $7d2f: $75
	ld   h, a                                        ; $7d30: $67
	sub  [hl]                                        ; $7d31: $96
	sbc  a                                           ; $7d32: $9f
	dec  c                                           ; $7d33: $0d
	nop                                              ; $7d34: $00
	ld   a, [bc]                                     ; $7d35: $0a
	ld   b, $09                                      ; $7d36: $06 $09
	ld   c, $0f                                      ; $7d38: $0e $0f
	nop                                              ; $7d3a: $00
	ld   bc, $0401                                   ; $7d3b: $01 $01 $04
	jr   c, jr_054_7ce3                              ; $7d3e: $38 $a3

	xor  $a5                                         ; $7d40: $ee $a5
	ld   a, l                                        ; $7d42: $7d
	inc  bc                                          ; $7d43: $03
	ccf                                              ; $7d44: $3f
	ld   d, d                                        ; $7d45: $52
	ld   e, c                                        ; $7d46: $59
	sub  a                                           ; $7d47: $97
	dec  c                                           ; $7d48: $0d
	ld   [bc], a                                     ; $7d49: $02
	inc  [hl]                                        ; $7d4a: $34
	add  [hl]                                        ; $7d4b: $86
	inc  b                                           ; $7d4c: $04
	jr   z, jr_054_7dac                              ; $7d4d: $28 $5d

	sbc  a                                           ; $7d4f: $9f
	dec  c                                           ; $7d50: $0d
	nop                                              ; $7d51: $00
	ld   a, [bc]                                     ; $7d52: $0a
	inc  e                                           ; $7d53: $1c
	ld   bc, $0202                                   ; $7d54: $01 $02 $02
	ld   bc, $5a6f                                   ; $7d57: $01 $6f $5a
	ld   d, d                                        ; $7d5a: $52
	adc  h                                           ; $7d5b: $8c
	ld   h, a                                        ; $7d5c: $67
	sub  [hl]                                        ; $7d5d: $96
	sbc  a                                           ; $7d5e: $9f
	dec  c                                           ; $7d5f: $0d
	ld   h, c                                        ; $7d60: $61
	sbc  l                                           ; $7d61: $9d
	sbc  d                                           ; $7d62: $9a
	ld   l, l                                        ; $7d63: $6d
	inc  b                                           ; $7d64: $04
	sub  d                                           ; $7d65: $92
	ld   a, l                                        ; $7d66: $7d
	inc  b                                           ; $7d67: $04
	push de                                          ; $7d68: $d5
	inc  b                                           ; $7d69: $04
	add  a                                           ; $7d6a: $87
	ld   [hl], l                                     ; $7d6b: $75
	ld   h, a                                        ; $7d6c: $67
	sbc  a                                           ; $7d6d: $9f
	dec  c                                           ; $7d6e: $0d
	nop                                              ; $7d6f: $00
	ld   a, [bc]                                     ; $7d70: $0a
	ld   b, $09                                      ; $7d71: $06 $09
	ld   c, $0f                                      ; $7d73: $0e $0f
	nop                                              ; $7d75: $00
	ld   bc, $0401                                   ; $7d76: $01 $01 $04
	jr   c, jr_054_7d1e                              ; $7d79: $38 $a3

	xor  $a5                                         ; $7d7b: $ee $a5
	ld   a, l                                        ; $7d7d: $7d
	rst  $38                                         ; $7d7e: $ff
	rst  $38                                         ; $7d7f: $ff
	ld   l, l                                        ; $7d80: $6d
	ld   a, b                                        ; $7d81: $78
	add  [hl]                                        ; $7d82: $86
	inc  b                                           ; $7d83: $04
	jr   z, @+$5f                                    ; $7d84: $28 $5d

	ld   sp, hl                                      ; $7d86: $f9
	dec  c                                           ; $7d87: $0d
	nop                                              ; $7d88: $00
	ld   a, [bc]                                     ; $7d89: $0a
	inc  e                                           ; $7d8a: $1c
	ld   bc, $0202                                   ; $7d8b: $01 $02 $02
	ld   bc, $5a6f                                   ; $7d8e: $01 $6f $5a
	ld   d, d                                        ; $7d91: $52
	adc  h                                           ; $7d92: $8c
	ld   h, a                                        ; $7d93: $67
	sub  [hl]                                        ; $7d94: $96
	sbc  a                                           ; $7d95: $9f
	dec  c                                           ; $7d96: $0d
	ld   h, c                                        ; $7d97: $61
	sbc  l                                           ; $7d98: $9d
	sbc  d                                           ; $7d99: $9a
	ld   l, l                                        ; $7d9a: $6d
	inc  b                                           ; $7d9b: $04
	sub  d                                           ; $7d9c: $92
	ld   a, l                                        ; $7d9d: $7d
	inc  b                                           ; $7d9e: $04
	push de                                          ; $7d9f: $d5
	inc  b                                           ; $7da0: $04
	add  a                                           ; $7da1: $87
	ld   [hl], l                                     ; $7da2: $75
	ld   h, a                                        ; $7da3: $67
	sbc  a                                           ; $7da4: $9f
	dec  c                                           ; $7da5: $0d
	nop                                              ; $7da6: $00
	ld   a, [bc]                                     ; $7da7: $0a
	ld   b, $09                                      ; $7da8: $06 $09
	ld   c, $1c                                      ; $7daa: $0e $1c

jr_054_7dac:
	ld   bc, $0707                                   ; $7dac: $01 $07 $07
	ld   bc, $9d61                                   ; $7daf: $01 $61 $9d
	sbc  d                                           ; $7db2: $9a
	ld   l, l                                        ; $7db3: $6d
	inc  b                                           ; $7db4: $04
	sub  d                                           ; $7db5: $92
	ld   a, l                                        ; $7db6: $7d
	inc  b                                           ; $7db7: $04
	push de                                          ; $7db8: $d5
	inc  b                                           ; $7db9: $04
	add  a                                           ; $7dba: $87
	ld   [hl], l                                     ; $7dbb: $75
	ld   h, a                                        ; $7dbc: $67
	sbc  a                                           ; $7dbd: $9f
	dec  c                                           ; $7dbe: $0d
	inc  bc                                          ; $7dbf: $03
	ld   [hl], b                                     ; $7dc0: $70
	ld   e, l                                        ; $7dc1: $5d
	sub  d                                           ; $7dc2: $92
	sub  a                                           ; $7dc3: $97
	ld   a, b                                        ; $7dc4: $78
	ld   d, d                                        ; $7dc5: $52
	halt                                             ; $7dc6: $76
	sbc  [hl]                                        ; $7dc7: $9e
	inc  b                                           ; $7dc8: $04
	ld   b, d                                        ; $7dc9: $42
	sbc  c                                           ; $7dca: $99
	inc  bc                                          ; $7dcb: $03
	ld   l, a                                        ; $7dcc: $6f
	ld   [bc], a                                     ; $7dcd: $02
	xor  c                                           ; $7dce: $a9
	ld   a, c                                        ; $7dcf: $79
	dec  c                                           ; $7dd0: $0d
	ld   a, b                                        ; $7dd1: $78
	ld   [hl], c                                     ; $7dd2: $71
	ld   [hl], h                                     ; $7dd3: $74
	ld   h, l                                        ; $7dd4: $65
	adc  h                                           ; $7dd5: $8c
	ld   d, d                                        ; $7dd6: $52
	adc  h                                           ; $7dd7: $8c
	ld   h, a                                        ; $7dd8: $67
	sub  [hl]                                        ; $7dd9: $96
	sbc  a                                           ; $7dda: $9f
	dec  c                                           ; $7ddb: $0d
	nop                                              ; $7ddc: $00
	ld   a, [bc]                                     ; $7ddd: $0a
	ld   b, $09                                      ; $7dde: $06 $09
	ld   c, $1c                                      ; $7de0: $0e $1c
	ld   bc, $0000                                   ; $7de2: $01 $00 $00
	ld   bc, $6803                                   ; $7de5: $01 $03 $68
	ld   a, l                                        ; $7de8: $7d
	sbc  [hl]                                        ; $7de9: $9e
	dec  c                                           ; $7dea: $0d
	ld   [de], a                                     ; $7deb: $12
	ld   de, $efae                                   ; $7dec: $11 $ae $ef
	ld   a, h                                        ; $7def: $7c
	inc  b                                           ; $7df0: $04
	inc  hl                                          ; $7df1: $23
	inc  b                                           ; $7df2: $04
	inc  l                                           ; $7df3: $2c
	ld   [hl], l                                     ; $7df4: $75
	ld   h, a                                        ; $7df5: $67
	sbc  a                                           ; $7df6: $9f
	dec  c                                           ; $7df7: $0d
	nop                                              ; $7df8: $00
	ld   a, [bc]                                     ; $7df9: $0a
	add  hl, de                                      ; $7dfa: $19
	dec  b                                           ; $7dfb: $05
	inc  bc                                          ; $7dfc: $03
	ld   [bc], a                                     ; $7dfd: $02
	inc  [hl]                                        ; $7dfe: $34
	ld   a, c                                        ; $7dff: $79
	inc  b                                           ; $7e00: $04
	jr   z, jr_054_7e60                              ; $7e01: $28 $5d

	nop                                              ; $7e03: $00
	nop                                              ; $7e04: $00
	ld   l, l                                        ; $7e05: $6d
	ld   a, b                                        ; $7e06: $78
	ld   a, c                                        ; $7e07: $79
	inc  b                                           ; $7e08: $04
	jr   z, jr_054_7e68                              ; $7e09: $28 $5d

	nop                                              ; $7e0b: $00
	ld   bc, $d504                                   ; $7e0c: $01 $04 $d5
	inc  b                                           ; $7e0f: $04
	add  a                                           ; $7e10: $87
	add  [hl]                                        ; $7e11: $86
	inc  b                                           ; $7e12: $04
	ld   b, l                                        ; $7e13: $45
	sbc  d                                           ; $7e14: $9a
	sbc  c                                           ; $7e15: $99
	nop                                              ; $7e16: $00
	ld   [bc], a                                     ; $7e17: $02
	rlca                                             ; $7e18: $07
	ld   e, [hl]                                     ; $7e19: $5e
	ld   c, $02                                      ; $7e1a: $0e $02
	inc  bc                                          ; $7e1c: $03
	ld   bc, $2000                                   ; $7e1d: $01 $00 $20
	nop                                              ; $7e20: $00
	rlca                                             ; $7e21: $07
	or   l                                           ; $7e22: $b5
	ld   c, $02                                      ; $7e23: $0e $02
	inc  bc                                          ; $7e25: $03
	ld   bc, $2001                                   ; $7e26: $01 $01 $20
	nop                                              ; $7e29: $00
	rlca                                             ; $7e2a: $07
	ld   sp, hl                                      ; $7e2b: $f9
	ld   c, $02                                      ; $7e2c: $0e $02
	inc  bc                                          ; $7e2e: $03
	ld   bc, $2002                                   ; $7e2f: $01 $02 $20
	nop                                              ; $7e32: $00
	ld   b, $48                                      ; $7e33: $06 $48
	rrca                                             ; $7e35: $0f
	rrca                                             ; $7e36: $0f
	nop                                              ; $7e37: $00
	ld   bc, $1201                                   ; $7e38: $01 $01 $12
	ld   de, $efae                                   ; $7e3b: $11 $ae $ef
	sub  b                                           ; $7e3e: $90
	ld   d, b                                        ; $7e3f: $50
	ld   [hl], c                                     ; $7e40: $71
	ld   [hl], h                                     ; $7e41: $74
	sbc  [hl]                                        ; $7e42: $9e
	inc  bc                                          ; $7e43: $03
	ccf                                              ; $7e44: $3f
	ld   d, d                                        ; $7e45: $52
	ld   e, c                                        ; $7e46: $59
	sub  a                                           ; $7e47: $97
	dec  c                                           ; $7e48: $0d
	ld   [bc], a                                     ; $7e49: $02
	inc  [hl]                                        ; $7e4a: $34
	ld   a, c                                        ; $7e4b: $79
	inc  b                                           ; $7e4c: $04
	jr   z, jr_054_7eac                              ; $7e4d: $28 $5d

	sbc  a                                           ; $7e4f: $9f
	dec  c                                           ; $7e50: $0d
	nop                                              ; $7e51: $00
	ld   a, [bc]                                     ; $7e52: $0a
	inc  e                                           ; $7e53: $1c
	ld   bc, $0101                                   ; $7e54: $01 $01 $01
	ld   bc, $546b                                   ; $7e57: $01 $6b $54
	ld   [hl], l                                     ; $7e5a: $75
	ld   h, a                                        ; $7e5b: $67
	ld   a, e                                        ; $7e5c: $7b
	sbc  a                                           ; $7e5d: $9f
	dec  c                                           ; $7e5e: $0d
	inc  bc                                          ; $7e5f: $03

jr_054_7e60:
	ccf                                              ; $7e60: $3f
	ld   d, d                                        ; $7e61: $52
	db   $e4                                         ; $7e62: $e4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e63: $cf
	ld   a, l                                        ; $7e64: $7d
	ld   [bc], a                                     ; $7e65: $02
	inc  [hl]                                        ; $7e66: $34
	ld   a, c                                        ; $7e67: $79

jr_054_7e68:
	inc  b                                           ; $7e68: $04
	jr   z, jr_054_7ebd                              ; $7e69: $28 $52

	ld   [hl], h                                     ; $7e6b: $74
	ld   [bc], a                                     ; $7e6c: $02
	inc  [hl]                                        ; $7e6d: $34
	ld   h, e                                        ; $7e6e: $63
	ld   d, d                                        ; $7e6f: $52
	sbc  a                                           ; $7e70: $9f
	dec  c                                           ; $7e71: $0d
	nop                                              ; $7e72: $00
	dec  b                                           ; $7e73: $05
	ld   b, b                                        ; $7e74: $40
	rst  $38                                         ; $7e75: $ff
	inc  bc                                          ; $7e76: $03
	rst  $38                                         ; $7e77: $ff
	ld   bc, $2801                                   ; $7e78: $01 $01 $28
	nop                                              ; $7e7b: $00
	ld   bc, $7c6b                                   ; $7e7c: $01 $6b $7c
	inc  bc                                          ; $7e7f: $03
	cp   $03                                         ; $7e80: $fe $03
	add  [hl]                                        ; $7e82: $86
	ld   [hl], l                                     ; $7e83: $75
	ld   h, a                                        ; $7e84: $67
	sub  [hl]                                        ; $7e85: $96
	sbc  a                                           ; $7e86: $9f
	dec  c                                           ; $7e87: $0d
	nop                                              ; $7e88: $00
	ld   a, [bc]                                     ; $7e89: $0a
	ld   b, $82                                      ; $7e8a: $06 $82
	rrca                                             ; $7e8c: $0f
	rrca                                             ; $7e8d: $0f
	nop                                              ; $7e8e: $00
	ld   bc, $0401                                   ; $7e8f: $01 $01 $04
	inc  hl                                          ; $7e92: $23
	inc  b                                           ; $7e93: $04
	inc  l                                           ; $7e94: $2c
	ld   l, [hl]                                     ; $7e95: $6e
	ld   e, c                                        ; $7e96: $59
	sub  a                                           ; $7e97: $97
	sbc  [hl]                                        ; $7e98: $9e
	ld   l, l                                        ; $7e99: $6d
	ld   a, b                                        ; $7e9a: $78
	add  [hl]                                        ; $7e9b: $86
	inc  b                                           ; $7e9c: $04
	jr   z, jr_054_7efc                              ; $7e9d: $28 $5d

	ld   sp, hl                                      ; $7e9f: $f9
	dec  c                                           ; $7ea0: $0d
	nop                                              ; $7ea1: $00
	ld   a, [bc]                                     ; $7ea2: $0a
	inc  e                                           ; $7ea3: $1c
	ld   bc, $0202                                   ; $7ea4: $01 $02 $02
	ld   bc, $5a6f                                   ; $7ea7: $01 $6f $5a
	ld   d, d                                        ; $7eaa: $52
	adc  h                                           ; $7eab: $8c

jr_054_7eac:
	ld   h, a                                        ; $7eac: $67
	sub  [hl]                                        ; $7ead: $96
	sbc  a                                           ; $7eae: $9f
	dec  c                                           ; $7eaf: $0d
	inc  bc                                          ; $7eb0: $03
	ccf                                              ; $7eb1: $3f
	ld   d, d                                        ; $7eb2: $52
	db   $e4                                         ; $7eb3: $e4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7eb4: $cf
	ld   a, l                                        ; $7eb5: $7d
	ld   [bc], a                                     ; $7eb6: $02
	inc  [hl]                                        ; $7eb7: $34
	ld   a, c                                        ; $7eb8: $79
	inc  b                                           ; $7eb9: $04
	jr   z, jr_054_7f0e                              ; $7eba: $28 $52

	ld   [hl], h                                     ; $7ebc: $74

jr_054_7ebd:
	ld   [bc], a                                     ; $7ebd: $02
	inc  [hl]                                        ; $7ebe: $34
	ld   h, e                                        ; $7ebf: $63
	ld   d, d                                        ; $7ec0: $52
	sbc  a                                           ; $7ec1: $9f
	dec  c                                           ; $7ec2: $0d
	dec  b                                           ; $7ec3: $05
	sbc  b                                           ; $7ec4: $98
	ld   a, b                                        ; $7ec5: $78
	ld   d, d                                        ; $7ec6: $52
	ld   [hl], l                                     ; $7ec7: $75
	ld   h, a                                        ; $7ec8: $67
	ld   e, c                                        ; $7ec9: $59
	sub  a                                           ; $7eca: $97
	dec  c                                           ; $7ecb: $0d
	nop                                              ; $7ecc: $00
	ld   a, [bc]                                     ; $7ecd: $0a
	ld   b, $82                                      ; $7ece: $06 $82
	rrca                                             ; $7ed0: $0f
	rrca                                             ; $7ed1: $0f
	nop                                              ; $7ed2: $00
	ld   bc, $0401                                   ; $7ed3: $01 $01 $04
	inc  hl                                          ; $7ed6: $23
	inc  b                                           ; $7ed7: $04
	inc  l                                           ; $7ed8: $2c
	ld   a, l                                        ; $7ed9: $7d
	rst  $38                                         ; $7eda: $ff
	rst  $38                                         ; $7edb: $ff
	sbc  [hl]                                        ; $7edc: $9e
	inc  b                                           ; $7edd: $04
	push de                                          ; $7ede: $d5
	inc  b                                           ; $7edf: $04
	add  a                                           ; $7ee0: $87
	ld   [hl], l                                     ; $7ee1: $75
	ld   d, d                                        ; $7ee2: $52
	ld   d, d                                        ; $7ee3: $52
	sub  d                                           ; $7ee4: $92
	sbc  a                                           ; $7ee5: $9f
	dec  c                                           ; $7ee6: $0d
	nop                                              ; $7ee7: $00
	ld   a, [bc]                                     ; $7ee8: $0a
	inc  e                                           ; $7ee9: $1c
	ld   bc, $0202                                   ; $7eea: $01 $02 $02
	ld   bc, $9d61                                   ; $7eed: $01 $61 $9d
	sbc  d                                           ; $7ef0: $9a
	ld   [hl], h                                     ; $7ef1: $74
	adc  h                                           ; $7ef2: $8c
	ld   l, c                                        ; $7ef3: $69
	and  c                                           ; $7ef4: $a1
	sub  [hl]                                        ; $7ef5: $96
	sbc  [hl]                                        ; $7ef6: $9e
	ld   l, e                                        ; $7ef7: $6b
	ld   a, h                                        ; $7ef8: $7c
	inc  b                                           ; $7ef9: $04
	inc  hl                                          ; $7efa: $23
	inc  b                                           ; $7efb: $04

jr_054_7efc:
	inc  l                                           ; $7efc: $2c
	sbc  a                                           ; $7efd: $9f
	dec  c                                           ; $7efe: $0d
	inc  bc                                          ; $7eff: $03
	ccf                                              ; $7f00: $3f
	ld   d, d                                        ; $7f01: $52
	db   $e4                                         ; $7f02: $e4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f03: $cf
	ld   a, l                                        ; $7f04: $7d
	ld   [bc], a                                     ; $7f05: $02
	inc  [hl]                                        ; $7f06: $34
	ld   a, c                                        ; $7f07: $79
	inc  b                                           ; $7f08: $04
	jr   z, @+$54                                    ; $7f09: $28 $52

	ld   [hl], h                                     ; $7f0b: $74
	ld   [bc], a                                     ; $7f0c: $02
	inc  [hl]                                        ; $7f0d: $34

jr_054_7f0e:
	ld   h, e                                        ; $7f0e: $63
	ld   d, d                                        ; $7f0f: $52
	sbc  a                                           ; $7f10: $9f
	dec  c                                           ; $7f11: $0d
	dec  b                                           ; $7f12: $05
	sbc  b                                           ; $7f13: $98
	ld   a, b                                        ; $7f14: $78
	ld   d, d                                        ; $7f15: $52
	ld   [hl], l                                     ; $7f16: $75
	ld   h, a                                        ; $7f17: $67
	ld   e, c                                        ; $7f18: $59
	sub  a                                           ; $7f19: $97
	dec  c                                           ; $7f1a: $0d
	nop                                              ; $7f1b: $00
	ld   a, [bc]                                     ; $7f1c: $0a
	ld   b, $82                                      ; $7f1d: $06 $82
	rrca                                             ; $7f1f: $0f
	inc  e                                           ; $7f20: $1c
	ld   bc, $0707                                   ; $7f21: $01 $07 $07
	ld   bc, $3f03                                   ; $7f24: $01 $03 $3f
	ld   d, d                                        ; $7f27: $52
	db   $e4                                         ; $7f28: $e4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f29: $cf
	ld   a, l                                        ; $7f2a: $7d
	ld   [bc], a                                     ; $7f2b: $02
	inc  [hl]                                        ; $7f2c: $34
	ld   a, c                                        ; $7f2d: $79
	inc  b                                           ; $7f2e: $04
	jr   z, jr_054_7f83                              ; $7f2f: $28 $52

	ld   [hl], h                                     ; $7f31: $74
	ld   [bc], a                                     ; $7f32: $02
	inc  [hl]                                        ; $7f33: $34
	ld   h, e                                        ; $7f34: $63
	ld   d, d                                        ; $7f35: $52
	sbc  a                                           ; $7f36: $9f
	dec  c                                           ; $7f37: $0d
	inc  bc                                          ; $7f38: $03
	ld   [hl], b                                     ; $7f39: $70
	ld   e, l                                        ; $7f3a: $5d
	sub  d                                           ; $7f3b: $92
	sub  a                                           ; $7f3c: $97
	ld   a, b                                        ; $7f3d: $78
	ld   d, d                                        ; $7f3e: $52
	halt                                             ; $7f3f: $76
	sbc  [hl]                                        ; $7f40: $9e
	inc  b                                           ; $7f41: $04
	ld   b, d                                        ; $7f42: $42
	sbc  c                                           ; $7f43: $99
	inc  bc                                          ; $7f44: $03
	ld   l, a                                        ; $7f45: $6f
	ld   [bc], a                                     ; $7f46: $02
	xor  c                                           ; $7f47: $a9
	ld   a, c                                        ; $7f48: $79
	dec  c                                           ; $7f49: $0d
	ld   a, b                                        ; $7f4a: $78
	ld   [hl], c                                     ; $7f4b: $71
	ld   [hl], h                                     ; $7f4c: $74
	ld   h, l                                        ; $7f4d: $65
	adc  h                                           ; $7f4e: $8c
	ld   d, d                                        ; $7f4f: $52
	adc  h                                           ; $7f50: $8c
	ld   h, a                                        ; $7f51: $67
	sub  [hl]                                        ; $7f52: $96
	sbc  a                                           ; $7f53: $9f
	dec  c                                           ; $7f54: $0d
	nop                                              ; $7f55: $00
	ld   a, [bc]                                     ; $7f56: $0a
	ld   b, $82                                      ; $7f57: $06 $82
	rrca                                             ; $7f59: $0f
	inc  e                                           ; $7f5a: $1c
	ld   bc, $0000                                   ; $7f5b: $01 $00 $00
	ld   bc, $6803                                   ; $7f5e: $01 $03 $68
	ld   a, l                                        ; $7f61: $7d
	sbc  [hl]                                        ; $7f62: $9e
	dec  c                                           ; $7f63: $0d
	dec  d                                           ; $7f64: $15
	xor  [hl]                                        ; $7f65: $ae
	rst  $28                                         ; $7f66: $ef
	ld   a, h                                        ; $7f67: $7c
	inc  b                                           ; $7f68: $04
	inc  hl                                          ; $7f69: $23
	inc  b                                           ; $7f6a: $04
	inc  l                                           ; $7f6b: $2c
	ld   [hl], l                                     ; $7f6c: $75
	ld   h, a                                        ; $7f6d: $67
	sbc  a                                           ; $7f6e: $9f
	dec  c                                           ; $7f6f: $0d
	nop                                              ; $7f70: $00
	ld   a, [bc]                                     ; $7f71: $0a
	add  hl, de                                      ; $7f72: $19
	dec  b                                           ; $7f73: $05
	inc  bc                                          ; $7f74: $03
	ld   [bc], a                                     ; $7f75: $02
	inc  [hl]                                        ; $7f76: $34
	ld   a, c                                        ; $7f77: $79
	inc  b                                           ; $7f78: $04
	jr   z, jr_054_7fd8                              ; $7f79: $28 $5d

	nop                                              ; $7f7b: $00
	nop                                              ; $7f7c: $00
	ld   l, l                                        ; $7f7d: $6d
	ld   a, b                                        ; $7f7e: $78
	ld   a, c                                        ; $7f7f: $79
	inc  b                                           ; $7f80: $04
	jr   z, jr_054_7fe0                              ; $7f81: $28 $5d

jr_054_7f83:
	nop                                              ; $7f83: $00
	ld   bc, $d504                                   ; $7f84: $01 $04 $d5
	inc  b                                           ; $7f87: $04
	add  a                                           ; $7f88: $87
	add  [hl]                                        ; $7f89: $86
	inc  b                                           ; $7f8a: $04
	ld   b, l                                        ; $7f8b: $45
	sbc  d                                           ; $7f8c: $9a
	sbc  c                                           ; $7f8d: $99
	nop                                              ; $7f8e: $00
	ld   [bc], a                                     ; $7f8f: $02
	rlca                                             ; $7f90: $07
	sub  $0f                                         ; $7f91: $d6 $0f
	ld   [bc], a                                     ; $7f93: $02
	inc  bc                                          ; $7f94: $03
	ld   bc, $2000                                   ; $7f95: $01 $00 $20
	nop                                              ; $7f98: $00
	rlca                                             ; $7f99: $07
	inc  l                                           ; $7f9a: $2c
	db   $10                                         ; $7f9b: $10
	ld   [bc], a                                     ; $7f9c: $02
	inc  bc                                          ; $7f9d: $03
	ld   bc, $2001                                   ; $7f9e: $01 $01 $20
	nop                                              ; $7fa1: $00
	rlca                                             ; $7fa2: $07
	ld   l, l                                        ; $7fa3: $6d
	db   $10                                         ; $7fa4: $10
	ld   [bc], a                                     ; $7fa5: $02
	inc  bc                                          ; $7fa6: $03
	ld   bc, $2002                                   ; $7fa7: $01 $02 $20
	nop                                              ; $7faa: $00
	ld   b, $bd                                      ; $7fab: $06 $bd
	db   $10                                         ; $7fad: $10
	rrca                                             ; $7fae: $0f
	nop                                              ; $7faf: $00
	ld   bc, $1501                                   ; $7fb0: $01 $01 $15
	xor  [hl]                                        ; $7fb3: $ae
	rst  $28                                         ; $7fb4: $ef
	ld   l, [hl]                                     ; $7fb5: $6e
	ld   [hl], c                                     ; $7fb6: $71
	ld   [hl], h                                     ; $7fb7: $74
	inc  bc                                          ; $7fb8: $03
	ccf                                              ; $7fb9: $3f
	ld   d, d                                        ; $7fba: $52
	ld   e, c                                        ; $7fbb: $59
	sub  a                                           ; $7fbc: $97
	dec  c                                           ; $7fbd: $0d
	ld   [bc], a                                     ; $7fbe: $02
	inc  [hl]                                        ; $7fbf: $34
	ld   a, c                                        ; $7fc0: $79
	inc  b                                           ; $7fc1: $04
	jr   z, @+$5f                                    ; $7fc2: $28 $5d

	sbc  a                                           ; $7fc4: $9f
	dec  c                                           ; $7fc5: $0d
	nop                                              ; $7fc6: $00
	ld   a, [bc]                                     ; $7fc7: $0a
	inc  e                                           ; $7fc8: $1c
	ld   bc, $0101                                   ; $7fc9: $01 $01 $01
	ld   bc, $546b                                   ; $7fcc: $01 $6b $54
	ld   l, e                                        ; $7fcf: $6b
	ld   d, h                                        ; $7fd0: $54
	sbc  [hl]                                        ; $7fd1: $9e
	dec  d                                           ; $7fd2: $15
	xor  [hl]                                        ; $7fd3: $ae
	rst  $28                                         ; $7fd4: $ef
	ld   [hl], l                                     ; $7fd5: $75
	ld   h, a                                        ; $7fd6: $67
	ld   e, c                                        ; $7fd7: $59

jr_054_7fd8:
	sub  a                                           ; $7fd8: $97
	ld   a, e                                        ; $7fd9: $7b
	sbc  a                                           ; $7fda: $9f
	dec  c                                           ; $7fdb: $0d
	ld   [bc], a                                     ; $7fdc: $02
	inc  [hl]                                        ; $7fdd: $34
	ld   a, c                                        ; $7fde: $79
	inc  b                                           ; $7fdf: $04

jr_054_7fe0:
	jr   z, @+$54                                    ; $7fe0: $28 $52

	ld   [hl], h                                     ; $7fe2: $74
	ld   [bc], a                                     ; $7fe3: $02
	inc  [hl]                                        ; $7fe4: $34
	ld   h, e                                        ; $7fe5: $63
	ld   d, d                                        ; $7fe6: $52
	sbc  a                                           ; $7fe7: $9f
	dec  c                                           ; $7fe8: $0d
	nop                                              ; $7fe9: $00
	dec  b                                           ; $7fea: $05
	ld   b, b                                        ; $7feb: $40
	rst  $38                                         ; $7fec: $ff
	inc  bc                                          ; $7fed: $03
	rst  $38                                         ; $7fee: $ff
	ld   bc, $2801                                   ; $7fef: $01 $01 $28
	nop                                              ; $7ff2: $00
	ld   bc, $7c6b                                   ; $7ff3: $01 $6b $7c
	inc  bc                                          ; $7ff6: $03
	cp   $03                                         ; $7ff7: $fe $03
	add  [hl]                                        ; $7ff9: $86
	ld   [hl], l                                     ; $7ffa: $75
	ld   h, a                                        ; $7ffb: $67
	sub  [hl]                                        ; $7ffc: $96
	sbc  a                                           ; $7ffd: $9f
	dec  c                                           ; $7ffe: $0d
	nop                                              ; $7fff: $00
