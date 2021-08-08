; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $060", ROMX[$4000], BANK[$60]

	sbc  [hl]                                        ; $4000: $9e
	ld   h, l                                        ; $4001: $65
	ld   [hl], c                                     ; $4002: $71
	ld   [hl], h                                     ; $4003: $74
	sbc  c                                           ; $4004: $99
	sub  b                                           ; $4005: $90
	and  c                                           ; $4006: $a1
	ld   a, [$900d]                                  ; $4007: $fa $0d $90
	ei                                               ; $400a: $fb
	sub  h                                           ; $400b: $94
	sbc  c                                           ; $400c: $99
	ld   h, e                                        ; $400d: $63
	ld   a, b                                        ; $400e: $78
	ld   d, d                                        ; $400f: $52
	ld   e, c                                        ; $4010: $59
	sub  a                                           ; $4011: $97
	ld   a, e                                        ; $4012: $7b
	ld   a, [$000d]                                  ; $4013: $fa $0d $00
	ld   a, [bc]                                     ; $4016: $0a
	inc  c                                           ; $4017: $0c
	ld   b, $0f                                      ; $4018: $06 $0f
	nop                                              ; $401a: $00
	ld   bc, $6501                                   ; $401b: $01 $01 $65
	sbc  [hl]                                        ; $401e: $9e
	ld   h, l                                        ; $401f: $65
	add  c                                           ; $4020: $81
	sbc  d                                           ; $4021: $9a
	sbc  c                                           ; $4022: $99
	db   $fc                                         ; $4023: $fc
	ld   a, [$000d]                                  ; $4024: $fa $0d $00
	ld   a, [bc]                                     ; $4027: $0a
	ld   sp, $2040                                   ; $4028: $31 $40 $20
	inc  bc                                          ; $402b: $03
	jr   nz, jr_060_402f                             ; $402c: $20 $01

	ld   [hl-], a                                    ; $402e: $32

jr_060_402f:
	add  hl, hl                                      ; $402f: $29
	nop                                              ; $4030: $00
	ld   b, $da                                      ; $4031: $06 $da
	nop                                              ; $4033: $00
	rrca                                             ; $4034: $0f
	inc  b                                           ; $4035: $04
	rlca                                             ; $4036: $07
	dec  e                                           ; $4037: $1d
	ld   b, b                                        ; $4038: $40
	inc  d                                           ; $4039: $14
	inc  bc                                          ; $403a: $03
	inc  d                                           ; $403b: $14
	ld   bc, $2903                                   ; $403c: $01 $03 $29
	nop                                              ; $403f: $00
	ld   bc, $526f                                   ; $4040: $01 $6f $52
	ld   [bc], a                                     ; $4043: $02
	inc  de                                          ; $4044: $13
	ld   l, a                                        ; $4045: $6f
	sub  c                                           ; $4046: $91
	and  c                                           ; $4047: $a1
	ld   a, h                                        ; $4048: $7c
	pop  de                                          ; $4049: $d1
	xor  h                                           ; $404a: $ac
	ld   c, a                                        ; $404b: $4f
	ld   a, [$000d]                                  ; $404c: $fa $0d $00
	ld   a, [bc]                                     ; $404f: $0a
	dec  b                                           ; $4050: $05
	ld   b, b                                        ; $4051: $40
	ld   c, e                                        ; $4052: $4b
	ld   [bc], a                                     ; $4053: $02
	nop                                              ; $4054: $00
	nop                                              ; $4055: $00
	dec  b                                           ; $4056: $05
	ld   b, b                                        ; $4057: $40
	ld   d, c                                        ; $4058: $51
	ld   bc, $0002                                   ; $4059: $01 $02 $00
	dec  c                                           ; $405c: $0d
	nop                                              ; $405d: $00
	nop                                              ; $405e: $00
	rrca                                             ; $405f: $0f
	nop                                              ; $4060: $00
	ld   bc, $1e09                                   ; $4061: $01 $09 $1e
	nop                                              ; $4064: $00
	rrca                                             ; $4065: $0f
	nop                                              ; $4066: $00
	ld   bc, $6201                                   ; $4067: $01 $01 $62
	adc  a                                           ; $406a: $8f
	and  c                                           ; $406b: $a1
	sbc  [hl]                                        ; $406c: $9e
	ld   [hl], d                                     ; $406d: $72
	ld   d, d                                        ; $406e: $52
	rst  $38                                         ; $406f: $ff
	rst  $38                                         ; $4070: $ff
	dec  c                                           ; $4071: $0d
	and  e                                           ; $4072: $a3
	and  l                                           ; $4073: $a5
	db   $ec                                         ; $4074: $ec
	cp   d                                           ; $4075: $ba
	ld   e, d                                        ; $4076: $5a
	sbc  [hl]                                        ; $4077: $9e
	ld   d, b                                        ; $4078: $50
	adc  h                                           ; $4079: $8c
	sbc  b                                           ; $407a: $98
	ld   a, c                                        ; $407b: $79
	sub  b                                           ; $407c: $90
	dec  c                                           ; $407d: $0d
	adc  l                                           ; $407e: $8d
	sbc  b                                           ; $407f: $98
	sub  l                                           ; $4080: $95
	ld   e, l                                        ; $4081: $5d
	ld   [hl], h                                     ; $4082: $74
	ld   e, e                                        ; $4083: $5b
	ld   l, [hl]                                     ; $4084: $6e
	ld   [hl], c                                     ; $4085: $71
	ld   l, l                                        ; $4086: $6d
	ld   e, c                                        ; $4087: $59
	sub  a                                           ; $4088: $97
	rst  $38                                         ; $4089: $ff
	rst  $38                                         ; $408a: $ff
	dec  c                                           ; $408b: $0d
	nop                                              ; $408c: $00
	ld   a, [bc]                                     ; $408d: $0a
	inc  e                                           ; $408e: $1c
	inc  b                                           ; $408f: $04
	ld   [bc], a                                     ; $4090: $02
	ld   [bc], a                                     ; $4091: $02
	ld   bc, $ffff                                   ; $4092: $01 $ff $ff
	add  e                                           ; $4095: $83
	ei                                               ; $4096: $fb
	and  c                                           ; $4097: $a1
	sbc  [hl]                                        ; $4098: $9e
	ld   l, e                                        ; $4099: $6b
	ld   d, h                                        ; $409a: $54
	ld   a, b                                        ; $409b: $78
	and  c                                           ; $409c: $a1
	ld   l, [hl]                                     ; $409d: $6e
	sbc  a                                           ; $409e: $9f
	dec  c                                           ; $409f: $0d
	ld   l, [hl]                                     ; $40a0: $6e
	ld   [hl], c                                     ; $40a1: $71
	ld   l, l                                        ; $40a2: $6d
	sub  a                                           ; $40a3: $97
	sbc  [hl]                                        ; $40a4: $9e
	sub  h                                           ; $40a5: $94
	sbc  c                                           ; $40a6: $99
	ld   h, l                                        ; $40a7: $65
	ld   [hl], h                                     ; $40a8: $74
	ld   d, b                                        ; $40a9: $50
	ld   h, b                                        ; $40aa: $60
	sbc  c                                           ; $40ab: $99
	sbc  a                                           ; $40ac: $9f
	dec  c                                           ; $40ad: $0d
	nop                                              ; $40ae: $00
	ld   a, [bc]                                     ; $40af: $0a
	dec  c                                           ; $40b0: $0d
	nop                                              ; $40b1: $00
	nop                                              ; $40b2: $00
	rrca                                             ; $40b3: $0f
	nop                                              ; $40b4: $00
	ld   bc, $1e09                                   ; $40b5: $01 $09 $1e
	nop                                              ; $40b8: $00
	inc  e                                           ; $40b9: $1c
	inc  b                                           ; $40ba: $04
	ld   [bc], a                                     ; $40bb: $02
	ld   [bc], a                                     ; $40bc: $02
	ld   bc, $fb50                                   ; $40bd: $01 $50 $fb
	ld   [hl], c                                     ; $40c0: $71
	rst  $38                                         ; $40c1: $ff
	rst  $38                                         ; $40c2: $ff
	ld   l, e                                        ; $40c3: $6b
	ld   d, h                                        ; $40c4: $54
	ld   d, d                                        ; $40c5: $52
	ld   d, h                                        ; $40c6: $54
	ld   a, h                                        ; $40c7: $7c
	dec  c                                           ; $40c8: $0d
	ld   bc, $9007                                   ; $40c9: $01 $07 $90
	ld   e, l                                        ; $40cc: $5d
	add  b                                           ; $40cd: $80
	ld   e, a                                        ; $40ce: $5f
	and  c                                           ; $40cf: $a1
	ld   bc, $7408                                   ; $40d0: $01 $08 $74
	ld   d, d                                        ; $40d3: $52
	ld   d, h                                        ; $40d4: $54
	and  c                                           ; $40d5: $a1
	ld   l, [hl]                                     ; $40d6: $6e
	sub  [hl]                                        ; $40d7: $96
	sbc  a                                           ; $40d8: $9f
	dec  c                                           ; $40d9: $0d
	and  e                                           ; $40da: $a3
	and  l                                           ; $40db: $a5
	db   $ec                                         ; $40dc: $ec
	cp   d                                           ; $40dd: $ba
	sbc  [hl]                                        ; $40de: $9e
	ld   h, l                                        ; $40df: $65
	ld   [hl], c                                     ; $40e0: $71
	ld   [hl], h                                     ; $40e1: $74
	sbc  c                                           ; $40e2: $99
	sub  b                                           ; $40e3: $90
	and  c                                           ; $40e4: $a1
	ld   a, [$000d]                                  ; $40e5: $fa $0d $00
	ld   a, [bc]                                     ; $40e8: $0a
	inc  e                                           ; $40e9: $1c
	inc  b                                           ; $40ea: $04
	rlca                                             ; $40eb: $07
	rlca                                             ; $40ec: $07
	dec  e                                           ; $40ed: $1d
	ld   b, b                                        ; $40ee: $40
	inc  d                                           ; $40ef: $14
	inc  bc                                          ; $40f0: $03
	inc  d                                           ; $40f1: $14
	ld   bc, $2903                                   ; $40f2: $01 $03 $29
	nop                                              ; $40f5: $00
	ld   bc, $9075                                   ; $40f6: $01 $75 $90
	sbc  [hl]                                        ; $40f9: $9e
	ld   l, a                                        ; $40fa: $6f
	ld   d, d                                        ; $40fb: $52
	ld   [bc], a                                     ; $40fc: $02
	inc  de                                          ; $40fd: $13
	ld   l, a                                        ; $40fe: $6f
	sub  c                                           ; $40ff: $91
	and  c                                           ; $4100: $a1
	ld   e, d                                        ; $4101: $5a
	dec  c                                           ; $4102: $0d
	ld   a, h                                        ; $4103: $7c
	ld   l, h                                        ; $4104: $6c
	ld   d, d                                        ; $4105: $52
	ld   l, l                                        ; $4106: $6d
	ld   h, c                                        ; $4107: $61
	halt                                             ; $4108: $76
	sub  b                                           ; $4109: $90
	dec  c                                           ; $410a: $0d
	ld   h, l                                        ; $410b: $65
	ld   [hl], c                                     ; $410c: $71
	ld   [hl], h                                     ; $410d: $74
	sbc  c                                           ; $410e: $99
	and  c                                           ; $410f: $a1
	ld   l, [hl]                                     ; $4110: $6e
	ld   e, c                                        ; $4111: $59
	sub  a                                           ; $4112: $97
	ld   a, e                                        ; $4113: $7b
	ld   a, [$000d]                                  ; $4114: $fa $0d $00
	ld   a, [bc]                                     ; $4117: $0a
	ld   bc, $526f                                   ; $4118: $01 $6f $52
	ld   [bc], a                                     ; $411b: $02
	inc  de                                          ; $411c: $13
	ld   l, a                                        ; $411d: $6f
	sub  c                                           ; $411e: $91
	and  c                                           ; $411f: $a1
	ld   a, h                                        ; $4120: $7c
	pop  de                                          ; $4121: $d1
	xor  h                                           ; $4122: $ac
	ld   c, a                                        ; $4123: $4f
	ld   a, [$000d]                                  ; $4124: $fa $0d $00
	ld   a, [bc]                                     ; $4127: $0a
	dec  b                                           ; $4128: $05
	ld   b, b                                        ; $4129: $40
	ld   c, e                                        ; $412a: $4b
	ld   [bc], a                                     ; $412b: $02
	nop                                              ; $412c: $00
	nop                                              ; $412d: $00
	dec  b                                           ; $412e: $05
	ld   b, b                                        ; $412f: $40
	ld   d, c                                        ; $4130: $51
	ld   bc, $0001                                   ; $4131: $01 $01 $00
	dec  c                                           ; $4134: $0d
	nop                                              ; $4135: $00
	nop                                              ; $4136: $00
	rrca                                             ; $4137: $0f
	nop                                              ; $4138: $00
	ld   bc, $1e09                                   ; $4139: $01 $09 $1e
	nop                                              ; $413c: $00
	nop                                              ; $413d: $00
	inc  bc                                          ; $413e: $03
	ld   d, $01                                      ; $413f: $16 $01
	sbc  e                                           ; $4141: $9b
	dec  h                                           ; $4142: $25
	nop                                              ; $4143: $00
	ld   c, $02                                      ; $4144: $0e $02
	rrca                                             ; $4146: $0f
	nop                                              ; $4147: $00
	ld   bc, $0102                                   ; $4148: $01 $02 $01
	rst  $38                                         ; $414b: $ff
	rst  $38                                         ; $414c: $ff
	and  c                                           ; $414d: $a1
	ld   sp, hl                                      ; $414e: $f9
	dec  c                                           ; $414f: $0d
	sub  b                                           ; $4150: $90
	ld   d, h                                        ; $4151: $54
	ld   h, c                                        ; $4152: $61
	and  c                                           ; $4153: $a1
	ld   a, b                                        ; $4154: $78
	inc  bc                                          ; $4155: $03
	ld   l, a                                        ; $4156: $6f
	ld   [bc], a                                     ; $4157: $02
	xor  c                                           ; $4158: $a9
	ld   e, c                                        ; $4159: $59
	rst  $38                                         ; $415a: $ff
	rst  $38                                         ; $415b: $ff
	dec  c                                           ; $415c: $0d
	inc  b                                           ; $415d: $04
	ld   b, d                                        ; $415e: $42
	sub  [hl]                                        ; $415f: $96
	ld   d, h                                        ; $4160: $54
	ld   e, c                                        ; $4161: $59
	ld   a, b                                        ; $4162: $78
	rst  $38                                         ; $4163: $ff
	rst  $38                                         ; $4164: $ff
	dec  c                                           ; $4165: $0d
	nop                                              ; $4166: $00
	ld   a, [bc]                                     ; $4167: $0a
	inc  d                                           ; $4168: $14
	ld   b, $01                                      ; $4169: $06 $01
	rrca                                             ; $416b: $0f
	ld   b, $01                                      ; $416c: $06 $01
	ld   bc, $0008                                   ; $416e: $01 $08 $00
	sbc  [hl]                                        ; $4171: $9e
	ld   d, d                                        ; $4172: $52
	sbc  c                                           ; $4173: $99
	ld   e, c                                        ; $4174: $59
	ld   sp, hl                                      ; $4175: $f9
	dec  c                                           ; $4176: $0d
	nop                                              ; $4177: $00
	ld   a, [bc]                                     ; $4178: $0a
	rrca                                             ; $4179: $0f
	nop                                              ; $417a: $00
	ld   bc, $7d01                                   ; $417b: $01 $01 $7d
	ld   d, d                                        ; $417e: $52
	sbc  a                                           ; $417f: $9f
	dec  c                                           ; $4180: $0d
	ld   [bc], a                                     ; $4181: $02
	adc  b                                           ; $4182: $88
	ld   d, d                                        ; $4183: $52
	ld   [hl], h                                     ; $4184: $74
	adc  h                                           ; $4185: $8c
	ld   h, a                                        ; $4186: $67
	ld   e, c                                        ; $4187: $59
	sub  a                                           ; $4188: $97
	sbc  [hl]                                        ; $4189: $9e
	ld   [hl], a                                     ; $418a: $77
	ld   d, h                                        ; $418b: $54
	ld   l, h                                        ; $418c: $6c
	sbc  a                                           ; $418d: $9f
	dec  c                                           ; $418e: $0d
	nop                                              ; $418f: $00
	ld   a, [bc]                                     ; $4190: $0a
	inc  d                                           ; $4191: $14
	ld   a, [bc]                                     ; $4192: $0a
	ld   bc, $061c                                   ; $4193: $01 $1c $06
	ld   bc, $0101                                   ; $4196: $01 $01 $01
	inc  b                                           ; $4199: $04
	rst  $28                                         ; $419a: $ef
	ld   e, b                                        ; $419b: $58
	ld   l, e                                        ; $419c: $6b
	ld   e, l                                        ; $419d: $5d
	ld   a, c                                        ; $419e: $79
	sbc  [hl]                                        ; $419f: $9e
	ld   h, a                                        ; $41a0: $67
	adc  h                                           ; $41a1: $8c
	ld   a, e                                        ; $41a2: $7b
	ei                                               ; $41a3: $fb
	ld   a, b                                        ; $41a4: $78
	sbc  a                                           ; $41a5: $9f
	dec  c                                           ; $41a6: $0d
	ld   [$7d00], sp                                 ; $41a7: $08 $00 $7d
	dec  c                                           ; $41aa: $0d
	inc  b                                           ; $41ab: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41ac: $cf
	inc  b                                           ; $41ad: $04
	xor  d                                           ; $41ae: $aa
	sbc  [hl]                                        ; $41af: $9e
	db   $d3                                         ; $41b0: $d3
	rst  JumpTable                                         ; $41b1: $df
	ld   e, c                                        ; $41b2: $59
	ld   sp, hl                                      ; $41b3: $f9
	dec  c                                           ; $41b4: $0d
	nop                                              ; $41b5: $00
	ld   a, [bc]                                     ; $41b6: $0a
	ld   bc, $cf04                                   ; $41b7: $01 $04 $cf
	inc  b                                           ; $41ba: $04
	xor  d                                           ; $41bb: $aa
	sbc  [hl]                                        ; $41bc: $9e
	inc  bc                                          ; $41bd: $03
	sub  [hl]                                        ; $41be: $96
	inc  b                                           ; $41bf: $04
	sbc  a                                           ; $41c0: $9f
	ld   a, c                                        ; $41c1: $79
	ld   [bc], a                                     ; $41c2: $02
	ld   a, a                                        ; $41c3: $7f
	ld   h, c                                        ; $41c4: $61
	ld   d, h                                        ; $41c5: $54
	halt                                             ; $41c6: $76
	dec  c                                           ; $41c7: $0d
	dec  b                                           ; $41c8: $05
	pop  de                                          ; $41c9: $d1
	ld   [hl], c                                     ; $41ca: $71
	ld   [hl], h                                     ; $41cb: $74
	sbc  c                                           ; $41cc: $99
	and  c                                           ; $41cd: $a1
	ld   l, [hl]                                     ; $41ce: $6e
	ld   e, a                                        ; $41cf: $5f
	ld   [hl], a                                     ; $41d0: $77
	sbc  [hl]                                        ; $41d1: $9e
	dec  c                                           ; $41d2: $0d
	ld   d, d                                        ; $41d3: $52
	ld   [hl], c                                     ; $41d4: $71
	ld   h, l                                        ; $41d5: $65
	sub  l                                           ; $41d6: $95
	ld   a, c                                        ; $41d7: $79
	ld   [bc], a                                     ; $41d8: $02
	ld   a, a                                        ; $41d9: $7f
	ld   e, c                                        ; $41da: $59
	ld   a, b                                        ; $41db: $78
	ld   d, d                                        ; $41dc: $52
	ld   e, c                                        ; $41dd: $59
	ld   sp, hl                                      ; $41de: $f9
	dec  c                                           ; $41df: $0d
	nop                                              ; $41e0: $00
	ld   a, [bc]                                     ; $41e1: $0a
	add  hl, de                                      ; $41e2: $19
	dec  b                                           ; $41e3: $05
	ld   [bc], a                                     ; $41e4: $02
	ld   d, d                                        ; $41e5: $52
	ld   [hl], c                                     ; $41e6: $71
	ld   h, l                                        ; $41e7: $65
	sub  l                                           ; $41e8: $95
	ld   a, c                                        ; $41e9: $79
	ld   [bc], a                                     ; $41ea: $02
	ld   a, a                                        ; $41eb: $7f
	ld   e, l                                        ; $41ec: $5d
	nop                                              ; $41ed: $00
	nop                                              ; $41ee: $00
	ld   [bc], a                                     ; $41ef: $02
	ld   a, a                                        ; $41f0: $7f
	ld   e, c                                        ; $41f1: $59
	ld   a, b                                        ; $41f2: $78
	ld   d, d                                        ; $41f3: $52
	nop                                              ; $41f4: $00
	ld   bc, $5c07                                   ; $41f5: $01 $07 $5c
	ld   bc, $0302                                   ; $41f8: $01 $02 $03
	ld   bc, $2000                                   ; $41fb: $01 $00 $20
	nop                                              ; $41fe: $00
	rlca                                             ; $41ff: $07
	rst  ToBoot                                         ; $4200: $c7
	nop                                              ; $4201: $00
	ld   [bc], a                                     ; $4202: $02
	inc  bc                                          ; $4203: $03
	ld   bc, $2001                                   ; $4204: $01 $01 $20
	nop                                              ; $4207: $00
	ld   b, $1c                                      ; $4208: $06 $1c
	ld   bc, $000f                                   ; $420a: $01 $0f $00
	ld   bc, $6701                                   ; $420d: $01 $01 $67
	adc  l                                           ; $4210: $8d
	adc  h                                           ; $4211: $8c
	ld   l, c                                        ; $4212: $69
	and  c                                           ; $4213: $a1
	rst  $38                                         ; $4214: $ff
	rst  $38                                         ; $4215: $ff
	dec  c                                           ; $4216: $0d
	inc  b                                           ; $4217: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4218: $cf
	inc  b                                           ; $4219: $04
	xor  d                                           ; $421a: $aa
	ld   a, l                                        ; $421b: $7d
	ld   l, a                                        ; $421c: $6f
	sub  l                                           ; $421d: $95
	ld   [hl], c                                     ; $421e: $71
	halt                                             ; $421f: $76
	rst  $38                                         ; $4220: $ff
	rst  $38                                         ; $4221: $ff
	dec  c                                           ; $4222: $0d
	nop                                              ; $4223: $00
	ld   a, [bc]                                     ; $4224: $0a
	inc  e                                           ; $4225: $1c
	ld   b, $05                                      ; $4226: $06 $05
	dec  b                                           ; $4228: $05
	ld   bc, $546b                                   ; $4229: $01 $6b $54
	ld   e, c                                        ; $422c: $59
	sbc  a                                           ; $422d: $9f
	dec  c                                           ; $422e: $0d
	inc  b                                           ; $422f: $04
	di                                               ; $4230: $f3
	ld   [bc], a                                     ; $4231: $02
	jp   Jump_060_505a                               ; $4232: $c3 $5a $50


	sbc  c                                           ; $4235: $99
	ld   a, h                                        ; $4236: $7c
	ld   e, c                                        ; $4237: $59
	sbc  a                                           ; $4238: $9f
	dec  c                                           ; $4239: $0d
	nop                                              ; $423a: $00
	ld   a, [bc]                                     ; $423b: $0a
	inc  e                                           ; $423c: $1c
	ld   b, $00                                      ; $423d: $06 $00
	nop                                              ; $423f: $00
	ld   bc, $9166                                   ; $4240: $01 $66 $91
	ld   d, b                                        ; $4243: $50
	sbc  [hl]                                        ; $4244: $9e
	ld   h, l                                        ; $4245: $65
	ld   e, c                                        ; $4246: $59
	ld   l, l                                        ; $4247: $6d
	ld   a, b                                        ; $4248: $78
	ld   d, d                                        ; $4249: $52
	ld   a, b                                        ; $424a: $78
	sbc  a                                           ; $424b: $9f
	dec  c                                           ; $424c: $0d
	ld   e, b                                        ; $424d: $58
	sub  d                                           ; $424e: $92
	ld   h, a                                        ; $424f: $67
	adc  l                                           ; $4250: $8d
	sbc  a                                           ; $4251: $9f
	dec  c                                           ; $4252: $0d
	nop                                              ; $4253: $00
	ld   a, [bc]                                     ; $4254: $0a
	dec  c                                           ; $4255: $0d
	nop                                              ; $4256: $00
	nop                                              ; $4257: $00
	rrca                                             ; $4258: $0f
	nop                                              ; $4259: $00
	ld   bc, $1e09                                   ; $425a: $01 $09 $1e
	add  hl, hl                                      ; $425d: $29
	nop                                              ; $425e: $00
	nop                                              ; $425f: $00
	inc  e                                           ; $4260: $1c
	ld   b, $05                                      ; $4261: $06 $05
	dec  b                                           ; $4263: $05
	dec  e                                           ; $4264: $1d
	ld   b, b                                        ; $4265: $40
	ld   d, $03                                      ; $4266: $16 $03
	ld   d, $01                                      ; $4268: $16 $01
	ld   [bc], a                                     ; $426a: $02
	add  hl, hl                                      ; $426b: $29
	nop                                              ; $426c: $00
	ld   bc, $a178                                   ; $426d: $01 $78 $a1
	ld   l, [hl]                                     ; $4270: $6e
	sub  [hl]                                        ; $4271: $96
	sbc  [hl]                                        ; $4272: $9e
	inc  b                                           ; $4273: $04
	sub  a                                           ; $4274: $97
	ld   [bc], a                                     ; $4275: $02
	jp   Jump_060_6578                               ; $4276: $c3 $78 $65


	ld   e, c                                        ; $4279: $59
	sub  [hl]                                        ; $427a: $96
	sbc  a                                           ; $427b: $9f
	dec  c                                           ; $427c: $0d
	and  l                                           ; $427d: $a5
	and  $6e                                         ; $427e: $e6 $6e
	ld   [hl], c                                     ; $4280: $71
	ld   l, l                                        ; $4281: $6d
	sub  a                                           ; $4282: $97
	inc  b                                           ; $4283: $04
	ld   d, h                                        ; $4284: $54
	ld   a, c                                        ; $4285: $79
	ld   d, d                                        ; $4286: $52
	ld   d, d                                        ; $4287: $52
	and  c                                           ; $4288: $a1
	ld   l, [hl]                                     ; $4289: $6e
	ld   l, d                                        ; $428a: $6a
	sbc  a                                           ; $428b: $9f
	dec  c                                           ; $428c: $0d
	ld   h, [hl]                                     ; $428d: $66
	sub  c                                           ; $428e: $91
	ld   d, b                                        ; $428f: $50
	ld   a, b                                        ; $4290: $78
	sbc  a                                           ; $4291: $9f
	dec  c                                           ; $4292: $0d
	nop                                              ; $4293: $00
	ld   a, [bc]                                     ; $4294: $0a
	dec  c                                           ; $4295: $0d
	nop                                              ; $4296: $00
	nop                                              ; $4297: $00
	rrca                                             ; $4298: $0f
	nop                                              ; $4299: $00
	ld   bc, $1e09                                   ; $429a: $01 $09 $1e
	add  hl, hl                                      ; $429d: $29
	nop                                              ; $429e: $00
	nop                                              ; $429f: $00
	rrca                                             ; $42a0: $0f
	nop                                              ; $42a1: $00
	ld   bc, $6a01                                   ; $42a2: $01 $01 $6a
	add  b                                           ; $42a5: $80
	ld   e, b                                        ; $42a6: $58
	ld   [bc], a                                     ; $42a7: $02
	xor  l                                           ; $42a8: $ad
	ld   h, e                                        ; $42a9: $63
	ld   l, c                                        ; $42aa: $69
	ld   [hl], h                                     ; $42ab: $74
	ld   [bc], a                                     ; $42ac: $02
	inc  [hl]                                        ; $42ad: $34
	ld   h, e                                        ; $42ae: $63
	ld   d, d                                        ; $42af: $52
	sbc  a                                           ; $42b0: $9f
	dec  c                                           ; $42b1: $0d
	nop                                              ; $42b2: $00
	ld   a, [bc]                                     ; $42b3: $0a
	rrca                                             ; $42b4: $0f
	ld   b, $01                                      ; $42b5: $06 $01
	dec  e                                           ; $42b7: $1d
	ld   b, b                                        ; $42b8: $40
	ld   d, $03                                      ; $42b9: $16 $03
	ld   d, $01                                      ; $42bb: $16 $01
	ld   [bc], a                                     ; $42bd: $02
	jr   z, jr_060_42c0                              ; $42be: $28 $00

jr_060_42c0:
	ld   bc, $546b                                   ; $42c0: $01 $6b $54
	ld   e, c                                        ; $42c3: $59
	sbc  a                                           ; $42c4: $9f
	dec  c                                           ; $42c5: $0d
	ld   h, [hl]                                     ; $42c6: $66
	sub  c                                           ; $42c7: $91
	ld   d, b                                        ; $42c8: $50
	sbc  [hl]                                        ; $42c9: $9e
	inc  b                                           ; $42ca: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $42cb: $cf
	inc  b                                           ; $42cc: $04
	xor  d                                           ; $42cd: $aa
	ld   a, h                                        ; $42ce: $7c
	inc  bc                                          ; $42cf: $03
	ld   d, $9e                                      ; $42d0: $16 $9e
	dec  c                                           ; $42d2: $0d
	ld   [de], a                                     ; $42d3: $12
	ld   [bc], a                                     ; $42d4: $02
	ld   e, h                                        ; $42d5: $5c
	ld   a, h                                        ; $42d6: $7c
	rst  $28                                         ; $42d7: $ef
	call nc, Call_060_75fb                           ; $42d8: $d4 $fb $75
	ld   a, b                                        ; $42db: $78
	sbc  a                                           ; $42dc: $9f
	dec  c                                           ; $42dd: $0d
	nop                                              ; $42de: $00
	ld   a, [bc]                                     ; $42df: $0a
	dec  b                                           ; $42e0: $05
	add  b                                           ; $42e1: $80
	add  l                                           ; $42e2: $85
	ld   bc, $0001                                   ; $42e3: $01 $01 $00
	ld   bc, $9258                                   ; $42e6: $01 $58 $92
	ld   h, a                                        ; $42e9: $67
	adc  l                                           ; $42ea: $8d
	sbc  a                                           ; $42eb: $9f
	dec  c                                           ; $42ec: $0d
	nop                                              ; $42ed: $00
	ld   a, [bc]                                     ; $42ee: $0a
	dec  c                                           ; $42ef: $0d
	nop                                              ; $42f0: $00
	nop                                              ; $42f1: $00
	rrca                                             ; $42f2: $0f
	nop                                              ; $42f3: $00
	ld   bc, $1e09                                   ; $42f4: $01 $09 $1e
	add  hl, hl                                      ; $42f7: $29
	nop                                              ; $42f8: $00
	nop                                              ; $42f9: $00
	nop                                              ; $42fa: $00
	inc  bc                                          ; $42fb: $03
	inc  de                                          ; $42fc: $13
	ld   bc, $259b                                   ; $42fd: $01 $9b $25
	nop                                              ; $4300: $00
	ld   c, $02                                      ; $4301: $0e $02
	rrca                                             ; $4303: $0f
	nop                                              ; $4304: $00
	ld   bc, $0102                                   ; $4305: $01 $02 $01
	ld   h, e                                        ; $4308: $63
	ld   [hl], h                                     ; $4309: $74
	halt                                             ; $430a: $76
	rst  $38                                         ; $430b: $ff
	rst  $38                                         ; $430c: $ff
	dec  c                                           ; $430d: $0d
	ld   [bc], a                                     ; $430e: $02
	xor  d                                           ; $430f: $aa
	ld   a, l                                        ; $4310: $7d
	sbc  [hl]                                        ; $4311: $9e
	inc  b                                           ; $4312: $04
	xor  d                                           ; $4313: $aa
	ld   [bc], a                                     ; $4314: $02
	sub  a                                           ; $4315: $97
	and  b                                           ; $4316: $a0
	ld   [hl], d                                     ; $4317: $72
	ld   e, a                                        ; $4318: $5f
	ld   [hl], h                                     ; $4319: $74
	dec  c                                           ; $431a: $0d
	inc  b                                           ; $431b: $04
	ld   b, d                                        ; $431c: $42
	sbc  c                                           ; $431d: $99
	ld   l, [hl]                                     ; $431e: $6e
	ld   e, a                                        ; $431f: $5f
	ld   l, [hl]                                     ; $4320: $6e
	sbc  a                                           ; $4321: $9f
	dec  c                                           ; $4322: $0d
	nop                                              ; $4323: $00
	ld   a, [bc]                                     ; $4324: $0a
	inc  d                                           ; $4325: $14
	ld   b, $01                                      ; $4326: $06 $01
	rrca                                             ; $4328: $0f
	inc  bc                                          ; $4329: $03
	inc  bc                                          ; $432a: $03
	ld   bc, $0008                                   ; $432b: $01 $08 $00
	ld   e, l                                        ; $432e: $5d
	and  c                                           ; $432f: $a1
	dec  c                                           ; $4330: $0d
	ld   d, d                                        ; $4331: $52
	sbc  c                                           ; $4332: $99
	ld   e, c                                        ; $4333: $59
	ld   h, l                                        ; $4334: $65
	sub  a                                           ; $4335: $97
	ld   sp, hl                                      ; $4336: $f9
	dec  c                                           ; $4337: $0d
	nop                                              ; $4338: $00
	ld   a, [bc]                                     ; $4339: $0a
	rrca                                             ; $433a: $0f
	nop                                              ; $433b: $00
	ld   bc, $7d01                                   ; $433c: $01 $01 $7d
	ld   d, d                                        ; $433f: $52
	sbc  [hl]                                        ; $4340: $9e
	ld   [hl], a                                     ; $4341: $77
	ld   d, h                                        ; $4342: $54
	ld   l, h                                        ; $4343: $6c
	sbc  a                                           ; $4344: $9f
	dec  c                                           ; $4345: $0d
	nop                                              ; $4346: $00
	ld   a, [bc]                                     ; $4347: $0a
	inc  d                                           ; $4348: $14
	ld   a, [bc]                                     ; $4349: $0a
	ld   bc, $031c                                   ; $434a: $01 $1c $03
	inc  bc                                          ; $434d: $03
	inc  bc                                          ; $434e: $03
	ld   bc, $ef04                                   ; $434f: $01 $04 $ef
	ld   e, b                                        ; $4352: $58
	ld   l, e                                        ; $4353: $6b
	ld   e, l                                        ; $4354: $5d
	ld   a, c                                        ; $4355: $79
	sbc  [hl]                                        ; $4356: $9e
	ld   h, d                                        ; $4357: $62
	adc  a                                           ; $4358: $8f
	and  c                                           ; $4359: $a1
	ld   a, b                                        ; $435a: $78
	ld   h, e                                        ; $435b: $63
	ld   d, d                                        ; $435c: $52
	sbc  a                                           ; $435d: $9f
	dec  c                                           ; $435e: $0d
	ld   [$5d00], sp                                 ; $435f: $08 $00 $5d
	and  c                                           ; $4362: $a1
	ld   a, l                                        ; $4363: $7d
	dec  c                                           ; $4364: $0d
	inc  b                                           ; $4365: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4366: $cf
	inc  b                                           ; $4367: $04
	xor  d                                           ; $4368: $aa
	sbc  [hl]                                        ; $4369: $9e
	add  b                                           ; $436a: $80
	adc  h                                           ; $436b: $8c
	ld   e, c                                        ; $436c: $59
	ld   h, l                                        ; $436d: $65
	sub  a                                           ; $436e: $97
	ld   sp, hl                                      ; $436f: $f9
	dec  c                                           ; $4370: $0d
	nop                                              ; $4371: $00
	ld   a, [bc]                                     ; $4372: $0a
	ld   bc, $5258                                   ; $4373: $01 $58 $52
	ld   h, l                                        ; $4376: $65
	ld   d, d                                        ; $4377: $52
	or   h                                           ; $4378: $b4
	ei                                               ; $4379: $fb
	db   $d3                                         ; $437a: $d3
	ei                                               ; $437b: $fb
	and  b                                           ; $437c: $a0
	dec  c                                           ; $437d: $0d
	ld   [bc], a                                     ; $437e: $02
	rlca                                             ; $437f: $07
	adc  h                                           ; $4380: $8c
	ld   l, c                                        ; $4381: $69
	ld   [hl], h                                     ; $4382: $74
	ld   e, l                                        ; $4383: $5d
	sbc  d                                           ; $4384: $9a
	sbc  c                                           ; $4385: $99
	ld   e, b                                        ; $4386: $58
	inc  bc                                          ; $4387: $03
	rst  $20                                         ; $4388: $e7
	ld   e, d                                        ; $4389: $5a
	dec  c                                           ; $438a: $0d
	ld   d, b                                        ; $438b: $50
	sbc  c                                           ; $438c: $99
	and  c                                           ; $438d: $a1
	ld   l, [hl]                                     ; $438e: $6e
	ld   e, a                                        ; $438f: $5f
	ld   [hl], a                                     ; $4390: $77
	rst  $38                                         ; $4391: $ff
	rst  $38                                         ; $4392: $ff
	dec  c                                           ; $4393: $0d
	nop                                              ; $4394: $00
	ld   a, [bc]                                     ; $4395: $0a
	ld   bc, $9603                                   ; $4396: $01 $03 $96
	inc  b                                           ; $4399: $04
	sbc  a                                           ; $439a: $9f
	ld   e, d                                        ; $439b: $5a
	ld   [hl], h                                     ; $439c: $74
	sub  a                                           ; $439d: $97
	sbc  [hl]                                        ; $439e: $9e
	ld   d, d                                        ; $439f: $52
	ld   [hl], c                                     ; $43a0: $71
	ld   h, l                                        ; $43a1: $65
	sub  l                                           ; $43a2: $95
	ld   a, c                                        ; $43a3: $79
	dec  c                                           ; $43a4: $0d
	ld   [bc], a                                     ; $43a5: $02
	ld   a, a                                        ; $43a6: $7f
	ld   e, c                                        ; $43a7: $59
	ld   a, b                                        ; $43a8: $78
	ld   d, d                                        ; $43a9: $52
	ld   sp, hl                                      ; $43aa: $f9
	dec  c                                           ; $43ab: $0d
	nop                                              ; $43ac: $00
	ld   a, [bc]                                     ; $43ad: $0a
	add  hl, de                                      ; $43ae: $19
	dec  b                                           ; $43af: $05
	ld   [bc], a                                     ; $43b0: $02
	ld   d, d                                        ; $43b1: $52
	ld   [hl], c                                     ; $43b2: $71
	ld   h, l                                        ; $43b3: $65
	sub  l                                           ; $43b4: $95
	ld   a, c                                        ; $43b5: $79
	ld   [bc], a                                     ; $43b6: $02
	ld   a, a                                        ; $43b7: $7f
	ld   e, l                                        ; $43b8: $5d
	nop                                              ; $43b9: $00
	nop                                              ; $43ba: $00
	ld   [bc], a                                     ; $43bb: $02
	ld   a, a                                        ; $43bc: $7f
	ld   e, c                                        ; $43bd: $59
	ld   a, b                                        ; $43be: $78
	ld   d, d                                        ; $43bf: $52
	nop                                              ; $43c0: $00
	ld   bc, $6207                                   ; $43c1: $01 $07 $62
	ld   bc, $0302                                   ; $43c4: $01 $02 $03
	ld   bc, $2000                                   ; $43c7: $01 $00 $20
	nop                                              ; $43ca: $00
	rlca                                             ; $43cb: $07
	sub  $00                                         ; $43cc: $d6 $00
	ld   [bc], a                                     ; $43ce: $02
	inc  bc                                          ; $43cf: $03
	ld   bc, $2001                                   ; $43d0: $01 $01 $20
	nop                                              ; $43d3: $00
	ld   b, $28                                      ; $43d4: $06 $28
	ld   bc, $000f                                   ; $43d6: $01 $0f $00
	ld   bc, $6701                                   ; $43d9: $01 $01 $67
	adc  l                                           ; $43dc: $8d
	adc  h                                           ; $43dd: $8c
	ld   l, c                                        ; $43de: $69
	and  c                                           ; $43df: $a1
	rst  $38                                         ; $43e0: $ff
	rst  $38                                         ; $43e1: $ff
	dec  c                                           ; $43e2: $0d
	inc  b                                           ; $43e3: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43e4: $cf
	inc  b                                           ; $43e5: $04
	xor  d                                           ; $43e6: $aa
	ld   a, l                                        ; $43e7: $7d
	ld   l, a                                        ; $43e8: $6f
	sub  l                                           ; $43e9: $95
	ld   [hl], c                                     ; $43ea: $71
	halt                                             ; $43eb: $76
	rst  $38                                         ; $43ec: $ff
	rst  $38                                         ; $43ed: $ff
	dec  c                                           ; $43ee: $0d
	nop                                              ; $43ef: $00
	ld   a, [bc]                                     ; $43f0: $0a
	inc  e                                           ; $43f1: $1c
	inc  bc                                          ; $43f2: $03
	nop                                              ; $43f3: $00
	nop                                              ; $43f4: $00
	ld   bc, $f304                                   ; $43f5: $01 $04 $f3
	ld   [bc], a                                     ; $43f8: $02
	jp   Jump_060_505a                               ; $43f9: $c3 $5a $50


	sbc  c                                           ; $43fc: $99
	ld   a, h                                        ; $43fd: $7c
	ld   a, e                                        ; $43fe: $7b
	sbc  a                                           ; $43ff: $9f
	dec  c                                           ; $4400: $0d
	ld   l, e                                        ; $4401: $6b
	sbc  d                                           ; $4402: $9a
	ld   h, [hl]                                     ; $4403: $66
	sub  c                                           ; $4404: $91
	sbc  [hl]                                        ; $4405: $9e
	inc  bc                                          ; $4406: $03
	dec  c                                           ; $4407: $0d
	inc  b                                           ; $4408: $04
	ld   a, b                                        ; $4409: $78
	ld   a, b                                        ; $440a: $78
	ld   d, d                                        ; $440b: $52
	sbc  l                                           ; $440c: $9d
	ld   a, e                                        ; $440d: $7b
	sbc  a                                           ; $440e: $9f
	dec  c                                           ; $440f: $0d
	ld   h, [hl]                                     ; $4410: $66
	sub  c                                           ; $4411: $91
	sbc  [hl]                                        ; $4412: $9e
	ld   e, b                                        ; $4413: $58
	sub  d                                           ; $4414: $92
	ld   h, a                                        ; $4415: $67
	adc  l                                           ; $4416: $8d
	ld   a, b                                        ; $4417: $78
	ld   h, e                                        ; $4418: $63
	ld   d, d                                        ; $4419: $52
	sbc  a                                           ; $441a: $9f
	dec  c                                           ; $441b: $0d
	nop                                              ; $441c: $00
	ld   a, [bc]                                     ; $441d: $0a
	dec  c                                           ; $441e: $0d
	nop                                              ; $441f: $00
	nop                                              ; $4420: $00
	rrca                                             ; $4421: $0f
	nop                                              ; $4422: $00
	ld   bc, $1e09                                   ; $4423: $01 $09 $1e
	add  hl, hl                                      ; $4426: $29
	nop                                              ; $4427: $00
	nop                                              ; $4428: $00
	inc  e                                           ; $4429: $1c
	inc  bc                                          ; $442a: $03
	inc  b                                           ; $442b: $04
	inc  b                                           ; $442c: $04
	dec  e                                           ; $442d: $1d
	ld   b, b                                        ; $442e: $40
	inc  de                                          ; $442f: $13
	inc  bc                                          ; $4430: $03
	inc  de                                          ; $4431: $13
	ld   bc, $2902                                   ; $4432: $01 $02 $29
	nop                                              ; $4435: $00
	ld   bc, $a102                                   ; $4436: $01 $02 $a1
	ld   e, d                                        ; $4439: $5a
	inc  bc                                          ; $443a: $03
	cp   c                                           ; $443b: $b9
	sub  a                                           ; $443c: $97
	ld   a, b                                        ; $443d: $78
	ld   d, d                                        ; $443e: $52
	ld   a, b                                        ; $443f: $78
	sub  a                                           ; $4440: $97
	ld   d, d                                        ; $4441: $52
	ld   d, d                                        ; $4442: $52
	sbc  l                                           ; $4443: $9d
	sbc  a                                           ; $4444: $9f
	dec  c                                           ; $4445: $0d
	ld   l, e                                        ; $4446: $6b
	sbc  d                                           ; $4447: $9a
	ld   h, [hl]                                     ; $4448: $66
	sub  c                                           ; $4449: $91
	rst  $38                                         ; $444a: $ff
	rst  $38                                         ; $444b: $ff
	dec  c                                           ; $444c: $0d
	ld   e, b                                        ; $444d: $58
	sub  d                                           ; $444e: $92
	ld   h, a                                        ; $444f: $67
	adc  l                                           ; $4450: $8d
	ld   a, b                                        ; $4451: $78
	ld   h, e                                        ; $4452: $63
	ld   d, d                                        ; $4453: $52
	sbc  a                                           ; $4454: $9f
	dec  c                                           ; $4455: $0d
	nop                                              ; $4456: $00
	ld   a, [bc]                                     ; $4457: $0a
	dec  c                                           ; $4458: $0d
	nop                                              ; $4459: $00
	nop                                              ; $445a: $00
	rrca                                             ; $445b: $0f
	nop                                              ; $445c: $00
	ld   bc, $1e09                                   ; $445d: $01 $09 $1e
	add  hl, hl                                      ; $4460: $29
	nop                                              ; $4461: $00
	nop                                              ; $4462: $00
	rrca                                             ; $4463: $0f
	nop                                              ; $4464: $00
	ld   bc, $6a01                                   ; $4465: $01 $01 $6a
	add  b                                           ; $4468: $80
	ld   e, b                                        ; $4469: $58
	ld   [bc], a                                     ; $446a: $02
	xor  l                                           ; $446b: $ad
	ld   h, e                                        ; $446c: $63
	ld   l, c                                        ; $446d: $69
	ld   [hl], h                                     ; $446e: $74
	ld   [bc], a                                     ; $446f: $02
	inc  [hl]                                        ; $4470: $34
	ld   h, e                                        ; $4471: $63
	ld   d, d                                        ; $4472: $52
	sbc  a                                           ; $4473: $9f
	dec  c                                           ; $4474: $0d
	nop                                              ; $4475: $00
	ld   a, [bc]                                     ; $4476: $0a
	rrca                                             ; $4477: $0f
	inc  bc                                          ; $4478: $03
	inc  bc                                          ; $4479: $03
	dec  e                                           ; $447a: $1d
	ld   b, b                                        ; $447b: $40
	inc  de                                          ; $447c: $13
	inc  bc                                          ; $447d: $03
	inc  de                                          ; $447e: $13
	ld   bc, $2802                                   ; $447f: $01 $02 $28
	nop                                              ; $4482: $00
	ld   bc, $7d75                                   ; $4483: $01 $75 $7d
	sbc  [hl]                                        ; $4486: $9e
	inc  b                                           ; $4487: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4488: $cf
	inc  b                                           ; $4489: $04
	xor  d                                           ; $448a: $aa
	ld   a, h                                        ; $448b: $7c
	inc  bc                                          ; $448c: $03
	ld   d, $9e                                      ; $448d: $16 $9e
	dec  c                                           ; $448f: $0d
	ld   [de], a                                     ; $4490: $12
	ld   [bc], a                                     ; $4491: $02
	ld   e, h                                        ; $4492: $5c
	ld   a, h                                        ; $4493: $7c
	rst  $28                                         ; $4494: $ef
	call nc, Call_060_75fb                           ; $4495: $d4 $fb $75
	inc  b                                           ; $4498: $04
	rla                                              ; $4499: $17
	ld   [hl], c                                     ; $449a: $71
	ld   [hl], h                                     ; $449b: $74
	sbc  c                                           ; $449c: $99
	sbc  l                                           ; $449d: $9d
	sbc  a                                           ; $449e: $9f
	dec  c                                           ; $449f: $0d
	ld   e, b                                        ; $44a0: $58
	ld   e, l                                        ; $44a1: $5d
	sbc  d                                           ; $44a2: $9a
	ld   a, b                                        ; $44a3: $78
	ld   d, d                                        ; $44a4: $52
	ld   [hl], l                                     ; $44a5: $75
	ld   a, e                                        ; $44a6: $7b
	sbc  a                                           ; $44a7: $9f
	dec  c                                           ; $44a8: $0d
	nop                                              ; $44a9: $00
	ld   a, [bc]                                     ; $44aa: $0a
	dec  b                                           ; $44ab: $05
	add  b                                           ; $44ac: $80
	ld   l, a                                        ; $44ad: $6f
	ld   bc, $0001                                   ; $44ae: $01 $01 $00
	ld   bc, $9258                                   ; $44b1: $01 $58 $92
	ld   h, a                                        ; $44b4: $67
	adc  l                                           ; $44b5: $8d
	ld   a, b                                        ; $44b6: $78
	ld   h, e                                        ; $44b7: $63
	ld   d, d                                        ; $44b8: $52
	sbc  a                                           ; $44b9: $9f
	dec  c                                           ; $44ba: $0d
	nop                                              ; $44bb: $00
	ld   a, [bc]                                     ; $44bc: $0a
	dec  c                                           ; $44bd: $0d
	nop                                              ; $44be: $00
	nop                                              ; $44bf: $00
	rrca                                             ; $44c0: $0f
	nop                                              ; $44c1: $00
	ld   bc, $1e09                                   ; $44c2: $01 $09 $1e
	add  hl, hl                                      ; $44c5: $29
	nop                                              ; $44c6: $00
	nop                                              ; $44c7: $00
	nop                                              ; $44c8: $00
	inc  bc                                          ; $44c9: $03
	inc  d                                           ; $44ca: $14
	ld   bc, $259b                                   ; $44cb: $01 $9b $25
	nop                                              ; $44ce: $00
	ld   c, $02                                      ; $44cf: $0e $02
	rrca                                             ; $44d1: $0f
	nop                                              ; $44d2: $00
	ld   bc, $0f02                                   ; $44d3: $01 $02 $0f
	nop                                              ; $44d6: $00
	ld   bc, $ff01                                   ; $44d7: $01 $01 $ff
	rst  $38                                         ; $44da: $ff
	and  c                                           ; $44db: $a1
	ld   sp, hl                                      ; $44dc: $f9
	dec  c                                           ; $44dd: $0d
	sub  b                                           ; $44de: $90
	ld   d, h                                        ; $44df: $54
	ld   h, c                                        ; $44e0: $61
	and  c                                           ; $44e1: $a1
	ld   a, b                                        ; $44e2: $78
	inc  bc                                          ; $44e3: $03
	ld   l, a                                        ; $44e4: $6f
	ld   [bc], a                                     ; $44e5: $02
	xor  c                                           ; $44e6: $a9
	ld   e, c                                        ; $44e7: $59
	rst  $38                                         ; $44e8: $ff
	rst  $38                                         ; $44e9: $ff
	dec  c                                           ; $44ea: $0d
	inc  b                                           ; $44eb: $04
	xor  d                                           ; $44ec: $aa
	ld   [bc], a                                     ; $44ed: $02
	sub  a                                           ; $44ee: $97
	ld   [hl], l                                     ; $44ef: $75
	sub  b                                           ; $44f0: $90
	inc  b                                           ; $44f1: $04
	ld   [hl], c                                     ; $44f2: $71
	ld   e, a                                        ; $44f3: $5f
	ld   [hl], h                                     ; $44f4: $74
	sbc  [hl]                                        ; $44f5: $9e
	inc  b                                           ; $44f6: $04
	ld   b, d                                        ; $44f7: $42
	sub  [hl]                                        ; $44f8: $96
	ld   d, h                                        ; $44f9: $54
	ld   e, c                                        ; $44fa: $59
	ld   a, b                                        ; $44fb: $78
	sbc  a                                           ; $44fc: $9f
	dec  c                                           ; $44fd: $0d
	nop                                              ; $44fe: $00
	ld   a, [bc]                                     ; $44ff: $0a
	inc  d                                           ; $4500: $14
	ld   b, $01                                      ; $4501: $06 $01
	add  hl, bc                                      ; $4503: $09
	ld   e, $0f                                      ; $4504: $1e $0f
	inc  b                                           ; $4506: $04
	ld   bc, $6f01                                   ; $4507: $01 $01 $6f
	ld   d, d                                        ; $450a: $52
	ld   [bc], a                                     ; $450b: $02
	inc  de                                          ; $450c: $13
	ld   l, a                                        ; $450d: $6f
	sub  c                                           ; $450e: $91
	and  c                                           ; $450f: $a1
	sbc  [hl]                                        ; $4510: $9e
	ld   d, d                                        ; $4511: $52
	sbc  c                                           ; $4512: $99
	ld   sp, hl                                      ; $4513: $f9
	dec  c                                           ; $4514: $0d
	nop                                              ; $4515: $00
	ld   a, [bc]                                     ; $4516: $0a
	rrca                                             ; $4517: $0f
	nop                                              ; $4518: $00
	ld   bc, $5201                                   ; $4519: $01 $01 $52
	sbc  c                                           ; $451c: $99
	sub  [hl]                                        ; $451d: $96
	sbc  a                                           ; $451e: $9f
	and  e                                           ; $451f: $a3
	and  l                                           ; $4520: $a5
	db   $ec                                         ; $4521: $ec
	cp   d                                           ; $4522: $ba
	sbc  a                                           ; $4523: $9f
	dec  c                                           ; $4524: $0d
	nop                                              ; $4525: $00
	ld   a, [bc]                                     ; $4526: $0a
	inc  d                                           ; $4527: $14
	ld   a, [bc]                                     ; $4528: $0a
	ld   bc, $1e09                                   ; $4529: $01 $09 $1e
	inc  e                                           ; $452c: $1c
	inc  b                                           ; $452d: $04
	ld   bc, $0101                                   ; $452e: $01 $01 $01
	sub  [hl]                                        ; $4531: $96
	sbc  c                                           ; $4532: $99
	ld   e, b                                        ; $4533: $58
	ld   l, e                                        ; $4534: $6b
	ld   e, l                                        ; $4535: $5d
	ld   a, c                                        ; $4536: $79
	ld   h, d                                        ; $4537: $62
	adc  a                                           ; $4538: $8f
	and  c                                           ; $4539: $a1
	ld   a, e                                        ; $453a: $7b
	sbc  a                                           ; $453b: $9f
	dec  c                                           ; $453c: $0d
	ld   l, a                                        ; $453d: $6f
	ld   d, d                                        ; $453e: $52
	ld   [bc], a                                     ; $453f: $02
	inc  de                                          ; $4540: $13
	ld   l, a                                        ; $4541: $6f
	sub  c                                           ; $4542: $91
	and  c                                           ; $4543: $a1
	dec  c                                           ; $4544: $0d
	ld   d, b                                        ; $4545: $50
	ld   h, l                                        ; $4546: $65
	ld   l, l                                        ; $4547: $6d
	sbc  [hl]                                        ; $4548: $9e
	ld   e, b                                        ; $4549: $58
	db   $d3                                         ; $454a: $d3
	rst  JumpTable                                         ; $454b: $df
	ld   sp, hl                                      ; $454c: $f9
	dec  c                                           ; $454d: $0d
	nop                                              ; $454e: $00
	ld   a, [bc]                                     ; $454f: $0a
	ld   bc, $6550                                   ; $4550: $01 $50 $65
	ld   l, l                                        ; $4553: $6d
	sbc  [hl]                                        ; $4554: $9e
	and  e                                           ; $4555: $a3
	and  l                                           ; $4556: $a5
	db   $ec                                         ; $4557: $ec
	cp   d                                           ; $4558: $ba
	halt                                             ; $4559: $76
	ld   d, d                                        ; $455a: $52
	ld   [hl], c                                     ; $455b: $71
	ld   h, l                                        ; $455c: $65
	sub  l                                           ; $455d: $95
	ld   a, c                                        ; $455e: $79
	dec  c                                           ; $455f: $0d
	ld   e, b                                        ; $4560: $58
	ld   [hl], l                                     ; $4561: $75
	ld   e, c                                        ; $4562: $59
	ld   e, a                                        ; $4563: $5f
	ld   h, l                                        ; $4564: $65
	sub  [hl]                                        ; $4565: $96
	ld   d, h                                        ; $4566: $54
	sub  [hl]                                        ; $4567: $96
	sbc  a                                           ; $4568: $9f
	dec  c                                           ; $4569: $0d
	nop                                              ; $456a: $00
	ld   a, [bc]                                     ; $456b: $0a
	add  hl, de                                      ; $456c: $19
	dec  b                                           ; $456d: $05
	ld   [bc], a                                     ; $456e: $02
	ld   d, d                                        ; $456f: $52
	ld   [hl], c                                     ; $4570: $71
	ld   h, l                                        ; $4571: $65
	sub  l                                           ; $4572: $95
	ld   a, c                                        ; $4573: $79
	ld   [bc], a                                     ; $4574: $02
	ld   a, a                                        ; $4575: $7f
	ld   e, l                                        ; $4576: $5d
	nop                                              ; $4577: $00
	nop                                              ; $4578: $00
	ld   [bc], a                                     ; $4579: $02
	ld   a, a                                        ; $457a: $7f
	ld   e, c                                        ; $457b: $59
	ld   a, b                                        ; $457c: $78
	ld   d, d                                        ; $457d: $52
	nop                                              ; $457e: $00
	ld   bc, $4f07                                   ; $457f: $01 $07 $4f
	ld   bc, $0302                                   ; $4582: $01 $02 $03
	ld   bc, $2000                                   ; $4585: $01 $00 $20
	nop                                              ; $4588: $00
	rlca                                             ; $4589: $07
	add  $00                                         ; $458a: $c6 $00
	ld   [bc], a                                     ; $458c: $02
	inc  bc                                          ; $458d: $03
	ld   bc, $2001                                   ; $458e: $01 $01 $20
	nop                                              ; $4591: $00
	ld   b, $1a                                      ; $4592: $06 $1a
	ld   bc, $000f                                   ; $4594: $01 $0f $00
	ld   bc, $6201                                   ; $4597: $01 $01 $62
	adc  a                                           ; $459a: $8f
	and  c                                           ; $459b: $a1
	ld   a, e                                        ; $459c: $7b
	sbc  [hl]                                        ; $459d: $9e
	inc  b                                           ; $459e: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $459f: $cf
	inc  b                                           ; $45a0: $04
	xor  d                                           ; $45a1: $aa
	ld   a, l                                        ; $45a2: $7d
	dec  c                                           ; $45a3: $0d
	ld   l, a                                        ; $45a4: $6f
	sub  l                                           ; $45a5: $95
	ld   [hl], c                                     ; $45a6: $71
	halt                                             ; $45a7: $76
	inc  b                                           ; $45a8: $04
	di                                               ; $45a9: $f3
	ld   [bc], a                                     ; $45aa: $02
	jp   Jump_060_505a                               ; $45ab: $c3 $5a $50


	sbc  c                                           ; $45ae: $99
	and  c                                           ; $45af: $a1
	ld   l, [hl]                                     ; $45b0: $6e
	sbc  a                                           ; $45b1: $9f
	dec  c                                           ; $45b2: $0d
	nop                                              ; $45b3: $00
	ld   a, [bc]                                     ; $45b4: $0a
	inc  e                                           ; $45b5: $1c
	inc  b                                           ; $45b6: $04
	inc  bc                                          ; $45b7: $03
	inc  bc                                          ; $45b8: $03
	dec  e                                           ; $45b9: $1d
	ld   b, b                                        ; $45ba: $40
	inc  d                                           ; $45bb: $14
	inc  bc                                          ; $45bc: $03
	inc  d                                           ; $45bd: $14
	ld   bc, $2901                                   ; $45be: $01 $01 $29
	nop                                              ; $45c1: $00
	ld   bc, $5484                                   ; $45c2: $01 $84 $54
	rst  $38                                         ; $45c5: $ff
	rst  $38                                         ; $45c6: $ff
	ld   [hl], d                                     ; $45c7: $72
	adc  h                                           ; $45c8: $8c
	and  c                                           ; $45c9: $a1
	ld   a, b                                        ; $45ca: $78
	ld   d, d                                        ; $45cb: $52
	ld   a, h                                        ; $45cc: $7c
	sbc  a                                           ; $45cd: $9f
	dec  c                                           ; $45ce: $0d
	ld   d, d                                        ; $45cf: $52
	ld   d, d                                        ; $45d0: $52
	sub  b                                           ; $45d1: $90
	and  c                                           ; $45d2: $a1
	sbc  [hl]                                        ; $45d3: $9e
	ld   h, e                                        ; $45d4: $63
	ld   e, l                                        ; $45d5: $5d
	sub  a                                           ; $45d6: $97
	halt                                             ; $45d7: $76
	ld   d, d                                        ; $45d8: $52
	ld   e, l                                        ; $45d9: $5d
	ld   e, c                                        ; $45da: $59
	sub  a                                           ; $45db: $97
	sbc  a                                           ; $45dc: $9f
	dec  c                                           ; $45dd: $0d
	nop                                              ; $45de: $00
	ld   a, [bc]                                     ; $45df: $0a
	dec  c                                           ; $45e0: $0d
	nop                                              ; $45e1: $00
	nop                                              ; $45e2: $00
	rrca                                             ; $45e3: $0f
	nop                                              ; $45e4: $00
	ld   bc, $1e09                                   ; $45e5: $01 $09 $1e
	nop                                              ; $45e8: $00
	inc  e                                           ; $45e9: $1c
	inc  b                                           ; $45ea: $04
	rlca                                             ; $45eb: $07
	rlca                                             ; $45ec: $07
	dec  e                                           ; $45ed: $1d
	ld   b, b                                        ; $45ee: $40
	inc  d                                           ; $45ef: $14
	inc  bc                                          ; $45f0: $03
	inc  d                                           ; $45f1: $14
	ld   bc, $2902                                   ; $45f2: $01 $02 $29
	nop                                              ; $45f5: $00
	ld   bc, $ff50                                   ; $45f6: $01 $50 $ff
	rst  $38                                         ; $45f9: $ff
	ld   d, d                                        ; $45fa: $52
	sub  d                                           ; $45fb: $92
	ld   l, e                                        ; $45fc: $6b
	ld   d, h                                        ; $45fd: $54
	ld   a, b                                        ; $45fe: $78
	ld   e, c                                        ; $45ff: $59
	ld   e, b                                        ; $4600: $58
	ld   h, l                                        ; $4601: $65
	ld   [hl], h                                     ; $4602: $74
	sbc  c                                           ; $4603: $99
	sbc  a                                           ; $4604: $9f
	dec  c                                           ; $4605: $0d
	ld   d, d                                        ; $4606: $52
	ld   d, d                                        ; $4607: $52
	sub  b                                           ; $4608: $90
	and  c                                           ; $4609: $a1
	sbc  [hl]                                        ; $460a: $9e
	ld   h, e                                        ; $460b: $63
	ld   e, l                                        ; $460c: $5d
	sub  a                                           ; $460d: $97
	halt                                             ; $460e: $76
	ld   d, d                                        ; $460f: $52
	ld   e, l                                        ; $4610: $5d
	ld   e, c                                        ; $4611: $59
	sub  a                                           ; $4612: $97
	sbc  a                                           ; $4613: $9f
	dec  c                                           ; $4614: $0d
	nop                                              ; $4615: $00
	ld   a, [bc]                                     ; $4616: $0a
	dec  c                                           ; $4617: $0d
	nop                                              ; $4618: $00
	nop                                              ; $4619: $00
	rrca                                             ; $461a: $0f
	nop                                              ; $461b: $00
	ld   bc, $0f00                                   ; $461c: $01 $00 $0f
	nop                                              ; $461f: $00
	ld   bc, $6b01                                   ; $4620: $01 $01 $6b
	ld   d, h                                        ; $4623: $54
	ld   l, [hl]                                     ; $4624: $6e
	ld   a, e                                        ; $4625: $7b
	sbc  a                                           ; $4626: $9f
	dec  c                                           ; $4627: $0d
	ld   [bc], a                                     ; $4628: $02
	ld   a, a                                        ; $4629: $7f
	ld   h, c                                        ; $462a: $61
	ld   d, h                                        ; $462b: $54
	ld   e, c                                        ; $462c: $59
	sbc  a                                           ; $462d: $9f
	dec  c                                           ; $462e: $0d
	nop                                              ; $462f: $00
	ld   a, [bc]                                     ; $4630: $0a
	rrca                                             ; $4631: $0f
	inc  b                                           ; $4632: $04
	ld   bc, $401d                                   ; $4633: $01 $1d $40
	inc  d                                           ; $4636: $14
	inc  bc                                          ; $4637: $03
	inc  d                                           ; $4638: $14
	ld   bc, $2802                                   ; $4639: $01 $02 $28
	nop                                              ; $463c: $00
	ld   bc, $fb9d                                   ; $463d: $01 $9d $fb
	ld   d, d                                        ; $4640: $52
	sbc  a                                           ; $4641: $9f
	dec  c                                           ; $4642: $0d
	ld   h, [hl]                                     ; $4643: $66
	sub  c                                           ; $4644: $91
	ld   d, b                                        ; $4645: $50
	sbc  [hl]                                        ; $4646: $9e
	ld   d, b                                        ; $4647: $50
	ld   h, l                                        ; $4648: $65
	ld   l, l                                        ; $4649: $6d
	ld   a, h                                        ; $464a: $7c
	ld   d, b                                        ; $464b: $50
	ld   h, e                                        ; $464c: $63
	sbc  [hl]                                        ; $464d: $9e
	dec  c                                           ; $464e: $0d
	ld   [de], a                                     ; $464f: $12
	ld   e, c                                        ; $4650: $59
	ld   d, d                                        ; $4651: $52
	ld   a, h                                        ; $4652: $7c
	rst  $28                                         ; $4653: $ef
	call nc, Call_060_75fb                           ; $4654: $d4 $fb $75
	adc  h                                           ; $4657: $8c
	ld   [hl], c                                     ; $4658: $71
	ld   [hl], h                                     ; $4659: $74
	sbc  c                                           ; $465a: $99
	ld   a, e                                        ; $465b: $7b
	sbc  a                                           ; $465c: $9f
	dec  c                                           ; $465d: $0d
	nop                                              ; $465e: $00
	ld   a, [bc]                                     ; $465f: $0a
	dec  b                                           ; $4660: $05
	add  b                                           ; $4661: $80
	ld   b, h                                        ; $4662: $44
	ld   bc, $0001                                   ; $4663: $01 $01 $00
	ld   bc, $9258                                   ; $4666: $01 $58 $92
	ld   h, a                                        ; $4669: $67
	adc  l                                           ; $466a: $8d
	sbc  a                                           ; $466b: $9f
	dec  c                                           ; $466c: $0d
	nop                                              ; $466d: $00
	ld   a, [bc]                                     ; $466e: $0a
	dec  c                                           ; $466f: $0d
	nop                                              ; $4670: $00
	nop                                              ; $4671: $00
	rrca                                             ; $4672: $0f
	nop                                              ; $4673: $00
	ld   bc, $0000                                   ; $4674: $01 $00 $00
	inc  bc                                          ; $4677: $03
	dec  d                                           ; $4678: $15
	ld   bc, $259b                                   ; $4679: $01 $9b $25
	nop                                              ; $467c: $00
	ld   c, $02                                      ; $467d: $0e $02
	rrca                                             ; $467f: $0f
	nop                                              ; $4680: $00
	ld   bc, $0102                                   ; $4681: $01 $02 $01
	rst  $38                                         ; $4684: $ff
	rst  $38                                         ; $4685: $ff
	and  c                                           ; $4686: $a1
	ld   sp, hl                                      ; $4687: $f9
	db   $10                                         ; $4688: $10
	sub  b                                           ; $4689: $90
	ld   d, h                                        ; $468a: $54
	ld   h, c                                        ; $468b: $61
	and  c                                           ; $468c: $a1
	ld   a, b                                        ; $468d: $78
	inc  bc                                          ; $468e: $03
	ld   l, a                                        ; $468f: $6f
	ld   [bc], a                                     ; $4690: $02
	xor  c                                           ; $4691: $a9
	ld   e, c                                        ; $4692: $59
	rst  $38                                         ; $4693: $ff
	dec  c                                           ; $4694: $0d
	inc  b                                           ; $4695: $04
	xor  d                                           ; $4696: $aa
	ld   [bc], a                                     ; $4697: $02
	sub  a                                           ; $4698: $97
	ld   [hl], l                                     ; $4699: $75
	sub  b                                           ; $469a: $90
	inc  b                                           ; $469b: $04
	ld   [hl], c                                     ; $469c: $71
	ld   e, a                                        ; $469d: $5f
	ld   [hl], h                                     ; $469e: $74
	sbc  [hl]                                        ; $469f: $9e
	inc  b                                           ; $46a0: $04
	ld   b, d                                        ; $46a1: $42
	sub  [hl]                                        ; $46a2: $96
	ld   d, h                                        ; $46a3: $54
	ld   e, c                                        ; $46a4: $59
	ld   a, b                                        ; $46a5: $78
	sbc  a                                           ; $46a6: $9f
	dec  c                                           ; $46a7: $0d
	nop                                              ; $46a8: $00
	ld   a, [bc]                                     ; $46a9: $0a
	inc  d                                           ; $46aa: $14
	ld   b, $01                                      ; $46ab: $06 $01
	rrca                                             ; $46ad: $0f
	dec  b                                           ; $46ae: $05
	ld   bc, $0801                                   ; $46af: $01 $01 $08
	nop                                              ; $46b2: $00
	ld   a, l                                        ; $46b3: $7d
	and  c                                           ; $46b4: $a1
	dec  c                                           ; $46b5: $0d
	ld   l, a                                        ; $46b6: $6f
	sub  l                                           ; $46b7: $95
	ld   [hl], c                                     ; $46b8: $71
	halt                                             ; $46b9: $76
	xor  c                                           ; $46ba: $a9
	xor  c                                           ; $46bb: $a9
	ld   e, c                                        ; $46bc: $59
	ld   sp, hl                                      ; $46bd: $f9
	dec  c                                           ; $46be: $0d
	nop                                              ; $46bf: $00
	ld   a, [bc]                                     ; $46c0: $0a
	rrca                                             ; $46c1: $0f
	nop                                              ; $46c2: $00
	ld   bc, $7d01                                   ; $46c3: $01 $01 $7d
	ld   d, d                                        ; $46c6: $52
	sbc  [hl]                                        ; $46c7: $9e
	ld   [hl], a                                     ; $46c8: $77
	ld   d, h                                        ; $46c9: $54
	ld   l, h                                        ; $46ca: $6c
	sbc  a                                           ; $46cb: $9f
	dec  c                                           ; $46cc: $0d
	nop                                              ; $46cd: $00
	ld   a, [bc]                                     ; $46ce: $0a
	inc  d                                           ; $46cf: $14
	ld   a, [bc]                                     ; $46d0: $0a
	ld   bc, $051c                                   ; $46d1: $01 $1c $05
	ld   bc, $0101                                   ; $46d4: $01 $01 $01
	inc  b                                           ; $46d7: $04
	rst  $28                                         ; $46d8: $ef
	ld   e, b                                        ; $46d9: $58
	ld   l, e                                        ; $46da: $6b
	ld   e, l                                        ; $46db: $5d
	ld   a, c                                        ; $46dc: $79
	ld   h, d                                        ; $46dd: $62
	adc  a                                           ; $46de: $8f
	and  c                                           ; $46df: $a1
	ld   a, b                                        ; $46e0: $78
	sbc  [hl]                                        ; $46e1: $9e
	dec  c                                           ; $46e2: $0d
	ld   [$7d00], sp                                 ; $46e3: $08 $00 $7d
	and  c                                           ; $46e6: $a1
	sbc  a                                           ; $46e7: $9f
	dec  c                                           ; $46e8: $0d
	nop                                              ; $46e9: $00
	ld   a, [bc]                                     ; $46ea: $0a
	ld   bc, $a150                                   ; $46eb: $01 $50 $a1
	ld   a, b                                        ; $46ee: $78
	sbc  [hl]                                        ; $46ef: $9e
	inc  b                                           ; $46f0: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $46f1: $cf
	inc  b                                           ; $46f2: $04
	xor  d                                           ; $46f3: $aa
	ld   l, a                                        ; $46f4: $6f
	sub  l                                           ; $46f5: $95
	ld   [hl], c                                     ; $46f6: $71
	halt                                             ; $46f7: $76
	dec  c                                           ; $46f8: $0d
	inc  bc                                          ; $46f9: $03
	sub  [hl]                                        ; $46fa: $96
	inc  b                                           ; $46fb: $04
	sbc  a                                           ; $46fc: $9f
	ld   a, c                                        ; $46fd: $79
	ld   [bc], a                                     ; $46fe: $02
	ld   a, a                                        ; $46ff: $7f
	ld   h, c                                        ; $4700: $61
	ld   e, c                                        ; $4701: $59
	ld   a, b                                        ; $4702: $78
	halt                                             ; $4703: $76
	dec  c                                           ; $4704: $0d
	dec  b                                           ; $4705: $05
	pop  de                                          ; $4706: $d1
	ld   [hl], h                                     ; $4707: $74
	and  c                                           ; $4708: $a1
	ld   a, e                                        ; $4709: $7b
	and  c                                           ; $470a: $a1
	ld   e, a                                        ; $470b: $5f
	ld   [hl], a                                     ; $470c: $77
	sbc  [hl]                                        ; $470d: $9e
	ld   [hl], a                                     ; $470e: $77
	ld   d, h                                        ; $470f: $54
	ld   sp, hl                                      ; $4710: $f9
	dec  c                                           ; $4711: $0d
	nop                                              ; $4712: $00
	ld   a, [bc]                                     ; $4713: $0a
	add  hl, de                                      ; $4714: $19
	dec  b                                           ; $4715: $05
	ld   [bc], a                                     ; $4716: $02
	ld   d, d                                        ; $4717: $52
	ld   [hl], c                                     ; $4718: $71
	ld   h, l                                        ; $4719: $65
	sub  l                                           ; $471a: $95
	ld   a, c                                        ; $471b: $79
	ld   [bc], a                                     ; $471c: $02
	ld   a, a                                        ; $471d: $7f
	ld   e, l                                        ; $471e: $5d
	nop                                              ; $471f: $00
	nop                                              ; $4720: $00
	ld   [bc], a                                     ; $4721: $02
	ld   a, a                                        ; $4722: $7f
	ld   e, c                                        ; $4723: $59
	ld   a, b                                        ; $4724: $78
	ld   d, d                                        ; $4725: $52
	nop                                              ; $4726: $00
	ld   bc, $4d07                                   ; $4727: $01 $07 $4d
	ld   bc, $0302                                   ; $472a: $01 $02 $03
	ld   bc, $2000                                   ; $472d: $01 $00 $20
	nop                                              ; $4730: $00
	rlca                                             ; $4731: $07
	ret  nz                                          ; $4732: $c0

	nop                                              ; $4733: $00
	ld   [bc], a                                     ; $4734: $02
	inc  bc                                          ; $4735: $03
	ld   bc, $2001                                   ; $4736: $01 $01 $20
	nop                                              ; $4739: $00
	ld   b, $0c                                      ; $473a: $06 $0c
	ld   bc, $000f                                   ; $473c: $01 $0f $00
	ld   bc, $6701                                   ; $473f: $01 $01 $67
	adc  l                                           ; $4742: $8d
	adc  h                                           ; $4743: $8c
	ld   l, c                                        ; $4744: $69
	and  c                                           ; $4745: $a1
	rst  $38                                         ; $4746: $ff
	rst  $38                                         ; $4747: $ff
	dec  c                                           ; $4748: $0d
	inc  b                                           ; $4749: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $474a: $cf
	inc  b                                           ; $474b: $04
	xor  d                                           ; $474c: $aa
	ld   a, l                                        ; $474d: $7d
	ld   l, a                                        ; $474e: $6f
	sub  l                                           ; $474f: $95
	ld   [hl], c                                     ; $4750: $71
	halt                                             ; $4751: $76
	rst  $38                                         ; $4752: $ff
	rst  $38                                         ; $4753: $ff
	dec  c                                           ; $4754: $0d
	nop                                              ; $4755: $00
	ld   a, [bc]                                     ; $4756: $0a
	inc  e                                           ; $4757: $1c
	dec  b                                           ; $4758: $05
	ld   [bc], a                                     ; $4759: $02
	ld   [bc], a                                     ; $475a: $02
	dec  e                                           ; $475b: $1d
	ld   b, b                                        ; $475c: $40
	dec  d                                           ; $475d: $15
	inc  bc                                          ; $475e: $03
	dec  d                                           ; $475f: $15
	ld   bc, $2902                                   ; $4760: $01 $02 $29
	nop                                              ; $4763: $00
	ld   bc, $546b                                   ; $4764: $01 $6b $54
	ld   e, c                                        ; $4767: $59
	rst  $38                                         ; $4768: $ff
	rst  $38                                         ; $4769: $ff
	dec  c                                           ; $476a: $0d
	inc  bc                                          ; $476b: $03
	jr   z, jr_060_4772                              ; $476c: $28 $04

	ld   c, b                                        ; $476e: $48
	sub  d                                           ; $476f: $92
	ld   a, b                                        ; $4770: $78
	db   $fc                                         ; $4771: $fc

jr_060_4772:
	dec  c                                           ; $4772: $0d
	adc  c                                           ; $4773: $89
	ld   a, b                                        ; $4774: $78
	sbc  [hl]                                        ; $4775: $9e
	ld   e, b                                        ; $4776: $58
	sub  d                                           ; $4777: $92
	ld   h, a                                        ; $4778: $67
	adc  l                                           ; $4779: $8d
	sbc  a                                           ; $477a: $9f
	dec  c                                           ; $477b: $0d
	nop                                              ; $477c: $00
	ld   a, [bc]                                     ; $477d: $0a
	dec  c                                           ; $477e: $0d
	nop                                              ; $477f: $00
	nop                                              ; $4780: $00
	rrca                                             ; $4781: $0f
	nop                                              ; $4782: $00
	ld   bc, $1e09                                   ; $4783: $01 $09 $1e
	add  hl, hl                                      ; $4786: $29
	nop                                              ; $4787: $00
	nop                                              ; $4788: $00
	inc  e                                           ; $4789: $1c
	dec  b                                           ; $478a: $05
	nop                                              ; $478b: $00
	nop                                              ; $478c: $00
	dec  e                                           ; $478d: $1d
	ld   b, b                                        ; $478e: $40
	dec  d                                           ; $478f: $15
	inc  bc                                          ; $4790: $03
	dec  d                                           ; $4791: $15
	ld   bc, $2901                                   ; $4792: $01 $01 $29
	nop                                              ; $4795: $00
	ld   bc, $9e50                                   ; $4796: $01 $50 $9e
	ld   [hl], d                                     ; $4799: $72
	ld   h, d                                        ; $479a: $62
	ld   d, h                                        ; $479b: $54
	ld   [bc], a                                     ; $479c: $02
	jr   z, jr_060_47f1                              ; $479d: $28 $52

	and  c                                           ; $479f: $a1
	sub  d                                           ; $47a0: $92
	ld   [hl], c                                     ; $47a1: $71
	ld   l, l                                        ; $47a2: $6d
	sub  a                                           ; $47a3: $97
	dec  c                                           ; $47a4: $0d
	inc  b                                           ; $47a5: $04
	sub  $05                                         ; $47a6: $d6 $05
	ld   de, $a169                                   ; $47a8: $11 $69 $a1
	ld   [hl], l                                     ; $47ab: $75
	xor  c                                           ; $47ac: $a9
	xor  c                                           ; $47ad: $a9
	ld   [hl], l                                     ; $47ae: $75
	sbc  a                                           ; $47af: $9f
	dec  c                                           ; $47b0: $0d
	nop                                              ; $47b1: $00
	ld   a, [bc]                                     ; $47b2: $0a
	ld   bc, $7889                                   ; $47b3: $01 $89 $78
	sbc  [hl]                                        ; $47b6: $9e
	ld   e, b                                        ; $47b7: $58
	sub  d                                           ; $47b8: $92
	ld   h, a                                        ; $47b9: $67
	adc  l                                           ; $47ba: $8d
	sbc  a                                           ; $47bb: $9f
	dec  c                                           ; $47bc: $0d
	nop                                              ; $47bd: $00
	ld   a, [bc]                                     ; $47be: $0a
	dec  c                                           ; $47bf: $0d
	nop                                              ; $47c0: $00
	nop                                              ; $47c1: $00
	rrca                                             ; $47c2: $0f
	nop                                              ; $47c3: $00
	ld   bc, $1e09                                   ; $47c4: $01 $09 $1e
	add  hl, hl                                      ; $47c7: $29
	nop                                              ; $47c8: $00
	nop                                              ; $47c9: $00
	rrca                                             ; $47ca: $0f
	nop                                              ; $47cb: $00
	ld   bc, $6a01                                   ; $47cc: $01 $01 $6a
	add  b                                           ; $47cf: $80
	ld   e, b                                        ; $47d0: $58
	ld   [bc], a                                     ; $47d1: $02
	xor  l                                           ; $47d2: $ad
	ld   h, e                                        ; $47d3: $63
	ld   l, c                                        ; $47d4: $69
	ld   [hl], h                                     ; $47d5: $74
	ld   [bc], a                                     ; $47d6: $02
	inc  [hl]                                        ; $47d7: $34
	ld   h, e                                        ; $47d8: $63
	ld   d, d                                        ; $47d9: $52
	sbc  a                                           ; $47da: $9f
	dec  c                                           ; $47db: $0d
	nop                                              ; $47dc: $00
	ld   a, [bc]                                     ; $47dd: $0a
	rrca                                             ; $47de: $0f
	dec  b                                           ; $47df: $05
	ld   bc, $6b01                                   ; $47e0: $01 $01 $6b
	ld   d, h                                        ; $47e3: $54
	ld   e, c                                        ; $47e4: $59
	sbc  a                                           ; $47e5: $9f
	adc  c                                           ; $47e6: $89
	ld   a, b                                        ; $47e7: $78
	sbc  [hl]                                        ; $47e8: $9e
	inc  b                                           ; $47e9: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $47ea: $cf
	inc  b                                           ; $47eb: $04
	xor  d                                           ; $47ec: $aa
	ld   a, h                                        ; $47ed: $7c
	inc  bc                                          ; $47ee: $03
	ld   d, $9e                                      ; $47ef: $16 $9e

jr_060_47f1:
	dec  c                                           ; $47f1: $0d
	ld   [de], a                                     ; $47f2: $12
	ld   [bc], a                                     ; $47f3: $02
	ld   e, h                                        ; $47f4: $5c
	ld   a, h                                        ; $47f5: $7c
	rst  $28                                         ; $47f6: $ef
	call nc, Call_060_75fb                           ; $47f7: $d4 $fb $75
	ld   a, b                                        ; $47fa: $78
	sbc  a                                           ; $47fb: $9f
	dec  c                                           ; $47fc: $0d
	ld   e, b                                        ; $47fd: $58
	ld   e, l                                        ; $47fe: $5d
	sbc  d                                           ; $47ff: $9a
	and  c                                           ; $4800: $a1
	sub  [hl]                                        ; $4801: $96
	ld   d, h                                        ; $4802: $54
	ld   a, c                                        ; $4803: $79
	ld   a, b                                        ; $4804: $78
	sbc  a                                           ; $4805: $9f
	dec  c                                           ; $4806: $0d
	nop                                              ; $4807: $00
	ld   a, [bc]                                     ; $4808: $0a
	dec  b                                           ; $4809: $05
	add  b                                           ; $480a: $80
	ld   a, [hl+]                                    ; $480b: $2a
	ld   bc, $0001                                   ; $480c: $01 $01 $00
	ld   bc, $7889                                   ; $480f: $01 $89 $78
	sbc  [hl]                                        ; $4812: $9e
	ld   e, b                                        ; $4813: $58
	sub  d                                           ; $4814: $92
	ld   h, a                                        ; $4815: $67
	adc  l                                           ; $4816: $8d
	sbc  a                                           ; $4817: $9f
	dec  c                                           ; $4818: $0d
	nop                                              ; $4819: $00
	ld   a, [bc]                                     ; $481a: $0a
	dec  c                                           ; $481b: $0d
	nop                                              ; $481c: $00
	nop                                              ; $481d: $00
	rrca                                             ; $481e: $0f
	nop                                              ; $481f: $00
	ld   bc, $1e09                                   ; $4820: $01 $09 $1e
	add  hl, hl                                      ; $4823: $29
	nop                                              ; $4824: $00
	nop                                              ; $4825: $00
	nop                                              ; $4826: $00
	inc  bc                                          ; $4827: $03
	ld   [de], a                                     ; $4828: $12
	ld   bc, $259b                                   ; $4829: $01 $9b $25
	nop                                              ; $482c: $00
	ld   c, $02                                      ; $482d: $0e $02
	rrca                                             ; $482f: $0f
	nop                                              ; $4830: $00
	ld   bc, $0102                                   ; $4831: $01 $02 $01
	rst  $38                                         ; $4834: $ff
	rst  $38                                         ; $4835: $ff
	and  c                                           ; $4836: $a1
	ld   sp, hl                                      ; $4837: $f9
	dec  c                                           ; $4838: $0d
	sub  b                                           ; $4839: $90
	ld   d, h                                        ; $483a: $54
	ld   h, c                                        ; $483b: $61
	and  c                                           ; $483c: $a1
	ld   a, b                                        ; $483d: $78
	inc  bc                                          ; $483e: $03
	ld   l, a                                        ; $483f: $6f
	ld   [bc], a                                     ; $4840: $02
	xor  c                                           ; $4841: $a9
	ld   e, c                                        ; $4842: $59
	rst  $38                                         ; $4843: $ff
	rst  $38                                         ; $4844: $ff
	dec  c                                           ; $4845: $0d
	inc  b                                           ; $4846: $04
	xor  d                                           ; $4847: $aa
	ld   [bc], a                                     ; $4848: $02
	sub  a                                           ; $4849: $97
	ld   [hl], l                                     ; $484a: $75
	sub  b                                           ; $484b: $90
	inc  b                                           ; $484c: $04
	ld   [hl], c                                     ; $484d: $71
	ld   e, a                                        ; $484e: $5f
	ld   [hl], h                                     ; $484f: $74
	sbc  [hl]                                        ; $4850: $9e
	inc  b                                           ; $4851: $04
	ld   b, d                                        ; $4852: $42
	sub  [hl]                                        ; $4853: $96
	ld   d, h                                        ; $4854: $54
	ld   e, c                                        ; $4855: $59
	ld   a, b                                        ; $4856: $78
	sbc  a                                           ; $4857: $9f
	dec  c                                           ; $4858: $0d
	nop                                              ; $4859: $00
	ld   a, [bc]                                     ; $485a: $0a
	inc  d                                           ; $485b: $14
	ld   b, $01                                      ; $485c: $06 $01
	rrca                                             ; $485e: $0f
	ld   [bc], a                                     ; $485f: $02
	nop                                              ; $4860: $00
	ld   bc, $0008                                   ; $4861: $01 $08 $00
	ld   h, e                                        ; $4864: $63
	and  c                                           ; $4865: $a1
	dec  c                                           ; $4866: $0d
	ld   d, d                                        ; $4867: $52
	sub  a                                           ; $4868: $97
	ld   [hl], c                                     ; $4869: $71
	ld   h, l                                        ; $486a: $65
	sub  c                                           ; $486b: $91
	sbc  c                                           ; $486c: $99
	ld   sp, hl                                      ; $486d: $f9
	dec  c                                           ; $486e: $0d
	nop                                              ; $486f: $00
	ld   a, [bc]                                     ; $4870: $0a
	rrca                                             ; $4871: $0f
	nop                                              ; $4872: $00
	ld   bc, $0a14                                   ; $4873: $01 $14 $0a
	ld   bc, $7d01                                   ; $4876: $01 $01 $7d
	ld   d, d                                        ; $4879: $52
	sbc  [hl]                                        ; $487a: $9e
	ld   [hl], a                                     ; $487b: $77
	ld   d, h                                        ; $487c: $54
	ld   l, h                                        ; $487d: $6c
	sbc  a                                           ; $487e: $9f
	dec  c                                           ; $487f: $0d
	nop                                              ; $4880: $00
	ld   a, [bc]                                     ; $4881: $0a
	inc  e                                           ; $4882: $1c
	ld   [bc], a                                     ; $4883: $02
	ld   bc, $0101                                   ; $4884: $01 $01 $01
	inc  b                                           ; $4887: $04
	rst  $28                                         ; $4888: $ef
	ld   e, b                                        ; $4889: $58
	ld   l, e                                        ; $488a: $6b
	ld   e, l                                        ; $488b: $5d
	ld   a, c                                        ; $488c: $79
	sbc  [hl]                                        ; $488d: $9e
	ld   h, d                                        ; $488e: $62
	adc  a                                           ; $488f: $8f
	and  c                                           ; $4890: $a1
	ld   a, b                                        ; $4891: $78
	ld   h, e                                        ; $4892: $63
	ld   d, d                                        ; $4893: $52
	sbc  a                                           ; $4894: $9f
	dec  c                                           ; $4895: $0d
	ld   [$6300], sp                                 ; $4896: $08 $00 $63
	and  c                                           ; $4899: $a1
	ld   a, l                                        ; $489a: $7d
	dec  c                                           ; $489b: $0d
	inc  b                                           ; $489c: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $489d: $cf
	inc  b                                           ; $489e: $04
	xor  d                                           ; $489f: $aa
	sbc  [hl]                                        ; $48a0: $9e
	ld   e, b                                        ; $48a1: $58
	add  b                                           ; $48a2: $80
	adc  h                                           ; $48a3: $8c
	ld   sp, hl                                      ; $48a4: $f9
	dec  c                                           ; $48a5: $0d
	nop                                              ; $48a6: $00
	ld   a, [bc]                                     ; $48a7: $0a
	ld   bc, $cf04                                   ; $48a8: $01 $04 $cf
	inc  b                                           ; $48ab: $04
	xor  d                                           ; $48ac: $aa
	sbc  [hl]                                        ; $48ad: $9e
	inc  b                                           ; $48ae: $04
	adc  l                                           ; $48af: $8d
	ld   d, d                                        ; $48b0: $52
	inc  b                                           ; $48b1: $04
	sub  d                                           ; $48b2: $92
	ld   a, c                                        ; $48b3: $79
	inc  bc                                          ; $48b4: $03
	add  b                                           ; $48b5: $80
	ld   e, c                                        ; $48b6: $59
	ld   e, a                                        ; $48b7: $5f
	sub  [hl]                                        ; $48b8: $96
	ld   d, h                                        ; $48b9: $54
	halt                                             ; $48ba: $76
	dec  c                                           ; $48bb: $0d
	dec  b                                           ; $48bc: $05
	pop  de                                          ; $48bd: $d1
	ld   [hl], c                                     ; $48be: $71
	ld   [hl], h                                     ; $48bf: $74
	ld   d, d                                        ; $48c0: $52
	sbc  c                                           ; $48c1: $99
	ld   a, h                                        ; $48c2: $7c
	ld   [hl], l                                     ; $48c3: $75
	ld   h, a                                        ; $48c4: $67
	ld   e, d                                        ; $48c5: $5a
	dec  c                                           ; $48c6: $0d
	ld   d, d                                        ; $48c7: $52
	ld   [hl], c                                     ; $48c8: $71
	ld   h, l                                        ; $48c9: $65
	sub  l                                           ; $48ca: $95
	ld   a, c                                        ; $48cb: $79
	ld   [bc], a                                     ; $48cc: $02
	ld   a, a                                        ; $48cd: $7f
	ld   e, e                                        ; $48ce: $5b
	adc  h                                           ; $48cf: $8c
	ld   l, c                                        ; $48d0: $69
	and  c                                           ; $48d1: $a1
	ld   h, c                                        ; $48d2: $61
	halt                                             ; $48d3: $76
	ld   sp, hl                                      ; $48d4: $f9
	dec  c                                           ; $48d5: $0d
	nop                                              ; $48d6: $00
	ld   a, [bc]                                     ; $48d7: $0a
	add  hl, de                                      ; $48d8: $19
	dec  b                                           ; $48d9: $05
	ld   [bc], a                                     ; $48da: $02
	ld   d, d                                        ; $48db: $52
	ld   [hl], c                                     ; $48dc: $71
	ld   h, l                                        ; $48dd: $65
	sub  l                                           ; $48de: $95
	ld   a, c                                        ; $48df: $79
	ld   [bc], a                                     ; $48e0: $02
	ld   a, a                                        ; $48e1: $7f
	ld   e, l                                        ; $48e2: $5d
	nop                                              ; $48e3: $00
	nop                                              ; $48e4: $00
	ld   [bc], a                                     ; $48e5: $02
	ld   a, a                                        ; $48e6: $7f
	ld   e, c                                        ; $48e7: $59
	ld   a, b                                        ; $48e8: $78
	ld   d, d                                        ; $48e9: $52
	nop                                              ; $48ea: $00
	ld   bc, $7707                                   ; $48eb: $01 $07 $77
	ld   bc, $0302                                   ; $48ee: $01 $02 $03
	ld   bc, $2000                                   ; $48f1: $01 $00 $20
	nop                                              ; $48f4: $00
	rlca                                             ; $48f5: $07
	call nc, $0200                                   ; $48f6: $d4 $00 $02
	inc  bc                                          ; $48f9: $03
	ld   bc, $2001                                   ; $48fa: $01 $01 $20
	nop                                              ; $48fd: $00
	ld   b, $3a                                      ; $48fe: $06 $3a
	ld   bc, $000f                                   ; $4900: $01 $0f $00
	ld   bc, $6701                                   ; $4903: $01 $01 $67
	adc  l                                           ; $4906: $8d
	adc  h                                           ; $4907: $8c
	ld   l, c                                        ; $4908: $69
	and  c                                           ; $4909: $a1
	rst  $38                                         ; $490a: $ff
	rst  $38                                         ; $490b: $ff
	dec  c                                           ; $490c: $0d
	inc  b                                           ; $490d: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $490e: $cf
	inc  b                                           ; $490f: $04
	xor  d                                           ; $4910: $aa
	ld   a, l                                        ; $4911: $7d
	ld   l, a                                        ; $4912: $6f
	sub  l                                           ; $4913: $95
	ld   [hl], c                                     ; $4914: $71
	halt                                             ; $4915: $76
	rst  $38                                         ; $4916: $ff
	rst  $38                                         ; $4917: $ff
	dec  c                                           ; $4918: $0d
	nop                                              ; $4919: $00
	ld   a, [bc]                                     ; $491a: $0a
	inc  e                                           ; $491b: $1c
	ld   [bc], a                                     ; $491c: $02
	ld   [bc], a                                     ; $491d: $02
	ld   [bc], a                                     ; $491e: $02
	ld   bc, $546b                                   ; $491f: $01 $6b $54
	ld   [hl], l                                     ; $4922: $75
	ld   h, a                                        ; $4923: $67
	ld   e, c                                        ; $4924: $59
	sbc  a                                           ; $4925: $9f
	dec  c                                           ; $4926: $0d
	sbc  l                                           ; $4927: $9d
	ld   l, l                                        ; $4928: $6d
	ld   e, l                                        ; $4929: $5d
	ld   h, l                                        ; $492a: $65
	ld   a, h                                        ; $492b: $7c
	ld   l, l                                        ; $492c: $6d
	ld   a, h                                        ; $492d: $7c
	adc  l                                           ; $492e: $8d
	and  b                                           ; $492f: $a0
	ld   h, c                                        ; $4930: $61
	halt                                             ; $4931: $76
	sbc  l                                           ; $4932: $9d
	sbc  c                                           ; $4933: $99
	dec  c                                           ; $4934: $0d
	halt                                             ; $4935: $76
	rst  $38                                         ; $4936: $ff
	rst  $38                                         ; $4937: $ff
	dec  c                                           ; $4938: $0d
	nop                                              ; $4939: $00
	ld   a, [bc]                                     ; $493a: $0a
	inc  e                                           ; $493b: $1c
	ld   [bc], a                                     ; $493c: $02
	rlca                                             ; $493d: $07
	rlca                                             ; $493e: $07
	dec  e                                           ; $493f: $1d
	ld   b, b                                        ; $4940: $40
	ld   [de], a                                     ; $4941: $12
	inc  bc                                          ; $4942: $03
	ld   [de], a                                     ; $4943: $12
	ld   bc, $2902                                   ; $4944: $01 $02 $29
	nop                                              ; $4947: $00
	ld   bc, $599d                                   ; $4948: $01 $9d $59
	sbc  b                                           ; $494b: $98
	adc  h                                           ; $494c: $8c
	ld   h, l                                        ; $494d: $65
	ld   l, l                                        ; $494e: $6d
	sbc  a                                           ; $494f: $9f
	dec  c                                           ; $4950: $0d
	ld   e, b                                        ; $4951: $58
	sub  d                                           ; $4952: $92
	ld   h, a                                        ; $4953: $67
	adc  l                                           ; $4954: $8d
	ld   a, b                                        ; $4955: $78
	ld   h, e                                        ; $4956: $63
	ld   d, d                                        ; $4957: $52
	sbc  a                                           ; $4958: $9f
	dec  c                                           ; $4959: $0d
	nop                                              ; $495a: $00
	ld   a, [bc]                                     ; $495b: $0a
	dec  c                                           ; $495c: $0d
	nop                                              ; $495d: $00
	nop                                              ; $495e: $00
	rrca                                             ; $495f: $0f
	nop                                              ; $4960: $00
	ld   bc, $1e09                                   ; $4961: $01 $09 $1e
	add  hl, hl                                      ; $4964: $29
	nop                                              ; $4965: $00
	nop                                              ; $4966: $00
	inc  e                                           ; $4967: $1c
	ld   [bc], a                                     ; $4968: $02
	ld   [bc], a                                     ; $4969: $02
	ld   [bc], a                                     ; $496a: $02
	dec  e                                           ; $496b: $1d
	ld   b, b                                        ; $496c: $40
	ld   [de], a                                     ; $496d: $12
	inc  bc                                          ; $496e: $03
	ld   [de], a                                     ; $496f: $12
	ld   bc, $2902                                   ; $4970: $01 $02 $29
	nop                                              ; $4973: $00
	ld   bc, $9704                                   ; $4974: $01 $04 $97
	ld   [bc], a                                     ; $4977: $02
	jp   Jump_060_505a                               ; $4978: $c3 $5a $50


	sbc  b                                           ; $497b: $98
	adc  h                                           ; $497c: $8c
	ld   l, c                                        ; $497d: $69
	and  c                                           ; $497e: $a1
	ld   a, e                                        ; $497f: $7b
	sbc  a                                           ; $4980: $9f
	dec  c                                           ; $4981: $0d
	sub  b                                           ; $4982: $90
	ld   d, h                                        ; $4983: $54
	sbc  [hl]                                        ; $4984: $9e
	ld   e, a                                        ; $4985: $5f
	ld   [hl], c                                     ; $4986: $71
	ld   h, c                                        ; $4987: $61
	ld   d, h                                        ; $4988: $54
	ld   [hl], l                                     ; $4989: $75
	ld   h, a                                        ; $498a: $67
	sbc  l                                           ; $498b: $9d
	sbc  a                                           ; $498c: $9f
	dec  c                                           ; $498d: $0d
	ld   e, b                                        ; $498e: $58
	sub  d                                           ; $498f: $92
	ld   h, a                                        ; $4990: $67
	adc  l                                           ; $4991: $8d
	ld   a, b                                        ; $4992: $78
	ld   h, e                                        ; $4993: $63
	ld   d, d                                        ; $4994: $52
	sbc  a                                           ; $4995: $9f
	dec  c                                           ; $4996: $0d
	nop                                              ; $4997: $00
	ld   a, [bc]                                     ; $4998: $0a
	dec  c                                           ; $4999: $0d
	nop                                              ; $499a: $00
	nop                                              ; $499b: $00
	rrca                                             ; $499c: $0f
	nop                                              ; $499d: $00
	ld   bc, $1e09                                   ; $499e: $01 $09 $1e
	add  hl, hl                                      ; $49a1: $29
	nop                                              ; $49a2: $00
	nop                                              ; $49a3: $00
	rrca                                             ; $49a4: $0f
	nop                                              ; $49a5: $00
	ld   bc, $6a01                                   ; $49a6: $01 $01 $6a
	add  b                                           ; $49a9: $80
	ld   e, b                                        ; $49aa: $58
	ld   [bc], a                                     ; $49ab: $02
	xor  l                                           ; $49ac: $ad
	ld   h, e                                        ; $49ad: $63
	ld   l, c                                        ; $49ae: $69
	ld   [hl], h                                     ; $49af: $74
	ld   [bc], a                                     ; $49b0: $02
	inc  [hl]                                        ; $49b1: $34
	ld   h, e                                        ; $49b2: $63
	ld   d, d                                        ; $49b3: $52
	sbc  a                                           ; $49b4: $9f
	dec  c                                           ; $49b5: $0d
	nop                                              ; $49b6: $00
	ld   a, [bc]                                     ; $49b7: $0a
	rrca                                             ; $49b8: $0f
	ld   [bc], a                                     ; $49b9: $02
	ld   bc, $401d                                   ; $49ba: $01 $1d $40
	ld   [de], a                                     ; $49bd: $12
	inc  bc                                          ; $49be: $03
	ld   [de], a                                     ; $49bf: $12
	ld   bc, $2802                                   ; $49c0: $01 $02 $28
	nop                                              ; $49c3: $00
	ld   bc, $546b                                   ; $49c4: $01 $6b $54
	ld   [hl], l                                     ; $49c7: $75
	ld   h, a                                        ; $49c8: $67
	ld   e, c                                        ; $49c9: $59
	sbc  a                                           ; $49ca: $9f
	dec  c                                           ; $49cb: $0d
	ld   [hl], l                                     ; $49cc: $75
	ld   a, l                                        ; $49cd: $7d
	sbc  [hl]                                        ; $49ce: $9e
	inc  b                                           ; $49cf: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $49d0: $cf
	inc  b                                           ; $49d1: $04
	xor  d                                           ; $49d2: $aa
	ld   a, h                                        ; $49d3: $7c
	inc  bc                                          ; $49d4: $03
	ld   d, $9e                                      ; $49d5: $16 $9e
	dec  c                                           ; $49d7: $0d
	ld   [de], a                                     ; $49d8: $12
	ld   [bc], a                                     ; $49d9: $02
	ld   e, h                                        ; $49da: $5c
	ld   a, h                                        ; $49db: $7c
	rst  $28                                         ; $49dc: $ef
	call nc, Call_060_75fb                           ; $49dd: $d4 $fb $75
	inc  b                                           ; $49e0: $04
	rla                                              ; $49e1: $17
	ld   [hl], c                                     ; $49e2: $71
	ld   [hl], h                                     ; $49e3: $74
	adc  h                                           ; $49e4: $8c
	ld   h, a                                        ; $49e5: $67
	sbc  l                                           ; $49e6: $9d
	sbc  a                                           ; $49e7: $9f
	dec  c                                           ; $49e8: $0d
	nop                                              ; $49e9: $00
	ld   a, [bc]                                     ; $49ea: $0a
	dec  b                                           ; $49eb: $05
	add  b                                           ; $49ec: $80
	rra                                              ; $49ed: $1f
	ld   bc, $0001                                   ; $49ee: $01 $01 $00
	ld   bc, $9258                                   ; $49f1: $01 $58 $92
	ld   h, a                                        ; $49f4: $67
	adc  l                                           ; $49f5: $8d
	ld   a, b                                        ; $49f6: $78
	ld   h, e                                        ; $49f7: $63
	ld   d, d                                        ; $49f8: $52
	sbc  a                                           ; $49f9: $9f
	dec  c                                           ; $49fa: $0d
	nop                                              ; $49fb: $00
	ld   a, [bc]                                     ; $49fc: $0a
	dec  c                                           ; $49fd: $0d
	nop                                              ; $49fe: $00
	nop                                              ; $49ff: $00
	rrca                                             ; $4a00: $0f
	nop                                              ; $4a01: $00
	ld   bc, $1e09                                   ; $4a02: $01 $09 $1e
	add  hl, hl                                      ; $4a05: $29
	nop                                              ; $4a06: $00
	nop                                              ; $4a07: $00
	nop                                              ; $4a08: $00
	inc  bc                                          ; $4a09: $03
	ld   de, $9b01                                   ; $4a0a: $11 $01 $9b
	dec  h                                           ; $4a0d: $25
	nop                                              ; $4a0e: $00
	ld   c, $02                                      ; $4a0f: $0e $02
	rrca                                             ; $4a11: $0f
	nop                                              ; $4a12: $00
	ld   bc, $0102                                   ; $4a13: $01 $02 $01
	rst  $38                                         ; $4a16: $ff
	rst  $38                                         ; $4a17: $ff
	and  c                                           ; $4a18: $a1
	ld   sp, hl                                      ; $4a19: $f9
	dec  c                                           ; $4a1a: $0d
	sub  b                                           ; $4a1b: $90
	ld   d, h                                        ; $4a1c: $54
	ld   h, c                                        ; $4a1d: $61
	and  c                                           ; $4a1e: $a1
	ld   a, b                                        ; $4a1f: $78
	inc  bc                                          ; $4a20: $03
	ld   l, a                                        ; $4a21: $6f
	ld   [bc], a                                     ; $4a22: $02
	xor  c                                           ; $4a23: $a9
	ld   e, c                                        ; $4a24: $59
	rst  $38                                         ; $4a25: $ff
	dec  c                                           ; $4a26: $0d
	inc  b                                           ; $4a27: $04
	xor  d                                           ; $4a28: $aa
	ld   [bc], a                                     ; $4a29: $02
	sub  a                                           ; $4a2a: $97
	and  b                                           ; $4a2b: $a0
	ld   [hl], d                                     ; $4a2c: $72
	ld   e, a                                        ; $4a2d: $5f
	ld   [hl], h                                     ; $4a2e: $74
	inc  b                                           ; $4a2f: $04
	ld   b, d                                        ; $4a30: $42
	sub  [hl]                                        ; $4a31: $96
	ld   d, h                                        ; $4a32: $54
	sbc  a                                           ; $4a33: $9f
	dec  c                                           ; $4a34: $0d
	nop                                              ; $4a35: $00
	ld   a, [bc]                                     ; $4a36: $0a
	inc  d                                           ; $4a37: $14
	ld   b, $01                                      ; $4a38: $06 $01
	rrca                                             ; $4a3a: $0f
	ld   bc, $0101                                   ; $4a3b: $01 $01 $01
	ld   [$6300], sp                                 ; $4a3e: $08 $00 $63
	and  c                                           ; $4a41: $a1
	dec  c                                           ; $4a42: $0d
	ld   d, d                                        ; $4a43: $52
	sub  a                                           ; $4a44: $97
	ld   [hl], c                                     ; $4a45: $71
	ld   h, l                                        ; $4a46: $65
	sub  c                                           ; $4a47: $91
	ld   d, d                                        ; $4a48: $52
	adc  h                                           ; $4a49: $8c
	ld   h, a                                        ; $4a4a: $67
	ld   e, c                                        ; $4a4b: $59
	ld   sp, hl                                      ; $4a4c: $f9
	dec  c                                           ; $4a4d: $0d
	nop                                              ; $4a4e: $00
	ld   a, [bc]                                     ; $4a4f: $0a
	rrca                                             ; $4a50: $0f
	nop                                              ; $4a51: $00
	ld   bc, $7d01                                   ; $4a52: $01 $01 $7d
	ld   d, d                                        ; $4a55: $52
	sbc  a                                           ; $4a56: $9f
	dec  c                                           ; $4a57: $0d
	ld   [bc], a                                     ; $4a58: $02
	adc  b                                           ; $4a59: $88
	ld   d, d                                        ; $4a5a: $52
	ld   [hl], h                                     ; $4a5b: $74
	adc  h                                           ; $4a5c: $8c
	ld   h, a                                        ; $4a5d: $67
	ld   e, c                                        ; $4a5e: $59
	sub  a                                           ; $4a5f: $97
	sbc  [hl]                                        ; $4a60: $9e
	ld   [hl], a                                     ; $4a61: $77
	ld   d, h                                        ; $4a62: $54
	ld   l, h                                        ; $4a63: $6c
	sbc  a                                           ; $4a64: $9f
	dec  c                                           ; $4a65: $0d
	nop                                              ; $4a66: $00
	ld   a, [bc]                                     ; $4a67: $0a
	inc  d                                           ; $4a68: $14
	ld   a, [bc]                                     ; $4a69: $0a
	ld   bc, $011c                                   ; $4a6a: $01 $1c $01
	ld   bc, $0101                                   ; $4a6d: $01 $01 $01
	inc  b                                           ; $4a70: $04
	rst  $28                                         ; $4a71: $ef
	ld   e, b                                        ; $4a72: $58
	ld   l, e                                        ; $4a73: $6b
	ld   e, l                                        ; $4a74: $5d
	ld   a, c                                        ; $4a75: $79
	sbc  [hl]                                        ; $4a76: $9e
	ld   h, d                                        ; $4a77: $62
	adc  a                                           ; $4a78: $8f
	and  c                                           ; $4a79: $a1
	ld   a, b                                        ; $4a7a: $78
	ld   h, e                                        ; $4a7b: $63
	ld   d, d                                        ; $4a7c: $52
	sbc  a                                           ; $4a7d: $9f
	dec  c                                           ; $4a7e: $0d
	ld   [$6300], sp                                 ; $4a7f: $08 $00 $63
	and  c                                           ; $4a82: $a1
	ld   a, l                                        ; $4a83: $7d
	dec  c                                           ; $4a84: $0d
	inc  b                                           ; $4a85: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a86: $cf
	inc  b                                           ; $4a87: $04
	xor  d                                           ; $4a88: $aa
	sbc  [hl]                                        ; $4a89: $9e
	ld   e, b                                        ; $4a8a: $58
	add  b                                           ; $4a8b: $80
	adc  h                                           ; $4a8c: $8c
	ld   [hl], l                                     ; $4a8d: $75
	ld   h, a                                        ; $4a8e: $67
	ld   e, c                                        ; $4a8f: $59
	ld   sp, hl                                      ; $4a90: $f9
	dec  c                                           ; $4a91: $0d
	nop                                              ; $4a92: $00
	ld   a, [bc]                                     ; $4a93: $0a
	ld   bc, $cf04                                   ; $4a94: $01 $04 $cf
	inc  b                                           ; $4a97: $04
	xor  d                                           ; $4a98: $aa
	sbc  [hl]                                        ; $4a99: $9e
	inc  bc                                          ; $4a9a: $03
	sub  [hl]                                        ; $4a9b: $96
	inc  b                                           ; $4a9c: $04
	sbc  a                                           ; $4a9d: $9f
	ld   a, c                                        ; $4a9e: $79
	ld   [bc], a                                     ; $4a9f: $02
	ld   a, a                                        ; $4aa0: $7f
	ld   h, c                                        ; $4aa1: $61
	ld   d, h                                        ; $4aa2: $54
	halt                                             ; $4aa3: $76
	dec  c                                           ; $4aa4: $0d
	dec  b                                           ; $4aa5: $05
	pop  de                                          ; $4aa6: $d1
	ld   [hl], c                                     ; $4aa7: $71
	ld   [hl], h                                     ; $4aa8: $74
	ld   d, d                                        ; $4aa9: $52
	sbc  c                                           ; $4aaa: $99
	ld   a, h                                        ; $4aab: $7c
	ld   [hl], l                                     ; $4aac: $75
	ld   h, a                                        ; $4aad: $67
	ld   e, d                                        ; $4aae: $5a
	dec  c                                           ; $4aaf: $0d
	ld   d, d                                        ; $4ab0: $52
	ld   [hl], c                                     ; $4ab1: $71
	ld   h, l                                        ; $4ab2: $65
	sub  l                                           ; $4ab3: $95
	ld   a, c                                        ; $4ab4: $79
	ld   [bc], a                                     ; $4ab5: $02
	ld   a, a                                        ; $4ab6: $7f
	ld   e, e                                        ; $4ab7: $5b
	adc  h                                           ; $4ab8: $8c
	ld   l, c                                        ; $4ab9: $69
	and  c                                           ; $4aba: $a1
	ld   e, c                                        ; $4abb: $59
	ld   sp, hl                                      ; $4abc: $f9
	dec  c                                           ; $4abd: $0d
	nop                                              ; $4abe: $00
	ld   a, [bc]                                     ; $4abf: $0a
	add  hl, de                                      ; $4ac0: $19
	dec  b                                           ; $4ac1: $05
	ld   [bc], a                                     ; $4ac2: $02
	ld   d, d                                        ; $4ac3: $52
	ld   [hl], c                                     ; $4ac4: $71
	ld   h, l                                        ; $4ac5: $65
	sub  l                                           ; $4ac6: $95
	ld   a, c                                        ; $4ac7: $79
	ld   [bc], a                                     ; $4ac8: $02
	ld   a, a                                        ; $4ac9: $7f
	ld   e, l                                        ; $4aca: $5d
	nop                                              ; $4acb: $00
	nop                                              ; $4acc: $00
	ld   [bc], a                                     ; $4acd: $02
	ld   a, a                                        ; $4ace: $7f
	ld   e, c                                        ; $4acf: $59
	ld   a, b                                        ; $4ad0: $78
	ld   d, d                                        ; $4ad1: $52
	nop                                              ; $4ad2: $00
	ld   bc, $6907                                   ; $4ad3: $01 $07 $69
	ld   bc, $0302                                   ; $4ad6: $01 $02 $03
	ld   bc, $2000                                   ; $4ad9: $01 $00 $20
	nop                                              ; $4adc: $00
	rlca                                             ; $4add: $07
	jp   c, $0200                                    ; $4ade: $da $00 $02

	inc  bc                                          ; $4ae1: $03
	ld   bc, $2001                                   ; $4ae2: $01 $01 $20
	nop                                              ; $4ae5: $00
	ld   b, $2d                                      ; $4ae6: $06 $2d
	ld   bc, $000f                                   ; $4ae8: $01 $0f $00
	ld   bc, $6701                                   ; $4aeb: $01 $01 $67
	adc  l                                           ; $4aee: $8d
	adc  h                                           ; $4aef: $8c
	ld   l, c                                        ; $4af0: $69
	and  c                                           ; $4af1: $a1
	rst  $38                                         ; $4af2: $ff
	rst  $38                                         ; $4af3: $ff
	dec  c                                           ; $4af4: $0d
	inc  b                                           ; $4af5: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4af6: $cf
	inc  b                                           ; $4af7: $04
	xor  d                                           ; $4af8: $aa
	ld   a, l                                        ; $4af9: $7d
	ld   l, a                                        ; $4afa: $6f
	sub  l                                           ; $4afb: $95
	ld   [hl], c                                     ; $4afc: $71
	halt                                             ; $4afd: $76
	rst  $38                                         ; $4afe: $ff
	rst  $38                                         ; $4aff: $ff
	dec  c                                           ; $4b00: $0d
	nop                                              ; $4b01: $00
	ld   a, [bc]                                     ; $4b02: $0a
	inc  e                                           ; $4b03: $1c
	ld   bc, $0404                                   ; $4b04: $01 $04 $04
	ld   bc, $546b                                   ; $4b07: $01 $6b $54
	ld   [hl], l                                     ; $4b0a: $75
	ld   h, a                                        ; $4b0b: $67
	ld   e, c                                        ; $4b0c: $59
	sbc  a                                           ; $4b0d: $9f
	dec  c                                           ; $4b0e: $0d
	inc  b                                           ; $4b0f: $04
	di                                               ; $4b10: $f3
	ld   [bc], a                                     ; $4b11: $02
	jp   Jump_060_505a                               ; $4b12: $c3 $5a $50


	sbc  c                                           ; $4b15: $99
	and  c                                           ; $4b16: $a1
	ld   [hl], l                                     ; $4b17: $75
	ld   h, a                                        ; $4b18: $67
	ld   a, e                                        ; $4b19: $7b
	sbc  a                                           ; $4b1a: $9f
	dec  c                                           ; $4b1b: $0d
	nop                                              ; $4b1c: $00
	ld   a, [bc]                                     ; $4b1d: $0a
	inc  e                                           ; $4b1e: $1c
	ld   bc, $0000                                   ; $4b1f: $01 $00 $00
	ld   bc, $9166                                   ; $4b22: $01 $66 $91
	sbc  [hl]                                        ; $4b25: $9e
	ld   e, b                                        ; $4b26: $58
	sub  d                                           ; $4b27: $92
	ld   h, a                                        ; $4b28: $67
	adc  l                                           ; $4b29: $8d
	ld   a, b                                        ; $4b2a: $78
	ld   h, e                                        ; $4b2b: $63
	ld   d, d                                        ; $4b2c: $52
	sbc  a                                           ; $4b2d: $9f
	dec  c                                           ; $4b2e: $0d
	nop                                              ; $4b2f: $00
	ld   a, [bc]                                     ; $4b30: $0a
	dec  c                                           ; $4b31: $0d
	nop                                              ; $4b32: $00
	nop                                              ; $4b33: $00
	rrca                                             ; $4b34: $0f
	nop                                              ; $4b35: $00
	ld   bc, $1e09                                   ; $4b36: $01 $09 $1e
	add  hl, hl                                      ; $4b39: $29
	nop                                              ; $4b3a: $00
	nop                                              ; $4b3b: $00
	inc  e                                           ; $4b3c: $1c
	ld   bc, $0000                                   ; $4b3d: $01 $00 $00
	ld   bc, $4904                                   ; $4b40: $01 $04 $49
	ld   e, c                                        ; $4b43: $59
	inc  b                                           ; $4b44: $04
	di                                               ; $4b45: $f3
	ld   [bc], a                                     ; $4b46: $02
	jp   Jump_060_505a                               ; $4b47: $c3 $5a $50


	sbc  c                                           ; $4b4a: $99
	and  c                                           ; $4b4b: $a1
	ld   [hl], l                                     ; $4b4c: $75
	ld   h, a                                        ; $4b4d: $67
	ld   a, e                                        ; $4b4e: $7b
	sbc  a                                           ; $4b4f: $9f
	dec  c                                           ; $4b50: $0d
	ld   d, d                                        ; $4b51: $52
	ld   d, d                                        ; $4b52: $52
	ld   [hl], l                                     ; $4b53: $75
	ld   h, a                                        ; $4b54: $67
	sub  [hl]                                        ; $4b55: $96
	sbc  [hl]                                        ; $4b56: $9e
	ldh  [c], a                                      ; $4b57: $e2
	db   $ec                                         ; $4b58: $ec
	ld   h, l                                        ; $4b59: $65
	ld   a, b                                        ; $4b5a: $78
	ld   e, l                                        ; $4b5b: $5d
	ld   [hl], h                                     ; $4b5c: $74
	sbc  a                                           ; $4b5d: $9f
	dec  c                                           ; $4b5e: $0d
	ld   h, [hl]                                     ; $4b5f: $66
	sub  c                                           ; $4b60: $91
	sbc  [hl]                                        ; $4b61: $9e
	ld   e, b                                        ; $4b62: $58
	sub  d                                           ; $4b63: $92
	ld   h, a                                        ; $4b64: $67
	adc  l                                           ; $4b65: $8d
	ld   a, b                                        ; $4b66: $78
	ld   h, e                                        ; $4b67: $63
	ld   d, d                                        ; $4b68: $52
	sbc  a                                           ; $4b69: $9f
	dec  c                                           ; $4b6a: $0d
	nop                                              ; $4b6b: $00
	ld   a, [bc]                                     ; $4b6c: $0a
	dec  c                                           ; $4b6d: $0d
	nop                                              ; $4b6e: $00
	nop                                              ; $4b6f: $00
	rrca                                             ; $4b70: $0f
	nop                                              ; $4b71: $00
	ld   bc, $1e09                                   ; $4b72: $01 $09 $1e
	add  hl, hl                                      ; $4b75: $29
	nop                                              ; $4b76: $00
	nop                                              ; $4b77: $00
	rrca                                             ; $4b78: $0f
	nop                                              ; $4b79: $00
	ld   bc, $6a01                                   ; $4b7a: $01 $01 $6a
	add  b                                           ; $4b7d: $80
	ld   e, b                                        ; $4b7e: $58
	ld   [bc], a                                     ; $4b7f: $02
	xor  l                                           ; $4b80: $ad
	ld   h, e                                        ; $4b81: $63
	ld   l, c                                        ; $4b82: $69
	ld   [hl], h                                     ; $4b83: $74
	ld   [bc], a                                     ; $4b84: $02
	inc  [hl]                                        ; $4b85: $34
	ld   h, e                                        ; $4b86: $63
	ld   d, d                                        ; $4b87: $52
	sbc  a                                           ; $4b88: $9f
	dec  c                                           ; $4b89: $0d
	nop                                              ; $4b8a: $00
	ld   a, [bc]                                     ; $4b8b: $0a
	rrca                                             ; $4b8c: $0f
	ld   bc, $1d01                                   ; $4b8d: $01 $01 $1d
	ld   b, b                                        ; $4b90: $40
	ld   de, $1103                                   ; $4b91: $11 $03 $11
	ld   bc, $2802                                   ; $4b94: $01 $02 $28
	nop                                              ; $4b97: $00
	ld   bc, $546b                                   ; $4b98: $01 $6b $54
	ld   [hl], l                                     ; $4b9b: $75
	ld   h, a                                        ; $4b9c: $67
	ld   e, c                                        ; $4b9d: $59
	sbc  a                                           ; $4b9e: $9f
	dec  c                                           ; $4b9f: $0d
	ld   [hl], l                                     ; $4ba0: $75
	ld   a, l                                        ; $4ba1: $7d
	sbc  [hl]                                        ; $4ba2: $9e
	inc  b                                           ; $4ba3: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ba4: $cf
	inc  b                                           ; $4ba5: $04
	xor  d                                           ; $4ba6: $aa
	ld   a, h                                        ; $4ba7: $7c
	inc  bc                                          ; $4ba8: $03
	ld   d, $9e                                      ; $4ba9: $16 $9e
	dec  c                                           ; $4bab: $0d
	ld   [de], a                                     ; $4bac: $12
	ld   [bc], a                                     ; $4bad: $02
	ld   e, h                                        ; $4bae: $5c
	ld   a, h                                        ; $4baf: $7c
	rst  $28                                         ; $4bb0: $ef
	call nc, Call_060_75fb                           ; $4bb1: $d4 $fb $75
	inc  b                                           ; $4bb4: $04
	rla                                              ; $4bb5: $17
	ld   [hl], c                                     ; $4bb6: $71
	ld   [hl], h                                     ; $4bb7: $74
	adc  h                                           ; $4bb8: $8c
	ld   h, a                                        ; $4bb9: $67
	sbc  a                                           ; $4bba: $9f
	dec  c                                           ; $4bbb: $0d
	nop                                              ; $4bbc: $00
	ld   a, [bc]                                     ; $4bbd: $0a
	dec  b                                           ; $4bbe: $05
	add  b                                           ; $4bbf: $80
	inc  c                                           ; $4bc0: $0c
	ld   bc, $0001                                   ; $4bc1: $01 $01 $00
	ld   bc, $9258                                   ; $4bc4: $01 $58 $92
	ld   h, a                                        ; $4bc7: $67
	adc  l                                           ; $4bc8: $8d
	ld   a, b                                        ; $4bc9: $78
	ld   h, e                                        ; $4bca: $63
	ld   d, d                                        ; $4bcb: $52
	sbc  a                                           ; $4bcc: $9f
	dec  c                                           ; $4bcd: $0d
	nop                                              ; $4bce: $00
	ld   a, [bc]                                     ; $4bcf: $0a
	dec  c                                           ; $4bd0: $0d
	nop                                              ; $4bd1: $00
	nop                                              ; $4bd2: $00
	rrca                                             ; $4bd3: $0f
	nop                                              ; $4bd4: $00
	ld   bc, $1e09                                   ; $4bd5: $01 $09 $1e
	add  hl, hl                                      ; $4bd8: $29
	nop                                              ; $4bd9: $00
	nop                                              ; $4bda: $00
	nop                                              ; $4bdb: $00
	inc  bc                                          ; $4bdc: $03
	ld   d, $01                                      ; $4bdd: $16 $01
	xor  d                                           ; $4bdf: $aa
	inc  h                                           ; $4be0: $24
	nop                                              ; $4be1: $00
	ld   c, $02                                      ; $4be2: $0e $02
	rrca                                             ; $4be4: $0f
	nop                                              ; $4be5: $00
	ld   bc, $0102                                   ; $4be6: $01 $02 $01
	ld   [bc], a                                     ; $4be9: $02
	sub  l                                           ; $4bea: $95
	ld   [bc], a                                     ; $4beb: $02
	sub  e                                           ; $4bec: $93
	sbc  b                                           ; $4bed: $98
	sub  b                                           ; $4bee: $90
	inc  bc                                          ; $4bef: $03
	ld   a, [hl]                                     ; $4bf0: $7e
	sbc  l                                           ; $4bf1: $9d
	ld   [hl], c                                     ; $4bf2: $71
	ld   l, l                                        ; $4bf3: $6d
	ld   h, l                                        ; $4bf4: $65
	sbc  [hl]                                        ; $4bf5: $9e
	dec  c                                           ; $4bf6: $0d
	inc  b                                           ; $4bf7: $04
	xor  d                                           ; $4bf8: $aa
	ld   [bc], a                                     ; $4bf9: $02
	sub  a                                           ; $4bfa: $97
	and  b                                           ; $4bfb: $a0
	ld   [hl], d                                     ; $4bfc: $72
	ld   e, a                                        ; $4bfd: $5f
	ld   [hl], h                                     ; $4bfe: $74
	inc  b                                           ; $4bff: $04
	ld   b, d                                        ; $4c00: $42
	sub  [hl]                                        ; $4c01: $96
	ld   d, h                                        ; $4c02: $54
	ld   e, c                                        ; $4c03: $59
	ld   a, b                                        ; $4c04: $78
	sbc  a                                           ; $4c05: $9f
	dec  c                                           ; $4c06: $0d
	nop                                              ; $4c07: $00
	ld   a, [bc]                                     ; $4c08: $0a
	inc  d                                           ; $4c09: $14
	ld   b, $01                                      ; $4c0a: $06 $01
	rrca                                             ; $4c0c: $0f
	ld   b, $00                                      ; $4c0d: $06 $00
	ld   bc, $5896                                   ; $4c0f: $01 $96 $58
	sbc  [hl]                                        ; $4c12: $9e
	ld   [$9f00], sp                                 ; $4c13: $08 $00 $9f
	dec  c                                           ; $4c16: $0d
	adc  h                                           ; $4c17: $8c
	ld   l, [hl]                                     ; $4c18: $6e
	ld   [bc], a                                     ; $4c19: $02
	ld   e, d                                        ; $4c1a: $5a
	ld   e, e                                        ; $4c1b: $5b
	ld   [hl], h                                     ; $4c1c: $74
	sbc  c                                           ; $4c1d: $99
	ld   e, c                                        ; $4c1e: $59
	ld   sp, hl                                      ; $4c1f: $f9
	dec  c                                           ; $4c20: $0d
	nop                                              ; $4c21: $00
	ld   a, [bc]                                     ; $4c22: $0a
	rrca                                             ; $4c23: $0f
	nop                                              ; $4c24: $00
	ld   bc, $7d01                                   ; $4c25: $01 $01 $7d
	ld   d, d                                        ; $4c28: $52
	sbc  a                                           ; $4c29: $9f
	dec  c                                           ; $4c2a: $0d
	ld   [bc], a                                     ; $4c2b: $02
	adc  b                                           ; $4c2c: $88
	ld   d, d                                        ; $4c2d: $52
	ld   [hl], h                                     ; $4c2e: $74
	adc  h                                           ; $4c2f: $8c
	ld   h, a                                        ; $4c30: $67
	ld   e, c                                        ; $4c31: $59
	sub  a                                           ; $4c32: $97
	sbc  [hl]                                        ; $4c33: $9e
	ld   [hl], a                                     ; $4c34: $77
	ld   d, h                                        ; $4c35: $54
	ld   l, h                                        ; $4c36: $6c
	sbc  a                                           ; $4c37: $9f
	dec  c                                           ; $4c38: $0d
	nop                                              ; $4c39: $00
	ld   a, [bc]                                     ; $4c3a: $0a
	inc  d                                           ; $4c3b: $14
	ld   a, [bc]                                     ; $4c3c: $0a
	ld   bc, $061c                                   ; $4c3d: $01 $1c $06
	nop                                              ; $4c40: $00
	nop                                              ; $4c41: $00
	ld   bc, $dfba                                   ; $4c42: $01 $ba $df
	push af                                          ; $4c45: $f5
	ld   a, b                                        ; $4c46: $78
	inc  b                                           ; $4c47: $04
	rst  $28                                         ; $4c48: $ef
	ld   e, b                                        ; $4c49: $58
	ld   l, e                                        ; $4c4a: $6b
	ld   e, l                                        ; $4c4b: $5d
	ld   a, c                                        ; $4c4c: $79
	sbc  a                                           ; $4c4d: $9f
	dec  c                                           ; $4c4e: $0d
	inc  bc                                          ; $4c4f: $03
	adc  e                                           ; $4c50: $8b
	ld   a, l                                        ; $4c51: $7d
	sbc  [hl]                                        ; $4c52: $9e
	or   [hl]                                        ; $4c53: $b6
	push af                                          ; $4c54: $f5
	jp   z, $c4d1                                    ; $4c55: $ca $d1 $c4

	or   b                                           ; $4c58: $b0
	ld   e, d                                        ; $4c59: $5a
	db   $10                                         ; $4c5a: $10
	dec  c                                           ; $4c5b: $0d
	ld   h, c                                        ; $4c5c: $61
	sbc  l                                           ; $4c5d: $9d
	sbc  d                                           ; $4c5e: $9a
	ld   l, a                                        ; $4c5f: $6f
	sub  c                                           ; $4c60: $91
	ld   [hl], c                                     ; $4c61: $71
	ld   [hl], h                                     ; $4c62: $74
	ld   h, e                                        ; $4c63: $63
	ei                                               ; $4c64: $fb
	dec  c                                           ; $4c65: $0d
	nop                                              ; $4c66: $00
	ld   a, [bc]                                     ; $4c67: $0a
	inc  e                                           ; $4c68: $1c
	ld   b, $05                                      ; $4c69: $06 $05
	dec  b                                           ; $4c6b: $05
	ld   bc, $9a5b                                   ; $4c6c: $01 $5b $9a
	ld   d, d                                        ; $4c6f: $52
	ld   [bc], a                                     ; $4c70: $02
	sbc  d                                           ; $4c71: $9a
	ld   e, e                                        ; $4c72: $5b
	ld   a, h                                        ; $4c73: $7c
	ld   h, e                                        ; $4c74: $63
	ld   e, l                                        ; $4c75: $5d
	sub  a                                           ; $4c76: $97
	ld   e, d                                        ; $4c77: $5a
	sbc  [hl]                                        ; $4c78: $9e
	dec  c                                           ; $4c79: $0d
	inc  bc                                          ; $4c7a: $03
	or   c                                           ; $4c7b: $b1
	and  b                                           ; $4c7c: $a0
	ld   h, a                                        ; $4c7d: $67
	ld   [hl], h                                     ; $4c7e: $74
	ld   l, a                                        ; $4c7f: $6f
	adc  h                                           ; $4c80: $8c
	ld   [hl], c                                     ; $4c81: $71
	ld   l, l                                        ; $4c82: $6d
	and  c                                           ; $4c83: $a1
	ld   l, [hl]                                     ; $4c84: $6e
	sbc  a                                           ; $4c85: $9f
	dec  c                                           ; $4c86: $0d
	db   $10                                         ; $4c87: $10
	dec  c                                           ; $4c88: $0d
	nop                                              ; $4c89: $00
	ld   a, [bc]                                     ; $4c8a: $0a
	ld   bc, $7c61                                   ; $4c8b: $01 $61 $7c
	adc  h                                           ; $4c8e: $8c
	adc  h                                           ; $4c8f: $8c
	ld   h, [hl]                                     ; $4c90: $66
	sub  c                                           ; $4c91: $91
	ld   l, l                                        ; $4c92: $6d
	ld   l, [hl]                                     ; $4c93: $6e
	ld   a, h                                        ; $4c94: $7c
	dec  c                                           ; $4c95: $0d
	pop  de                                          ; $4c96: $d1
	call nz, Call_060_6eb0                           ; $4c97: $c4 $b0 $6e
	sub  [hl]                                        ; $4c9a: $96
	sbc  a                                           ; $4c9b: $9f
	dec  c                                           ; $4c9c: $0d
	ld   a, b                                        ; $4c9d: $78
	and  c                                           ; $4c9e: $a1
	ld   e, c                                        ; $4c9f: $59
	ld   d, d                                        ; $4ca0: $52
	ld   d, d                                        ; $4ca1: $52
	inc  bc                                          ; $4ca2: $03
	ld   l, e                                        ; $4ca3: $6b
	ld   a, b                                        ; $4ca4: $78
	ld   d, d                                        ; $4ca5: $52
	ld   e, c                                        ; $4ca6: $59
	ld   a, b                                        ; $4ca7: $78
	ld   sp, hl                                      ; $4ca8: $f9
	dec  c                                           ; $4ca9: $0d
	nop                                              ; $4caa: $00
	ld   a, [bc]                                     ; $4cab: $0a
	add  hl, de                                      ; $4cac: $19
	dec  b                                           ; $4cad: $05
	inc  bc                                          ; $4cae: $03
	ld   l, e                                        ; $4caf: $6b
	ld   a, [hl]                                     ; $4cb0: $7e
	xor  l                                           ; $4cb1: $ad
	db   $eb                                         ; $4cb2: $eb
	and  b                                           ; $4cb3: $a0
	ld   [hl], d                                     ; $4cb4: $72
	adc  a                                           ; $4cb5: $8f
	sbc  c                                           ; $4cb6: $99
	nop                                              ; $4cb7: $00
	nop                                              ; $4cb8: $00
	ret  nc                                          ; $4cb9: $d0

	ldh  [c], a                                      ; $4cba: $e2
	halt                                             ; $4cbb: $76
	dec  b                                           ; $4cbc: $05
	inc  b                                           ; $4cbd: $04
	and  b                                           ; $4cbe: $a0
	ld   [hl], d                                     ; $4cbf: $72
	adc  a                                           ; $4cc0: $8f
	sbc  c                                           ; $4cc1: $99
	nop                                              ; $4cc2: $00
	ld   bc, $6d9d                                   ; $4cc3: $01 $9d $6d
	and  b                                           ; $4cc6: $a0
	ld   [hl], d                                     ; $4cc7: $72
	adc  a                                           ; $4cc8: $8f
	sbc  c                                           ; $4cc9: $99
	nop                                              ; $4cca: $00
	ld   [bc], a                                     ; $4ccb: $02
	rlca                                             ; $4ccc: $07
	ld   [$0201], sp                                 ; $4ccd: $08 $01 $02
	inc  bc                                          ; $4cd0: $03
	ld   bc, $2000                                   ; $4cd1: $01 $00 $20
	nop                                              ; $4cd4: $00
	rlca                                             ; $4cd5: $07
	sub  [hl]                                        ; $4cd6: $96
	ld   bc, $0302                                   ; $4cd7: $01 $02 $03
	ld   bc, $2001                                   ; $4cda: $01 $01 $20
	nop                                              ; $4cdd: $00
	rlca                                             ; $4cde: $07
	ld   d, c                                        ; $4cdf: $51
	ld   bc, $0302                                   ; $4ce0: $01 $02 $03
	ld   bc, $2002                                   ; $4ce3: $01 $02 $20
	nop                                              ; $4ce6: $00
	ld   b, $e7                                      ; $4ce7: $06 $e7
	ld   bc, $000f                                   ; $4ce9: $01 $0f $00
	ld   bc, $7601                                   ; $4cec: $01 $01 $76
	sbc  b                                           ; $4cef: $98
	ld   d, b                                        ; $4cf0: $50
	ld   d, [hl]                                     ; $4cf1: $56
	ld   l, b                                        ; $4cf2: $68
	sbc  [hl]                                        ; $4cf3: $9e
	ld   l, e                                        ; $4cf4: $6b
	ld   a, [hl]                                     ; $4cf5: $7e
	xor  l                                           ; $4cf6: $ad
	db   $eb                                         ; $4cf7: $eb
	and  b                                           ; $4cf8: $a0
	dec  c                                           ; $4cf9: $0d
	ld   [hl], d                                     ; $4cfa: $72
	adc  a                                           ; $4cfb: $8f
	ld   l, l                                        ; $4cfc: $6d
	sub  a                                           ; $4cfd: $97
	ld   [hl], a                                     ; $4cfe: $77
	ld   d, h                                        ; $4cff: $54
	ld   [hl], l                                     ; $4d00: $75
	ld   h, a                                        ; $4d01: $67
	ld   e, c                                        ; $4d02: $59
	ld   sp, hl                                      ; $4d03: $f9
	dec  c                                           ; $4d04: $0d
	nop                                              ; $4d05: $00
	ld   a, [bc]                                     ; $4d06: $0a
	inc  e                                           ; $4d07: $1c
	ld   b, $03                                      ; $4d08: $06 $03
	inc  bc                                          ; $4d0a: $03
	ld   bc, $7e6b                                   ; $4d0b: $01 $6b $7e
	xor  l                                           ; $4d0e: $ad
	db   $eb                                         ; $4d0f: $eb
	ld   sp, hl                                      ; $4d10: $f9
	dec  c                                           ; $4d11: $0d
	rst  JumpTable                                         ; $4d12: $df
	or   b                                           ; $4d13: $b0
	db   $eb                                         ; $4d14: $eb
	ld   h, [hl]                                     ; $4d15: $66
	sub  c                                           ; $4d16: $91
	ld   a, b                                        ; $4d17: $78
	ld   d, d                                        ; $4d18: $52
	and  c                                           ; $4d19: $a1
	ld   l, [hl]                                     ; $4d1a: $6e
	ld   e, c                                        ; $4d1b: $59
	sub  a                                           ; $4d1c: $97
	dec  c                                           ; $4d1d: $0d
	sub  b                                           ; $4d1e: $90
	ld   d, h                                        ; $4d1f: $54
	inc  bc                                          ; $4d20: $03
	ld   l, h                                        ; $4d21: $6c
	ld   h, l                                        ; $4d22: $65
	ld   a, b                                        ; $4d23: $78
	and  c                                           ; $4d24: $a1
	halt                                             ; $4d25: $76
	ld   e, c                                        ; $4d26: $59
	ld   a, b                                        ; $4d27: $78
	and  c                                           ; $4d28: $a1
	ld   a, e                                        ; $4d29: $7b
	ei                                               ; $4d2a: $fb
	ld   e, c                                        ; $4d2b: $59
	ld   sp, hl                                      ; $4d2c: $f9
	dec  c                                           ; $4d2d: $0d
	nop                                              ; $4d2e: $00
	ld   a, [bc]                                     ; $4d2f: $0a
	ld   b, $0a                                      ; $4d30: $06 $0a
	ld   [bc], a                                     ; $4d32: $02
	rrca                                             ; $4d33: $0f
	nop                                              ; $4d34: $00
	ld   bc, $7601                                   ; $4d35: $01 $01 $76
	sbc  b                                           ; $4d38: $98
	ld   d, b                                        ; $4d39: $50
	ld   d, [hl]                                     ; $4d3a: $56
	ld   l, b                                        ; $4d3b: $68
	sbc  [hl]                                        ; $4d3c: $9e
	sbc  l                                           ; $4d3d: $9d
	ld   l, l                                        ; $4d3e: $6d
	and  b                                           ; $4d3f: $a0
	dec  c                                           ; $4d40: $0d
	ld   [hl], d                                     ; $4d41: $72
	adc  a                                           ; $4d42: $8f
	ld   l, l                                        ; $4d43: $6d
	sub  a                                           ; $4d44: $97
	ld   [hl], a                                     ; $4d45: $77
	ld   d, h                                        ; $4d46: $54
	ld   [hl], l                                     ; $4d47: $75
	ld   h, a                                        ; $4d48: $67
	ld   e, c                                        ; $4d49: $59
	ld   sp, hl                                      ; $4d4a: $f9
	dec  c                                           ; $4d4b: $0d
	nop                                              ; $4d4c: $00
	ld   a, [bc]                                     ; $4d4d: $0a
	inc  e                                           ; $4d4e: $1c
	ld   b, $03                                      ; $4d4f: $06 $03
	inc  bc                                          ; $4d51: $03
	ld   bc, $6d9d                                   ; $4d52: $01 $9d $6d
	ld   sp, hl                                      ; $4d55: $f9
	dec  c                                           ; $4d56: $0d
	add  e                                           ; $4d57: $83
	halt                                             ; $4d58: $76
	and  c                                           ; $4d59: $a1
	ld   h, [hl]                                     ; $4d5a: $66
	sub  c                                           ; $4d5b: $91
	ld   a, b                                        ; $4d5c: $78
	ld   d, d                                        ; $4d5d: $52
	and  c                                           ; $4d5e: $a1
	ld   l, [hl]                                     ; $4d5f: $6e
	ld   e, c                                        ; $4d60: $59
	sub  a                                           ; $4d61: $97
	dec  c                                           ; $4d62: $0d
	sub  b                                           ; $4d63: $90
	ld   d, h                                        ; $4d64: $54
	inc  bc                                          ; $4d65: $03
	ld   l, h                                        ; $4d66: $6c
	ld   h, l                                        ; $4d67: $65
	ld   a, b                                        ; $4d68: $78
	and  c                                           ; $4d69: $a1
	halt                                             ; $4d6a: $76
	ld   e, c                                        ; $4d6b: $59
	ld   a, b                                        ; $4d6c: $78
	and  c                                           ; $4d6d: $a1
	ld   a, e                                        ; $4d6e: $7b
	ei                                               ; $4d6f: $fb
	ld   e, c                                        ; $4d70: $59
	ld   sp, hl                                      ; $4d71: $f9
	dec  c                                           ; $4d72: $0d
	nop                                              ; $4d73: $00
	ld   a, [bc]                                     ; $4d74: $0a
	ld   b, $0a                                      ; $4d75: $06 $0a
	ld   [bc], a                                     ; $4d77: $02
	rrca                                             ; $4d78: $0f
	nop                                              ; $4d79: $00
	ld   bc, $7601                                   ; $4d7a: $01 $01 $76
	sbc  b                                           ; $4d7d: $98
	ld   d, b                                        ; $4d7e: $50
	ld   d, [hl]                                     ; $4d7f: $56
	ld   l, b                                        ; $4d80: $68
	sbc  [hl]                                        ; $4d81: $9e
	ret  nc                                          ; $4d82: $d0

	ldh  [c], a                                      ; $4d83: $e2
	halt                                             ; $4d84: $76
	dec  b                                           ; $4d85: $05
	inc  b                                           ; $4d86: $04
	and  b                                           ; $4d87: $a0
	dec  c                                           ; $4d88: $0d
	ld   [hl], d                                     ; $4d89: $72
	adc  a                                           ; $4d8a: $8f
	ld   l, l                                        ; $4d8b: $6d
	sub  a                                           ; $4d8c: $97
	ld   [hl], a                                     ; $4d8d: $77
	ld   d, h                                        ; $4d8e: $54
	ld   [hl], l                                     ; $4d8f: $75
	ld   h, a                                        ; $4d90: $67
	ld   e, c                                        ; $4d91: $59
	ld   sp, hl                                      ; $4d92: $f9
	dec  c                                           ; $4d93: $0d
	nop                                              ; $4d94: $00
	ld   a, [bc]                                     ; $4d95: $0a
	inc  e                                           ; $4d96: $1c
	ld   b, $06                                      ; $4d97: $06 $06
	ld   b, $01                                      ; $4d99: $06 $01
	ld   e, b                                        ; $4d9b: $58
	inc  bc                                          ; $4d9c: $03
	ld   c, a                                        ; $4d9d: $4f
	sbc  [hl]                                        ; $4d9e: $9e
	ld   l, e                                        ; $4d9f: $6b
	sbc  d                                           ; $4da0: $9a
	ld   h, [hl]                                     ; $4da1: $66
	sub  c                                           ; $4da2: $91
	or   [hl]                                        ; $4da3: $b6
	push af                                          ; $4da4: $f5
	jp   z, $c4a5                                    ; $4da5: $ca $a5 $c4

	jp   nz, Jump_060_6e0d                           ; $4da8: $c2 $0d $6e

	sbc  e                                           ; $4dab: $9b
	ld   sp, hl                                      ; $4dac: $f9
	db   $10                                         ; $4dad: $10
	pop  bc                                          ; $4dae: $c1
	cp   c                                           ; $4daf: $b9
	push hl                                          ; $4db0: $e5
	xor  $71                                         ; $4db1: $ee $71
	ld   [hl], h                                     ; $4db3: $74
	sbc  c                                           ; $4db4: $99
	dec  c                                           ; $4db5: $0d
	inc  b                                           ; $4db6: $04
	ld   a, d                                        ; $4db7: $7a
	ld   [bc], a                                     ; $4db8: $02
	ld   a, e                                        ; $4db9: $7b
	ld   h, [hl]                                     ; $4dba: $66
	sub  c                                           ; $4dbb: $91
	ld   a, b                                        ; $4dbc: $78
	ld   d, d                                        ; $4dbd: $52
	and  c                                           ; $4dbe: $a1
	ld   l, [hl]                                     ; $4dbf: $6e
	sub  [hl]                                        ; $4dc0: $96
	db   $fc                                         ; $4dc1: $fc
	sbc  a                                           ; $4dc2: $9f
	dec  c                                           ; $4dc3: $0d
	nop                                              ; $4dc4: $00
	ld   a, [bc]                                     ; $4dc5: $0a
	ld   b, $0a                                      ; $4dc6: $06 $0a
	ld   [bc], a                                     ; $4dc8: $02
	inc  e                                           ; $4dc9: $1c
	ld   b, $05                                      ; $4dca: $06 $05
	dec  b                                           ; $4dcc: $05
	ld   bc, $fc54                                   ; $4dcd: $01 $54 $fc
	and  c                                           ; $4dd0: $a1
	sbc  a                                           ; $4dd1: $9f
	dec  c                                           ; $4dd2: $0d
	ld   a, b                                        ; $4dd3: $78
	and  c                                           ; $4dd4: $a1
	ld   e, c                                        ; $4dd5: $59
	ld   d, d                                        ; $4dd6: $52
	ld   d, d                                        ; $4dd7: $52
	ld   [bc], a                                     ; $4dd8: $02
	dec  e                                           ; $4dd9: $1d
	ld   a, b                                        ; $4dda: $78
	ld   d, d                                        ; $4ddb: $52
	ld   e, c                                        ; $4ddc: $59
	ld   a, b                                        ; $4ddd: $78
	db   $fc                                         ; $4dde: $fc
	dec  c                                           ; $4ddf: $0d
	rst  $38                                         ; $4de0: $ff
	rst  $38                                         ; $4de1: $ff
	rst  $38                                         ; $4de2: $ff
	rst  $38                                         ; $4de3: $ff
	rst  $38                                         ; $4de4: $ff
	rst  $38                                         ; $4de5: $ff
	dec  c                                           ; $4de6: $0d
	nop                                              ; $4de7: $00
	ld   a, [bc]                                     ; $4de8: $0a
	ld   b, $0a                                      ; $4de9: $06 $0a
	ld   [bc], a                                     ; $4deb: $02
	add  hl, de                                      ; $4dec: $19
	dec  b                                           ; $4ded: $05
	inc  bc                                          ; $4dee: $03
	ld   [bc], a                                     ; $4def: $02
	dec  c                                           ; $4df0: $0d
	inc  b                                           ; $4df1: $04
	halt                                             ; $4df2: $76
	ld   a, h                                        ; $4df3: $7c
	ld   [bc], a                                     ; $4df4: $02
	add  l                                           ; $4df5: $85
	add  [hl]                                        ; $4df6: $86
	ld   [bc], a                                     ; $4df7: $02
	ld   a, a                                        ; $4df8: $7f
	ld   e, l                                        ; $4df9: $5d
	nop                                              ; $4dfa: $00
	nop                                              ; $4dfb: $00
	inc  b                                           ; $4dfc: $04
	ccf                                              ; $4dfd: $3f
	ld   [bc], a                                     ; $4dfe: $02
	ld   hl, $0286                                   ; $4dff: $21 $86 $02
	ld   a, a                                        ; $4e02: $7f
	ld   e, l                                        ; $4e03: $5d
	nop                                              ; $4e04: $00
	ld   bc, $6c02                                   ; $4e05: $01 $02 $6c
	inc  bc                                          ; $4e08: $03
	ld   d, h                                        ; $4e09: $54
	inc  bc                                          ; $4e0a: $03
	add  hl, sp                                      ; $4e0b: $39
	inc  bc                                          ; $4e0c: $03
	db   $eb                                         ; $4e0d: $eb
	inc  b                                           ; $4e0e: $04
	call nc, $0286                                   ; $4e0f: $d4 $86 $02
	ld   a, a                                        ; $4e12: $7f
	ld   e, l                                        ; $4e13: $5d
	nop                                              ; $4e14: $00
	ld   [bc], a                                     ; $4e15: $02
	rlca                                             ; $4e16: $07
	ld   e, b                                        ; $4e17: $58
	inc  bc                                          ; $4e18: $03
	ld   [bc], a                                     ; $4e19: $02
	inc  bc                                          ; $4e1a: $03
	ld   bc, $2000                                   ; $4e1b: $01 $00 $20
	nop                                              ; $4e1e: $00
	rlca                                             ; $4e1f: $07
	ld   l, d                                        ; $4e20: $6a
	dec  b                                           ; $4e21: $05
	ld   [bc], a                                     ; $4e22: $02
	inc  bc                                          ; $4e23: $03
	ld   bc, $2001                                   ; $4e24: $01 $01 $20
	nop                                              ; $4e27: $00
	rlca                                             ; $4e28: $07
	push bc                                          ; $4e29: $c5
	ld   [bc], a                                     ; $4e2a: $02
	ld   [bc], a                                     ; $4e2b: $02
	inc  bc                                          ; $4e2c: $03
	ld   bc, $2002                                   ; $4e2d: $01 $02 $20
	nop                                              ; $4e30: $00
	ld   b, $52                                      ; $4e31: $06 $52
	ld   [bc], a                                     ; $4e33: $02
	inc  e                                           ; $4e34: $1c
	ld   b, $03                                      ; $4e35: $06 $03
	inc  bc                                          ; $4e37: $03
	ld   bc, $546b                                   ; $4e38: $01 $6b $54
	ld   l, [hl]                                     ; $4e3b: $6e
	ld   a, [$0210]                                  ; $4e3c: $fa $10 $02
	ld   l, h                                        ; $4e3f: $6c
	inc  bc                                          ; $4e40: $03
	ld   d, h                                        ; $4e41: $54
	inc  bc                                          ; $4e42: $03
	add  hl, sp                                      ; $4e43: $39
	inc  bc                                          ; $4e44: $03
	db   $eb                                         ; $4e45: $eb
	inc  b                                           ; $4e46: $04
	call nc, $0dfa                                   ; $4e47: $d4 $fa $0d
	ld   d, b                                        ; $4e4a: $50
	ld   l, e                                        ; $4e4b: $6b
	ld   h, c                                        ; $4e4c: $61
	ld   a, h                                        ; $4e4d: $7c
	ld   [bc], a                                     ; $4e4e: $02
	ld   e, e                                        ; $4e4f: $5b
	dec  b                                           ; $4e50: $05
	inc  a                                           ; $4e51: $3c
	inc  bc                                          ; $4e52: $03
	db   $ed                                         ; $4e53: $ed
	sbc  a                                           ; $4e54: $9f
	dec  c                                           ; $4e55: $0d
	ld   [bc], a                                     ; $4e56: $02
	and  l                                           ; $4e57: $a5
	sbc  [hl]                                        ; $4e58: $9e
	ld   [bc], a                                     ; $4e59: $02
	ld   c, a                                        ; $4e5a: $4f
	ld   [bc], a                                     ; $4e5b: $02
	jp   Jump_060_7465                               ; $4e5c: $c3 $65 $74


	ld   l, l                                        ; $4e5f: $6d
	ld   l, h                                        ; $4e60: $6c
	ld   a, [$000d]                                  ; $4e61: $fa $0d $00
	ld   a, [bc]                                     ; $4e64: $0a
	inc  e                                           ; $4e65: $1c
	ld   b, $01                                      ; $4e66: $06 $01
	ld   bc, $0301                                   ; $4e68: $01 $01 $03
	jr   z, jr_060_4e71                              ; $4e6b: $28 $04

	jr   nc, @+$5c                                   ; $4e6d: $30 $5a

	inc  bc                                          ; $4e6f: $03
	add  b                                           ; $4e70: $80

jr_060_4e71:
	ld   [hl], h                                     ; $4e71: $74
	sbc  c                                           ; $4e72: $99
	adc  l                                           ; $4e73: $8d
	ld   l, l                                        ; $4e74: $6d
	ld   d, d                                        ; $4e75: $52
	ld   l, [hl]                                     ; $4e76: $6e
	ld   [hl], c                                     ; $4e77: $71
	ld   l, l                                        ; $4e78: $6d
	ld   e, c                                        ; $4e79: $59
	sub  a                                           ; $4e7a: $97
	dec  c                                           ; $4e7b: $0d
	sub  b                                           ; $4e7c: $90
	sub  a                                           ; $4e7d: $97
	ld   d, d                                        ; $4e7e: $52
	ld   a, c                                        ; $4e7f: $79
	ld   [bc], a                                     ; $4e80: $02
	ld   a, a                                        ; $4e81: $7f
	ld   e, a                                        ; $4e82: $5f
	ld   a, [hl]                                     ; $4e83: $7e
	ld   d, d                                        ; $4e84: $52
	ld   d, d                                        ; $4e85: $52
	and  c                                           ; $4e86: $a1
	ld   l, [hl]                                     ; $4e87: $6e
	sbc  a                                           ; $4e88: $9f
	dec  c                                           ; $4e89: $0d
	sub  [hl]                                        ; $4e8a: $96
	ld   h, l                                        ; $4e8b: $65
	ld   a, [$6610]                                  ; $4e8c: $fa $10 $66
	sub  c                                           ; $4e8f: $91
	sbc  [hl]                                        ; $4e90: $9e
	ld   [bc], a                                     ; $4e91: $02
	ld   a, a                                        ; $4e92: $7f
	ld   [hl], c                                     ; $4e93: $71
	ld   [hl], h                                     ; $4e94: $74
	ld   e, l                                        ; $4e95: $5d
	sbc  c                                           ; $4e96: $99
	ld   l, d                                        ; $4e97: $6a
	sbc  a                                           ; $4e98: $9f
	dec  c                                           ; $4e99: $0d
	nop                                              ; $4e9a: $00
	ld   a, [bc]                                     ; $4e9b: $0a
	dec  c                                           ; $4e9c: $0d
	nop                                              ; $4e9d: $00
	nop                                              ; $4e9e: $00
	rrca                                             ; $4e9f: $0f
	nop                                              ; $4ea0: $00
	ld   bc, $1e09                                   ; $4ea1: $01 $09 $1e
	add  hl, hl                                      ; $4ea4: $29
	nop                                              ; $4ea5: $00
	nop                                              ; $4ea6: $00
	rrca                                             ; $4ea7: $0f
	nop                                              ; $4ea8: $00
	ld   bc, $6b01                                   ; $4ea9: $01 $01 $6b
	ld   d, h                                        ; $4eac: $54
	ld   l, e                                        ; $4ead: $6b
	ld   d, h                                        ; $4eae: $54
	sbc  [hl]                                        ; $4eaf: $9e
	ld   [bc], a                                     ; $4eb0: $02
	ld   l, h                                        ; $4eb1: $6c
	inc  bc                                          ; $4eb2: $03
	ld   d, h                                        ; $4eb3: $54
	inc  bc                                          ; $4eb4: $03
	add  hl, sp                                      ; $4eb5: $39
	inc  bc                                          ; $4eb6: $03
	db   $eb                                         ; $4eb7: $eb
	inc  b                                           ; $4eb8: $04
	call nc, Call_060_780d                           ; $4eb9: $d4 $0d $78
	and  c                                           ; $4ebc: $a1
	ld   e, c                                        ; $4ebd: $59
	ld   [hl], a                                     ; $4ebe: $77
	ld   d, h                                        ; $4ebf: $54
	ld   [hl], l                                     ; $4ec0: $75
	ld   h, a                                        ; $4ec1: $67
	ld   e, c                                        ; $4ec2: $59
	ld   sp, hl                                      ; $4ec3: $f9
	dec  c                                           ; $4ec4: $0d
	nop                                              ; $4ec5: $00
	ld   a, [bc]                                     ; $4ec6: $0a
	inc  e                                           ; $4ec7: $1c
	ld   b, $03                                      ; $4ec8: $06 $03
	inc  bc                                          ; $4eca: $03
	ld   bc, $546b                                   ; $4ecb: $01 $6b $54
	ld   e, c                                        ; $4ece: $59
	ld   a, [GetRandomNumInPreSpecifiedRange]                                  ; $4ecf: $fa $10 $0d
	ld   d, b                                        ; $4ed2: $50
	ld   l, e                                        ; $4ed3: $6b
	ld   h, c                                        ; $4ed4: $61
	ld   a, h                                        ; $4ed5: $7c
	ld   [bc], a                                     ; $4ed6: $02
	ld   e, e                                        ; $4ed7: $5b
	dec  b                                           ; $4ed8: $05
	inc  a                                           ; $4ed9: $3c
	inc  bc                                          ; $4eda: $03
	db   $ed                                         ; $4edb: $ed
	sbc  a                                           ; $4edc: $9f
	dec  c                                           ; $4edd: $0d
	ld   [bc], a                                     ; $4ede: $02
	and  l                                           ; $4edf: $a5
	sbc  [hl]                                        ; $4ee0: $9e
	ld   [bc], a                                     ; $4ee1: $02
	ld   c, a                                        ; $4ee2: $4f
	ld   [bc], a                                     ; $4ee3: $02
	jp   Jump_060_7465                               ; $4ee4: $c3 $65 $74


	sbc  c                                           ; $4ee7: $99
	sub  b                                           ; $4ee8: $90
	and  c                                           ; $4ee9: $a1
	ld   a, b                                        ; $4eea: $78
	sbc  a                                           ; $4eeb: $9f
	dec  c                                           ; $4eec: $0d
	nop                                              ; $4eed: $00
	ld   a, [bc]                                     ; $4eee: $0a
	inc  e                                           ; $4eef: $1c
	ld   b, $01                                      ; $4ef0: $06 $01
	ld   bc, $401d                                   ; $4ef2: $01 $1d $40
	ld   d, $03                                      ; $4ef5: $16 $03
	ld   d, $01                                      ; $4ef7: $16 $01
	inc  bc                                          ; $4ef9: $03
	jr   z, jr_060_4efc                              ; $4efa: $28 $00

jr_060_4efc:
	ld   bc, $2803                                   ; $4efc: $01 $03 $28
	inc  b                                           ; $4eff: $04
	jr   nc, jr_060_4f5c                             ; $4f00: $30 $5a

	inc  bc                                          ; $4f02: $03
	add  b                                           ; $4f03: $80
	ld   [hl], h                                     ; $4f04: $74
	sbc  c                                           ; $4f05: $99
	adc  l                                           ; $4f06: $8d
	ld   l, l                                        ; $4f07: $6d
	ld   d, d                                        ; $4f08: $52
	ld   l, [hl]                                     ; $4f09: $6e
	ld   [hl], c                                     ; $4f0a: $71
	ld   l, l                                        ; $4f0b: $6d
	ld   e, c                                        ; $4f0c: $59
	sub  a                                           ; $4f0d: $97
	dec  c                                           ; $4f0e: $0d
	sub  b                                           ; $4f0f: $90
	sub  a                                           ; $4f10: $97
	ld   d, d                                        ; $4f11: $52
	ld   a, c                                        ; $4f12: $79
	ld   [bc], a                                     ; $4f13: $02
	ld   a, a                                        ; $4f14: $7f
	ld   e, a                                        ; $4f15: $5f
	ld   a, [hl]                                     ; $4f16: $7e
	ld   d, d                                        ; $4f17: $52
	ld   d, d                                        ; $4f18: $52
	and  c                                           ; $4f19: $a1
	ld   l, [hl]                                     ; $4f1a: $6e
	sbc  a                                           ; $4f1b: $9f
	dec  c                                           ; $4f1c: $0d
	or   [hl]                                        ; $4f1d: $b6
	push af                                          ; $4f1e: $f5
	xor  [hl]                                        ; $4f1f: $ae
	rst  $20                                         ; $4f20: $e7
	ei                                               ; $4f21: $fb
	ld   a, [$0210]                                  ; $4f22: $fa $10 $02
	ld   a, a                                        ; $4f25: $7f
	ld   [hl], c                                     ; $4f26: $71
	ld   [hl], h                                     ; $4f27: $74
	ld   e, l                                        ; $4f28: $5d
	sbc  c                                           ; $4f29: $99
	ld   l, d                                        ; $4f2a: $6a
	ld   a, [$000d]                                  ; $4f2b: $fa $0d $00
	ld   a, [bc]                                     ; $4f2e: $0a
	dec  c                                           ; $4f2f: $0d
	nop                                              ; $4f30: $00
	nop                                              ; $4f31: $00
	rrca                                             ; $4f32: $0f
	nop                                              ; $4f33: $00
	ld   bc, $1e09                                   ; $4f34: $01 $09 $1e
	add  hl, hl                                      ; $4f37: $29
	nop                                              ; $4f38: $00
	nop                                              ; $4f39: $00
	rrca                                             ; $4f3a: $0f
	nop                                              ; $4f3b: $00
	ld   bc, $0201                                   ; $4f3c: $01 $01 $02
	dec  c                                           ; $4f3f: $0d
	inc  b                                           ; $4f40: $04
	halt                                             ; $4f41: $76
	ld   a, c                                        ; $4f42: $79
	ld   [bc], a                                     ; $4f43: $02
	ld   a, a                                        ; $4f44: $7f
	ld   [hl], c                                     ; $4f45: $71
	ld   l, l                                        ; $4f46: $6d
	sub  a                                           ; $4f47: $97
	dec  c                                           ; $4f48: $0d
	inc  bc                                          ; $4f49: $03
	or   c                                           ; $4f4a: $b1
	ld   b, $16                                      ; $4f4b: $06 $16
	ld   e, d                                        ; $4f4d: $5a
	ld   d, b                                        ; $4f4e: $50
	sbc  c                                           ; $4f4f: $99
	ld   h, [hl]                                     ; $4f50: $66
	sub  c                                           ; $4f51: $91
	ld   a, b                                        ; $4f52: $78
	ld   d, d                                        ; $4f53: $52
	ld   [hl], l                                     ; $4f54: $75
	ld   h, a                                        ; $4f55: $67
	ld   e, c                                        ; $4f56: $59
	sbc  a                                           ; $4f57: $9f
	dec  c                                           ; $4f58: $0d
	ld   e, e                                        ; $4f59: $5b
	sbc  d                                           ; $4f5a: $9a
	ld   d, d                                        ; $4f5b: $52

jr_060_4f5c:
	ld   a, b                                        ; $4f5c: $78
	inc  bc                                          ; $4f5d: $03
	or   c                                           ; $4f5e: $b1
	ld   e, d                                        ; $4f5f: $5a
	sbc  a                                           ; $4f60: $9f
	dec  c                                           ; $4f61: $0d
	nop                                              ; $4f62: $00
	ld   a, [bc]                                     ; $4f63: $0a
	inc  e                                           ; $4f64: $1c
	ld   b, $05                                      ; $4f65: $06 $05
	dec  b                                           ; $4f67: $05
	ld   bc, $9a6b                                   ; $4f68: $01 $6b $9a
	ld   a, l                                        ; $4f6b: $7d
	sbc  [hl]                                        ; $4f6c: $9e
	ld   [bc], a                                     ; $4f6d: $02
	ld   bc, $5c67                                   ; $4f6e: $01 $67 $5c
	sbc  c                                           ; $4f71: $99
	ld   l, [hl]                                     ; $4f72: $6e
	sbc  e                                           ; $4f73: $9b
	sbc  a                                           ; $4f74: $9f
	dec  c                                           ; $4f75: $0d
	ld   a, b                                        ; $4f76: $78
	and  c                                           ; $4f77: $a1
	ld   e, c                                        ; $4f78: $59
	ld   d, d                                        ; $4f79: $52
	ld   d, d                                        ; $4f7a: $52
	inc  bc                                          ; $4f7b: $03
	ld   l, e                                        ; $4f7c: $6b
	ld   a, b                                        ; $4f7d: $78
	ld   d, d                                        ; $4f7e: $52
	ld   e, c                                        ; $4f7f: $59
	ld   a, b                                        ; $4f80: $78
	db   $fc                                         ; $4f81: $fc
	sbc  a                                           ; $4f82: $9f
	dec  c                                           ; $4f83: $0d
	nop                                              ; $4f84: $00
	ld   a, [bc]                                     ; $4f85: $0a
	add  hl, de                                      ; $4f86: $19
	dec  b                                           ; $4f87: $05
	ld   [bc], a                                     ; $4f88: $02
	inc  b                                           ; $4f89: $04
	ccf                                              ; $4f8a: $3f
	ld   [bc], a                                     ; $4f8b: $02
	ld   hl, $0286                                   ; $4f8c: $21 $86 $02
	ld   a, a                                        ; $4f8f: $7f
	ld   e, l                                        ; $4f90: $5d
	nop                                              ; $4f91: $00
	nop                                              ; $4f92: $00
	ld   [bc], a                                     ; $4f93: $02
	ld   l, h                                        ; $4f94: $6c
	inc  bc                                          ; $4f95: $03
	ld   d, h                                        ; $4f96: $54
	inc  bc                                          ; $4f97: $03
	add  hl, sp                                      ; $4f98: $39
	inc  bc                                          ; $4f99: $03
	db   $eb                                         ; $4f9a: $eb
	inc  b                                           ; $4f9b: $04
	call nc, $0286                                   ; $4f9c: $d4 $86 $02
	ld   a, a                                        ; $4f9f: $7f
	ld   e, l                                        ; $4fa0: $5d
	nop                                              ; $4fa1: $00
	ld   bc, $d607                                   ; $4fa2: $01 $07 $d6
	inc  bc                                          ; $4fa5: $03
	ld   [bc], a                                     ; $4fa6: $02
	inc  bc                                          ; $4fa7: $03
	ld   bc, $2000                                   ; $4fa8: $01 $00 $20
	nop                                              ; $4fab: $00
	rlca                                             ; $4fac: $07
	inc  hl                                          ; $4fad: $23
	inc  b                                           ; $4fae: $04
	ld   [bc], a                                     ; $4faf: $02
	inc  bc                                          ; $4fb0: $03
	ld   bc, $2001                                   ; $4fb1: $01 $01 $20
	nop                                              ; $4fb4: $00
	ld   b, $52                                      ; $4fb5: $06 $52
	ld   [bc], a                                     ; $4fb7: $02
	rrca                                             ; $4fb8: $0f
	nop                                              ; $4fb9: $00
	ld   bc, $5001                                   ; $4fba: $01 $01 $50
	ld   [hl], c                                     ; $4fbd: $71
	ld   a, [$6b10]                                  ; $4fbe: $fa $10 $6b
	ld   d, h                                        ; $4fc1: $54
	ld   l, [hl]                                     ; $4fc2: $6e
	dec  c                                           ; $4fc3: $0d
	inc  b                                           ; $4fc4: $04
	ccf                                              ; $4fc5: $3f
	ld   [bc], a                                     ; $4fc6: $02
	ld   hl, $0279                                   ; $4fc7: $21 $79 $02
	ld   a, a                                        ; $4fca: $7f
	ld   [hl], c                                     ; $4fcb: $71
	ld   l, l                                        ; $4fcc: $6d
	sub  a                                           ; $4fcd: $97
	rst  $38                                         ; $4fce: $ff
	rst  $38                                         ; $4fcf: $ff
	dec  c                                           ; $4fd0: $0d
	nop                                              ; $4fd1: $00
	ld   a, [bc]                                     ; $4fd2: $0a
	inc  e                                           ; $4fd3: $1c
	ld   b, $05                                      ; $4fd4: $06 $05
	dec  b                                           ; $4fd6: $05
	ld   bc, $3f04                                   ; $4fd7: $01 $04 $3f
	ld   [bc], a                                     ; $4fda: $02
	ld   hl, $fff9                                   ; $4fdb: $21 $f9 $ff
	rst  $38                                         ; $4fde: $ff
	ld   d, b                                        ; $4fdf: $50
	ld   d, b                                        ; $4fe0: $50
	sbc  [hl]                                        ; $4fe1: $9e
	inc  bc                                          ; $4fe2: $03
	or   c                                           ; $4fe3: $b1
	ld   e, h                                        ; $4fe4: $5c
	sub  b                                           ; $4fe5: $90
	ld   e, c                                        ; $4fe6: $59
	ld   c, a                                        ; $4fe7: $4f
	db   $fc                                         ; $4fe8: $fc
	dec  c                                           ; $4fe9: $0d
	ld   l, a                                        ; $4fea: $6f
	sub  l                                           ; $4feb: $95
	ld   [hl], c                                     ; $4fec: $71
	halt                                             ; $4fed: $76
	inc  bc                                          ; $4fee: $03
	rlca                                             ; $4fef: $07
	ld   d, [hl]                                     ; $4ff0: $56
	ld   a, b                                        ; $4ff1: $78
	ld   d, d                                        ; $4ff2: $52
	ld   a, b                                        ; $4ff3: $78
	sbc  a                                           ; $4ff4: $9f
	dec  c                                           ; $4ff5: $0d
	ld   [hl], a                                     ; $4ff6: $77
	ld   d, h                                        ; $4ff7: $54
	ld   h, l                                        ; $4ff8: $65
	sub  [hl]                                        ; $4ff9: $96
	ld   d, h                                        ; $4ffa: $54
	ld   e, c                                        ; $4ffb: $59
	ld   a, b                                        ; $4ffc: $78
	db   $fc                                         ; $4ffd: $fc
	sbc  a                                           ; $4ffe: $9f
	dec  c                                           ; $4fff: $0d
	nop                                              ; $5000: $00
	ld   a, [bc]                                     ; $5001: $0a
	ld   b, $b8                                      ; $5002: $06 $b8
	inc  b                                           ; $5004: $04
	rrca                                             ; $5005: $0f
	nop                                              ; $5006: $00
	ld   bc, $6b01                                   ; $5007: $01 $01 $6b
	ld   d, h                                        ; $500a: $54
	ld   l, e                                        ; $500b: $6b
	ld   d, h                                        ; $500c: $54
	sbc  [hl]                                        ; $500d: $9e
	ld   [bc], a                                     ; $500e: $02
	ld   l, h                                        ; $500f: $6c
	inc  bc                                          ; $5010: $03
	ld   d, h                                        ; $5011: $54
	dec  d                                           ; $5012: $15
	inc  bc                                          ; $5013: $03
	db   $eb                                         ; $5014: $eb
	inc  b                                           ; $5015: $04
	call nc, Call_060_780d                           ; $5016: $d4 $0d $78
	and  c                                           ; $5019: $a1
	ld   e, c                                        ; $501a: $59
	ld   [hl], a                                     ; $501b: $77
	ld   d, h                                        ; $501c: $54
	ld   [hl], l                                     ; $501d: $75
	ld   h, a                                        ; $501e: $67
	ld   e, c                                        ; $501f: $59
	ld   sp, hl                                      ; $5020: $f9
	dec  c                                           ; $5021: $0d
	nop                                              ; $5022: $00
	ld   a, [bc]                                     ; $5023: $0a
	inc  e                                           ; $5024: $1c
	ld   b, $03                                      ; $5025: $06 $03
	inc  bc                                          ; $5027: $03
	ld   bc, $f9a1                                   ; $5028: $01 $a1 $f9
	db   $10                                         ; $502b: $10
	ld   l, e                                        ; $502c: $6b
	ld   d, h                                        ; $502d: $54
	ld   e, c                                        ; $502e: $59
	ld   a, [GetRandomNumInPreSpecifiedRange]                                  ; $502f: $fa $10 $0d
	ld   d, b                                        ; $5032: $50
	ld   l, e                                        ; $5033: $6b
	ld   h, c                                        ; $5034: $61
	ld   a, h                                        ; $5035: $7c
	ld   [bc], a                                     ; $5036: $02
	ld   e, e                                        ; $5037: $5b
	dec  b                                           ; $5038: $05
	inc  a                                           ; $5039: $3c
	inc  bc                                          ; $503a: $03
	db   $ed                                         ; $503b: $ed
	sbc  a                                           ; $503c: $9f
	dec  c                                           ; $503d: $0d
	ld   [bc], a                                     ; $503e: $02
	and  l                                           ; $503f: $a5
	sbc  [hl]                                        ; $5040: $9e
	ld   [bc], a                                     ; $5041: $02
	ld   c, a                                        ; $5042: $4f
	ld   [bc], a                                     ; $5043: $02
	jp   Jump_060_7465                               ; $5044: $c3 $65 $74


	sbc  c                                           ; $5047: $99
	sub  b                                           ; $5048: $90
	and  c                                           ; $5049: $a1
	ld   a, b                                        ; $504a: $78
	sbc  a                                           ; $504b: $9f
	dec  c                                           ; $504c: $0d
	nop                                              ; $504d: $00
	ld   a, [bc]                                     ; $504e: $0a
	inc  e                                           ; $504f: $1c
	ld   b, $01                                      ; $5050: $06 $01
	ld   bc, $401d                                   ; $5052: $01 $1d $40
	ld   d, $03                                      ; $5055: $16 $03
	ld   d, $01                                      ; $5057: $16 $01
	ld   [bc], a                                     ; $5059: $02

Jump_060_505a:
	jr   z, jr_060_505c                              ; $505a: $28 $00

jr_060_505c:
	ld   bc, $2803                                   ; $505c: $01 $03 $28
	inc  b                                           ; $505f: $04
	jr   nc, @+$5c                                   ; $5060: $30 $5a

	inc  bc                                          ; $5062: $03
	add  b                                           ; $5063: $80
	ld   [hl], h                                     ; $5064: $74
	sbc  c                                           ; $5065: $99
	adc  l                                           ; $5066: $8d
	ld   l, l                                        ; $5067: $6d
	ld   d, d                                        ; $5068: $52
	ld   l, [hl]                                     ; $5069: $6e
	ld   [hl], c                                     ; $506a: $71
	ld   l, l                                        ; $506b: $6d
	ld   e, c                                        ; $506c: $59
	sub  a                                           ; $506d: $97
	dec  c                                           ; $506e: $0d
	sub  b                                           ; $506f: $90
	sub  a                                           ; $5070: $97
	ld   d, d                                        ; $5071: $52
	ld   a, c                                        ; $5072: $79
	ld   [bc], a                                     ; $5073: $02
	ld   a, a                                        ; $5074: $7f
	ld   e, a                                        ; $5075: $5f
	ld   a, [hl]                                     ; $5076: $7e
	ld   d, d                                        ; $5077: $52
	ld   d, d                                        ; $5078: $52
	and  c                                           ; $5079: $a1
	ld   l, [hl]                                     ; $507a: $6e
	sbc  a                                           ; $507b: $9f
	dec  c                                           ; $507c: $0d
	or   [hl]                                        ; $507d: $b6
	push af                                          ; $507e: $f5
	xor  [hl]                                        ; $507f: $ae
	rst  $20                                         ; $5080: $e7
	ei                                               ; $5081: $fb
	ld   a, [$0210]                                  ; $5082: $fa $10 $02
	ld   a, a                                        ; $5085: $7f
	ld   [hl], c                                     ; $5086: $71
	ld   [hl], h                                     ; $5087: $74
	ld   e, l                                        ; $5088: $5d
	sbc  c                                           ; $5089: $99
	ld   l, d                                        ; $508a: $6a
	ld   a, [$000d]                                  ; $508b: $fa $0d $00
	ld   a, [bc]                                     ; $508e: $0a
	dec  c                                           ; $508f: $0d
	nop                                              ; $5090: $00
	nop                                              ; $5091: $00
	rrca                                             ; $5092: $0f
	nop                                              ; $5093: $00
	ld   bc, $1e09                                   ; $5094: $01 $09 $1e
	add  hl, hl                                      ; $5097: $29
	nop                                              ; $5098: $00
	nop                                              ; $5099: $00
	add  hl, de                                      ; $509a: $19
	dec  b                                           ; $509b: $05
	ld   bc, $6c02                                   ; $509c: $01 $02 $6c
	inc  bc                                          ; $509f: $03
	ld   d, h                                        ; $50a0: $54
	inc  bc                                          ; $50a1: $03
	add  hl, sp                                      ; $50a2: $39
	inc  bc                                          ; $50a3: $03
	db   $eb                                         ; $50a4: $eb
	inc  b                                           ; $50a5: $04
	call nc, $0286                                   ; $50a6: $d4 $86 $02
	ld   a, a                                        ; $50a9: $7f
	ld   e, l                                        ; $50aa: $5d
	nop                                              ; $50ab: $00
	nop                                              ; $50ac: $00
	rlca                                             ; $50ad: $07
	rst  $10                                         ; $50ae: $d7
	inc  b                                           ; $50af: $04
	ld   [bc], a                                     ; $50b0: $02
	inc  bc                                          ; $50b1: $03
	ld   bc, $2000                                   ; $50b2: $01 $00 $20
	nop                                              ; $50b5: $00
	ld   b, $52                                      ; $50b6: $06 $52
	ld   [bc], a                                     ; $50b8: $02
	rrca                                             ; $50b9: $0f
	nop                                              ; $50ba: $00
	ld   bc, $6b01                                   ; $50bb: $01 $01 $6b
	ld   d, h                                        ; $50be: $54
	ld   l, e                                        ; $50bf: $6b
	ld   d, h                                        ; $50c0: $54
	sbc  [hl]                                        ; $50c1: $9e
	ld   [bc], a                                     ; $50c2: $02
	ld   l, h                                        ; $50c3: $6c
	inc  bc                                          ; $50c4: $03
	ld   d, h                                        ; $50c5: $54
	inc  bc                                          ; $50c6: $03
	add  hl, sp                                      ; $50c7: $39
	inc  bc                                          ; $50c8: $03
	db   $eb                                         ; $50c9: $eb
	inc  b                                           ; $50ca: $04
	call nc, Call_060_780d                           ; $50cb: $d4 $0d $78
	and  c                                           ; $50ce: $a1
	ld   e, c                                        ; $50cf: $59
	ld   [hl], a                                     ; $50d0: $77
	ld   d, h                                        ; $50d1: $54
	ld   [hl], l                                     ; $50d2: $75
	ld   h, a                                        ; $50d3: $67
	ld   e, c                                        ; $50d4: $59
	ld   sp, hl                                      ; $50d5: $f9
	dec  c                                           ; $50d6: $0d
	nop                                              ; $50d7: $00
	ld   a, [bc]                                     ; $50d8: $0a
	inc  e                                           ; $50d9: $1c
	ld   b, $03                                      ; $50da: $06 $03
	inc  bc                                          ; $50dc: $03
	ld   bc, $546b                                   ; $50dd: $01 $6b $54
	ld   e, c                                        ; $50e0: $59
	ld   a, [GetRandomNumInPreSpecifiedRange]                                  ; $50e1: $fa $10 $0d
	ld   d, b                                        ; $50e4: $50
	ld   l, e                                        ; $50e5: $6b
	ld   h, c                                        ; $50e6: $61
	ld   a, h                                        ; $50e7: $7c
	ld   [bc], a                                     ; $50e8: $02
	ld   e, e                                        ; $50e9: $5b
	dec  b                                           ; $50ea: $05
	inc  a                                           ; $50eb: $3c
	inc  bc                                          ; $50ec: $03
	db   $ed                                         ; $50ed: $ed
	sbc  a                                           ; $50ee: $9f
	dec  c                                           ; $50ef: $0d
	ld   [bc], a                                     ; $50f0: $02
	and  l                                           ; $50f1: $a5
	sbc  [hl]                                        ; $50f2: $9e
	ld   [bc], a                                     ; $50f3: $02
	ld   c, a                                        ; $50f4: $4f
	ld   [bc], a                                     ; $50f5: $02
	jp   Jump_060_7465                               ; $50f6: $c3 $65 $74


	sbc  c                                           ; $50f9: $99
	sub  b                                           ; $50fa: $90
	and  c                                           ; $50fb: $a1
	ld   a, b                                        ; $50fc: $78
	sbc  a                                           ; $50fd: $9f
	dec  c                                           ; $50fe: $0d
	nop                                              ; $50ff: $00
	ld   a, [bc]                                     ; $5100: $0a
	inc  e                                           ; $5101: $1c
	ld   b, $01                                      ; $5102: $06 $01
	ld   bc, $401d                                   ; $5104: $01 $1d $40
	ld   d, $03                                      ; $5107: $16 $03
	ld   d, $01                                      ; $5109: $16 $01
	ld   bc, $0028                                   ; $510b: $01 $28 $00
	ld   bc, $2803                                   ; $510e: $01 $03 $28
	inc  b                                           ; $5111: $04
	jr   nc, jr_060_516e                             ; $5112: $30 $5a

	inc  bc                                          ; $5114: $03
	add  b                                           ; $5115: $80
	ld   [hl], h                                     ; $5116: $74
	sbc  c                                           ; $5117: $99
	adc  l                                           ; $5118: $8d
	ld   l, l                                        ; $5119: $6d
	ld   d, d                                        ; $511a: $52
	ld   l, [hl]                                     ; $511b: $6e
	ld   [hl], c                                     ; $511c: $71
	ld   l, l                                        ; $511d: $6d
	ld   e, c                                        ; $511e: $59
	sub  a                                           ; $511f: $97
	dec  c                                           ; $5120: $0d
	sub  b                                           ; $5121: $90
	sub  a                                           ; $5122: $97
	ld   d, d                                        ; $5123: $52
	ld   a, c                                        ; $5124: $79
	ld   [bc], a                                     ; $5125: $02
	ld   a, a                                        ; $5126: $7f
	ld   e, a                                        ; $5127: $5f
	ld   a, [hl]                                     ; $5128: $7e
	ld   d, d                                        ; $5129: $52
	ld   d, d                                        ; $512a: $52
	and  c                                           ; $512b: $a1
	ld   l, [hl]                                     ; $512c: $6e
	sbc  a                                           ; $512d: $9f
	dec  c                                           ; $512e: $0d
	or   [hl]                                        ; $512f: $b6
	push af                                          ; $5130: $f5
	xor  [hl]                                        ; $5131: $ae
	rst  $20                                         ; $5132: $e7
	ei                                               ; $5133: $fb
	ld   a, [$0210]                                  ; $5134: $fa $10 $02
	ld   a, a                                        ; $5137: $7f
	ld   [hl], c                                     ; $5138: $71
	ld   [hl], h                                     ; $5139: $74
	ld   e, l                                        ; $513a: $5d
	sbc  c                                           ; $513b: $99
	ld   l, d                                        ; $513c: $6a
	ld   a, [$000d]                                  ; $513d: $fa $0d $00
	ld   a, [bc]                                     ; $5140: $0a
	dec  c                                           ; $5141: $0d
	nop                                              ; $5142: $00
	nop                                              ; $5143: $00
	rrca                                             ; $5144: $0f
	nop                                              ; $5145: $00
	ld   bc, $1e09                                   ; $5146: $01 $09 $1e
	add  hl, hl                                      ; $5149: $29
	nop                                              ; $514a: $00
	nop                                              ; $514b: $00
	rrca                                             ; $514c: $0f
	nop                                              ; $514d: $00
	ld   bc, $5001                                   ; $514e: $01 $01 $50
	ld   [hl], c                                     ; $5151: $71
	ld   a, [$6b10]                                  ; $5152: $fa $10 $6b
	ld   d, h                                        ; $5155: $54
	ld   l, [hl]                                     ; $5156: $6e
	dec  c                                           ; $5157: $0d
	inc  b                                           ; $5158: $04
	ccf                                              ; $5159: $3f
	ld   [bc], a                                     ; $515a: $02
	ld   hl, $0279                                   ; $515b: $21 $79 $02
	ld   a, a                                        ; $515e: $7f
	ld   [hl], c                                     ; $515f: $71
	ld   l, l                                        ; $5160: $6d
	sub  a                                           ; $5161: $97
	rst  $38                                         ; $5162: $ff
	rst  $38                                         ; $5163: $ff
	dec  c                                           ; $5164: $0d
	nop                                              ; $5165: $00
	ld   a, [bc]                                     ; $5166: $0a
	inc  e                                           ; $5167: $1c
	ld   b, $05                                      ; $5168: $06 $05
	dec  b                                           ; $516a: $05
	ld   bc, $3f04                                   ; $516b: $01 $04 $3f

jr_060_516e:
	ld   [bc], a                                     ; $516e: $02
	ld   hl, $fff9                                   ; $516f: $21 $f9 $ff
	rst  $38                                         ; $5172: $ff
	ld   d, b                                        ; $5173: $50
	ld   d, b                                        ; $5174: $50
	sbc  [hl]                                        ; $5175: $9e
	inc  bc                                          ; $5176: $03
	or   c                                           ; $5177: $b1
	ld   e, h                                        ; $5178: $5c
	sub  b                                           ; $5179: $90
	ld   e, c                                        ; $517a: $59
	ld   c, a                                        ; $517b: $4f
	db   $fc                                         ; $517c: $fc
	dec  c                                           ; $517d: $0d
	ld   l, a                                        ; $517e: $6f
	sub  l                                           ; $517f: $95
	ld   [hl], c                                     ; $5180: $71
	halt                                             ; $5181: $76
	inc  bc                                          ; $5182: $03
	rlca                                             ; $5183: $07
	ld   d, [hl]                                     ; $5184: $56
	ld   a, b                                        ; $5185: $78
	ld   d, d                                        ; $5186: $52
	ld   a, b                                        ; $5187: $78
	sbc  a                                           ; $5188: $9f
	dec  c                                           ; $5189: $0d
	ld   [hl], a                                     ; $518a: $77
	ld   d, h                                        ; $518b: $54
	ld   h, l                                        ; $518c: $65
	sub  [hl]                                        ; $518d: $96
	ld   d, h                                        ; $518e: $54
	ld   e, c                                        ; $518f: $59
	ld   a, b                                        ; $5190: $78
	db   $fc                                         ; $5191: $fc
	sbc  a                                           ; $5192: $9f
	dec  c                                           ; $5193: $0d
	nop                                              ; $5194: $00
	ld   a, [bc]                                     ; $5195: $0a
	add  hl, de                                      ; $5196: $19
	dec  b                                           ; $5197: $05
	ld   [bc], a                                     ; $5198: $02
	ld   [bc], a                                     ; $5199: $02
	dec  c                                           ; $519a: $0d
	inc  b                                           ; $519b: $04
	halt                                             ; $519c: $76
	ld   a, h                                        ; $519d: $7c
	ld   [bc], a                                     ; $519e: $02
	add  l                                           ; $519f: $85
	add  [hl]                                        ; $51a0: $86
	ld   [bc], a                                     ; $51a1: $02
	ld   a, a                                        ; $51a2: $7f
	ld   e, l                                        ; $51a3: $5d
	nop                                              ; $51a4: $00
	nop                                              ; $51a5: $00
	ld   [bc], a                                     ; $51a6: $02
	ld   l, h                                        ; $51a7: $6c
	inc  bc                                          ; $51a8: $03
	ld   d, h                                        ; $51a9: $54
	inc  bc                                          ; $51aa: $03
	add  hl, sp                                      ; $51ab: $39
	inc  bc                                          ; $51ac: $03
	db   $eb                                         ; $51ad: $eb
	inc  b                                           ; $51ae: $04
	call nc, $0286                                   ; $51af: $d4 $86 $02
	ld   a, a                                        ; $51b2: $7f
	ld   e, l                                        ; $51b3: $5d
	nop                                              ; $51b4: $00
	ld   bc, $e907                                   ; $51b5: $01 $07 $e9
	dec  b                                           ; $51b8: $05
	ld   [bc], a                                     ; $51b9: $02
	inc  bc                                          ; $51ba: $03
	ld   bc, $2000                                   ; $51bb: $01 $00 $20
	nop                                              ; $51be: $00
	rlca                                             ; $51bf: $07
	jr   c, jr_060_51c8                              ; $51c0: $38 $06

	ld   [bc], a                                     ; $51c2: $02
	inc  bc                                          ; $51c3: $03
	ld   bc, $2001                                   ; $51c4: $01 $01 $20
	nop                                              ; $51c7: $00

jr_060_51c8:
	ld   b, $52                                      ; $51c8: $06 $52
	ld   [bc], a                                     ; $51ca: $02
	rrca                                             ; $51cb: $0f
	nop                                              ; $51cc: $00
	ld   bc, $0201                                   ; $51cd: $01 $01 $02
	dec  c                                           ; $51d0: $0d
	inc  b                                           ; $51d1: $04
	halt                                             ; $51d2: $76
	ld   a, c                                        ; $51d3: $79
	ld   [bc], a                                     ; $51d4: $02
	ld   a, a                                        ; $51d5: $7f
	ld   [hl], c                                     ; $51d6: $71
	ld   l, l                                        ; $51d7: $6d
	sub  a                                           ; $51d8: $97
	dec  c                                           ; $51d9: $0d
	inc  bc                                          ; $51da: $03
	or   c                                           ; $51db: $b1
	ld   b, $16                                      ; $51dc: $06 $16
	ld   e, d                                        ; $51de: $5a
	ld   d, b                                        ; $51df: $50
	sbc  c                                           ; $51e0: $99
	ld   h, [hl]                                     ; $51e1: $66
	sub  c                                           ; $51e2: $91
	ld   a, b                                        ; $51e3: $78
	ld   d, d                                        ; $51e4: $52
	ld   [hl], l                                     ; $51e5: $75
	ld   h, a                                        ; $51e6: $67
	ld   e, c                                        ; $51e7: $59
	sbc  a                                           ; $51e8: $9f
	dec  c                                           ; $51e9: $0d
	ld   e, e                                        ; $51ea: $5b
	sbc  d                                           ; $51eb: $9a
	ld   d, d                                        ; $51ec: $52
	ld   a, b                                        ; $51ed: $78
	inc  bc                                          ; $51ee: $03
	or   c                                           ; $51ef: $b1
	ld   e, d                                        ; $51f0: $5a
	sbc  a                                           ; $51f1: $9f
	dec  c                                           ; $51f2: $0d
	nop                                              ; $51f3: $00
	ld   a, [bc]                                     ; $51f4: $0a
	inc  e                                           ; $51f5: $1c
	ld   b, $05                                      ; $51f6: $06 $05
	dec  b                                           ; $51f8: $05
	ld   bc, $9a6b                                   ; $51f9: $01 $6b $9a
	ld   a, l                                        ; $51fc: $7d
	sbc  [hl]                                        ; $51fd: $9e
	ld   [bc], a                                     ; $51fe: $02
	ld   bc, $5c67                                   ; $51ff: $01 $67 $5c
	sbc  c                                           ; $5202: $99
	ld   l, [hl]                                     ; $5203: $6e
	sbc  e                                           ; $5204: $9b
	sbc  a                                           ; $5205: $9f
	dec  c                                           ; $5206: $0d
	ld   a, b                                        ; $5207: $78
	and  c                                           ; $5208: $a1
	ld   e, c                                        ; $5209: $59
	ld   d, d                                        ; $520a: $52
	ld   d, d                                        ; $520b: $52
	inc  bc                                          ; $520c: $03
	ld   l, e                                        ; $520d: $6b
	ld   a, b                                        ; $520e: $78
	ld   d, d                                        ; $520f: $52
	ld   e, c                                        ; $5210: $59
	ld   a, b                                        ; $5211: $78
	db   $fc                                         ; $5212: $fc
	sbc  a                                           ; $5213: $9f
	dec  c                                           ; $5214: $0d
	nop                                              ; $5215: $00
	ld   a, [bc]                                     ; $5216: $0a
	ld   b, $cc                                      ; $5217: $06 $cc
	ld   b, $0f                                      ; $5219: $06 $0f
	nop                                              ; $521b: $00
	ld   bc, $6b01                                   ; $521c: $01 $01 $6b
	ld   d, h                                        ; $521f: $54
	ld   l, e                                        ; $5220: $6b
	ld   d, h                                        ; $5221: $54
	sbc  [hl]                                        ; $5222: $9e
	ld   [bc], a                                     ; $5223: $02
	ld   l, h                                        ; $5224: $6c
	inc  bc                                          ; $5225: $03
	ld   d, h                                        ; $5226: $54
	dec  d                                           ; $5227: $15
	inc  bc                                          ; $5228: $03
	db   $eb                                         ; $5229: $eb
	inc  b                                           ; $522a: $04
	call nc, Call_060_780d                           ; $522b: $d4 $0d $78
	and  c                                           ; $522e: $a1
	ld   e, c                                        ; $522f: $59
	ld   [hl], a                                     ; $5230: $77
	ld   d, h                                        ; $5231: $54
	ld   [hl], l                                     ; $5232: $75
	ld   h, a                                        ; $5233: $67
	ld   e, c                                        ; $5234: $59
	ld   sp, hl                                      ; $5235: $f9
	dec  c                                           ; $5236: $0d
	nop                                              ; $5237: $00
	ld   a, [bc]                                     ; $5238: $0a
	inc  e                                           ; $5239: $1c
	ld   b, $03                                      ; $523a: $06 $03
	inc  bc                                          ; $523c: $03
	ld   bc, $f9a1                                   ; $523d: $01 $a1 $f9
	db   $10                                         ; $5240: $10
	ld   l, e                                        ; $5241: $6b
	ld   d, h                                        ; $5242: $54
	ld   e, c                                        ; $5243: $59
	ld   a, [GetRandomNumInPreSpecifiedRange]                                  ; $5244: $fa $10 $0d
	ld   d, b                                        ; $5247: $50
	ld   l, e                                        ; $5248: $6b
	ld   h, c                                        ; $5249: $61
	ld   a, h                                        ; $524a: $7c
	ld   [bc], a                                     ; $524b: $02
	ld   e, e                                        ; $524c: $5b
	dec  b                                           ; $524d: $05
	inc  a                                           ; $524e: $3c
	inc  bc                                          ; $524f: $03
	db   $ed                                         ; $5250: $ed
	sbc  a                                           ; $5251: $9f
	dec  c                                           ; $5252: $0d
	ld   [bc], a                                     ; $5253: $02
	and  l                                           ; $5254: $a5
	sbc  [hl]                                        ; $5255: $9e
	ld   [bc], a                                     ; $5256: $02
	ld   c, a                                        ; $5257: $4f
	ld   [bc], a                                     ; $5258: $02
	jp   Jump_060_7465                               ; $5259: $c3 $65 $74


	sbc  c                                           ; $525c: $99
	sub  b                                           ; $525d: $90
	and  c                                           ; $525e: $a1
	ld   a, b                                        ; $525f: $78
	sbc  a                                           ; $5260: $9f
	dec  c                                           ; $5261: $0d
	nop                                              ; $5262: $00
	ld   a, [bc]                                     ; $5263: $0a
	inc  e                                           ; $5264: $1c
	ld   b, $01                                      ; $5265: $06 $01
	ld   bc, $401d                                   ; $5267: $01 $1d $40
	ld   d, $03                                      ; $526a: $16 $03
	ld   d, $01                                      ; $526c: $16 $01
	ld   [bc], a                                     ; $526e: $02
	jr   z, jr_060_5271                              ; $526f: $28 $00

jr_060_5271:
	ld   bc, $2803                                   ; $5271: $01 $03 $28
	inc  b                                           ; $5274: $04
	jr   nc, @+$5c                                   ; $5275: $30 $5a

	inc  bc                                          ; $5277: $03
	add  b                                           ; $5278: $80
	ld   [hl], h                                     ; $5279: $74
	sbc  c                                           ; $527a: $99
	adc  l                                           ; $527b: $8d
	ld   l, l                                        ; $527c: $6d
	ld   d, d                                        ; $527d: $52
	ld   l, [hl]                                     ; $527e: $6e
	ld   [hl], c                                     ; $527f: $71
	ld   l, l                                        ; $5280: $6d
	ld   e, c                                        ; $5281: $59
	sub  a                                           ; $5282: $97
	dec  c                                           ; $5283: $0d
	sub  b                                           ; $5284: $90
	sub  a                                           ; $5285: $97
	ld   d, d                                        ; $5286: $52
	ld   a, c                                        ; $5287: $79
	ld   [bc], a                                     ; $5288: $02
	ld   a, a                                        ; $5289: $7f
	ld   e, a                                        ; $528a: $5f
	ld   a, [hl]                                     ; $528b: $7e
	ld   d, d                                        ; $528c: $52
	ld   d, d                                        ; $528d: $52
	and  c                                           ; $528e: $a1
	ld   l, [hl]                                     ; $528f: $6e
	sbc  a                                           ; $5290: $9f
	dec  c                                           ; $5291: $0d
	or   [hl]                                        ; $5292: $b6
	push af                                          ; $5293: $f5
	xor  [hl]                                        ; $5294: $ae
	rst  $20                                         ; $5295: $e7
	ei                                               ; $5296: $fb
	ld   a, [$0210]                                  ; $5297: $fa $10 $02
	ld   a, a                                        ; $529a: $7f
	ld   [hl], c                                     ; $529b: $71
	ld   [hl], h                                     ; $529c: $74
	ld   e, l                                        ; $529d: $5d
	sbc  c                                           ; $529e: $99
	ld   a, [$000d]                                  ; $529f: $fa $0d $00
	ld   a, [bc]                                     ; $52a2: $0a
	dec  c                                           ; $52a3: $0d
	nop                                              ; $52a4: $00
	nop                                              ; $52a5: $00
	rrca                                             ; $52a6: $0f
	nop                                              ; $52a7: $00
	ld   bc, $1e09                                   ; $52a8: $01 $09 $1e
	add  hl, hl                                      ; $52ab: $29
	nop                                              ; $52ac: $00
	nop                                              ; $52ad: $00
	add  hl, de                                      ; $52ae: $19
	dec  b                                           ; $52af: $05
	ld   bc, $6c02                                   ; $52b0: $01 $02 $6c
	inc  bc                                          ; $52b3: $03
	ld   d, h                                        ; $52b4: $54
	inc  bc                                          ; $52b5: $03
	add  hl, sp                                      ; $52b6: $39
	inc  bc                                          ; $52b7: $03
	db   $eb                                         ; $52b8: $eb
	inc  b                                           ; $52b9: $04
	call nc, $0286                                   ; $52ba: $d4 $86 $02
	ld   a, a                                        ; $52bd: $7f
	ld   e, l                                        ; $52be: $5d
	nop                                              ; $52bf: $00
	nop                                              ; $52c0: $00
	rlca                                             ; $52c1: $07
	db   $eb                                         ; $52c2: $eb
	ld   b, $02                                      ; $52c3: $06 $02
	inc  bc                                          ; $52c5: $03
	ld   bc, $2000                                   ; $52c6: $01 $00 $20
	nop                                              ; $52c9: $00
	ld   b, $52                                      ; $52ca: $06 $52
	ld   [bc], a                                     ; $52cc: $02
	rrca                                             ; $52cd: $0f
	nop                                              ; $52ce: $00
	ld   bc, $6b01                                   ; $52cf: $01 $01 $6b
	ld   d, h                                        ; $52d2: $54
	ld   l, e                                        ; $52d3: $6b
	ld   d, h                                        ; $52d4: $54
	sbc  [hl]                                        ; $52d5: $9e
	ld   [bc], a                                     ; $52d6: $02
	ld   l, h                                        ; $52d7: $6c
	inc  bc                                          ; $52d8: $03
	ld   d, h                                        ; $52d9: $54
	dec  d                                           ; $52da: $15
	inc  bc                                          ; $52db: $03
	db   $eb                                         ; $52dc: $eb
	inc  b                                           ; $52dd: $04
	call nc, Call_060_780d                           ; $52de: $d4 $0d $78
	and  c                                           ; $52e1: $a1
	ld   e, c                                        ; $52e2: $59
	ld   [hl], a                                     ; $52e3: $77
	ld   d, h                                        ; $52e4: $54
	ld   [hl], l                                     ; $52e5: $75
	ld   h, a                                        ; $52e6: $67
	ld   e, c                                        ; $52e7: $59
	ld   sp, hl                                      ; $52e8: $f9
	dec  c                                           ; $52e9: $0d
	nop                                              ; $52ea: $00
	ld   a, [bc]                                     ; $52eb: $0a
	inc  e                                           ; $52ec: $1c
	ld   b, $03                                      ; $52ed: $06 $03
	inc  bc                                          ; $52ef: $03
	ld   bc, $546b                                   ; $52f0: $01 $6b $54
	ld   e, c                                        ; $52f3: $59
	ld   a, [GetRandomNumInPreSpecifiedRange]                                  ; $52f4: $fa $10 $0d
	ld   d, b                                        ; $52f7: $50
	ld   l, e                                        ; $52f8: $6b
	ld   h, c                                        ; $52f9: $61
	ld   a, h                                        ; $52fa: $7c
	ld   [bc], a                                     ; $52fb: $02
	ld   e, e                                        ; $52fc: $5b
	dec  b                                           ; $52fd: $05
	inc  a                                           ; $52fe: $3c
	inc  bc                                          ; $52ff: $03
	db   $ed                                         ; $5300: $ed
	sbc  a                                           ; $5301: $9f
	dec  c                                           ; $5302: $0d
	ld   [bc], a                                     ; $5303: $02
	and  l                                           ; $5304: $a5
	sbc  [hl]                                        ; $5305: $9e
	ld   [bc], a                                     ; $5306: $02
	ld   c, a                                        ; $5307: $4f
	ld   [bc], a                                     ; $5308: $02
	jp   Jump_060_7465                               ; $5309: $c3 $65 $74


	sbc  c                                           ; $530c: $99
	sub  b                                           ; $530d: $90
	and  c                                           ; $530e: $a1
	ld   a, b                                        ; $530f: $78
	sbc  a                                           ; $5310: $9f
	dec  c                                           ; $5311: $0d
	nop                                              ; $5312: $00
	ld   a, [bc]                                     ; $5313: $0a
	inc  e                                           ; $5314: $1c
	ld   b, $01                                      ; $5315: $06 $01
	ld   bc, $401d                                   ; $5317: $01 $1d $40
	ld   d, $03                                      ; $531a: $16 $03
	ld   d, $01                                      ; $531c: $16 $01
	ld   bc, $0028                                   ; $531e: $01 $28 $00
	ld   bc, $2803                                   ; $5321: $01 $03 $28
	inc  b                                           ; $5324: $04
	jr   nc, jr_060_5381                             ; $5325: $30 $5a

	inc  bc                                          ; $5327: $03
	add  b                                           ; $5328: $80
	ld   [hl], h                                     ; $5329: $74
	sbc  c                                           ; $532a: $99
	adc  l                                           ; $532b: $8d
	ld   l, l                                        ; $532c: $6d
	ld   d, d                                        ; $532d: $52
	ld   l, [hl]                                     ; $532e: $6e
	ld   [hl], c                                     ; $532f: $71
	ld   l, l                                        ; $5330: $6d
	ld   e, c                                        ; $5331: $59
	sub  a                                           ; $5332: $97
	dec  c                                           ; $5333: $0d
	sub  b                                           ; $5334: $90
	sub  a                                           ; $5335: $97
	ld   d, d                                        ; $5336: $52
	ld   a, c                                        ; $5337: $79
	ld   [bc], a                                     ; $5338: $02
	ld   a, a                                        ; $5339: $7f
	ld   e, a                                        ; $533a: $5f
	ld   a, [hl]                                     ; $533b: $7e
	ld   d, d                                        ; $533c: $52
	ld   d, d                                        ; $533d: $52
	and  c                                           ; $533e: $a1
	ld   l, [hl]                                     ; $533f: $6e
	sbc  a                                           ; $5340: $9f
	dec  c                                           ; $5341: $0d
	or   [hl]                                        ; $5342: $b6
	push af                                          ; $5343: $f5
	xor  [hl]                                        ; $5344: $ae
	rst  $20                                         ; $5345: $e7
	ei                                               ; $5346: $fb
	ld   a, [$0210]                                  ; $5347: $fa $10 $02
	ld   a, a                                        ; $534a: $7f
	ld   [hl], c                                     ; $534b: $71
	ld   [hl], h                                     ; $534c: $74
	ld   e, l                                        ; $534d: $5d
	sbc  c                                           ; $534e: $99
	ld   l, d                                        ; $534f: $6a
	ld   a, [$000d]                                  ; $5350: $fa $0d $00
	ld   a, [bc]                                     ; $5353: $0a
	dec  c                                           ; $5354: $0d
	nop                                              ; $5355: $00
	nop                                              ; $5356: $00
	rrca                                             ; $5357: $0f
	nop                                              ; $5358: $00
	ld   bc, $1e09                                   ; $5359: $01 $09 $1e
	add  hl, hl                                      ; $535c: $29
	nop                                              ; $535d: $00
	nop                                              ; $535e: $00
	nop                                              ; $535f: $00
	inc  bc                                          ; $5360: $03
	inc  d                                           ; $5361: $14
	ld   bc, $24a0                                   ; $5362: $01 $a0 $24
	inc  bc                                          ; $5365: $03
	ld   d, c                                        ; $5366: $51
	ld   [bc], a                                     ; $5367: $02
	nop                                              ; $5368: $00
	inc  bc                                          ; $5369: $03
	ld   c, e                                        ; $536a: $4b
	add  hl, hl                                      ; $536b: $29
	add  hl, hl                                      ; $536c: $29
	ld   bc, $2201                                   ; $536d: $01 $01 $22
	inc  e                                           ; $5370: $1c
	nop                                              ; $5371: $00
	ld   c, $02                                      ; $5372: $0e $02
	rrca                                             ; $5374: $0f
	nop                                              ; $5375: $00
	ld   bc, $0102                                   ; $5376: $01 $02 $01
	ld   h, e                                        ; $5379: $63
	ld   [hl], h                                     ; $537a: $74
	rst  $38                                         ; $537b: $ff
	rst  $38                                         ; $537c: $ff
	inc  b                                           ; $537d: $04
	xor  d                                           ; $537e: $aa
	ld   [bc], a                                     ; $537f: $02
	sub  a                                           ; $5380: $97

jr_060_5381:
	ld   [hl], l                                     ; $5381: $75
	sub  b                                           ; $5382: $90
	ld   [hl], d                                     ; $5383: $72
	ld   e, a                                        ; $5384: $5f
	ld   [hl], h                                     ; $5385: $74
	dec  c                                           ; $5386: $0d
	inc  b                                           ; $5387: $04
	ld   b, d                                        ; $5388: $42
	sub  [hl]                                        ; $5389: $96
	ld   d, h                                        ; $538a: $54
	ld   e, c                                        ; $538b: $59
	ld   a, b                                        ; $538c: $78
	rst  $38                                         ; $538d: $ff
	rst  $38                                         ; $538e: $ff
	dec  c                                           ; $538f: $0d
	nop                                              ; $5390: $00
	ld   a, [bc]                                     ; $5391: $0a
	inc  d                                           ; $5392: $14
	ld   b, $01                                      ; $5393: $06 $01
	rrca                                             ; $5395: $0f
	inc  b                                           ; $5396: $04
	nop                                              ; $5397: $00
	ld   bc, $a161                                   ; $5398: $01 $61 $a1
	ld   a, [hl]                                     ; $539b: $7e
	and  c                                           ; $539c: $a1
	ld   a, l                                        ; $539d: $7d
	sbc  [hl]                                        ; $539e: $9e
	ld   l, a                                        ; $539f: $6f
	ld   d, d                                        ; $53a0: $52
	ld   [bc], a                                     ; $53a1: $02
	inc  de                                          ; $53a2: $13
	ld   l, a                                        ; $53a3: $6f
	sub  c                                           ; $53a4: $91
	and  c                                           ; $53a5: $a1
	sbc  a                                           ; $53a6: $9f
	dec  c                                           ; $53a7: $0d
	ld   e, b                                        ; $53a8: $58
	ld   e, e                                        ; $53a9: $5b
	ld   [hl], h                                     ; $53aa: $74
	sbc  c                                           ; $53ab: $99
	ld   sp, hl                                      ; $53ac: $f9
	dec  c                                           ; $53ad: $0d
	nop                                              ; $53ae: $00
	ld   a, [bc]                                     ; $53af: $0a
	inc  d                                           ; $53b0: $14
	ld   a, [bc]                                     ; $53b1: $0a
	ld   bc, $040d                                   ; $53b2: $01 $0d $04
	inc  bc                                          ; $53b5: $03
	rrca                                             ; $53b6: $0f
	nop                                              ; $53b7: $00
	ld   bc, $a301                                   ; $53b8: $01 $01 $a3
	and  l                                           ; $53bb: $a5
	db   $ec                                         ; $53bc: $ec
	cp   d                                           ; $53bd: $ba
	ld   sp, hl                                      ; $53be: $f9
	dec  c                                           ; $53bf: $0d
	ld   [hl], a                                     ; $53c0: $77
	ld   d, h                                        ; $53c1: $54
	ld   h, l                                        ; $53c2: $65
	ld   l, l                                        ; $53c3: $6d
	and  c                                           ; $53c4: $a1
	ld   l, [hl]                                     ; $53c5: $6e
	ld   d, d                                        ; $53c6: $52
	ld   sp, hl                                      ; $53c7: $f9
	dec  c                                           ; $53c8: $0d
	ld   h, c                                        ; $53c9: $61
	and  c                                           ; $53ca: $a1
	ld   a, b                                        ; $53cb: $78
	ld   e, b                                        ; $53cc: $58
	ld   l, e                                        ; $53cd: $6b
	ld   e, l                                        ; $53ce: $5d
	ld   a, c                                        ; $53cf: $79
	rst  $38                                         ; $53d0: $ff
	rst  $38                                         ; $53d1: $ff
	dec  c                                           ; $53d2: $0d
	nop                                              ; $53d3: $00
	ld   a, [bc]                                     ; $53d4: $0a
	rrca                                             ; $53d5: $0f
	inc  b                                           ; $53d6: $04
	inc  bc                                          ; $53d7: $03
	ld   bc, $a154                                   ; $53d8: $01 $54 $a1
	rst  $38                                         ; $53db: $ff
	rst  $38                                         ; $53dc: $ff
	rst  $38                                         ; $53dd: $ff
	ld   d, b                                        ; $53de: $50
	ld   a, h                                        ; $53df: $7c
	ld   a, e                                        ; $53e0: $7b
	dec  c                                           ; $53e1: $0d
	ld   l, a                                        ; $53e2: $6f
	ld   d, d                                        ; $53e3: $52
	ld   [bc], a                                     ; $53e4: $02
	inc  de                                          ; $53e5: $13
	ld   l, a                                        ; $53e6: $6f
	sub  c                                           ; $53e7: $91
	and  c                                           ; $53e8: $a1
	sbc  [hl]                                        ; $53e9: $9e
	and  e                                           ; $53ea: $a3
	and  l                                           ; $53eb: $a5
	db   $ec                                         ; $53ec: $ec
	cp   d                                           ; $53ed: $ba
	ld   [hl], c                                     ; $53ee: $71
	ld   [hl], h                                     ; $53ef: $74
	dec  c                                           ; $53f0: $0d
	adc  l                                           ; $53f1: $8d
	sbc  b                                           ; $53f2: $98
	sub  l                                           ; $53f3: $95
	ld   e, l                                        ; $53f4: $5d
	ld   [hl], h                                     ; $53f5: $74
	ld   e, e                                        ; $53f6: $5b
	ld   e, c                                        ; $53f7: $59
	ld   a, b                                        ; $53f8: $78
	ld   sp, hl                                      ; $53f9: $f9
	dec  c                                           ; $53fa: $0d
	nop                                              ; $53fb: $00
	ld   a, [bc]                                     ; $53fc: $0a
	add  hl, de                                      ; $53fd: $19
	dec  b                                           ; $53fe: $05
	inc  bc                                          ; $53ff: $03
	ld   h, a                                        ; $5400: $67
	ld   h, d                                        ; $5401: $62
	ld   e, l                                        ; $5402: $5d
	ld   e, c                                        ; $5403: $59
	sbc  l                                           ; $5404: $9d
	ld   d, d                                        ; $5405: $52
	ld   d, d                                        ; $5406: $52
	sub  [hl]                                        ; $5407: $96
	nop                                              ; $5408: $00
	nop                                              ; $5409: $00
	dec  b                                           ; $540a: $05
	cp   h                                           ; $540b: $bc
	inc  b                                           ; $540c: $04
	ld   d, b                                        ; $540d: $50
	inc  bc                                          ; $540e: $03
	ld   [hl], b                                     ; $540f: $70
	ld   d, d                                        ; $5410: $52
	sub  [hl]                                        ; $5411: $96
	nop                                              ; $5412: $00
	ld   bc, $c7ba                                   ; $5413: $01 $ba $c7
	xor  [hl]                                        ; $5416: $ae
	ld   a, b                                        ; $5417: $78
	xor  $c8                                         ; $5418: $ee $c8
	and  h                                           ; $541a: $a4
	ld   l, [hl]                                     ; $541b: $6e
	sub  [hl]                                        ; $541c: $96
	nop                                              ; $541d: $00
	ld   [bc], a                                     ; $541e: $02
	rlca                                             ; $541f: $07
	rlc  b                                           ; $5420: $cb $00
	ld   [bc], a                                     ; $5422: $02
	inc  bc                                          ; $5423: $03
	ld   bc, $2000                                   ; $5424: $01 $00 $20
	nop                                              ; $5427: $00
	rlca                                             ; $5428: $07
	ld   hl, $0201                                   ; $5429: $21 $01 $02
	inc  bc                                          ; $542c: $03
	ld   bc, $2001                                   ; $542d: $01 $01 $20
	nop                                              ; $5430: $00
	rlca                                             ; $5431: $07
	ld   e, e                                        ; $5432: $5b
	ld   bc, $0302                                   ; $5433: $01 $02 $03
	ld   bc, $2002                                   ; $5436: $01 $02 $20
	nop                                              ; $5439: $00
	ld   b, $b3                                      ; $543a: $06 $b3
	ld   bc, $000f                                   ; $543c: $01 $0f $00
	ld   bc, $6701                                   ; $543f: $01 $01 $67
	ld   h, d                                        ; $5442: $62
	ld   e, l                                        ; $5443: $5d
	ld   e, c                                        ; $5444: $59
	sbc  l                                           ; $5445: $9d
	ld   d, d                                        ; $5446: $52
	ld   d, d                                        ; $5447: $52
	sub  [hl]                                        ; $5448: $96
	sbc  a                                           ; $5449: $9f
	dec  c                                           ; $544a: $0d
	nop                                              ; $544b: $00
	ld   a, [bc]                                     ; $544c: $0a
	inc  e                                           ; $544d: $1c
	inc  b                                           ; $544e: $04
	inc  bc                                          ; $544f: $03
	inc  bc                                          ; $5450: $03
	dec  e                                           ; $5451: $1d
	ld   b, b                                        ; $5452: $40
	inc  d                                           ; $5453: $14
	inc  bc                                          ; $5454: $03
	inc  d                                           ; $5455: $14
	ld   bc, $2901                                   ; $5456: $01 $01 $29
	nop                                              ; $5459: $00
	ld   bc, $9d59                                   ; $545a: $01 $59 $9d
	ld   d, d                                        ; $545d: $52
	ld   d, d                                        ; $545e: $52
	ld   h, [hl]                                     ; $545f: $66
	sub  c                                           ; $5460: $91

Jump_060_5461:
	pop  bc                                          ; $5461: $c1
	db   $e3                                         ; $5462: $e3
	ld   a, b                                        ; $5463: $78
	ld   a, h                                        ; $5464: $7c
	rst  $38                                         ; $5465: $ff
	rst  $38                                         ; $5466: $ff
	dec  c                                           ; $5467: $0d
	adc  l                                           ; $5468: $8d
	sbc  b                                           ; $5469: $98
	sub  l                                           ; $546a: $95
	ld   e, l                                        ; $546b: $5d
	ld   [hl], h                                     ; $546c: $74
	ld   e, e                                        ; $546d: $5b
	ld   h, [hl]                                     ; $546e: $66
	sub  c                                           ; $546f: $91
	ld   a, b                                        ; $5470: $78
	ld   d, d                                        ; $5471: $52
	sub  b                                           ; $5472: $90
	and  c                                           ; $5473: $a1
	rst  $38                                         ; $5474: $ff
	rst  $38                                         ; $5475: $ff
	dec  c                                           ; $5476: $0d
	nop                                              ; $5477: $00
	ld   a, [bc]                                     ; $5478: $0a
	ld   bc, $5989                                   ; $5479: $01 $89 $59
	ld   a, h                                        ; $547c: $7c
	add  b                                           ; $547d: $80
	halt                                             ; $547e: $76
	ld   a, c                                        ; $547f: $79
	ld   e, e                                        ; $5480: $5b
	ld   d, d                                        ; $5481: $52
	ld   [hl], h                                     ; $5482: $74
	adc  l                                           ; $5483: $8d
	sbc  c                                           ; $5484: $99
	rst  $38                                         ; $5485: $ff
	rst  $38                                         ; $5486: $ff
	dec  c                                           ; $5487: $0d
	nop                                              ; $5488: $00
	ld   a, [bc]                                     ; $5489: $0a
	dec  c                                           ; $548a: $0d
	nop                                              ; $548b: $00
	nop                                              ; $548c: $00
	rrca                                             ; $548d: $0f
	nop                                              ; $548e: $00
	ld   bc, $1e09                                   ; $548f: $01 $09 $1e
	nop                                              ; $5492: $00
	rrca                                             ; $5493: $0f
	nop                                              ; $5494: $00
	ld   bc, $0501                                   ; $5495: $01 $01 $05
	cp   h                                           ; $5498: $bc
	inc  b                                           ; $5499: $04
	ld   d, b                                        ; $549a: $50
	inc  bc                                          ; $549b: $03
	ld   [hl], b                                     ; $549c: $70
	ld   d, d                                        ; $549d: $52
	sub  [hl]                                        ; $549e: $96
	sbc  a                                           ; $549f: $9f
	dec  c                                           ; $54a0: $0d
	nop                                              ; $54a1: $00
	ld   a, [bc]                                     ; $54a2: $0a
	inc  e                                           ; $54a3: $1c
	inc  b                                           ; $54a4: $04
	rlca                                             ; $54a5: $07
	rlca                                             ; $54a6: $07
	dec  e                                           ; $54a7: $1d
	ld   b, b                                        ; $54a8: $40
	inc  d                                           ; $54a9: $14
	inc  bc                                          ; $54aa: $03
	inc  d                                           ; $54ab: $14
	ld   bc, $2903                                   ; $54ac: $01 $03 $29
	nop                                              ; $54af: $00
	ld   bc, $526f                                   ; $54b0: $01 $6f $52
	ld   [bc], a                                     ; $54b3: $02
	inc  de                                          ; $54b4: $13
	ld   l, a                                        ; $54b5: $6f
	sub  c                                           ; $54b6: $91
	and  c                                           ; $54b7: $a1
	ld   a, h                                        ; $54b8: $7c
	pop  de                                          ; $54b9: $d1
	xor  h                                           ; $54ba: $ac
	ld   c, a                                        ; $54bb: $4f
	ld   a, [$000d]                                  ; $54bc: $fa $0d $00
	ld   a, [bc]                                     ; $54bf: $0a
	dec  b                                           ; $54c0: $05
	ld   b, b                                        ; $54c1: $40
	ld   c, e                                        ; $54c2: $4b
	ld   [bc], a                                     ; $54c3: $02
	nop                                              ; $54c4: $00
	nop                                              ; $54c5: $00
	dec  b                                           ; $54c6: $05
	ld   b, b                                        ; $54c7: $40
	ld   d, c                                        ; $54c8: $51
	ld   bc, $0002                                   ; $54c9: $01 $02 $00
	nop                                              ; $54cc: $00
	rrca                                             ; $54cd: $0f
	nop                                              ; $54ce: $00
	ld   bc, $ba01                                   ; $54cf: $01 $01 $ba
	rst  ToBoot                                         ; $54d2: $c7
	xor  [hl]                                        ; $54d3: $ae
	ld   a, b                                        ; $54d4: $78
	xor  $c8                                         ; $54d5: $ee $c8
	and  h                                           ; $54d7: $a4
	ld   l, [hl]                                     ; $54d8: $6e
	sub  [hl]                                        ; $54d9: $96
	sbc  a                                           ; $54da: $9f
	dec  c                                           ; $54db: $0d
	nop                                              ; $54dc: $00
	ld   a, [bc]                                     ; $54dd: $0a
	inc  e                                           ; $54de: $1c
	inc  b                                           ; $54df: $04
	dec  b                                           ; $54e0: $05
	dec  b                                           ; $54e1: $05
	dec  e                                           ; $54e2: $1d
	ld   b, b                                        ; $54e3: $40
	inc  d                                           ; $54e4: $14
	inc  bc                                          ; $54e5: $03
	inc  d                                           ; $54e6: $14
	ld   bc, $2803                                   ; $54e7: $01 $03 $28
	nop                                              ; $54ea: $00
	ld   bc, $f5dc                                   ; $54eb: $01 $dc $f5
	ret                                              ; $54ee: $c9


	ld   a, c                                        ; $54ef: $79
	ld   sp, hl                                      ; $54f0: $f9
	dec  c                                           ; $54f1: $0d
	sbc  l                                           ; $54f2: $9d
	ei                                               ; $54f3: $fb
	ld   d, d                                        ; $54f4: $52
	sbc  [hl]                                        ; $54f5: $9e
	ld   h, c                                        ; $54f6: $61
	sbc  d                                           ; $54f7: $9a
	ld   [hl], l                                     ; $54f8: $75
	ld   d, b                                        ; $54f9: $50
	and  c                                           ; $54fa: $a1
	ld   h, l                                        ; $54fb: $65
	and  c                                           ; $54fc: $a1
	ld   h, l                                        ; $54fd: $65
	ld   [hl], h                                     ; $54fe: $74
	dec  c                                           ; $54ff: $0d
	ld   a, e                                        ; $5500: $7b
	adc  [hl]                                        ; $5501: $8e
	sbc  d                                           ; $5502: $9a
	sbc  c                                           ; $5503: $99
	sub  [hl]                                        ; $5504: $96
	db   $fc                                         ; $5505: $fc
	sbc  a                                           ; $5506: $9f
	dec  c                                           ; $5507: $0d
	nop                                              ; $5508: $00
	ld   a, [bc]                                     ; $5509: $0a
	ld   bc, $9850                                   ; $550a: $01 $50 $98
	ld   e, d                                        ; $550d: $5a
	halt                                             ; $550e: $76
	ld   d, h                                        ; $550f: $54
	sbc  [hl]                                        ; $5510: $9e
	ld   l, a                                        ; $5511: $6f
	ld   d, d                                        ; $5512: $52
	ld   [bc], a                                     ; $5513: $02
	inc  de                                          ; $5514: $13
	ld   l, a                                        ; $5515: $6f
	sub  c                                           ; $5516: $91
	and  c                                           ; $5517: $a1
	sbc  a                                           ; $5518: $9f
	dec  c                                           ; $5519: $0d
	nop                                              ; $551a: $00
	ld   a, [bc]                                     ; $551b: $0a
	dec  c                                           ; $551c: $0d
	nop                                              ; $551d: $00
	nop                                              ; $551e: $00
	rrca                                             ; $551f: $0f
	nop                                              ; $5520: $00
	ld   bc, $1e09                                   ; $5521: $01 $09 $1e
	nop                                              ; $5524: $00
	inc  e                                           ; $5525: $1c
	inc  b                                           ; $5526: $04
	inc  bc                                          ; $5527: $03
	inc  bc                                          ; $5528: $03
	ld   bc, $a16b                                   ; $5529: $01 $6b $a1
	ld   a, b                                        ; $552c: $78
	ld   a, c                                        ; $552d: $79
	ld   a, b                                        ; $552e: $78
	sub  d                                           ; $552f: $92
	adc  [hl]                                        ; $5530: $8e
	sub  [hl]                                        ; $5531: $96
	ld   d, h                                        ; $5532: $54
	ld   a, b                                        ; $5533: $78
	dec  c                                           ; $5534: $0d
	ld   h, l                                        ; $5535: $65
	ld   [hl], d                                     ; $5536: $72
	sub  b                                           ; $5537: $90
	and  c                                           ; $5538: $a1
	ld   l, [hl]                                     ; $5539: $6e
	ld   [hl], c                                     ; $553a: $71
	ld   l, l                                        ; $553b: $6d
	ld   sp, hl                                      ; $553c: $f9
	dec  c                                           ; $553d: $0d
	nop                                              ; $553e: $00
	ld   a, [bc]                                     ; $553f: $0a
	inc  e                                           ; $5540: $1c
	inc  b                                           ; $5541: $04
	ld   [bc], a                                     ; $5542: $02
	ld   [bc], a                                     ; $5543: $02
	dec  e                                           ; $5544: $1d
	ld   b, b                                        ; $5545: $40
	inc  d                                           ; $5546: $14
	inc  bc                                          ; $5547: $03
	inc  d                                           ; $5548: $14
	ld   bc, $2902                                   ; $5549: $01 $02 $29
	nop                                              ; $554c: $00
	ld   bc, $5490                                   ; $554d: $01 $90 $54
	ld   d, d                                        ; $5550: $52
	ld   d, d                                        ; $5551: $52
	ld   a, [$890d]                                  ; $5552: $fa $0d $89
	ld   e, c                                        ; $5555: $59
	ld   a, h                                        ; $5556: $7c
	add  b                                           ; $5557: $80
	halt                                             ; $5558: $76
	ld   a, c                                        ; $5559: $79
	ld   e, e                                        ; $555a: $5b
	ld   e, l                                        ; $555b: $5d
	ld   e, c                                        ; $555c: $59
	sub  a                                           ; $555d: $97
	sbc  a                                           ; $555e: $9f
	dec  c                                           ; $555f: $0d
	nop                                              ; $5560: $00
	ld   a, [bc]                                     ; $5561: $0a
	dec  c                                           ; $5562: $0d
	nop                                              ; $5563: $00
	nop                                              ; $5564: $00
	rrca                                             ; $5565: $0f
	nop                                              ; $5566: $00
	ld   bc, $1e09                                   ; $5567: $01 $09 $1e
	nop                                              ; $556a: $00
	nop                                              ; $556b: $00
	inc  bc                                          ; $556c: $03
	ld   [de], a                                     ; $556d: $12
	ld   bc, $24aa                                   ; $556e: $01 $aa $24
	inc  b                                           ; $5571: $04
	add  b                                           ; $5572: $80
	ret  z                                           ; $5573: $c8

	ld   bc, $20ff                                   ; $5574: $01 $ff $20
	inc  e                                           ; $5577: $1c
	nop                                              ; $5578: $00
	ld   c, $01                                      ; $5579: $0e $01
	rrca                                             ; $557b: $0f
	nop                                              ; $557c: $00
	ld   bc, $0102                                   ; $557d: $01 $02 $01
	and  c                                           ; $5580: $a1
	db   $fc                                         ; $5581: $fc
	sub  [hl]                                        ; $5582: $96
	ld   e, l                                        ; $5583: $5d
	inc  b                                           ; $5584: $04
	ld   b, d                                        ; $5585: $42
	ld   l, l                                        ; $5586: $6d
	sbc  a                                           ; $5587: $9f
	inc  b                                           ; $5588: $04
	dec  c                                           ; $5589: $0d
	inc  bc                                          ; $558a: $03
	cp   $d1                                         ; $558b: $fe $d1
	call nz, $ecc2                                   ; $558d: $c4 $c2 $ec
	ld   a, [$610d]                                  ; $5590: $fa $0d $61
	and  c                                           ; $5593: $a1
	ld   a, b                                        ; $5594: $78
	ld   [bc], a                                     ; $5595: $02
	and  c                                           ; $5596: $a1
	inc  b                                           ; $5597: $04
	sbc  [hl]                                        ; $5598: $9e
	ld   a, h                                        ; $5599: $7c
	ld   d, d                                        ; $559a: $52
	ld   d, d                                        ; $559b: $52
	inc  b                                           ; $559c: $04
	xor  d                                           ; $559d: $aa
	ld   a, l                                        ; $559e: $7d
	sbc  [hl]                                        ; $559f: $9e
	inc  b                                           ; $55a0: $04
	ld   c, c                                        ; $55a1: $49
	ld   e, c                                        ; $55a2: $59
	dec  c                                           ; $55a3: $0d
	ld   h, a                                        ; $55a4: $67
	ld   a, [hl]                                     ; $55a5: $7e
	sub  a                                           ; $55a6: $97
	ld   h, l                                        ; $55a7: $65
	ld   d, d                                        ; $55a8: $52
	ld   [bc], a                                     ; $55a9: $02
	jp   Jump_060_505a                               ; $55aa: $c3 $5a $50


	sbc  b                                           ; $55ad: $98
	ld   l, e                                        ; $55ae: $6b
	ld   d, h                                        ; $55af: $54
	ld   l, [hl]                                     ; $55b0: $6e
	ld   a, b                                        ; $55b1: $78
	sbc  a                                           ; $55b2: $9f
	dec  c                                           ; $55b3: $0d
	nop                                              ; $55b4: $00
	ld   a, [bc]                                     ; $55b5: $0a
	inc  d                                           ; $55b6: $14
	ld   b, $01                                      ; $55b7: $06 $01
	rrca                                             ; $55b9: $0f
	ld   [bc], a                                     ; $55ba: $02
	nop                                              ; $55bb: $00
	ld   bc, $0008                                   ; $55bc: $01 $08 $00
	ld   h, e                                        ; $55bf: $63
	and  c                                           ; $55c0: $a1
	sbc  a                                           ; $55c1: $9f
	dec  c                                           ; $55c2: $0d
	ld   l, a                                        ; $55c3: $6f
	sub  l                                           ; $55c4: $95
	ld   [hl], c                                     ; $55c5: $71
	halt                                             ; $55c6: $76
	sub  [hl]                                        ; $55c7: $96
	sbc  e                                           ; $55c8: $9b
	ld   h, l                                        ; $55c9: $65
	ld   d, d                                        ; $55ca: $52
	ld   [hl], l                                     ; $55cb: $75
	ld   h, a                                        ; $55cc: $67
	ld   e, c                                        ; $55cd: $59
	ld   sp, hl                                      ; $55ce: $f9
	dec  c                                           ; $55cf: $0d
	nop                                              ; $55d0: $00
	ld   a, [bc]                                     ; $55d1: $0a
	rrca                                             ; $55d2: $0f
	nop                                              ; $55d3: $00
	ld   bc, $7d01                                   ; $55d4: $01 $01 $7d
	ld   d, d                                        ; $55d7: $52
	sbc  [hl]                                        ; $55d8: $9e
	ld   [hl], a                                     ; $55d9: $77
	ld   d, h                                        ; $55da: $54
	ld   l, h                                        ; $55db: $6c
	sbc  a                                           ; $55dc: $9f
	dec  c                                           ; $55dd: $0d
	nop                                              ; $55de: $00
	ld   a, [bc]                                     ; $55df: $0a
	inc  d                                           ; $55e0: $14
	ld   a, [bc]                                     ; $55e1: $0a
	ld   bc, $021c                                   ; $55e2: $01 $1c $02
	ld   bc, $0101                                   ; $55e5: $01 $01 $01
	ld   e, b                                        ; $55e8: $58
	ld   a, l                                        ; $55e9: $7d
	sub  [hl]                                        ; $55ea: $96
	ld   d, h                                        ; $55eb: $54
	sbc  a                                           ; $55ec: $9f
	dec  c                                           ; $55ed: $0d
	nop                                              ; $55ee: $00
	ld   a, [bc]                                     ; $55ef: $0a
	rrca                                             ; $55f0: $0f
	nop                                              ; $55f1: $00
	ld   bc, $020d                                   ; $55f2: $01 $0d $02
	ld   bc, $5801                                   ; $55f5: $01 $01 $58
	ld   a, l                                        ; $55f8: $7d
	sub  [hl]                                        ; $55f9: $96
	ld   d, h                                        ; $55fa: $54
	ld   h, d                                        ; $55fb: $62
	ld   h, h                                        ; $55fc: $64
	ld   d, d                                        ; $55fd: $52
	adc  h                                           ; $55fe: $8c
	ld   h, a                                        ; $55ff: $67
	sbc  a                                           ; $5600: $9f
	dec  c                                           ; $5601: $0d
	ld   h, a                                        ; $5602: $67
	adc  l                                           ; $5603: $8d
	sbc  d                                           ; $5604: $9a
	ld   h, e                                        ; $5605: $63
	and  c                                           ; $5606: $a1
	sbc  a                                           ; $5607: $9f
	dec  c                                           ; $5608: $0d
	inc  b                                           ; $5609: $04
	ld   c, c                                        ; $560a: $49
	ld   e, c                                        ; $560b: $59
	ld   h, d                                        ; $560c: $62
	inc  b                                           ; $560d: $04
	di                                               ; $560e: $f3
	ld   [hl], l                                     ; $560f: $75
	ld   h, a                                        ; $5610: $67
	ld   e, c                                        ; $5611: $59
	ld   sp, hl                                      ; $5612: $f9
	dec  c                                           ; $5613: $0d
	nop                                              ; $5614: $00
	ld   a, [bc]                                     ; $5615: $0a
	inc  e                                           ; $5616: $1c
	ld   [bc], a                                     ; $5617: $02
	nop                                              ; $5618: $00
	nop                                              ; $5619: $00
	ld   bc, $0008                                   ; $561a: $01 $08 $00
	ld   h, e                                        ; $561d: $63
	and  c                                           ; $561e: $a1
	sbc  a                                           ; $561f: $9f
	dec  c                                           ; $5620: $0d
	inc  bc                                          ; $5621: $03
	adc  e                                           ; $5622: $8b
	ld   a, l                                        ; $5623: $7d
	sbc  [hl]                                        ; $5624: $9e
	ld   h, c                                        ; $5625: $61
	ld   a, h                                        ; $5626: $7c
	sbc  l                                           ; $5627: $9d
	ld   l, l                                        ; $5628: $6d
	ld   e, l                                        ; $5629: $5d
	ld   h, l                                        ; $562a: $65
	ld   e, c                                        ; $562b: $59
	sub  a                                           ; $562c: $97
	sbc  [hl]                                        ; $562d: $9e
	dec  c                                           ; $562e: $0d
	ld   e, b                                        ; $562f: $58
	ld   [bc], a                                     ; $5630: $02
	add  b                                           ; $5631: $80
	ld   d, d                                        ; $5632: $52
	ld   e, d                                        ; $5633: $5a
	ld   d, b                                        ; $5634: $50
	sbc  c                                           ; $5635: $99
	ld   a, h                                        ; $5636: $7c
	ld   [hl], l                                     ; $5637: $75
	ld   h, a                                        ; $5638: $67
	ld   e, d                                        ; $5639: $5a
	rst  $38                                         ; $563a: $ff
	rst  $38                                         ; $563b: $ff
	dec  c                                           ; $563c: $0d
	nop                                              ; $563d: $00
	ld   a, [bc]                                     ; $563e: $0a
	ld   bc, $a502                                   ; $563f: $01 $02 $a5
	inc  b                                           ; $5642: $04
	xor  d                                           ; $5643: $aa
	sbc  [hl]                                        ; $5644: $9e
	ld   [bc], a                                     ; $5645: $02
	ldh  a, [rTIMA]                                  ; $5646: $f0 $05
	ld   e, c                                        ; $5648: $59
	inc  bc                                          ; $5649: $03
	add  [hl]                                        ; $564a: $86
	inc  bc                                          ; $564b: $03
	call z, Call_060_7c76                            ; $564c: $cc $76 $7c
	ld   e, b                                        ; $564f: $58
	inc  bc                                          ; $5650: $03
	ld   l, d                                        ; $5651: $6a
	ld   [bc], a                                     ; $5652: $02
	jp   $8602                                       ; $5653: $c3 $02 $86


	ld   e, d                                        ; $5656: $5a
	dec  c                                           ; $5657: $0d
	ld   d, b                                        ; $5658: $50
	sbc  c                                           ; $5659: $99
	ld   a, h                                        ; $565a: $7c
	ld   [hl], l                                     ; $565b: $75
	ld   h, a                                        ; $565c: $67
	ld   e, d                                        ; $565d: $5a
	sbc  [hl]                                        ; $565e: $9e
	inc  bc                                          ; $565f: $03
	ld   l, h                                        ; $5660: $6c
	dec  b                                           ; $5661: $05
	ld   h, $5a                                      ; $5662: $26 $5a
	dec  b                                           ; $5664: $05
	jr   z, jr_060_566b                              ; $5665: $28 $04

	di                                               ; $5667: $f3
	ld   [hl], l                                     ; $5668: $75
	dec  c                                           ; $5669: $0d
	ld   [bc], a                                     ; $566a: $02

jr_060_566b:
	ld   a, a                                        ; $566b: $7f
	ld   e, a                                        ; $566c: $5f
	ld   a, b                                        ; $566d: $78
	ld   e, l                                        ; $566e: $5d
	ld   a, b                                        ; $566f: $78
	ld   [hl], c                                     ; $5670: $71
	ld   l, l                                        ; $5671: $6d
	and  c                                           ; $5672: $a1
	ld   [hl], l                                     ; $5673: $75
	ld   h, a                                        ; $5674: $67
	ld   a, h                                        ; $5675: $7c
	sbc  a                                           ; $5676: $9f
	dec  c                                           ; $5677: $0d
	nop                                              ; $5678: $00
	ld   a, [bc]                                     ; $5679: $0a
	ld   bc, $8503                                   ; $567a: $01 $03 $85
	inc  b                                           ; $567d: $04
	xor  e                                           ; $567e: $ab
	inc  bc                                          ; $567f: $03
	add  d                                           ; $5680: $82
	ld   a, c                                        ; $5681: $79
	ld   a, l                                        ; $5682: $7d
	sbc  l                                           ; $5683: $9d
	ld   l, l                                        ; $5684: $6d
	ld   e, l                                        ; $5685: $5d
	ld   h, l                                        ; $5686: $65
	ld   e, c                                        ; $5687: $59
	sub  a                                           ; $5688: $97
	dec  c                                           ; $5689: $0d
	dec  b                                           ; $568a: $05
	jr   nz, jr_060_56f2                             ; $568b: $20 $65

	ld   [hl], h                                     ; $568d: $74
	ld   e, b                                        ; $568e: $58
	ld   e, e                                        ; $568f: $5b
	adc  h                                           ; $5690: $8c
	ld   h, a                                        ; $5691: $67
	ld   e, c                                        ; $5692: $59
	sub  a                                           ; $5693: $97
	sbc  [hl]                                        ; $5694: $9e
	ld   [bc], a                                     ; $5695: $02
	and  l                                           ; $5696: $a5
	inc  b                                           ; $5697: $04
	xor  d                                           ; $5698: $aa
	ld   a, l                                        ; $5699: $7d
	dec  c                                           ; $569a: $0d
	sbc  l                                           ; $569b: $9d
	ld   l, l                                        ; $569c: $6d
	ld   e, l                                        ; $569d: $5d
	ld   h, l                                        ; $569e: $65
	ld   a, c                                        ; $569f: $79
	inc  b                                           ; $56a0: $04
	ld   [hl], c                                     ; $56a1: $71
	ld   e, e                                        ; $56a2: $5b
	ld   [bc], a                                     ; $56a3: $02
	ld   a, e                                        ; $56a4: $7b
	ld   d, d                                        ; $56a5: $52
	ld   a, b                                        ; $56a6: $78
	ld   h, e                                        ; $56a7: $63
	ld   d, d                                        ; $56a8: $52
	sbc  a                                           ; $56a9: $9f
	dec  c                                           ; $56aa: $0d
	nop                                              ; $56ab: $00
	ld   a, [bc]                                     ; $56ac: $0a
	add  hl, de                                      ; $56ad: $19
	dec  b                                           ; $56ae: $05
	ld   [bc], a                                     ; $56af: $02
	ld   a, l                                        ; $56b0: $7d
	ld   d, d                                        ; $56b1: $52
	nop                                              ; $56b2: $00
	nop                                              ; $56b3: $00
	ld   h, c                                        ; $56b4: $61
	halt                                             ; $56b5: $76
	sbc  l                                           ; $56b6: $9d
	sbc  c                                           ; $56b7: $99
	nop                                              ; $56b8: $00
	ld   bc, $5607                                   ; $56b9: $01 $07 $56
	ld   bc, $0302                                   ; $56bc: $01 $02 $03
	ld   bc, $2000                                   ; $56bf: $01 $00 $20
	nop                                              ; $56c2: $00
	rlca                                             ; $56c3: $07
	add  b                                           ; $56c4: $80
	ld   bc, $0302                                   ; $56c5: $01 $02 $03
	ld   bc, $2001                                   ; $56c8: $01 $01 $20
	nop                                              ; $56cb: $00
	ld   b, $06                                      ; $56cc: $06 $06
	ld   [bc], a                                     ; $56ce: $02
	rrca                                             ; $56cf: $0f
	nop                                              ; $56d0: $00
	ld   bc, $9d01                                   ; $56d1: $01 $01 $9d
	ld   e, c                                        ; $56d4: $59
	sbc  b                                           ; $56d5: $98
	adc  h                                           ; $56d6: $8c
	ld   h, l                                        ; $56d7: $65
	ld   l, l                                        ; $56d8: $6d
	sbc  a                                           ; $56d9: $9f
	ld   h, a                                        ; $56da: $67
	adc  l                                           ; $56db: $8d
	sbc  d                                           ; $56dc: $9a
	ld   h, e                                        ; $56dd: $63
	and  c                                           ; $56de: $a1
	ld   a, c                                        ; $56df: $79
	dec  c                                           ; $56e0: $0d
	ret  nc                                          ; $56e1: $d0

	cp   c                                           ; $56e2: $b9
	and  b                                           ; $56e3: $a0
	ld   e, c                                        ; $56e4: $59
	ld   e, c                                        ; $56e5: $59
	ld   l, c                                        ; $56e6: $69
	ld   a, b                                        ; $56e7: $78
	ld   d, d                                        ; $56e8: $52
	sub  [hl]                                        ; $56e9: $96
	ld   d, h                                        ; $56ea: $54
	dec  c                                           ; $56eb: $0d
	ld   e, d                                        ; $56ec: $5a
	and  c                                           ; $56ed: $a1
	ld   a, [hl]                                     ; $56ee: $7e
	sbc  b                                           ; $56ef: $98
	adc  h                                           ; $56f0: $8c
	ld   h, a                                        ; $56f1: $67

jr_060_56f2:
	sbc  a                                           ; $56f2: $9f
	dec  c                                           ; $56f3: $0d
	nop                                              ; $56f4: $00
	ld   a, [bc]                                     ; $56f5: $0a
	ld   b, $5c                                      ; $56f6: $06 $5c
	ld   [bc], a                                     ; $56f8: $02
	rrca                                             ; $56f9: $0f
	nop                                              ; $56fa: $00
	ld   bc, $6701                                   ; $56fb: $01 $01 $67
	adc  l                                           ; $56fe: $8d
	adc  h                                           ; $56ff: $8c
	ld   l, c                                        ; $5700: $69
	and  c                                           ; $5701: $a1
	sbc  a                                           ; $5702: $9f
	dec  c                                           ; $5703: $0d
	ld   [bc], a                                     ; $5704: $02
	and  l                                           ; $5705: $a5
	inc  b                                           ; $5706: $04
	xor  d                                           ; $5707: $aa
	ld   a, l                                        ; $5708: $7d
	ld   l, a                                        ; $5709: $6f
	sub  l                                           ; $570a: $95
	ld   [hl], c                                     ; $570b: $71
	halt                                             ; $570c: $76
	dec  c                                           ; $570d: $0d
	inc  b                                           ; $570e: $04
	di                                               ; $570f: $f3
	ld   e, d                                        ; $5710: $5a
	ld   d, b                                        ; $5711: $50
	sbc  c                                           ; $5712: $99
	and  c                                           ; $5713: $a1
	ld   [hl], l                                     ; $5714: $75
	ld   h, a                                        ; $5715: $67
	sbc  a                                           ; $5716: $9f
	dec  c                                           ; $5717: $0d
	nop                                              ; $5718: $00
	ld   a, [bc]                                     ; $5719: $0a
	inc  e                                           ; $571a: $1c
	ld   [bc], a                                     ; $571b: $02
	inc  bc                                          ; $571c: $03
	inc  bc                                          ; $571d: $03
	dec  e                                           ; $571e: $1d
	ld   b, b                                        ; $571f: $40
	ld   [de], a                                     ; $5720: $12
	inc  bc                                          ; $5721: $03
	ld   [de], a                                     ; $5722: $12
	ld   bc, $2902                                   ; $5723: $01 $02 $29
	nop                                              ; $5726: $00
	ld   bc, $a178                                   ; $5727: $01 $78 $a1
	ld   [hl], l                                     ; $572a: $75
	ld   h, a                                        ; $572b: $67
	ld   [hl], c                                     ; $572c: $71
	ld   [hl], h                                     ; $572d: $74
	ld   a, [$7c61]                                  ; $572e: $fa $61 $7c
	sbc  l                                           ; $5731: $9d
	ld   l, l                                        ; $5732: $6d
	ld   e, l                                        ; $5733: $5d
	ld   h, l                                        ; $5734: $65
	ld   e, d                                        ; $5735: $5a
	dec  c                                           ; $5736: $0d
	inc  bc                                          ; $5737: $03
	ret  c                                           ; $5738: $d8

	and  b                                           ; $5739: $a0
	ld   [bc], a                                     ; $573a: $02
	inc  [hl]                                        ; $573b: $34
	ld   h, b                                        ; $573c: $60
	ld   [hl], h                                     ; $573d: $74
	ld   l, l                                        ; $573e: $6d
	ld   a, h                                        ; $573f: $7c
	and  c                                           ; $5740: $a1
	ld   [hl], l                                     ; $5741: $75
	ld   d, d                                        ; $5742: $52
	sbc  c                                           ; $5743: $99
	ld   a, h                                        ; $5744: $7c
	ld   a, c                                        ; $5745: $79
	rst  $38                                         ; $5746: $ff
	dec  c                                           ; $5747: $0d
	ld   a, b                                        ; $5748: $78
	sbc  [hl]                                        ; $5749: $9e
	ld   a, b                                        ; $574a: $78
	and  c                                           ; $574b: $a1
	ld   [hl], h                                     ; $574c: $74
	inc  bc                                          ; $574d: $03
	add  d                                           ; $574e: $82
	ld   a, b                                        ; $574f: $78
	and  c                                           ; $5750: $a1
	ld   [hl], l                                     ; $5751: $75
	ld   h, l                                        ; $5752: $65
	sub  l                                           ; $5753: $95
	ld   d, h                                        ; $5754: $54
	rst  $38                                         ; $5755: $ff
	rst  $38                                         ; $5756: $ff
	dec  c                                           ; $5757: $0d
	nop                                              ; $5758: $00
	ld   a, [bc]                                     ; $5759: $0a
	inc  e                                           ; $575a: $1c
	ld   [bc], a                                     ; $575b: $02
	rlca                                             ; $575c: $07
	rlca                                             ; $575d: $07
	ld   bc, $ffff                                   ; $575e: $01 $ff $ff
	adc  h                                           ; $5761: $8c
	ld   d, b                                        ; $5762: $50
	sbc  [hl]                                        ; $5763: $9e
	ld   h, l                                        ; $5764: $65
	ld   e, c                                        ; $5765: $59
	ld   l, l                                        ; $5766: $6d
	ld   h, d                                        ; $5767: $62
	ld   h, h                                        ; $5768: $64
	ld   d, d                                        ; $5769: $52
	adc  h                                           ; $576a: $8c
	dec  c                                           ; $576b: $0d
	ld   l, c                                        ; $576c: $69
	and  c                                           ; $576d: $a1
	sbc  l                                           ; $576e: $9d
	ld   a, e                                        ; $576f: $7b
	sbc  a                                           ; $5770: $9f
	dec  c                                           ; $5771: $0d
	nop                                              ; $5772: $00
	ld   a, [bc]                                     ; $5773: $0a
	dec  c                                           ; $5774: $0d
	nop                                              ; $5775: $00
	nop                                              ; $5776: $00
	rrca                                             ; $5777: $0f
	nop                                              ; $5778: $00
	ld   bc, $1e09                                   ; $5779: $01 $09 $1e
	add  hl, hl                                      ; $577c: $29
	ld   bc, $1c00                                   ; $577d: $01 $00 $1c
	ld   [bc], a                                     ; $5780: $02
	ld   [bc], a                                     ; $5781: $02
	ld   [bc], a                                     ; $5782: $02
	dec  e                                           ; $5783: $1d
	ld   b, b                                        ; $5784: $40
	ld   [de], a                                     ; $5785: $12
	inc  bc                                          ; $5786: $03
	ld   [de], a                                     ; $5787: $12
	ld   bc, $2902                                   ; $5788: $01 $02 $29
	nop                                              ; $578b: $00
	ld   bc, $9704                                   ; $578c: $01 $04 $97
	ld   [bc], a                                     ; $578f: $02
	jp   Jump_060_505a                               ; $5790: $c3 $5a $50


	sbc  b                                           ; $5793: $98
	adc  h                                           ; $5794: $8c
	ld   l, c                                        ; $5795: $69
	and  c                                           ; $5796: $a1
	sbc  l                                           ; $5797: $9d
	sbc  a                                           ; $5798: $9f
	dec  c                                           ; $5799: $0d
	ld   h, c                                        ; $579a: $61
	ld   a, h                                        ; $579b: $7c
	sbc  l                                           ; $579c: $9d
	ld   l, l                                        ; $579d: $6d
	ld   e, l                                        ; $579e: $5d
	ld   h, l                                        ; $579f: $65
	ld   e, d                                        ; $57a0: $5a
	inc  bc                                          ; $57a1: $03
	ret  c                                           ; $57a2: $d8

	and  b                                           ; $57a3: $a0
	ld   [bc], a                                     ; $57a4: $02
	inc  [hl]                                        ; $57a5: $34
	ld   h, b                                        ; $57a6: $60
	ld   [hl], h                                     ; $57a7: $74
	dec  c                                           ; $57a8: $0d
	ld   l, l                                        ; $57a9: $6d
	ld   a, h                                        ; $57aa: $7c
	and  c                                           ; $57ab: $a1
	ld   [hl], l                                     ; $57ac: $75
	ld   d, d                                        ; $57ad: $52
	sbc  c                                           ; $57ae: $99
	ld   a, h                                        ; $57af: $7c
	halt                                             ; $57b0: $76
	ld   d, d                                        ; $57b1: $52
	ld   d, h                                        ; $57b2: $54
	ld   a, h                                        ; $57b3: $7c
	ld   a, c                                        ; $57b4: $79
	rst  $38                                         ; $57b5: $ff
	rst  $38                                         ; $57b6: $ff
	dec  c                                           ; $57b7: $0d
	nop                                              ; $57b8: $00
	ld   a, [bc]                                     ; $57b9: $0a
	ld   bc, $7d75                                   ; $57ba: $01 $75 $7d
	sbc  [hl]                                        ; $57bd: $9e
	ld   e, a                                        ; $57be: $5f
	ld   [hl], c                                     ; $57bf: $71
	ld   h, c                                        ; $57c0: $61
	ld   d, h                                        ; $57c1: $54
	ld   [hl], l                                     ; $57c2: $75
	ld   h, a                                        ; $57c3: $67
	sbc  l                                           ; $57c4: $9d
	rst  $38                                         ; $57c5: $ff
	rst  $38                                         ; $57c6: $ff
	dec  c                                           ; $57c7: $0d
	nop                                              ; $57c8: $00
	ld   a, [bc]                                     ; $57c9: $0a
	dec  c                                           ; $57ca: $0d
	nop                                              ; $57cb: $00
	nop                                              ; $57cc: $00
	rrca                                             ; $57cd: $0f
	nop                                              ; $57ce: $00
	ld   bc, $1e09                                   ; $57cf: $01 $09 $1e
	add  hl, hl                                      ; $57d2: $29
	ld   bc, $1c00                                   ; $57d3: $01 $00 $1c
	ld   [bc], a                                     ; $57d6: $02
	nop                                              ; $57d7: $00
	nop                                              ; $57d8: $00
	ld   bc, $7d75                                   ; $57d9: $01 $75 $7d
	sbc  [hl]                                        ; $57dc: $9e
	inc  bc                                          ; $57dd: $03
	inc  de                                          ; $57de: $13
	sbc  b                                           ; $57df: $98
	adc  h                                           ; $57e0: $8c
	ld   h, l                                        ; $57e1: $65
	sub  l                                           ; $57e2: $95
	ld   d, h                                        ; $57e3: $54
	ld   e, c                                        ; $57e4: $59
	sbc  a                                           ; $57e5: $9f
	dec  c                                           ; $57e6: $0d
	ld   e, b                                        ; $57e7: $58
	inc  bc                                          ; $57e8: $03
	ld   l, d                                        ; $57e9: $6a
	ld   [bc], a                                     ; $57ea: $02
	jp   $8602                                       ; $57eb: $c3 $02 $86


	ld   a, l                                        ; $57ee: $7d
	ld   e, b                                        ; $57ef: $58
	inc  b                                           ; $57f0: $04
	xor  l                                           ; $57f1: $ad
	ld   [hl], l                                     ; $57f2: $75
	ld   h, a                                        ; $57f3: $67
	ld   e, c                                        ; $57f4: $59
	sub  a                                           ; $57f5: $97
	dec  c                                           ; $57f6: $0d
	ld   [bc], a                                     ; $57f7: $02
	and  l                                           ; $57f8: $a5
	ld   e, c                                        ; $57f9: $59
	sub  a                                           ; $57fa: $97
	ld   l, [hl]                                     ; $57fb: $6e
	halt                                             ; $57fc: $76
	sbc  [hl]                                        ; $57fd: $9e
	ld   l, a                                        ; $57fe: $6f
	sub  l                                           ; $57ff: $95
	ld   d, h                                        ; $5800: $54
	ld   [hl], a                                     ; $5801: $77
	ld   [hl], l                                     ; $5802: $75
	ld   h, a                                        ; $5803: $67
	sbc  l                                           ; $5804: $9d
	sbc  a                                           ; $5805: $9f
	dec  c                                           ; $5806: $0d
	nop                                              ; $5807: $00
	ld   a, [bc]                                     ; $5808: $0a
	dec  c                                           ; $5809: $0d
	nop                                              ; $580a: $00
	nop                                              ; $580b: $00
	rrca                                             ; $580c: $0f

Call_060_580d:
	nop                                              ; $580d: $00
	ld   bc, $9823                                   ; $580e: $01 $23 $98
	inc  e                                           ; $5811: $1c
	ld   [bc], a                                     ; $5812: $02
	nop                                              ; $5813: $00
	nop                                              ; $5814: $00
	ld   bc, $546b                                   ; $5815: $01 $6b $54
	ld   l, e                                        ; $5818: $6b
	ld   d, h                                        ; $5819: $54
	sbc  [hl]                                        ; $581a: $9e
	ld   h, c                                        ; $581b: $61
	ld   a, h                                        ; $581c: $7c
	inc  bc                                          ; $581d: $03
	ld   c, a                                        ; $581e: $4f
	ld   [bc], a                                     ; $581f: $02
	ret  nc                                          ; $5820: $d0

	ld   d, [hl]                                     ; $5821: $56
	ld   l, l                                        ; $5822: $6d
	dec  c                                           ; $5823: $0d
	rst  ToBoot                                         ; $5824: $c7
	ei                                               ; $5825: $fb
	rst  $10                                         ; $5826: $d7
	db   $ed                                         ; $5827: $ed
	rst  JumpTable                                         ; $5828: $df
	set  7, e                                        ; $5829: $cb $fb
	sbc  a                                           ; $582b: $9f
	dec  c                                           ; $582c: $0d
	ld   e, b                                        ; $582d: $58
	adc  d                                           ; $582e: $8a
	ld   d, [hl]                                     ; $582f: $56
	ld   [hl], h                                     ; $5830: $74
	ld   d, d                                        ; $5831: $52
	adc  h                                           ; $5832: $8c
	ld   h, a                                        ; $5833: $67
	ld   [hl], l                                     ; $5834: $75
	ld   h, l                                        ; $5835: $65
	sub  l                                           ; $5836: $95
	ld   d, h                                        ; $5837: $54
	ld   a, e                                        ; $5838: $7b
	sbc  a                                           ; $5839: $9f
	dec  c                                           ; $583a: $0d
	nop                                              ; $583b: $00
	ld   a, [bc]                                     ; $583c: $0a
	ld   bc, $916f                                   ; $583d: $01 $6f $91
	and  c                                           ; $5840: $a1
	halt                                             ; $5841: $76
	sbc  [hl]                                        ; $5842: $9e
	sbc  l                                           ; $5843: $9d
	ld   l, l                                        ; $5844: $6d
	ld   e, l                                        ; $5845: $5d
	ld   h, l                                        ; $5846: $65
	and  b                                           ; $5847: $a0
	dec  c                                           ; $5848: $0d
	xor  c                                           ; $5849: $a9
	cp   d                                           ; $584a: $ba
	or   h                                           ; $584b: $b4
	ei                                               ; $584c: $fb
	ret                                              ; $584d: $c9


	ld   h, a                                        ; $584e: $67
	sbc  c                                           ; $584f: $99
	ld   a, h                                        ; $5850: $7c
	ld   [hl], l                                     ; $5851: $75
	ld   h, a                                        ; $5852: $67
	sbc  l                                           ; $5853: $9d
	sub  [hl]                                        ; $5854: $96
	sbc  a                                           ; $5855: $9f
	dec  c                                           ; $5856: $0d
	nop                                              ; $5857: $00
	ld   a, [bc]                                     ; $5858: $0a
	dec  c                                           ; $5859: $0d
	nop                                              ; $585a: $00
	nop                                              ; $585b: $00
	rrca                                             ; $585c: $0f
	nop                                              ; $585d: $00
	ld   bc, $9a23                                   ; $585e: $01 $23 $9a
	ld   bc, $0301                                   ; $5861: $01 $01 $03
	sbc  l                                           ; $5864: $9d
	rst  $38                                         ; $5865: $ff
	rst  $38                                         ; $5866: $ff
	dec  c                                           ; $5867: $0d
	db   $10                                         ; $5868: $10
	ld   h, a                                        ; $5869: $67
	ld   h, d                                        ; $586a: $62
	ld   d, d                                        ; $586b: $52
	halt                                             ; $586c: $76
	ld   h, c                                        ; $586d: $61
	sbc  e                                           ; $586e: $9b
	ld   l, [hl]                                     ; $586f: $6e
	ld   a, b                                        ; $5870: $78
	ld   c, a                                        ; $5871: $4f
	rst  $38                                         ; $5872: $ff
	rst  $38                                         ; $5873: $ff
	dec  c                                           ; $5874: $0d
	db   $10                                         ; $5875: $10
	ld   d, b                                        ; $5876: $50
	ld   a, h                                        ; $5877: $7c
	inc  b                                           ; $5878: $04
	ld   a, b                                        ; $5879: $78
	ld   e, d                                        ; $587a: $5a
	ld   [bc], a                                     ; $587b: $02
	ldh  a, [rTIMA]                                  ; $587c: $f0 $05
	ld   e, c                                        ; $587e: $59
	inc  bc                                          ; $587f: $03
	add  [hl]                                        ; $5880: $86
	inc  bc                                          ; $5881: $03
	call z, Call_060_7859                            ; $5882: $cc $59 $78
	ld   sp, hl                                      ; $5885: $f9
	ld   bc, $0d04                                   ; $5886: $01 $04 $0d
	nop                                              ; $5889: $00
	ld   a, [bc]                                     ; $588a: $0a
	inc  e                                           ; $588b: $1c
	ld   [bc], a                                     ; $588c: $02
	ld   bc, $0101                                   ; $588d: $01 $01 $01
	ld   d, b                                        ; $5890: $50
	db   $fc                                         ; $5891: $fc
	sub  a                                           ; $5892: $97
	sbc  [hl]                                        ; $5893: $9e
	ld   [bc], a                                     ; $5894: $02
	ldh  a, [rTIMA]                                  ; $5895: $f0 $05
	ld   e, c                                        ; $5897: $59
	inc  bc                                          ; $5898: $03
	add  [hl]                                        ; $5899: $86
	inc  bc                                          ; $589a: $03
	call z, Call_060_580d                            ; $589b: $cc $0d $58
	add  b                                           ; $589e: $80
	ld   h, e                                        ; $589f: $63
	ld   h, l                                        ; $58a0: $65
	add  h                                           ; $58a1: $84
	sbc  b                                           ; $58a2: $98
	ld   [hl], l                                     ; $58a3: $75
	ld   h, a                                        ; $58a4: $67
	sbc  l                                           ; $58a5: $9d
	ld   a, e                                        ; $58a6: $7b
	sbc  a                                           ; $58a7: $9f
	dec  c                                           ; $58a8: $0d
	ld   h, d                                        ; $58a9: $62
	ld   e, e                                        ; $58aa: $5b
	ld   h, b                                        ; $58ab: $60
	and  c                                           ; $58ac: $a1
	ld   d, d                                        ; $58ad: $52
	ld   e, c                                        ; $58ae: $59
	ld   e, d                                        ; $58af: $5a
	ld   [hl], l                                     ; $58b0: $75
	ld   h, a                                        ; $58b1: $67
	ld   h, c                                        ; $58b2: $61
	halt                                             ; $58b3: $76
	ld   sp, hl                                      ; $58b4: $f9
	dec  c                                           ; $58b5: $0d
	nop                                              ; $58b6: $00
	ld   a, [bc]                                     ; $58b7: $0a
	rrca                                             ; $58b8: $0f
	stop                                             ; $58b9: $10 $00
	ld   bc, $a161                                   ; $58bb: $01 $61 $a1
	ld   a, c                                        ; $58be: $79
	ld   l, a                                        ; $58bf: $6f
	ld   a, l                                        ; $58c0: $7d
	sbc  [hl]                                        ; $58c1: $9e
	ld   h, a                                        ; $58c2: $67
	adc  l                                           ; $58c3: $8d
	sbc  d                                           ; $58c4: $9a
	ld   h, e                                        ; $58c5: $63
	and  c                                           ; $58c6: $a1
	sbc  a                                           ; $58c7: $9f
	dec  c                                           ; $58c8: $0d
	ld   [bc], a                                     ; $58c9: $02
	and  l                                           ; $58ca: $a5
	inc  b                                           ; $58cb: $04
	xor  d                                           ; $58cc: $aa
	ld   a, l                                        ; $58cd: $7d
	sbc  l                                           ; $58ce: $9d
	ld   h, h                                        ; $58cf: $64
	sbc  l                                           ; $58d0: $9d
	ld   h, h                                        ; $58d1: $64
	dec  b                                           ; $58d2: $05
	db   $10                                         ; $58d3: $10
	ld   [hl], h                                     ; $58d4: $74
	ld   d, d                                        ; $58d5: $52
	ld   l, l                                        ; $58d6: $6d
	ld   l, [hl]                                     ; $58d7: $6e
	ld   d, d                                        ; $58d8: $52
	ld   [hl], h                                     ; $58d9: $74
	dec  c                                           ; $58da: $0d
	ld   d, b                                        ; $58db: $50
	sbc  b                                           ; $58dc: $98
	ld   e, d                                        ; $58dd: $5a
	halt                                             ; $58de: $76
	ld   d, h                                        ; $58df: $54
	ld   h, d                                        ; $58e0: $62
	ld   h, h                                        ; $58e1: $64
	ld   d, d                                        ; $58e2: $52
	adc  h                                           ; $58e3: $8c
	ld   h, a                                        ; $58e4: $67
	sbc  a                                           ; $58e5: $9f
	dec  c                                           ; $58e6: $0d
	nop                                              ; $58e7: $00
	ld   a, [bc]                                     ; $58e8: $0a
	rrca                                             ; $58e9: $0f
	ld   [bc], a                                     ; $58ea: $02
	ld   bc, $8c01                                   ; $58eb: $01 $01 $8c
	sbc  [hl]                                        ; $58ee: $9e
	halt                                             ; $58ef: $76
	ld   [hl], h                                     ; $58f0: $74
	sub  b                                           ; $58f1: $90
	inc  b                                           ; $58f2: $04
	ld   [hl], l                                     ; $58f3: $75
	ld   h, l                                        ; $58f4: $65
	ld   d, d                                        ; $58f5: $52
	ld   [hl], l                                     ; $58f6: $75
	ld   h, a                                        ; $58f7: $67
	ld   e, a                                        ; $58f8: $5f
	ld   [hl], a                                     ; $58f9: $77
	sbc  [hl]                                        ; $58fa: $9e
	dec  c                                           ; $58fb: $0d
	sbc  l                                           ; $58fc: $9d
	ld   h, h                                        ; $58fd: $64
	sbc  l                                           ; $58fe: $9d
	ld   h, h                                        ; $58ff: $64
	sbc  [hl]                                        ; $5900: $9e
	sub  d                                           ; $5901: $92
	ld   [hl], c                                     ; $5902: $71
	ld   [hl], h                                     ; $5903: $74
	ld   e, e                                        ; $5904: $5b
	adc  h                                           ; $5905: $8c
	ld   h, l                                        ; $5906: $65
	ld   l, l                                        ; $5907: $6d
	ld   a, h                                        ; $5908: $7c
	sbc  a                                           ; $5909: $9f
	dec  c                                           ; $590a: $0d
	ld   e, b                                        ; $590b: $58
	adc  c                                           ; $590c: $89
	adc  c                                           ; $590d: $89
	adc  c                                           ; $590e: $89
	adc  c                                           ; $590f: $89
	adc  c                                           ; $5910: $89
	rst  $38                                         ; $5911: $ff
	rst  $38                                         ; $5912: $ff
	dec  c                                           ; $5913: $0d
	nop                                              ; $5914: $00
	ld   a, [bc]                                     ; $5915: $0a
	rrca                                             ; $5916: $0f
	ld   [bc], a                                     ; $5917: $02
	ld   [bc], a                                     ; $5918: $02
	ld   bc, $0301                                   ; $5919: $01 $01 $03
	ld   d, d                                        ; $591c: $52
	ld   d, d                                        ; $591d: $52
	ld   h, c                                        ; $591e: $61
	halt                                             ; $591f: $76
	sbc  [hl]                                        ; $5920: $9e
	ld   [$6300], sp                                 ; $5921: $08 $00 $63
	and  c                                           ; $5924: $a1
	dec  c                                           ; $5925: $0d
	db   $10                                         ; $5926: $10
	ld   l, a                                        ; $5927: $6f
	sub  c                                           ; $5928: $91
	and  c                                           ; $5929: $a1
	halt                                             ; $592a: $76
	ld   e, b                                        ; $592b: $58
	sub  d                                           ; $592c: $92
	sbc  b                                           ; $592d: $98
	ld   a, b                                        ; $592e: $78
	ld   h, e                                        ; $592f: $63
	ld   d, d                                        ; $5930: $52
	ld   bc, $0d04                                   ; $5931: $01 $04 $0d
	nop                                              ; $5934: $00
	ld   a, [bc]                                     ; $5935: $0a
	rrca                                             ; $5936: $0f
	nop                                              ; $5937: $00
	ld   bc, $0101                                   ; $5938: $01 $01 $01
	inc  bc                                          ; $593b: $03
	ld   d, [hl]                                     ; $593c: $56
	db   $fc                                         ; $593d: $fc
	halt                                             ; $593e: $76
	sbc  [hl]                                        ; $593f: $9e
	and  l                                           ; $5940: $a5
	cp   d                                           ; $5941: $ba
	ld   a, c                                        ; $5942: $79
	ld   h, a                                        ; $5943: $67
	sbc  l                                           ; $5944: $9d
	sbc  c                                           ; $5945: $99
	dec  c                                           ; $5946: $0d
	db   $10                                         ; $5947: $10
	halt                                             ; $5948: $76
	ld   e, e                                        ; $5949: $5b
	ld   a, c                                        ; $594a: $79
	ld   a, l                                        ; $594b: $7d
	rst  $38                                         ; $594c: $ff
	rst  $38                                         ; $594d: $ff
	dec  c                                           ; $594e: $0d
	db   $10                                         ; $594f: $10
	ld   [hl], a                                     ; $5950: $77
	ld   d, h                                        ; $5951: $54
	ld   h, a                                        ; $5952: $67
	sbc  c                                           ; $5953: $99
	and  c                                           ; $5954: $a1
	ld   l, [hl]                                     ; $5955: $6e
	ld   [hl], c                                     ; $5956: $71
	ld   e, a                                        ; $5957: $5f
	rst  $38                                         ; $5958: $ff
	rst  $38                                         ; $5959: $ff
	ld   bc, $0d04                                   ; $595a: $01 $04 $0d
	nop                                              ; $595d: $00
	ld   a, [bc]                                     ; $595e: $0a
	add  hl, de                                      ; $595f: $19
	dec  b                                           ; $5960: $05
	inc  bc                                          ; $5961: $03
	inc  bc                                          ; $5962: $03
	ld   l, [hl]                                     ; $5963: $6e
	ld   [bc], a                                     ; $5964: $02
	db   $fc                                         ; $5965: $fc
	ld   e, d                                        ; $5966: $5a
	inc  bc                                          ; $5967: $03
	ld   a, b                                        ; $5968: $78
	ld   a, c                                        ; $5969: $79
	ld   h, a                                        ; $596a: $67
	sbc  l                                           ; $596b: $9d
	sbc  c                                           ; $596c: $99
	nop                                              ; $596d: $00
	nop                                              ; $596e: $00
	ld   [bc], a                                     ; $596f: $02
	dec  d                                           ; $5970: $15
	ld   [bc], a                                     ; $5971: $02
	db   $fc                                         ; $5972: $fc
	ld   e, d                                        ; $5973: $5a
	inc  bc                                          ; $5974: $03
	ld   a, b                                        ; $5975: $78
	ld   a, c                                        ; $5976: $79
	ld   h, a                                        ; $5977: $67
	sbc  l                                           ; $5978: $9d
	sbc  c                                           ; $5979: $99
	nop                                              ; $597a: $00
	ld   bc, $1d04                                   ; $597b: $01 $04 $1d
	inc  bc                                          ; $597e: $03
	ld   l, a                                        ; $597f: $6f
	ld   a, c                                        ; $5980: $79
	ld   h, a                                        ; $5981: $67
	sbc  l                                           ; $5982: $9d
	sbc  c                                           ; $5983: $99
	nop                                              ; $5984: $00
	ld   [bc], a                                     ; $5985: $02
	rlca                                             ; $5986: $07
	dec  hl                                          ; $5987: $2b
	inc  b                                           ; $5988: $04
	ld   [bc], a                                     ; $5989: $02
	inc  bc                                          ; $598a: $03
	ld   bc, $2000                                   ; $598b: $01 $00 $20
	nop                                              ; $598e: $00
	rlca                                             ; $598f: $07
	ld   l, b                                        ; $5990: $68
	inc  b                                           ; $5991: $04
	ld   [bc], a                                     ; $5992: $02
	inc  bc                                          ; $5993: $03
	ld   bc, $2001                                   ; $5994: $01 $01 $20
	nop                                              ; $5997: $00
	rlca                                             ; $5998: $07
	db   $e3                                         ; $5999: $e3
	inc  b                                           ; $599a: $04
	ld   [bc], a                                     ; $599b: $02
	inc  bc                                          ; $599c: $03
	ld   bc, $2002                                   ; $599d: $01 $02 $20
	nop                                              ; $59a0: $00
	ld   b, $72                                      ; $59a1: $06 $72
	dec  b                                           ; $59a3: $05
	rrca                                             ; $59a4: $0f
	nop                                              ; $59a5: $00
	ld   bc, $0101                                   ; $59a6: $01 $01 $01
	inc  bc                                          ; $59a9: $03
	ld   h, a                                        ; $59aa: $67
	adc  l                                           ; $59ab: $8d
	sbc  d                                           ; $59ac: $9a
	ld   h, e                                        ; $59ad: $63
	and  c                                           ; $59ae: $a1
	and  b                                           ; $59af: $a0
	inc  bc                                          ; $59b0: $03
	ld   a, b                                        ; $59b1: $78
	ld   a, c                                        ; $59b2: $79
	dec  c                                           ; $59b3: $0d
	db   $10                                         ; $59b4: $10
	ld   h, a                                        ; $59b5: $67
	sbc  l                                           ; $59b6: $9d
	sub  a                                           ; $59b7: $97
	ld   l, c                                        ; $59b8: $69
	ld   [hl], h                                     ; $59b9: $74
	halt                                             ; $59ba: $76
	rst  $38                                         ; $59bb: $ff
	rst  $38                                         ; $59bc: $ff
	ld   bc, $0d04                                   ; $59bd: $01 $04 $0d
	nop                                              ; $59c0: $00
	ld   a, [bc]                                     ; $59c1: $0a
	inc  e                                           ; $59c2: $1c
	ld   [bc], a                                     ; $59c3: $02
	ld   bc, $1d01                                   ; $59c4: $01 $01 $1d
	ld   b, b                                        ; $59c7: $40
	ld   [de], a                                     ; $59c8: $12
	inc  bc                                          ; $59c9: $03
	ld   [de], a                                     ; $59ca: $12
	ld   bc, $2802                                   ; $59cb: $01 $02 $28
	nop                                              ; $59ce: $00
	ld   bc, $0301                                   ; $59cf: $01 $01 $03
	sub  [hl]                                        ; $59d2: $96
	sbc  e                                           ; $59d3: $9b
	ld   h, l                                        ; $59d4: $65
	ld   d, d                                        ; $59d5: $52
	ld   [hl], l                                     ; $59d6: $75
	ld   h, a                                        ; $59d7: $67
	sbc  l                                           ; $59d8: $9d
	ld   bc, $0d04                                   ; $59d9: $01 $04 $0d
	nop                                              ; $59dc: $00
	ld   a, [bc]                                     ; $59dd: $0a
	ld   b, $c8                                      ; $59de: $06 $c8
	dec  b                                           ; $59e0: $05
	rrca                                             ; $59e1: $0f
	nop                                              ; $59e2: $00
	ld   bc, $0101                                   ; $59e3: $01 $01 $01
	inc  bc                                          ; $59e6: $03
	inc  b                                           ; $59e7: $04
	ld   l, l                                        ; $59e8: $6d
	ld   e, d                                        ; $59e9: $5a
	inc  bc                                          ; $59ea: $03
	ld   a, b                                        ; $59eb: $78
	ld   a, c                                        ; $59ec: $79
	ld   h, a                                        ; $59ed: $67
	sbc  l                                           ; $59ee: $9d
	ld   [hl], c                                     ; $59ef: $71
	ld   [hl], h                                     ; $59f0: $74
	rst  $38                                         ; $59f1: $ff
	rst  $38                                         ; $59f2: $ff
	ld   sp, hl                                      ; $59f3: $f9
	ld   bc, $0d04                                   ; $59f4: $01 $04 $0d
	nop                                              ; $59f7: $00
	ld   a, [bc]                                     ; $59f8: $0a
	dec  c                                           ; $59f9: $0d
	ld   [bc], a                                     ; $59fa: $02
	ld   bc, $020f                                   ; $59fb: $01 $0f $02
	ld   [bc], a                                     ; $59fe: $02
	dec  e                                           ; $59ff: $1d
	ld   b, b                                        ; $5a00: $40
	ld   [de], a                                     ; $5a01: $12
	inc  bc                                          ; $5a02: $03
	ld   [de], a                                     ; $5a03: $12
	ld   bc, $2902                                   ; $5a04: $01 $02 $29
	nop                                              ; $5a07: $00
	ld   bc, $0301                                   ; $5a08: $01 $01 $03
	ld   l, a                                        ; $5a0b: $6f
	ld   e, d                                        ; $5a0c: $5a
	ld   d, d                                        ; $5a0d: $52
	adc  h                                           ; $5a0e: $8c
	ld   h, a                                        ; $5a0f: $67
	ld   [hl], l                                     ; $5a10: $75
	ld   h, l                                        ; $5a11: $65
	sub  l                                           ; $5a12: $95
	ld   a, [$100d]                                  ; $5a13: $fa $0d $10
	inc  bc                                          ; $5a16: $03
	ld   l, [hl]                                     ; $5a17: $6e
	ld   [bc], a                                     ; $5a18: $02
	db   $fc                                         ; $5a19: $fc
	ld   e, d                                        ; $5a1a: $5a
	inc  bc                                          ; $5a1b: $03
	ld   a, b                                        ; $5a1c: $78
	ld   a, c                                        ; $5a1d: $79
	ld   h, a                                        ; $5a1e: $67
	sbc  l                                           ; $5a1f: $9d
	sbc  c                                           ; $5a20: $99
	ld   a, h                                        ; $5a21: $7c
	db   $10                                         ; $5a22: $10
	dec  c                                           ; $5a23: $0d
	db   $10                                         ; $5a24: $10
	ld   [hl], l                                     ; $5a25: $75
	ld   h, a                                        ; $5a26: $67
	sbc  l                                           ; $5a27: $9d
	sub  [hl]                                        ; $5a28: $96
	ld   a, [$0401]                                  ; $5a29: $fa $01 $04
	dec  c                                           ; $5a2c: $0d
	nop                                              ; $5a2d: $00
	ld   a, [bc]                                     ; $5a2e: $0a
	inc  e                                           ; $5a2f: $1c
	ld   [bc], a                                     ; $5a30: $02
	ld   bc, $0101                                   ; $5a31: $01 $01 $01
	ld   e, b                                        ; $5a34: $58
	adc  c                                           ; $5a35: $89
	adc  c                                           ; $5a36: $89
	adc  c                                           ; $5a37: $89
	adc  c                                           ; $5a38: $89
	dec  c                                           ; $5a39: $0d
	ld   h, a                                        ; $5a3a: $67
	adc  l                                           ; $5a3b: $8d
	adc  h                                           ; $5a3c: $8c
	ld   l, c                                        ; $5a3d: $69
	and  c                                           ; $5a3e: $a1
	ld   a, e                                        ; $5a3f: $7b
	ld   [bc], a                                     ; $5a40: $02
	ldh  a, [rTIMA]                                  ; $5a41: $f0 $05
	ld   e, c                                        ; $5a43: $59
	inc  bc                                          ; $5a44: $03
	add  [hl]                                        ; $5a45: $86
	inc  bc                                          ; $5a46: $03
	call z, $0d9f                                    ; $5a47: $cc $9f $0d
	adc  h                                           ; $5a4a: $8c
	ld   l, [hl]                                     ; $5a4b: $6e
	inc  bc                                          ; $5a4c: $03
	add  [hl]                                        ; $5a4d: $86
	ld   [bc], a                                     ; $5a4e: $02
	xor  l                                           ; $5a4f: $ad
	ld   a, b                                        ; $5a50: $78
	sub  b                                           ; $5a51: $90
	ld   a, h                                        ; $5a52: $7c
	ld   [hl], l                                     ; $5a53: $75
	rst  $38                                         ; $5a54: $ff
	rst  $38                                         ; $5a55: $ff
	dec  c                                           ; $5a56: $0d
	nop                                              ; $5a57: $00
	ld   a, [bc]                                     ; $5a58: $0a
	ld   b, $c8                                      ; $5a59: $06 $c8
	dec  b                                           ; $5a5b: $05
	rrca                                             ; $5a5c: $0f
	nop                                              ; $5a5d: $00
	ld   bc, $0101                                   ; $5a5e: $01 $01 $01
	inc  bc                                          ; $5a61: $03
	inc  b                                           ; $5a62: $04
	dec  e                                           ; $5a63: $1d
	inc  bc                                          ; $5a64: $03
	ld   l, a                                        ; $5a65: $6f
	ld   a, c                                        ; $5a66: $79
	ld   h, a                                        ; $5a67: $67
	sbc  l                                           ; $5a68: $9d
	sbc  c                                           ; $5a69: $99
	ld   l, l                                        ; $5a6a: $6d
	adc  a                                           ; $5a6b: $8f
	ld   a, c                                        ; $5a6c: $79
	ld   a, l                                        ; $5a6d: $7d
	dec  c                                           ; $5a6e: $0d
	db   $10                                         ; $5a6f: $10
	ret  nz                                          ; $5a70: $c0

	and  l                                           ; $5a71: $a5
	ldh  [$f5], a                                    ; $5a72: $e0 $f5
	or   c                                           ; $5a74: $b1
	and  b                                           ; $5a75: $a0
	ld   d, h                                        ; $5a76: $54
	adc  h                                           ; $5a77: $8c
	ld   e, l                                        ; $5a78: $5d
	dec  c                                           ; $5a79: $0d
	db   $10                                         ; $5a7a: $10
	halt                                             ; $5a7b: $76
	sub  a                                           ; $5a7c: $97
	ld   a, b                                        ; $5a7d: $78
	ld   d, d                                        ; $5a7e: $52
	halt                                             ; $5a7f: $76
	ld   a, e                                        ; $5a80: $7b
	rst  $38                                         ; $5a81: $ff
	rst  $38                                         ; $5a82: $ff
	ld   bc, $0d04                                   ; $5a83: $01 $04 $0d
	nop                                              ; $5a86: $00
	ld   a, [bc]                                     ; $5a87: $0a
	dec  c                                           ; $5a88: $0d
	ld   [bc], a                                     ; $5a89: $02
	ld   bc, $020f                                   ; $5a8a: $01 $0f $02
	ld   [bc], a                                     ; $5a8d: $02
	dec  e                                           ; $5a8e: $1d
	ld   b, b                                        ; $5a8f: $40
	ld   [de], a                                     ; $5a90: $12
	inc  bc                                          ; $5a91: $03
	ld   [de], a                                     ; $5a92: $12
	ld   bc, $2902                                   ; $5a93: $01 $02 $29
	nop                                              ; $5a96: $00
	ld   bc, $0301                                   ; $5a97: $01 $01 $03
	ld   l, a                                        ; $5a9a: $6f
	ld   e, d                                        ; $5a9b: $5a
	ld   d, d                                        ; $5a9c: $52
	adc  h                                           ; $5a9d: $8c
	ld   h, a                                        ; $5a9e: $67
	ld   [hl], l                                     ; $5a9f: $75
	ld   h, l                                        ; $5aa0: $65
	sub  l                                           ; $5aa1: $95
	ld   a, [$100d]                                  ; $5aa2: $fa $0d $10
	inc  bc                                          ; $5aa5: $03
	ld   l, [hl]                                     ; $5aa6: $6e
	ld   [bc], a                                     ; $5aa7: $02
	db   $fc                                         ; $5aa8: $fc
	ld   e, d                                        ; $5aa9: $5a
	inc  bc                                          ; $5aaa: $03
	ld   a, b                                        ; $5aab: $78
	ld   a, c                                        ; $5aac: $79
	ld   h, a                                        ; $5aad: $67
	sbc  l                                           ; $5aae: $9d
	sbc  c                                           ; $5aaf: $99
	ld   a, h                                        ; $5ab0: $7c
	db   $10                                         ; $5ab1: $10
	dec  c                                           ; $5ab2: $0d
	db   $10                                         ; $5ab3: $10
	ld   [hl], l                                     ; $5ab4: $75
	ld   h, a                                        ; $5ab5: $67
	sbc  l                                           ; $5ab6: $9d
	sub  [hl]                                        ; $5ab7: $96
	ld   a, [$0401]                                  ; $5ab8: $fa $01 $04
	dec  c                                           ; $5abb: $0d
	nop                                              ; $5abc: $00
	ld   a, [bc]                                     ; $5abd: $0a
	inc  e                                           ; $5abe: $1c
	ld   [bc], a                                     ; $5abf: $02
	ld   bc, $0101                                   ; $5ac0: $01 $01 $01
	ld   e, b                                        ; $5ac3: $58
	adc  c                                           ; $5ac4: $89
	adc  c                                           ; $5ac5: $89
	adc  c                                           ; $5ac6: $89
	adc  c                                           ; $5ac7: $89
	dec  c                                           ; $5ac8: $0d
	ld   h, a                                        ; $5ac9: $67
	adc  l                                           ; $5aca: $8d
	adc  h                                           ; $5acb: $8c
	ld   l, c                                        ; $5acc: $69
	and  c                                           ; $5acd: $a1
	ld   a, e                                        ; $5ace: $7b
	ld   [bc], a                                     ; $5acf: $02
	ldh  a, [rTIMA]                                  ; $5ad0: $f0 $05
	ld   e, c                                        ; $5ad2: $59
	inc  bc                                          ; $5ad3: $03
	add  [hl]                                        ; $5ad4: $86
	inc  bc                                          ; $5ad5: $03
	call z, $0d9f                                    ; $5ad6: $cc $9f $0d
	adc  h                                           ; $5ad9: $8c
	ld   l, [hl]                                     ; $5ada: $6e
	inc  bc                                          ; $5adb: $03
	add  [hl]                                        ; $5adc: $86
	ld   [bc], a                                     ; $5add: $02
	xor  l                                           ; $5ade: $ad
	ld   a, b                                        ; $5adf: $78
	sub  b                                           ; $5ae0: $90
	ld   a, h                                        ; $5ae1: $7c
	ld   [hl], l                                     ; $5ae2: $75
	rst  $38                                         ; $5ae3: $ff
	rst  $38                                         ; $5ae4: $ff
	dec  c                                           ; $5ae5: $0d
	nop                                              ; $5ae6: $00
	ld   a, [bc]                                     ; $5ae7: $0a
	ld   b, $c8                                      ; $5ae8: $06 $c8
	dec  b                                           ; $5aea: $05
	dec  c                                           ; $5aeb: $0d
	ld   [bc], a                                     ; $5aec: $02
	ld   bc, $020f                                   ; $5aed: $01 $0f $02
	ld   [bc], a                                     ; $5af0: $02
	dec  e                                           ; $5af1: $1d
	ld   b, b                                        ; $5af2: $40
	ld   [de], a                                     ; $5af3: $12
	inc  bc                                          ; $5af4: $03
	ld   [de], a                                     ; $5af5: $12
	ld   bc, $2902                                   ; $5af6: $01 $02 $29
	nop                                              ; $5af9: $00
	ld   bc, $0301                                   ; $5afa: $01 $01 $03
	db   $dd                                         ; $5afd: $dd
	and  $c4                                         ; $5afe: $e6 $c4
	halt                                             ; $5b00: $76
	ld   h, l                                        ; $5b01: $65
	ld   [hl], h                                     ; $5b02: $74
	ld   a, b                                        ; $5b03: $78
	ld   d, d                                        ; $5b04: $52
	ld   [hl], l                                     ; $5b05: $75
	dec  c                                           ; $5b06: $0d
	db   $10                                         ; $5b07: $10
	ld   h, a                                        ; $5b08: $67
	sbc  l                                           ; $5b09: $9d
	sbc  b                                           ; $5b0a: $98
	ld   a, b                                        ; $5b0b: $78
	ld   h, e                                        ; $5b0c: $63
	ld   d, d                                        ; $5b0d: $52
	ld   a, [$0401]                                  ; $5b0e: $fa $01 $04
	dec  c                                           ; $5b11: $0d
	nop                                              ; $5b12: $00
	ld   a, [bc]                                     ; $5b13: $0a
	inc  e                                           ; $5b14: $1c
	ld   [bc], a                                     ; $5b15: $02
	ld   bc, $0101                                   ; $5b16: $01 $01 $01
	ld   e, b                                        ; $5b19: $58
	adc  c                                           ; $5b1a: $89
	adc  c                                           ; $5b1b: $89
	adc  c                                           ; $5b1c: $89
	adc  c                                           ; $5b1d: $89
	dec  c                                           ; $5b1e: $0d
	ld   h, a                                        ; $5b1f: $67
	adc  l                                           ; $5b20: $8d
	adc  h                                           ; $5b21: $8c
	ld   l, c                                        ; $5b22: $69
	and  c                                           ; $5b23: $a1
	ld   a, e                                        ; $5b24: $7b
	ld   [bc], a                                     ; $5b25: $02
	ldh  a, [rTIMA]                                  ; $5b26: $f0 $05
	ld   e, c                                        ; $5b28: $59
	inc  bc                                          ; $5b29: $03
	add  [hl]                                        ; $5b2a: $86
	inc  bc                                          ; $5b2b: $03
	call z, $0d9f                                    ; $5b2c: $cc $9f $0d
	adc  h                                           ; $5b2f: $8c
	ld   l, [hl]                                     ; $5b30: $6e
	inc  bc                                          ; $5b31: $03
	add  [hl]                                        ; $5b32: $86
	ld   [bc], a                                     ; $5b33: $02
	xor  l                                           ; $5b34: $ad
	ld   a, b                                        ; $5b35: $78
	sub  b                                           ; $5b36: $90
	ld   a, h                                        ; $5b37: $7c
	ld   [hl], l                                     ; $5b38: $75
	rst  $38                                         ; $5b39: $ff
	rst  $38                                         ; $5b3a: $ff
	dec  c                                           ; $5b3b: $0d
	nop                                              ; $5b3c: $00
	ld   a, [bc]                                     ; $5b3d: $0a
	ld   b, $c8                                      ; $5b3e: $06 $c8
	dec  b                                           ; $5b40: $05
	ld   bc, $9e50                                   ; $5b41: $01 $50 $9e
	dec  b                                           ; $5b44: $05
	ld   b, a                                        ; $5b45: $47
	dec  b                                           ; $5b46: $05
	ld   [hl-], a                                    ; $5b47: $32
	ld   e, d                                        ; $5b48: $5a
	ld   e, b                                        ; $5b49: $58
	ld   e, l                                        ; $5b4a: $5d
	sbc  d                                           ; $5b4b: $9a
	adc  h                                           ; $5b4c: $8c
	ld   h, l                                        ; $5b4d: $65
	ld   l, l                                        ; $5b4e: $6d
	ld   e, d                                        ; $5b4f: $5a
	dec  c                                           ; $5b50: $0d
	ld   [bc], a                                     ; $5b51: $02
	ldh  a, [rTIMA]                                  ; $5b52: $f0 $05
	ld   e, c                                        ; $5b54: $59
	inc  bc                                          ; $5b55: $03
	add  [hl]                                        ; $5b56: $86
	inc  bc                                          ; $5b57: $03
	call z, $0d9f                                    ; $5b58: $cc $9f $0d
	ld   h, c                                        ; $5b5b: $61
	ld   l, a                                        ; $5b5c: $6f
	sub  a                                           ; $5b5d: $97
	ld   a, c                                        ; $5b5e: $79
	ld   d, d                                        ; $5b5f: $52
	adc  h                                           ; $5b60: $8c
	ld   h, a                                        ; $5b61: $67
	ld   a, h                                        ; $5b62: $7c
	ld   a, l                                        ; $5b63: $7d
	rst  $38                                         ; $5b64: $ff
	rst  $38                                         ; $5b65: $ff
	dec  c                                           ; $5b66: $0d
	nop                                              ; $5b67: $00
	ld   a, [bc]                                     ; $5b68: $0a
	rrca                                             ; $5b69: $0f
	nop                                              ; $5b6a: $00
	ld   bc, $0101                                   ; $5b6b: $01 $01 $01
	inc  bc                                          ; $5b6e: $03
	ld   d, [hl]                                     ; $5b6f: $56
	ld   [hl], c                                     ; $5b70: $71
	ld   a, [$0310]                                  ; $5b71: $fa $10 $03
	sub  h                                           ; $5b74: $94
	dec  b                                           ; $5b75: $05
	inc  sp                                          ; $5b76: $33
	dec  b                                           ; $5b77: $05
	ld   b, a                                        ; $5b78: $47
	dec  b                                           ; $5b79: $05
	ld   [hl-], a                                    ; $5b7a: $32
	ld   h, a                                        ; $5b7b: $67
	sbc  c                                           ; $5b7c: $99
	ld   a, h                                        ; $5b7d: $7c
	ld   e, c                                        ; $5b7e: $59
	ld   sp, hl                                      ; $5b7f: $f9
	dec  c                                           ; $5b80: $0d
	db   $10                                         ; $5b81: $10
	ld   [hl], a                                     ; $5b82: $77
	ld   d, h                                        ; $5b83: $54
	ld   h, l                                        ; $5b84: $65
	sub  [hl]                                        ; $5b85: $96
	ld   d, h                                        ; $5b86: $54
	ld   e, c                                        ; $5b87: $59
	rst  $38                                         ; $5b88: $ff
	rst  $38                                         ; $5b89: $ff
	ld   bc, $0d04                                   ; $5b8a: $01 $04 $0d
	nop                                              ; $5b8d: $00
	ld   a, [bc]                                     ; $5b8e: $0a
	add  hl, de                                      ; $5b8f: $19
	dec  b                                           ; $5b90: $05
	ld   [bc], a                                     ; $5b91: $02
	inc  bc                                          ; $5b92: $03
	ld   l, $03                                      ; $5b93: $2e $03
	pop  hl                                          ; $5b95: $e1
	ld   a, c                                        ; $5b96: $79
	ld   h, a                                        ; $5b97: $67
	sbc  c                                           ; $5b98: $99
	nop                                              ; $5b99: $00
	nop                                              ; $5b9a: $00
	ld   e, e                                        ; $5b9b: $5b
	ld   [hl], a                                     ; $5b9c: $77
	ld   [hl], c                                     ; $5b9d: $71
	ld   [hl], h                                     ; $5b9e: $74
	adc  l                                           ; $5b9f: $8d
	sbc  c                                           ; $5ba0: $99
	nop                                              ; $5ba1: $00
	ld   bc, $3f07                                   ; $5ba2: $01 $07 $3f
	ld   b, $02                                      ; $5ba5: $06 $02
	inc  bc                                          ; $5ba7: $03
	ld   bc, $2000                                   ; $5ba8: $01 $00 $20
	nop                                              ; $5bab: $00
	rlca                                             ; $5bac: $07
	add  l                                           ; $5bad: $85
	ld   b, $02                                      ; $5bae: $06 $02
	inc  bc                                          ; $5bb0: $03
	ld   bc, $2001                                   ; $5bb1: $01 $01 $20
	nop                                              ; $5bb4: $00
	ld   b, $25                                      ; $5bb5: $06 $25
	rlca                                             ; $5bb7: $07
	rrca                                             ; $5bb8: $0f
	nop                                              ; $5bb9: $00
	ld   bc, $6101                                   ; $5bba: $01 $01 $61
	and  c                                           ; $5bbd: $a1
	ld   a, c                                        ; $5bbe: $79
	ld   l, a                                        ; $5bbf: $6f
	ld   a, l                                        ; $5bc0: $7d
	sbc  a                                           ; $5bc1: $9f
	ld   [bc], a                                     ; $5bc2: $02
	ldh  a, [rTIMA]                                  ; $5bc3: $f0 $05
	ld   e, c                                        ; $5bc5: $59
	inc  bc                                          ; $5bc6: $03
	add  [hl]                                        ; $5bc7: $86
	inc  bc                                          ; $5bc8: $03
	call z, $9803                                    ; $5bc9: $cc $03 $98
	sbc  a                                           ; $5bcc: $9f
	dec  c                                           ; $5bcd: $0d
	inc  b                                           ; $5bce: $04
	ld   l, l                                        ; $5bcf: $6d
	ld   a, l                                        ; $5bd0: $7d
	ld   [$7600], sp                                 ; $5bd1: $08 $00 $76
	dec  c                                           ; $5bd4: $0d
	dec  b                                           ; $5bd5: $05
	ld   b, [hl]                                     ; $5bd6: $46
	ld   h, l                                        ; $5bd7: $65
	adc  h                                           ; $5bd8: $8c
	ld   h, a                                        ; $5bd9: $67
	sbc  a                                           ; $5bda: $9f
	dec  c                                           ; $5bdb: $0d
	nop                                              ; $5bdc: $00
	ld   a, [bc]                                     ; $5bdd: $0a
	rrca                                             ; $5bde: $0f
	ld   [bc], a                                     ; $5bdf: $02
	ld   bc, $401d                                   ; $5be0: $01 $1d $40
	ld   [de], a                                     ; $5be3: $12
	inc  bc                                          ; $5be4: $03
	ld   [de], a                                     ; $5be5: $12
	ld   bc, $2802                                   ; $5be6: $01 $02 $28
	nop                                              ; $5be9: $00
	ld   bc, $0301                                   ; $5bea: $01 $01 $03
	sub  [hl]                                        ; $5bed: $96
	sbc  e                                           ; $5bee: $9b
	ld   h, l                                        ; $5bef: $65
	ld   d, d                                        ; $5bf0: $52
	ld   [hl], l                                     ; $5bf1: $75
	ld   h, a                                        ; $5bf2: $67
	sbc  l                                           ; $5bf3: $9d
	rst  $38                                         ; $5bf4: $ff
	rst  $38                                         ; $5bf5: $ff
	ld   bc, $0d04                                   ; $5bf6: $01 $04 $0d
	nop                                              ; $5bf9: $00
	ld   a, [bc]                                     ; $5bfa: $0a
	ld   b, $a0                                      ; $5bfb: $06 $a0
	rlca                                             ; $5bfd: $07
	rrca                                             ; $5bfe: $0f
	nop                                              ; $5bff: $00
	ld   bc, $d001                                   ; $5c00: $01 $01 $d0
	ei                                               ; $5c03: $fb
	and  l                                           ; $5c04: $a5
	sbc  a                                           ; $5c05: $9f
	ld   [bc], a                                     ; $5c06: $02
	ldh  a, [rTIMA]                                  ; $5c07: $f0 $05
	ld   e, c                                        ; $5c09: $59
	inc  bc                                          ; $5c0a: $03
	add  [hl]                                        ; $5c0b: $86
	inc  bc                                          ; $5c0c: $03
	call z, $0d9f                                    ; $5c0d: $cc $9f $0d
	inc  b                                           ; $5c10: $04
	ld   l, l                                        ; $5c11: $6d
	ld   a, l                                        ; $5c12: $7d
	ld   [$9f00], sp                                 ; $5c13: $08 $00 $9f
	dec  c                                           ; $5c16: $0d
	sub  [hl]                                        ; $5c17: $96
	sbc  e                                           ; $5c18: $9b
	ld   h, l                                        ; $5c19: $65
	ld   e, l                                        ; $5c1a: $5d
	ld   a, e                                        ; $5c1b: $7b
	sbc  a                                           ; $5c1c: $9f
	dec  c                                           ; $5c1d: $0d
	nop                                              ; $5c1e: $00
	ld   a, [bc]                                     ; $5c1f: $0a
	rrca                                             ; $5c20: $0f
	db   $10                                         ; $5c21: $10
	ld   bc, $9601                                   ; $5c22: $01 $01 $96
	rst  $38                                         ; $5c25: $ff
	rst  $38                                         ; $5c26: $ff
	sub  [hl]                                        ; $5c27: $96
	sbc  e                                           ; $5c28: $9b
	ld   h, l                                        ; $5c29: $65
	ld   e, l                                        ; $5c2a: $5d
	rst  $38                                         ; $5c2b: $ff
	rst  $38                                         ; $5c2c: $ff
	dec  c                                           ; $5c2d: $0d
	nop                                              ; $5c2e: $00
	ld   a, [bc]                                     ; $5c2f: $0a
	dec  c                                           ; $5c30: $0d
	ld   [bc], a                                     ; $5c31: $02
	ld   bc, $020f                                   ; $5c32: $01 $0f $02
	inc  bc                                          ; $5c35: $03
	dec  e                                           ; $5c36: $1d
	ld   b, b                                        ; $5c37: $40
	ld   [de], a                                     ; $5c38: $12
	inc  bc                                          ; $5c39: $03
	ld   [de], a                                     ; $5c3a: $12
	ld   bc, $2902                                   ; $5c3b: $01 $02 $29
	nop                                              ; $5c3e: $00
	ld   bc, $0301                                   ; $5c3f: $01 $01 $03
	pop  de                                          ; $5c42: $d1
	sbc  [hl]                                        ; $5c43: $9e
	pop  de                                          ; $5c44: $d1
	xor  h                                           ; $5c45: $ac
	ld   [hl], c                                     ; $5c46: $71
	ld   a, [$01ff]                                  ; $5c47: $fa $ff $01
	inc  b                                           ; $5c4a: $04
	dec  c                                           ; $5c4b: $0d
	nop                                              ; $5c4c: $00
	ld   a, [bc]                                     ; $5c4d: $0a
	inc  e                                           ; $5c4e: $1c
	ld   [bc], a                                     ; $5c4f: $02
	ld   bc, $0101                                   ; $5c50: $01 $01 $01
	ld   e, b                                        ; $5c53: $58
	adc  c                                           ; $5c54: $89
	adc  c                                           ; $5c55: $89
	adc  c                                           ; $5c56: $89
	adc  c                                           ; $5c57: $89
	dec  c                                           ; $5c58: $0d
	ld   h, a                                        ; $5c59: $67
	adc  l                                           ; $5c5a: $8d
	adc  h                                           ; $5c5b: $8c
	ld   l, c                                        ; $5c5c: $69
	and  c                                           ; $5c5d: $a1
	ld   a, e                                        ; $5c5e: $7b
	ld   [bc], a                                     ; $5c5f: $02
	ldh  a, [rTIMA]                                  ; $5c60: $f0 $05
	ld   e, c                                        ; $5c62: $59
	inc  bc                                          ; $5c63: $03
	add  [hl]                                        ; $5c64: $86
	inc  bc                                          ; $5c65: $03
	call z, $0d9f                                    ; $5c66: $cc $9f $0d
	adc  h                                           ; $5c69: $8c
	ld   l, [hl]                                     ; $5c6a: $6e
	inc  bc                                          ; $5c6b: $03
	add  [hl]                                        ; $5c6c: $86
	ld   [bc], a                                     ; $5c6d: $02
	xor  l                                           ; $5c6e: $ad
	ld   a, b                                        ; $5c6f: $78
	sub  b                                           ; $5c70: $90
	ld   a, h                                        ; $5c71: $7c
	ld   [hl], l                                     ; $5c72: $75
	rst  $38                                         ; $5c73: $ff
	rst  $38                                         ; $5c74: $ff
	dec  c                                           ; $5c75: $0d
	nop                                              ; $5c76: $00
	ld   a, [bc]                                     ; $5c77: $0a
	ld   b, $a0                                      ; $5c78: $06 $a0
	rlca                                             ; $5c7a: $07
	rrca                                             ; $5c7b: $0f
	db   $10                                         ; $5c7c: $10
	ld   bc, $5201                                   ; $5c7d: $01 $01 $52
	sub  d                                           ; $5c80: $92
	rst  $38                                         ; $5c81: $ff
	rst  $38                                         ; $5c82: $ff
	ld   a, b                                        ; $5c83: $78
	ld   e, c                                        ; $5c84: $59
	ld   a, b                                        ; $5c85: $78
	ld   e, c                                        ; $5c86: $59
	add  sp, -$34                                    ; $5c87: $e8 $cc
	ei                                               ; $5c89: $fb
	or   b                                           ; $5c8a: $b0
	ld   [hl], l                                     ; $5c8b: $75
	dec  c                                           ; $5c8c: $0d
	ld   d, d                                        ; $5c8d: $52
	ld   d, d                                        ; $5c8e: $52
	and  c                                           ; $5c8f: $a1
	ld   h, [hl]                                     ; $5c90: $66
	sub  c                                           ; $5c91: $91
	ld   a, b                                        ; $5c92: $78
	ld   d, d                                        ; $5c93: $52
	ld   [hl], l                                     ; $5c94: $75
	ld   h, l                                        ; $5c95: $65
	sub  l                                           ; $5c96: $95
	ld   d, h                                        ; $5c97: $54
	ld   e, c                                        ; $5c98: $59
	rst  $38                                         ; $5c99: $ff
	rst  $38                                         ; $5c9a: $ff
	dec  c                                           ; $5c9b: $0d
	nop                                              ; $5c9c: $00
	ld   a, [bc]                                     ; $5c9d: $0a
	dec  c                                           ; $5c9e: $0d
	ld   [bc], a                                     ; $5c9f: $02
	ld   bc, $020f                                   ; $5ca0: $01 $0f $02
	ld   [bc], a                                     ; $5ca3: $02
	dec  e                                           ; $5ca4: $1d
	ld   b, b                                        ; $5ca5: $40
	ld   [de], a                                     ; $5ca6: $12
	inc  bc                                          ; $5ca7: $03
	ld   [de], a                                     ; $5ca8: $12
	ld   bc, $2902                                   ; $5ca9: $01 $02 $29
	nop                                              ; $5cac: $00
	ld   bc, $0301                                   ; $5cad: $01 $01 $03
	db   $dd                                         ; $5cb0: $dd
	and  $c4                                         ; $5cb1: $e6 $c4
	halt                                             ; $5cb3: $76
	ld   h, l                                        ; $5cb4: $65
	ld   [hl], h                                     ; $5cb5: $74
	ld   a, b                                        ; $5cb6: $78
	ld   d, d                                        ; $5cb7: $52
	ld   [hl], l                                     ; $5cb8: $75
	dec  c                                           ; $5cb9: $0d
	db   $10                                         ; $5cba: $10
	ld   d, b                                        ; $5cbb: $50
	ld   d, d                                        ; $5cbc: $52
	ld   h, e                                        ; $5cbd: $63
	ld   [hl], d                                     ; $5cbe: $72
	ld   a, b                                        ; $5cbf: $78
	ld   h, e                                        ; $5cc0: $63
	ld   d, d                                        ; $5cc1: $52
	ld   a, [$0401]                                  ; $5cc2: $fa $01 $04
	dec  c                                           ; $5cc5: $0d
	nop                                              ; $5cc6: $00
	ld   a, [bc]                                     ; $5cc7: $0a
	inc  e                                           ; $5cc8: $1c
	ld   [bc], a                                     ; $5cc9: $02
	ld   bc, $0101                                   ; $5cca: $01 $01 $01
	ld   e, b                                        ; $5ccd: $58
	adc  c                                           ; $5cce: $89
	adc  c                                           ; $5ccf: $89
	adc  c                                           ; $5cd0: $89
	adc  c                                           ; $5cd1: $89
	dec  c                                           ; $5cd2: $0d
	ld   h, a                                        ; $5cd3: $67
	adc  l                                           ; $5cd4: $8d
	adc  h                                           ; $5cd5: $8c
	ld   l, c                                        ; $5cd6: $69
	and  c                                           ; $5cd7: $a1
	ld   a, e                                        ; $5cd8: $7b
	ld   [bc], a                                     ; $5cd9: $02
	ldh  a, [rTIMA]                                  ; $5cda: $f0 $05
	ld   e, c                                        ; $5cdc: $59
	inc  bc                                          ; $5cdd: $03
	add  [hl]                                        ; $5cde: $86
	inc  bc                                          ; $5cdf: $03
	call z, $0d9f                                    ; $5ce0: $cc $9f $0d
	adc  h                                           ; $5ce3: $8c
	ld   l, [hl]                                     ; $5ce4: $6e
	inc  bc                                          ; $5ce5: $03
	add  [hl]                                        ; $5ce6: $86
	ld   [bc], a                                     ; $5ce7: $02
	xor  l                                           ; $5ce8: $ad
	ld   a, b                                        ; $5ce9: $78
	sub  b                                           ; $5cea: $90
	ld   a, h                                        ; $5ceb: $7c
	ld   [hl], l                                     ; $5cec: $75
	rst  $38                                         ; $5ced: $ff
	rst  $38                                         ; $5cee: $ff
	dec  c                                           ; $5cef: $0d
	nop                                              ; $5cf0: $00
	ld   a, [bc]                                     ; $5cf1: $0a
	ld   b, $a0                                      ; $5cf2: $06 $a0
	rlca                                             ; $5cf4: $07
	rrca                                             ; $5cf5: $0f
	stop                                             ; $5cf6: $10 $00
	ld   bc, $d0d0                                   ; $5cf8: $01 $d0 $d0
	rst  $38                                         ; $5cfb: $ff
	rst  $38                                         ; $5cfc: $ff
	ld   e, e                                        ; $5cfd: $5b
	and  c                                           ; $5cfe: $a1
	ld   l, a                                        ; $5cff: $6f
	sub  l                                           ; $5d00: $95
	ld   d, h                                        ; $5d01: $54
	dec  c                                           ; $5d02: $0d
	ld   h, l                                        ; $5d03: $65
	ld   [hl], h                                     ; $5d04: $74
	sbc  c                                           ; $5d05: $99
	ld   a, h                                        ; $5d06: $7c
	ld   e, c                                        ; $5d07: $59
	ld   a, b                                        ; $5d08: $78
	ld   sp, hl                                      ; $5d09: $f9
	dec  c                                           ; $5d0a: $0d
	adc  h                                           ; $5d0b: $8c
	ld   d, b                                        ; $5d0c: $50
	sbc  [hl]                                        ; $5d0d: $9e
	sub  a                                           ; $5d0e: $97
	ld   e, l                                        ; $5d0f: $5d
	ld   a, c                                        ; $5d10: $79
	ld   h, l                                        ; $5d11: $65
	ld   l, l                                        ; $5d12: $6d
	adc  h                                           ; $5d13: $8c
	ld   d, [hl]                                     ; $5d14: $56
	sbc  a                                           ; $5d15: $9f
	dec  c                                           ; $5d16: $0d
	nop                                              ; $5d17: $00
	ld   a, [bc]                                     ; $5d18: $0a
	rrca                                             ; $5d19: $0f
	nop                                              ; $5d1a: $00
	ld   bc, $0101                                   ; $5d1b: $01 $01 $01
	inc  bc                                          ; $5d1e: $03
	ld   d, b                                        ; $5d1f: $50
	sbc  [hl]                                        ; $5d20: $9e
	xor  e                                           ; $5d21: $ab
	ei                                               ; $5d22: $fb
	jp   z, $edd7                                    ; $5d23: $ca $d7 $ed

	ld   e, d                                        ; $5d26: $5a
	inc  bc                                          ; $5d27: $03
	add  b                                           ; $5d28: $80
	ld   [hl], h                                     ; $5d29: $74
	ld   e, e                                        ; $5d2a: $5b
	ld   l, l                                        ; $5d2b: $6d
	sbc  a                                           ; $5d2c: $9f
	dec  c                                           ; $5d2d: $0d
	db   $10                                         ; $5d2e: $10
	res  4, l                                        ; $5d2f: $cb $a5
	sub  $76                                         ; $5d31: $d6 $76
	sub  $aa                                         ; $5d33: $d6 $aa
	ei                                               ; $5d35: $fb
	or   b                                           ; $5d36: $b0
	ld   a, l                                        ; $5d37: $7d
	ld   [hl], a                                     ; $5d38: $77
	sbc  d                                           ; $5d39: $9a
	ld   e, c                                        ; $5d3a: $59
	sub  a                                           ; $5d3b: $97
	dec  c                                           ; $5d3c: $0d
	db   $10                                         ; $5d3d: $10
	inc  bc                                          ; $5d3e: $03
	xor  [hl]                                        ; $5d3f: $ae
	ld   d, h                                        ; $5d40: $54
	and  c                                           ; $5d41: $a1
	ld   l, [hl]                                     ; $5d42: $6e
	ld   [hl], c                                     ; $5d43: $71
	ld   e, a                                        ; $5d44: $5f
	rst  $38                                         ; $5d45: $ff
	rst  $38                                         ; $5d46: $ff
	ld   bc, $0d04                                   ; $5d47: $01 $04 $0d
	nop                                              ; $5d4a: $00
	ld   a, [bc]                                     ; $5d4b: $0a
	add  hl, de                                      ; $5d4c: $19
	dec  b                                           ; $5d4d: $05
	inc  bc                                          ; $5d4e: $03
	ld   [bc], a                                     ; $5d4f: $02
	rlc  l                                           ; $5d50: $cb $05
	ld   c, c                                        ; $5d52: $49
	ld   e, c                                        ; $5d53: $59
	sub  a                                           ; $5d54: $97
	inc  bc                                          ; $5d55: $03
	xor  [hl]                                        ; $5d56: $ae
	ld   d, h                                        ; $5d57: $54
	nop                                              ; $5d58: $00
	nop                                              ; $5d59: $00
	inc  b                                           ; $5d5a: $04
	ld   b, a                                        ; $5d5b: $47
	dec  b                                           ; $5d5c: $05
	ld   c, c                                        ; $5d5d: $49
	ld   e, c                                        ; $5d5e: $59
	sub  a                                           ; $5d5f: $97
	inc  bc                                          ; $5d60: $03
	xor  [hl]                                        ; $5d61: $ae
	ld   d, h                                        ; $5d62: $54
	nop                                              ; $5d63: $00
	ld   bc, $a102                                   ; $5d64: $01 $02 $a1
	ld   a, c                                        ; $5d67: $79
	inc  b                                           ; $5d68: $04
	ld   b, l                                        ; $5d69: $45
	ld   [hl], c                                     ; $5d6a: $71
	ld   l, l                                        ; $5d6b: $6d
	ld   a, h                                        ; $5d6c: $7c
	and  b                                           ; $5d6d: $a0
	inc  bc                                          ; $5d6e: $03
	xor  [hl]                                        ; $5d6f: $ae
	ld   d, h                                        ; $5d70: $54
	nop                                              ; $5d71: $00
	ld   [bc], a                                     ; $5d72: $02
	rlca                                             ; $5d73: $07
	jr   jr_060_5d7e                                 ; $5d74: $18 $08

	ld   [bc], a                                     ; $5d76: $02
	inc  bc                                          ; $5d77: $03
	ld   bc, $2000                                   ; $5d78: $01 $00 $20
	nop                                              ; $5d7b: $00
	rlca                                             ; $5d7c: $07
	ld   e, d                                        ; $5d7d: $5a

jr_060_5d7e:
	ld   [$0302], sp                                 ; $5d7e: $08 $02 $03
	ld   bc, $2001                                   ; $5d81: $01 $01 $20
	nop                                              ; $5d84: $00
	rlca                                             ; $5d85: $07
	db   $eb                                         ; $5d86: $eb
	ld   [$0302], sp                                 ; $5d87: $08 $02 $03
	ld   bc, $2002                                   ; $5d8a: $01 $02 $20
	nop                                              ; $5d8d: $00
	ld   b, $82                                      ; $5d8e: $06 $82
	add  hl, bc                                      ; $5d90: $09
	rrca                                             ; $5d91: $0f
	nop                                              ; $5d92: $00
	ld   bc, $0101                                   ; $5d93: $01 $01 $01
	inc  bc                                          ; $5d96: $03
	res  4, l                                        ; $5d97: $cb $a5
	sub  $f3                                         ; $5d99: $d6 $f3
	sub  $aa                                         ; $5d9b: $d6 $aa
	ei                                               ; $5d9d: $fb
	or   b                                           ; $5d9e: $b0
	ld   a, l                                        ; $5d9f: $7d
	ld   [bc], a                                     ; $5da0: $02
	rlc  l                                           ; $5da1: $cb $05
	ld   c, c                                        ; $5da3: $49
	dec  c                                           ; $5da4: $0d
	db   $10                                         ; $5da5: $10
	ld   e, c                                        ; $5da6: $59
	sub  a                                           ; $5da7: $97
	inc  bc                                          ; $5da8: $03
	xor  [hl]                                        ; $5da9: $ae
	ld   d, h                                        ; $5daa: $54
	ld   bc, $0d04                                   ; $5dab: $01 $04 $0d
	nop                                              ; $5dae: $00
	ld   a, [bc]                                     ; $5daf: $0a
	rrca                                             ; $5db0: $0f
	ld   [bc], a                                     ; $5db1: $02
	ld   bc, $401d                                   ; $5db2: $01 $1d $40
	ld   [de], a                                     ; $5db5: $12
	inc  bc                                          ; $5db6: $03
	ld   [de], a                                     ; $5db7: $12
	ld   bc, $2802                                   ; $5db8: $01 $02 $28
	nop                                              ; $5dbb: $00
	ld   bc, $0301                                   ; $5dbc: $01 $01 $03
	ld   l, e                                        ; $5dbf: $6b
	ld   d, h                                        ; $5dc0: $54
	ld   l, e                                        ; $5dc1: $6b
	ld   d, h                                        ; $5dc2: $54
	sbc  a                                           ; $5dc3: $9f
	sub  [hl]                                        ; $5dc4: $96
	sbc  e                                           ; $5dc5: $9b
	ld   h, l                                        ; $5dc6: $65
	ld   d, d                                        ; $5dc7: $52
	ld   [hl], l                                     ; $5dc8: $75
	ld   h, a                                        ; $5dc9: $67
	sbc  l                                           ; $5dca: $9d
	ld   bc, $0d04                                   ; $5dcb: $01 $04 $0d
	nop                                              ; $5dce: $00
	ld   a, [bc]                                     ; $5dcf: $0a
	ld   b, $f0                                      ; $5dd0: $06 $f0
	add  hl, bc                                      ; $5dd2: $09
	rrca                                             ; $5dd3: $0f
	nop                                              ; $5dd4: $00
	ld   bc, $0101                                   ; $5dd5: $01 $01 $01
	inc  bc                                          ; $5dd8: $03
	res  4, l                                        ; $5dd9: $cb $a5
	sub  $f3                                         ; $5ddb: $d6 $f3
	sub  $aa                                         ; $5ddd: $d6 $aa
	ei                                               ; $5ddf: $fb
	or   b                                           ; $5de0: $b0
	ld   a, l                                        ; $5de1: $7d
	inc  b                                           ; $5de2: $04
	ld   b, a                                        ; $5de3: $47
	dec  b                                           ; $5de4: $05
	ld   c, c                                        ; $5de5: $49
	dec  c                                           ; $5de6: $0d
	db   $10                                         ; $5de7: $10
	ld   e, c                                        ; $5de8: $59
	sub  a                                           ; $5de9: $97
	inc  bc                                          ; $5dea: $03
	xor  [hl]                                        ; $5deb: $ae
	ld   d, h                                        ; $5dec: $54
	and  c                                           ; $5ded: $a1
	ld   l, [hl]                                     ; $5dee: $6e
	ld   [hl], c                                     ; $5def: $71
	ld   l, l                                        ; $5df0: $6d
	ld   [hl], c                                     ; $5df1: $71
	ld   e, a                                        ; $5df2: $5f
	ld   sp, hl                                      ; $5df3: $f9
	ld   bc, $0d04                                   ; $5df4: $01 $04 $0d
	nop                                              ; $5df7: $00
	ld   a, [bc]                                     ; $5df8: $0a
	dec  c                                           ; $5df9: $0d
	ld   [bc], a                                     ; $5dfa: $02
	ld   bc, $020f                                   ; $5dfb: $01 $0f $02
	ld   [bc], a                                     ; $5dfe: $02
	dec  e                                           ; $5dff: $1d
	ld   b, b                                        ; $5e00: $40
	ld   [de], a                                     ; $5e01: $12
	inc  bc                                          ; $5e02: $03
	ld   [de], a                                     ; $5e03: $12
	ld   bc, $2902                                   ; $5e04: $01 $02 $29
	nop                                              ; $5e07: $00
	ld   bc, $0301                                   ; $5e08: $01 $01 $03
	ld   l, a                                        ; $5e0b: $6f
	ld   e, d                                        ; $5e0c: $5a
	ld   d, d                                        ; $5e0d: $52
	adc  h                                           ; $5e0e: $8c
	ld   h, a                                        ; $5e0f: $67
	ld   [hl], l                                     ; $5e10: $75
	ld   h, l                                        ; $5e11: $65
	sub  l                                           ; $5e12: $95
	ld   a, [$100d]                                  ; $5e13: $fa $0d $10
	res  4, l                                        ; $5e16: $cb $a5
	sub  $92                                         ; $5e18: $d6 $92
	sub  $aa                                         ; $5e1a: $d6 $aa
	ei                                               ; $5e1c: $fb
	or   b                                           ; $5e1d: $b0
	ld   a, l                                        ; $5e1e: $7d
	ld   [bc], a                                     ; $5e1f: $02
	rlc  l                                           ; $5e20: $cb $05
	ld   c, c                                        ; $5e22: $49
	ld   e, c                                        ; $5e23: $59
	sub  a                                           ; $5e24: $97
	dec  c                                           ; $5e25: $0d
	db   $10                                         ; $5e26: $10
	inc  bc                                          ; $5e27: $03
	xor  [hl]                                        ; $5e28: $ae
	ld   d, h                                        ; $5e29: $54
	and  c                                           ; $5e2a: $a1
	ld   [hl], l                                     ; $5e2b: $75
	ld   h, a                                        ; $5e2c: $67
	ld   a, h                                        ; $5e2d: $7c
	sub  [hl]                                        ; $5e2e: $96
	ld   a, [$0401]                                  ; $5e2f: $fa $01 $04
	dec  c                                           ; $5e32: $0d
	nop                                              ; $5e33: $00
	ld   a, [bc]                                     ; $5e34: $0a
	inc  e                                           ; $5e35: $1c
	ld   [bc], a                                     ; $5e36: $02
	ld   bc, $0101                                   ; $5e37: $01 $01 $01
	ld   e, b                                        ; $5e3a: $58
	adc  c                                           ; $5e3b: $89
	adc  c                                           ; $5e3c: $89
	adc  c                                           ; $5e3d: $89
	adc  c                                           ; $5e3e: $89
	dec  c                                           ; $5e3f: $0d
	ld   h, a                                        ; $5e40: $67
	adc  l                                           ; $5e41: $8d
	adc  h                                           ; $5e42: $8c
	ld   l, c                                        ; $5e43: $69
	and  c                                           ; $5e44: $a1
	ld   a, e                                        ; $5e45: $7b
	ld   [bc], a                                     ; $5e46: $02
	ldh  a, [rTIMA]                                  ; $5e47: $f0 $05
	ld   e, c                                        ; $5e49: $59
	inc  bc                                          ; $5e4a: $03
	add  [hl]                                        ; $5e4b: $86
	inc  bc                                          ; $5e4c: $03
	call z, $0d9f                                    ; $5e4d: $cc $9f $0d
	ld   h, c                                        ; $5e50: $61
	ld   a, h                                        ; $5e51: $7c
	inc  bc                                          ; $5e52: $03
	add  [hl]                                        ; $5e53: $86
	ld   e, b                                        ; $5e54: $58
	adc  d                                           ; $5e55: $8a
	ld   d, [hl]                                     ; $5e56: $56
	ld   e, d                                        ; $5e57: $5a
	ld   [bc], a                                     ; $5e58: $02
	jr   z, @+$5f                                    ; $5e59: $28 $5d

	ld   [hl], h                                     ; $5e5b: $74
	rst  $38                                         ; $5e5c: $ff
	rst  $38                                         ; $5e5d: $ff
	dec  c                                           ; $5e5e: $0d
	nop                                              ; $5e5f: $00
	ld   a, [bc]                                     ; $5e60: $0a
	ld   b, $f0                                      ; $5e61: $06 $f0
	add  hl, bc                                      ; $5e63: $09
	rrca                                             ; $5e64: $0f
	nop                                              ; $5e65: $00
	ld   bc, $0101                                   ; $5e66: $01 $01 $01
	inc  bc                                          ; $5e69: $03
	res  4, l                                        ; $5e6a: $cb $a5
	sub  $f3                                         ; $5e6c: $d6 $f3
	sub  $aa                                         ; $5e6e: $d6 $aa
	ei                                               ; $5e70: $fb
	or   b                                           ; $5e71: $b0
	ld   a, l                                        ; $5e72: $7d
	dec  c                                           ; $5e73: $0d
	db   $10                                         ; $5e74: $10
	ld   [bc], a                                     ; $5e75: $02
	and  c                                           ; $5e76: $a1
	ld   a, c                                        ; $5e77: $79
	inc  b                                           ; $5e78: $04
	ld   b, l                                        ; $5e79: $45
	ld   [hl], c                                     ; $5e7a: $71
	ld   l, l                                        ; $5e7b: $6d
	ld   a, h                                        ; $5e7c: $7c
	ld   e, c                                        ; $5e7d: $59
	sub  a                                           ; $5e7e: $97
	inc  bc                                          ; $5e7f: $03
	xor  [hl]                                        ; $5e80: $ae
	ld   d, h                                        ; $5e81: $54
	and  c                                           ; $5e82: $a1
	dec  c                                           ; $5e83: $0d
	db   $10                                         ; $5e84: $10
	ld   l, [hl]                                     ; $5e85: $6e
	ld   [hl], c                                     ; $5e86: $71
	ld   l, l                                        ; $5e87: $6d
	ld   [hl], c                                     ; $5e88: $71
	ld   e, a                                        ; $5e89: $5f
	ld   sp, hl                                      ; $5e8a: $f9
	ld   bc, $0d04                                   ; $5e8b: $01 $04 $0d
	nop                                              ; $5e8e: $00
	ld   a, [bc]                                     ; $5e8f: $0a
	dec  c                                           ; $5e90: $0d
	ld   [bc], a                                     ; $5e91: $02
	ld   bc, $020f                                   ; $5e92: $01 $0f $02
	ld   [bc], a                                     ; $5e95: $02
	dec  e                                           ; $5e96: $1d
	ld   b, b                                        ; $5e97: $40
	ld   [de], a                                     ; $5e98: $12
	inc  bc                                          ; $5e99: $03
	ld   [de], a                                     ; $5e9a: $12
	ld   bc, $2902                                   ; $5e9b: $01 $02 $29
	nop                                              ; $5e9e: $00
	ld   bc, $0301                                   ; $5e9f: $01 $01 $03
	ld   l, a                                        ; $5ea2: $6f
	ld   e, d                                        ; $5ea3: $5a
	ld   d, d                                        ; $5ea4: $52
	adc  h                                           ; $5ea5: $8c
	ld   h, a                                        ; $5ea6: $67
	ld   [hl], l                                     ; $5ea7: $75
	ld   h, l                                        ; $5ea8: $65
	sub  l                                           ; $5ea9: $95
	ld   a, [$100d]                                  ; $5eaa: $fa $0d $10
	res  4, l                                        ; $5ead: $cb $a5
	sub  $92                                         ; $5eaf: $d6 $92
	sub  $aa                                         ; $5eb1: $d6 $aa
	ei                                               ; $5eb3: $fb
	or   b                                           ; $5eb4: $b0
	ld   a, l                                        ; $5eb5: $7d
	ld   [bc], a                                     ; $5eb6: $02
	rlc  l                                           ; $5eb7: $cb $05
	ld   c, c                                        ; $5eb9: $49
	ld   e, c                                        ; $5eba: $59
	sub  a                                           ; $5ebb: $97
	dec  c                                           ; $5ebc: $0d
	db   $10                                         ; $5ebd: $10
	inc  bc                                          ; $5ebe: $03
	xor  [hl]                                        ; $5ebf: $ae
	ld   d, h                                        ; $5ec0: $54
	and  c                                           ; $5ec1: $a1
	ld   [hl], l                                     ; $5ec2: $75
	ld   h, a                                        ; $5ec3: $67
	ld   a, h                                        ; $5ec4: $7c
	sub  [hl]                                        ; $5ec5: $96
	ld   a, [$0401]                                  ; $5ec6: $fa $01 $04
	dec  c                                           ; $5ec9: $0d
	nop                                              ; $5eca: $00
	ld   a, [bc]                                     ; $5ecb: $0a
	inc  e                                           ; $5ecc: $1c
	ld   [bc], a                                     ; $5ecd: $02
	ld   bc, $0101                                   ; $5ece: $01 $01 $01
	ld   e, b                                        ; $5ed1: $58
	adc  c                                           ; $5ed2: $89
	adc  c                                           ; $5ed3: $89
	adc  c                                           ; $5ed4: $89
	adc  c                                           ; $5ed5: $89
	dec  c                                           ; $5ed6: $0d
	ld   h, a                                        ; $5ed7: $67
	adc  l                                           ; $5ed8: $8d
	adc  h                                           ; $5ed9: $8c
	ld   l, c                                        ; $5eda: $69
	and  c                                           ; $5edb: $a1
	ld   a, e                                        ; $5edc: $7b
	ld   [bc], a                                     ; $5edd: $02
	ldh  a, [rTIMA]                                  ; $5ede: $f0 $05
	ld   e, c                                        ; $5ee0: $59
	inc  bc                                          ; $5ee1: $03
	add  [hl]                                        ; $5ee2: $86
	inc  bc                                          ; $5ee3: $03
	call z, $0d9f                                    ; $5ee4: $cc $9f $0d
	ld   h, c                                        ; $5ee7: $61
	ld   a, h                                        ; $5ee8: $7c
	inc  bc                                          ; $5ee9: $03
	add  [hl]                                        ; $5eea: $86
	ld   e, b                                        ; $5eeb: $58
	adc  d                                           ; $5eec: $8a
	ld   d, [hl]                                     ; $5eed: $56
	ld   e, d                                        ; $5eee: $5a
	ld   [bc], a                                     ; $5eef: $02
	jr   z, jr_060_5f4f                              ; $5ef0: $28 $5d

	ld   [hl], h                                     ; $5ef2: $74
	rst  $38                                         ; $5ef3: $ff
	rst  $38                                         ; $5ef4: $ff
	dec  c                                           ; $5ef5: $0d
	nop                                              ; $5ef6: $00
	ld   a, [bc]                                     ; $5ef7: $0a
	ld   b, $f0                                      ; $5ef8: $06 $f0
	add  hl, bc                                      ; $5efa: $09
	dec  c                                           ; $5efb: $0d
	ld   [bc], a                                     ; $5efc: $02
	ld   bc, $020f                                   ; $5efd: $01 $0f $02
	ld   [bc], a                                     ; $5f00: $02
	dec  e                                           ; $5f01: $1d
	ld   b, b                                        ; $5f02: $40
	ld   [de], a                                     ; $5f03: $12
	inc  bc                                          ; $5f04: $03
	ld   [de], a                                     ; $5f05: $12
	ld   bc, $2902                                   ; $5f06: $01 $02 $29
	nop                                              ; $5f09: $00
	ld   bc, $0301                                   ; $5f0a: $01 $01 $03
	ld   a, b                                        ; $5f0d: $78
	ld   a, c                                        ; $5f0e: $79
	db   $dd                                         ; $5f0f: $dd
	ei                                               ; $5f10: $fb
	call nz, $6576                                   ; $5f11: $c4 $76 $65
	ld   [hl], h                                     ; $5f14: $74
	adc  h                                           ; $5f15: $8c
	ld   h, a                                        ; $5f16: $67
	ld   a, h                                        ; $5f17: $7c
	ld   a, [$100d]                                  ; $5f18: $fa $0d $10
	res  4, l                                        ; $5f1b: $cb $a5
	sub  $92                                         ; $5f1d: $d6 $92
	sub  $aa                                         ; $5f1f: $d6 $aa
	ei                                               ; $5f21: $fb
	or   b                                           ; $5f22: $b0
	ld   a, l                                        ; $5f23: $7d
	ld   [bc], a                                     ; $5f24: $02
	rlc  l                                           ; $5f25: $cb $05
	ld   c, c                                        ; $5f27: $49
	ld   e, c                                        ; $5f28: $59
	sub  a                                           ; $5f29: $97
	dec  c                                           ; $5f2a: $0d
	db   $10                                         ; $5f2b: $10
	inc  bc                                          ; $5f2c: $03
	xor  [hl]                                        ; $5f2d: $ae
	ld   d, h                                        ; $5f2e: $54
	and  c                                           ; $5f2f: $a1
	ld   [hl], l                                     ; $5f30: $75
	ld   h, a                                        ; $5f31: $67
	ld   a, h                                        ; $5f32: $7c
	sub  [hl]                                        ; $5f33: $96
	ld   a, [$0401]                                  ; $5f34: $fa $01 $04
	dec  c                                           ; $5f37: $0d
	nop                                              ; $5f38: $00
	ld   a, [bc]                                     ; $5f39: $0a
	inc  e                                           ; $5f3a: $1c
	ld   [bc], a                                     ; $5f3b: $02
	ld   bc, $0101                                   ; $5f3c: $01 $01 $01
	ld   e, b                                        ; $5f3f: $58
	adc  c                                           ; $5f40: $89
	adc  c                                           ; $5f41: $89
	adc  c                                           ; $5f42: $89
	adc  c                                           ; $5f43: $89
	dec  c                                           ; $5f44: $0d
	ld   h, a                                        ; $5f45: $67
	adc  l                                           ; $5f46: $8d
	adc  h                                           ; $5f47: $8c
	ld   l, c                                        ; $5f48: $69
	and  c                                           ; $5f49: $a1
	ld   a, e                                        ; $5f4a: $7b
	ld   [bc], a                                     ; $5f4b: $02
	ldh  a, [rTIMA]                                  ; $5f4c: $f0 $05
	ld   e, c                                        ; $5f4e: $59

jr_060_5f4f:
	inc  bc                                          ; $5f4f: $03
	add  [hl]                                        ; $5f50: $86
	inc  bc                                          ; $5f51: $03
	call z, $0d9f                                    ; $5f52: $cc $9f $0d
	ld   h, c                                        ; $5f55: $61
	ld   a, h                                        ; $5f56: $7c
	inc  bc                                          ; $5f57: $03
	add  [hl]                                        ; $5f58: $86
	ld   e, b                                        ; $5f59: $58
	adc  d                                           ; $5f5a: $8a
	ld   d, [hl]                                     ; $5f5b: $56
	ld   e, d                                        ; $5f5c: $5a
	ld   [bc], a                                     ; $5f5d: $02
	jr   z, @+$5f                                    ; $5f5e: $28 $5d

	ld   [hl], h                                     ; $5f60: $74
	rst  $38                                         ; $5f61: $ff
	rst  $38                                         ; $5f62: $ff
	dec  c                                           ; $5f63: $0d
	nop                                              ; $5f64: $00
	ld   a, [bc]                                     ; $5f65: $0a
	ld   b, $f0                                      ; $5f66: $06 $f0
	add  hl, bc                                      ; $5f68: $09
	rrca                                             ; $5f69: $0f
	nop                                              ; $5f6a: $00
	ld   bc, $0101                                   ; $5f6b: $01 $01 $01
	inc  bc                                          ; $5f6e: $03
	inc  bc                                          ; $5f6f: $03
	ld   l, b                                        ; $5f70: $68
	ld   a, l                                        ; $5f71: $7d
	sbc  [hl]                                        ; $5f72: $9e
	cp   d                                           ; $5f73: $ba
	ei                                               ; $5f74: $fb
	ret  c                                           ; $5f75: $d8

	ld   l, [hl]                                     ; $5f76: $6e
	sbc  a                                           ; $5f77: $9f
	dec  c                                           ; $5f78: $0d
	db   $10                                         ; $5f79: $10
	ld   [hl], a                                     ; $5f7a: $77
	ld   d, h                                        ; $5f7b: $54
	sub  d                                           ; $5f7c: $92
	ld   [hl], c                                     ; $5f7d: $71
	ld   [hl], h                                     ; $5f7e: $74
	ld   [bc], a                                     ; $5f7f: $02
	rlca                                             ; $5f80: $07
	adc  a                                           ; $5f81: $8f
	ld   a, [hl]                                     ; $5f82: $7e
	sub  [hl]                                        ; $5f83: $96
	ld   e, c                                        ; $5f84: $59
	ld   [hl], c                                     ; $5f85: $71
	ld   l, l                                        ; $5f86: $6d
	dec  c                                           ; $5f87: $0d
	db   $10                                         ; $5f88: $10
	ld   a, h                                        ; $5f89: $7c
	ld   e, c                                        ; $5f8a: $59
	ld   a, b                                        ; $5f8b: $78
	rst  $38                                         ; $5f8c: $ff
	rst  $38                                         ; $5f8d: $ff
	ld   bc, $0d04                                   ; $5f8e: $01 $04 $0d
	nop                                              ; $5f91: $00
	ld   a, [bc]                                     ; $5f92: $0a
	add  hl, de                                      ; $5f93: $19
	dec  b                                           ; $5f94: $05
	inc  bc                                          ; $5f95: $03
	inc  bc                                          ; $5f96: $03
	ld   l, e                                        ; $5f97: $6b
	inc  bc                                          ; $5f98: $03
	ld   c, a                                        ; $5f99: $4f
	ld   e, c                                        ; $5f9a: $59
	sub  a                                           ; $5f9b: $97
	ld   [bc], a                                     ; $5f9c: $02
	jp   nc, Jump_060_5461                           ; $5f9d: $d2 $61 $54

	ld   a, c                                        ; $5fa0: $79
	ld   h, a                                        ; $5fa1: $67
	ld   e, l                                        ; $5fa2: $5d
	ld   d, h                                        ; $5fa3: $54
	nop                                              ; $5fa4: $00
	nop                                              ; $5fa5: $00
	ld   [bc], a                                     ; $5fa6: $02
	inc  bc                                          ; $5fa7: $03
	and  b                                           ; $5fa8: $a0
	ld   l, l                                        ; $5fa9: $6d
	ld   [hl], h                                     ; $5faa: $74
	ld   [hl], h                                     ; $5fab: $74
	ld   [bc], a                                     ; $5fac: $02
	rlca                                             ; $5fad: $07
	adc  [hl]                                        ; $5fae: $8e
	nop                                              ; $5faf: $00
	ld   bc, $5504                                   ; $5fb0: $01 $04 $55
	ld   a, c                                        ; $5fb3: $79
	ld   [bc], a                                     ; $5fb4: $02
	xor  [hl]                                        ; $5fb5: $ae
	and  b                                           ; $5fb6: $a0
	inc  b                                           ; $5fb7: $04
	ld   [hl], c                                     ; $5fb8: $71
	ld   e, a                                        ; $5fb9: $5f
	ld   [hl], h                                     ; $5fba: $74
	ld   [bc], a                                     ; $5fbb: $02
	jr   nz, jr_060_5fc0                             ; $5fbc: $20 $02

	and  c                                           ; $5fbe: $a1
	ld   a, c                                        ; $5fbf: $79

jr_060_5fc0:
	ld   [bc], a                                     ; $5fc0: $02
	rlca                                             ; $5fc1: $07
	adc  [hl]                                        ; $5fc2: $8e
	nop                                              ; $5fc3: $00
	ld   [bc], a                                     ; $5fc4: $02
	rlca                                             ; $5fc5: $07
	ld   l, d                                        ; $5fc6: $6a
	ld   a, [bc]                                     ; $5fc7: $0a
	ld   [bc], a                                     ; $5fc8: $02
	inc  bc                                          ; $5fc9: $03
	ld   bc, $2000                                   ; $5fca: $01 $00 $20
	nop                                              ; $5fcd: $00
	rlca                                             ; $5fce: $07
	xor  h                                           ; $5fcf: $ac
	ld   a, [bc]                                     ; $5fd0: $0a
	ld   [bc], a                                     ; $5fd1: $02
	inc  bc                                          ; $5fd2: $03
	ld   bc, $2001                                   ; $5fd3: $01 $01 $20
	nop                                              ; $5fd6: $00
	rlca                                             ; $5fd7: $07
	ld   c, h                                        ; $5fd8: $4c
	dec  bc                                          ; $5fd9: $0b
	ld   [bc], a                                     ; $5fda: $02
	inc  bc                                          ; $5fdb: $03
	ld   bc, $2002                                   ; $5fdc: $01 $02 $20
	nop                                              ; $5fdf: $00
	ld   b, $06                                      ; $5fe0: $06 $06
	inc  c                                           ; $5fe2: $0c
	rrca                                             ; $5fe3: $0f
	nop                                              ; $5fe4: $00
	ld   bc, $0101                                   ; $5fe5: $01 $01 $01
	inc  bc                                          ; $5fe8: $03
	inc  bc                                          ; $5fe9: $03
	ld   l, e                                        ; $5fea: $6b
	inc  bc                                          ; $5feb: $03
	ld   c, a                                        ; $5fec: $4f
	ld   e, c                                        ; $5fed: $59
	sub  a                                           ; $5fee: $97
	ld   [bc], a                                     ; $5fef: $02
	jp   nc, Jump_060_5461                           ; $5ff0: $d2 $61 $54

	ld   a, c                                        ; $5ff3: $79
	ld   h, a                                        ; $5ff4: $67
	ld   e, l                                        ; $5ff5: $5d
	ld   [hl], c                                     ; $5ff6: $71
	ld   [hl], h                                     ; $5ff7: $74
	dec  c                                           ; $5ff8: $0d
	db   $10                                         ; $5ff9: $10
	ld   [bc], a                                     ; $5ffa: $02
	rlca                                             ; $5ffb: $07
	adc  [hl]                                        ; $5ffc: $8e
	and  c                                           ; $5ffd: $a1
	ld   l, [hl]                                     ; $5ffe: $6e
	sub  [hl]                                        ; $5fff: $96
	ld   a, b                                        ; $6000: $78
	ld   bc, $0d04                                   ; $6001: $01 $04 $0d
	nop                                              ; $6004: $00
	ld   a, [bc]                                     ; $6005: $0a
	inc  e                                           ; $6006: $1c
	ld   [bc], a                                     ; $6007: $02
	ld   bc, $1d01                                   ; $6008: $01 $01 $1d
	ld   b, b                                        ; $600b: $40
	ld   [de], a                                     ; $600c: $12
	inc  bc                                          ; $600d: $03
	ld   [de], a                                     ; $600e: $12
	ld   bc, $2802                                   ; $600f: $01 $02 $28
	nop                                              ; $6012: $00
	ld   bc, $0301                                   ; $6013: $01 $01 $03
	sub  [hl]                                        ; $6016: $96
	sbc  e                                           ; $6017: $9b
	ld   h, l                                        ; $6018: $65
	ld   d, d                                        ; $6019: $52
	ld   [hl], l                                     ; $601a: $75
	ld   h, a                                        ; $601b: $67
	sbc  l                                           ; $601c: $9d
	ld   bc, $0d04                                   ; $601d: $01 $04 $0d
	nop                                              ; $6020: $00
	ld   a, [bc]                                     ; $6021: $0a
	ld   b, $7a                                      ; $6022: $06 $7a
	inc  c                                           ; $6024: $0c
	rrca                                             ; $6025: $0f
	nop                                              ; $6026: $00
	ld   bc, $0101                                   ; $6027: $01 $01 $01
	inc  bc                                          ; $602a: $03
	ld   [bc], a                                     ; $602b: $02
	inc  bc                                          ; $602c: $03
	and  b                                           ; $602d: $a0
	ld   l, l                                        ; $602e: $6d
	ld   [hl], h                                     ; $602f: $74
	ld   [hl], h                                     ; $6030: $74
	ld   [bc], a                                     ; $6031: $02
	rlca                                             ; $6032: $07
	adc  [hl]                                        ; $6033: $8e
	rst  $38                                         ; $6034: $ff
	rst  $38                                         ; $6035: $ff
	dec  c                                           ; $6036: $0d
	db   $10                                         ; $6037: $10
	ld   l, [hl]                                     ; $6038: $6e
	ld   [hl], c                                     ; $6039: $71
	ld   l, l                                        ; $603a: $6d
	ld   [hl], c                                     ; $603b: $71
	ld   e, a                                        ; $603c: $5f
	ld   sp, hl                                      ; $603d: $f9
	ld   bc, $0d04                                   ; $603e: $01 $04 $0d
	nop                                              ; $6041: $00
	ld   a, [bc]                                     ; $6042: $0a
	dec  c                                           ; $6043: $0d
	ld   [bc], a                                     ; $6044: $02
	ld   bc, $020f                                   ; $6045: $01 $0f $02
	inc  bc                                          ; $6048: $03
	dec  e                                           ; $6049: $1d
	ld   b, b                                        ; $604a: $40
	ld   [de], a                                     ; $604b: $12
	inc  bc                                          ; $604c: $03
	ld   [de], a                                     ; $604d: $12
	ld   bc, $2902                                   ; $604e: $01 $02 $29
	nop                                              ; $6051: $00
	ld   bc, $0301                                   ; $6052: $01 $01 $03
	pop  de                                          ; $6055: $d1
	sbc  [hl]                                        ; $6056: $9e
	pop  de                                          ; $6057: $d1
	xor  h                                           ; $6058: $ac
	ld   a, [$100d]                                  ; $6059: $fa $0d $10
	cp   e                                           ; $605c: $bb
	db   $ed                                         ; $605d: $ed
	cp   e                                           ; $605e: $bb
	db   $ed                                         ; $605f: $ed
	ld   [bc], a                                     ; $6060: $02
	inc  bc                                          ; $6061: $03
	and  b                                           ; $6062: $a0
	ld   l, l                                        ; $6063: $6d
	ld   [hl], h                                     ; $6064: $74
	ld   [hl], h                                     ; $6065: $74
	dec  c                                           ; $6066: $0d
	db   $10                                         ; $6067: $10
	ld   [bc], a                                     ; $6068: $02
	rlca                                             ; $6069: $07
	adc  [hl]                                        ; $606a: $8e
	and  c                                           ; $606b: $a1
	ld   h, [hl]                                     ; $606c: $66
	sub  c                                           ; $606d: $91
	ld   d, b                                        ; $606e: $50
	sbc  b                                           ; $606f: $98
	adc  h                                           ; $6070: $8c
	ld   l, c                                        ; $6071: $69
	and  c                                           ; $6072: $a1
	ld   a, [$0401]                                  ; $6073: $fa $01 $04
	dec  c                                           ; $6076: $0d
	nop                                              ; $6077: $00
	ld   a, [bc]                                     ; $6078: $0a
	inc  e                                           ; $6079: $1c
	ld   [bc], a                                     ; $607a: $02
	ld   bc, $0101                                   ; $607b: $01 $01 $01
	ld   e, b                                        ; $607e: $58
	adc  c                                           ; $607f: $89
	adc  c                                           ; $6080: $89
	adc  c                                           ; $6081: $89
	adc  c                                           ; $6082: $89
	dec  c                                           ; $6083: $0d
	ld   h, a                                        ; $6084: $67
	adc  l                                           ; $6085: $8d
	adc  h                                           ; $6086: $8c
	ld   l, c                                        ; $6087: $69
	and  c                                           ; $6088: $a1
	ld   a, e                                        ; $6089: $7b
	ld   [bc], a                                     ; $608a: $02
	ldh  a, [rTIMA]                                  ; $608b: $f0 $05
	ld   e, c                                        ; $608d: $59
	inc  bc                                          ; $608e: $03
	add  [hl]                                        ; $608f: $86
	inc  bc                                          ; $6090: $03
	call z, $0d9f                                    ; $6091: $cc $9f $0d
	adc  h                                           ; $6094: $8c
	ld   l, [hl]                                     ; $6095: $6e
	sbc  [hl]                                        ; $6096: $9e
	inc  bc                                          ; $6097: $03
	add  [hl]                                        ; $6098: $86
	ld   [bc], a                                     ; $6099: $02
	xor  l                                           ; $609a: $ad
	ld   a, b                                        ; $609b: $78
	db   $e4                                         ; $609c: $e4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $609d: $cf
	ld   [hl], l                                     ; $609e: $75
	rst  $38                                         ; $609f: $ff
	rst  $38                                         ; $60a0: $ff
	dec  c                                           ; $60a1: $0d
	nop                                              ; $60a2: $00
	ld   a, [bc]                                     ; $60a3: $0a
	rrca                                             ; $60a4: $0f
	db   $10                                         ; $60a5: $10
	ld   bc, $d001                                   ; $60a6: $01 $01 $d0
	ret  nc                                          ; $60a9: $d0

	rst  $38                                         ; $60aa: $ff
	rst  $38                                         ; $60ab: $ff
	inc  b                                           ; $60ac: $04
	ld   l, l                                        ; $60ad: $6d
	sub  b                                           ; $60ae: $90
	inc  bc                                          ; $60af: $03
	xor  a                                           ; $60b0: $af
	ld   h, e                                        ; $60b1: $63
	ld   d, d                                        ; $60b2: $52
	ld   h, c                                        ; $60b3: $61
	sbc  e                                           ; $60b4: $9b
	ld   a, l                                        ; $60b5: $7d
	dec  c                                           ; $60b6: $0d
	ld   l, e                                        ; $60b7: $6b
	ld   d, h                                        ; $60b8: $54
	ld   [hl], l                                     ; $60b9: $75
	ld   h, l                                        ; $60ba: $65
	ld   l, l                                        ; $60bb: $6d
	sub  [hl]                                        ; $60bc: $96
	rst  $38                                         ; $60bd: $ff
	rst  $38                                         ; $60be: $ff
	dec  c                                           ; $60bf: $0d
	nop                                              ; $60c0: $00
	ld   a, [bc]                                     ; $60c1: $0a
	ld   b, $7a                                      ; $60c2: $06 $7a
	inc  c                                           ; $60c4: $0c
	rrca                                             ; $60c5: $0f
	nop                                              ; $60c6: $00
	ld   bc, $0101                                   ; $60c7: $01 $01 $01
	inc  bc                                          ; $60ca: $03
	dec  b                                           ; $60cb: $05
	and  e                                           ; $60cc: $a3
	dec  b                                           ; $60cd: $05
	sbc  d                                           ; $60ce: $9a
	ld   a, c                                        ; $60cf: $79
	inc  b                                           ; $60d0: $04
	ld   d, l                                        ; $60d1: $55
	ld   a, c                                        ; $60d2: $79
	ld   [bc], a                                     ; $60d3: $02
	xor  [hl]                                        ; $60d4: $ae
	and  b                                           ; $60d5: $a0
	inc  b                                           ; $60d6: $04
	ld   [hl], c                                     ; $60d7: $71
	ld   e, a                                        ; $60d8: $5f
	ld   [hl], h                                     ; $60d9: $74
	dec  c                                           ; $60da: $0d
	db   $10                                         ; $60db: $10
	ld   [bc], a                                     ; $60dc: $02
	jr   nz, jr_060_60e1                             ; $60dd: $20 $02

	and  c                                           ; $60df: $a1
	ld   a, c                                        ; $60e0: $79

jr_060_60e1:
	ld   [bc], a                                     ; $60e1: $02
	rlca                                             ; $60e2: $07
	adc  [hl]                                        ; $60e3: $8e
	rst  $38                                         ; $60e4: $ff
	rst  $38                                         ; $60e5: $ff
	dec  c                                           ; $60e6: $0d
	db   $10                                         ; $60e7: $10
	ld   l, [hl]                                     ; $60e8: $6e
	ld   [hl], c                                     ; $60e9: $71
	ld   l, l                                        ; $60ea: $6d
	ld   [hl], c                                     ; $60eb: $71
	ld   e, a                                        ; $60ec: $5f
	ld   sp, hl                                      ; $60ed: $f9
	ld   bc, $0d04                                   ; $60ee: $01 $04 $0d
	nop                                              ; $60f1: $00
	ld   a, [bc]                                     ; $60f2: $0a
	dec  c                                           ; $60f3: $0d
	ld   [bc], a                                     ; $60f4: $02
	ld   bc, $020f                                   ; $60f5: $01 $0f $02
	inc  bc                                          ; $60f8: $03
	dec  e                                           ; $60f9: $1d
	ld   b, b                                        ; $60fa: $40
	ld   [de], a                                     ; $60fb: $12
	inc  bc                                          ; $60fc: $03
	ld   [de], a                                     ; $60fd: $12
	ld   bc, $2902                                   ; $60fe: $01 $02 $29
	nop                                              ; $6101: $00
	ld   bc, $0301                                   ; $6102: $01 $01 $03
	ld   a, b                                        ; $6105: $78
	sbc  [hl]                                        ; $6106: $9e
	ld   a, b                                        ; $6107: $78
	and  c                                           ; $6108: $a1
	ld   [hl], h                                     ; $6109: $74
	ld   [bc], a                                     ; $610a: $02
	rlca                                             ; $610b: $07
	adc  l                                           ; $610c: $8d
	inc  b                                           ; $610d: $04
	ld   a, b                                        ; $610e: $78
	and  b                                           ; $610f: $a0
	rst  $38                                         ; $6110: $ff
	rst  $38                                         ; $6111: $ff
	dec  c                                           ; $6112: $0d
	db   $10                                         ; $6113: $10
	rst  $38                                         ; $6114: $ff
	rst  $38                                         ; $6115: $ff
	rst  $38                                         ; $6116: $ff
	rst  $38                                         ; $6117: $ff
	rst  $38                                         ; $6118: $ff
	rst  $38                                         ; $6119: $ff
	ld   bc, $0d04                                   ; $611a: $01 $04 $0d
	nop                                              ; $611d: $00
	ld   a, [bc]                                     ; $611e: $0a
	dec  c                                           ; $611f: $0d
	nop                                              ; $6120: $00
	nop                                              ; $6121: $00
	rrca                                             ; $6122: $0f
	nop                                              ; $6123: $00
	ld   bc, $0b0c                                   ; $6124: $01 $0c $0b
	inc  e                                           ; $6127: $1c
	ld   [bc], a                                     ; $6128: $02
	ld   bc, $0101                                   ; $6129: $01 $01 $01
	ld   d, b                                        ; $612c: $50
	sbc  [hl]                                        ; $612d: $9e
	ld   h, a                                        ; $612e: $67
	adc  l                                           ; $612f: $8d
	adc  h                                           ; $6130: $8c
	ld   l, c                                        ; $6131: $69
	and  c                                           ; $6132: $a1
	ld   [bc], a                                     ; $6133: $02
	ldh  a, [rTIMA]                                  ; $6134: $f0 $05
	ld   e, c                                        ; $6136: $59
	inc  bc                                          ; $6137: $03
	add  [hl]                                        ; $6138: $86
	inc  bc                                          ; $6139: $03
	call z, $0d9f                                    ; $613a: $cc $9f $0d
	ld   d, d                                        ; $613d: $52
	ld   [hl], c                                     ; $613e: $71
	ld   h, l                                        ; $613f: $65
	sub  e                                           ; $6140: $93
	and  c                                           ; $6141: $a1
	sbc  [hl]                                        ; $6142: $9e
	ld   [bc], a                                     ; $6143: $02
	and  c                                           ; $6144: $a1
	and  b                                           ; $6145: $a0
	inc  bc                                          ; $6146: $03
	add  e                                           ; $6147: $83
	ld   [hl], c                                     ; $6148: $71
	ld   [hl], h                                     ; $6149: $74
	dec  c                                           ; $614a: $0d
	ld   d, d                                        ; $614b: $52
	adc  h                                           ; $614c: $8c
	ld   h, l                                        ; $614d: $65
	ld   l, l                                        ; $614e: $6d
	sbc  l                                           ; $614f: $9d
	sbc  a                                           ; $6150: $9f
	ld   e, b                                        ; $6151: $58
	adc  c                                           ; $6152: $89
	adc  c                                           ; $6153: $89
	adc  c                                           ; $6154: $89
	adc  c                                           ; $6155: $89
	sbc  a                                           ; $6156: $9f
	dec  c                                           ; $6157: $0d
	nop                                              ; $6158: $00
	ld   a, [bc]                                     ; $6159: $0a
	rrca                                             ; $615a: $0f
	db   $10                                         ; $615b: $10
	ld   bc, $7801                                   ; $615c: $01 $01 $78
	rst  $38                                         ; $615f: $ff
	rst  $38                                         ; $6160: $ff
	ld   a, b                                        ; $6161: $78
	ld   e, c                                        ; $6162: $59
	ld   a, b                                        ; $6163: $78
	ld   e, c                                        ; $6164: $59
	pop  af                                          ; $6165: $f1
	and  l                                           ; $6166: $a5
	db   $ed                                         ; $6167: $ed
	jp   z, $0d78                                    ; $6168: $ca $78 $0d

	ld   [bc], a                                     ; $616b: $02
	rlca                                             ; $616c: $07
	adc  l                                           ; $616d: $8d
	ld   e, c                                        ; $616e: $59
	ld   l, l                                        ; $616f: $6d
	ld   [hl], l                                     ; $6170: $75
	ld   h, a                                        ; $6171: $67
	ld   a, e                                        ; $6172: $7b
	rst  $38                                         ; $6173: $ff
	rst  $38                                         ; $6174: $ff
	ret  nc                                          ; $6175: $d0

	ret  nc                                          ; $6176: $d0

	rst  $38                                         ; $6177: $ff
	rst  $38                                         ; $6178: $ff
	dec  c                                           ; $6179: $0d
	nop                                              ; $617a: $00
	ld   a, [bc]                                     ; $617b: $0a
	ld   b, $7a                                      ; $617c: $06 $7a
	inc  c                                           ; $617e: $0c
	dec  c                                           ; $617f: $0d
	ld   [bc], a                                     ; $6180: $02
	ld   bc, $020f                                   ; $6181: $01 $0f $02
	ld   [bc], a                                     ; $6184: $02
	dec  e                                           ; $6185: $1d
	ld   b, b                                        ; $6186: $40
	ld   [de], a                                     ; $6187: $12
	inc  bc                                          ; $6188: $03
	ld   [de], a                                     ; $6189: $12
	ld   bc, $2902                                   ; $618a: $01 $02 $29
	nop                                              ; $618d: $00
	ld   bc, $0301                                   ; $618e: $01 $01 $03
	ld   [bc], a                                     ; $6191: $02
	rlca                                             ; $6192: $07
	adc  l                                           ; $6193: $8d
	inc  b                                           ; $6194: $04
	ld   a, b                                        ; $6195: $78
	and  b                                           ; $6196: $a0
	inc  b                                           ; $6197: $04
	and  e                                           ; $6198: $a3
	sbc  d                                           ; $6199: $9a
	ld   l, l                                        ; $619a: $6d
	and  c                                           ; $619b: $a1
	ld   [hl], l                                     ; $619c: $75
	ld   h, a                                        ; $619d: $67
	ld   a, h                                        ; $619e: $7c
	ld   sp, hl                                      ; $619f: $f9
	dec  c                                           ; $61a0: $0d
	db   $10                                         ; $61a1: $10
	cp   d                                           ; $61a2: $ba
	ei                                               ; $61a3: $fb
	ret  c                                           ; $61a4: $d8

	inc  b                                           ; $61a5: $04
	ld   d, l                                        ; $61a6: $55
	ld   a, c                                        ; $61a7: $79
	inc  bc                                          ; $61a8: $03
	ld   h, b                                        ; $61a9: $60
	inc  bc                                          ; $61aa: $03
	ld   l, e                                        ; $61ab: $6b
	and  b                                           ; $61ac: $a0
	ld   l, e                                        ; $61ad: $6b
	ld   d, [hl]                                     ; $61ae: $56
	sbc  [hl]                                        ; $61af: $9e
	dec  c                                           ; $61b0: $0d
	db   $10                                         ; $61b1: $10
	ld   [bc], a                                     ; $61b2: $02
	inc  e                                           ; $61b3: $1c
	inc  bc                                          ; $61b4: $03
	ld   l, e                                        ; $61b5: $6b
	ld   a, c                                        ; $61b6: $79
	inc  bc                                          ; $61b7: $03
	and  b                                           ; $61b8: $a0
	ld   [hl], c                                     ; $61b9: $71
	ld   l, l                                        ; $61ba: $6d
	cp   d                                           ; $61bb: $ba
	ret  c                                           ; $61bc: $d8

	ei                                               ; $61bd: $fb
	push af                                          ; $61be: $f5
	and  b                                           ; $61bf: $a0
	dec  c                                           ; $61c0: $0d
	nop                                              ; $61c1: $00
	ld   a, [bc]                                     ; $61c2: $0a
	ld   bc, $0310                                   ; $61c3: $01 $10 $03
	ld   l, e                                        ; $61c6: $6b
	inc  bc                                          ; $61c7: $03
	ld   c, a                                        ; $61c8: $4f
	ld   e, c                                        ; $61c9: $59
	sub  a                                           ; $61ca: $97
	ld   [bc], a                                     ; $61cb: $02
	jp   nc, Jump_060_5461                           ; $61cc: $d2 $61 $54

	add  [hl]                                        ; $61cf: $86
	ld   h, a                                        ; $61d0: $67
	ld   e, l                                        ; $61d1: $5d
	ld   d, d                                        ; $61d2: $52
	sbc  [hl]                                        ; $61d3: $9e
	dec  c                                           ; $61d4: $0d
	db   $10                                         ; $61d5: $10
	ld   [bc], a                                     ; $61d6: $02
	inc  bc                                          ; $61d7: $03
	and  b                                           ; $61d8: $a0
	ld   l, l                                        ; $61d9: $6d
	ld   [hl], h                                     ; $61da: $74
	ld   a, b                                        ; $61db: $78
	ld   d, d                                        ; $61dc: $52
	sub  [hl]                                        ; $61dd: $96
	ld   d, h                                        ; $61de: $54
	ld   a, c                                        ; $61df: $79
	dec  c                                           ; $61e0: $0d
	db   $10                                         ; $61e1: $10
	ld   d, d                                        ; $61e2: $52
	ld   l, l                                        ; $61e3: $6d
	ld   l, [hl]                                     ; $61e4: $6e
	ld   e, l                                        ; $61e5: $5d
	and  c                                           ; $61e6: $a1
	ld   [hl], l                                     ; $61e7: $75
	ld   h, l                                        ; $61e8: $65
	sub  l                                           ; $61e9: $95
	ld   a, [$0401]                                  ; $61ea: $fa $01 $04
	dec  c                                           ; $61ed: $0d
	nop                                              ; $61ee: $00
	ld   a, [bc]                                     ; $61ef: $0a
	ld   b, $7a                                      ; $61f0: $06 $7a
	inc  c                                           ; $61f2: $0c
	rrca                                             ; $61f3: $0f
	nop                                              ; $61f4: $00
	ld   bc, $0101                                   ; $61f5: $01 $01 $01
	inc  bc                                          ; $61f8: $03
	db   $e3                                         ; $61f9: $e3
	and  l                                           ; $61fa: $a5
	push af                                          ; $61fb: $f5
	ret  z                                           ; $61fc: $c8

	and  h                                           ; $61fd: $a4
	call nz, $e7b8                                   ; $61fe: $c4 $b8 $e7
	ld   a, l                                        ; $6201: $7d
	inc  b                                           ; $6202: $04
	ccf                                              ; $6203: $3f
	ld   e, c                                        ; $6204: $59
	rst  $38                                         ; $6205: $ff
	rst  $38                                         ; $6206: $ff
	dec  c                                           ; $6207: $0d
	db   $10                                         ; $6208: $10
	ld   [hl], a                                     ; $6209: $77
	ld   d, h                                        ; $620a: $54
	inc  bc                                          ; $620b: $03
	ld   l, d                                        ; $620c: $6a
	add  a                                           ; $620d: $87
	sbc  c                                           ; $620e: $99
	and  c                                           ; $620f: $a1
	ld   l, [hl]                                     ; $6210: $6e
	ld   [hl], c                                     ; $6211: $71
	ld   e, a                                        ; $6212: $5f
	rst  $38                                         ; $6213: $ff
	rst  $38                                         ; $6214: $ff
	ld   bc, $0d04                                   ; $6215: $01 $04 $0d
	nop                                              ; $6218: $00
	ld   a, [bc]                                     ; $6219: $0a
	add  hl, de                                      ; $621a: $19
	dec  b                                           ; $621b: $05
	inc  bc                                          ; $621c: $03
	inc  bc                                          ; $621d: $03
	ld   h, b                                        ; $621e: $60
	dec  b                                           ; $621f: $05
	ld   c, c                                        ; $6220: $49
	ld   e, c                                        ; $6221: $59
	sub  a                                           ; $6222: $97
	ld   [bc], a                                     ; $6223: $02
	jr   nz, jr_060_6228                             ; $6224: $20 $02

	xor  [hl]                                        ; $6226: $ae
	inc  b                                           ; $6227: $04

jr_060_6228:
	ld   c, $79                                      ; $6228: $0e $79
	inc  bc                                          ; $622a: $03
	dec  de                                          ; $622b: $1b
	sbc  c                                           ; $622c: $99
	nop                                              ; $622d: $00
	nop                                              ; $622e: $00
	ld   [bc], a                                     ; $622f: $02
	inc  e                                           ; $6230: $1c
	dec  b                                           ; $6231: $05
	ld   c, c                                        ; $6232: $49
	ld   e, c                                        ; $6233: $59
	sub  a                                           ; $6234: $97
	ld   [bc], a                                     ; $6235: $02
	jr   nz, jr_060_623a                             ; $6236: $20 $02

	xor  [hl]                                        ; $6238: $ae
	inc  b                                           ; $6239: $04

jr_060_623a:
	ld   c, $79                                      ; $623a: $0e $79
	inc  bc                                          ; $623c: $03
	dec  de                                          ; $623d: $1b
	sbc  c                                           ; $623e: $99
	nop                                              ; $623f: $00
	ld   bc, $c804                                   ; $6240: $01 $04 $c8
	ld   e, c                                        ; $6243: $59
	ld   h, [hl]                                     ; $6244: $66
	sbc  b                                           ; $6245: $98
	ld   h, a                                        ; $6246: $67
	sbc  c                                           ; $6247: $99
	nop                                              ; $6248: $00
	ld   [bc], a                                     ; $6249: $02
	rlca                                             ; $624a: $07
	rst  $28                                         ; $624b: $ef
	inc  c                                           ; $624c: $0c
	ld   [bc], a                                     ; $624d: $02
	inc  bc                                          ; $624e: $03
	ld   bc, $2000                                   ; $624f: $01 $00 $20
	nop                                              ; $6252: $00
	rlca                                             ; $6253: $07
	dec  a                                           ; $6254: $3d
	dec  c                                           ; $6255: $0d
	ld   [bc], a                                     ; $6256: $02
	inc  bc                                          ; $6257: $03
	ld   bc, $2001                                   ; $6258: $01 $01 $20
	nop                                              ; $625b: $00
	rlca                                             ; $625c: $07
	call nz, $020d                                   ; $625d: $c4 $0d $02
	inc  bc                                          ; $6260: $03
	ld   bc, $2002                                   ; $6261: $01 $02 $20
	nop                                              ; $6264: $00
	ld   b, $5e                                      ; $6265: $06 $5e
	ld   c, $0f                                      ; $6267: $0e $0f
	nop                                              ; $6269: $00
	ld   bc, $0101                                   ; $626a: $01 $01 $01
	inc  bc                                          ; $626d: $03
	inc  bc                                          ; $626e: $03
	ld   h, b                                        ; $626f: $60
	dec  b                                           ; $6270: $05
	ld   c, c                                        ; $6271: $49
	ld   e, c                                        ; $6272: $59
	sub  a                                           ; $6273: $97
	ld   [bc], a                                     ; $6274: $02
	jr   nz, jr_060_6279                             ; $6275: $20 $02

	xor  [hl]                                        ; $6277: $ae
	inc  b                                           ; $6278: $04

jr_060_6279:
	ld   c, $79                                      ; $6279: $0e $79
	inc  bc                                          ; $627b: $03
	dec  de                                          ; $627c: $1b
	ld   [hl], c                                     ; $627d: $71
	ld   [hl], h                                     ; $627e: $74
	dec  c                                           ; $627f: $0d
	db   $10                                         ; $6280: $10
	inc  bc                                          ; $6281: $03
	ld   l, d                                        ; $6282: $6a
	add  a                                           ; $6283: $87
	sbc  c                                           ; $6284: $99
	and  c                                           ; $6285: $a1
	ld   l, [hl]                                     ; $6286: $6e
	sub  [hl]                                        ; $6287: $96
	ld   a, b                                        ; $6288: $78
	ld   bc, $0d04                                   ; $6289: $01 $04 $0d
	nop                                              ; $628c: $00
	ld   a, [bc]                                     ; $628d: $0a
	inc  e                                           ; $628e: $1c
	ld   [bc], a                                     ; $628f: $02
	ld   bc, $1d01                                   ; $6290: $01 $01 $1d
	ld   b, b                                        ; $6293: $40
	ld   [de], a                                     ; $6294: $12
	inc  bc                                          ; $6295: $03
	ld   [de], a                                     ; $6296: $12
	ld   bc, $2802                                   ; $6297: $01 $02 $28
	nop                                              ; $629a: $00
	ld   bc, $0301                                   ; $629b: $01 $01 $03
	ld   l, e                                        ; $629e: $6b
	ld   d, h                                        ; $629f: $54
	ld   [hl], l                                     ; $62a0: $75
	ld   h, a                                        ; $62a1: $67
	sbc  l                                           ; $62a2: $9d
	sbc  a                                           ; $62a3: $9f
	dec  c                                           ; $62a4: $0d
	db   $10                                         ; $62a5: $10
	sub  [hl]                                        ; $62a6: $96
	sbc  e                                           ; $62a7: $9b
	ld   h, l                                        ; $62a8: $65
	ld   d, d                                        ; $62a9: $52
	ld   [hl], l                                     ; $62aa: $75
	ld   h, a                                        ; $62ab: $67
	sbc  l                                           ; $62ac: $9d
	sub  [hl]                                        ; $62ad: $96
	ld   bc, $0d04                                   ; $62ae: $01 $04 $0d
	nop                                              ; $62b1: $00
	ld   a, [bc]                                     ; $62b2: $0a
	ld   b, $dc                                      ; $62b3: $06 $dc
	ld   c, $0f                                      ; $62b5: $0e $0f
	nop                                              ; $62b7: $00
	ld   bc, $0101                                   ; $62b8: $01 $01 $01
	inc  bc                                          ; $62bb: $03
	ld   [bc], a                                     ; $62bc: $02
	inc  e                                           ; $62bd: $1c
	dec  b                                           ; $62be: $05
	ld   c, c                                        ; $62bf: $49
	ld   e, c                                        ; $62c0: $59
	sub  a                                           ; $62c1: $97
	ld   [bc], a                                     ; $62c2: $02
	jr   nz, jr_060_62c7                             ; $62c3: $20 $02

	xor  [hl]                                        ; $62c5: $ae
	inc  b                                           ; $62c6: $04

jr_060_62c7:
	ld   c, $79                                      ; $62c7: $0e $79
	inc  bc                                          ; $62c9: $03
	dec  de                                          ; $62ca: $1b
	ld   [hl], c                                     ; $62cb: $71
	ld   [hl], h                                     ; $62cc: $74
	dec  c                                           ; $62cd: $0d
	db   $10                                         ; $62ce: $10
	inc  bc                                          ; $62cf: $03
	ld   l, d                                        ; $62d0: $6a
	add  a                                           ; $62d1: $87
	sbc  c                                           ; $62d2: $99
	rst  $38                                         ; $62d3: $ff
	rst  $38                                         ; $62d4: $ff
	ld   l, [hl]                                     ; $62d5: $6e
	ld   [hl], c                                     ; $62d6: $71
	ld   l, l                                        ; $62d7: $6d
	ld   [hl], c                                     ; $62d8: $71
	ld   e, a                                        ; $62d9: $5f
	ld   sp, hl                                      ; $62da: $f9
	ld   bc, $0d04                                   ; $62db: $01 $04 $0d
	nop                                              ; $62de: $00
	ld   a, [bc]                                     ; $62df: $0a
	dec  c                                           ; $62e0: $0d
	ld   [bc], a                                     ; $62e1: $02
	ld   bc, $020f                                   ; $62e2: $01 $0f $02
	ld   [bc], a                                     ; $62e5: $02
	dec  e                                           ; $62e6: $1d
	ld   b, b                                        ; $62e7: $40
	ld   [de], a                                     ; $62e8: $12
	inc  bc                                          ; $62e9: $03
	ld   [de], a                                     ; $62ea: $12
	ld   bc, $2902                                   ; $62eb: $01 $02 $29
	nop                                              ; $62ee: $00
	ld   bc, $0301                                   ; $62ef: $01 $01 $03
	ld   l, a                                        ; $62f2: $6f
	ld   e, d                                        ; $62f3: $5a
	ld   d, h                                        ; $62f4: $54
	ld   [hl], l                                     ; $62f5: $75
	ld   h, l                                        ; $62f6: $65
	sub  l                                           ; $62f7: $95
	ld   a, [$100d]                                  ; $62f8: $fa $0d $10
	inc  bc                                          ; $62fb: $03
	dec  de                                          ; $62fc: $1b
	sbc  c                                           ; $62fd: $99
	ld   a, h                                        ; $62fe: $7c
	ld   a, l                                        ; $62ff: $7d
	inc  bc                                          ; $6300: $03
	ld   h, b                                        ; $6301: $60
	ld   e, c                                        ; $6302: $59
	sub  a                                           ; $6303: $97
	ld   [hl], l                                     ; $6304: $75
	ld   h, a                                        ; $6305: $67
	sbc  l                                           ; $6306: $9d
	sub  [hl]                                        ; $6307: $96
	ld   bc, $0d04                                   ; $6308: $01 $04 $0d
	nop                                              ; $630b: $00
	ld   a, [bc]                                     ; $630c: $0a
	inc  e                                           ; $630d: $1c
	ld   [bc], a                                     ; $630e: $02
	ld   bc, $0101                                   ; $630f: $01 $01 $01
	ld   e, b                                        ; $6312: $58
	adc  c                                           ; $6313: $89
	adc  c                                           ; $6314: $89
	adc  c                                           ; $6315: $89
	adc  c                                           ; $6316: $89
	dec  c                                           ; $6317: $0d
	ld   h, a                                        ; $6318: $67
	adc  l                                           ; $6319: $8d
	adc  h                                           ; $631a: $8c
	ld   l, c                                        ; $631b: $69
	and  c                                           ; $631c: $a1
	ld   a, e                                        ; $631d: $7b
	ld   [bc], a                                     ; $631e: $02
	ldh  a, [rTIMA]                                  ; $631f: $f0 $05
	ld   e, c                                        ; $6321: $59
	inc  bc                                          ; $6322: $03
	add  [hl]                                        ; $6323: $86
	inc  bc                                          ; $6324: $03
	call z, $0d9f                                    ; $6325: $cc $9f $0d
	ld   h, c                                        ; $6328: $61
	ld   a, h                                        ; $6329: $7c
	inc  bc                                          ; $632a: $03
	add  [hl]                                        ; $632b: $86
	sbc  [hl]                                        ; $632c: $9e
	ld   e, b                                        ; $632d: $58
	adc  d                                           ; $632e: $8a
	ld   d, [hl]                                     ; $632f: $56
	ld   e, d                                        ; $6330: $5a
	ld   [bc], a                                     ; $6331: $02
	jr   z, jr_060_6391                              ; $6332: $28 $5d

	ld   [hl], h                                     ; $6334: $74
	rst  $38                                         ; $6335: $ff
	rst  $38                                         ; $6336: $ff
	dec  c                                           ; $6337: $0d
	nop                                              ; $6338: $00
	ld   a, [bc]                                     ; $6339: $0a
	ld   b, $dc                                      ; $633a: $06 $dc
	ld   c, $0f                                      ; $633c: $0e $0f
	nop                                              ; $633e: $00
	ld   bc, $0101                                   ; $633f: $01 $01 $01
	inc  bc                                          ; $6342: $03
	xor  l                                           ; $6343: $ad
	pop  de                                          ; $6344: $d1
	call nz, $0576                                   ; $6345: $c4 $76 $05
	and  e                                           ; $6348: $a3
	dec  b                                           ; $6349: $05
	sbc  d                                           ; $634a: $9a
	ld   a, c                                        ; $634b: $79
	dec  c                                           ; $634c: $0d
	db   $10                                         ; $634d: $10
	inc  b                                           ; $634e: $04
	ret  z                                           ; $634f: $c8

	ld   e, c                                        ; $6350: $59
	ld   h, [hl]                                     ; $6351: $66
	sbc  b                                           ; $6352: $98
	rst  $38                                         ; $6353: $ff
	rst  $38                                         ; $6354: $ff
	ld   bc, $0d04                                   ; $6355: $01 $04 $0d
	nop                                              ; $6358: $00
	ld   a, [bc]                                     ; $6359: $0a
	dec  c                                           ; $635a: $0d
	ld   [bc], a                                     ; $635b: $02
	ld   bc, $020f                                   ; $635c: $01 $0f $02
	inc  bc                                          ; $635f: $03
	dec  e                                           ; $6360: $1d
	ld   b, b                                        ; $6361: $40
	ld   [de], a                                     ; $6362: $12
	inc  bc                                          ; $6363: $03
	ld   [de], a                                     ; $6364: $12
	ld   bc, $2902                                   ; $6365: $01 $02 $29
	nop                                              ; $6368: $00
	ld   bc, $0301                                   ; $6369: $01 $01 $03
	pop  de                                          ; $636c: $d1
	sbc  [hl]                                        ; $636d: $9e
	pop  de                                          ; $636e: $d1
	xor  h                                           ; $636f: $ac
	ld   a, [$100d]                                  ; $6370: $fa $0d $10
	ld   a, b                                        ; $6373: $78
	and  c                                           ; $6374: $a1
	ld   [hl], h                                     ; $6375: $74
	inc  bc                                          ; $6376: $03
	ld   l, d                                        ; $6377: $6a
	add  a                                           ; $6378: $87
	inc  b                                           ; $6379: $04
	ld   a, b                                        ; $637a: $78
	ld   h, l                                        ; $637b: $65
	adc  h                                           ; $637c: $8c
	ld   h, a                                        ; $637d: $67
	ld   a, h                                        ; $637e: $7c
	ld   a, [$0401]                                  ; $637f: $fa $01 $04
	dec  c                                           ; $6382: $0d
	nop                                              ; $6383: $00
	ld   a, [bc]                                     ; $6384: $0a
	inc  e                                           ; $6385: $1c
	ld   [bc], a                                     ; $6386: $02
	ld   bc, $0101                                   ; $6387: $01 $01 $01
	ld   e, b                                        ; $638a: $58
	adc  c                                           ; $638b: $89
	adc  c                                           ; $638c: $89
	adc  c                                           ; $638d: $89
	adc  c                                           ; $638e: $89
	dec  c                                           ; $638f: $0d
	ld   h, a                                        ; $6390: $67

jr_060_6391:
	adc  l                                           ; $6391: $8d
	adc  h                                           ; $6392: $8c
	ld   l, c                                        ; $6393: $69
	and  c                                           ; $6394: $a1
	ld   a, e                                        ; $6395: $7b
	ld   [bc], a                                     ; $6396: $02
	ldh  a, [rTIMA]                                  ; $6397: $f0 $05
	ld   e, c                                        ; $6399: $59
	inc  bc                                          ; $639a: $03
	add  [hl]                                        ; $639b: $86
	inc  bc                                          ; $639c: $03
	call z, $0d9f                                    ; $639d: $cc $9f $0d
	ld   h, c                                        ; $63a0: $61
	ld   a, h                                        ; $63a1: $7c
	inc  bc                                          ; $63a2: $03
	add  [hl]                                        ; $63a3: $86
	sbc  [hl]                                        ; $63a4: $9e
	pop  af                                          ; $63a5: $f1
	and  l                                           ; $63a6: $a5
	db   $ed                                         ; $63a7: $ed
	jp   z, $5c67                                    ; $63a8: $ca $67 $5c

	ld   [hl], h                                     ; $63ab: $74
	rst  $38                                         ; $63ac: $ff
	rst  $38                                         ; $63ad: $ff
	dec  c                                           ; $63ae: $0d
	nop                                              ; $63af: $00
	ld   a, [bc]                                     ; $63b0: $0a
	rrca                                             ; $63b1: $0f
	db   $10                                         ; $63b2: $10
	ld   bc, $8c01                                   ; $63b3: $01 $01 $8c
	rst  $38                                         ; $63b6: $ff
	adc  h                                           ; $63b7: $8c
	ld   d, b                                        ; $63b8: $50
	rst  $38                                         ; $63b9: $ff
	rst  $38                                         ; $63ba: $ff
	dec  c                                           ; $63bb: $0d
	ld   [bc], a                                     ; $63bc: $02
	xor  h                                           ; $63bd: $ac
	ld   [bc], a                                     ; $63be: $02
	and  c                                           ; $63bf: $a1
	ld   e, d                                        ; $63c0: $5a
	ld   d, b                                        ; $63c1: $50
	ld   [hl], c                                     ; $63c2: $71
	ld   [hl], h                                     ; $63c3: $74
	ld   d, d                                        ; $63c4: $52
	ld   d, d                                        ; $63c5: $52
	ld   e, c                                        ; $63c6: $59
	sub  b                                           ; $63c7: $90
	dec  c                                           ; $63c8: $0d
	ld   h, l                                        ; $63c9: $65
	sbc  d                                           ; $63ca: $9a
	adc  h                                           ; $63cb: $8c
	ld   l, c                                        ; $63cc: $69
	and  c                                           ; $63cd: $a1
	ld   a, e                                        ; $63ce: $7b
	rst  $38                                         ; $63cf: $ff
	rst  $38                                         ; $63d0: $ff
	dec  c                                           ; $63d1: $0d
	nop                                              ; $63d2: $00
	ld   a, [bc]                                     ; $63d3: $0a
	ld   b, $dc                                      ; $63d4: $06 $dc
	ld   c, $0d                                      ; $63d6: $0e $0d
	ld   [bc], a                                     ; $63d8: $02
	ld   bc, $020f                                   ; $63d9: $01 $0f $02
	ld   [bc], a                                     ; $63dc: $02
	dec  e                                           ; $63dd: $1d
	ld   b, b                                        ; $63de: $40
	ld   [de], a                                     ; $63df: $12
	inc  bc                                          ; $63e0: $03
	ld   [de], a                                     ; $63e1: $12
	ld   bc, $2902                                   ; $63e2: $01 $02 $29
	nop                                              ; $63e5: $00
	ld   bc, $0301                                   ; $63e6: $01 $01 $03
	ld   e, b                                        ; $63e9: $58
	inc  b                                           ; $63ea: $04
	ccf                                              ; $63eb: $3f
	ld   a, h                                        ; $63ec: $7c
	inc  bc                                          ; $63ed: $03
	ld   l, d                                        ; $63ee: $6a
	add  a                                           ; $63ef: $87
	inc  b                                           ; $63f0: $04
	ld   a, b                                        ; $63f1: $78
	inc  b                                           ; $63f2: $04
	and  e                                           ; $63f3: $a3
	sbc  d                                           ; $63f4: $9a
	adc  h                                           ; $63f5: $8c
	ld   h, l                                        ; $63f6: $65
	ld   l, l                                        ; $63f7: $6d
	ld   a, h                                        ; $63f8: $7c
	ld   sp, hl                                      ; $63f9: $f9
	dec  c                                           ; $63fa: $0d
	db   $10                                         ; $63fb: $10
	inc  bc                                          ; $63fc: $03
	ld   d, a                                        ; $63fd: $57
	inc  b                                           ; $63fe: $04
	sub  l                                           ; $63ff: $95
	inc  bc                                          ; $6400: $03
	dec  de                                          ; $6401: $1b
	ld   [hl], c                                     ; $6402: $71
	ld   [hl], h                                     ; $6403: $74
	ld   h, l                                        ; $6404: $65
	adc  h                                           ; $6405: $8c
	sbc  l                                           ; $6406: $9d
	ld   l, b                                        ; $6407: $68
	ld   a, c                                        ; $6408: $79
	sbc  [hl]                                        ; $6409: $9e
	inc  bc                                          ; $640a: $03
	ld   h, b                                        ; $640b: $60
	dec  b                                           ; $640c: $05
	ld   c, c                                        ; $640d: $49
	dec  c                                           ; $640e: $0d
	db   $10                                         ; $640f: $10
	ld   e, c                                        ; $6410: $59
	sub  a                                           ; $6411: $97
	ld   [bc], a                                     ; $6412: $02
	jr   nz, jr_060_6417                             ; $6413: $20 $02

	xor  [hl]                                        ; $6415: $ae
	ld   l, b                                        ; $6416: $68

jr_060_6417:
	ld   [hl], d                                     ; $6417: $72
	inc  bc                                          ; $6418: $03
	dec  de                                          ; $6419: $1b
	sbc  b                                           ; $641a: $98
	adc  h                                           ; $641b: $8c
	ld   h, a                                        ; $641c: $67
	ld   a, h                                        ; $641d: $7c
	sub  [hl]                                        ; $641e: $96
	ld   bc, $0d04                                   ; $641f: $01 $04 $0d
	nop                                              ; $6422: $00
	ld   a, [bc]                                     ; $6423: $0a
	inc  e                                           ; $6424: $1c
	ld   [bc], a                                     ; $6425: $02
	ld   bc, $0101                                   ; $6426: $01 $01 $01
	ld   e, b                                        ; $6429: $58
	adc  c                                           ; $642a: $89
	adc  c                                           ; $642b: $89
	adc  c                                           ; $642c: $89
	adc  c                                           ; $642d: $89
	dec  c                                           ; $642e: $0d
	ld   h, a                                        ; $642f: $67
	adc  l                                           ; $6430: $8d
	adc  h                                           ; $6431: $8c
	ld   l, c                                        ; $6432: $69
	and  c                                           ; $6433: $a1
	ld   a, e                                        ; $6434: $7b
	ld   [bc], a                                     ; $6435: $02
	ldh  a, [rTIMA]                                  ; $6436: $f0 $05
	ld   e, c                                        ; $6438: $59
	inc  bc                                          ; $6439: $03
	add  [hl]                                        ; $643a: $86
	inc  bc                                          ; $643b: $03
	call z, $0d9f                                    ; $643c: $cc $9f $0d
	ld   h, c                                        ; $643f: $61
	ld   a, h                                        ; $6440: $7c
	inc  bc                                          ; $6441: $03
	add  [hl]                                        ; $6442: $86
	sbc  [hl]                                        ; $6443: $9e
	ld   e, b                                        ; $6444: $58
	adc  d                                           ; $6445: $8a
	ld   d, [hl]                                     ; $6446: $56
	ld   e, d                                        ; $6447: $5a
	ld   [bc], a                                     ; $6448: $02
	jr   z, jr_060_64a8                              ; $6449: $28 $5d

	ld   [hl], c                                     ; $644b: $71
	ld   [hl], h                                     ; $644c: $74
	rst  $38                                         ; $644d: $ff
	rst  $38                                         ; $644e: $ff
	dec  c                                           ; $644f: $0d
	nop                                              ; $6450: $00
	ld   a, [bc]                                     ; $6451: $0a
	ld   b, $dc                                      ; $6452: $06 $dc
	ld   c, $0f                                      ; $6454: $0e $0f
	stop                                             ; $6456: $10 $00
	ld   bc, $6176                                   ; $6458: $01 $76 $61
	sbc  e                                           ; $645b: $9b
	ld   [hl], l                                     ; $645c: $75
	sbc  [hl]                                        ; $645d: $9e
	ld   [bc], a                                     ; $645e: $02
	jp   z, Jump_060_677d                            ; $645f: $ca $7d $67

	adc  l                                           ; $6462: $8d
	sbc  d                                           ; $6463: $9a
	ld   h, e                                        ; $6464: $63
	and  c                                           ; $6465: $a1
	halt                                             ; $6466: $76
	dec  c                                           ; $6467: $0d
	ld   [hl], a                                     ; $6468: $77
	ld   d, h                                        ; $6469: $54
	ld   d, d                                        ; $646a: $52
	ld   d, h                                        ; $646b: $54
	ld   [bc], a                                     ; $646c: $02
	ld   c, d                                        ; $646d: $4a
	ld   [bc], a                                     ; $646e: $02
	ld   c, e                                        ; $646f: $4b
	ld   a, b                                        ; $6470: $78
	and  c                                           ; $6471: $a1
	ld   l, [hl]                                     ; $6472: $6e
	ld   d, d                                        ; $6473: $52
	ld   sp, hl                                      ; $6474: $f9
	dec  c                                           ; $6475: $0d
	nop                                              ; $6476: $00
	ld   a, [bc]                                     ; $6477: $0a
	add  hl, de                                      ; $6478: $19
	dec  b                                           ; $6479: $05
	inc  bc                                          ; $647a: $03
	ld   h, l                                        ; $647b: $65
	and  c                                           ; $647c: $a1
	ld   l, c                                        ; $647d: $69
	ld   e, e                                        ; $647e: $5b
	nop                                              ; $647f: $00
	nop                                              ; $6480: $00
	dec  b                                           ; $6481: $05
	dec  bc                                          ; $6482: $0b
	inc  bc                                          ; $6483: $03
	add  d                                           ; $6484: $82
	nop                                              ; $6485: $00
	ld   bc, $9203                                   ; $6486: $01 $03 $92
	nop                                              ; $6489: $00
	ld   [bc], a                                     ; $648a: $02
	rlca                                             ; $648b: $07
	jr   nc, jr_060_649d                             ; $648c: $30 $0f

	ld   [bc], a                                     ; $648e: $02
	inc  bc                                          ; $648f: $03
	ld   bc, $2000                                   ; $6490: $01 $00 $20
	nop                                              ; $6493: $00
	rlca                                             ; $6494: $07
	xor  c                                           ; $6495: $a9
	rrca                                             ; $6496: $0f
	ld   [bc], a                                     ; $6497: $02
	inc  bc                                          ; $6498: $03
	ld   bc, $2001                                   ; $6499: $01 $01 $20
	nop                                              ; $649c: $00

jr_060_649d:
	rlca                                             ; $649d: $07
	ld   a, c                                        ; $649e: $79
	db   $10                                         ; $649f: $10
	ld   [bc], a                                     ; $64a0: $02
	inc  bc                                          ; $64a1: $03
	ld   bc, $2002                                   ; $64a2: $01 $02 $20
	nop                                              ; $64a5: $00
	ld   b, $44                                      ; $64a6: $06 $44

jr_060_64a8:
	ld   de, $000f                                   ; $64a8: $11 $0f $00
	ld   bc, $6501                                   ; $64ab: $01 $01 $65
	and  c                                           ; $64ae: $a1
	ld   l, c                                        ; $64af: $69
	ld   e, e                                        ; $64b0: $5b
	ld   [hl], l                                     ; $64b1: $75
	ld   h, a                                        ; $64b2: $67
	sbc  a                                           ; $64b3: $9f
	dec  c                                           ; $64b4: $0d
	nop                                              ; $64b5: $00
	ld   a, [bc]                                     ; $64b6: $0a
	rrca                                             ; $64b7: $0f
	stop                                             ; $64b8: $10 $00
	ld   bc, $9978                                   ; $64ba: $01 $78 $99
	adc  c                                           ; $64bd: $89
	ld   [hl], a                                     ; $64be: $77
	sbc  [hl]                                        ; $64bf: $9e
	ld   h, l                                        ; $64c0: $65
	and  c                                           ; $64c1: $a1
	ld   l, c                                        ; $64c2: $69
	ld   e, e                                        ; $64c3: $5b
	ld   e, c                                        ; $64c4: $59
	sbc  a                                           ; $64c5: $9f
	dec  c                                           ; $64c6: $0d
	ld   l, e                                        ; $64c7: $6b
	ld   d, h                                        ; $64c8: $54
	ld   [bc], a                                     ; $64c9: $02
	sbc  l                                           ; $64ca: $9d
	sbc  l                                           ; $64cb: $9d
	sbc  d                                           ; $64cc: $9a
	sbc  d                                           ; $64cd: $9a
	ld   a, [hl]                                     ; $64ce: $7e
	sbc  [hl]                                        ; $64cf: $9e
	ld   a, b                                        ; $64d0: $78
	and  c                                           ; $64d1: $a1
	halt                                             ; $64d2: $76
	ld   a, b                                        ; $64d3: $78
	ld   e, l                                        ; $64d4: $5d
	dec  c                                           ; $64d5: $0d
	inc  b                                           ; $64d6: $04
	ld   c, l                                        ; $64d7: $4d

jr_060_64d8:
	ld   [hl], h                                     ; $64d8: $74
	ld   d, d                                        ; $64d9: $52
	sbc  c                                           ; $64da: $99
	sub  [hl]                                        ; $64db: $96
	ld   d, h                                        ; $64dc: $54
	ld   a, b                                        ; $64dd: $78
	ld   [bc], a                                     ; $64de: $02
	and  c                                           ; $64df: $a1
	ld   e, d                                        ; $64e0: $5a
	ld   h, a                                        ; $64e1: $67
	sbc  c                                           ; $64e2: $99
	ld   a, b                                        ; $64e3: $78
	sbc  a                                           ; $64e4: $9f
	dec  c                                           ; $64e5: $0d
	nop                                              ; $64e6: $00
	ld   a, [bc]                                     ; $64e7: $0a
	dec  c                                           ; $64e8: $0d
	ld   [bc], a                                     ; $64e9: $02
	ld   bc, $020f                                   ; $64ea: $01 $0f $02
	nop                                              ; $64ed: $00
	ld   bc, $0301                                   ; $64ee: $01 $01 $03
	rst  $38                                         ; $64f1: $ff
	rst  $38                                         ; $64f2: $ff
	ld   l, e                                        ; $64f3: $6b
	ld   d, h                                        ; $64f4: $54
	ld   a, e                                        ; $64f5: $7b
	sbc  a                                           ; $64f6: $9f
	inc  b                                           ; $64f7: $04
	ld   [$9102], sp                                 ; $64f8: $08 $02 $91
	ld   a, h                                        ; $64fb: $7c
	ld   h, c                                        ; $64fc: $61
	halt                                             ; $64fd: $76
	ld   a, l                                        ; $64fe: $7d
	dec  c                                           ; $64ff: $0d
	db   $10                                         ; $6500: $10
	ld   [bc], a                                     ; $6501: $02
	sbc  l                                           ; $6502: $9d
	ld   d, [hl]                                     ; $6503: $56
	ld   a, b                                        ; $6504: $78
	ld   d, d                                        ; $6505: $52
	ld   e, c                                        ; $6506: $59
	sub  a                                           ; $6507: $97
	sbc  [hl]                                        ; $6508: $9e
	adc  h                                           ; $6509: $8c
	ld   d, b                                        ; $650a: $50
	sbc  [hl]                                        ; $650b: $9e
	ld   l, e                                        ; $650c: $6b
	and  c                                           ; $650d: $a1
	ld   a, b                                        ; $650e: $78
	dec  c                                           ; $650f: $0d
	db   $10                                         ; $6510: $10
	inc  bc                                          ; $6511: $03
	call c, Call_060_7556                            ; $6512: $dc $56 $75
	ld   d, d                                        ; $6515: $52
	ld   d, d                                        ; $6516: $52
	ld   [hl], l                                     ; $6517: $75
	ld   h, a                                        ; $6518: $67
	sbc  l                                           ; $6519: $9d
	ld   bc, $0d04                                   ; $651a: $01 $04 $0d
	nop                                              ; $651d: $00
	ld   a, [bc]                                     ; $651e: $0a
	ld   b, $66                                      ; $651f: $06 $66
	ld   de, $000f                                   ; $6521: $11 $0f $00
	ld   bc, $0501                                   ; $6524: $01 $01 $05
	dec  bc                                          ; $6527: $0b
	inc  bc                                          ; $6528: $03
	add  d                                           ; $6529: $82
	ld   [hl], l                                     ; $652a: $75
	ld   h, a                                        ; $652b: $67
	sbc  a                                           ; $652c: $9f
	dec  c                                           ; $652d: $0d
	inc  bc                                          ; $652e: $03
	ld   h, h                                        ; $652f: $64
	dec  b                                           ; $6530: $05
	db   $10                                         ; $6531: $10
	ld   a, l                                        ; $6532: $7d
	ld   [bc], a                                     ; $6533: $02
	reti                                             ; $6534: $d9


	dec  b                                           ; $6535: $05
	jr   nc, jr_060_64d8                             ; $6536: $30 $a0

	inc  b                                           ; $6538: $04
	ldh  [$03], a                                    ; $6539: $e0 $03
	dec  hl                                          ; $653b: $2b
	ld   h, l                                        ; $653c: $65
	ld   [hl], h                                     ; $653d: $74
	ld   d, d                                        ; $653e: $52
	adc  h                                           ; $653f: $8c
	ld   h, a                                        ; $6540: $67
	sbc  a                                           ; $6541: $9f
	dec  c                                           ; $6542: $0d
	nop                                              ; $6543: $00
	ld   a, [bc]                                     ; $6544: $0a
	rrca                                             ; $6545: $0f
	db   $10                                         ; $6546: $10
	ld   bc, $5601                                   ; $6547: $01 $01 $56
	ld   d, [hl]                                     ; $654a: $56
	ld   [hl], c                                     ; $654b: $71
	ld   a, [$0df9]                                  ; $654c: $fa $f9 $0d
	adc  c                                           ; $654f: $89
	rst  $38                                         ; $6550: $ff
	inc  b                                           ; $6551: $04
	adc  a                                           ; $6552: $8f
	inc  b                                           ; $6553: $04
	jr   jr_060_65af                                 ; $6554: $18 $59

	ld   d, d                                        ; $6556: $52
	ld   l, e                                        ; $6557: $6b
	sbc  d                                           ; $6558: $9a
	ld   a, l                                        ; $6559: $7d
	rst  $38                                         ; $655a: $ff
	rst  $38                                         ; $655b: $ff
	dec  c                                           ; $655c: $0d
	nop                                              ; $655d: $00
	ld   a, [bc]                                     ; $655e: $0a
	dec  c                                           ; $655f: $0d
	ld   [bc], a                                     ; $6560: $02
	ld   bc, $020f                                   ; $6561: $01 $0f $02
	inc  bc                                          ; $6564: $03
	dec  e                                           ; $6565: $1d
	ld   b, b                                        ; $6566: $40
	ld   [de], a                                     ; $6567: $12
	inc  bc                                          ; $6568: $03
	ld   [de], a                                     ; $6569: $12
	ld   bc, $2902                                   ; $656a: $01 $02 $29
	nop                                              ; $656d: $00
	ld   bc, $0301                                   ; $656e: $01 $01 $03
	pop  de                                          ; $6571: $d1
	sbc  [hl]                                        ; $6572: $9e
	pop  de                                          ; $6573: $d1
	xor  h                                           ; $6574: $ac
	ld   a, [$5210]                                  ; $6575: $fa $10 $52

Jump_060_6578:
	ld   e, l                                        ; $6578: $5d
	sub  a                                           ; $6579: $97
	inc  b                                           ; $657a: $04
	ld   [$9102], sp                                 ; $657b: $08 $02 $91
	ld   a, h                                        ; $657e: $7c
	dec  c                                           ; $657f: $0d
	db   $10                                         ; $6580: $10
	ld   h, c                                        ; $6581: $61
	halt                                             ; $6582: $76
	ld   e, d                                        ; $6583: $5a
	ld   [bc], a                                     ; $6584: $02
	sbc  l                                           ; $6585: $9d
	ld   d, [hl]                                     ; $6586: $56
	ld   a, b                                        ; $6587: $78
	ld   d, d                                        ; $6588: $52
	ld   e, c                                        ; $6589: $59
	sub  a                                           ; $658a: $97
	ld   [hl], c                                     ; $658b: $71
	ld   [hl], h                                     ; $658c: $74
	dec  c                                           ; $658d: $0d
	db   $10                                         ; $658e: $10
	ld   l, e                                        ; $658f: $6b
	sbc  d                                           ; $6590: $9a
	ld   a, l                                        ; $6591: $7d
	pop  bc                                          ; $6592: $c1
	db   $e3                                         ; $6593: $e3
	ld   [hl], l                                     ; $6594: $75
	ld   h, a                                        ; $6595: $67
	sbc  l                                           ; $6596: $9d
	ld   a, [$0401]                                  ; $6597: $fa $01 $04
	dec  c                                           ; $659a: $0d
	nop                                              ; $659b: $00
	ld   a, [bc]                                     ; $659c: $0a
	inc  e                                           ; $659d: $1c
	ld   [bc], a                                     ; $659e: $02
	ld   bc, $0101                                   ; $659f: $01 $01 $01
	ld   e, b                                        ; $65a2: $58
	adc  c                                           ; $65a3: $89
	adc  c                                           ; $65a4: $89
	adc  c                                           ; $65a5: $89
	adc  c                                           ; $65a6: $89
	sbc  a                                           ; $65a7: $9f
	ld   h, c                                        ; $65a8: $61
	ld   a, h                                        ; $65a9: $7c
	inc  bc                                          ; $65aa: $03
	add  [hl]                                        ; $65ab: $86
	ld   [hl], c                                     ; $65ac: $71
	ld   l, l                                        ; $65ad: $6d
	sub  a                                           ; $65ae: $97

jr_060_65af:
	dec  c                                           ; $65af: $0d

Call_060_65b0:
	cp   c                                           ; $65b0: $b9
	jp   hl                                          ; $65b1: $e9


	ei                                               ; $65b2: $fb
	or   b                                           ; $65b3: $b0
	ld   e, d                                        ; $65b4: $5a
	inc  b                                           ; $65b5: $04
	ld   c, $02                                      ; $65b6: $0e $02
	sbc  d                                           ; $65b8: $9a
	ld   e, e                                        ; $65b9: $5b
	ld   a, b                                        ; $65ba: $78
	and  c                                           ; $65bb: $a1
	ld   [hl], l                                     ; $65bc: $75
	ld   h, a                                        ; $65bd: $67
	ld   a, h                                        ; $65be: $7c
	sbc  a                                           ; $65bf: $9f
	dec  c                                           ; $65c0: $0d
	ld   h, l                                        ; $65c1: $65
	and  c                                           ; $65c2: $a1
	ld   l, c                                        ; $65c3: $69
	ld   e, e                                        ; $65c4: $5b
	ld   a, h                                        ; $65c5: $7c
	inc  bc                                          ; $65c6: $03
	add  [hl]                                        ; $65c7: $86
	ld   a, b                                        ; $65c8: $78
	ld   a, h                                        ; $65c9: $7c
	ld   [hl], l                                     ; $65ca: $75
	ld   h, a                                        ; $65cb: $67
	sbc  l                                           ; $65cc: $9d
	sbc  a                                           ; $65cd: $9f
	dec  c                                           ; $65ce: $0d
	nop                                              ; $65cf: $00
	ld   a, [bc]                                     ; $65d0: $0a
	ld   b, $66                                      ; $65d1: $06 $66
	ld   de, $100f                                   ; $65d3: $11 $0f $10
	nop                                              ; $65d6: $00
	ld   bc, $ff6b                                   ; $65d7: $01 $6b $ff
	ld   l, e                                        ; $65da: $6b
	ld   d, h                                        ; $65db: $54
	ld   [hl], l                                     ; $65dc: $75
	ld   h, a                                        ; $65dd: $67
	sub  [hl]                                        ; $65de: $96
	ld   a, e                                        ; $65df: $7b
	sbc  a                                           ; $65e0: $9f
	dec  c                                           ; $65e1: $0d
	ld   d, d                                        ; $65e2: $52
	sub  d                                           ; $65e3: $92
	sbc  [hl]                                        ; $65e4: $9e
	ld   [bc], a                                     ; $65e5: $02
	ld   h, $03                                      ; $65e6: $26 $03
	ld   [hl], l                                     ; $65e8: $75
	ld   h, l                                        ; $65e9: $65
	adc  h                                           ; $65ea: $8c
	ld   h, l                                        ; $65eb: $65
	ld   l, l                                        ; $65ec: $6d
	sub  [hl]                                        ; $65ed: $96
	sbc  a                                           ; $65ee: $9f
	dec  c                                           ; $65ef: $0d
	nop                                              ; $65f0: $00
	ld   a, [bc]                                     ; $65f1: $0a
	rrca                                             ; $65f2: $0f
	nop                                              ; $65f3: $00
	ld   bc, $6701                                   ; $65f4: $01 $01 $67
	adc  l                                           ; $65f7: $8d
	sbc  d                                           ; $65f8: $9a
	ld   a, h                                        ; $65f9: $7c
	inc  bc                                          ; $65fa: $03
	sub  d                                           ; $65fb: $92
	ld   [hl], l                                     ; $65fc: $75
	ld   h, d                                        ; $65fd: $62
	ld   h, h                                        ; $65fe: $64
	ld   d, d                                        ; $65ff: $52
	adc  h                                           ; $6600: $8c
	ld   h, a                                        ; $6601: $67
	sbc  a                                           ; $6602: $9f
	dec  c                                           ; $6603: $0d
	nop                                              ; $6604: $00
	ld   a, [bc]                                     ; $6605: $0a
	rrca                                             ; $6606: $0f
	db   $10                                         ; $6607: $10
	ld   bc, $a901                                   ; $6608: $01 $01 $a9
	call nz, $10fa                                   ; $660b: $c4 $fa $10
	rst  $38                                         ; $660e: $ff
	rst  $38                                         ; $660f: $ff
	ld   e, b                                        ; $6610: $58
	sbc  [hl]                                        ; $6611: $9e
	inc  bc                                          ; $6612: $03
	sub  d                                           ; $6613: $92
	ld   c, a                                        ; $6614: $4f
	rst  $38                                         ; $6615: $ff
	rst  $38                                         ; $6616: $ff
	ld   sp, hl                                      ; $6617: $f9
	dec  c                                           ; $6618: $0d
	rst  $38                                         ; $6619: $ff
	rst  $38                                         ; $661a: $ff
	inc  bc                                          ; $661b: $03
	sub  d                                           ; $661c: $92
	ld   h, d                                        ; $661d: $62
	ld   h, e                                        ; $661e: $63
	and  c                                           ; $661f: $a1
	ld   a, b                                        ; $6620: $78
	ld   a, h                                        ; $6621: $7c
	ld   [hl], l                                     ; $6622: $75
	ld   h, a                                        ; $6623: $67
	ld   e, c                                        ; $6624: $59
	ld   sp, hl                                      ; $6625: $f9
	dec  c                                           ; $6626: $0d
	adc  c                                           ; $6627: $89
	rst  $38                                         ; $6628: $ff
	inc  b                                           ; $6629: $04
	adc  a                                           ; $662a: $8f
	inc  b                                           ; $662b: $04
	jr   jr_060_66a3                                 ; $662c: $18 $75

	ld   h, a                                        ; $662e: $67
	ld   e, c                                        ; $662f: $59
	ld   l, e                                        ; $6630: $6b
	sbc  d                                           ; $6631: $9a
	ld   a, l                                        ; $6632: $7d
	rst  $38                                         ; $6633: $ff
	rst  $38                                         ; $6634: $ff
	dec  c                                           ; $6635: $0d
	nop                                              ; $6636: $00
	ld   a, [bc]                                     ; $6637: $0a
	dec  c                                           ; $6638: $0d
	ld   [bc], a                                     ; $6639: $02
	ld   bc, $020f                                   ; $663a: $01 $0f $02
	inc  bc                                          ; $663d: $03
	dec  e                                           ; $663e: $1d
	ld   b, b                                        ; $663f: $40
	ld   [de], a                                     ; $6640: $12
	inc  bc                                          ; $6641: $03
	ld   [de], a                                     ; $6642: $12
	ld   bc, $2903                                   ; $6643: $01 $03 $29
	nop                                              ; $6646: $00
	ld   bc, $0301                                   ; $6647: $01 $01 $03
	ld   a, b                                        ; $664a: $78
	sbc  [hl]                                        ; $664b: $9e
	ld   a, b                                        ; $664c: $78
	and  c                                           ; $664d: $a1
	ld   [hl], l                                     ; $664e: $75
	ld   h, a                                        ; $664f: $67
	ld   [hl], c                                     ; $6650: $71
	ld   [hl], h                                     ; $6651: $74
	ld   a, [$100d]                                  ; $6652: $fa $0d $10
	pop  de                                          ; $6655: $d1
	xor  h                                           ; $6656: $ac
	ld   a, b                                        ; $6657: $78
	ld   h, c                                        ; $6658: $61
	halt                                             ; $6659: $76
	ld   e, b                                        ; $665a: $58
	ld   [hl], c                                     ; $665b: $71
	ld   h, l                                        ; $665c: $65
	sub  c                                           ; $665d: $91
	ld   d, d                                        ; $665e: $52
	ld   a, [$0401]                                  ; $665f: $fa $01 $04
	dec  c                                           ; $6662: $0d
	nop                                              ; $6663: $00
	ld   a, [bc]                                     ; $6664: $0a
	inc  e                                           ; $6665: $1c
	ld   [bc], a                                     ; $6666: $02
	ld   bc, $0101                                   ; $6667: $01 $01 $01
	ld   e, b                                        ; $666a: $58
	adc  c                                           ; $666b: $89
	adc  c                                           ; $666c: $89
	adc  c                                           ; $666d: $89
	adc  c                                           ; $666e: $89
	sbc  a                                           ; $666f: $9f
	ld   h, c                                        ; $6670: $61
	ld   a, h                                        ; $6671: $7c
	inc  bc                                          ; $6672: $03
	add  [hl]                                        ; $6673: $86
	ld   [hl], c                                     ; $6674: $71
	ld   l, l                                        ; $6675: $6d
	sub  a                                           ; $6676: $97
	dec  c                                           ; $6677: $0d
	cp   c                                           ; $6678: $b9
	jp   hl                                          ; $6679: $e9


	ei                                               ; $667a: $fb
	or   b                                           ; $667b: $b0
	ld   e, d                                        ; $667c: $5a
	inc  b                                           ; $667d: $04
	ld   c, $02                                      ; $667e: $0e $02
	sbc  d                                           ; $6680: $9a
	ld   e, e                                        ; $6681: $5b
	ld   a, b                                        ; $6682: $78
	and  c                                           ; $6683: $a1
	ld   [hl], l                                     ; $6684: $75
	ld   h, a                                        ; $6685: $67
	ld   a, h                                        ; $6686: $7c
	sbc  a                                           ; $6687: $9f
	dec  c                                           ; $6688: $0d
	ld   h, l                                        ; $6689: $65
	and  c                                           ; $668a: $a1
	ld   l, c                                        ; $668b: $69
	ld   e, e                                        ; $668c: $5b
	ld   a, h                                        ; $668d: $7c
	inc  bc                                          ; $668e: $03
	add  [hl]                                        ; $668f: $86
	ld   a, b                                        ; $6690: $78
	ld   a, h                                        ; $6691: $7c
	ld   [hl], l                                     ; $6692: $75
	ld   h, a                                        ; $6693: $67
	sbc  l                                           ; $6694: $9d
	sbc  a                                           ; $6695: $9f
	dec  c                                           ; $6696: $0d
	nop                                              ; $6697: $00
	ld   a, [bc]                                     ; $6698: $0a
	rrca                                             ; $6699: $0f
	stop                                             ; $669a: $10 $00
	ld   bc, $ffff                                   ; $669c: $01 $ff $ff
	ld   a, b                                        ; $669f: $78
	sbc  [hl]                                        ; $66a0: $9e
	ld   a, b                                        ; $66a1: $78
	and  c                                           ; $66a2: $a1

jr_060_66a3:
	ld   l, [hl]                                     ; $66a3: $6e
	sbc  [hl]                                        ; $66a4: $9e
	dec  c                                           ; $66a5: $0d
	cp   c                                           ; $66a6: $b9
	jp   hl                                          ; $66a7: $e9


	ei                                               ; $66a8: $fb
	or   b                                           ; $66a9: $b0
	ld   [hl], l                                     ; $66aa: $75
	ld   h, a                                        ; $66ab: $67
	ld   e, c                                        ; $66ac: $59
	sbc  a                                           ; $66ad: $9f
	dec  c                                           ; $66ae: $0d
	ld   l, e                                        ; $66af: $6b
	ld   d, h                                        ; $66b0: $54
	ld   [hl], l                                     ; $66b1: $75
	ld   h, a                                        ; $66b2: $67
	sub  [hl]                                        ; $66b3: $96
	ld   a, e                                        ; $66b4: $7b
	rst  $38                                         ; $66b5: $ff
	rst  $38                                         ; $66b6: $ff
	dec  c                                           ; $66b7: $0d
	nop                                              ; $66b8: $00
	ld   a, [bc]                                     ; $66b9: $0a
	ld   b, $66                                      ; $66ba: $06 $66
	ld   de, $021c                                   ; $66bc: $11 $1c $02
	ld   bc, $0101                                   ; $66bf: $01 $01 $01
	ld   e, b                                        ; $66c2: $58
	adc  c                                           ; $66c3: $89
	adc  c                                           ; $66c4: $89
	adc  c                                           ; $66c5: $89
	adc  c                                           ; $66c6: $89
	sbc  a                                           ; $66c7: $9f
	dec  c                                           ; $66c8: $0d
	ld   h, c                                        ; $66c9: $61
	ld   a, h                                        ; $66ca: $7c
	inc  bc                                          ; $66cb: $03
	add  [hl]                                        ; $66cc: $86
	ld   a, l                                        ; $66cd: $7d
	ld   h, l                                        ; $66ce: $65
	and  c                                           ; $66cf: $a1
	ld   l, c                                        ; $66d0: $69
	ld   e, e                                        ; $66d1: $5b
	ld   a, h                                        ; $66d2: $7c
	inc  bc                                          ; $66d3: $03
	add  [hl]                                        ; $66d4: $86
	ld   [hl], l                                     ; $66d5: $75
	ld   h, a                                        ; $66d6: $67
	ld   a, h                                        ; $66d7: $7c
	sbc  a                                           ; $66d8: $9f
	dec  c                                           ; $66d9: $0d
	nop                                              ; $66da: $00
	ld   a, [bc]                                     ; $66db: $0a
	ld   b, $66                                      ; $66dc: $06 $66
	ld   de, $100f                                   ; $66de: $11 $0f $10
	nop                                              ; $66e1: $00
	ld   bc, $546b                                   ; $66e2: $01 $6b $54
	ld   d, d                                        ; $66e5: $52
	ld   d, [hl]                                     ; $66e6: $56
	ld   a, [hl]                                     ; $66e7: $7e
	inc  bc                                          ; $66e8: $03
	ld   l, c                                        ; $66e9: $69
	ld   [bc], a                                     ; $66ea: $02
	and  b                                           ; $66eb: $a0
	sbc  [hl]                                        ; $66ec: $9e
	inc  b                                           ; $66ed: $04
	ld   [$8f02], sp                                 ; $66ee: $08 $02 $8f
	ld   [bc], a                                     ; $66f1: $02
	sub  b                                           ; $66f2: $90
	ld   [bc], a                                     ; $66f3: $02
	sub  c                                           ; $66f4: $91
	inc  b                                           ; $66f5: $04
	add  hl, bc                                      ; $66f6: $09
	dec  c                                           ; $66f7: $0d
	halt                                             ; $66f8: $76
	ld   d, d                                        ; $66f9: $52
	ld   d, h                                        ; $66fa: $54
	inc  bc                                          ; $66fb: $03
	nop                                              ; $66fc: $00
	inc  bc                                          ; $66fd: $03
	ret                                              ; $66fe: $c9


	ld   e, d                                        ; $66ff: $5a
	ld   d, b                                        ; $6700: $50
	ld   a, [hl]                                     ; $6701: $7e
	sbc  d                                           ; $6702: $9a
	ld   [hl], h                                     ; $6703: $74
	sbc  c                                           ; $6704: $99
	sub  [hl]                                        ; $6705: $96
	ld   d, h                                        ; $6706: $54
	ld   [hl], l                                     ; $6707: $75
	dec  c                                           ; $6708: $0d
	rst  $38                                         ; $6709: $ff
	rst  $38                                         ; $670a: $ff
	add  h                                           ; $670b: $84
	ld   [hl], c                                     ; $670c: $71
	ld   l, e                                        ; $670d: $6b
	ld   d, h                                        ; $670e: $54
	ld   [hl], l                                     ; $670f: $75
	ld   h, a                                        ; $6710: $67
	sub  [hl]                                        ; $6711: $96
	ld   a, e                                        ; $6712: $7b
	sbc  a                                           ; $6713: $9f
	dec  c                                           ; $6714: $0d
	nop                                              ; $6715: $00
	ld   a, [bc]                                     ; $6716: $0a
	dec  c                                           ; $6717: $0d
	ld   [bc], a                                     ; $6718: $02
	ld   bc, $020f                                   ; $6719: $01 $0f $02
	ld   [bc], a                                     ; $671c: $02
	ld   bc, $0301                                   ; $671d: $01 $01 $03
	adc  h                                           ; $6720: $8c
	ld   d, b                                        ; $6721: $50
	sbc  [hl]                                        ; $6722: $9e
	ld   h, c                                        ; $6723: $61
	ld   a, h                                        ; $6724: $7c
	inc  b                                           ; $6725: $04
	ld   a, b                                        ; $6726: $78
	sbc  [hl]                                        ; $6727: $9e
	inc  b                                           ; $6728: $04
	ld   [$9102], sp                                 ; $6729: $08 $02 $91
	ld   a, h                                        ; $672c: $7c
	dec  c                                           ; $672d: $0d
	db   $10                                         ; $672e: $10
	ld   [bc], a                                     ; $672f: $02
	jr   z, jr_060_6734                              ; $6730: $28 $02

	xor  [hl]                                        ; $6732: $ae
	and  b                                           ; $6733: $a0

jr_060_6734:
	rst  $38                                         ; $6734: $ff
	rst  $38                                         ; $6735: $ff
	call c, $c9f5                                    ; $6736: $dc $f5 $c9
	ld   a, h                                        ; $6739: $7c
	ld   h, c                                        ; $673a: $61
	halt                                             ; $673b: $76
	dec  c                                           ; $673c: $0d
	db   $10                                         ; $673d: $10
	ld   a, b                                        ; $673e: $78
	ld   a, c                                        ; $673f: $79
	sub  b                                           ; $6740: $90
	inc  b                                           ; $6741: $04

jr_060_6742:
	dec  hl                                          ; $6742: $2b
	sub  a                                           ; $6743: $97
	ld   a, b                                        ; $6744: $78
	ld   d, d                                        ; $6745: $52
	ld   e, l                                        ; $6746: $5d
	ld   l, c                                        ; $6747: $69
	ld   a, c                                        ; $6748: $79
	rst  $38                                         ; $6749: $ff
	rst  $38                                         ; $674a: $ff
	ld   bc, $0d04                                   ; $674b: $01 $04 $0d
	nop                                              ; $674e: $00
	ld   a, [bc]                                     ; $674f: $0a
	rrca                                             ; $6750: $0f
	nop                                              ; $6751: $00
	ld   bc, $0101                                   ; $6752: $01 $01 $01
	inc  bc                                          ; $6755: $03
	sub  d                                           ; $6756: $92
	sbc  [hl]                                        ; $6757: $9e
	sub  d                                           ; $6758: $92
	ld   a, [hl]                                     ; $6759: $7e
	ld   d, d                                        ; $675a: $52
	rst  $38                                         ; $675b: $ff
	rst  $38                                         ; $675c: $ff
	dec  c                                           ; $675d: $0d
	db   $10                                         ; $675e: $10
	ld   h, a                                        ; $675f: $67
	adc  l                                           ; $6760: $8d
	sbc  d                                           ; $6761: $9a
	ld   h, e                                        ; $6762: $63
	and  c                                           ; $6763: $a1
	ld   e, d                                        ; $6764: $5a
	xor  [hl]                                        ; $6765: $ae
	xor  $6b                                         ; $6766: $ee $6b
	ld   d, h                                        ; $6768: $54
	ld   l, [hl]                                     ; $6769: $6e
	sbc  a                                           ; $676a: $9f
	dec  c                                           ; $676b: $0d
	db   $10                                         ; $676c: $10
	sub  $aa                                         ; $676d: $d6 $aa
	rst  $28                                         ; $676f: $ef
	ei                                               ; $6770: $fb
	ld   h, l                                        ; $6771: $65
	ld   a, b                                        ; $6772: $78
	ld   e, e                                        ; $6773: $5b
	sub  c                                           ; $6774: $91
	ei                                               ; $6775: $fb
	ld   bc, $0d04                                   ; $6776: $01 $04 $0d
	nop                                              ; $6779: $00
	ld   a, [bc]                                     ; $677a: $0a
	add  hl, de                                      ; $677b: $19
	dec  b                                           ; $677c: $05

Jump_060_677d:
	inc  bc                                          ; $677d: $03
	inc  bc                                          ; $677e: $03
	sub  h                                           ; $677f: $94
	inc  b                                           ; $6780: $04
	sbc  [hl]                                        ; $6781: $9e
	ld   a, h                                        ; $6782: $7c
	inc  bc                                          ; $6783: $03
	ld   c, d                                        ; $6784: $4a
	inc  b                                           ; $6785: $04
	dec  c                                           ; $6786: $0d
	and  b                                           ; $6787: $a0
	ld   a, [hl]                                     ; $6788: $7e
	sub  a                                           ; $6789: $97
	ld   h, a                                        ; $678a: $67
	nop                                              ; $678b: $00
	nop                                              ; $678c: $00
	dec  b                                           ; $678d: $05
	jr   nz, jr_060_6794                             ; $678e: $20 $04

	dec  d                                           ; $6790: $15
	and  b                                           ; $6791: $a0
	inc  b                                           ; $6792: $04
	adc  h                                           ; $6793: $8c

jr_060_6794:
	ld   d, [hl]                                     ; $6794: $56
	sbc  c                                           ; $6795: $99
	nop                                              ; $6796: $00
	ld   bc, $0804                                   ; $6797: $01 $04 $08
	ld   [bc], a                                     ; $679a: $02
	sub  c                                           ; $679b: $91
	ld   a, h                                        ; $679c: $7c
	ld   d, d                                        ; $679d: $52
	ld   d, d                                        ; $679e: $52
	dec  b                                           ; $679f: $05
	jr   nz, jr_060_6742                             ; $67a0: $20 $a0

	ld   h, a                                        ; $67a2: $67
	sbc  c                                           ; $67a3: $99
	nop                                              ; $67a4: $00
	ld   [bc], a                                     ; $67a5: $02
	rlca                                             ; $67a6: $07
	ld   c, e                                        ; $67a7: $4b
	ld   [de], a                                     ; $67a8: $12
	ld   [bc], a                                     ; $67a9: $02
	inc  bc                                          ; $67aa: $03
	ld   bc, $2000                                   ; $67ab: $01 $00 $20
	nop                                              ; $67ae: $00
	rlca                                             ; $67af: $07
	ld   c, a                                        ; $67b0: $4f
	inc  de                                          ; $67b1: $13
	ld   [bc], a                                     ; $67b2: $02
	inc  bc                                          ; $67b3: $03
	ld   bc, $2001                                   ; $67b4: $01 $01 $20
	nop                                              ; $67b7: $00
	rlca                                             ; $67b8: $07
	adc  [hl]                                        ; $67b9: $8e
	inc  d                                           ; $67ba: $14
	ld   [bc], a                                     ; $67bb: $02
	inc  bc                                          ; $67bc: $03
	ld   bc, $2002                                   ; $67bd: $01 $02 $20
	nop                                              ; $67c0: $00
	ld   b, $4b                                      ; $67c1: $06 $4b
	ld   [de], a                                     ; $67c3: $12
	rrca                                             ; $67c4: $0f
	nop                                              ; $67c5: $00
	ld   bc, $0301                                   ; $67c6: $01 $01 $03
	adc  e                                           ; $67c9: $8b
	ld   a, l                                        ; $67ca: $7d
	sbc  [hl]                                        ; $67cb: $9e
	inc  b                                           ; $67cc: $04
	ld   l, l                                        ; $67cd: $6d
	ld   l, l                                        ; $67ce: $6d
	ld   l, a                                        ; $67cf: $6f
	ld   a, l                                        ; $67d0: $7d
	rst  $38                                         ; $67d1: $ff
	rst  $38                                         ; $67d2: $ff
	dec  c                                           ; $67d3: $0d
	ld   l, e                                        ; $67d4: $6b
	ld   a, h                                        ; $67d5: $7c
	inc  b                                           ; $67d6: $04
	ld   [$8f02], sp                                 ; $67d7: $08 $02 $8f
	ld   [bc], a                                     ; $67da: $02
	sub  b                                           ; $67db: $90
	ld   [bc], a                                     ; $67dc: $02
	sub  c                                           ; $67dd: $91
	inc  b                                           ; $67de: $04
	add  hl, bc                                      ; $67df: $09
	ld   a, h                                        ; $67e0: $7c
	rst  $38                                         ; $67e1: $ff
	rst  $38                                         ; $67e2: $ff
	dec  c                                           ; $67e3: $0d
	nop                                              ; $67e4: $00
	ld   a, [bc]                                     ; $67e5: $0a
	inc  e                                           ; $67e6: $1c
	ld   [bc], a                                     ; $67e7: $02
	ld   bc, $0101                                   ; $67e8: $01 $01 $01
	ld   [bc], a                                     ; $67eb: $02
	ldh  a, [rTIMA]                                  ; $67ec: $f0 $05
	ld   e, c                                        ; $67ee: $59
	inc  bc                                          ; $67ef: $03
	add  [hl]                                        ; $67f0: $86
	inc  bc                                          ; $67f1: $03
	call z, $049f                                    ; $67f2: $cc $9f $04
	adc  a                                           ; $67f5: $8f
	inc  b                                           ; $67f6: $04
	xor  d                                           ; $67f7: $aa
	ld   a, l                                        ; $67f8: $7d
	ld   [hl], a                                     ; $67f9: $77
	ld   d, h                                        ; $67fa: $54
	sub  b                                           ; $67fb: $90
	dec  c                                           ; $67fc: $0d
	ld   h, d                                        ; $67fd: $62
	ld   l, a                                        ; $67fe: $6f
	ld   l, e                                        ; $67ff: $6b
	ld   d, h                                        ; $6800: $54
	ld   h, e                                        ; $6801: $63
	adc  h                                           ; $6802: $8c
	ld   [hl], l                                     ; $6803: $75
	ld   h, l                                        ; $6804: $65
	ld   l, l                                        ; $6805: $6d
	sbc  a                                           ; $6806: $9f
	dec  c                                           ; $6807: $0d
	nop                                              ; $6808: $00
	ld   a, [bc]                                     ; $6809: $0a
	inc  e                                           ; $680a: $1c
	ld   [bc], a                                     ; $680b: $02
	nop                                              ; $680c: $00
	nop                                              ; $680d: $00
	ld   bc, $5063                                   ; $680e: $01 $63 $50
	sbc  [hl]                                        ; $6811: $9e
	ld   [bc], a                                     ; $6812: $02
	ld   a, a                                        ; $6813: $7f
	ld   e, l                                        ; $6814: $5d
	sbc  l                                           ; $6815: $9d
	sub  [hl]                                        ; $6816: $96
	sbc  a                                           ; $6817: $9f
	dec  c                                           ; $6818: $0d
	ld   [$6300], sp                                 ; $6819: $08 $00 $63
	and  c                                           ; $681c: $a1
	sbc  a                                           ; $681d: $9f
	dec  c                                           ; $681e: $0d
	nop                                              ; $681f: $00
	ld   a, [bc]                                     ; $6820: $0a
	dec  c                                           ; $6821: $0d
	nop                                              ; $6822: $00
	nop                                              ; $6823: $00
	rrca                                             ; $6824: $0f
	nop                                              ; $6825: $00
	ld   bc, $9823                                   ; $6826: $01 $23 $98
	inc  e                                           ; $6829: $1c
	ld   [bc], a                                     ; $682a: $02
	ld   [bc], a                                     ; $682b: $02
	ld   [bc], a                                     ; $682c: $02
	ld   bc, $0008                                   ; $682d: $01 $08 $00
	ld   h, e                                        ; $6830: $63
	and  c                                           ; $6831: $a1
	sbc  a                                           ; $6832: $9f
	dec  c                                           ; $6833: $0d
	ld   d, b                                        ; $6834: $50
	ld   a, b                                        ; $6835: $78
	ld   l, l                                        ; $6836: $6d
	sbc  [hl]                                        ; $6837: $9e
	inc  b                                           ; $6838: $04
	and  e                                           ; $6839: $a3
	sbc  d                                           ; $683a: $9a
	ld   [hl], h                                     ; $683b: $74
	adc  h                                           ; $683c: $8c
	ld   l, c                                        ; $683d: $69
	and  c                                           ; $683e: $a1
	ld   e, c                                        ; $683f: $59
	ld   sp, hl                                      ; $6840: $f9
	dec  c                                           ; $6841: $0d
	nop                                              ; $6842: $00
	ld   a, [bc]                                     ; $6843: $0a
	ld   bc, $0804                                   ; $6844: $01 $04 $08
	ld   [bc], a                                     ; $6847: $02
	adc  a                                           ; $6848: $8f
	ld   [bc], a                                     ; $6849: $02
	sub  b                                           ; $684a: $90
	ld   [bc], a                                     ; $684b: $02
	sub  c                                           ; $684c: $91
	inc  b                                           ; $684d: $04
	add  hl, bc                                      ; $684e: $09
	ld   a, l                                        ; $684f: $7d
	inc  b                                           ; $6850: $04
	ld   e, a                                        ; $6851: $5f
	inc  b                                           ; $6852: $04
	pop  bc                                          ; $6853: $c1
	inc  b                                           ; $6854: $04
	sub  l                                           ; $6855: $95
	inc  b                                           ; $6856: $04
	ld   a, [bc]                                     ; $6857: $0a
	dec  c                                           ; $6858: $0d
	ld   a, b                                        ; $6859: $78
	ld   a, h                                        ; $685a: $7c
	ld   [hl], l                                     ; $685b: $75
	ld   h, a                                        ; $685c: $67
	sub  [hl]                                        ; $685d: $96
	sbc  a                                           ; $685e: $9f
	dec  c                                           ; $685f: $0d
	nop                                              ; $6860: $00
	ld   a, [bc]                                     ; $6861: $0a
	inc  e                                           ; $6862: $1c
	ld   [bc], a                                     ; $6863: $02
	nop                                              ; $6864: $00
	nop                                              ; $6865: $00
	ld   bc, $9075                                   ; $6866: $01 $75 $90
	sbc  [hl]                                        ; $6869: $9e
	adc  h                                           ; $686a: $8c
	ld   d, b                                        ; $686b: $50
	sbc  [hl]                                        ; $686c: $9e
	sbc  l                                           ; $686d: $9d
	ld   l, l                                        ; $686e: $6d
	ld   e, l                                        ; $686f: $5d
	ld   h, l                                        ; $6870: $65
	ld   e, d                                        ; $6871: $5a
	inc  bc                                          ; $6872: $03
	ld   hl, sp-$68                                  ; $6873: $f8 $98
	dec  c                                           ; $6875: $0d
	ld   l, e                                        ; $6876: $6b
	ld   d, h                                        ; $6877: $54
	ld   a, c                                        ; $6878: $79
	ld   a, b                                        ; $6879: $78
	ld   [hl], c                                     ; $687a: $71
	ld   l, l                                        ; $687b: $6d
	ld   a, h                                        ; $687c: $7c
	and  b                                           ; $687d: $a0
	inc  bc                                          ; $687e: $03
	ld   b, c                                        ; $687f: $41
	adc  a                                           ; $6880: $8f
	ld   [hl], h                                     ; $6881: $74
	dec  c                                           ; $6882: $0d
	ld   e, l                                        ; $6883: $5d
	sbc  d                                           ; $6884: $9a
	ld   l, l                                        ; $6885: $6d
	ld   h, c                                        ; $6886: $61
	halt                                             ; $6887: $76
	ld   a, l                                        ; $6888: $7d
	ld   [bc], a                                     ; $6889: $02
	scf                                              ; $688a: $37
	inc  bc                                          ; $688b: $03
	ld   b, d                                        ; $688c: $42
	ld   h, l                                        ; $688d: $65
	adc  h                                           ; $688e: $8c
	ld   h, a                                        ; $688f: $67
	sbc  l                                           ; $6890: $9d
	sbc  a                                           ; $6891: $9f
	dec  c                                           ; $6892: $0d
	nop                                              ; $6893: $00
	ld   a, [bc]                                     ; $6894: $0a
	ld   bc, $5063                                   ; $6895: $01 $63 $50
	sbc  [hl]                                        ; $6898: $9e
	ld   [bc], a                                     ; $6899: $02
	or   l                                           ; $689a: $b5
	sbc  b                                           ; $689b: $98
	adc  h                                           ; $689c: $8c
	ld   h, l                                        ; $689d: $65
	sub  l                                           ; $689e: $95
	ld   d, h                                        ; $689f: $54
	sbc  a                                           ; $68a0: $9f
	dec  c                                           ; $68a1: $0d
	nop                                              ; $68a2: $00
	dec  b                                           ; $68a3: $05
	add  b                                           ; $68a4: $80
	ret                                              ; $68a5: $c9


	ld   bc, $0001                                   ; $68a6: $01 $01 $00
	ld   bc, $a502                                   ; $68a9: $01 $02 $a5
	inc  b                                           ; $68ac: $04
	xor  d                                           ; $68ad: $aa
	ld   a, l                                        ; $68ae: $7d
	sbc  [hl]                                        ; $68af: $9e
	ld   e, b                                        ; $68b0: $58
	inc  b                                           ; $68b1: $04
	ld   a, e                                        ; $68b2: $7b
	sbc  d                                           ; $68b3: $9a
	ld   h, e                                        ; $68b4: $63
	adc  h                                           ; $68b5: $8c
	ld   [hl], l                                     ; $68b6: $75
	ld   h, l                                        ; $68b7: $65
	ld   l, l                                        ; $68b8: $6d
	sbc  a                                           ; $68b9: $9f
	dec  c                                           ; $68ba: $0d
	nop                                              ; $68bb: $00
	ld   a, [bc]                                     ; $68bc: $0a
	dec  c                                           ; $68bd: $0d
	nop                                              ; $68be: $00
	nop                                              ; $68bf: $00
	rrca                                             ; $68c0: $0f
	nop                                              ; $68c1: $00
	ld   bc, $1e09                                   ; $68c2: $01 $09 $1e
	add  hl, hl                                      ; $68c5: $29
	nop                                              ; $68c6: $00
	nop                                              ; $68c7: $00
	rrca                                             ; $68c8: $0f
	nop                                              ; $68c9: $00
	ld   bc, $7601                                   ; $68ca: $01 $01 $76
	ld   h, c                                        ; $68cd: $61
	sbc  e                                           ; $68ce: $9b
	ld   [hl], l                                     ; $68cf: $75
	sbc  [hl]                                        ; $68d0: $9e
	ld   h, c                                        ; $68d1: $61
	ld   a, h                                        ; $68d2: $7c
	ld   e, b                                        ; $68d3: $58
	dec  b                                           ; $68d4: $05
	ld   [bc], a                                     ; $68d5: $02
	dec  b                                           ; $68d6: $05
	ld   de, $760d                                   ; $68d7: $11 $0d $76
	ld   [hl], h                                     ; $68da: $74
	sub  b                                           ; $68db: $90
	ld   e, b                                        ; $68dc: $58
	ld   d, d                                        ; $68dd: $52
	ld   h, l                                        ; $68de: $65
	ld   e, c                                        ; $68df: $59
	ld   [hl], c                                     ; $68e0: $71
	ld   l, l                                        ; $68e1: $6d
	ld   [hl], l                                     ; $68e2: $75
	ld   h, a                                        ; $68e3: $67
	ld   a, e                                        ; $68e4: $7b
	sbc  a                                           ; $68e5: $9f
	dec  c                                           ; $68e6: $0d
	ld   a, e                                        ; $68e7: $7b
	sbc  [hl]                                        ; $68e8: $9e
	ld   h, a                                        ; $68e9: $67
	adc  l                                           ; $68ea: $8d
	sbc  d                                           ; $68eb: $9a
	ld   h, e                                        ; $68ec: $63
	and  c                                           ; $68ed: $a1
	sbc  a                                           ; $68ee: $9f
	dec  c                                           ; $68ef: $0d
	nop                                              ; $68f0: $00

jr_060_68f1:
	ld   a, [bc]                                     ; $68f1: $0a
	inc  e                                           ; $68f2: $1c
	ld   [bc], a                                     ; $68f3: $02
	nop                                              ; $68f4: $00
	nop                                              ; $68f5: $00
	ld   bc, $9e6b                                   ; $68f6: $01 $6b $9e
	ld   l, e                                        ; $68f9: $6b
	ld   d, h                                        ; $68fa: $54
	ld   a, e                                        ; $68fb: $7b
	rst  $38                                         ; $68fc: $ff
	rst  $38                                         ; $68fd: $ff
	dec  c                                           ; $68fe: $0d
	nop                                              ; $68ff: $00
	ld   a, [bc]                                     ; $6900: $0a
	inc  e                                           ; $6901: $1c
	ld   [bc], a                                     ; $6902: $02
	ld   bc, $0101                                   ; $6903: $01 $01 $01
	ld   [bc], a                                     ; $6906: $02
	ldh  a, [rTIMA]                                  ; $6907: $f0 $05
	ld   e, c                                        ; $6909: $59
	inc  bc                                          ; $690a: $03
	add  [hl]                                        ; $690b: $86
	inc  bc                                          ; $690c: $03
	call z, $049e                                    ; $690d: $cc $9e $04
	adc  a                                           ; $6910: $8f
	inc  b                                           ; $6911: $04
	xor  d                                           ; $6912: $aa
	ld   a, l                                        ; $6913: $7d
	ld   [hl], a                                     ; $6914: $77
	ld   d, h                                        ; $6915: $54
	sub  b                                           ; $6916: $90
	dec  c                                           ; $6917: $0d
	ld   d, b                                        ; $6918: $50
	sbc  b                                           ; $6919: $98
	ld   e, d                                        ; $691a: $5a
	halt                                             ; $691b: $76
	ld   d, h                                        ; $691c: $54
	ld   h, d                                        ; $691d: $62
	ld   h, h                                        ; $691e: $64
	ld   d, d                                        ; $691f: $52
	adc  h                                           ; $6920: $8c
	ld   h, l                                        ; $6921: $65
	ld   l, l                                        ; $6922: $6d
	sbc  a                                           ; $6923: $9f
	dec  c                                           ; $6924: $0d
	nop                                              ; $6925: $00
	ld   a, [bc]                                     ; $6926: $0a
	ld   bc, $9a6b                                   ; $6927: $01 $6b $9a
	ld   [hl], l                                     ; $692a: $75
	ld   a, l                                        ; $692b: $7d
	sbc  [hl]                                        ; $692c: $9e
	inc  bc                                          ; $692d: $03
	add  e                                           ; $692e: $83
	dec  b                                           ; $692f: $05
	dec  c                                           ; $6930: $0d
	ld   d, d                                        ; $6931: $52
	ld   l, l                                        ; $6932: $6d
	ld   h, l                                        ; $6933: $65
	adc  h                                           ; $6934: $8c
	ld   h, a                                        ; $6935: $67
	sbc  a                                           ; $6936: $9f
	dec  c                                           ; $6937: $0d
	nop                                              ; $6938: $00
	ld   a, [bc]                                     ; $6939: $0a
	dec  c                                           ; $693a: $0d
	nop                                              ; $693b: $00
	nop                                              ; $693c: $00
	rrca                                             ; $693d: $0f
	nop                                              ; $693e: $00
	ld   bc, $9823                                   ; $693f: $01 $23 $98
	inc  e                                           ; $6942: $1c
	ld   [bc], a                                     ; $6943: $02
	ld   bc, $1d01                                   ; $6944: $01 $01 $1d
	ld   b, b                                        ; $6947: $40
	ld   [de], a                                     ; $6948: $12
	inc  bc                                          ; $6949: $03
	ld   [de], a                                     ; $694a: $12
	ld   bc, $2802                                   ; $694b: $01 $02 $28
	nop                                              ; $694e: $00
	ld   bc, $0008                                   ; $694f: $01 $08 $00
	ld   h, e                                        ; $6952: $63
	and  c                                           ; $6953: $a1
	sbc  a                                           ; $6954: $9f
	dec  c                                           ; $6955: $0d
	inc  bc                                          ; $6956: $03
	jr   jr_060_68f1                                 ; $6957: $18 $98

	ld   d, b                                        ; $6959: $50
	ld   d, [hl]                                     ; $695a: $56
	ld   l, b                                        ; $695b: $68
	sbc  [hl]                                        ; $695c: $9e
	ld   e, b                                        ; $695d: $58
	dec  b                                           ; $695e: $05
	dec  c                                           ; $695f: $0d
	and  b                                           ; $6960: $a0
	dec  c                                           ; $6961: $0d
	ld   d, d                                        ; $6962: $52
	ld   d, d                                        ; $6963: $52
	adc  h                                           ; $6964: $8c
	ld   h, a                                        ; $6965: $67
	sbc  l                                           ; $6966: $9d
	sbc  a                                           ; $6967: $9f
	ld   d, b                                        ; $6968: $50
	sbc  b                                           ; $6969: $98
	ld   e, d                                        ; $696a: $5a
	halt                                             ; $696b: $76
	ld   d, h                                        ; $696c: $54
	sbc  a                                           ; $696d: $9f
	dec  c                                           ; $696e: $0d
	nop                                              ; $696f: $00
	ld   a, [bc]                                     ; $6970: $0a
	inc  e                                           ; $6971: $1c
	ld   [bc], a                                     ; $6972: $02
	nop                                              ; $6973: $00
	nop                                              ; $6974: $00
	ld   bc, $0804                                   ; $6975: $01 $04 $08
	ld   [bc], a                                     ; $6978: $02
	adc  a                                           ; $6979: $8f
	ld   [bc], a                                     ; $697a: $02
	sub  b                                           ; $697b: $90
	ld   [bc], a                                     ; $697c: $02
	sub  c                                           ; $697d: $91
	inc  b                                           ; $697e: $04
	add  hl, bc                                      ; $697f: $09
	ld   a, l                                        ; $6980: $7d
	inc  b                                           ; $6981: $04
	ld   e, a                                        ; $6982: $5f
	inc  b                                           ; $6983: $04
	pop  bc                                          ; $6984: $c1
	inc  b                                           ; $6985: $04
	sub  l                                           ; $6986: $95
	inc  b                                           ; $6987: $04
	ld   a, [bc]                                     ; $6988: $0a
	sbc  a                                           ; $6989: $9f
	dec  c                                           ; $698a: $0d
	inc  bc                                          ; $698b: $03
	xor  c                                           ; $698c: $a9
	ld   a, c                                        ; $698d: $79
	sub  b                                           ; $698e: $90
	ld   l, e                                        ; $698f: $6b
	ld   a, h                                        ; $6990: $7c
	inc  bc                                          ; $6991: $03
	ld   c, d                                        ; $6992: $4a
	inc  b                                           ; $6993: $04
	dec  c                                           ; $6994: $0d
	and  b                                           ; $6995: $a0
	inc  b                                           ; $6996: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6997: $cf
	ld   e, c                                        ; $6998: $59
	ld   h, l                                        ; $6999: $65
	ld   [hl], h                                     ; $699a: $74
	ld   a, l                                        ; $699b: $7d
	dec  c                                           ; $699c: $0d
	ld   a, b                                        ; $699d: $78
	sub  a                                           ; $699e: $97
	ld   a, b                                        ; $699f: $78
	ld   d, d                                        ; $69a0: $52
	rst  $38                                         ; $69a1: $ff
	rst  $38                                         ; $69a2: $ff
	dec  c                                           ; $69a3: $0d
	nop                                              ; $69a4: $00
	ld   a, [bc]                                     ; $69a5: $0a
	ld   bc, $5490                                   ; $69a6: $01 $90 $54
	inc  bc                                          ; $69a9: $03
	ld   l, h                                        ; $69aa: $6c
	ld   h, l                                        ; $69ab: $65
	ld   [hl], l                                     ; $69ac: $75
	sbc  [hl]                                        ; $69ad: $9e
	sbc  l                                           ; $69ae: $9d
	ld   l, l                                        ; $69af: $6d
	ld   e, l                                        ; $69b0: $5d
	ld   h, l                                        ; $69b1: $65
	sbc  [hl]                                        ; $69b2: $9e
	inc  bc                                          ; $69b3: $03
	ld   hl, sp+$71                                  ; $69b4: $f8 $71
	ld   [hl], h                                     ; $69b6: $74
	dec  c                                           ; $69b7: $0d
	dec  b                                           ; $69b8: $05
	jr   nz, jr_060_6a20                             ; $69b9: $20 $65

	ld   [hl], h                                     ; $69bb: $74
	ld   h, l                                        ; $69bc: $65
	adc  h                                           ; $69bd: $8c
	ld   d, h                                        ; $69be: $54
	halt                                             ; $69bf: $76
	ld   h, c                                        ; $69c0: $61
	ld   [hl], l                                     ; $69c1: $75
	ld   h, l                                        ; $69c2: $65
	ld   l, l                                        ; $69c3: $6d
	sbc  l                                           ; $69c4: $9d
	sbc  a                                           ; $69c5: $9f
	dec  c                                           ; $69c6: $0d
	nop                                              ; $69c7: $00
	ld   a, [bc]                                     ; $69c8: $0a
	dec  b                                           ; $69c9: $05
	ld   b, b                                        ; $69ca: $40
	ld   c, a                                        ; $69cb: $4f
	ld   bc, $0000                                   ; $69cc: $01 $00 $00
	inc  e                                           ; $69cf: $1c
	ld   [bc], a                                     ; $69d0: $02
	ld   bc, $0101                                   ; $69d1: $01 $01 $01
	ld   h, e                                        ; $69d4: $63
	ld   d, b                                        ; $69d5: $50
	sbc  [hl]                                        ; $69d6: $9e
	ld   [bc], a                                     ; $69d7: $02
	or   l                                           ; $69d8: $b5
	sbc  b                                           ; $69d9: $98
	adc  h                                           ; $69da: $8c
	ld   h, l                                        ; $69db: $65
	sub  l                                           ; $69dc: $95
	ld   d, h                                        ; $69dd: $54
	ld   e, c                                        ; $69de: $59
	sbc  a                                           ; $69df: $9f
	dec  c                                           ; $69e0: $0d
	nop                                              ; $69e1: $00
	dec  b                                           ; $69e2: $05
	add  b                                           ; $69e3: $80
	ret                                              ; $69e4: $c9


	ld   bc, $0001                                   ; $69e5: $01 $01 $00
	ld   bc, $a502                                   ; $69e8: $01 $02 $a5
	inc  b                                           ; $69eb: $04
	xor  d                                           ; $69ec: $aa
	ld   a, l                                        ; $69ed: $7d
	sbc  [hl]                                        ; $69ee: $9e
	ld   e, b                                        ; $69ef: $58
	inc  b                                           ; $69f0: $04
	ld   a, e                                        ; $69f1: $7b
	sbc  d                                           ; $69f2: $9a
	ld   h, e                                        ; $69f3: $63
	adc  h                                           ; $69f4: $8c
	ld   [hl], l                                     ; $69f5: $75
	ld   h, l                                        ; $69f6: $65
	ld   l, l                                        ; $69f7: $6d
	sbc  a                                           ; $69f8: $9f
	dec  c                                           ; $69f9: $0d
	nop                                              ; $69fa: $00
	ld   a, [bc]                                     ; $69fb: $0a
	dec  c                                           ; $69fc: $0d
	nop                                              ; $69fd: $00
	nop                                              ; $69fe: $00
	rrca                                             ; $69ff: $0f
	nop                                              ; $6a00: $00
	ld   bc, $1e09                                   ; $6a01: $01 $09 $1e
	add  hl, hl                                      ; $6a04: $29
	nop                                              ; $6a05: $00
	nop                                              ; $6a06: $00
	rrca                                             ; $6a07: $0f
	nop                                              ; $6a08: $00
	ld   bc, $7501                                   ; $6a09: $01 $01 $75
	sub  b                                           ; $6a0c: $90
	sbc  [hl]                                        ; $6a0d: $9e
	inc  b                                           ; $6a0e: $04
	ld   [$9102], sp                                 ; $6a0f: $08 $02 $91
	ld   [hl], c                                     ; $6a12: $71
	ld   [hl], h                                     ; $6a13: $74
	adc  h                                           ; $6a14: $8c
	sub  b                                           ; $6a15: $90
	ld   a, h                                        ; $6a16: $7c
	and  b                                           ; $6a17: $a0
	ld   l, l                                        ; $6a18: $6d
	ld   d, d                                        ; $6a19: $52
	ld   h, [hl]                                     ; $6a1a: $66
	dec  c                                           ; $6a1b: $0d
	ld   h, l                                        ; $6a1c: $65
	ld   [hl], h                                     ; $6a1d: $74
	ld   d, d                                        ; $6a1e: $52
	sbc  c                                           ; $6a1f: $99

jr_060_6a20:
	inc  bc                                          ; $6a20: $03
	ld   c, d                                        ; $6a21: $4a
	ld   [bc], a                                     ; $6a22: $02
	ld   a, c                                        ; $6a23: $79
	ld   a, h                                        ; $6a24: $7c
	inc  b                                           ; $6a25: $04
	jp   nc, Jump_060_7804                           ; $6a26: $d2 $04 $78

	ld   l, [hl]                                     ; $6a29: $6e
	ld   [hl], c                                     ; $6a2a: $71
	ld   [hl], h                                     ; $6a2b: $74
	dec  c                                           ; $6a2c: $0d
	and  a                                           ; $6a2d: $a7
	pop  af                                          ; $6a2e: $f1
	or   [hl]                                        ; $6a2f: $b6
	ld   [hl], l                                     ; $6a30: $75
	ld   h, a                                        ; $6a31: $67
	sub  [hl]                                        ; $6a32: $96
	ld   a, e                                        ; $6a33: $7b
	sbc  a                                           ; $6a34: $9f
	dec  c                                           ; $6a35: $0d
	nop                                              ; $6a36: $00
	ld   a, [bc]                                     ; $6a37: $0a
	inc  e                                           ; $6a38: $1c
	ld   [bc], a                                     ; $6a39: $02
	ld   bc, $0101                                   ; $6a3a: $01 $01 $01
	ld   l, e                                        ; $6a3d: $6b
	sbc  [hl]                                        ; $6a3e: $9e
	ld   l, e                                        ; $6a3f: $6b
	ld   d, h                                        ; $6a40: $54
	ld   [hl], l                                     ; $6a41: $75
	ld   h, a                                        ; $6a42: $67
	sbc  l                                           ; $6a43: $9d
	sbc  a                                           ; $6a44: $9f
	dec  c                                           ; $6a45: $0d
	sbc  l                                           ; $6a46: $9d
	ld   l, l                                        ; $6a47: $6d
	ld   e, l                                        ; $6a48: $5d
	ld   h, l                                        ; $6a49: $65
	sub  b                                           ; $6a4a: $90
	sbc  [hl]                                        ; $6a4b: $9e
	ld   l, e                                        ; $6a4c: $6b
	ld   a, h                                        ; $6a4d: $7c
	and  a                                           ; $6a4e: $a7
	pop  af                                          ; $6a4f: $f1
	or   [hl]                                        ; $6a50: $b6
	ld   [bc], a                                     ; $6a51: $02
	jp   nz, Jump_060_6d52                           ; $6a52: $c2 $52 $6d

	dec  c                                           ; $6a55: $0d
	ld   h, c                                        ; $6a56: $61
	halt                                             ; $6a57: $76
	ld   h, d                                        ; $6a58: $62
	ld   h, h                                        ; $6a59: $64
	ld   d, d                                        ; $6a5a: $52
	adc  h                                           ; $6a5b: $8c
	ld   h, a                                        ; $6a5c: $67
	sbc  l                                           ; $6a5d: $9d
	sbc  a                                           ; $6a5e: $9f
	dec  c                                           ; $6a5f: $0d
	nop                                              ; $6a60: $00
	ld   a, [bc]                                     ; $6a61: $0a
	ld   bc, $0804                                   ; $6a62: $01 $04 $08
	ld   [bc], a                                     ; $6a65: $02
	sub  c                                           ; $6a66: $91
	ld   a, l                                        ; $6a67: $7d
	add  h                                           ; $6a68: $84
	ld   [hl], c                                     ; $6a69: $71
	ld   l, e                                        ; $6a6a: $6b
	ld   d, h                                        ; $6a6b: $54
	ld   a, b                                        ; $6a6c: $78
	inc  bc                                          ; $6a6d: $03

Call_060_6a6e:
	ld   h, d                                        ; $6a6e: $62
	inc  b                                           ; $6a6f: $04
	add  hl, bc                                      ; $6a70: $09
	dec  c                                           ; $6a71: $0d
	ld   [hl], l                                     ; $6a72: $75
	ld   a, l                                        ; $6a73: $7d
	ld   a, b                                        ; $6a74: $78
	ld   d, d                                        ; $6a75: $52
	adc  l                                           ; $6a76: $8d
	ld   l, l                                        ; $6a77: $6d
	ld   d, d                                        ; $6a78: $52
	ld   [hl], l                                     ; $6a79: $75
	ld   h, a                                        ; $6a7a: $67
	sbc  l                                           ; $6a7b: $9d
	sub  [hl]                                        ; $6a7c: $96
	sbc  a                                           ; $6a7d: $9f
	dec  c                                           ; $6a7e: $0d
	nop                                              ; $6a7f: $00
	ld   a, [bc]                                     ; $6a80: $0a
	ld   bc, $f002                                   ; $6a81: $01 $02 $f0
	dec  b                                           ; $6a84: $05
	ld   e, c                                        ; $6a85: $59
	inc  bc                                          ; $6a86: $03
	add  [hl]                                        ; $6a87: $86
	inc  bc                                          ; $6a88: $03
	call z, $049f                                    ; $6a89: $cc $9f $04
	adc  a                                           ; $6a8c: $8f
	inc  b                                           ; $6a8d: $04
	xor  d                                           ; $6a8e: $aa
	ld   a, l                                        ; $6a8f: $7d
	ld   [hl], a                                     ; $6a90: $77
	ld   d, h                                        ; $6a91: $54
	sub  b                                           ; $6a92: $90
	dec  c                                           ; $6a93: $0d
	ld   d, b                                        ; $6a94: $50
	sbc  b                                           ; $6a95: $98
	ld   e, d                                        ; $6a96: $5a
	halt                                             ; $6a97: $76
	ld   d, h                                        ; $6a98: $54
	ld   h, d                                        ; $6a99: $62
	ld   h, h                                        ; $6a9a: $64
	ld   d, d                                        ; $6a9b: $52
	adc  h                                           ; $6a9c: $8c
	ld   h, l                                        ; $6a9d: $65
	ld   l, l                                        ; $6a9e: $6d
	sbc  a                                           ; $6a9f: $9f
	dec  c                                           ; $6aa0: $0d
	ld   l, e                                        ; $6aa1: $6b
	sbc  d                                           ; $6aa2: $9a
	ld   [hl], l                                     ; $6aa3: $75
	ld   a, l                                        ; $6aa4: $7d
	sbc  [hl]                                        ; $6aa5: $9e
	inc  bc                                          ; $6aa6: $03
	add  e                                           ; $6aa7: $83
	dec  b                                           ; $6aa8: $05
	dec  c                                           ; $6aa9: $0d
	ld   d, d                                        ; $6aaa: $52
	ld   l, l                                        ; $6aab: $6d
	ld   h, l                                        ; $6aac: $65
	adc  h                                           ; $6aad: $8c
	ld   h, a                                        ; $6aae: $67
	sbc  a                                           ; $6aaf: $9f
	dec  c                                           ; $6ab0: $0d
	nop                                              ; $6ab1: $00
	ld   a, [bc]                                     ; $6ab2: $0a
	dec  c                                           ; $6ab3: $0d
	nop                                              ; $6ab4: $00
	nop                                              ; $6ab5: $00
	rrca                                             ; $6ab6: $0f
	nop                                              ; $6ab7: $00
	ld   bc, $9823                                   ; $6ab8: $01 $23 $98
	inc  e                                           ; $6abb: $1c
	ld   [bc], a                                     ; $6abc: $02
	ld   bc, $1d01                                   ; $6abd: $01 $01 $1d
	ld   b, b                                        ; $6ac0: $40
	ld   [de], a                                     ; $6ac1: $12
	inc  bc                                          ; $6ac2: $03
	ld   [de], a                                     ; $6ac3: $12
	ld   bc, $2803                                   ; $6ac4: $01 $03 $28
	nop                                              ; $6ac7: $00
	ld   bc, $0008                                   ; $6ac8: $01 $08 $00
	ld   h, e                                        ; $6acb: $63
	and  c                                           ; $6acc: $a1
	sbc  a                                           ; $6acd: $9f
	dec  c                                           ; $6ace: $0d
	ld   d, b                                        ; $6acf: $50
	sbc  b                                           ; $6ad0: $98
	ld   e, d                                        ; $6ad1: $5a
	halt                                             ; $6ad2: $76
	ld   d, h                                        ; $6ad3: $54
	sbc  a                                           ; $6ad4: $9f
	dec  c                                           ; $6ad5: $0d
	nop                                              ; $6ad6: $00
	ld   a, [bc]                                     ; $6ad7: $0a
	inc  e                                           ; $6ad8: $1c
	ld   [bc], a                                     ; $6ad9: $02
	nop                                              ; $6ada: $00
	nop                                              ; $6adb: $00
	ld   bc, $0804                                   ; $6adc: $01 $04 $08
	ld   [bc], a                                     ; $6adf: $02
	adc  a                                           ; $6ae0: $8f
	ld   [bc], a                                     ; $6ae1: $02
	sub  b                                           ; $6ae2: $90
	ld   [bc], a                                     ; $6ae3: $02
	sub  c                                           ; $6ae4: $91
	inc  b                                           ; $6ae5: $04
	add  hl, bc                                      ; $6ae6: $09
	ld   a, l                                        ; $6ae7: $7d
	inc  b                                           ; $6ae8: $04
	ld   e, a                                        ; $6ae9: $5f
	inc  b                                           ; $6aea: $04
	pop  bc                                          ; $6aeb: $c1
	inc  b                                           ; $6aec: $04
	sub  l                                           ; $6aed: $95
	inc  b                                           ; $6aee: $04
	ld   a, [bc]                                     ; $6aef: $0a
	sbc  a                                           ; $6af0: $9f
	dec  c                                           ; $6af1: $0d
	inc  bc                                          ; $6af2: $03
	xor  c                                           ; $6af3: $a9
	ld   a, c                                        ; $6af4: $79
	sub  b                                           ; $6af5: $90
	ld   l, e                                        ; $6af6: $6b
	ld   a, h                                        ; $6af7: $7c
	inc  bc                                          ; $6af8: $03
	ld   c, d                                        ; $6af9: $4a
	inc  b                                           ; $6afa: $04
	dec  c                                           ; $6afb: $0d
	and  b                                           ; $6afc: $a0
	inc  b                                           ; $6afd: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6afe: $cf
	ld   e, c                                        ; $6aff: $59
	ld   h, l                                        ; $6b00: $65
	ld   [hl], h                                     ; $6b01: $74
	ld   a, l                                        ; $6b02: $7d
	dec  c                                           ; $6b03: $0d
	ld   a, b                                        ; $6b04: $78
	sub  a                                           ; $6b05: $97
	ld   a, b                                        ; $6b06: $78
	ld   d, d                                        ; $6b07: $52
	rst  $38                                         ; $6b08: $ff
	rst  $38                                         ; $6b09: $ff
	dec  c                                           ; $6b0a: $0d
	nop                                              ; $6b0b: $00
	ld   a, [bc]                                     ; $6b0c: $0a
	ld   bc, $5490                                   ; $6b0d: $01 $90 $54
	inc  bc                                          ; $6b10: $03
	ld   l, h                                        ; $6b11: $6c
	ld   h, l                                        ; $6b12: $65
	ld   [hl], l                                     ; $6b13: $75
	sbc  [hl]                                        ; $6b14: $9e
	sbc  l                                           ; $6b15: $9d
	ld   l, l                                        ; $6b16: $6d
	ld   e, l                                        ; $6b17: $5d
	ld   h, l                                        ; $6b18: $65
	sbc  [hl]                                        ; $6b19: $9e
	inc  bc                                          ; $6b1a: $03
	ld   hl, sp+$71                                  ; $6b1b: $f8 $71
	ld   [hl], h                                     ; $6b1d: $74
	dec  c                                           ; $6b1e: $0d
	dec  b                                           ; $6b1f: $05
	jr   nz, jr_060_6b87                             ; $6b20: $20 $65

	ld   [hl], h                                     ; $6b22: $74
	ld   h, l                                        ; $6b23: $65
	adc  h                                           ; $6b24: $8c
	ld   d, h                                        ; $6b25: $54
	halt                                             ; $6b26: $76
	ld   h, c                                        ; $6b27: $61
	ld   [hl], l                                     ; $6b28: $75
	ld   h, l                                        ; $6b29: $65
	ld   l, l                                        ; $6b2a: $6d
	sbc  l                                           ; $6b2b: $9d
	sbc  a                                           ; $6b2c: $9f
	dec  c                                           ; $6b2d: $0d
	ld   [bc], a                                     ; $6b2e: $02
	sub  l                                           ; $6b2f: $95
	inc  bc                                          ; $6b30: $03
	jp   c, $8c65                                    ; $6b31: $da $65 $8c

	ld   h, l                                        ; $6b34: $65
	ld   l, l                                        ; $6b35: $6d
	ld   [$6300], sp                                 ; $6b36: $08 $00 $63
	and  c                                           ; $6b39: $a1
	sbc  a                                           ; $6b3a: $9f
	dec  c                                           ; $6b3b: $0d
	nop                                              ; $6b3c: $00
	ld   a, [bc]                                     ; $6b3d: $0a
	inc  e                                           ; $6b3e: $1c
	ld   [bc], a                                     ; $6b3f: $02
	ld   bc, $0101                                   ; $6b40: $01 $01 $01
	ld   [hl], l                                     ; $6b43: $75
	ld   a, l                                        ; $6b44: $7d
	sbc  [hl]                                        ; $6b45: $9e
	ld   [bc], a                                     ; $6b46: $02
	or   l                                           ; $6b47: $b5
	sbc  b                                           ; $6b48: $98
	adc  h                                           ; $6b49: $8c
	ld   h, l                                        ; $6b4a: $65
	sub  l                                           ; $6b4b: $95
	ld   d, h                                        ; $6b4c: $54
	sbc  a                                           ; $6b4d: $9f
	dec  c                                           ; $6b4e: $0d
	nop                                              ; $6b4f: $00
	ld   a, [bc]                                     ; $6b50: $0a
	dec  b                                           ; $6b51: $05
	ld   b, b                                        ; $6b52: $40
	ld   c, a                                        ; $6b53: $4f
	ld   bc, $0000                                   ; $6b54: $01 $00 $00
	ld   d, $1e                                      ; $6b57: $16 $1e
	rrca                                             ; $6b59: $0f
	ld   [bc], a                                     ; $6b5a: $02
	ld   bc, $a901                                   ; $6b5b: $01 $01 $a9
	cp   d                                           ; $6b5e: $ba
	or   h                                           ; $6b5f: $b4
	ei                                               ; $6b60: $fb
	ret                                              ; $6b61: $c9


	sub  [hl]                                        ; $6b62: $96
	sbc  e                                           ; $6b63: $9b
	ld   h, l                                        ; $6b64: $65
	ld   e, l                                        ; $6b65: $5d
	dec  c                                           ; $6b66: $0d
	nop                                              ; $6b67: $00
	dec  b                                           ; $6b68: $05
	add  b                                           ; $6b69: $80
	ret                                              ; $6b6a: $c9


	ld   bc, $0001                                   ; $6b6b: $01 $01 $00
	ld   bc, $0258                                   ; $6b6e: $01 $58 $02
	add  b                                           ; $6b71: $80
	ld   d, d                                        ; $6b72: $52
	ld   h, l                                        ; $6b73: $65
	adc  h                                           ; $6b74: $8c
	ld   h, a                                        ; $6b75: $67
	sbc  l                                           ; $6b76: $9d
	sbc  a                                           ; $6b77: $9f
	dec  c                                           ; $6b78: $0d
	nop                                              ; $6b79: $00
	ld   a, [bc]                                     ; $6b7a: $0a
	add  hl, bc                                      ; $6b7b: $09
	ld   e, $29                                      ; $6b7c: $1e $29
	nop                                              ; $6b7e: $00
	nop                                              ; $6b7f: $00
	nop                                              ; $6b80: $00
	inc  bc                                          ; $6b81: $03
	ld   d, $01                                      ; $6b82: $16 $01
	xor  d                                           ; $6b84: $aa
	inc  h                                           ; $6b85: $24
	inc  b                                           ; $6b86: $04

jr_060_6b87:
	add  b                                           ; $6b87: $80
	adc  c                                           ; $6b88: $89
	ld   bc, $20ff                                   ; $6b89: $01 $ff $20
	inc  e                                           ; $6b8c: $1c
	nop                                              ; $6b8d: $00
	ld   c, $01                                      ; $6b8e: $0e $01
	rrca                                             ; $6b90: $0f
	nop                                              ; $6b91: $00
	ld   bc, $0102                                   ; $6b92: $01 $02 $01
	sub  [hl]                                        ; $6b95: $96
	db   $fc                                         ; $6b96: $fc
	ld   h, l                                        ; $6b97: $65
	sbc  [hl]                                        ; $6b98: $9e
	ld   h, e                                        ; $6b99: $63
	sbc  l                                           ; $6b9a: $9d
	sub  d                                           ; $6b9b: $92
	ld   e, c                                        ; $6b9c: $59
	ld   a, b                                        ; $6b9d: $78
	inc  bc                                          ; $6b9e: $03
	ld   d, $6e                                      ; $6b9f: $16 $6e
	ld   a, [$020d]                                  ; $6ba1: $fa $0d $02
	and  l                                           ; $6ba4: $a5
	inc  b                                           ; $6ba5: $04
	xor  d                                           ; $6ba6: $aa
	sub  b                                           ; $6ba7: $90
	ld   e, d                                        ; $6ba8: $5a
	and  c                                           ; $6ba9: $a1
	ld   a, [hl]                                     ; $6baa: $7e
	sbc  c                                           ; $6bab: $99
	ld   l, h                                        ; $6bac: $6c
	ld   a, [$0dfa]                                  ; $6bad: $fa $fa $0d
	nop                                              ; $6bb0: $00
	ld   a, [bc]                                     ; $6bb1: $0a
	inc  d                                           ; $6bb2: $14
	ld   b, $01                                      ; $6bb3: $06 $01
	rrca                                             ; $6bb5: $0f
	ld   b, $01                                      ; $6bb6: $06 $01
	ld   bc, $0008                                   ; $6bb8: $01 $08 $00
	sbc  a                                           ; $6bbb: $9f
	dec  c                                           ; $6bbc: $0d
	ld   [bc], a                                     ; $6bbd: $02
	ld   e, d                                        ; $6bbe: $5a
	ld   e, e                                        ; $6bbf: $5b
	ld   [hl], h                                     ; $6bc0: $74
	sbc  c                                           ; $6bc1: $99
	ld   e, c                                        ; $6bc2: $59
	ld   a, [$000d]                                  ; $6bc3: $fa $0d $00
	ld   a, [bc]                                     ; $6bc6: $0a
	rrca                                             ; $6bc7: $0f
	nop                                              ; $6bc8: $00
	ld   bc, $7d01                                   ; $6bc9: $01 $01 $7d
	ld   d, d                                        ; $6bcc: $52
	ld   a, [$000d]                                  ; $6bcd: $fa $0d $00
	ld   a, [bc]                                     ; $6bd0: $0a
	inc  d                                           ; $6bd1: $14
	ld   a, [bc]                                     ; $6bd2: $0a
	ld   bc, $060d                                   ; $6bd3: $01 $0d $06
	ld   bc, $ac01                                   ; $6bd6: $01 $01 $ac
	push af                                          ; $6bd9: $f5
	bit  4, e                                        ; $6bda: $cb $63
	and  c                                           ; $6bdc: $a1
	sbc  a                                           ; $6bdd: $9f
	dec  c                                           ; $6bde: $0d
	ld   e, b                                        ; $6bdf: $58
	ld   a, l                                        ; $6be0: $7d
	sub  [hl]                                        ; $6be1: $96
	ld   d, h                                        ; $6be2: $54
	ld   h, d                                        ; $6be3: $62
	ld   h, h                                        ; $6be4: $64
	ld   d, d                                        ; $6be5: $52
	adc  h                                           ; $6be6: $8c
	ld   h, a                                        ; $6be7: $67
	sbc  a                                           ; $6be8: $9f
	dec  c                                           ; $6be9: $0d
	inc  b                                           ; $6bea: $04
	ld   c, c                                        ; $6beb: $49
	ld   e, c                                        ; $6bec: $59
	ld   h, d                                        ; $6bed: $62
	inc  b                                           ; $6bee: $04
	di                                               ; $6bef: $f3
	ld   [hl], l                                     ; $6bf0: $75
	ld   h, a                                        ; $6bf1: $67
	ld   e, c                                        ; $6bf2: $59
	ld   sp, hl                                      ; $6bf3: $f9
	dec  c                                           ; $6bf4: $0d
	nop                                              ; $6bf5: $00
	ld   a, [bc]                                     ; $6bf6: $0a
	inc  e                                           ; $6bf7: $1c
	ld   b, $04                                      ; $6bf8: $06 $04
	inc  b                                           ; $6bfa: $04
	ld   bc, $7c61                                   ; $6bfb: $01 $61 $7c
	inc  bc                                          ; $6bfe: $03
	ld   c, a                                        ; $6bff: $4f
	inc  bc                                          ; $6c00: $03
	xor  h                                           ; $6c01: $ac
	ld   [hl], c                                     ; $6c02: $71
	ld   l, l                                        ; $6c03: $6d
	inc  b                                           ; $6c04: $04
	db   $fd                                         ; $6c05: $fd
	ld   [bc], a                                     ; $6c06: $02
	ei                                               ; $6c07: $fb
	ld   [bc], a                                     ; $6c08: $02
	adc  h                                           ; $6c09: $8c
	and  b                                           ; $6c0a: $a0
	ld   h, e                                        ; $6c0b: $63
	ei                                               ; $6c0c: $fb
	dec  c                                           ; $6c0d: $0d
	sub  b                                           ; $6c0e: $90
	ld   d, h                                        ; $6c0f: $54
	inc  bc                                          ; $6c10: $03
	ld   l, h                                        ; $6c11: $6c
	ld   h, l                                        ; $6c12: $65
	dec  b                                           ; $6c13: $05
	add  hl, de                                      ; $6c14: $19
	inc  bc                                          ; $6c15: $03
	and  h                                           ; $6c16: $a4
	ld   h, l                                        ; $6c17: $65
	ld   l, l                                        ; $6c18: $6d
	ld   d, d                                        ; $6c19: $52
	and  c                                           ; $6c1a: $a1
	ld   l, [hl]                                     ; $6c1b: $6e
	ld   e, a                                        ; $6c1c: $5f
	ld   [hl], a                                     ; $6c1d: $77
	dec  c                                           ; $6c1e: $0d
	ld   [bc], a                                     ; $6c1f: $02
	and  l                                           ; $6c20: $a5
	inc  b                                           ; $6c21: $04
	xor  d                                           ; $6c22: $aa
	ld   [bc], a                                     ; $6c23: $02
	jr   nz, jr_060_6c2a                             ; $6c24: $20 $04

	xor  d                                           ; $6c26: $aa
	ld   [hl], d                                     ; $6c27: $72
	ld   e, e                                        ; $6c28: $5b
	ld   d, b                                        ; $6c29: $50

jr_060_6c2a:
	ld   [hl], c                                     ; $6c2a: $71
	ld   [hl], h                                     ; $6c2b: $74
	ld   e, l                                        ; $6c2c: $5d
	sbc  d                                           ; $6c2d: $9a
	ld   a, b                                        ; $6c2e: $78
	ld   d, d                                        ; $6c2f: $52
	ld   sp, hl                                      ; $6c30: $f9
	dec  c                                           ; $6c31: $0d
	nop                                              ; $6c32: $00
	ld   a, [bc]                                     ; $6c33: $0a
	inc  e                                           ; $6c34: $1c
	ld   b, $01                                      ; $6c35: $06 $01
	ld   bc, $0401                                   ; $6c37: $01 $01 $04
	cp   $79                                         ; $6c3a: $fe $79
	sub  [hl]                                        ; $6c3c: $96
	ld   [hl], c                                     ; $6c3d: $71
	ld   [hl], h                                     ; $6c3e: $74
	inc  bc                                          ; $6c3f: $03
	add  l                                           ; $6c40: $85
	inc  b                                           ; $6c41: $04
	xor  e                                           ; $6c42: $ab
	inc  bc                                          ; $6c43: $03
	add  d                                           ; $6c44: $82
	ld   a, c                                        ; $6c45: $79
	ld   a, l                                        ; $6c46: $7d
	ld   d, b                                        ; $6c47: $50
	ld   l, l                                        ; $6c48: $6d
	ld   d, d                                        ; $6c49: $52
	dec  c                                           ; $6c4a: $0d
	ld   e, c                                        ; $6c4b: $59
	sub  a                                           ; $6c4c: $97
	dec  b                                           ; $6c4d: $05
	jr   nz, jr_060_6cb5                             ; $6c4e: $20 $65

	ld   [hl], h                                     ; $6c50: $74
	ld   e, b                                        ; $6c51: $58
	ld   e, l                                        ; $6c52: $5d
	ld   e, c                                        ; $6c53: $59
	sub  a                                           ; $6c54: $97
	ld   h, e                                        ; $6c55: $63
	sbc  [hl]                                        ; $6c56: $9e
	dec  c                                           ; $6c57: $0d
	inc  bc                                          ; $6c58: $03
	ld   l, l                                        ; $6c59: $6d
	dec  b                                           ; $6c5a: $05
	add  hl, de                                      ; $6c5b: $19
	ld   a, l                                        ; $6c5c: $7d
	inc  bc                                          ; $6c5d: $03
	and  a                                           ; $6c5e: $a7
	and  c                                           ; $6c5f: $a1
	ld   [hl], l                                     ; $6c60: $75
	sub  b                                           ; $6c61: $90
	inc  b                                           ; $6c62: $04
	ld   c, $03                                      ; $6c63: $0e $03
	sbc  l                                           ; $6c65: $9d
	inc  b                                           ; $6c66: $04
	and  [hl]                                        ; $6c67: $a6
	ld   l, [hl]                                     ; $6c68: $6e
	sbc  a                                           ; $6c69: $9f
	dec  c                                           ; $6c6a: $0d
	nop                                              ; $6c6b: $00
	ld   a, [bc]                                     ; $6c6c: $0a
	add  hl, de                                      ; $6c6d: $19
	dec  b                                           ; $6c6e: $05
	ld   [bc], a                                     ; $6c6f: $02
	ld   a, l                                        ; $6c70: $7d
	ld   d, d                                        ; $6c71: $52
	sbc  [hl]                                        ; $6c72: $9e
	ld   d, d                                        ; $6c73: $52
	ld   d, d                                        ; $6c74: $52
	ld   [hl], l                                     ; $6c75: $75
	ld   h, a                                        ; $6c76: $67
	sub  [hl]                                        ; $6c77: $96
	sbc  a                                           ; $6c78: $9f
	nop                                              ; $6c79: $00
	nop                                              ; $6c7a: $00
	ld   h, c                                        ; $6c7b: $61
	halt                                             ; $6c7c: $76
	sbc  l                                           ; $6c7d: $9d
	sbc  c                                           ; $6c7e: $99
	nop                                              ; $6c7f: $00
	ld   bc, $8707                                   ; $6c80: $01 $07 $87
	ld   bc, $0302                                   ; $6c83: $01 $02 $03
	ld   bc, $2000                                   ; $6c86: $01 $00 $20
	nop                                              ; $6c89: $00
	rlca                                             ; $6c8a: $07
	ld   [$0201], sp                                 ; $6c8b: $08 $01 $02
	inc  bc                                          ; $6c8e: $03
	ld   bc, $2001                                   ; $6c8f: $01 $01 $20
	nop                                              ; $6c92: $00
	ld   b, $5b                                      ; $6c93: $06 $5b
	ld   bc, $000f                                   ; $6c95: $01 $0f $00
	ld   bc, $6701                                   ; $6c98: $01 $01 $67
	adc  l                                           ; $6c9b: $8d
	adc  h                                           ; $6c9c: $8c
	ld   l, c                                        ; $6c9d: $69
	and  c                                           ; $6c9e: $a1
	sbc  a                                           ; $6c9f: $9f
	dec  c                                           ; $6ca0: $0d
	ld   [bc], a                                     ; $6ca1: $02
	and  l                                           ; $6ca2: $a5
	inc  b                                           ; $6ca3: $04
	xor  d                                           ; $6ca4: $aa
	ld   a, l                                        ; $6ca5: $7d
	ld   l, a                                        ; $6ca6: $6f
	sub  l                                           ; $6ca7: $95
	ld   [hl], c                                     ; $6ca8: $71
	halt                                             ; $6ca9: $76
	dec  c                                           ; $6caa: $0d
	inc  b                                           ; $6cab: $04
	di                                               ; $6cac: $f3
	ld   e, d                                        ; $6cad: $5a
	ld   d, b                                        ; $6cae: $50
	sbc  c                                           ; $6caf: $99
	and  c                                           ; $6cb0: $a1
	ld   [hl], l                                     ; $6cb1: $75
	ld   h, a                                        ; $6cb2: $67
	sbc  a                                           ; $6cb3: $9f
	dec  c                                           ; $6cb4: $0d

jr_060_6cb5:
	nop                                              ; $6cb5: $00
	ld   a, [bc]                                     ; $6cb6: $0a
	inc  e                                           ; $6cb7: $1c
	ld   b, $05                                      ; $6cb8: $06 $05
	dec  b                                           ; $6cba: $05
	dec  e                                           ; $6cbb: $1d
	ld   b, b                                        ; $6cbc: $40
	ld   d, $03                                      ; $6cbd: $16 $03
	ld   d, $01                                      ; $6cbf: $16 $01
	ld   bc, $0029                                   ; $6cc1: $01 $29 $00
	ld   bc, $546b                                   ; $6cc4: $01 $6b $54
	ld   a, b                                        ; $6cc7: $78
	ld   a, h                                        ; $6cc8: $7c
	ld   e, c                                        ; $6cc9: $59
	ld   c, a                                        ; $6cca: $4f
	db   $fc                                         ; $6ccb: $fc
	sbc  a                                           ; $6ccc: $9f
	dec  c                                           ; $6ccd: $0d
	and  c                                           ; $6cce: $a1
	db   $fc                                         ; $6ccf: $fc
	rst  $38                                         ; $6cd0: $ff
	rst  $38                                         ; $6cd1: $ff
	ld   h, [hl]                                     ; $6cd2: $66
	sub  c                                           ; $6cd3: $91
	sbc  [hl]                                        ; $6cd4: $9e
	inc  bc                                          ; $6cd5: $03
	dec  c                                           ; $6cd6: $0d
	inc  b                                           ; $6cd7: $04
	ld   a, b                                        ; $6cd8: $78
	ld   a, e                                        ; $6cd9: $7b
	ei                                               ; $6cda: $fb
	ld   a, b                                        ; $6cdb: $78
	sbc  a                                           ; $6cdc: $9f
	dec  c                                           ; $6cdd: $0d
	ld   h, [hl]                                     ; $6cde: $66
	sub  c                                           ; $6cdf: $91
	ld   d, b                                        ; $6ce0: $50
	ld   a, b                                        ; $6ce1: $78
	sbc  a                                           ; $6ce2: $9f
	dec  c                                           ; $6ce3: $0d
	nop                                              ; $6ce4: $00
	ld   a, [bc]                                     ; $6ce5: $0a
	add  hl, hl                                      ; $6ce6: $29
	ld   bc, $1c00                                   ; $6ce7: $01 $00 $1c
	ld   b, $02                                      ; $6cea: $06 $02
	ld   [bc], a                                     ; $6cec: $02
	dec  e                                           ; $6ced: $1d
	ld   b, b                                        ; $6cee: $40
	ld   d, $03                                      ; $6cef: $16 $03
	ld   d, $01                                      ; $6cf1: $16 $01
	inc  bc                                          ; $6cf3: $03
	add  hl, hl                                      ; $6cf4: $29
	nop                                              ; $6cf5: $00
	ld   bc, $a178                                   ; $6cf6: $01 $78 $a1
	ld   l, [hl]                                     ; $6cf9: $6e
	sub  [hl]                                        ; $6cfa: $96
	sbc  a                                           ; $6cfb: $9f
	inc  b                                           ; $6cfc: $04
	sub  a                                           ; $6cfd: $97
	ld   [bc], a                                     ; $6cfe: $02
	jp   Jump_060_6578                               ; $6cff: $c3 $78 $65


	ld   e, c                                        ; $6d02: $59
	sub  [hl]                                        ; $6d03: $96
	sbc  a                                           ; $6d04: $9f
	dec  c                                           ; $6d05: $0d
	ld   h, [hl]                                     ; $6d06: $66
	sub  c                                           ; $6d07: $91
	sbc  [hl]                                        ; $6d08: $9e
	ld   d, d                                        ; $6d09: $52
	ld   d, d                                        ; $6d0a: $52
	sub  [hl]                                        ; $6d0b: $96
	sub  b                                           ; $6d0c: $90
	ld   d, h                                        ; $6d0d: $54
	sbc  a                                           ; $6d0e: $9f
	dec  c                                           ; $6d0f: $0d
	nop                                              ; $6d10: $00
	ld   a, [bc]                                     ; $6d11: $0a
	add  hl, hl                                      ; $6d12: $29
	ld   bc, $0f00                                   ; $6d13: $01 $00 $0f
	nop                                              ; $6d16: $00
	ld   bc, $7d01                                   ; $6d17: $01 $01 $7d
	ld   d, d                                        ; $6d1a: $52
	sbc  [hl]                                        ; $6d1b: $9e
	ld   d, d                                        ; $6d1c: $52
	ld   d, d                                        ; $6d1d: $52
	ld   [hl], l                                     ; $6d1e: $75
	ld   h, a                                        ; $6d1f: $67
	sub  [hl]                                        ; $6d20: $96
	sbc  a                                           ; $6d21: $9f
	dec  c                                           ; $6d22: $0d
	sub  d                                           ; $6d23: $92
	sbc  b                                           ; $6d24: $98
	adc  h                                           ; $6d25: $8c
	ld   h, l                                        ; $6d26: $65
	sub  l                                           ; $6d27: $95
	ld   d, h                                        ; $6d28: $54
	ld   a, [$000d]                                  ; $6d29: $fa $0d $00
	ld   a, [bc]                                     ; $6d2c: $0a
	inc  e                                           ; $6d2d: $1c
	ld   b, $01                                      ; $6d2e: $06 $01
	ld   bc, $401d                                   ; $6d30: $01 $1d $40
	ld   d, $03                                      ; $6d33: $16 $03
	ld   d, $01                                      ; $6d35: $16 $01
	ld   [bc], a                                     ; $6d37: $02
	jr   z, jr_060_6d3a                              ; $6d38: $28 $00

jr_060_6d3a:
	ld   bc, $546b                                   ; $6d3a: $01 $6b $54
	ld   e, c                                        ; $6d3d: $59
	ld   a, [$b60d]                                  ; $6d3e: $fa $0d $b6
	push af                                          ; $6d41: $f5
	xor  [hl]                                        ; $6d42: $ae
	rst  $20                                         ; $6d43: $e7
	ei                                               ; $6d44: $fb
	inc  bc                                          ; $6d45: $03
	ld   e, e                                        ; $6d46: $5b
	ld   e, c                                        ; $6d47: $59
	sbc  c                                           ; $6d48: $99
	ld   l, d                                        ; $6d49: $6a
	ld   a, [$000d]                                  ; $6d4a: $fa $0d $00
	ld   a, [bc]                                     ; $6d4d: $0a
	dec  c                                           ; $6d4e: $0d
	nop                                              ; $6d4f: $00
	nop                                              ; $6d50: $00
	rrca                                             ; $6d51: $0f

Jump_060_6d52:
	nop                                              ; $6d52: $00
	ld   bc, $020c                                   ; $6d53: $01 $0c $02
	ld   c, $6e                                      ; $6d56: $0e $6e
	inc  e                                           ; $6d58: $1c
	ld   b, $01                                      ; $6d59: $06 $01
	ld   bc, $0201                                   ; $6d5b: $01 $01 $02
	and  l                                           ; $6d5e: $a5
	ld   [bc], a                                     ; $6d5f: $02
	sub  e                                           ; $6d60: $93
	ld   a, l                                        ; $6d61: $7d
	sbc  [hl]                                        ; $6d62: $9e
	sub  b                                           ; $6d63: $90
	ld   d, h                                        ; $6d64: $54
	inc  bc                                          ; $6d65: $03
	ld   l, h                                        ; $6d66: $6c
	ld   h, l                                        ; $6d67: $65
	dec  c                                           ; $6d68: $0d
	inc  bc                                          ; $6d69: $03
	adc  e                                           ; $6d6a: $8b
	inc  bc                                          ; $6d6b: $03
	xor  b                                           ; $6d6c: $a8
	inc  b                                           ; $6d6d: $04
	jr   nz, jr_060_6de9                             ; $6d6e: $20 $79

	dec  b                                           ; $6d70: $05

Call_060_6d71:
	add  hl, de                                      ; $6d71: $19
	inc  bc                                          ; $6d72: $03
	and  h                                           ; $6d73: $a4
	ld   h, l                                        ; $6d74: $65
	ld   l, l                                        ; $6d75: $6d
	ld   d, d                                        ; $6d76: $52
	and  c                                           ; $6d77: $a1
	ld   l, [hl]                                     ; $6d78: $6e
	sbc  a                                           ; $6d79: $9f
	dec  c                                           ; $6d7a: $0d
	nop                                              ; $6d7b: $00
	ld   a, [bc]                                     ; $6d7c: $0a
	inc  e                                           ; $6d7d: $1c
	ld   b, $00                                      ; $6d7e: $06 $00
	nop                                              ; $6d80: $00
	ld   bc, $9075                                   ; $6d81: $01 $75 $90
	sbc  [hl]                                        ; $6d84: $9e
	adc  h                                           ; $6d85: $8c
	ld   l, b                                        ; $6d86: $68
	ld   a, l                                        ; $6d87: $7d
	sbc  [hl]                                        ; $6d88: $9e
	inc  b                                           ; $6d89: $04
	ld   a, h                                        ; $6d8a: $7c
	inc  bc                                          ; $6d8b: $03
	and  h                                           ; $6d8c: $a4
	ld   l, [hl]                                     ; $6d8d: $6e
	ld   a, b                                        ; $6d8e: $78
	sbc  a                                           ; $6d8f: $9f
	dec  c                                           ; $6d90: $0d
	ld   h, e                                        ; $6d91: $63
	ld   [hl], h                                     ; $6d92: $74
	sbc  [hl]                                        ; $6d93: $9e
	ld   h, c                                        ; $6d94: $61
	ld   a, h                                        ; $6d95: $7c
	ld   [bc], a                                     ; $6d96: $02
	xor  c                                           ; $6d97: $a9
	ld   a, h                                        ; $6d98: $7c
	inc  b                                           ; $6d99: $04
	db   $fd                                         ; $6d9a: $fd
	ld   [bc], a                                     ; $6d9b: $02
	ei                                               ; $6d9c: $fb
	ld   [bc], a                                     ; $6d9d: $02
	adc  h                                           ; $6d9e: $8c
	sbc  a                                           ; $6d9f: $9f
	dec  c                                           ; $6da0: $0d
	ld   e, b                                        ; $6da1: $58
	adc  d                                           ; $6da2: $8a
	ld   d, [hl]                                     ; $6da3: $56
	ld   [hl], h                                     ; $6da4: $74
	sbc  c                                           ; $6da5: $99
	ld   e, c                                        ; $6da6: $59
	ld   a, b                                        ; $6da7: $78
	ld   sp, hl                                      ; $6da8: $f9
	dec  c                                           ; $6da9: $0d
	nop                                              ; $6daa: $00
	ld   a, [bc]                                     ; $6dab: $0a
	ld   bc, $2b04                                   ; $6dac: $01 $04 $2b
	ld   [hl], c                                     ; $6daf: $71
	ld   [hl], h                                     ; $6db0: $74
	ld   a, h                                        ; $6db1: $7c
	inc  bc                                          ; $6db2: $03
	pop  hl                                          ; $6db3: $e1
	sbc  b                                           ; $6db4: $98
	sbc  [hl]                                        ; $6db5: $9e
	inc  b                                           ; $6db6: $04
	db   $fd                                         ; $6db7: $fd
	ld   [bc], a                                     ; $6db8: $02
	ei                                               ; $6db9: $fb
	ld   [bc], a                                     ; $6dba: $02
	adc  h                                           ; $6dbb: $8c
	ld   l, [hl]                                     ; $6dbc: $6e
	ld   e, c                                        ; $6dbd: $59
	sub  a                                           ; $6dbe: $97
	dec  c                                           ; $6dbf: $0d
	inc  bc                                          ; $6dc0: $03
	add  e                                           ; $6dc1: $83
	inc  b                                           ; $6dc2: $04
	sbc  b                                           ; $6dc3: $98
	ld   h, l                                        ; $6dc4: $65
	ld   l, l                                        ; $6dc5: $6d
	sub  a                                           ; $6dc6: $97
	sub  b                                           ; $6dc7: $90
	ld   d, h                                        ; $6dc8: $54
	ld   [bc], a                                     ; $6dc9: $02
	jr   nz, jr_060_6dce                             ; $6dca: $20 $02

	sub  e                                           ; $6dcc: $93
	dec  b                                           ; $6dcd: $05

jr_060_6dce:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6dce: $cf
	adc  a                                           ; $6dcf: $8f
	dec  c                                           ; $6dd0: $0d
	ld   e, c                                        ; $6dd1: $59
	sub  a                                           ; $6dd2: $97
	ld   l, [hl]                                     ; $6dd3: $6e
	sbc  a                                           ; $6dd4: $9f
	ld   h, [hl]                                     ; $6dd5: $66
	sub  c                                           ; $6dd6: $91
	sbc  [hl]                                        ; $6dd7: $9e
	ld   [bc], a                                     ; $6dd8: $02
	ld   a, a                                        ; $6dd9: $7f
	ld   e, l                                        ; $6dda: $5d
	ld   l, d                                        ; $6ddb: $6a
	sbc  a                                           ; $6ddc: $9f
	dec  c                                           ; $6ddd: $0d
	nop                                              ; $6dde: $00
	ld   a, [bc]                                     ; $6ddf: $0a
	inc  e                                           ; $6de0: $1c
	ld   b, $02                                      ; $6de1: $06 $02
	ld   [bc], a                                     ; $6de3: $02
	ld   bc, $0b04                                   ; $6de4: $01 $04 $0b
	inc  bc                                          ; $6de7: $03
	ret  nc                                          ; $6de8: $d0

jr_060_6de9:
	sub  $a8                                         ; $6de9: $d6 $a8
	and  l                                           ; $6deb: $a5
	push af                                          ; $6dec: $f5
	ret                                              ; $6ded: $c9


	ld   a, h                                        ; $6dee: $7c
	dec  c                                           ; $6def: $0d
	ld   [bc], a                                     ; $6df0: $02
	inc  [hl]                                        ; $6df1: $34
	inc  bc                                          ; $6df2: $03
	ret  nc                                          ; $6df3: $d0

	ld   h, b                                        ; $6df4: $60
	sbc  b                                           ; $6df5: $98
	ld   l, [hl]                                     ; $6df6: $6e
	ld   a, [$000d]                                  ; $6df7: $fa $0d $00
	ld   a, [bc]                                     ; $6dfa: $0a
	inc  d                                           ; $6dfb: $14
	dec  d                                           ; $6dfc: $15
	ld   bc, $0419                                   ; $6dfd: $01 $19 $04
	inc  bc                                          ; $6e00: $03
	inc  bc                                          ; $6e01: $03
	ld   a, l                                        ; $6e02: $7d
	ld   [hl], l                                     ; $6e03: $75
	ld   h, e                                        ; $6e04: $63
	ld   a, [hl]                                     ; $6e05: $7e
	ld   e, l                                        ; $6e06: $5d
	nop                                              ; $6e07: $00
	nop                                              ; $6e08: $00
	ld   e, b                                        ; $6e09: $58
	ld   a, b                                        ; $6e0a: $78
	ld   e, c                                        ; $6e0b: $59
	and  b                                           ; $6e0c: $a0

Jump_060_6e0d:
	inc  bc                                          ; $6e0d: $03
	sub  e                                           ; $6e0e: $93
	sbc  c                                           ; $6e0f: $99
	nop                                              ; $6e10: $00
	ld   bc, $6b03                                   ; $6e11: $01 $03 $6b
	ld   [hl], l                                     ; $6e14: $75
	ld   b, $17                                      ; $6e15: $06 $17
	ld   d, h                                        ; $6e17: $54
	nop                                              ; $6e18: $00
	ld   [bc], a                                     ; $6e19: $02
	rlca                                             ; $6e1a: $07
	xor  d                                           ; $6e1b: $aa
	ld   [bc], a                                     ; $6e1c: $02
	ld   [bc], a                                     ; $6e1d: $02
	inc  bc                                          ; $6e1e: $03
	ld   bc, $2000                                   ; $6e1f: $01 $00 $20
	nop                                              ; $6e22: $00
	rlca                                             ; $6e23: $07
	jp   c, $0202                                    ; $6e24: $da $02 $02

	inc  bc                                          ; $6e27: $03
	ld   bc, $2001                                   ; $6e28: $01 $01 $20
	nop                                              ; $6e2b: $00
	rlca                                             ; $6e2c: $07
	dec  a                                           ; $6e2d: $3d
	inc  bc                                          ; $6e2e: $03
	ld   [bc], a                                     ; $6e2f: $02
	inc  bc                                          ; $6e30: $03
	ld   bc, $2002                                   ; $6e31: $01 $02 $20
	nop                                              ; $6e34: $00
	ld   b, $9e                                      ; $6e35: $06 $9e
	inc  bc                                          ; $6e37: $03
	rrca                                             ; $6e38: $0f
	nop                                              ; $6e39: $00
	ld   bc, $0201                                   ; $6e3a: $01 $01 $02
	inc  [hl]                                        ; $6e3d: $34
	inc  bc                                          ; $6e3e: $03
	ret  nc                                          ; $6e3f: $d0

	ld   h, b                                        ; $6e40: $60
	sbc  b                                           ; $6e41: $98
	ld   a, l                                        ; $6e42: $7d
	inc  bc                                          ; $6e43: $03
	ld   a, l                                        ; $6e44: $7d
	ld   [hl], l                                     ; $6e45: $75
	ld   h, e                                        ; $6e46: $63
	ld   a, [hl]                                     ; $6e47: $7e
	ld   e, l                                        ; $6e48: $5d
	ld   a, [$000d]                                  ; $6e49: $fa $0d $00
	ld   a, [bc]                                     ; $6e4c: $0a
	inc  d                                           ; $6e4d: $14
	ld   a, [de]                                     ; $6e4e: $1a
	ld   bc, $061c                                   ; $6e4f: $01 $1c $06
	ld   bc, $0101                                   ; $6e52: $01 $01 $01
	sub  [hl]                                        ; $6e55: $96
	ld   h, l                                        ; $6e56: $65
	ld   a, [$540d]                                  ; $6e57: $fa $0d $54
	adc  h                                           ; $6e5a: $8c
	ld   d, d                                        ; $6e5b: $52
	ld   h, [hl]                                     ; $6e5c: $66
	sub  c                                           ; $6e5d: $91
	ld   a, b                                        ; $6e5e: $78
	ld   d, d                                        ; $6e5f: $52
	ld   e, c                                        ; $6e60: $59
	ld   a, [$000d]                                  ; $6e61: $fa $0d $00
	ld   a, [bc]                                     ; $6e64: $0a
	ld   b, $e9                                      ; $6e65: $06 $e9
	inc  bc                                          ; $6e67: $03
	rrca                                             ; $6e68: $0f
	nop                                              ; $6e69: $00
	ld   bc, $5801                                   ; $6e6a: $01 $01 $58
	ld   a, b                                        ; $6e6d: $78
	ld   e, c                                        ; $6e6e: $59
	and  b                                           ; $6e6f: $a0
	inc  bc                                          ; $6e70: $03
	sub  e                                           ; $6e71: $93
	sub  a                                           ; $6e72: $97
	ld   a, b                                        ; $6e73: $78
	ld   e, e                                        ; $6e74: $5b
	sub  c                                           ; $6e75: $91
	ld   a, [$000d]                                  ; $6e76: $fa $0d $00
	ld   a, [bc]                                     ; $6e79: $0a
	inc  d                                           ; $6e7a: $14
	rlca                                             ; $6e7b: $07
	ld   bc, $a501                                   ; $6e7c: $01 $01 $a5
	rst  ToBoot                                         ; $6e7f: $c7
	call nz, $0dfa                                   ; $6e80: $c4 $fa $0d
	nop                                              ; $6e83: $00
	ld   a, [bc]                                     ; $6e84: $0a
	rlca                                             ; $6e85: $07
	sub  b                                           ; $6e86: $90
	dec  bc                                          ; $6e87: $0b
	inc  bc                                          ; $6e88: $03
	jr   nz, jr_060_6e8c                             ; $6e89: $20 $01

	ld   a, [bc]                                     ; $6e8b: $0a

jr_060_6e8c:
	inc  hl                                          ; $6e8c: $23
	nop                                              ; $6e8d: $00
	ld   sp, $2040                                   ; $6e8e: $31 $40 $20
	inc  bc                                          ; $6e91: $03
	jr   nz, jr_060_6e95                             ; $6e92: $20 $01

	ld   a, [bc]                                     ; $6e94: $0a

jr_060_6e95:
	add  hl, hl                                      ; $6e95: $29
	nop                                              ; $6e96: $00
	inc  e                                           ; $6e97: $1c
	ld   b, $05                                      ; $6e98: $06 $05
	dec  b                                           ; $6e9a: $05
	ld   bc, $5258                                   ; $6e9b: $01 $58 $52
	ld   e, b                                        ; $6e9e: $58
	ld   d, d                                        ; $6e9f: $52
	sbc  a                                           ; $6ea0: $9f
	adc  h                                           ; $6ea1: $8c
	ld   l, [hl]                                     ; $6ea2: $6e
	ld   [de], a                                     ; $6ea3: $12
	inc  b                                           ; $6ea4: $04
	ld   e, [hl]                                     ; $6ea5: $5e
	inc  b                                           ; $6ea6: $04
	call nc, Call_060_6a6e                           ; $6ea7: $d4 $6e $6a
	sbc  a                                           ; $6eaa: $9f
	dec  c                                           ; $6eab: $0d
	ld   h, l                                        ; $6eac: $65
	ld   [hl], c                                     ; $6ead: $71
	ld   e, c                                        ; $6eae: $59
	sbc  b                                           ; $6eaf: $98

Call_060_6eb0:
	ld   h, l                                        ; $6eb0: $65
	ld   [hl], h                                     ; $6eb1: $74
	ld   e, l                                        ; $6eb2: $5d
	sbc  d                                           ; $6eb3: $9a
	sub  [hl]                                        ; $6eb4: $96
	sbc  a                                           ; $6eb5: $9f
	dec  c                                           ; $6eb6: $0d
	sub  b                                           ; $6eb7: $90
	ld   d, h                                        ; $6eb8: $54
	ld   [bc], a                                     ; $6eb9: $02
	jr   nz, jr_060_6ebe                             ; $6eba: $20 $02

	sub  e                                           ; $6ebc: $93
	dec  b                                           ; $6ebd: $05

jr_060_6ebe:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ebe: $cf
	adc  a                                           ; $6ebf: $8f
	ld   [hl], c                                     ; $6ec0: $71
	ld   e, c                                        ; $6ec1: $59
	sub  a                                           ; $6ec2: $97
	ld   l, [hl]                                     ; $6ec3: $6e
	sbc  a                                           ; $6ec4: $9f
	dec  c                                           ; $6ec5: $0d
	nop                                              ; $6ec6: $00
	ld   a, [bc]                                     ; $6ec7: $0a
	ld   b, $52                                      ; $6ec8: $06 $52
	ld   [bc], a                                     ; $6eca: $02
	rrca                                             ; $6ecb: $0f
	nop                                              ; $6ecc: $00
	ld   bc, $0301                                   ; $6ecd: $01 $01 $03
	ld   l, e                                        ; $6ed0: $6b
	ld   [hl], l                                     ; $6ed1: $75
	ld   b, $17                                      ; $6ed2: $06 $17
	ld   d, h                                        ; $6ed4: $54
	ld   sp, hl                                      ; $6ed5: $f9
	dec  c                                           ; $6ed6: $0d
	nop                                              ; $6ed7: $00
	ld   a, [bc]                                     ; $6ed8: $0a
	inc  d                                           ; $6ed9: $14
	rlca                                             ; $6eda: $07
	ld   bc, $a501                                   ; $6edb: $01 $01 $a5
	rst  ToBoot                                         ; $6ede: $c7
	call nz, $0dfa                                   ; $6edf: $c4 $fa $0d
	nop                                              ; $6ee2: $00
	ld   a, [bc]                                     ; $6ee3: $0a
	rlca                                             ; $6ee4: $07
	sub  b                                           ; $6ee5: $90
	dec  bc                                          ; $6ee6: $0b
	inc  bc                                          ; $6ee7: $03
	jr   nz, jr_060_6eeb                             ; $6ee8: $20 $01

	ld   a, [bc]                                     ; $6eea: $0a

jr_060_6eeb:
	inc  hl                                          ; $6eeb: $23
	nop                                              ; $6eec: $00
	ld   sp, $2040                                   ; $6eed: $31 $40 $20
	inc  bc                                          ; $6ef0: $03
	jr   nz, jr_060_6ef4                             ; $6ef1: $20 $01

	ld   a, [bc]                                     ; $6ef3: $0a

jr_060_6ef4:
	add  hl, hl                                      ; $6ef4: $29
	nop                                              ; $6ef5: $00
	inc  e                                           ; $6ef6: $1c
	ld   b, $05                                      ; $6ef7: $06 $05
	dec  b                                           ; $6ef9: $05
	ld   bc, $3402                                   ; $6efa: $01 $02 $34
	inc  bc                                          ; $6efd: $03
	ret  nc                                          ; $6efe: $d0

	ld   h, b                                        ; $6eff: $60
	sbc  b                                           ; $6f00: $98
	ld   a, l                                        ; $6f01: $7d
	inc  bc                                          ; $6f02: $03
	ld   l, e                                        ; $6f03: $6b
	ld   [hl], l                                     ; $6f04: $75
	ld   b, $17                                      ; $6f05: $06 $17
	ld   d, [hl]                                     ; $6f07: $56
	ld   a, b                                        ; $6f08: $78
	ld   d, d                                        ; $6f09: $52
	ld   l, d                                        ; $6f0a: $6a
	sbc  a                                           ; $6f0b: $9f
	dec  c                                           ; $6f0c: $0d
	ld   h, l                                        ; $6f0d: $65
	ld   [hl], c                                     ; $6f0e: $71
	ld   e, c                                        ; $6f0f: $59
	sbc  b                                           ; $6f10: $98
	ld   h, l                                        ; $6f11: $65
	ld   [hl], h                                     ; $6f12: $74
	ld   e, l                                        ; $6f13: $5d
	sbc  d                                           ; $6f14: $9a
	sub  [hl]                                        ; $6f15: $96
	sbc  a                                           ; $6f16: $9f
	dec  c                                           ; $6f17: $0d
	sub  b                                           ; $6f18: $90
	ld   d, h                                        ; $6f19: $54
	ld   [bc], a                                     ; $6f1a: $02
	jr   nz, jr_060_6f1f                             ; $6f1b: $20 $02

	sub  e                                           ; $6f1d: $93
	dec  b                                           ; $6f1e: $05

jr_060_6f1f:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f1f: $cf
	adc  a                                           ; $6f20: $8f
	ld   [hl], c                                     ; $6f21: $71
	ld   e, c                                        ; $6f22: $59
	sub  a                                           ; $6f23: $97
	ld   l, [hl]                                     ; $6f24: $6e
	sbc  a                                           ; $6f25: $9f
	dec  c                                           ; $6f26: $0d
	nop                                              ; $6f27: $00
	ld   a, [bc]                                     ; $6f28: $0a
	ld   b, $52                                      ; $6f29: $06 $52
	ld   [bc], a                                     ; $6f2b: $02
	rrca                                             ; $6f2c: $0f
	nop                                              ; $6f2d: $00
	ld   bc, $0714                                   ; $6f2e: $01 $14 $07
	ld   bc, $a501                                   ; $6f31: $01 $01 $a5
	call nz, $fbc7                                   ; $6f34: $c4 $c7 $fb
	dec  c                                           ; $6f37: $0d
	nop                                              ; $6f38: $00
	ld   a, [bc]                                     ; $6f39: $0a
	rlca                                             ; $6f3a: $07
	sub  b                                           ; $6f3b: $90
	dec  bc                                          ; $6f3c: $0b
	inc  bc                                          ; $6f3d: $03
	jr   nz, jr_060_6f41                             ; $6f3e: $20 $01

	ld   a, [bc]                                     ; $6f40: $0a

jr_060_6f41:
	inc  hl                                          ; $6f41: $23
	nop                                              ; $6f42: $00
	ld   sp, $2040                                   ; $6f43: $31 $40 $20
	inc  bc                                          ; $6f46: $03
	jr   nz, jr_060_6f4a                             ; $6f47: $20 $01

	ld   a, [bc]                                     ; $6f49: $0a

jr_060_6f4a:
	add  hl, hl                                      ; $6f4a: $29
	nop                                              ; $6f4b: $00
	inc  e                                           ; $6f4c: $1c
	ld   b, $02                                      ; $6f4d: $06 $02
	ld   [bc], a                                     ; $6f4f: $02
	ld   bc, $acd1                                   ; $6f50: $01 $d1 $ac
	ld   a, [GetRandomNumInPreSpecifiedRange]                                  ; $6f53: $fa $10 $0d
	db   $dd                                         ; $6f56: $dd
	or   d                                           ; $6f57: $b2
	ld   [hl], c                                     ; $6f58: $71
	halt                                             ; $6f59: $76
	ld   h, a                                        ; $6f5a: $67
	and  c                                           ; $6f5b: $a1
	ld   h, [hl]                                     ; $6f5c: $66
	sub  c                                           ; $6f5d: $91
	ld   a, e                                        ; $6f5e: $7b
	ld   d, l                                        ; $6f5f: $55
	sub  [hl]                                        ; $6f60: $96
	sbc  a                                           ; $6f61: $9f
	dec  c                                           ; $6f62: $0d
	sub  b                                           ; $6f63: $90
	ld   d, h                                        ; $6f64: $54
	ld   [bc], a                                     ; $6f65: $02
	jr   nz, jr_060_6f6a                             ; $6f66: $20 $02

	sub  e                                           ; $6f68: $93
	dec  b                                           ; $6f69: $05

jr_060_6f6a:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f6a: $cf
	adc  a                                           ; $6f6b: $8f
	ld   [hl], c                                     ; $6f6c: $71
	ld   e, c                                        ; $6f6d: $59
	sub  a                                           ; $6f6e: $97
	ld   l, [hl]                                     ; $6f6f: $6e
	sbc  a                                           ; $6f70: $9f
	dec  c                                           ; $6f71: $0d
	nop                                              ; $6f72: $00
	ld   a, [bc]                                     ; $6f73: $0a
	ld   b, $52                                      ; $6f74: $06 $52
	ld   [bc], a                                     ; $6f76: $02
	inc  e                                           ; $6f77: $1c
	ld   b, $02                                      ; $6f78: $06 $02
	ld   [bc], a                                     ; $6f7a: $02
	ld   bc, $6803                                   ; $6f7b: $01 $03 $68
	ld   a, c                                        ; $6f7e: $79
	inc  bc                                          ; $6f7f: $03
	ld   c, d                                        ; $6f80: $4a
	ld   [bc], a                                     ; $6f81: $02
	ld   [hl], c                                     ; $6f82: $71
	ld   [hl], e                                     ; $6f83: $73
	ld   e, e                                        ; $6f84: $5b
	ld   [hl], l                                     ; $6f85: $75
	dec  c                                           ; $6f86: $0d
	inc  b                                           ; $6f87: $04
	dec  bc                                          ; $6f88: $0b
	inc  bc                                          ; $6f89: $03
	ret  nc                                          ; $6f8a: $d0

	and  b                                           ; $6f8b: $a0
	ld   [bc], a                                     ; $6f8c: $02
	ld   c, b                                        ; $6f8d: $48
	ld   [bc], a                                     ; $6f8e: $02
	sub  c                                           ; $6f8f: $91
	ld   l, [hl]                                     ; $6f90: $6e
	ld   a, [$000d]                                  ; $6f91: $fa $0d $00
	ld   a, [bc]                                     ; $6f94: $0a
	inc  d                                           ; $6f95: $14
	dec  d                                           ; $6f96: $15
	ld   bc, $0419                                   ; $6f97: $01 $19 $04
	inc  bc                                          ; $6f9a: $03
	ld   [bc], a                                     ; $6f9b: $02
	ld   h, [hl]                                     ; $6f9c: $66
	and  b                                           ; $6f9d: $a0
	inc  bc                                          ; $6f9e: $03
	sub  e                                           ; $6f9f: $93
	sbc  c                                           ; $6fa0: $99
	nop                                              ; $6fa1: $00
	nop                                              ; $6fa2: $00
	ld   [bc], a                                     ; $6fa3: $02
	ld   [hl], d                                     ; $6fa4: $72
	and  b                                           ; $6fa5: $a0
	inc  bc                                          ; $6fa6: $03
	sub  e                                           ; $6fa7: $93
	sbc  c                                           ; $6fa8: $99
	nop                                              ; $6fa9: $00
	ld   bc, $9165                                   ; $6faa: $01 $65 $91
	ld   e, d                                        ; $6fad: $5a
	and  c                                           ; $6fae: $a1
	ld   [hl], l                                     ; $6faf: $75
	ld   e, c                                        ; $6fb0: $59
	sbc  l                                           ; $6fb1: $9d
	ld   h, a                                        ; $6fb2: $67
	nop                                              ; $6fb3: $00
	ld   [bc], a                                     ; $6fb4: $02
	rlca                                             ; $6fb5: $07
	ld   b, l                                        ; $6fb6: $45
	inc  b                                           ; $6fb7: $04
	ld   [bc], a                                     ; $6fb8: $02
	inc  bc                                          ; $6fb9: $03
	ld   bc, $2000                                   ; $6fba: $01 $00 $20
	nop                                              ; $6fbd: $00
	rlca                                             ; $6fbe: $07
	ld   [hl], b                                     ; $6fbf: $70
	inc  b                                           ; $6fc0: $04
	ld   [bc], a                                     ; $6fc1: $02
	inc  bc                                          ; $6fc2: $03
	ld   bc, $2001                                   ; $6fc3: $01 $01 $20
	nop                                              ; $6fc6: $00
	rlca                                             ; $6fc7: $07
	db   $db                                         ; $6fc8: $db
	inc  b                                           ; $6fc9: $04
	ld   [bc], a                                     ; $6fca: $02
	inc  bc                                          ; $6fcb: $03
	ld   bc, $2002                                   ; $6fcc: $01 $02 $20
	nop                                              ; $6fcf: $00
	ld   b, $52                                      ; $6fd0: $06 $52
	dec  b                                           ; $6fd2: $05
	rrca                                             ; $6fd3: $0f
	nop                                              ; $6fd4: $00
	ld   bc, $0401                                   ; $6fd5: $01 $01 $04
	dec  bc                                          ; $6fd8: $0b
	inc  bc                                          ; $6fd9: $03
	ret  nc                                          ; $6fda: $d0

	ld   [bc], a                                     ; $6fdb: $02
	ld   c, b                                        ; $6fdc: $48
	ld   [bc], a                                     ; $6fdd: $02
	sub  c                                           ; $6fde: $91
	ld   a, b                                        ; $6fdf: $78
	sub  a                                           ; $6fe0: $97
	ld   a, [hl]                                     ; $6fe1: $7e
	sbc  [hl]                                        ; $6fe2: $9e
	ld   [bc], a                                     ; $6fe3: $02
	ld   h, [hl]                                     ; $6fe4: $66
	and  b                                           ; $6fe5: $a0
	inc  bc                                          ; $6fe6: $03
	sub  e                                           ; $6fe7: $93
	sbc  c                                           ; $6fe8: $99
	ld   a, [$000d]                                  ; $6fe9: $fa $0d $00
	ld   a, [bc]                                     ; $6fec: $0a
	inc  d                                           ; $6fed: $14
	ld   a, [de]                                     ; $6fee: $1a
	ld   bc, $061c                                   ; $6fef: $01 $1c $06
	ld   bc, $0101                                   ; $6ff2: $01 $01 $01
	sub  [hl]                                        ; $6ff5: $96
	ld   h, l                                        ; $6ff6: $65
	ld   a, [$000d]                                  ; $6ff7: $fa $0d $00
	ld   a, [bc]                                     ; $6ffa: $0a
	ld   b, $9e                                      ; $6ffb: $06 $9e
	dec  b                                           ; $6ffd: $05
	rrca                                             ; $6ffe: $0f
	nop                                              ; $6fff: $00
	ld   bc, $5901                                   ; $7000: $01 $01 $59
	sbc  [hl]                                        ; $7003: $9e
	ld   [bc], a                                     ; $7004: $02
	ld   [hl], d                                     ; $7005: $72
	and  b                                           ; $7006: $a0
	inc  bc                                          ; $7007: $03
	sub  e                                           ; $7008: $93
	sub  a                                           ; $7009: $97
	ld   a, b                                        ; $700a: $78
	ld   e, e                                        ; $700b: $5b
	sub  c                                           ; $700c: $91
	ld   a, [$000d]                                  ; $700d: $fa $0d $00
	ld   a, [bc]                                     ; $7010: $0a
	inc  d                                           ; $7011: $14
	rlca                                             ; $7012: $07
	ld   bc, $9d01                                   ; $7013: $01 $01 $9d
	ld   a, [$a510]                                  ; $7016: $fa $10 $a5
	rst  ToBoot                                         ; $7019: $c7
	rst  ToBoot                                         ; $701a: $c7
	dec  c                                           ; $701b: $0d
	nop                                              ; $701c: $00
	ld   a, [bc]                                     ; $701d: $0a
	rlca                                             ; $701e: $07
	sub  b                                           ; $701f: $90
	dec  bc                                          ; $7020: $0b
	inc  bc                                          ; $7021: $03
	jr   nz, jr_060_7025                             ; $7022: $20 $01

	ld   a, [bc]                                     ; $7024: $0a

jr_060_7025:
	inc  hl                                          ; $7025: $23
	nop                                              ; $7026: $00
	ld   sp, $2040                                   ; $7027: $31 $40 $20
	inc  bc                                          ; $702a: $03
	jr   nz, jr_060_702e                             ; $702b: $20 $01

	ld   a, [bc]                                     ; $702d: $0a

jr_060_702e:
	add  hl, hl                                      ; $702e: $29
	nop                                              ; $702f: $00
	inc  e                                           ; $7030: $1c
	ld   b, $05                                      ; $7031: $06 $05
	dec  b                                           ; $7033: $05
	ld   bc, $5258                                   ; $7034: $01 $58 $52
	ld   e, b                                        ; $7037: $58
	ld   d, d                                        ; $7038: $52
	sbc  a                                           ; $7039: $9f
	inc  b                                           ; $703a: $04
	dec  bc                                          ; $703b: $0b
	inc  bc                                          ; $703c: $03
	ret  nc                                          ; $703d: $d0

	and  b                                           ; $703e: $a0
	dec  b                                           ; $703f: $05
	call Call_060_6d71                               ; $7040: $cd $71 $6d
	and  c                                           ; $7043: $a1
	dec  c                                           ; $7044: $0d
	ld   l, [hl]                                     ; $7045: $6e
	ld   e, c                                        ; $7046: $59
	sub  a                                           ; $7047: $97
	ld   [bc], a                                     ; $7048: $02
	ld   h, [hl]                                     ; $7049: $66
	ld   [bc], a                                     ; $704a: $02
	xor  h                                           ; $704b: $ac
	and  b                                           ; $704c: $a0
	inc  bc                                          ; $704d: $03
	sub  e                                           ; $704e: $93
	sbc  c                                           ; $704f: $99
	and  c                                           ; $7050: $a1
	ld   l, [hl]                                     ; $7051: $6e
	sub  [hl]                                        ; $7052: $96
	sbc  a                                           ; $7053: $9f
	dec  c                                           ; $7054: $0d
	sub  b                                           ; $7055: $90
	ld   d, h                                        ; $7056: $54
	ld   [bc], a                                     ; $7057: $02
	jr   nz, jr_060_705c                             ; $7058: $20 $02

	sub  e                                           ; $705a: $93
	dec  b                                           ; $705b: $05

jr_060_705c:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $705c: $cf
	adc  a                                           ; $705d: $8f
	ld   [hl], c                                     ; $705e: $71
	ld   e, c                                        ; $705f: $59
	sub  a                                           ; $7060: $97
	ld   l, [hl]                                     ; $7061: $6e
	sbc  a                                           ; $7062: $9f
	dec  c                                           ; $7063: $0d
	nop                                              ; $7064: $00
	ld   a, [bc]                                     ; $7065: $0a
	ld   b, $52                                      ; $7066: $06 $52
	ld   [bc], a                                     ; $7068: $02
	rrca                                             ; $7069: $0f
	nop                                              ; $706a: $00
	ld   bc, $0401                                   ; $706b: $01 $01 $04
	dec  bc                                          ; $706e: $0b
	inc  bc                                          ; $706f: $03
	ret  nc                                          ; $7070: $d0

	ld   [bc], a                                     ; $7071: $02
	ld   c, b                                        ; $7072: $48
	ld   [bc], a                                     ; $7073: $02
	sub  c                                           ; $7074: $91
	ld   a, l                                        ; $7075: $7d
	ld   h, l                                        ; $7076: $65
	sub  c                                           ; $7077: $91
	ld   e, d                                        ; $7078: $5a
	and  c                                           ; $7079: $a1
	ld   [hl], l                                     ; $707a: $75
	dec  c                                           ; $707b: $0d
	sub  [hl]                                        ; $707c: $96
	ld   e, a                                        ; $707d: $5f
	sbc  c                                           ; $707e: $99
	ld   sp, hl                                      ; $707f: $f9
	dec  c                                           ; $7080: $0d
	nop                                              ; $7081: $00
	ld   a, [bc]                                     ; $7082: $0a
	inc  d                                           ; $7083: $14
	rlca                                             ; $7084: $07
	ld   bc, $b101                                   ; $7085: $01 $01 $b1
	ret  nc                                          ; $7088: $d0

	call nz, $0dfa                                   ; $7089: $c4 $fa $0d
	ld   a, l                                        ; $708c: $7d
	sbc  [hl]                                        ; $708d: $9e
	ret  nc                                          ; $708e: $d0

	bit  3, d                                        ; $708f: $cb $5a
	rst  $38                                         ; $7091: $ff
	rst  $38                                         ; $7092: $ff
	dec  c                                           ; $7093: $0d
	nop                                              ; $7094: $00
	ld   a, [bc]                                     ; $7095: $0a
	rlca                                             ; $7096: $07
	sub  b                                           ; $7097: $90
	dec  bc                                          ; $7098: $0b
	inc  bc                                          ; $7099: $03
	jr   nz, jr_060_709d                             ; $709a: $20 $01

	ld   a, [bc]                                     ; $709c: $0a

jr_060_709d:
	inc  hl                                          ; $709d: $23
	nop                                              ; $709e: $00
	ld   sp, $2040                                   ; $709f: $31 $40 $20
	inc  bc                                          ; $70a2: $03
	jr   nz, jr_060_70a6                             ; $70a3: $20 $01

	ld   a, [bc]                                     ; $70a5: $0a

jr_060_70a6:
	add  hl, hl                                      ; $70a6: $29
	nop                                              ; $70a7: $00
	inc  e                                           ; $70a8: $1c
	ld   b, $05                                      ; $70a9: $06 $05
	dec  b                                           ; $70ab: $05
	ld   bc, $0b04                                   ; $70ac: $01 $04 $0b
	inc  bc                                          ; $70af: $03
	ret  nc                                          ; $70b0: $d0

	and  b                                           ; $70b1: $a0
	dec  b                                           ; $70b2: $05
	call Call_060_6d71                               ; $70b3: $cd $71 $6d
	and  c                                           ; $70b6: $a1
	ld   l, [hl]                                     ; $70b7: $6e
	ld   l, d                                        ; $70b8: $6a
	sbc  a                                           ; $70b9: $9f
	dec  c                                           ; $70ba: $0d
	ld   h, l                                        ; $70bb: $65
	sub  c                                           ; $70bc: $91
	ld   e, d                                        ; $70bd: $5a
	and  c                                           ; $70be: $a1
	ld   l, [hl]                                     ; $70bf: $6e
	sub  a                                           ; $70c0: $97
	ld   [bc], a                                     ; $70c1: $02
	ld   [hl], d                                     ; $70c2: $72
	ld   a, c                                        ; $70c3: $79
	inc  b                                           ; $70c4: $04
	jr   jr_060_7134                                 ; $70c5: $18 $6d

	sbc  c                                           ; $70c7: $99
	sub  [hl]                                        ; $70c8: $96
	ld   a, b                                        ; $70c9: $78
	sbc  a                                           ; $70ca: $9f
	dec  c                                           ; $70cb: $0d
	sub  b                                           ; $70cc: $90
	ld   d, h                                        ; $70cd: $54
	ld   [bc], a                                     ; $70ce: $02
	jr   nz, jr_060_70d3                             ; $70cf: $20 $02

	sub  e                                           ; $70d1: $93
	dec  b                                           ; $70d2: $05

jr_060_70d3:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $70d3: $cf
	adc  a                                           ; $70d4: $8f
	ld   [hl], c                                     ; $70d5: $71
	ld   e, c                                        ; $70d6: $59
	sub  a                                           ; $70d7: $97
	ld   l, [hl]                                     ; $70d8: $6e
	sbc  a                                           ; $70d9: $9f
	dec  c                                           ; $70da: $0d
	nop                                              ; $70db: $00
	ld   a, [bc]                                     ; $70dc: $0a
	ld   b, $52                                      ; $70dd: $06 $52
	ld   [bc], a                                     ; $70df: $02
	rrca                                             ; $70e0: $0f
	nop                                              ; $70e1: $00
	ld   bc, $0714                                   ; $70e2: $01 $14 $07
	ld   bc, $b301                                   ; $70e5: $01 $01 $b3
	call c, $ffc4                                    ; $70e8: $dc $c4 $ff
	rst  $38                                         ; $70eb: $ff
	dec  c                                           ; $70ec: $0d
	nop                                              ; $70ed: $00
	ld   a, [bc]                                     ; $70ee: $0a
	rlca                                             ; $70ef: $07
	sub  b                                           ; $70f0: $90
	dec  bc                                          ; $70f1: $0b
	inc  bc                                          ; $70f2: $03
	jr   nz, jr_060_70f6                             ; $70f3: $20 $01

	ld   a, [bc]                                     ; $70f5: $0a

jr_060_70f6:
	inc  hl                                          ; $70f6: $23
	nop                                              ; $70f7: $00
	ld   sp, $2040                                   ; $70f8: $31 $40 $20
	inc  bc                                          ; $70fb: $03
	jr   nz, jr_060_70ff                             ; $70fc: $20 $01

	ld   a, [bc]                                     ; $70fe: $0a

jr_060_70ff:
	add  hl, hl                                      ; $70ff: $29
	nop                                              ; $7100: $00
	inc  e                                           ; $7101: $1c
	ld   b, $02                                      ; $7102: $06 $02
	ld   [bc], a                                     ; $7104: $02
	ld   bc, $acd1                                   ; $7105: $01 $d1 $ac
	ld   a, [GetRandomNumInPreSpecifiedRange]                                  ; $7108: $fa $10 $0d
	db   $dd                                         ; $710b: $dd
	or   d                                           ; $710c: $b2
	ld   [hl], c                                     ; $710d: $71
	halt                                             ; $710e: $76
	ld   h, a                                        ; $710f: $67
	and  c                                           ; $7110: $a1
	ld   h, [hl]                                     ; $7111: $66
	sub  c                                           ; $7112: $91
	ld   a, e                                        ; $7113: $7b
	ld   d, l                                        ; $7114: $55
	sub  [hl]                                        ; $7115: $96
	sbc  a                                           ; $7116: $9f
	dec  c                                           ; $7117: $0d
	sub  b                                           ; $7118: $90
	ld   d, h                                        ; $7119: $54
	ld   [bc], a                                     ; $711a: $02
	jr   nz, jr_060_711f                             ; $711b: $20 $02

	sub  e                                           ; $711d: $93
	dec  b                                           ; $711e: $05

jr_060_711f:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $711f: $cf
	adc  a                                           ; $7120: $8f
	ld   [hl], c                                     ; $7121: $71
	ld   e, c                                        ; $7122: $59
	sub  a                                           ; $7123: $97
	ld   l, [hl]                                     ; $7124: $6e
	sbc  a                                           ; $7125: $9f
	dec  c                                           ; $7126: $0d
	nop                                              ; $7127: $00
	ld   a, [bc]                                     ; $7128: $0a
	ld   b, $52                                      ; $7129: $06 $52
	ld   [bc], a                                     ; $712b: $02
	inc  e                                           ; $712c: $1c
	ld   b, $02                                      ; $712d: $06 $02
	ld   [bc], a                                     ; $712f: $02
	ld   bc, $6803                                   ; $7130: $01 $03 $68
	ld   a, l                                        ; $7133: $7d

jr_060_7134:
	sbc  [hl]                                        ; $7134: $9e
	dec  b                                           ; $7135: $05
	ld   h, l                                        ; $7136: $65
	ld   [bc], a                                     ; $7137: $02
	ld   [hl], c                                     ; $7138: $71
	ld   [hl], l                                     ; $7139: $75
	inc  bc                                          ; $713a: $03
	ld   h, l                                        ; $713b: $65
	inc  bc                                          ; $713c: $03
	ret  nc                                          ; $713d: $d0

	add  [hl]                                        ; $713e: $86
	ld   [bc], a                                     ; $713f: $02
	ld   c, b                                        ; $7140: $48
	ld   [bc], a                                     ; $7141: $02
	sub  c                                           ; $7142: $91
	ld   l, [hl]                                     ; $7143: $6e
	ld   a, [$000d]                                  ; $7144: $fa $0d $00
	ld   a, [bc]                                     ; $7147: $0a
	inc  d                                           ; $7148: $14
	dec  d                                           ; $7149: $15
	ld   bc, $0419                                   ; $714a: $01 $19 $04
	inc  bc                                          ; $714d: $03
	ld   h, l                                        ; $714e: $65
	sub  c                                           ; $714f: $91
	ld   e, d                                        ; $7150: $5a
	and  c                                           ; $7151: $a1
	ld   [hl], l                                     ; $7152: $75
	ld   e, c                                        ; $7153: $59
	sbc  l                                           ; $7154: $9d
	ld   h, a                                        ; $7155: $67
	nop                                              ; $7156: $00
	nop                                              ; $7157: $00
	inc  bc                                          ; $7158: $03
	ld   a, l                                        ; $7159: $7d
	ld   [hl], l                                     ; $715a: $75
	ld   b, $17                                      ; $715b: $06 $17
	ld   d, h                                        ; $715d: $54
	nop                                              ; $715e: $00
	ld   bc, $e5b9                                   ; $715f: $01 $b9 $e5
	push af                                          ; $7162: $f5
	ret  c                                           ; $7163: $d8

	ld   h, a                                        ; $7164: $67
	sbc  c                                           ; $7165: $99
	nop                                              ; $7166: $00
	ld   [bc], a                                     ; $7167: $02
	rlca                                             ; $7168: $07
	ld   hl, sp+$05                                  ; $7169: $f8 $05
	ld   [bc], a                                     ; $716b: $02
	inc  bc                                          ; $716c: $03
	ld   bc, $2000                                   ; $716d: $01 $00 $20
	nop                                              ; $7170: $00
	rlca                                             ; $7171: $07
	daa                                              ; $7172: $27
	ld   b, $02                                      ; $7173: $06 $02
	inc  bc                                          ; $7175: $03
	ld   bc, $2001                                   ; $7176: $01 $01 $20
	nop                                              ; $7179: $00
	rlca                                             ; $717a: $07
	sbc  e                                           ; $717b: $9b
	ld   b, $02                                      ; $717c: $06 $02
	inc  bc                                          ; $717e: $03
	ld   bc, $2002                                   ; $717f: $01 $02 $20
	nop                                              ; $7182: $00
	ld   b, $fc                                      ; $7183: $06 $fc
	ld   b, $0f                                      ; $7185: $06 $0f
	nop                                              ; $7187: $00
	ld   bc, $0301                                   ; $7188: $01 $01 $03
	ld   h, l                                        ; $718b: $65
	inc  bc                                          ; $718c: $03
	ret  nc                                          ; $718d: $d0

	ld   [bc], a                                     ; $718e: $02
	ld   c, b                                        ; $718f: $48
	ld   [bc], a                                     ; $7190: $02
	sub  c                                           ; $7191: $91
	ld   a, l                                        ; $7192: $7d
	sbc  [hl]                                        ; $7193: $9e
	ld   h, l                                        ; $7194: $65
	sub  c                                           ; $7195: $91
	ld   e, d                                        ; $7196: $5a
	and  c                                           ; $7197: $a1
	ld   [hl], l                                     ; $7198: $75
	dec  c                                           ; $7199: $0d
	ld   e, c                                        ; $719a: $59
	sbc  l                                           ; $719b: $9d
	ld   h, a                                        ; $719c: $67
	ld   a, [$000d]                                  ; $719d: $fa $0d $00
	ld   a, [bc]                                     ; $71a0: $0a
	inc  e                                           ; $71a1: $1c
	ld   b, $01                                      ; $71a2: $06 $01
	ld   bc, $9601                                   ; $71a4: $01 $01 $96
	ld   h, l                                        ; $71a7: $65
	ld   a, [$520d]                                  ; $71a8: $fa $0d $52
	ld   d, d                                        ; $71ab: $52
	ld   l, h                                        ; $71ac: $6c
	ld   a, [$0dfa]                                  ; $71ad: $fa $fa $0d
	nop                                              ; $71b0: $00
	ld   a, [bc]                                     ; $71b1: $0a
	ld   b, $4b                                      ; $71b2: $06 $4b
	rlca                                             ; $71b4: $07
	rrca                                             ; $71b5: $0f
	nop                                              ; $71b6: $00
	ld   bc, $0301                                   ; $71b7: $01 $01 $03
	ld   h, l                                        ; $71ba: $65
	inc  bc                                          ; $71bb: $03
	ret  nc                                          ; $71bc: $d0

	ld   [bc], a                                     ; $71bd: $02
	ld   c, b                                        ; $71be: $48
	ld   [bc], a                                     ; $71bf: $02
	sub  c                                           ; $71c0: $91
	ld   sp, hl                                      ; $71c1: $f9
	db   $10                                         ; $71c2: $10
	inc  bc                                          ; $71c3: $03
	ld   a, l                                        ; $71c4: $7d
	ld   b, $17                                      ; $71c5: $06 $17
	ld   d, d                                        ; $71c7: $52
	ld   h, l                                        ; $71c8: $65
	ld   a, b                                        ; $71c9: $78
	ld   e, e                                        ; $71ca: $5b
	sub  c                                           ; $71cb: $91
	ld   a, [$000d]                                  ; $71cc: $fa $0d $00
	ld   a, [bc]                                     ; $71cf: $0a
	inc  d                                           ; $71d0: $14
	rlca                                             ; $71d1: $07
	ld   bc, $b101                                   ; $71d2: $01 $01 $b1
	reti                                             ; $71d5: $d9


	call nz, $10fa                                   ; $71d6: $c4 $fa $10
	and  l                                           ; $71d9: $a5
	call nz, $fbc0                                   ; $71da: $c4 $c0 $fb
	ei                                               ; $71dd: $fb
	ei                                               ; $71de: $fb
	dec  c                                           ; $71df: $0d
	nop                                              ; $71e0: $00
	ld   a, [bc]                                     ; $71e1: $0a
	rlca                                             ; $71e2: $07
	sub  b                                           ; $71e3: $90
	dec  bc                                          ; $71e4: $0b
	inc  bc                                          ; $71e5: $03
	jr   nz, jr_060_71e9                             ; $71e6: $20 $01

	ld   a, [bc]                                     ; $71e8: $0a

jr_060_71e9:
	inc  hl                                          ; $71e9: $23
	nop                                              ; $71ea: $00
	ld   sp, $2040                                   ; $71eb: $31 $40 $20
	inc  bc                                          ; $71ee: $03
	jr   nz, jr_060_71f2                             ; $71ef: $20 $01

	ld   a, [bc]                                     ; $71f1: $0a

jr_060_71f2:
	add  hl, hl                                      ; $71f2: $29
	nop                                              ; $71f3: $00
	inc  e                                           ; $71f4: $1c
	ld   b, $05                                      ; $71f5: $06 $05
	dec  b                                           ; $71f7: $05
	ld   bc, $5258                                   ; $71f8: $01 $58 $52
	ld   e, b                                        ; $71fb: $58
	ld   d, d                                        ; $71fc: $52
	sbc  a                                           ; $71fd: $9f
	inc  bc                                          ; $71fe: $03
	ld   h, l                                        ; $71ff: $65
	inc  bc                                          ; $7200: $03
	ret  nc                                          ; $7201: $d0

	and  b                                           ; $7202: $a0
	ld   a, e                                        ; $7203: $7b
	sub  a                                           ; $7204: $97
	ld   [hl], c                                     ; $7205: $71
	ld   l, l                                        ; $7206: $6d
	and  c                                           ; $7207: $a1
	dec  c                                           ; $7208: $0d
	ld   l, [hl]                                     ; $7209: $6e
	ld   e, c                                        ; $720a: $59
	sub  a                                           ; $720b: $97
	ld   [bc], a                                     ; $720c: $02
	ld   [hl], d                                     ; $720d: $72
	and  b                                           ; $720e: $a0
	inc  bc                                          ; $720f: $03
	sub  e                                           ; $7210: $93
	sbc  d                                           ; $7211: $9a
	sub  [hl]                                        ; $7212: $96
	sbc  a                                           ; $7213: $9f
	dec  c                                           ; $7214: $0d
	sub  b                                           ; $7215: $90
	ld   d, h                                        ; $7216: $54
	ld   [bc], a                                     ; $7217: $02
	jr   nz, jr_060_721c                             ; $7218: $20 $02

	sub  e                                           ; $721a: $93
	dec  b                                           ; $721b: $05

jr_060_721c:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $721c: $cf
	adc  a                                           ; $721d: $8f
	ld   [hl], c                                     ; $721e: $71
	ld   e, c                                        ; $721f: $59
	sub  a                                           ; $7220: $97
	ld   l, [hl]                                     ; $7221: $6e
	sbc  a                                           ; $7222: $9f
	dec  c                                           ; $7223: $0d
	nop                                              ; $7224: $00
	ld   a, [bc]                                     ; $7225: $0a
	ld   b, $52                                      ; $7226: $06 $52
	ld   [bc], a                                     ; $7228: $02
	rrca                                             ; $7229: $0f
	nop                                              ; $722a: $00
	ld   bc, $b901                                   ; $722b: $01 $01 $b9
	push hl                                          ; $722e: $e5
	push af                                          ; $722f: $f5
	ret  c                                           ; $7230: $d8

	ld   [hl], l                                     ; $7231: $75
	ld   e, c                                        ; $7232: $59
	sbc  l                                           ; $7233: $9d
	ld   h, a                                        ; $7234: $67
	ld   a, [$0df9]                                  ; $7235: $fa $f9 $0d
	nop                                              ; $7238: $00
	ld   a, [bc]                                     ; $7239: $0a
	inc  d                                           ; $723a: $14
	rlca                                             ; $723b: $07
	ld   bc, $a501                                   ; $723c: $01 $01 $a5
	rst  ToBoot                                         ; $723f: $c7
	call nz, $0dfa                                   ; $7240: $c4 $fa $0d
	nop                                              ; $7243: $00
	ld   a, [bc]                                     ; $7244: $0a
	rlca                                             ; $7245: $07
	sub  b                                           ; $7246: $90
	dec  bc                                          ; $7247: $0b
	inc  bc                                          ; $7248: $03
	jr   nz, jr_060_724c                             ; $7249: $20 $01

	ld   a, [bc]                                     ; $724b: $0a

jr_060_724c:
	inc  hl                                          ; $724c: $23
	nop                                              ; $724d: $00
	ld   sp, $2040                                   ; $724e: $31 $40 $20
	inc  bc                                          ; $7251: $03
	jr   nz, jr_060_7255                             ; $7252: $20 $01

	ld   a, [bc]                                     ; $7254: $0a

jr_060_7255:
	add  hl, hl                                      ; $7255: $29
	nop                                              ; $7256: $00
	inc  e                                           ; $7257: $1c
	ld   b, $05                                      ; $7258: $06 $05
	dec  b                                           ; $725a: $05
	ld   bc, $6503                                   ; $725b: $01 $03 $65
	inc  bc                                          ; $725e: $03
	ret  nc                                          ; $725f: $d0

	and  b                                           ; $7260: $a0
	ld   a, e                                        ; $7261: $7b
	sub  a                                           ; $7262: $97
	ld   [hl], c                                     ; $7263: $71
	ld   l, l                                        ; $7264: $6d
	and  c                                           ; $7265: $a1
	ld   l, [hl]                                     ; $7266: $6e
	ld   l, d                                        ; $7267: $6a
	sbc  a                                           ; $7268: $9f
	dec  c                                           ; $7269: $0d
	cp   c                                           ; $726a: $b9
	push hl                                          ; $726b: $e5
	push af                                          ; $726c: $f5
	ret  c                                           ; $726d: $d8

	ld   h, l                                        ; $726e: $65
	ld   [hl], h                                     ; $726f: $74
	sub  b                                           ; $7270: $90
	pop  bc                                          ; $7271: $c1
	db   $e3                                         ; $7272: $e3
	ld   l, [hl]                                     ; $7273: $6e
	sbc  a                                           ; $7274: $9f
	dec  c                                           ; $7275: $0d
	sub  b                                           ; $7276: $90
	ld   d, h                                        ; $7277: $54
	ld   [bc], a                                     ; $7278: $02
	jr   nz, jr_060_727d                             ; $7279: $20 $02

	sub  e                                           ; $727b: $93
	dec  b                                           ; $727c: $05

jr_060_727d:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $727d: $cf
	adc  a                                           ; $727e: $8f
	ld   [hl], c                                     ; $727f: $71
	ld   e, c                                        ; $7280: $59
	sub  a                                           ; $7281: $97
	ld   l, [hl]                                     ; $7282: $6e
	sbc  a                                           ; $7283: $9f
	dec  c                                           ; $7284: $0d
	nop                                              ; $7285: $00
	ld   a, [bc]                                     ; $7286: $0a
	ld   b, $52                                      ; $7287: $06 $52
	ld   [bc], a                                     ; $7289: $02
	rrca                                             ; $728a: $0f
	nop                                              ; $728b: $00
	ld   bc, $0714                                   ; $728c: $01 $14 $07
	ld   bc, $b101                                   ; $728f: $01 $01 $b1
	pop  af                                          ; $7292: $f1
	db   $fc                                         ; $7293: $fc
	db   $fc                                         ; $7294: $fc
	db   $fc                                         ; $7295: $fc
	push af                                          ; $7296: $f5
	rst  $38                                         ; $7297: $ff
	rst  $38                                         ; $7298: $ff
	dec  c                                           ; $7299: $0d
	nop                                              ; $729a: $00
	ld   a, [bc]                                     ; $729b: $0a
	rlca                                             ; $729c: $07
	sub  b                                           ; $729d: $90
	dec  bc                                          ; $729e: $0b
	inc  bc                                          ; $729f: $03
	jr   nz, jr_060_72a3                             ; $72a0: $20 $01

	ld   a, [bc]                                     ; $72a2: $0a

jr_060_72a3:
	inc  hl                                          ; $72a3: $23
	nop                                              ; $72a4: $00
	ld   sp, $2040                                   ; $72a5: $31 $40 $20
	inc  bc                                          ; $72a8: $03
	jr   nz, jr_060_72ac                             ; $72a9: $20 $01

	ld   a, [bc]                                     ; $72ab: $0a

jr_060_72ac:
	add  hl, hl                                      ; $72ac: $29
	nop                                              ; $72ad: $00
	inc  e                                           ; $72ae: $1c
	ld   b, $02                                      ; $72af: $06 $02
	ld   [bc], a                                     ; $72b1: $02
	ld   bc, $acd1                                   ; $72b2: $01 $d1 $ac
	ld   a, [GetRandomNumInPreSpecifiedRange]                                  ; $72b5: $fa $10 $0d
	db   $dd                                         ; $72b8: $dd
	or   d                                           ; $72b9: $b2
	ld   [hl], c                                     ; $72ba: $71
	halt                                             ; $72bb: $76
	ld   h, a                                        ; $72bc: $67
	and  c                                           ; $72bd: $a1
	ld   h, [hl]                                     ; $72be: $66
	sub  c                                           ; $72bf: $91
	ld   a, e                                        ; $72c0: $7b
	ld   d, l                                        ; $72c1: $55
	sub  [hl]                                        ; $72c2: $96
	sbc  a                                           ; $72c3: $9f
	dec  c                                           ; $72c4: $0d
	sub  b                                           ; $72c5: $90
	ld   d, h                                        ; $72c6: $54
	ld   [bc], a                                     ; $72c7: $02
	jr   nz, jr_060_72cc                             ; $72c8: $20 $02

	sub  e                                           ; $72ca: $93
	dec  b                                           ; $72cb: $05

jr_060_72cc:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $72cc: $cf
	adc  a                                           ; $72cd: $8f
	ld   [hl], c                                     ; $72ce: $71
	ld   e, c                                        ; $72cf: $59
	sub  a                                           ; $72d0: $97
	ld   l, [hl]                                     ; $72d1: $6e
	sbc  a                                           ; $72d2: $9f
	dec  c                                           ; $72d3: $0d
	nop                                              ; $72d4: $00
	ld   a, [bc]                                     ; $72d5: $0a
	ld   b, $52                                      ; $72d6: $06 $52
	ld   [bc], a                                     ; $72d8: $02
	inc  e                                           ; $72d9: $1c
	ld   b, $02                                      ; $72da: $06 $02
	ld   [bc], a                                     ; $72dc: $02
	ld   bc, $6161                                   ; $72dd: $01 $61 $61
	ld   [hl], l                                     ; $72e0: $75
	sbc  [hl]                                        ; $72e1: $9e
	inc  bc                                          ; $72e2: $03
	ld   h, l                                        ; $72e3: $65
	inc  bc                                          ; $72e4: $03
	ret  nc                                          ; $72e5: $d0

	sub  $a8                                         ; $72e6: $d6 $a8
	and  l                                           ; $72e8: $a5
	push af                                          ; $72e9: $f5
	ret                                              ; $72ea: $c9


	ld   a, h                                        ; $72eb: $7c
	dec  c                                           ; $72ec: $0d
	ld   [bc], a                                     ; $72ed: $02
	inc  [hl]                                        ; $72ee: $34
	inc  bc                                          ; $72ef: $03
	ret  nc                                          ; $72f0: $d0

	ld   h, b                                        ; $72f1: $60
	sbc  b                                           ; $72f2: $98
	ld   l, [hl]                                     ; $72f3: $6e
	ld   a, [$000d]                                  ; $72f4: $fa $0d $00
	ld   a, [bc]                                     ; $72f7: $0a
	inc  d                                           ; $72f8: $14
	dec  d                                           ; $72f9: $15
	ld   bc, $0419                                   ; $72fa: $01 $19 $04
	inc  bc                                          ; $72fd: $03
	cp   c                                           ; $72fe: $b9
	push hl                                          ; $72ff: $e5
	push af                                          ; $7300: $f5
	ret  c                                           ; $7301: $d8

	ld   h, a                                        ; $7302: $67
	sbc  c                                           ; $7303: $99
	nop                                              ; $7304: $00
	nop                                              ; $7305: $00
	ld   [bc], a                                     ; $7306: $02
	ld   [hl], d                                     ; $7307: $72
	and  b                                           ; $7308: $a0
	inc  bc                                          ; $7309: $03
	sub  e                                           ; $730a: $93
	sbc  c                                           ; $730b: $99
	nop                                              ; $730c: $00
	ld   bc, $6602                                   ; $730d: $01 $02 $66
	and  b                                           ; $7310: $a0
	inc  bc                                          ; $7311: $03
	sub  e                                           ; $7312: $93
	sbc  c                                           ; $7313: $99
	nop                                              ; $7314: $00
	ld   [bc], a                                     ; $7315: $02
	rlca                                             ; $7316: $07
	and  [hl]                                        ; $7317: $a6
	rlca                                             ; $7318: $07
	ld   [bc], a                                     ; $7319: $02
	inc  bc                                          ; $731a: $03
	ld   bc, $2000                                   ; $731b: $01 $00 $20
	nop                                              ; $731e: $00
	rlca                                             ; $731f: $07
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7320: $cf
	rlca                                             ; $7321: $07
	ld   [bc], a                                     ; $7322: $02
	inc  bc                                          ; $7323: $03
	ld   bc, $2001                                   ; $7324: $01 $01 $20
	nop                                              ; $7327: $00
	rlca                                             ; $7328: $07
	jr   c, jr_060_7333                              ; $7329: $38 $08

	ld   [bc], a                                     ; $732b: $02
	inc  bc                                          ; $732c: $03
	ld   bc, $2002                                   ; $732d: $01 $02 $20
	nop                                              ; $7330: $00
	ld   b, $a2                                      ; $7331: $06 $a2

jr_060_7333:
	ld   [$000f], sp                                 ; $7333: $08 $0f $00
	ld   bc, $0201                                   ; $7336: $01 $01 $02
	inc  [hl]                                        ; $7339: $34
	inc  bc                                          ; $733a: $03
	ret  nc                                          ; $733b: $d0

	ld   h, b                                        ; $733c: $60
	sbc  b                                           ; $733d: $98
	ld   a, l                                        ; $733e: $7d
	sbc  [hl]                                        ; $733f: $9e
	cp   c                                           ; $7340: $b9
	push hl                                          ; $7341: $e5
	push af                                          ; $7342: $f5
	ret  c                                           ; $7343: $d8

	ld   [hl], l                                     ; $7344: $75
	dec  c                                           ; $7345: $0d
	ld   e, c                                        ; $7346: $59
	sbc  l                                           ; $7347: $9d
	ld   h, a                                        ; $7348: $67
	ld   a, [$000d]                                  ; $7349: $fa $0d $00
	ld   a, [bc]                                     ; $734c: $0a
	inc  e                                           ; $734d: $1c
	ld   b, $01                                      ; $734e: $06 $01
	ld   bc, $5201                                   ; $7350: $01 $01 $52
	ld   d, d                                        ; $7353: $52
	ld   l, h                                        ; $7354: $6c
	db   $fc                                         ; $7355: $fc
	ld   a, [$000d]                                  ; $7356: $fa $0d $00
	ld   a, [bc]                                     ; $7359: $0a
	ld   b, $f4                                      ; $735a: $06 $f4
	ld   [$000f], sp                                 ; $735c: $08 $0f $00
	ld   bc, $5901                                   ; $735f: $01 $01 $59
	sbc  [hl]                                        ; $7362: $9e
	ld   [bc], a                                     ; $7363: $02
	ld   [hl], d                                     ; $7364: $72
	and  b                                           ; $7365: $a0
	inc  bc                                          ; $7366: $03
	sub  e                                           ; $7367: $93
	sub  a                                           ; $7368: $97
	ld   a, b                                        ; $7369: $78
	ld   e, e                                        ; $736a: $5b
	sub  c                                           ; $736b: $91
	ld   a, [$000d]                                  ; $736c: $fa $0d $00
	ld   a, [bc]                                     ; $736f: $0a
	inc  d                                           ; $7370: $14
	rlca                                             ; $7371: $07
	ld   bc, $a501                                   ; $7372: $01 $01 $a5
	call nz, $fbc7                                   ; $7375: $c4 $c7 $fb
	ei                                               ; $7378: $fb
	ei                                               ; $7379: $fb
	dec  c                                           ; $737a: $0d
	nop                                              ; $737b: $00
	ld   a, [bc]                                     ; $737c: $0a
	rlca                                             ; $737d: $07
	sub  b                                           ; $737e: $90
	dec  bc                                          ; $737f: $0b
	inc  bc                                          ; $7380: $03
	jr   nz, jr_060_7384                             ; $7381: $20 $01

	ld   a, [bc]                                     ; $7383: $0a

jr_060_7384:
	inc  hl                                          ; $7384: $23
	nop                                              ; $7385: $00
	ld   sp, $2040                                   ; $7386: $31 $40 $20
	inc  bc                                          ; $7389: $03
	jr   nz, jr_060_738d                             ; $738a: $20 $01

	ld   a, [bc]                                     ; $738c: $0a

jr_060_738d:
	add  hl, hl                                      ; $738d: $29
	nop                                              ; $738e: $00
	inc  e                                           ; $738f: $1c
	ld   b, $05                                      ; $7390: $06 $05
	dec  b                                           ; $7392: $05
	ld   bc, $5258                                   ; $7393: $01 $58 $52
	ld   e, b                                        ; $7396: $58
	ld   d, d                                        ; $7397: $52
	sbc  a                                           ; $7398: $9f
	ld   a, e                                        ; $7399: $7b
	sub  a                                           ; $739a: $97
	ld   [hl], c                                     ; $739b: $71
	ld   l, l                                        ; $739c: $6d
	ld   a, h                                        ; $739d: $7c
	ld   a, l                                        ; $739e: $7d
	ld   [bc], a                                     ; $739f: $02
	inc  [hl]                                        ; $73a0: $34
	inc  bc                                          ; $73a1: $03
	ret  nc                                          ; $73a2: $d0

	dec  c                                           ; $73a3: $0d
	ld   l, [hl]                                     ; $73a4: $6e
	sub  [hl]                                        ; $73a5: $96
	sbc  a                                           ; $73a6: $9f
	ld   h, l                                        ; $73a7: $65
	ld   [hl], c                                     ; $73a8: $71
	ld   e, c                                        ; $73a9: $59
	sbc  b                                           ; $73aa: $98
	ld   h, l                                        ; $73ab: $65
	ld   [hl], h                                     ; $73ac: $74
	ld   e, l                                        ; $73ad: $5d
	sbc  d                                           ; $73ae: $9a
	sub  [hl]                                        ; $73af: $96
	sbc  a                                           ; $73b0: $9f
	dec  c                                           ; $73b1: $0d
	sub  b                                           ; $73b2: $90
	ld   d, h                                        ; $73b3: $54
	ld   [bc], a                                     ; $73b4: $02
	jr   nz, jr_060_73b9                             ; $73b5: $20 $02

	sub  e                                           ; $73b7: $93
	dec  b                                           ; $73b8: $05

jr_060_73b9:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $73b9: $cf
	adc  a                                           ; $73ba: $8f
	ld   [hl], c                                     ; $73bb: $71
	ld   e, c                                        ; $73bc: $59
	sub  a                                           ; $73bd: $97
	ld   l, [hl]                                     ; $73be: $6e
	sbc  a                                           ; $73bf: $9f
	dec  c                                           ; $73c0: $0d
	nop                                              ; $73c1: $00
	ld   a, [bc]                                     ; $73c2: $0a
	ld   b, $52                                      ; $73c3: $06 $52
	ld   [bc], a                                     ; $73c5: $02
	rrca                                             ; $73c6: $0f
	nop                                              ; $73c7: $00
	ld   bc, $0201                                   ; $73c8: $01 $01 $02
	inc  [hl]                                        ; $73cb: $34
	inc  bc                                          ; $73cc: $03
	ret  nc                                          ; $73cd: $d0

	ld   h, b                                        ; $73ce: $60
	sbc  b                                           ; $73cf: $98
	ld   sp, hl                                      ; $73d0: $f9
	db   $10                                         ; $73d1: $10
	ld   [bc], a                                     ; $73d2: $02
	ld   h, [hl]                                     ; $73d3: $66
	and  b                                           ; $73d4: $a0
	inc  bc                                          ; $73d5: $03
	sub  e                                           ; $73d6: $93
	sbc  c                                           ; $73d7: $99
	ld   sp, hl                                      ; $73d8: $f9
	dec  c                                           ; $73d9: $0d
	nop                                              ; $73da: $00
	ld   a, [bc]                                     ; $73db: $0a
	inc  d                                           ; $73dc: $14
	rlca                                             ; $73dd: $07
	ld   bc, $a501                                   ; $73de: $01 $01 $a5
	rst  ToBoot                                         ; $73e1: $c7
	rst  ToBoot                                         ; $73e2: $c7
	rst  ToBoot                                         ; $73e3: $c7
	rst  ToBoot                                         ; $73e4: $c7
	rst  $38                                         ; $73e5: $ff
	rst  $38                                         ; $73e6: $ff
	dec  c                                           ; $73e7: $0d
	nop                                              ; $73e8: $00
	ld   a, [bc]                                     ; $73e9: $0a
	rlca                                             ; $73ea: $07
	sub  b                                           ; $73eb: $90
	dec  bc                                          ; $73ec: $0b
	inc  bc                                          ; $73ed: $03
	jr   nz, jr_060_73f1                             ; $73ee: $20 $01

	ld   a, [bc]                                     ; $73f0: $0a

jr_060_73f1:
	inc  hl                                          ; $73f1: $23
	nop                                              ; $73f2: $00
	ld   sp, $2040                                   ; $73f3: $31 $40 $20
	inc  bc                                          ; $73f6: $03
	jr   nz, jr_060_73fa                             ; $73f7: $20 $01

	ld   a, [bc]                                     ; $73f9: $0a

jr_060_73fa:
	add  hl, hl                                      ; $73fa: $29
	nop                                              ; $73fb: $00
	inc  e                                           ; $73fc: $1c
	ld   b, $05                                      ; $73fd: $06 $05
	dec  b                                           ; $73ff: $05
	ld   bc, $3402                                   ; $7400: $01 $02 $34
	inc  bc                                          ; $7403: $03
	ret  nc                                          ; $7404: $d0

	and  b                                           ; $7405: $a0
	ld   a, e                                        ; $7406: $7b
	sub  a                                           ; $7407: $97
	ld   [hl], c                                     ; $7408: $71
	ld   l, l                                        ; $7409: $6d
	and  c                                           ; $740a: $a1
	ld   l, [hl]                                     ; $740b: $6e
	ld   l, d                                        ; $740c: $6a
	sbc  a                                           ; $740d: $9f
	dec  c                                           ; $740e: $0d
	ld   [bc], a                                     ; $740f: $02
	ld   h, [hl]                                     ; $7410: $66
	and  b                                           ; $7411: $a0
	inc  bc                                          ; $7412: $03
	sub  e                                           ; $7413: $93
	ld   [hl], c                                     ; $7414: $71
	ld   [hl], h                                     ; $7415: $74
	sub  b                                           ; $7416: $90
	pop  bc                                          ; $7417: $c1
	db   $e3                                         ; $7418: $e3
	ld   l, [hl]                                     ; $7419: $6e
	sbc  a                                           ; $741a: $9f
	dec  c                                           ; $741b: $0d
	sub  b                                           ; $741c: $90
	ld   d, h                                        ; $741d: $54
	ld   [bc], a                                     ; $741e: $02
	jr   nz, jr_060_7423                             ; $741f: $20 $02

	sub  e                                           ; $7421: $93
	dec  b                                           ; $7422: $05

jr_060_7423:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7423: $cf
	adc  a                                           ; $7424: $8f
	ld   [hl], c                                     ; $7425: $71
	ld   e, c                                        ; $7426: $59
	sub  a                                           ; $7427: $97
	ld   l, [hl]                                     ; $7428: $6e
	sbc  a                                           ; $7429: $9f
	dec  c                                           ; $742a: $0d
	nop                                              ; $742b: $00
	ld   a, [bc]                                     ; $742c: $0a
	ld   b, $52                                      ; $742d: $06 $52
	ld   [bc], a                                     ; $742f: $02
	rrca                                             ; $7430: $0f
	nop                                              ; $7431: $00
	ld   bc, $0714                                   ; $7432: $01 $14 $07
	ld   bc, $a301                                   ; $7435: $01 $01 $a3
	and  l                                           ; $7438: $a5
	ret  nz                                          ; $7439: $c0

	ret  nz                                          ; $743a: $c0

	ret  nz                                          ; $743b: $c0

	ret  nz                                          ; $743c: $c0

	ret  nz                                          ; $743d: $c0

	ret  nz                                          ; $743e: $c0

	ret  nz                                          ; $743f: $c0

	rst  $38                                         ; $7440: $ff
	rst  $38                                         ; $7441: $ff
	dec  c                                           ; $7442: $0d
	nop                                              ; $7443: $00
	ld   a, [bc]                                     ; $7444: $0a
	rlca                                             ; $7445: $07
	sub  b                                           ; $7446: $90
	dec  bc                                          ; $7447: $0b
	inc  bc                                          ; $7448: $03
	jr   nz, jr_060_744c                             ; $7449: $20 $01

	ld   a, [bc]                                     ; $744b: $0a

jr_060_744c:
	inc  hl                                          ; $744c: $23
	nop                                              ; $744d: $00
	ld   sp, $2040                                   ; $744e: $31 $40 $20
	inc  bc                                          ; $7451: $03
	jr   nz, jr_060_7455                             ; $7452: $20 $01

	ld   a, [bc]                                     ; $7454: $0a

jr_060_7455:
	add  hl, hl                                      ; $7455: $29
	nop                                              ; $7456: $00
	inc  e                                           ; $7457: $1c
	ld   b, $02                                      ; $7458: $06 $02
	ld   [bc], a                                     ; $745a: $02
	ld   bc, $acd1                                   ; $745b: $01 $d1 $ac
	ld   a, [GetRandomNumInPreSpecifiedRange]                                  ; $745e: $fa $10 $0d
	db   $dd                                         ; $7461: $dd
	or   d                                           ; $7462: $b2
	ld   [hl], c                                     ; $7463: $71
	halt                                             ; $7464: $76

Jump_060_7465:
	ld   h, a                                        ; $7465: $67
	and  c                                           ; $7466: $a1
	ld   h, [hl]                                     ; $7467: $66
	sub  c                                           ; $7468: $91
	ld   a, e                                        ; $7469: $7b
	ld   d, l                                        ; $746a: $55
	sub  [hl]                                        ; $746b: $96
	sbc  a                                           ; $746c: $9f
	dec  c                                           ; $746d: $0d
	sub  b                                           ; $746e: $90
	ld   d, h                                        ; $746f: $54
	ld   [bc], a                                     ; $7470: $02
	jr   nz, jr_060_7475                             ; $7471: $20 $02

	sub  e                                           ; $7473: $93
	dec  b                                           ; $7474: $05

jr_060_7475:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7475: $cf
	adc  a                                           ; $7476: $8f
	ld   [hl], c                                     ; $7477: $71
	ld   e, c                                        ; $7478: $59
	sub  a                                           ; $7479: $97
	ld   l, [hl]                                     ; $747a: $6e
	sbc  a                                           ; $747b: $9f
	dec  c                                           ; $747c: $0d
	nop                                              ; $747d: $00
	ld   a, [bc]                                     ; $747e: $0a
	ld   b, $52                                      ; $747f: $06 $52
	ld   [bc], a                                     ; $7481: $02
	inc  e                                           ; $7482: $1c
	ld   b, $02                                      ; $7483: $06 $02
	ld   [bc], a                                     ; $7485: $02
	ld   bc, $6903                                   ; $7486: $01 $03 $69
	ld   [bc], a                                     ; $7489: $02
	xor  d                                           ; $748a: $aa
	ld   a, c                                        ; $748b: $79
	ld   e, b                                        ; $748c: $58
	sub  b                                           ; $748d: $90
	ld   d, d                                        ; $748e: $52
	ld   [hl], c                                     ; $748f: $71
	ld   e, e                                        ; $7490: $5b
	sbc  b                                           ; $7491: $98
	dec  c                                           ; $7492: $0d
	inc  bc                                          ; $7493: $03
	ld   h, l                                        ; $7494: $65
	inc  bc                                          ; $7495: $03
	ret  nc                                          ; $7496: $d0

	adc  h                                           ; $7497: $8c
	sbc  l                                           ; $7498: $9d
	ld   h, l                                        ; $7499: $65
	ld   h, b                                        ; $749a: $60
	sbc  b                                           ; $749b: $98
	ld   l, [hl]                                     ; $749c: $6e
	ld   a, [$000d]                                  ; $749d: $fa $0d $00
	ld   a, [bc]                                     ; $74a0: $0a
	inc  d                                           ; $74a1: $14
	dec  d                                           ; $74a2: $15
	ld   bc, $0419                                   ; $74a3: $01 $19 $04
	inc  bc                                          ; $74a6: $03
	ld   h, l                                        ; $74a7: $65
	sub  c                                           ; $74a8: $91
	ld   e, d                                        ; $74a9: $5a
	adc  [hl]                                        ; $74aa: $8e
	nop                                              ; $74ab: $00
	nop                                              ; $74ac: $00
	cp   c                                           ; $74ad: $b9
	push hl                                          ; $74ae: $e5
	push af                                          ; $74af: $f5
	ret  c                                           ; $74b0: $d8

	ld   h, a                                        ; $74b1: $67
	sbc  c                                           ; $74b2: $99
	nop                                              ; $74b3: $00
	ld   bc, $c8a7                                   ; $74b4: $01 $a7 $c8
	ld   [hl], l                                     ; $74b7: $75
	rst  $10                                         ; $74b8: $d7
	rst  $28                                         ; $74b9: $ef
	call nz, $00b0                                   ; $74ba: $c4 $b0 $00
	ld   [bc], a                                     ; $74bd: $02
	rlca                                             ; $74be: $07
	ld   c, [hl]                                     ; $74bf: $4e
	add  hl, bc                                      ; $74c0: $09
	ld   [bc], a                                     ; $74c1: $02
	inc  bc                                          ; $74c2: $03
	ld   bc, $2000                                   ; $74c3: $01 $00 $20
	nop                                              ; $74c6: $00
	rlca                                             ; $74c7: $07
	add  b                                           ; $74c8: $80
	add  hl, bc                                      ; $74c9: $09
	ld   [bc], a                                     ; $74ca: $02
	inc  bc                                          ; $74cb: $03
	ld   bc, $2001                                   ; $74cc: $01 $01 $20
	nop                                              ; $74cf: $00
	rlca                                             ; $74d0: $07
	ld   a, [bc]                                     ; $74d1: $0a
	ld   a, [bc]                                     ; $74d2: $0a
	ld   [bc], a                                     ; $74d3: $02
	inc  bc                                          ; $74d4: $03
	ld   bc, $2002                                   ; $74d5: $01 $02 $20
	nop                                              ; $74d8: $00
	ld   b, $a3                                      ; $74d9: $06 $a3
	ld   a, [bc]                                     ; $74db: $0a
	rrca                                             ; $74dc: $0f
	nop                                              ; $74dd: $00
	ld   bc, $0301                                   ; $74de: $01 $01 $03
	ld   h, l                                        ; $74e1: $65
	inc  bc                                          ; $74e2: $03
	ret  nc                                          ; $74e3: $d0

	adc  h                                           ; $74e4: $8c
	sbc  l                                           ; $74e5: $9d
	ld   h, l                                        ; $74e6: $65
	ld   h, b                                        ; $74e7: $60
	sbc  b                                           ; $74e8: $98
	ld   a, b                                        ; $74e9: $78
	sub  a                                           ; $74ea: $97
	dec  c                                           ; $74eb: $0d
	ld   h, l                                        ; $74ec: $65
	sub  c                                           ; $74ed: $91
	ld   e, d                                        ; $74ee: $5a
	and  c                                           ; $74ef: $a1
	ld   [hl], l                                     ; $74f0: $75
	ld   e, c                                        ; $74f1: $59
	sbc  l                                           ; $74f2: $9d
	ld   h, a                                        ; $74f3: $67
	ld   a, [$000d]                                  ; $74f4: $fa $0d $00
	ld   a, [bc]                                     ; $74f7: $0a
	inc  e                                           ; $74f8: $1c
	ld   b, $01                                      ; $74f9: $06 $01
	ld   bc, $9601                                   ; $74fb: $01 $01 $96
	ld   h, l                                        ; $74fe: $65
	ld   a, [$020d]                                  ; $74ff: $fa $0d $02
	add  e                                           ; $7502: $83
	adc  h                                           ; $7503: $8c
	ld   [hl], c                                     ; $7504: $71
	ld   l, l                                        ; $7505: $6d
	ld   a, [$0dfa]                                  ; $7506: $fa $fa $0d
	nop                                              ; $7509: $00
	ld   a, [bc]                                     ; $750a: $0a
	ld   b, $f9                                      ; $750b: $06 $f9
	ld   a, [bc]                                     ; $750d: $0a
	rrca                                             ; $750e: $0f
	nop                                              ; $750f: $00
	ld   bc, $b901                                   ; $7510: $01 $01 $b9
	push hl                                          ; $7513: $e5
	push af                                          ; $7514: $f5
	ret  c                                           ; $7515: $d8

	ld   sp, hl                                      ; $7516: $f9
	dec  c                                           ; $7517: $0d
	nop                                              ; $7518: $00
	ld   a, [bc]                                     ; $7519: $0a
	inc  d                                           ; $751a: $14
	rlca                                             ; $751b: $07
	ld   bc, $b101                                   ; $751c: $01 $01 $b1
	call c, $ffc4                                    ; $751f: $dc $c4 $ff
	rst  $38                                         ; $7522: $ff
	dec  c                                           ; $7523: $0d
	nop                                              ; $7524: $00
	ld   a, [bc]                                     ; $7525: $0a
	rlca                                             ; $7526: $07
	sub  b                                           ; $7527: $90
	dec  bc                                          ; $7528: $0b
	inc  bc                                          ; $7529: $03
	jr   nz, jr_060_752d                             ; $752a: $20 $01

	ld   a, [bc]                                     ; $752c: $0a

jr_060_752d:
	inc  hl                                          ; $752d: $23
	nop                                              ; $752e: $00
	ld   sp, $2040                                   ; $752f: $31 $40 $20
	inc  bc                                          ; $7532: $03
	jr   nz, jr_060_7536                             ; $7533: $20 $01

	ld   a, [bc]                                     ; $7535: $0a

jr_060_7536:
	add  hl, hl                                      ; $7536: $29
	nop                                              ; $7537: $00
	inc  e                                           ; $7538: $1c
	ld   b, $03                                      ; $7539: $06 $03
	inc  bc                                          ; $753b: $03
	ld   bc, $5258                                   ; $753c: $01 $58 $52
	ld   a, [$0410]                                  ; $753f: $fa $10 $04
	ld   c, $03                                      ; $7542: $0e $03
	sbc  l                                           ; $7544: $9d
	inc  b                                           ; $7545: $04
	and  [hl]                                        ; $7546: $a6
	ld   e, c                                        ; $7547: $59
	ld   sp, hl                                      ; $7548: $f9
	dec  c                                           ; $7549: $0d
	ld   e, b                                        ; $754a: $58
	sub  b                                           ; $754b: $90
	ld   d, d                                        ; $754c: $52
	ld   [hl], c                                     ; $754d: $71
	ld   e, e                                        ; $754e: $5b
	sbc  b                                           ; $754f: $98
	ld   d, d                                        ; $7550: $52
	ld   [hl], c                                     ; $7551: $71
	ld   l, l                                        ; $7552: $6d
	ld   e, c                                        ; $7553: $59
	sub  a                                           ; $7554: $97
	ld   a, b                                        ; $7555: $78

Call_060_7556:
	rst  $38                                         ; $7556: $ff
	rst  $38                                         ; $7557: $ff
	dec  c                                           ; $7558: $0d
	nop                                              ; $7559: $00
	ld   a, [bc]                                     ; $755a: $0a
	inc  e                                           ; $755b: $1c
	ld   b, $02                                      ; $755c: $06 $02
	ld   [bc], a                                     ; $755e: $02
	ld   bc, $5252                                   ; $755f: $01 $52 $52
	ld   e, c                                        ; $7562: $59
	sbc  [hl]                                        ; $7563: $9e
	inc  bc                                          ; $7564: $03
	ld   l, c                                        ; $7565: $69
	ld   [bc], a                                     ; $7566: $02
	xor  d                                           ; $7567: $aa
	ld   a, h                                        ; $7568: $7c
	inc  bc                                          ; $7569: $03
	ld   h, l                                        ; $756a: $65
	inc  bc                                          ; $756b: $03
	ret  nc                                          ; $756c: $d0

	adc  h                                           ; $756d: $8c
	sbc  l                                           ; $756e: $9d
	ld   h, l                                        ; $756f: $65
	ld   h, b                                        ; $7570: $60
	sbc  b                                           ; $7571: $98
	dec  c                                           ; $7572: $0d
	ld   a, l                                        ; $7573: $7d
	sbc  [hl]                                        ; $7574: $9e
	ld   h, l                                        ; $7575: $65
	sub  c                                           ; $7576: $91
	ld   e, d                                        ; $7577: $5a
	and  c                                           ; $7578: $a1
	ld   [hl], l                                     ; $7579: $75
	sub  [hl]                                        ; $757a: $96
	ld   e, a                                        ; $757b: $5f
	sbc  c                                           ; $757c: $99
	and  c                                           ; $757d: $a1
	ld   l, [hl]                                     ; $757e: $6e
	sbc  a                                           ; $757f: $9f
	dec  c                                           ; $7580: $0d
	ld   h, [hl]                                     ; $7581: $66
	sub  c                                           ; $7582: $91
	sbc  [hl]                                        ; $7583: $9e
	sub  b                                           ; $7584: $90
	ld   d, h                                        ; $7585: $54
	ld   [bc], a                                     ; $7586: $02
	jr   nz, jr_060_758b                             ; $7587: $20 $02

	sub  e                                           ; $7589: $93
	dec  b                                           ; $758a: $05

jr_060_758b:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $758b: $cf
	adc  a                                           ; $758c: $8f
	ld   [hl], c                                     ; $758d: $71
	ld   e, c                                        ; $758e: $59
	sub  a                                           ; $758f: $97
	ld   l, [hl]                                     ; $7590: $6e
	sbc  a                                           ; $7591: $9f
	dec  c                                           ; $7592: $0d
	nop                                              ; $7593: $00
	ld   a, [bc]                                     ; $7594: $0a
	ld   b, $52                                      ; $7595: $06 $52
	ld   [bc], a                                     ; $7597: $02
	rrca                                             ; $7598: $0f
	nop                                              ; $7599: $00
	ld   bc, $a701                                   ; $759a: $01 $01 $a7
	ret  z                                           ; $759d: $c8

	ld   [hl], l                                     ; $759e: $75
	rst  $10                                         ; $759f: $d7
	rst  $28                                         ; $75a0: $ef
	call nz, Call_060_6eb0                           ; $75a1: $c4 $b0 $6e
	ld   a, [$000d]                                  ; $75a4: $fa $0d $00
	ld   a, [bc]                                     ; $75a7: $0a
	inc  d                                           ; $75a8: $14
	rlca                                             ; $75a9: $07
	ld   bc, $a301                                   ; $75aa: $01 $01 $a3
	and  l                                           ; $75ad: $a5
	ret  nz                                          ; $75ae: $c0

	ei                                               ; $75af: $fb
	ei                                               ; $75b0: $fb
	ei                                               ; $75b1: $fb
	ei                                               ; $75b2: $fb
	rst  $38                                         ; $75b3: $ff
	rst  $38                                         ; $75b4: $ff
	dec  c                                           ; $75b5: $0d
	and  l                                           ; $75b6: $a5
	call nz, $fbc7                                   ; $75b7: $c4 $c7 $fb
	rst  $38                                         ; $75ba: $ff
	rst  $38                                         ; $75bb: $ff
	dec  c                                           ; $75bc: $0d
	nop                                              ; $75bd: $00
	ld   a, [bc]                                     ; $75be: $0a
	rlca                                             ; $75bf: $07
	sub  b                                           ; $75c0: $90
	dec  bc                                          ; $75c1: $0b
	inc  bc                                          ; $75c2: $03
	jr   nz, jr_060_75c6                             ; $75c3: $20 $01

	ld   a, [bc]                                     ; $75c5: $0a

jr_060_75c6:
	inc  hl                                          ; $75c6: $23
	nop                                              ; $75c7: $00
	ld   sp, $2040                                   ; $75c8: $31 $40 $20
	inc  bc                                          ; $75cb: $03
	jr   nz, jr_060_75cf                             ; $75cc: $20 $01

	ld   a, [bc]                                     ; $75ce: $0a

jr_060_75cf:
	add  hl, hl                                      ; $75cf: $29
	nop                                              ; $75d0: $00
	inc  e                                           ; $75d1: $1c
	ld   b, $03                                      ; $75d2: $06 $03
	inc  bc                                          ; $75d4: $03
	ld   bc, $5258                                   ; $75d5: $01 $58 $52
	ld   a, [$0410]                                  ; $75d8: $fa $10 $04
	ld   c, $03                                      ; $75db: $0e $03
	sbc  l                                           ; $75dd: $9d
	inc  b                                           ; $75de: $04
	and  [hl]                                        ; $75df: $a6
	ld   e, c                                        ; $75e0: $59
	ld   sp, hl                                      ; $75e1: $f9
	dec  c                                           ; $75e2: $0d
	ld   e, b                                        ; $75e3: $58
	sub  b                                           ; $75e4: $90
	ld   d, d                                        ; $75e5: $52
	ld   [hl], c                                     ; $75e6: $71
	ld   e, e                                        ; $75e7: $5b
	sbc  b                                           ; $75e8: $98
	ld   d, d                                        ; $75e9: $52
	ld   [hl], c                                     ; $75ea: $71
	ld   l, l                                        ; $75eb: $6d
	ld   e, c                                        ; $75ec: $59
	sub  a                                           ; $75ed: $97
	ld   a, b                                        ; $75ee: $78
	rst  $38                                         ; $75ef: $ff
	rst  $38                                         ; $75f0: $ff
	dec  c                                           ; $75f1: $0d
	nop                                              ; $75f2: $00
	ld   a, [bc]                                     ; $75f3: $0a
	inc  e                                           ; $75f4: $1c
	ld   b, $02                                      ; $75f5: $06 $02
	ld   [bc], a                                     ; $75f7: $02
	ld   bc, $5252                                   ; $75f8: $01 $52 $52

Call_060_75fb:
	ld   e, c                                        ; $75fb: $59
	sbc  [hl]                                        ; $75fc: $9e
	inc  bc                                          ; $75fd: $03
	ld   l, c                                        ; $75fe: $69
	ld   [bc], a                                     ; $75ff: $02
	xor  d                                           ; $7600: $aa
	ld   a, h                                        ; $7601: $7c
	inc  bc                                          ; $7602: $03
	ld   h, l                                        ; $7603: $65
	inc  bc                                          ; $7604: $03
	ret  nc                                          ; $7605: $d0

	adc  h                                           ; $7606: $8c
	sbc  l                                           ; $7607: $9d
	ld   h, l                                        ; $7608: $65
	ld   h, b                                        ; $7609: $60
	sbc  b                                           ; $760a: $98
	dec  c                                           ; $760b: $0d
	ld   a, l                                        ; $760c: $7d
	sbc  [hl]                                        ; $760d: $9e
	ld   h, l                                        ; $760e: $65
	sub  c                                           ; $760f: $91
	ld   e, d                                        ; $7610: $5a
	and  c                                           ; $7611: $a1
	ld   [hl], l                                     ; $7612: $75
	sub  [hl]                                        ; $7613: $96
	ld   e, a                                        ; $7614: $5f
	sbc  c                                           ; $7615: $99
	and  c                                           ; $7616: $a1
	ld   l, [hl]                                     ; $7617: $6e
	sbc  a                                           ; $7618: $9f
	dec  c                                           ; $7619: $0d
	ld   h, [hl]                                     ; $761a: $66
	sub  c                                           ; $761b: $91
	sbc  [hl]                                        ; $761c: $9e
	sub  b                                           ; $761d: $90
	ld   d, h                                        ; $761e: $54
	ld   [bc], a                                     ; $761f: $02
	jr   nz, jr_060_7624                             ; $7620: $20 $02

	sub  e                                           ; $7622: $93
	dec  b                                           ; $7623: $05

jr_060_7624:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7624: $cf
	adc  a                                           ; $7625: $8f
	ld   [hl], c                                     ; $7626: $71
	ld   e, c                                        ; $7627: $59
	sub  a                                           ; $7628: $97
	ld   l, [hl]                                     ; $7629: $6e
	sbc  a                                           ; $762a: $9f
	dec  c                                           ; $762b: $0d
	nop                                              ; $762c: $00
	ld   a, [bc]                                     ; $762d: $0a
	ld   b, $52                                      ; $762e: $06 $52
	ld   [bc], a                                     ; $7630: $02
	rrca                                             ; $7631: $0f
	nop                                              ; $7632: $00
	ld   bc, $0714                                   ; $7633: $01 $14 $07
	ld   bc, $b101                                   ; $7636: $01 $01 $b1
	reti                                             ; $7639: $d9


	call nz, $ffff                                   ; $763a: $c4 $ff $ff
	dec  c                                           ; $763d: $0d
	pop  de                                          ; $763e: $d1
	ret  nz                                          ; $763f: $c0

	push af                                          ; $7640: $f5
	xor  [hl]                                        ; $7641: $ae
	rst  $20                                         ; $7642: $e7
	ei                                               ; $7643: $fb
	db   $fc                                         ; $7644: $fc
	rst  $38                                         ; $7645: $ff
	rst  $38                                         ; $7646: $ff
	dec  c                                           ; $7647: $0d
	nop                                              ; $7648: $00
	ld   a, [bc]                                     ; $7649: $0a
	rlca                                             ; $764a: $07
	sub  b                                           ; $764b: $90
	dec  bc                                          ; $764c: $0b
	inc  bc                                          ; $764d: $03
	jr   nz, jr_060_7651                             ; $764e: $20 $01

	ld   a, [bc]                                     ; $7650: $0a

jr_060_7651:
	inc  hl                                          ; $7651: $23
	nop                                              ; $7652: $00
	ld   sp, $2040                                   ; $7653: $31 $40 $20
	inc  bc                                          ; $7656: $03
	jr   nz, jr_060_765a                             ; $7657: $20 $01

	ld   a, [bc]                                     ; $7659: $0a

jr_060_765a:
	add  hl, hl                                      ; $765a: $29
	nop                                              ; $765b: $00
	inc  e                                           ; $765c: $1c
	ld   b, $02                                      ; $765d: $06 $02
	ld   [bc], a                                     ; $765f: $02
	ld   bc, $acd1                                   ; $7660: $01 $d1 $ac
	ld   a, [GetRandomNumInPreSpecifiedRange]                                  ; $7663: $fa $10 $0d
	db   $dd                                         ; $7666: $dd
	or   d                                           ; $7667: $b2
	ld   [hl], c                                     ; $7668: $71
	halt                                             ; $7669: $76
	ld   h, a                                        ; $766a: $67
	and  c                                           ; $766b: $a1
	ld   h, [hl]                                     ; $766c: $66
	sub  c                                           ; $766d: $91
	ld   a, e                                        ; $766e: $7b
	ld   d, l                                        ; $766f: $55
	sub  [hl]                                        ; $7670: $96
	sbc  a                                           ; $7671: $9f
	dec  c                                           ; $7672: $0d
	sub  b                                           ; $7673: $90
	ld   d, h                                        ; $7674: $54
	ld   [bc], a                                     ; $7675: $02
	jr   nz, jr_060_767a                             ; $7676: $20 $02

	sub  e                                           ; $7678: $93
	dec  b                                           ; $7679: $05

jr_060_767a:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $767a: $cf
	adc  a                                           ; $767b: $8f
	ld   [hl], c                                     ; $767c: $71
	ld   e, c                                        ; $767d: $59
	sub  a                                           ; $767e: $97
	ld   l, [hl]                                     ; $767f: $6e
	sbc  a                                           ; $7680: $9f
	dec  c                                           ; $7681: $0d
	nop                                              ; $7682: $00
	ld   a, [bc]                                     ; $7683: $0a
	ld   b, $52                                      ; $7684: $06 $52
	ld   [bc], a                                     ; $7686: $02
	inc  e                                           ; $7687: $1c
	ld   b, $00                                      ; $7688: $06 $00
	nop                                              ; $768a: $00
	ld   bc, $6596                                   ; $768b: $01 $96 $65
	sub  [hl]                                        ; $768e: $96
	ld   h, l                                        ; $768f: $65
	sbc  a                                           ; $7690: $9f
	dec  c                                           ; $7691: $0d
	sub  d                                           ; $7692: $92
	sbc  c                                           ; $7693: $99
	ld   h, [hl]                                     ; $7694: $66
	sub  c                                           ; $7695: $91
	ld   a, e                                        ; $7696: $7b
	ei                                               ; $7697: $fb
	ld   e, c                                        ; $7698: $59
	sbc  [hl]                                        ; $7699: $9e
	ld   [$9f00], sp                                 ; $769a: $08 $00 $9f
	dec  c                                           ; $769d: $0d
	nop                                              ; $769e: $00
	ld   a, [bc]                                     ; $769f: $0a
	ld   bc, $9166                                   ; $76a0: $01 $66 $91
	sbc  [hl]                                        ; $76a3: $9e
	sub  [hl]                                        ; $76a4: $96
	sbc  b                                           ; $76a5: $98
	inc  bc                                          ; $76a6: $03
	adc  e                                           ; $76a7: $8b
	inc  bc                                          ; $76a8: $03
	xor  b                                           ; $76a9: $a8
	inc  b                                           ; $76aa: $04
	jr   nz, @+$7b                                   ; $76ab: $20 $79

	dec  c                                           ; $76ad: $0d
	ld   d, d                                        ; $76ae: $52
	ld   [hl], c                                     ; $76af: $71
	ld   [hl], h                                     ; $76b0: $74
	adc  l                                           ; $76b1: $8d
	sub  [hl]                                        ; $76b2: $96
	ld   d, h                                        ; $76b3: $54
	ld   e, c                                        ; $76b4: $59
	sbc  a                                           ; $76b5: $9f
	dec  c                                           ; $76b6: $0d
	nop                                              ; $76b7: $00
	ld   a, [bc]                                     ; $76b8: $0a
	inc  e                                           ; $76b9: $1c
	ld   b, $01                                      ; $76ba: $06 $01
	ld   bc, $0301                                   ; $76bc: $01 $01 $03
	adc  e                                           ; $76bf: $8b
	inc  bc                                          ; $76c0: $03
	xor  b                                           ; $76c1: $a8
	ld   [hl], c                                     ; $76c2: $71
	ld   [hl], h                                     ; $76c3: $74
	ld   [bc], a                                     ; $76c4: $02
	sbc  l                                           ; $76c5: $9d
	ld   d, h                                        ; $76c6: $54
	ld   e, [hl]                                     ; $76c7: $5e
	sub  a                                           ; $76c8: $97
	ld   d, d                                        ; $76c9: $52
	ld   l, [hl]                                     ; $76ca: $6e
	ld   e, c                                        ; $76cb: $59
	sub  a                                           ; $76cc: $97
	dec  c                                           ; $76cd: $0d
	ld   e, b                                        ; $76ce: $58
	inc  bc                                          ; $76cf: $03
	ld   c, a                                        ; $76d0: $4f
	sub  b                                           ; $76d1: $90
	ld   [bc], a                                     ; $76d2: $02
	ld   c, b                                        ; $76d3: $48
	ld   [bc], a                                     ; $76d4: $02
	sub  c                                           ; $76d5: $91
	ld   h, l                                        ; $76d6: $65
	ld   [hl], h                                     ; $76d7: $74
	ld   e, l                                        ; $76d8: $5d
	sbc  c                                           ; $76d9: $99
	and  c                                           ; $76da: $a1
	ld   l, [hl]                                     ; $76db: $6e
	ld   l, d                                        ; $76dc: $6a
	sbc  a                                           ; $76dd: $9f
	dec  c                                           ; $76de: $0d
	sub  [hl]                                        ; $76df: $96
	ld   e, a                                        ; $76e0: $5f
	ld   [hl], h                                     ; $76e1: $74
	ld   a, [hl]                                     ; $76e2: $7e
	ld   e, c                                        ; $76e3: $59
	sbc  b                                           ; $76e4: $98
	ld   h, [hl]                                     ; $76e5: $66
	sub  c                                           ; $76e6: $91
	pop  bc                                          ; $76e7: $c1
	db   $e3                                         ; $76e8: $e3
	ld   l, [hl]                                     ; $76e9: $6e
	sbc  a                                           ; $76ea: $9f
	dec  c                                           ; $76eb: $0d
	nop                                              ; $76ec: $00
	ld   a, [bc]                                     ; $76ed: $0a
	ld   bc, $9a6b                                   ; $76ee: $01 $6b $9a
	halt                                             ; $76f1: $76
	sbc  [hl]                                        ; $76f2: $9e
	sub  b                                           ; $76f3: $90
	ld   d, h                                        ; $76f4: $54
	ld   [bc], a                                     ; $76f5: $02
	jr   nz, @+$74                                   ; $76f6: $20 $72

	sbc  a                                           ; $76f8: $9f
	dec  c                                           ; $76f9: $0d
	inc  bc                                          ; $76fa: $03
	adc  e                                           ; $76fb: $8b
	inc  bc                                          ; $76fc: $03
	xor  b                                           ; $76fd: $a8
	ld   a, b                                        ; $76fe: $78
	and  c                                           ; $76ff: $a1
	ld   l, [hl]                                     ; $7700: $6e
	ld   e, c                                        ; $7701: $59
	sub  a                                           ; $7702: $97
	sbc  [hl]                                        ; $7703: $9e
	sub  d                                           ; $7704: $92
	sbc  b                                           ; $7705: $98
	inc  bc                                          ; $7706: $03
	jp   c, Jump_060_7d65                            ; $7707: $da $65 $7d

	dec  c                                           ; $770a: $0d
	ld   a, b                                        ; $770b: $78
	ld   h, l                                        ; $770c: $65
	ld   l, [hl]                                     ; $770d: $6e
	sbc  a                                           ; $770e: $9f
	xor  l                                           ; $770f: $ad
	push af                                          ; $7710: $f5
	xor  l                                           ; $7711: $ad
	push af                                          ; $7712: $f5
	ld   [bc], a                                     ; $7713: $02
	ld   a, a                                        ; $7714: $7f
	ld   e, l                                        ; $7715: $5d
	ld   l, d                                        ; $7716: $6a
	sbc  a                                           ; $7717: $9f
	dec  c                                           ; $7718: $0d
	nop                                              ; $7719: $00
	ld   a, [bc]                                     ; $771a: $0a
	ld   b, $38                                      ; $771b: $06 $38
	inc  c                                           ; $771d: $0c
	inc  e                                           ; $771e: $1c
	ld   b, $05                                      ; $771f: $06 $05
	dec  b                                           ; $7721: $05
	ld   bc, $5258                                   ; $7722: $01 $58 $52
	ld   [$9f00], sp                                 ; $7725: $08 $00 $9f
	dec  c                                           ; $7728: $0d
	ld   e, b                                        ; $7729: $58
	inc  bc                                          ; $772a: $03
	ld   c, a                                        ; $772b: $4f
	sub  b                                           ; $772c: $90
	ld   d, h                                        ; $772d: $54
	sub  $eb                                         ; $772e: $d6 $eb
	sub  $eb                                         ; $7730: $d6 $eb
	ld   h, [hl]                                     ; $7732: $66
	sub  c                                           ; $7733: $91
	ld   a, b                                        ; $7734: $78
	ld   d, d                                        ; $7735: $52
	ld   e, c                                        ; $7736: $59
	ld   sp, hl                                      ; $7737: $f9
	dec  c                                           ; $7738: $0d
	ld   [bc], a                                     ; $7739: $02
	and  l                                           ; $773a: $a5
	inc  b                                           ; $773b: $04
	xor  d                                           ; $773c: $aa
	ld   a, l                                        ; $773d: $7d
	sub  b                                           ; $773e: $90
	ld   d, h                                        ; $773f: $54
	sub  d                                           ; $7740: $92
	adc  a                                           ; $7741: $8f
	sub  [hl]                                        ; $7742: $96
	ld   d, h                                        ; $7743: $54
	sbc  a                                           ; $7744: $9f
	dec  c                                           ; $7745: $0d
	nop                                              ; $7746: $00
	ld   a, [bc]                                     ; $7747: $0a
	ld   bc, $9504                                   ; $7748: $01 $04 $95
	ld   [bc], a                                     ; $774b: $02
	ld   hl, $9079                                   ; $774c: $21 $79 $90
	ld   [hl], a                                     ; $774f: $77
	ld   [hl], c                                     ; $7750: $71
	ld   [hl], h                                     ; $7751: $74
	dec  c                                           ; $7752: $0d
	sub  h                                           ; $7753: $94
	ld   [hl], c                                     ; $7754: $71
	ld   e, l                                        ; $7755: $5d
	sbc  b                                           ; $7756: $98
	inc  bc                                          ; $7757: $03
	and  a                                           ; $7758: $a7
	adc  l                                           ; $7759: $8d
	ld   a, b                                        ; $775a: $78
	sbc  a                                           ; $775b: $9f
	dec  c                                           ; $775c: $0d
	nop                                              ; $775d: $00
	ld   a, [bc]                                     ; $775e: $0a
	dec  c                                           ; $775f: $0d
	nop                                              ; $7760: $00
	nop                                              ; $7761: $00
	rrca                                             ; $7762: $0f
	nop                                              ; $7763: $00
	ld   bc, $020c                                   ; $7764: $01 $0c $02
	add  hl, bc                                      ; $7767: $09
	ld   d, b                                        ; $7768: $50
	ld   c, $02                                      ; $7769: $0e $02
	rrca                                             ; $776b: $0f
	nop                                              ; $776c: $00
	ld   bc, $a501                                   ; $776d: $01 $01 $a5
	rst  ToBoot                                         ; $7770: $c7
	rst  ToBoot                                         ; $7771: $c7
	rst  ToBoot                                         ; $7772: $c7
	rst  ToBoot                                         ; $7773: $c7
	rst  $38                                         ; $7774: $ff
	rst  $38                                         ; $7775: $ff
	dec  c                                           ; $7776: $0d
	nop                                              ; $7777: $00
	ld   sp, $2040                                   ; $7778: $31 $40 $20
	ld   bc, $0082                                   ; $777b: $01 $82 $00
	ld   bc, $a502                                   ; $777e: $01 $02 $a5
	inc  b                                           ; $7781: $04
	xor  d                                           ; $7782: $aa
	ld   a, l                                        ; $7783: $7d
	xor  h                                           ; $7784: $ac
	push af                                          ; $7785: $f5
	bit  4, e                                        ; $7786: $cb $63
	and  c                                           ; $7788: $a1
	ld   a, c                                        ; $7789: $79
	dec  c                                           ; $778a: $0d
	adc  a                                           ; $778b: $8f
	ld   d, d                                        ; $778c: $52
	sbc  l                                           ; $778d: $9d
	ld   e, l                                        ; $778e: $5d
	and  b                                           ; $778f: $a0
	ld   e, c                                        ; $7790: $59
	ld   e, a                                        ; $7791: $5f
	ld   [hl], h                                     ; $7792: $74
	ld   h, l                                        ; $7793: $65
	adc  h                                           ; $7794: $8c
	ld   [hl], c                                     ; $7795: $71
	ld   l, l                                        ; $7796: $6d
	ld   a, b                                        ; $7797: $78
	rst  $38                                         ; $7798: $ff
	dec  c                                           ; $7799: $0d
	nop                                              ; $779a: $00
	ld   a, [bc]                                     ; $779b: $0a
	ld   bc, $ffff                                   ; $779c: $01 $ff $ff
	and  c                                           ; $779f: $a1
	ld   sp, hl                                      ; $77a0: $f9
	db   $10                                         ; $77a1: $10
	sub  b                                           ; $77a2: $90
	ld   d, h                                        ; $77a3: $54
	ld   h, c                                        ; $77a4: $61
	and  c                                           ; $77a5: $a1
	ld   a, b                                        ; $77a6: $78
	inc  bc                                          ; $77a7: $03
	ld   l, a                                        ; $77a8: $6f
	ld   [bc], a                                     ; $77a9: $02
	xor  c                                           ; $77aa: $a9
	ld   e, c                                        ; $77ab: $59
	rst  $38                                         ; $77ac: $ff
	dec  c                                           ; $77ad: $0d
	inc  b                                           ; $77ae: $04
	xor  d                                           ; $77af: $aa
	ld   [bc], a                                     ; $77b0: $02
	sub  a                                           ; $77b1: $97
	and  b                                           ; $77b2: $a0
	ld   [hl], d                                     ; $77b3: $72
	ld   e, a                                        ; $77b4: $5f
	ld   [hl], h                                     ; $77b5: $74
	sbc  [hl]                                        ; $77b6: $9e
	inc  bc                                          ; $77b7: $03
	ld   d, $8c                                      ; $77b8: $16 $8c
	ld   [hl], l                                     ; $77ba: $75
	inc  b                                           ; $77bb: $04
	ld   b, d                                        ; $77bc: $42
	sub  [hl]                                        ; $77bd: $96
	ld   d, h                                        ; $77be: $54
	sbc  a                                           ; $77bf: $9f
	dec  c                                           ; $77c0: $0d
	nop                                              ; $77c1: $00
	ld   a, [bc]                                     ; $77c2: $0a
	add  hl, hl                                      ; $77c3: $29
	nop                                              ; $77c4: $00
	nop                                              ; $77c5: $00
	inc  e                                           ; $77c6: $1c
	ld   b, $02                                      ; $77c7: $06 $02
	ld   [bc], a                                     ; $77c9: $02
	ld   bc, $688c                                   ; $77ca: $01 $8c $68
	ld   a, l                                        ; $77cd: $7d
	sbc  [hl]                                        ; $77ce: $9e
	sub  h                                           ; $77cf: $94
	ld   [hl], c                                     ; $77d0: $71
	ld   e, l                                        ; $77d1: $5d
	sbc  b                                           ; $77d2: $98
	sub  d                                           ; $77d3: $92
	sbc  c                                           ; $77d4: $99
	ld   l, d                                        ; $77d5: $6a
	sbc  a                                           ; $77d6: $9f
	dec  c                                           ; $77d7: $0d
	ld   d, d                                        ; $77d8: $52
	ld   e, l                                        ; $77d9: $5d
	ld   l, d                                        ; $77da: $6a
	ld   a, [$000d]                                  ; $77db: $fa $0d $00
	ld   a, [bc]                                     ; $77de: $0a
	ld   bc, $6903                                   ; $77df: $01 $03 $69
	inc  bc                                          ; $77e2: $03
	inc  c                                           ; $77e3: $0c
	ld   a, l                                        ; $77e4: $7d
	sbc  [hl]                                        ; $77e5: $9e
	inc  b                                           ; $77e6: $04
	dec  bc                                          ; $77e7: $0b
	inc  bc                                          ; $77e8: $03
	ret  nc                                          ; $77e9: $d0

	sub  $a8                                         ; $77ea: $d6 $a8
	and  l                                           ; $77ec: $a5
	push af                                          ; $77ed: $f5
	ret                                              ; $77ee: $c9


	ld   a, h                                        ; $77ef: $7c
	dec  c                                           ; $77f0: $0d
	ld   [bc], a                                     ; $77f1: $02
	inc  [hl]                                        ; $77f2: $34
	inc  bc                                          ; $77f3: $03
	ret  nc                                          ; $77f4: $d0

	ld   h, b                                        ; $77f5: $60
	sbc  b                                           ; $77f6: $98
	ld   l, [hl]                                     ; $77f7: $6e
	ld   a, [$000d]                                  ; $77f8: $fa $0d $00
	ld   a, [bc]                                     ; $77fb: $0a
	inc  d                                           ; $77fc: $14
	dec  d                                           ; $77fd: $15
	ld   bc, $0519                                   ; $77fe: $01 $19 $05
	inc  bc                                          ; $7801: $03
	inc  bc                                          ; $7802: $03
	ld   c, d                                        ; $7803: $4a

Jump_060_7804:
	ld   [bc], a                                     ; $7804: $02
	ld   [hl], c                                     ; $7805: $71
	ld   [hl], e                                     ; $7806: $73
	ld   e, e                                        ; $7807: $5b
	nop                                              ; $7808: $00
	nop                                              ; $7809: $00
	cp   c                                           ; $780a: $b9
	push hl                                          ; $780b: $e5
	push af                                          ; $780c: $f5

Call_060_780d:
	ret  c                                           ; $780d: $d8

	ld   h, l                                        ; $780e: $65
	ld   [hl], h                                     ; $780f: $74
	xor  [hl]                                        ; $7810: $ae
	call nz, $00b0                                   ; $7811: $c4 $b0 $00
	ld   bc, $e5b9                                   ; $7814: $01 $b9 $e5
	push af                                          ; $7817: $f5
	ret  c                                           ; $7818: $d8

	ld   h, l                                        ; $7819: $65
	ld   [hl], h                                     ; $781a: $74
	ld   e, c                                        ; $781b: $59
	sbc  l                                           ; $781c: $9d
	ld   h, a                                        ; $781d: $67
	nop                                              ; $781e: $00
	ld   [bc], a                                     ; $781f: $02
	rlca                                             ; $7820: $07
	dec  c                                           ; $7821: $0d
	dec  c                                           ; $7822: $0d
	ld   [bc], a                                     ; $7823: $02
	inc  bc                                          ; $7824: $03
	ld   bc, $2000                                   ; $7825: $01 $00 $20
	nop                                              ; $7828: $00
	rlca                                             ; $7829: $07
	or   b                                           ; $782a: $b0
	inc  c                                           ; $782b: $0c
	ld   [bc], a                                     ; $782c: $02
	inc  bc                                          ; $782d: $03
	ld   bc, $2001                                   ; $782e: $01 $01 $20
	nop                                              ; $7831: $00
	rlca                                             ; $7832: $07
	xor  $0c                                         ; $7833: $ee $0c
	ld   [bc], a                                     ; $7835: $02
	inc  bc                                          ; $7836: $03
	ld   bc, $2002                                   ; $7837: $01 $02 $20
	nop                                              ; $783a: $00
	ld   b, $74                                      ; $783b: $06 $74
	dec  c                                           ; $783d: $0d
	rrca                                             ; $783e: $0f
	nop                                              ; $783f: $00
	ld   bc, $7801                                   ; $7840: $01 $01 $78
	sub  a                                           ; $7843: $97
	ld   a, [hl]                                     ; $7844: $7e
	sbc  [hl]                                        ; $7845: $9e
	cp   c                                           ; $7846: $b9
	push hl                                          ; $7847: $e5
	push af                                          ; $7848: $f5
	ret  c                                           ; $7849: $d8

	ld   a, [$6b0d]                                  ; $784a: $fa $0d $6b
	ld   h, l                                        ; $784d: $65
	ld   [hl], h                                     ; $784e: $74
	sbc  [hl]                                        ; $784f: $9e
	xor  [hl]                                        ; $7850: $ae
	ei                                               ; $7851: $fb
	call nz, $fab0                                   ; $7852: $c4 $b0 $fa
	ld   a, [$000d]                                  ; $7855: $fa $0d $00
	ld   a, [bc]                                     ; $7858: $0a

Call_060_7859:
	inc  e                                           ; $7859: $1c
	ld   b, $00                                      ; $785a: $06 $00
	nop                                              ; $785c: $00
	ld   bc, $7158                                   ; $785d: $01 $58 $71
	halt                                             ; $7860: $76
	sbc  a                                           ; $7861: $9f
	dec  c                                           ; $7862: $0d
	ld   d, b                                        ; $7863: $50
	add  h                                           ; $7864: $84
	ld   a, b                                        ; $7865: $78
	ld   d, d                                        ; $7866: $52
	sbc  [hl]                                        ; $7867: $9e
	ld   d, b                                        ; $7868: $50
	add  h                                           ; $7869: $84
	ld   a, b                                        ; $786a: $78
	ld   d, d                                        ; $786b: $52
	rst  $38                                         ; $786c: $ff
	dec  c                                           ; $786d: $0d
	nop                                              ; $786e: $00
	ld   a, [bc]                                     ; $786f: $0a
	dec  b                                           ; $7870: $05
	ld   b, b                                        ; $7871: $40
	rst  $38                                         ; $7872: $ff
	inc  bc                                          ; $7873: $03
	rst  $38                                         ; $7874: $ff
	ld   bc, $2801                                   ; $7875: $01 $01 $28
	nop                                              ; $7878: $00
	ld   b, $bd                                      ; $7879: $06 $bd
	dec  c                                           ; $787b: $0d
	rrca                                             ; $787c: $0f
	nop                                              ; $787d: $00
	ld   bc, $7801                                   ; $787e: $01 $01 $78
	sub  a                                           ; $7881: $97
	ld   a, [hl]                                     ; $7882: $7e
	sbc  [hl]                                        ; $7883: $9e
	cp   c                                           ; $7884: $b9
	push hl                                          ; $7885: $e5
	push af                                          ; $7886: $f5
	ret  c                                           ; $7887: $d8

	ld   a, [$000d]                                  ; $7888: $fa $0d $00
	ld   a, [bc]                                     ; $788b: $0a
	inc  e                                           ; $788c: $1c
	ld   b, $01                                      ; $788d: $06 $01
	ld   bc, $9601                                   ; $788f: $01 $01 $96
	ei                                               ; $7892: $fb
	ld   h, l                                        ; $7893: $65
	sbc  a                                           ; $7894: $9f
	dec  c                                           ; $7895: $0d
	nop                                              ; $7896: $00
	ld   a, [bc]                                     ; $7897: $0a
	ld   b, $bd                                      ; $7898: $06 $bd
	dec  c                                           ; $789a: $0d
	rrca                                             ; $789b: $0f
	nop                                              ; $789c: $00
	ld   bc, $0301                                   ; $789d: $01 $01 $03
	ld   c, d                                        ; $78a0: $4a
	ld   [bc], a                                     ; $78a1: $02
	ld   [hl], c                                     ; $78a2: $71
	ld   [hl], e                                     ; $78a3: $73
	ld   e, e                                        ; $78a4: $5b
	ld   l, [hl]                                     ; $78a5: $6e
	ld   a, [$000d]                                  ; $78a6: $fa $0d $00
	ld   a, [bc]                                     ; $78a9: $0a
	inc  d                                           ; $78aa: $14
	rlca                                             ; $78ab: $07
	ld   bc, $a501                                   ; $78ac: $01 $01 $a5
	call nz, $fbc0                                   ; $78af: $c4 $c0 $fb
	ei                                               ; $78b2: $fb
	ei                                               ; $78b3: $fb
	call nz, $000d                                   ; $78b4: $c4 $0d $00
	ld   a, [bc]                                     ; $78b7: $0a
	rlca                                             ; $78b8: $07
	sub  b                                           ; $78b9: $90
	dec  bc                                          ; $78ba: $0b
	inc  bc                                          ; $78bb: $03
	jr   nz, jr_060_78bf                             ; $78bc: $20 $01

	ld   a, [bc]                                     ; $78be: $0a

jr_060_78bf:
	inc  hl                                          ; $78bf: $23
	nop                                              ; $78c0: $00
	ld   sp, $2040                                   ; $78c1: $31 $40 $20
	inc  bc                                          ; $78c4: $03
	jr   nz, jr_060_78c8                             ; $78c5: $20 $01

	ld   a, [bc]                                     ; $78c7: $0a

jr_060_78c8:
	add  hl, hl                                      ; $78c8: $29
	nop                                              ; $78c9: $00
	inc  e                                           ; $78ca: $1c
	ld   b, $05                                      ; $78cb: $06 $05
	dec  b                                           ; $78cd: $05
	ld   bc, $6e6d                                   ; $78ce: $01 $6d $6e
	dec  b                                           ; $78d1: $05
	ld   c, l                                        ; $78d2: $4d
	ld   a, c                                        ; $78d3: $79
	sbc  [hl]                                        ; $78d4: $9e
	ld   d, b                                        ; $78d5: $50
	ld   l, l                                        ; $78d6: $6d
	ld   d, d                                        ; $78d7: $52
	and  b                                           ; $78d8: $a0
	ld   [bc], a                                     ; $78d9: $02
	ld   c, b                                        ; $78da: $48
	ld   [bc], a                                     ; $78db: $02
	sub  c                                           ; $78dc: $91
	ld   h, l                                        ; $78dd: $65
	ld   [hl], h                                     ; $78de: $74
	sub  b                                           ; $78df: $90
	dec  c                                           ; $78e0: $0d
	pop  bc                                          ; $78e1: $c1
	db   $e3                                         ; $78e2: $e3
	ld   l, [hl]                                     ; $78e3: $6e
	sbc  a                                           ; $78e4: $9f
	adc  h                                           ; $78e5: $8c
	ld   l, b                                        ; $78e6: $68
	ld   a, l                                        ; $78e7: $7d
	ld   e, c                                        ; $78e8: $59
	sbc  l                                           ; $78e9: $9d
	ld   h, e                                        ; $78ea: $63
	ld   a, b                                        ; $78eb: $78
	ld   d, d                                        ; $78ec: $52
	halt                                             ; $78ed: $76
	sbc  a                                           ; $78ee: $9f
	dec  c                                           ; $78ef: $0d
	nop                                              ; $78f0: $00
	inc  e                                           ; $78f1: $1c
	ld   b, $02                                      ; $78f2: $06 $02
	ld   [bc], a                                     ; $78f4: $02
	ld   bc, $6803                                   ; $78f5: $01 $03 $68
	ld   d, d                                        ; $78f8: $52
	ld   e, l                                        ; $78f9: $5d
	ld   l, d                                        ; $78fa: $6a
	ld   a, [$000d]                                  ; $78fb: $fa $0d $00
	ld   a, [bc]                                     ; $78fe: $0a
	ld   b, $bd                                      ; $78ff: $06 $bd
	dec  c                                           ; $7901: $0d
	rrca                                             ; $7902: $0f
	nop                                              ; $7903: $00
	ld   bc, $0714                                   ; $7904: $01 $14 $07
	ld   bc, $a501                                   ; $7907: $01 $01 $a5
	call nz, $fbc7                                   ; $790a: $c4 $c7 $fb
	dec  c                                           ; $790d: $0d
	nop                                              ; $790e: $00
	ld   a, [bc]                                     ; $790f: $0a
	rlca                                             ; $7910: $07
	sub  b                                           ; $7911: $90
	dec  bc                                          ; $7912: $0b
	inc  bc                                          ; $7913: $03
	jr   nz, jr_060_7917                             ; $7914: $20 $01

	ld   a, [bc]                                     ; $7916: $0a

jr_060_7917:
	inc  hl                                          ; $7917: $23
	nop                                              ; $7918: $00
	ld   sp, $2040                                   ; $7919: $31 $40 $20
	inc  bc                                          ; $791c: $03
	jr   nz, jr_060_7920                             ; $791d: $20 $01

	ld   a, [bc]                                     ; $791f: $0a

jr_060_7920:
	add  hl, hl                                      ; $7920: $29
	nop                                              ; $7921: $00
	inc  e                                           ; $7922: $1c
	ld   b, $05                                      ; $7923: $06 $05
	dec  b                                           ; $7925: $05
	ld   bc, $acd1                                   ; $7926: $01 $d1 $ac
	ld   a, [GetRandomNumInPreSpecifiedRange]                                  ; $7929: $fa $10 $0d
	db   $dd                                         ; $792c: $dd
	or   d                                           ; $792d: $b2
	ld   [hl], c                                     ; $792e: $71
	halt                                             ; $792f: $76
	ld   h, a                                        ; $7930: $67
	and  c                                           ; $7931: $a1
	ld   h, [hl]                                     ; $7932: $66
	sub  c                                           ; $7933: $91
	ld   a, e                                        ; $7934: $7b
	ld   d, l                                        ; $7935: $55
	sub  [hl]                                        ; $7936: $96
	sbc  a                                           ; $7937: $9f
	dec  c                                           ; $7938: $0d
	nop                                              ; $7939: $00
	inc  e                                           ; $793a: $1c
	ld   b, $02                                      ; $793b: $06 $02
	ld   [bc], a                                     ; $793d: $02
	ld   bc, $6803                                   ; $793e: $01 $03 $68
	ld   d, d                                        ; $7941: $52
	ld   e, l                                        ; $7942: $5d
	ld   l, d                                        ; $7943: $6a
	ld   a, [$000d]                                  ; $7944: $fa $0d $00
	ld   a, [bc]                                     ; $7947: $0a
	ld   b, $bd                                      ; $7948: $06 $bd
	dec  c                                           ; $794a: $0d
	inc  e                                           ; $794b: $1c
	ld   b, $02                                      ; $794c: $06 $02
	ld   [bc], a                                     ; $794e: $02
	ld   bc, $6803                                   ; $794f: $01 $03 $68
	ld   a, l                                        ; $7952: $7d
	inc  bc                                          ; $7953: $03
	ld   c, d                                        ; $7954: $4a
	ld   [bc], a                                     ; $7955: $02
	ld   [hl], c                                     ; $7956: $71
	ld   [hl], e                                     ; $7957: $73
	ld   e, e                                        ; $7958: $5b
	ld   [hl], l                                     ; $7959: $75
	dec  c                                           ; $795a: $0d
	inc  b                                           ; $795b: $04
	dec  bc                                          ; $795c: $0b
	inc  bc                                          ; $795d: $03
	ret  nc                                          ; $795e: $d0

	and  b                                           ; $795f: $a0
	ld   [bc], a                                     ; $7960: $02
	ld   c, b                                        ; $7961: $48
	ld   [bc], a                                     ; $7962: $02
	sub  c                                           ; $7963: $91
	ld   l, [hl]                                     ; $7964: $6e
	ld   a, [$000d]                                  ; $7965: $fa $0d $00
	ld   a, [bc]                                     ; $7968: $0a
	inc  d                                           ; $7969: $14
	dec  d                                           ; $796a: $15
	ld   bc, $0519                                   ; $796b: $01 $19 $05
	inc  bc                                          ; $796e: $03
	ld   [bc], a                                     ; $796f: $02
	ld   h, [hl]                                     ; $7970: $66
	and  b                                           ; $7971: $a0
	inc  bc                                          ; $7972: $03
	sub  e                                           ; $7973: $93
	sbc  b                                           ; $7974: $98
	ld   [bc], a                                     ; $7975: $02
	inc  [hl]                                        ; $7976: $34
	inc  bc                                          ; $7977: $03
	ret  nc                                          ; $7978: $d0

	ld   h, b                                        ; $7979: $60
	sbc  b                                           ; $797a: $98
	nop                                              ; $797b: $00
	nop                                              ; $797c: $00
	inc  bc                                          ; $797d: $03
	ret  c                                           ; $797e: $d8

	and  b                                           ; $797f: $a0
	inc  bc                                          ; $7980: $03
	sub  e                                           ; $7981: $93
	sbc  b                                           ; $7982: $98
	inc  bc                                          ; $7983: $03
	ld   c, d                                        ; $7984: $4a
	ld   [bc], a                                     ; $7985: $02
	ld   [hl], c                                     ; $7986: $71
	ld   [hl], e                                     ; $7987: $73
	ld   e, e                                        ; $7988: $5b
	nop                                              ; $7989: $00
	ld   bc, $6602                                   ; $798a: $01 $02 $66
	and  b                                           ; $798d: $a0
	inc  bc                                          ; $798e: $03
	sub  e                                           ; $798f: $93
	sbc  c                                           ; $7990: $99
	nop                                              ; $7991: $00
	ld   [bc], a                                     ; $7992: $02
	rlca                                             ; $7993: $07
	inc  hl                                          ; $7994: $23
	ld   c, $02                                      ; $7995: $0e $02
	inc  bc                                          ; $7997: $03
	ld   bc, $2000                                   ; $7998: $01 $00 $20
	nop                                              ; $799b: $00
	rlca                                             ; $799c: $07
	adc  l                                           ; $799d: $8d
	ld   c, $02                                      ; $799e: $0e $02
	inc  bc                                          ; $79a0: $03
	ld   bc, $2001                                   ; $79a1: $01 $01 $20
	nop                                              ; $79a4: $00
	rlca                                             ; $79a5: $07
	ld   e, l                                        ; $79a6: $5d
	ld   c, $02                                      ; $79a7: $0e $02
	inc  bc                                          ; $79a9: $03
	ld   bc, $2002                                   ; $79aa: $01 $02 $20
	nop                                              ; $79ad: $00
	ld   b, $0e                                      ; $79ae: $06 $0e
	rrca                                             ; $79b0: $0f
	rrca                                             ; $79b1: $0f
	nop                                              ; $79b2: $00
	ld   bc, $0201                                   ; $79b3: $01 $01 $02
	ld   h, [hl]                                     ; $79b6: $66
	and  b                                           ; $79b7: $a0
	inc  bc                                          ; $79b8: $03
	sub  e                                           ; $79b9: $93
	ld   [hl], c                                     ; $79ba: $71
	ld   [hl], h                                     ; $79bb: $74
	ld   a, [$020d]                                  ; $79bc: $fa $0d $02
	inc  [hl]                                        ; $79bf: $34
	inc  bc                                          ; $79c0: $03
	ret  nc                                          ; $79c1: $d0

	ld   h, b                                        ; $79c2: $60
	sbc  b                                           ; $79c3: $98
	ld   l, [hl]                                     ; $79c4: $6e
	ld   a, [$0dfa]                                  ; $79c5: $fa $fa $0d
	nop                                              ; $79c8: $00
	ld   a, [bc]                                     ; $79c9: $0a
	inc  e                                           ; $79ca: $1c
	ld   b, $00                                      ; $79cb: $06 $00
	nop                                              ; $79cd: $00
	ld   bc, $7158                                   ; $79ce: $01 $58 $71
	halt                                             ; $79d1: $76
	ld   a, [$520d]                                  ; $79d2: $fa $0d $52
	ld   d, d                                        ; $79d5: $52
	ld   [bc], a                                     ; $79d6: $02
	ld   c, b                                        ; $79d7: $48
	ld   [bc], a                                     ; $79d8: $02
	sub  c                                           ; $79d9: $91
	ld   l, [hl]                                     ; $79da: $6e
	ld   a, [$000d]                                  ; $79db: $fa $0d $00
	ld   a, [bc]                                     ; $79de: $0a
	dec  b                                           ; $79df: $05
	ld   b, b                                        ; $79e0: $40
	rst  $38                                         ; $79e1: $ff
	inc  bc                                          ; $79e2: $03
	rst  $38                                         ; $79e3: $ff
	ld   bc, $2801                                   ; $79e4: $01 $01 $28
	nop                                              ; $79e7: $00
	ld   b, $60                                      ; $79e8: $06 $60
	rrca                                             ; $79ea: $0f
	rrca                                             ; $79eb: $0f
	nop                                              ; $79ec: $00
	ld   bc, $0201                                   ; $79ed: $01 $01 $02
	ld   h, [hl]                                     ; $79f0: $66
	and  b                                           ; $79f1: $a0
	inc  bc                                          ; $79f2: $03
	sub  e                                           ; $79f3: $93
	sbc  c                                           ; $79f4: $99
	ld   a, [$0dfa]                                  ; $79f5: $fa $fa $0d
	nop                                              ; $79f8: $00
	ld   a, [bc]                                     ; $79f9: $0a
	inc  e                                           ; $79fa: $1c
	ld   b, $01                                      ; $79fb: $06 $01
	ld   bc, $9601                                   ; $79fd: $01 $01 $96
	ld   e, a                                        ; $7a00: $5f
	ld   [hl], h                                     ; $7a01: $74
	ld   a, [hl]                                     ; $7a02: $7e
	ld   e, c                                        ; $7a03: $59
	sbc  b                                           ; $7a04: $98
	ld   d, d                                        ; $7a05: $52
	ld   a, b                                        ; $7a06: $78
	ld   d, d                                        ; $7a07: $52
	ld   [hl], l                                     ; $7a08: $75
	dec  c                                           ; $7a09: $0d
	ld   [bc], a                                     ; $7a0a: $02
	ld   c, b                                        ; $7a0b: $48
	ld   [bc], a                                     ; $7a0c: $02
	sub  c                                           ; $7a0d: $91
	sub  b                                           ; $7a0e: $90
	ld   h, l                                        ; $7a0f: $65
	ld   [hl], h                                     ; $7a10: $74
	ld   h, c                                        ; $7a11: $61
	ld   d, d                                        ; $7a12: $52
	sub  [hl]                                        ; $7a13: $96
	ld   a, [$000d]                                  ; $7a14: $fa $0d $00
	ld   a, [bc]                                     ; $7a17: $0a
	ld   b, $60                                      ; $7a18: $06 $60
	rrca                                             ; $7a1a: $0f
	rrca                                             ; $7a1b: $0f
	nop                                              ; $7a1c: $00
	ld   bc, $0301                                   ; $7a1d: $01 $01 $03
	ret  c                                           ; $7a20: $d8

	and  b                                           ; $7a21: $a0
	inc  bc                                          ; $7a22: $03
	sub  e                                           ; $7a23: $93
	ld   [hl], c                                     ; $7a24: $71
	ld   [hl], h                                     ; $7a25: $74
	sbc  [hl]                                        ; $7a26: $9e
	inc  bc                                          ; $7a27: $03
	ld   c, d                                        ; $7a28: $4a
	ld   [bc], a                                     ; $7a29: $02
	ld   [hl], c                                     ; $7a2a: $71
	ld   [hl], e                                     ; $7a2b: $73
	ld   e, e                                        ; $7a2c: $5b
	ld   a, [$000d]                                  ; $7a2d: $fa $0d $00
	ld   a, [bc]                                     ; $7a30: $0a
	inc  d                                           ; $7a31: $14
	rlca                                             ; $7a32: $07
	ld   bc, $b101                                   ; $7a33: $01 $01 $b1
	call nz, $ffff                                   ; $7a36: $c4 $ff $ff
	dec  c                                           ; $7a39: $0d
	ld   d, d                                        ; $7a3a: $52
	sbc  [hl]                                        ; $7a3b: $9e
	inc  bc                                          ; $7a3c: $03
	ld   h, $5a                                      ; $7a3d: $26 $5a
	rst  $38                                         ; $7a3f: $ff
	rst  $38                                         ; $7a40: $ff
	dec  c                                           ; $7a41: $0d
	nop                                              ; $7a42: $00
	ld   a, [bc]                                     ; $7a43: $0a
	rlca                                             ; $7a44: $07
	sub  b                                           ; $7a45: $90
	dec  bc                                          ; $7a46: $0b
	inc  bc                                          ; $7a47: $03
	jr   nz, jr_060_7a4b                             ; $7a48: $20 $01

	ld   a, [bc]                                     ; $7a4a: $0a

jr_060_7a4b:
	inc  hl                                          ; $7a4b: $23
	nop                                              ; $7a4c: $00
	ld   sp, $2040                                   ; $7a4d: $31 $40 $20
	inc  bc                                          ; $7a50: $03
	jr   nz, jr_060_7a54                             ; $7a51: $20 $01

	ld   a, [bc]                                     ; $7a53: $0a

jr_060_7a54:
	add  hl, hl                                      ; $7a54: $29
	nop                                              ; $7a55: $00
	inc  e                                           ; $7a56: $1c
	ld   b, $05                                      ; $7a57: $06 $05
	dec  b                                           ; $7a59: $05
	ld   bc, $5258                                   ; $7a5a: $01 $58 $52
	ld   e, b                                        ; $7a5d: $58
	ld   d, d                                        ; $7a5e: $52
	sbc  a                                           ; $7a5f: $9f
	inc  b                                           ; $7a60: $04
	dec  bc                                          ; $7a61: $0b
	inc  bc                                          ; $7a62: $03
	ret  nc                                          ; $7a63: $d0

	and  b                                           ; $7a64: $a0
	dec  b                                           ; $7a65: $05
	call Call_060_6d71                               ; $7a66: $cd $71 $6d
	and  c                                           ; $7a69: $a1
	dec  c                                           ; $7a6a: $0d
	ld   l, [hl]                                     ; $7a6b: $6e
	ld   e, c                                        ; $7a6c: $59
	sub  a                                           ; $7a6d: $97
	ld   [bc], a                                     ; $7a6e: $02
	ld   h, [hl]                                     ; $7a6f: $66
	ld   [bc], a                                     ; $7a70: $02
	xor  h                                           ; $7a71: $ac
	and  b                                           ; $7a72: $a0
	inc  bc                                          ; $7a73: $03
	sub  e                                           ; $7a74: $93
	ld   [hl], c                                     ; $7a75: $71
	ld   [hl], h                                     ; $7a76: $74
	dec  c                                           ; $7a77: $0d
	nop                                              ; $7a78: $00
	inc  e                                           ; $7a79: $1c
	ld   b, $02                                      ; $7a7a: $06 $02
	ld   [bc], a                                     ; $7a7c: $02
	ld   bc, $656b                                   ; $7a7d: $01 $6b $65
	ld   [hl], h                                     ; $7a80: $74
	sbc  [hl]                                        ; $7a81: $9e
	ld   d, b                                        ; $7a82: $50
	ld   l, l                                        ; $7a83: $6d
	ld   d, d                                        ; $7a84: $52
	ld   a, c                                        ; $7a85: $79
	ld   [bc], a                                     ; $7a86: $02
	ld   c, b                                        ; $7a87: $48
	ld   [bc], a                                     ; $7a88: $02
	sub  c                                           ; $7a89: $91
	ld   l, [hl]                                     ; $7a8a: $6e
	sbc  a                                           ; $7a8b: $9f
	dec  c                                           ; $7a8c: $0d
	nop                                              ; $7a8d: $00
	ld   a, [bc]                                     ; $7a8e: $0a
	ld   bc, $fb02                                   ; $7a8f: $01 $02 $fb
	ld   e, a                                        ; $7a92: $5f
	sbc  c                                           ; $7a93: $99
	ld   l, d                                        ; $7a94: $6a
	ld   a, [$000d]                                  ; $7a95: $fa $0d $00
	ld   a, [bc]                                     ; $7a98: $0a
	ld   b, $60                                      ; $7a99: $06 $60
	rrca                                             ; $7a9b: $0f
	rrca                                             ; $7a9c: $0f
	nop                                              ; $7a9d: $00
	ld   bc, $0714                                   ; $7a9e: $01 $14 $07
	ld   bc, $b301                                   ; $7aa1: $01 $01 $b3
	call c, $ffc4                                    ; $7aa4: $dc $c4 $ff
	rst  $38                                         ; $7aa7: $ff
	dec  c                                           ; $7aa8: $0d
	ld   d, d                                        ; $7aa9: $52
	sbc  [hl]                                        ; $7aaa: $9e
	inc  bc                                          ; $7aab: $03
	ld   h, $5a                                      ; $7aac: $26 $5a
	rst  $38                                         ; $7aae: $ff
	rst  $38                                         ; $7aaf: $ff
	dec  c                                           ; $7ab0: $0d
	nop                                              ; $7ab1: $00
	ld   a, [bc]                                     ; $7ab2: $0a
	rlca                                             ; $7ab3: $07
	sub  b                                           ; $7ab4: $90
	dec  bc                                          ; $7ab5: $0b
	inc  bc                                          ; $7ab6: $03
	jr   nz, jr_060_7aba                             ; $7ab7: $20 $01

	ld   a, [bc]                                     ; $7ab9: $0a

jr_060_7aba:
	inc  hl                                          ; $7aba: $23
	nop                                              ; $7abb: $00
	ld   sp, $2040                                   ; $7abc: $31 $40 $20
	inc  bc                                          ; $7abf: $03
	jr   nz, jr_060_7ac3                             ; $7ac0: $20 $01

	ld   a, [bc]                                     ; $7ac2: $0a

jr_060_7ac3:
	add  hl, hl                                      ; $7ac3: $29
	nop                                              ; $7ac4: $00
	inc  e                                           ; $7ac5: $1c
	ld   b, $05                                      ; $7ac6: $06 $05
	dec  b                                           ; $7ac8: $05
	ld   bc, $acd1                                   ; $7ac9: $01 $d1 $ac
	ld   a, [GetRandomNumInPreSpecifiedRange]                                  ; $7acc: $fa $10 $0d
	db   $dd                                         ; $7acf: $dd
	or   d                                           ; $7ad0: $b2
	ld   [hl], c                                     ; $7ad1: $71
	halt                                             ; $7ad2: $76
	ld   h, a                                        ; $7ad3: $67
	and  c                                           ; $7ad4: $a1
	ld   h, [hl]                                     ; $7ad5: $66
	sub  c                                           ; $7ad6: $91
	ld   a, e                                        ; $7ad7: $7b
	ld   d, l                                        ; $7ad8: $55
	sub  [hl]                                        ; $7ad9: $96
	sbc  a                                           ; $7ada: $9f
	dec  c                                           ; $7adb: $0d
	nop                                              ; $7adc: $00
	inc  e                                           ; $7add: $1c
	ld   b, $02                                      ; $7ade: $06 $02
	ld   [bc], a                                     ; $7ae0: $02
	ld   bc, $fb02                                   ; $7ae1: $01 $02 $fb
	ld   e, a                                        ; $7ae4: $5f
	sbc  c                                           ; $7ae5: $99
	ld   l, d                                        ; $7ae6: $6a
	ld   a, [$000d]                                  ; $7ae7: $fa $0d $00
	ld   a, [bc]                                     ; $7aea: $0a
	ld   b, $60                                      ; $7aeb: $06 $60
	rrca                                             ; $7aed: $0f
	inc  e                                           ; $7aee: $1c
	ld   b, $02                                      ; $7aef: $06 $02
	ld   [bc], a                                     ; $7af1: $02
	ld   bc, $6803                                   ; $7af2: $01 $03 $68
	ld   a, l                                        ; $7af5: $7d
	sbc  [hl]                                        ; $7af6: $9e
	dec  b                                           ; $7af7: $05
	ld   h, l                                        ; $7af8: $65
	ld   [bc], a                                     ; $7af9: $02
	ld   [hl], c                                     ; $7afa: $71
	ld   [hl], l                                     ; $7afb: $75
	inc  bc                                          ; $7afc: $03
	ld   h, l                                        ; $7afd: $65
	inc  bc                                          ; $7afe: $03
	ret  nc                                          ; $7aff: $d0

	add  [hl]                                        ; $7b00: $86
	ld   [bc], a                                     ; $7b01: $02
	ld   c, b                                        ; $7b02: $48
	ld   [bc], a                                     ; $7b03: $02
	sub  c                                           ; $7b04: $91
	ld   l, [hl]                                     ; $7b05: $6e
	ld   a, [$000d]                                  ; $7b06: $fa $0d $00
	ld   a, [bc]                                     ; $7b09: $0a
	inc  d                                           ; $7b0a: $14
	dec  d                                           ; $7b0b: $15
	ld   bc, $0519                                   ; $7b0c: $01 $19 $05
	inc  bc                                          ; $7b0f: $03
	ld   h, l                                        ; $7b10: $65
	sub  c                                           ; $7b11: $91
	ld   e, d                                        ; $7b12: $5a
	and  c                                           ; $7b13: $a1
	ld   [hl], l                                     ; $7b14: $75
	ld   [bc], a                                     ; $7b15: $02
	inc  [hl]                                        ; $7b16: $34
	inc  bc                                          ; $7b17: $03
	ret  nc                                          ; $7b18: $d0

	ld   h, b                                        ; $7b19: $60
	sbc  b                                           ; $7b1a: $98
	nop                                              ; $7b1b: $00
	nop                                              ; $7b1c: $00
	ld   h, l                                        ; $7b1d: $65
	sub  c                                           ; $7b1e: $91
	ld   e, d                                        ; $7b1f: $5a
	and  c                                           ; $7b20: $a1
	ld   [hl], l                                     ; $7b21: $75
	ld   e, c                                        ; $7b22: $59
	sbc  l                                           ; $7b23: $9d
	ld   h, a                                        ; $7b24: $67
	nop                                              ; $7b25: $00
	ld   bc, $e5b9                                   ; $7b26: $01 $b9 $e5
	push af                                          ; $7b29: $f5
	ret  c                                           ; $7b2a: $d8

	ld   h, l                                        ; $7b2b: $65
	ld   [hl], h                                     ; $7b2c: $74
	inc  bc                                          ; $7b2d: $03
	ld   h, l                                        ; $7b2e: $65
	inc  bc                                          ; $7b2f: $03
	ret  nc                                          ; $7b30: $d0

	ld   h, b                                        ; $7b31: $60
	sbc  b                                           ; $7b32: $98
	nop                                              ; $7b33: $00
	ld   [bc], a                                     ; $7b34: $02
	rlca                                             ; $7b35: $07
	push bc                                          ; $7b36: $c5
	rrca                                             ; $7b37: $0f
	ld   [bc], a                                     ; $7b38: $02
	inc  bc                                          ; $7b39: $03
	ld   bc, $2000                                   ; $7b3a: $01 $00 $20
	nop                                              ; $7b3d: $00
	rlca                                             ; $7b3e: $07
	db   $fd                                         ; $7b3f: $fd
	rrca                                             ; $7b40: $0f
	ld   [bc], a                                     ; $7b41: $02
	inc  bc                                          ; $7b42: $03
	ld   bc, $2001                                   ; $7b43: $01 $01 $20
	nop                                              ; $7b46: $00
	rlca                                             ; $7b47: $07
	inc  hl                                          ; $7b48: $23
	db   $10                                         ; $7b49: $10
	ld   [bc], a                                     ; $7b4a: $02
	inc  bc                                          ; $7b4b: $03
	ld   bc, $2002                                   ; $7b4c: $01 $02 $20
	nop                                              ; $7b4f: $00
	ld   b, $8b                                      ; $7b50: $06 $8b
	db   $10                                         ; $7b52: $10
	rrca                                             ; $7b53: $0f
	nop                                              ; $7b54: $00
	ld   bc, $6501                                   ; $7b55: $01 $01 $65
	sub  c                                           ; $7b58: $91
	ld   e, d                                        ; $7b59: $5a
	and  c                                           ; $7b5a: $a1
	ld   [hl], l                                     ; $7b5b: $75
	sbc  [hl]                                        ; $7b5c: $9e
	ld   [bc], a                                     ; $7b5d: $02
	inc  [hl]                                        ; $7b5e: $34
	inc  bc                                          ; $7b5f: $03
	ret  nc                                          ; $7b60: $d0

	ld   h, b                                        ; $7b61: $60
	sbc  b                                           ; $7b62: $98
	ld   l, [hl]                                     ; $7b63: $6e
	ld   a, [$000d]                                  ; $7b64: $fa $0d $00
	ld   a, [bc]                                     ; $7b67: $0a
	inc  e                                           ; $7b68: $1c
	ld   b, $00                                      ; $7b69: $06 $00
	nop                                              ; $7b6b: $00
	ld   bc, $7158                                   ; $7b6c: $01 $58 $71
	halt                                             ; $7b6f: $76
	ld   a, [$500d]                                  ; $7b70: $fa $0d $50
	add  h                                           ; $7b73: $84
	ld   a, e                                        ; $7b74: $7b
	ld   d, l                                        ; $7b75: $55
	sbc  [hl]                                        ; $7b76: $9e
	ld   d, b                                        ; $7b77: $50
	add  h                                           ; $7b78: $84
	ld   a, e                                        ; $7b79: $7b
	ld   d, l                                        ; $7b7a: $55
	rst  $38                                         ; $7b7b: $ff
	dec  c                                           ; $7b7c: $0d
	nop                                              ; $7b7d: $00
	ld   a, [bc]                                     ; $7b7e: $0a
	dec  b                                           ; $7b7f: $05
	ld   b, b                                        ; $7b80: $40
	rst  $38                                         ; $7b81: $ff
	inc  bc                                          ; $7b82: $03
	rst  $38                                         ; $7b83: $ff
	ld   bc, $2801                                   ; $7b84: $01 $01 $28
	nop                                              ; $7b87: $00
	ld   b, $d8                                      ; $7b88: $06 $d8
	db   $10                                         ; $7b8a: $10
	rrca                                             ; $7b8b: $0f
	nop                                              ; $7b8c: $00
	ld   bc, $6501                                   ; $7b8d: $01 $01 $65
	sub  c                                           ; $7b90: $91
	ld   e, d                                        ; $7b91: $5a
	and  c                                           ; $7b92: $a1
	ld   [hl], l                                     ; $7b93: $75
	ld   e, c                                        ; $7b94: $59
	sbc  l                                           ; $7b95: $9d
	ld   h, a                                        ; $7b96: $67
	ld   l, h                                        ; $7b97: $6c
	ld   a, [$000d]                                  ; $7b98: $fa $0d $00
	ld   a, [bc]                                     ; $7b9b: $0a
	inc  e                                           ; $7b9c: $1c
	ld   b, $01                                      ; $7b9d: $06 $01
	ld   bc, $5801                                   ; $7b9f: $01 $01 $58
	ld   [hl], c                                     ; $7ba2: $71
	ld   a, [$590d]                                  ; $7ba3: $fa $0d $59
	sbc  l                                           ; $7ba6: $9d
	ld   h, l                                        ; $7ba7: $65
	ld   l, l                                        ; $7ba8: $6d
	ld   a, b                                        ; $7ba9: $78
	ld   a, [$000d]                                  ; $7baa: $fa $0d $00
	ld   a, [bc]                                     ; $7bad: $0a
	ld   b, $d8                                      ; $7bae: $06 $d8
	db   $10                                         ; $7bb0: $10
	rrca                                             ; $7bb1: $0f
	nop                                              ; $7bb2: $00
	ld   bc, $b901                                   ; $7bb3: $01 $01 $b9
	push hl                                          ; $7bb6: $e5
	push af                                          ; $7bb7: $f5
	ret  c                                           ; $7bb8: $d8

	ld   h, l                                        ; $7bb9: $65
	ld   [hl], h                                     ; $7bba: $74
	inc  bc                                          ; $7bbb: $03
	ld   h, l                                        ; $7bbc: $65
	inc  bc                                          ; $7bbd: $03
	ret  nc                                          ; $7bbe: $d0

	ld   h, b                                        ; $7bbf: $60
	sbc  b                                           ; $7bc0: $98
	ld   a, [$000d]                                  ; $7bc1: $fa $0d $00
	ld   a, [bc]                                     ; $7bc4: $0a
	inc  d                                           ; $7bc5: $14
	rlca                                             ; $7bc6: $07
	ld   bc, $a501                                   ; $7bc7: $01 $01 $a5
	call nz, $fbc0                                   ; $7bca: $c4 $c0 $fb
	ei                                               ; $7bcd: $fb
	ei                                               ; $7bce: $fb
	dec  c                                           ; $7bcf: $0d
	nop                                              ; $7bd0: $00
	ld   a, [bc]                                     ; $7bd1: $0a
	rlca                                             ; $7bd2: $07
	sub  b                                           ; $7bd3: $90
	dec  bc                                          ; $7bd4: $0b
	inc  bc                                          ; $7bd5: $03
	jr   nz, jr_060_7bd9                             ; $7bd6: $20 $01

	ld   a, [bc]                                     ; $7bd8: $0a

jr_060_7bd9:
	inc  hl                                          ; $7bd9: $23
	nop                                              ; $7bda: $00
	ld   sp, $2040                                   ; $7bdb: $31 $40 $20
	inc  bc                                          ; $7bde: $03
	jr   nz, jr_060_7be2                             ; $7bdf: $20 $01

	ld   a, [bc]                                     ; $7be1: $0a

jr_060_7be2:
	add  hl, hl                                      ; $7be2: $29
	nop                                              ; $7be3: $00
	inc  e                                           ; $7be4: $1c
	ld   b, $05                                      ; $7be5: $06 $05
	dec  b                                           ; $7be7: $05
	ld   bc, $5258                                   ; $7be8: $01 $58 $52
	ld   e, b                                        ; $7beb: $58
	ld   d, d                                        ; $7bec: $52
	sbc  a                                           ; $7bed: $9f
	inc  bc                                          ; $7bee: $03
	ld   h, l                                        ; $7bef: $65
	inc  bc                                          ; $7bf0: $03
	ret  nc                                          ; $7bf1: $d0

	and  b                                           ; $7bf2: $a0
	ld   a, e                                        ; $7bf3: $7b
	sub  a                                           ; $7bf4: $97
	ld   [hl], c                                     ; $7bf5: $71
	ld   l, l                                        ; $7bf6: $6d
	ld   a, h                                        ; $7bf7: $7c
	ld   a, c                                        ; $7bf8: $79
	dec  c                                           ; $7bf9: $0d
	cp   c                                           ; $7bfa: $b9
	push hl                                          ; $7bfb: $e5
	push af                                          ; $7bfc: $f5
	ret  c                                           ; $7bfd: $d8

	ld   h, l                                        ; $7bfe: $65
	ld   [hl], h                                     ; $7bff: $74
	ld   [hl], a                                     ; $7c00: $77
	ld   d, h                                        ; $7c01: $54
	ld   h, a                                        ; $7c02: $67
	and  c                                           ; $7c03: $a1
	ld   l, [hl]                                     ; $7c04: $6e
	ld   sp, hl                                      ; $7c05: $f9
	dec  c                                           ; $7c06: $0d
	nop                                              ; $7c07: $00
	inc  e                                           ; $7c08: $1c
	ld   b, $02                                      ; $7c09: $06 $02
	ld   [bc], a                                     ; $7c0b: $02
	ld   bc, $fb02                                   ; $7c0c: $01 $02 $fb
	ld   e, a                                        ; $7c0f: $5f
	sbc  c                                           ; $7c10: $99
	ld   l, d                                        ; $7c11: $6a
	ld   a, [$000d]                                  ; $7c12: $fa $0d $00
	ld   a, [bc]                                     ; $7c15: $0a
	ld   b, $d8                                      ; $7c16: $06 $d8
	db   $10                                         ; $7c18: $10
	rrca                                             ; $7c19: $0f
	nop                                              ; $7c1a: $00
	ld   bc, $0714                                   ; $7c1b: $01 $14 $07
	ld   bc, $b101                                   ; $7c1e: $01 $01 $b1
	pop  af                                          ; $7c21: $f1
	db   $fc                                         ; $7c22: $fc
	db   $fc                                         ; $7c23: $fc
	db   $fc                                         ; $7c24: $fc
	push af                                          ; $7c25: $f5
	rst  $38                                         ; $7c26: $ff
	rst  $38                                         ; $7c27: $ff
	dec  c                                           ; $7c28: $0d
	nop                                              ; $7c29: $00
	ld   a, [bc]                                     ; $7c2a: $0a
	rlca                                             ; $7c2b: $07
	sub  b                                           ; $7c2c: $90
	dec  bc                                          ; $7c2d: $0b
	inc  bc                                          ; $7c2e: $03
	jr   nz, jr_060_7c32                             ; $7c2f: $20 $01

	ld   a, [bc]                                     ; $7c31: $0a

jr_060_7c32:
	inc  hl                                          ; $7c32: $23
	nop                                              ; $7c33: $00
	ld   sp, $2040                                   ; $7c34: $31 $40 $20
	inc  bc                                          ; $7c37: $03
	jr   nz, jr_060_7c3b                             ; $7c38: $20 $01

	ld   a, [bc]                                     ; $7c3a: $0a

jr_060_7c3b:
	add  hl, hl                                      ; $7c3b: $29
	nop                                              ; $7c3c: $00
	inc  e                                           ; $7c3d: $1c
	ld   b, $05                                      ; $7c3e: $06 $05
	dec  b                                           ; $7c40: $05
	ld   bc, $acd1                                   ; $7c41: $01 $d1 $ac
	ld   a, [GetRandomNumInPreSpecifiedRange]                                  ; $7c44: $fa $10 $0d
	db   $dd                                         ; $7c47: $dd
	or   d                                           ; $7c48: $b2
	ld   [hl], c                                     ; $7c49: $71
	halt                                             ; $7c4a: $76
	ld   h, a                                        ; $7c4b: $67
	and  c                                           ; $7c4c: $a1
	ld   h, [hl]                                     ; $7c4d: $66
	sub  c                                           ; $7c4e: $91
	ld   a, e                                        ; $7c4f: $7b
	ld   d, l                                        ; $7c50: $55
	sub  [hl]                                        ; $7c51: $96
	sbc  a                                           ; $7c52: $9f
	dec  c                                           ; $7c53: $0d
	nop                                              ; $7c54: $00
	inc  e                                           ; $7c55: $1c
	ld   b, $02                                      ; $7c56: $06 $02
	ld   [bc], a                                     ; $7c58: $02
	ld   bc, $fb02                                   ; $7c59: $01 $02 $fb
	ld   e, a                                        ; $7c5c: $5f
	sbc  c                                           ; $7c5d: $99
	ld   l, d                                        ; $7c5e: $6a
	ld   a, [$000d]                                  ; $7c5f: $fa $0d $00
	ld   a, [bc]                                     ; $7c62: $0a
	ld   b, $d8                                      ; $7c63: $06 $d8
	db   $10                                         ; $7c65: $10
	inc  e                                           ; $7c66: $1c
	ld   b, $02                                      ; $7c67: $06 $02
	ld   [bc], a                                     ; $7c69: $02
	ld   bc, $6503                                   ; $7c6a: $01 $03 $65
	inc  bc                                          ; $7c6d: $03
	ret  nc                                          ; $7c6e: $d0

	sub  $a8                                         ; $7c6f: $d6 $a8
	and  l                                           ; $7c71: $a5
	push af                                          ; $7c72: $f5
	ret                                              ; $7c73: $c9


	ld   a, h                                        ; $7c74: $7c
	dec  c                                           ; $7c75: $0d

Call_060_7c76:
	ld   [bc], a                                     ; $7c76: $02
	inc  [hl]                                        ; $7c77: $34
	inc  bc                                          ; $7c78: $03
	ret  nc                                          ; $7c79: $d0

	ld   h, b                                        ; $7c7a: $60
	sbc  b                                           ; $7c7b: $98
	ld   l, [hl]                                     ; $7c7c: $6e
	ld   a, [$000d]                                  ; $7c7d: $fa $0d $00
	ld   a, [bc]                                     ; $7c80: $0a
	inc  d                                           ; $7c81: $14
	dec  d                                           ; $7c82: $15
	ld   bc, $0519                                   ; $7c83: $01 $19 $05
	inc  bc                                          ; $7c86: $03
	inc  bc                                          ; $7c87: $03
	ld   a, l                                        ; $7c88: $7d
	ld   [hl], l                                     ; $7c89: $75
	ld   b, $17                                      ; $7c8a: $06 $17
	ld   d, d                                        ; $7c8c: $52
	dec  b                                           ; $7c8d: $05
	ld   h, l                                        ; $7c8e: $65
	ld   [bc], a                                     ; $7c8f: $02
	ld   [hl], c                                     ; $7c90: $71
	nop                                              ; $7c91: $00
	nop                                              ; $7c92: $00
	inc  bc                                          ; $7c93: $03
	ld   a, l                                        ; $7c94: $7d
	ld   [hl], l                                     ; $7c95: $75
	ld   b, $17                                      ; $7c96: $06 $17
	ld   d, d                                        ; $7c98: $52
	ld   a, h                                        ; $7c99: $7c
	ld   e, a                                        ; $7c9a: $5f
	sbc  c                                           ; $7c9b: $99
	nop                                              ; $7c9c: $00
	ld   bc, $6503                                   ; $7c9d: $01 $03 $65
	inc  bc                                          ; $7ca0: $03
	ret  nc                                          ; $7ca1: $d0

	ld   h, b                                        ; $7ca2: $60
	sbc  b                                           ; $7ca3: $98
	nop                                              ; $7ca4: $00
	ld   [bc], a                                     ; $7ca5: $02
	rlca                                             ; $7ca6: $07
	ld   [hl], $11                                   ; $7ca7: $36 $11
	ld   [bc], a                                     ; $7ca9: $02
	inc  bc                                          ; $7caa: $03
	ld   bc, $2000                                   ; $7cab: $01 $00 $20
	nop                                              ; $7cae: $00
	rlca                                             ; $7caf: $07
	ld   h, h                                        ; $7cb0: $64
	ld   de, $0302                                   ; $7cb1: $11 $02 $03
	ld   bc, $2001                                   ; $7cb4: $01 $01 $20
	nop                                              ; $7cb7: $00
	rlca                                             ; $7cb8: $07
	adc  e                                           ; $7cb9: $8b
	ld   de, $0302                                   ; $7cba: $11 $02 $03
	ld   bc, $2002                                   ; $7cbd: $01 $02 $20
	nop                                              ; $7cc0: $00
	ld   b, $e9                                      ; $7cc1: $06 $e9
	ld   de, $000f                                   ; $7cc3: $11 $0f $00
	ld   bc, $0301                                   ; $7cc6: $01 $01 $03
	ld   a, l                                        ; $7cc9: $7d
	ld   [hl], l                                     ; $7cca: $75
	ld   b, $17                                      ; $7ccb: $06 $17
	ld   [hl], c                                     ; $7ccd: $71
	ld   [hl], h                                     ; $7cce: $74
	sbc  [hl]                                        ; $7ccf: $9e
	dec  b                                           ; $7cd0: $05
	ld   h, l                                        ; $7cd1: $65
	ld   [bc], a                                     ; $7cd2: $02
	ld   [hl], c                                     ; $7cd3: $71
	ld   l, [hl]                                     ; $7cd4: $6e
	ld   a, [$000d]                                  ; $7cd5: $fa $0d $00
	ld   a, [bc]                                     ; $7cd8: $0a
	inc  e                                           ; $7cd9: $1c
	ld   b, $00                                      ; $7cda: $06 $00
	nop                                              ; $7cdc: $00
	ld   bc, $9992                                   ; $7cdd: $01 $92 $99
	ld   a, b                                        ; $7ce0: $78
	ld   [hl], c                                     ; $7ce1: $71
	ld   a, [$000d]                                  ; $7ce2: $fa $0d $00
	ld   a, [bc]                                     ; $7ce5: $0a
	dec  b                                           ; $7ce6: $05
	ld   b, b                                        ; $7ce7: $40
	rst  $38                                         ; $7ce8: $ff
	inc  bc                                          ; $7ce9: $03
	rst  $38                                         ; $7cea: $ff
	ld   bc, $2801                                   ; $7ceb: $01 $01 $28
	nop                                              ; $7cee: $00
	ld   b, $39                                      ; $7cef: $06 $39
	ld   [de], a                                     ; $7cf1: $12
	rrca                                             ; $7cf2: $0f
	nop                                              ; $7cf3: $00
	ld   bc, $0301                                   ; $7cf4: $01 $01 $03
	ld   a, l                                        ; $7cf7: $7d
	ld   [hl], l                                     ; $7cf8: $75
	ld   b, $17                                      ; $7cf9: $06 $17
	ld   d, d                                        ; $7cfb: $52
	ld   a, h                                        ; $7cfc: $7c
	ld   e, a                                        ; $7cfd: $5f
	sbc  c                                           ; $7cfe: $99
	ld   a, [$000d]                                  ; $7cff: $fa $0d $00
	ld   a, [bc]                                     ; $7d02: $0a
	inc  e                                           ; $7d03: $1c
	ld   b, $01                                      ; $7d04: $06 $01
	ld   bc, $0201                                   ; $7d06: $01 $01 $02
	ld   c, b                                        ; $7d09: $48
	ld   [bc], a                                     ; $7d0a: $02
	sub  c                                           ; $7d0b: $91
	sub  b                                           ; $7d0c: $90
	ld   h, l                                        ; $7d0d: $65
	ld   [hl], h                                     ; $7d0e: $74
	ld   h, c                                        ; $7d0f: $61
	ld   d, d                                        ; $7d10: $52
	sub  [hl]                                        ; $7d11: $96
	ld   a, [$000d]                                  ; $7d12: $fa $0d $00
	ld   a, [bc]                                     ; $7d15: $0a
	ld   b, $39                                      ; $7d16: $06 $39
	ld   [de], a                                     ; $7d18: $12
	rrca                                             ; $7d19: $0f
	nop                                              ; $7d1a: $00
	ld   bc, $0301                                   ; $7d1b: $01 $01 $03
	ld   h, l                                        ; $7d1e: $65
	inc  bc                                          ; $7d1f: $03
	ret  nc                                          ; $7d20: $d0

	ld   h, b                                        ; $7d21: $60
	sbc  b                                           ; $7d22: $98
	ld   l, [hl]                                     ; $7d23: $6e
	ld   a, [$000d]                                  ; $7d24: $fa $0d $00
	ld   a, [bc]                                     ; $7d27: $0a
	inc  d                                           ; $7d28: $14
	rlca                                             ; $7d29: $07
	ld   bc, $a301                                   ; $7d2a: $01 $01 $a3
	and  l                                           ; $7d2d: $a5
	ret  nz                                          ; $7d2e: $c0

	ret  nz                                          ; $7d2f: $c0

	ret  nz                                          ; $7d30: $c0

	dec  c                                           ; $7d31: $0d
	nop                                              ; $7d32: $00
	ld   a, [bc]                                     ; $7d33: $0a
	rlca                                             ; $7d34: $07
	sub  b                                           ; $7d35: $90
	dec  bc                                          ; $7d36: $0b
	inc  bc                                          ; $7d37: $03
	jr   nz, jr_060_7d3b                             ; $7d38: $20 $01

	ld   a, [bc]                                     ; $7d3a: $0a

jr_060_7d3b:
	inc  hl                                          ; $7d3b: $23
	nop                                              ; $7d3c: $00
	ld   sp, $2040                                   ; $7d3d: $31 $40 $20
	inc  bc                                          ; $7d40: $03
	jr   nz, jr_060_7d44                             ; $7d41: $20 $01

	ld   a, [bc]                                     ; $7d43: $0a

jr_060_7d44:
	add  hl, hl                                      ; $7d44: $29
	nop                                              ; $7d45: $00
	inc  e                                           ; $7d46: $1c
	ld   b, $05                                      ; $7d47: $06 $05
	dec  b                                           ; $7d49: $05
	ld   bc, $5258                                   ; $7d4a: $01 $58 $52
	ld   e, b                                        ; $7d4d: $58
	ld   d, d                                        ; $7d4e: $52
	sbc  a                                           ; $7d4f: $9f
	ld   e, c                                        ; $7d50: $59
	sbc  l                                           ; $7d51: $9d
	ld   h, e                                        ; $7d52: $63
	ld   l, b                                        ; $7d53: $68
	ld   a, c                                        ; $7d54: $79
	dec  c                                           ; $7d55: $0d
	ld   [bc], a                                     ; $7d56: $02
	ld   c, b                                        ; $7d57: $48
	ld   [bc], a                                     ; $7d58: $02
	sub  c                                           ; $7d59: $91
	ld   l, [hl]                                     ; $7d5a: $6e
	ld   e, a                                        ; $7d5b: $5f
	ld   h, l                                        ; $7d5c: $65
	ld   [hl], h                                     ; $7d5d: $74
	sub  b                                           ; $7d5e: $90
	pop  bc                                          ; $7d5f: $c1
	db   $e3                                         ; $7d60: $e3
	ld   l, [hl]                                     ; $7d61: $6e
	ld   l, d                                        ; $7d62: $6a
	sbc  a                                           ; $7d63: $9f
	dec  c                                           ; $7d64: $0d

Jump_060_7d65:
	nop                                              ; $7d65: $00
	inc  e                                           ; $7d66: $1c
	ld   b, $02                                      ; $7d67: $06 $02
	ld   [bc], a                                     ; $7d69: $02
	ld   bc, $fb02                                   ; $7d6a: $01 $02 $fb
	ld   e, a                                        ; $7d6d: $5f
	sbc  c                                           ; $7d6e: $99
	ld   l, d                                        ; $7d6f: $6a
	ld   a, [$000d]                                  ; $7d70: $fa $0d $00
	ld   a, [bc]                                     ; $7d73: $0a
	ld   b, $39                                      ; $7d74: $06 $39
	ld   [de], a                                     ; $7d76: $12
	rrca                                             ; $7d77: $0f
	nop                                              ; $7d78: $00
	ld   bc, $0714                                   ; $7d79: $01 $14 $07
	ld   bc, $a301                                   ; $7d7c: $01 $01 $a3
	and  l                                           ; $7d7f: $a5
	ret  nz                                          ; $7d80: $c0

	ret  nz                                          ; $7d81: $c0

	ret  nz                                          ; $7d82: $c0

	ret  nz                                          ; $7d83: $c0

	ret  nz                                          ; $7d84: $c0

	ret  nz                                          ; $7d85: $c0

	ret  nz                                          ; $7d86: $c0

	rst  $38                                         ; $7d87: $ff
	rst  $38                                         ; $7d88: $ff
	dec  c                                           ; $7d89: $0d
	nop                                              ; $7d8a: $00
	ld   a, [bc]                                     ; $7d8b: $0a
	rlca                                             ; $7d8c: $07
	sub  b                                           ; $7d8d: $90
	dec  bc                                          ; $7d8e: $0b
	inc  bc                                          ; $7d8f: $03
	jr   nz, jr_060_7d93                             ; $7d90: $20 $01

	ld   a, [bc]                                     ; $7d92: $0a

jr_060_7d93:
	inc  hl                                          ; $7d93: $23
	nop                                              ; $7d94: $00
	ld   sp, $2040                                   ; $7d95: $31 $40 $20
	inc  bc                                          ; $7d98: $03
	jr   nz, jr_060_7d9c                             ; $7d99: $20 $01

	ld   a, [bc]                                     ; $7d9b: $0a

jr_060_7d9c:
	add  hl, hl                                      ; $7d9c: $29
	nop                                              ; $7d9d: $00
	inc  e                                           ; $7d9e: $1c
	ld   b, $05                                      ; $7d9f: $06 $05
	dec  b                                           ; $7da1: $05
	ld   bc, $acd1                                   ; $7da2: $01 $d1 $ac
	ld   a, [GetRandomNumInPreSpecifiedRange]                                  ; $7da5: $fa $10 $0d
	db   $dd                                         ; $7da8: $dd
	or   d                                           ; $7da9: $b2
	ld   [hl], c                                     ; $7daa: $71
	halt                                             ; $7dab: $76
	ld   h, a                                        ; $7dac: $67
	and  c                                           ; $7dad: $a1
	ld   h, [hl]                                     ; $7dae: $66
	sub  c                                           ; $7daf: $91
	ld   a, e                                        ; $7db0: $7b
	ld   d, l                                        ; $7db1: $55
	sub  [hl]                                        ; $7db2: $96
	sbc  a                                           ; $7db3: $9f
	dec  c                                           ; $7db4: $0d
	nop                                              ; $7db5: $00
	inc  e                                           ; $7db6: $1c
	ld   b, $02                                      ; $7db7: $06 $02
	ld   [bc], a                                     ; $7db9: $02
	ld   bc, $fb02                                   ; $7dba: $01 $02 $fb
	ld   e, a                                        ; $7dbd: $5f
	sbc  c                                           ; $7dbe: $99
	ld   l, d                                        ; $7dbf: $6a
	ld   a, [$000d]                                  ; $7dc0: $fa $0d $00
	ld   a, [bc]                                     ; $7dc3: $0a
	ld   b, $39                                      ; $7dc4: $06 $39
	ld   [de], a                                     ; $7dc6: $12
	inc  e                                           ; $7dc7: $1c
	ld   b, $02                                      ; $7dc8: $06 $02
	ld   [bc], a                                     ; $7dca: $02
	ld   bc, $6903                                   ; $7dcb: $01 $03 $69
	ld   [bc], a                                     ; $7dce: $02
	xor  d                                           ; $7dcf: $aa
	ld   a, l                                        ; $7dd0: $7d
	ld   e, b                                        ; $7dd1: $58
	sub  b                                           ; $7dd2: $90
	ld   d, d                                        ; $7dd3: $52
	ld   [hl], c                                     ; $7dd4: $71
	ld   e, e                                        ; $7dd5: $5b
	sbc  b                                           ; $7dd6: $98
	dec  c                                           ; $7dd7: $0d
	inc  bc                                          ; $7dd8: $03
	ld   h, l                                        ; $7dd9: $65
	inc  bc                                          ; $7dda: $03
	ret  nc                                          ; $7ddb: $d0

	adc  h                                           ; $7ddc: $8c
	sbc  l                                           ; $7ddd: $9d
	ld   h, l                                        ; $7dde: $65
	ld   h, b                                        ; $7ddf: $60
	sbc  b                                           ; $7de0: $98
	ld   l, [hl]                                     ; $7de1: $6e
	ld   a, [$000d]                                  ; $7de2: $fa $0d $00
	ld   a, [bc]                                     ; $7de5: $0a
	inc  d                                           ; $7de6: $14
	dec  d                                           ; $7de7: $15
	ld   bc, $0519                                   ; $7de8: $01 $19 $05
	inc  bc                                          ; $7deb: $03
	ld   h, l                                        ; $7dec: $65
	sub  c                                           ; $7ded: $91
	ld   e, d                                        ; $7dee: $5a
	and  c                                           ; $7def: $a1
	ld   [hl], l                                     ; $7df0: $75
	ld   [bc], a                                     ; $7df1: $02
	inc  [hl]                                        ; $7df2: $34
	inc  bc                                          ; $7df3: $03
	ret  nc                                          ; $7df4: $d0

	ld   h, b                                        ; $7df5: $60
	sbc  b                                           ; $7df6: $98
	nop                                              ; $7df7: $00
	nop                                              ; $7df8: $00
	ld   h, l                                        ; $7df9: $65
	sub  c                                           ; $7dfa: $91
	ld   e, d                                        ; $7dfb: $5a
	and  c                                           ; $7dfc: $a1
	ld   [hl], l                                     ; $7dfd: $75
	ld   e, c                                        ; $7dfe: $59
	sbc  l                                           ; $7dff: $9d
	ld   h, a                                        ; $7e00: $67
	nop                                              ; $7e01: $00
	ld   bc, $c8a7                                   ; $7e02: $01 $a7 $c8
	ld   [hl], l                                     ; $7e05: $75
	rst  $10                                         ; $7e06: $d7
	rst  $28                                         ; $7e07: $ef
	call nz, Call_060_65b0                           ; $7e08: $c4 $b0 $65
	ld   [hl], h                                     ; $7e0b: $74
	inc  b                                           ; $7e0c: $04
	dec  bc                                          ; $7e0d: $0b
	inc  bc                                          ; $7e0e: $03
	ret  nc                                          ; $7e0f: $d0

	ld   h, b                                        ; $7e10: $60
	sbc  b                                           ; $7e11: $98
	nop                                              ; $7e12: $00
	ld   [bc], a                                     ; $7e13: $02
	rlca                                             ; $7e14: $07
	and  h                                           ; $7e15: $a4
	ld   [de], a                                     ; $7e16: $12
	ld   [bc], a                                     ; $7e17: $02
	inc  bc                                          ; $7e18: $03
	ld   bc, $2000                                   ; $7e19: $01 $00 $20
	nop                                              ; $7e1c: $00
	rlca                                             ; $7e1d: $07
	jp   c, $0212                                    ; $7e1e: $da $12 $02

	inc  bc                                          ; $7e21: $03
	ld   bc, $2001                                   ; $7e22: $01 $01 $20
	nop                                              ; $7e25: $00
	rlca                                             ; $7e26: $07
	db   $fc                                         ; $7e27: $fc
	ld   [de], a                                     ; $7e28: $12
	ld   [bc], a                                     ; $7e29: $02
	inc  bc                                          ; $7e2a: $03
	ld   bc, $2002                                   ; $7e2b: $01 $02 $20
	nop                                              ; $7e2e: $00
	ld   b, $8a                                      ; $7e2f: $06 $8a
	inc  de                                          ; $7e31: $13
	rrca                                             ; $7e32: $0f
	nop                                              ; $7e33: $00
	ld   bc, $6501                                   ; $7e34: $01 $01 $65
	sub  c                                           ; $7e37: $91
	ld   e, d                                        ; $7e38: $5a
	and  c                                           ; $7e39: $a1
	ld   [hl], l                                     ; $7e3a: $75
	sbc  [hl]                                        ; $7e3b: $9e
	ld   [bc], a                                     ; $7e3c: $02
	inc  [hl]                                        ; $7e3d: $34
	inc  bc                                          ; $7e3e: $03
	ret  nc                                          ; $7e3f: $d0

	ld   h, b                                        ; $7e40: $60
	sbc  b                                           ; $7e41: $98
	ld   a, [$0dfa]                                  ; $7e42: $fa $fa $0d
	nop                                              ; $7e45: $00
	ld   a, [bc]                                     ; $7e46: $0a
	inc  e                                           ; $7e47: $1c
	ld   b, $00                                      ; $7e48: $06 $00
	nop                                              ; $7e4a: $00
	ld   bc, $7158                                   ; $7e4b: $01 $58 $71
	halt                                             ; $7e4e: $76
	ld   a, [$920d]                                  ; $7e4f: $fa $0d $92
	sbc  c                                           ; $7e52: $99
	ld   h, [hl]                                     ; $7e53: $66
	sub  c                                           ; $7e54: $91
	ld   a, e                                        ; $7e55: $7b
	ei                                               ; $7e56: $fb
	ld   e, c                                        ; $7e57: $59
	ld   a, [$000d]                                  ; $7e58: $fa $0d $00
	ld   a, [bc]                                     ; $7e5b: $0a
	dec  b                                           ; $7e5c: $05
	ld   b, b                                        ; $7e5d: $40
	rst  $38                                         ; $7e5e: $ff
	inc  bc                                          ; $7e5f: $03
	rst  $38                                         ; $7e60: $ff
	ld   bc, $2801                                   ; $7e61: $01 $01 $28
	nop                                              ; $7e64: $00
	ld   b, $d8                                      ; $7e65: $06 $d8
	inc  de                                          ; $7e67: $13
	rrca                                             ; $7e68: $0f
	nop                                              ; $7e69: $00
	ld   bc, $6501                                   ; $7e6a: $01 $01 $65
	sub  c                                           ; $7e6d: $91
	ld   e, d                                        ; $7e6e: $5a
	and  c                                           ; $7e6f: $a1
	ld   [hl], l                                     ; $7e70: $75
	sbc  [hl]                                        ; $7e71: $9e
	ld   e, c                                        ; $7e72: $59
	sbc  l                                           ; $7e73: $9d
	ld   h, a                                        ; $7e74: $67
	ld   a, [$000d]                                  ; $7e75: $fa $0d $00
	ld   a, [bc]                                     ; $7e78: $0a
	inc  e                                           ; $7e79: $1c
	ld   b, $01                                      ; $7e7a: $06 $01
	ld   bc, $9601                                   ; $7e7c: $01 $01 $96
	ld   [hl], c                                     ; $7e7f: $71
	ld   h, l                                        ; $7e80: $65
	sub  c                                           ; $7e81: $91
	ei                                               ; $7e82: $fb
	ld   a, [$000d]                                  ; $7e83: $fa $0d $00
	ld   a, [bc]                                     ; $7e86: $0a
	ld   b, $d8                                      ; $7e87: $06 $d8
	inc  de                                          ; $7e89: $13
	rrca                                             ; $7e8a: $0f
	nop                                              ; $7e8b: $00
	ld   bc, $a701                                   ; $7e8c: $01 $01 $a7
	ret  z                                           ; $7e8f: $c8

	ld   [hl], l                                     ; $7e90: $75
	rst  $10                                         ; $7e91: $d7
	rst  $28                                         ; $7e92: $ef
	call nz, Call_060_65b0                           ; $7e93: $c4 $b0 $65
	ld   [hl], h                                     ; $7e96: $74
	dec  c                                           ; $7e97: $0d
	inc  b                                           ; $7e98: $04
	dec  bc                                          ; $7e99: $0b
	inc  bc                                          ; $7e9a: $03
	ret  nc                                          ; $7e9b: $d0

	ld   h, b                                        ; $7e9c: $60
	sbc  b                                           ; $7e9d: $98
	ld   l, [hl]                                     ; $7e9e: $6e
	ld   a, [$000d]                                  ; $7e9f: $fa $0d $00
	ld   a, [bc]                                     ; $7ea2: $0a
	inc  d                                           ; $7ea3: $14
	rlca                                             ; $7ea4: $07
	ld   bc, $a301                                   ; $7ea5: $01 $01 $a3
	and  l                                           ; $7ea8: $a5
	ret  nz                                          ; $7ea9: $c0

	ei                                               ; $7eaa: $fb
	ei                                               ; $7eab: $fb
	ei                                               ; $7eac: $fb
	ei                                               ; $7ead: $fb
	rst  $38                                         ; $7eae: $ff
	rst  $38                                         ; $7eaf: $ff
	dec  c                                           ; $7eb0: $0d
	and  l                                           ; $7eb1: $a5
	call nz, $fbc7                                   ; $7eb2: $c4 $c7 $fb
	rst  $38                                         ; $7eb5: $ff
	rst  $38                                         ; $7eb6: $ff
	dec  c                                           ; $7eb7: $0d
	nop                                              ; $7eb8: $00
	ld   a, [bc]                                     ; $7eb9: $0a
	rlca                                             ; $7eba: $07
	sub  b                                           ; $7ebb: $90
	dec  bc                                          ; $7ebc: $0b
	inc  bc                                          ; $7ebd: $03
	jr   nz, jr_060_7ec1                             ; $7ebe: $20 $01

	ld   a, [bc]                                     ; $7ec0: $0a

jr_060_7ec1:
	inc  hl                                          ; $7ec1: $23
	nop                                              ; $7ec2: $00
	ld   sp, $2040                                   ; $7ec3: $31 $40 $20
	inc  bc                                          ; $7ec6: $03
	jr   nz, jr_060_7eca                             ; $7ec7: $20 $01

	ld   a, [bc]                                     ; $7ec9: $0a

jr_060_7eca:
	add  hl, hl                                      ; $7eca: $29
	nop                                              ; $7ecb: $00
	inc  e                                           ; $7ecc: $1c
	ld   b, $05                                      ; $7ecd: $06 $05
	dec  b                                           ; $7ecf: $05
	ld   bc, $5258                                   ; $7ed0: $01 $58 $52
	ld   a, [$0e04]                                  ; $7ed3: $fa $04 $0e
	inc  bc                                          ; $7ed6: $03
	sbc  l                                           ; $7ed7: $9d
	inc  b                                           ; $7ed8: $04
	and  [hl]                                        ; $7ed9: $a6
	ld   e, c                                        ; $7eda: $59
	ld   sp, hl                                      ; $7edb: $f9
	dec  c                                           ; $7edc: $0d
	ld   e, b                                        ; $7edd: $58
	sub  b                                           ; $7ede: $90
	ld   d, d                                        ; $7edf: $52
	ld   [hl], c                                     ; $7ee0: $71
	ld   e, e                                        ; $7ee1: $5b
	sbc  b                                           ; $7ee2: $98
	ld   d, d                                        ; $7ee3: $52
	ld   [hl], c                                     ; $7ee4: $71
	ld   l, l                                        ; $7ee5: $6d
	ld   e, c                                        ; $7ee6: $59
	sub  a                                           ; $7ee7: $97
	ld   a, b                                        ; $7ee8: $78
	rst  $38                                         ; $7ee9: $ff
	rst  $38                                         ; $7eea: $ff
	dec  c                                           ; $7eeb: $0d
	nop                                              ; $7eec: $00
	ld   a, [bc]                                     ; $7eed: $0a
	ld   bc, $6903                                   ; $7eee: $01 $03 $69
	ld   [bc], a                                     ; $7ef1: $02
	xor  d                                           ; $7ef2: $aa
	ld   a, h                                        ; $7ef3: $7c
	inc  bc                                          ; $7ef4: $03
	ld   h, l                                        ; $7ef5: $65
	inc  bc                                          ; $7ef6: $03
	ret  nc                                          ; $7ef7: $d0

	adc  h                                           ; $7ef8: $8c
	sbc  l                                           ; $7ef9: $9d
	ld   h, l                                        ; $7efa: $65
	ld   h, b                                        ; $7efb: $60
	sbc  b                                           ; $7efc: $98
	ld   a, l                                        ; $7efd: $7d
	sbc  [hl]                                        ; $7efe: $9e
	dec  c                                           ; $7eff: $0d
	ld   [bc], a                                     ; $7f00: $02
	rst  $38                                         ; $7f01: $ff
	ld   e, a                                        ; $7f02: $5f
	ld   l, b                                        ; $7f03: $68
	ld   a, c                                        ; $7f04: $79
	sbc  [hl]                                        ; $7f05: $9e
	ld   h, l                                        ; $7f06: $65
	sub  c                                           ; $7f07: $91
	ld   e, d                                        ; $7f08: $5a
	and  c                                           ; $7f09: $a1
	ld   [hl], l                                     ; $7f0a: $75
	dec  c                                           ; $7f0b: $0d
	sub  [hl]                                        ; $7f0c: $96
	ld   e, a                                        ; $7f0d: $5f
	ld   a, b                                        ; $7f0e: $78
	ld   e, e                                        ; $7f0f: $5b
	sub  c                                           ; $7f10: $91
	sbc  a                                           ; $7f11: $9f
	dec  c                                           ; $7f12: $0d
	nop                                              ; $7f13: $00
	ld   a, [bc]                                     ; $7f14: $0a
	ld   b, $d8                                      ; $7f15: $06 $d8
	inc  de                                          ; $7f17: $13
	rrca                                             ; $7f18: $0f
	nop                                              ; $7f19: $00
	ld   bc, $0714                                   ; $7f1a: $01 $14 $07
	ld   bc, $b101                                   ; $7f1d: $01 $01 $b1
	reti                                             ; $7f20: $d9


	call nz, $ffff                                   ; $7f21: $c4 $ff $ff
	dec  c                                           ; $7f24: $0d
	pop  de                                          ; $7f25: $d1
	ret  nz                                          ; $7f26: $c0

	push af                                          ; $7f27: $f5
	xor  [hl]                                        ; $7f28: $ae
	rst  $20                                         ; $7f29: $e7
	ei                                               ; $7f2a: $fb
	db   $fc                                         ; $7f2b: $fc
	rst  $38                                         ; $7f2c: $ff
	rst  $38                                         ; $7f2d: $ff
	dec  c                                           ; $7f2e: $0d
	nop                                              ; $7f2f: $00
	ld   a, [bc]                                     ; $7f30: $0a
	rlca                                             ; $7f31: $07
	sub  b                                           ; $7f32: $90
	dec  bc                                          ; $7f33: $0b
	inc  bc                                          ; $7f34: $03
	jr   nz, jr_060_7f38                             ; $7f35: $20 $01

	ld   a, [bc]                                     ; $7f37: $0a

jr_060_7f38:
	inc  hl                                          ; $7f38: $23
	nop                                              ; $7f39: $00
	ld   sp, $2040                                   ; $7f3a: $31 $40 $20
	inc  bc                                          ; $7f3d: $03
	jr   nz, jr_060_7f41                             ; $7f3e: $20 $01

	ld   a, [bc]                                     ; $7f40: $0a

jr_060_7f41:
	add  hl, hl                                      ; $7f41: $29
	nop                                              ; $7f42: $00
	inc  e                                           ; $7f43: $1c
	ld   b, $05                                      ; $7f44: $06 $05
	dec  b                                           ; $7f46: $05
	ld   bc, $acd1                                   ; $7f47: $01 $d1 $ac
	ld   a, [GetRandomNumInPreSpecifiedRange]                                  ; $7f4a: $fa $10 $0d
	db   $dd                                         ; $7f4d: $dd
	or   d                                           ; $7f4e: $b2
	ld   [hl], c                                     ; $7f4f: $71
	halt                                             ; $7f50: $76
	ld   h, a                                        ; $7f51: $67
	and  c                                           ; $7f52: $a1
	ld   h, [hl]                                     ; $7f53: $66
	sub  c                                           ; $7f54: $91
	ld   a, e                                        ; $7f55: $7b
	ld   d, l                                        ; $7f56: $55
	sub  [hl]                                        ; $7f57: $96
	sbc  a                                           ; $7f58: $9f
	dec  c                                           ; $7f59: $0d
	adc  h                                           ; $7f5a: $8c
	ld   [hl], c                                     ; $7f5b: $71
	ld   l, l                                        ; $7f5c: $6d
	ld   e, l                                        ; $7f5d: $5d
	db   $fc                                         ; $7f5e: $fc
	sbc  a                                           ; $7f5f: $9f
	dec  c                                           ; $7f60: $0d
	nop                                              ; $7f61: $00
	ld   a, [bc]                                     ; $7f62: $0a
	ld   b, $d8                                      ; $7f63: $06 $d8
	inc  de                                          ; $7f65: $13
	rlca                                             ; $7f66: $07
	ld   b, c                                        ; $7f67: $41
	inc  d                                           ; $7f68: $14
	inc  bc                                          ; $7f69: $03
	rst  $38                                         ; $7f6a: $ff
	ld   bc, $2002                                   ; $7f6b: $01 $02 $20
	inc  bc                                          ; $7f6e: $03
	rst  $38                                         ; $7f6f: $ff
	ld   bc, $2003                                   ; $7f70: $01 $03 $20
	inc  e                                           ; $7f73: $1c
	inc  bc                                          ; $7f74: $03
	rst  $38                                         ; $7f75: $ff
	ld   bc, $2004                                   ; $7f76: $01 $04 $20
	inc  e                                           ; $7f79: $1c
	nop                                              ; $7f7a: $00
	rlca                                             ; $7f7b: $07
	sub  [hl]                                        ; $7f7c: $96
	inc  d                                           ; $7f7d: $14
	inc  bc                                          ; $7f7e: $03
	rst  $38                                         ; $7f7f: $ff
	ld   bc, $2301                                   ; $7f80: $01 $01 $23
	nop                                              ; $7f83: $00
	inc  e                                           ; $7f84: $1c
	ld   b, $07                                      ; $7f85: $06 $07
	rlca                                             ; $7f87: $07
	dec  e                                           ; $7f88: $1d
	ld   b, b                                        ; $7f89: $40
	ld   d, $03                                      ; $7f8a: $16 $03
	ld   d, $01                                      ; $7f8c: $16 $01
	inc  bc                                          ; $7f8e: $03
	jr   z, jr_060_7f91                              ; $7f8f: $28 $00

jr_060_7f91:
	ld   bc, $5858                                   ; $7f91: $01 $58 $58
	sbc  [hl]                                        ; $7f94: $9e
	ld   d, d                                        ; $7f95: $52
	ld   d, d                                        ; $7f96: $52
	ld   [bc], a                                     ; $7f97: $02
	scf                                              ; $7f98: $37
	ld   h, [hl]                                     ; $7f99: $66
	ld   l, [hl]                                     ; $7f9a: $6e
	ld   l, d                                        ; $7f9b: $6a
	sbc  a                                           ; $7f9c: $9f
	dec  c                                           ; $7f9d: $0d
	sub  d                                           ; $7f9e: $92
	sbc  c                                           ; $7f9f: $99
	ld   h, [hl]                                     ; $7fa0: $66
	sub  c                                           ; $7fa1: $91
	ld   a, b                                        ; $7fa2: $78
	ld   d, d                                        ; $7fa3: $52
	ld   e, c                                        ; $7fa4: $59
	ld   [$9f00], sp                                 ; $7fa5: $08 $00 $9f
	dec  c                                           ; $7fa8: $0d
	nop                                              ; $7fa9: $00
	ld   a, [bc]                                     ; $7faa: $0a
	inc  e                                           ; $7fab: $1c
	ld   b, $00                                      ; $7fac: $06 $00
	nop                                              ; $7fae: $00
	ld   bc, $6596                                   ; $7faf: $01 $96 $65
	sbc  [hl]                                        ; $7fb2: $9e
	ld   h, [hl]                                     ; $7fb3: $66
	sub  c                                           ; $7fb4: $91
	ld   d, b                                        ; $7fb5: $50
	ld   [bc], a                                     ; $7fb6: $02
	and  l                                           ; $7fb7: $a5
	inc  b                                           ; $7fb8: $04
	add  hl, hl                                      ; $7fb9: $29
	ld   a, l                                        ; $7fba: $7d
	dec  c                                           ; $7fbb: $0d
	cp   d                                           ; $7fbc: $ba
	push de                                          ; $7fbd: $d5
	ei                                               ; $7fbe: $fb
	jp   z, $c4a3                                    ; $7fbf: $ca $a3 $c4

	ret  c                                           ; $7fc2: $d8

	ld   h, l                                        ; $7fc3: $65
	ld   [hl], h                                     ; $7fc4: $74
	ld   d, d                                        ; $7fc5: $52
	ld   e, l                                        ; $7fc6: $5d
	ld   l, d                                        ; $7fc7: $6a
	sbc  a                                           ; $7fc8: $9f
	dec  c                                           ; $7fc9: $0d
	nop                                              ; $7fca: $00
	ld   a, [bc]                                     ; $7fcb: $0a
	ld   b, $df                                      ; $7fcc: $06 $df
	inc  d                                           ; $7fce: $14
	inc  e                                           ; $7fcf: $1c
	ld   b, $00                                      ; $7fd0: $06 $00
	nop                                              ; $7fd2: $00
	dec  e                                           ; $7fd3: $1d
	ld   b, b                                        ; $7fd4: $40
	ld   d, $03                                      ; $7fd5: $16 $03
	ld   d, $01                                      ; $7fd7: $16 $01
	ld   [bc], a                                     ; $7fd9: $02
	jr   z, jr_060_7fdc                              ; $7fda: $28 $00

jr_060_7fdc:
	ld   bc, $fc54                                   ; $7fdc: $01 $54 $fc
	and  c                                           ; $7fdf: $a1
	sbc  a                                           ; $7fe0: $9f
	adc  h                                           ; $7fe1: $8c
	ld   l, b                                        ; $7fe2: $68
	adc  h                                           ; $7fe3: $8c
	ld   l, b                                        ; $7fe4: $68
	ld   e, c                                        ; $7fe5: $59
	ld   a, b                                        ; $7fe6: $78
	sbc  a                                           ; $7fe7: $9f
	dec  c                                           ; $7fe8: $0d
	sub  b                                           ; $7fe9: $90
	ld   d, h                                        ; $7fea: $54
	inc  bc                                          ; $7feb: $03
	ld   l, h                                        ; $7fec: $6c
	ld   h, l                                        ; $7fed: $65
	sbc  [hl]                                        ; $7fee: $9e
	ld   [bc], a                                     ; $7fef: $02
	ld   c, b                                        ; $7ff0: $48
	ld   [bc], a                                     ; $7ff1: $02
	sub  c                                           ; $7ff2: $91
	ld   e, d                                        ; $7ff3: $5a
	inc  b                                           ; $7ff4: $04
	ld   b, l                                        ; $7ff5: $45
	sbc  c                                           ; $7ff6: $99
	halt                                             ; $7ff7: $76
	dec  c                                           ; $7ff8: $0d
	ld   d, d                                        ; $7ff9: $52
	ld   d, d                                        ; $7ffa: $52
	and  c                                           ; $7ffb: $a1
	ld   l, [hl]                                     ; $7ffc: $6e
	ld   e, a                                        ; $7ffd: $5f
	ld   [hl], a                                     ; $7ffe: $77
	ld   a, b                                        ; $7fff: $78
