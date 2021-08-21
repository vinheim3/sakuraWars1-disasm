; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $043", ROMX[$4000], BANK[$43]

	ld   h, l                                        ; $4000: $65
	sub  l                                           ; $4001: $95
	ld   a, [$000d]                                  ; $4002: $fa $0d $00
	ld   a, [bc]                                     ; $4005: $0a
	inc  e                                           ; $4006: $1c
	inc  b                                           ; $4007: $04
	inc  b                                           ; $4008: $04
	inc  b                                           ; $4009: $04
	ld   bc, $a5a3                                   ; $400a: $01 $a3 $a5
	db   $ec                                         ; $400d: $ec
	cp   d                                           ; $400e: $ba
	sbc  [hl]                                        ; $400f: $9e
	halt                                             ; $4010: $76
	ld   [hl], c                                     ; $4011: $71
	ld   [hl], h                                     ; $4012: $74
	sub  b                                           ; $4013: $90
	ld   l, l                                        ; $4014: $6d
	ld   a, h                                        ; $4015: $7c
	ld   h, l                                        ; $4016: $65
	adc  l                                           ; $4017: $8d
	ld   a, c                                        ; $4018: $79
	dec  c                                           ; $4019: $0d
	ld   h, l                                        ; $401a: $65
	ld   [hl], h                                     ; $401b: $74
	ld   l, l                                        ; $401c: $6d
	ld   a, h                                        ; $401d: $7c
	ld   a, c                                        ; $401e: $79
	rst  $38                                         ; $401f: $ff
	rst  $38                                         ; $4020: $ff
	dec  c                                           ; $4021: $0d
	nop                                              ; $4022: $00
	ld   a, [bc]                                     ; $4023: $0a
	inc  e                                           ; $4024: $1c
	inc  b                                           ; $4025: $04
	ld   [bc], a                                     ; $4026: $02
	ld   [bc], a                                     ; $4027: $02
	dec  e                                           ; $4028: $1d
	ld   b, b                                        ; $4029: $40
	inc  d                                           ; $402a: $14
	inc  bc                                          ; $402b: $03
	inc  d                                           ; $402c: $14
	ld   bc, $2903                                   ; $402d: $01 $03 $29
	nop                                              ; $4030: $00
	ld   bc, $7190                                   ; $4031: $01 $90 $71
	ld   [hl], h                                     ; $4034: $74
	ld   e, e                                        ; $4035: $5b
	ld   [hl], h                                     ; $4036: $74
	ld   e, l                                        ; $4037: $5d
	sbc  d                                           ; $4038: $9a
	ld   a, b                                        ; $4039: $78
	ld   d, d                                        ; $403a: $52
	ld   a, b                                        ; $403b: $78
	and  c                                           ; $403c: $a1
	ld   [hl], h                                     ; $403d: $74
	dec  c                                           ; $403e: $0d
	nop                                              ; $403f: $00
	dec  b                                           ; $4040: $05
	ld   b, b                                        ; $4041: $40
	ld   c, e                                        ; $4042: $4b
	ld   [bc], a                                     ; $4043: $02
	nop                                              ; $4044: $00
	nop                                              ; $4045: $00
	dec  b                                           ; $4046: $05
	ld   b, b                                        ; $4047: $40
	ld   d, c                                        ; $4048: $51
	ld   bc, $0001                                   ; $4049: $01 $01 $00
	ld   bc, $cad3                                   ; $404c: $01 $d3 $ca
	and  l                                           ; $404f: $a5
	ld   a, [$6f0d]                                  ; $4050: $fa $0d $6f
	ld   d, d                                        ; $4053: $52
	ld   [bc], a                                     ; $4054: $02
	inc  de                                          ; $4055: $13
	ld   l, a                                        ; $4056: $6f
	sub  c                                           ; $4057: $91
	and  c                                           ; $4058: $a1
	ld   a, h                                        ; $4059: $7c
	pop  de                                          ; $405a: $d1
	xor  h                                           ; $405b: $ac
	ei                                               ; $405c: $fb
	ld   a, [$0dfa]                                  ; $405d: $fa $fa $0d
	nop                                              ; $4060: $00
	ld   a, [bc]                                     ; $4061: $0a
	dec  c                                           ; $4062: $0d
	nop                                              ; $4063: $00
	nop                                              ; $4064: $00
	rrca                                             ; $4065: $0f
	nop                                              ; $4066: $00
	ld   bc, $1e09                                   ; $4067: $01 $09 $1e
	add  hl, hl                                      ; $406a: $29
	add  hl, bc                                      ; $406b: $09
	nop                                              ; $406c: $00
	nop                                              ; $406d: $00
	inc  b                                           ; $406e: $04
	add  b                                           ; $406f: $80
	inc  d                                           ; $4070: $14
	ld   bc, $20ff                                   ; $4071: $01 $ff $20
	inc  b                                           ; $4074: $04
	add  b                                           ; $4075: $80
	dec  d                                           ; $4076: $15
	ld   bc, $2000                                   ; $4077: $01 $00 $20
	inc  e                                           ; $407a: $1c
	nop                                              ; $407b: $00
	ld   c, $01                                      ; $407c: $0e $01
	rrca                                             ; $407e: $0f
	nop                                              ; $407f: $00
	ld   bc, $0102                                   ; $4080: $01 $02 $01
	add  e                                           ; $4083: $83
	ld   d, b                                        ; $4084: $50
	db   $fc                                         ; $4085: $fc
	sbc  [hl]                                        ; $4086: $9e
	sub  [hl]                                        ; $4087: $96
	ld   e, l                                        ; $4088: $5d
	inc  b                                           ; $4089: $04
	ld   b, d                                        ; $408a: $42
	ld   l, l                                        ; $408b: $6d
	sbc  a                                           ; $408c: $9f
	dec  c                                           ; $408d: $0d
	inc  b                                           ; $408e: $04
	dec  c                                           ; $408f: $0d
	inc  bc                                          ; $4090: $03
	cp   $d1                                         ; $4091: $fe $d1
	call nz, $ecc2                                   ; $4093: $c4 $c2 $ec
	ld   l, [hl]                                     ; $4096: $6e
	ld   a, [$020d]                                  ; $4097: $fa $0d $02
	and  l                                           ; $409a: $a5
	inc  b                                           ; $409b: $04
	xor  d                                           ; $409c: $aa
	sub  b                                           ; $409d: $90
	ld   e, d                                        ; $409e: $5a
	and  c                                           ; $409f: $a1
	ld   a, [hl]                                     ; $40a0: $7e
	sbc  c                                           ; $40a1: $99
	ld   l, h                                        ; $40a2: $6c
	ld   a, [$0dfa]                                  ; $40a3: $fa $fa $0d
	nop                                              ; $40a6: $00
	ld   a, [bc]                                     ; $40a7: $0a
	inc  d                                           ; $40a8: $14
	ld   b, $01                                      ; $40a9: $06 $01
	rrca                                             ; $40ab: $0f
	ld   [bc], a                                     ; $40ac: $02
	nop                                              ; $40ad: $00
	ld   bc, $0808                                   ; $40ae: $01 $08 $08
	ld   h, e                                        ; $40b1: $63
	and  c                                           ; $40b2: $a1
	sbc  a                                           ; $40b3: $9f
	dec  c                                           ; $40b4: $0d
	ld   d, d                                        ; $40b5: $52
	sub  a                                           ; $40b6: $97
	ld   [hl], c                                     ; $40b7: $71
	ld   h, l                                        ; $40b8: $65
	sub  c                                           ; $40b9: $91
	sbc  c                                           ; $40ba: $99
	ld   sp, hl                                      ; $40bb: $f9
	dec  c                                           ; $40bc: $0d
	nop                                              ; $40bd: $00
	ld   a, [bc]                                     ; $40be: $0a
	rrca                                             ; $40bf: $0f
	nop                                              ; $40c0: $00
	ld   bc, $0a14                                   ; $40c1: $01 $14 $0a
	ld   bc, $7d01                                   ; $40c4: $01 $01 $7d
	ld   d, d                                        ; $40c7: $52
	sbc  [hl]                                        ; $40c8: $9e
	ld   [hl], a                                     ; $40c9: $77
	ld   d, h                                        ; $40ca: $54
	ld   l, h                                        ; $40cb: $6c
	sbc  a                                           ; $40cc: $9f
	dec  c                                           ; $40cd: $0d
	nop                                              ; $40ce: $00
	ld   a, [bc]                                     ; $40cf: $0a
	inc  e                                           ; $40d0: $1c
	ld   [bc], a                                     ; $40d1: $02
	ld   [bc], a                                     ; $40d2: $02
	ld   [bc], a                                     ; $40d3: $02
	ld   bc, $0808                                   ; $40d4: $01 $08 $08
	ld   h, e                                        ; $40d7: $63
	and  c                                           ; $40d8: $a1
	sbc  a                                           ; $40d9: $9f
	dec  c                                           ; $40da: $0d
	inc  b                                           ; $40db: $04
	ld   c, c                                        ; $40dc: $49
	ld   e, c                                        ; $40dd: $59
	sbc  l                                           ; $40de: $9d
	ld   h, a                                        ; $40df: $67
	sbc  d                                           ; $40e0: $9a
	ld   [hl], h                                     ; $40e1: $74
	ld   d, d                                        ; $40e2: $52
	sub  a                                           ; $40e3: $97
	ld   [hl], c                                     ; $40e4: $71
	ld   h, l                                        ; $40e5: $65
	sub  c                                           ; $40e6: $91
	ld   d, d                                        ; $40e7: $52
	dec  c                                           ; $40e8: $0d
	adc  h                                           ; $40e9: $8c
	ld   l, c                                        ; $40ea: $69
	and  c                                           ; $40eb: $a1
	ld   h, c                                        ; $40ec: $61
	halt                                             ; $40ed: $76
	ld   sp, hl                                      ; $40ee: $f9
	dec  c                                           ; $40ef: $0d
	nop                                              ; $40f0: $00
	ld   a, [bc]                                     ; $40f1: $0a
	ld   bc, $4505                                   ; $40f2: $01 $05 $45
	inc  b                                           ; $40f5: $04
	rst  $28                                         ; $40f6: $ef
	sbc  [hl]                                        ; $40f7: $9e
	inc  bc                                          ; $40f8: $03
	db   $ec                                         ; $40f9: $ec
	dec  b                                           ; $40fa: $05
	add  hl, de                                      ; $40fb: $19
	inc  bc                                          ; $40fc: $03
	ld   c, l                                        ; $40fd: $4d
	ld   a, c                                        ; $40fe: $79
	ld   e, l                                        ; $40ff: $5d
	sbc  c                                           ; $4100: $99
	sub  [hl]                                        ; $4101: $96
	ld   d, h                                        ; $4102: $54
	ld   a, c                                        ; $4103: $79
	dec  c                                           ; $4104: $0d
	sbc  l                                           ; $4105: $9d
	ld   l, l                                        ; $4106: $6d
	ld   e, l                                        ; $4107: $5d
	ld   h, l                                        ; $4108: $65
	ld   e, d                                        ; $4109: $5a
	ld   [bc], a                                     ; $410a: $02
	sbc  l                                           ; $410b: $9d
	ld   [hl], c                                     ; $410c: $71
	ld   l, l                                        ; $410d: $6d
	ld   a, h                                        ; $410e: $7c
	and  b                                           ; $410f: $a0
	dec  c                                           ; $4110: $0d
	sbc  l                                           ; $4111: $9d
	ld   h, a                                        ; $4112: $67
	sbc  d                                           ; $4113: $9a
	adc  h                                           ; $4114: $8c
	ld   h, l                                        ; $4115: $65
	ld   l, l                                        ; $4116: $6d
	sbc  l                                           ; $4117: $9d
	ld   a, e                                        ; $4118: $7b
	sbc  a                                           ; $4119: $9f
	dec  c                                           ; $411a: $0d
	nop                                              ; $411b: $00
	ld   a, [bc]                                     ; $411c: $0a
	dec  e                                           ; $411d: $1d
	ld   b, b                                        ; $411e: $40
	ld   [de], a                                     ; $411f: $12
	inc  bc                                          ; $4120: $03
	ld   [de], a                                     ; $4121: $12
	ld   bc, $2903                                   ; $4122: $01 $03 $29
	nop                                              ; $4125: $00
	ld   bc, $6d9d                                   ; $4126: $01 $9d $6d
	ld   e, l                                        ; $4129: $5d
	ld   h, l                                        ; $412a: $65
	halt                                             ; $412b: $76
	ld   a, h                                        ; $412c: $7c
	inc  b                                           ; $412d: $04
	ldh  [$03], a                                    ; $412e: $e0 $03
	dec  hl                                          ; $4130: $2b
	and  b                                           ; $4131: $a0
	dec  c                                           ; $4132: $0d
	sub  d                                           ; $4133: $92
	add  h                                           ; $4134: $84
	sbc  c                                           ; $4135: $99
	ld   a, b                                        ; $4136: $78
	and  c                                           ; $4137: $a1
	ld   [hl], h                                     ; $4138: $74
	sbc  [hl]                                        ; $4139: $9e
	inc  bc                                          ; $413a: $03
	ld   l, c                                        ; $413b: $69
	inc  bc                                          ; $413c: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $413d: $cf
	ld   [hl], l                                     ; $413e: $75
	ld   h, a                                        ; $413f: $67
	sbc  l                                           ; $4140: $9d
	ld   a, [$040d]                                  ; $4141: $fa $0d $04
	ld   e, h                                        ; $4144: $5c
	ld   b, $c4                                      ; $4145: $06 $c4
	ld   a, b                                        ; $4147: $78
	ld   h, e                                        ; $4148: $63
	ld   d, d                                        ; $4149: $52
	sbc  a                                           ; $414a: $9f
	dec  c                                           ; $414b: $0d
	nop                                              ; $414c: $00
	ld   a, [bc]                                     ; $414d: $0a
	ld   bc, $9a61                                   ; $414e: $01 $61 $9a
	ld   e, c                                        ; $4151: $59
	sub  a                                           ; $4152: $97
	ld   a, l                                        ; $4153: $7d
	ld   [bc], a                                     ; $4154: $02
	and  c                                           ; $4155: $a1
	and  b                                           ; $4156: $a0
	ld   [hl], d                                     ; $4157: $72
	ld   e, a                                        ; $4158: $5f
	ld   a, b                                        ; $4159: $78
	ld   h, e                                        ; $415a: $63
	ld   d, d                                        ; $415b: $52
	sbc  a                                           ; $415c: $9f
	dec  c                                           ; $415d: $0d
	sbc  l                                           ; $415e: $9d
	ld   e, c                                        ; $415f: $59
	sbc  b                                           ; $4160: $98
	adc  h                                           ; $4161: $8c
	ld   h, l                                        ; $4162: $65
	ld   l, l                                        ; $4163: $6d
	sbc  l                                           ; $4164: $9d
	ld   a, e                                        ; $4165: $7b
	ld   sp, hl                                      ; $4166: $f9
	dec  c                                           ; $4167: $0d
	ld   [hl], l                                     ; $4168: $75
	ld   a, l                                        ; $4169: $7d
	sbc  [hl]                                        ; $416a: $9e
	inc  bc                                          ; $416b: $03
	add  e                                           ; $416c: $83
	dec  b                                           ; $416d: $05
	dec  c                                           ; $416e: $0d
	rst  $38                                         ; $416f: $ff
	rst  $38                                         ; $4170: $ff
	dec  c                                           ; $4171: $0d
	nop                                              ; $4172: $00
	ld   a, [bc]                                     ; $4173: $0a
	dec  c                                           ; $4174: $0d
	nop                                              ; $4175: $00
	nop                                              ; $4176: $00
	rrca                                             ; $4177: $0f
	nop                                              ; $4178: $00
	ld   bc, $1e09                                   ; $4179: $01 $09 $1e
	add  hl, hl                                      ; $417c: $29
	add  hl, bc                                      ; $417d: $09
	nop                                              ; $417e: $00
	nop                                              ; $417f: $00
	inc  b                                           ; $4180: $04
	add  b                                           ; $4181: $80
	add  hl, sp                                      ; $4182: $39
	ld   bc, $20ff                                   ; $4183: $01 $ff $20
	inc  b                                           ; $4186: $04
	add  b                                           ; $4187: $80
	ld   a, [hl-]                                    ; $4188: $3a
	ld   bc, $2000                                   ; $4189: $01 $00 $20
	inc  e                                           ; $418c: $1c
	nop                                              ; $418d: $00
	ld   c, $01                                      ; $418e: $0e $01
	rrca                                             ; $4190: $0f
	nop                                              ; $4191: $00
	ld   bc, $0102                                   ; $4192: $01 $02 $01
	ld   h, e                                        ; $4195: $63
	ld   d, b                                        ; $4196: $50
	sbc  [hl]                                        ; $4197: $9e
	ld   [bc], a                                     ; $4198: $02
	and  l                                           ; $4199: $a5
	inc  b                                           ; $419a: $04
	xor  d                                           ; $419b: $aa
	sub  b                                           ; $419c: $90
	ld   [bc], a                                     ; $419d: $02
	jr   nz, jr_043_41a4                             ; $419e: $20 $04

	xor  d                                           ; $41a0: $aa
	ld   e, d                                        ; $41a1: $5a
	dec  b                                           ; $41a2: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41a3: $cf

jr_043_41a4:
	adc  h                                           ; $41a4: $8c
	sbc  c                                           ; $41a5: $99
	sbc  a                                           ; $41a6: $9f
	dec  c                                           ; $41a7: $0d
	ld   [bc], a                                     ; $41a8: $02
	and  c                                           ; $41a9: $a1
	ld   [bc], a                                     ; $41aa: $02
	ld   a, e                                        ; $41ab: $7b
	ld   d, d                                        ; $41ac: $52
	and  b                                           ; $41ad: $a0
	inc  b                                           ; $41ae: $04
	ld   b, l                                        ; $41af: $45
	sbc  d                                           ; $41b0: $9a
	ld   [hl], h                                     ; $41b1: $74
	ld   e, d                                        ; $41b2: $5a
	and  c                                           ; $41b3: $a1
	ld   a, [hl]                                     ; $41b4: $7e
	sbc  c                                           ; $41b5: $99
	ld   l, h                                        ; $41b6: $6c
	ld   a, [$000d]                                  ; $41b7: $fa $0d $00
	ld   a, [bc]                                     ; $41ba: $0a
	inc  d                                           ; $41bb: $14
	ld   b, $01                                      ; $41bc: $06 $01
	rrca                                             ; $41be: $0f
	inc  b                                           ; $41bf: $04
	rlca                                             ; $41c0: $07
	ld   bc, $526f                                   ; $41c1: $01 $6f $52
	ld   [bc], a                                     ; $41c4: $02
	inc  de                                          ; $41c5: $13
	ld   l, a                                        ; $41c6: $6f
	sub  c                                           ; $41c7: $91
	and  c                                           ; $41c8: $a1
	sbc  [hl]                                        ; $41c9: $9e
	ld   d, d                                        ; $41ca: $52
	sbc  c                                           ; $41cb: $99
	ld   sp, hl                                      ; $41cc: $f9
	dec  c                                           ; $41cd: $0d
	nop                                              ; $41ce: $00
	ld   a, [bc]                                     ; $41cf: $0a
	rrca                                             ; $41d0: $0f
	nop                                              ; $41d1: $00
	ld   bc, $7d01                                   ; $41d2: $01 $01 $7d
	ld   d, d                                        ; $41d5: $52
	sbc  [hl]                                        ; $41d6: $9e
	ld   [hl], a                                     ; $41d7: $77
	ld   d, h                                        ; $41d8: $54
	ld   l, h                                        ; $41d9: $6c
	sbc  a                                           ; $41da: $9f
	dec  c                                           ; $41db: $0d
	nop                                              ; $41dc: $00
	ld   a, [bc]                                     ; $41dd: $0a
	inc  d                                           ; $41de: $14
	ld   a, [bc]                                     ; $41df: $0a
	ld   bc, $5a09                                   ; $41e0: $01 $09 $5a
	inc  e                                           ; $41e3: $1c
	inc  b                                           ; $41e4: $04
	rlca                                             ; $41e5: $07
	rlca                                             ; $41e6: $07
	ld   bc, $526f                                   ; $41e7: $01 $6f $52
	ld   [bc], a                                     ; $41ea: $02
	inc  de                                          ; $41eb: $13
	ld   l, a                                        ; $41ec: $6f
	sub  c                                           ; $41ed: $91
	and  c                                           ; $41ee: $a1
	dec  c                                           ; $41ef: $0d
	ld   a, b                                        ; $41f0: $78
	ld   a, c                                        ; $41f1: $79
	ld   e, c                                        ; $41f2: $59
	sbc  [hl]                                        ; $41f3: $9e
	sbc  l                                           ; $41f4: $9d
	ld   h, a                                        ; $41f5: $67
	sbc  d                                           ; $41f6: $9a
	ld   [hl], h                                     ; $41f7: $74
	ld   a, b                                        ; $41f8: $78
	ld   d, d                                        ; $41f9: $52
	ld   sp, hl                                      ; $41fa: $f9
	dec  c                                           ; $41fb: $0d
	nop                                              ; $41fc: $00
	ld   a, [bc]                                     ; $41fd: $0a
	ld   bc, $7c5b                                   ; $41fe: $01 $5b $7c
	ld   d, h                                        ; $4201: $54
	ld   a, h                                        ; $4202: $7c
	sub  [hl]                                        ; $4203: $96
	sbc  c                                           ; $4204: $99
	sbc  [hl]                                        ; $4205: $9e
	dec  c                                           ; $4206: $0d
	and  e                                           ; $4207: $a3
	and  l                                           ; $4208: $a5
	db   $ec                                         ; $4209: $ec
	cp   d                                           ; $420a: $ba
	ld   a, h                                        ; $420b: $7c
	add  [hl]                                        ; $420c: $86
	sub  d                                           ; $420d: $92
	ld   a, c                                        ; $420e: $79
	ld   e, l                                        ; $420f: $5d
	sbc  c                                           ; $4210: $99
	dec  c                                           ; $4211: $0d
	sub  d                                           ; $4212: $92
	ld   e, l                                        ; $4213: $5d
	ld   l, e                                        ; $4214: $6b
	ld   e, l                                        ; $4215: $5d
	sbc  [hl]                                        ; $4216: $9e
	sbc  l                                           ; $4217: $9d
	ld   h, a                                        ; $4218: $67
	sbc  d                                           ; $4219: $9a
	ld   l, l                                        ; $421a: $6d
	ld   [hl], l                                     ; $421b: $75
	ld   h, l                                        ; $421c: $65
	sub  l                                           ; $421d: $95
	ld   a, [$000d]                                  ; $421e: $fa $0d $00
	ld   a, [bc]                                     ; $4221: $0a
	ld   bc, $526f                                   ; $4222: $01 $6f $52
	ld   [bc], a                                     ; $4225: $02
	inc  de                                          ; $4226: $13
	ld   l, a                                        ; $4227: $6f
	sub  c                                           ; $4228: $91
	and  c                                           ; $4229: $a1
	ld   a, h                                        ; $422a: $7c
	rst  $38                                         ; $422b: $ff
	rst  $38                                         ; $422c: $ff
	rst  $38                                         ; $422d: $ff
	dec  c                                           ; $422e: $0d
	pop  de                                          ; $422f: $d1
	xor  h                                           ; $4230: $ac
	ei                                               ; $4231: $fb
	ei                                               ; $4232: $fb
	ei                                               ; $4233: $fb
	call nz, $fafa                                   ; $4234: $c4 $fa $fa
	dec  c                                           ; $4237: $0d
	nop                                              ; $4238: $00
	ld   a, [bc]                                     ; $4239: $0a
	inc  c                                           ; $423a: $0c
	ld   b, $31                                      ; $423b: $06 $31
	ld   b, b                                        ; $423d: $40
	jr   nz, jr_043_4243                             ; $423e: $20 $03

	jr   nz, jr_043_4243                             ; $4240: $20 $01

	ld   [hl-], a                                    ; $4242: $32

jr_043_4243:
	add  hl, hl                                      ; $4243: $29
	nop                                              ; $4244: $00
	rrca                                             ; $4245: $0f
	nop                                              ; $4246: $00
	ld   bc, $5e01                                   ; $4247: $01 $01 $5e
	rst  $38                                         ; $424a: $ff
	rst  $38                                         ; $424b: $ff
	ld   e, [hl]                                     ; $424c: $5e
	ld   e, b                                        ; $424d: $58
	ld   e, b                                        ; $424e: $58
	rst  $38                                         ; $424f: $ff
	rst  $38                                         ; $4250: $ff
	dec  c                                           ; $4251: $0d
	nop                                              ; $4252: $00
	ld   a, [bc]                                     ; $4253: $0a
	inc  e                                           ; $4254: $1c
	inc  b                                           ; $4255: $04
	ld   bc, $0101                                   ; $4256: $01 $01 $01
	ld   d, b                                        ; $4259: $50
	ei                                               ; $425a: $fb
	sbc  [hl]                                        ; $425b: $9e
	ld   h, a                                        ; $425c: $67
	ld   [hl], c                                     ; $425d: $71
	ld   e, e                                        ; $425e: $5b
	sbc  b                                           ; $425f: $98
	ld   h, l                                        ; $4260: $65
	ld   l, l                                        ; $4261: $6d
	sbc  a                                           ; $4262: $9f
	dec  c                                           ; $4263: $0d
	ld   h, [hl]                                     ; $4264: $66
	sub  c                                           ; $4265: $91
	ld   d, b                                        ; $4266: $50
	ld   a, e                                        ; $4267: $7b
	sbc  [hl]                                        ; $4268: $9e
	ld   l, a                                        ; $4269: $6f
	ld   d, d                                        ; $426a: $52
	ld   [bc], a                                     ; $426b: $02
	inc  de                                          ; $426c: $13
	ld   l, a                                        ; $426d: $6f
	sub  c                                           ; $426e: $91
	and  c                                           ; $426f: $a1
	sbc  a                                           ; $4270: $9f
	dec  c                                           ; $4271: $0d
	nop                                              ; $4272: $00
	ld   a, [bc]                                     ; $4273: $0a
	dec  c                                           ; $4274: $0d
	nop                                              ; $4275: $00
	nop                                              ; $4276: $00
	rrca                                             ; $4277: $0f
	nop                                              ; $4278: $00
	ld   bc, $1e09                                   ; $4279: $01 $09 $1e
	add  hl, hl                                      ; $427c: $29
	add  hl, bc                                      ; $427d: $09
	nop                                              ; $427e: $00
	nop                                              ; $427f: $00
	inc  b                                           ; $4280: $04
	add  b                                           ; $4281: $80
	ld   d, $01                                      ; $4282: $16 $01
	rst  $38                                         ; $4284: $ff
	jr   nz, @+$06                                   ; $4285: $20 $04

	add  b                                           ; $4287: $80
	rla                                              ; $4288: $17
	ld   bc, $2000                                   ; $4289: $01 $00 $20
	inc  e                                           ; $428c: $1c
	nop                                              ; $428d: $00
	ld   c, $01                                      ; $428e: $0e $01
	rrca                                             ; $4290: $0f
	nop                                              ; $4291: $00
	ld   bc, $0102                                   ; $4292: $01 $02 $01
	sub  [hl]                                        ; $4295: $96
	ld   h, l                                        ; $4296: $65
	sbc  [hl]                                        ; $4297: $9e
	cp   d                                           ; $4298: $ba
	xor  h                                           ; $4299: $ac
	call nz, $0476                                   ; $429a: $c4 $76 $04
	call nc, $025a                                   ; $429d: $d4 $5a $02
	ld   a, d                                        ; $42a0: $7a
	adc  a                                           ; $42a1: $8f
	ld   l, l                                        ; $42a2: $6d
	ld   l, h                                        ; $42a3: $6c
	sbc  a                                           ; $42a4: $9f
	dec  c                                           ; $42a5: $0d
	inc  b                                           ; $42a6: $04
	dec  c                                           ; $42a7: $0d
	inc  bc                                          ; $42a8: $03
	cp   $d1                                         ; $42a9: $fe $d1
	call nz, $ecc2                                   ; $42ab: $c4 $c2 $ec
	ld   l, [hl]                                     ; $42ae: $6e
	ld   a, [$020d]                                  ; $42af: $fa $0d $02
	and  l                                           ; $42b2: $a5
	inc  b                                           ; $42b3: $04
	xor  d                                           ; $42b4: $aa
	sub  b                                           ; $42b5: $90
	ld   e, d                                        ; $42b6: $5a
	and  c                                           ; $42b7: $a1
	ld   a, [hl]                                     ; $42b8: $7e
	sbc  c                                           ; $42b9: $99
	ld   l, h                                        ; $42ba: $6c
	ld   a, [$0dfa]                                  ; $42bb: $fa $fa $0d
	nop                                              ; $42be: $00
	ld   a, [bc]                                     ; $42bf: $0a
	inc  d                                           ; $42c0: $14
	ld   b, $01                                      ; $42c1: $06 $01
	rrca                                             ; $42c3: $0f
	ld   [bc], a                                     ; $42c4: $02
	nop                                              ; $42c5: $00
	ld   bc, $0808                                   ; $42c6: $01 $08 $08
	ld   h, e                                        ; $42c9: $63
	and  c                                           ; $42ca: $a1
	sbc  a                                           ; $42cb: $9f
	dec  c                                           ; $42cc: $0d
	ld   d, d                                        ; $42cd: $52
	sub  a                                           ; $42ce: $97
	ld   [hl], c                                     ; $42cf: $71
	ld   h, l                                        ; $42d0: $65
	sub  c                                           ; $42d1: $91
	sbc  c                                           ; $42d2: $99
	ld   sp, hl                                      ; $42d3: $f9
	dec  c                                           ; $42d4: $0d
	nop                                              ; $42d5: $00
	ld   a, [bc]                                     ; $42d6: $0a
	rrca                                             ; $42d7: $0f
	nop                                              ; $42d8: $00
	ld   bc, $0a14                                   ; $42d9: $01 $14 $0a
	ld   bc, $7d01                                   ; $42dc: $01 $01 $7d
	ld   d, d                                        ; $42df: $52
	sbc  [hl]                                        ; $42e0: $9e
	ld   [hl], a                                     ; $42e1: $77
	ld   d, h                                        ; $42e2: $54
	ld   l, h                                        ; $42e3: $6c
	sbc  a                                           ; $42e4: $9f
	dec  c                                           ; $42e5: $0d
	nop                                              ; $42e6: $00
	ld   a, [bc]                                     ; $42e7: $0a
	inc  e                                           ; $42e8: $1c
	ld   [bc], a                                     ; $42e9: $02
	ld   [bc], a                                     ; $42ea: $02
	ld   [bc], a                                     ; $42eb: $02
	ld   bc, $0808                                   ; $42ec: $01 $08 $08
	ld   h, e                                        ; $42ef: $63
	and  c                                           ; $42f0: $a1
	sbc  a                                           ; $42f1: $9f
	dec  c                                           ; $42f2: $0d
	inc  b                                           ; $42f3: $04
	ld   c, c                                        ; $42f4: $49
	ld   e, c                                        ; $42f5: $59
	sbc  l                                           ; $42f6: $9d
	ld   h, a                                        ; $42f7: $67
	sbc  d                                           ; $42f8: $9a
	ld   [hl], h                                     ; $42f9: $74
	ld   d, d                                        ; $42fa: $52
	sub  a                                           ; $42fb: $97
	ld   [hl], c                                     ; $42fc: $71
	ld   h, l                                        ; $42fd: $65
	sub  c                                           ; $42fe: $91
	ld   d, d                                        ; $42ff: $52
	dec  c                                           ; $4300: $0d
	adc  h                                           ; $4301: $8c
	ld   l, c                                        ; $4302: $69
	and  c                                           ; $4303: $a1
	ld   h, c                                        ; $4304: $61
	halt                                             ; $4305: $76
	ld   sp, hl                                      ; $4306: $f9
	dec  c                                           ; $4307: $0d
	nop                                              ; $4308: $00
	ld   a, [bc]                                     ; $4309: $0a
	ld   bc, $4505                                   ; $430a: $01 $05 $45
	inc  b                                           ; $430d: $04
	rst  $28                                         ; $430e: $ef
	sbc  [hl]                                        ; $430f: $9e
	inc  bc                                          ; $4310: $03
	db   $ec                                         ; $4311: $ec
	dec  b                                           ; $4312: $05
	add  hl, de                                      ; $4313: $19
	inc  bc                                          ; $4314: $03
	ld   c, l                                        ; $4315: $4d
	ld   a, c                                        ; $4316: $79
	ld   e, l                                        ; $4317: $5d
	sbc  c                                           ; $4318: $99
	sub  [hl]                                        ; $4319: $96
	ld   d, h                                        ; $431a: $54
	ld   a, c                                        ; $431b: $79
	dec  c                                           ; $431c: $0d
	sbc  l                                           ; $431d: $9d
	ld   l, l                                        ; $431e: $6d
	ld   e, l                                        ; $431f: $5d
	ld   h, l                                        ; $4320: $65
	ld   e, d                                        ; $4321: $5a
	ld   [bc], a                                     ; $4322: $02
	sbc  l                                           ; $4323: $9d
	ld   [hl], c                                     ; $4324: $71
	ld   l, l                                        ; $4325: $6d
	ld   a, h                                        ; $4326: $7c
	and  b                                           ; $4327: $a0
	dec  c                                           ; $4328: $0d
	sbc  l                                           ; $4329: $9d
	ld   h, a                                        ; $432a: $67
	sbc  d                                           ; $432b: $9a
	adc  h                                           ; $432c: $8c
	ld   h, l                                        ; $432d: $65
	ld   l, l                                        ; $432e: $6d
	sbc  l                                           ; $432f: $9d
	ld   a, e                                        ; $4330: $7b
	sbc  a                                           ; $4331: $9f
	dec  c                                           ; $4332: $0d
	nop                                              ; $4333: $00
	ld   a, [bc]                                     ; $4334: $0a
	dec  e                                           ; $4335: $1d
	ld   b, b                                        ; $4336: $40
	ld   [de], a                                     ; $4337: $12
	inc  bc                                          ; $4338: $03
	ld   [de], a                                     ; $4339: $12
	ld   bc, $2903                                   ; $433a: $01 $03 $29
	nop                                              ; $433d: $00
	ld   bc, $6d9d                                   ; $433e: $01 $9d $6d
	ld   e, l                                        ; $4341: $5d
	ld   h, l                                        ; $4342: $65
	halt                                             ; $4343: $76
	ld   a, h                                        ; $4344: $7c
	inc  b                                           ; $4345: $04
	ldh  [$03], a                                    ; $4346: $e0 $03
	dec  hl                                          ; $4348: $2b
	and  b                                           ; $4349: $a0
	dec  c                                           ; $434a: $0d
	sub  d                                           ; $434b: $92
	add  h                                           ; $434c: $84
	sbc  c                                           ; $434d: $99
	ld   a, b                                        ; $434e: $78
	and  c                                           ; $434f: $a1
	ld   [hl], h                                     ; $4350: $74
	sbc  [hl]                                        ; $4351: $9e
	inc  bc                                          ; $4352: $03
	ld   l, c                                        ; $4353: $69
	inc  bc                                          ; $4354: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4355: $cf
	ld   [hl], l                                     ; $4356: $75
	ld   h, a                                        ; $4357: $67
	sbc  l                                           ; $4358: $9d
	ld   a, [$040d]                                  ; $4359: $fa $0d $04
	ld   e, h                                        ; $435c: $5c
	ld   b, $c4                                      ; $435d: $06 $c4
	ld   a, b                                        ; $435f: $78
	ld   h, e                                        ; $4360: $63
	ld   d, d                                        ; $4361: $52
	sbc  a                                           ; $4362: $9f
	dec  c                                           ; $4363: $0d
	nop                                              ; $4364: $00
	ld   a, [bc]                                     ; $4365: $0a
	ld   bc, $9a61                                   ; $4366: $01 $61 $9a
	ld   e, c                                        ; $4369: $59
	sub  a                                           ; $436a: $97
	ld   a, l                                        ; $436b: $7d
	ld   [bc], a                                     ; $436c: $02
	and  c                                           ; $436d: $a1
	and  b                                           ; $436e: $a0
	ld   [hl], d                                     ; $436f: $72
	ld   e, a                                        ; $4370: $5f
	ld   a, b                                        ; $4371: $78
	ld   h, e                                        ; $4372: $63
	ld   d, d                                        ; $4373: $52
	sbc  a                                           ; $4374: $9f
	dec  c                                           ; $4375: $0d
	sbc  l                                           ; $4376: $9d
	ld   e, c                                        ; $4377: $59
	sbc  b                                           ; $4378: $98
	adc  h                                           ; $4379: $8c
	ld   h, l                                        ; $437a: $65
	ld   l, l                                        ; $437b: $6d
	sbc  l                                           ; $437c: $9d
	ld   a, e                                        ; $437d: $7b
	ld   sp, hl                                      ; $437e: $f9
	dec  c                                           ; $437f: $0d
	ld   [hl], l                                     ; $4380: $75
	ld   a, l                                        ; $4381: $7d
	sbc  [hl]                                        ; $4382: $9e
	inc  bc                                          ; $4383: $03
	add  e                                           ; $4384: $83
	dec  b                                           ; $4385: $05
	dec  c                                           ; $4386: $0d
	rst  $38                                         ; $4387: $ff
	rst  $38                                         ; $4388: $ff
	dec  c                                           ; $4389: $0d
	nop                                              ; $438a: $00
	ld   a, [bc]                                     ; $438b: $0a
	dec  c                                           ; $438c: $0d
	nop                                              ; $438d: $00
	nop                                              ; $438e: $00
	rrca                                             ; $438f: $0f
	nop                                              ; $4390: $00
	ld   bc, $1e09                                   ; $4391: $01 $09 $1e
	add  hl, hl                                      ; $4394: $29
	add  hl, bc                                      ; $4395: $09
	nop                                              ; $4396: $00
	nop                                              ; $4397: $00


Script_105::
	inc  de                                          ; $4398: $13
	inc  b                                           ; $4399: $04
	rrca                                             ; $439a: $0f
	nop                                              ; $439b: $00
	ld   bc, $c40e                                   ; $439c: $01 $0e $c4
	ld   [bc], a                                     ; $439f: $02
	add  hl, bc                                      ; $43a0: $09
	ld   d, b                                        ; $43a1: $50
	inc  c                                           ; $43a2: $0c
	ld   [bc], a                                     ; $43a3: $02
	inc  c                                           ; $43a4: $0c
	ld   bc, $6101                                   ; $43a5: $01 $01 $61
	ld   h, c                                        ; $43a8: $61
	ld   e, d                                        ; $43a9: $5a
	inc  b                                           ; $43aa: $04
	ld   c, $04                                      ; $43ab: $0e $04
	ld   [$8f02], sp                                 ; $43ad: $08 $02 $8f
	ld   [bc], a                                     ; $43b0: $02
	sub  d                                           ; $43b1: $92
	inc  b                                           ; $43b2: $04
	ld   a, d                                        ; $43b3: $7a
	ld   e, c                                        ; $43b4: $59
	rst  $38                                         ; $43b5: $ff
	rst  $38                                         ; $43b6: $ff
	dec  c                                           ; $43b7: $0d
	inc  b                                           ; $43b8: $04
	ld   [$8f02], sp                                 ; $43b9: $08 $02 $8f
	ld   [bc], a                                     ; $43bc: $02
	sub  b                                           ; $43bd: $90
	ld   [bc], a                                     ; $43be: $02
	sub  c                                           ; $43bf: $91
	inc  b                                           ; $43c0: $04
	add  hl, bc                                      ; $43c1: $09
	ld   a, h                                        ; $43c2: $7c
	inc  b                                           ; $43c3: $04
	dec  c                                           ; $43c4: $0d
	ld   [bc], a                                     ; $43c5: $02
	sub  [hl]                                        ; $43c6: $96
	inc  b                                           ; $43c7: $04
	ld   b, l                                        ; $43c8: $45
	inc  b                                           ; $43c9: $04
	ld   a, [bc]                                     ; $43ca: $0a
	dec  c                                           ; $43cb: $0d
	ld   e, d                                        ; $43cc: $5a
	and  c                                           ; $43cd: $a1
	ld   a, [hl]                                     ; $43ce: $7e
	sbc  c                                           ; $43cf: $99
	ld   l, h                                        ; $43d0: $6c
	ld   a, [$000d]                                  ; $43d1: $fa $0d $00
	ld   a, [bc]                                     ; $43d4: $0a
	inc  hl                                          ; $43d5: $23
	ld   a, [bc]                                     ; $43d6: $0a
	ld   bc, $fb54                                   ; $43d7: $01 $54 $fb
	and  c                                           ; $43da: $a1
	rst  $38                                         ; $43db: $ff
	rst  $38                                         ; $43dc: $ff
	dec  c                                           ; $43dd: $0d
	ld   e, e                                        ; $43de: $5b
	and  c                                           ; $43df: $a1
	ld   l, a                                        ; $43e0: $6f
	sub  l                                           ; $43e1: $95
	ld   d, h                                        ; $43e2: $54
	ld   h, a                                        ; $43e3: $67
	sbc  c                                           ; $43e4: $99
	ld   a, b                                        ; $43e5: $78
	rst  $38                                         ; $43e6: $ff
	rst  $38                                         ; $43e7: $ff
	dec  c                                           ; $43e8: $0d
	nop                                              ; $43e9: $00
	ld   a, [bc]                                     ; $43ea: $0a
	inc  d                                           ; $43eb: $14
	ld   b, $01                                      ; $43ec: $06 $01
	inc  hl                                          ; $43ee: $23
	dec  c                                           ; $43ef: $0d
	inc  e                                           ; $43f0: $1c
	ld   a, [bc]                                     ; $43f1: $0a
	ld   bc, $0101                                   ; $43f2: $01 $01 $01
	ld   e, b                                        ; $43f5: $58
	ld   d, h                                        ; $43f6: $54
	ld   a, [$9610]                                  ; $43f7: $fa $10 $96
	ld   e, l                                        ; $43fa: $5d
	ld   e, e                                        ; $43fb: $5b
	ld   l, l                                        ; $43fc: $6d
	ld   a, b                                        ; $43fd: $78
	sbc  a                                           ; $43fe: $9f
	dec  c                                           ; $43ff: $0d
	ld   d, b                                        ; $4400: $50
	sub  d                                           ; $4401: $92
	adc  a                                           ; $4402: $8f
	ld   e, l                                        ; $4403: $5d
	and  c                                           ; $4404: $a1
	ld   e, c                                        ; $4405: $59
	sub  a                                           ; $4406: $97
	sbc  [hl]                                        ; $4407: $9e
	dec  c                                           ; $4408: $0d
	dec  b                                           ; $4409: $05
	jr   nz, jr_043_4489                             ; $440a: $20 $7d

	ld   [bc], a                                     ; $440c: $02
	jp   nz, Jump_043_7452                           ; $440d: $c2 $52 $74

	sbc  c                                           ; $4410: $99
	ld   l, d                                        ; $4411: $6a
	sbc  a                                           ; $4412: $9f
	dec  c                                           ; $4413: $0d
	nop                                              ; $4414: $00

jr_043_4415:
	ld   a, [bc]                                     ; $4415: $0a
	ld   bc, $508c                                   ; $4416: $01 $8c $50
	sbc  [hl]                                        ; $4419: $9e
	ld   [bc], a                                     ; $441a: $02
	jr   nz, jr_043_4415                             ; $441b: $20 $f8

	ld   [bc], a                                     ; $441d: $02
	sbc  e                                           ; $441e: $9b
	halt                                             ; $441f: $76
	ld   d, d                                        ; $4420: $52
	ld   d, h                                        ; $4421: $54
	dec  b                                           ; $4422: $05
	ld   a, [$0252]                                  ; $4423: $fa $52 $02
	pop  bc                                          ; $4426: $c1
	ld   [bc], a                                     ; $4427: $02
	xor  c                                           ; $4428: $a9
	dec  c                                           ; $4429: $0d
	ld   l, [hl]                                     ; $442a: $6e
	ld   e, d                                        ; $442b: $5a
	inc  b                                           ; $442c: $04
	dec  c                                           ; $442d: $0d
	ld   [bc], a                                     ; $442e: $02
	sub  [hl]                                        ; $442f: $96
	inc  b                                           ; $4430: $04
	ld   b, l                                        ; $4431: $45
	inc  b                                           ; $4432: $04
	ld   a, [bc]                                     ; $4433: $0a
	ld   e, d                                        ; $4434: $5a
	and  c                                           ; $4435: $a1
	ld   a, [hl]                                     ; $4436: $7e
	ld   [hl], c                                     ; $4437: $71
	ld   [hl], h                                     ; $4438: $74
	ld   e, l                                        ; $4439: $5d
	sbc  d                                           ; $443a: $9a
	sbc  a                                           ; $443b: $9f
	dec  c                                           ; $443c: $0d
	nop                                              ; $443d: $00
	ld   a, [bc]                                     ; $443e: $0a
	ld   bc, $9166                                   ; $443f: $01 $66 $91
	ld   d, b                                        ; $4442: $50
	sbc  [hl]                                        ; $4443: $9e
	ld   h, e                                        ; $4444: $63
	ld   [hl], c                                     ; $4445: $71
	ld   l, e                                        ; $4446: $6b
	ld   e, l                                        ; $4447: $5d
	ld   l, [hl]                                     ; $4448: $6e
	ld   e, d                                        ; $4449: $5a
	sbc  [hl]                                        ; $444a: $9e
	dec  c                                           ; $444b: $0d
	ld   l, a                                        ; $444c: $6f
	sub  l                                           ; $444d: $95
	ld   [hl], c                                     ; $444e: $71
	halt                                             ; $444f: $76
	ld   h, l                                        ; $4450: $65
	ld   l, l                                        ; $4451: $6d
	inc  bc                                          ; $4452: $03
	ld   l, e                                        ; $4453: $6b
	ld   [bc], a                                     ; $4454: $02
	ei                                               ; $4455: $fb
	ld   e, e                                        ; $4456: $5b
	and  b                                           ; $4457: $a0
	dec  c                                           ; $4458: $0d
	ld   h, l                                        ; $4459: $65
	ld   [hl], h                                     ; $445a: $74
	sub  b                                           ; $445b: $90
	sub  a                                           ; $445c: $97
	ld   e, b                                        ; $445d: $58
	ld   d, h                                        ; $445e: $54
	ld   e, c                                        ; $445f: $59
	sbc  a                                           ; $4460: $9f
	dec  c                                           ; $4461: $0d
	nop                                              ; $4462: $00
	ld   a, [bc]                                     ; $4463: $0a
	inc  e                                           ; $4464: $1c
	ld   a, [bc]                                     ; $4465: $0a
	ld   [bc], a                                     ; $4466: $02
	ld   [bc], a                                     ; $4467: $02
	ld   bc, $9250                                   ; $4468: $01 $50 $92
	adc  a                                           ; $446b: $8f
	ld   e, l                                        ; $446c: $5d
	and  c                                           ; $446d: $a1
	ld   e, d                                        ; $446e: $5a
	ld   [bc], a                                     ; $446f: $02
	sub  l                                           ; $4470: $95
	ld   [hl], d                                     ; $4471: $72
	ld   e, a                                        ; $4472: $5f
	ld   [hl], h                                     ; $4473: $74
	ld   e, e                                        ; $4474: $5b
	ld   l, l                                        ; $4475: $6d
	dec  c                                           ; $4476: $0d
	inc  bc                                          ; $4477: $03
	add  d                                           ; $4478: $82
	inc  bc                                          ; $4479: $03
	jr   nc, @+$70                                   ; $447a: $30 $6e

	sbc  a                                           ; $447c: $9f
	adc  h                                           ; $447d: $8c
	ld   l, b                                        ; $447e: $68
	sbc  [hl]                                        ; $447f: $9e
	adc  h                                           ; $4480: $8c
	ld   l, a                                        ; $4481: $6f
	ld   e, d                                        ; $4482: $5a
	ld   d, d                                        ; $4483: $52
	ld   a, l                                        ; $4484: $7d
	ld   a, e                                        ; $4485: $7b
	ld   d, l                                        ; $4486: $55
	dec  c                                           ; $4487: $0d
	halt                                             ; $4488: $76

jr_043_4489:
	dec  b                                           ; $4489: $05
	pop  de                                          ; $448a: $d1
	ld   d, h                                        ; $448b: $54
	ld   e, d                                        ; $448c: $5a
	ld   [bc], a                                     ; $448d: $02
	jr   nz, jr_043_4492                             ; $448e: $20 $02

	add  hl, bc                                      ; $4490: $09
	dec  b                                           ; $4491: $05

jr_043_4492:
	and  d                                           ; $4492: $a2
	dec  b                                           ; $4493: $05
	ld   b, b                                        ; $4494: $40
	ld   a, b                                        ; $4495: $78
	and  c                                           ; $4496: $a1
	ld   [hl], l                                     ; $4497: $75
	ld   a, b                                        ; $4498: $78
	sbc  a                                           ; $4499: $9f
	dec  c                                           ; $449a: $0d
	nop                                              ; $449b: $00
	ld   a, [bc]                                     ; $449c: $0a
	ld   bc, $9a61                                   ; $449d: $01 $61 $9a
	and  b                                           ; $44a0: $a0
	inc  b                                           ; $44a1: $04
	ld   de, $75a1                                   ; $44a2: $11 $a1 $75
	or   [hl]                                        ; $44a5: $b6
	and  l                                           ; $44a6: $a5
	push af                                          ; $44a7: $f5
	ld   h, l                                        ; $44a8: $65
	ld   [hl], h                                     ; $44a9: $74
	ld   e, l                                        ; $44aa: $5d
	sbc  d                                           ; $44ab: $9a
	sbc  a                                           ; $44ac: $9f
	dec  c                                           ; $44ad: $0d
	nop                                              ; $44ae: $00
	ld   a, [bc]                                     ; $44af: $0a
	rrca                                             ; $44b0: $0f
	nop                                              ; $44b1: $00
	ld   bc, $000d                                   ; $44b2: $01 $0d $00
	nop                                              ; $44b5: $00
	ld   c, $ba                                      ; $44b6: $0e $ba
	ld   bc, $0804                                   ; $44b8: $01 $04 $08
	ld   [bc], a                                     ; $44bb: $02
	adc  a                                           ; $44bc: $8f
	ld   [bc], a                                     ; $44bd: $02
	sub  b                                           ; $44be: $90
	ld   [bc], a                                     ; $44bf: $02
	sub  c                                           ; $44c0: $91
	inc  b                                           ; $44c1: $04
	add  hl, bc                                      ; $44c2: $09
	ld   a, l                                        ; $44c3: $7d
	inc  b                                           ; $44c4: $04
	ld   [$2f04], sp                                 ; $44c5: $08 $04 $2f
	and  b                                           ; $44c8: $a0
	inc  bc                                          ; $44c9: $03
	sub  e                                           ; $44ca: $93
	sbc  c                                           ; $44cb: $99
	inc  bc                                          ; $44cc: $03
	or   b                                           ; $44cd: $b0
	dec  c                                           ; $44ce: $0d
	inc  b                                           ; $44cf: $04
	ld   [$8f02], sp                                 ; $44d0: $08 $02 $8f
	ld   [bc], a                                     ; $44d3: $02
	sub  b                                           ; $44d4: $90
	ld   [bc], a                                     ; $44d5: $02
	sub  c                                           ; $44d6: $91
	inc  b                                           ; $44d7: $04
	add  hl, bc                                      ; $44d8: $09
	ld   a, l                                        ; $44d9: $7d
	ld   [bc], a                                     ; $44da: $02
	dec  hl                                          ; $44db: $2b
	halt                                             ; $44dc: $76
	inc  bc                                          ; $44dd: $03
	ld   c, d                                        ; $44de: $4a
	ld   [bc], a                                     ; $44df: $02
	ld   a, c                                        ; $44e0: $79
	and  b                                           ; $44e1: $a0
	inc  b                                           ; $44e2: $04
	ld   c, $03                                      ; $44e3: $0e $03
	dec  de                                          ; $44e5: $1b
	ld   a, c                                        ; $44e6: $79
	dec  c                                           ; $44e7: $0d
	inc  b                                           ; $44e8: $04
	ld   [$8f02], sp                                 ; $44e9: $08 $02 $8f
	ld   [bc], a                                     ; $44ec: $02
	sub  b                                           ; $44ed: $90
	ld   [bc], a                                     ; $44ee: $02
	sub  c                                           ; $44ef: $91
	inc  b                                           ; $44f0: $04
	add  hl, bc                                      ; $44f1: $09
	ld   a, l                                        ; $44f2: $7d
	dec  b                                           ; $44f3: $05
	ccf                                              ; $44f4: $3f
	ld   b, $5c                                      ; $44f5: $06 $5c
	inc  b                                           ; $44f7: $04
	and  c                                           ; $44f8: $a1
	ld   [bc], a                                     ; $44f9: $02
	ld   a, a                                        ; $44fa: $7f
	and  b                                           ; $44fb: $a0
	inc  b                                           ; $44fc: $04
	ld   c, $03                                      ; $44fd: $0e $03
	dec  de                                          ; $44ff: $1b
	ld   a, c                                        ; $4500: $79
	dec  c                                           ; $4501: $0d
	nop                                              ; $4502: $00
	ld   a, [bc]                                     ; $4503: $0a
	ld   bc, $0804                                   ; $4504: $01 $04 $08
	ld   [bc], a                                     ; $4507: $02
	adc  a                                           ; $4508: $8f
	ld   [bc], a                                     ; $4509: $02
	sub  b                                           ; $450a: $90
	ld   [bc], a                                     ; $450b: $02
	sub  c                                           ; $450c: $91
	inc  b                                           ; $450d: $04
	add  hl, bc                                      ; $450e: $09
	ld   a, l                                        ; $450f: $7d
	inc  bc                                          ; $4510: $03
	ld   hl, $0479                                   ; $4511: $21 $79 $04
	ld   e, a                                        ; $4514: $5f
	inc  b                                           ; $4515: $04
	pop  bc                                          ; $4516: $c1
	inc  b                                           ; $4517: $04
	sub  l                                           ; $4518: $95
	inc  b                                           ; $4519: $04
	ld   a, [bc]                                     ; $451a: $0a
	ld   [hl], l                                     ; $451b: $75
	dec  c                                           ; $451c: $0d
	ld   d, b                                        ; $451d: $50
	sbc  c                                           ; $451e: $99
	ld   h, c                                        ; $451f: $61
	halt                                             ; $4520: $76
	ld   a, h                                        ; $4521: $7c
	ld   [bc], a                                     ; $4522: $02
	ld   b, $03                                      ; $4523: $06 $03
	dec  [hl]                                        ; $4525: $35
	and  b                                           ; $4526: $a0
	ld   [bc], a                                     ; $4527: $02
	cp   [hl]                                        ; $4528: $be
	adc  a                                           ; $4529: $8f
	sbc  [hl]                                        ; $452a: $9e
	dec  c                                           ; $452b: $0d
	ld   [bc], a                                     ; $452c: $02
	sbc  l                                           ; $452d: $9d
	inc  b                                           ; $452e: $04
	dec  de                                          ; $452f: $1b
	and  b                                           ; $4530: $a0
	ld   [hl], d                                     ; $4531: $72
	ld   [hl], d                                     ; $4532: $72
	ld   h, l                                        ; $4533: $65
	adc  l                                           ; $4534: $8d
	sbc  [hl]                                        ; $4535: $9e
	dec  c                                           ; $4536: $0d
	nop                                              ; $4537: $00
	ld   a, [bc]                                     ; $4538: $0a
	ld   bc, $7c6b                                   ; $4539: $01 $6b $7c
	inc  b                                           ; $453c: $04
	ld   b, a                                        ; $453d: $47
	inc  b                                           ; $453e: $04
	sub  l                                           ; $453f: $95
	ld   a, c                                        ; $4540: $79
	ld   e, b                                        ; $4541: $58
	ld   e, a                                        ; $4542: $5f
	sbc  c                                           ; $4543: $99
	ld   [bc], a                                     ; $4544: $02
	ld   e, b                                        ; $4545: $58
	inc  b                                           ; $4546: $04
	pop  bc                                          ; $4547: $c1
	ld   [bc], a                                     ; $4548: $02
	jp   Jump_043_5d06                               ; $4549: $c3 $06 $5d


	ld   e, d                                        ; $454c: $5a
	dec  c                                           ; $454d: $0d
	sub  b                                           ; $454e: $90
	sbc  d                                           ; $454f: $9a
	ld   a, b                                        ; $4550: $78
	ld   d, d                                        ; $4551: $52
	sub  [hl]                                        ; $4552: $96
	ld   d, h                                        ; $4553: $54
	ld   a, c                                        ; $4554: $79
	ld   h, l                                        ; $4555: $65
	ld   a, b                                        ; $4556: $78
	ld   e, a                                        ; $4557: $5f
	sbc  d                                           ; $4558: $9a
	ld   a, [hl]                                     ; $4559: $7e
	dec  c                                           ; $455a: $0d
	ld   a, b                                        ; $455b: $78
	sub  a                                           ; $455c: $97
	ld   a, b                                        ; $455d: $78
	ld   d, d                                        ; $455e: $52
	sbc  a                                           ; $455f: $9f
	dec  c                                           ; $4560: $0d
	nop                                              ; $4561: $00
	ld   a, [bc]                                     ; $4562: $0a
	ld   bc, $0b02                                   ; $4563: $01 $02 $0b
	inc  bc                                          ; $4566: $03
	ld   h, l                                        ; $4567: $65
	ld   a, h                                        ; $4568: $7c
	ld   h, c                                        ; $4569: $61
	halt                                             ; $456a: $76
	and  b                                           ; $456b: $a0
	inc  bc                                          ; $456c: $03
	sub  e                                           ; $456d: $93
	sbc  b                                           ; $456e: $98
	sbc  [hl]                                        ; $456f: $9e
	inc  b                                           ; $4570: $04
	ld   [$8f02], sp                                 ; $4571: $08 $02 $8f
	ld   [bc], a                                     ; $4574: $02
	sub  b                                           ; $4575: $90
	ld   [bc], a                                     ; $4576: $02
	sub  c                                           ; $4577: $91
	inc  b                                           ; $4578: $04
	add  hl, bc                                      ; $4579: $09
	dec  c                                           ; $457a: $0d
	ld   a, h                                        ; $457b: $7c
	ld   [bc], a                                     ; $457c: $02
	jr   nz, jr_043_4581                             ; $457d: $20 $02

	nop                                              ; $457f: $00
	halt                                             ; $4580: $76

jr_043_4581:
	ld   h, l                                        ; $4581: $65
	ld   [hl], h                                     ; $4582: $74
	ld   [bc], a                                     ; $4583: $02
	jr   nz, @-$06                                   ; $4584: $20 $f8

	ld   [bc], a                                     ; $4586: $02
	sbc  e                                           ; $4587: $9b
	ld   a, h                                        ; $4588: $7c
	inc  b                                           ; $4589: $04
	dec  c                                           ; $458a: $0d
	ld   [bc], a                                     ; $458b: $02
	sub  [hl]                                        ; $458c: $96
	inc  b                                           ; $458d: $04
	ld   b, l                                        ; $458e: $45
	inc  b                                           ; $458f: $04
	ld   a, [bc]                                     ; $4590: $0a
	dec  c                                           ; $4591: $0d
	and  b                                           ; $4592: $a0
	ld   d, d                                        ; $4593: $52
	ld   l, l                                        ; $4594: $6d
	ld   h, l                                        ; $4595: $65
	adc  h                                           ; $4596: $8c
	ld   h, a                                        ; $4597: $67
	sbc  a                                           ; $4598: $9f
	dec  c                                           ; $4599: $0d
	nop                                              ; $459a: $00
	ld   a, [bc]                                     ; $459b: $0a
	ld   hl, $0d0e                                   ; $459c: $21 $0e $0d
	inc  e                                           ; $459f: $1c
	ld   a, [bc]                                     ; $45a0: $0a
	nop                                              ; $45a1: $00
	nop                                              ; $45a2: $00
	ld   bc, $6596                                   ; $45a3: $01 $96 $65
	sbc  [hl]                                        ; $45a6: $9e
	adc  h                                           ; $45a7: $8c
	ld   d, b                                        ; $45a8: $50
	ld   l, e                                        ; $45a9: $6b
	ld   d, h                                        ; $45aa: $54
	ld   e, c                                        ; $45ab: $59
	ld   l, l                                        ; $45ac: $6d
	ld   e, l                                        ; $45ad: $5d
	ld   a, b                                        ; $45ae: $78
	sbc  c                                           ; $45af: $99
	ld   a, b                                        ; $45b0: $78
	dec  c                                           ; $45b1: $0d
	ld   [$9600], sp                                 ; $45b2: $08 $00 $96
	sbc  a                                           ; $45b5: $9f
	dec  c                                           ; $45b6: $0d
	nop                                              ; $45b7: $00
	ld   a, [bc]                                     ; $45b8: $0a
	ld   bc, $a502                                   ; $45b9: $01 $02 $a5
	ld   [bc], a                                     ; $45bc: $02
	sub  e                                           ; $45bd: $93
	ld   a, h                                        ; $45be: $7c
	inc  b                                           ; $45bf: $04
	dec  c                                           ; $45c0: $0d
	ld   [bc], a                                     ; $45c1: $02
	sub  [hl]                                        ; $45c2: $96
	inc  b                                           ; $45c3: $04
	ld   b, l                                        ; $45c4: $45
	inc  b                                           ; $45c5: $04
	ld   a, [bc]                                     ; $45c6: $0a
	ld   [hl], l                                     ; $45c7: $75
	sbc  [hl]                                        ; $45c8: $9e
	ld   d, d                                        ; $45c9: $52
	ld   d, d                                        ; $45ca: $52
	inc  bc                                          ; $45cb: $03
	ld   [de], a                                     ; $45cc: $12
	inc  bc                                          ; $45cd: $03
	dec  sp                                          ; $45ce: $3b
	dec  c                                           ; $45cf: $0d
	and  b                                           ; $45d0: $a0
	inc  bc                                          ; $45d1: $03
	jr   z, jr_043_463d                              ; $45d2: $28 $69

	ld   a, [hl]                                     ; $45d4: $7e
	sbc  [hl]                                        ; $45d5: $9e
	inc  bc                                          ; $45d6: $03
	ld   h, h                                        ; $45d7: $64
	dec  b                                           ; $45d8: $05
	db   $10                                         ; $45d9: $10
	ld   a, h                                        ; $45da: $7c
	inc  b                                           ; $45db: $04
	ld   a, [bc]                                     ; $45dc: $0a
	inc  bc                                          ; $45dd: $03
	jp   nc, $8d02                                   ; $45de: $d2 $02 $8d

	inc  b                                           ; $45e1: $04
	adc  e                                           ; $45e2: $8b
	halt                                             ; $45e3: $76
	dec  c                                           ; $45e4: $0d
	ld   h, l                                        ; $45e5: $65
	ld   [hl], h                                     ; $45e6: $74
	ld   [bc], a                                     ; $45e7: $02
	ld   h, l                                        ; $45e8: $65
	ld   d, [hl]                                     ; $45e9: $56
	ld   [hl], h                                     ; $45ea: $74
	sub  b                                           ; $45eb: $90
	ld   d, d                                        ; $45ec: $52
	ld   d, d                                        ; $45ed: $52
	halt                                             ; $45ee: $76
	dec  b                                           ; $45ef: $05
	pop  de                                          ; $45f0: $d1
	ld   [hl], c                                     ; $45f1: $71
	ld   [hl], h                                     ; $45f2: $74
	sbc  c                                           ; $45f3: $99
	sbc  a                                           ; $45f4: $9f
	dec  c                                           ; $45f5: $0d
	nop                                              ; $45f6: $00
	ld   a, [bc]                                     ; $45f7: $0a
	ld   bc, $2002                                   ; $45f8: $01 $02 $20
	ld   hl, sp+$02                                  ; $45fb: $f8 $02
	sbc  e                                           ; $45fd: $9b
	halt                                             ; $45fe: $76
	ld   d, d                                        ; $45ff: $52
	ld   d, h                                        ; $4600: $54
	dec  b                                           ; $4601: $05
	ld   a, [$0252]                                  ; $4602: $fa $52 $02
	pop  bc                                          ; $4605: $c1
	ld   [bc], a                                     ; $4606: $02
	xor  c                                           ; $4607: $a9
	ld   l, [hl]                                     ; $4608: $6e
	ld   e, d                                        ; $4609: $5a
	dec  c                                           ; $460a: $0d
	ld   e, d                                        ; $460b: $5a
	and  c                                           ; $460c: $a1
	ld   a, [hl]                                     ; $460d: $7e
	ld   [hl], c                                     ; $460e: $71
	ld   [hl], h                                     ; $460f: $74
	ld   e, l                                        ; $4610: $5d
	sbc  d                                           ; $4611: $9a
	sbc  a                                           ; $4612: $9f
	dec  c                                           ; $4613: $0d
	nop                                              ; $4614: $00
	ld   a, [bc]                                     ; $4615: $0a
	ld   bc, $c102                                   ; $4616: $01 $02 $c1
	inc  b                                           ; $4619: $04
	rla                                              ; $461a: $17
	ld   h, l                                        ; $461b: $65
	ld   [hl], h                                     ; $461c: $74
	sbc  c                                           ; $461d: $99
	ld   l, d                                        ; $461e: $6a
	sbc  a                                           ; $461f: $9f
	dec  c                                           ; $4620: $0d
	ld   l, e                                        ; $4621: $6b
	sbc  d                                           ; $4622: $9a
	ld   h, [hl]                                     ; $4623: $66
	sub  c                                           ; $4624: $91
	ld   d, b                                        ; $4625: $50
	sbc  [hl]                                        ; $4626: $9e
	inc  b                                           ; $4627: $04
	ld   c, $03                                      ; $4628: $0e $03
	sub  b                                           ; $462a: $90
	sub  [hl]                                        ; $462b: $96
	dec  c                                           ; $462c: $0d
	ld   [bc], a                                     ; $462d: $02
	xor  d                                           ; $462e: $aa
	ld   a, l                                        ; $462f: $7d
	sub  [hl]                                        ; $4630: $96
	sbc  e                                           ; $4631: $9b
	ld   h, l                                        ; $4632: $65
	ld   e, l                                        ; $4633: $5d
	ld   l, l                                        ; $4634: $6d
	ld   a, h                                        ; $4635: $7c
	and  c                                           ; $4636: $a1
	ld   l, [hl]                                     ; $4637: $6e
	ld   l, d                                        ; $4638: $6a
	sbc  a                                           ; $4639: $9f
	dec  c                                           ; $463a: $0d
	nop                                              ; $463b: $00
	ld   a, [bc]                                     ; $463c: $0a

jr_043_463d:
	rrca                                             ; $463d: $0f
	add  hl, bc                                      ; $463e: $09
	nop                                              ; $463f: $00
	ld   bc, $527d                                   ; $4640: $01 $7d $52
	sbc  a                                           ; $4643: $9f
	dec  c                                           ; $4644: $0d
	nop                                              ; $4645: $00
	ld   a, [bc]                                     ; $4646: $0a
	inc  e                                           ; $4647: $1c
	add  hl, bc                                      ; $4648: $09
	nop                                              ; $4649: $00
	nop                                              ; $464a: $00
	ld   bc, $9403                                   ; $464b: $01 $03 $94
	inc  b                                           ; $464e: $04
	sbc  [hl]                                        ; $464f: $9e
	ld   a, l                                        ; $4650: $7d
	inc  b                                           ; $4651: $04
	ld   c, $03                                      ; $4652: $0e $03
	sub  b                                           ; $4654: $90
	ld   [bc], a                                     ; $4655: $02
	jr   nz, @+$07                                   ; $4656: $20 $05

	inc  c                                           ; $4658: $0c
	inc  bc                                          ; $4659: $03
	ld   l, h                                        ; $465a: $6c
	dec  b                                           ; $465b: $05
	ld   h, $9f                                      ; $465c: $26 $9f
	dec  c                                           ; $465e: $0d
	inc  b                                           ; $465f: $04
	ld   [$8f02], sp                                 ; $4660: $08 $02 $8f
	ld   [bc], a                                     ; $4663: $02
	sub  b                                           ; $4664: $90
	ld   [bc], a                                     ; $4665: $02
	sub  c                                           ; $4666: $91
	inc  b                                           ; $4667: $04
	add  hl, bc                                      ; $4668: $09
	di                                               ; $4669: $f3
	ld   [bc], a                                     ; $466a: $02
	sbc  b                                           ; $466b: $98
	inc  bc                                          ; $466c: $03
	nop                                              ; $466d: $00
	ld   a, h                                        ; $466e: $7c
	inc  b                                           ; $466f: $04
	ld   a, [bc]                                     ; $4670: $0a
	inc  bc                                          ; $4671: $03
	jp   nc, $9f6e                                   ; $4672: $d2 $6e $9f

	dec  c                                           ; $4675: $0d
	sub  [hl]                                        ; $4676: $96
	sbc  e                                           ; $4677: $9b
	ld   h, l                                        ; $4678: $65
	ld   e, l                                        ; $4679: $5d
	sbc  a                                           ; $467a: $9f
	dec  c                                           ; $467b: $0d
	nop                                              ; $467c: $00
	ld   a, [bc]                                     ; $467d: $0a

	add  hl, de                                      ; $467e: $19
	dec  b                                           ; $467f: $05 - opcode 1 (double idx)
	ld   [bc], a                                     ; $4680: $02 - opcode 2 (branch/num opts)
	ld   [bc], a                                     ; $4681: $02 - read in 62cf
	xor  h                                           ; $4682: $ac -
	ld   [bc], a                                     ; $4683: $02
	and  c                                           ; $4684: $a1
	ld   a, c                                        ; $4685: $79
	inc  bc                                          ; $4686: $03
	call c, $9956                                    ; $4687: $dc $56 $99
	nop                                              ; $468a: $00 - end of text
	nop                                              ; $468b: $00 - stored as part of 62da
	ld   [bc], a                                     ; $468c: $02 - read in 62cf
	and  c                                           ; $468d: $a1
	ld   [bc], a                                     ; $468e: $02
	ld   [hl], $79                                   ; $468f: $36 $79
	inc  bc                                          ; $4691: $03
	call c, $9956                                    ; $4692: $dc $56 $99
	nop                                              ; $4695: $00 - end of text
	db $01 ; - stored as part of 62da
	
	db $07 ; jump if binops
	dw $0314 ; relative address - 0x46ac
	db $02, $03 ; push special ram byte wTimedQuestionAnswer
	db $01, $00 ; push $00
	db $20 ; eq
	db $00 ; end

	db $07
	dw $03dc ; - 4774
	db $02, $03
	db $01, $01 ; push $01
	db $20 ; eq
	db $00

	db $06 ; force jump
	dw $04e9 ; - 4881

	rrca                                             ; $46ac: $0f
	nop                                              ; $46ad: $00
	ld   bc, $7d01                                   ; $46ae: $01 $01 $7d
	ld   d, d                                        ; $46b1: $52
	ld   a, [GetRandomNumInPreSpecifiedRange]                                  ; $46b2: $fa $10 $0d
	sub  [hl]                                        ; $46b5: $96
	sbc  e                                           ; $46b6: $9b
	ld   h, l                                        ; $46b7: $65
	ld   e, l                                        ; $46b8: $5d
	ld   e, b                                        ; $46b9: $58
	ld   [bc], a                                     ; $46ba: $02
	add  b                                           ; $46bb: $80
	ld   d, d                                        ; $46bc: $52
	ld   h, l                                        ; $46bd: $65
	adc  h                                           ; $46be: $8c
	ld   h, a                                        ; $46bf: $67
	sbc  a                                           ; $46c0: $9f
	dec  c                                           ; $46c1: $0d
	nop                                              ; $46c2: $00
	ld   a, [bc]                                     ; $46c3: $0a
	ld   bc, $7c50                                   ; $46c4: $01 $50 $7c
	rst  $38                                         ; $46c7: $ff
	rst  $38                                         ; $46c8: $ff
	rst  $38                                         ; $46c9: $ff
	rst  $38                                         ; $46ca: $ff
	dec  c                                           ; $46cb: $0d
	inc  b                                           ; $46cc: $04
	ld   l, l                                        ; $46cd: $6d
	sub  b                                           ; $46ce: $90
	sbc  [hl]                                        ; $46cf: $9e
	inc  b                                           ; $46d0: $04
	ld   c, $03                                      ; $46d1: $0e $03
	sub  b                                           ; $46d3: $90
	ld   h, e                                        ; $46d4: $63
	and  c                                           ; $46d5: $a1
	ld   a, h                                        ; $46d6: $7c
	sub  [hl]                                        ; $46d7: $96
	ld   d, h                                        ; $46d8: $54
	ld   a, c                                        ; $46d9: $79
	dec  c                                           ; $46da: $0d
	xor  h                                           ; $46db: $ac
	call nz, $a5b4                                   ; $46dc: $c4 $b4 $a5
	and  l                                           ; $46df: $a5
	inc  b                                           ; $46e0: $04
	ld   a, [bc]                                     ; $46e1: $0a
	inc  bc                                          ; $46e2: $03
	jp   nc, Jump_043_7879                           ; $46e3: $d2 $79 $78

	sbc  d                                           ; $46e6: $9a
	adc  h                                           ; $46e7: $8c
	ld   h, a                                        ; $46e8: $67
	ld   e, c                                        ; $46e9: $59
	ld   sp, hl                                      ; $46ea: $f9
	dec  c                                           ; $46eb: $0d
	nop                                              ; $46ec: $00
	ld   a, [bc]                                     ; $46ed: $0a
	inc  e                                           ; $46ee: $1c
	add  hl, bc                                      ; $46ef: $09
	ld   bc, $0101                                   ; $46f0: $01 $01 $01
	ld   l, e                                        ; $46f3: $6b
	sbc  d                                           ; $46f4: $9a
	ld   a, l                                        ; $46f5: $7d
	xor  [hl]                                        ; $46f6: $ae
	ldh  [$7c], a                                    ; $46f7: $e0 $7c
	inc  bc                                          ; $46f9: $03
	db   $d3                                         ; $46fa: $d3
	dec  b                                           ; $46fb: $05
	ld   a, [bc]                                     ; $46fc: $0a
	ld   h, l                                        ; $46fd: $65
	ld   l, [hl]                                     ; $46fe: $6e
	ld   d, d                                        ; $46ff: $52
	ld   l, [hl]                                     ; $4700: $6e
	sbc  a                                           ; $4701: $9f
	dec  c                                           ; $4702: $0d
	ld   [hl], l                                     ; $4703: $75
	sub  b                                           ; $4704: $90
	dec  b                                           ; $4705: $05
	ld   [hl], e                                     ; $4706: $73
	ld   a, b                                        ; $4707: $78
	and  c                                           ; $4708: $a1
	ld   e, c                                        ; $4709: $59
	and  b                                           ; $470a: $a0
	inc  b                                           ; $470b: $04
	call nc, $1f06                                   ; $470c: $d4 $06 $1f
	ld   a, c                                        ; $470f: $79
	ld   h, a                                        ; $4710: $67
	sbc  c                                           ; $4711: $99
	sub  [hl]                                        ; $4712: $96
	sbc  b                                           ; $4713: $98
	dec  c                                           ; $4714: $0d
	nop                                              ; $4715: $00
	ld   a, [bc]                                     ; $4716: $0a
	ld   bc, $6106                                   ; $4717: $01 $06 $61
	ld   d, d                                        ; $471a: $52
	dec  b                                           ; $471b: $05
	ld   [hl], h                                     ; $471c: $74
	ld   h, a                                        ; $471d: $67
	ld   [hl], d                                     ; $471e: $72
	sub  b                                           ; $471f: $90
	sbc  b                                           ; $4720: $98
	ld   [hl], l                                     ; $4721: $75
	sbc  [hl]                                        ; $4722: $9e
	ld   e, d                                        ; $4723: $5a
	and  c                                           ; $4724: $a1
	ld   a, [hl]                                     ; $4725: $7e
	ld   [hl], c                                     ; $4726: $71
	ld   [hl], h                                     ; $4727: $74
	dec  c                                           ; $4728: $0d
	ld   e, l                                        ; $4729: $5d
	sbc  d                                           ; $472a: $9a
	ld   l, l                                        ; $472b: $6d
	adc  c                                           ; $472c: $89
	ld   d, h                                        ; $472d: $54
	ld   e, d                                        ; $472e: $5a
	dec  b                                           ; $472f: $05
	ld   [hl], e                                     ; $4730: $73
	halt                                             ; $4731: $76
	ld   h, l                                        ; $4732: $65
	ld   [hl], h                                     ; $4733: $74
	ld   a, l                                        ; $4734: $7d
	dec  c                                           ; $4735: $0d
	ld   d, h                                        ; $4736: $54
	sbc  d                                           ; $4737: $9a
	ld   h, l                                        ; $4738: $65
	ld   d, d                                        ; $4739: $52
	ld   e, c                                        ; $473a: $59
	ld   a, b                                        ; $473b: $78
	sbc  a                                           ; $473c: $9f
	ret  nc                                          ; $473d: $d0

	ret  nc                                          ; $473e: $d0

	ret  nc                                          ; $473f: $d0

	sbc  a                                           ; $4740: $9f
	dec  c                                           ; $4741: $0d
	nop                                              ; $4742: $00
	ld   a, [bc]                                     ; $4743: $0a
	inc  e                                           ; $4744: $1c
	add  hl, bc                                      ; $4745: $09
	nop                                              ; $4746: $00
	nop                                              ; $4747: $00
	ld   bc, $9a6b                                   ; $4748: $01 $6b $9a
	ld   h, [hl]                                     ; $474b: $66
	sub  c                                           ; $474c: $91
	sbc  [hl]                                        ; $474d: $9e
	ld   h, e                                        ; $474e: $63
	ld   [hl], c                                     ; $474f: $71
	ld   l, e                                        ; $4750: $6b
	ld   e, l                                        ; $4751: $5d
	dec  c                                           ; $4752: $0d
	ld   [bc], a                                     ; $4753: $02
	sbc  b                                           ; $4754: $98
	inc  bc                                          ; $4755: $03
	nop                                              ; $4756: $00
	ld   a, h                                        ; $4757: $7c
	adc  l                                           ; $4758: $8d
	and  c                                           ; $4759: $a1
	ld   a, b                                        ; $475a: $78
	ld   a, c                                        ; $475b: $79
	dec  c                                           ; $475c: $0d
	xor  [hl]                                        ; $475d: $ae
	ldh  [hScriptOpcodeParams], a                                    ; $475e: $e0 $a0
	dec  b                                           ; $4760: $05
	ld   b, a                                        ; $4761: $47
	dec  b                                           ; $4762: $05
	ld   [hl-], a                                    ; $4763: $32
	ld   h, l                                        ; $4764: $65
	sub  [hl]                                        ; $4765: $96
	ld   d, h                                        ; $4766: $54
	sbc  a                                           ; $4767: $9f
	dec  c                                           ; $4768: $0d
	nop                                              ; $4769: $00
	ld   a, [bc]                                     ; $476a: $0a
	dec  c                                           ; $476b: $0d
	nop                                              ; $476c: $00
	nop                                              ; $476d: $00
	rrca                                             ; $476e: $0f
	nop                                              ; $476f: $00
	ld   bc, $5506                                   ; $4770: $01 $06 $55
	dec  b                                           ; $4773: $05
	rrca                                             ; $4774: $0f
	nop                                              ; $4775: $00
	ld   bc, $7d01                                   ; $4776: $01 $01 $7d
	ld   d, d                                        ; $4779: $52
	sbc  a                                           ; $477a: $9f
	sub  [hl]                                        ; $477b: $96
	sbc  e                                           ; $477c: $9b
	ld   h, l                                        ; $477d: $65
	ld   e, l                                        ; $477e: $5d
	ld   e, b                                        ; $477f: $58
	ld   [bc], a                                     ; $4780: $02
	add  b                                           ; $4781: $80
	ld   d, d                                        ; $4782: $52
	ld   h, l                                        ; $4783: $65
	adc  h                                           ; $4784: $8c
	ld   h, a                                        ; $4785: $67
	sbc  a                                           ; $4786: $9f
	dec  c                                           ; $4787: $0d
	inc  b                                           ; $4788: $04
	ld   c, $03                                      ; $4789: $0e $03
	sbc  l                                           ; $478b: $9d
	inc  b                                           ; $478c: $04
	and  [hl]                                        ; $478d: $a6
	ld   [hl], l                                     ; $478e: $75
	ld   h, a                                        ; $478f: $67
	sbc  a                                           ; $4790: $9f
	sub  [hl]                                        ; $4791: $96
	sub  h                                           ; $4792: $94
	ld   d, h                                        ; $4793: $54
	ld   [hl], l                                     ; $4794: $75
	ld   h, a                                        ; $4795: $67
	sub  [hl]                                        ; $4796: $96
	sbc  a                                           ; $4797: $9f
	dec  c                                           ; $4798: $0d
	adc  h                                           ; $4799: $8c
	ld   e, c                                        ; $479a: $59
	ld   l, c                                        ; $479b: $69
	ld   [hl], h                                     ; $479c: $74
	ld   e, l                                        ; $479d: $5d
	ld   l, [hl]                                     ; $479e: $6e
	ld   h, e                                        ; $479f: $63
	ld   d, d                                        ; $47a0: $52
	sbc  a                                           ; $47a1: $9f
	dec  c                                           ; $47a2: $0d
	nop                                              ; $47a3: $00
	ld   a, [bc]                                     ; $47a4: $0a
	ld   bc, $b8d1                                   ; $47a5: $01 $d1 $b8
	call nz, $5276                                   ; $47a8: $c4 $76 $52
	ld   [hl], c                                     ; $47ab: $71
	ld   [hl], h                                     ; $47ac: $74
	dec  c                                           ; $47ad: $0d
	cp   e                                           ; $47ae: $bb
	pop  de                                          ; $47af: $d1
	call nz, $0276                                   ; $47b0: $c4 $76 $02
	add  e                                           ; $47b3: $83
	adc  a                                           ; $47b4: $8f
	adc  h                                           ; $47b5: $8c
	ld   h, a                                        ; $47b6: $67
	ld   e, c                                        ; $47b7: $59
	sub  a                                           ; $47b8: $97
	sbc  a                                           ; $47b9: $9f
	dec  c                                           ; $47ba: $0d
	nop                                              ; $47bb: $00
	ld   a, [bc]                                     ; $47bc: $0a
	inc  e                                           ; $47bd: $1c
	add  hl, bc                                      ; $47be: $09
	inc  b                                           ; $47bf: $04
	inc  b                                           ; $47c0: $04
	ld   bc, $9496                                   ; $47c1: $01 $96 $94
	ld   d, h                                        ; $47c4: $54
	ld   sp, hl                                      ; $47c5: $f9
	dec  c                                           ; $47c6: $0d
	pop  de                                          ; $47c7: $d1
	cp   b                                           ; $47c8: $b8
	call nz, $5276                                   ; $47c9: $c4 $76 $52
	ld   [hl], c                                     ; $47cc: $71
	ld   [hl], h                                     ; $47cd: $74
	db   $10                                         ; $47ce: $10
	dec  c                                           ; $47cf: $0d
	cp   e                                           ; $47d0: $bb
	pop  de                                          ; $47d1: $d1
	call nz, $0276                                   ; $47d2: $c4 $76 $02
	add  e                                           ; $47d5: $83
	adc  a                                           ; $47d6: $8f
	sbc  c                                           ; $47d7: $99
	rst  $38                                         ; $47d8: $ff
	rst  $38                                         ; $47d9: $ff
	ld   sp, hl                                      ; $47da: $f9
	dec  c                                           ; $47db: $0d
	nop                                              ; $47dc: $00
	ld   a, [bc]                                     ; $47dd: $0a
	inc  e                                           ; $47de: $1c
	add  hl, bc                                      ; $47df: $09
	ld   [bc], a                                     ; $47e0: $02
	ld   [bc], a                                     ; $47e1: $02
	ld   bc, $e3c1                                   ; $47e2: $01 $c1 $e3
	ld   l, [hl]                                     ; $47e5: $6e
	ld   l, h                                        ; $47e6: $6c
	sbc  [hl]                                        ; $47e7: $9e
	ld   l, e                                        ; $47e8: $6b
	and  c                                           ; $47e9: $a1
	ld   a, b                                        ; $47ea: $78
	ld   d, h                                        ; $47eb: $54
	sbc  l                                           ; $47ec: $9d
	ld   [hl], d                                     ; $47ed: $72
	ld   d, d                                        ; $47ee: $52
	ld   l, l                                        ; $47ef: $6d
	dec  c                                           ; $47f0: $0d
	inc  bc                                          ; $47f1: $03
	ld   [hl], l                                     ; $47f2: $75
	ld   e, d                                        ; $47f3: $5a
	adc  h                                           ; $47f4: $8c
	ld   d, [hl]                                     ; $47f5: $56
	ld   h, [hl]                                     ; $47f6: $66
	sub  c                                           ; $47f7: $91
	sbc  a                                           ; $47f8: $9f
	dec  c                                           ; $47f9: $0d
	add  b                                           ; $47fa: $80
	halt                                             ; $47fb: $76
	ld   [hl], d                                     ; $47fc: $72
	ld   [bc], a                                     ; $47fd: $02
	sbc  l                                           ; $47fe: $9d
	ld   [hl], c                                     ; $47ff: $71
	ld   [hl], h                                     ; $4800: $74
	ld   e, b                                        ; $4801: $58
	ld   h, c                                        ; $4802: $61
	ld   d, h                                        ; $4803: $54
	sbc  a                                           ; $4804: $9f
	dec  c                                           ; $4805: $0d
	nop                                              ; $4806: $00
	ld   a, [bc]                                     ; $4807: $0a
	ld   bc, $7c61                                   ; $4808: $01 $61 $7c
	inc  b                                           ; $480b: $04
	ld   [$8f02], sp                                 ; $480c: $08 $02 $8f
	ld   [bc], a                                     ; $480f: $02
	sub  b                                           ; $4810: $90
	ld   [bc], a                                     ; $4811: $02
	sub  c                                           ; $4812: $91
	inc  b                                           ; $4813: $04
	add  hl, bc                                      ; $4814: $09
	ld   a, l                                        ; $4815: $7d
	ld   e, e                                        ; $4816: $5b
	add  c                                           ; $4817: $81
	ld   h, l                                        ; $4818: $65
	ld   d, d                                        ; $4819: $52
	sbc  a                                           ; $481a: $9f
	dec  c                                           ; $481b: $0d
	inc  b                                           ; $481c: $04
	ld   a, d                                        ; $481d: $7a
	ld   [bc], a                                     ; $481e: $02
	ld   a, e                                        ; $481f: $7b
	ld   a, c                                        ; $4820: $79
	sub  [hl]                                        ; $4821: $96
	ld   [hl], c                                     ; $4822: $71
	ld   [hl], h                                     ; $4823: $74
	ld   a, l                                        ; $4824: $7d
	sbc  [hl]                                        ; $4825: $9e
	inc  b                                           ; $4826: $04
	ld   [hl-], a                                    ; $4827: $32
	inc  b                                           ; $4828: $04
	dec  bc                                          ; $4829: $0b
	ld   [hl], l                                     ; $482a: $75
	inc  bc                                          ; $482b: $03
	adc  b                                           ; $482c: $88
	inc  b                                           ; $482d: $04
	ld   a, [bc]                                     ; $482e: $0a
	dec  c                                           ; $482f: $0d
	halt                                             ; $4830: $76
	ld   d, d                                        ; $4831: $52
	ld   d, h                                        ; $4832: $54
	ld   h, c                                        ; $4833: $61
	halt                                             ; $4834: $76
	sub  b                                           ; $4835: $90
	ld   d, b                                        ; $4836: $50
	sbc  c                                           ; $4837: $99
	sbc  a                                           ; $4838: $9f
	dec  c                                           ; $4839: $0d
	nop                                              ; $483a: $00
	ld   a, [bc]                                     ; $483b: $0a
	ld   bc, $6e94                                   ; $483c: $01 $94 $6e
	and  c                                           ; $483f: $a1
	ld   a, l                                        ; $4840: $7d
	pop  bc                                          ; $4841: $c1
	db   $e3                                         ; $4842: $e3
	ld   l, [hl]                                     ; $4843: $6e
	ld   l, h                                        ; $4844: $6c
	sbc  a                                           ; $4845: $9f
	dec  c                                           ; $4846: $0d
	ld   [bc], a                                     ; $4847: $02
	and  c                                           ; $4848: $a1
	and  b                                           ; $4849: $a0
	ld   [bc], a                                     ; $484a: $02
	inc  l                                           ; $484b: $2c
	ld   e, e                                        ; $484c: $5b
	ld   h, l                                        ; $484d: $65
	adc  a                                           ; $484e: $8f
	sbc  c                                           ; $484f: $99
	sub  [hl]                                        ; $4850: $96
	ld   d, h                                        ; $4851: $54
	ld   a, c                                        ; $4852: $79
	sbc  a                                           ; $4853: $9f
	dec  c                                           ; $4854: $0d
	nop                                              ; $4855: $00
	ld   a, [bc]                                     ; $4856: $0a
	inc  e                                           ; $4857: $1c
	add  hl, bc                                      ; $4858: $09
	nop                                              ; $4859: $00
	nop                                              ; $485a: $00
	ld   bc, $9166                                   ; $485b: $01 $66 $91
	ld   d, b                                        ; $485e: $50
	sbc  [hl]                                        ; $485f: $9e
	ld   [bc], a                                     ; $4860: $02
	sbc  b                                           ; $4861: $98
	inc  bc                                          ; $4862: $03
	nop                                              ; $4863: $00
	ld   a, h                                        ; $4864: $7c
	adc  l                                           ; $4865: $8d
	and  c                                           ; $4866: $a1
	ld   a, b                                        ; $4867: $78
	ld   a, c                                        ; $4868: $79
	dec  c                                           ; $4869: $0d
	xor  [hl]                                        ; $486a: $ae
	ldh  [hScriptOpcodeParams], a                                    ; $486b: $e0 $a0
	dec  b                                           ; $486d: $05
	ld   b, a                                        ; $486e: $47
	dec  b                                           ; $486f: $05
	ld   [hl-], a                                    ; $4870: $32
	ld   h, l                                        ; $4871: $65
	sub  [hl]                                        ; $4872: $96
	ld   d, h                                        ; $4873: $54
	sbc  a                                           ; $4874: $9f
	dec  c                                           ; $4875: $0d
	nop                                              ; $4876: $00
	ld   a, [bc]                                     ; $4877: $0a
	dec  c                                           ; $4878: $0d
	nop                                              ; $4879: $00
	nop                                              ; $487a: $00
	rrca                                             ; $487b: $0f
	nop                                              ; $487c: $00
	ld   bc, $5506                                   ; $487d: $01 $06 $55
	dec  b                                           ; $4880: $05
	inc  e                                           ; $4881: $1c
	add  hl, bc                                      ; $4882: $09
	inc  b                                           ; $4883: $04
	inc  b                                           ; $4884: $04
	ld   bc, $5258                                   ; $4885: $01 $58 $52
	ld   e, b                                        ; $4888: $58
	ld   d, d                                        ; $4889: $52
	sbc  a                                           ; $488a: $9f
	ld   e, e                                        ; $488b: $5b
	and  c                                           ; $488c: $a1
	ld   l, a                                        ; $488d: $6f
	sub  l                                           ; $488e: $95
	ld   d, h                                        ; $488f: $54
	ld   h, l                                        ; $4890: $65
	ld   [hl], h                                     ; $4891: $74
	ld   d, d                                        ; $4892: $52
	sbc  c                                           ; $4893: $99
	dec  c                                           ; $4894: $0d
	ld   a, h                                        ; $4895: $7c
	ld   a, l                                        ; $4896: $7d
	inc  b                                           ; $4897: $04
	sbc  [hl]                                        ; $4898: $9e
	ld   e, c                                        ; $4899: $59
	sbc  c                                           ; $489a: $99
	ld   e, a                                        ; $489b: $5f
	ld   [hl], a                                     ; $489c: $77
	sbc  [hl]                                        ; $489d: $9e
	dec  c                                           ; $489e: $0d
	inc  b                                           ; $489f: $04
	sub  a                                           ; $48a0: $97
	ld   [bc], a                                     ; $48a1: $02
	jp   $5b7d                                       ; $48a2: $c3 $7d $5b


	ld   l, a                                        ; $48a5: $6f
	and  c                                           ; $48a6: $a1
	halt                                             ; $48a7: $76
	ld   h, a                                        ; $48a8: $67
	sbc  c                                           ; $48a9: $99
	sub  [hl]                                        ; $48aa: $96
	ld   d, h                                        ; $48ab: $54
	ld   a, c                                        ; $48ac: $79
	sbc  a                                           ; $48ad: $9f
	dec  c                                           ; $48ae: $0d
	nop                                              ; $48af: $00
	ld   a, [bc]                                     ; $48b0: $0a
	inc  e                                           ; $48b1: $1c
	add  hl, bc                                      ; $48b2: $09
	nop                                              ; $48b3: $00
	nop                                              ; $48b4: $00
	ld   bc, $508c                                   ; $48b5: $01 $8c $50
	sbc  [hl]                                        ; $48b8: $9e
	ld   l, e                                        ; $48b9: $6b
	ld   d, h                                        ; $48ba: $54
	ld   e, c                                        ; $48bb: $59
	ld   l, l                                        ; $48bc: $6d
	ld   e, l                                        ; $48bd: $5d
	ld   a, b                                        ; $48be: $78
	sbc  c                                           ; $48bf: $99
	ld   a, b                                        ; $48c0: $78
	sub  [hl]                                        ; $48c1: $96
	dec  c                                           ; $48c2: $0d
	ld   [bc], a                                     ; $48c3: $02
	and  l                                           ; $48c4: $a5
	ld   e, c                                        ; $48c5: $59
	sub  a                                           ; $48c6: $97
	ld   [bc], a                                     ; $48c7: $02
	sbc  b                                           ; $48c8: $98
	inc  bc                                          ; $48c9: $03
	nop                                              ; $48ca: $00
	ld   a, h                                        ; $48cb: $7c
	adc  l                                           ; $48cc: $8d
	and  c                                           ; $48cd: $a1
	ld   a, b                                        ; $48ce: $78
	ld   a, c                                        ; $48cf: $79
	dec  c                                           ; $48d0: $0d
	dec  b                                           ; $48d1: $05
	ld   b, a                                        ; $48d2: $47
	dec  b                                           ; $48d3: $05
	ld   [hl-], a                                    ; $48d4: $32
	ld   h, a                                        ; $48d5: $67
	sbc  c                                           ; $48d6: $99
	and  c                                           ; $48d7: $a1
	ld   l, [hl]                                     ; $48d8: $6e
	ld   e, c                                        ; $48d9: $59
	sub  a                                           ; $48da: $97
	db   $ec                                         ; $48db: $ec
	db   $eb                                         ; $48dc: $eb
	call nz, $bab0                                   ; $48dd: $c4 $b0 $ba
	sbc  a                                           ; $48e0: $9f
	dec  c                                           ; $48e1: $0d
	nop                                              ; $48e2: $00
	ld   a, [bc]                                     ; $48e3: $0a
	dec  c                                           ; $48e4: $0d
	nop                                              ; $48e5: $00
	nop                                              ; $48e6: $00
	rrca                                             ; $48e7: $0f
	nop                                              ; $48e8: $00
	ld   bc, $5506                                   ; $48e9: $01 $06 $55
	dec  b                                           ; $48ec: $05
	inc  hl                                          ; $48ed: $23
	ccf                                              ; $48ee: $3f
	dec  de                                          ; $48ef: $1b
	ld   bc, $090f                                   ; $48f0: $01 $0f $09
	nop                                              ; $48f3: $00
	ld   bc, $5092                                   ; $48f4: $01 $92 $50
	sbc  [hl]                                        ; $48f7: $9e
	adc  l                                           ; $48f8: $8d
	and  c                                           ; $48f9: $a1
	ld   a, b                                        ; $48fa: $78
	inc  bc                                          ; $48fb: $03
	ld   h, d                                        ; $48fc: $62
	adc  h                                           ; $48fd: $8c
	ld   [hl], c                                     ; $48fe: $71
	ld   [hl], h                                     ; $48ff: $74
	sbc  c                                           ; $4900: $99

jr_043_4901:
	ld   a, e                                        ; $4901: $7b
	sbc  a                                           ; $4902: $9f
	dec  c                                           ; $4903: $0d
	ld   l, e                                        ; $4904: $6b
	sbc  d                                           ; $4905: $9a
	ld   h, [hl]                                     ; $4906: $66
	sub  c                                           ; $4907: $91
	ld   d, b                                        ; $4908: $50
	sbc  [hl]                                        ; $4909: $9e
	dec  b                                           ; $490a: $05
	ld   b, a                                        ; $490b: $47
	dec  b                                           ; $490c: $05
	ld   [hl-], a                                    ; $490d: $32
	ld   h, l                                        ; $490e: $65
	sub  [hl]                                        ; $490f: $96
	ld   d, h                                        ; $4910: $54
	sbc  a                                           ; $4911: $9f
	dec  c                                           ; $4912: $0d
	nop                                              ; $4913: $00
	ld   a, [bc]                                     ; $4914: $0a
	ld   bc, $a502                                   ; $4915: $01 $02 $a5
	inc  b                                           ; $4918: $04
	xor  d                                           ; $4919: $aa
	ld   e, c                                        ; $491a: $59
	sub  a                                           ; $491b: $97
	ld   [bc], a                                     ; $491c: $02
	jr   nz, @-$06                                   ; $491d: $20 $f8

	ld   [bc], a                                     ; $491f: $02
	sbc  e                                           ; $4920: $9b
	ld   [bc], a                                     ; $4921: $02
	xor  c                                           ; $4922: $a9
	sbc  [hl]                                        ; $4923: $9e
	ld   h, c                                        ; $4924: $61
	ld   a, h                                        ; $4925: $7c
	ld   [bc], a                                     ; $4926: $02
	sbc  b                                           ; $4927: $98
	inc  bc                                          ; $4928: $03
	nop                                              ; $4929: $00
	ld   a, c                                        ; $492a: $79
	dec  c                                           ; $492b: $0d
	inc  b                                           ; $492c: $04
	dec  c                                           ; $492d: $0d
	ld   [bc], a                                     ; $492e: $02
	sub  [hl]                                        ; $492f: $96
	inc  b                                           ; $4930: $04
	ld   b, l                                        ; $4931: $45
	inc  b                                           ; $4932: $04
	ld   a, [bc]                                     ; $4933: $0a
	ld   h, a                                        ; $4934: $67
	sbc  c                                           ; $4935: $99
	ld   h, c                                        ; $4936: $61
	halt                                             ; $4937: $76
	ld   a, c                                        ; $4938: $79
	ld   a, b                                        ; $4939: $78
	ld   [hl], c                                     ; $493a: $71
	ld   l, l                                        ; $493b: $6d
	dec  c                                           ; $493c: $0d
	ld   [$5d00], sp                                 ; $493d: $08 $00 $5d
	and  c                                           ; $4940: $a1
	ld   l, [hl]                                     ; $4941: $6e
	sbc  a                                           ; $4942: $9f
	dec  c                                           ; $4943: $0d
	nop                                              ; $4944: $00
	ld   a, [bc]                                     ; $4945: $0a
	add  hl, de                                      ; $4946: $19
	dec  b                                           ; $4947: $05
	inc  bc                                          ; $4948: $03
	ld   d, b                                        ; $4949: $50
	ld   d, d                                        ; $494a: $52
	ld   h, e                                        ; $494b: $63
	ld   [hl], d                                     ; $494c: $72
	ld   h, a                                        ; $494d: $67
	sbc  c                                           ; $494e: $99
	nop                                              ; $494f: $00
	nop                                              ; $4950: $00
	ld   [bc], a                                     ; $4951: $02
	sbc  b                                           ; $4952: $98
	inc  bc                                          ; $4953: $03
	nop                                              ; $4954: $00
	ld   a, h                                        ; $4955: $7c
	adc  l                                           ; $4956: $8d
	and  c                                           ; $4957: $a1
	ld   a, b                                        ; $4958: $78
	and  b                                           ; $4959: $a0
	adc  c                                           ; $495a: $89
	adc  a                                           ; $495b: $8f
	sbc  c                                           ; $495c: $99
	nop                                              ; $495d: $00
	ld   bc, $0703                                   ; $495e: $01 $03 $07
	ld   d, d                                        ; $4961: $52
	and  b                                           ; $4962: $a0
	inc  bc                                          ; $4963: $03
	jr   jr_043_4901                                 ; $4964: $18 $9b

	ld   d, h                                        ; $4966: $54
	halt                                             ; $4967: $76
	ld   h, c                                        ; $4968: $61
	ld   h, c                                        ; $4969: $61
	sbc  e                                           ; $496a: $9b
	adc  l                                           ; $496b: $8d
	sbc  c                                           ; $496c: $99
	nop                                              ; $496d: $00
	ld   [bc], a                                     ; $496e: $02
	db $07
	dw $05f5
	db $02, $03
	db $01, $00
	db $20
	db $00
	
	db $07
	cp   [hl]                                        ; $4979: $be
	rlca                                             ; $497a: $07
	ld   [bc], a                                     ; $497b: $02
	inc  bc                                          ; $497c: $03
	ld   bc, $2001                                   ; $497d: $01 $01 $20
	nop                                              ; $4980: $00
	rlca                                             ; $4981: $07
	or   a                                           ; $4982: $b7
	add  hl, bc                                      ; $4983: $09
	ld   [bc], a                                     ; $4984: $02
	inc  bc                                          ; $4985: $03
	ld   bc, $2002                                   ; $4986: $01 $02 $20
	nop                                              ; $4989: $00
	ld   b, $73                                      ; $498a: $06 $73
	dec  bc                                          ; $498c: $0b
	rrca                                             ; $498d: $0f
	nop                                              ; $498e: $00
	ld   bc, $6101                                   ; $498f: $01 $01 $61
	and  c                                           ; $4992: $a1
	ld   a, c                                        ; $4993: $79
	ld   l, a                                        ; $4994: $6f
	ld   a, l                                        ; $4995: $7d
	sbc  a                                           ; $4996: $9f
	inc  bc                                          ; $4997: $03
	inc  c                                           ; $4998: $0c
	adc  a                                           ; $4999: $8f

jr_043_499a:
	adc  h                                           ; $499a: $8c
	ld   h, l                                        ; $499b: $65
	ld   [hl], h                                     ; $499c: $74
	sbc  a                                           ; $499d: $9f
	dec  c                                           ; $499e: $0d
	ld   [bc], a                                     ; $499f: $02
	jr   nz, jr_043_499a                             ; $49a0: $20 $f8

	ld   [bc], a                                     ; $49a2: $02
	sbc  e                                           ; $49a3: $9b
	ld   [bc], a                                     ; $49a4: $02
	xor  c                                           ; $49a5: $a9
	ld   e, b                                        ; $49a6: $58
	inc  bc                                          ; $49a7: $03
	add  hl, de                                      ; $49a8: $19
	dec  b                                           ; $49a9: $05
	jr   nz, jr_043_4a25                             ; $49aa: $20 $79

	ld   a, b                                        ; $49ac: $78
	sbc  b                                           ; $49ad: $98
	adc  h                                           ; $49ae: $8c
	ld   h, a                                        ; $49af: $67
	dec  c                                           ; $49b0: $0d
	ld   [$7500], sp                                 ; $49b1: $08 $00 $75
	ld   h, a                                        ; $49b4: $67
	ld   a, [$000d]                                  ; $49b5: $fa $0d $00
	ld   a, [bc]                                     ; $49b8: $0a
	ld   bc, $0d04                                   ; $49b9: $01 $04 $0d
	ld   [bc], a                                     ; $49bc: $02
	sub  [hl]                                        ; $49bd: $96
	inc  b                                           ; $49be: $04
	ld   b, l                                        ; $49bf: $45
	inc  b                                           ; $49c0: $04
	ld   a, [bc]                                     ; $49c1: $0a
	halt                                             ; $49c2: $76
	ld   d, d                                        ; $49c3: $52
	ld   d, h                                        ; $49c4: $54
	ld   h, c                                        ; $49c5: $61
	halt                                             ; $49c6: $76
	ld   [hl], l                                     ; $49c7: $75
	ld   h, a                                        ; $49c8: $67
	ld   e, d                                        ; $49c9: $5a
	dec  c                                           ; $49ca: $0d
	adc  l                                           ; $49cb: $8d
	ld   a, b                                        ; $49cc: $78
	ld   h, e                                        ; $49cd: $63
	and  c                                           ; $49ce: $a1
	ld   a, c                                        ; $49cf: $79
	inc  b                                           ; $49d0: $04
	cp   l                                           ; $49d1: $bd
	dec  b                                           ; $49d2: $05
	ld   l, b                                        ; $49d3: $68
	and  b                                           ; $49d4: $a0
	ld   e, c                                        ; $49d5: $59
	ld   e, a                                        ; $49d6: $5f
	ld   a, b                                        ; $49d7: $78
	ld   d, d                                        ; $49d8: $52
	sub  [hl]                                        ; $49d9: $96
	ld   d, h                                        ; $49da: $54
	dec  c                                           ; $49db: $0d
	dec  b                                           ; $49dc: $05
	ldh  [rSC], a                                    ; $49dd: $e0 $02
	jr   nz, jr_043_49e6                             ; $49df: $20 $05

	ld   d, [hl]                                     ; $49e1: $56
	ld   e, d                                        ; $49e2: $5a
	and  c                                           ; $49e3: $a1
	ld   a, [hl]                                     ; $49e4: $7e
	sbc  b                                           ; $49e5: $98

jr_043_49e6:
	adc  h                                           ; $49e6: $8c
	ld   h, a                                        ; $49e7: $67
	sbc  a                                           ; $49e8: $9f
	dec  c                                           ; $49e9: $0d
	nop                                              ; $49ea: $00
	ld   a, [bc]                                     ; $49eb: $0a
	ld   bc, $9b52                                   ; $49ec: $01 $52 $9b
	ld   d, d                                        ; $49ef: $52
	sbc  e                                           ; $49f0: $9b
	halt                                             ; $49f1: $76
	sbc  [hl]                                        ; $49f2: $9e
	ld   h, d                                        ; $49f3: $62
	ld   h, l                                        ; $49f4: $65
	ld   [hl], a                                     ; $49f5: $77
	ld   d, h                                        ; $49f6: $54
	ld   a, h                                        ; $49f7: $7c
	adc  c                                           ; $49f8: $89
	ld   [hl], a                                     ; $49f9: $77
	dec  c                                           ; $49fa: $0d
	sub  [hl]                                        ; $49fb: $96
	sbc  e                                           ; $49fc: $9b
	ld   h, l                                        ; $49fd: $65
	ld   e, l                                        ; $49fe: $5d
	ld   e, b                                        ; $49ff: $58
	ld   [bc], a                                     ; $4a00: $02
	add  b                                           ; $4a01: $80
	ld   d, d                                        ; $4a02: $52
	ld   d, d                                        ; $4a03: $52
	ld   l, l                                        ; $4a04: $6d
	ld   h, l                                        ; $4a05: $65
	adc  h                                           ; $4a06: $8c
	ld   h, a                                        ; $4a07: $67
	sbc  a                                           ; $4a08: $9f
	dec  c                                           ; $4a09: $0d
	nop                                              ; $4a0a: $00
	ld   a, [bc]                                     ; $4a0b: $0a
	inc  e                                           ; $4a0c: $1c
	ld   b, $01                                      ; $4a0d: $06 $01
	ld   bc, $401d                                   ; $4a0f: $01 $1d $40
	ld   d, $03                                      ; $4a12: $16 $03
	ld   d, $01                                      ; $4a14: $16 $01
	ld   [bc], a                                     ; $4a16: $02
	jr   z, jr_043_4a19                              ; $4a17: $28 $00

jr_043_4a19:
	ld   bc, $5458                                   ; $4a19: $01 $58 $54
	sbc  [hl]                                        ; $4a1c: $9e
	ld   [bc], a                                     ; $4a1d: $02
	xor  h                                           ; $4a1e: $ac
	ld   [bc], a                                     ; $4a1f: $02
	and  c                                           ; $4a20: $a1
	ld   d, d                                        ; $4a21: $52
	ld   d, d                                        ; $4a22: $52
	ld   a, b                                        ; $4a23: $78
	db   $fc                                         ; $4a24: $fc

jr_043_4a25:
	sbc  a                                           ; $4a25: $9f
	dec  c                                           ; $4a26: $0d
	ld   d, b                                        ; $4a27: $50
	ld   l, l                                        ; $4a28: $6d
	ld   d, d                                        ; $4a29: $52
	ld   a, l                                        ; $4a2a: $7d
	dec  b                                           ; $4a2b: $05
	or   $03                                         ; $4a2c: $f6 $03
	ld   e, d                                        ; $4a2e: $5a
	xor  h                                           ; $4a2f: $ac
	push af                                          ; $4a30: $f5
	bit  5, [hl]                                     ; $4a31: $cb $6e
	sbc  a                                           ; $4a33: $9f
	dec  c                                           ; $4a34: $0d
	sub  [hl]                                        ; $4a35: $96
	sbc  e                                           ; $4a36: $9b
	ld   h, l                                        ; $4a37: $65
	ld   e, l                                        ; $4a38: $5d
	ld   a, b                                        ; $4a39: $78
	sbc  a                                           ; $4a3a: $9f
	dec  c                                           ; $4a3b: $0d
	nop                                              ; $4a3c: $00
	ld   a, [bc]                                     ; $4a3d: $0a
	inc  e                                           ; $4a3e: $1c
	inc  bc                                          ; $4a3f: $03
	inc  bc                                          ; $4a40: $03
	inc  bc                                          ; $4a41: $03
	dec  e                                           ; $4a42: $1d
	ld   b, b                                        ; $4a43: $40
	inc  de                                          ; $4a44: $13
	inc  bc                                          ; $4a45: $03
	inc  de                                          ; $4a46: $13
	ld   bc, $2802                                   ; $4a47: $01 $02 $28
	nop                                              ; $4a4a: $00
	ld   bc, $ecdf                                   ; $4a4b: $01 $df $ec
	and  e                                           ; $4a4e: $a3
	di                                               ; $4a4f: $f3
	ret  nz                                          ; $4a50: $c0

	jp   nz, $cbd1                                   ; $4a51: $c2 $d1 $cb

	ld   [hl], l                                     ; $4a54: $75
	ld   h, a                                        ; $4a55: $67
	sbc  a                                           ; $4a56: $9f
	dec  c                                           ; $4a57: $0d
	ld   a, b                                        ; $4a58: $78
	ld   e, c                                        ; $4a59: $59
	ld   a, b                                        ; $4a5a: $78
	ld   e, c                                        ; $4a5b: $59
	ld   h, l                                        ; $4a5c: $65
	ld   [hl], c                                     ; $4a5d: $71
	ld   e, c                                        ; $4a5e: $59
	sbc  b                                           ; $4a5f: $98
	ld   h, l                                        ; $4a60: $65
	ld   [hl], h                                     ; $4a61: $74
	sbc  c                                           ; $4a62: $99
	sbc  l                                           ; $4a63: $9d
	ld   a, e                                        ; $4a64: $7b
	sbc  a                                           ; $4a65: $9f
	dec  c                                           ; $4a66: $0d
	ld   e, d                                        ; $4a67: $5a
	and  c                                           ; $4a68: $a1
	ld   a, [hl]                                     ; $4a69: $7e
	sbc  b                                           ; $4a6a: $98
	ld   a, b                                        ; $4a6b: $78
	ld   h, e                                        ; $4a6c: $63
	ld   d, d                                        ; $4a6d: $52
	sbc  a                                           ; $4a6e: $9f
	dec  c                                           ; $4a6f: $0d
	nop                                              ; $4a70: $00
	ld   a, [bc]                                     ; $4a71: $0a
	inc  e                                           ; $4a72: $1c
	inc  b                                           ; $4a73: $04
	ld   bc, $0101                                   ; $4a74: $01 $01 $01
	ld   a, l                                        ; $4a77: $7d
	ei                                               ; $4a78: $fb
	ld   d, d                                        ; $4a79: $52
	sbc  a                                           ; $4a7a: $9f
	and  e                                           ; $4a7b: $a3
	and  l                                           ; $4a7c: $a5
	db   $ec                                         ; $4a7d: $ec
	cp   d                                           ; $4a7e: $ba
	ld   [hl], l                                     ; $4a7f: $75
	ei                                               ; $4a80: $fb
	ld   h, a                                        ; $4a81: $67
	ld   a, [$610d]                                  ; $4a82: $fa $0d $61
	ld   [hl], c                                     ; $4a85: $71
	ld   l, a                                        ; $4a86: $6f
	ld   a, l                                        ; $4a87: $7d
	or   b                                           ; $4a88: $b0
	rst  JumpTable                                         ; $4a89: $df
	ld   a, h                                        ; $4a8a: $7c
	cp   c                                           ; $4a8b: $b9
	push hl                                          ; $4a8c: $e5
	push af                                          ; $4a8d: $f5
	sbc  $fb                                         ; $4a8e: $de $fb
	db   $ed                                         ; $4a90: $ed
	ld   a, [$960d]                                  ; $4a91: $fa $0d $96
	sbc  e                                           ; $4a94: $9b
	ld   h, l                                        ; $4a95: $65
	ld   e, l                                        ; $4a96: $5d
	ld   a, e                                        ; $4a97: $7b
	sbc  [hl]                                        ; $4a98: $9e
	ld   l, a                                        ; $4a99: $6f
	ld   d, d                                        ; $4a9a: $52
	ld   [bc], a                                     ; $4a9b: $02
	inc  de                                          ; $4a9c: $13
	ld   l, a                                        ; $4a9d: $6f
	sub  c                                           ; $4a9e: $91
	and  c                                           ; $4a9f: $a1
	ld   a, [$000d]                                  ; $4aa0: $fa $0d $00
	ld   a, [bc]                                     ; $4aa3: $0a
	inc  e                                           ; $4aa4: $1c
	dec  b                                           ; $4aa5: $05
	nop                                              ; $4aa6: $00
	nop                                              ; $4aa7: $00
	ld   bc, wRandomNumStruct                                   ; $4aa8: $01 $a7 $c2
	ld   a, l                                        ; $4aab: $7d
	ld   b, $64                                      ; $4aac: $06 $64
	ld   [bc], a                                     ; $4aae: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4aaf: $cf
	dec  b                                           ; $4ab0: $05
	ld   a, [de]                                     ; $4ab1: $1a
	sub  d                                           ; $4ab2: $92
	sbc  a                                           ; $4ab3: $9f
	dec  c                                           ; $4ab4: $0d
	sub  [hl]                                        ; $4ab5: $96
	sbc  e                                           ; $4ab6: $9b
	ld   h, l                                        ; $4ab7: $65
	sub  e                                           ; $4ab8: $93
	ei                                               ; $4ab9: $fb
	ld   l, l                                        ; $4aba: $6d
	ld   a, h                                        ; $4abb: $7c
	and  c                                           ; $4abc: $a1
	adc  h                                           ; $4abd: $8c
	ld   h, a                                        ; $4abe: $67
	sbc  a                                           ; $4abf: $9f
	dec  c                                           ; $4ac0: $0d
	nop                                              ; $4ac1: $00
	ld   a, [bc]                                     ; $4ac2: $0a
	inc  e                                           ; $4ac3: $1c
	ld   [bc], a                                     ; $4ac4: $02
	nop                                              ; $4ac5: $00
	nop                                              ; $4ac6: $00
	ld   bc, $9e8c                                   ; $4ac7: $01 $8c $9e
	ld   h, c                                        ; $4aca: $61
	ld   a, h                                        ; $4acb: $7c
	sbc  l                                           ; $4acc: $9d
	ld   l, l                                        ; $4acd: $6d
	ld   e, l                                        ; $4ace: $5d
	ld   h, l                                        ; $4acf: $65
	ld   a, c                                        ; $4ad0: $79
	dec  c                                           ; $4ad1: $0d
	inc  b                                           ; $4ad2: $04
	cp   l                                           ; $4ad3: $bd
	dec  b                                           ; $4ad4: $05
	ld   l, b                                        ; $4ad5: $68
	and  b                                           ; $4ad6: $a0
	ld   e, c                                        ; $4ad7: $59
	ld   e, a                                        ; $4ad8: $5f
	ld   a, b                                        ; $4ad9: $78
	ld   d, d                                        ; $4ada: $52
	sub  [hl]                                        ; $4adb: $96
	ld   d, h                                        ; $4adc: $54
	ld   a, c                                        ; $4add: $79
	dec  c                                           ; $4ade: $0d
	ld   h, l                                        ; $4adf: $65
	ld   [hl], c                                     ; $4ae0: $71
	ld   e, c                                        ; $4ae1: $59
	sbc  b                                           ; $4ae2: $98
	ld   l, l                                        ; $4ae3: $6d
	ld   a, h                                        ; $4ae4: $7c
	adc  l                                           ; $4ae5: $8d
	adc  h                                           ; $4ae6: $8c
	ld   h, a                                        ; $4ae7: $67
	sbc  l                                           ; $4ae8: $9d
	sub  [hl]                                        ; $4ae9: $96
	sbc  a                                           ; $4aea: $9f
	dec  c                                           ; $4aeb: $0d
	nop                                              ; $4aec: $00
	ld   a, [bc]                                     ; $4aed: $0a
	inc  e                                           ; $4aee: $1c
	ld   bc, $0000                                   ; $4aef: $01 $00 $00
	ld   bc, $6d50                                   ; $4af2: $01 $50 $6d
	ld   h, l                                        ; $4af5: $65
	ld   a, l                                        ; $4af6: $7d
	inc  bc                                          ; $4af7: $03
	xor  l                                           ; $4af8: $ad
	inc  b                                           ; $4af9: $04
	ret                                              ; $4afa: $c9


	ld   b, $60                                      ; $4afb: $06 $60
	ld   h, e                                        ; $4afd: $63
	ld   e, l                                        ; $4afe: $5d
	sub  a                                           ; $4aff: $97
	ld   [hl], l                                     ; $4b00: $75
	ld   h, a                                        ; $4b01: $67
	sbc  a                                           ; $4b02: $9f
	dec  c                                           ; $4b03: $0d
	sub  [hl]                                        ; $4b04: $96
	sbc  e                                           ; $4b05: $9b
	ld   h, l                                        ; $4b06: $65
	ld   e, l                                        ; $4b07: $5d
	ld   e, b                                        ; $4b08: $58
	ld   [bc], a                                     ; $4b09: $02
	add  b                                           ; $4b0a: $80
	ld   d, d                                        ; $4b0b: $52
	ld   h, l                                        ; $4b0c: $65
	adc  h                                           ; $4b0d: $8c
	ld   h, a                                        ; $4b0e: $67
	sbc  a                                           ; $4b0f: $9f
	dec  c                                           ; $4b10: $0d
	nop                                              ; $4b11: $00
	ld   a, [bc]                                     ; $4b12: $0a
	inc  e                                           ; $4b13: $1c
	add  hl, bc                                      ; $4b14: $09
	nop                                              ; $4b15: $00
	nop                                              ; $4b16: $00
	dec  b                                           ; $4b17: $05
	add  b                                           ; $4b18: $80
	or   [hl]                                        ; $4b19: $b6
	ld   bc, $0001                                   ; $4b1a: $01 $01 $00
	dec  b                                           ; $4b1d: $05
	add  b                                           ; $4b1e: $80
	cp   c                                           ; $4b1f: $b9
	ld   bc, $0001                                   ; $4b20: $01 $01 $00
	ld   bc, $6596                                   ; $4b23: $01 $96 $65
	sbc  [hl]                                        ; $4b26: $9e
	ld   h, [hl]                                     ; $4b27: $66
	sub  c                                           ; $4b28: $91
	ld   d, b                                        ; $4b29: $50
	ld   h, c                                        ; $4b2a: $61
	sbc  d                                           ; $4b2b: $9a
	ld   e, c                                        ; $4b2c: $59
	sub  a                                           ; $4b2d: $97
	dec  c                                           ; $4b2e: $0d
	xor  [hl]                                        ; $4b2f: $ae
	ldh  [$7c], a                                    ; $4b30: $e0 $7c
	dec  b                                           ; $4b32: $05
	add  hl, bc                                      ; $4b33: $09
	dec  b                                           ; $4b34: $05
	ld   a, [bc]                                     ; $4b35: $0a
	and  b                                           ; $4b36: $a0
	ld   b, $83                                      ; $4b37: $06 $83
	inc  bc                                          ; $4b39: $03
	call nc, Call_043_7965                           ; $4b3a: $d4 $65 $79
	dec  c                                           ; $4b3d: $0d
	ld   [bc], a                                     ; $4b3e: $02
	ld   a, a                                        ; $4b3f: $7f
	ld   e, l                                        ; $4b40: $5d
	sbc  a                                           ; $4b41: $9f
	ld   [hl], d                                     ; $4b42: $72
	ld   d, d                                        ; $4b43: $52
	ld   [hl], h                                     ; $4b44: $74
	ld   e, e                                        ; $4b45: $5b
	ld   [hl], h                                     ; $4b46: $74
	ld   e, l                                        ; $4b47: $5d
	sbc  d                                           ; $4b48: $9a
	sbc  a                                           ; $4b49: $9f
	dec  c                                           ; $4b4a: $0d
	nop                                              ; $4b4b: $00
	ld   a, [bc]                                     ; $4b4c: $0a
	dec  c                                           ; $4b4d: $0d
	nop                                              ; $4b4e: $00
	nop                                              ; $4b4f: $00
	rrca                                             ; $4b50: $0f
	nop                                              ; $4b51: $00
	ld   bc, $4906                                   ; $4b52: $01 $06 $49
	dec  c                                           ; $4b55: $0d
	rrca                                             ; $4b56: $0f
	nop                                              ; $4b57: $00
	ld   bc, $8d01                                   ; $4b58: $01 $01 $8d
	ld   a, b                                        ; $4b5b: $78
	ld   h, e                                        ; $4b5c: $63
	and  c                                           ; $4b5d: $a1
	ld   e, e                                        ; $4b5e: $5b
	sbc  d                                           ; $4b5f: $9a
	ld   d, d                                        ; $4b60: $52
	ld   [hl], l                                     ; $4b61: $75
	ld   h, a                                        ; $4b62: $67
	ld   a, e                                        ; $4b63: $7b
	ld   a, [$630d]                                  ; $4b64: $fa $0d $63
	ld   h, a                                        ; $4b67: $67
	ld   e, d                                        ; $4b68: $5a
	inc  b                                           ; $4b69: $04
	ld   [$8f02], sp                                 ; $4b6a: $08 $02 $8f
	ld   [bc], a                                     ; $4b6d: $02
	ld   c, [hl]                                     ; $4b6e: $4e
	ld   [bc], a                                     ; $4b6f: $02
	sub  d                                           ; $4b70: $92
	inc  b                                           ; $4b71: $04
	add  hl, bc                                      ; $4b72: $09
	ld   [bc], a                                     ; $4b73: $02
	sbc  b                                           ; $4b74: $98
	inc  bc                                          ; $4b75: $03
	nop                                              ; $4b76: $00
	ld   l, [hl]                                     ; $4b77: $6e
	ld   a, b                                        ; $4b78: $78
	ld   c, a                                        ; $4b79: $4f
	sbc  a                                           ; $4b7a: $9f
	dec  c                                           ; $4b7b: $0d
	nop                                              ; $4b7c: $00
	ld   a, [bc]                                     ; $4b7d: $0a
	ld   bc, $a161                                   ; $4b7e: $01 $61 $a1
	ld   a, b                                        ; $4b81: $78
	ld   e, e                                        ; $4b82: $5b
	sbc  d                                           ; $4b83: $9a
	ld   d, d                                        ; $4b84: $52
	ld   a, b                                        ; $4b85: $78
	inc  bc                                          ; $4b86: $03
	add  d                                           ; $4b87: $82
	ld   l, l                                        ; $4b88: $6d
	ld   l, a                                        ; $4b89: $6f
	halt                                             ; $4b8a: $76
	ld   [bc], a                                     ; $4b8b: $02

jr_043_4b8c:
	jr   nz, jr_043_4b91                             ; $4b8c: $20 $03

	sbc  d                                           ; $4b8e: $9a
	ld   a, c                                        ; $4b8f: $79
	dec  c                                           ; $4b90: $0d

jr_043_4b91:
	ld   [bc], a                                     ; $4b91: $02
	jr   nz, jr_043_4b8c                             ; $4b92: $20 $f8

	ld   [bc], a                                     ; $4b94: $02
	sbc  e                                           ; $4b95: $9b
	sub  b                                           ; $4b96: $90
	dec  b                                           ; $4b97: $05
	sub  a                                           ; $4b98: $97
	sub  a                                           ; $4b99: $97
	ld   l, c                                        ; $4b9a: $69
	sbc  c                                           ; $4b9b: $99
	ld   a, b                                        ; $4b9c: $78
	and  c                                           ; $4b9d: $a1
	ld   [hl], h                                     ; $4b9e: $74
	dec  c                                           ; $4b9f: $0d
	ld   [bc], a                                     ; $4ba0: $02
	jr   c, jr_043_4ba5                              ; $4ba1: $38 $02

	inc  b                                           ; $4ba3: $04
	ld   [hl], l                                     ; $4ba4: $75

jr_043_4ba5:
	ld   h, a                                        ; $4ba5: $67
	ld   a, [$000d]                                  ; $4ba6: $fa $0d $00
	ld   a, [bc]                                     ; $4ba9: $0a
	inc  e                                           ; $4baa: $1c
	ld   [bc], a                                     ; $4bab: $02
	jr   nc, jr_043_4bc7                             ; $4bac: $30 $19

	dec  e                                           ; $4bae: $1d
	ld   b, b                                        ; $4baf: $40
	ld   [de], a                                     ; $4bb0: $12
	inc  bc                                          ; $4bb1: $03
	ld   [de], a                                     ; $4bb2: $12
	ld   bc, $2802                                   ; $4bb3: $01 $02 $28
	nop                                              ; $4bb6: $00
	ld   bc, $fb58                                   ; $4bb7: $01 $58 $fb
	adc  c                                           ; $4bba: $89
	ld   [hl], c                                     ; $4bbb: $71
	adc  c                                           ; $4bbc: $89
	ld   [hl], c                                     ; $4bbd: $71
	adc  c                                           ; $4bbe: $89
	ld   [hl], c                                     ; $4bbf: $71
	adc  c                                           ; $4bc0: $89
	ld   [hl], c                                     ; $4bc1: $71
	sbc  a                                           ; $4bc2: $9f
	dec  c                                           ; $4bc3: $0d
	sub  [hl]                                        ; $4bc4: $96
	ld   e, l                                        ; $4bc5: $5d
	inc  b                                           ; $4bc6: $04

jr_043_4bc7:
	sbc  [hl]                                        ; $4bc7: $9e
	ld   e, c                                        ; $4bc8: $59
	ld   [hl], c                                     ; $4bc9: $71
	ld   [hl], h                                     ; $4bca: $74
	sub  a                                           ; $4bcb: $97
	ld   [hl], c                                     ; $4bcc: $71
	ld   h, l                                        ; $4bcd: $65
	sub  c                                           ; $4bce: $91
	sbc  c                                           ; $4bcf: $99
	sbc  l                                           ; $4bd0: $9d
	ld   a, e                                        ; $4bd1: $7b
	dec  c                                           ; $4bd2: $0d
	ld   [bc], a                                     ; $4bd3: $02
	sub  l                                           ; $4bd4: $95
	inc  bc                                          ; $4bd5: $03
	and  h                                           ; $4bd6: $a4
	ld   d, d                                        ; $4bd7: $52
	ld   h, e                                        ; $4bd8: $63
	and  c                                           ; $4bd9: $a1
	sbc  a                                           ; $4bda: $9f
	dec  c                                           ; $4bdb: $0d
	nop                                              ; $4bdc: $00
	ld   a, [bc]                                     ; $4bdd: $0a
	inc  e                                           ; $4bde: $1c
	ld   [bc], a                                     ; $4bdf: $02
	ld   bc, $0101                                   ; $4be0: $01 $01 $01
	ld   [hl], l                                     ; $4be3: $75
	sub  b                                           ; $4be4: $90
	sbc  [hl]                                        ; $4be5: $9e
	inc  bc                                          ; $4be6: $03
	xor  l                                           ; $4be7: $ad
	ld   a, c                                        ; $4be8: $79
	inc  b                                           ; $4be9: $04
	and  c                                           ; $4bea: $a1
	ld   h, l                                        ; $4beb: $65
	ld   d, d                                        ; $4bec: $52
	halt                                             ; $4bed: $76
	ld   [bc], a                                     ; $4bee: $02
	sbc  l                                           ; $4bef: $9d
	ld   d, [hl]                                     ; $4bf0: $56
	sbc  c                                           ; $4bf1: $99
	ld   a, h                                        ; $4bf2: $7c
	ld   a, l                                        ; $4bf3: $7d
	dec  c                                           ; $4bf4: $0d
	ld   h, c                                        ; $4bf5: $61
	ld   a, h                                        ; $4bf6: $7c
	sbc  [hl]                                        ; $4bf7: $9e
	sbc  l                                           ; $4bf8: $9d
	ld   l, l                                        ; $4bf9: $6d
	ld   e, l                                        ; $4bfa: $5d
	ld   h, l                                        ; $4bfb: $65
	ld   l, [hl]                                     ; $4bfc: $6e
	ld   e, a                                        ; $4bfd: $5f
	ld   [hl], l                                     ; $4bfe: $75
	ld   h, a                                        ; $4bff: $67
	ld   a, h                                        ; $4c00: $7c
	sub  [hl]                                        ; $4c01: $96
	sbc  a                                           ; $4c02: $9f
	dec  c                                           ; $4c03: $0d
	sub  [hl]                                        ; $4c04: $96
	db   $fc                                         ; $4c05: $fc
	ld   e, l                                        ; $4c06: $5d
	sbc  [hl]                                        ; $4c07: $9e
	ld   e, b                                        ; $4c08: $58
	adc  d                                           ; $4c09: $8a
	ld   d, [hl]                                     ; $4c0a: $56
	ld   [hl], h                                     ; $4c0b: $74
	ld   e, b                                        ; $4c0c: $58
	ld   e, e                                        ; $4c0d: $5b
	ld   a, b                                        ; $4c0e: $78
	ld   h, e                                        ; $4c0f: $63
	ld   d, d                                        ; $4c10: $52
	sbc  a                                           ; $4c11: $9f
	dec  c                                           ; $4c12: $0d
	nop                                              ; $4c13: $00
	ld   a, [bc]                                     ; $4c14: $0a
	inc  e                                           ; $4c15: $1c
	inc  bc                                          ; $4c16: $03
	ld   [bc], a                                     ; $4c17: $02
	ld   [bc], a                                     ; $4c18: $02
	dec  e                                           ; $4c19: $1d
	ld   b, b                                        ; $4c1a: $40
	inc  de                                          ; $4c1b: $13
	inc  bc                                          ; $4c1c: $03
	inc  de                                          ; $4c1d: $13
	ld   bc, $2902                                   ; $4c1e: $01 $02 $29
	nop                                              ; $4c21: $00
	ld   bc, $c803                                   ; $4c22: $01 $03 $c8
	ld   a, l                                        ; $4c25: $7d
	rst  JumpTable                                         ; $4c26: $df
	db   $ec                                         ; $4c27: $ec
	and  e                                           ; $4c28: $a3
	di                                               ; $4c29: $f3
	ret  nz                                          ; $4c2a: $c0

	jp   nz, $cbd1                                   ; $4c2b: $c2 $d1 $cb

	sbc  a                                           ; $4c2e: $9f
	dec  c                                           ; $4c2f: $0d
	inc  b                                           ; $4c30: $04
	ldh  a, [c]                                      ; $4c31: $f2
	add  c                                           ; $4c32: $81
	ld   a, c                                        ; $4c33: $79
	dec  b                                           ; $4c34: $05
	db   $10                                         ; $4c35: $10
	ld   [hl], h                                     ; $4c36: $74
	ld   d, d                                        ; $4c37: $52
	sbc  c                                           ; $4c38: $99
	and  c                                           ; $4c39: $a1
	ld   h, [hl]                                     ; $4c3a: $66
	sub  c                                           ; $4c3b: $91
	ld   a, b                                        ; $4c3c: $78
	ld   d, d                                        ; $4c3d: $52
	dec  c                                           ; $4c3e: $0d
	ld   a, h                                        ; $4c3f: $7c
	sub  [hl]                                        ; $4c40: $96
	sbc  a                                           ; $4c41: $9f
	ld   d, b                                        ; $4c42: $50
	adc  h                                           ; $4c43: $8c
	sbc  b                                           ; $4c44: $98
	add  e                                           ; $4c45: $83
	ld   h, h                                        ; $4c46: $64
	ld   e, a                                        ; $4c47: $5f
	ld   a, b                                        ; $4c48: $78
	ld   d, d                                        ; $4c49: $52
	ld   [hl], l                                     ; $4c4a: $75
	ld   a, [$000d]                                  ; $4c4b: $fa $0d $00
	ld   a, [bc]                                     ; $4c4e: $0a
	inc  e                                           ; $4c4f: $1c
	ld   b, $00                                      ; $4c50: $06 $00
	nop                                              ; $4c52: $00
	ld   bc, $6d50                                   ; $4c53: $01 $50 $6d
	ld   d, d                                        ; $4c56: $52
	ld   a, l                                        ; $4c57: $7d
	sbc  [hl]                                        ; $4c58: $9e
	dec  b                                           ; $4c59: $05
	or   $03                                         ; $4c5a: $f6 $03
	ld   e, d                                        ; $4c5c: $5a
	xor  h                                           ; $4c5d: $ac
	push af                                          ; $4c5e: $f5
	res  3, a                                        ; $4c5f: $cb $9f
	dec  c                                           ; $4c61: $0d
	adc  h                                           ; $4c62: $8c
	sbc  [hl]                                        ; $4c63: $9e
	sub  [hl]                                        ; $4c64: $96
	sbc  e                                           ; $4c65: $9b
	ld   h, l                                        ; $4c66: $65
	ld   e, l                                        ; $4c67: $5d
	ld   a, b                                        ; $4c68: $78
	sbc  a                                           ; $4c69: $9f
	dec  c                                           ; $4c6a: $0d
	nop                                              ; $4c6b: $00
	ld   a, [bc]                                     ; $4c6c: $0a
	inc  e                                           ; $4c6d: $1c
	inc  b                                           ; $4c6e: $04
	ld   bc, $0101                                   ; $4c6f: $01 $01 $01
	sbc  l                                           ; $4c72: $9d
	ei                                               ; $4c73: $fb
	ld   d, d                                        ; $4c74: $52
	ld   a, [$a310]                                  ; $4c75: $fa $10 $a3
	and  l                                           ; $4c78: $a5
	db   $ec                                         ; $4c79: $ec
	cp   d                                           ; $4c7a: $ba
	ld   a, h                                        ; $4c7b: $7c
	ld   h, c                                        ; $4c7c: $61
	halt                                             ; $4c7d: $76
	dec  c                                           ; $4c7e: $0d
	ld   e, e                                        ; $4c7f: $5b
	sbc  d                                           ; $4c80: $9a
	ld   d, d                                        ; $4c81: $52
	ld   l, [hl]                                     ; $4c82: $6e
	ld   [hl], c                                     ; $4c83: $71
	ld   [hl], h                                     ; $4c84: $74
	ld   a, [$000d]                                  ; $4c85: $fa $0d $00
	ld   a, [bc]                                     ; $4c88: $0a
	dec  e                                           ; $4c89: $1d
	ld   b, b                                        ; $4c8a: $40
	inc  d                                           ; $4c8b: $14
	inc  bc                                          ; $4c8c: $03
	inc  d                                           ; $4c8d: $14
	ld   bc, $2802                                   ; $4c8e: $01 $02 $28
	nop                                              ; $4c91: $00
	ld   bc, $526f                                   ; $4c92: $01 $6f $52
	ld   [bc], a                                     ; $4c95: $02
	inc  de                                          ; $4c96: $13
	ld   l, a                                        ; $4c97: $6f
	sub  c                                           ; $4c98: $91
	and  c                                           ; $4c99: $a1
	ld   [hl], c                                     ; $4c9a: $71
	ld   [hl], h                                     ; $4c9b: $74
	dec  c                                           ; $4c9c: $0d
	ld   d, d                                        ; $4c9d: $52
	ld   d, d                                        ; $4c9e: $52
	add  b                                           ; $4c9f: $80
	halt                                             ; $4ca0: $76
	ld   l, [hl]                                     ; $4ca1: $6e
	ld   a, e                                        ; $4ca2: $7b
	sbc  a                                           ; $4ca3: $9f
	dec  c                                           ; $4ca4: $0d
	cp   c                                           ; $4ca5: $b9
	push hl                                          ; $4ca6: $e5
	push af                                          ; $4ca7: $f5
	sbc  $fb                                         ; $4ca8: $de $fb
	db   $ed                                         ; $4caa: $ed
	ld   a, [$000d]                                  ; $4cab: $fa $0d $00
	ld   a, [bc]                                     ; $4cae: $0a
	inc  e                                           ; $4caf: $1c
	dec  b                                           ; $4cb0: $05
	ld   [bc], a                                     ; $4cb1: $02
	ld   [bc], a                                     ; $4cb2: $02
	ld   bc, wRandomNumStruct                                   ; $4cb3: $01 $a7 $c2
	ld   a, l                                        ; $4cb6: $7d
	ld   b, $64                                      ; $4cb7: $06 $64
	ld   [bc], a                                     ; $4cb9: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4cba: $cf
	dec  b                                           ; $4cbb: $05
	ld   a, [de]                                     ; $4cbc: $1a
	sub  d                                           ; $4cbd: $92
	sbc  a                                           ; $4cbe: $9f
	dec  c                                           ; $4cbf: $0d
	ld   a, b                                        ; $4cc0: $78
	and  c                                           ; $4cc1: $a1
	sub  d                                           ; $4cc2: $92
	ld   [bc], a                                     ; $4cc3: $02
	ld   [hl], $6b                                   ; $4cc4: $36 $6b
	ld   d, h                                        ; $4cc6: $54
	ld   a, b                                        ; $4cc7: $78
	sub  d                                           ; $4cc8: $92
	ld   [hl], c                                     ; $4cc9: $71
	ld   l, a                                        ; $4cca: $6f
	sub  c                                           ; $4ccb: $91
	ld   a, b                                        ; $4ccc: $78
	db   $fc                                         ; $4ccd: $fc
	dec  c                                           ; $4cce: $0d
	adc  h                                           ; $4ccf: $8c
	ld   d, b                                        ; $4cd0: $50
	sbc  [hl]                                        ; $4cd1: $9e
	sub  [hl]                                        ; $4cd2: $96
	sbc  e                                           ; $4cd3: $9b
	ld   h, l                                        ; $4cd4: $65
	sub  e                                           ; $4cd5: $93
	ld   d, h                                        ; $4cd6: $54
	ld   l, l                                        ; $4cd7: $6d
	ld   a, h                                        ; $4cd8: $7c
	adc  [hl]                                        ; $4cd9: $8e
	sbc  l                                           ; $4cda: $9d
	sbc  a                                           ; $4cdb: $9f
	dec  c                                           ; $4cdc: $0d
	nop                                              ; $4cdd: $00
	ld   a, [bc]                                     ; $4cde: $0a
	inc  e                                           ; $4cdf: $1c
	ld   bc, $0404                                   ; $4ce0: $01 $04 $04
	ld   bc, $ad03                                   ; $4ce3: $01 $03 $ad
	inc  b                                           ; $4ce6: $04
	ret                                              ; $4ce7: $c9


	ld   b, $60                                      ; $4ce8: $06 $60
	ld   h, e                                        ; $4cea: $63
	ld   e, l                                        ; $4ceb: $5d
	sub  a                                           ; $4cec: $97
	ld   [hl], l                                     ; $4ced: $75
	ld   h, a                                        ; $4cee: $67
	rst  $38                                         ; $4cef: $ff
	rst  $38                                         ; $4cf0: $ff
	dec  c                                           ; $4cf1: $0d
	ld   h, c                                        ; $4cf2: $61
	ld   l, a                                        ; $4cf3: $6f
	sub  a                                           ; $4cf4: $97
	ld   h, c                                        ; $4cf5: $61
	ld   l, e                                        ; $4cf6: $6b
	sub  [hl]                                        ; $4cf7: $96
	sbc  e                                           ; $4cf8: $9b
	ld   h, l                                        ; $4cf9: $65
	ld   e, l                                        ; $4cfa: $5d
	rst  $38                                         ; $4cfb: $ff
	rst  $38                                         ; $4cfc: $ff
	dec  c                                           ; $4cfd: $0d
	ld   e, b                                        ; $4cfe: $58
	ld   [bc], a                                     ; $4cff: $02
	add  b                                           ; $4d00: $80
	ld   d, d                                        ; $4d01: $52
	ld   h, l                                        ; $4d02: $65
	adc  h                                           ; $4d03: $8c
	ld   h, a                                        ; $4d04: $67
	rst  $38                                         ; $4d05: $ff
	rst  $38                                         ; $4d06: $ff
	ld   a, e                                        ; $4d07: $7b
	sbc  a                                           ; $4d08: $9f
	dec  c                                           ; $4d09: $0d
	nop                                              ; $4d0a: $00
	ld   a, [bc]                                     ; $4d0b: $0a
	inc  e                                           ; $4d0c: $1c
	add  hl, bc                                      ; $4d0d: $09
	nop                                              ; $4d0e: $00
	nop                                              ; $4d0f: $00
	dec  b                                           ; $4d10: $05
	add  b                                           ; $4d11: $80
	or   l                                           ; $4d12: $b5
	ld   bc, $0001                                   ; $4d13: $01 $01 $00
	dec  b                                           ; $4d16: $05
	add  b                                           ; $4d17: $80
	or   a                                           ; $4d18: $b7
	ld   bc, $0001                                   ; $4d19: $01 $01 $00
	ld   bc, $6596                                   ; $4d1c: $01 $96 $65
	sbc  [hl]                                        ; $4d1f: $9e
	ld   h, [hl]                                     ; $4d20: $66
	sub  c                                           ; $4d21: $91
	ld   d, b                                        ; $4d22: $50
	ld   h, c                                        ; $4d23: $61
	sbc  d                                           ; $4d24: $9a
	ld   e, c                                        ; $4d25: $59
	sub  a                                           ; $4d26: $97
	dec  c                                           ; $4d27: $0d
	xor  [hl]                                        ; $4d28: $ae
	ldh  [$7c], a                                    ; $4d29: $e0 $7c
	dec  b                                           ; $4d2b: $05
	add  hl, bc                                      ; $4d2c: $09
	dec  b                                           ; $4d2d: $05
	ld   a, [bc]                                     ; $4d2e: $0a
	and  b                                           ; $4d2f: $a0
	ld   b, $83                                      ; $4d30: $06 $83
	inc  bc                                          ; $4d32: $03
	call nc, Call_043_7965                           ; $4d33: $d4 $65 $79
	dec  c                                           ; $4d36: $0d
	ld   [bc], a                                     ; $4d37: $02
	ld   a, a                                        ; $4d38: $7f
	ld   e, l                                        ; $4d39: $5d
	sbc  a                                           ; $4d3a: $9f
	ld   [hl], d                                     ; $4d3b: $72
	ld   d, d                                        ; $4d3c: $52
	ld   [hl], h                                     ; $4d3d: $74
	ld   e, e                                        ; $4d3e: $5b
	ld   [hl], h                                     ; $4d3f: $74
	ld   e, l                                        ; $4d40: $5d
	sbc  d                                           ; $4d41: $9a
	sbc  a                                           ; $4d42: $9f
	dec  c                                           ; $4d43: $0d
	nop                                              ; $4d44: $00
	ld   a, [bc]                                     ; $4d45: $0a
	dec  c                                           ; $4d46: $0d
	nop                                              ; $4d47: $00
	nop                                              ; $4d48: $00
	rrca                                             ; $4d49: $0f
	nop                                              ; $4d4a: $00
	ld   bc, $4906                                   ; $4d4b: $01 $06 $49
	dec  c                                           ; $4d4e: $0d
	rrca                                             ; $4d4f: $0f
	nop                                              ; $4d50: $00
	ld   bc, $8d01                                   ; $4d51: $01 $01 $8d
	ld   a, b                                        ; $4d54: $78
	ld   h, e                                        ; $4d55: $63
	and  c                                           ; $4d56: $a1
	sbc  [hl]                                        ; $4d57: $9e
	ld   a, l                                        ; $4d58: $7d
	ld   h, [hl]                                     ; $4d59: $66
	adc  a                                           ; $4d5a: $8f
	adc  h                                           ; $4d5b: $8c
	ld   h, l                                        ; $4d5c: $65
	ld   [hl], h                                     ; $4d5d: $74
	dec  c                                           ; $4d5e: $0d
	ld   [$7500], sp                                 ; $4d5f: $08 $00 $75
	ld   h, a                                        ; $4d62: $67
	ld   a, [$0210]                                  ; $4d63: $fa $10 $02
	ld   c, [hl]                                     ; $4d66: $4e
	halt                                             ; $4d67: $76
	dec  c                                           ; $4d68: $0d
	pop  bc                                          ; $4d69: $c1
	push af                                          ; $4d6a: $f5
	cp   d                                           ; $4d6b: $ba
	ld   a, c                                        ; $4d6c: $79
	ld   a, l                                        ; $4d6d: $7d
	inc  bc                                          ; $4d6e: $03
	sub  h                                           ; $4d6f: $94
	ld   [bc], a                                     ; $4d70: $02
	ld   hl, sp+$5a                                  ; $4d71: $f8 $5a
	ld   d, b                                        ; $4d73: $50
	sbc  b                                           ; $4d74: $98
	adc  h                                           ; $4d75: $8c
	ld   h, a                                        ; $4d76: $67
	sbc  a                                           ; $4d77: $9f
	dec  c                                           ; $4d78: $0d
	nop                                              ; $4d79: $00
	ld   a, [bc]                                     ; $4d7a: $0a
	ld   bc, $9e78                                   ; $4d7b: $01 $78 $9e
	ld   a, b                                        ; $4d7e: $78
	ei                                               ; $4d7f: $fb
	and  c                                           ; $4d80: $a1
	ld   l, a                                        ; $4d81: $6f
	sub  c                                           ; $4d82: $91
	ld   [hl], c                                     ; $4d83: $71
	ld   [hl], h                                     ; $4d84: $74
	rst  $38                                         ; $4d85: $ff
	rst  $38                                         ; $4d86: $ff
	dec  c                                           ; $4d87: $0d
	nop                                              ; $4d88: $00
	ld   a, [bc]                                     ; $4d89: $0a
	inc  e                                           ; $4d8a: $1c
	inc  bc                                          ; $4d8b: $03
	ld   [bc], a                                     ; $4d8c: $02
	ld   [bc], a                                     ; $4d8d: $02
	ld   bc, $ecdf                                   ; $4d8e: $01 $df $ec
	and  e                                           ; $4d91: $a3
	di                                               ; $4d92: $f3
	ret  nz                                          ; $4d93: $c0

	jp   nz, $cbd1                                   ; $4d94: $c2 $d1 $cb

	ld   [hl], l                                     ; $4d97: $75
	ld   h, a                                        ; $4d98: $67
	sbc  a                                           ; $4d99: $9f
	dec  c                                           ; $4d9a: $0d
	ld   d, b                                        ; $4d9b: $50
	ld   a, b                                        ; $4d9c: $78
	ld   l, l                                        ; $4d9d: $6d
	sbc  [hl]                                        ; $4d9e: $9e
	inc  bc                                          ; $4d9f: $03
	sub  h                                           ; $4da0: $94
	inc  b                                           ; $4da1: $04
	sbc  [hl]                                        ; $4da2: $9e
	ld   e, d                                        ; $4da3: $5a
	inc  b                                           ; $4da4: $04
	ld   c, c                                        ; $4da5: $49
	and  b                                           ; $4da6: $a0
	ld   h, l                                        ; $4da7: $65
	ld   a, c                                        ; $4da8: $79
	dec  c                                           ; $4da9: $0d
	dec  b                                           ; $4daa: $05
	db   $10                                         ; $4dab: $10
	ld   l, l                                        ; $4dac: $6d
	ld   e, c                                        ; $4dad: $59
	inc  b                                           ; $4dae: $04
	sbc  [hl]                                        ; $4daf: $9e
	ld   e, c                                        ; $4db0: $59
	ld   [hl], c                                     ; $4db1: $71
	ld   [hl], h                                     ; $4db2: $74
	sbc  c                                           ; $4db3: $99
	ld   a, h                                        ; $4db4: $7c
	ld   sp, hl                                      ; $4db5: $f9
	dec  c                                           ; $4db6: $0d
	nop                                              ; $4db7: $00
	ld   a, [bc]                                     ; $4db8: $0a
	inc  e                                           ; $4db9: $1c
	ld   b, $05                                      ; $4dba: $06 $05
	dec  b                                           ; $4dbc: $05
	ld   bc, $ffff                                   ; $4dbd: $01 $ff $ff
	rst  $38                                         ; $4dc0: $ff
	rst  $38                                         ; $4dc1: $ff
	rst  $38                                         ; $4dc2: $ff
	rst  $38                                         ; $4dc3: $ff
	dec  c                                           ; $4dc4: $0d
	ld   d, b                                        ; $4dc5: $50
	ld   l, l                                        ; $4dc6: $6d
	ld   d, d                                        ; $4dc7: $52
	ld   a, l                                        ; $4dc8: $7d
	dec  b                                           ; $4dc9: $05
	or   $03                                         ; $4dca: $f6 $03
	ld   e, d                                        ; $4dcc: $5a
	xor  h                                           ; $4dcd: $ac
	push af                                          ; $4dce: $f5
	bit  5, [hl]                                     ; $4dcf: $cb $6e
	sbc  a                                           ; $4dd1: $9f
	dec  c                                           ; $4dd2: $0d
	sub  [hl]                                        ; $4dd3: $96
	sbc  e                                           ; $4dd4: $9b
	ld   h, l                                        ; $4dd5: $65
	ld   e, l                                        ; $4dd6: $5d
	ld   a, b                                        ; $4dd7: $78
	sbc  a                                           ; $4dd8: $9f
	dec  c                                           ; $4dd9: $0d
	nop                                              ; $4dda: $00
	ld   a, [bc]                                     ; $4ddb: $0a
	inc  e                                           ; $4ddc: $1c
	inc  b                                           ; $4ddd: $04
	ld   bc, $0101                                   ; $4dde: $01 $01 $01
	ld   a, l                                        ; $4de1: $7d
	ei                                               ; $4de2: $fb
	ld   d, d                                        ; $4de3: $52
	sbc  a                                           ; $4de4: $9f
	and  e                                           ; $4de5: $a3
	and  l                                           ; $4de6: $a5
	db   $ec                                         ; $4de7: $ec
	cp   d                                           ; $4de8: $ba
	ld   [hl], l                                     ; $4de9: $75
	ei                                               ; $4dea: $fb
	ld   h, a                                        ; $4deb: $67
	ld   a, [$610d]                                  ; $4dec: $fa $0d $61
	ld   [hl], c                                     ; $4def: $71
	ld   l, a                                        ; $4df0: $6f
	ld   a, l                                        ; $4df1: $7d
	or   b                                           ; $4df2: $b0
	rst  JumpTable                                         ; $4df3: $df
	ld   a, h                                        ; $4df4: $7c
	cp   c                                           ; $4df5: $b9
	push hl                                          ; $4df6: $e5
	push af                                          ; $4df7: $f5
	sbc  $fb                                         ; $4df8: $de $fb
	db   $ed                                         ; $4dfa: $ed
	ld   a, [$960d]                                  ; $4dfb: $fa $0d $96
	sbc  e                                           ; $4dfe: $9b
	ld   h, l                                        ; $4dff: $65
	ld   e, l                                        ; $4e00: $5d
	ld   a, e                                        ; $4e01: $7b
	sbc  [hl]                                        ; $4e02: $9e
	ld   l, a                                        ; $4e03: $6f
	ld   d, d                                        ; $4e04: $52
	ld   [bc], a                                     ; $4e05: $02
	inc  de                                          ; $4e06: $13
	ld   l, a                                        ; $4e07: $6f
	sub  c                                           ; $4e08: $91
	and  c                                           ; $4e09: $a1
	ld   a, [$000d]                                  ; $4e0a: $fa $0d $00
	ld   a, [bc]                                     ; $4e0d: $0a
	inc  e                                           ; $4e0e: $1c
	inc  b                                           ; $4e0f: $04
	inc  bc                                          ; $4e10: $03
	inc  bc                                          ; $4e11: $03
	ld   bc, $9075                                   ; $4e12: $01 $75 $90
	rst  $38                                         ; $4e15: $ff
	rst  $38                                         ; $4e16: $ff
	ld   h, c                                        ; $4e17: $61
	ld   a, h                                        ; $4e18: $7c
	ld   e, b                                        ; $4e19: $58
	ld   [bc], a                                     ; $4e1a: $02
	inc  de                                          ; $4e1b: $13
	ld   l, a                                        ; $4e1c: $6f
	sub  c                                           ; $4e1d: $91
	and  c                                           ; $4e1e: $a1
	sub  b                                           ; $4e1f: $90
	dec  c                                           ; $4e20: $0d
	ld   d, d                                        ; $4e21: $52
	ld   [hl], c                                     ; $4e22: $71
	ld   h, l                                        ; $4e23: $65
	sub  l                                           ; $4e24: $95
	ld   a, c                                        ; $4e25: $79
	ld   e, b                                        ; $4e26: $58
	ld   h, l                                        ; $4e27: $65
	ld   a, [hl]                                     ; $4e28: $7e
	ld   d, d                                        ; $4e29: $52
	ld   h, a                                        ; $4e2a: $67
	sbc  c                                           ; $4e2b: $99
	ld   a, h                                        ; $4e2c: $7c
	ld   sp, hl                                      ; $4e2d: $f9
	dec  c                                           ; $4e2e: $0d
	nop                                              ; $4e2f: $00
	ld   a, [bc]                                     ; $4e30: $0a
	inc  e                                           ; $4e31: $1c
	dec  b                                           ; $4e32: $05
	ld   bc, $1d01                                   ; $4e33: $01 $01 $1d
	ld   b, b                                        ; $4e36: $40
	dec  d                                           ; $4e37: $15
	inc  bc                                          ; $4e38: $03
	dec  d                                           ; $4e39: $15
	ld   bc, $2802                                   ; $4e3a: $01 $02 $28
	nop                                              ; $4e3d: $00
	ld   bc, $a16b                                   ; $4e3e: $01 $6b $a1
	ld   a, b                                        ; $4e41: $78
	sbc  l                                           ; $4e42: $9d
	ld   e, a                                        ; $4e43: $5f
	ld   a, b                                        ; $4e44: $78
	ld   d, d                                        ; $4e45: $52
	sub  d                                           ; $4e46: $92
	sbc  e                                           ; $4e47: $9b
	sbc  a                                           ; $4e48: $9f
	ld   [hl], l                                     ; $4e49: $75
	sub  b                                           ; $4e4a: $90
	sbc  [hl]                                        ; $4e4b: $9e
	dec  c                                           ; $4e4c: $0d
	ld   [bc], a                                     ; $4e4d: $02
	and  l                                           ; $4e4e: $a5
	ld   a, h                                        ; $4e4f: $7c
	db   $dd                                         ; $4e50: $dd
	or   d                                           ; $4e51: $b2
	sbc  [hl]                                        ; $4e52: $9e
	ld   a, b                                        ; $4e53: $78
	ld   e, c                                        ; $4e54: $59
	ld   a, b                                        ; $4e55: $78
	ld   e, c                                        ; $4e56: $59
	sub  d                                           ; $4e57: $92
	ld   [hl], c                                     ; $4e58: $71
	ld   l, l                                        ; $4e59: $6d
	ld   [hl], l                                     ; $4e5a: $75
	sbc  a                                           ; $4e5b: $9f
	dec  c                                           ; $4e5c: $0d
	ld   b, $64                                      ; $4e5d: $06 $64
	ld   [bc], a                                     ; $4e5f: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e60: $cf
	dec  b                                           ; $4e61: $05
	ld   a, [de]                                     ; $4e62: $1a
	sub  d                                           ; $4e63: $92
	sbc  a                                           ; $4e64: $9f
	sub  [hl]                                        ; $4e65: $96
	sbc  e                                           ; $4e66: $9b
	ld   h, l                                        ; $4e67: $65
	sub  e                                           ; $4e68: $93
	ei                                               ; $4e69: $fb
	ld   a, c                                        ; $4e6a: $79
	sbc  a                                           ; $4e6b: $9f
	dec  c                                           ; $4e6c: $0d
	nop                                              ; $4e6d: $00
	ld   a, [bc]                                     ; $4e6e: $0a
	inc  e                                           ; $4e6f: $1c
	ld   [bc], a                                     ; $4e70: $02
	ld   [bc], a                                     ; $4e71: $02
	ld   [bc], a                                     ; $4e72: $02
	ld   bc, $6e6d                                   ; $4e73: $01 $6d $6e
	ld   a, h                                        ; $4e76: $7c
	rst  $38                                         ; $4e77: $ff
	pop  de                                          ; $4e78: $d1
	xor  h                                           ; $4e79: $ac
	ld   [hl], l                                     ; $4e7a: $75
	ld   h, a                                        ; $4e7b: $67
	sbc  l                                           ; $4e7c: $9d
	ld   a, e                                        ; $4e7d: $7b
	rst  $38                                         ; $4e7e: $ff
	rst  $38                                         ; $4e7f: $ff
	dec  c                                           ; $4e80: $0d
	nop                                              ; $4e81: $00
	ld   a, [bc]                                     ; $4e82: $0a
	inc  e                                           ; $4e83: $1c
	ld   bc, $0505                                   ; $4e84: $01 $05 $05
	dec  e                                           ; $4e87: $1d
	ld   b, b                                        ; $4e88: $40
	ld   de, $1103                                   ; $4e89: $11 $03 $11
	ld   bc, $2801                                   ; $4e8c: $01 $01 $28
	nop                                              ; $4e8f: $00
	ld   bc, $ffff                                   ; $4e90: $01 $ff $ff
	ld   d, b                                        ; $4e93: $50
	ld   l, l                                        ; $4e94: $6d
	ld   h, l                                        ; $4e95: $65
	inc  bc                                          ; $4e96: $03
	rst  $30                                         ; $4e97: $f7
	and  b                                           ; $4e98: $a0
	dec  b                                           ; $4e99: $05
	inc  de                                          ; $4e9a: $13
	ld   h, l                                        ; $4e9b: $65
	adc  h                                           ; $4e9c: $8c
	ld   l, c                                        ; $4e9d: $69
	sub  [hl]                                        ; $4e9e: $96
	ld   d, h                                        ; $4e9f: $54
	halt                                             ; $4ea0: $76
	dec  c                                           ; $4ea1: $0d
	ld   h, l                                        ; $4ea2: $65
	ld   [hl], h                                     ; $4ea3: $74
	ld   e, l                                        ; $4ea4: $5d
	sbc  d                                           ; $4ea5: $9a
	ld   l, l                                        ; $4ea6: $6d
	and  c                                           ; $4ea7: $a1
	ld   [hl], l                                     ; $4ea8: $75
	ld   h, a                                        ; $4ea9: $67
	sub  [hl]                                        ; $4eaa: $96
	rst  $38                                         ; $4eab: $ff
	rst  $38                                         ; $4eac: $ff
	dec  c                                           ; $4ead: $0d
	nop                                              ; $4eae: $00
	inc  e                                           ; $4eaf: $1c
	ld   bc, $0101                                   ; $4eb0: $01 $01 $01
	ld   bc, $9e50                                   ; $4eb3: $01 $50 $9e
	ld   d, b                                        ; $4eb6: $50
	ld   l, l                                        ; $4eb7: $6d
	ld   h, l                                        ; $4eb8: $65
	inc  bc                                          ; $4eb9: $03
	xor  l                                           ; $4eba: $ad
	inc  b                                           ; $4ebb: $04
	ret                                              ; $4ebc: $c9


	ld   b, $60                                      ; $4ebd: $06 $60
	ld   h, e                                        ; $4ebf: $63
	ld   e, l                                        ; $4ec0: $5d
	sub  a                                           ; $4ec1: $97
	ld   [hl], l                                     ; $4ec2: $75
	ld   h, a                                        ; $4ec3: $67
	sbc  a                                           ; $4ec4: $9f
	dec  c                                           ; $4ec5: $0d
	nop                                              ; $4ec6: $00
	ld   a, [bc]                                     ; $4ec7: $0a
	inc  e                                           ; $4ec8: $1c
	add  hl, bc                                      ; $4ec9: $09
	nop                                              ; $4eca: $00
	nop                                              ; $4ecb: $00
	dec  b                                           ; $4ecc: $05
	add  b                                           ; $4ecd: $80
	cp   b                                           ; $4ece: $b8
	ld   bc, $0001                                   ; $4ecf: $01 $01 $00
	dec  b                                           ; $4ed2: $05
	add  b                                           ; $4ed3: $80
	or   h                                           ; $4ed4: $b4
	ld   bc, $0001                                   ; $4ed5: $01 $01 $00
	ld   bc, $6596                                   ; $4ed8: $01 $96 $65
	sbc  [hl]                                        ; $4edb: $9e
	ld   h, [hl]                                     ; $4edc: $66
	sub  c                                           ; $4edd: $91
	ld   d, b                                        ; $4ede: $50
	ld   h, c                                        ; $4edf: $61
	sbc  d                                           ; $4ee0: $9a
	ld   e, c                                        ; $4ee1: $59
	sub  a                                           ; $4ee2: $97
	dec  c                                           ; $4ee3: $0d
	xor  [hl]                                        ; $4ee4: $ae
	ldh  [$7c], a                                    ; $4ee5: $e0 $7c
	dec  b                                           ; $4ee7: $05
	add  hl, bc                                      ; $4ee8: $09
	dec  b                                           ; $4ee9: $05
	ld   a, [bc]                                     ; $4eea: $0a
	and  b                                           ; $4eeb: $a0
	ld   b, $83                                      ; $4eec: $06 $83
	inc  bc                                          ; $4eee: $03
	call nc, Call_043_7965                           ; $4eef: $d4 $65 $79
	dec  c                                           ; $4ef2: $0d
	ld   [bc], a                                     ; $4ef3: $02
	ld   a, a                                        ; $4ef4: $7f
	ld   e, l                                        ; $4ef5: $5d
	sbc  a                                           ; $4ef6: $9f
	ld   [hl], d                                     ; $4ef7: $72
	ld   d, d                                        ; $4ef8: $52
	ld   [hl], h                                     ; $4ef9: $74
	ld   e, e                                        ; $4efa: $5b
	ld   [hl], h                                     ; $4efb: $74
	ld   e, l                                        ; $4efc: $5d
	sbc  d                                           ; $4efd: $9a
	sbc  a                                           ; $4efe: $9f
	dec  c                                           ; $4eff: $0d
	nop                                              ; $4f00: $00
	ld   a, [bc]                                     ; $4f01: $0a
	dec  c                                           ; $4f02: $0d
	nop                                              ; $4f03: $00
	nop                                              ; $4f04: $00
	rrca                                             ; $4f05: $0f
	nop                                              ; $4f06: $00
	ld   bc, $4906                                   ; $4f07: $01 $06 $49
	dec  c                                           ; $4f0a: $0d
	inc  e                                           ; $4f0b: $1c
	ld   b, $05                                      ; $4f0c: $06 $05
	dec  b                                           ; $4f0e: $05
	ld   bc, $5258                                   ; $4f0f: $01 $58 $52
	ld   e, b                                        ; $4f12: $58
	ld   d, d                                        ; $4f13: $52
	sbc  a                                           ; $4f14: $9f
	ld   d, b                                        ; $4f15: $50
	ld   d, d                                        ; $4f16: $52
	ld   h, e                                        ; $4f17: $63
	ld   [hl], d                                     ; $4f18: $72
	ld   a, h                                        ; $4f19: $7c
	add  b                                           ; $4f1a: $80
	halt                                             ; $4f1b: $76
	ld   [hl], d                                     ; $4f1c: $72
	sub  b                                           ; $4f1d: $90
	dec  c                                           ; $4f1e: $0d
	ld   [hl], l                                     ; $4f1f: $75
	ld   e, e                                        ; $4f20: $5b
	ld   a, b                                        ; $4f21: $78
	ld   d, d                                        ; $4f22: $52
	ld   a, h                                        ; $4f23: $7c
	ld   e, c                                        ; $4f24: $59
	sub  [hl]                                        ; $4f25: $96
	db   $fc                                         ; $4f26: $fc
	sbc  a                                           ; $4f27: $9f
	dec  c                                           ; $4f28: $0d
	ld   d, b                                        ; $4f29: $50
	ld   l, l                                        ; $4f2a: $6d
	ld   d, d                                        ; $4f2b: $52
	ld   a, l                                        ; $4f2c: $7d
	dec  b                                           ; $4f2d: $05
	or   $03                                         ; $4f2e: $f6 $03
	ld   e, d                                        ; $4f30: $5a
	xor  h                                           ; $4f31: $ac
	push af                                          ; $4f32: $f5
	bit  5, [hl]                                     ; $4f33: $cb $6e
	sbc  a                                           ; $4f35: $9f
	dec  c                                           ; $4f36: $0d
	nop                                              ; $4f37: $00
	ld   a, [bc]                                     ; $4f38: $0a
	rrca                                             ; $4f39: $0f
	nop                                              ; $4f3a: $00
	ld   bc, $ff01                                   ; $4f3b: $01 $01 $ff
	rst  $38                                         ; $4f3e: $ff
	ld   d, b                                        ; $4f3f: $50
	sbc  [hl]                                        ; $4f40: $9e
	ld   d, b                                        ; $4f41: $50
	ld   a, h                                        ; $4f42: $7c
	dec  c                                           ; $4f43: $0d
	ld   [$7500], sp                                 ; $4f44: $08 $00 $75
	ld   h, a                                        ; $4f47: $67
	dec  c                                           ; $4f48: $0d
	cp   d                                           ; $4f49: $ba
	sbc  [hl]                                        ; $4f4a: $9e
	cp   d                                           ; $4f4b: $ba
	ldh  [$df], a                                    ; $4f4c: $e0 $df
	cp   h                                           ; $4f4e: $bc
	push af                                          ; $4f4f: $f5
	rst  $38                                         ; $4f50: $ff
	rst  $38                                         ; $4f51: $ff
	dec  c                                           ; $4f52: $0d
	nop                                              ; $4f53: $00
	ld   a, [bc]                                     ; $4f54: $0a
	inc  e                                           ; $4f55: $1c
	inc  bc                                          ; $4f56: $03
	nop                                              ; $4f57: $00
	nop                                              ; $4f58: $00
	ld   bc, $a15b                                   ; $4f59: $01 $5b $a1
	ld   l, a                                        ; $4f5c: $6f
	sub  l                                           ; $4f5d: $95
	ld   d, h                                        ; $4f5e: $54
	ld   [bc], a                                     ; $4f5f: $02
	scf                                              ; $4f60: $37
	ld   e, d                                        ; $4f61: $5a
	ld   a, b                                        ; $4f62: $78
	ld   d, d                                        ; $4f63: $52
	ld   a, h                                        ; $4f64: $7c
	ld   a, l                                        ; $4f65: $7d
	dec  b                                           ; $4f66: $05
	sub  [hl]                                        ; $4f67: $96
	sbc  c                                           ; $4f68: $99
	ld   e, d                                        ; $4f69: $5a
	dec  c                                           ; $4f6a: $0d
	ld   e, e                                        ; $4f6b: $5b
	and  c                                           ; $4f6c: $a1
	ld   l, a                                        ; $4f6d: $6f
	sub  l                                           ; $4f6e: $95
	ld   d, h                                        ; $4f6f: $54
	ld   h, l                                        ; $4f70: $65
	ld   h, a                                        ; $4f71: $67
	ld   e, h                                        ; $4f72: $5c
	ld   [hl], h                                     ; $4f73: $74
	sub  b                                           ; $4f74: $90
	pop  bc                                          ; $4f75: $c1
	db   $e3                                         ; $4f76: $e3
	sub  [hl]                                        ; $4f77: $96
	sbc  a                                           ; $4f78: $9f
	dec  c                                           ; $4f79: $0d
	sub  b                                           ; $4f7a: $90
	ld   d, h                                        ; $4f7b: $54
	inc  bc                                          ; $4f7c: $03
	ld   l, h                                        ; $4f7d: $6c
	ld   h, l                                        ; $4f7e: $65
	ld   [bc], a                                     ; $4f7f: $02
	cp   a                                           ; $4f80: $bf
	ld   a, h                                        ; $4f81: $7c
	dec  b                                           ; $4f82: $05
	ld   a, [bc]                                     ; $4f83: $0a
	and  b                                           ; $4f84: $a0
	ld   a, d                                        ; $4f85: $7a
	ld   e, e                                        ; $4f86: $5b
	ld   a, b                                        ; $4f87: $78
	ld   h, e                                        ; $4f88: $63
	ld   d, d                                        ; $4f89: $52
	sbc  a                                           ; $4f8a: $9f
	dec  c                                           ; $4f8b: $0d
	nop                                              ; $4f8c: $00
	ld   a, [bc]                                     ; $4f8d: $0a
	ld   bc, $ecdf                                   ; $4f8e: $01 $df $ec
	and  e                                           ; $4f91: $a3
	di                                               ; $4f92: $f3
	ret  nz                                          ; $4f93: $c0

	jp   nz, $cbd1                                   ; $4f94: $c2 $d1 $cb

	sub  [hl]                                        ; $4f97: $96
	sbc  a                                           ; $4f98: $9f
	dec  c                                           ; $4f99: $0d
	sub  [hl]                                        ; $4f9a: $96
	sbc  e                                           ; $4f9b: $9b
	ld   h, l                                        ; $4f9c: $65
	ld   e, l                                        ; $4f9d: $5d
	sbc  a                                           ; $4f9e: $9f
	dec  c                                           ; $4f9f: $0d
	nop                                              ; $4fa0: $00
	ld   a, [bc]                                     ; $4fa1: $0a
	inc  e                                           ; $4fa2: $1c
	ld   [bc], a                                     ; $4fa3: $02
	dec  b                                           ; $4fa4: $05
	dec  b                                           ; $4fa5: $05
	ld   bc, $718c                                   ; $4fa6: $01 $8c $71
	ld   l, l                                        ; $4fa9: $6d
	ld   e, l                                        ; $4faa: $5d
	rst  $38                                         ; $4fab: $ff
	rst  $38                                         ; $4fac: $ff
	ld   l, b                                        ; $4fad: $68
	ld   d, d                                        ; $4fae: $52
	add  h                                           ; $4faf: $84
	and  c                                           ; $4fb0: $a1
	halt                                             ; $4fb1: $76
	dec  c                                           ; $4fb2: $0d
	ld   l, l                                        ; $4fb3: $6d
	sub  [hl]                                        ; $4fb4: $96
	sbc  b                                           ; $4fb5: $98
	ld   a, b                                        ; $4fb6: $78
	ld   d, d                                        ; $4fb7: $52
	inc  b                                           ; $4fb8: $04
	ld   a, b                                        ; $4fb9: $78
	ld   [hl], l                                     ; $4fba: $75
	ld   h, a                                        ; $4fbb: $67
	ld   h, c                                        ; $4fbc: $61
	halt                                             ; $4fbd: $76
	rst  $38                                         ; $4fbe: $ff
	rst  $38                                         ; $4fbf: $ff
	dec  c                                           ; $4fc0: $0d
	inc  b                                           ; $4fc1: $04
	adc  a                                           ; $4fc2: $8f
	inc  b                                           ; $4fc3: $04
	jr   jr_043_503f                                 ; $4fc4: $18 $79

	sub  d                                           ; $4fc6: $92
	ld   [hl], c                                     ; $4fc7: $71
	ld   [hl], h                                     ; $4fc8: $74
	ld   d, d                                        ; $4fc9: $52
	ld   e, a                                        ; $4fca: $5f
	sbc  c                                           ; $4fcb: $99
	ld   a, h                                        ; $4fcc: $7c
	ld   e, c                                        ; $4fcd: $59
	ld   h, l                                        ; $4fce: $65
	sub  a                                           ; $4fcf: $97
	ld   sp, hl                                      ; $4fd0: $f9
	dec  c                                           ; $4fd1: $0d
	nop                                              ; $4fd2: $00
	ld   a, [bc]                                     ; $4fd3: $0a
	inc  e                                           ; $4fd4: $1c
	inc  b                                           ; $4fd5: $04
	ld   bc, $0101                                   ; $4fd6: $01 $01 $01
	ld   l, e                                        ; $4fd9: $6b
	and  c                                           ; $4fda: $a1
	ld   a, b                                        ; $4fdb: $78
	ld   a, c                                        ; $4fdc: $79
	xor  [hl]                                        ; $4fdd: $ae
	push af                                          ; $4fde: $f5
	jp   nz, $fbe9                                   ; $4fdf: $c2 $e9 $fb

	ld   h, l                                        ; $4fe2: $65
	ld   a, b                                        ; $4fe3: $78
	ld   e, l                                        ; $4fe4: $5d
	ld   [hl], h                                     ; $4fe5: $74
	sub  b                                           ; $4fe6: $90
	dec  c                                           ; $4fe7: $0d
	ld   l, [hl]                                     ; $4fe8: $6e
	ld   d, d                                        ; $4fe9: $52
	ld   h, [hl]                                     ; $4fea: $66
	sub  l                                           ; $4feb: $95
	ld   d, h                                        ; $4fec: $54
	add  h                                           ; $4fed: $84
	ld   l, [hl]                                     ; $4fee: $6e
	sub  [hl]                                        ; $4fef: $96
	sbc  a                                           ; $4ff0: $9f
	dec  c                                           ; $4ff1: $0d
	ld   l, l                                        ; $4ff2: $6d
	ld   a, h                                        ; $4ff3: $7c
	ld   h, l                                        ; $4ff4: $65
	ld   e, l                                        ; $4ff5: $5d
	sub  d                                           ; $4ff6: $92
	sbc  e                                           ; $4ff7: $9b
	ei                                               ; $4ff8: $fb
	sub  [hl]                                        ; $4ff9: $96
	ei                                               ; $4ffa: $fb
	sbc  a                                           ; $4ffb: $9f
	dec  c                                           ; $4ffc: $0d
	nop                                              ; $4ffd: $00
	ld   a, [bc]                                     ; $4ffe: $0a
	ld   bc, $a5a3                                   ; $4fff: $01 $a3 $a5
	db   $ec                                         ; $5002: $ec
	cp   d                                           ; $5003: $ba
	ld   [hl], l                                     ; $5004: $75
	ei                                               ; $5005: $fb
	ld   h, a                                        ; $5006: $67
	ld   a, [$610d]                                  ; $5007: $fa $0d $61
	ld   [hl], c                                     ; $500a: $71
	ld   l, a                                        ; $500b: $6f
	ld   a, l                                        ; $500c: $7d
	or   b                                           ; $500d: $b0
	rst  JumpTable                                         ; $500e: $df
	ld   a, h                                        ; $500f: $7c
	cp   c                                           ; $5010: $b9
	push hl                                          ; $5011: $e5
	push af                                          ; $5012: $f5
	sbc  $fb                                         ; $5013: $de $fb
	db   $ed                                         ; $5015: $ed
	ld   a, [$960d]                                  ; $5016: $fa $0d $96
	sbc  e                                           ; $5019: $9b
	ld   h, l                                        ; $501a: $65
	ld   e, l                                        ; $501b: $5d
	ld   a, e                                        ; $501c: $7b
	sbc  [hl]                                        ; $501d: $9e
	ld   l, a                                        ; $501e: $6f
	ld   d, d                                        ; $501f: $52
	ld   [bc], a                                     ; $5020: $02
	inc  de                                          ; $5021: $13
	ld   l, a                                        ; $5022: $6f
	sub  c                                           ; $5023: $91
	and  c                                           ; $5024: $a1
	ld   a, [$000d]                                  ; $5025: $fa $0d $00
	ld   a, [bc]                                     ; $5028: $0a
	inc  e                                           ; $5029: $1c
	dec  b                                           ; $502a: $05
	ld   bc, $0101                                   ; $502b: $01 $01 $01
	ld   l, e                                        ; $502e: $6b
	sub  d                                           ; $502f: $92
	ld   l, e                                        ; $5030: $6b
	sub  d                                           ; $5031: $92
	sbc  a                                           ; $5032: $9f
	ld   h, c                                        ; $5033: $61
	ld   h, c                                        ; $5034: $61
	ld   a, l                                        ; $5035: $7d
	inc  bc                                          ; $5036: $03
	sub  h                                           ; $5037: $94
	inc  b                                           ; $5038: $04
	sbc  [hl]                                        ; $5039: $9e
	ld   a, h                                        ; $503a: $7c
	ld   [bc], a                                     ; $503b: $02
	and  [hl]                                        ; $503c: $a6
	dec  c                                           ; $503d: $0d
	adc  l                                           ; $503e: $8d

jr_043_503f:
	ld   l, l                                        ; $503f: $6d
	ld   d, d                                        ; $5040: $52
	ld   a, b                                        ; $5041: $78
	sub  b                                           ; $5042: $90
	and  c                                           ; $5043: $a1
	sub  d                                           ; $5044: $92
	sbc  a                                           ; $5045: $9f
	dec  c                                           ; $5046: $0d
	sub  b                                           ; $5047: $90
	ld   [hl], c                                     ; $5048: $71
	halt                                             ; $5049: $76
	ld   e, l                                        ; $504a: $5d
	ld   [hl], d                                     ; $504b: $72
	sbc  e                                           ; $504c: $9b
	ld   d, d                                        ; $504d: $52
	ld   l, [hl]                                     ; $504e: $6e
	inc  b                                           ; $504f: $04
	ld   a, b                                        ; $5050: $78
	ld   e, d                                        ; $5051: $5a
	xor  c                                           ; $5052: $a9
	xor  c                                           ; $5053: $a9
	ld   [hl], l                                     ; $5054: $75
	sbc  a                                           ; $5055: $9f
	dec  c                                           ; $5056: $0d
	nop                                              ; $5057: $00
	ld   a, [bc]                                     ; $5058: $0a
	ld   bc, wRandomNumStruct                                   ; $5059: $01 $a7 $c2
	ld   a, l                                        ; $505c: $7d
	ld   b, $64                                      ; $505d: $06 $64
	ld   [bc], a                                     ; $505f: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5060: $cf
	dec  b                                           ; $5061: $05
	ld   a, [de]                                     ; $5062: $1a
	sub  d                                           ; $5063: $92
	sbc  a                                           ; $5064: $9f
	dec  c                                           ; $5065: $0d
	nop                                              ; $5066: $00
	ld   a, [bc]                                     ; $5067: $0a
	inc  e                                           ; $5068: $1c
	ld   bc, $0101                                   ; $5069: $01 $01 $01
	dec  e                                           ; $506c: $1d
	ld   b, b                                        ; $506d: $40
	ld   de, $1103                                   ; $506e: $11 $03 $11
	ld   bc, $2802                                   ; $5071: $01 $02 $28
	nop                                              ; $5074: $00
	ld   bc, $6d50                                   ; $5075: $01 $50 $6d
	ld   h, l                                        ; $5078: $65
	ld   a, l                                        ; $5079: $7d
	inc  bc                                          ; $507a: $03
	xor  l                                           ; $507b: $ad
	inc  b                                           ; $507c: $04
	ret                                              ; $507d: $c9


	ld   b, $60                                      ; $507e: $06 $60
	ld   h, e                                        ; $5080: $63
	ld   e, l                                        ; $5081: $5d
	sub  a                                           ; $5082: $97
	ld   [hl], l                                     ; $5083: $75
	ld   h, a                                        ; $5084: $67
	sbc  a                                           ; $5085: $9f
	dec  c                                           ; $5086: $0d
	ld   d, b                                        ; $5087: $50
	ld   l, l                                        ; $5088: $6d
	ld   h, l                                        ; $5089: $65
	sub  b                                           ; $508a: $90
	inc  bc                                          ; $508b: $03
	ld   l, c                                        ; $508c: $69
	inc  bc                                          ; $508d: $03
	inc  c                                           ; $508e: $0c
	ld   a, l                                        ; $508f: $7d
	ld   l, e                                        ; $5090: $6b
	ld   d, h                                        ; $5091: $54
	ld   [hl], l                                     ; $5092: $75
	ld   h, l                                        ; $5093: $65
	ld   l, l                                        ; $5094: $6d
	sbc  a                                           ; $5095: $9f
	dec  c                                           ; $5096: $0d
	ld   e, d                                        ; $5097: $5a
	and  c                                           ; $5098: $a1
	ld   a, [hl]                                     ; $5099: $7e
	ld   [hl], c                                     ; $509a: $71
	ld   [hl], h                                     ; $509b: $74
	ld   e, l                                        ; $509c: $5d
	ld   l, [hl]                                     ; $509d: $6e
	ld   h, e                                        ; $509e: $63
	ld   d, d                                        ; $509f: $52
	sbc  a                                           ; $50a0: $9f
	dec  c                                           ; $50a1: $0d
	nop                                              ; $50a2: $00
	ld   a, [bc]                                     ; $50a3: $0a
	inc  e                                           ; $50a4: $1c
	add  hl, bc                                      ; $50a5: $09
	nop                                              ; $50a6: $00
	nop                                              ; $50a7: $00
	dec  b                                           ; $50a8: $05
	add  b                                           ; $50a9: $80
	or   h                                           ; $50aa: $b4
	ld   bc, $0001                                   ; $50ab: $01 $01 $00
	ld   bc, $6596                                   ; $50ae: $01 $96 $65
	sbc  [hl]                                        ; $50b1: $9e
	ld   h, [hl]                                     ; $50b2: $66
	sub  c                                           ; $50b3: $91
	ld   d, b                                        ; $50b4: $50
	ld   h, c                                        ; $50b5: $61
	sbc  d                                           ; $50b6: $9a
	ld   e, c                                        ; $50b7: $59
	sub  a                                           ; $50b8: $97
	dec  c                                           ; $50b9: $0d
	xor  [hl]                                        ; $50ba: $ae
	ldh  [$7c], a                                    ; $50bb: $e0 $7c
	dec  b                                           ; $50bd: $05
	add  hl, bc                                      ; $50be: $09
	dec  b                                           ; $50bf: $05
	ld   a, [bc]                                     ; $50c0: $0a
	and  b                                           ; $50c1: $a0
	ld   b, $83                                      ; $50c2: $06 $83
	inc  bc                                          ; $50c4: $03
	call nc, Call_043_7965                           ; $50c5: $d4 $65 $79
	dec  c                                           ; $50c8: $0d
	ld   [bc], a                                     ; $50c9: $02
	ld   a, a                                        ; $50ca: $7f
	ld   e, l                                        ; $50cb: $5d
	sbc  a                                           ; $50cc: $9f
	ld   [hl], d                                     ; $50cd: $72
	ld   d, d                                        ; $50ce: $52
	ld   [hl], h                                     ; $50cf: $74
	ld   e, e                                        ; $50d0: $5b
	ld   [hl], h                                     ; $50d1: $74
	ld   e, l                                        ; $50d2: $5d
	sbc  d                                           ; $50d3: $9a
	sbc  a                                           ; $50d4: $9f
	dec  c                                           ; $50d5: $0d
	nop                                              ; $50d6: $00
	ld   a, [bc]                                     ; $50d7: $0a
	dec  c                                           ; $50d8: $0d
	nop                                              ; $50d9: $00
	nop                                              ; $50da: $00
	rrca                                             ; $50db: $0f
	nop                                              ; $50dc: $00
	ld   bc, $4906                                   ; $50dd: $01 $06 $49
	dec  c                                           ; $50e0: $0d
	inc  hl                                          ; $50e1: $23
	ld   a, e                                        ; $50e2: $7b
	inc  e                                           ; $50e3: $1c
	add  hl, bc                                      ; $50e4: $09
	nop                                              ; $50e5: $00
	nop                                              ; $50e6: $00
	ld   bc, $7d75                                   ; $50e7: $01 $75 $7d
	sbc  [hl]                                        ; $50ea: $9e
	ld   [bc], a                                     ; $50eb: $02
	and  l                                           ; $50ec: $a5
	ld   e, c                                        ; $50ed: $59
	sub  a                                           ; $50ee: $97
	ld   [$5d00], sp                                 ; $50ef: $08 $00 $5d
	and  c                                           ; $50f2: $a1
	ld   a, h                                        ; $50f3: $7c
	dec  c                                           ; $50f4: $0d
	dec  b                                           ; $50f5: $05
	add  hl, bc                                      ; $50f6: $09
	dec  b                                           ; $50f7: $05
	ld   a, [bc]                                     ; $50f8: $0a
	and  b                                           ; $50f9: $a0
	ld   b, $83                                      ; $50fa: $06 $83
	inc  bc                                          ; $50fc: $03
	call nc, $9665                                   ; $50fd: $d4 $65 $96
	ld   d, h                                        ; $5100: $54
	halt                                             ; $5101: $76
	dec  b                                           ; $5102: $05
	pop  de                                          ; $5103: $d1
	ld   d, h                                        ; $5104: $54
	sbc  a                                           ; $5105: $9f
	dec  c                                           ; $5106: $0d
	nop                                              ; $5107: $00
	ld   a, [bc]                                     ; $5108: $0a
	ld   bc, $7804                                   ; $5109: $01 $04 $78
	inc  b                                           ; $510c: $04
	ld   h, h                                        ; $510d: $64
	ld   a, l                                        ; $510e: $7d
	sbc  [hl]                                        ; $510f: $9e
	ld   [bc], a                                     ; $5110: $02
	jr   c, jr_043_5117                              ; $5111: $38 $04

	ld   d, d                                        ; $5113: $52
	ld   a, c                                        ; $5114: $79
	inc  bc                                          ; $5115: $03
	cp   c                                           ; $5116: $b9

jr_043_5117:
	ld   [hl], c                                     ; $5117: $71
	ld   [hl], h                                     ; $5118: $74
	ld   a, h                                        ; $5119: $7c
	dec  c                                           ; $511a: $0d
	ld   b, $a5                                      ; $511b: $06 $a5
	ld   b, $a6                                      ; $511d: $06 $a6
	inc  bc                                          ; $511f: $03
	xor  b                                           ; $5120: $a8
	dec  b                                           ; $5121: $05
	rst  $38                                         ; $5122: $ff
	ld   l, [hl]                                     ; $5123: $6e
	sbc  a                                           ; $5124: $9f
	dec  c                                           ; $5125: $0d
	nop                                              ; $5126: $00
	ld   a, [bc]                                     ; $5127: $0a
	ld   bc, $9166                                   ; $5128: $01 $66 $91
	sbc  [hl]                                        ; $512b: $9e
	ld   [$5d00], sp                                 ; $512c: $08 $00 $5d
	and  c                                           ; $512f: $a1
	ld   e, d                                        ; $5130: $5a
	inc  bc                                          ; $5131: $03
	cp   c                                           ; $5132: $b9
	sbc  c                                           ; $5133: $99
	dec  c                                           ; $5134: $0d
	ld   [bc], a                                     ; $5135: $02
	jr   c, jr_043_513c                              ; $5136: $38 $04

	ld   d, d                                        ; $5138: $52
	and  b                                           ; $5139: $a0
	ld   d, [hl]                                     ; $513a: $56
	sub  a                                           ; $513b: $97

jr_043_513c:
	and  c                                           ; $513c: $a1
	ld   [hl], l                                     ; $513d: $75
	ld   e, l                                        ; $513e: $5d
	sbc  d                                           ; $513f: $9a
	sbc  a                                           ; $5140: $9f
	dec  c                                           ; $5141: $0d
	nop                                              ; $5142: $00
	ld   a, [bc]                                     ; $5143: $0a
	dec  c                                           ; $5144: $0d
	nop                                              ; $5145: $00
	nop                                              ; $5146: $00
	rrca                                             ; $5147: $0f
	nop                                              ; $5148: $00
	ld   bc, $000d                                   ; $5149: $01 $0d $00
	nop                                              ; $514c: $00
	rrca                                             ; $514d: $0f
	nop                                              ; $514e: $00
	ld   bc, $1c28                                   ; $514f: $01 $28 $1c
	add  hl, bc                                      ; $5152: $09
	ld   [bc], a                                     ; $5153: $02
	ld   [bc], a                                     ; $5154: $02
	ld   bc, $7c61                                   ; $5155: $01 $61 $7c
	ld   [bc], a                                     ; $5158: $02
	jr   c, jr_043_515f                              ; $5159: $38 $04

	ld   d, d                                        ; $515b: $52
	ld   [hl], l                                     ; $515c: $75
	ld   d, d                                        ; $515d: $52
	ld   d, d                                        ; $515e: $52

jr_043_515f:
	and  c                                           ; $515f: $a1
	ld   l, [hl]                                     ; $5160: $6e
	ld   a, b                                        ; $5161: $78
	ld   sp, hl                                      ; $5162: $f9
	dec  c                                           ; $5163: $0d
	nop                                              ; $5164: $00
	ld   a, [bc]                                     ; $5165: $0a
	jr   jr_043_516a                                 ; $5166: $18 $02 - 2 is num loops

	nop                                              ; $5168: $00 - a far call param
	ld   a, l                                        ; $5169: $7d - start of text

jr_043_516a:
	ld   d, d                                        ; $516a: $52
	nop                                              ; $516b: $00 - end of text
	nop                                              ; $516c: $00 - stored as part of 61de
	ld   d, d                                        ; $516d: $52 - start of text
	ld   d, d                                        ; $516e: $52
	ld   d, [hl]                                     ; $516f: $56
	nop                                              ; $5170: $00 - end of text
	db $01 
	
	
	db $07
	dw $0dec
	db $02, $02 ; timed question answer
	db $01, $00
	db $20 ; eq
	db $00
	
	db $07
	dw $0db2
	db $02, $02
	db $01, $01
	db $20
	db $00
	
	inc  e                                           ; $5184: $1c
	add  hl, bc                                      ; $5185: $09
	ld   [bc], a                                     ; $5186: $02
	ld   [bc], a                                     ; $5187: $02
	ld   bc, $6596                                   ; $5188: $01 $96 $65
	rst  $38                                         ; $518b: $ff
	rst  $38                                         ; $518c: $ff
	dec  c                                           ; $518d: $0d
	ld   b, $a5                                      ; $518e: $06 $a5
	ld   b, $a6                                      ; $5190: $06 $a6
	inc  bc                                          ; $5192: $03
	xor  b                                           ; $5193: $a8
	dec  b                                           ; $5194: $05
	rst  $38                                         ; $5195: $ff
	ld   l, [hl]                                     ; $5196: $6e
	ld   e, c                                        ; $5197: $59
	sub  a                                           ; $5198: $97
	halt                                             ; $5199: $76
	ld   d, d                                        ; $519a: $52
	ld   [hl], c                                     ; $519b: $71
	ld   [hl], h                                     ; $519c: $74
	sbc  [hl]                                        ; $519d: $9e
	dec  c                                           ; $519e: $0d
	ld   [bc], a                                     ; $519f: $02
	and  c                                           ; $51a0: $a1
	and  b                                           ; $51a1: $a0
	inc  b                                           ; $51a2: $04
	sub  h                                           ; $51a3: $94
	ld   e, l                                        ; $51a4: $5d
	and  c                                           ; $51a5: $a1
	ld   h, [hl]                                     ; $51a6: $66
	sub  c                                           ; $51a7: $91
	ld   a, b                                        ; $51a8: $78
	ld   d, d                                        ; $51a9: $52
	ld   l, h                                        ; $51aa: $6c
	sbc  a                                           ; $51ab: $9f
	dec  c                                           ; $51ac: $0d
	nop                                              ; $51ad: $00
	ld   a, [bc]                                     ; $51ae: $0a
	ld   bc, $7d75                                   ; $51af: $01 $75 $7d
	sbc  [hl]                                        ; $51b2: $9e
	dec  b                                           ; $51b3: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $51b4: $cf
	adc  a                                           ; $51b5: $8f
	ld   a, [$000d]                                  ; $51b6: $fa $0d $00
	ld   a, [bc]                                     ; $51b9: $0a
	dec  c                                           ; $51ba: $0d
	nop                                              ; $51bb: $00
	nop                                              ; $51bc: $00
	rrca                                             ; $51bd: $0f
	nop                                              ; $51be: $00
	ld   bc, $0027                                   ; $51bf: $01 $27 $00


	inc  de                                          ; $51c2: $13
	inc  b                                           ; $51c3: $04

	db $07
	dw $0e35 ; 51cd
	db $02, $04
	db $00
	
	db $06
	dw $0f91 ; 5329
	
	dec  b                                           ; $51cd: $05
	ld   b, b                                        ; $51ce: $40
	ld   d, l                                        ; $51cf: $55
	ld   bc, $0001                                   ; $51d0: $01 $01 $00
	rlca                                             ; $51d3: $07
	halt                                             ; $51d4: $76
	ld   c, $04                                      ; $51d5: $0e $04
	add  b                                           ; $51d7: $80
	cp   c                                           ; $51d8: $b9
	ld   bc, $2000                                   ; $51d9: $01 $00 $20
	nop                                              ; $51dc: $00
	inc  e                                           ; $51dd: $1c
	ld   b, $01                                      ; $51de: $06 $01
	ld   bc, $401d                                   ; $51e0: $01 $1d $40
	ld   d, $03                                      ; $51e3: $16 $03
	ld   d, $01                                      ; $51e5: $16 $01
	ld   [bc], a                                     ; $51e7: $02
	jr   z, jr_043_51ea                              ; $51e8: $28 $00

jr_043_51ea:
	ld   bc, $5978                                   ; $51ea: $01 $78 $59
	ld   a, b                                        ; $51ed: $78
	ld   e, c                                        ; $51ee: $59
	sub  d                                           ; $51ef: $92
	sbc  c                                           ; $51f0: $99
	ld   h, [hl]                                     ; $51f1: $66
	sub  c                                           ; $51f2: $91
	ld   a, e                                        ; $51f3: $7b
	ei                                               ; $51f4: $fb
	ld   e, c                                        ; $51f5: $59
	sbc  a                                           ; $51f6: $9f
	dec  c                                           ; $51f7: $0d
	ld   e, a                                        ; $51f8: $5f
	ld   [hl], c                                     ; $51f9: $71
	ld   h, c                                        ; $51fa: $61
	ld   d, h                                        ; $51fb: $54
	ld   a, b                                        ; $51fc: $78
	dec  b                                           ; $51fd: $05
	add  hl, bc                                      ; $51fe: $09
	dec  b                                           ; $51ff: $05
	ld   a, [bc]                                     ; $5200: $0a
	and  b                                           ; $5201: $a0
	sub  b                                           ; $5202: $90
	ld   [hl], c                                     ; $5203: $71
	ld   [hl], h                                     ; $5204: $74
	sbc  c                                           ; $5205: $99
	and  c                                           ; $5206: $a1
	dec  c                                           ; $5207: $0d
	ld   l, [hl]                                     ; $5208: $6e
	ld   a, b                                        ; $5209: $78
	sbc  a                                           ; $520a: $9f
	dec  c                                           ; $520b: $0d
	nop                                              ; $520c: $00
	ld   a, [bc]                                     ; $520d: $0a
	rlca                                             ; $520e: $07
	or   a                                           ; $520f: $b7
	ld   c, $04                                      ; $5210: $0e $04
	add  b                                           ; $5212: $80
	or   [hl]                                        ; $5213: $b6
	ld   bc, $2000                                   ; $5214: $01 $00 $20
	nop                                              ; $5217: $00
	inc  e                                           ; $5218: $1c
	inc  bc                                          ; $5219: $03
	inc  bc                                          ; $521a: $03
	inc  bc                                          ; $521b: $03
	dec  e                                           ; $521c: $1d
	ld   b, b                                        ; $521d: $40
	inc  de                                          ; $521e: $13
	inc  bc                                          ; $521f: $03
	inc  de                                          ; $5220: $13
	ld   bc, $2802                                   ; $5221: $01 $02 $28
	nop                                              ; $5224: $00
	ld   bc, $d105                                   ; $5225: $01 $05 $d1
	ld   [hl], c                                     ; $5228: $71
	ld   [hl], h                                     ; $5229: $74
	ld   d, d                                        ; $522a: $52
	ld   l, l                                        ; $522b: $6d
	sub  [hl]                                        ; $522c: $96
	sbc  b                                           ; $522d: $98
	sub  d                                           ; $522e: $92
	sbc  c                                           ; $522f: $99
	sbc  l                                           ; $5230: $9d
	ld   a, e                                        ; $5231: $7b
	sbc  a                                           ; $5232: $9f
	dec  c                                           ; $5233: $0d
	ld   h, c                                        ; $5234: $61
	sbc  d                                           ; $5235: $9a
	ld   a, b                                        ; $5236: $78
	sub  a                                           ; $5237: $97
	sbc  [hl]                                        ; $5238: $9e
	ld   d, d                                        ; $5239: $52
	ld   l, b                                        ; $523a: $68
	sbc  d                                           ; $523b: $9a
	inc  bc                                          ; $523c: $03
	xor  b                                           ; $523d: $a8
	dec  b                                           ; $523e: $05
	ld   a, [bc]                                     ; $523f: $0a
	ld   a, c                                        ; $5240: $79
	dec  c                                           ; $5241: $0d
	ld   a, b                                        ; $5242: $78
	sbc  c                                           ; $5243: $99
	ld   e, c                                        ; $5244: $59
	sub  b                                           ; $5245: $90
	ld   h, l                                        ; $5246: $65
	sbc  d                                           ; $5247: $9a
	ld   a, b                                        ; $5248: $78
	ld   d, d                                        ; $5249: $52
	sbc  l                                           ; $524a: $9d
	sbc  a                                           ; $524b: $9f
	dec  c                                           ; $524c: $0d
	nop                                              ; $524d: $00
	ld   a, [bc]                                     ; $524e: $0a
	rlca                                             ; $524f: $07
	ldh  [$0e], a                                    ; $5250: $e0 $0e
	inc  b                                           ; $5252: $04
	add  b                                           ; $5253: $80
	or   a                                           ; $5254: $b7
	ld   bc, $2000                                   ; $5255: $01 $00 $20
	nop                                              ; $5258: $00
	inc  e                                           ; $5259: $1c
	inc  b                                           ; $525a: $04
	ld   bc, $1d01                                   ; $525b: $01 $01 $1d
	ld   b, b                                        ; $525e: $40
	inc  d                                           ; $525f: $14
	inc  bc                                          ; $5260: $03
	inc  d                                           ; $5261: $14
	ld   bc, $2802                                   ; $5262: $01 $02 $28
	nop                                              ; $5265: $00
	ld   bc, $fb9d                                   ; $5266: $01 $9d $fb
	ld   d, d                                        ; $5269: $52
	ld   a, [$670d]                                  ; $526a: $fa $0d $67
	ld   h, d                                        ; $526d: $62
	ld   d, d                                        ; $526e: $52
	sbc  [hl]                                        ; $526f: $9e
	ld   h, a                                        ; $5270: $67
	ld   h, d                                        ; $5271: $62
	ei                                               ; $5272: $fb
	ld   d, d                                        ; $5273: $52
	ld   a, [$000d]                                  ; $5274: $fa $0d $00
	ld   a, [bc]                                     ; $5277: $0a
	rlca                                             ; $5278: $07

Call_043_5279:
	inc  e                                           ; $5279: $1c
	rrca                                             ; $527a: $0f
	inc  b                                           ; $527b: $04
	add  b                                           ; $527c: $80
	cp   b                                           ; $527d: $b8
	ld   bc, $2000                                   ; $527e: $01 $00 $20
	nop                                              ; $5281: $00
	inc  e                                           ; $5282: $1c
	dec  b                                           ; $5283: $05
	ld   bc, $1d01                                   ; $5284: $01 $01 $1d
	ld   b, b                                        ; $5287: $40
	dec  d                                           ; $5288: $15
	inc  bc                                          ; $5289: $03
	dec  d                                           ; $528a: $15
	ld   bc, $2802                                   ; $528b: $01 $02 $28
	nop                                              ; $528e: $00
	ld   bc, $fb86                                   ; $528f: $01 $86 $fb
	sbc  [hl]                                        ; $5292: $9e
	ld   a, b                                        ; $5293: $78
	ld   e, c                                        ; $5294: $59
	ld   a, b                                        ; $5295: $78
	ld   e, c                                        ; $5296: $59
	sub  d                                           ; $5297: $92
	sbc  c                                           ; $5298: $99
	sub  d                                           ; $5299: $92
	and  c                                           ; $529a: $a1
	sbc  a                                           ; $529b: $9f
	dec  c                                           ; $529c: $0d
	ld   h, c                                        ; $529d: $61
	sbc  b                                           ; $529e: $98
	sub  c                                           ; $529f: $91
	and  a                                           ; $52a0: $a7
	jp   nz, $9e90                                   ; $52a1: $c2 $90 $9e

	ld   d, h                                        ; $52a4: $54
	ld   e, c                                        ; $52a5: $59
	ld   d, h                                        ; $52a6: $54
	ld   e, c                                        ; $52a7: $59
	dec  c                                           ; $52a8: $0d
	ld   h, l                                        ; $52a9: $65
	ld   [hl], h                                     ; $52aa: $74
	sub  a                                           ; $52ab: $97
	sbc  d                                           ; $52ac: $9a
	add  [hl]                                        ; $52ad: $86
	and  c                                           ; $52ae: $a1
	ld   a, b                                        ; $52af: $78
	db   $fc                                         ; $52b0: $fc
	dec  c                                           ; $52b1: $0d
	nop                                              ; $52b2: $00
	ld   a, [bc]                                     ; $52b3: $0a
	rlca                                             ; $52b4: $07
	ld   c, d                                        ; $52b5: $4a
	rrca                                             ; $52b6: $0f
	inc  b                                           ; $52b7: $04
	add  b                                           ; $52b8: $80
	or   l                                           ; $52b9: $b5
	ld   bc, $2000                                   ; $52ba: $01 $00 $20
	nop                                              ; $52bd: $00
	inc  e                                           ; $52be: $1c
	ld   [bc], a                                     ; $52bf: $02
	ld   bc, $1d01                                   ; $52c0: $01 $01 $1d
	ld   b, b                                        ; $52c3: $40
	ld   [de], a                                     ; $52c4: $12
	inc  bc                                          ; $52c5: $03
	ld   [de], a                                     ; $52c6: $12
	ld   bc, $2802                                   ; $52c7: $01 $02 $28
	nop                                              ; $52ca: $00
	ld   bc, $9750                                   ; $52cb: $01 $50 $97
	sbc  [hl]                                        ; $52ce: $9e
	cp   b                                           ; $52cf: $b8
	rst  $28                                         ; $52d0: $ef
	and  a                                           ; $52d1: $a7
	ret                                              ; $52d2: $c9


	ld   a, c                                        ; $52d3: $79
	ld   h, l                                        ; $52d4: $65
	ld   [hl], h                                     ; $52d5: $74
	ld   a, l                                        ; $52d6: $7d
	dec  c                                           ; $52d7: $0d
	sub  d                                           ; $52d8: $92
	sbc  b                                           ; $52d9: $98
	adc  h                                           ; $52da: $8c
	ld   h, a                                        ; $52db: $67
	sbc  l                                           ; $52dc: $9d
	ld   a, e                                        ; $52dd: $7b
	sbc  a                                           ; $52de: $9f
	dec  c                                           ; $52df: $0d
	nop                                              ; $52e0: $00
	ld   a, [bc]                                     ; $52e1: $0a
	rlca                                             ; $52e2: $07
	push af                                          ; $52e3: $f5
	db   $10                                         ; $52e4: $10
	inc  b                                           ; $52e5: $04
	add  b                                           ; $52e6: $80
	or   h                                           ; $52e7: $b4
	ld   bc, $2000                                   ; $52e8: $01 $00 $20
	nop                                              ; $52eb: $00
	inc  e                                           ; $52ec: $1c
	ld   bc, $0101                                   ; $52ed: $01 $01 $01
	dec  e                                           ; $52f0: $1d
	ld   b, b                                        ; $52f1: $40
	ld   de, $1103                                   ; $52f2: $11 $03 $11
	ld   bc, $2802                                   ; $52f5: $01 $02 $28
	nop                                              ; $52f8: $00
	ld   bc, $0c03                                   ; $52f9: $01 $03 $0c
	adc  a                                           ; $52fc: $8f
	ld   [hl], h                                     ; $52fd: $74
	ld   a, b                                        ; $52fe: $78
	ld   a, h                                        ; $52ff: $7c
	ld   a, c                                        ; $5300: $79
	sbc  [hl]                                        ; $5301: $9e
	ld   h, a                                        ; $5302: $67
	ld   h, d                                        ; $5303: $62
	ld   d, d                                        ; $5304: $52
	ld   [hl], l                                     ; $5305: $75
	ld   h, a                                        ; $5306: $67
	ld   a, e                                        ; $5307: $7b
	sbc  a                                           ; $5308: $9f
	dec  c                                           ; $5309: $0d
	ld   d, b                                        ; $530a: $50
	ld   l, l                                        ; $530b: $6d
	ld   h, l                                        ; $530c: $65
	sub  b                                           ; $530d: $90
	inc  b                                           ; $530e: $04
	ld   a, l                                        ; $530f: $7d
	ld   e, a                                        ; $5310: $5f
	ld   [hl], h                                     ; $5311: $74
	sub  a                                           ; $5312: $97
	sbc  d                                           ; $5313: $9a
	ld   a, b                                        ; $5314: $78
	ld   d, d                                        ; $5315: $52
	sbc  l                                           ; $5316: $9d
	sbc  a                                           ; $5317: $9f
	dec  c                                           ; $5318: $0d
	ld   e, d                                        ; $5319: $5a
	and  c                                           ; $531a: $a1
	ld   a, [hl]                                     ; $531b: $7e
	sub  a                                           ; $531c: $97
	ld   a, b                                        ; $531d: $78
	ld   e, l                                        ; $531e: $5d
	ld   [hl], c                                     ; $531f: $71
	ld   l, a                                        ; $5320: $6f
	sub  c                                           ; $5321: $91
	sbc  a                                           ; $5322: $9f
	dec  c                                           ; $5323: $0d
	nop                                              ; $5324: $00
	ld   a, [bc]                                     ; $5325: $0a
	ld   b, $f5                                      ; $5326: $06 $f5
	db   $10                                         ; $5328: $10
	rlca                                             ; $5329: $07
	ldh  [rIF], a                                    ; $532a: $e0 $0f
	inc  b                                           ; $532c: $04
	add  b                                           ; $532d: $80
	cp   c                                           ; $532e: $b9
	ld   bc, $2000                                   ; $532f: $01 $00 $20
	nop                                              ; $5332: $00
	inc  e                                           ; $5333: $1c
	ld   b, $05                                      ; $5334: $06 $05
	dec  b                                           ; $5336: $05
	ld   bc, $fc54                                   ; $5337: $01 $54 $fc
	and  c                                           ; $533a: $a1
	sbc  [hl]                                        ; $533b: $9e
	and  l                                           ; $533c: $a5
	rst  JumpTable                                         ; $533d: $df
	and  l                                           ; $533e: $a5
	jp   nz, Jump_043_786e                           ; $533f: $c2 $6e $78

	sbc  a                                           ; $5342: $9f
	dec  c                                           ; $5343: $0d
	ld   e, a                                        ; $5344: $5f
	ld   [hl], a                                     ; $5345: $77
	adc  h                                           ; $5346: $8c
	ld   d, b                                        ; $5347: $50
	sbc  [hl]                                        ; $5348: $9e
	inc  bc                                          ; $5349: $03
	ld   l, c                                        ; $534a: $69
	inc  bc                                          ; $534b: $03
	inc  c                                           ; $534c: $0c
	ld   a, l                                        ; $534d: $7d
	inc  bc                                          ; $534e: $03
	xor  c                                           ; $534f: $a9
	ld   [hl], l                                     ; $5350: $75
	sub  b                                           ; $5351: $90
	dec  c                                           ; $5352: $0d
	ld   h, c                                        ; $5353: $61
	and  c                                           ; $5354: $a1
	ld   a, b                                        ; $5355: $78
	sub  b                                           ; $5356: $90
	and  c                                           ; $5357: $a1
	ld   h, e                                        ; $5358: $63
	sbc  a                                           ; $5359: $9f
	dec  c                                           ; $535a: $0d
	nop                                              ; $535b: $00
	ld   a, [bc]                                     ; $535c: $0a
	inc  e                                           ; $535d: $1c
	ld   b, $01                                      ; $535e: $06 $01
	ld   bc, $0501                                   ; $5360: $01 $01 $05
	ld   [de], a                                     ; $5363: $12
	ld   l, a                                        ; $5364: $6f
	ld   [bc], a                                     ; $5365: $02
	ld   b, b                                        ; $5366: $40
	adc  h                                           ; $5367: $8c
	ld   l, b                                        ; $5368: $68
	ld   a, c                                        ; $5369: $79
	dec  c                                           ; $536a: $0d
	ld   h, c                                        ; $536b: $61
	sbc  d                                           ; $536c: $9a
	ld   e, c                                        ; $536d: $59
	sub  a                                           ; $536e: $97
	ld   e, d                                        ; $536f: $5a
	and  c                                           ; $5370: $a1
	ld   a, [hl]                                     ; $5371: $7e
	sbc  d                                           ; $5372: $9a
	sub  [hl]                                        ; $5373: $96
	sbc  a                                           ; $5374: $9f
	dec  c                                           ; $5375: $0d
	nop                                              ; $5376: $00
	ld   a, [bc]                                     ; $5377: $0a
	rlca                                             ; $5378: $07
	inc  d                                           ; $5379: $14
	db   $10                                         ; $537a: $10
	inc  b                                           ; $537b: $04
	add  b                                           ; $537c: $80
	or   [hl]                                        ; $537d: $b6
	ld   bc, $2000                                   ; $537e: $01 $00 $20
	nop                                              ; $5381: $00
	inc  e                                           ; $5382: $1c
	inc  bc                                          ; $5383: $03
	inc  bc                                          ; $5384: $03
	inc  bc                                          ; $5385: $03
	ld   bc, $0c03                                   ; $5386: $01 $03 $0c
	adc  a                                           ; $5389: $8f
	ld   [hl], h                                     ; $538a: $74
	ld   l, [hl]                                     ; $538b: $6e
	ld   e, c                                        ; $538c: $59
	sub  a                                           ; $538d: $97
	inc  bc                                          ; $538e: $03
	dec  c                                           ; $538f: $0d
	inc  b                                           ; $5390: $04
	ld   a, b                                        ; $5391: $78
	ld   a, b                                        ; $5392: $78
	ld   d, d                                        ; $5393: $52
	sbc  l                                           ; $5394: $9d
	ld   a, e                                        ; $5395: $7b
	sbc  a                                           ; $5396: $9f
	dec  c                                           ; $5397: $0d

jr_043_5398:
	ld   h, c                                        ; $5398: $61
	sbc  d                                           ; $5399: $9a
	ld   e, c                                        ; $539a: $59
	sub  a                                           ; $539b: $97
	ld   a, h                                        ; $539c: $7c
	ld   [bc], a                                     ; $539d: $02
	jr   nz, jr_043_5398                             ; $539e: $20 $f8

	ld   [bc], a                                     ; $53a0: $02
	sbc  e                                           ; $53a1: $9b
	ld   e, d                                        ; $53a2: $5a
	inc  bc                                          ; $53a3: $03
	ld   c, [hl]                                     ; $53a4: $4e
	inc  b                                           ; $53a5: $04
	ld   a, l                                        ; $53a6: $7d
	sub  [hl]                                        ; $53a7: $96
	sbc  a                                           ; $53a8: $9f
	dec  c                                           ; $53a9: $0d
	nop                                              ; $53aa: $00
	ld   a, [bc]                                     ; $53ab: $0a
	rlca                                             ; $53ac: $07
	ld   b, h                                        ; $53ad: $44
	db   $10                                         ; $53ae: $10
	inc  b                                           ; $53af: $04
	add  b                                           ; $53b0: $80
	or   a                                           ; $53b1: $b7
	ld   bc, $2000                                   ; $53b2: $01 $00 $20
	nop                                              ; $53b5: $00
	inc  e                                           ; $53b6: $1c
	inc  b                                           ; $53b7: $04
	nop                                              ; $53b8: $00
	nop                                              ; $53b9: $00
	ld   bc, $fc54                                   ; $53ba: $01 $54 $fc
	and  c                                           ; $53bd: $a1
	rst  $38                                         ; $53be: $ff
	rst  $38                                         ; $53bf: $ff
	dec  c                                           ; $53c0: $0d
	adc  h                                           ; $53c1: $8c
	ld   c, a                                        ; $53c2: $4f
	sbc  [hl]                                        ; $53c3: $9e
	ld   h, l                                        ; $53c4: $65
	sub  l                                           ; $53c5: $95
	ld   d, h                                        ; $53c6: $54
	ld   e, d                                        ; $53c7: $5a
	ld   a, b                                        ; $53c8: $78
	ld   d, d                                        ; $53c9: $52
	ld   a, e                                        ; $53ca: $7b
	sbc  a                                           ; $53cb: $9f
	dec  c                                           ; $53cc: $0d
	ld   e, e                                        ; $53cd: $5b
	ld   [hl], c                                     ; $53ce: $71
	halt                                             ; $53cf: $76
	ld   h, [hl]                                     ; $53d0: $66
	sub  l                                           ; $53d1: $95
	ld   d, h                                        ; $53d2: $54
	ld   l, b                                        ; $53d3: $68
	ld   a, c                                        ; $53d4: $79
	ld   a, b                                        ; $53d5: $78
	sbc  c                                           ; $53d6: $99
	sub  [hl]                                        ; $53d7: $96
	ld   a, [$000d]                                  ; $53d8: $fa $0d $00
	ld   a, [bc]                                     ; $53db: $0a
	rlca                                             ; $53dc: $07
	ld   a, d                                        ; $53dd: $7a
	db   $10                                         ; $53de: $10
	inc  b                                           ; $53df: $04
	add  b                                           ; $53e0: $80
	cp   b                                           ; $53e1: $b8
	ld   bc, $2000                                   ; $53e2: $01 $00 $20
	nop                                              ; $53e5: $00
	inc  e                                           ; $53e6: $1c
	dec  b                                           ; $53e7: $05
	ld   [bc], a                                     ; $53e8: $02
	ld   [bc], a                                     ; $53e9: $02
	ld   bc, $508c                                   ; $53ea: $01 $8c $50
	sbc  [hl]                                        ; $53ed: $9e
	inc  bc                                          ; $53ee: $03
	ld   l, c                                        ; $53ef: $69
	inc  bc                                          ; $53f0: $03
	inc  c                                           ; $53f1: $0c
	sub  d                                           ; $53f2: $92
	ld   e, c                                        ; $53f3: $59
	sub  a                                           ; $53f4: $97
	dec  c                                           ; $53f5: $0d
	ld   h, l                                        ; $53f6: $65
	sub  c                                           ; $53f7: $91
	ei                                               ; $53f8: $fb
	ld   a, b                                        ; $53f9: $78
	ld   d, d                                        ; $53fa: $52
	ld   a, b                                        ; $53fb: $78
	sbc  a                                           ; $53fc: $9f
	dec  c                                           ; $53fd: $0d
	ld   [bc], a                                     ; $53fe: $02
	and  l                                           ; $53ff: $a5
	ld   [bc], a                                     ; $5400: $02
	xor  d                                           ; $5401: $aa
	ld   a, c                                        ; $5402: $79
	ld   [bc], a                                     ; $5403: $02
	pop  bc                                          ; $5404: $c1
	inc  b                                           ; $5405: $04
	rla                                              ; $5406: $17
	ld   [hl], c                                     ; $5407: $71
	ld   l, a                                        ; $5408: $6f
	sub  e                                           ; $5409: $93
	ei                                               ; $540a: $fb
	ld   h, c                                        ; $540b: $61
	halt                                             ; $540c: $76
	ld   [hl], l                                     ; $540d: $75
	sbc  a                                           ; $540e: $9f
	dec  c                                           ; $540f: $0d
	nop                                              ; $5410: $00
	ld   a, [bc]                                     ; $5411: $0a
	rlca                                             ; $5412: $07
	xor  h                                           ; $5413: $ac
	db   $10                                         ; $5414: $10
	inc  b                                           ; $5415: $04
	add  b                                           ; $5416: $80
	or   l                                           ; $5417: $b5
	ld   bc, $2000                                   ; $5418: $01 $00 $20
	nop                                              ; $541b: $00
	inc  e                                           ; $541c: $1c
	ld   [bc], a                                     ; $541d: $02
	nop                                              ; $541e: $00
	nop                                              ; $541f: $00
	ld   bc, $9750                                   ; $5420: $01 $50 $97
	sbc  [hl]                                        ; $5423: $9e
	ld   e, b                                        ; $5424: $58
	dec  b                                           ; $5425: $05
	jr   nz, jr_043_54a1                             ; $5426: $20 $79

	ld   a, b                                        ; $5428: $78
	sbc  b                                           ; $5429: $98
	adc  h                                           ; $542a: $8c
	ld   l, c                                        ; $542b: $69
	and  c                                           ; $542c: $a1
	sbc  l                                           ; $542d: $9d
	ld   a, e                                        ; $542e: $7b
	sbc  a                                           ; $542f: $9f
	dec  c                                           ; $5430: $0d
	inc  bc                                          ; $5431: $03
	ld   b, $04                                      ; $5432: $06 $04
	ld   b, e                                        ; $5434: $43
	ld   a, b                                        ; $5435: $78
	ld   d, d                                        ; $5436: $52
	and  c                                           ; $5437: $a1
	ld   h, [hl]                                     ; $5438: $66
	sub  c                                           ; $5439: $91
	ld   d, b                                        ; $543a: $50
	sbc  b                                           ; $543b: $98
	adc  h                                           ; $543c: $8c
	ld   l, c                                        ; $543d: $69
	and  c                                           ; $543e: $a1
	ld   a, h                                        ; $543f: $7c
	sbc  a                                           ; $5440: $9f
	dec  c                                           ; $5441: $0d
	nop                                              ; $5442: $00
	ld   a, [bc]                                     ; $5443: $0a
	rlca                                             ; $5444: $07
	push af                                          ; $5445: $f5
	db   $10                                         ; $5446: $10
	inc  b                                           ; $5447: $04
	add  b                                           ; $5448: $80
	or   h                                           ; $5449: $b4
	ld   bc, $2000                                   ; $544a: $01 $00 $20
	nop                                              ; $544d: $00
	inc  e                                           ; $544e: $1c
	ld   bc, $0000                                   ; $544f: $01 $00 $00
	ld   bc, $0e04                                   ; $5452: $01 $04 $0e
	inc  bc                                          ; $5455: $03
	sbc  l                                           ; $5456: $9d
	inc  b                                           ; $5457: $04
	and  [hl]                                        ; $5458: $a6
	ld   [hl], l                                     ; $5459: $75
	ld   h, a                                        ; $545a: $67
	sub  [hl]                                        ; $545b: $96
	sbc  a                                           ; $545c: $9f
	dec  c                                           ; $545d: $0d
	ld   h, c                                        ; $545e: $61
	sbc  d                                           ; $545f: $9a
	ld   e, c                                        ; $5460: $59
	sub  a                                           ; $5461: $97
	inc  bc                                          ; $5462: $03
	ld   l, l                                        ; $5463: $6d
	dec  b                                           ; $5464: $05
	add  hl, de                                      ; $5465: $19
	ld   h, l                                        ; $5466: $65
	ld   [hl], h                                     ; $5467: $74
	dec  c                                           ; $5468: $0d
	ld   [bc], a                                     ; $5469: $02
	call nc, Call_043_785d                           ; $546a: $d4 $5d $78
	sbc  c                                           ; $546d: $99
	and  c                                           ; $546e: $a1
	ld   [hl], l                                     ; $546f: $75
	ld   h, a                                        ; $5470: $67
	ld   e, c                                        ; $5471: $59
	sub  a                                           ; $5472: $97
	sbc  a                                           ; $5473: $9f
	dec  c                                           ; $5474: $0d
	nop                                              ; $5475: $00
	ld   a, [bc]                                     ; $5476: $0a
	inc  e                                           ; $5477: $1c
	ld   bc, $0000                                   ; $5478: $01 $00 $00
	inc  e                                           ; $547b: $1c

Jump_043_547c:
	ld   bc, $0101                                   ; $547c: $01 $01 $01
	ld   bc, $a15a                                   ; $547f: $01 $5a $a1
	ld   a, [hl]                                     ; $5482: $7e
	ld   [hl], c                                     ; $5483: $71
	ld   [hl], h                                     ; $5484: $74
	ld   e, l                                        ; $5485: $5d
	ld   l, [hl]                                     ; $5486: $6e
	ld   h, e                                        ; $5487: $63
	ld   d, d                                        ; $5488: $52
	ld   a, [$000d]                                  ; $5489: $fa $0d $00
	ld   a, [bc]                                     ; $548c: $0a
	inc  e                                           ; $548d: $1c
	add  hl, bc                                      ; $548e: $09
	nop                                              ; $548f: $00
	nop                                              ; $5490: $00
	ld   bc, $9166                                   ; $5491: $01 $66 $91
	ld   d, b                                        ; $5494: $50
	sbc  [hl]                                        ; $5495: $9e
	ld   [bc], a                                     ; $5496: $02
	and  l                                           ; $5497: $a5
	inc  b                                           ; $5498: $04
	xor  d                                           ; $5499: $aa
	ld   a, l                                        ; $549a: $7d
	inc  bc                                          ; $549b: $03
	inc  c                                           ; $549c: $0c
	inc  b                                           ; $549d: $04
	xor  d                                           ; $549e: $aa
	ld   l, [hl]                                     ; $549f: $6e
	ld   e, c                                        ; $54a0: $59

jr_043_54a1:
	sub  a                                           ; $54a1: $97
	dec  c                                           ; $54a2: $0d
	ld   h, c                                        ; $54a3: $61
	sbc  d                                           ; $54a4: $9a
	ld   e, l                                        ; $54a5: $5d
	sub  a                                           ; $54a6: $97
	ld   d, d                                        ; $54a7: $52
	ld   a, c                                        ; $54a8: $79
	ld   h, l                                        ; $54a9: $65
	ld   [hl], h                                     ; $54aa: $74
	ld   e, b                                        ; $54ab: $58
	ld   h, c                                        ; $54ac: $61
	ld   d, h                                        ; $54ad: $54
	ld   e, c                                        ; $54ae: $59
	sbc  a                                           ; $54af: $9f
	dec  c                                           ; $54b0: $0d
	nop                                              ; $54b1: $00
	ld   a, [bc]                                     ; $54b2: $0a
	ld   bc, $6596                                   ; $54b3: $01 $96 $65
	sbc  [hl]                                        ; $54b6: $9e
	ld   h, [hl]                                     ; $54b7: $66
	sub  c                                           ; $54b8: $91
	ld   d, b                                        ; $54b9: $50
	inc  bc                                          ; $54ba: $03
	ld   l, b                                        ; $54bb: $68
	ld   a, l                                        ; $54bc: $7d
	ld   h, c                                        ; $54bd: $61
	ld   [hl], c                                     ; $54be: $71
	ld   l, a                                        ; $54bf: $6f
	ld   l, [hl]                                     ; $54c0: $6e
	sbc  a                                           ; $54c1: $9f
	dec  c                                           ; $54c2: $0d
	ld   [hl], d                                     ; $54c3: $72
	ld   d, d                                        ; $54c4: $52
	ld   [hl], h                                     ; $54c5: $74
	ld   e, e                                        ; $54c6: $5b
	ld   [hl], h                                     ; $54c7: $74
	ld   e, l                                        ; $54c8: $5d
	sbc  d                                           ; $54c9: $9a
	sbc  a                                           ; $54ca: $9f
	dec  c                                           ; $54cb: $0d
	nop                                              ; $54cc: $00
	ld   a, [bc]                                     ; $54cd: $0a
	dec  c                                           ; $54ce: $0d
	nop                                              ; $54cf: $00
	nop                                              ; $54d0: $00
	rrca                                             ; $54d1: $0f
	nop                                              ; $54d2: $00
	ld   bc, $3f06                                   ; $54d3: $01 $06 $3f
	ld   de, $3023                                   ; $54d6: $11 $23 $30
	rrca                                             ; $54d9: $0f
	add  hl, bc                                      ; $54da: $09
	nop                                              ; $54db: $00
	ld   bc, $6161                                   ; $54dc: $01 $61 $61
	ld   a, l                                        ; $54df: $7d
	ld   [bc], a                                     ; $54e0: $02
	jp   $d304                                       ; $54e1: $c3 $04 $d3


	ld   [bc], a                                     ; $54e4: $02
	call nz, $a178                                   ; $54e5: $c4 $78 $a1
	ld   l, [hl]                                     ; $54e8: $6e
	sbc  a                                           ; $54e9: $9f
	dec  c                                           ; $54ea: $0d
	ld   h, c                                        ; $54eb: $61
	ld   l, a                                        ; $54ec: $6f
	sub  a                                           ; $54ed: $97
	ld   a, h                                        ; $54ee: $7c
	inc  de                                          ; $54ef: $13
	inc  bc                                          ; $54f0: $03
	add  d                                           ; $54f1: $82
	and  b                                           ; $54f2: $a0
	dec  b                                           ; $54f3: $05
	ld   b, a                                        ; $54f4: $47
	dec  b                                           ; $54f5: $05
	ld   [hl-], a                                    ; $54f6: $32
	ld   h, a                                        ; $54f7: $67
	sbc  c                                           ; $54f8: $99
	sub  [hl]                                        ; $54f9: $96
	sbc  a                                           ; $54fa: $9f
	dec  c                                           ; $54fb: $0d
	nop                                              ; $54fc: $00
	ld   a, [bc]                                     ; $54fd: $0a
	dec  c                                           ; $54fe: $0d
	add  hl, bc                                      ; $54ff: $09
	nop                                              ; $5500: $00
	ld   bc, $6759                                   ; $5501: $01 $59 $67
	adc  l                                           ; $5504: $8d
	ld   e, l                                        ; $5505: $5d
	and  c                                           ; $5506: $a1
	halt                                             ; $5507: $76
	inc  b                                           ; $5508: $04
	pop  hl                                          ; $5509: $e1
	inc  b                                           ; $550a: $04
	rst  $38                                         ; $550b: $ff
	ld   e, l                                        ; $550c: $5d
	and  c                                           ; $550d: $a1
	ld   l, [hl]                                     ; $550e: $6e
	sbc  a                                           ; $550f: $9f
	dec  c                                           ; $5510: $0d
	nop                                              ; $5511: $00
	ld   a, [bc]                                     ; $5512: $0a
	inc  e                                           ; $5513: $1c
	inc  c                                           ; $5514: $0c
	ld   bc, $0101                                   ; $5515: $01 $01 $01
	ld   [bc], a                                     ; $5518: $02
	jp   $d304                                       ; $5519: $c3 $04 $d3


	ld   [bc], a                                     ; $551c: $02
	call nz, $057c                                   ; $551d: $c4 $7c $05
	ld   hl, sp+$02                                  ; $5520: $f8 $02
	cpl                                              ; $5522: $2f
	ld   e, c                                        ; $5523: $59
	ld   h, a                                        ; $5524: $67
	adc  l                                           ; $5525: $8d
	dec  c                                           ; $5526: $0d
	halt                                             ; $5527: $76
	dec  b                                           ; $5528: $05
	ld   b, [hl]                                     ; $5529: $46
	ld   h, l                                        ; $552a: $65
	adc  h                                           ; $552b: $8c
	ld   h, a                                        ; $552c: $67
	sbc  a                                           ; $552d: $9f
	dec  c                                           ; $552e: $0d
	sub  [hl]                                        ; $552f: $96
	sbc  e                                           ; $5530: $9b
	ld   h, l                                        ; $5531: $65
	ld   e, l                                        ; $5532: $5d
	ld   e, b                                        ; $5533: $58
	ld   [bc], a                                     ; $5534: $02
	add  b                                           ; $5535: $80
	ld   d, d                                        ; $5536: $52
	ld   h, l                                        ; $5537: $65
	adc  h                                           ; $5538: $8c
	ld   h, a                                        ; $5539: $67
	sbc  a                                           ; $553a: $9f
	dec  c                                           ; $553b: $0d
	nop                                              ; $553c: $00
	ld   a, [bc]                                     ; $553d: $0a
	inc  e                                           ; $553e: $1c
	dec  c                                           ; $553f: $0d
	ld   bc, $0101                                   ; $5540: $01 $01 $01
	inc  b                                           ; $5543: $04
	dec  e                                           ; $5544: $1d
	ld   h, [hl]                                     ; $5545: $66
	ld   e, l                                        ; $5546: $5d
	ld   [bc], a                                     ; $5547: $02
	jp   $d304                                       ; $5548: $c3 $04 $d3


	ld   [bc], a                                     ; $554b: $02
	call nz, $067c                                   ; $554c: $c4 $7c $06
	add  h                                           ; $554f: $84
	ld   [bc], a                                     ; $5550: $02
	call $e104                                       ; $5551: $cd $04 $e1
	inc  b                                           ; $5554: $04
	rst  $38                                         ; $5555: $ff
	ld   [hl], l                                     ; $5556: $75
	ld   h, a                                        ; $5557: $67
	sbc  a                                           ; $5558: $9f
	dec  c                                           ; $5559: $0d
	sub  [hl]                                        ; $555a: $96
	sbc  e                                           ; $555b: $9b
	ld   h, l                                        ; $555c: $65
	ld   e, l                                        ; $555d: $5d
	ld   a, e                                        ; $555e: $7b
	sbc  a                                           ; $555f: $9f
	dec  c                                           ; $5560: $0d
	nop                                              ; $5561: $00
	ld   a, [bc]                                     ; $5562: $0a
	inc  e                                           ; $5563: $1c
	inc  c                                           ; $5564: $0c
	ld   bc, $0101                                   ; $5565: $01 $01 $01
	sbc  l                                           ; $5568: $9d
	ld   l, l                                        ; $5569: $6d
	ld   h, l                                        ; $556a: $65
	ld   l, l                                        ; $556b: $6d
	ld   l, a                                        ; $556c: $6f
	ld   a, l                                        ; $556d: $7d
	sbc  [hl]                                        ; $556e: $9e
	ld   l, l                                        ; $556f: $6d
	ld   d, d                                        ; $5570: $52
	ld   [hl], h                                     ; $5571: $74
	ld   d, d                                        ; $5572: $52
	ld   h, c                                        ; $5573: $61
	ld   a, h                                        ; $5574: $7c
	dec  c                                           ; $5575: $0d
	ld   [bc], a                                     ; $5576: $02
	jp   $d304                                       ; $5577: $c3 $04 $d3


	ld   [bc], a                                     ; $557a: $02
	call nz, Call_043_5279                           ; $557b: $c4 $79 $52
	adc  h                                           ; $557e: $8c
	ld   h, a                                        ; $557f: $67
	ld   e, c                                        ; $5580: $59
	sub  a                                           ; $5581: $97
	sbc  [hl]                                        ; $5582: $9e
	ld   d, d                                        ; $5583: $52
	ld   [hl], d                                     ; $5584: $72
	ld   [hl], l                                     ; $5585: $75
	sub  b                                           ; $5586: $90
	dec  c                                           ; $5587: $0d
	ld   e, e                                        ; $5588: $5b
	ld   [hl], h                                     ; $5589: $74
	ld   e, l                                        ; $558a: $5d
	ld   l, [hl]                                     ; $558b: $6e
	ld   h, e                                        ; $558c: $63
	ld   d, d                                        ; $558d: $52
	ld   a, e                                        ; $558e: $7b
	sbc  a                                           ; $558f: $9f
	dec  c                                           ; $5590: $0d
	nop                                              ; $5591: $00
	ld   a, [bc]                                     ; $5592: $0a
	inc  e                                           ; $5593: $1c
	dec  c                                           ; $5594: $0d
	ld   bc, $0101                                   ; $5595: $01 $01 $01
	inc  b                                           ; $5598: $04
	ld   c, c                                        ; $5599: $49
	ld   e, c                                        ; $559a: $59
	ld   e, b                                        ; $559b: $58
	inc  bc                                          ; $559c: $03
	ld   l, e                                        ; $559d: $6b
	inc  b                                           ; $559e: $04
	ld   [de], a                                     ; $559f: $12
	ld   d, d                                        ; $55a0: $52
	and  b                                           ; $55a1: $a0
	ld   l, l                                        ; $55a2: $6d
	ld   a, h                                        ; $55a3: $7c
	adc  [hl]                                        ; $55a4: $8e
	ld   h, c                                        ; $55a5: $61
	halt                                             ; $55a6: $76
	ld   e, d                                        ; $55a7: $5a
	dec  c                                           ; $55a8: $0d
	ld   d, b                                        ; $55a9: $50
	sbc  c                                           ; $55aa: $99
	ld   e, c                                        ; $55ab: $59
	sub  b                                           ; $55ac: $90
	ld   h, l                                        ; $55ad: $65
	sbc  d                                           ; $55ae: $9a
	ld   a, b                                        ; $55af: $78
	ld   d, d                                        ; $55b0: $52
	ld   e, a                                        ; $55b1: $5f
	ld   [hl], a                                     ; $55b2: $77
	sbc  [hl]                                        ; $55b3: $9e
	dec  c                                           ; $55b4: $0d
	ld   l, e                                        ; $55b5: $6b
	ld   a, h                                        ; $55b6: $7c
	halt                                             ; $55b7: $76
	ld   e, e                                        ; $55b8: $5b
	ld   a, l                                        ; $55b9: $7d
	sub  [hl]                                        ; $55ba: $96
	sbc  e                                           ; $55bb: $9b
	ld   h, l                                        ; $55bc: $65
	ld   e, l                                        ; $55bd: $5d
	ld   a, e                                        ; $55be: $7b
	sbc  a                                           ; $55bf: $9f
	dec  c                                           ; $55c0: $0d
	nop                                              ; $55c1: $00
	ld   a, [bc]                                     ; $55c2: $0a
	rrca                                             ; $55c3: $0f
	nop                                              ; $55c4: $00
	ld   bc, $7d01                                   ; $55c5: $01 $01 $7d
	ld   d, d                                        ; $55c8: $52
	sbc  a                                           ; $55c9: $9f
	dec  c                                           ; $55ca: $0d
	ld   [$7600], sp                                 ; $55cb: $08 $00 $76
	dec  b                                           ; $55ce: $05
	ld   b, [hl]                                     ; $55cf: $46
	ld   h, l                                        ; $55d0: $65
	adc  h                                           ; $55d1: $8c
	ld   h, a                                        ; $55d2: $67
	sbc  a                                           ; $55d3: $9f
	dec  c                                           ; $55d4: $0d
	sub  [hl]                                        ; $55d5: $96
	sbc  e                                           ; $55d6: $9b
	ld   h, l                                        ; $55d7: $65
	ld   e, l                                        ; $55d8: $5d
	ld   e, b                                        ; $55d9: $58
	ld   [bc], a                                     ; $55da: $02
	add  b                                           ; $55db: $80
	ld   d, d                                        ; $55dc: $52
	ld   h, l                                        ; $55dd: $65
	adc  h                                           ; $55de: $8c
	ld   h, a                                        ; $55df: $67
	sbc  a                                           ; $55e0: $9f
	dec  c                                           ; $55e1: $0d
	nop                                              ; $55e2: $00
	ld   a, [bc]                                     ; $55e3: $0a
	inc  e                                           ; $55e4: $1c
	add  hl, bc                                      ; $55e5: $09
	ld   bc, $0101                                   ; $55e6: $01 $01 $01
	ld   h, [hl]                                     ; $55e9: $66
	sub  c                                           ; $55ea: $91
	ld   d, b                                        ; $55eb: $50
	sbc  [hl]                                        ; $55ec: $9e
	inc  bc                                          ; $55ed: $03
	ld   l, b                                        ; $55ee: $68
	ld   a, l                                        ; $55ef: $7d
	ld   h, c                                        ; $55f0: $61
	ld   [hl], c                                     ; $55f1: $71
	ld   l, a                                        ; $55f2: $6f
	ld   l, [hl]                                     ; $55f3: $6e
	sbc  a                                           ; $55f4: $9f
	dec  c                                           ; $55f5: $0d
	nop                                              ; $55f6: $00
	ld   a, [bc]                                     ; $55f7: $0a
	dec  c                                           ; $55f8: $0d
	nop                                              ; $55f9: $00
	nop                                              ; $55fa: $00
	rrca                                             ; $55fb: $0f
	nop                                              ; $55fc: $00
	ld   bc, $1423                                   ; $55fd: $01 $23 $14
	rrca                                             ; $5600: $0f
	add  hl, bc                                      ; $5601: $09
	nop                                              ; $5602: $00
	ld   bc, $6161                                   ; $5603: $01 $61 $61
	ld   a, l                                        ; $5606: $7d
	sbc  [hl]                                        ; $5607: $9e
	ld   b, $1a                                      ; $5608: $06 $1a
	inc  bc                                          ; $560a: $03
	rst  $20                                         ; $560b: $e7
	ld   a, b                                        ; $560c: $78
	and  c                                           ; $560d: $a1
	ld   l, [hl]                                     ; $560e: $6e
	sbc  a                                           ; $560f: $9f
	dec  c                                           ; $5610: $0d
	nop                                              ; $5611: $00
	ld   a, [bc]                                     ; $5612: $0a
	inc  e                                           ; $5613: $1c
	add  hl, bc                                      ; $5614: $09
	nop                                              ; $5615: $00
	nop                                              ; $5616: $00
	ld   bc, $1d06                                   ; $5617: $01 $06 $1d
	inc  bc                                          ; $561a: $03
	ld   l, [hl]                                     ; $561b: $6e
	ld   a, l                                        ; $561c: $7d
	sbc  [hl]                                        ; $561d: $9e
	ld   b, $1a                                      ; $561e: $06 $1a
	sbc  b                                           ; $5620: $98
	inc  bc                                          ; $5621: $03
	add  [hl]                                        ; $5622: $86
	ld   a, h                                        ; $5623: $7c
	dec  c                                           ; $5624: $0d
	ld   b, $5b                                      ; $5625: $06 $5b
	ld   l, a                                        ; $5627: $6f
	sub  c                                           ; $5628: $91
	and  c                                           ; $5629: $a1
	ld   l, [hl]                                     ; $562a: $6e
	sbc  a                                           ; $562b: $9f
	dec  c                                           ; $562c: $0d
	nop                                              ; $562d: $00
	ld   a, [bc]                                     ; $562e: $0a
	inc  e                                           ; $562f: $1c
	ld   c, $01                                      ; $5630: $0e $01
	ld   bc, $0601                                   ; $5632: $01 $01 $06
	ld   a, [de]                                     ; $5635: $1a
	inc  bc                                          ; $5636: $03
	rst  $20                                         ; $5637: $e7
	ld   a, h                                        ; $5638: $7c
	ld   [bc], a                                     ; $5639: $02
	cp   [hl]                                        ; $563a: $be
	dec  b                                           ; $563b: $05
	sbc  $06                                         ; $563c: $de $06
	ld   e, e                                        ; $563e: $5b
	ld   [hl], l                                     ; $563f: $75
	ld   h, a                                        ; $5640: $67
	sbc  a                                           ; $5641: $9f
	dec  c                                           ; $5642: $0d
	sub  [hl]                                        ; $5643: $96
	sbc  e                                           ; $5644: $9b
	ld   h, l                                        ; $5645: $65
	ld   e, l                                        ; $5646: $5d
	ld   e, b                                        ; $5647: $58
	ld   [bc], a                                     ; $5648: $02
	add  b                                           ; $5649: $80
	ld   d, d                                        ; $564a: $52
	ld   h, l                                        ; $564b: $65
	adc  h                                           ; $564c: $8c
	ld   h, a                                        ; $564d: $67
	sbc  a                                           ; $564e: $9f
	dec  c                                           ; $564f: $0d
	nop                                              ; $5650: $00
	ld   a, [bc]                                     ; $5651: $0a
	ld   bc, $6d50                                   ; $5652: $01 $50 $6d
	ld   h, l                                        ; $5655: $65
	ld   a, l                                        ; $5656: $7d
	sbc  [hl]                                        ; $5657: $9e
	ld   d, d                                        ; $5658: $52
	ld   [hl], d                                     ; $5659: $72
	sub  b                                           ; $565a: $90
	ld   a, l                                        ; $565b: $7d
	ld   h, c                                        ; $565c: $61
	ld   a, h                                        ; $565d: $7c
	ld   b, $1a                                      ; $565e: $06 $1a
	inc  bc                                          ; $5660: $03
	rst  $20                                         ; $5661: $e7
	ld   a, c                                        ; $5662: $79
	dec  c                                           ; $5663: $0d
	ld   d, d                                        ; $5664: $52
	adc  h                                           ; $5665: $8c
	ld   h, a                                        ; $5666: $67
	ld   e, c                                        ; $5667: $59
	sub  a                                           ; $5668: $97
	sbc  [hl]                                        ; $5669: $9e
	inc  b                                           ; $566a: $04
	di                                               ; $566b: $f3
	ld   e, d                                        ; $566c: $5a
	ld   d, b                                        ; $566d: $50
	sbc  c                                           ; $566e: $99
	halt                                             ; $566f: $76
	ld   e, e                                        ; $5670: $5b
	ld   a, l                                        ; $5671: $7d
	dec  c                                           ; $5672: $0d
	ld   h, c                                        ; $5673: $61
	ld   l, a                                        ; $5674: $6f
	sub  a                                           ; $5675: $97
	add  [hl]                                        ; $5676: $86
	dec  b                                           ; $5677: $05
	db   $10                                         ; $5678: $10
	ld   [hl], h                                     ; $5679: $74
	ld   [bc], a                                     ; $567a: $02
	inc  [hl]                                        ; $567b: $34
	ld   h, e                                        ; $567c: $63
	ld   d, d                                        ; $567d: $52
	ld   a, e                                        ; $567e: $7b
	sbc  a                                           ; $567f: $9f
	dec  c                                           ; $5680: $0d
	nop                                              ; $5681: $00
	ld   a, [bc]                                     ; $5682: $0a
	ld   bc, $0276                                   ; $5683: $01 $76 $02
	sbc  l                                           ; $5686: $9d
	ld   [hl], c                                     ; $5687: $71
	ld   [hl], h                                     ; $5688: $74
	sub  b                                           ; $5689: $90
	sbc  [hl]                                        ; $568a: $9e
	inc  b                                           ; $568b: $04
	ld   h, c                                        ; $568c: $61
	inc  b                                           ; $568d: $04
	sub  d                                           ; $568e: $92
	ld   a, h                                        ; $568f: $7c
	adc  c                                           ; $5690: $89
	ld   h, [hl]                                     ; $5691: $66
	sub  e                                           ; $5692: $93
	ld   d, h                                        ; $5693: $54
	and  b                                           ; $5694: $a0
	dec  c                                           ; $5695: $0d
	ld   h, l                                        ; $5696: $65
	ld   [hl], h                                     ; $5697: $74
	ld   d, d                                        ; $5698: $52
	sbc  c                                           ; $5699: $99
	inc  bc                                          ; $569a: $03
	ld   l, a                                        ; $569b: $6f
	ld   a, b                                        ; $569c: $78
	ld   [hl], a                                     ; $569d: $77
	ld   a, l                                        ; $569e: $7d
	sbc  [hl]                                        ; $569f: $9e
	ld   h, c                                        ; $56a0: $61
	ld   h, c                                        ; $56a1: $61
	ld   a, c                                        ; $56a2: $79
	ld   a, l                                        ; $56a3: $7d
	dec  c                                           ; $56a4: $0d
	ld   d, d                                        ; $56a5: $52
	ld   a, b                                        ; $56a6: $78
	ld   d, d                                        ; $56a7: $52
	and  c                                           ; $56a8: $a1
	ld   [hl], l                                     ; $56a9: $75
	ld   h, a                                        ; $56aa: $67
	ld   e, a                                        ; $56ab: $5f
	ld   [hl], a                                     ; $56ac: $77
	ld   a, e                                        ; $56ad: $7b
	sbc  a                                           ; $56ae: $9f
	dec  c                                           ; $56af: $0d
	nop                                              ; $56b0: $00
	ld   a, [bc]                                     ; $56b1: $0a
	rrca                                             ; $56b2: $0f
	nop                                              ; $56b3: $00
	ld   bc, $0801                                   ; $56b4: $01 $01 $08
	nop                                              ; $56b7: $00
	halt                                             ; $56b8: $76
	dec  b                                           ; $56b9: $05
	ld   b, [hl]                                     ; $56ba: $46
	ld   h, l                                        ; $56bb: $65
	adc  h                                           ; $56bc: $8c
	ld   h, a                                        ; $56bd: $67
	sbc  a                                           ; $56be: $9f
	dec  c                                           ; $56bf: $0d
	sub  [hl]                                        ; $56c0: $96
	sbc  e                                           ; $56c1: $9b
	ld   h, l                                        ; $56c2: $65
	ld   e, l                                        ; $56c3: $5d
	ld   e, b                                        ; $56c4: $58
	ld   [bc], a                                     ; $56c5: $02
	add  b                                           ; $56c6: $80
	ld   d, d                                        ; $56c7: $52
	ld   h, l                                        ; $56c8: $65
	adc  h                                           ; $56c9: $8c
	ld   h, a                                        ; $56ca: $67
	sbc  a                                           ; $56cb: $9f
	dec  c                                           ; $56cc: $0d
	nop                                              ; $56cd: $00
	ld   a, [bc]                                     ; $56ce: $0a
	inc  e                                           ; $56cf: $1c
	add  hl, bc                                      ; $56d0: $09
	ld   bc, $0101                                   ; $56d1: $01 $01 $01
	ld   [hl], l                                     ; $56d4: $75
	ld   a, l                                        ; $56d5: $7d
	sbc  [hl]                                        ; $56d6: $9e
	ld   [$5d00], sp                                 ; $56d7: $08 $00 $5d
	and  c                                           ; $56da: $a1
	ld   e, d                                        ; $56db: $5a
	dec  c                                           ; $56dc: $0d
	ld   [bc], a                                     ; $56dd: $02
	jr   nz, @-$06                                   ; $56de: $20 $f8

	ld   [bc], a                                     ; $56e0: $02
	sbc  e                                           ; $56e1: $9b
	ld   a, h                                        ; $56e2: $7c
	ld   [bc], a                                     ; $56e3: $02
	xor  c                                           ; $56e4: $a9
	sbc  [hl]                                        ; $56e5: $9e
	inc  b                                           ; $56e6: $04
	ld   b, d                                        ; $56e7: $42
	ld   b, $62                                      ; $56e8: $06 $62
	sbc  b                                           ; $56ea: $98
	ld   h, a                                        ; $56eb: $67
	sbc  c                                           ; $56ec: $99
	inc  b                                           ; $56ed: $04
	sub  l                                           ; $56ee: $95
	ld   [bc], a                                     ; $56ef: $02
	ld   hl, $0d86                                   ; $56f0: $21 $86 $0d
	ld   [bc], a                                     ; $56f3: $02
	dec  e                                           ; $56f4: $1d
	inc  b                                           ; $56f5: $04
	ld   b, a                                        ; $56f6: $47
	ld   h, l                                        ; $56f7: $65
	sub  [hl]                                        ; $56f8: $96
	ld   d, h                                        ; $56f9: $54
	sbc  a                                           ; $56fa: $9f
	ld   [hl], d                                     ; $56fb: $72
	ld   d, d                                        ; $56fc: $52
	ld   [hl], h                                     ; $56fd: $74
	ld   e, e                                        ; $56fe: $5b
	ld   [hl], h                                     ; $56ff: $74
	ld   e, l                                        ; $5700: $5d
	sbc  d                                           ; $5701: $9a
	sbc  a                                           ; $5702: $9f
	dec  c                                           ; $5703: $0d
	nop                                              ; $5704: $00
	ld   a, [bc]                                     ; $5705: $0a
	dec  c                                           ; $5706: $0d
	nop                                              ; $5707: $00
	nop                                              ; $5708: $00
	rrca                                             ; $5709: $0f
	nop                                              ; $570a: $00
	ld   bc, $0223                                   ; $570b: $01 $23 $02
	inc  e                                           ; $570e: $1c
	add  hl, bc                                      ; $570f: $09
	nop                                              ; $5710: $00

jr_043_5711:
	nop                                              ; $5711: $00
	ld   bc, $6161                                   ; $5712: $01 $61 $61
	ld   e, d                                        ; $5715: $5a
	ld   [bc], a                                     ; $5716: $02
	jr   nz, jr_043_5711                             ; $5717: $20 $f8

	ld   [bc], a                                     ; $5719: $02
	sbc  e                                           ; $571a: $9b
	ld   [bc], a                                     ; $571b: $02
	xor  c                                           ; $571c: $a9
	ld   a, h                                        ; $571d: $7c
	ld   [bc], a                                     ; $571e: $02
	jp   z, $047c                                    ; $571f: $ca $7c $04

	sub  l                                           ; $5722: $95
	ld   [bc], a                                     ; $5723: $02
	ld   hl, $9f6e                                   ; $5724: $21 $6e $9f
	dec  c                                           ; $5727: $0d
	ld   [bc], a                                     ; $5728: $02
	and  l                                           ; $5729: $a5
	inc  b                                           ; $572a: $04
	xor  d                                           ; $572b: $aa
	ld   a, l                                        ; $572c: $7d
	inc  b                                           ; $572d: $04
	ld   a, e                                        ; $572e: $7b
	sbc  d                                           ; $572f: $9a
	ld   l, l                                        ; $5730: $6d
	ld   l, [hl]                                     ; $5731: $6e
	sbc  e                                           ; $5732: $9b
	ld   d, h                                        ; $5733: $54
	ld   e, c                                        ; $5734: $59
	sub  a                                           ; $5735: $97
	dec  c                                           ; $5736: $0d
	ld   a, b                                        ; $5737: $78
	sbc  c                                           ; $5738: $99
	add  a                                           ; $5739: $87
	ld   e, l                                        ; $573a: $5d
	inc  bc                                          ; $573b: $03
	ld   [hl], b                                     ; $573c: $70
	ld   e, l                                        ; $573d: $5d
	inc  b                                           ; $573e: $04
	ld   b, d                                        ; $573f: $42
	sbc  c                                           ; $5740: $99
	sub  [hl]                                        ; $5741: $96
	ld   d, h                                        ; $5742: $54
	ld   a, c                                        ; $5743: $79
	ld   a, b                                        ; $5744: $78
	sbc  a                                           ; $5745: $9f
	dec  c                                           ; $5746: $0d
	nop                                              ; $5747: $00
	ld   a, [bc]                                     ; $5748: $0a
	ld   bc, $9a6b                                   ; $5749: $01 $6b $9a
	halt                                             ; $574c: $76
	sbc  [hl]                                        ; $574d: $9e
	inc  b                                           ; $574e: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $574f: $cf
	inc  b                                           ; $5750: $04
	xor  d                                           ; $5751: $aa
	ld   e, c                                        ; $5752: $59
	sub  a                                           ; $5753: $97
	ld   a, l                                        ; $5754: $7d
	dec  b                                           ; $5755: $05
	and  l                                           ; $5756: $a5
	inc  b                                           ; $5757: $04
	ld   a, [bc]                                     ; $5758: $0a
	ld   [bc], a                                     ; $5759: $02
	nop                                              ; $575a: $00
	ld   e, d                                        ; $575b: $5a
	dec  c                                           ; $575c: $0d
	halt                                             ; $575d: $76
	ld   e, l                                        ; $575e: $5d
	ld   d, d                                        ; $575f: $52
	ld   a, b                                        ; $5760: $78
	inc  b                                           ; $5761: $04
	sbc  [hl]                                        ; $5762: $9e
	inc  b                                           ; $5763: $04
	rst  $20                                         ; $5764: $e7
	ld   [hl], l                                     ; $5765: $75
	inc  bc                                          ; $5766: $03
	ld   l, l                                        ; $5767: $6d
	dec  b                                           ; $5768: $05
	add  hl, de                                      ; $5769: $19
	ld   a, h                                        ; $576a: $7c
	ld   [bc], a                                     ; $576b: $02
	ld   a, [de]                                     ; $576c: $1a
	inc  bc                                          ; $576d: $03
	ld   l, e                                        ; $576e: $6b
	and  b                                           ; $576f: $a0
	dec  c                                           ; $5770: $0d
	ld   h, l                                        ; $5771: $65
	ld   [hl], h                                     ; $5772: $74
	ld   e, l                                        ; $5773: $5d
	sbc  d                                           ; $5774: $9a
	sbc  c                                           ; $5775: $99
	ld   h, c                                        ; $5776: $61
	halt                                             ; $5777: $76
	ld   a, c                                        ; $5778: $79
	ld   a, b                                        ; $5779: $78
	ld   [hl], c                                     ; $577a: $71
	ld   [hl], h                                     ; $577b: $74
	ld   d, d                                        ; $577c: $52
	sbc  c                                           ; $577d: $99
	sbc  a                                           ; $577e: $9f
	dec  c                                           ; $577f: $0d
	nop                                              ; $5780: $00
	ld   a, [bc]                                     ; $5781: $0a
	ld   bc, $9876                                   ; $5782: $01 $76 $98
	ld   d, b                                        ; $5785: $50
	ld   d, [hl]                                     ; $5786: $56
	ld   l, b                                        ; $5787: $68
	sbc  [hl]                                        ; $5788: $9e
	inc  b                                           ; $5789: $04
	xor  d                                           ; $578a: $aa
	dec  b                                           ; $578b: $05
	ld   c, [hl]                                     ; $578c: $4e
	ld   e, d                                        ; $578d: $5a
	inc  bc                                          ; $578e: $03
	ld   d, l                                        ; $578f: $55
	ld   d, d                                        ; $5790: $52
	ld   [hl], h                                     ; $5791: $74
	ld   d, b                                        ; $5792: $50
	sbc  c                                           ; $5793: $99
	dec  c                                           ; $5794: $0d
	cp   d                                           ; $5795: $ba
	or   d                                           ; $5796: $b2
	cp   c                                           ; $5797: $b9
	rst  $20                                         ; $5798: $e7
	ei                                               ; $5799: $fb
	db   $ed                                         ; $579a: $ed
	ld   b, $91                                      ; $579b: $06 $91
	and  b                                           ; $579d: $a0
	dec  c                                           ; $579e: $0d
	inc  bc                                          ; $579f: $03
	ld   [$7465], a                                  ; $57a0: $ea $65 $74
	ld   e, b                                        ; $57a3: $58
	ld   h, c                                        ; $57a4: $61
	ld   d, h                                        ; $57a5: $54
	sbc  a                                           ; $57a6: $9f
	dec  c                                           ; $57a7: $0d
	nop                                              ; $57a8: $00
	ld   a, [bc]                                     ; $57a9: $0a
	db   $10                                         ; $57aa: $10
	ld   d, [hl]                                     ; $57ab: $56
	nop                                              ; $57ac: $00
	ld   bc, $6d03                                   ; $57ad: $01 $03 $6d
	dec  b                                           ; $57b0: $05
	add  hl, de                                      ; $57b1: $19
	ld   a, l                                        ; $57b2: $7d
	ld   [bc], a                                     ; $57b3: $02
	or   d                                           ; $57b4: $b2
	inc  bc                                          ; $57b5: $03
	ld   c, a                                        ; $57b6: $4f
	halt                                             ; $57b7: $76
	ld   [bc], a                                     ; $57b8: $02
	or   d                                           ; $57b9: $b2
	ld   [bc], a                                     ; $57ba: $02
	xor  d                                           ; $57bb: $aa
	ld   a, h                                        ; $57bc: $7c
	inc  de                                          ; $57bd: $13
	ld   [bc], a                                     ; $57be: $02
	sub  e                                           ; $57bf: $93
	ld   l, [hl]                                     ; $57c0: $6e
	sbc  a                                           ; $57c1: $9f
	dec  c                                           ; $57c2: $0d
	ld   [bc], a                                     ; $57c3: $02
	or   d                                           ; $57c4: $b2
	inc  bc                                          ; $57c5: $03
	ld   c, a                                        ; $57c6: $4f
	ld   a, h                                        ; $57c7: $7c
	inc  bc                                          ; $57c8: $03
	ld   l, l                                        ; $57c9: $6d
	dec  b                                           ; $57ca: $05
	add  hl, de                                      ; $57cb: $19
	ld   a, l                                        ; $57cc: $7d
	sbc  [hl]                                        ; $57cd: $9e
	cp   d                                           ; $57ce: $ba
	or   d                                           ; $57cf: $b2
	cp   c                                           ; $57d0: $b9
	rst  $20                                         ; $57d1: $e7
	ei                                               ; $57d2: $fb
	db   $ed                                         ; $57d3: $ed
	ld   e, d                                        ; $57d4: $5a
	dec  c                                           ; $57d5: $0d
	ld   h, a                                        ; $57d6: $67
	ld   [hl], l                                     ; $57d7: $75
	ld   a, c                                        ; $57d8: $79
	ld   [bc], a                                     ; $57d9: $02
	add  e                                           ; $57da: $83
	adc  h                                           ; $57db: $8c
	ld   [hl], c                                     ; $57dc: $71
	ld   [hl], h                                     ; $57dd: $74
	ld   d, d                                        ; $57de: $52
	sbc  c                                           ; $57df: $99
	and  c                                           ; $57e0: $a1
	ld   l, [hl]                                     ; $57e1: $6e
	ld   e, d                                        ; $57e2: $5a
	rst  $38                                         ; $57e3: $ff
	rst  $38                                         ; $57e4: $ff
	dec  c                                           ; $57e5: $0d
	nop                                              ; $57e6: $00
	ld   a, [bc]                                     ; $57e7: $0a
	ld   bc, $b202                                   ; $57e8: $01 $02 $b2
	ld   [bc], a                                     ; $57eb: $02
	xor  d                                           ; $57ec: $aa
	ld   a, h                                        ; $57ed: $7c
	inc  bc                                          ; $57ee: $03
	ld   l, l                                        ; $57ef: $6d
	dec  b                                           ; $57f0: $05
	add  hl, de                                      ; $57f1: $19
	and  b                                           ; $57f2: $a0
	inc  bc                                          ; $57f3: $03
	xor  c                                           ; $57f4: $a9
	halt                                             ; $57f5: $76
	ld   h, a                                        ; $57f6: $67
	sbc  c                                           ; $57f7: $99
	ld   a, h                                        ; $57f8: $7c
	ld   e, c                                        ; $57f9: $59
	ld   a, l                                        ; $57fa: $7d
	dec  c                                           ; $57fb: $0d
	xor  [hl]                                        ; $57fc: $ae
	ldh  [$5a], a                                    ; $57fd: $e0 $5a
	inc  bc                                          ; $57ff: $03
	sub  h                                           ; $5800: $94
	inc  b                                           ; $5801: $04
	sbc  [hl]                                        ; $5802: $9e
	ld   [hl], l                                     ; $5803: $75
	ld   [bc], a                                     ; $5804: $02
	add  e                                           ; $5805: $83
	adc  a                                           ; $5806: $8f
	sbc  c                                           ; $5807: $99
	sub  [hl]                                        ; $5808: $96
	ld   d, h                                        ; $5809: $54
	ld   a, c                                        ; $580a: $79
	dec  c                                           ; $580b: $0d
	ld   h, l                                        ; $580c: $65
	ld   [hl], h                                     ; $580d: $74
	ld   e, l                                        ; $580e: $5d
	sbc  d                                           ; $580f: $9a
	sbc  a                                           ; $5810: $9f
	dec  c                                           ; $5811: $0d
	nop                                              ; $5812: $00
	ld   a, [bc]                                     ; $5813: $0a
	ld   bc, $6596                                   ; $5814: $01 $96 $65
	rst  $38                                         ; $5817: $ff
	rst  $38                                         ; $5818: $ff
	ld   l, e                                        ; $5819: $6b
	sbc  d                                           ; $581a: $9a
	ld   h, [hl]                                     ; $581b: $66
	sub  c                                           ; $581c: $91
	sbc  [hl]                                        ; $581d: $9e
	adc  l                                           ; $581e: $8d
	and  c                                           ; $581f: $a1
	ld   a, b                                        ; $5820: $78
	ld   a, h                                        ; $5821: $7c
	dec  c                                           ; $5822: $0d
	ld   [bc], a                                     ; $5823: $02
	pop  bc                                          ; $5824: $c1
	inc  b                                           ; $5825: $04
	rla                                              ; $5826: $17
	ld   a, c                                        ; $5827: $79
	ld   h, c                                        ; $5828: $61
	ld   l, l                                        ; $5829: $6d
	ld   d, [hl]                                     ; $582a: $56
	sub  a                                           ; $582b: $97
	sbc  d                                           ; $582c: $9a
	sbc  c                                           ; $582d: $99
	sub  [hl]                                        ; $582e: $96
	ld   d, h                                        ; $582f: $54
	ld   a, c                                        ; $5830: $79
	dec  c                                           ; $5831: $0d
	ld   e, d                                        ; $5832: $5a
	and  c                                           ; $5833: $a1
	ld   a, [hl]                                     ; $5834: $7e
	ld   [hl], c                                     ; $5835: $71
	ld   [hl], h                                     ; $5836: $74
	ld   e, l                                        ; $5837: $5d
	sbc  d                                           ; $5838: $9a
	sub  [hl]                                        ; $5839: $96
	sbc  a                                           ; $583a: $9f
	dec  c                                           ; $583b: $0d
	nop                                              ; $583c: $00
	ld   a, [bc]                                     ; $583d: $0a
	add  hl, de                                      ; $583e: $19
	dec  b                                           ; $583f: $05
	ld   [bc], a                                     ; $5840: $02
	inc  bc                                          ; $5841: $03
	sub  h                                           ; $5842: $94
	ld   [bc], a                                     ; $5843: $02
	ld   hl, sp+$50                                  ; $5844: $f8 $50
	sbc  c                                           ; $5846: $99
	nop                                              ; $5847: $00
	nop                                              ; $5848: $00
	ld   d, b                                        ; $5849: $50
	adc  h                                           ; $584a: $8c
	sbc  b                                           ; $584b: $98
	inc  bc                                          ; $584c: $03
	sub  h                                           ; $584d: $94
	ld   [bc], a                                     ; $584e: $02
	ld   hl, sp+$78                                  ; $584f: $f8 $78
	ld   d, d                                        ; $5851: $52
	nop                                              ; $5852: $00
	ld   bc, $d107                                   ; $5853: $01 $07 $d1
	inc  d                                           ; $5856: $14
	ld   [bc], a                                     ; $5857: $02
	inc  bc                                          ; $5858: $03
	ld   bc, $2000                                   ; $5859: $01 $00 $20
	nop                                              ; $585c: $00
	rlca                                             ; $585d: $07
	sub  a                                           ; $585e: $97
	dec  d                                           ; $585f: $15
	ld   [bc], a                                     ; $5860: $02
	inc  bc                                          ; $5861: $03
	ld   bc, $2001                                   ; $5862: $01 $01 $20
	nop                                              ; $5865: $00
	ld   b, $7c                                      ; $5866: $06 $7c
	ld   d, $0f                                      ; $5868: $16 $0f
	nop                                              ; $586a: $00
	ld   bc, $0201                                   ; $586b: $01 $01 $02
	and  c                                           ; $586e: $a1
	and  b                                           ; $586f: $a0
	ld   [bc], a                                     ; $5870: $02
	inc  l                                           ; $5871: $2c
	ld   e, e                                        ; $5872: $5b
	ld   h, l                                        ; $5873: $65
	adc  a                                           ; $5874: $8f
	ld   [hl], h                                     ; $5875: $74
	dec  c                                           ; $5876: $0d
	ld   e, d                                        ; $5877: $5a
	and  c                                           ; $5878: $a1
	ld   a, [hl]                                     ; $5879: $7e
	sbc  b                                           ; $587a: $98
	adc  h                                           ; $587b: $8c
	ld   h, a                                        ; $587c: $67
	sbc  a                                           ; $587d: $9f
	dec  c                                           ; $587e: $0d
	sub  [hl]                                        ; $587f: $96
	sbc  e                                           ; $5880: $9b
	ld   h, l                                        ; $5881: $65
	ld   e, l                                        ; $5882: $5d
	ld   e, b                                        ; $5883: $58
	ld   [bc], a                                     ; $5884: $02
	add  b                                           ; $5885: $80
	ld   d, d                                        ; $5886: $52
	ld   h, l                                        ; $5887: $65
	adc  h                                           ; $5888: $8c
	ld   h, a                                        ; $5889: $67
	sbc  a                                           ; $588a: $9f
	dec  c                                           ; $588b: $0d
	nop                                              ; $588c: $00
	ld   a, [bc]                                     ; $588d: $0a
	inc  e                                           ; $588e: $1c
	add  hl, bc                                      ; $588f: $09
	ld   bc, $0101                                   ; $5890: $01 $01 $01
	ld   d, h                                        ; $5893: $54
	and  c                                           ; $5894: $a1
	sbc  [hl]                                        ; $5895: $9e
	ld   e, d                                        ; $5896: $5a
	and  c                                           ; $5897: $a1
	ld   a, [hl]                                     ; $5898: $7e
	sbc  d                                           ; $5899: $9a
	sub  [hl]                                        ; $589a: $96
	sbc  a                                           ; $589b: $9f
	dec  c                                           ; $589c: $0d
	ld   l, e                                        ; $589d: $6b
	sbc  d                                           ; $589e: $9a
	halt                                             ; $589f: $76
	rst  $38                                         ; $58a0: $ff
	ld   l, [hl]                                     ; $58a1: $6e
	ld   a, b                                        ; $58a2: $78
	rst  $38                                         ; $58a3: $ff
	rst  $38                                         ; $58a4: $ff
	dec  c                                           ; $58a5: $0d
	nop                                              ; $58a6: $00
	ld   a, [bc]                                     ; $58a7: $0a
	inc  e                                           ; $58a8: $1c
	add  hl, bc                                      ; $58a9: $09
	nop                                              ; $58aa: $00
	nop                                              ; $58ab: $00
	ld   bc, $a502                                   ; $58ac: $01 $02 $a5
	inc  b                                           ; $58af: $04
	xor  d                                           ; $58b0: $aa
	ld   [bc], a                                     ; $58b1: $02
	jr   nz, jr_043_58b8                             ; $58b2: $20 $04

	xor  d                                           ; $58b4: $aa
	ld   [hl], l                                     ; $58b5: $75
	sbc  l                                           ; $58b6: $9d
	ld   e, c                                        ; $58b7: $59

jr_043_58b8:
	ld   [hl], c                                     ; $58b8: $71
	ld   l, l                                        ; $58b9: $6d
	halt                                             ; $58ba: $76
	dec  b                                           ; $58bb: $05
	pop  de                                          ; $58bc: $d1
	ld   d, h                                        ; $58bd: $54
	ld   e, d                                        ; $58be: $5a
	dec  c                                           ; $58bf: $0d
	ld   [bc], a                                     ; $58c0: $02
	sbc  b                                           ; $58c1: $98
	inc  bc                                          ; $58c2: $03
	nop                                              ; $58c3: $00
	ld   a, h                                        ; $58c4: $7c
	inc  b                                           ; $58c5: $04
	ld   a, [bc]                                     ; $58c6: $0a
	ld   [bc], a                                     ; $58c7: $02
	nop                                              ; $58c8: $00
	ld   l, l                                        ; $58c9: $6d
	ld   l, a                                        ; $58ca: $6f
	ld   a, l                                        ; $58cb: $7d
	ld   [bc], a                                     ; $58cc: $02
	inc  a                                           ; $58cd: $3c
	ld   [bc], a                                     ; $58ce: $02
	db   $fc                                         ; $58cf: $fc
	ld   b, $63                                      ; $58d0: $06 $63
	ld   e, c                                        ; $58d2: $59
	ld   l, [hl]                                     ; $58d3: $6e
	sbc  a                                           ; $58d4: $9f
	dec  c                                           ; $58d5: $0d
	ld   [bc], a                                     ; $58d6: $02
	sub  h                                           ; $58d7: $94
	dec  b                                           ; $58d8: $05
	rrca                                             ; $58d9: $0f
	ld   h, a                                        ; $58da: $67
	sbc  c                                           ; $58db: $99
	ld   e, c                                        ; $58dc: $59
	sub  b                                           ; $58dd: $90
	ld   h, l                                        ; $58de: $65
	sbc  d                                           ; $58df: $9a
	ld   a, b                                        ; $58e0: $78
	ld   d, d                                        ; $58e1: $52
	ld   e, a                                        ; $58e2: $5f
	ld   [hl], a                                     ; $58e3: $77
	dec  c                                           ; $58e4: $0d
	nop                                              ; $58e5: $00
	ld   a, [bc]                                     ; $58e6: $0a
	ld   bc, $9605                                   ; $58e7: $01 $05 $96
	ld   [hl], c                                     ; $58ea: $71
	ld   l, l                                        ; $58eb: $6d
	ld   h, c                                        ; $58ec: $61
	halt                                             ; $58ed: $76
	ld   e, d                                        ; $58ee: $5a
	ld   d, b                                        ; $58ef: $50
	ld   [hl], c                                     ; $58f0: $71
	ld   l, l                                        ; $58f1: $6d
	sub  a                                           ; $58f2: $97
	dec  c                                           ; $58f3: $0d
	ld   d, d                                        ; $58f4: $52
	ld   [hl], d                                     ; $58f5: $72
	ld   [hl], l                                     ; $58f6: $75
	sub  b                                           ; $58f7: $90
	ld   [bc], a                                     ; $58f8: $02
	ld   a, [de]                                     ; $58f9: $1a
	dec  b                                           ; $58fa: $05
	ldh  a, [$79]                                    ; $58fb: $f0 $79
	ld   a, h                                        ; $58fd: $7c
	sbc  c                                           ; $58fe: $99
	ld   e, c                                        ; $58ff: $59
	sub  a                                           ; $5900: $97
	dec  c                                           ; $5901: $0d
	xor  e                                           ; $5902: $ab
	xor  $7c                                         ; $5903: $ee $7c
	halt                                             ; $5905: $76
	ld   h, c                                        ; $5906: $61
	sbc  e                                           ; $5907: $9b
	ld   a, c                                        ; $5908: $79
	dec  b                                           ; $5909: $05
	db   $10                                         ; $590a: $10
	sbc  c                                           ; $590b: $99
	halt                                             ; $590c: $76
	ld   d, d                                        ; $590d: $52
	ld   d, d                                        ; $590e: $52
	sbc  a                                           ; $590f: $9f
	dec  c                                           ; $5910: $0d
	nop                                              ; $5911: $00
	ld   a, [bc]                                     ; $5912: $0a
	ld   bc, $9a6b                                   ; $5913: $01 $6b $9a
	ld   h, [hl]                                     ; $5916: $66
	sub  c                                           ; $5917: $91
	sbc  [hl]                                        ; $5918: $9e
	ld   e, b                                        ; $5919: $58
	sub  d                                           ; $591a: $92
	ld   h, a                                        ; $591b: $67
	adc  l                                           ; $591c: $8d
	sbc  a                                           ; $591d: $9f
	dec  c                                           ; $591e: $0d
	nop                                              ; $591f: $00
	ld   a, [bc]                                     ; $5920: $0a
	dec  c                                           ; $5921: $0d
	nop                                              ; $5922: $00
	nop                                              ; $5923: $00
	rrca                                             ; $5924: $0f
	nop                                              ; $5925: $00
	ld   bc, $0a14                                   ; $5926: $01 $14 $0a
	ld   bc, $0b0c                                   ; $5929: $01 $0c $0b
	ld   b, $2b                                      ; $592c: $06 $2b
	rla                                              ; $592e: $17
	rrca                                             ; $592f: $0f
	nop                                              ; $5930: $00
	ld   bc, $0301                                   ; $5931: $01 $01 $03
	ld   a, $78                                      ; $5934: $3e $78
	ld   a, b                                        ; $5936: $78
	ld   d, d                                        ; $5937: $52
	ld   [hl], h                                     ; $5938: $74
	ld   d, d                                        ; $5939: $52
	ld   [hl], a                                     ; $593a: $77
	ld   a, c                                        ; $593b: $79
	dec  c                                           ; $593c: $0d
	ld   e, d                                        ; $593d: $5a
	and  c                                           ; $593e: $a1
	ld   a, [hl]                                     ; $593f: $7e
	ld   [hl], c                                     ; $5940: $71
	ld   [hl], h                                     ; $5941: $74
	adc  l                                           ; $5942: $8d
	adc  h                                           ; $5943: $8c
	ld   h, a                                        ; $5944: $67
	ld   a, h                                        ; $5945: $7c
	ld   [hl], l                                     ; $5946: $75
	dec  c                                           ; $5947: $0d
	sub  [hl]                                        ; $5948: $96
	sbc  e                                           ; $5949: $9b
	ld   h, l                                        ; $594a: $65
	ld   e, l                                        ; $594b: $5d
	ld   e, b                                        ; $594c: $58
	ld   [bc], a                                     ; $594d: $02
	add  b                                           ; $594e: $80
	ld   d, d                                        ; $594f: $52
	ld   h, l                                        ; $5950: $65
	adc  h                                           ; $5951: $8c
	ld   h, a                                        ; $5952: $67
	rst  $38                                         ; $5953: $ff
	rst  $38                                         ; $5954: $ff
	dec  c                                           ; $5955: $0d
	nop                                              ; $5956: $00
	ld   a, [bc]                                     ; $5957: $0a
	inc  e                                           ; $5958: $1c
	add  hl, bc                                      ; $5959: $09
	inc  b                                           ; $595a: $04
	inc  b                                           ; $595b: $04
	ld   bc, $3e03                                   ; $595c: $01 $03 $3e
	ld   a, b                                        ; $595f: $78
	ld   a, b                                        ; $5960: $78
	ld   d, d                                        ; $5961: $52
	ld   [hl], h                                     ; $5962: $74
	ld   d, d                                        ; $5963: $52
	ld   [hl], a                                     ; $5964: $77
	ld   a, c                                        ; $5965: $79
	ld   [hl], c                                     ; $5966: $71
	ld   [hl], h                                     ; $5967: $74
	rst  $38                                         ; $5968: $ff
	rst  $38                                         ; $5969: $ff
	dec  c                                           ; $596a: $0d
	inc  bc                                          ; $596b: $03
	ld   a, $a1                                      ; $596c: $3e $a1
	ld   h, [hl]                                     ; $596e: $66
	sub  c                                           ; $596f: $91
	ld   [bc], a                                     ; $5970: $02
	xor  h                                           ; $5971: $ac
	sub  b                                           ; $5972: $90
	inc  bc                                          ; $5973: $03
	add  [hl]                                        ; $5974: $86
	sub  b                                           ; $5975: $90
	ld   a, b                                        ; $5976: $78
	ld   d, d                                        ; $5977: $52
	ld   e, a                                        ; $5978: $5f
	ld   [hl], a                                     ; $5979: $77
	dec  c                                           ; $597a: $0d
	sub  b                                           ; $597b: $90
	ld   d, h                                        ; $597c: $54
	inc  bc                                          ; $597d: $03
	ld   l, h                                        ; $597e: $6c
	ld   h, l                                        ; $597f: $65
	ld   [bc], a                                     ; $5980: $02
	and  c                                           ; $5981: $a1
	ld   [bc], a                                     ; $5982: $02
	ld   a, e                                        ; $5983: $7b
	inc  b                                           ; $5984: $04
	ld   b, l                                        ; $5985: $45
	sbc  d                                           ; $5986: $9a
	sbc  e                                           ; $5987: $9b
	sub  [hl]                                        ; $5988: $96
	sbc  a                                           ; $5989: $9f
	dec  c                                           ; $598a: $0d
	nop                                              ; $598b: $00
	ld   a, [bc]                                     ; $598c: $0a
	inc  e                                           ; $598d: $1c
	add  hl, bc                                      ; $598e: $09
	nop                                              ; $598f: $00
	nop                                              ; $5990: $00
	ld   bc, $7650                                   ; $5991: $01 $50 $76
	sbc  [hl]                                        ; $5994: $9e
	ld   [bc], a                                     ; $5995: $02
	and  l                                           ; $5996: $a5
	inc  b                                           ; $5997: $04
	xor  d                                           ; $5998: $aa
	ld   [hl], l                                     ; $5999: $75
	inc  b                                           ; $599a: $04
	sbc  [hl]                                        ; $599b: $9e
	ld   e, c                                        ; $599c: $59
	ld   [hl], c                                     ; $599d: $71
	ld   l, l                                        ; $599e: $6d
	halt                                             ; $599f: $76
	dec  b                                           ; $59a0: $05
	pop  de                                          ; $59a1: $d1
	ld   d, h                                        ; $59a2: $54
	ld   e, d                                        ; $59a3: $5a
	dec  c                                           ; $59a4: $0d
	ld   [bc], a                                     ; $59a5: $02
	sbc  b                                           ; $59a6: $98
	inc  bc                                          ; $59a7: $03
	nop                                              ; $59a8: $00
	ld   a, h                                        ; $59a9: $7c
	inc  b                                           ; $59aa: $04
	ld   a, [bc]                                     ; $59ab: $0a
	ld   [bc], a                                     ; $59ac: $02
	nop                                              ; $59ad: $00
	ld   l, l                                        ; $59ae: $6d
	ld   l, a                                        ; $59af: $6f
	ld   a, l                                        ; $59b0: $7d
	ld   [bc], a                                     ; $59b1: $02
	inc  a                                           ; $59b2: $3c
	ld   [bc], a                                     ; $59b3: $02
	db   $fc                                         ; $59b4: $fc
	ld   b, $63                                      ; $59b5: $06 $63
	ld   e, c                                        ; $59b7: $59
	ld   l, [hl]                                     ; $59b8: $6e
	sbc  a                                           ; $59b9: $9f
	dec  c                                           ; $59ba: $0d
	ld   [bc], a                                     ; $59bb: $02
	sub  h                                           ; $59bc: $94
	dec  b                                           ; $59bd: $05
	rrca                                             ; $59be: $0f
	ld   h, a                                        ; $59bf: $67
	sbc  c                                           ; $59c0: $99
	ld   e, c                                        ; $59c1: $59
	sub  b                                           ; $59c2: $90
	ld   h, l                                        ; $59c3: $65
	sbc  d                                           ; $59c4: $9a
	ld   a, b                                        ; $59c5: $78
	ld   d, d                                        ; $59c6: $52
	ld   e, a                                        ; $59c7: $5f
	ld   [hl], a                                     ; $59c8: $77
	dec  c                                           ; $59c9: $0d
	nop                                              ; $59ca: $00
	ld   a, [bc]                                     ; $59cb: $0a
	ld   bc, $9605                                   ; $59cc: $01 $05 $96
	ld   [hl], c                                     ; $59cf: $71
	ld   l, l                                        ; $59d0: $6d
	ld   h, c                                        ; $59d1: $61
	halt                                             ; $59d2: $76
	ld   e, d                                        ; $59d3: $5a
	ld   d, b                                        ; $59d4: $50
	ld   [hl], c                                     ; $59d5: $71
	ld   l, l                                        ; $59d6: $6d
	sub  a                                           ; $59d7: $97
	dec  c                                           ; $59d8: $0d
	ld   d, d                                        ; $59d9: $52
	ld   [hl], d                                     ; $59da: $72
	ld   [hl], l                                     ; $59db: $75
	sub  b                                           ; $59dc: $90
	ld   [bc], a                                     ; $59dd: $02
	ld   a, [de]                                     ; $59de: $1a
	dec  b                                           ; $59df: $05
	ldh  a, [$79]                                    ; $59e0: $f0 $79
	ld   a, h                                        ; $59e2: $7c
	sbc  c                                           ; $59e3: $99
	ld   e, c                                        ; $59e4: $59
	sub  a                                           ; $59e5: $97
	dec  c                                           ; $59e6: $0d
	xor  e                                           ; $59e7: $ab
	xor  $7c                                         ; $59e8: $ee $7c
	halt                                             ; $59ea: $76
	ld   h, c                                        ; $59eb: $61
	sbc  e                                           ; $59ec: $9b
	ld   a, c                                        ; $59ed: $79
	dec  b                                           ; $59ee: $05
	db   $10                                         ; $59ef: $10
	sbc  c                                           ; $59f0: $99
	halt                                             ; $59f1: $76
	ld   d, d                                        ; $59f2: $52
	ld   d, d                                        ; $59f3: $52
	sbc  a                                           ; $59f4: $9f
	dec  c                                           ; $59f5: $0d
	nop                                              ; $59f6: $00
	ld   a, [bc]                                     ; $59f7: $0a
	ld   bc, $9a6b                                   ; $59f8: $01 $6b $9a
	ld   h, [hl]                                     ; $59fb: $66
	sub  c                                           ; $59fc: $91
	sbc  [hl]                                        ; $59fd: $9e
	ld   e, b                                        ; $59fe: $58
	sub  d                                           ; $59ff: $92
	ld   h, a                                        ; $5a00: $67
	adc  l                                           ; $5a01: $8d
	sbc  a                                           ; $5a02: $9f
	dec  c                                           ; $5a03: $0d
	nop                                              ; $5a04: $00
	ld   a, [bc]                                     ; $5a05: $0a
	dec  c                                           ; $5a06: $0d
	nop                                              ; $5a07: $00
	nop                                              ; $5a08: $00
	rrca                                             ; $5a09: $0f
	nop                                              ; $5a0a: $00
	ld   bc, $0a14                                   ; $5a0b: $01 $14 $0a
	ld   bc, $0b0c                                   ; $5a0e: $01 $0c $0b
	ld   b, $2b                                      ; $5a11: $06 $2b
	rla                                              ; $5a13: $17
	inc  e                                           ; $5a14: $1c
	add  hl, bc                                      ; $5a15: $09
	ld   bc, $0101                                   ; $5a16: $01 $01 $01
	ld   a, l                                        ; $5a19: $7d
	ld   a, l                                        ; $5a1a: $7d
	ld   a, l                                        ; $5a1b: $7d
	sbc  a                                           ; $5a1c: $9f
	dec  c                                           ; $5a1d: $0d
	sub  [hl]                                        ; $5a1e: $96
	adc  c                                           ; $5a1f: $89
	ld   [hl], a                                     ; $5a20: $77
	inc  b                                           ; $5a21: $04
	ld   a, e                                        ; $5a22: $7b
	sbc  d                                           ; $5a23: $9a
	ld   l, l                                        ; $5a24: $6d
	sub  a                                           ; $5a25: $97
	ld   h, l                                        ; $5a26: $65
	ld   d, d                                        ; $5a27: $52
	ld   a, b                                        ; $5a28: $78
	sbc  a                                           ; $5a29: $9f
	dec  c                                           ; $5a2a: $0d
	ld   [bc], a                                     ; $5a2b: $02
	and  l                                           ; $5a2c: $a5
	inc  b                                           ; $5a2d: $04
	xor  d                                           ; $5a2e: $aa
	ld   a, l                                        ; $5a2f: $7d
	inc  bc                                          ; $5a30: $03
	ld   [hl], b                                     ; $5a31: $70
	ld   e, l                                        ; $5a32: $5d
	inc  bc                                          ; $5a33: $03
	and  a                                           ; $5a34: $a7
	adc  a                                           ; $5a35: $8f
	sub  [hl]                                        ; $5a36: $96
	dec  c                                           ; $5a37: $0d
	nop                                              ; $5a38: $00
	ld   a, [bc]                                     ; $5a39: $0a
	ld   bc, $7650                                   ; $5a3a: $01 $50 $76
	sbc  [hl]                                        ; $5a3d: $9e
	ld   [bc], a                                     ; $5a3e: $02
	and  l                                           ; $5a3f: $a5
	inc  b                                           ; $5a40: $04
	xor  d                                           ; $5a41: $aa
	ld   [hl], l                                     ; $5a42: $75
	inc  b                                           ; $5a43: $04
	sbc  [hl]                                        ; $5a44: $9e
	ld   e, c                                        ; $5a45: $59
	ld   [hl], c                                     ; $5a46: $71
	ld   l, l                                        ; $5a47: $6d
	halt                                             ; $5a48: $76
	dec  b                                           ; $5a49: $05
	pop  de                                          ; $5a4a: $d1
	ld   d, h                                        ; $5a4b: $54
	ld   e, d                                        ; $5a4c: $5a
	dec  c                                           ; $5a4d: $0d
	nop                                              ; $5a4e: $00
	inc  e                                           ; $5a4f: $1c
	add  hl, bc                                      ; $5a50: $09
	nop                                              ; $5a51: $00
	nop                                              ; $5a52: $00
	ld   bc, $9802                                   ; $5a53: $01 $02 $98
	inc  bc                                          ; $5a56: $03
	nop                                              ; $5a57: $00
	ld   a, h                                        ; $5a58: $7c
	inc  b                                           ; $5a59: $04
	ld   a, [bc]                                     ; $5a5a: $0a
	ld   [bc], a                                     ; $5a5b: $02
	nop                                              ; $5a5c: $00
	ld   l, l                                        ; $5a5d: $6d
	ld   l, a                                        ; $5a5e: $6f
	ld   a, l                                        ; $5a5f: $7d
	ld   [bc], a                                     ; $5a60: $02
	inc  a                                           ; $5a61: $3c
	ld   [bc], a                                     ; $5a62: $02
	db   $fc                                         ; $5a63: $fc
	ld   b, $63                                      ; $5a64: $06 $63
	ld   e, c                                        ; $5a66: $59
	ld   l, [hl]                                     ; $5a67: $6e
	sbc  a                                           ; $5a68: $9f
	dec  c                                           ; $5a69: $0d
	ld   [bc], a                                     ; $5a6a: $02
	sub  h                                           ; $5a6b: $94
	dec  b                                           ; $5a6c: $05
	rrca                                             ; $5a6d: $0f
	ld   h, a                                        ; $5a6e: $67
	sbc  c                                           ; $5a6f: $99
	ld   e, c                                        ; $5a70: $59
	sub  b                                           ; $5a71: $90
	ld   h, l                                        ; $5a72: $65
	sbc  d                                           ; $5a73: $9a
	ld   a, b                                        ; $5a74: $78
	ld   d, d                                        ; $5a75: $52
	ld   e, a                                        ; $5a76: $5f
	ld   [hl], a                                     ; $5a77: $77
	dec  c                                           ; $5a78: $0d
	nop                                              ; $5a79: $00
	ld   a, [bc]                                     ; $5a7a: $0a
	ld   bc, $9605                                   ; $5a7b: $01 $05 $96
	ld   [hl], c                                     ; $5a7e: $71
	ld   l, l                                        ; $5a7f: $6d
	ld   h, c                                        ; $5a80: $61
	halt                                             ; $5a81: $76
	ld   e, d                                        ; $5a82: $5a
	ld   d, b                                        ; $5a83: $50
	ld   [hl], c                                     ; $5a84: $71
	ld   l, l                                        ; $5a85: $6d
	sub  a                                           ; $5a86: $97
	dec  c                                           ; $5a87: $0d
	ld   d, d                                        ; $5a88: $52
	ld   [hl], d                                     ; $5a89: $72
	ld   [hl], l                                     ; $5a8a: $75
	sub  b                                           ; $5a8b: $90
	ld   [bc], a                                     ; $5a8c: $02
	ld   a, [de]                                     ; $5a8d: $1a
	dec  b                                           ; $5a8e: $05
	ldh  a, [$79]                                    ; $5a8f: $f0 $79
	ld   a, h                                        ; $5a91: $7c
	sbc  c                                           ; $5a92: $99
	ld   e, c                                        ; $5a93: $59
	sub  a                                           ; $5a94: $97
	dec  c                                           ; $5a95: $0d
	xor  e                                           ; $5a96: $ab
	xor  $7c                                         ; $5a97: $ee $7c
	halt                                             ; $5a99: $76
	ld   h, c                                        ; $5a9a: $61
	sbc  e                                           ; $5a9b: $9b
	ld   a, c                                        ; $5a9c: $79
	dec  b                                           ; $5a9d: $05
	db   $10                                         ; $5a9e: $10
	sbc  c                                           ; $5a9f: $99
	halt                                             ; $5aa0: $76
	ld   d, d                                        ; $5aa1: $52
	ld   d, d                                        ; $5aa2: $52
	sbc  a                                           ; $5aa3: $9f
	dec  c                                           ; $5aa4: $0d
	nop                                              ; $5aa5: $00
	ld   a, [bc]                                     ; $5aa6: $0a
	ld   bc, $9a6b                                   ; $5aa7: $01 $6b $9a
	ld   h, [hl]                                     ; $5aaa: $66
	sub  c                                           ; $5aab: $91
	sbc  [hl]                                        ; $5aac: $9e
	ld   e, b                                        ; $5aad: $58
	sub  d                                           ; $5aae: $92
	ld   h, a                                        ; $5aaf: $67
	adc  l                                           ; $5ab0: $8d
	sbc  a                                           ; $5ab1: $9f
	dec  c                                           ; $5ab2: $0d
	nop                                              ; $5ab3: $00
	ld   a, [bc]                                     ; $5ab4: $0a
	dec  c                                           ; $5ab5: $0d
	nop                                              ; $5ab6: $00
	nop                                              ; $5ab7: $00
	rrca                                             ; $5ab8: $0f
	nop                                              ; $5ab9: $00
	ld   bc, $0a14                                   ; $5aba: $01 $14 $0a
	ld   bc, $0b0c                                   ; $5abd: $01 $0c $0b
	ld   b, $2b                                      ; $5ac0: $06 $2b
	rla                                              ; $5ac2: $17
	ld   bc, $ffff                                   ; $5ac3: $01 $ff $ff
	add  e                                           ; $5ac6: $83
	ld   d, h                                        ; $5ac7: $54
	rst  $38                                         ; $5ac8: $ff
	rst  $38                                         ; $5ac9: $ff
	dec  c                                           ; $5aca: $0d
	sub  d                                           ; $5acb: $92
	ld   [hl], c                                     ; $5acc: $71
	halt                                             ; $5acd: $76
	inc  bc                                          ; $5ace: $03
	inc  c                                           ; $5acf: $0c
	inc  b                                           ; $5ad0: $04
	xor  d                                           ; $5ad1: $aa
	ld   e, d                                        ; $5ad2: $5a
	ld   e, b                                        ; $5ad3: $58
	sbc  l                                           ; $5ad4: $9d
	ld   [hl], c                                     ; $5ad5: $71
	ld   l, l                                        ; $5ad6: $6d
	ld   a, b                                        ; $5ad7: $78
	rst  $38                                         ; $5ad8: $ff
	rst  $38                                         ; $5ad9: $ff
	dec  c                                           ; $5ada: $0d
	nop                                              ; $5adb: $00
	ld   a, [bc]                                     ; $5adc: $0a
	ld   bc, $9a6b                                   ; $5add: $01 $6b $9a
	ld   h, [hl]                                     ; $5ae0: $66
	sub  c                                           ; $5ae1: $91
	sbc  [hl]                                        ; $5ae2: $9e
	inc  b                                           ; $5ae3: $04
	xor  d                                           ; $5ae4: $aa
	ld   [bc], a                                     ; $5ae5: $02
	sub  a                                           ; $5ae6: $97
	ld   [hl], l                                     ; $5ae7: $75
	sub  b                                           ; $5ae8: $90
	ld   [hl], d                                     ; $5ae9: $72
	ld   e, a                                        ; $5aea: $5f
	ld   [hl], h                                     ; $5aeb: $74
	dec  c                                           ; $5aec: $0d
	inc  b                                           ; $5aed: $04
	ld   b, d                                        ; $5aee: $42
	sub  [hl]                                        ; $5aef: $96
	ld   d, h                                        ; $5af0: $54
	ld   e, c                                        ; $5af1: $59
	ld   a, b                                        ; $5af2: $78
	sbc  a                                           ; $5af3: $9f
	dec  c                                           ; $5af4: $0d
	nop                                              ; $5af5: $00
	ld   a, [bc]                                     ; $5af6: $0a
	nop                                              ; $5af7: $00
	nop                                              ; $5af8: $00
	inc  b                                           ; $5af9: $04
	add  b                                           ; $5afa: $80
	ld   h, h                                        ; $5afb: $64
	ld   bc, $20ff                                   ; $5afc: $01 $ff $20
	inc  bc                                          ; $5aff: $03
	ld   l, e                                        ; $5b00: $6b
	ld   [bc], a                                     ; $5b01: $02
	nop                                              ; $5b02: $00
	jr   nz, @+$1e                                   ; $5b03: $20 $1c

	nop                                              ; $5b05: $00


	
	inc  e                                           ; $5b06: $1c
	inc  bc                                          ; $5b07: $03
	nop                                              ; $5b08: $00
	nop                                              ; $5b09: $00
	ld   c, $6e                                      ; $5b0a: $0e $6e
	ld   [bc], a                                     ; $5b0c: $02
	ld   bc, $0008                                   ; $5b0d: $01 $08 $00
	ld   e, l                                        ; $5b10: $5d
	and  c                                           ; $5b11: $a1
	sbc  [hl]                                        ; $5b12: $9e
	dec  b                                           ; $5b13: $05
	db   $10                                         ; $5b14: $10
	ld   l, l                                        ; $5b15: $6d
	sbc  l                                           ; $5b16: $9d
	ld   a, e                                        ; $5b17: $7b
	sbc  a                                           ; $5b18: $9f
	dec  c                                           ; $5b19: $0d
	nop                                              ; $5b1a: $00
	ld   a, [bc]                                     ; $5b1b: $0a
	dec  b                                           ; $5b1c: $05
	add  b                                           ; $5b1d: $80
	ld   h, l                                        ; $5b1e: $65
	ld   bc, $0001                                   ; $5b1f: $01 $01 $00
	inc  e                                           ; $5b22: $1c
	inc  bc                                          ; $5b23: $03
	ld   [bc], a                                     ; $5b24: $02
	ld   [bc], a                                     ; $5b25: $02
	ld   bc, $a502                                   ; $5b26: $01 $02 $a5
	inc  b                                           ; $5b29: $04
	xor  d                                           ; $5b2a: $aa
	ld   a, l                                        ; $5b2b: $7d
	sbc  [hl]                                        ; $5b2c: $9e
	ld   l, e                                        ; $5b2d: $6b
	ld   a, h                                        ; $5b2e: $7c
	ld   l, l                                        ; $5b2f: $6d
	sbc  c                                           ; $5b30: $99
	and  c                                           ; $5b31: $a1
	ld   l, [hl]                                     ; $5b32: $6e
	ld   [bc], a                                     ; $5b33: $02
	and  c                                           ; $5b34: $a1
	inc  bc                                          ; $5b35: $03
	and  b                                           ; $5b36: $a0
	ld   l, a                                        ; $5b37: $6f
	and  b                                           ; $5b38: $a0
	dec  c                                           ; $5b39: $0d
	ld   [hl], h                                     ; $5b3a: $74
	ld   [hl], c                                     ; $5b3b: $71
	ld   [hl], h                                     ; $5b3c: $74
	ld   d, d                                        ; $5b3d: $52
	inc  b                                           ; $5b3e: $04
	jr   nz, jr_043_5bba                             ; $5b3f: $20 $79

	ld   e, e                                        ; $5b41: $5b
	ld   l, l                                        ; $5b42: $6d
	ld   d, [hl]                                     ; $5b43: $56
	ld   a, b                                        ; $5b44: $78
	ld   e, b                                        ; $5b45: $58
	ld   h, a                                        ; $5b46: $67
	ld   e, c                                        ; $5b47: $59
	sub  a                                           ; $5b48: $97
	dec  c                                           ; $5b49: $0d
	ld   e, c                                        ; $5b4a: $59
	ld   e, l                                        ; $5b4b: $5d
	ld   h, d                                        ; $5b4c: $62
	ld   h, l                                        ; $5b4d: $65
	ld   [hl], h                                     ; $5b4e: $74
	ld   a, e                                        ; $5b4f: $7b
	sbc  a                                           ; $5b50: $9f
	dec  c                                           ; $5b51: $0d
	nop                                              ; $5b52: $00
	ld   a, [bc]                                     ; $5b53: $0a
	ld   bc, $9a6b                                   ; $5b54: $01 $6b $9a
	ld   h, [hl]                                     ; $5b57: $66
	sub  c                                           ; $5b58: $91
	sbc  [hl]                                        ; $5b59: $9e
	inc  bc                                          ; $5b5a: $03
	inc  e                                           ; $5b5b: $1c
	inc  b                                           ; $5b5c: $04
	ld   d, e                                        ; $5b5d: $53
	ld   h, l                                        ; $5b5e: $65
	ld   [hl], h                                     ; $5b5f: $74
	sbc  a                                           ; $5b60: $9f
	dec  c                                           ; $5b61: $0d
	nop                                              ; $5b62: $00
	ld   a, [bc]                                     ; $5b63: $0a
	dec  c                                           ; $5b64: $0d
	nop                                              ; $5b65: $00
	nop                                              ; $5b66: $00
	rrca                                             ; $5b67: $0f
	nop                                              ; $5b68: $00
	ld   bc, $1001                                   ; $5b69: $01 $01 $10
	db   $10                                         ; $5b6c: $10
	ld   bc, $0611                                   ; $5b6d: $01 $11 $06
	ld   e, d                                        ; $5b70: $5a
	inc  bc                                          ; $5b71: $03
	xor  h                                           ; $5b72: $ac
	ld   [bc], a                                     ; $5b73: $02
	rst  $30                                         ; $5b74: $f7
	inc  b                                           ; $5b75: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b76: $cf
	ld   bc, $0d12                                   ; $5b77: $01 $12 $0d
	nop                                              ; $5b7a: $00
	ld   a, [bc]                                     ; $5b7b: $0a
	ld   bc, $ecdf                                   ; $5b7c: $01 $df $ec
	and  e                                           ; $5b7f: $a3
	ld   e, d                                        ; $5b80: $5a
	xor  h                                           ; $5b81: $ac
	and  a                                           ; $5b82: $a7
	push af                                          ; $5b83: $f5
	ret                                              ; $5b84: $c9


	and  b                                           ; $5b85: $a0
	dec  c                                           ; $5b86: $0d
	ld   e, c                                        ; $5b87: $59
	ld   l, h                                        ; $5b88: $6c
	ld   d, [hl]                                     ; $5b89: $56
	adc  h                                           ; $5b8a: $8c
	ld   h, a                                        ; $5b8b: $67
	ld   a, h                                        ; $5b8c: $7c
	ld   [hl], l                                     ; $5b8d: $75
	sbc  [hl]                                        ; $5b8e: $9e
	dec  c                                           ; $5b8f: $0d
	dec  de                                          ; $5b90: $1b
	db   $dd                                         ; $5b91: $dd
	ret  nz                                          ; $5b92: $c0

	push af                                          ; $5b93: $f5
	and  b                                           ; $5b94: $a0
	inc  b                                           ; $5b95: $04
	db   $fd                                         ; $5b96: $fd
	dec  b                                           ; $5b97: $05
	pop  af                                          ; $5b98: $f1
	ld   h, l                                        ; $5b99: $65
	ld   [hl], h                                     ; $5b9a: $74
	ld   e, l                                        ; $5b9b: $5d
	ld   l, [hl]                                     ; $5b9c: $6e
	ld   h, e                                        ; $5b9d: $63
	ld   d, d                                        ; $5b9e: $52
	sbc  a                                           ; $5b9f: $9f
	dec  c                                           ; $5ba0: $0d
	nop                                              ; $5ba1: $00
	ld   a, [bc]                                     ; $5ba2: $0a
	ld   bc, $a7ac                                   ; $5ba3: $01 $ac $a7
	push af                                          ; $5ba6: $f5
	ret                                              ; $5ba7: $c9


	ld   e, d                                        ; $5ba8: $5a
	dec  b                                           ; $5ba9: $05
	db   $dd                                         ; $5baa: $dd
	adc  [hl]                                        ; $5bab: $8e
	halt                                             ; $5bac: $76
	sbc  [hl]                                        ; $5bad: $9e
	inc  bc                                          ; $5bae: $03
	ld   [hl], b                                     ; $5baf: $70
	ld   e, l                                        ; $5bb0: $5d
	inc  b                                           ; $5bb1: $04
	db   $fd                                         ; $5bb2: $fd
	dec  b                                           ; $5bb3: $05
	pop  af                                          ; $5bb4: $f1
	dec  c                                           ; $5bb5: $0d
	ld   h, l                                        ; $5bb6: $65
	ld   a, b                                        ; $5bb7: $78
	ld   e, a                                        ; $5bb8: $5f
	sbc  d                                           ; $5bb9: $9a

jr_043_5bba:
	ld   a, [hl]                                     ; $5bba: $7e
	pop  bc                                          ; $5bbb: $c1
	and  a                                           ; $5bbc: $a7
	push af                                          ; $5bbd: $f5
	ld   h, l                                        ; $5bbe: $65
	ld   [hl], h                                     ; $5bbf: $74
	dec  c                                           ; $5bc0: $0d
	ld   h, l                                        ; $5bc1: $65
	adc  h                                           ; $5bc2: $8c
	ld   d, d                                        ; $5bc3: $52
	adc  h                                           ; $5bc4: $8c
	ld   h, a                                        ; $5bc5: $67
	sbc  a                                           ; $5bc6: $9f
	dec  c                                           ; $5bc7: $0d
	nop                                              ; $5bc8: $00
	ld   a, [bc]                                     ; $5bc9: $0a
	ld   a, [de]                                     ; $5bca: $1a
	ld   [$db07], sp                                 ; $5bcb: $08 $07 $db
	nop                                              ; $5bce: $00
	ld   [bc], a                                     ; $5bcf: $02
	inc  b                                           ; $5bd0: $04
	ld   bc, $2002                                   ; $5bd1: $01 $02 $20
	nop                                              ; $5bd4: $00
	rlca                                             ; $5bd5: $07
	add  e                                           ; $5bd6: $83
	ld   bc, $0402                                   ; $5bd7: $01 $02 $04
	ld   bc, $2001                                   ; $5bda: $01 $01 $20
	nop                                              ; $5bdd: $00
	ld   b, $fc                                      ; $5bde: $06 $fc
	ld   bc, $031c                                   ; $5be0: $01 $1c $03
	nop                                              ; $5be3: $00
	nop                                              ; $5be4: $00
	ld   bc, $5978                                   ; $5be5: $01 $78 $59
	ld   a, b                                        ; $5be8: $78
	ld   e, c                                        ; $5be9: $59
	sbc  [hl]                                        ; $5bea: $9e
	sub  d                                           ; $5beb: $92
	sbc  c                                           ; $5bec: $99
	ld   h, [hl]                                     ; $5bed: $66
	sub  c                                           ; $5bee: $91
	ld   a, b                                        ; $5bef: $78
	ld   d, d                                        ; $5bf0: $52
	sbc  a                                           ; $5bf1: $9f
	dec  c                                           ; $5bf2: $0d
	ld   [hl], l                                     ; $5bf3: $75
	sub  b                                           ; $5bf4: $90
	ld   a, e                                        ; $5bf5: $7b
	sbc  [hl]                                        ; $5bf6: $9e
	ld   d, b                                        ; $5bf7: $50
	ld   a, b                                        ; $5bf8: $78
	ld   l, l                                        ; $5bf9: $6d
	ld   a, h                                        ; $5bfa: $7c
	ld   l, l                                        ; $5bfb: $6d
	adc  a                                           ; $5bfc: $8f
	ld   a, c                                        ; $5bfd: $79
	dec  c                                           ; $5bfe: $0d
	add  b                                           ; $5bff: $80
	halt                                             ; $5c00: $76
	ld   h, c                                        ; $5c01: $61
	halt                                             ; $5c02: $76
	ld   [bc], a                                     ; $5c03: $02
	sbc  l                                           ; $5c04: $9d
	ld   [hl], c                                     ; $5c05: $71
	ld   [hl], h                                     ; $5c06: $74
	ld   e, b                                        ; $5c07: $58
	ld   e, l                                        ; $5c08: $5d
	sbc  l                                           ; $5c09: $9d
	sbc  a                                           ; $5c0a: $9f
	dec  c                                           ; $5c0b: $0d
	nop                                              ; $5c0c: $00
	ld   a, [bc]                                     ; $5c0d: $0a
	ld   bc, $f204                                   ; $5c0e: $01 $04 $f2
	add  c                                           ; $5c11: $81
	inc  b                                           ; $5c12: $04
	ld   [hl], d                                     ; $5c13: $72
	inc  b                                           ; $5c14: $04
	sbc  [hl]                                        ; $5c15: $9e
	ld   [hl], l                                     ; $5c16: $75
	ld   d, d                                        ; $5c17: $52
	sbc  c                                           ; $5c18: $99
	halt                                             ; $5c19: $76
	sbc  [hl]                                        ; $5c1a: $9e
	dec  c                                           ; $5c1b: $0d
	ld   l, e                                        ; $5c1c: $6b
	ld   a, h                                        ; $5c1d: $7c
	ld   d, h                                        ; $5c1e: $54
	ld   l, a                                        ; $5c1f: $6f
	sbc  [hl]                                        ; $5c20: $9e
	halt                                             ; $5c21: $76
	and  c                                           ; $5c22: $a1
	ld   [hl], l                                     ; $5c23: $75
	sub  b                                           ; $5c24: $90
	ld   a, b                                        ; $5c25: $78
	ld   d, d                                        ; $5c26: $52
	inc  b                                           ; $5c27: $04
	call nc, $0d79                                   ; $5c28: $d4 $79 $0d
	ld   [bc], a                                     ; $5c2b: $02
	add  [hl]                                        ; $5c2c: $86
	ld   d, h                                        ; $5c2d: $54
	sbc  l                                           ; $5c2e: $9d
	sub  [hl]                                        ; $5c2f: $96
	sbc  a                                           ; $5c30: $9f
	dec  c                                           ; $5c31: $0d
	nop                                              ; $5c32: $00
	ld   a, [bc]                                     ; $5c33: $0a
	ld   bc, $a102                                   ; $5c34: $01 $02 $a1
	and  b                                           ; $5c37: $a0
	ld   [bc], a                                     ; $5c38: $02
	inc  l                                           ; $5c39: $2c
	ld   e, e                                        ; $5c3a: $5b
	ld   h, l                                        ; $5c3b: $65
	adc  a                                           ; $5c3c: $8f
	ld   [hl], h                                     ; $5c3d: $74
	sbc  [hl]                                        ; $5c3e: $9e
	adc  h                                           ; $5c3f: $8c
	ld   h, [hl]                                     ; $5c40: $66
	adc  a                                           ; $5c41: $8f
	ld   a, c                                        ; $5c42: $79
	dec  c                                           ; $5c43: $0d
	sub  d                                           ; $5c44: $92
	sub  a                                           ; $5c45: $97
	ld   a, b                                        ; $5c46: $78
	ld   d, d                                        ; $5c47: $52
	halt                                             ; $5c48: $76
	sbc  [hl]                                        ; $5c49: $9e
	inc  b                                           ; $5c4a: $04
	ld   [hl-], a                                    ; $5c4b: $32
	inc  b                                           ; $5c4c: $04
	dec  bc                                          ; $5c4d: $0b
	ld   [hl], l                                     ; $5c4e: $75
	inc  bc                                          ; $5c4f: $03
	adc  b                                           ; $5c50: $88
	inc  b                                           ; $5c51: $04
	ld   a, [bc]                                     ; $5c52: $0a
	rst  $38                                         ; $5c53: $ff
	rst  $38                                         ; $5c54: $ff
	dec  c                                           ; $5c55: $0d
	halt                                             ; $5c56: $76
	ld   d, d                                        ; $5c57: $52
	ld   d, h                                        ; $5c58: $54
	ld   h, c                                        ; $5c59: $61
	halt                                             ; $5c5a: $76
	sub  b                                           ; $5c5b: $90
	ld   d, b                                        ; $5c5c: $50
	sbc  c                                           ; $5c5d: $99
	ld   a, h                                        ; $5c5e: $7c
	ld   [hl], l                                     ; $5c5f: $75
	ld   h, a                                        ; $5c60: $67
	ld   e, c                                        ; $5c61: $59
	sub  a                                           ; $5c62: $97
	sbc  a                                           ; $5c63: $9f
	dec  c                                           ; $5c64: $0d
	nop                                              ; $5c65: $00
	ld   a, [bc]                                     ; $5c66: $0a
	ld   bc, $9166                                   ; $5c67: $01 $66 $91
	sbc  [hl]                                        ; $5c6a: $9e
	ld   [bc], a                                     ; $5c6b: $02
	and  l                                           ; $5c6c: $a5
	inc  b                                           ; $5c6d: $04
	xor  d                                           ; $5c6e: $aa
	sub  b                                           ; $5c6f: $90
	ld   [bc], a                                     ; $5c70: $02
	jr   nz, jr_043_5c77                             ; $5c71: $20 $04

	xor  d                                           ; $5c73: $aa
	dec  c                                           ; $5c74: $0d
	ld   e, d                                        ; $5c75: $5a
	and  c                                           ; $5c76: $a1

jr_043_5c77:
	ld   a, [hl]                                     ; $5c77: $7e
	sbc  b                                           ; $5c78: $98
	ld   a, b                                        ; $5c79: $78
	ld   h, e                                        ; $5c7a: $63
	ld   d, d                                        ; $5c7b: $52
	sbc  a                                           ; $5c7c: $9f
	dec  c                                           ; $5c7d: $0d
	nop                                              ; $5c7e: $00
	ld   a, [bc]                                     ; $5c7f: $0a
	dec  c                                           ; $5c80: $0d
	nop                                              ; $5c81: $00
	nop                                              ; $5c82: $00
	rrca                                             ; $5c83: $0f
	nop                                              ; $5c84: $00
	ld   bc, $1e09                                   ; $5c85: $01 $09 $1e
	nop                                              ; $5c88: $00
	inc  e                                           ; $5c89: $1c
	inc  bc                                          ; $5c8a: $03
	nop                                              ; $5c8b: $00
	nop                                              ; $5c8c: $00
	dec  e                                           ; $5c8d: $1d
	ld   b, b                                        ; $5c8e: $40
	inc  de                                          ; $5c8f: $13
	inc  bc                                          ; $5c90: $03
	inc  de                                          ; $5c91: $13
	ld   bc, $2901                                   ; $5c92: $01 $01 $29
	nop                                              ; $5c95: $00
	ld   bc, $508c                                   ; $5c96: $01 $8c $50
	adc  h                                           ; $5c99: $8c
	ld   d, b                                        ; $5c9a: $50
	ld   a, e                                        ; $5c9b: $7b
	sbc  a                                           ; $5c9c: $9f
	dec  c                                           ; $5c9d: $0d
	ld   [hl], l                                     ; $5c9e: $75
	sub  b                                           ; $5c9f: $90
	ld   a, e                                        ; $5ca0: $7b
	sbc  [hl]                                        ; $5ca1: $9e
	ld   h, c                                        ; $5ca2: $61
	sbc  d                                           ; $5ca3: $9a
	ld   h, [hl]                                     ; $5ca4: $66
	sub  c                                           ; $5ca5: $91
	pop  bc                                          ; $5ca6: $c1
	db   $e3                                         ; $5ca7: $e3
	ld   l, [hl]                                     ; $5ca8: $6e
	sbc  l                                           ; $5ca9: $9d
	sbc  a                                           ; $5caa: $9f
	dec  c                                           ; $5cab: $0d
	nop                                              ; $5cac: $00
	ld   a, [bc]                                     ; $5cad: $0a
	ld   bc, $a102                                   ; $5cae: $01 $02 $a1
	and  b                                           ; $5cb1: $a0
	ld   [bc], a                                     ; $5cb2: $02
	inc  l                                           ; $5cb3: $2c
	ld   e, e                                        ; $5cb4: $5b
	ld   h, l                                        ; $5cb5: $65
	adc  a                                           ; $5cb6: $8f
	ld   [hl], h                                     ; $5cb7: $74
	sbc  [hl]                                        ; $5cb8: $9e
	adc  h                                           ; $5cb9: $8c
	ld   h, [hl]                                     ; $5cba: $66
	adc  a                                           ; $5cbb: $8f
	ld   a, c                                        ; $5cbc: $79
	dec  c                                           ; $5cbd: $0d
	sub  d                                           ; $5cbe: $92
	sub  a                                           ; $5cbf: $97
	ld   a, b                                        ; $5cc0: $78
	ld   d, d                                        ; $5cc1: $52
	halt                                             ; $5cc2: $76
	sbc  [hl]                                        ; $5cc3: $9e
	inc  b                                           ; $5cc4: $04
	ld   [hl-], a                                    ; $5cc5: $32
	inc  b                                           ; $5cc6: $04
	dec  bc                                          ; $5cc7: $0b
	ld   [hl], l                                     ; $5cc8: $75
	inc  bc                                          ; $5cc9: $03
	adc  b                                           ; $5cca: $88
	inc  b                                           ; $5ccb: $04
	ld   a, [bc]                                     ; $5ccc: $0a
	rst  $38                                         ; $5ccd: $ff
	rst  $38                                         ; $5cce: $ff
	dec  c                                           ; $5ccf: $0d
	halt                                             ; $5cd0: $76
	ld   d, d                                        ; $5cd1: $52
	ld   d, h                                        ; $5cd2: $54
	ld   h, c                                        ; $5cd3: $61
	halt                                             ; $5cd4: $76
	sub  b                                           ; $5cd5: $90
	ld   d, b                                        ; $5cd6: $50
	sbc  c                                           ; $5cd7: $99
	ld   a, h                                        ; $5cd8: $7c
	ld   [hl], l                                     ; $5cd9: $75
	ld   h, a                                        ; $5cda: $67
	sub  [hl]                                        ; $5cdb: $96
	sbc  a                                           ; $5cdc: $9f
	dec  c                                           ; $5cdd: $0d
	nop                                              ; $5cde: $00
	ld   a, [bc]                                     ; $5cdf: $0a
	ld   bc, $9166                                   ; $5ce0: $01 $66 $91
	sbc  [hl]                                        ; $5ce3: $9e
	ld   [bc], a                                     ; $5ce4: $02
	and  l                                           ; $5ce5: $a5
	inc  b                                           ; $5ce6: $04
	xor  d                                           ; $5ce7: $aa
	sub  b                                           ; $5ce8: $90
	ld   [bc], a                                     ; $5ce9: $02
	jr   nz, jr_043_5cf0                             ; $5cea: $20 $04

	xor  d                                           ; $5cec: $aa
	dec  c                                           ; $5ced: $0d
	ld   e, d                                        ; $5cee: $5a
	and  c                                           ; $5cef: $a1

jr_043_5cf0:
	ld   a, [hl]                                     ; $5cf0: $7e
	sbc  b                                           ; $5cf1: $98
	ld   a, b                                        ; $5cf2: $78
	ld   h, e                                        ; $5cf3: $63
	ld   d, d                                        ; $5cf4: $52
	sbc  a                                           ; $5cf5: $9f
	dec  c                                           ; $5cf6: $0d
	nop                                              ; $5cf7: $00
	ld   a, [bc]                                     ; $5cf8: $0a
	dec  c                                           ; $5cf9: $0d
	nop                                              ; $5cfa: $00
	nop                                              ; $5cfb: $00
	rrca                                             ; $5cfc: $0f
	nop                                              ; $5cfd: $00
	ld   bc, $1e09                                   ; $5cfe: $01 $09 $1e
	nop                                              ; $5d01: $00
	inc  e                                           ; $5d02: $1c
	inc  bc                                          ; $5d03: $03
	ld   b, $06                                      ; $5d04: $06 $06

Jump_043_5d06:
	dec  e                                           ; $5d06: $1d
	ld   b, b                                        ; $5d07: $40
	inc  de                                          ; $5d08: $13
	inc  bc                                          ; $5d09: $03
	inc  de                                          ; $5d0a: $13
	ld   bc, $2903                                   ; $5d0b: $01 $03 $29
	nop                                              ; $5d0e: $00
	ld   bc, $5703                                   ; $5d0f: $01 $03 $57
	inc  bc                                          ; $5d12: $03
	sbc  c                                           ; $5d13: $99
	sbc  [hl]                                        ; $5d14: $9e
	pop  bc                                          ; $5d15: $c1
	db   $e3                                         ; $5d16: $e3
	ld   h, [hl]                                     ; $5d17: $66
	sub  c                                           ; $5d18: $91
	ld   a, b                                        ; $5d19: $78
	ld   d, d                                        ; $5d1a: $52
	sbc  a                                           ; $5d1b: $9f
	dec  c                                           ; $5d1c: $0d
	inc  bc                                          ; $5d1d: $03
	ld   [hl], l                                     ; $5d1e: $75
	ld   e, d                                        ; $5d1f: $5a
	ld   l, l                                        ; $5d20: $6d
	sbc  c                                           ; $5d21: $99
	and  c                                           ; $5d22: $a1
	ld   [hl], l                                     ; $5d23: $75
	ld   d, d                                        ; $5d24: $52
	sbc  c                                           ; $5d25: $99
	inc  b                                           ; $5d26: $04
	ld   a, $05                                      ; $5d27: $3e $05
	ld   a, l                                        ; $5d29: $7d
	sub  [hl]                                        ; $5d2a: $96
	sbc  a                                           ; $5d2b: $9f
	dec  c                                           ; $5d2c: $0d
	nop                                              ; $5d2d: $00
	ld   a, [bc]                                     ; $5d2e: $0a
	dec  b                                           ; $5d2f: $05
	ld   b, b                                        ; $5d30: $40
	ld   c, d                                        ; $5d31: $4a
	ld   [bc], a                                     ; $5d32: $02
	nop                                              ; $5d33: $00
	nop                                              ; $5d34: $00
	ld   bc, $f204                                   ; $5d35: $01 $04 $f2
	add  c                                           ; $5d38: $81
	inc  b                                           ; $5d39: $04
	ld   [hl], d                                     ; $5d3a: $72
	inc  b                                           ; $5d3b: $04
	sbc  [hl]                                        ; $5d3c: $9e
	ld   [hl], l                                     ; $5d3d: $75
	sbc  [hl]                                        ; $5d3e: $9e
	ld   h, c                                        ; $5d3f: $61
	ld   h, c                                        ; $5d40: $61
	ld   a, c                                        ; $5d41: $79
	ld   d, d                                        ; $5d42: $52
	sbc  c                                           ; $5d43: $99
	ld   a, h                                        ; $5d44: $7c
	dec  c                                           ; $5d45: $0d
	nop                                              ; $5d46: $00
	dec  b                                           ; $5d47: $05
	ld   b, b                                        ; $5d48: $40
	ld   d, b                                        ; $5d49: $50
	ld   bc, $0002                                   ; $5d4a: $01 $02 $00
	ld   bc, $716e                                   ; $5d4d: $01 $6e $71
	ld   l, l                                        ; $5d50: $6d
	sub  a                                           ; $5d51: $97
	sbc  [hl]                                        ; $5d52: $9e
	sub  d                                           ; $5d53: $92
	adc  a                                           ; $5d54: $8f
	ld   l, l                                        ; $5d55: $6d
	inc  b                                           ; $5d56: $04
	ld   a, b                                        ; $5d57: $78
	ld   e, d                                        ; $5d58: $5a
	ld   d, d                                        ; $5d59: $52
	ld   d, d                                        ; $5d5a: $52
	sbc  l                                           ; $5d5b: $9d
	sbc  a                                           ; $5d5c: $9f
	dec  c                                           ; $5d5d: $0d
	sbc  l                                           ; $5d5e: $9d
	ld   e, c                                        ; $5d5f: $59
	ld   [hl], c                                     ; $5d60: $71
	ld   l, l                                        ; $5d61: $6d
	ld   sp, hl                                      ; $5d62: $f9
	dec  c                                           ; $5d63: $0d
	nop                                              ; $5d64: $00
	ld   a, [bc]                                     ; $5d65: $0a
	dec  c                                           ; $5d66: $0d
	nop                                              ; $5d67: $00
	nop                                              ; $5d68: $00
	rrca                                             ; $5d69: $0f
	nop                                              ; $5d6a: $00
	ld   bc, $1e09                                   ; $5d6b: $01 $09 $1e
	nop                                              ; $5d6e: $00
	nop                                              ; $5d6f: $00
	inc  bc                                          ; $5d70: $03
	ld   c, a                                        ; $5d71: $4f
	ld   [bc], a                                     ; $5d72: $02
	nop                                              ; $5d73: $00
	inc  bc                                          ; $5d74: $03
	ld   c, c                                        ; $5d75: $49
	add  hl, hl                                      ; $5d76: $29
	add  hl, hl                                      ; $5d77: $29
	ld   bc, $2501                                   ; $5d78: $01 $01 $25
	nop                                              ; $5d7b: $00
	rrca                                             ; $5d7c: $0f
	nop                                              ; $5d7d: $00
	ld   bc, $0702                                   ; $5d7e: $01 $02 $07
	ld   [hl+], a                                    ; $5d81: $22
	nop                                              ; $5d82: $00
	inc  bc                                          ; $5d83: $03
	ld   c, a                                        ; $5d84: $4f
	ld   [bc], a                                     ; $5d85: $02
	nop                                              ; $5d86: $00
	inc  bc                                          ; $5d87: $03
	ld   c, c                                        ; $5d88: $49
	add  hl, hl                                      ; $5d89: $29
	add  hl, hl                                      ; $5d8a: $29
	ld   bc, $2002                                   ; $5d8b: $01 $02 $20
	nop                                              ; $5d8e: $00
	rlca                                             ; $5d8f: $07
	ld   l, d                                        ; $5d90: $6a
	nop                                              ; $5d91: $00
	inc  bc                                          ; $5d92: $03
	ld   c, a                                        ; $5d93: $4f
	ld   [bc], a                                     ; $5d94: $02
	nop                                              ; $5d95: $00
	inc  bc                                          ; $5d96: $03
	ld   c, c                                        ; $5d97: $49
	add  hl, hl                                      ; $5d98: $29
	add  hl, hl                                      ; $5d99: $29
	ld   bc, $2001                                   ; $5d9a: $01 $01 $20
	nop                                              ; $5d9d: $00
	dec  c                                           ; $5d9e: $0d
	ld   [bc], a                                     ; $5d9f: $02
	ld   [bc], a                                     ; $5da0: $02
	add  hl, bc                                      ; $5da1: $09
	ld   e, $01                                      ; $5da2: $1e $01
	ld   d, b                                        ; $5da4: $50
	ld   [hl], c                                     ; $5da5: $71
	sbc  [hl]                                        ; $5da6: $9e
	ld   h, a                                        ; $5da7: $67
	adc  l                                           ; $5da8: $8d
	sbc  d                                           ; $5da9: $9a
	ld   h, e                                        ; $5daa: $63
	and  c                                           ; $5dab: $a1
	rst  $38                                         ; $5dac: $ff
	rst  $38                                         ; $5dad: $ff
	dec  c                                           ; $5dae: $0d
	nop                                              ; $5daf: $00
	ld   a, [bc]                                     ; $5db0: $0a
	dec  c                                           ; $5db1: $0d
	nop                                              ; $5db2: $00
	nop                                              ; $5db3: $00
	dec  b                                           ; $5db4: $05
	ld   b, b                                        ; $5db5: $40
	ld   c, a                                        ; $5db6: $4f
	ld   bc, $0000                                   ; $5db7: $01 $00 $00
	ld   bc, $ffff                                   ; $5dba: $01 $ff $ff
	ld   d, d                                        ; $5dbd: $52
	sbc  [hl]                                        ; $5dbe: $9e
	ld   [bc], a                                     ; $5dbf: $02
	ld   a, a                                        ; $5dc0: $7f
	ld   [hl], c                                     ; $5dc1: $71
	ld   [hl], h                                     ; $5dc2: $74
	ld   h, l                                        ; $5dc3: $65
	adc  h                                           ; $5dc4: $8c
	ld   [hl], c                                     ; $5dc5: $71
	ld   l, l                                        ; $5dc6: $6d
	rst  $38                                         ; $5dc7: $ff
	rst  $38                                         ; $5dc8: $ff
	dec  c                                           ; $5dc9: $0d
	ld   a, b                                        ; $5dca: $78
	and  c                                           ; $5dcb: $a1
	ld   l, [hl]                                     ; $5dcc: $6e
	ld   e, c                                        ; $5dcd: $59
	rst  $38                                         ; $5dce: $ff
	rst  $38                                         ; $5dcf: $ff
	sub  b                                           ; $5dd0: $90
	ld   a, h                                        ; $5dd1: $7c
	ld   h, a                                        ; $5dd2: $67
	ld   h, d                                        ; $5dd3: $62
	ld   e, l                                        ; $5dd4: $5d
	dec  c                                           ; $5dd5: $0d
	inc  bc                                          ; $5dd6: $03
	ld   hl, sp+$71                                  ; $5dd7: $f8 $71
	ld   [hl], h                                     ; $5dd9: $74
	sbc  c                                           ; $5dda: $99
	adc  l                                           ; $5ddb: $8d
	ld   l, l                                        ; $5ddc: $6d
	ld   d, d                                        ; $5ddd: $52
	rst  $38                                         ; $5dde: $ff
	rst  $38                                         ; $5ddf: $ff
	rst  $38                                         ; $5de0: $ff
	rst  $38                                         ; $5de1: $ff
	dec  c                                           ; $5de2: $0d
	nop                                              ; $5de3: $00
	ld   a, [bc]                                     ; $5de4: $0a
	nop                                              ; $5de5: $00
	dec  c                                           ; $5de6: $0d
	ld   [bc], a                                     ; $5de7: $02
	rlca                                             ; $5de8: $07
	ld   bc, $7150                                   ; $5de9: $01 $50 $71
	sbc  [hl]                                        ; $5dec: $9e
	ld   h, a                                        ; $5ded: $67
	adc  l                                           ; $5dee: $8d
	sbc  d                                           ; $5def: $9a
	ld   h, e                                        ; $5df0: $63
	and  c                                           ; $5df1: $a1
	rst  $38                                         ; $5df2: $ff
	rst  $38                                         ; $5df3: $ff
	dec  c                                           ; $5df4: $0d
	nop                                              ; $5df5: $00
	ld   a, [bc]                                     ; $5df6: $0a
	rrca                                             ; $5df7: $0f
	ld   [bc], a                                     ; $5df8: $02
	rlca                                             ; $5df9: $07
	ld   bc, $ffff                                   ; $5dfa: $01 $ff $ff
	rst  $38                                         ; $5dfd: $ff
	rst  $38                                         ; $5dfe: $ff
	rst  $38                                         ; $5dff: $ff
	rst  $38                                         ; $5e00: $ff
	rst  $38                                         ; $5e01: $ff
	rst  $38                                         ; $5e02: $ff
	rst  $38                                         ; $5e03: $ff
	rst  $38                                         ; $5e04: $ff
	rst  $38                                         ; $5e05: $ff
	rst  $38                                         ; $5e06: $ff
	rst  $38                                         ; $5e07: $ff
	rst  $38                                         ; $5e08: $ff
	dec  c                                           ; $5e09: $0d
	rst  $38                                         ; $5e0a: $ff
	rst  $38                                         ; $5e0b: $ff
	rst  $38                                         ; $5e0c: $ff
	rst  $38                                         ; $5e0d: $ff
	rst  $38                                         ; $5e0e: $ff
	dec  c                                           ; $5e0f: $0d
	nop                                              ; $5e10: $00
	ld   a, [bc]                                     ; $5e11: $0a
	dec  c                                           ; $5e12: $0d
	nop                                              ; $5e13: $00
	nop                                              ; $5e14: $00
	rrca                                             ; $5e15: $0f
	nop                                              ; $5e16: $00
	ld   bc, $4005                                   ; $5e17: $01 $05 $40
	ld   c, a                                        ; $5e1a: $4f
	ld   bc, $0000                                   ; $5e1b: $01 $00 $00
	ld   bc, $ffff                                   ; $5e1e: $01 $ff $ff
	ld   e, b                                        ; $5e21: $58
	sbc  [hl]                                        ; $5e22: $9e
	inc  bc                                          ; $5e23: $03
	ld   hl, sp+$71                                  ; $5e24: $f8 $71
	ld   [hl], h                                     ; $5e26: $74
	sbc  c                                           ; $5e27: $99
	rst  $38                                         ; $5e28: $ff
	rst  $38                                         ; $5e29: $ff
	rst  $38                                         ; $5e2a: $ff
	rst  $38                                         ; $5e2b: $ff
	dec  c                                           ; $5e2c: $0d
	nop                                              ; $5e2d: $00
	ld   a, [bc]                                     ; $5e2e: $0a
	nop                                              ; $5e2f: $00
	nop                                              ; $5e30: $00
	inc  bc                                          ; $5e31: $03
	ld   c, [hl]                                     ; $5e32: $4e
	ld   [bc], a                                     ; $5e33: $02
	nop                                              ; $5e34: $00
	inc  bc                                          ; $5e35: $03
	ld   c, b                                        ; $5e36: $48
	add  hl, hl                                      ; $5e37: $29
	add  hl, hl                                      ; $5e38: $29
	ld   bc, $2501                                   ; $5e39: $01 $01 $25
	nop                                              ; $5e3c: $00
	rrca                                             ; $5e3d: $0f
	nop                                              ; $5e3e: $00
	ld   bc, $0702                                   ; $5e3f: $01 $02 $07
	ld   [hl+], a                                    ; $5e42: $22
	nop                                              ; $5e43: $00
	inc  bc                                          ; $5e44: $03
	ld   c, [hl]                                     ; $5e45: $4e
	ld   [bc], a                                     ; $5e46: $02
	nop                                              ; $5e47: $00
	inc  bc                                          ; $5e48: $03
	ld   c, b                                        ; $5e49: $48
	add  hl, hl                                      ; $5e4a: $29
	add  hl, hl                                      ; $5e4b: $29
	ld   bc, $2002                                   ; $5e4c: $01 $02 $20
	nop                                              ; $5e4f: $00
	rlca                                             ; $5e50: $07
	ld   l, b                                        ; $5e51: $68
	nop                                              ; $5e52: $00
	inc  bc                                          ; $5e53: $03
	ld   c, [hl]                                     ; $5e54: $4e
	ld   [bc], a                                     ; $5e55: $02
	nop                                              ; $5e56: $00
	inc  bc                                          ; $5e57: $03
	ld   c, b                                        ; $5e58: $48
	add  hl, hl                                      ; $5e59: $29
	add  hl, hl                                      ; $5e5a: $29
	ld   bc, $2001                                   ; $5e5b: $01 $01 $20
	nop                                              ; $5e5e: $00
	dec  c                                           ; $5e5f: $0d
	ld   bc, $0102                                   ; $5e60: $01 $02 $01
	ld   d, b                                        ; $5e63: $50
	ld   [hl], c                                     ; $5e64: $71
	sbc  [hl]                                        ; $5e65: $9e
	ld   h, e                                        ; $5e66: $63
	ld   e, l                                        ; $5e67: $5d
	sub  a                                           ; $5e68: $97
	ld   h, e                                        ; $5e69: $63
	and  c                                           ; $5e6a: $a1
	rst  $38                                         ; $5e6b: $ff
	rst  $38                                         ; $5e6c: $ff
	dec  c                                           ; $5e6d: $0d
	nop                                              ; $5e6e: $00
	ld   a, [bc]                                     ; $5e6f: $0a
	dec  c                                           ; $5e70: $0d
	nop                                              ; $5e71: $00
	nop                                              ; $5e72: $00
	dec  b                                           ; $5e73: $05
	ld   b, b                                        ; $5e74: $40
	ld   c, [hl]                                     ; $5e75: $4e
	ld   bc, $0000                                   ; $5e76: $01 $00 $00
	ld   bc, $ffff                                   ; $5e79: $01 $ff $ff
	ld   d, d                                        ; $5e7c: $52
	sbc  [hl]                                        ; $5e7d: $9e
	ld   [bc], a                                     ; $5e7e: $02
	ld   a, a                                        ; $5e7f: $7f
	ld   [hl], c                                     ; $5e80: $71
	ld   [hl], h                                     ; $5e81: $74
	ld   h, l                                        ; $5e82: $65
	adc  h                                           ; $5e83: $8c
	ld   [hl], c                                     ; $5e84: $71
	ld   l, l                                        ; $5e85: $6d
	rst  $38                                         ; $5e86: $ff
	rst  $38                                         ; $5e87: $ff
	dec  c                                           ; $5e88: $0d
	ld   a, b                                        ; $5e89: $78
	and  c                                           ; $5e8a: $a1
	ld   l, [hl]                                     ; $5e8b: $6e
	ld   e, c                                        ; $5e8c: $59
	rst  $38                                         ; $5e8d: $ff
	rst  $38                                         ; $5e8e: $ff
	sub  b                                           ; $5e8f: $90
	ld   a, h                                        ; $5e90: $7c
	ld   h, a                                        ; $5e91: $67
	ld   h, d                                        ; $5e92: $62
	ld   e, l                                        ; $5e93: $5d
	dec  c                                           ; $5e94: $0d
	inc  bc                                          ; $5e95: $03
	ld   hl, sp+$71                                  ; $5e96: $f8 $71
	ld   [hl], h                                     ; $5e98: $74
	sbc  c                                           ; $5e99: $99
	adc  l                                           ; $5e9a: $8d
	ld   l, l                                        ; $5e9b: $6d
	ld   d, d                                        ; $5e9c: $52
	rst  $38                                         ; $5e9d: $ff
	rst  $38                                         ; $5e9e: $ff
	rst  $38                                         ; $5e9f: $ff
	rst  $38                                         ; $5ea0: $ff
	dec  c                                           ; $5ea1: $0d
	nop                                              ; $5ea2: $00
	ld   a, [bc]                                     ; $5ea3: $0a
	nop                                              ; $5ea4: $00
	dec  c                                           ; $5ea5: $0d
	ld   bc, $0106                                   ; $5ea6: $01 $06 $01
	ld   d, b                                        ; $5ea9: $50
	ld   [hl], c                                     ; $5eaa: $71
	sbc  [hl]                                        ; $5eab: $9e
	ld   h, e                                        ; $5eac: $63
	ld   e, l                                        ; $5ead: $5d
	sub  a                                           ; $5eae: $97
	ld   h, e                                        ; $5eaf: $63
	and  c                                           ; $5eb0: $a1
	rst  $38                                         ; $5eb1: $ff
	rst  $38                                         ; $5eb2: $ff
	dec  c                                           ; $5eb3: $0d
	nop                                              ; $5eb4: $00
	ld   a, [bc]                                     ; $5eb5: $0a
	inc  e                                           ; $5eb6: $1c
	ld   bc, $0707                                   ; $5eb7: $01 $07 $07
	ld   bc, $ff50                                   ; $5eba: $01 $50 $ff
	rst  $38                                         ; $5ebd: $ff
	ld   [$6300], sp                                 ; $5ebe: $08 $00 $63
	and  c                                           ; $5ec1: $a1
	rst  $38                                         ; $5ec2: $ff
	rst  $38                                         ; $5ec3: $ff
	dec  c                                           ; $5ec4: $0d
	rst  $38                                         ; $5ec5: $ff
	rst  $38                                         ; $5ec6: $ff
	rst  $38                                         ; $5ec7: $ff
	rst  $38                                         ; $5ec8: $ff
	rst  $38                                         ; $5ec9: $ff
	dec  c                                           ; $5eca: $0d
	nop                                              ; $5ecb: $00
	ld   a, [bc]                                     ; $5ecc: $0a
	dec  c                                           ; $5ecd: $0d
	nop                                              ; $5ece: $00
	nop                                              ; $5ecf: $00
	rrca                                             ; $5ed0: $0f
	nop                                              ; $5ed1: $00
	ld   bc, $4005                                   ; $5ed2: $01 $05 $40
	ld   c, [hl]                                     ; $5ed5: $4e
	ld   bc, $0000                                   ; $5ed6: $01 $00 $00
	ld   bc, $ffff                                   ; $5ed9: $01 $ff $ff
	ld   h, e                                        ; $5edc: $63
	ld   e, l                                        ; $5edd: $5d
	sub  a                                           ; $5ede: $97
	ld   h, e                                        ; $5edf: $63
	and  c                                           ; $5ee0: $a1
	rst  $38                                         ; $5ee1: $ff
	rst  $38                                         ; $5ee2: $ff
	dec  c                                           ; $5ee3: $0d
	inc  bc                                          ; $5ee4: $03
	ld   hl, sp+$71                                  ; $5ee5: $f8 $71
	ld   [hl], h                                     ; $5ee7: $74
	sbc  c                                           ; $5ee8: $99
	ld   l, h                                        ; $5ee9: $6c
	rst  $38                                         ; $5eea: $ff
	rst  $38                                         ; $5eeb: $ff
	rst  $38                                         ; $5eec: $ff
	rst  $38                                         ; $5eed: $ff
	dec  c                                           ; $5eee: $0d
	nop                                              ; $5eef: $00
	ld   a, [bc]                                     ; $5ef0: $0a
	nop                                              ; $5ef1: $00
	nop                                              ; $5ef2: $00
	inc  bc                                          ; $5ef3: $03
	ld   d, b                                        ; $5ef4: $50
	ld   [bc], a                                     ; $5ef5: $02
	nop                                              ; $5ef6: $00
	inc  bc                                          ; $5ef7: $03
	ld   c, d                                        ; $5ef8: $4a
	add  hl, hl                                      ; $5ef9: $29
	add  hl, hl                                      ; $5efa: $29
	ld   bc, $2501                                   ; $5efb: $01 $01 $25
	nop                                              ; $5efe: $00
	rrca                                             ; $5eff: $0f
	nop                                              ; $5f00: $00
	ld   bc, $0702                                   ; $5f01: $01 $02 $07
	ld   [hl+], a                                    ; $5f04: $22
	nop                                              ; $5f05: $00
	inc  bc                                          ; $5f06: $03
	ld   d, b                                        ; $5f07: $50
	ld   [bc], a                                     ; $5f08: $02
	nop                                              ; $5f09: $00
	inc  bc                                          ; $5f0a: $03
	ld   c, d                                        ; $5f0b: $4a
	add  hl, hl                                      ; $5f0c: $29
	add  hl, hl                                      ; $5f0d: $29
	ld   bc, $2002                                   ; $5f0e: $01 $02 $20
	nop                                              ; $5f11: $00
	rlca                                             ; $5f12: $07
	ld   l, b                                        ; $5f13: $68
	nop                                              ; $5f14: $00
	inc  bc                                          ; $5f15: $03
	ld   d, b                                        ; $5f16: $50
	ld   [bc], a                                     ; $5f17: $02
	nop                                              ; $5f18: $00
	inc  bc                                          ; $5f19: $03
	ld   c, d                                        ; $5f1a: $4a
	add  hl, hl                                      ; $5f1b: $29
	add  hl, hl                                      ; $5f1c: $29
	ld   bc, $2001                                   ; $5f1d: $01 $01 $20
	nop                                              ; $5f20: $00
	dec  c                                           ; $5f21: $0d
	inc  bc                                          ; $5f22: $03
	ld   b, $01                                      ; $5f23: $06 $01
	ld   d, b                                        ; $5f25: $50
	ld   [hl], c                                     ; $5f26: $71
	sbc  [hl]                                        ; $5f27: $9e
	rst  JumpTable                                         ; $5f28: $df
	db   $ec                                         ; $5f29: $ec
	and  e                                           ; $5f2a: $a3
	ld   h, e                                        ; $5f2b: $63
	and  c                                           ; $5f2c: $a1
	rst  $38                                         ; $5f2d: $ff
	rst  $38                                         ; $5f2e: $ff
	dec  c                                           ; $5f2f: $0d
	nop                                              ; $5f30: $00
	ld   a, [bc]                                     ; $5f31: $0a
	dec  c                                           ; $5f32: $0d
	nop                                              ; $5f33: $00
	nop                                              ; $5f34: $00
	dec  b                                           ; $5f35: $05
	ld   b, b                                        ; $5f36: $40
	ld   d, b                                        ; $5f37: $50
	ld   bc, $0000                                   ; $5f38: $01 $00 $00
	ld   bc, $ffff                                   ; $5f3b: $01 $ff $ff
	ld   d, d                                        ; $5f3e: $52
	sbc  [hl]                                        ; $5f3f: $9e
	ld   [bc], a                                     ; $5f40: $02
	ld   a, a                                        ; $5f41: $7f
	ld   [hl], c                                     ; $5f42: $71
	ld   [hl], h                                     ; $5f43: $74
	ld   h, l                                        ; $5f44: $65
	adc  h                                           ; $5f45: $8c
	ld   [hl], c                                     ; $5f46: $71
	ld   l, l                                        ; $5f47: $6d
	rst  $38                                         ; $5f48: $ff
	rst  $38                                         ; $5f49: $ff
	dec  c                                           ; $5f4a: $0d
	ld   a, b                                        ; $5f4b: $78
	and  c                                           ; $5f4c: $a1
	ld   l, [hl]                                     ; $5f4d: $6e
	ld   e, c                                        ; $5f4e: $59
	rst  $38                                         ; $5f4f: $ff
	rst  $38                                         ; $5f50: $ff
	sub  b                                           ; $5f51: $90
	ld   a, h                                        ; $5f52: $7c
	ld   h, a                                        ; $5f53: $67
	ld   h, d                                        ; $5f54: $62
	ld   e, l                                        ; $5f55: $5d
	dec  c                                           ; $5f56: $0d
	inc  bc                                          ; $5f57: $03
	ld   hl, sp+$71                                  ; $5f58: $f8 $71
	ld   [hl], h                                     ; $5f5a: $74
	sbc  c                                           ; $5f5b: $99
	adc  l                                           ; $5f5c: $8d
	ld   l, l                                        ; $5f5d: $6d
	ld   d, d                                        ; $5f5e: $52
	rst  $38                                         ; $5f5f: $ff
	rst  $38                                         ; $5f60: $ff
	rst  $38                                         ; $5f61: $ff
	rst  $38                                         ; $5f62: $ff
	dec  c                                           ; $5f63: $0d
	nop                                              ; $5f64: $00
	ld   a, [bc]                                     ; $5f65: $0a
	nop                                              ; $5f66: $00
	dec  c                                           ; $5f67: $0d
	inc  bc                                          ; $5f68: $03
	dec  b                                           ; $5f69: $05
	ld   bc, $7150                                   ; $5f6a: $01 $50 $71
	sbc  [hl]                                        ; $5f6d: $9e
	rst  JumpTable                                         ; $5f6e: $df
	db   $ec                                         ; $5f6f: $ec
	and  e                                           ; $5f70: $a3
	ld   h, e                                        ; $5f71: $63
	and  c                                           ; $5f72: $a1
	rst  $38                                         ; $5f73: $ff
	rst  $38                                         ; $5f74: $ff
	dec  c                                           ; $5f75: $0d
	nop                                              ; $5f76: $00
	ld   a, [bc]                                     ; $5f77: $0a
	inc  e                                           ; $5f78: $1c
	inc  bc                                          ; $5f79: $03
	inc  b                                           ; $5f7a: $04
	inc  b                                           ; $5f7b: $04
	ld   bc, $f9a1                                   ; $5f7c: $01 $a1 $f9
	db   $10                                         ; $5f7f: $10
	rst  $38                                         ; $5f80: $ff
	rst  $38                                         ; $5f81: $ff
	rst  $38                                         ; $5f82: $ff
	rst  $38                                         ; $5f83: $ff
	dec  c                                           ; $5f84: $0d
	rst  $38                                         ; $5f85: $ff
	rst  $38                                         ; $5f86: $ff
	rst  $38                                         ; $5f87: $ff
	rst  $38                                         ; $5f88: $ff
	rst  $38                                         ; $5f89: $ff
	dec  c                                           ; $5f8a: $0d
	nop                                              ; $5f8b: $00
	ld   a, [bc]                                     ; $5f8c: $0a
	dec  c                                           ; $5f8d: $0d
	nop                                              ; $5f8e: $00
	nop                                              ; $5f8f: $00
	rrca                                             ; $5f90: $0f
	nop                                              ; $5f91: $00
	ld   bc, $4005                                   ; $5f92: $01 $05 $40
	ld   d, b                                        ; $5f95: $50
	ld   bc, $0000                                   ; $5f96: $01 $00 $00
	ld   bc, $ffff                                   ; $5f99: $01 $ff $ff
	rst  JumpTable                                         ; $5f9c: $df
	db   $ec                                         ; $5f9d: $ec
	and  e                                           ; $5f9e: $a3
	ld   h, e                                        ; $5f9f: $63
	and  c                                           ; $5fa0: $a1
	rst  $38                                         ; $5fa1: $ff
	rst  $38                                         ; $5fa2: $ff
	dec  c                                           ; $5fa3: $0d
	inc  bc                                          ; $5fa4: $03
	ld   hl, sp+$71                                  ; $5fa5: $f8 $71
	ld   [hl], h                                     ; $5fa7: $74
	sbc  c                                           ; $5fa8: $99
	ld   l, h                                        ; $5fa9: $6c
	rst  $38                                         ; $5faa: $ff
	rst  $38                                         ; $5fab: $ff
	rst  $38                                         ; $5fac: $ff
	rst  $38                                         ; $5fad: $ff
	dec  c                                           ; $5fae: $0d
	nop                                              ; $5faf: $00
	ld   a, [bc]                                     ; $5fb0: $0a
	nop                                              ; $5fb1: $00
	nop                                              ; $5fb2: $00
	inc  bc                                          ; $5fb3: $03
	ld   d, d                                        ; $5fb4: $52
	ld   [bc], a                                     ; $5fb5: $02
	nop                                              ; $5fb6: $00
	inc  bc                                          ; $5fb7: $03
	ld   c, h                                        ; $5fb8: $4c
	add  hl, hl                                      ; $5fb9: $29
	add  hl, hl                                      ; $5fba: $29
	ld   bc, $2501                                   ; $5fbb: $01 $01 $25
	nop                                              ; $5fbe: $00
	rrca                                             ; $5fbf: $0f
	nop                                              ; $5fc0: $00
	ld   bc, $0702                                   ; $5fc1: $01 $02 $07
	ld   [hl+], a                                    ; $5fc4: $22
	nop                                              ; $5fc5: $00
	inc  bc                                          ; $5fc6: $03
	ld   d, d                                        ; $5fc7: $52
	ld   [bc], a                                     ; $5fc8: $02
	nop                                              ; $5fc9: $00
	inc  bc                                          ; $5fca: $03
	ld   c, h                                        ; $5fcb: $4c
	add  hl, hl                                      ; $5fcc: $29
	add  hl, hl                                      ; $5fcd: $29
	ld   bc, $2002                                   ; $5fce: $01 $02 $20
	nop                                              ; $5fd1: $00
	rlca                                             ; $5fd2: $07
	ld   l, c                                        ; $5fd3: $69
	nop                                              ; $5fd4: $00
	inc  bc                                          ; $5fd5: $03
	ld   d, d                                        ; $5fd6: $52
	ld   [bc], a                                     ; $5fd7: $02
	nop                                              ; $5fd8: $00
	inc  bc                                          ; $5fd9: $03
	ld   c, h                                        ; $5fda: $4c
	add  hl, hl                                      ; $5fdb: $29
	add  hl, hl                                      ; $5fdc: $29
	ld   bc, $2001                                   ; $5fdd: $01 $01 $20
	nop                                              ; $5fe0: $00
	dec  c                                           ; $5fe1: $0d
	dec  b                                           ; $5fe2: $05
	rlca                                             ; $5fe3: $07
	ld   bc, $7150                                   ; $5fe4: $01 $50 $71
	sbc  [hl]                                        ; $5fe7: $9e
	ld   [bc], a                                     ; $5fe8: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5fe9: $cf
	dec  b                                           ; $5fea: $05
	ld   a, [de]                                     ; $5feb: $1a
	ld   h, e                                        ; $5fec: $63
	and  c                                           ; $5fed: $a1
	rst  $38                                         ; $5fee: $ff
	rst  $38                                         ; $5fef: $ff
	dec  c                                           ; $5ff0: $0d
	nop                                              ; $5ff1: $00
	ld   a, [bc]                                     ; $5ff2: $0a
	dec  c                                           ; $5ff3: $0d
	nop                                              ; $5ff4: $00
	nop                                              ; $5ff5: $00
	dec  b                                           ; $5ff6: $05
	ld   b, b                                        ; $5ff7: $40
	ld   d, d                                        ; $5ff8: $52
	ld   bc, $0000                                   ; $5ff9: $01 $00 $00
	ld   bc, $ffff                                   ; $5ffc: $01 $ff $ff
	ld   d, d                                        ; $5fff: $52
	sbc  [hl]                                        ; $6000: $9e
	ld   [bc], a                                     ; $6001: $02
	ld   a, a                                        ; $6002: $7f
	ld   [hl], c                                     ; $6003: $71
	ld   [hl], h                                     ; $6004: $74
	ld   h, l                                        ; $6005: $65
	adc  h                                           ; $6006: $8c
	ld   [hl], c                                     ; $6007: $71
	ld   l, l                                        ; $6008: $6d
	rst  $38                                         ; $6009: $ff
	rst  $38                                         ; $600a: $ff
	dec  c                                           ; $600b: $0d
	ld   a, b                                        ; $600c: $78
	and  c                                           ; $600d: $a1
	ld   l, [hl]                                     ; $600e: $6e
	ld   e, c                                        ; $600f: $59
	rst  $38                                         ; $6010: $ff
	rst  $38                                         ; $6011: $ff
	sub  b                                           ; $6012: $90
	ld   a, h                                        ; $6013: $7c
	ld   h, a                                        ; $6014: $67
	ld   h, d                                        ; $6015: $62
	ld   e, l                                        ; $6016: $5d
	dec  c                                           ; $6017: $0d
	inc  bc                                          ; $6018: $03
	ld   hl, sp+$71                                  ; $6019: $f8 $71
	ld   [hl], h                                     ; $601b: $74
	sbc  c                                           ; $601c: $99
	adc  l                                           ; $601d: $8d
	ld   l, l                                        ; $601e: $6d
	ld   d, d                                        ; $601f: $52
	rst  $38                                         ; $6020: $ff
	rst  $38                                         ; $6021: $ff
	rst  $38                                         ; $6022: $ff
	rst  $38                                         ; $6023: $ff
	dec  c                                           ; $6024: $0d
	nop                                              ; $6025: $00
	ld   a, [bc]                                     ; $6026: $0a
	nop                                              ; $6027: $00
	dec  c                                           ; $6028: $0d
	dec  b                                           ; $6029: $05
	ld   b, $01                                      ; $602a: $06 $01
	ld   d, b                                        ; $602c: $50
	ld   [hl], c                                     ; $602d: $71
	sbc  [hl]                                        ; $602e: $9e
	ld   [bc], a                                     ; $602f: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6030: $cf
	dec  b                                           ; $6031: $05
	ld   a, [de]                                     ; $6032: $1a
	ld   h, e                                        ; $6033: $63
	and  c                                           ; $6034: $a1
	rst  $38                                         ; $6035: $ff
	rst  $38                                         ; $6036: $ff
	dec  c                                           ; $6037: $0d
	nop                                              ; $6038: $00
	ld   a, [bc]                                     ; $6039: $0a
	inc  e                                           ; $603a: $1c
	dec  b                                           ; $603b: $05
	ld   [bc], a                                     ; $603c: $02
	ld   [bc], a                                     ; $603d: $02
	ld   bc, $ff50                                   ; $603e: $01 $50 $ff
	rst  $38                                         ; $6041: $ff
	ld   [$7d00], sp                                 ; $6042: $08 $00 $7d
	and  c                                           ; $6045: $a1
	rst  $38                                         ; $6046: $ff
	rst  $38                                         ; $6047: $ff
	dec  c                                           ; $6048: $0d
	rst  $38                                         ; $6049: $ff
	rst  $38                                         ; $604a: $ff
	rst  $38                                         ; $604b: $ff
	rst  $38                                         ; $604c: $ff
	rst  $38                                         ; $604d: $ff
	dec  c                                           ; $604e: $0d
	nop                                              ; $604f: $00
	ld   a, [bc]                                     ; $6050: $0a
	dec  c                                           ; $6051: $0d
	nop                                              ; $6052: $00
	nop                                              ; $6053: $00
	rrca                                             ; $6054: $0f
	nop                                              ; $6055: $00
	ld   bc, $4005                                   ; $6056: $01 $05 $40
	ld   d, d                                        ; $6059: $52
	ld   bc, $0000                                   ; $605a: $01 $00 $00
	ld   bc, $ffff                                   ; $605d: $01 $ff $ff
	ld   [bc], a                                     ; $6060: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6061: $cf
	dec  b                                           ; $6062: $05
	ld   a, [de]                                     ; $6063: $1a
	ld   h, e                                        ; $6064: $63
	and  c                                           ; $6065: $a1
	rst  $38                                         ; $6066: $ff
	rst  $38                                         ; $6067: $ff
	dec  c                                           ; $6068: $0d
	inc  bc                                          ; $6069: $03
	ld   hl, sp+$71                                  ; $606a: $f8 $71
	ld   [hl], h                                     ; $606c: $74
	sbc  c                                           ; $606d: $99
	ld   l, h                                        ; $606e: $6c
	rst  $38                                         ; $606f: $ff
	rst  $38                                         ; $6070: $ff
	rst  $38                                         ; $6071: $ff
	rst  $38                                         ; $6072: $ff
	dec  c                                           ; $6073: $0d
	nop                                              ; $6074: $00
	ld   a, [bc]                                     ; $6075: $0a
	nop                                              ; $6076: $00
	nop                                              ; $6077: $00
	inc  bc                                          ; $6078: $03
	ld   d, e                                        ; $6079: $53
	ld   [bc], a                                     ; $607a: $02
	nop                                              ; $607b: $00
	inc  bc                                          ; $607c: $03
	ld   c, l                                        ; $607d: $4d
	add  hl, hl                                      ; $607e: $29
	add  hl, hl                                      ; $607f: $29
	ld   bc, $2501                                   ; $6080: $01 $01 $25
	nop                                              ; $6083: $00
	rrca                                             ; $6084: $0f
	nop                                              ; $6085: $00
	ld   bc, $0702                                   ; $6086: $01 $02 $07
	ld   [hl+], a                                    ; $6089: $22
	nop                                              ; $608a: $00
	inc  bc                                          ; $608b: $03
	ld   d, e                                        ; $608c: $53
	ld   [bc], a                                     ; $608d: $02
	nop                                              ; $608e: $00
	inc  bc                                          ; $608f: $03
	ld   c, l                                        ; $6090: $4d
	add  hl, hl                                      ; $6091: $29
	add  hl, hl                                      ; $6092: $29
	ld   bc, $2002                                   ; $6093: $01 $02 $20
	nop                                              ; $6096: $00
	rlca                                             ; $6097: $07
	ld   l, b                                        ; $6098: $68
	nop                                              ; $6099: $00
	inc  bc                                          ; $609a: $03
	ld   d, e                                        ; $609b: $53
	ld   [bc], a                                     ; $609c: $02
	nop                                              ; $609d: $00
	inc  bc                                          ; $609e: $03
	ld   c, l                                        ; $609f: $4d
	add  hl, hl                                      ; $60a0: $29
	add  hl, hl                                      ; $60a1: $29
	ld   bc, $2001                                   ; $60a2: $01 $01 $20
	nop                                              ; $60a5: $00
	dec  c                                           ; $60a6: $0d
	ld   b, $02                                      ; $60a7: $06 $02
	ld   bc, $7150                                   ; $60a9: $01 $50 $71
	sbc  [hl]                                        ; $60ac: $9e
	xor  h                                           ; $60ad: $ac
	push af                                          ; $60ae: $f5
	bit  4, e                                        ; $60af: $cb $63
	and  c                                           ; $60b1: $a1
	rst  $38                                         ; $60b2: $ff
	rst  $38                                         ; $60b3: $ff
	dec  c                                           ; $60b4: $0d
	nop                                              ; $60b5: $00
	ld   a, [bc]                                     ; $60b6: $0a
	dec  c                                           ; $60b7: $0d
	nop                                              ; $60b8: $00
	nop                                              ; $60b9: $00
	dec  b                                           ; $60ba: $05
	ld   b, b                                        ; $60bb: $40
	ld   d, e                                        ; $60bc: $53
	ld   bc, $0000                                   ; $60bd: $01 $00 $00
	ld   bc, $ffff                                   ; $60c0: $01 $ff $ff
	ld   d, d                                        ; $60c3: $52
	sbc  [hl]                                        ; $60c4: $9e
	ld   [bc], a                                     ; $60c5: $02
	ld   a, a                                        ; $60c6: $7f
	ld   [hl], c                                     ; $60c7: $71
	ld   [hl], h                                     ; $60c8: $74
	ld   h, l                                        ; $60c9: $65
	adc  h                                           ; $60ca: $8c
	ld   [hl], c                                     ; $60cb: $71
	ld   l, l                                        ; $60cc: $6d
	rst  $38                                         ; $60cd: $ff
	rst  $38                                         ; $60ce: $ff
	dec  c                                           ; $60cf: $0d
	ld   a, b                                        ; $60d0: $78
	and  c                                           ; $60d1: $a1
	ld   l, [hl]                                     ; $60d2: $6e
	ld   e, c                                        ; $60d3: $59
	rst  $38                                         ; $60d4: $ff
	rst  $38                                         ; $60d5: $ff
	sub  b                                           ; $60d6: $90
	ld   a, h                                        ; $60d7: $7c
	ld   h, a                                        ; $60d8: $67
	ld   h, d                                        ; $60d9: $62
	ld   e, l                                        ; $60da: $5d
	dec  c                                           ; $60db: $0d
	inc  bc                                          ; $60dc: $03
	ld   hl, sp+$71                                  ; $60dd: $f8 $71
	ld   [hl], h                                     ; $60df: $74
	sbc  c                                           ; $60e0: $99
	adc  l                                           ; $60e1: $8d
	ld   l, l                                        ; $60e2: $6d
	ld   d, d                                        ; $60e3: $52
	rst  $38                                         ; $60e4: $ff
	rst  $38                                         ; $60e5: $ff
	rst  $38                                         ; $60e6: $ff
	rst  $38                                         ; $60e7: $ff
	dec  c                                           ; $60e8: $0d
	nop                                              ; $60e9: $00
	ld   a, [bc]                                     ; $60ea: $0a
	nop                                              ; $60eb: $00
	dec  c                                           ; $60ec: $0d
	ld   b, $06                                      ; $60ed: $06 $06
	ld   bc, $7150                                   ; $60ef: $01 $50 $71
	sbc  [hl]                                        ; $60f2: $9e
	xor  h                                           ; $60f3: $ac
	push af                                          ; $60f4: $f5
	bit  4, e                                        ; $60f5: $cb $63
	and  c                                           ; $60f7: $a1
	rst  $38                                         ; $60f8: $ff
	rst  $38                                         ; $60f9: $ff
	dec  c                                           ; $60fa: $0d
	nop                                              ; $60fb: $00
	ld   a, [bc]                                     ; $60fc: $0a
	inc  e                                           ; $60fd: $1c
	ld   b, $05                                      ; $60fe: $06 $05
	dec  b                                           ; $6100: $05
	ld   bc, $f9a1                                   ; $6101: $01 $a1 $f9
	db   $10                                         ; $6104: $10
	rst  $38                                         ; $6105: $ff
	rst  $38                                         ; $6106: $ff
	ld   [$ff00], sp                                 ; $6107: $08 $00 $ff
	rst  $38                                         ; $610a: $ff
	dec  c                                           ; $610b: $0d
	rst  $38                                         ; $610c: $ff
	rst  $38                                         ; $610d: $ff
	rst  $38                                         ; $610e: $ff
	rst  $38                                         ; $610f: $ff
	rst  $38                                         ; $6110: $ff
	dec  c                                           ; $6111: $0d
	nop                                              ; $6112: $00
	ld   a, [bc]                                     ; $6113: $0a
	dec  c                                           ; $6114: $0d
	nop                                              ; $6115: $00
	nop                                              ; $6116: $00
	rrca                                             ; $6117: $0f
	nop                                              ; $6118: $00
	ld   bc, $4005                                   ; $6119: $01 $05 $40
	ld   d, e                                        ; $611c: $53
	ld   bc, $0000                                   ; $611d: $01 $00 $00
	ld   bc, $ffff                                   ; $6120: $01 $ff $ff
	xor  h                                           ; $6123: $ac
	push af                                          ; $6124: $f5
	bit  4, e                                        ; $6125: $cb $63
	and  c                                           ; $6127: $a1
	rst  $38                                         ; $6128: $ff
	rst  $38                                         ; $6129: $ff
	dec  c                                           ; $612a: $0d
	inc  bc                                          ; $612b: $03
	ld   hl, sp+$71                                  ; $612c: $f8 $71
	ld   [hl], h                                     ; $612e: $74
	sbc  c                                           ; $612f: $99
	ld   l, h                                        ; $6130: $6c
	rst  $38                                         ; $6131: $ff
	rst  $38                                         ; $6132: $ff
	rst  $38                                         ; $6133: $ff
	rst  $38                                         ; $6134: $ff
	dec  c                                           ; $6135: $0d
	nop                                              ; $6136: $00
	ld   a, [bc]                                     ; $6137: $0a
	nop                                              ; $6138: $00
	nop                                              ; $6139: $00
	inc  bc                                          ; $613a: $03
	ld   d, c                                        ; $613b: $51
	ld   [bc], a                                     ; $613c: $02
	nop                                              ; $613d: $00
	inc  bc                                          ; $613e: $03
	ld   c, e                                        ; $613f: $4b
	add  hl, hl                                      ; $6140: $29
	add  hl, hl                                      ; $6141: $29
	ld   bc, $2501                                   ; $6142: $01 $01 $25
	nop                                              ; $6145: $00
	rrca                                             ; $6146: $0f
	nop                                              ; $6147: $00
	ld   bc, $0702                                   ; $6148: $01 $02 $07
	ld   [hl+], a                                    ; $614b: $22
	nop                                              ; $614c: $00
	inc  bc                                          ; $614d: $03
	ld   d, c                                        ; $614e: $51
	ld   [bc], a                                     ; $614f: $02
	nop                                              ; $6150: $00
	inc  bc                                          ; $6151: $03
	ld   c, e                                        ; $6152: $4b
	add  hl, hl                                      ; $6153: $29
	add  hl, hl                                      ; $6154: $29
	ld   bc, $2002                                   ; $6155: $01 $02 $20
	nop                                              ; $6158: $00
	rlca                                             ; $6159: $07
	ld   h, a                                        ; $615a: $67
	nop                                              ; $615b: $00
	inc  bc                                          ; $615c: $03
	ld   d, c                                        ; $615d: $51
	ld   [bc], a                                     ; $615e: $02
	nop                                              ; $615f: $00
	inc  bc                                          ; $6160: $03
	ld   c, e                                        ; $6161: $4b
	add  hl, hl                                      ; $6162: $29
	add  hl, hl                                      ; $6163: $29
	ld   bc, $2001                                   ; $6164: $01 $01 $20
	nop                                              ; $6167: $00
	dec  c                                           ; $6168: $0d
	inc  b                                           ; $6169: $04
	ld   [bc], a                                     ; $616a: $02
	ld   bc, $7150                                   ; $616b: $01 $50 $71
	sbc  [hl]                                        ; $616e: $9e
	and  e                                           ; $616f: $a3
	and  l                                           ; $6170: $a5
	db   $ec                                         ; $6171: $ec
	cp   d                                           ; $6172: $ba
	rst  $38                                         ; $6173: $ff
	rst  $38                                         ; $6174: $ff
	dec  c                                           ; $6175: $0d
	nop                                              ; $6176: $00
	ld   a, [bc]                                     ; $6177: $0a
	dec  c                                           ; $6178: $0d
	nop                                              ; $6179: $00
	nop                                              ; $617a: $00
	dec  b                                           ; $617b: $05
	ld   b, b                                        ; $617c: $40
	ld   d, c                                        ; $617d: $51
	ld   bc, $0000                                   ; $617e: $01 $00 $00
	ld   bc, $ffff                                   ; $6181: $01 $ff $ff
	ld   d, d                                        ; $6184: $52
	sbc  [hl]                                        ; $6185: $9e
	ld   [bc], a                                     ; $6186: $02
	ld   a, a                                        ; $6187: $7f
	ld   [hl], c                                     ; $6188: $71
	ld   [hl], h                                     ; $6189: $74
	ld   h, l                                        ; $618a: $65
	adc  h                                           ; $618b: $8c
	ld   [hl], c                                     ; $618c: $71
	ld   l, l                                        ; $618d: $6d
	rst  $38                                         ; $618e: $ff
	rst  $38                                         ; $618f: $ff
	dec  c                                           ; $6190: $0d
	ld   a, b                                        ; $6191: $78
	and  c                                           ; $6192: $a1
	ld   l, [hl]                                     ; $6193: $6e
	ld   e, c                                        ; $6194: $59
	rst  $38                                         ; $6195: $ff
	rst  $38                                         ; $6196: $ff
	sub  b                                           ; $6197: $90
	ld   a, h                                        ; $6198: $7c
	ld   h, a                                        ; $6199: $67
	ld   h, d                                        ; $619a: $62
	ld   e, l                                        ; $619b: $5d
	dec  c                                           ; $619c: $0d
	inc  bc                                          ; $619d: $03
	ld   hl, sp+$71                                  ; $619e: $f8 $71
	ld   [hl], h                                     ; $61a0: $74
	sbc  c                                           ; $61a1: $99
	adc  l                                           ; $61a2: $8d
	ld   l, l                                        ; $61a3: $6d
	ld   d, d                                        ; $61a4: $52
	rst  $38                                         ; $61a5: $ff
	rst  $38                                         ; $61a6: $ff
	rst  $38                                         ; $61a7: $ff
	rst  $38                                         ; $61a8: $ff
	dec  c                                           ; $61a9: $0d
	nop                                              ; $61aa: $00
	ld   a, [bc]                                     ; $61ab: $0a
	nop                                              ; $61ac: $00
	dec  c                                           ; $61ad: $0d
	inc  b                                           ; $61ae: $04
	rlca                                             ; $61af: $07
	ld   bc, $7150                                   ; $61b0: $01 $50 $71
	sbc  [hl]                                        ; $61b3: $9e
	and  e                                           ; $61b4: $a3
	and  l                                           ; $61b5: $a5
	db   $ec                                         ; $61b6: $ec
	cp   d                                           ; $61b7: $ba
	rst  $38                                         ; $61b8: $ff
	rst  $38                                         ; $61b9: $ff
	dec  c                                           ; $61ba: $0d
	nop                                              ; $61bb: $00
	ld   a, [bc]                                     ; $61bc: $0a
	rrca                                             ; $61bd: $0f
	inc  b                                           ; $61be: $04
	rlca                                             ; $61bf: $07
	ld   bc, $ff50                                   ; $61c0: $01 $50 $ff
	rst  $38                                         ; $61c3: $ff
	rst  $38                                         ; $61c4: $ff
	rst  $38                                         ; $61c5: $ff
	dec  c                                           ; $61c6: $0d
	rst  $38                                         ; $61c7: $ff
	rst  $38                                         ; $61c8: $ff
	rst  $38                                         ; $61c9: $ff
	rst  $38                                         ; $61ca: $ff
	rst  $38                                         ; $61cb: $ff
	dec  c                                           ; $61cc: $0d
	nop                                              ; $61cd: $00
	ld   a, [bc]                                     ; $61ce: $0a
	dec  c                                           ; $61cf: $0d
	nop                                              ; $61d0: $00
	nop                                              ; $61d1: $00
	rrca                                             ; $61d2: $0f
	nop                                              ; $61d3: $00
	ld   bc, $4005                                   ; $61d4: $01 $05 $40
	ld   d, c                                        ; $61d7: $51
	ld   bc, $0000                                   ; $61d8: $01 $00 $00
	ld   bc, $ffff                                   ; $61db: $01 $ff $ff
	and  e                                           ; $61de: $a3
	and  l                                           ; $61df: $a5
	db   $ec                                         ; $61e0: $ec
	cp   d                                           ; $61e1: $ba
	rst  $38                                         ; $61e2: $ff
	rst  $38                                         ; $61e3: $ff
	dec  c                                           ; $61e4: $0d
	inc  bc                                          ; $61e5: $03
	ld   hl, sp+$71                                  ; $61e6: $f8 $71
	ld   [hl], h                                     ; $61e8: $74
	sbc  c                                           ; $61e9: $99
	ld   l, h                                        ; $61ea: $6c
	rst  $38                                         ; $61eb: $ff
	rst  $38                                         ; $61ec: $ff
	rst  $38                                         ; $61ed: $ff
	rst  $38                                         ; $61ee: $ff
	dec  c                                           ; $61ef: $0d
	nop                                              ; $61f0: $00
	ld   a, [bc]                                     ; $61f1: $0a
	nop                                              ; $61f2: $00
	nop                                              ; $61f3: $00
	ld   [bc], a                                     ; $61f4: $02
	nop                                              ; $61f5: $00
	ld   bc, $200e                                   ; $61f6: $01 $0e $20
	ld   [bc], a                                     ; $61f9: $02
	nop                                              ; $61fa: $00
	ld   bc, $201c                                   ; $61fb: $01 $1c $20
	dec  de                                          ; $61fe: $1b
	ld   [bc], a                                     ; $61ff: $02
	nop                                              ; $6200: $00
	inc  bc                                          ; $6201: $03
	ld   d, h                                        ; $6202: $54
	inc  hl                                          ; $6203: $23
	inc  e                                           ; $6204: $1c
	nop                                              ; $6205: $00



	ld   [bc], a                                     ; $6206: $02
	ld   l, $08                                      ; $6207: $2e $08
	nop                                              ; $6209: $00
	nop                                              ; $620a: $00

	
	ld   c, $41                                      ; $620b: $0e $41
	rrca                                             ; $620d: $0f
	nop                                              ; $620e: $00
	ld   bc, $1c02                                   ; $620f: $01 $02 $1c
	add  hl, bc                                      ; $6212: $09
	nop                                              ; $6213: $00
	nop                                              ; $6214: $00
	ld   bc, $0008                                   ; $6215: $01 $08 $00
	ld   e, l                                        ; $6218: $5d
	and  c                                           ; $6219: $a1
	ld   h, [hl]                                     ; $621a: $66
	sub  c                                           ; $621b: $91
	ld   a, b                                        ; $621c: $78
	ld   d, d                                        ; $621d: $52
	ld   e, c                                        ; $621e: $59
	sbc  a                                           ; $621f: $9f
	dec  c                                           ; $6220: $0d
	ld   a, b                                        ; $6221: $78
	ld   a, c                                        ; $6222: $79
	ld   e, c                                        ; $6223: $59
	inc  b                                           ; $6224: $04
	di                                               ; $6225: $f3
	ld   e, c                                        ; $6226: $59
	ld   d, d                                        ; $6227: $52
	ld   sp, hl                                      ; $6228: $f9
	dec  c                                           ; $6229: $0d
	nop                                              ; $622a: $00
	ld   a, [bc]                                     ; $622b: $0a
	add  hl, de                                      ; $622c: $19
	dec  b                                           ; $622d: $05
	ld   [bc], a                                     ; $622e: $02
	inc  b                                           ; $622f: $04
	ld   a, [bc]                                     ; $6230: $0a
	ld   [bc], a                                     ; $6231: $02
	nop                                              ; $6232: $00
	ld   e, c                                        ; $6233: $59
	sub  a                                           ; $6234: $97
	ld   a, h                                        ; $6235: $7c
	inc  b                                           ; $6236: $04
	ld   d, a                                        ; $6237: $57
	inc  b                                           ; $6238: $04
	ld   h, e                                        ; $6239: $63
	and  b                                           ; $623a: $a0
	ld   [bc], a                                     ; $623b: $02
	jp   nz, $005d                                   ; $623c: $c2 $5d $00

	nop                                              ; $623f: $00
	inc  bc                                          ; $6240: $03
	ld   l, l                                        ; $6241: $6d
	dec  b                                           ; $6242: $05
	add  hl, de                                      ; $6243: $19
	ld   a, h                                        ; $6244: $7c
	and  e                                           ; $6245: $a3
	jp   z, $a5d1                                    ; $6246: $ca $d1 $a5

	cp   d                                           ; $6249: $ba
	and  b                                           ; $624a: $a0
	ld   [bc], a                                     ; $624b: $02
	jp   nz, $005d                                   ; $624c: $c2 $5d $00

	ld   bc, $8b07                                   ; $624f: $01 $07 $8b
	ld   bc, $0302                                   ; $6252: $01 $02 $03
	ld   bc, $2000                                   ; $6255: $01 $00 $20
	nop                                              ; $6258: $00
	rlca                                             ; $6259: $07
	ld   c, c                                        ; $625a: $49
	ld   a, [bc]                                     ; $625b: $0a
	ld   [bc], a                                     ; $625c: $02
	inc  bc                                          ; $625d: $03
	ld   bc, $2001                                   ; $625e: $01 $01 $20
	nop                                              ; $6261: $00
	ld   b, $5a                                      ; $6262: $06 $5a
	nop                                              ; $6264: $00
	rrca                                             ; $6265: $0f
	nop                                              ; $6266: $00
	ld   bc, $5201                                   ; $6267: $01 $01 $52
	ld   d, [hl]                                     ; $626a: $56
	rst  $38                                         ; $626b: $ff
	rst  $38                                         ; $626c: $ff
	sbc  a                                           ; $626d: $9f
	dec  c                                           ; $626e: $0d
	halt                                             ; $626f: $76
	ld   e, l                                        ; $6270: $5d
	ld   a, c                                        ; $6271: $79
	inc  b                                           ; $6272: $04
	di                                               ; $6273: $f3
	ld   [bc], a                                     ; $6274: $02
	jp   $5276                                       ; $6275: $c3 $76 $52


	ld   d, h                                        ; $6278: $54
	sbc  l                                           ; $6279: $9d
	ld   e, a                                        ; $627a: $5f
	ld   [hl], l                                     ; $627b: $75
	ld   a, l                                        ; $627c: $7d
	rst  $38                                         ; $627d: $ff
	sbc  a                                           ; $627e: $9f
	dec  c                                           ; $627f: $0d
	nop                                              ; $6280: $00
	ld   a, [bc]                                     ; $6281: $0a
	rlca                                             ; $6282: $07
	rst  JumpTable                                         ; $6283: $df
	nop                                              ; $6284: $00
	inc  bc                                          ; $6285: $03
	jr   nz, jr_043_6289                             ; $6286: $20 $01

	ld   h, h                                        ; $6288: $64

jr_043_6289:
	inc  hl                                          ; $6289: $23
	nop                                              ; $628a: $00
	rrca                                             ; $628b: $0f
	add  hl, bc                                      ; $628c: $09
	nop                                              ; $628d: $00
	ld   bc, $546b                                   ; $628e: $01 $6b $54
	ld   e, c                                        ; $6291: $59
	rst  $38                                         ; $6292: $ff
	rst  $38                                         ; $6293: $ff
	adc  h                                           ; $6294: $8c
	ld   d, b                                        ; $6295: $50
	sbc  [hl]                                        ; $6296: $9e
	dec  c                                           ; $6297: $0d
	ld   a, b                                        ; $6298: $78
	ld   a, c                                        ; $6299: $79
	ld   e, c                                        ; $629a: $59
	ld   [bc], a                                     ; $629b: $02
	ld   a, [de]                                     ; $629c: $1a
	dec  b                                           ; $629d: $05
	ldh  a, [$5a]                                    ; $629e: $f0 $5a
	ld   d, b                                        ; $62a0: $50
	sbc  c                                           ; $62a1: $99
	ld   a, b                                        ; $62a2: $78
	sub  a                                           ; $62a3: $97
	dec  c                                           ; $62a4: $0d
	ld   d, d                                        ; $62a5: $52
	ld   [hl], d                                     ; $62a6: $72
	ld   [hl], l                                     ; $62a7: $75
	sub  b                                           ; $62a8: $90
	dec  b                                           ; $62a9: $05
	db   $10                                         ; $62aa: $10
	sbc  c                                           ; $62ab: $99
	halt                                             ; $62ac: $76
	ld   d, d                                        ; $62ad: $52
	ld   d, d                                        ; $62ae: $52
	sbc  a                                           ; $62af: $9f
	dec  c                                           ; $62b0: $0d
	nop                                              ; $62b1: $00
	ld   a, [bc]                                     ; $62b2: $0a
	rrca                                             ; $62b3: $0f
	nop                                              ; $62b4: $00
	ld   bc, $7d01                                   ; $62b5: $01 $01 $7d
	rst  $38                                         ; $62b8: $ff
	rst  $38                                         ; $62b9: $ff
	ld   a, l                                        ; $62ba: $7d
	ld   d, d                                        ; $62bb: $52
	sbc  a                                           ; $62bc: $9f
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
	ld   h, a                                        ; $62c7: $67
	sbc  a                                           ; $62c8: $9f
	dec  c                                           ; $62c9: $0d
	nop                                              ; $62ca: $00
	ld   a, [bc]                                     ; $62cb: $0a
	rrca                                             ; $62cc: $0f
	add  hl, bc                                      ; $62cd: $09
	nop                                              ; $62ce: $00
	ld   bc, $9a6b                                   ; $62cf: $01 $6b $9a
	ld   h, [hl]                                     ; $62d2: $66
	sub  c                                           ; $62d3: $91
	sbc  [hl]                                        ; $62d4: $9e
	dec  b                                           ; $62d5: $05
	ld   [hl], e                                     ; $62d6: $73
	sub  b                                           ; $62d7: $90
	inc  bc                                          ; $62d8: $03
	dec  c                                           ; $62d9: $0d
	ld   [bc], a                                     ; $62da: $02
	jp   $505a                                       ; $62db: $c3 $5a $50


	sbc  c                                           ; $62de: $99
	ld   e, c                                        ; $62df: $59
	sub  a                                           ; $62e0: $97
	dec  c                                           ; $62e1: $0d
	ld   h, c                                        ; $62e2: $61
	sbc  d                                           ; $62e3: $9a
	ld   [hl], l                                     ; $62e4: $75
	sbc  a                                           ; $62e5: $9f
	dec  c                                           ; $62e6: $0d
	nop                                              ; $62e7: $00
	ld   a, [bc]                                     ; $62e8: $0a
	nop                                              ; $62e9: $00
	inc  e                                           ; $62ea: $1c
	add  hl, bc                                      ; $62eb: $09
	dec  b                                           ; $62ec: $05
	ld   a, [bc]                                     ; $62ed: $0a
	ld   bc, $0008                                   ; $62ee: $01 $08 $00
	ld   e, l                                        ; $62f1: $5d
	and  c                                           ; $62f2: $a1
	sbc  a                                           ; $62f3: $9f
	dec  c                                           ; $62f4: $0d
	ld   a, b                                        ; $62f5: $78
	and  c                                           ; $62f6: $a1
	ld   l, [hl]                                     ; $62f7: $6e
	ld   e, c                                        ; $62f8: $59
	ld   [bc], a                                     ; $62f9: $02
	ld   [hl], d                                     ; $62fa: $72
	inc  bc                                          ; $62fb: $03
	dec  bc                                          ; $62fc: $0b
	ld   e, d                                        ; $62fd: $5a
	ld   [bc], a                                     ; $62fe: $02
	jr   z, jr_043_6353                              ; $62ff: $28 $52

	ld   l, h                                        ; $6301: $6c
	sbc  a                                           ; $6302: $9f
	dec  c                                           ; $6303: $0d
	nop                                              ; $6304: $00
	ld   a, [bc]                                     ; $6305: $0a
	inc  e                                           ; $6306: $1c
	add  hl, bc                                      ; $6307: $09
	nop                                              ; $6308: $00
	nop                                              ; $6309: $00
	ld   bc, $a15a                                   ; $630a: $01 $5a $a1
	ld   a, [hl]                                     ; $630d: $7e
	sbc  c                                           ; $630e: $99
	ld   a, h                                        ; $630f: $7c
	sub  b                                           ; $6310: $90
	ld   d, d                                        ; $6311: $52
	ld   d, d                                        ; $6312: $52
	ld   e, d                                        ; $6313: $5a
	sbc  [hl]                                        ; $6314: $9e
	dec  c                                           ; $6315: $0d
	ld   l, l                                        ; $6316: $6d
	adc  h                                           ; $6317: $8c
	ld   a, c                                        ; $6318: $79
	ld   a, l                                        ; $6319: $7d
	inc  bc                                          ; $631a: $03
	and  a                                           ; $631b: $a7
	adc  l                                           ; $631c: $8d
	and  b                                           ; $631d: $a0
	halt                                             ; $631e: $76
	sub  a                                           ; $631f: $97
	ld   a, b                                        ; $6320: $78
	ld   d, d                                        ; $6321: $52
	halt                                             ; $6322: $76
	dec  c                                           ; $6323: $0d
	inc  b                                           ; $6324: $04
	dec  c                                           ; $6325: $0d
	ld   e, d                                        ; $6326: $5a
	sub  b                                           ; $6327: $90
	ld   l, l                                        ; $6328: $6d
	ld   a, b                                        ; $6329: $78
	ld   d, d                                        ; $632a: $52
	ld   l, h                                        ; $632b: $6c
	sbc  a                                           ; $632c: $9f
	dec  c                                           ; $632d: $0d
	nop                                              ; $632e: $00
	ld   a, [bc]                                     ; $632f: $0a
	ld   bc, $0a04                                   ; $6330: $01 $04 $0a
	ld   [bc], a                                     ; $6333: $02
	nop                                              ; $6334: $00
	ld   a, c                                        ; $6335: $79
	halt                                             ; $6336: $76
	ld   [hl], c                                     ; $6337: $71
	ld   [hl], h                                     ; $6338: $74
	ld   a, l                                        ; $6339: $7d
	inc  bc                                          ; $633a: $03
	sub  h                                           ; $633b: $94
	dec  b                                           ; $633c: $05
	inc  sp                                          ; $633d: $33
	ld   [bc], a                                     ; $633e: $02
	ld   l, b                                        ; $633f: $68
	dec  b                                           ; $6340: $05
	ld   de, $0d90                                   ; $6341: $11 $90 $0d
	inc  b                                           ; $6344: $04
	ld   c, $02                                      ; $6345: $0e $02
	jp   $0378                                       ; $6347: $c3 $78 $03


	dec  c                                           ; $634a: $0d
	ld   [bc], a                                     ; $634b: $02
	jp   Jump_043_547c                               ; $634c: $c3 $7c $54


	ld   l, a                                        ; $634f: $6f
	ld   l, [hl]                                     ; $6350: $6e
	ld   e, c                                        ; $6351: $59
	sub  a                                           ; $6352: $97

jr_043_6353:
	ld   a, b                                        ; $6353: $78
	sbc  a                                           ; $6354: $9f
	dec  c                                           ; $6355: $0d
	nop                                              ; $6356: $00
	ld   a, [bc]                                     ; $6357: $0a
	rrca                                             ; $6358: $0f
	nop                                              ; $6359: $00
	ld   bc, $7d01                                   ; $635a: $01 $01 $7d
	rst  $38                                         ; $635d: $ff
	rst  $38                                         ; $635e: $ff
	ld   a, l                                        ; $635f: $7d
	ld   d, d                                        ; $6360: $52
	sbc  a                                           ; $6361: $9f
	dec  c                                           ; $6362: $0d
	ld   [bc], a                                     ; $6363: $02
	and  c                                           ; $6364: $a1
	and  b                                           ; $6365: $a0
	ld   [hl], d                                     ; $6366: $72
	ld   e, a                                        ; $6367: $5f
	adc  h                                           ; $6368: $8c
	ld   h, a                                        ; $6369: $67
	sbc  a                                           ; $636a: $9f
	dec  c                                           ; $636b: $0d
	nop                                              ; $636c: $00
	ld   a, [bc]                                     ; $636d: $0a
	inc  e                                           ; $636e: $1c
	add  hl, bc                                      ; $636f: $09
	ld   bc, $0101                                   ; $6370: $01 $01 $01
	ld   d, h                                        ; $6373: $54
	and  c                                           ; $6374: $a1
	sbc  a                                           ; $6375: $9f
	dec  c                                           ; $6376: $0d
	ld   l, e                                        ; $6377: $6b
	sbc  d                                           ; $6378: $9a
	ld   h, [hl]                                     ; $6379: $66
	sub  c                                           ; $637a: $91
	sbc  [hl]                                        ; $637b: $9e
	dec  b                                           ; $637c: $05
	ld   [hl], e                                     ; $637d: $73
	sub  b                                           ; $637e: $90
	ld   l, e                                        ; $637f: $6b
	sbc  e                                           ; $6380: $9b
	ld   l, e                                        ; $6381: $6b
	sbc  e                                           ; $6382: $9b
	inc  bc                                          ; $6383: $03
	dec  c                                           ; $6384: $0d
	ld   [bc], a                                     ; $6385: $02
	jp   $0d79                                       ; $6386: $c3 $79 $0d


	sub  b                                           ; $6389: $90
	ld   [hl], a                                     ; $638a: $77
	sbc  c                                           ; $638b: $99
	ld   e, c                                        ; $638c: $59
	sub  a                                           ; $638d: $97
	ld   h, c                                        ; $638e: $61
	sbc  d                                           ; $638f: $9a
	ld   [hl], l                                     ; $6390: $75
	sbc  a                                           ; $6391: $9f
	dec  c                                           ; $6392: $0d
	nop                                              ; $6393: $00
	ld   a, [bc]                                     ; $6394: $0a
	nop                                              ; $6395: $00
	rrca                                             ; $6396: $0f
	nop                                              ; $6397: $00
	ld   bc, $5001                                   ; $6398: $01 $01 $50
	ld   a, h                                        ; $639b: $7c
	rst  $38                                         ; $639c: $ff
	rst  $38                                         ; $639d: $ff
	ld   l, a                                        ; $639e: $6f
	sub  l                                           ; $639f: $95
	ld   [hl], c                                     ; $63a0: $71
	halt                                             ; $63a1: $76
	dec  c                                           ; $63a2: $0d
	ld   e, b                                        ; $63a3: $58
	ld   [bc], a                                     ; $63a4: $02
	jp   nz, Jump_043_655b                           ; $63a5: $c2 $5b $65

	ld   l, l                                        ; $63a8: $6d
	ld   d, d                                        ; $63a9: $52
	ld   h, c                                        ; $63aa: $61
	halt                                             ; $63ab: $76
	ld   e, d                                        ; $63ac: $5a
	dec  c                                           ; $63ad: $0d
	ld   d, b                                        ; $63ae: $50
	sbc  c                                           ; $63af: $99
	and  c                                           ; $63b0: $a1
	ld   [hl], l                                     ; $63b1: $75
	ld   h, a                                        ; $63b2: $67
	ld   e, a                                        ; $63b3: $5f
	ld   [hl], a                                     ; $63b4: $77
	rst  $38                                         ; $63b5: $ff
	dec  c                                           ; $63b6: $0d
	nop                                              ; $63b7: $00
	ld   a, [bc]                                     ; $63b8: $0a
	rrca                                             ; $63b9: $0f
	add  hl, bc                                      ; $63ba: $09
	nop                                              ; $63bb: $00
	ld   bc, $ffff                                   ; $63bc: $01 $ff $ff
	ld   [bc], a                                     ; $63bf: $02
	jp   nz, Jump_043_6d5b                           ; $63c0: $c2 $5b $6d

	ld   d, d                                        ; $63c3: $52
	ld   h, c                                        ; $63c4: $61
	halt                                             ; $63c5: $76
	ld   sp, hl                                      ; $63c6: $f9
	dec  c                                           ; $63c7: $0d
	nop                                              ; $63c8: $00
	ld   a, [bc]                                     ; $63c9: $0a
	jr   jr_043_63cf                                 ; $63ca: $18 $03

	ld   bc, $5d63                                   ; $63cc: $01 $63 $5d

jr_043_63cf:
	sub  a                                           ; $63cf: $97
	ld   e, c                                        ; $63d0: $59
	sub  a                                           ; $63d1: $97
	ld   a, h                                        ; $63d2: $7c
	inc  b                                           ; $63d3: $04
	ld   d, a                                        ; $63d4: $57
	inc  b                                           ; $63d5: $04
	ld   h, e                                        ; $63d6: $63
	and  b                                           ; $63d7: $a0
	ld   e, e                                        ; $63d8: $5b
	ld   e, l                                        ; $63d9: $5d
	nop                                              ; $63da: $00
	nop                                              ; $63db: $00
	ld   h, a                                        ; $63dc: $67
	adc  l                                           ; $63dd: $8d
	sbc  d                                           ; $63de: $9a
	ld   e, c                                        ; $63df: $59
	sub  a                                           ; $63e0: $97
	ld   a, h                                        ; $63e1: $7c
	inc  b                                           ; $63e2: $04
	ld   d, a                                        ; $63e3: $57
	inc  b                                           ; $63e4: $04
	ld   h, e                                        ; $63e5: $63
	and  b                                           ; $63e6: $a0
	ld   e, e                                        ; $63e7: $5b
	ld   e, l                                        ; $63e8: $5d
	nop                                              ; $63e9: $00
	ld   bc, $7c6b                                   ; $63ea: $01 $6b $7c
	inc  b                                           ; $63ed: $04
	ld   e, $7c                                      ; $63ee: $1e $7c
	inc  bc                                          ; $63f0: $03
	add  d                                           ; $63f1: $82
	ld   a, h                                        ; $63f2: $7c
	inc  b                                           ; $63f3: $04
	ld   d, a                                        ; $63f4: $57
	inc  b                                           ; $63f5: $04
	ld   h, e                                        ; $63f6: $63
	and  b                                           ; $63f7: $a0
	ld   e, e                                        ; $63f8: $5b
	ld   e, l                                        ; $63f9: $5d
	nop                                              ; $63fa: $00
	ld   [bc], a                                     ; $63fb: $02
	rlca                                             ; $63fc: $07
	ld   h, $03                                      ; $63fd: $26 $03
	ld   [bc], a                                     ; $63ff: $02
	ld   [bc], a                                     ; $6400: $02
	ld   bc, $2000                                   ; $6401: $01 $00 $20
	nop                                              ; $6404: $00
	rlca                                             ; $6405: $07
	ld   d, d                                        ; $6406: $52
	inc  b                                           ; $6407: $04
	ld   [bc], a                                     ; $6408: $02
	ld   [bc], a                                     ; $6409: $02
	ld   bc, $2001                                   ; $640a: $01 $01 $20
	nop                                              ; $640d: $00
	rlca                                             ; $640e: $07
	inc  c                                           ; $640f: $0c
	ld   [bc], a                                     ; $6410: $02
	ld   [bc], a                                     ; $6411: $02
	ld   [bc], a                                     ; $6412: $02
	ld   bc, $2002                                   ; $6413: $01 $02 $20
	nop                                              ; $6416: $00
	jr   jr_043_641c                                 ; $6417: $18 $03

	ld   bc, $ecdf                                   ; $6419: $01 $df $ec

jr_043_641c:
	and  e                                           ; $641c: $a3
	ld   e, c                                        ; $641d: $59
	sub  a                                           ; $641e: $97
	ld   a, h                                        ; $641f: $7c
	inc  b                                           ; $6420: $04
	ld   d, a                                        ; $6421: $57
	inc  b                                           ; $6422: $04
	ld   h, e                                        ; $6423: $63
	and  b                                           ; $6424: $a0
	ld   e, e                                        ; $6425: $5b
	ld   e, l                                        ; $6426: $5d
	nop                                              ; $6427: $00
	nop                                              ; $6428: $00
	xor  h                                           ; $6429: $ac
	push af                                          ; $642a: $f5
	bit  3, c                                        ; $642b: $cb $59
	sub  a                                           ; $642d: $97
	ld   a, h                                        ; $642e: $7c
	inc  b                                           ; $642f: $04
	ld   d, a                                        ; $6430: $57
	inc  b                                           ; $6431: $04
	ld   h, e                                        ; $6432: $63
	and  b                                           ; $6433: $a0
	ld   e, e                                        ; $6434: $5b
	ld   e, l                                        ; $6435: $5d
	nop                                              ; $6436: $00
	ld   bc, $7c6b                                   ; $6437: $01 $6b $7c
	inc  b                                           ; $643a: $04
	ld   e, $7c                                      ; $643b: $1e $7c
	inc  bc                                          ; $643d: $03
	add  d                                           ; $643e: $82
	ld   a, h                                        ; $643f: $7c
	inc  b                                           ; $6440: $04
	ld   d, a                                        ; $6441: $57
	inc  b                                           ; $6442: $04
	ld   h, e                                        ; $6443: $63
	and  b                                           ; $6444: $a0
	ld   e, e                                        ; $6445: $5b
	ld   e, l                                        ; $6446: $5d
	nop                                              ; $6447: $00
	ld   [bc], a                                     ; $6448: $02
	rlca                                             ; $6449: $07
	ld   a, [hl]                                     ; $644a: $7e
	dec  b                                           ; $644b: $05
	ld   [bc], a                                     ; $644c: $02
	ld   [bc], a                                     ; $644d: $02
	ld   bc, $2000                                   ; $644e: $01 $00 $20
	nop                                              ; $6451: $00
	rlca                                             ; $6452: $07
	or   $08                                         ; $6453: $f6 $08
	ld   [bc], a                                     ; $6455: $02
	ld   [bc], a                                     ; $6456: $02
	ld   bc, $2001                                   ; $6457: $01 $01 $20
	nop                                              ; $645a: $00
	rlca                                             ; $645b: $07
	ld   e, c                                        ; $645c: $59
	ld   [bc], a                                     ; $645d: $02
	ld   [bc], a                                     ; $645e: $02
	ld   [bc], a                                     ; $645f: $02
	ld   bc, $2002                                   ; $6460: $01 $02 $20
	nop                                              ; $6463: $00
	jr   jr_043_6469                                 ; $6464: $18 $03

	ld   bc, $cf02                                   ; $6466: $01 $02 $cf

jr_043_6469:
	dec  b                                           ; $6469: $05
	ld   a, [de]                                     ; $646a: $1a
	ld   e, c                                        ; $646b: $59
	sub  a                                           ; $646c: $97
	ld   a, h                                        ; $646d: $7c
	inc  b                                           ; $646e: $04
	ld   d, a                                        ; $646f: $57
	inc  b                                           ; $6470: $04
	ld   h, e                                        ; $6471: $63
	and  b                                           ; $6472: $a0
	ld   e, e                                        ; $6473: $5b
	ld   e, l                                        ; $6474: $5d
	nop                                              ; $6475: $00
	nop                                              ; $6476: $00
	and  e                                           ; $6477: $a3
	and  l                                           ; $6478: $a5
	db   $ec                                         ; $6479: $ec
	cp   d                                           ; $647a: $ba
	ld   e, c                                        ; $647b: $59
	sub  a                                           ; $647c: $97
	ld   a, h                                        ; $647d: $7c
	inc  b                                           ; $647e: $04
	ld   d, a                                        ; $647f: $57
	inc  b                                           ; $6480: $04
	ld   h, e                                        ; $6481: $63
	and  b                                           ; $6482: $a0
	ld   e, e                                        ; $6483: $5b
	ld   e, l                                        ; $6484: $5d
	nop                                              ; $6485: $00
	ld   bc, $7c6b                                   ; $6486: $01 $6b $7c
	inc  b                                           ; $6489: $04
	ld   e, $7c                                      ; $648a: $1e $7c
	inc  bc                                          ; $648c: $03
	add  d                                           ; $648d: $82
	ld   a, h                                        ; $648e: $7c
	inc  b                                           ; $648f: $04
	ld   d, a                                        ; $6490: $57
	inc  b                                           ; $6491: $04
	ld   h, e                                        ; $6492: $63
	and  b                                           ; $6493: $a0
	ld   e, e                                        ; $6494: $5b
	ld   e, l                                        ; $6495: $5d
	nop                                              ; $6496: $00
	ld   [bc], a                                     ; $6497: $02
	rlca                                             ; $6498: $07
	call z, $0207                                    ; $6499: $cc $07 $02
	ld   [bc], a                                     ; $649c: $02
	ld   bc, $2000                                   ; $649d: $01 $00 $20
	nop                                              ; $64a0: $00
	rlca                                             ; $64a1: $07
	and  h                                           ; $64a2: $a4
	ld   b, $02                                      ; $64a3: $06 $02
	ld   [bc], a                                     ; $64a5: $02
	ld   bc, $2001                                   ; $64a6: $01 $01 $20
	nop                                              ; $64a9: $00
	rlca                                             ; $64aa: $07
	xor  b                                           ; $64ab: $a8
	ld   [bc], a                                     ; $64ac: $02
	ld   [bc], a                                     ; $64ad: $02
	ld   [bc], a                                     ; $64ae: $02
	ld   bc, $2002                                   ; $64af: $01 $02 $20
	nop                                              ; $64b2: $00
	jr   @+$04                                       ; $64b3: $18 $02

	ld   bc, $7192                                   ; $64b5: $01 $92 $71
	ld   a, a                                        ; $64b8: $7f
	sbc  b                                           ; $64b9: $98
	sub  d                                           ; $64ba: $92
	adc  a                                           ; $64bb: $8f
	sbc  c                                           ; $64bc: $99
	nop                                              ; $64bd: $00
	nop                                              ; $64be: $00
	ld   l, e                                        ; $64bf: $6b
	ld   a, h                                        ; $64c0: $7c
	inc  b                                           ; $64c1: $04
	ld   e, $7c                                      ; $64c2: $1e $7c
	inc  bc                                          ; $64c4: $03
	add  d                                           ; $64c5: $82
	ld   a, h                                        ; $64c6: $7c
	inc  b                                           ; $64c7: $04
	ld   d, a                                        ; $64c8: $57
	inc  b                                           ; $64c9: $04
	ld   h, e                                        ; $64ca: $63
	and  b                                           ; $64cb: $a0
	ld   e, e                                        ; $64cc: $5b
	ld   e, l                                        ; $64cd: $5d
	nop                                              ; $64ce: $00
	ld   bc, $d707                                   ; $64cf: $01 $07 $d7
	ld   [bc], a                                     ; $64d2: $02
	ld   [bc], a                                     ; $64d3: $02
	ld   [bc], a                                     ; $64d4: $02
	ld   bc, $2000                                   ; $64d5: $01 $00 $20
	nop                                              ; $64d8: $00
	rlca                                             ; $64d9: $07
	cp   a                                           ; $64da: $bf
	ld   bc, $0202                                   ; $64db: $01 $02 $02
	ld   bc, $2001                                   ; $64de: $01 $01 $20
	nop                                              ; $64e1: $00
	rrca                                             ; $64e2: $0f
	nop                                              ; $64e3: $00
	ld   bc, $5001                                   ; $64e4: $01 $01 $50
	sbc  [hl]                                        ; $64e7: $9e
	sub  d                                           ; $64e8: $92
	ld   [hl], c                                     ; $64e9: $71
	ld   a, a                                        ; $64ea: $7f
	sbc  b                                           ; $64eb: $98
	ld   d, d                                        ; $64ec: $52
	ld   d, d                                        ; $64ed: $52
	ld   [hl], l                                     ; $64ee: $75
	ld   h, a                                        ; $64ef: $67
	sbc  a                                           ; $64f0: $9f
	dec  c                                           ; $64f1: $0d
	ld   [hl], l                                     ; $64f2: $75
	ld   a, l                                        ; $64f3: $7d
	sbc  [hl]                                        ; $64f4: $9e
	inc  bc                                          ; $64f5: $03
	add  e                                           ; $64f6: $83
	dec  b                                           ; $64f7: $05
	dec  c                                           ; $64f8: $0d
	ld   h, l                                        ; $64f9: $65
	adc  h                                           ; $64fa: $8c
	ld   h, a                                        ; $64fb: $67
	sbc  a                                           ; $64fc: $9f
	dec  c                                           ; $64fd: $0d
	nop                                              ; $64fe: $00
	ld   a, [bc]                                     ; $64ff: $0a
	rrca                                             ; $6500: $0f
	add  hl, bc                                      ; $6501: $09
	nop                                              ; $6502: $00
	ld   bc, $546b                                   ; $6503: $01 $6b $54
	ld   e, c                                        ; $6506: $59
	ld   d, d                                        ; $6507: $52
	sbc  a                                           ; $6508: $9f
	dec  c                                           ; $6509: $0d
	ld   [hl], l                                     ; $650a: $75
	sub  b                                           ; $650b: $90
	sbc  [hl]                                        ; $650c: $9e
	inc  b                                           ; $650d: $04
	di                                               ; $650e: $f3
	ld   e, d                                        ; $650f: $5a
	ld   d, b                                        ; $6510: $50
	ld   [hl], c                                     ; $6511: $71
	ld   l, l                                        ; $6512: $6d
	sub  a                                           ; $6513: $97
	dec  c                                           ; $6514: $0d
	ld   d, d                                        ; $6515: $52
	ld   [hl], d                                     ; $6516: $72
	ld   [hl], l                                     ; $6517: $75
	sub  b                                           ; $6518: $90
	dec  b                                           ; $6519: $05
	db   $10                                         ; $651a: $10
	sbc  c                                           ; $651b: $99
	halt                                             ; $651c: $76
	ld   d, d                                        ; $651d: $52
	ld   d, d                                        ; $651e: $52
	sbc  a                                           ; $651f: $9f
	dec  c                                           ; $6520: $0d
	nop                                              ; $6521: $00
	ld   a, [bc]                                     ; $6522: $0a
	ld   bc, $9166                                   ; $6523: $01 $66 $91
	sbc  [hl]                                        ; $6526: $9e
	ld   e, d                                        ; $6527: $5a
	and  c                                           ; $6528: $a1
	ld   a, [hl]                                     ; $6529: $7e
	sbc  d                                           ; $652a: $9a
	sub  [hl]                                        ; $652b: $96
	sbc  a                                           ; $652c: $9f
	dec  c                                           ; $652d: $0d
	nop                                              ; $652e: $00
	ld   a, [bc]                                     ; $652f: $0a
	nop                                              ; $6530: $00
	rrca                                             ; $6531: $0f
	nop                                              ; $6532: $00
	ld   bc, $6301                                   ; $6533: $01 $01 $63

jr_043_6536:
	ld   e, l                                        ; $6536: $5d
	sub  a                                           ; $6537: $97
	ld   h, e                                        ; $6538: $63
	and  c                                           ; $6539: $a1
	ld   a, h                                        ; $653a: $7c
	inc  b                                           ; $653b: $04
	ld   l, l                                        ; $653c: $6d
	add  [hl]                                        ; $653d: $86
	ld   a, h                                        ; $653e: $7c
	inc  b                                           ; $653f: $04
	ld   d, a                                        ; $6540: $57
	inc  b                                           ; $6541: $04
	ld   h, e                                        ; $6542: $63
	ld   [hl], c                                     ; $6543: $71
	ld   [hl], h                                     ; $6544: $74
	dec  c                                           ; $6545: $0d
	ld   [hl], a                                     ; $6546: $77
	ld   d, h                                        ; $6547: $54
	ld   a, b                                        ; $6548: $78
	and  c                                           ; $6549: $a1
	ld   [hl], l                                     ; $654a: $75
	ld   h, l                                        ; $654b: $65
	sub  l                                           ; $654c: $95

jr_043_654d:
	ld   d, h                                        ; $654d: $54
	ld   e, c                                        ; $654e: $59
	ld   sp, hl                                      ; $654f: $f9
	dec  c                                           ; $6550: $0d
	nop                                              ; $6551: $00
	ld   a, [bc]                                     ; $6552: $0a
	rrca                                             ; $6553: $0f
	add  hl, bc                                      ; $6554: $09
	nop                                              ; $6555: $00
	ld   bc, $8e83                                   ; $6556: $01 $83 $8e
	sbc  [hl]                                        ; $6559: $9e
	ld   l, e                                        ; $655a: $6b

Jump_043_655b:
	ld   d, h                                        ; $655b: $54
	ld   l, [hl]                                     ; $655c: $6e
	ld   a, b                                        ; $655d: $78
	rst  $38                                         ; $655e: $ff
	rst  $38                                         ; $655f: $ff
	dec  c                                           ; $6560: $0d
	nop                                              ; $6561: $00
	ld   a, [bc]                                     ; $6562: $0a
	rlca                                             ; $6563: $07
	ret  nz                                          ; $6564: $c0

	inc  bc                                          ; $6565: $03
	inc  bc                                          ; $6566: $03
	ld   de, $6401                                   ; $6567: $11 $01 $64
	inc  hl                                          ; $656a: $23
	nop                                              ; $656b: $00
	rlca                                             ; $656c: $07
	rrca                                             ; $656d: $0f
	inc  b                                           ; $656e: $04
	inc  bc                                          ; $656f: $03
	ld   de, $7c01                                   ; $6570: $11 $01 $7c
	dec  h                                           ; $6573: $25
	nop                                              ; $6574: $00
	ld   bc, $5d63                                   ; $6575: $01 $63 $5d
	sub  a                                           ; $6578: $97
	ld   e, l                                        ; $6579: $5d
	and  c                                           ; $657a: $a1
	ld   a, h                                        ; $657b: $7c
	sbc  [hl]                                        ; $657c: $9e
	ld   [$5d00], sp                                 ; $657d: $08 $00 $5d
	and  c                                           ; $6580: $a1
	dec  c                                           ; $6581: $0d
	add  [hl]                                        ; $6582: $86
	ld   a, h                                        ; $6583: $7c
	inc  b                                           ; $6584: $04
	ld   d, a                                        ; $6585: $57
	inc  b                                           ; $6586: $04
	ld   h, e                                        ; $6587: $63
	ld   a, l                                        ; $6588: $7d
	sbc  [hl]                                        ; $6589: $9e
	adc  h                                           ; $658a: $8c
	ld   d, b                                        ; $658b: $50
	adc  h                                           ; $658c: $8c
	ld   d, b                                        ; $658d: $50
	dec  c                                           ; $658e: $0d
	halt                                             ; $658f: $76
	ld   d, d                                        ; $6590: $52
	ld   [hl], c                                     ; $6591: $71
	ld   l, l                                        ; $6592: $6d
	halt                                             ; $6593: $76
	ld   h, c                                        ; $6594: $61
	sbc  e                                           ; $6595: $9b
	ld   e, c                                        ; $6596: $59
	ld   a, b                                        ; $6597: $78
	sbc  a                                           ; $6598: $9f
	dec  c                                           ; $6599: $0d
	nop                                              ; $659a: $00
	ld   a, [bc]                                     ; $659b: $0a
	ld   bc, $5d76                                   ; $659c: $01 $76 $5d
	ld   a, c                                        ; $659f: $79
	ld   [bc], a                                     ; $65a0: $02
	jr   z, jr_043_65f5                              ; $65a1: $28 $52

	dec  b                                           ; $65a3: $05
	jr   nz, jr_043_6536                             ; $65a4: $20 $90

	ld   [bc], a                                     ; $65a6: $02
	jp   nz, $7859                                   ; $65a7: $c2 $59 $78

	ld   d, d                                        ; $65aa: $52
	ld   h, l                                        ; $65ab: $65
	rst  $38                                         ; $65ac: $ff
	rst  $38                                         ; $65ad: $ff
	dec  c                                           ; $65ae: $0d
	ld   e, c                                        ; $65af: $59
	halt                                             ; $65b0: $76
	ld   d, d                                        ; $65b1: $52
	ld   [hl], c                                     ; $65b2: $71
	ld   [hl], h                                     ; $65b3: $74
	sbc  [hl]                                        ; $65b4: $9e
	ld   d, d                                        ; $65b5: $52
	ld   d, d                                        ; $65b6: $52
	halt                                             ; $65b7: $76
	ld   d, d                                        ; $65b8: $52
	ld   d, h                                        ; $65b9: $54
	dec  b                                           ; $65ba: $05
	jr   nz, jr_043_654d                             ; $65bb: $20 $90

	dec  c                                           ; $65bd: $0d
	ld   [bc], a                                     ; $65be: $02
	jp   nz, $7859                                   ; $65bf: $c2 $59 $78

	ld   d, d                                        ; $65c2: $52
	ld   a, b                                        ; $65c3: $78
	sbc  a                                           ; $65c4: $9f
	dec  c                                           ; $65c5: $0d
	nop                                              ; $65c6: $00
	ld   a, [bc]                                     ; $65c7: $0a
	ld   b, $1c                                      ; $65c8: $06 $1c
	ld   a, [bc]                                     ; $65ca: $0a
	ld   bc, $5d63                                   ; $65cb: $01 $63 $5d
	sub  a                                           ; $65ce: $97
	ld   e, l                                        ; $65cf: $5d
	and  c                                           ; $65d0: $a1
	ld   a, h                                        ; $65d1: $7c
	sbc  [hl]                                        ; $65d2: $9e
	ld   [$5d00], sp                                 ; $65d3: $08 $00 $5d
	and  c                                           ; $65d6: $a1
	dec  c                                           ; $65d7: $0d
	add  [hl]                                        ; $65d8: $86
	ld   a, h                                        ; $65d9: $7c
	inc  b                                           ; $65da: $04
	ld   d, a                                        ; $65db: $57
	inc  b                                           ; $65dc: $04
	ld   h, e                                        ; $65dd: $63
	ld   a, l                                        ; $65de: $7d
	rst  $38                                         ; $65df: $ff
	rst  $38                                         ; $65e0: $ff
	dec  c                                           ; $65e1: $0d
	ld   d, b                                        ; $65e2: $50
	adc  h                                           ; $65e3: $8c
	sbc  b                                           ; $65e4: $98
	sub  [hl]                                        ; $65e5: $96
	ld   e, l                                        ; $65e6: $5d
	ld   a, b                                        ; $65e7: $78
	ld   d, d                                        ; $65e8: $52
	ld   a, b                                        ; $65e9: $78
	sbc  a                                           ; $65ea: $9f
	dec  c                                           ; $65eb: $0d
	nop                                              ; $65ec: $00
	ld   a, [bc]                                     ; $65ed: $0a
	ld   bc, $7190                                   ; $65ee: $01 $90 $71
	halt                                             ; $65f1: $76
	ld   [bc], a                                     ; $65f2: $02
	ld   a, [de]                                     ; $65f3: $1a
	inc  bc                                          ; $65f4: $03

jr_043_65f5:
	ld   l, e                                        ; $65f5: $6b
	ld   a, h                                        ; $65f6: $7c
	ld   [bc], a                                     ; $65f7: $02
	and  c                                           ; $65f8: $a1
	inc  bc                                          ; $65f9: $03
	and  b                                           ; $65fa: $a0
	ld   l, a                                        ; $65fb: $6f
	and  b                                           ; $65fc: $a0
	dec  c                                           ; $65fd: $0d
	ld   [bc], a                                     ; $65fe: $02
	ld   h, l                                        ; $65ff: $65
	ld   d, [hl]                                     ; $6600: $56
	ld   [hl], h                                     ; $6601: $74
	ld   [bc], a                                     ; $6602: $02
	ld   a, a                                        ; $6603: $7f
	inc  b                                           ; $6604: $04
	dec  de                                          ; $6605: $1b
	ld   h, l                                        ; $6606: $65
	ld   l, l                                        ; $6607: $6d
	adc  c                                           ; $6608: $89
	ld   d, h                                        ; $6609: $54
	ld   e, d                                        ; $660a: $5a
	ld   d, d                                        ; $660b: $52
	ld   d, d                                        ; $660c: $52
	halt                                             ; $660d: $76
	dec  c                                           ; $660e: $0d
	dec  b                                           ; $660f: $05
	pop  de                                          ; $6610: $d1
	ld   d, h                                        ; $6611: $54
	ld   l, h                                        ; $6612: $6c
	sbc  a                                           ; $6613: $9f
	dec  c                                           ; $6614: $0d
	nop                                              ; $6615: $00
	ld   a, [bc]                                     ; $6616: $0a
	ld   b, $1c                                      ; $6617: $06 $1c
	ld   a, [bc]                                     ; $6619: $0a
	ld   bc, $5d63                                   ; $661a: $01 $63 $5d
	sub  a                                           ; $661d: $97
	ld   e, l                                        ; $661e: $5d
	and  c                                           ; $661f: $a1
	ld   a, h                                        ; $6620: $7c
	sbc  [hl]                                        ; $6621: $9e
	ld   [$5d00], sp                                 ; $6622: $08 $00 $5d
	and  c                                           ; $6625: $a1
	dec  c                                           ; $6626: $0d
	add  [hl]                                        ; $6627: $86
	ld   a, h                                        ; $6628: $7c
	inc  b                                           ; $6629: $04
	ld   d, a                                        ; $662a: $57
	inc  b                                           ; $662b: $04
	ld   h, e                                        ; $662c: $63
	ld   a, l                                        ; $662d: $7d
	sbc  [hl]                                        ; $662e: $9e
	ld   e, c                                        ; $662f: $59
	ld   a, b                                        ; $6630: $78
	sbc  b                                           ; $6631: $98
	ld   d, d                                        ; $6632: $52
	ld   d, d                                        ; $6633: $52
	dec  c                                           ; $6634: $0d
	halt                                             ; $6635: $76
	dec  b                                           ; $6636: $05
	pop  de                                          ; $6637: $d1
	ld   d, h                                        ; $6638: $54
	ld   l, h                                        ; $6639: $6c
	sbc  a                                           ; $663a: $9f
	dec  c                                           ; $663b: $0d
	nop                                              ; $663c: $00
	ld   a, [bc]                                     ; $663d: $0a
	ld   bc, $ca02                                   ; $663e: $01 $02 $ca
	sub  b                                           ; $6641: $90
	ld   l, e                                        ; $6642: $6b
	sbc  d                                           ; $6643: $9a
	ld   a, c                                        ; $6644: $79
	ld   [bc], a                                     ; $6645: $02
	add  hl, bc                                      ; $6646: $09
	ld   d, [hl]                                     ; $6647: $56
	sub  a                                           ; $6648: $97
	sbc  d                                           ; $6649: $9a
	sbc  c                                           ; $664a: $99
	sub  [hl]                                        ; $664b: $96
	ld   d, h                                        ; $664c: $54
	ld   a, c                                        ; $664d: $79
	dec  c                                           ; $664e: $0d
	ld   e, d                                        ; $664f: $5a
	and  c                                           ; $6650: $a1
	ld   a, [hl]                                     ; $6651: $7e
	sbc  c                                           ; $6652: $99
	and  c                                           ; $6653: $a1
	ld   l, [hl]                                     ; $6654: $6e
	ld   l, h                                        ; $6655: $6c
	sbc  a                                           ; $6656: $9f
	dec  c                                           ; $6657: $0d
	nop                                              ; $6658: $00
	ld   a, [bc]                                     ; $6659: $0a
	ld   b, $1c                                      ; $665a: $06 $1c
	ld   a, [bc]                                     ; $665c: $0a
	rrca                                             ; $665d: $0f
	nop                                              ; $665e: $00
	ld   bc, $6701                                   ; $665f: $01 $01 $67

jr_043_6662:
	adc  l                                           ; $6662: $8d
	sbc  d                                           ; $6663: $9a
	ld   h, e                                        ; $6664: $63
	and  c                                           ; $6665: $a1
	ld   a, h                                        ; $6666: $7c
	inc  b                                           ; $6667: $04
	ld   l, l                                        ; $6668: $6d
	add  [hl]                                        ; $6669: $86
	ld   a, h                                        ; $666a: $7c
	inc  b                                           ; $666b: $04
	ld   d, a                                        ; $666c: $57
	inc  b                                           ; $666d: $04
	ld   h, e                                        ; $666e: $63
	ld   [hl], c                                     ; $666f: $71
	ld   [hl], h                                     ; $6670: $74
	dec  c                                           ; $6671: $0d
	ld   [hl], a                                     ; $6672: $77
	ld   d, h                                        ; $6673: $54
	ld   a, b                                        ; $6674: $78
	and  c                                           ; $6675: $a1
	ld   [hl], l                                     ; $6676: $75
	ld   h, l                                        ; $6677: $65
	sub  l                                           ; $6678: $95

jr_043_6679:
	ld   d, h                                        ; $6679: $54
	ld   e, c                                        ; $667a: $59
	ld   sp, hl                                      ; $667b: $f9
	dec  c                                           ; $667c: $0d
	nop                                              ; $667d: $00
	ld   a, [bc]                                     ; $667e: $0a
	rrca                                             ; $667f: $0f
	add  hl, bc                                      ; $6680: $09
	nop                                              ; $6681: $00
	ld   bc, $8e83                                   ; $6682: $01 $83 $8e
	sbc  [hl]                                        ; $6685: $9e
	ld   l, e                                        ; $6686: $6b
	ld   d, h                                        ; $6687: $54
	ld   l, [hl]                                     ; $6688: $6e
	ld   a, b                                        ; $6689: $78
	rst  $38                                         ; $668a: $ff
	rst  $38                                         ; $668b: $ff
	dec  c                                           ; $668c: $0d
	nop                                              ; $668d: $00
	ld   a, [bc]                                     ; $668e: $0a
	rlca                                             ; $668f: $07
	db   $ec                                         ; $6690: $ec
	inc  b                                           ; $6691: $04
	inc  bc                                          ; $6692: $03
	ld   [de], a                                     ; $6693: $12
	ld   bc, $2364                                   ; $6694: $01 $64 $23
	nop                                              ; $6697: $00
	rlca                                             ; $6698: $07
	dec  sp                                          ; $6699: $3b
	dec  b                                           ; $669a: $05
	inc  bc                                          ; $669b: $03
	ld   [de], a                                     ; $669c: $12
	ld   bc, $257c                                   ; $669d: $01 $7c $25
	nop                                              ; $66a0: $00
	ld   bc, $8d67                                   ; $66a1: $01 $67 $8d
	sbc  d                                           ; $66a4: $9a
	ld   e, l                                        ; $66a5: $5d
	and  c                                           ; $66a6: $a1
	ld   a, h                                        ; $66a7: $7c
	sbc  [hl]                                        ; $66a8: $9e
	ld   [$5d00], sp                                 ; $66a9: $08 $00 $5d
	and  c                                           ; $66ac: $a1
	dec  c                                           ; $66ad: $0d
	add  [hl]                                        ; $66ae: $86
	ld   a, h                                        ; $66af: $7c
	inc  b                                           ; $66b0: $04
	ld   d, a                                        ; $66b1: $57
	inc  b                                           ; $66b2: $04
	ld   h, e                                        ; $66b3: $63
	ld   a, l                                        ; $66b4: $7d
	sbc  [hl]                                        ; $66b5: $9e
	adc  h                                           ; $66b6: $8c
	ld   d, b                                        ; $66b7: $50
	adc  h                                           ; $66b8: $8c
	ld   d, b                                        ; $66b9: $50
	dec  c                                           ; $66ba: $0d
	halt                                             ; $66bb: $76
	ld   d, d                                        ; $66bc: $52
	ld   [hl], c                                     ; $66bd: $71
	ld   l, l                                        ; $66be: $6d
	halt                                             ; $66bf: $76
	ld   h, c                                        ; $66c0: $61
	sbc  e                                           ; $66c1: $9b
	ld   e, c                                        ; $66c2: $59
	ld   a, b                                        ; $66c3: $78
	sbc  a                                           ; $66c4: $9f
	dec  c                                           ; $66c5: $0d
	nop                                              ; $66c6: $00
	ld   a, [bc]                                     ; $66c7: $0a
	ld   bc, $5d76                                   ; $66c8: $01 $76 $5d
	ld   a, c                                        ; $66cb: $79
	ld   [bc], a                                     ; $66cc: $02
	jr   z, jr_043_6721                              ; $66cd: $28 $52

	dec  b                                           ; $66cf: $05
	jr   nz, jr_043_6662                             ; $66d0: $20 $90

	ld   [bc], a                                     ; $66d2: $02
	jp   nz, $7859                                   ; $66d3: $c2 $59 $78

	ld   d, d                                        ; $66d6: $52
	ld   h, l                                        ; $66d7: $65
	rst  $38                                         ; $66d8: $ff
	rst  $38                                         ; $66d9: $ff
	dec  c                                           ; $66da: $0d
	ld   e, c                                        ; $66db: $59
	halt                                             ; $66dc: $76
	ld   d, d                                        ; $66dd: $52
	ld   [hl], c                                     ; $66de: $71
	ld   [hl], h                                     ; $66df: $74
	sbc  [hl]                                        ; $66e0: $9e
	ld   d, d                                        ; $66e1: $52
	ld   d, d                                        ; $66e2: $52
	halt                                             ; $66e3: $76
	ld   d, d                                        ; $66e4: $52
	ld   d, h                                        ; $66e5: $54
	dec  b                                           ; $66e6: $05
	jr   nz, jr_043_6679                             ; $66e7: $20 $90

	dec  c                                           ; $66e9: $0d
	ld   [bc], a                                     ; $66ea: $02
	jp   nz, $7859                                   ; $66eb: $c2 $59 $78

	ld   d, d                                        ; $66ee: $52
	ld   a, b                                        ; $66ef: $78
	sbc  a                                           ; $66f0: $9f
	dec  c                                           ; $66f1: $0d
	nop                                              ; $66f2: $00
	ld   a, [bc]                                     ; $66f3: $0a
	ld   b, $1c                                      ; $66f4: $06 $1c
	ld   a, [bc]                                     ; $66f6: $0a
	ld   bc, $8d67                                   ; $66f7: $01 $67 $8d
	sbc  d                                           ; $66fa: $9a
	ld   e, l                                        ; $66fb: $5d
	and  c                                           ; $66fc: $a1
	ld   a, h                                        ; $66fd: $7c
	sbc  [hl]                                        ; $66fe: $9e
	ld   [$5d00], sp                                 ; $66ff: $08 $00 $5d
	and  c                                           ; $6702: $a1
	dec  c                                           ; $6703: $0d
	add  [hl]                                        ; $6704: $86
	ld   a, h                                        ; $6705: $7c
	inc  b                                           ; $6706: $04
	ld   d, a                                        ; $6707: $57
	inc  b                                           ; $6708: $04
	ld   h, e                                        ; $6709: $63
	ld   a, l                                        ; $670a: $7d
	rst  $38                                         ; $670b: $ff
	rst  $38                                         ; $670c: $ff
	dec  c                                           ; $670d: $0d
	ld   d, b                                        ; $670e: $50
	adc  h                                           ; $670f: $8c
	sbc  b                                           ; $6710: $98
	sub  [hl]                                        ; $6711: $96
	ld   e, l                                        ; $6712: $5d
	ld   a, b                                        ; $6713: $78
	ld   d, d                                        ; $6714: $52
	ld   a, b                                        ; $6715: $78
	sbc  a                                           ; $6716: $9f
	dec  c                                           ; $6717: $0d
	nop                                              ; $6718: $00
	ld   a, [bc]                                     ; $6719: $0a
	ld   bc, $7190                                   ; $671a: $01 $90 $71
	halt                                             ; $671d: $76
	ld   [bc], a                                     ; $671e: $02
	ld   a, [de]                                     ; $671f: $1a
	inc  bc                                          ; $6720: $03

jr_043_6721:
	ld   l, e                                        ; $6721: $6b
	ld   a, h                                        ; $6722: $7c
	ld   [bc], a                                     ; $6723: $02
	and  c                                           ; $6724: $a1
	inc  bc                                          ; $6725: $03
	and  b                                           ; $6726: $a0
	ld   l, a                                        ; $6727: $6f
	and  b                                           ; $6728: $a0
	dec  c                                           ; $6729: $0d
	ld   [bc], a                                     ; $672a: $02
	ld   h, l                                        ; $672b: $65
	ld   d, [hl]                                     ; $672c: $56
	ld   [hl], h                                     ; $672d: $74
	ld   [bc], a                                     ; $672e: $02
	ld   a, a                                        ; $672f: $7f
	inc  b                                           ; $6730: $04
	dec  de                                          ; $6731: $1b
	ld   h, l                                        ; $6732: $65
	ld   l, l                                        ; $6733: $6d
	adc  c                                           ; $6734: $89
	ld   d, h                                        ; $6735: $54
	ld   e, d                                        ; $6736: $5a
	ld   d, d                                        ; $6737: $52
	ld   d, d                                        ; $6738: $52
	halt                                             ; $6739: $76
	dec  c                                           ; $673a: $0d
	dec  b                                           ; $673b: $05
	pop  de                                          ; $673c: $d1
	ld   d, h                                        ; $673d: $54
	ld   l, h                                        ; $673e: $6c
	sbc  a                                           ; $673f: $9f
	dec  c                                           ; $6740: $0d
	nop                                              ; $6741: $00
	ld   a, [bc]                                     ; $6742: $0a
	ld   b, $1c                                      ; $6743: $06 $1c
	ld   a, [bc]                                     ; $6745: $0a
	ld   bc, $8d67                                   ; $6746: $01 $67 $8d
	sbc  d                                           ; $6749: $9a
	ld   e, l                                        ; $674a: $5d
	and  c                                           ; $674b: $a1
	ld   a, h                                        ; $674c: $7c
	sbc  [hl]                                        ; $674d: $9e
	ld   [$5d00], sp                                 ; $674e: $08 $00 $5d
	and  c                                           ; $6751: $a1
	dec  c                                           ; $6752: $0d
	add  [hl]                                        ; $6753: $86
	ld   a, h                                        ; $6754: $7c
	inc  b                                           ; $6755: $04
	ld   d, a                                        ; $6756: $57
	inc  b                                           ; $6757: $04
	ld   h, e                                        ; $6758: $63
	ld   a, l                                        ; $6759: $7d
	sbc  [hl]                                        ; $675a: $9e
	ld   e, c                                        ; $675b: $59
	ld   a, b                                        ; $675c: $78
	sbc  b                                           ; $675d: $98
	ld   d, d                                        ; $675e: $52
	ld   d, d                                        ; $675f: $52
	dec  c                                           ; $6760: $0d
	halt                                             ; $6761: $76
	dec  b                                           ; $6762: $05
	pop  de                                          ; $6763: $d1
	ld   d, h                                        ; $6764: $54
	ld   l, h                                        ; $6765: $6c
	sbc  a                                           ; $6766: $9f
	dec  c                                           ; $6767: $0d
	nop                                              ; $6768: $00
	ld   a, [bc]                                     ; $6769: $0a
	ld   bc, $ca02                                   ; $676a: $01 $02 $ca
	sub  b                                           ; $676d: $90
	ld   l, e                                        ; $676e: $6b
	sbc  d                                           ; $676f: $9a
	ld   a, c                                        ; $6770: $79
	ld   [bc], a                                     ; $6771: $02
	add  hl, bc                                      ; $6772: $09
	ld   d, [hl]                                     ; $6773: $56
	sub  a                                           ; $6774: $97
	sbc  d                                           ; $6775: $9a
	sbc  c                                           ; $6776: $99
	sub  [hl]                                        ; $6777: $96
	ld   d, h                                        ; $6778: $54
	ld   a, c                                        ; $6779: $79
	dec  c                                           ; $677a: $0d
	ld   e, d                                        ; $677b: $5a
	and  c                                           ; $677c: $a1
	ld   a, [hl]                                     ; $677d: $7e
	sbc  c                                           ; $677e: $99
	and  c                                           ; $677f: $a1
	ld   l, [hl]                                     ; $6780: $6e
	ld   l, h                                        ; $6781: $6c
	sbc  a                                           ; $6782: $9f
	dec  c                                           ; $6783: $0d
	nop                                              ; $6784: $00
	ld   a, [bc]                                     ; $6785: $0a
	ld   b, $1c                                      ; $6786: $06 $1c
	ld   a, [bc]                                     ; $6788: $0a
	rrca                                             ; $6789: $0f
	nop                                              ; $678a: $00
	ld   bc, $df01                                   ; $678b: $01 $01 $df
	db   $ec                                         ; $678e: $ec
	and  e                                           ; $678f: $a3
	ld   h, e                                        ; $6790: $63
	and  c                                           ; $6791: $a1
	ld   a, h                                        ; $6792: $7c
	inc  b                                           ; $6793: $04
	ld   l, l                                        ; $6794: $6d
	add  [hl]                                        ; $6795: $86
	ld   a, h                                        ; $6796: $7c
	inc  b                                           ; $6797: $04
	ld   d, a                                        ; $6798: $57
	inc  b                                           ; $6799: $04
	ld   h, e                                        ; $679a: $63
	ld   [hl], c                                     ; $679b: $71
	ld   [hl], h                                     ; $679c: $74
	dec  c                                           ; $679d: $0d
	ld   [hl], a                                     ; $679e: $77
	ld   d, h                                        ; $679f: $54
	ld   a, b                                        ; $67a0: $78
	and  c                                           ; $67a1: $a1
	ld   [hl], l                                     ; $67a2: $75

jr_043_67a3:
	ld   h, l                                        ; $67a3: $65
	sub  l                                           ; $67a4: $95
	ld   d, h                                        ; $67a5: $54
	ld   e, c                                        ; $67a6: $59
	ld   sp, hl                                      ; $67a7: $f9
	dec  c                                           ; $67a8: $0d
	nop                                              ; $67a9: $00
	ld   a, [bc]                                     ; $67aa: $0a
	rrca                                             ; $67ab: $0f
	add  hl, bc                                      ; $67ac: $09
	nop                                              ; $67ad: $00
	ld   bc, $8e83                                   ; $67ae: $01 $83 $8e
	sbc  [hl]                                        ; $67b1: $9e
	ld   l, e                                        ; $67b2: $6b
	ld   d, h                                        ; $67b3: $54
	ld   l, [hl]                                     ; $67b4: $6e
	ld   a, b                                        ; $67b5: $78
	rst  $38                                         ; $67b6: $ff
	rst  $38                                         ; $67b7: $ff
	dec  c                                           ; $67b8: $0d
	nop                                              ; $67b9: $00
	ld   a, [bc]                                     ; $67ba: $0a
	rlca                                             ; $67bb: $07
	ld   d, $06                                      ; $67bc: $16 $06
	inc  bc                                          ; $67be: $03
	inc  de                                          ; $67bf: $13
	ld   bc, $2364                                   ; $67c0: $01 $64 $23
	nop                                              ; $67c3: $00
	rlca                                             ; $67c4: $07
	ld   h, e                                        ; $67c5: $63
	ld   b, $03                                      ; $67c6: $06 $03
	inc  de                                          ; $67c8: $13
	ld   bc, $257c                                   ; $67c9: $01 $7c $25
	nop                                              ; $67cc: $00
	ld   bc, $ecdf                                   ; $67cd: $01 $df $ec
	and  e                                           ; $67d0: $a3
	ld   a, h                                        ; $67d1: $7c
	sbc  [hl]                                        ; $67d2: $9e
	ld   [$5d00], sp                                 ; $67d3: $08 $00 $5d
	and  c                                           ; $67d6: $a1
	dec  c                                           ; $67d7: $0d
	add  [hl]                                        ; $67d8: $86
	ld   a, h                                        ; $67d9: $7c
	inc  b                                           ; $67da: $04
	ld   d, a                                        ; $67db: $57
	inc  b                                           ; $67dc: $04
	ld   h, e                                        ; $67dd: $63
	ld   a, l                                        ; $67de: $7d
	sbc  [hl]                                        ; $67df: $9e
	adc  h                                           ; $67e0: $8c
	ld   d, b                                        ; $67e1: $50
	adc  h                                           ; $67e2: $8c
	ld   d, b                                        ; $67e3: $50
	dec  c                                           ; $67e4: $0d
	halt                                             ; $67e5: $76
	ld   d, d                                        ; $67e6: $52
	ld   [hl], c                                     ; $67e7: $71
	ld   l, l                                        ; $67e8: $6d
	halt                                             ; $67e9: $76
	ld   h, c                                        ; $67ea: $61
	sbc  e                                           ; $67eb: $9b
	ld   e, c                                        ; $67ec: $59
	ld   a, b                                        ; $67ed: $78
	sbc  a                                           ; $67ee: $9f
	dec  c                                           ; $67ef: $0d
	nop                                              ; $67f0: $00
	ld   a, [bc]                                     ; $67f1: $0a
	ld   bc, $5d76                                   ; $67f2: $01 $76 $5d
	ld   a, c                                        ; $67f5: $79
	ld   [bc], a                                     ; $67f6: $02
	jr   z, jr_043_684b                              ; $67f7: $28 $52

	dec  b                                           ; $67f9: $05
	jr   nz, @-$6e                                   ; $67fa: $20 $90

	ld   [bc], a                                     ; $67fc: $02
	jp   nz, $7859                                   ; $67fd: $c2 $59 $78

	ld   d, d                                        ; $6800: $52
	ld   h, l                                        ; $6801: $65
	rst  $38                                         ; $6802: $ff
	rst  $38                                         ; $6803: $ff
	dec  c                                           ; $6804: $0d
	ld   e, c                                        ; $6805: $59
	halt                                             ; $6806: $76
	ld   d, d                                        ; $6807: $52
	ld   [hl], c                                     ; $6808: $71
	ld   [hl], h                                     ; $6809: $74
	sbc  [hl]                                        ; $680a: $9e
	ld   d, d                                        ; $680b: $52
	ld   d, d                                        ; $680c: $52
	halt                                             ; $680d: $76
	ld   d, d                                        ; $680e: $52
	ld   d, h                                        ; $680f: $54
	dec  b                                           ; $6810: $05
	jr   nz, jr_043_67a3                             ; $6811: $20 $90

	dec  c                                           ; $6813: $0d
	ld   [bc], a                                     ; $6814: $02
	jp   nz, $7859                                   ; $6815: $c2 $59 $78

	ld   d, d                                        ; $6818: $52
	ld   a, b                                        ; $6819: $78
	sbc  a                                           ; $681a: $9f
	dec  c                                           ; $681b: $0d
	nop                                              ; $681c: $00
	ld   a, [bc]                                     ; $681d: $0a
	ld   b, $1c                                      ; $681e: $06 $1c
	ld   a, [bc]                                     ; $6820: $0a
	ld   bc, $ecdf                                   ; $6821: $01 $df $ec
	and  e                                           ; $6824: $a3
	ld   a, h                                        ; $6825: $7c
	sbc  [hl]                                        ; $6826: $9e
	ld   [$5d00], sp                                 ; $6827: $08 $00 $5d
	and  c                                           ; $682a: $a1
	dec  c                                           ; $682b: $0d
	add  [hl]                                        ; $682c: $86
	ld   a, h                                        ; $682d: $7c
	inc  b                                           ; $682e: $04
	ld   d, a                                        ; $682f: $57
	inc  b                                           ; $6830: $04
	ld   h, e                                        ; $6831: $63
	ld   a, l                                        ; $6832: $7d
	rst  $38                                         ; $6833: $ff
	rst  $38                                         ; $6834: $ff
	dec  c                                           ; $6835: $0d
	ld   d, b                                        ; $6836: $50
	adc  h                                           ; $6837: $8c
	sbc  b                                           ; $6838: $98
	sub  [hl]                                        ; $6839: $96
	ld   e, l                                        ; $683a: $5d
	ld   a, b                                        ; $683b: $78
	ld   d, d                                        ; $683c: $52
	ld   a, b                                        ; $683d: $78
	sbc  a                                           ; $683e: $9f
	dec  c                                           ; $683f: $0d
	nop                                              ; $6840: $00
	ld   a, [bc]                                     ; $6841: $0a
	ld   bc, $7190                                   ; $6842: $01 $90 $71
	halt                                             ; $6845: $76
	ld   [bc], a                                     ; $6846: $02
	ld   a, [de]                                     ; $6847: $1a
	inc  bc                                          ; $6848: $03
	ld   l, e                                        ; $6849: $6b
	ld   a, h                                        ; $684a: $7c

jr_043_684b:
	ld   [bc], a                                     ; $684b: $02
	and  c                                           ; $684c: $a1
	inc  bc                                          ; $684d: $03
	and  b                                           ; $684e: $a0
	ld   l, a                                        ; $684f: $6f
	and  b                                           ; $6850: $a0
	dec  c                                           ; $6851: $0d
	ld   [bc], a                                     ; $6852: $02
	ld   h, l                                        ; $6853: $65
	ld   d, [hl]                                     ; $6854: $56
	ld   [hl], h                                     ; $6855: $74
	ld   [bc], a                                     ; $6856: $02
	ld   a, a                                        ; $6857: $7f
	inc  b                                           ; $6858: $04
	dec  de                                          ; $6859: $1b
	ld   h, l                                        ; $685a: $65
	ld   l, l                                        ; $685b: $6d
	adc  c                                           ; $685c: $89
	ld   d, h                                        ; $685d: $54
	ld   e, d                                        ; $685e: $5a
	ld   d, d                                        ; $685f: $52
	ld   d, d                                        ; $6860: $52
	halt                                             ; $6861: $76
	dec  c                                           ; $6862: $0d
	dec  b                                           ; $6863: $05
	pop  de                                          ; $6864: $d1
	ld   d, h                                        ; $6865: $54
	ld   l, h                                        ; $6866: $6c
	sbc  a                                           ; $6867: $9f
	dec  c                                           ; $6868: $0d
	nop                                              ; $6869: $00
	ld   a, [bc]                                     ; $686a: $0a
	ld   b, $1c                                      ; $686b: $06 $1c
	ld   a, [bc]                                     ; $686d: $0a
	ld   bc, $ecdf                                   ; $686e: $01 $df $ec
	and  e                                           ; $6871: $a3
	ld   a, h                                        ; $6872: $7c
	sbc  [hl]                                        ; $6873: $9e
	ld   [$5d00], sp                                 ; $6874: $08 $00 $5d
	and  c                                           ; $6877: $a1
	dec  c                                           ; $6878: $0d
	add  [hl]                                        ; $6879: $86
	ld   a, h                                        ; $687a: $7c
	inc  b                                           ; $687b: $04
	ld   d, a                                        ; $687c: $57
	inc  b                                           ; $687d: $04
	ld   h, e                                        ; $687e: $63
	ld   a, l                                        ; $687f: $7d
	sbc  [hl]                                        ; $6880: $9e
	ld   e, c                                        ; $6881: $59
	ld   a, b                                        ; $6882: $78
	sbc  b                                           ; $6883: $98
	ld   d, d                                        ; $6884: $52
	ld   d, d                                        ; $6885: $52
	dec  c                                           ; $6886: $0d
	halt                                             ; $6887: $76
	dec  b                                           ; $6888: $05
	pop  de                                          ; $6889: $d1
	ld   d, h                                        ; $688a: $54
	ld   l, h                                        ; $688b: $6c
	sbc  a                                           ; $688c: $9f
	dec  c                                           ; $688d: $0d
	nop                                              ; $688e: $00
	ld   a, [bc]                                     ; $688f: $0a
	ld   bc, $ca02                                   ; $6890: $01 $02 $ca
	sub  b                                           ; $6893: $90
	ld   l, e                                        ; $6894: $6b
	sbc  d                                           ; $6895: $9a
	ld   a, c                                        ; $6896: $79
	ld   [bc], a                                     ; $6897: $02
	add  hl, bc                                      ; $6898: $09
	ld   d, [hl]                                     ; $6899: $56
	sub  a                                           ; $689a: $97
	sbc  d                                           ; $689b: $9a
	sbc  c                                           ; $689c: $99
	sub  [hl]                                        ; $689d: $96
	ld   d, h                                        ; $689e: $54
	ld   a, c                                        ; $689f: $79
	dec  c                                           ; $68a0: $0d
	ld   e, d                                        ; $68a1: $5a
	and  c                                           ; $68a2: $a1
	ld   a, [hl]                                     ; $68a3: $7e
	sbc  c                                           ; $68a4: $99
	and  c                                           ; $68a5: $a1
	ld   l, [hl]                                     ; $68a6: $6e
	ld   l, h                                        ; $68a7: $6c
	sbc  a                                           ; $68a8: $9f
	dec  c                                           ; $68a9: $0d
	nop                                              ; $68aa: $00
	ld   a, [bc]                                     ; $68ab: $0a
	ld   b, $1c                                      ; $68ac: $06 $1c
	ld   a, [bc]                                     ; $68ae: $0a
	rrca                                             ; $68af: $0f
	nop                                              ; $68b0: $00
	ld   bc, $a301                                   ; $68b1: $01 $01 $a3
	and  l                                           ; $68b4: $a5
	db   $ec                                         ; $68b5: $ec
	cp   d                                           ; $68b6: $ba
	ld   a, h                                        ; $68b7: $7c
	inc  b                                           ; $68b8: $04
	ld   l, l                                        ; $68b9: $6d
	add  [hl]                                        ; $68ba: $86
	ld   a, h                                        ; $68bb: $7c
	inc  b                                           ; $68bc: $04
	ld   d, a                                        ; $68bd: $57
	inc  b                                           ; $68be: $04
	ld   h, e                                        ; $68bf: $63
	ld   [hl], c                                     ; $68c0: $71
	ld   [hl], h                                     ; $68c1: $74
	dec  c                                           ; $68c2: $0d
	ld   [hl], a                                     ; $68c3: $77
	ld   d, h                                        ; $68c4: $54
	ld   a, b                                        ; $68c5: $78
	and  c                                           ; $68c6: $a1
	ld   [hl], l                                     ; $68c7: $75
	ld   h, l                                        ; $68c8: $65

jr_043_68c9:
	sub  l                                           ; $68c9: $95
	ld   d, h                                        ; $68ca: $54
	ld   e, c                                        ; $68cb: $59
	ld   sp, hl                                      ; $68cc: $f9
	dec  c                                           ; $68cd: $0d
	nop                                              ; $68ce: $00
	ld   a, [bc]                                     ; $68cf: $0a
	rrca                                             ; $68d0: $0f
	add  hl, bc                                      ; $68d1: $09
	nop                                              ; $68d2: $00
	ld   bc, $8e83                                   ; $68d3: $01 $83 $8e
	sbc  [hl]                                        ; $68d6: $9e
	ld   l, e                                        ; $68d7: $6b
	ld   d, h                                        ; $68d8: $54
	ld   l, [hl]                                     ; $68d9: $6e
	ld   a, b                                        ; $68da: $78
	rst  $38                                         ; $68db: $ff
	rst  $38                                         ; $68dc: $ff
	dec  c                                           ; $68dd: $0d
	nop                                              ; $68de: $00
	ld   a, [bc]                                     ; $68df: $0a
	rlca                                             ; $68e0: $07
	inc  a                                           ; $68e1: $3c
	rlca                                             ; $68e2: $07
	inc  bc                                          ; $68e3: $03
	inc  d                                           ; $68e4: $14
	ld   bc, $2364                                   ; $68e5: $01 $64 $23
	nop                                              ; $68e8: $00
	rlca                                             ; $68e9: $07
	adc  d                                           ; $68ea: $8a
	rlca                                             ; $68eb: $07
	inc  bc                                          ; $68ec: $03
	inc  d                                           ; $68ed: $14
	ld   bc, $257c                                   ; $68ee: $01 $7c $25
	nop                                              ; $68f1: $00
	ld   bc, $a5a3                                   ; $68f2: $01 $a3 $a5
	db   $ec                                         ; $68f5: $ec
	cp   d                                           ; $68f6: $ba
	ld   a, h                                        ; $68f7: $7c
	sbc  [hl]                                        ; $68f8: $9e
	ld   [$5d00], sp                                 ; $68f9: $08 $00 $5d
	and  c                                           ; $68fc: $a1
	dec  c                                           ; $68fd: $0d
	add  [hl]                                        ; $68fe: $86
	ld   a, h                                        ; $68ff: $7c
	inc  b                                           ; $6900: $04
	ld   d, a                                        ; $6901: $57
	inc  b                                           ; $6902: $04
	ld   h, e                                        ; $6903: $63
	ld   a, l                                        ; $6904: $7d
	sbc  [hl]                                        ; $6905: $9e
	adc  h                                           ; $6906: $8c
	ld   d, b                                        ; $6907: $50
	adc  h                                           ; $6908: $8c
	ld   d, b                                        ; $6909: $50
	dec  c                                           ; $690a: $0d
	halt                                             ; $690b: $76
	ld   d, d                                        ; $690c: $52
	ld   [hl], c                                     ; $690d: $71
	ld   l, l                                        ; $690e: $6d
	halt                                             ; $690f: $76
	ld   h, c                                        ; $6910: $61
	sbc  e                                           ; $6911: $9b
	ld   e, c                                        ; $6912: $59
	ld   a, b                                        ; $6913: $78
	sbc  a                                           ; $6914: $9f
	dec  c                                           ; $6915: $0d
	nop                                              ; $6916: $00
	ld   a, [bc]                                     ; $6917: $0a
	ld   bc, $5d76                                   ; $6918: $01 $76 $5d
	ld   a, c                                        ; $691b: $79
	ld   [bc], a                                     ; $691c: $02
	jr   z, jr_043_6971                              ; $691d: $28 $52

	dec  b                                           ; $691f: $05
	jr   nz, @-$6e                                   ; $6920: $20 $90

	ld   [bc], a                                     ; $6922: $02
	jp   nz, $7859                                   ; $6923: $c2 $59 $78

	ld   d, d                                        ; $6926: $52
	ld   h, l                                        ; $6927: $65
	rst  $38                                         ; $6928: $ff
	rst  $38                                         ; $6929: $ff
	dec  c                                           ; $692a: $0d
	ld   e, c                                        ; $692b: $59
	halt                                             ; $692c: $76
	ld   d, d                                        ; $692d: $52
	ld   [hl], c                                     ; $692e: $71
	ld   [hl], h                                     ; $692f: $74
	sbc  [hl]                                        ; $6930: $9e
	ld   d, d                                        ; $6931: $52
	ld   d, d                                        ; $6932: $52
	halt                                             ; $6933: $76
	ld   d, d                                        ; $6934: $52
	ld   d, h                                        ; $6935: $54
	dec  b                                           ; $6936: $05
	jr   nz, jr_043_68c9                             ; $6937: $20 $90

	dec  c                                           ; $6939: $0d
	ld   [bc], a                                     ; $693a: $02
	jp   nz, $7859                                   ; $693b: $c2 $59 $78

	ld   d, d                                        ; $693e: $52
	ld   a, b                                        ; $693f: $78
	sbc  a                                           ; $6940: $9f
	dec  c                                           ; $6941: $0d
	nop                                              ; $6942: $00
	ld   a, [bc]                                     ; $6943: $0a
	ld   b, $1c                                      ; $6944: $06 $1c
	ld   a, [bc]                                     ; $6946: $0a
	ld   bc, $a5a3                                   ; $6947: $01 $a3 $a5
	db   $ec                                         ; $694a: $ec
	cp   d                                           ; $694b: $ba
	ld   a, h                                        ; $694c: $7c
	sbc  [hl]                                        ; $694d: $9e
	ld   [$5d00], sp                                 ; $694e: $08 $00 $5d
	and  c                                           ; $6951: $a1
	dec  c                                           ; $6952: $0d
	add  [hl]                                        ; $6953: $86
	ld   a, h                                        ; $6954: $7c
	inc  b                                           ; $6955: $04
	ld   d, a                                        ; $6956: $57
	inc  b                                           ; $6957: $04
	ld   h, e                                        ; $6958: $63
	ld   a, l                                        ; $6959: $7d
	rst  $38                                         ; $695a: $ff
	rst  $38                                         ; $695b: $ff
	dec  c                                           ; $695c: $0d
	ld   d, b                                        ; $695d: $50
	adc  h                                           ; $695e: $8c
	sbc  b                                           ; $695f: $98
	sub  [hl]                                        ; $6960: $96
	ld   e, l                                        ; $6961: $5d
	ld   a, b                                        ; $6962: $78
	ld   d, d                                        ; $6963: $52
	ld   a, b                                        ; $6964: $78
	sbc  a                                           ; $6965: $9f
	dec  c                                           ; $6966: $0d
	nop                                              ; $6967: $00
	ld   a, [bc]                                     ; $6968: $0a
	ld   bc, $7190                                   ; $6969: $01 $90 $71
	halt                                             ; $696c: $76
	ld   [bc], a                                     ; $696d: $02
	ld   a, [de]                                     ; $696e: $1a
	inc  bc                                          ; $696f: $03
	ld   l, e                                        ; $6970: $6b

jr_043_6971:
	ld   a, h                                        ; $6971: $7c
	ld   [bc], a                                     ; $6972: $02
	and  c                                           ; $6973: $a1
	inc  bc                                          ; $6974: $03
	and  b                                           ; $6975: $a0
	ld   l, a                                        ; $6976: $6f
	and  b                                           ; $6977: $a0
	dec  c                                           ; $6978: $0d
	ld   [bc], a                                     ; $6979: $02
	ld   h, l                                        ; $697a: $65
	ld   d, [hl]                                     ; $697b: $56
	ld   [hl], h                                     ; $697c: $74
	ld   [bc], a                                     ; $697d: $02
	ld   a, a                                        ; $697e: $7f
	inc  b                                           ; $697f: $04
	dec  de                                          ; $6980: $1b
	ld   h, l                                        ; $6981: $65
	ld   l, l                                        ; $6982: $6d
	adc  c                                           ; $6983: $89
	ld   d, h                                        ; $6984: $54
	ld   e, d                                        ; $6985: $5a
	ld   d, d                                        ; $6986: $52
	ld   d, d                                        ; $6987: $52
	halt                                             ; $6988: $76
	dec  c                                           ; $6989: $0d
	dec  b                                           ; $698a: $05
	pop  de                                          ; $698b: $d1
	ld   d, h                                        ; $698c: $54
	ld   l, h                                        ; $698d: $6c
	sbc  a                                           ; $698e: $9f
	dec  c                                           ; $698f: $0d
	nop                                              ; $6990: $00
	ld   a, [bc]                                     ; $6991: $0a
	ld   b, $1c                                      ; $6992: $06 $1c
	ld   a, [bc]                                     ; $6994: $0a
	ld   bc, $a5a3                                   ; $6995: $01 $a3 $a5
	db   $ec                                         ; $6998: $ec
	cp   d                                           ; $6999: $ba
	ld   a, h                                        ; $699a: $7c
	sbc  [hl]                                        ; $699b: $9e
	ld   [$5d00], sp                                 ; $699c: $08 $00 $5d
	and  c                                           ; $699f: $a1
	dec  c                                           ; $69a0: $0d
	add  [hl]                                        ; $69a1: $86
	ld   a, h                                        ; $69a2: $7c
	inc  b                                           ; $69a3: $04
	ld   d, a                                        ; $69a4: $57
	inc  b                                           ; $69a5: $04
	ld   h, e                                        ; $69a6: $63
	ld   a, l                                        ; $69a7: $7d
	sbc  [hl]                                        ; $69a8: $9e
	ld   e, c                                        ; $69a9: $59
	ld   a, b                                        ; $69aa: $78
	sbc  b                                           ; $69ab: $98
	ld   d, d                                        ; $69ac: $52
	ld   d, d                                        ; $69ad: $52
	dec  c                                           ; $69ae: $0d
	halt                                             ; $69af: $76
	dec  b                                           ; $69b0: $05
	pop  de                                          ; $69b1: $d1
	ld   d, h                                        ; $69b2: $54
	ld   l, h                                        ; $69b3: $6c
	sbc  a                                           ; $69b4: $9f
	dec  c                                           ; $69b5: $0d
	nop                                              ; $69b6: $00
	ld   a, [bc]                                     ; $69b7: $0a
	ld   bc, $ca02                                   ; $69b8: $01 $02 $ca
	sub  b                                           ; $69bb: $90
	ld   l, e                                        ; $69bc: $6b
	sbc  d                                           ; $69bd: $9a
	ld   a, c                                        ; $69be: $79
	ld   [bc], a                                     ; $69bf: $02
	add  hl, bc                                      ; $69c0: $09
	ld   d, [hl]                                     ; $69c1: $56
	sub  a                                           ; $69c2: $97
	sbc  d                                           ; $69c3: $9a
	sbc  c                                           ; $69c4: $99
	sub  [hl]                                        ; $69c5: $96
	ld   d, h                                        ; $69c6: $54
	ld   a, c                                        ; $69c7: $79
	dec  c                                           ; $69c8: $0d
	ld   e, d                                        ; $69c9: $5a
	and  c                                           ; $69ca: $a1
	ld   a, [hl]                                     ; $69cb: $7e
	sbc  c                                           ; $69cc: $99
	and  c                                           ; $69cd: $a1
	ld   l, [hl]                                     ; $69ce: $6e
	ld   l, h                                        ; $69cf: $6c
	sbc  a                                           ; $69d0: $9f
	dec  c                                           ; $69d1: $0d
	nop                                              ; $69d2: $00
	ld   a, [bc]                                     ; $69d3: $0a
	ld   b, $1c                                      ; $69d4: $06 $1c
	ld   a, [bc]                                     ; $69d6: $0a
	rrca                                             ; $69d7: $0f
	nop                                              ; $69d8: $00
	ld   bc, $0201                                   ; $69d9: $01 $01 $02

jr_043_69dc:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69dc: $cf
	dec  b                                           ; $69dd: $05
	ld   a, [de]                                     ; $69de: $1a
	ld   h, e                                        ; $69df: $63
	and  c                                           ; $69e0: $a1
	ld   a, h                                        ; $69e1: $7c
	inc  b                                           ; $69e2: $04
	ld   l, l                                        ; $69e3: $6d
	add  [hl]                                        ; $69e4: $86
	ld   a, h                                        ; $69e5: $7c
	inc  b                                           ; $69e6: $04
	ld   d, a                                        ; $69e7: $57
	inc  b                                           ; $69e8: $04
	ld   h, e                                        ; $69e9: $63
	ld   [hl], c                                     ; $69ea: $71
	ld   [hl], h                                     ; $69eb: $74
	dec  c                                           ; $69ec: $0d
	ld   [hl], a                                     ; $69ed: $77
	ld   d, h                                        ; $69ee: $54
	ld   a, b                                        ; $69ef: $78
	and  c                                           ; $69f0: $a1
	ld   [hl], l                                     ; $69f1: $75
	ld   h, l                                        ; $69f2: $65

jr_043_69f3:
	sub  l                                           ; $69f3: $95
	ld   d, h                                        ; $69f4: $54
	ld   e, c                                        ; $69f5: $59
	ld   sp, hl                                      ; $69f6: $f9
	dec  c                                           ; $69f7: $0d
	nop                                              ; $69f8: $00
	ld   a, [bc]                                     ; $69f9: $0a
	rrca                                             ; $69fa: $0f
	add  hl, bc                                      ; $69fb: $09
	nop                                              ; $69fc: $00
	ld   bc, $8e83                                   ; $69fd: $01 $83 $8e
	sbc  [hl]                                        ; $6a00: $9e
	ld   l, e                                        ; $6a01: $6b
	ld   d, h                                        ; $6a02: $54
	ld   l, [hl]                                     ; $6a03: $6e
	ld   a, b                                        ; $6a04: $78
	rst  $38                                         ; $6a05: $ff
	rst  $38                                         ; $6a06: $ff
	dec  c                                           ; $6a07: $0d
	nop                                              ; $6a08: $00
	ld   a, [bc]                                     ; $6a09: $0a
	rlca                                             ; $6a0a: $07
	ld   h, [hl]                                     ; $6a0b: $66
	ld   [$1503], sp                                 ; $6a0c: $08 $03 $15
	ld   bc, $2364                                   ; $6a0f: $01 $64 $23
	nop                                              ; $6a12: $00
	rlca                                             ; $6a13: $07
	or   h                                           ; $6a14: $b4
	ld   [$1503], sp                                 ; $6a15: $08 $03 $15
	ld   bc, $257c                                   ; $6a18: $01 $7c $25
	nop                                              ; $6a1b: $00
	ld   bc, $cf02                                   ; $6a1c: $01 $02 $cf
	dec  b                                           ; $6a1f: $05
	ld   a, [de]                                     ; $6a20: $1a
	ld   a, h                                        ; $6a21: $7c
	sbc  [hl]                                        ; $6a22: $9e
	ld   [$5d00], sp                                 ; $6a23: $08 $00 $5d
	and  c                                           ; $6a26: $a1
	dec  c                                           ; $6a27: $0d
	add  [hl]                                        ; $6a28: $86
	ld   a, h                                        ; $6a29: $7c
	inc  b                                           ; $6a2a: $04
	ld   d, a                                        ; $6a2b: $57
	inc  b                                           ; $6a2c: $04
	ld   h, e                                        ; $6a2d: $63
	ld   a, l                                        ; $6a2e: $7d
	sbc  [hl]                                        ; $6a2f: $9e
	adc  h                                           ; $6a30: $8c
	ld   d, b                                        ; $6a31: $50
	adc  h                                           ; $6a32: $8c
	ld   d, b                                        ; $6a33: $50
	dec  c                                           ; $6a34: $0d
	halt                                             ; $6a35: $76
	ld   d, d                                        ; $6a36: $52
	ld   [hl], c                                     ; $6a37: $71
	ld   l, l                                        ; $6a38: $6d
	halt                                             ; $6a39: $76
	ld   h, c                                        ; $6a3a: $61
	sbc  e                                           ; $6a3b: $9b
	ld   e, c                                        ; $6a3c: $59
	ld   a, b                                        ; $6a3d: $78
	sbc  a                                           ; $6a3e: $9f
	dec  c                                           ; $6a3f: $0d
	nop                                              ; $6a40: $00
	ld   a, [bc]                                     ; $6a41: $0a
	ld   bc, $5d76                                   ; $6a42: $01 $76 $5d
	ld   a, c                                        ; $6a45: $79
	ld   [bc], a                                     ; $6a46: $02
	jr   z, jr_043_6a9b                              ; $6a47: $28 $52

	dec  b                                           ; $6a49: $05
	jr   nz, jr_043_69dc                             ; $6a4a: $20 $90

	ld   [bc], a                                     ; $6a4c: $02
	jp   nz, $7859                                   ; $6a4d: $c2 $59 $78

	ld   d, d                                        ; $6a50: $52
	ld   h, l                                        ; $6a51: $65
	rst  $38                                         ; $6a52: $ff
	rst  $38                                         ; $6a53: $ff
	dec  c                                           ; $6a54: $0d
	ld   e, c                                        ; $6a55: $59
	halt                                             ; $6a56: $76
	ld   d, d                                        ; $6a57: $52
	ld   [hl], c                                     ; $6a58: $71
	ld   [hl], h                                     ; $6a59: $74
	sbc  [hl]                                        ; $6a5a: $9e
	ld   d, d                                        ; $6a5b: $52
	ld   d, d                                        ; $6a5c: $52
	halt                                             ; $6a5d: $76
	ld   d, d                                        ; $6a5e: $52
	ld   d, h                                        ; $6a5f: $54
	dec  b                                           ; $6a60: $05
	jr   nz, jr_043_69f3                             ; $6a61: $20 $90

	dec  c                                           ; $6a63: $0d
	ld   [bc], a                                     ; $6a64: $02
	jp   nz, $7859                                   ; $6a65: $c2 $59 $78

	ld   d, d                                        ; $6a68: $52
	ld   a, b                                        ; $6a69: $78
	sbc  a                                           ; $6a6a: $9f
	dec  c                                           ; $6a6b: $0d
	nop                                              ; $6a6c: $00
	ld   a, [bc]                                     ; $6a6d: $0a
	ld   b, $1c                                      ; $6a6e: $06 $1c
	ld   a, [bc]                                     ; $6a70: $0a
	ld   bc, $cf02                                   ; $6a71: $01 $02 $cf
	dec  b                                           ; $6a74: $05
	ld   a, [de]                                     ; $6a75: $1a
	ld   a, h                                        ; $6a76: $7c
	sbc  [hl]                                        ; $6a77: $9e
	ld   [$5d00], sp                                 ; $6a78: $08 $00 $5d
	and  c                                           ; $6a7b: $a1
	dec  c                                           ; $6a7c: $0d
	add  [hl]                                        ; $6a7d: $86
	ld   a, h                                        ; $6a7e: $7c
	inc  b                                           ; $6a7f: $04
	ld   d, a                                        ; $6a80: $57
	inc  b                                           ; $6a81: $04
	ld   h, e                                        ; $6a82: $63
	ld   a, l                                        ; $6a83: $7d
	rst  $38                                         ; $6a84: $ff
	rst  $38                                         ; $6a85: $ff
	dec  c                                           ; $6a86: $0d
	ld   d, b                                        ; $6a87: $50
	adc  h                                           ; $6a88: $8c
	sbc  b                                           ; $6a89: $98
	sub  [hl]                                        ; $6a8a: $96
	ld   e, l                                        ; $6a8b: $5d
	ld   a, b                                        ; $6a8c: $78
	ld   d, d                                        ; $6a8d: $52
	ld   a, b                                        ; $6a8e: $78
	sbc  a                                           ; $6a8f: $9f
	dec  c                                           ; $6a90: $0d
	nop                                              ; $6a91: $00
	ld   a, [bc]                                     ; $6a92: $0a
	ld   bc, $7190                                   ; $6a93: $01 $90 $71
	halt                                             ; $6a96: $76
	ld   [bc], a                                     ; $6a97: $02
	ld   a, [de]                                     ; $6a98: $1a
	inc  bc                                          ; $6a99: $03
	ld   l, e                                        ; $6a9a: $6b

jr_043_6a9b:
	ld   a, h                                        ; $6a9b: $7c
	ld   [bc], a                                     ; $6a9c: $02
	and  c                                           ; $6a9d: $a1
	inc  bc                                          ; $6a9e: $03
	and  b                                           ; $6a9f: $a0
	ld   l, a                                        ; $6aa0: $6f
	and  b                                           ; $6aa1: $a0
	dec  c                                           ; $6aa2: $0d
	ld   [bc], a                                     ; $6aa3: $02
	ld   h, l                                        ; $6aa4: $65
	ld   d, [hl]                                     ; $6aa5: $56
	ld   [hl], h                                     ; $6aa6: $74
	ld   [bc], a                                     ; $6aa7: $02
	ld   a, a                                        ; $6aa8: $7f
	inc  b                                           ; $6aa9: $04
	dec  de                                          ; $6aaa: $1b
	ld   h, l                                        ; $6aab: $65
	ld   l, l                                        ; $6aac: $6d
	adc  c                                           ; $6aad: $89
	ld   d, h                                        ; $6aae: $54
	ld   e, d                                        ; $6aaf: $5a
	ld   d, d                                        ; $6ab0: $52
	ld   d, d                                        ; $6ab1: $52
	halt                                             ; $6ab2: $76
	dec  c                                           ; $6ab3: $0d
	dec  b                                           ; $6ab4: $05
	pop  de                                          ; $6ab5: $d1
	ld   d, h                                        ; $6ab6: $54
	ld   l, h                                        ; $6ab7: $6c
	sbc  a                                           ; $6ab8: $9f
	dec  c                                           ; $6ab9: $0d
	nop                                              ; $6aba: $00
	ld   a, [bc]                                     ; $6abb: $0a
	ld   b, $1c                                      ; $6abc: $06 $1c
	ld   a, [bc]                                     ; $6abe: $0a
	ld   bc, $cf02                                   ; $6abf: $01 $02 $cf
	dec  b                                           ; $6ac2: $05
	ld   a, [de]                                     ; $6ac3: $1a
	ld   a, h                                        ; $6ac4: $7c
	sbc  [hl]                                        ; $6ac5: $9e
	ld   [$5d00], sp                                 ; $6ac6: $08 $00 $5d
	and  c                                           ; $6ac9: $a1
	dec  c                                           ; $6aca: $0d
	add  [hl]                                        ; $6acb: $86
	ld   a, h                                        ; $6acc: $7c
	inc  b                                           ; $6acd: $04
	ld   d, a                                        ; $6ace: $57
	inc  b                                           ; $6acf: $04
	ld   h, e                                        ; $6ad0: $63
	ld   a, l                                        ; $6ad1: $7d
	sbc  [hl]                                        ; $6ad2: $9e
	ld   e, c                                        ; $6ad3: $59
	ld   a, b                                        ; $6ad4: $78
	sbc  b                                           ; $6ad5: $98
	ld   d, d                                        ; $6ad6: $52
	ld   d, d                                        ; $6ad7: $52
	dec  c                                           ; $6ad8: $0d
	halt                                             ; $6ad9: $76
	dec  b                                           ; $6ada: $05
	pop  de                                          ; $6adb: $d1
	ld   d, h                                        ; $6adc: $54
	ld   l, h                                        ; $6add: $6c
	sbc  a                                           ; $6ade: $9f
	dec  c                                           ; $6adf: $0d
	nop                                              ; $6ae0: $00
	ld   a, [bc]                                     ; $6ae1: $0a
	ld   bc, $ca02                                   ; $6ae2: $01 $02 $ca
	sub  b                                           ; $6ae5: $90
	ld   l, e                                        ; $6ae6: $6b
	sbc  d                                           ; $6ae7: $9a
	ld   a, c                                        ; $6ae8: $79
	ld   [bc], a                                     ; $6ae9: $02
	add  hl, bc                                      ; $6aea: $09
	ld   d, [hl]                                     ; $6aeb: $56
	sub  a                                           ; $6aec: $97
	sbc  d                                           ; $6aed: $9a
	sbc  c                                           ; $6aee: $99
	sub  [hl]                                        ; $6aef: $96
	ld   d, h                                        ; $6af0: $54
	ld   a, c                                        ; $6af1: $79
	dec  c                                           ; $6af2: $0d
	ld   e, d                                        ; $6af3: $5a
	and  c                                           ; $6af4: $a1
	ld   a, [hl]                                     ; $6af5: $7e
	sbc  c                                           ; $6af6: $99
	and  c                                           ; $6af7: $a1
	ld   l, [hl]                                     ; $6af8: $6e
	ld   l, h                                        ; $6af9: $6c
	sbc  a                                           ; $6afa: $9f
	dec  c                                           ; $6afb: $0d
	nop                                              ; $6afc: $00
	ld   a, [bc]                                     ; $6afd: $0a
	ld   b, $1c                                      ; $6afe: $06 $1c
	ld   a, [bc]                                     ; $6b00: $0a
	rrca                                             ; $6b01: $0f
	nop                                              ; $6b02: $00
	ld   bc, $ac01                                   ; $6b03: $01 $01 $ac
	push af                                          ; $6b06: $f5
	bit  4, e                                        ; $6b07: $cb $63
	and  c                                           ; $6b09: $a1
	ld   a, h                                        ; $6b0a: $7c
	inc  b                                           ; $6b0b: $04
	ld   l, l                                        ; $6b0c: $6d
	add  [hl]                                        ; $6b0d: $86
	ld   a, h                                        ; $6b0e: $7c
	inc  b                                           ; $6b0f: $04
	ld   d, a                                        ; $6b10: $57
	inc  b                                           ; $6b11: $04
	ld   h, e                                        ; $6b12: $63
	ld   [hl], c                                     ; $6b13: $71
	ld   [hl], h                                     ; $6b14: $74
	dec  c                                           ; $6b15: $0d
	ld   [hl], a                                     ; $6b16: $77
	ld   d, h                                        ; $6b17: $54
	ld   a, b                                        ; $6b18: $78
	and  c                                           ; $6b19: $a1
	ld   [hl], l                                     ; $6b1a: $75

jr_043_6b1b:
	ld   h, l                                        ; $6b1b: $65
	sub  l                                           ; $6b1c: $95
	ld   d, h                                        ; $6b1d: $54
	ld   e, c                                        ; $6b1e: $59
	ld   sp, hl                                      ; $6b1f: $f9
	dec  c                                           ; $6b20: $0d
	nop                                              ; $6b21: $00
	ld   a, [bc]                                     ; $6b22: $0a
	rrca                                             ; $6b23: $0f
	add  hl, bc                                      ; $6b24: $09
	nop                                              ; $6b25: $00
	ld   bc, $8e83                                   ; $6b26: $01 $83 $8e
	sbc  [hl]                                        ; $6b29: $9e
	ld   l, e                                        ; $6b2a: $6b
	ld   d, h                                        ; $6b2b: $54
	ld   l, [hl]                                     ; $6b2c: $6e
	ld   a, b                                        ; $6b2d: $78
	rst  $38                                         ; $6b2e: $ff
	rst  $38                                         ; $6b2f: $ff
	dec  c                                           ; $6b30: $0d
	nop                                              ; $6b31: $00
	ld   a, [bc]                                     ; $6b32: $0a
	rlca                                             ; $6b33: $07
	adc  [hl]                                        ; $6b34: $8e
	add  hl, bc                                      ; $6b35: $09
	inc  bc                                          ; $6b36: $03
	ld   d, $01                                      ; $6b37: $16 $01
	ld   h, h                                        ; $6b39: $64
	inc  hl                                          ; $6b3a: $23
	nop                                              ; $6b3b: $00
	rlca                                             ; $6b3c: $07
	db   $db                                         ; $6b3d: $db
	add  hl, bc                                      ; $6b3e: $09
	inc  bc                                          ; $6b3f: $03
	ld   d, $01                                      ; $6b40: $16 $01
	ld   a, h                                        ; $6b42: $7c
	dec  h                                           ; $6b43: $25
	nop                                              ; $6b44: $00
	ld   bc, $f5ac                                   ; $6b45: $01 $ac $f5
	bit  7, h                                        ; $6b48: $cb $7c
	sbc  [hl]                                        ; $6b4a: $9e
	ld   [$5d00], sp                                 ; $6b4b: $08 $00 $5d
	and  c                                           ; $6b4e: $a1
	dec  c                                           ; $6b4f: $0d
	add  [hl]                                        ; $6b50: $86
	ld   a, h                                        ; $6b51: $7c
	inc  b                                           ; $6b52: $04
	ld   d, a                                        ; $6b53: $57
	inc  b                                           ; $6b54: $04
	ld   h, e                                        ; $6b55: $63
	ld   a, l                                        ; $6b56: $7d
	sbc  [hl]                                        ; $6b57: $9e
	adc  h                                           ; $6b58: $8c
	ld   d, b                                        ; $6b59: $50
	adc  h                                           ; $6b5a: $8c
	ld   d, b                                        ; $6b5b: $50
	dec  c                                           ; $6b5c: $0d
	halt                                             ; $6b5d: $76
	ld   d, d                                        ; $6b5e: $52
	ld   [hl], c                                     ; $6b5f: $71
	ld   l, l                                        ; $6b60: $6d
	halt                                             ; $6b61: $76
	ld   h, c                                        ; $6b62: $61
	sbc  e                                           ; $6b63: $9b
	ld   e, c                                        ; $6b64: $59
	ld   a, b                                        ; $6b65: $78
	sbc  a                                           ; $6b66: $9f
	dec  c                                           ; $6b67: $0d
	nop                                              ; $6b68: $00
	ld   a, [bc]                                     ; $6b69: $0a
	ld   bc, $5d76                                   ; $6b6a: $01 $76 $5d
	ld   a, c                                        ; $6b6d: $79
	ld   [bc], a                                     ; $6b6e: $02
	jr   z, jr_043_6bc3                              ; $6b6f: $28 $52

	dec  b                                           ; $6b71: $05
	jr   nz, @-$6e                                   ; $6b72: $20 $90

	ld   [bc], a                                     ; $6b74: $02
	jp   nz, $7859                                   ; $6b75: $c2 $59 $78

	ld   d, d                                        ; $6b78: $52
	ld   h, l                                        ; $6b79: $65
	rst  $38                                         ; $6b7a: $ff
	rst  $38                                         ; $6b7b: $ff
	dec  c                                           ; $6b7c: $0d
	ld   e, c                                        ; $6b7d: $59
	halt                                             ; $6b7e: $76
	ld   d, d                                        ; $6b7f: $52
	ld   [hl], c                                     ; $6b80: $71
	ld   [hl], h                                     ; $6b81: $74
	sbc  [hl]                                        ; $6b82: $9e
	ld   d, d                                        ; $6b83: $52
	ld   d, d                                        ; $6b84: $52
	halt                                             ; $6b85: $76
	ld   d, d                                        ; $6b86: $52
	ld   d, h                                        ; $6b87: $54
	dec  b                                           ; $6b88: $05
	jr   nz, jr_043_6b1b                             ; $6b89: $20 $90

	dec  c                                           ; $6b8b: $0d
	ld   [bc], a                                     ; $6b8c: $02
	jp   nz, $7859                                   ; $6b8d: $c2 $59 $78

	ld   d, d                                        ; $6b90: $52
	ld   a, b                                        ; $6b91: $78
	sbc  a                                           ; $6b92: $9f
	dec  c                                           ; $6b93: $0d
	nop                                              ; $6b94: $00
	ld   a, [bc]                                     ; $6b95: $0a
	ld   b, $1c                                      ; $6b96: $06 $1c
	ld   a, [bc]                                     ; $6b98: $0a
	ld   bc, $f5ac                                   ; $6b99: $01 $ac $f5
	bit  7, h                                        ; $6b9c: $cb $7c
	sbc  [hl]                                        ; $6b9e: $9e
	ld   [$5d00], sp                                 ; $6b9f: $08 $00 $5d
	and  c                                           ; $6ba2: $a1
	dec  c                                           ; $6ba3: $0d
	add  [hl]                                        ; $6ba4: $86
	ld   a, h                                        ; $6ba5: $7c
	inc  b                                           ; $6ba6: $04
	ld   d, a                                        ; $6ba7: $57
	inc  b                                           ; $6ba8: $04
	ld   h, e                                        ; $6ba9: $63
	ld   a, l                                        ; $6baa: $7d
	rst  $38                                         ; $6bab: $ff
	rst  $38                                         ; $6bac: $ff
	dec  c                                           ; $6bad: $0d
	ld   d, b                                        ; $6bae: $50
	adc  h                                           ; $6baf: $8c
	sbc  b                                           ; $6bb0: $98
	sub  [hl]                                        ; $6bb1: $96
	ld   e, l                                        ; $6bb2: $5d
	ld   a, b                                        ; $6bb3: $78
	ld   d, d                                        ; $6bb4: $52
	ld   a, b                                        ; $6bb5: $78
	sbc  a                                           ; $6bb6: $9f
	dec  c                                           ; $6bb7: $0d
	nop                                              ; $6bb8: $00
	ld   a, [bc]                                     ; $6bb9: $0a
	ld   bc, $7190                                   ; $6bba: $01 $90 $71
	halt                                             ; $6bbd: $76
	ld   [bc], a                                     ; $6bbe: $02
	ld   a, [de]                                     ; $6bbf: $1a
	inc  bc                                          ; $6bc0: $03
	ld   l, e                                        ; $6bc1: $6b
	ld   a, h                                        ; $6bc2: $7c

jr_043_6bc3:
	ld   [bc], a                                     ; $6bc3: $02
	and  c                                           ; $6bc4: $a1
	inc  bc                                          ; $6bc5: $03
	and  b                                           ; $6bc6: $a0
	ld   l, a                                        ; $6bc7: $6f
	and  b                                           ; $6bc8: $a0
	dec  c                                           ; $6bc9: $0d
	ld   [bc], a                                     ; $6bca: $02
	ld   h, l                                        ; $6bcb: $65
	ld   d, [hl]                                     ; $6bcc: $56
	ld   [hl], h                                     ; $6bcd: $74
	ld   [bc], a                                     ; $6bce: $02
	ld   a, a                                        ; $6bcf: $7f
	inc  b                                           ; $6bd0: $04
	dec  de                                          ; $6bd1: $1b
	ld   h, l                                        ; $6bd2: $65
	ld   l, l                                        ; $6bd3: $6d
	adc  c                                           ; $6bd4: $89
	ld   d, h                                        ; $6bd5: $54
	ld   e, d                                        ; $6bd6: $5a
	ld   d, d                                        ; $6bd7: $52
	ld   d, d                                        ; $6bd8: $52
	halt                                             ; $6bd9: $76
	dec  c                                           ; $6bda: $0d
	dec  b                                           ; $6bdb: $05
	pop  de                                          ; $6bdc: $d1
	ld   d, h                                        ; $6bdd: $54
	ld   l, h                                        ; $6bde: $6c
	sbc  a                                           ; $6bdf: $9f
	dec  c                                           ; $6be0: $0d
	nop                                              ; $6be1: $00
	ld   a, [bc]                                     ; $6be2: $0a
	ld   b, $1c                                      ; $6be3: $06 $1c
	ld   a, [bc]                                     ; $6be5: $0a
	ld   bc, $f5ac                                   ; $6be6: $01 $ac $f5
	bit  7, h                                        ; $6be9: $cb $7c
	sbc  [hl]                                        ; $6beb: $9e
	ld   [$5d00], sp                                 ; $6bec: $08 $00 $5d
	and  c                                           ; $6bef: $a1
	dec  c                                           ; $6bf0: $0d
	add  [hl]                                        ; $6bf1: $86
	ld   a, h                                        ; $6bf2: $7c
	inc  b                                           ; $6bf3: $04
	ld   d, a                                        ; $6bf4: $57
	inc  b                                           ; $6bf5: $04
	ld   h, e                                        ; $6bf6: $63
	ld   a, l                                        ; $6bf7: $7d
	sbc  [hl]                                        ; $6bf8: $9e
	ld   e, c                                        ; $6bf9: $59
	ld   a, b                                        ; $6bfa: $78
	sbc  b                                           ; $6bfb: $98
	ld   d, d                                        ; $6bfc: $52
	ld   d, d                                        ; $6bfd: $52
	dec  c                                           ; $6bfe: $0d
	halt                                             ; $6bff: $76
	dec  b                                           ; $6c00: $05
	pop  de                                          ; $6c01: $d1
	ld   d, h                                        ; $6c02: $54
	ld   l, h                                        ; $6c03: $6c
	sbc  a                                           ; $6c04: $9f
	dec  c                                           ; $6c05: $0d
	nop                                              ; $6c06: $00
	ld   a, [bc]                                     ; $6c07: $0a
	ld   bc, $ca02                                   ; $6c08: $01 $02 $ca
	sub  b                                           ; $6c0b: $90
	ld   l, e                                        ; $6c0c: $6b
	sbc  d                                           ; $6c0d: $9a
	ld   a, c                                        ; $6c0e: $79
	ld   [bc], a                                     ; $6c0f: $02
	add  hl, bc                                      ; $6c10: $09
	ld   d, [hl]                                     ; $6c11: $56
	sub  a                                           ; $6c12: $97
	sbc  d                                           ; $6c13: $9a
	sbc  c                                           ; $6c14: $99
	sub  [hl]                                        ; $6c15: $96
	ld   d, h                                        ; $6c16: $54
	ld   a, c                                        ; $6c17: $79
	dec  c                                           ; $6c18: $0d
	ld   e, d                                        ; $6c19: $5a
	and  c                                           ; $6c1a: $a1
	ld   a, [hl]                                     ; $6c1b: $7e
	sbc  c                                           ; $6c1c: $99
	and  c                                           ; $6c1d: $a1
	ld   l, [hl]                                     ; $6c1e: $6e
	ld   l, h                                        ; $6c1f: $6c
	sbc  a                                           ; $6c20: $9f
	dec  c                                           ; $6c21: $0d
	nop                                              ; $6c22: $00
	ld   a, [bc]                                     ; $6c23: $0a
	ld   b, $1c                                      ; $6c24: $06 $1c
	ld   a, [bc]                                     ; $6c26: $0a
	rrca                                             ; $6c27: $0f
	nop                                              ; $6c28: $00
	ld   bc, $6b01                                   ; $6c29: $01 $01 $6b
	ld   d, h                                        ; $6c2c: $54
	ld   [hl], l                                     ; $6c2d: $75
	ld   h, a                                        ; $6c2e: $67
	ld   e, c                                        ; $6c2f: $59
	rst  $38                                         ; $6c30: $ff
	rst  $38                                         ; $6c31: $ff
	dec  c                                           ; $6c32: $0d
	ld   d, b                                        ; $6c33: $50
	sbc  b                                           ; $6c34: $98
	ld   e, d                                        ; $6c35: $5a
	halt                                             ; $6c36: $76
	ld   d, h                                        ; $6c37: $54
	ld   h, d                                        ; $6c38: $62
	ld   h, h                                        ; $6c39: $64
	ld   d, d                                        ; $6c3a: $52
	adc  h                                           ; $6c3b: $8c
	ld   h, l                                        ; $6c3c: $65
	ld   l, l                                        ; $6c3d: $6d
	sbc  a                                           ; $6c3e: $9f
	dec  c                                           ; $6c3f: $0d
	nop                                              ; $6c40: $00
	ld   a, [bc]                                     ; $6c41: $0a
	rrca                                             ; $6c42: $0f
	add  hl, bc                                      ; $6c43: $09
	nop                                              ; $6c44: $00
	ld   bc, $a154                                   ; $6c45: $01 $54 $a1
	sbc  a                                           ; $6c48: $9f
	dec  c                                           ; $6c49: $0d
	ld   e, d                                        ; $6c4a: $5a
	and  c                                           ; $6c4b: $a1
	ld   a, [hl]                                     ; $6c4c: $7e
	sbc  d                                           ; $6c4d: $9a
	sub  [hl]                                        ; $6c4e: $96
	sbc  a                                           ; $6c4f: $9f
	dec  c                                           ; $6c50: $0d
	nop                                              ; $6c51: $00
	ld   a, [bc]                                     ; $6c52: $0a
	nop                                              ; $6c53: $00
	rrca                                             ; $6c54: $0f
	nop                                              ; $6c55: $00
	ld   bc, $5001                                   ; $6c56: $01 $01 $50
	ld   a, h                                        ; $6c59: $7c
	sbc  [hl]                                        ; $6c5a: $9e
	inc  bc                                          ; $6c5b: $03
	ld   l, l                                        ; $6c5c: $6d
	dec  b                                           ; $6c5d: $05
	add  hl, de                                      ; $6c5e: $19
	ld   a, h                                        ; $6c5f: $7c
	and  e                                           ; $6c60: $a3
	jp   z, $a5d1                                    ; $6c61: $ca $d1 $a5

	cp   d                                           ; $6c64: $ba
	and  b                                           ; $6c65: $a0
	dec  c                                           ; $6c66: $0d
	ld   e, b                                        ; $6c67: $58
	ld   [bc], a                                     ; $6c68: $02
	add  b                                           ; $6c69: $80
	ld   d, d                                        ; $6c6a: $52
	ld   h, l                                        ; $6c6b: $65
	ld   l, l                                        ; $6c6c: $6d
	ld   d, d                                        ; $6c6d: $52

Call_043_6c6e:
	and  c                                           ; $6c6e: $a1
	ld   [hl], l                                     ; $6c6f: $75
	ld   h, a                                        ; $6c70: $67
	ld   e, a                                        ; $6c71: $5f
	ld   [hl], a                                     ; $6c72: $77
	sbc  a                                           ; $6c73: $9f
	dec  c                                           ; $6c74: $0d
	nop                                              ; $6c75: $00
	ld   a, [bc]                                     ; $6c76: $0a
	inc  e                                           ; $6c77: $1c
	add  hl, bc                                      ; $6c78: $09
	dec  b                                           ; $6c79: $05
	ld   a, [bc]                                     ; $6c7a: $0a
	ld   bc, $5258                                   ; $6c7b: $01 $58 $52
	ld   e, b                                        ; $6c7e: $58
	ld   d, d                                        ; $6c7f: $52
	sbc  [hl]                                        ; $6c80: $9e
	adc  h                                           ; $6c81: $8c
	ld   l, [hl]                                     ; $6c82: $6e
	ld   [bc], a                                     ; $6c83: $02
	jr   nz, jr_043_6c89                             ; $6c84: $20 $03

	ld   a, c                                        ; $6c86: $79
	ld   [bc], a                                     ; $6c87: $02
	xor  c                                           ; $6c88: $a9

jr_043_6c89:
	inc  b                                           ; $6c89: $04
	call nc, Call_043_6c6e                           ; $6c8a: $d4 $6e $6c
	sbc  [hl]                                        ; $6c8d: $9e
	dec  c                                           ; $6c8e: $0d
	dec  b                                           ; $6c8f: $05
	ld   [hl], e                                     ; $6c90: $73
	ld   e, d                                        ; $6c91: $5a
	and  e                                           ; $6c92: $a3
	jp   z, $a5d1                                    ; $6c93: $ca $d1 $a5

	cp   d                                           ; $6c96: $ba
	ld   h, a                                        ; $6c97: $67
	sbc  c                                           ; $6c98: $99
	adc  c                                           ; $6c99: $89
	ld   [hl], a                                     ; $6c9a: $77
	dec  c                                           ; $6c9b: $0d
	inc  bc                                          ; $6c9c: $03
	ld   l, l                                        ; $6c9d: $6d
	dec  b                                           ; $6c9e: $05
	add  hl, de                                      ; $6c9f: $19
	ld   h, l                                        ; $6ca0: $65
	ld   [hl], h                                     ; $6ca1: $74
	ld   a, b                                        ; $6ca2: $78
	ld   d, d                                        ; $6ca3: $52
	and  c                                           ; $6ca4: $a1
	ld   h, [hl]                                     ; $6ca5: $66
	sub  c                                           ; $6ca6: $91
	ld   a, b                                        ; $6ca7: $78
	ld   d, d                                        ; $6ca8: $52
	ld   e, c                                        ; $6ca9: $59
	ld   sp, hl                                      ; $6caa: $f9
	dec  c                                           ; $6cab: $0d
	nop                                              ; $6cac: $00
	ld   a, [bc]                                     ; $6cad: $0a
	inc  e                                           ; $6cae: $1c
	add  hl, bc                                      ; $6caf: $09
	nop                                              ; $6cb0: $00
	nop                                              ; $6cb1: $00
	ld   bc, $a102                                   ; $6cb2: $01 $02 $a1
	ld   e, d                                        ; $6cb5: $5a
	ld   a, l                                        ; $6cb6: $7d
	sub  d                                           ; $6cb7: $92
	sbc  c                                           ; $6cb8: $99
	ld   a, h                                        ; $6cb9: $7c
	sub  b                                           ; $6cba: $90
	sbc  l                                           ; $6cbb: $9d
	ld   e, c                                        ; $6cbc: $59
	sbc  c                                           ; $6cbd: $99
	ld   e, d                                        ; $6cbe: $5a
	sbc  [hl]                                        ; $6cbf: $9e
	dec  c                                           ; $6cc0: $0d
	sub  b                                           ; $6cc1: $90
	ld   d, h                                        ; $6cc2: $54
	inc  bc                                          ; $6cc3: $03
	ld   l, h                                        ; $6cc4: $6c
	ld   h, l                                        ; $6cc5: $65
	inc  bc                                          ; $6cc6: $03
	ld   l, l                                        ; $6cc7: $6d
	dec  b                                           ; $6cc8: $05
	add  hl, de                                      ; $6cc9: $19
	ld   h, l                                        ; $6cca: $65
	ld   [hl], h                                     ; $6ccb: $74
	ld   e, c                                        ; $6ccc: $59
	sub  a                                           ; $6ccd: $97
	dec  c                                           ; $6cce: $0d
	dec  b                                           ; $6ccf: $05
	db   $10                                         ; $6cd0: $10
	ld   l, l                                        ; $6cd1: $6d
	inc  b                                           ; $6cd2: $04
	ld   a, b                                        ; $6cd3: $78
	ld   e, d                                        ; $6cd4: $5a
	ld   d, d                                        ; $6cd5: $52
	ld   d, d                                        ; $6cd6: $52
	and  c                                           ; $6cd7: $a1
	ld   h, [hl]                                     ; $6cd8: $66
	sub  c                                           ; $6cd9: $91
	ld   a, b                                        ; $6cda: $78
	ld   d, d                                        ; $6cdb: $52
	ld   e, c                                        ; $6cdc: $59
	ld   a, b                                        ; $6cdd: $78
	sbc  a                                           ; $6cde: $9f
	dec  c                                           ; $6cdf: $0d
	nop                                              ; $6ce0: $00
	ld   a, [bc]                                     ; $6ce1: $0a
	rrca                                             ; $6ce2: $0f
	nop                                              ; $6ce3: $00
	ld   bc, $7d01                                   ; $6ce4: $01 $01 $7d
	sbc  [hl]                                        ; $6ce7: $9e
	ld   a, l                                        ; $6ce8: $7d
	ld   d, d                                        ; $6ce9: $52
	sbc  a                                           ; $6cea: $9f
	dec  c                                           ; $6ceb: $0d
	ld   l, e                                        ; $6cec: $6b
	ld   d, h                                        ; $6ced: $54
	ld   [hl], l                                     ; $6cee: $75
	ld   h, a                                        ; $6cef: $67
	ld   a, e                                        ; $6cf0: $7b
	rst  $38                                         ; $6cf1: $ff
	rst  $38                                         ; $6cf2: $ff
	dec  c                                           ; $6cf3: $0d
	ld   e, d                                        ; $6cf4: $5a
	and  c                                           ; $6cf5: $a1
	ld   a, [hl]                                     ; $6cf6: $7e
	sbc  b                                           ; $6cf7: $98
	adc  h                                           ; $6cf8: $8c
	ld   h, a                                        ; $6cf9: $67
	sbc  a                                           ; $6cfa: $9f
	dec  c                                           ; $6cfb: $0d
	nop                                              ; $6cfc: $00
	ld   a, [bc]                                     ; $6cfd: $0a
	ld   b, $f6                                      ; $6cfe: $06 $f6
	ld   a, [bc]                                     ; $6d00: $0a
	inc  e                                           ; $6d01: $1c
	add  hl, bc                                      ; $6d02: $09
	ld   bc, $0101                                   ; $6d03: $01 $01 $01
	ld   d, h                                        ; $6d06: $54
	and  c                                           ; $6d07: $a1
	sbc  a                                           ; $6d08: $9f
	dec  c                                           ; $6d09: $0d
	ld   l, e                                        ; $6d0a: $6b
	sbc  d                                           ; $6d0b: $9a
	ld   h, [hl]                                     ; $6d0c: $66
	sub  c                                           ; $6d0d: $91
	sbc  [hl]                                        ; $6d0e: $9e
	ld   e, d                                        ; $6d0f: $5a
	and  c                                           ; $6d10: $a1
	ld   a, [hl]                                     ; $6d11: $7e
	sbc  d                                           ; $6d12: $9a
	sub  [hl]                                        ; $6d13: $96
	sbc  a                                           ; $6d14: $9f
	dec  c                                           ; $6d15: $0d
	nop                                              ; $6d16: $00
	ld   a, [bc]                                     ; $6d17: $0a
	nop                                              ; $6d18: $00
	nop                                              ; $6d19: $00
	inc  e                                           ; $6d1a: $1c
	ld   b, $00                                      ; $6d1b: $06 $00
	nop                                              ; $6d1d: $00
	ld   [bc], a                                     ; $6d1e: $02
	rlca                                             ; $6d1f: $07
	rst  $38                                         ; $6d20: $ff
	ld   bc, $8004                                   ; $6d21: $01 $04 $80
	jr   nc, jr_043_6d27                             ; $6d24: $30 $01

	rst  $38                                         ; $6d26: $ff

jr_043_6d27:
	jr   nz, jr_043_6d2b                             ; $6d27: $20 $02

	nop                                              ; $6d29: $00
	inc  bc                                          ; $6d2a: $03

jr_043_6d2b:
	ld   b, b                                        ; $6d2b: $40
	ld   bc, $2801                                   ; $6d2c: $01 $01 $28
	jr   nz, jr_043_6d4d                             ; $6d2f: $20 $1c

	nop                                              ; $6d31: $00
	ld   bc, $5496                                   ; $6d32: $01 $96 $54
	sbc  [hl]                                        ; $6d35: $9e
	ld   [$9f00], sp                                 ; $6d36: $08 $00 $9f
	dec  c                                           ; $6d39: $0d
	ld   l, a                                        ; $6d3a: $6f
	sub  c                                           ; $6d3b: $91
	and  c                                           ; $6d3c: $a1
	halt                                             ; $6d3d: $76
	db   $e3                                         ; $6d3e: $e3
	cp   b                                           ; $6d3f: $b8
	inc  bc                                          ; $6d40: $03
	ld   l, d                                        ; $6d41: $6a
	ld   [hl], c                                     ; $6d42: $71
	ld   [hl], h                                     ; $6d43: $74
	sbc  c                                           ; $6d44: $99
	ld   e, c                                        ; $6d45: $59
	ld   sp, hl                                      ; $6d46: $f9
	dec  c                                           ; $6d47: $0d
	nop                                              ; $6d48: $00
	ld   a, [bc]                                     ; $6d49: $0a
	add  hl, de                                      ; $6d4a: $19
	dec  b                                           ; $6d4b: $05
	inc  bc                                          ; $6d4c: $03

jr_043_6d4d:
	ld   l, l                                        ; $6d4d: $6d
	ld   e, l                                        ; $6d4e: $5d
	ld   h, e                                        ; $6d4f: $63
	and  c                                           ; $6d50: $a1
	inc  bc                                          ; $6d51: $03
	ld   l, d                                        ; $6d52: $6a
	add  a                                           ; $6d53: $87
	ld   [hl], h                                     ; $6d54: $74
	adc  h                                           ; $6d55: $8c
	ld   h, a                                        ; $6d56: $67
	nop                                              ; $6d57: $00
	nop                                              ; $6d58: $00
	ld   l, e                                        ; $6d59: $6b
	ld   h, c                                        ; $6d5a: $61

Jump_043_6d5b:
	ld   l, e                                        ; $6d5b: $6b
	ld   h, c                                        ; $6d5c: $61
	inc  bc                                          ; $6d5d: $03
	ld   l, d                                        ; $6d5e: $6a
	add  a                                           ; $6d5f: $87
	ld   [hl], h                                     ; $6d60: $74
	adc  h                                           ; $6d61: $8c
	ld   h, a                                        ; $6d62: $67
	nop                                              ; $6d63: $00
	ld   bc, $6d04                                   ; $6d64: $01 $04 $6d
	sbc  [hl]                                        ; $6d67: $9e
	inc  bc                                          ; $6d68: $03
	xor  a                                           ; $6d69: $af
	inc  bc                                          ; $6d6a: $03
	ld   l, d                                        ; $6d6b: $6a
	ld   a, b                                        ; $6d6c: $78
	and  c                                           ; $6d6d: $a1
	ld   [hl], l                                     ; $6d6e: $75
	ld   h, a                                        ; $6d6f: $67
	rst  $38                                         ; $6d70: $ff
	rst  $38                                         ; $6d71: $ff
	nop                                              ; $6d72: $00
	ld   [bc], a                                     ; $6d73: $02
	rlca                                             ; $6d74: $07
	call nz, $0200                                   ; $6d75: $c4 $00 $02
	inc  bc                                          ; $6d78: $03
	ld   bc, $2000                                   ; $6d79: $01 $00 $20
	nop                                              ; $6d7c: $00
	rlca                                             ; $6d7d: $07
	ld   h, $01                                      ; $6d7e: $26 $01
	ld   [bc], a                                     ; $6d80: $02
	inc  bc                                          ; $6d81: $03
	ld   bc, $2001                                   ; $6d82: $01 $01 $20
	nop                                              ; $6d85: $00
	rlca                                             ; $6d86: $07
	sbc  d                                           ; $6d87: $9a
	ld   bc, $0302                                   ; $6d88: $01 $02 $03
	ld   bc, $2002                                   ; $6d8b: $01 $02 $20
	nop                                              ; $6d8e: $00
	ld   b, $78                                      ; $6d8f: $06 $78
	nop                                              ; $6d91: $00
	inc  e                                           ; $6d92: $1c
	ld   b, $02                                      ; $6d93: $06 $02
	ld   [bc], a                                     ; $6d95: $02
	dec  e                                           ; $6d96: $1d
	ld   b, b                                        ; $6d97: $40
	ld   d, $03                                      ; $6d98: $16 $03
	ld   d, $01                                      ; $6d9a: $16 $01
	inc  bc                                          ; $6d9c: $03
	add  hl, hl                                      ; $6d9d: $29
	nop                                              ; $6d9e: $00
	ld   bc, $a178                                   ; $6d9f: $01 $78 $a1
	ld   l, [hl]                                     ; $6da2: $6e
	sub  [hl]                                        ; $6da3: $96
	rst  $38                                         ; $6da4: $ff
	rst  $38                                         ; $6da5: $ff
	dec  c                                           ; $6da6: $0d
	ld   d, b                                        ; $6da7: $50
	ld   d, d                                        ; $6da8: $52
	ld   l, e                                        ; $6da9: $6b
	ld   a, h                                        ; $6daa: $7c
	ld   a, e                                        ; $6dab: $7b
	ld   d, [hl]                                     ; $6dac: $56
	sub  d                                           ; $6dad: $92
	ld   [hl], d                                     ; $6dae: $72
	ld   l, [hl]                                     ; $6daf: $6e
	ld   a, b                                        ; $6db0: $78
	rst  $38                                         ; $6db1: $ff
	rst  $38                                         ; $6db2: $ff
	dec  c                                           ; $6db3: $0d
	nop                                              ; $6db4: $00
	ld   a, [bc]                                     ; $6db5: $0a
	ld   bc, $5404                                   ; $6db6: $01 $04 $54
	ld   a, c                                        ; $6db9: $79
	ld   d, d                                        ; $6dba: $52
	ld   d, d                                        ; $6dbb: $52
	ld   e, a                                        ; $6dbc: $5f
	ld   [hl], a                                     ; $6dbd: $77
	sub  [hl]                                        ; $6dbe: $96
	db   $fc                                         ; $6dbf: $fc
	dec  c                                           ; $6dc0: $0d
	ld   d, b                                        ; $6dc1: $50
	ld   d, d                                        ; $6dc2: $52
	ld   h, e                                        ; $6dc3: $63
	ld   [hl], d                                     ; $6dc4: $72
	ld   l, [hl]                                     ; $6dc5: $6e
	ld   e, a                                        ; $6dc6: $5f
	ld   a, l                                        ; $6dc7: $7d
	dec  c                                           ; $6dc8: $0d
	ld   l, a                                        ; $6dc9: $6f
	sub  c                                           ; $6dca: $91
	and  c                                           ; $6dcb: $a1
	halt                                             ; $6dcc: $76
	ld   h, l                                        ; $6dcd: $65
	sbc  e                                           ; $6dce: $9b
	sub  [hl]                                        ; $6dcf: $96
	ld   a, b                                        ; $6dd0: $78
	sbc  a                                           ; $6dd1: $9f
	dec  c                                           ; $6dd2: $0d
	nop                                              ; $6dd3: $00
	ld   a, [bc]                                     ; $6dd4: $0a
	dec  c                                           ; $6dd5: $0d
	nop                                              ; $6dd6: $00
	nop                                              ; $6dd7: $00
	rrca                                             ; $6dd8: $0f
	nop                                              ; $6dd9: $00
	ld   bc, $1e09                                   ; $6dda: $01 $09 $1e
	nop                                              ; $6ddd: $00
	rrca                                             ; $6dde: $0f
	nop                                              ; $6ddf: $00
	ld   bc, $5001                                   ; $6de0: $01 $01 $50
	sbc  [hl]                                        ; $6de3: $9e
	xor  h                                           ; $6de4: $ac
	push af                                          ; $6de5: $f5
	bit  4, e                                        ; $6de6: $cb $63
	and  c                                           ; $6de8: $a1
	sbc  a                                           ; $6de9: $9f
	dec  c                                           ; $6dea: $0d
	ld   e, b                                        ; $6deb: $58
	ld   a, l                                        ; $6dec: $7d
	sub  [hl]                                        ; $6ded: $96
	ld   d, h                                        ; $6dee: $54
	ld   h, d                                        ; $6def: $62
	ld   h, h                                        ; $6df0: $64
	ld   d, d                                        ; $6df1: $52
	adc  h                                           ; $6df2: $8c
	ld   h, a                                        ; $6df3: $67
	sbc  a                                           ; $6df4: $9f
	dec  c                                           ; $6df5: $0d
	nop                                              ; $6df6: $00
	ld   a, [bc]                                     ; $6df7: $0a
	ld   bc, $7d62                                   ; $6df8: $01 $62 $7d
	and  c                                           ; $6dfb: $a1
	ld   [hl], l                                     ; $6dfc: $75
	ld   h, a                                        ; $6dfd: $67
	ld   e, c                                        ; $6dfe: $59
	ld   sp, hl                                      ; $6dff: $f9
	dec  c                                           ; $6e00: $0d
	ld   l, l                                        ; $6e01: $6d
	ld   e, l                                        ; $6e02: $5d
	ld   h, e                                        ; $6e03: $63
	and  c                                           ; $6e04: $a1
	inc  bc                                          ; $6e05: $03
	ld   l, d                                        ; $6e06: $6a
	add  a                                           ; $6e07: $87
	ld   [hl], h                                     ; $6e08: $74
	adc  h                                           ; $6e09: $8c
	ld   h, a                                        ; $6e0a: $67
	sub  [hl]                                        ; $6e0b: $96
	sbc  a                                           ; $6e0c: $9f
	dec  c                                           ; $6e0d: $0d
	nop                                              ; $6e0e: $00
	ld   a, [bc]                                     ; $6e0f: $0a
	inc  e                                           ; $6e10: $1c
	ld   b, $01                                      ; $6e11: $06 $01
	ld   bc, $401d                                   ; $6e13: $01 $1d $40
	ld   d, $03                                      ; $6e16: $16 $03
	ld   d, $01                                      ; $6e18: $16 $01
	inc  bc                                          ; $6e1a: $03
	jr   z, jr_043_6e1d                              ; $6e1b: $28 $00

jr_043_6e1d:
	ld   bc, $6596                                   ; $6e1d: $01 $96 $65
	sbc  [hl]                                        ; $6e20: $9e
	ld   d, [hl]                                     ; $6e21: $56
	sub  a                                           ; $6e22: $97
	ld   d, d                                        ; $6e23: $52
	ld   l, h                                        ; $6e24: $6c
	sbc  a                                           ; $6e25: $9f
	dec  c                                           ; $6e26: $0d
	ld   l, e                                        ; $6e27: $6b
	ld   a, h                                        ; $6e28: $7c
	inc  bc                                          ; $6e29: $03
	cp   $03                                         ; $6e2a: $fe $03
	add  [hl]                                        ; $6e2c: $86
	ld   [hl], l                                     ; $6e2d: $75
	xor  l                                           ; $6e2e: $ad
	push af                                          ; $6e2f: $f5
	pop  de                                          ; $6e30: $d1
	xor  $96                                         ; $6e31: $ee $96
	sbc  a                                           ; $6e33: $9f
	dec  c                                           ; $6e34: $0d
	nop                                              ; $6e35: $00
	ld   a, [bc]                                     ; $6e36: $0a
	dec  c                                           ; $6e37: $0d
	nop                                              ; $6e38: $00
	nop                                              ; $6e39: $00
	rrca                                             ; $6e3a: $0f
	nop                                              ; $6e3b: $00
	ld   bc, $1e09                                   ; $6e3c: $01 $09 $1e
	nop                                              ; $6e3f: $00
	rrca                                             ; $6e40: $0f
	nop                                              ; $6e41: $00
	ld   bc, $5001                                   ; $6e42: $01 $01 $50
	sbc  [hl]                                        ; $6e45: $9e
	xor  h                                           ; $6e46: $ac
	push af                                          ; $6e47: $f5
	bit  4, e                                        ; $6e48: $cb $63
	and  c                                           ; $6e4a: $a1
	sbc  a                                           ; $6e4b: $9f
	dec  c                                           ; $6e4c: $0d
	ld   e, b                                        ; $6e4d: $58
	ld   a, l                                        ; $6e4e: $7d
	sub  [hl]                                        ; $6e4f: $96
	ld   d, h                                        ; $6e50: $54
	ld   h, d                                        ; $6e51: $62
	ld   h, h                                        ; $6e52: $64
	ld   d, d                                        ; $6e53: $52
	adc  h                                           ; $6e54: $8c
	ld   h, a                                        ; $6e55: $67
	sbc  a                                           ; $6e56: $9f
	dec  c                                           ; $6e57: $0d
	nop                                              ; $6e58: $00
	ld   a, [bc]                                     ; $6e59: $0a
	ld   bc, $7d62                                   ; $6e5a: $01 $62 $7d
	and  c                                           ; $6e5d: $a1
	ld   [hl], l                                     ; $6e5e: $75
	ld   h, a                                        ; $6e5f: $67
	ld   e, c                                        ; $6e60: $59
	ld   sp, hl                                      ; $6e61: $f9
	dec  c                                           ; $6e62: $0d
	adc  h                                           ; $6e63: $8c
	ld   d, b                                        ; $6e64: $50
	sbc  [hl]                                        ; $6e65: $9e
	ld   l, e                                        ; $6e66: $6b
	ld   h, c                                        ; $6e67: $61
	ld   l, e                                        ; $6e68: $6b
	ld   h, c                                        ; $6e69: $61
	inc  bc                                          ; $6e6a: $03
	ld   l, d                                        ; $6e6b: $6a
	add  a                                           ; $6e6c: $87
	ld   [hl], h                                     ; $6e6d: $74
	adc  h                                           ; $6e6e: $8c
	ld   h, a                                        ; $6e6f: $67
	sbc  a                                           ; $6e70: $9f
	dec  c                                           ; $6e71: $0d
	nop                                              ; $6e72: $00
	ld   a, [bc]                                     ; $6e73: $0a
	inc  e                                           ; $6e74: $1c
	ld   b, $00                                      ; $6e75: $06 $00
	nop                                              ; $6e77: $00
	ld   bc, $1e02                                   ; $6e78: $01 $02 $1e
	ld   l, a                                        ; $6e7b: $6f
	dec  b                                           ; $6e7c: $05
	push hl                                          ; $6e7d: $e5
	sbc  b                                           ; $6e7e: $98
	ld   a, b                                        ; $6e7f: $78
	and  c                                           ; $6e80: $a1
	ld   l, [hl]                                     ; $6e81: $6e
	ld   e, c                                        ; $6e82: $59
	sub  a                                           ; $6e83: $97
	sbc  [hl]                                        ; $6e84: $9e
	ld   l, l                                        ; $6e85: $6d
	ld   e, l                                        ; $6e86: $5d
	ld   h, e                                        ; $6e87: $63
	and  c                                           ; $6e88: $a1
	dec  c                                           ; $6e89: $0d
	inc  bc                                          ; $6e8a: $03
	ld   l, d                                        ; $6e8b: $6a
	add  a                                           ; $6e8c: $87
	ld   a, b                                        ; $6e8d: $78
	ld   d, d                                        ; $6e8e: $52
	halt                                             ; $6e8f: $76
	inc  b                                           ; $6e90: $04
	ld   c, $5b                                      ; $6e91: $0e $5b
	ld   e, l                                        ; $6e93: $5d
	ld   a, b                                        ; $6e94: $78
	sub  a                                           ; $6e95: $97
	ld   a, b                                        ; $6e96: $78
	ld   d, d                                        ; $6e97: $52
	ld   l, h                                        ; $6e98: $6c
	sbc  a                                           ; $6e99: $9f
	dec  c                                           ; $6e9a: $0d
	xor  l                                           ; $6e9b: $ad
	push af                                          ; $6e9c: $f5
	pop  de                                          ; $6e9d: $d1
	ld   [hl], c                                     ; $6e9e: $71
	ld   [hl], h                                     ; $6e9f: $74
	db   $e3                                         ; $6ea0: $e3
	cp   b                                           ; $6ea1: $b8
	inc  bc                                          ; $6ea2: $03
	ld   l, d                                        ; $6ea3: $6a
	ld   d, [hl]                                     ; $6ea4: $56
	sub  [hl]                                        ; $6ea5: $96
	ld   a, b                                        ; $6ea6: $78
	sbc  a                                           ; $6ea7: $9f
	dec  c                                           ; $6ea8: $0d
	nop                                              ; $6ea9: $00
	ld   a, [bc]                                     ; $6eaa: $0a
	dec  c                                           ; $6eab: $0d
	nop                                              ; $6eac: $00
	nop                                              ; $6ead: $00
	rrca                                             ; $6eae: $0f
	nop                                              ; $6eaf: $00
	ld   bc, $1e09                                   ; $6eb0: $01 $09 $1e
	nop                                              ; $6eb3: $00
	rrca                                             ; $6eb4: $0f
	nop                                              ; $6eb5: $00
	ld   bc, $5001                                   ; $6eb6: $01 $01 $50
	sbc  [hl]                                        ; $6eb9: $9e
	xor  h                                           ; $6eba: $ac
	push af                                          ; $6ebb: $f5
	bit  4, e                                        ; $6ebc: $cb $63
	and  c                                           ; $6ebe: $a1
	sbc  a                                           ; $6ebf: $9f
	dec  c                                           ; $6ec0: $0d
	ld   e, b                                        ; $6ec1: $58
	ld   a, l                                        ; $6ec2: $7d
	sub  [hl]                                        ; $6ec3: $96
	ld   d, h                                        ; $6ec4: $54
	ld   h, d                                        ; $6ec5: $62
	ld   h, h                                        ; $6ec6: $64
	ld   d, d                                        ; $6ec7: $52
	adc  h                                           ; $6ec8: $8c
	ld   h, a                                        ; $6ec9: $67
	sbc  a                                           ; $6eca: $9f
	dec  c                                           ; $6ecb: $0d
	nop                                              ; $6ecc: $00
	ld   a, [bc]                                     ; $6ecd: $0a
	ld   bc, $7d62                                   ; $6ece: $01 $62 $7d
	and  c                                           ; $6ed1: $a1
	ld   [hl], l                                     ; $6ed2: $75
	ld   h, a                                        ; $6ed3: $67
	ld   e, c                                        ; $6ed4: $59
	ld   sp, hl                                      ; $6ed5: $f9
	dec  c                                           ; $6ed6: $0d
	inc  b                                           ; $6ed7: $04
	ld   l, l                                        ; $6ed8: $6d
	sbc  [hl]                                        ; $6ed9: $9e
	inc  bc                                          ; $6eda: $03
	xor  a                                           ; $6edb: $af
	inc  bc                                          ; $6edc: $03
	ld   l, d                                        ; $6edd: $6a
	ld   a, b                                        ; $6ede: $78
	and  c                                           ; $6edf: $a1
	ld   [hl], l                                     ; $6ee0: $75
	ld   h, a                                        ; $6ee1: $67
	sub  [hl]                                        ; $6ee2: $96
	rst  $38                                         ; $6ee3: $ff
	rst  $38                                         ; $6ee4: $ff
	dec  c                                           ; $6ee5: $0d
	nop                                              ; $6ee6: $00
	ld   a, [bc]                                     ; $6ee7: $0a
	inc  e                                           ; $6ee8: $1c
	ld   b, $05                                      ; $6ee9: $06 $05
	dec  b                                           ; $6eeb: $05
	dec  e                                           ; $6eec: $1d
	ld   b, b                                        ; $6eed: $40
	ld   d, $03                                      ; $6eee: $16 $03
	ld   d, $01                                      ; $6ef0: $16 $01
	ld   [bc], a                                     ; $6ef2: $02
	add  hl, hl                                      ; $6ef3: $29
	nop                                              ; $6ef4: $00
	ld   bc, $e3c1                                   ; $6ef5: $01 $c1 $e3
	ld   l, [hl]                                     ; $6ef8: $6e
	sbc  [hl]                                        ; $6ef9: $9e
	pop  bc                                          ; $6efa: $c1
	db   $e3                                         ; $6efb: $e3
	ld   l, [hl]                                     ; $6efc: $6e
	sbc  a                                           ; $6efd: $9f
	dec  c                                           ; $6efe: $0d
	db   $e3                                         ; $6eff: $e3
	cp   b                                           ; $6f00: $b8
	ld   a, l                                        ; $6f01: $7d
	db   $e4                                         ; $6f02: $e4
	db   $ec                                         ; $6f03: $ec
	db   $e4                                         ; $6f04: $e4
	db   $ec                                         ; $6f05: $ec
	dec  c                                           ; $6f06: $0d
	inc  bc                                          ; $6f07: $03
	ld   l, d                                        ; $6f08: $6a
	ld   d, [hl]                                     ; $6f09: $56
	sub  [hl]                                        ; $6f0a: $96
	ld   a, b                                        ; $6f0b: $78
	sbc  a                                           ; $6f0c: $9f
	dec  c                                           ; $6f0d: $0d
	nop                                              ; $6f0e: $00
	ld   a, [bc]                                     ; $6f0f: $0a
	dec  c                                           ; $6f10: $0d
	nop                                              ; $6f11: $00
	nop                                              ; $6f12: $00
	rrca                                             ; $6f13: $0f
	nop                                              ; $6f14: $00
	ld   bc, $1e09                                   ; $6f15: $01 $09 $1e
	nop                                              ; $6f18: $00
	ld   bc, $5496                                   ; $6f19: $01 $96 $54
	sbc  [hl]                                        ; $6f1c: $9e
	ld   [$9f00], sp                                 ; $6f1d: $08 $00 $9f
	dec  c                                           ; $6f20: $0d
	dec  b                                           ; $6f21: $05
	ld   b, l                                        ; $6f22: $45
	inc  b                                           ; $6f23: $04
	xor  d                                           ; $6f24: $aa
	ld   a, l                                        ; $6f25: $7d
	sbc  [hl]                                        ; $6f26: $9e
	ld   h, e                                        ; $6f27: $63
	ld   d, d                                        ; $6f28: $52
	ld   a, b                                        ; $6f29: $78
	and  c                                           ; $6f2a: $a1
	ld   l, [hl]                                     ; $6f2b: $6e
	ld   [hl], c                                     ; $6f2c: $71
	ld   l, l                                        ; $6f2d: $6d
	ld   a, b                                        ; $6f2e: $78
	sbc  a                                           ; $6f2f: $9f
	dec  c                                           ; $6f30: $0d
	nop                                              ; $6f31: $00
	ld   a, [bc]                                     ; $6f32: $0a
	ld   bc, $508c                                   ; $6f33: $01 $8c $50
	sbc  [hl]                                        ; $6f36: $9e
	ld   h, c                                        ; $6f37: $61
	ld   h, c                                        ; $6f38: $61
	ld   h, [hl]                                     ; $6f39: $66
	sub  c                                           ; $6f3a: $91
	ld   d, d                                        ; $6f3b: $52
	sbc  e                                           ; $6f3c: $9b
	and  c                                           ; $6f3d: $a1
	ld   a, b                                        ; $6f3e: $78
	ld   [bc], a                                     ; $6f3f: $02
	jp   $0d5a                                       ; $6f40: $c3 $5a $0d


	ld   d, b                                        ; $6f43: $50
	sbc  c                                           ; $6f44: $99
	ld   e, c                                        ; $6f45: $59
	sub  a                                           ; $6f46: $97
	sub  [hl]                                        ; $6f47: $96
	sbc  a                                           ; $6f48: $9f
	dec  c                                           ; $6f49: $0d
	ld   d, b                                        ; $6f4a: $50
	and  c                                           ; $6f4b: $a1
	adc  h                                           ; $6f4c: $8c
	sbc  b                                           ; $6f4d: $98
	ld   [bc], a                                     ; $6f4e: $02
	and  c                                           ; $6f4f: $a1
	ld   a, c                                        ; $6f50: $79
	ld   h, a                                        ; $6f51: $67
	and  c                                           ; $6f52: $a1
	ld   a, b                                        ; $6f53: $78
	sub  [hl]                                        ; $6f54: $96
	ld   a, b                                        ; $6f55: $78
	sbc  a                                           ; $6f56: $9f
	dec  c                                           ; $6f57: $0d
	nop                                              ; $6f58: $00
	ld   a, [bc]                                     ; $6f59: $0a
	inc  e                                           ; $6f5a: $1c
	ld   b, $00                                      ; $6f5b: $06 $00
	nop                                              ; $6f5d: $00
	ld   bc, $6176                                   ; $6f5e: $01 $76 $61
	sbc  e                                           ; $6f61: $9b
	ld   [hl], l                                     ; $6f62: $75
	sbc  [hl]                                        ; $6f63: $9e
	ld   e, b                                        ; $6f64: $58
	inc  bc                                          ; $6f65: $03
	ld   c, a                                        ; $6f66: $4f
	dec  c                                           ; $6f67: $0d
	ld   l, a                                        ; $6f68: $6f
	sub  c                                           ; $6f69: $91
	and  c                                           ; $6f6a: $a1
	halt                                             ; $6f6b: $76
	db   $e3                                         ; $6f6c: $e3
	cp   b                                           ; $6f6d: $b8
	inc  bc                                          ; $6f6e: $03
	ld   l, d                                        ; $6f6f: $6a
	ld   [hl], c                                     ; $6f70: $71
	ld   [hl], h                                     ; $6f71: $74
	sbc  c                                           ; $6f72: $99
	ld   e, c                                        ; $6f73: $59
	ld   sp, hl                                      ; $6f74: $f9
	dec  c                                           ; $6f75: $0d
	nop                                              ; $6f76: $00
	ld   a, [bc]                                     ; $6f77: $0a
	add  hl, de                                      ; $6f78: $19
	dec  b                                           ; $6f79: $05
	inc  bc                                          ; $6f7a: $03
	ld   l, l                                        ; $6f7b: $6d
	ld   e, l                                        ; $6f7c: $5d
	ld   h, e                                        ; $6f7d: $63
	and  c                                           ; $6f7e: $a1
	inc  bc                                          ; $6f7f: $03
	ld   l, d                                        ; $6f80: $6a
	add  a                                           ; $6f81: $87
	ld   [hl], h                                     ; $6f82: $74
	adc  h                                           ; $6f83: $8c
	ld   h, a                                        ; $6f84: $67
	nop                                              ; $6f85: $00
	nop                                              ; $6f86: $00
	ld   l, e                                        ; $6f87: $6b
	ld   h, c                                        ; $6f88: $61
	ld   l, e                                        ; $6f89: $6b
	ld   h, c                                        ; $6f8a: $61
	inc  bc                                          ; $6f8b: $03
	ld   l, d                                        ; $6f8c: $6a
	add  a                                           ; $6f8d: $87
	ld   [hl], h                                     ; $6f8e: $74
	adc  h                                           ; $6f8f: $8c
	ld   h, a                                        ; $6f90: $67
	nop                                              ; $6f91: $00
	ld   bc, $6d04                                   ; $6f92: $01 $04 $6d
	sbc  [hl]                                        ; $6f95: $9e
	inc  bc                                          ; $6f96: $03
	xor  a                                           ; $6f97: $af
	inc  bc                                          ; $6f98: $03
	ld   l, d                                        ; $6f99: $6a
	ld   a, b                                        ; $6f9a: $78
	and  c                                           ; $6f9b: $a1
	ld   [hl], l                                     ; $6f9c: $75
	ld   h, a                                        ; $6f9d: $67
	rst  $38                                         ; $6f9e: $ff
	rst  $38                                         ; $6f9f: $ff
	nop                                              ; $6fa0: $00
	ld   [bc], a                                     ; $6fa1: $02
	rlca                                             ; $6fa2: $07
	ldh  a, [c]                                      ; $6fa3: $f2
	ld   [bc], a                                     ; $6fa4: $02
	ld   [bc], a                                     ; $6fa5: $02
	inc  bc                                          ; $6fa6: $03
	ld   bc, $2000                                   ; $6fa7: $01 $00 $20
	nop                                              ; $6faa: $00
	rlca                                             ; $6fab: $07
	ld   d, h                                        ; $6fac: $54
	inc  bc                                          ; $6fad: $03
	ld   [bc], a                                     ; $6fae: $02
	inc  bc                                          ; $6faf: $03
	ld   bc, $2001                                   ; $6fb0: $01 $01 $20
	nop                                              ; $6fb3: $00
	rlca                                             ; $6fb4: $07
	ret  z                                           ; $6fb5: $c8

	inc  bc                                          ; $6fb6: $03
	ld   [bc], a                                     ; $6fb7: $02
	inc  bc                                          ; $6fb8: $03
	ld   bc, $2002                                   ; $6fb9: $01 $02 $20
	nop                                              ; $6fbc: $00
	ld   b, $a6                                      ; $6fbd: $06 $a6
	ld   [bc], a                                     ; $6fbf: $02
	inc  e                                           ; $6fc0: $1c
	ld   b, $02                                      ; $6fc1: $06 $02
	ld   [bc], a                                     ; $6fc3: $02
	dec  e                                           ; $6fc4: $1d
	ld   b, b                                        ; $6fc5: $40
	ld   d, $03                                      ; $6fc6: $16 $03
	ld   d, $01                                      ; $6fc8: $16 $01
	inc  bc                                          ; $6fca: $03
	add  hl, hl                                      ; $6fcb: $29
	nop                                              ; $6fcc: $00
	ld   bc, $a178                                   ; $6fcd: $01 $78 $a1
	ld   l, [hl]                                     ; $6fd0: $6e
	sub  [hl]                                        ; $6fd1: $96
	rst  $38                                         ; $6fd2: $ff
	rst  $38                                         ; $6fd3: $ff
	dec  c                                           ; $6fd4: $0d
	ld   d, b                                        ; $6fd5: $50
	ld   d, d                                        ; $6fd6: $52
	ld   l, e                                        ; $6fd7: $6b
	ld   a, h                                        ; $6fd8: $7c
	ld   a, e                                        ; $6fd9: $7b
	ld   d, [hl]                                     ; $6fda: $56
	sub  d                                           ; $6fdb: $92
	ld   [hl], d                                     ; $6fdc: $72
	ld   l, [hl]                                     ; $6fdd: $6e
	ld   a, b                                        ; $6fde: $78
	rst  $38                                         ; $6fdf: $ff
	rst  $38                                         ; $6fe0: $ff
	dec  c                                           ; $6fe1: $0d
	nop                                              ; $6fe2: $00
	ld   a, [bc]                                     ; $6fe3: $0a
	ld   bc, $5404                                   ; $6fe4: $01 $04 $54
	ld   a, c                                        ; $6fe7: $79
	ld   d, d                                        ; $6fe8: $52
	ld   d, d                                        ; $6fe9: $52
	ld   e, a                                        ; $6fea: $5f
	ld   [hl], a                                     ; $6feb: $77
	sub  [hl]                                        ; $6fec: $96
	db   $fc                                         ; $6fed: $fc
	dec  c                                           ; $6fee: $0d
	ld   d, b                                        ; $6fef: $50
	ld   d, d                                        ; $6ff0: $52
	ld   h, e                                        ; $6ff1: $63
	ld   [hl], d                                     ; $6ff2: $72
	ld   l, [hl]                                     ; $6ff3: $6e
	ld   e, a                                        ; $6ff4: $5f
	ld   a, l                                        ; $6ff5: $7d
	dec  c                                           ; $6ff6: $0d
	ld   l, a                                        ; $6ff7: $6f
	sub  c                                           ; $6ff8: $91
	and  c                                           ; $6ff9: $a1
	halt                                             ; $6ffa: $76
	ld   h, l                                        ; $6ffb: $65
	sbc  e                                           ; $6ffc: $9b
	sub  [hl]                                        ; $6ffd: $96
	ld   a, b                                        ; $6ffe: $78
	sbc  a                                           ; $6fff: $9f
	dec  c                                           ; $7000: $0d
	nop                                              ; $7001: $00
	ld   a, [bc]                                     ; $7002: $0a
	dec  c                                           ; $7003: $0d
	nop                                              ; $7004: $00
	nop                                              ; $7005: $00
	rrca                                             ; $7006: $0f
	nop                                              ; $7007: $00
	ld   bc, $1e09                                   ; $7008: $01 $09 $1e
	nop                                              ; $700b: $00
	rrca                                             ; $700c: $0f
	nop                                              ; $700d: $00
	ld   bc, $5001                                   ; $700e: $01 $01 $50
	sbc  [hl]                                        ; $7011: $9e
	xor  h                                           ; $7012: $ac
	push af                                          ; $7013: $f5
	bit  4, e                                        ; $7014: $cb $63
	and  c                                           ; $7016: $a1
	sbc  a                                           ; $7017: $9f
	dec  c                                           ; $7018: $0d
	ld   e, b                                        ; $7019: $58
	ld   a, l                                        ; $701a: $7d
	sub  [hl]                                        ; $701b: $96
	ld   d, h                                        ; $701c: $54
	ld   h, d                                        ; $701d: $62
	ld   h, h                                        ; $701e: $64
	ld   d, d                                        ; $701f: $52
	adc  h                                           ; $7020: $8c
	ld   h, a                                        ; $7021: $67
	sbc  a                                           ; $7022: $9f
	dec  c                                           ; $7023: $0d
	nop                                              ; $7024: $00
	ld   a, [bc]                                     ; $7025: $0a
	ld   bc, $7d62                                   ; $7026: $01 $62 $7d
	and  c                                           ; $7029: $a1
	ld   [hl], l                                     ; $702a: $75
	ld   h, a                                        ; $702b: $67
	ld   e, c                                        ; $702c: $59
	ld   sp, hl                                      ; $702d: $f9
	dec  c                                           ; $702e: $0d
	ld   l, l                                        ; $702f: $6d
	ld   e, l                                        ; $7030: $5d
	ld   h, e                                        ; $7031: $63
	and  c                                           ; $7032: $a1
	inc  bc                                          ; $7033: $03
	ld   l, d                                        ; $7034: $6a
	add  a                                           ; $7035: $87
	ld   [hl], h                                     ; $7036: $74
	adc  h                                           ; $7037: $8c
	ld   h, a                                        ; $7038: $67
	sub  [hl]                                        ; $7039: $96
	sbc  a                                           ; $703a: $9f
	dec  c                                           ; $703b: $0d
	nop                                              ; $703c: $00
	ld   a, [bc]                                     ; $703d: $0a
	inc  e                                           ; $703e: $1c
	ld   b, $01                                      ; $703f: $06 $01
	ld   bc, $401d                                   ; $7041: $01 $1d $40
	ld   d, $03                                      ; $7044: $16 $03
	ld   d, $01                                      ; $7046: $16 $01
	inc  bc                                          ; $7048: $03
	jr   z, jr_043_704b                              ; $7049: $28 $00

jr_043_704b:
	ld   bc, $6596                                   ; $704b: $01 $96 $65
	sbc  [hl]                                        ; $704e: $9e
	ld   d, [hl]                                     ; $704f: $56
	sub  a                                           ; $7050: $97
	ld   d, d                                        ; $7051: $52
	ld   l, h                                        ; $7052: $6c
	sbc  a                                           ; $7053: $9f
	dec  c                                           ; $7054: $0d
	ld   l, e                                        ; $7055: $6b
	ld   a, h                                        ; $7056: $7c
	inc  bc                                          ; $7057: $03
	cp   $03                                         ; $7058: $fe $03
	add  [hl]                                        ; $705a: $86
	ld   [hl], l                                     ; $705b: $75
	xor  l                                           ; $705c: $ad
	push af                                          ; $705d: $f5
	pop  de                                          ; $705e: $d1
	xor  $96                                         ; $705f: $ee $96
	sbc  a                                           ; $7061: $9f
	dec  c                                           ; $7062: $0d
	nop                                              ; $7063: $00
	ld   a, [bc]                                     ; $7064: $0a
	dec  c                                           ; $7065: $0d
	nop                                              ; $7066: $00
	nop                                              ; $7067: $00
	rrca                                             ; $7068: $0f
	nop                                              ; $7069: $00
	ld   bc, $1e09                                   ; $706a: $01 $09 $1e
	nop                                              ; $706d: $00
	rrca                                             ; $706e: $0f
	nop                                              ; $706f: $00
	ld   bc, $5001                                   ; $7070: $01 $01 $50
	sbc  [hl]                                        ; $7073: $9e
	xor  h                                           ; $7074: $ac
	push af                                          ; $7075: $f5
	bit  4, e                                        ; $7076: $cb $63
	and  c                                           ; $7078: $a1
	sbc  a                                           ; $7079: $9f
	dec  c                                           ; $707a: $0d
	ld   e, b                                        ; $707b: $58
	ld   a, l                                        ; $707c: $7d
	sub  [hl]                                        ; $707d: $96
	ld   d, h                                        ; $707e: $54
	ld   h, d                                        ; $707f: $62
	ld   h, h                                        ; $7080: $64
	ld   d, d                                        ; $7081: $52
	adc  h                                           ; $7082: $8c
	ld   h, a                                        ; $7083: $67
	sbc  a                                           ; $7084: $9f
	dec  c                                           ; $7085: $0d
	nop                                              ; $7086: $00
	ld   a, [bc]                                     ; $7087: $0a
	ld   bc, $7d62                                   ; $7088: $01 $62 $7d
	and  c                                           ; $708b: $a1
	ld   [hl], l                                     ; $708c: $75
	ld   h, a                                        ; $708d: $67
	ld   e, c                                        ; $708e: $59
	ld   sp, hl                                      ; $708f: $f9
	dec  c                                           ; $7090: $0d
	adc  h                                           ; $7091: $8c
	ld   d, b                                        ; $7092: $50
	sbc  [hl]                                        ; $7093: $9e
	ld   l, e                                        ; $7094: $6b
	ld   h, c                                        ; $7095: $61
	ld   l, e                                        ; $7096: $6b
	ld   h, c                                        ; $7097: $61
	inc  bc                                          ; $7098: $03
	ld   l, d                                        ; $7099: $6a
	add  a                                           ; $709a: $87
	ld   [hl], h                                     ; $709b: $74
	adc  h                                           ; $709c: $8c
	ld   h, a                                        ; $709d: $67
	sbc  a                                           ; $709e: $9f
	dec  c                                           ; $709f: $0d
	nop                                              ; $70a0: $00
	ld   a, [bc]                                     ; $70a1: $0a
	inc  e                                           ; $70a2: $1c
	ld   b, $00                                      ; $70a3: $06 $00
	nop                                              ; $70a5: $00
	ld   bc, $1e02                                   ; $70a6: $01 $02 $1e
	ld   l, a                                        ; $70a9: $6f
	dec  b                                           ; $70aa: $05
	push hl                                          ; $70ab: $e5
	sbc  b                                           ; $70ac: $98
	ld   a, b                                        ; $70ad: $78
	and  c                                           ; $70ae: $a1
	ld   l, [hl]                                     ; $70af: $6e
	ld   e, c                                        ; $70b0: $59
	sub  a                                           ; $70b1: $97
	sbc  [hl]                                        ; $70b2: $9e
	ld   l, l                                        ; $70b3: $6d
	ld   e, l                                        ; $70b4: $5d
	ld   h, e                                        ; $70b5: $63
	and  c                                           ; $70b6: $a1
	dec  c                                           ; $70b7: $0d
	inc  bc                                          ; $70b8: $03
	ld   l, d                                        ; $70b9: $6a
	add  a                                           ; $70ba: $87
	ld   a, b                                        ; $70bb: $78
	ld   d, d                                        ; $70bc: $52
	halt                                             ; $70bd: $76
	inc  b                                           ; $70be: $04
	ld   c, $5b                                      ; $70bf: $0e $5b
	ld   e, l                                        ; $70c1: $5d
	ld   a, b                                        ; $70c2: $78
	sub  a                                           ; $70c3: $97
	ld   a, b                                        ; $70c4: $78
	ld   d, d                                        ; $70c5: $52
	ld   l, h                                        ; $70c6: $6c
	sbc  a                                           ; $70c7: $9f
	dec  c                                           ; $70c8: $0d
	xor  l                                           ; $70c9: $ad
	push af                                          ; $70ca: $f5
	pop  de                                          ; $70cb: $d1
	ld   [hl], c                                     ; $70cc: $71
	ld   [hl], h                                     ; $70cd: $74
	db   $e3                                         ; $70ce: $e3
	cp   b                                           ; $70cf: $b8
	inc  bc                                          ; $70d0: $03
	ld   l, d                                        ; $70d1: $6a
	ld   d, [hl]                                     ; $70d2: $56
	sub  [hl]                                        ; $70d3: $96
	ld   a, b                                        ; $70d4: $78
	sbc  a                                           ; $70d5: $9f
	dec  c                                           ; $70d6: $0d
	nop                                              ; $70d7: $00
	ld   a, [bc]                                     ; $70d8: $0a
	dec  c                                           ; $70d9: $0d
	nop                                              ; $70da: $00
	nop                                              ; $70db: $00
	rrca                                             ; $70dc: $0f
	nop                                              ; $70dd: $00
	ld   bc, $1e09                                   ; $70de: $01 $09 $1e
	nop                                              ; $70e1: $00
	rrca                                             ; $70e2: $0f
	nop                                              ; $70e3: $00
	ld   bc, $5001                                   ; $70e4: $01 $01 $50
	sbc  [hl]                                        ; $70e7: $9e
	xor  h                                           ; $70e8: $ac
	push af                                          ; $70e9: $f5
	bit  4, e                                        ; $70ea: $cb $63
	and  c                                           ; $70ec: $a1
	sbc  a                                           ; $70ed: $9f
	dec  c                                           ; $70ee: $0d
	ld   e, b                                        ; $70ef: $58
	ld   a, l                                        ; $70f0: $7d
	sub  [hl]                                        ; $70f1: $96
	ld   d, h                                        ; $70f2: $54
	ld   h, d                                        ; $70f3: $62
	ld   h, h                                        ; $70f4: $64
	ld   d, d                                        ; $70f5: $52
	adc  h                                           ; $70f6: $8c
	ld   h, a                                        ; $70f7: $67
	sbc  a                                           ; $70f8: $9f
	dec  c                                           ; $70f9: $0d
	nop                                              ; $70fa: $00
	ld   a, [bc]                                     ; $70fb: $0a
	ld   bc, $7d62                                   ; $70fc: $01 $62 $7d
	and  c                                           ; $70ff: $a1
	ld   [hl], l                                     ; $7100: $75
	ld   h, a                                        ; $7101: $67
	ld   e, c                                        ; $7102: $59
	ld   sp, hl                                      ; $7103: $f9
	dec  c                                           ; $7104: $0d
	inc  b                                           ; $7105: $04
	ld   l, l                                        ; $7106: $6d
	sbc  [hl]                                        ; $7107: $9e
	inc  bc                                          ; $7108: $03
	xor  a                                           ; $7109: $af
	inc  bc                                          ; $710a: $03
	ld   l, d                                        ; $710b: $6a
	ld   a, b                                        ; $710c: $78
	and  c                                           ; $710d: $a1
	ld   [hl], l                                     ; $710e: $75
	ld   h, a                                        ; $710f: $67
	sub  [hl]                                        ; $7110: $96
	rst  $38                                         ; $7111: $ff
	rst  $38                                         ; $7112: $ff
	dec  c                                           ; $7113: $0d
	nop                                              ; $7114: $00
	ld   a, [bc]                                     ; $7115: $0a
	inc  e                                           ; $7116: $1c
	ld   b, $05                                      ; $7117: $06 $05
	dec  b                                           ; $7119: $05
	dec  e                                           ; $711a: $1d
	ld   b, b                                        ; $711b: $40
	ld   d, $03                                      ; $711c: $16 $03
	ld   d, $01                                      ; $711e: $16 $01
	ld   [bc], a                                     ; $7120: $02
	add  hl, hl                                      ; $7121: $29
	nop                                              ; $7122: $00
	ld   bc, $e3c1                                   ; $7123: $01 $c1 $e3
	ld   l, [hl]                                     ; $7126: $6e
	sbc  [hl]                                        ; $7127: $9e
	pop  bc                                          ; $7128: $c1
	db   $e3                                         ; $7129: $e3
	ld   l, [hl]                                     ; $712a: $6e
	sbc  a                                           ; $712b: $9f
	dec  c                                           ; $712c: $0d
	db   $e3                                         ; $712d: $e3
	cp   b                                           ; $712e: $b8
	ld   a, l                                        ; $712f: $7d
	db   $e4                                         ; $7130: $e4
	db   $ec                                         ; $7131: $ec
	db   $e4                                         ; $7132: $e4
	db   $ec                                         ; $7133: $ec
	dec  c                                           ; $7134: $0d
	inc  bc                                          ; $7135: $03
	ld   l, d                                        ; $7136: $6a
	ld   d, [hl]                                     ; $7137: $56
	sub  [hl]                                        ; $7138: $96
	ld   a, b                                        ; $7139: $78
	sbc  a                                           ; $713a: $9f
	dec  c                                           ; $713b: $0d
	nop                                              ; $713c: $00
	ld   a, [bc]                                     ; $713d: $0a
	dec  c                                           ; $713e: $0d
	nop                                              ; $713f: $00
	nop                                              ; $7140: $00
	rrca                                             ; $7141: $0f
	nop                                              ; $7142: $00
	ld   bc, $1e09                                   ; $7143: $01 $09 $1e
	nop                                              ; $7146: $00
	nop                                              ; $7147: $00


	inc  e                                           ; $7148: $1c
	inc  bc                                          ; $7149: $03
	nop                                              ; $714a: $00
	nop                                              ; $714b: $00

	ld   [bc], a                                     ; $714c: $02

	rlca                                             ; $714d: $07
	ld   d, l                                        ; $714e: $55
	ld   bc, $8004                                   ; $714f: $01 $04 $80
	jr   nc, jr_043_7155                             ; $7152: $30 $01

	rst  $38                                         ; $7154: $ff

jr_043_7155:
	jr   nz, jr_043_7159                             ; $7155: $20 $02

	nop                                              ; $7157: $00
	inc  bc                                          ; $7158: $03

jr_043_7159:
	ld   b, b                                        ; $7159: $40
	ld   bc, $2801                                   ; $715a: $01 $01 $28
	jr   nz, jr_043_717b                             ; $715d: $20 $1c

	nop                                              ; $715f: $00


	ld   bc, $9750                                   ; $7160: $01 $50 $97
	sbc  [hl]                                        ; $7163: $9e
	ld   [$5d00], sp                                 ; $7164: $08 $00 $5d
	and  c                                           ; $7167: $a1
	sbc  a                                           ; $7168: $9f
	dec  c                                           ; $7169: $0d
	ld   e, b                                        ; $716a: $58
	ld   a, l                                        ; $716b: $7d
	sub  [hl]                                        ; $716c: $96
	ld   d, h                                        ; $716d: $54
	sbc  a                                           ; $716e: $9f
	dec  c                                           ; $716f: $0d
	nop                                              ; $7170: $00
	ld   a, [bc]                                     ; $7171: $0a

	
	add  hl, de                                      ; $7172: $19
	dec  b                                           ; $7173: $05
	ld   [bc], a                                     ; $7174: $02
	ld   d, b                                        ; $7175: $50
	ld   d, d                                        ; $7176: $52
	ld   h, e                                        ; $7177: $63
	ld   [hl], d                                     ; $7178: $72
	ld   h, a                                        ; $7179: $67
	sbc  c                                           ; $717a: $99

jr_043_717b:
	nop                                              ; $717b: $00
	nop                                              ; $717c: $00
	rst  JumpTable                                         ; $717d: $df
	db   $ec                                         ; $717e: $ec
	and  e                                           ; $717f: $a3
	and  b                                           ; $7180: $a0
	adc  c                                           ; $7181: $89
	adc  a                                           ; $7182: $8f
	sbc  c                                           ; $7183: $99
	nop                                              ; $7184: $00
	ld   bc, $5307                                   ; $7185: $01 $07 $53
	nop                                              ; $7188: $00
	ld   [bc], a                                     ; $7189: $02
	inc  bc                                          ; $718a: $03
	ld   bc, $2000                                   ; $718b: $01 $00 $20
	nop                                              ; $718e: $00
	rlca                                             ; $718f: $07
	or   [hl]                                        ; $7190: $b6
	nop                                              ; $7191: $00
	ld   [bc], a                                     ; $7192: $02
	inc  bc                                          ; $7193: $03
	ld   bc, $2001                                   ; $7194: $01 $01 $20
	nop                                              ; $7197: $00
	ld   b, $03                                      ; $7198: $06 $03
	ld   bc, $000f                                   ; $719a: $01 $0f $00
	ld   bc, $5801                                   ; $719d: $01 $01 $58
	ld   a, l                                        ; $71a0: $7d
	sub  [hl]                                        ; $71a1: $96
	ld   d, h                                        ; $71a2: $54
	ld   h, d                                        ; $71a3: $62
	ld   h, h                                        ; $71a4: $64
	ld   d, d                                        ; $71a5: $52
	adc  h                                           ; $71a6: $8c
	ld   h, a                                        ; $71a7: $67
	sbc  a                                           ; $71a8: $9f
	dec  c                                           ; $71a9: $0d
	inc  b                                           ; $71aa: $04
	adc  a                                           ; $71ab: $8f
	inc  b                                           ; $71ac: $04
	xor  d                                           ; $71ad: $aa
	sub  b                                           ; $71ae: $90
	sub  [hl]                                        ; $71af: $96
	sbc  e                                           ; $71b0: $9b
	ld   h, l                                        ; $71b1: $65
	ld   e, l                                        ; $71b2: $5d
	ld   e, b                                        ; $71b3: $58
	ld   [bc], a                                     ; $71b4: $02
	add  b                                           ; $71b5: $80
	ld   d, d                                        ; $71b6: $52
	ld   h, l                                        ; $71b7: $65
	adc  h                                           ; $71b8: $8c
	ld   h, a                                        ; $71b9: $67
	sbc  a                                           ; $71ba: $9f
	dec  c                                           ; $71bb: $0d
	nop                                              ; $71bc: $00
	ld   a, [bc]                                     ; $71bd: $0a
	inc  e                                           ; $71be: $1c
	inc  bc                                          ; $71bf: $03
	inc  bc                                          ; $71c0: $03
	inc  bc                                          ; $71c1: $03
	dec  e                                           ; $71c2: $1d
	ld   b, b                                        ; $71c3: $40
	inc  de                                          ; $71c4: $13
	inc  bc                                          ; $71c5: $03
	inc  de                                          ; $71c6: $13
	ld   bc, $2802                                   ; $71c7: $01 $02 $28
	nop                                              ; $71ca: $00
	ld   bc, $916f                                   ; $71cb: $01 $6f $91
	and  c                                           ; $71ce: $a1
	halt                                             ; $71cf: $76
	ld   d, b                                        ; $71d0: $50
	ld   d, d                                        ; $71d1: $52
	ld   h, e                                        ; $71d2: $63
	ld   [hl], d                                     ; $71d3: $72
	ld   [hl], l                                     ; $71d4: $75
	ld   e, e                                        ; $71d5: $5b
	ld   l, l                                        ; $71d6: $6d
	sbc  l                                           ; $71d7: $9d
	ld   a, e                                        ; $71d8: $7b
	sbc  a                                           ; $71d9: $9f
	dec  c                                           ; $71da: $0d
	ld   l, e                                        ; $71db: $6b
	ld   a, h                                        ; $71dc: $7c
	inc  bc                                          ; $71dd: $03
	cp   $03                                         ; $71de: $fe $03
	add  [hl]                                        ; $71e0: $86
	sub  [hl]                                        ; $71e1: $96
	sbc  a                                           ; $71e2: $9f
	dec  c                                           ; $71e3: $0d
	nop                                              ; $71e4: $00
	ld   a, [bc]                                     ; $71e5: $0a
	ld   bc, $9166                                   ; $71e6: $01 $66 $91
	sbc  [hl]                                        ; $71e9: $9e
	ld   e, d                                        ; $71ea: $5a
	and  c                                           ; $71eb: $a1
	ld   a, [hl]                                     ; $71ec: $7e
	sbc  b                                           ; $71ed: $98
	ld   a, b                                        ; $71ee: $78
	ld   h, e                                        ; $71ef: $63
	ld   d, d                                        ; $71f0: $52
	sbc  a                                           ; $71f1: $9f
	dec  c                                           ; $71f2: $0d
	nop                                              ; $71f3: $00
	ld   a, [bc]                                     ; $71f4: $0a
	dec  c                                           ; $71f5: $0d
	nop                                              ; $71f6: $00
	nop                                              ; $71f7: $00
	rrca                                             ; $71f8: $0f
	nop                                              ; $71f9: $00
	ld   bc, $1e09                                   ; $71fa: $01 $09 $1e
	nop                                              ; $71fd: $00
	rrca                                             ; $71fe: $0f
	nop                                              ; $71ff: $00
	ld   bc, $df01                                   ; $7200: $01 $01 $df
	db   $ec                                         ; $7203: $ec
	and  e                                           ; $7204: $a3
	ld   h, e                                        ; $7205: $63
	and  c                                           ; $7206: $a1
	sbc  [hl]                                        ; $7207: $9e
	ld   [bc], a                                     ; $7208: $02
	and  l                                           ; $7209: $a5
	inc  b                                           ; $720a: $04
	xor  d                                           ; $720b: $aa
	sub  b                                           ; $720c: $90
	dec  c                                           ; $720d: $0d
	ld   e, b                                        ; $720e: $58
	inc  b                                           ; $720f: $04
	call nc, $9502                                   ; $7210: $d4 $02 $95
	ld   d, [hl]                                     ; $7213: $56
	ld   d, h                                        ; $7214: $54
	sbc  c                                           ; $7215: $99
	sbc  l                                           ; $7216: $9d
	ld   h, l                                        ; $7217: $65
	sub  e                                           ; $7218: $93
	ld   d, h                                        ; $7219: $54
	rst  $38                                         ; $721a: $ff
	rst  $38                                         ; $721b: $ff
	dec  c                                           ; $721c: $0d
	nop                                              ; $721d: $00
	ld   a, [bc]                                     ; $721e: $0a
	inc  e                                           ; $721f: $1c
	inc  bc                                          ; $7220: $03
	ld   [bc], a                                     ; $7221: $02
	ld   [bc], a                                     ; $7222: $02
	dec  e                                           ; $7223: $1d
	ld   b, b                                        ; $7224: $40
	inc  de                                          ; $7225: $13
	inc  bc                                          ; $7226: $03
	inc  de                                          ; $7227: $13
	ld   bc, $2902                                   ; $7228: $01 $02 $29
	nop                                              ; $722b: $00
	ld   bc, $8758                                   ; $722c: $01 $58 $87
	and  c                                           ; $722f: $a1
	ld   l, a                                        ; $7230: $6f
	sub  c                                           ; $7231: $91
	sub  a                                           ; $7232: $97
	sub  [hl]                                        ; $7233: $96
	sbc  b                                           ; $7234: $98
	dec  c                                           ; $7235: $0d
	inc  bc                                          ; $7236: $03
	ld   a, b                                        ; $7237: $78
	ld   a, c                                        ; $7238: $79
	ld   [bc], a                                     ; $7239: $02
	sbc  l                                           ; $723a: $9d
	ld   d, h                                        ; $723b: $54
	ld   h, c                                        ; $723c: $61
	halt                                             ; $723d: $76
	ld   e, d                                        ; $723e: $5a
	ld   d, b                                        ; $723f: $50
	sbc  c                                           ; $7240: $99
	ld   [hl], l                                     ; $7241: $75
	ld   h, l                                        ; $7242: $65
	sub  l                                           ; $7243: $95
	ld   sp, hl                                      ; $7244: $f9
	dec  c                                           ; $7245: $0d
	nop                                              ; $7246: $00
	ld   a, [bc]                                     ; $7247: $0a
	ld   b, $2e                                      ; $7248: $06 $2e
	ld   bc, $031c                                   ; $724a: $01 $1c $03
	ld   [bc], a                                     ; $724d: $02
	ld   [bc], a                                     ; $724e: $02
	dec  e                                           ; $724f: $1d
	ld   b, b                                        ; $7250: $40
	inc  de                                          ; $7251: $13
	inc  bc                                          ; $7252: $03
	inc  de                                          ; $7253: $13
	ld   bc, $2903                                   ; $7254: $01 $03 $29
	nop                                              ; $7257: $00
	ld   bc, $7850                                   ; $7258: $01 $50 $78
	ld   l, l                                        ; $725b: $6d
	rst  $38                                         ; $725c: $ff
	rst  $38                                         ; $725d: $ff
	dec  c                                           ; $725e: $0d
	ld   d, b                                        ; $725f: $50
	ld   d, d                                        ; $7260: $52
	ld   h, e                                        ; $7261: $63
	ld   [hl], d                                     ; $7262: $72
	sub  b                                           ; $7263: $90
	ld   l, a                                        ; $7264: $6f
	sub  c                                           ; $7265: $91
	and  c                                           ; $7266: $a1
	halt                                             ; $7267: $76
	dec  c                                           ; $7268: $0d
	inc  bc                                          ; $7269: $03
	add  b                                           ; $726a: $80
	dec  b                                           ; $726b: $05
	db   $10                                         ; $726c: $10
	ld   a, b                                        ; $726d: $78
	ld   d, d                                        ; $726e: $52
	ld   a, h                                        ; $726f: $7c
	rst  $38                                         ; $7270: $ff
	rst  $38                                         ; $7271: $ff
	ld   sp, hl                                      ; $7272: $f9
	dec  c                                           ; $7273: $0d
	nop                                              ; $7274: $00
	ld   a, [bc]                                     ; $7275: $0a
	ld   bc, $5250                                   ; $7276: $01 $50 $52
	ld   h, e                                        ; $7279: $63
	ld   [hl], d                                     ; $727a: $72
	ld   a, l                                        ; $727b: $7d
	dec  b                                           ; $727c: $05
	xor  c                                           ; $727d: $a9
	inc  b                                           ; $727e: $04
	adc  a                                           ; $727f: $8f
	sub  [hl]                                        ; $7280: $96
	sbc  a                                           ; $7281: $9f
	dec  c                                           ; $7282: $0d
	ld   h, c                                        ; $7283: $61
	sbc  d                                           ; $7284: $9a
	ld   e, c                                        ; $7285: $59
	sub  a                                           ; $7286: $97
	ld   a, l                                        ; $7287: $7d
	ld   l, a                                        ; $7288: $6f
	sub  c                                           ; $7289: $91
	and  c                                           ; $728a: $a1
	halt                                             ; $728b: $76
	ld   h, l                                        ; $728c: $65
	ld   a, b                                        ; $728d: $78
	ld   h, e                                        ; $728e: $63
	ld   d, d                                        ; $728f: $52
	sbc  a                                           ; $7290: $9f
	dec  c                                           ; $7291: $0d
	nop                                              ; $7292: $00
	ld   a, [bc]                                     ; $7293: $0a
	dec  c                                           ; $7294: $0d
	nop                                              ; $7295: $00
	nop                                              ; $7296: $00
	rrca                                             ; $7297: $0f
	nop                                              ; $7298: $00
	ld   bc, $1e09                                   ; $7299: $01 $09 $1e
	nop                                              ; $729c: $00
	ld   bc, $9750                                   ; $729d: $01 $50 $97
	sbc  [hl]                                        ; $72a0: $9e
	ld   [$5d00], sp                                 ; $72a1: $08 $00 $5d
	and  c                                           ; $72a4: $a1
	sbc  a                                           ; $72a5: $9f
	dec  c                                           ; $72a6: $0d
	ld   e, b                                        ; $72a7: $58
	ld   a, l                                        ; $72a8: $7d
	sub  [hl]                                        ; $72a9: $96
	ld   d, h                                        ; $72aa: $54
	sbc  a                                           ; $72ab: $9f
	dec  c                                           ; $72ac: $0d
	dec  b                                           ; $72ad: $05
	ld   b, l                                        ; $72ae: $45
	inc  b                                           ; $72af: $04
	ld   e, d                                        ; $72b0: $5a
	ld   a, l                                        ; $72b1: $7d
	inc  b                                           ; $72b2: $04
	ld   c, $04                                      ; $72b3: $0e $04
	adc  h                                           ; $72b5: $8c
	ld   l, [hl]                                     ; $72b6: $6e
	ld   [hl], c                                     ; $72b7: $71
	ld   l, l                                        ; $72b8: $6d
	sub  [hl]                                        ; $72b9: $96
	ld   d, h                                        ; $72ba: $54
	ld   a, e                                        ; $72bb: $7b
	sbc  a                                           ; $72bc: $9f
	dec  c                                           ; $72bd: $0d
	nop                                              ; $72be: $00
	ld   a, [bc]                                     ; $72bf: $0a
	add  hl, de                                      ; $72c0: $19
	dec  b                                           ; $72c1: $05
	ld   [bc], a                                     ; $72c2: $02
	ld   d, b                                        ; $72c3: $50
	ld   d, d                                        ; $72c4: $52
	ld   h, e                                        ; $72c5: $63
	ld   [hl], d                                     ; $72c6: $72
	ld   h, a                                        ; $72c7: $67
	sbc  c                                           ; $72c8: $99
	nop                                              ; $72c9: $00
	nop                                              ; $72ca: $00
	rst  JumpTable                                         ; $72cb: $df
	db   $ec                                         ; $72cc: $ec
	and  e                                           ; $72cd: $a3
	and  b                                           ; $72ce: $a0
	adc  c                                           ; $72cf: $89
	adc  a                                           ; $72d0: $8f
	sbc  c                                           ; $72d1: $99
	nop                                              ; $72d2: $00
	ld   bc, $a107                                   ; $72d3: $01 $07 $a1
	ld   bc, $0302                                   ; $72d6: $01 $02 $03
	ld   bc, $2000                                   ; $72d9: $01 $00 $20
	nop                                              ; $72dc: $00
	rlca                                             ; $72dd: $07
	inc  b                                           ; $72de: $04
	ld   [bc], a                                     ; $72df: $02
	ld   [bc], a                                     ; $72e0: $02
	inc  bc                                          ; $72e1: $03
	ld   bc, $2001                                   ; $72e2: $01 $01 $20
	nop                                              ; $72e5: $00
	ld   b, $51                                      ; $72e6: $06 $51
	ld   [bc], a                                     ; $72e8: $02
	rrca                                             ; $72e9: $0f
	nop                                              ; $72ea: $00
	ld   bc, $5801                                   ; $72eb: $01 $01 $58
	ld   a, l                                        ; $72ee: $7d
	sub  [hl]                                        ; $72ef: $96
	ld   d, h                                        ; $72f0: $54
	ld   h, d                                        ; $72f1: $62
	ld   h, h                                        ; $72f2: $64
	ld   d, d                                        ; $72f3: $52
	adc  h                                           ; $72f4: $8c
	ld   h, a                                        ; $72f5: $67
	sbc  a                                           ; $72f6: $9f
	dec  c                                           ; $72f7: $0d
	inc  b                                           ; $72f8: $04
	adc  a                                           ; $72f9: $8f
	inc  b                                           ; $72fa: $04
	xor  d                                           ; $72fb: $aa
	sub  b                                           ; $72fc: $90
	sub  [hl]                                        ; $72fd: $96
	sbc  e                                           ; $72fe: $9b
	ld   h, l                                        ; $72ff: $65
	ld   e, l                                        ; $7300: $5d
	ld   e, b                                        ; $7301: $58
	ld   [bc], a                                     ; $7302: $02
	add  b                                           ; $7303: $80
	ld   d, d                                        ; $7304: $52
	ld   h, l                                        ; $7305: $65
	adc  h                                           ; $7306: $8c
	ld   h, a                                        ; $7307: $67
	sbc  a                                           ; $7308: $9f
	dec  c                                           ; $7309: $0d
	nop                                              ; $730a: $00
	ld   a, [bc]                                     ; $730b: $0a
	inc  e                                           ; $730c: $1c
	inc  bc                                          ; $730d: $03
	inc  bc                                          ; $730e: $03
	inc  bc                                          ; $730f: $03
	dec  e                                           ; $7310: $1d
	ld   b, b                                        ; $7311: $40
	inc  de                                          ; $7312: $13
	inc  bc                                          ; $7313: $03
	inc  de                                          ; $7314: $13
	ld   bc, $2802                                   ; $7315: $01 $02 $28
	nop                                              ; $7318: $00
	ld   bc, $916f                                   ; $7319: $01 $6f $91
	and  c                                           ; $731c: $a1
	halt                                             ; $731d: $76
	ld   d, b                                        ; $731e: $50
	ld   d, d                                        ; $731f: $52
	ld   h, e                                        ; $7320: $63
	ld   [hl], d                                     ; $7321: $72
	ld   [hl], l                                     ; $7322: $75
	ld   e, e                                        ; $7323: $5b
	ld   l, l                                        ; $7324: $6d
	sbc  l                                           ; $7325: $9d
	ld   a, e                                        ; $7326: $7b
	sbc  a                                           ; $7327: $9f
	dec  c                                           ; $7328: $0d
	ld   l, e                                        ; $7329: $6b
	ld   a, h                                        ; $732a: $7c
	inc  bc                                          ; $732b: $03
	cp   $03                                         ; $732c: $fe $03
	add  [hl]                                        ; $732e: $86
	sub  [hl]                                        ; $732f: $96
	sbc  a                                           ; $7330: $9f
	dec  c                                           ; $7331: $0d
	nop                                              ; $7332: $00
	ld   a, [bc]                                     ; $7333: $0a
	ld   bc, $9166                                   ; $7334: $01 $66 $91
	sbc  [hl]                                        ; $7337: $9e
	ld   e, d                                        ; $7338: $5a
	and  c                                           ; $7339: $a1
	ld   a, [hl]                                     ; $733a: $7e
	sbc  b                                           ; $733b: $98
	ld   a, b                                        ; $733c: $78
	ld   h, e                                        ; $733d: $63
	ld   d, d                                        ; $733e: $52
	sbc  a                                           ; $733f: $9f
	dec  c                                           ; $7340: $0d
	nop                                              ; $7341: $00
	ld   a, [bc]                                     ; $7342: $0a
	dec  c                                           ; $7343: $0d
	nop                                              ; $7344: $00
	nop                                              ; $7345: $00
	rrca                                             ; $7346: $0f
	nop                                              ; $7347: $00
	ld   bc, $1e09                                   ; $7348: $01 $09 $1e
	nop                                              ; $734b: $00
	rrca                                             ; $734c: $0f
	nop                                              ; $734d: $00
	ld   bc, $df01                                   ; $734e: $01 $01 $df
	db   $ec                                         ; $7351: $ec
	and  e                                           ; $7352: $a3
	ld   h, e                                        ; $7353: $63
	and  c                                           ; $7354: $a1
	sbc  [hl]                                        ; $7355: $9e
	ld   [bc], a                                     ; $7356: $02
	and  l                                           ; $7357: $a5
	inc  b                                           ; $7358: $04
	xor  d                                           ; $7359: $aa
	sub  b                                           ; $735a: $90
	dec  c                                           ; $735b: $0d
	ld   e, b                                        ; $735c: $58
	inc  b                                           ; $735d: $04
	call nc, $9502                                   ; $735e: $d4 $02 $95
	ld   d, [hl]                                     ; $7361: $56
	ld   d, h                                        ; $7362: $54
	sbc  c                                           ; $7363: $99
	sbc  l                                           ; $7364: $9d
	ld   h, l                                        ; $7365: $65
	sub  e                                           ; $7366: $93
	ld   d, h                                        ; $7367: $54
	rst  $38                                         ; $7368: $ff
	rst  $38                                         ; $7369: $ff
	dec  c                                           ; $736a: $0d
	nop                                              ; $736b: $00
	ld   a, [bc]                                     ; $736c: $0a
	inc  e                                           ; $736d: $1c
	inc  bc                                          ; $736e: $03
	ld   [bc], a                                     ; $736f: $02
	ld   [bc], a                                     ; $7370: $02
	dec  e                                           ; $7371: $1d
	ld   b, b                                        ; $7372: $40
	inc  de                                          ; $7373: $13
	inc  bc                                          ; $7374: $03
	inc  de                                          ; $7375: $13
	ld   bc, $2902                                   ; $7376: $01 $02 $29
	nop                                              ; $7379: $00
	ld   bc, $8758                                   ; $737a: $01 $58 $87
	and  c                                           ; $737d: $a1
	ld   l, a                                        ; $737e: $6f
	sub  c                                           ; $737f: $91
	sub  a                                           ; $7380: $97
	sub  [hl]                                        ; $7381: $96
	sbc  b                                           ; $7382: $98
	dec  c                                           ; $7383: $0d
	inc  bc                                          ; $7384: $03
	ld   a, b                                        ; $7385: $78
	ld   a, c                                        ; $7386: $79
	ld   [bc], a                                     ; $7387: $02
	sbc  l                                           ; $7388: $9d
	ld   d, h                                        ; $7389: $54
	ld   h, c                                        ; $738a: $61
	halt                                             ; $738b: $76
	ld   e, d                                        ; $738c: $5a
	ld   d, b                                        ; $738d: $50
	sbc  c                                           ; $738e: $99
	ld   [hl], l                                     ; $738f: $75
	ld   h, l                                        ; $7390: $65
	sub  l                                           ; $7391: $95
	ld   sp, hl                                      ; $7392: $f9
	dec  c                                           ; $7393: $0d
	nop                                              ; $7394: $00
	ld   a, [bc]                                     ; $7395: $0a
	ld   b, $7c                                      ; $7396: $06 $7c
	ld   [bc], a                                     ; $7398: $02
	inc  e                                           ; $7399: $1c
	inc  bc                                          ; $739a: $03
	ld   [bc], a                                     ; $739b: $02
	ld   [bc], a                                     ; $739c: $02
	dec  e                                           ; $739d: $1d
	ld   b, b                                        ; $739e: $40
	inc  de                                          ; $739f: $13
	inc  bc                                          ; $73a0: $03
	inc  de                                          ; $73a1: $13
	ld   bc, $2903                                   ; $73a2: $01 $03 $29
	nop                                              ; $73a5: $00
	ld   bc, $7850                                   ; $73a6: $01 $50 $78
	ld   l, l                                        ; $73a9: $6d
	rst  $38                                         ; $73aa: $ff
	rst  $38                                         ; $73ab: $ff
	dec  c                                           ; $73ac: $0d
	ld   d, b                                        ; $73ad: $50
	ld   d, d                                        ; $73ae: $52
	ld   h, e                                        ; $73af: $63
	ld   [hl], d                                     ; $73b0: $72
	sub  b                                           ; $73b1: $90
	ld   l, a                                        ; $73b2: $6f
	sub  c                                           ; $73b3: $91
	and  c                                           ; $73b4: $a1
	halt                                             ; $73b5: $76
	dec  c                                           ; $73b6: $0d
	inc  bc                                          ; $73b7: $03
	add  b                                           ; $73b8: $80
	dec  b                                           ; $73b9: $05
	db   $10                                         ; $73ba: $10
	ld   a, b                                        ; $73bb: $78
	ld   d, d                                        ; $73bc: $52
	ld   a, h                                        ; $73bd: $7c
	rst  $38                                         ; $73be: $ff
	rst  $38                                         ; $73bf: $ff
	ld   sp, hl                                      ; $73c0: $f9
	dec  c                                           ; $73c1: $0d
	nop                                              ; $73c2: $00
	ld   a, [bc]                                     ; $73c3: $0a
	ld   bc, $5250                                   ; $73c4: $01 $50 $52
	ld   h, e                                        ; $73c7: $63
	ld   [hl], d                                     ; $73c8: $72
	ld   a, l                                        ; $73c9: $7d
	dec  b                                           ; $73ca: $05
	xor  c                                           ; $73cb: $a9
	inc  b                                           ; $73cc: $04
	adc  a                                           ; $73cd: $8f
	sub  [hl]                                        ; $73ce: $96
	sbc  a                                           ; $73cf: $9f
	dec  c                                           ; $73d0: $0d
	ld   h, c                                        ; $73d1: $61
	sbc  d                                           ; $73d2: $9a
	ld   e, c                                        ; $73d3: $59
	sub  a                                           ; $73d4: $97
	ld   a, l                                        ; $73d5: $7d
	ld   l, a                                        ; $73d6: $6f
	sub  c                                           ; $73d7: $91
	and  c                                           ; $73d8: $a1
	halt                                             ; $73d9: $76
	ld   h, l                                        ; $73da: $65
	ld   a, b                                        ; $73db: $78
	ld   h, e                                        ; $73dc: $63
	ld   d, d                                        ; $73dd: $52
	sbc  a                                           ; $73de: $9f
	dec  c                                           ; $73df: $0d
	nop                                              ; $73e0: $00
	ld   a, [bc]                                     ; $73e1: $0a
	dec  c                                           ; $73e2: $0d
	nop                                              ; $73e3: $00
	nop                                              ; $73e4: $00
	rrca                                             ; $73e5: $0f
	nop                                              ; $73e6: $00
	ld   bc, $1e09                                   ; $73e7: $01 $09 $1e
	nop                                              ; $73ea: $00
	nop                                              ; $73eb: $00
	inc  e                                           ; $73ec: $1c
	inc  b                                           ; $73ed: $04
	ld   bc, $0201                                   ; $73ee: $01 $01 $02
	rlca                                             ; $73f1: $07
	db   $ec                                         ; $73f2: $ec
	ld   bc, $8004                                   ; $73f3: $01 $04 $80
	jr   nc, jr_043_73f9                             ; $73f6: $30 $01

	rst  $38                                         ; $73f8: $ff

jr_043_73f9:
	jr   nz, jr_043_73fd                             ; $73f9: $20 $02

	nop                                              ; $73fb: $00
	inc  bc                                          ; $73fc: $03

jr_043_73fd:
	ld   b, b                                        ; $73fd: $40
	ld   bc, $2801                                   ; $73fe: $01 $01 $28
	jr   nz, jr_043_741f                             ; $7401: $20 $1c

	nop                                              ; $7403: $00
	ld   bc, $9e50                                   ; $7404: $01 $50 $9e
	ld   e, b                                        ; $7407: $58
	ld   a, l                                        ; $7408: $7d
	sub  [hl]                                        ; $7409: $96
	ld   d, h                                        ; $740a: $54
	ld   a, [$6f0d]                                  ; $740b: $fa $0d $6f
	ld   d, d                                        ; $740e: $52
	ld   [bc], a                                     ; $740f: $02
	inc  de                                          ; $7410: $13
	ld   l, a                                        ; $7411: $6f
	sub  c                                           ; $7412: $91
	and  c                                           ; $7413: $a1
	sbc  a                                           ; $7414: $9f
	dec  c                                           ; $7415: $0d
	nop                                              ; $7416: $00
	ld   a, [bc]                                     ; $7417: $0a
	rlca                                             ; $7418: $07
	inc  c                                           ; $7419: $0c
	inc  b                                           ; $741a: $04
	inc  b                                           ; $741b: $04
	add  b                                           ; $741c: $80
	sub  $01                                         ; $741d: $d6 $01

jr_043_741f:
	rst  $38                                         ; $741f: $ff
	jr   nz, jr_043_7422                             ; $7420: $20 $00

jr_043_7422:
	rrca                                             ; $7422: $0f
	nop                                              ; $7423: $00
	ld   bc, $0101                                   ; $7424: $01 $01 $01
	inc  bc                                          ; $7427: $03
	ld   d, [hl]                                     ; $7428: $56
	rst  $38                                         ; $7429: $ff
	rst  $38                                         ; $742a: $ff
	halt                                             ; $742b: $76
	sbc  [hl]                                        ; $742c: $9e
	dec  c                                           ; $742d: $0d
	db   $10                                         ; $742e: $10
	inc  b                                           ; $742f: $04
	ld   c, c                                        ; $7430: $49
	ld   [hl], h                                     ; $7431: $74
	ld   [bc], a                                     ; $7432: $02
	ld   a, b                                        ; $7433: $78
	adc  d                                           ; $7434: $8a
	ld   d, h                                        ; $7435: $54
	ld   e, c                                        ; $7436: $59
	rst  $38                                         ; $7437: $ff
	rst  $38                                         ; $7438: $ff
	ld   sp, hl                                      ; $7439: $f9
	ld   bc, $0d04                                   ; $743a: $01 $04 $0d
	nop                                              ; $743d: $00
	ld   a, [bc]                                     ; $743e: $0a
	add  hl, de                                      ; $743f: $19
	dec  b                                           ; $7440: $05
	inc  bc                                          ; $7441: $03
	and  e                                           ; $7442: $a3
	and  l                                           ; $7443: $a5
	db   $ec                                         ; $7444: $ec
	cp   d                                           ; $7445: $ba
	ld   l, a                                        ; $7446: $6f
	sub  c                                           ; $7447: $91
	and  c                                           ; $7448: $a1
	nop                                              ; $7449: $00
	nop                                              ; $744a: $00
	cp   b                                           ; $744b: $b8
	push hl                                          ; $744c: $e5
	ret                                              ; $744d: $c9


	ei                                               ; $744e: $fb
	rst  $10                                         ; $744f: $d7
	db   $ec                                         ; $7450: $ec
	and  e                                           ; $7451: $a3

Jump_043_7452:
	push af                                          ; $7452: $f5
	ld   h, e                                        ; $7453: $63
	and  c                                           ; $7454: $a1
	nop                                              ; $7455: $00
	ld   bc, $a5a3                                   ; $7456: $01 $a3 $a5
	db   $ec                                         ; $7459: $ec
	cp   d                                           ; $745a: $ba
	ld   h, e                                        ; $745b: $63
	adc  h                                           ; $745c: $8c
	nop                                              ; $745d: $00
	ld   [bc], a                                     ; $745e: $02
	rlca                                             ; $745f: $07
	sub  c                                           ; $7460: $91
	nop                                              ; $7461: $00
	ld   [bc], a                                     ; $7462: $02
	inc  bc                                          ; $7463: $03
	ld   bc, $2000                                   ; $7464: $01 $00 $20
	nop                                              ; $7467: $00
	rlca                                             ; $7468: $07
	db   $d3                                         ; $7469: $d3
	nop                                              ; $746a: $00
	ld   [bc], a                                     ; $746b: $02
	inc  bc                                          ; $746c: $03
	ld   bc, $2001                                   ; $746d: $01 $01 $20
	nop                                              ; $7470: $00
	rlca                                             ; $7471: $07
	jr   jr_043_7475                                 ; $7472: $18 $01

	ld   [bc], a                                     ; $7474: $02

jr_043_7475:
	inc  bc                                          ; $7475: $03
	ld   bc, $2002                                   ; $7476: $01 $02 $20
	nop                                              ; $7479: $00
	ld   b, $65                                      ; $747a: $06 $65
	ld   bc, $000f                                   ; $747c: $01 $0f $00
	ld   bc, $5801                                   ; $747f: $01 $01 $58
	ld   a, l                                        ; $7482: $7d
	sub  [hl]                                        ; $7483: $96
	ld   d, h                                        ; $7484: $54
	sbc  [hl]                                        ; $7485: $9e
	dec  c                                           ; $7486: $0d
	and  e                                           ; $7487: $a3
	and  l                                           ; $7488: $a5
	db   $ec                                         ; $7489: $ec
	cp   d                                           ; $748a: $ba
	ld   l, a                                        ; $748b: $6f
	sub  c                                           ; $748c: $91
	and  c                                           ; $748d: $a1
	sbc  a                                           ; $748e: $9f
	dec  c                                           ; $748f: $0d
	nop                                              ; $7490: $00
	ld   a, [bc]                                     ; $7491: $0a
	inc  e                                           ; $7492: $1c
	inc  b                                           ; $7493: $04
	ld   [bc], a                                     ; $7494: $02
	ld   [bc], a                                     ; $7495: $02
	dec  e                                           ; $7496: $1d
	ld   b, b                                        ; $7497: $40
	inc  d                                           ; $7498: $14
	inc  bc                                          ; $7499: $03
	inc  d                                           ; $749a: $14
	ld   bc, $2902                                   ; $749b: $01 $02 $29
	nop                                              ; $749e: $00
	ld   bc, $0701                                   ; $749f: $01 $01 $07
	ld   l, a                                        ; $74a2: $6f
	sub  c                                           ; $74a3: $91
	and  c                                           ; $74a4: $a1
	ld   bc, $6e08                                   ; $74a5: $01 $08 $6e
	ld   a, b                                        ; $74a8: $78
	and  c                                           ; $74a9: $a1
	ld   [hl], h                                     ; $74aa: $74
	dec  c                                           ; $74ab: $0d
	ld   h, c                                        ; $74ac: $61
	ld   [hl], a                                     ; $74ad: $77
	sub  b                                           ; $74ae: $90
	ld   d, b                                        ; $74af: $50
	ld   [hl], d                                     ; $74b0: $72
	ld   e, c                                        ; $74b1: $59
	ld   d, d                                        ; $74b2: $52
	ld   h, l                                        ; $74b3: $65
	ld   a, b                                        ; $74b4: $78
	ld   d, d                                        ; $74b5: $52
	ld   [hl], l                                     ; $74b6: $75
	sub  [hl]                                        ; $74b7: $96
	sbc  a                                           ; $74b8: $9f
	dec  c                                           ; $74b9: $0d
	nop                                              ; $74ba: $00
	ld   a, [bc]                                     ; $74bb: $0a
	ld   b, $aa                                      ; $74bc: $06 $aa
	ld   bc, $000f                                   ; $74be: $01 $0f $00
	ld   bc, $5801                                   ; $74c1: $01 $01 $58
	ld   a, l                                        ; $74c4: $7d
	sub  [hl]                                        ; $74c5: $96
	ld   d, h                                        ; $74c6: $54
	ld   h, d                                        ; $74c7: $62
	ld   h, h                                        ; $74c8: $64
	ld   d, d                                        ; $74c9: $52
	adc  h                                           ; $74ca: $8c
	ld   h, a                                        ; $74cb: $67
	sbc  [hl]                                        ; $74cc: $9e
	dec  c                                           ; $74cd: $0d
	cp   b                                           ; $74ce: $b8
	push hl                                          ; $74cf: $e5
	ret                                              ; $74d0: $c9


	ei                                               ; $74d1: $fb
	rst  $10                                         ; $74d2: $d7
	db   $ec                                         ; $74d3: $ec
	and  e                                           ; $74d4: $a3
	push af                                          ; $74d5: $f5
	ld   h, e                                        ; $74d6: $63
	and  c                                           ; $74d7: $a1
	sbc  a                                           ; $74d8: $9f
	dec  c                                           ; $74d9: $0d
	nop                                              ; $74da: $00
	ld   a, [bc]                                     ; $74db: $0a
	inc  e                                           ; $74dc: $1c
	inc  b                                           ; $74dd: $04
	ld   b, $06                                      ; $74de: $06 $06
	ld   bc, $f956                                   ; $74e0: $01 $56 $f9
	db   $10                                         ; $74e3: $10
	ld   d, [hl]                                     ; $74e4: $56
	ld   sp, hl                                      ; $74e5: $f9
	dec  c                                           ; $74e6: $0d
	ld   a, b                                        ; $74e7: $78
	and  c                                           ; $74e8: $a1
	ld   e, c                                        ; $74e9: $59
	ld   l, e                                        ; $74ea: $6b
	ld   d, h                                        ; $74eb: $54
	sub  d                                           ; $74ec: $92
	ld   [hl], c                                     ; $74ed: $71
	ld   [hl], h                                     ; $74ee: $74
	sub  [hl]                                        ; $74ef: $96
	ld   a, [hl]                                     ; $74f0: $7e
	sbc  d                                           ; $74f1: $9a
	sbc  c                                           ; $74f2: $99
	halt                                             ; $74f3: $76
	dec  c                                           ; $74f4: $0d
	add  e                                           ; $74f5: $83
	ld   h, l                                        ; $74f6: $65
	ld   e, h                                        ; $74f7: $5c
	ld   a, b                                        ; $74f8: $78
	ld   e, c                                        ; $74f9: $59
	and  c                                           ; $74fa: $a1
	ld   h, [hl]                                     ; $74fb: $66
	rst  $38                                         ; $74fc: $ff
	rst  $38                                         ; $74fd: $ff
	dec  c                                           ; $74fe: $0d
	nop                                              ; $74ff: $00
	ld   a, [bc]                                     ; $7500: $0a
	ld   b, $aa                                      ; $7501: $06 $aa
	ld   bc, $000f                                   ; $7503: $01 $0f $00
	ld   bc, $5801                                   ; $7506: $01 $01 $58
	ld   a, l                                        ; $7509: $7d
	sub  [hl]                                        ; $750a: $96
	ld   d, h                                        ; $750b: $54
	ld   h, d                                        ; $750c: $62
	ld   h, h                                        ; $750d: $64
	ld   d, d                                        ; $750e: $52
	adc  h                                           ; $750f: $8c
	ld   h, a                                        ; $7510: $67
	sbc  [hl]                                        ; $7511: $9e
	dec  c                                           ; $7512: $0d
	and  e                                           ; $7513: $a3
	and  l                                           ; $7514: $a5
	db   $ec                                         ; $7515: $ec
	cp   d                                           ; $7516: $ba
	ld   h, e                                        ; $7517: $63
	adc  h                                           ; $7518: $8c
	sbc  a                                           ; $7519: $9f
	dec  c                                           ; $751a: $0d
	nop                                              ; $751b: $00
	ld   a, [bc]                                     ; $751c: $0a
	inc  e                                           ; $751d: $1c
	inc  b                                           ; $751e: $04
	ld   bc, $1d01                                   ; $751f: $01 $01 $1d
	ld   b, b                                        ; $7522: $40
	inc  d                                           ; $7523: $14
	inc  bc                                          ; $7524: $03
	inc  d                                           ; $7525: $14
	ld   bc, $2801                                   ; $7526: $01 $01 $28
	nop                                              ; $7529: $00
	ld   bc, $d0a3                                   ; $752a: $01 $a3 $d0
	ret  nc                                          ; $752d: $d0

	ret  nc                                          ; $752e: $d0

	ret  nc                                          ; $752f: $d0

	ret  nc                                          ; $7530: $d0

	ld   a, [$010d]                                  ; $7531: $fa $0d $01
	rlca                                             ; $7534: $07
	and  e                                           ; $7535: $a3
	and  l                                           ; $7536: $a5
	db   $ec                                         ; $7537: $ec
	cp   d                                           ; $7538: $ba
	ld   h, e                                        ; $7539: $63
	adc  h                                           ; $753a: $8c
	ld   bc, $6e08                                   ; $753b: $01 $08 $6e
	ld   a, b                                        ; $753e: $78
	and  c                                           ; $753f: $a1
	ld   [hl], h                                     ; $7540: $74
	dec  c                                           ; $7541: $0d
	ld   a, b                                        ; $7542: $78
	and  c                                           ; $7543: $a1
	ld   e, c                                        ; $7544: $59
	reti                                             ; $7545: $d9


	push af                                          ; $7546: $f5
	ld   l, [hl]                                     ; $7547: $6e
	sub  [hl]                                        ; $7548: $96
	db   $fc                                         ; $7549: $fc
	sbc  a                                           ; $754a: $9f
	dec  c                                           ; $754b: $0d
	nop                                              ; $754c: $00
	ld   a, [bc]                                     ; $754d: $0a
	ld   b, $aa                                      ; $754e: $06 $aa
	ld   bc, $041c                                   ; $7550: $01 $1c $04
	inc  bc                                          ; $7553: $03
	inc  bc                                          ; $7554: $03
	dec  e                                           ; $7555: $1d
	ld   b, b                                        ; $7556: $40
	inc  d                                           ; $7557: $14
	inc  bc                                          ; $7558: $03
	inc  d                                           ; $7559: $14
	ld   bc, $2903                                   ; $755a: $01 $03 $29
	nop                                              ; $755d: $00
	ld   bc, $7780                                   ; $755e: $01 $80 $77
	ld   d, d                                        ; $7561: $52
	rst  $38                                         ; $7562: $ff
	rst  $38                                         ; $7563: $ff
	dec  c                                           ; $7564: $0d
	ld   l, a                                        ; $7565: $6f
	ld   d, d                                        ; $7566: $52
	ld   [bc], a                                     ; $7567: $02
	inc  de                                          ; $7568: $13
	ld   l, a                                        ; $7569: $6f
	sub  c                                           ; $756a: $91
	and  c                                           ; $756b: $a1
	sbc  [hl]                                        ; $756c: $9e
	and  e                                           ; $756d: $a3
	and  l                                           ; $756e: $a5
	db   $ec                                         ; $756f: $ec
	cp   d                                           ; $7570: $ba
	ld   a, h                                        ; $7571: $7c
	ld   h, c                                        ; $7572: $61
	halt                                             ; $7573: $76
	dec  c                                           ; $7574: $0d
	ldh  [c], a                                      ; $7575: $e2
	cp   b                                           ; $7576: $b8
	ld   h, l                                        ; $7577: $65
	ld   l, l                                        ; $7578: $6d
	rst  $38                                         ; $7579: $ff
	rst  $38                                         ; $757a: $ff
	dec  c                                           ; $757b: $0d
	nop                                              ; $757c: $00
	ld   a, [bc]                                     ; $757d: $0a
	inc  e                                           ; $757e: $1c
	inc  b                                           ; $757f: $04
	rlca                                             ; $7580: $07
	rlca                                             ; $7581: $07
	ld   bc, $5490                                   ; $7582: $01 $90 $54
	ld   h, l                                        ; $7585: $65
	sub  a                                           ; $7586: $97
	ld   a, b                                        ; $7587: $78
	ld   d, d                                        ; $7588: $52
	ld   a, [$000d]                                  ; $7589: $fa $0d $00
	ld   a, [bc]                                     ; $758c: $0a
	dec  c                                           ; $758d: $0d
	nop                                              ; $758e: $00
	nop                                              ; $758f: $00
	rrca                                             ; $7590: $0f
	nop                                              ; $7591: $00
	ld   bc, $1e09                                   ; $7592: $01 $09 $1e
	nop                                              ; $7595: $00
	inc  e                                           ; $7596: $1c
	inc  b                                           ; $7597: $04
	nop                                              ; $7598: $00
	nop                                              ; $7599: $00
	ld   bc, $a5a3                                   ; $759a: $01 $a3 $a5
	db   $ec                                         ; $759d: $ec
	cp   d                                           ; $759e: $ba
	ld   a, h                                        ; $759f: $7c
	ld   h, c                                        ; $75a0: $61
	halt                                             ; $75a1: $76
	ld   a, l                                        ; $75a2: $7d
	dec  c                                           ; $75a3: $0d
	ld   bc, $a307                                   ; $75a4: $01 $07 $a3
	and  l                                           ; $75a7: $a5
	db   $ec                                         ; $75a8: $ec
	cp   d                                           ; $75a9: $ba
	ld   bc, $7508                                   ; $75aa: $01 $08 $75
	ld   d, d                                        ; $75ad: $52
	ld   d, d                                        ; $75ae: $52
	ld   e, c                                        ; $75af: $59
	sub  a                                           ; $75b0: $97
	ld   a, e                                        ; $75b1: $7b
	sbc  [hl]                                        ; $75b2: $9e
	dec  c                                           ; $75b3: $0d
	ld   l, a                                        ; $75b4: $6f
	ld   d, d                                        ; $75b5: $52
	ld   [bc], a                                     ; $75b6: $02
	inc  de                                          ; $75b7: $13
	ld   l, a                                        ; $75b8: $6f
	sub  c                                           ; $75b9: $91
	and  c                                           ; $75ba: $a1
	sbc  a                                           ; $75bb: $9f
	dec  c                                           ; $75bc: $0d
	nop                                              ; $75bd: $00
	ld   a, [bc]                                     ; $75be: $0a
	inc  e                                           ; $75bf: $1c
	inc  b                                           ; $75c0: $04
	ld   bc, $0101                                   ; $75c1: $01 $01 $01
	ld   e, e                                        ; $75c4: $5b
	sub  l                                           ; $75c5: $95
	ld   d, h                                        ; $75c6: $54
	sub  b                                           ; $75c7: $90
	ld   d, d                                        ; $75c8: $52
	ld   l, a                                        ; $75c9: $6f
	ld   a, c                                        ; $75ca: $79
	ld   l, a                                        ; $75cb: $6f
	dec  c                                           ; $75cc: $0d
	ld   e, d                                        ; $75cd: $5a
	and  c                                           ; $75ce: $a1
	ld   a, [hl]                                     ; $75cf: $7e
	sbc  e                                           ; $75d0: $9b
	ld   d, h                                        ; $75d1: $54
	ld   a, e                                        ; $75d2: $7b
	ld   a, [$000d]                                  ; $75d3: $fa $0d $00
	ld   a, [bc]                                     ; $75d6: $0a
	nop                                              ; $75d7: $00
	ld   bc, $9e50                                   ; $75d8: $01 $50 $9e
	ld   e, b                                        ; $75db: $58
	ld   a, l                                        ; $75dc: $7d
	sub  [hl]                                        ; $75dd: $96
	ld   d, h                                        ; $75de: $54
	ld   a, [$6f0d]                                  ; $75df: $fa $0d $6f
	ld   d, d                                        ; $75e2: $52
	ld   [bc], a                                     ; $75e3: $02
	inc  de                                          ; $75e4: $13
	ld   l, a                                        ; $75e5: $6f
	sub  c                                           ; $75e6: $91
	and  c                                           ; $75e7: $a1
	sbc  a                                           ; $75e8: $9f
	dec  c                                           ; $75e9: $0d
	ld   e, e                                        ; $75ea: $5b
	ld   a, h                                        ; $75eb: $7c
	ld   d, h                                        ; $75ec: $54
	ld   a, l                                        ; $75ed: $7d
	ld   l, l                                        ; $75ee: $6d
	ld   d, d                                        ; $75ef: $52
	add  [hl]                                        ; $75f0: $86
	and  c                                           ; $75f1: $a1
	ld   l, [hl]                                     ; $75f2: $6e
	ld   [hl], c                                     ; $75f3: $71
	ld   l, l                                        ; $75f4: $6d
	ld   a, e                                        ; $75f5: $7b
	sbc  a                                           ; $75f6: $9f
	dec  c                                           ; $75f7: $0d
	nop                                              ; $75f8: $00
	ld   a, [bc]                                     ; $75f9: $0a
	rlca                                             ; $75fa: $07
	db   $e4                                         ; $75fb: $e4
	inc  bc                                          ; $75fc: $03
	inc  b                                           ; $75fd: $04
	add  b                                           ; $75fe: $80
	sub  $01                                         ; $75ff: $d6 $01
	rst  $38                                         ; $7601: $ff
	jr   nz, jr_043_7604                             ; $7602: $20 $00

jr_043_7604:
	rrca                                             ; $7604: $0f
	nop                                              ; $7605: $00
	ld   bc, $0101                                   ; $7606: $01 $01 $01
	inc  bc                                          ; $7609: $03
	ld   d, [hl]                                     ; $760a: $56
	rst  $38                                         ; $760b: $ff
	rst  $38                                         ; $760c: $ff
	halt                                             ; $760d: $76
	sbc  [hl]                                        ; $760e: $9e
	dec  c                                           ; $760f: $0d
	db   $10                                         ; $7610: $10
	inc  b                                           ; $7611: $04
	ld   c, c                                        ; $7612: $49
	ld   [hl], h                                     ; $7613: $74
	ld   [bc], a                                     ; $7614: $02
	ld   a, b                                        ; $7615: $78
	adc  d                                           ; $7616: $8a
	ld   d, h                                        ; $7617: $54
	ld   e, c                                        ; $7618: $59
	rst  $38                                         ; $7619: $ff
	rst  $38                                         ; $761a: $ff
	ld   sp, hl                                      ; $761b: $f9
	ld   bc, $0d04                                   ; $761c: $01 $04 $0d
	nop                                              ; $761f: $00
	ld   a, [bc]                                     ; $7620: $0a
	add  hl, de                                      ; $7621: $19
	dec  b                                           ; $7622: $05
	inc  bc                                          ; $7623: $03
	and  e                                           ; $7624: $a3
	and  l                                           ; $7625: $a5
	db   $ec                                         ; $7626: $ec
	cp   d                                           ; $7627: $ba
	ld   l, a                                        ; $7628: $6f
	sub  c                                           ; $7629: $91
	and  c                                           ; $762a: $a1
	nop                                              ; $762b: $00
	nop                                              ; $762c: $00
	cp   b                                           ; $762d: $b8
	push hl                                          ; $762e: $e5
	ret                                              ; $762f: $c9


	ei                                               ; $7630: $fb
	rst  $10                                         ; $7631: $d7
	db   $ec                                         ; $7632: $ec
	and  e                                           ; $7633: $a3
	push af                                          ; $7634: $f5
	ld   h, e                                        ; $7635: $63
	and  c                                           ; $7636: $a1
	nop                                              ; $7637: $00
	ld   bc, $a5a3                                   ; $7638: $01 $a3 $a5
	db   $ec                                         ; $763b: $ec
	cp   d                                           ; $763c: $ba
	ld   h, e                                        ; $763d: $63
	adc  h                                           ; $763e: $8c
	nop                                              ; $763f: $00
	ld   [bc], a                                     ; $7640: $02
	rlca                                             ; $7641: $07
	ld   [hl], e                                     ; $7642: $73
	ld   [bc], a                                     ; $7643: $02
	ld   [bc], a                                     ; $7644: $02
	inc  bc                                          ; $7645: $03
	ld   bc, $2000                                   ; $7646: $01 $00 $20
	nop                                              ; $7649: $00
	rlca                                             ; $764a: $07
	or   l                                           ; $764b: $b5
	ld   [bc], a                                     ; $764c: $02
	ld   [bc], a                                     ; $764d: $02
	inc  bc                                          ; $764e: $03
	ld   bc, $2001                                   ; $764f: $01 $01 $20
	nop                                              ; $7652: $00
	rlca                                             ; $7653: $07
	ld   a, [$0202]                                  ; $7654: $fa $02 $02
	inc  bc                                          ; $7657: $03
	ld   bc, $2002                                   ; $7658: $01 $02 $20
	nop                                              ; $765b: $00
	ld   b, $47                                      ; $765c: $06 $47
	inc  bc                                          ; $765e: $03
	rrca                                             ; $765f: $0f
	nop                                              ; $7660: $00
	ld   bc, $5801                                   ; $7661: $01 $01 $58
	ld   a, l                                        ; $7664: $7d
	sub  [hl]                                        ; $7665: $96
	ld   d, h                                        ; $7666: $54
	sbc  [hl]                                        ; $7667: $9e
	dec  c                                           ; $7668: $0d
	and  e                                           ; $7669: $a3
	and  l                                           ; $766a: $a5
	db   $ec                                         ; $766b: $ec
	cp   d                                           ; $766c: $ba
	ld   l, a                                        ; $766d: $6f
	sub  c                                           ; $766e: $91
	and  c                                           ; $766f: $a1
	sbc  a                                           ; $7670: $9f
	dec  c                                           ; $7671: $0d
	nop                                              ; $7672: $00
	ld   a, [bc]                                     ; $7673: $0a
	inc  e                                           ; $7674: $1c
	inc  b                                           ; $7675: $04
	ld   [bc], a                                     ; $7676: $02
	ld   [bc], a                                     ; $7677: $02
	dec  e                                           ; $7678: $1d
	ld   b, b                                        ; $7679: $40
	inc  d                                           ; $767a: $14
	inc  bc                                          ; $767b: $03
	inc  d                                           ; $767c: $14
	ld   bc, $2902                                   ; $767d: $01 $02 $29
	nop                                              ; $7680: $00
	ld   bc, $0701                                   ; $7681: $01 $01 $07
	ld   l, a                                        ; $7684: $6f
	sub  c                                           ; $7685: $91
	and  c                                           ; $7686: $a1
	ld   bc, $6e08                                   ; $7687: $01 $08 $6e
	ld   a, b                                        ; $768a: $78
	and  c                                           ; $768b: $a1
	ld   [hl], h                                     ; $768c: $74
	dec  c                                           ; $768d: $0d
	ld   h, c                                        ; $768e: $61
	ld   [hl], a                                     ; $768f: $77
	sub  b                                           ; $7690: $90
	ld   d, b                                        ; $7691: $50
	ld   [hl], d                                     ; $7692: $72
	ld   e, c                                        ; $7693: $59
	ld   d, d                                        ; $7694: $52
	ld   h, l                                        ; $7695: $65
	ld   a, b                                        ; $7696: $78
	ld   d, d                                        ; $7697: $52
	ld   [hl], l                                     ; $7698: $75
	sub  [hl]                                        ; $7699: $96
	sbc  a                                           ; $769a: $9f
	dec  c                                           ; $769b: $0d
	nop                                              ; $769c: $00
	ld   a, [bc]                                     ; $769d: $0a
	ld   b, $a2                                      ; $769e: $06 $a2
	inc  bc                                          ; $76a0: $03
	rrca                                             ; $76a1: $0f
	nop                                              ; $76a2: $00
	ld   bc, $5801                                   ; $76a3: $01 $01 $58
	ld   a, l                                        ; $76a6: $7d
	sub  [hl]                                        ; $76a7: $96
	ld   d, h                                        ; $76a8: $54
	ld   h, d                                        ; $76a9: $62
	ld   h, h                                        ; $76aa: $64
	ld   d, d                                        ; $76ab: $52
	adc  h                                           ; $76ac: $8c
	ld   h, a                                        ; $76ad: $67
	sbc  [hl]                                        ; $76ae: $9e
	dec  c                                           ; $76af: $0d
	cp   b                                           ; $76b0: $b8
	push hl                                          ; $76b1: $e5
	ret                                              ; $76b2: $c9


	ei                                               ; $76b3: $fb
	rst  $10                                         ; $76b4: $d7
	db   $ec                                         ; $76b5: $ec
	and  e                                           ; $76b6: $a3
	push af                                          ; $76b7: $f5
	ld   h, e                                        ; $76b8: $63
	and  c                                           ; $76b9: $a1
	sbc  a                                           ; $76ba: $9f
	dec  c                                           ; $76bb: $0d
	nop                                              ; $76bc: $00
	ld   a, [bc]                                     ; $76bd: $0a
	inc  e                                           ; $76be: $1c
	inc  b                                           ; $76bf: $04
	ld   b, $06                                      ; $76c0: $06 $06
	ld   bc, $f956                                   ; $76c2: $01 $56 $f9
	db   $10                                         ; $76c5: $10
	ld   d, [hl]                                     ; $76c6: $56
	ld   sp, hl                                      ; $76c7: $f9
	dec  c                                           ; $76c8: $0d
	ld   a, b                                        ; $76c9: $78
	and  c                                           ; $76ca: $a1
	ld   e, c                                        ; $76cb: $59
	ld   l, e                                        ; $76cc: $6b
	ld   d, h                                        ; $76cd: $54
	sub  d                                           ; $76ce: $92
	ld   [hl], c                                     ; $76cf: $71
	ld   [hl], h                                     ; $76d0: $74
	sub  [hl]                                        ; $76d1: $96
	ld   a, [hl]                                     ; $76d2: $7e
	sbc  d                                           ; $76d3: $9a
	sbc  c                                           ; $76d4: $99
	halt                                             ; $76d5: $76
	dec  c                                           ; $76d6: $0d
	add  e                                           ; $76d7: $83
	ld   h, l                                        ; $76d8: $65
	ld   e, h                                        ; $76d9: $5c
	ld   a, b                                        ; $76da: $78
	ld   e, c                                        ; $76db: $59
	and  c                                           ; $76dc: $a1
	ld   h, [hl]                                     ; $76dd: $66
	rst  $38                                         ; $76de: $ff
	rst  $38                                         ; $76df: $ff
	dec  c                                           ; $76e0: $0d
	nop                                              ; $76e1: $00
	ld   a, [bc]                                     ; $76e2: $0a
	ld   b, $a2                                      ; $76e3: $06 $a2
	inc  bc                                          ; $76e5: $03
	rrca                                             ; $76e6: $0f
	nop                                              ; $76e7: $00
	ld   bc, $5801                                   ; $76e8: $01 $01 $58
	ld   a, l                                        ; $76eb: $7d
	sub  [hl]                                        ; $76ec: $96
	ld   d, h                                        ; $76ed: $54
	ld   h, d                                        ; $76ee: $62
	ld   h, h                                        ; $76ef: $64
	ld   d, d                                        ; $76f0: $52
	adc  h                                           ; $76f1: $8c
	ld   h, a                                        ; $76f2: $67
	sbc  [hl]                                        ; $76f3: $9e
	dec  c                                           ; $76f4: $0d
	and  e                                           ; $76f5: $a3
	and  l                                           ; $76f6: $a5
	db   $ec                                         ; $76f7: $ec
	cp   d                                           ; $76f8: $ba
	ld   h, e                                        ; $76f9: $63
	adc  h                                           ; $76fa: $8c
	sbc  a                                           ; $76fb: $9f
	dec  c                                           ; $76fc: $0d
	nop                                              ; $76fd: $00
	ld   a, [bc]                                     ; $76fe: $0a
	inc  e                                           ; $76ff: $1c
	inc  b                                           ; $7700: $04
	ld   bc, $1d01                                   ; $7701: $01 $01 $1d
	ld   b, b                                        ; $7704: $40
	inc  d                                           ; $7705: $14
	inc  bc                                          ; $7706: $03
	inc  d                                           ; $7707: $14
	ld   bc, $2801                                   ; $7708: $01 $01 $28
	nop                                              ; $770b: $00
	ld   bc, $d0a3                                   ; $770c: $01 $a3 $d0
	ret  nc                                          ; $770f: $d0

	ret  nc                                          ; $7710: $d0

	ret  nc                                          ; $7711: $d0

	ret  nc                                          ; $7712: $d0

	ld   a, [$010d]                                  ; $7713: $fa $0d $01
	rlca                                             ; $7716: $07
	and  e                                           ; $7717: $a3
	and  l                                           ; $7718: $a5
	db   $ec                                         ; $7719: $ec
	cp   d                                           ; $771a: $ba
	ld   h, e                                        ; $771b: $63
	adc  h                                           ; $771c: $8c
	ld   bc, $6e08                                   ; $771d: $01 $08 $6e
	ld   a, b                                        ; $7720: $78
	and  c                                           ; $7721: $a1
	ld   [hl], h                                     ; $7722: $74
	dec  c                                           ; $7723: $0d
	ld   a, b                                        ; $7724: $78
	and  c                                           ; $7725: $a1
	ld   e, c                                        ; $7726: $59
	reti                                             ; $7727: $d9


	push af                                          ; $7728: $f5
	ld   l, [hl]                                     ; $7729: $6e
	sub  [hl]                                        ; $772a: $96
	db   $fc                                         ; $772b: $fc
	sbc  a                                           ; $772c: $9f
	dec  c                                           ; $772d: $0d
	nop                                              ; $772e: $00
	ld   a, [bc]                                     ; $772f: $0a
	ld   b, $a2                                      ; $7730: $06 $a2
	inc  bc                                          ; $7732: $03
	inc  e                                           ; $7733: $1c
	inc  b                                           ; $7734: $04
	inc  bc                                          ; $7735: $03
	inc  bc                                          ; $7736: $03
	dec  e                                           ; $7737: $1d
	ld   b, b                                        ; $7738: $40
	inc  d                                           ; $7739: $14
	inc  bc                                          ; $773a: $03
	inc  d                                           ; $773b: $14
	ld   bc, $2903                                   ; $773c: $01 $03 $29
	nop                                              ; $773f: $00
	ld   bc, $7780                                   ; $7740: $01 $80 $77
	ld   d, d                                        ; $7743: $52
	rst  $38                                         ; $7744: $ff
	rst  $38                                         ; $7745: $ff
	dec  c                                           ; $7746: $0d
	ld   l, a                                        ; $7747: $6f
	ld   d, d                                        ; $7748: $52
	ld   [bc], a                                     ; $7749: $02
	inc  de                                          ; $774a: $13
	ld   l, a                                        ; $774b: $6f
	sub  c                                           ; $774c: $91
	and  c                                           ; $774d: $a1
	sbc  [hl]                                        ; $774e: $9e
	and  e                                           ; $774f: $a3
	and  l                                           ; $7750: $a5
	db   $ec                                         ; $7751: $ec
	cp   d                                           ; $7752: $ba
	ld   a, h                                        ; $7753: $7c
	ld   h, c                                        ; $7754: $61
	halt                                             ; $7755: $76
	dec  c                                           ; $7756: $0d
	ldh  [c], a                                      ; $7757: $e2
	cp   b                                           ; $7758: $b8
	ld   h, l                                        ; $7759: $65
	ld   l, l                                        ; $775a: $6d
	rst  $38                                         ; $775b: $ff
	rst  $38                                         ; $775c: $ff
	dec  c                                           ; $775d: $0d
	nop                                              ; $775e: $00
	ld   a, [bc]                                     ; $775f: $0a
	inc  e                                           ; $7760: $1c
	inc  b                                           ; $7761: $04
	rlca                                             ; $7762: $07
	rlca                                             ; $7763: $07
	ld   bc, $5490                                   ; $7764: $01 $90 $54
	sbc  [hl]                                        ; $7767: $9e
	or   d                                           ; $7768: $b2
	xor  l                                           ; $7769: $ad
	ld   h, l                                        ; $776a: $65
	ld   [hl], h                                     ; $776b: $74
	sub  b                                           ; $776c: $90
	dec  c                                           ; $776d: $0d
	ld   l, l                                        ; $776e: $6d
	ld   h, a                                        ; $776f: $67
	ld   e, a                                        ; $7770: $5f
	ld   [hl], h                                     ; $7771: $74
	ld   d, b                                        ; $7772: $50
	ld   h, b                                        ; $7773: $60
	ld   a, b                                        ; $7774: $78
	ld   d, d                                        ; $7775: $52
	and  c                                           ; $7776: $a1
	ld   l, [hl]                                     ; $7777: $6e
	ld   e, c                                        ; $7778: $59
	sub  a                                           ; $7779: $97
	ld   a, [$d10d]                                  ; $777a: $fa $0d $d1
	and  l                                           ; $777d: $a5
	pop  de                                          ; $777e: $d1
	and  l                                           ; $777f: $a5
	ld   a, [$0dfa]                                  ; $7780: $fa $fa $0d
	nop                                              ; $7783: $00
	ld   a, [bc]                                     ; $7784: $0a
	dec  c                                           ; $7785: $0d
	nop                                              ; $7786: $00
	nop                                              ; $7787: $00
	rrca                                             ; $7788: $0f
	nop                                              ; $7789: $00
	ld   bc, $1e09                                   ; $778a: $01 $09 $1e
	nop                                              ; $778d: $00
	inc  e                                           ; $778e: $1c
	inc  b                                           ; $778f: $04
	nop                                              ; $7790: $00
	nop                                              ; $7791: $00
	ld   bc, $a5a3                                   ; $7792: $01 $a3 $a5
	db   $ec                                         ; $7795: $ec
	cp   d                                           ; $7796: $ba
	ld   a, h                                        ; $7797: $7c
	ld   h, c                                        ; $7798: $61
	halt                                             ; $7799: $76
	ld   a, l                                        ; $779a: $7d
	dec  c                                           ; $779b: $0d
	ld   bc, $a307                                   ; $779c: $01 $07 $a3
	and  l                                           ; $779f: $a5
	db   $ec                                         ; $77a0: $ec
	cp   d                                           ; $77a1: $ba
	ld   bc, $7508                                   ; $77a2: $01 $08 $75
	ld   d, d                                        ; $77a5: $52
	ld   d, d                                        ; $77a6: $52
	ld   e, c                                        ; $77a7: $59
	sub  a                                           ; $77a8: $97
	ld   a, e                                        ; $77a9: $7b
	sbc  [hl]                                        ; $77aa: $9e
	dec  c                                           ; $77ab: $0d
	ld   l, a                                        ; $77ac: $6f
	ld   d, d                                        ; $77ad: $52
	ld   [bc], a                                     ; $77ae: $02
	inc  de                                          ; $77af: $13
	ld   l, a                                        ; $77b0: $6f
	sub  c                                           ; $77b1: $91
	and  c                                           ; $77b2: $a1
	sbc  a                                           ; $77b3: $9f
	dec  c                                           ; $77b4: $0d
	nop                                              ; $77b5: $00
	ld   a, [bc]                                     ; $77b6: $0a
	inc  e                                           ; $77b7: $1c
	inc  b                                           ; $77b8: $04
	ld   bc, $0101                                   ; $77b9: $01 $01 $01
	ld   e, e                                        ; $77bc: $5b
	sub  l                                           ; $77bd: $95
	ld   d, h                                        ; $77be: $54
	sub  b                                           ; $77bf: $90
	ld   d, d                                        ; $77c0: $52
	ld   l, a                                        ; $77c1: $6f
	ld   a, c                                        ; $77c2: $79
	ld   l, a                                        ; $77c3: $6f
	dec  c                                           ; $77c4: $0d
	ld   e, d                                        ; $77c5: $5a
	and  c                                           ; $77c6: $a1
	ld   a, [hl]                                     ; $77c7: $7e
	sbc  e                                           ; $77c8: $9b
	ld   d, h                                        ; $77c9: $54
	ld   a, e                                        ; $77ca: $7b
	ld   a, [$000d]                                  ; $77cb: $fa $0d $00
	ld   a, [bc]                                     ; $77ce: $0a
	nop                                              ; $77cf: $00
	ld   bc, $567b                                   ; $77d0: $01 $7b $56
	sbc  [hl]                                        ; $77d3: $9e
	ld   l, a                                        ; $77d4: $6f
	ld   d, d                                        ; $77d5: $52
	ld   [bc], a                                     ; $77d6: $02
	inc  de                                          ; $77d7: $13
	ld   l, a                                        ; $77d8: $6f
	sub  c                                           ; $77d9: $91
	and  c                                           ; $77da: $a1
	ld   [hl], h                                     ; $77db: $74
	sbc  [hl]                                        ; $77dc: $9e
	dec  c                                           ; $77dd: $0d
	ld   d, b                                        ; $77de: $50
	ld   h, e                                        ; $77df: $63
	ld   h, d                                        ; $77e0: $62
	ld   a, l                                        ; $77e1: $7d
	and  c                                           ; $77e2: $a1
	ld   l, l                                        ; $77e3: $6d
	add  a                                           ; $77e4: $87
	sbc  c                                           ; $77e5: $99
	adc  h                                           ; $77e6: $8c
	ld   d, [hl]                                     ; $77e7: $56
	ld   a, c                                        ; $77e8: $79
	dec  c                                           ; $77e9: $0d
	ld   a, l                                        ; $77ea: $7d
	and  b                                           ; $77eb: $a0
	adc  l                                           ; $77ec: $8d
	ld   e, d                                        ; $77ed: $5a
	ld   e, l                                        ; $77ee: $5d
	add  b                                           ; $77ef: $80
	halt                                             ; $77f0: $76
	ld   sp, hl                                      ; $77f1: $f9
	dec  c                                           ; $77f2: $0d
	nop                                              ; $77f3: $00
	ld   a, [bc]                                     ; $77f4: $0a
	ld   b, $43                                      ; $77f5: $06 $43
	inc  b                                           ; $77f7: $04
	rrca                                             ; $77f8: $0f
	nop                                              ; $77f9: $00
	ld   bc, $5801                                   ; $77fa: $01 $01 $58
	ld   a, l                                        ; $77fd: $7d
	sub  [hl]                                        ; $77fe: $96
	ld   d, h                                        ; $77ff: $54
	sbc  [hl]                                        ; $7800: $9e
	and  e                                           ; $7801: $a3
	and  l                                           ; $7802: $a5
	db   $ec                                         ; $7803: $ec
	cp   d                                           ; $7804: $ba
	sbc  a                                           ; $7805: $9f
	dec  c                                           ; $7806: $0d
	nop                                              ; $7807: $00
	ld   a, [bc]                                     ; $7808: $0a
	inc  e                                           ; $7809: $1c
	inc  b                                           ; $780a: $04
	nop                                              ; $780b: $00
	nop                                              ; $780c: $00
	ld   bc, $526f                                   ; $780d: $01 $6f $52
	ld   [bc], a                                     ; $7810: $02
	inc  de                                          ; $7811: $13
	ld   l, a                                        ; $7812: $6f
	sub  c                                           ; $7813: $91
	and  c                                           ; $7814: $a1
	ld   [hl], h                                     ; $7815: $74
	sbc  [hl]                                        ; $7816: $9e
	dec  c                                           ; $7817: $0d
	ld   d, b                                        ; $7818: $50
	ld   h, e                                        ; $7819: $63
	ld   h, d                                        ; $781a: $62
	ld   a, l                                        ; $781b: $7d
	and  c                                           ; $781c: $a1
	ld   l, l                                        ; $781d: $6d
	add  a                                           ; $781e: $87
	sbc  c                                           ; $781f: $99
	adc  h                                           ; $7820: $8c
	ld   d, [hl]                                     ; $7821: $56
	ld   a, c                                        ; $7822: $79
	dec  c                                           ; $7823: $0d
	ld   a, l                                        ; $7824: $7d
	and  b                                           ; $7825: $a0
	adc  l                                           ; $7826: $8d
	ld   e, d                                        ; $7827: $5a
	ld   e, l                                        ; $7828: $5d
	add  b                                           ; $7829: $80
	halt                                             ; $782a: $76
	ld   sp, hl                                      ; $782b: $f9
	dec  c                                           ; $782c: $0d
	nop                                              ; $782d: $00
	ld   a, [bc]                                     ; $782e: $0a
	add  hl, de                                      ; $782f: $19
	dec  b                                           ; $7830: $05
	inc  bc                                          ; $7831: $03
	ld   l, e                                        ; $7832: $6b
	ld   d, h                                        ; $7833: $54
	ld   l, [hl]                                     ; $7834: $6e
	sub  [hl]                                        ; $7835: $96
	nop                                              ; $7836: $00
	nop                                              ; $7837: $00
	ld   h, d                                        ; $7838: $62
	ld   a, l                                        ; $7839: $7d
	and  c                                           ; $783a: $a1
	ld   a, h                                        ; $783b: $7c
	ld   [bc], a                                     ; $783c: $02
	xor  d                                           ; $783d: $aa
	ld   l, [hl]                                     ; $783e: $6e
	sub  [hl]                                        ; $783f: $96
	nop                                              ; $7840: $00
	ld   bc, $5a8d                                   ; $7841: $01 $8d $5a
	ld   e, c                                        ; $7844: $59
	ld   a, b                                        ; $7845: $78
	ld   d, d                                        ; $7846: $52
	sub  [hl]                                        ; $7847: $96
	nop                                              ; $7848: $00
	ld   [bc], a                                     ; $7849: $02
	rlca                                             ; $784a: $07
	ld   a, h                                        ; $784b: $7c
	inc  b                                           ; $784c: $04
	ld   [bc], a                                     ; $784d: $02
	inc  bc                                          ; $784e: $03
	ld   bc, $2000                                   ; $784f: $01 $00 $20
	nop                                              ; $7852: $00
	rlca                                             ; $7853: $07
	call $0204                                       ; $7854: $cd $04 $02
	inc  bc                                          ; $7857: $03
	ld   bc, $2001                                   ; $7858: $01 $01 $20
	nop                                              ; $785b: $00
	rlca                                             ; $785c: $07

Call_043_785d:
	ld   hl, $0205                                   ; $785d: $21 $05 $02
	inc  bc                                          ; $7860: $03
	ld   bc, $2002                                   ; $7861: $01 $02 $20
	nop                                              ; $7864: $00
	ld   b, $60                                      ; $7865: $06 $60
	dec  b                                           ; $7867: $05
	rrca                                             ; $7868: $0f
	nop                                              ; $7869: $00
	ld   bc, $6b01                                   ; $786a: $01 $01 $6b
	ld   d, h                                        ; $786d: $54

Jump_043_786e:
	ld   l, [hl]                                     ; $786e: $6e
	sub  [hl]                                        ; $786f: $96
	sbc  a                                           ; $7870: $9f
	dec  c                                           ; $7871: $0d
	ld   a, b                                        ; $7872: $78
	and  c                                           ; $7873: $a1
	halt                                             ; $7874: $76
	ld   a, b                                        ; $7875: $78
	ld   e, l                                        ; $7876: $5d
	ld   [bc], a                                     ; $7877: $02
	xor  [hl]                                        ; $7878: $ae

Jump_043_7879:
	ld   a, h                                        ; $7879: $7c
	inc  b                                           ; $787a: $04
	dec  bc                                          ; $787b: $0b
	ld   e, d                                        ; $787c: $5a
	dec  c                                           ; $787d: $0d
	ld   e, e                                        ; $787e: $5b
	sub  b                                           ; $787f: $90
	ld   l, a                                        ; $7880: $6f
	sbc  l                                           ; $7881: $9d
	sbc  c                                           ; $7882: $99
	ld   d, d                                        ; $7883: $52
	ld   h, l                                        ; $7884: $65
	ld   a, e                                        ; $7885: $7b
	sbc  a                                           ; $7886: $9f
	dec  c                                           ; $7887: $0d
	nop                                              ; $7888: $00
	ld   a, [bc]                                     ; $7889: $0a
	inc  e                                           ; $788a: $1c
	inc  b                                           ; $788b: $04
	inc  bc                                          ; $788c: $03
	inc  bc                                          ; $788d: $03
	dec  e                                           ; $788e: $1d
	ld   b, b                                        ; $788f: $40
	inc  d                                           ; $7890: $14
	inc  bc                                          ; $7891: $03
	inc  d                                           ; $7892: $14
	ld   bc, $2901                                   ; $7893: $01 $01 $29
	nop                                              ; $7896: $00
	ld   bc, $fc56                                   ; $7897: $01 $56 $fc
	rst  $38                                         ; $789a: $ff
	rst  $38                                         ; $789b: $ff
	ld   h, d                                        ; $789c: $62
	ld   a, l                                        ; $789d: $7d
	and  c                                           ; $789e: $a1
	ld   a, h                                        ; $789f: $7c
	adc  h                                           ; $78a0: $8c
	ld   d, [hl]                                     ; $78a1: $56
	ld   l, [hl]                                     ; $78a2: $6e
	halt                                             ; $78a3: $76
	dec  c                                           ; $78a4: $0d
	ld   d, b                                        ; $78a5: $50
	ld   h, [hl]                                     ; $78a6: $66
	ld   e, d                                        ; $78a7: $5a
	ld   e, c                                        ; $78a8: $59
	sbc  l                                           ; $78a9: $9d
	ld   [hl], c                                     ; $78aa: $71
	ld   l, a                                        ; $78ab: $6f
	sub  c                                           ; $78ac: $91
	ld   d, h                                        ; $78ad: $54
	sub  [hl]                                        ; $78ae: $96
	db   $fc                                         ; $78af: $fc
	rst  $38                                         ; $78b0: $ff
	rst  $38                                         ; $78b1: $ff
	sbc  a                                           ; $78b2: $9f
	dec  c                                           ; $78b3: $0d
	nop                                              ; $78b4: $00
	ld   a, [bc]                                     ; $78b5: $0a
	ld   b, $97                                      ; $78b6: $06 $97
	dec  b                                           ; $78b8: $05
	rrca                                             ; $78b9: $0f
	nop                                              ; $78ba: $00
	ld   bc, $6201                                   ; $78bb: $01 $01 $62
	ld   a, l                                        ; $78be: $7d
	and  c                                           ; $78bf: $a1
	ld   a, h                                        ; $78c0: $7c
	ld   [bc], a                                     ; $78c1: $02
	xor  d                                           ; $78c2: $aa
	ld   l, [hl]                                     ; $78c3: $6e
	sub  [hl]                                        ; $78c4: $96
	sbc  a                                           ; $78c5: $9f
	dec  c                                           ; $78c6: $0d
	inc  bc                                          ; $78c7: $03
	ld   c, a                                        ; $78c8: $4f
	ld   l, [hl]                                     ; $78c9: $6e
	halt                                             ; $78ca: $76
	inc  b                                           ; $78cb: $04
	jp   nc, $045a                                   ; $78cc: $d2 $5a $04

	adc  h                                           ; $78cf: $8c
	sbc  l                                           ; $78d0: $9d
	ld   [hl], c                                     ; $78d1: $71
	ld   l, a                                        ; $78d2: $6f
	sub  c                                           ; $78d3: $91
	ld   d, h                                        ; $78d4: $54
	dec  c                                           ; $78d5: $0d
	ld   [bc], a                                     ; $78d6: $02
	and  c                                           ; $78d7: $a1
	ld   e, d                                        ; $78d8: $5a
	ld   h, a                                        ; $78d9: $67
	sbc  c                                           ; $78da: $99
	ld   h, l                                        ; $78db: $65
	ld   a, e                                        ; $78dc: $7b
	sbc  a                                           ; $78dd: $9f
	dec  c                                           ; $78de: $0d
	nop                                              ; $78df: $00
	ld   a, [bc]                                     ; $78e0: $0a
	inc  e                                           ; $78e1: $1c
	inc  b                                           ; $78e2: $04
	ld   bc, $1d01                                   ; $78e3: $01 $01 $1d
	ld   b, b                                        ; $78e6: $40
	inc  d                                           ; $78e7: $14
	inc  bc                                          ; $78e8: $03
	inc  d                                           ; $78e9: $14
	ld   bc, $2802                                   ; $78ea: $01 $02 $28
	nop                                              ; $78ed: $00
	ld   bc, $546b                                   ; $78ee: $01 $6b $54
	ld   l, [hl]                                     ; $78f1: $6e
	sub  [hl]                                        ; $78f2: $96
	ld   a, e                                        ; $78f3: $7b
	ld   a, [$6b0d]                                  ; $78f4: $fa $0d $6b
	ld   d, h                                        ; $78f7: $54
	ld   l, [hl]                                     ; $78f8: $6e
	sub  [hl]                                        ; $78f9: $96
	ld   a, e                                        ; $78fa: $7b
	ld   a, [$a30d]                                  ; $78fb: $fa $0d $a3
	and  l                                           ; $78fe: $a5
	db   $ec                                         ; $78ff: $ec
	cp   d                                           ; $7900: $ba
	sub  b                                           ; $7901: $90
	ld   l, e                                        ; $7902: $6b
	ld   d, h                                        ; $7903: $54
	ld   l, [hl]                                     ; $7904: $6e
	sub  [hl]                                        ; $7905: $96
	sbc  a                                           ; $7906: $9f
	dec  c                                           ; $7907: $0d
	nop                                              ; $7908: $00
	ld   a, [bc]                                     ; $7909: $0a
	ld   b, $97                                      ; $790a: $06 $97
	dec  b                                           ; $790c: $05
	rrca                                             ; $790d: $0f
	nop                                              ; $790e: $00
	ld   bc, $8d01                                   ; $790f: $01 $01 $8d
	ld   e, d                                        ; $7912: $5a
	ld   e, c                                        ; $7913: $59
	ld   a, b                                        ; $7914: $78
	ld   d, d                                        ; $7915: $52
	sub  [hl]                                        ; $7916: $96
	sbc  a                                           ; $7917: $9f
	dec  c                                           ; $7918: $0d
	adc  a                                           ; $7919: $8f
	and  c                                           ; $791a: $a1
	ld   [hl], a                                     ; $791b: $77
	ld   e, l                                        ; $791c: $5d
	ld   h, e                                        ; $791d: $63
	ld   d, d                                        ; $791e: $52
	ld   e, c                                        ; $791f: $59
	sub  a                                           ; $7920: $97
	sbc  a                                           ; $7921: $9f
	dec  c                                           ; $7922: $0d
	nop                                              ; $7923: $00
	ld   a, [bc]                                     ; $7924: $0a
	inc  e                                           ; $7925: $1c
	inc  b                                           ; $7926: $04
	rlca                                             ; $7927: $07
	rlca                                             ; $7928: $07
	dec  e                                           ; $7929: $1d
	ld   b, b                                        ; $792a: $40
	inc  d                                           ; $792b: $14
	inc  bc                                          ; $792c: $03
	inc  d                                           ; $792d: $14
	ld   bc, $2902                                   ; $792e: $01 $02 $29
	nop                                              ; $7931: $00
	ld   bc, $e3c1                                   ; $7932: $01 $c1 $e3
	ld   l, [hl]                                     ; $7935: $6e
	sub  [hl]                                        ; $7936: $96
	ld   a, [$e20d]                                  ; $7937: $fa $0d $e2
	cp   b                                           ; $793a: $b8
	ld   a, [hl]                                     ; $793b: $7e
	ld   a, c                                        ; $793c: $79
	ld   a, b                                        ; $793d: $78
	ld   [hl], c                                     ; $793e: $71
	ld   l, a                                        ; $793f: $6f
	sub  c                                           ; $7940: $91
	ld   d, h                                        ; $7941: $54
	ld   e, c                                        ; $7942: $59
	sub  a                                           ; $7943: $97
	ld   a, e                                        ; $7944: $7b
	ld   a, [$000d]                                  ; $7945: $fa $0d $00
	ld   a, [bc]                                     ; $7948: $0a
	ld   b, $97                                      ; $7949: $06 $97
	dec  b                                           ; $794b: $05
	inc  e                                           ; $794c: $1c
	inc  b                                           ; $794d: $04
	ld   b, $06                                      ; $794e: $06 $06
	ld   bc, $9e50                                   ; $7950: $01 $50 $9e
	sub  b                                           ; $7953: $90
	ld   h, l                                        ; $7954: $65
	ld   e, c                                        ; $7955: $59
	ld   h, l                                        ; $7956: $65
	ld   [hl], h                                     ; $7957: $74
	dec  c                                           ; $7958: $0d
	adc  l                                           ; $7959: $8d
	ld   e, d                                        ; $795a: $5a
	ld   d, d                                        ; $795b: $52
	ld   [hl], h                                     ; $795c: $74
	ld   a, b                                        ; $795d: $78
	ld   d, d                                        ; $795e: $52
	ld   a, h                                        ; $795f: $7c
	rst  $38                                         ; $7960: $ff
	rst  $38                                         ; $7961: $ff
	ld   sp, hl                                      ; $7962: $f9
	dec  c                                           ; $7963: $0d
	nop                                              ; $7964: $00

Call_043_7965:
	ld   a, [bc]                                     ; $7965: $0a
	inc  e                                           ; $7966: $1c
	inc  b                                           ; $7967: $04
	ld   [bc], a                                     ; $7968: $02
	ld   [bc], a                                     ; $7969: $02
	dec  e                                           ; $796a: $1d
	ld   b, b                                        ; $796b: $40
	inc  d                                           ; $796c: $14
	inc  bc                                          ; $796d: $03
	inc  d                                           ; $796e: $14
	ld   bc, $2903                                   ; $796f: $01 $03 $29
	nop                                              ; $7972: $00
	ld   bc, $526f                                   ; $7973: $01 $6f $52
	ld   [bc], a                                     ; $7976: $02
	inc  de                                          ; $7977: $13
	ld   l, a                                        ; $7978: $6f
	sub  c                                           ; $7979: $91
	and  c                                           ; $797a: $a1
	sub  $b2                                         ; $797b: $d6 $b2
	push bc                                          ; $797d: $c5
	db   $fc                                         ; $797e: $fc
	sbc  a                                           ; $797f: $9f
	dec  c                                           ; $7980: $0d
	nop                                              ; $7981: $00
	ld   a, [bc]                                     ; $7982: $0a
	inc  e                                           ; $7983: $1c
	inc  b                                           ; $7984: $04
	ld   b, $06                                      ; $7985: $06 $06
	ld   bc, $ff50                                   ; $7987: $01 $50 $ff
	rst  $38                                         ; $798a: $ff
	ld   a, [$a30d]                                  ; $798b: $fa $0d $a3
	and  l                                           ; $798e: $a5
	db   $ec                                         ; $798f: $ec
	cp   d                                           ; $7990: $ba
	rst  $38                                         ; $7991: $ff
	rst  $38                                         ; $7992: $ff
	ld   e, e                                        ; $7993: $5b
	sub  l                                           ; $7994: $95
	ld   d, h                                        ; $7995: $54
	ld   a, l                                        ; $7996: $7d
	dec  c                                           ; $7997: $0d
	adc  l                                           ; $7998: $8d
	ld   e, d                                        ; $7999: $5a
	ld   d, d                                        ; $799a: $52
	ld   [hl], h                                     ; $799b: $74
	ld   a, b                                        ; $799c: $78
	ld   d, d                                        ; $799d: $52
	sub  d                                           ; $799e: $92
	rst  $38                                         ; $799f: $ff
	rst  $38                                         ; $79a0: $ff
	sbc  a                                           ; $79a1: $9f
	dec  c                                           ; $79a2: $0d
	nop                                              ; $79a3: $00
	ld   a, [bc]                                     ; $79a4: $0a
	ld   bc, $927d                                   ; $79a5: $01 $7d $92
	ld   e, l                                        ; $79a8: $5d
	adc  l                                           ; $79a9: $8d
	ld   e, d                                        ; $79aa: $5a
	ld   e, c                                        ; $79ab: $59
	ld   a, b                                        ; $79ac: $78
	ld   e, l                                        ; $79ad: $5d
	ld   l, a                                        ; $79ae: $6f
	sub  c                                           ; $79af: $91
	ld   a, [$660d]                                  ; $79b0: $fa $0d $66
	sub  c                                           ; $79b3: $91
	sbc  [hl]                                        ; $79b4: $9e
	ld   l, a                                        ; $79b5: $6f
	ld   d, d                                        ; $79b6: $52
	ld   [bc], a                                     ; $79b7: $02
	inc  de                                          ; $79b8: $13
	ld   l, a                                        ; $79b9: $6f
	sub  c                                           ; $79ba: $91
	and  c                                           ; $79bb: $a1
	sbc  [hl]                                        ; $79bc: $9e
	adc  h                                           ; $79bd: $8c
	ld   l, l                                        ; $79be: $6d
	ld   a, e                                        ; $79bf: $7b
	ld   a, [$000d]                                  ; $79c0: $fa $0d $00
	ld   a, [bc]                                     ; $79c3: $0a
	dec  c                                           ; $79c4: $0d
	nop                                              ; $79c5: $00
	nop                                              ; $79c6: $00
	rrca                                             ; $79c7: $0f
	nop                                              ; $79c8: $00
	ld   bc, $0000                                   ; $79c9: $01 $00 $00
	inc  e                                           ; $79cc: $1c
	dec  b                                           ; $79cd: $05
	ld   bc, $0201                                   ; $79ce: $01 $01 $02
	ld   bc, $fb96                                   ; $79d1: $01 $96 $fb
	sbc  [hl]                                        ; $79d4: $9e
	ld   [$7d00], sp                                 ; $79d5: $08 $00 $7d
	and  c                                           ; $79d8: $a1
	sbc  a                                           ; $79d9: $9f
	dec  c                                           ; $79da: $0d
	ld   e, b                                        ; $79db: $58
	ld   a, l                                        ; $79dc: $7d
	sub  [hl]                                        ; $79dd: $96
	ld   d, h                                        ; $79de: $54
	ld   h, e                                        ; $79df: $63
	and  c                                           ; $79e0: $a1
	sbc  a                                           ; $79e1: $9f
	dec  c                                           ; $79e2: $0d
	nop                                              ; $79e3: $00
	ld   a, [bc]                                     ; $79e4: $0a
	rrca                                             ; $79e5: $0f
	nop                                              ; $79e6: $00
	ld   bc, $0101                                   ; $79e7: $01 $01 $01
	inc  bc                                          ; $79ea: $03
	ld   [bc], a                                     ; $79eb: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $79ec: $cf
	dec  b                                           ; $79ed: $05
	ld   a, [de]                                     ; $79ee: $1a
	ld   h, e                                        ; $79ef: $63
	and  c                                           ; $79f0: $a1
	ld   l, [hl]                                     ; $79f1: $6e
	dec  c                                           ; $79f2: $0d
	db   $10                                         ; $79f3: $10
	ld   d, b                                        ; $79f4: $50
	ld   d, d                                        ; $79f5: $52
	ld   h, e                                        ; $79f6: $63
	ld   [hl], d                                     ; $79f7: $72
	ld   h, l                                        ; $79f8: $65
	ld   a, b                                        ; $79f9: $78
	ld   e, e                                        ; $79fa: $5b
	sub  c                                           ; $79fb: $91
	ld   bc, $0d04                                   ; $79fc: $01 $04 $0d
	nop                                              ; $79ff: $00
	ld   a, [bc]                                     ; $7a00: $0a
	add  hl, de                                      ; $7a01: $19
	dec  b                                           ; $7a02: $05
	inc  bc                                          ; $7a03: $03
	adc  h                                           ; $7a04: $8c
	ld   h, [hl]                                     ; $7a05: $66
	adc  a                                           ; $7a06: $8f
	ld   a, c                                        ; $7a07: $79
	ld   d, b                                        ; $7a08: $50
	ld   d, d                                        ; $7a09: $52
	ld   h, e                                        ; $7a0a: $63
	ld   [hl], d                                     ; $7a0b: $72
	nop                                              ; $7a0c: $00
	nop                                              ; $7a0d: $00
	inc  bc                                          ; $7a0e: $03
	ld   l, $03                                      ; $7a0f: $2e $03
	pop  hl                                          ; $7a11: $e1
	ld   a, c                                        ; $7a12: $79
	ld   d, b                                        ; $7a13: $50
	ld   d, d                                        ; $7a14: $52
	ld   h, e                                        ; $7a15: $63
	ld   [hl], d                                     ; $7a16: $72
	nop                                              ; $7a17: $00
	ld   bc, $956f                                   ; $7a18: $01 $6f $95
	ld   [hl], c                                     ; $7a1b: $71
	halt                                             ; $7a1c: $76
	add  e                                           ; $7a1d: $83
	ld   h, h                                        ; $7a1e: $64
	ld   e, a                                        ; $7a1f: $5f
	ld   [hl], h                                     ; $7a20: $74
	ld   d, b                                        ; $7a21: $50
	ld   d, d                                        ; $7a22: $52
	ld   h, e                                        ; $7a23: $63
	ld   [hl], d                                     ; $7a24: $72
	nop                                              ; $7a25: $00
	ld   [bc], a                                     ; $7a26: $02
	rlca                                             ; $7a27: $07
	ld   a, c                                        ; $7a28: $79
	nop                                              ; $7a29: $00
	ld   [bc], a                                     ; $7a2a: $02
	inc  bc                                          ; $7a2b: $03
	ld   bc, $2000                                   ; $7a2c: $01 $00 $20
	nop                                              ; $7a2f: $00
	rlca                                             ; $7a30: $07
	dec  h                                           ; $7a31: $25
	ld   bc, $0302                                   ; $7a32: $01 $02 $03
	ld   bc, $2001                                   ; $7a35: $01 $01 $20
	nop                                              ; $7a38: $00
	rlca                                             ; $7a39: $07
	rlc  c                                           ; $7a3a: $cb $01
	ld   [bc], a                                     ; $7a3c: $02
	inc  bc                                          ; $7a3d: $03
	ld   bc, $2002                                   ; $7a3e: $01 $02 $20
	nop                                              ; $7a41: $00
	ld   b, $6a                                      ; $7a42: $06 $6a
	ld   [bc], a                                     ; $7a44: $02
	rrca                                             ; $7a45: $0f
	nop                                              ; $7a46: $00
	ld   bc, $5801                                   ; $7a47: $01 $01 $58
	ld   a, l                                        ; $7a4a: $7d
	sub  [hl]                                        ; $7a4b: $96
	ld   d, h                                        ; $7a4c: $54
	ld   h, d                                        ; $7a4d: $62
	ld   h, h                                        ; $7a4e: $64
	ld   d, d                                        ; $7a4f: $52
	adc  h                                           ; $7a50: $8c
	ld   h, a                                        ; $7a51: $67
	sbc  a                                           ; $7a52: $9f
	dec  c                                           ; $7a53: $0d
	ld   [bc], a                                     ; $7a54: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a55: $cf
	dec  b                                           ; $7a56: $05
	ld   a, [de]                                     ; $7a57: $1a
	ld   h, e                                        ; $7a58: $63
	and  c                                           ; $7a59: $a1
	sbc  a                                           ; $7a5a: $9f
	dec  c                                           ; $7a5b: $0d
	nop                                              ; $7a5c: $00
	ld   a, [bc]                                     ; $7a5d: $0a
	ld   bc, $a502                                   ; $7a5e: $01 $02 $a5
	inc  b                                           ; $7a61: $04
	xor  d                                           ; $7a62: $aa
	sub  b                                           ; $7a63: $90
	sbc  [hl]                                        ; $7a64: $9e
	inc  bc                                          ; $7a65: $03
	ld   a, $79                                      ; $7a66: $3e $79
	sub  b                                           ; $7a68: $90
	ld   a, h                                        ; $7a69: $7c
	ld   e, [hl]                                     ; $7a6a: $5e
	sbc  c                                           ; $7a6b: $99
	ld   d, d                                        ; $7a6c: $52
	ld   [hl], l                                     ; $7a6d: $75
	dec  c                                           ; $7a6e: $0d
	ld   e, d                                        ; $7a6f: $5a
	and  c                                           ; $7a70: $a1
	ld   a, [hl]                                     ; $7a71: $7e
	sbc  b                                           ; $7a72: $98
	adc  h                                           ; $7a73: $8c
	ld   h, a                                        ; $7a74: $67
	ld   a, h                                        ; $7a75: $7c
	ld   [hl], l                                     ; $7a76: $75
	sbc  [hl]                                        ; $7a77: $9e
	ld   a, b                                        ; $7a78: $78
	ld   a, c                                        ; $7a79: $79
	halt                                             ; $7a7a: $76
	ld   l, h                                        ; $7a7b: $6c
	dec  c                                           ; $7a7c: $0d
	sub  [hl]                                        ; $7a7d: $96
	sbc  e                                           ; $7a7e: $9b
	ld   h, l                                        ; $7a7f: $65
	ld   e, l                                        ; $7a80: $5d
	ld   e, b                                        ; $7a81: $58
	ld   [bc], a                                     ; $7a82: $02
	add  b                                           ; $7a83: $80
	ld   d, d                                        ; $7a84: $52
	ld   h, l                                        ; $7a85: $65
	adc  h                                           ; $7a86: $8c
	ld   h, a                                        ; $7a87: $67
	sbc  a                                           ; $7a88: $9f
	dec  c                                           ; $7a89: $0d
	nop                                              ; $7a8a: $00
	ld   a, [bc]                                     ; $7a8b: $0a
	inc  e                                           ; $7a8c: $1c
	dec  b                                           ; $7a8d: $05
	ld   [bc], a                                     ; $7a8e: $02
	ld   [bc], a                                     ; $7a8f: $02
	ld   bc, $a178                                   ; $7a90: $01 $78 $a1
	sub  d                                           ; $7a93: $92
	db   $fc                                         ; $7a94: $fc
	sbc  [hl]                                        ; $7a95: $9e
	ld   e, c                                        ; $7a96: $59
	ld   l, l                                        ; $7a97: $6d
	ld   [hl], c                                     ; $7a98: $71
	ld   e, l                                        ; $7a99: $5d
	sbc  c                                           ; $7a9a: $99
	ld   h, l                                        ; $7a9b: $65
	ld   d, d                                        ; $7a9c: $52
	dec  c                                           ; $7a9d: $0d
	ld   d, b                                        ; $7a9e: $50
	ld   d, d                                        ; $7a9f: $52
	ld   h, e                                        ; $7aa0: $63
	ld   [hl], d                                     ; $7aa1: $72
	sub  d                                           ; $7aa2: $92
	ld   a, b                                        ; $7aa3: $78
	db   $fc                                         ; $7aa4: $fc
	sbc  a                                           ; $7aa5: $9f
	dec  c                                           ; $7aa6: $0d
	sub  b                                           ; $7aa7: $90
	ld   [hl], c                                     ; $7aa8: $71
	halt                                             ; $7aa9: $76
	ld   [bc], a                                     ; $7aaa: $02
	cp   a                                           ; $7aab: $bf
	ld   a, h                                        ; $7aac: $7c
	dec  b                                           ; $7aad: $05
	ld   a, [bc]                                     ; $7aae: $0a
	ld   a, d                                        ; $7aaf: $7a
	ld   e, c                                        ; $7ab0: $59
	ld   a, b                                        ; $7ab1: $78
	ld   d, b                                        ; $7ab2: $50
	ld   e, c                                        ; $7ab3: $59
	and  c                                           ; $7ab4: $a1
	ld   [hl], l                                     ; $7ab5: $75
	sbc  a                                           ; $7ab6: $9f
	dec  c                                           ; $7ab7: $0d
	nop                                              ; $7ab8: $00
	ld   a, [bc]                                     ; $7ab9: $0a
	inc  e                                           ; $7aba: $1c
	dec  b                                           ; $7abb: $05
	nop                                              ; $7abc: $00
	nop                                              ; $7abd: $00
	ld   bc, $a102                                   ; $7abe: $01 $02 $a1
	dec  b                                           ; $7ac1: $05
	inc  de                                          ; $7ac2: $13

jr_043_7ac3:
	ld   a, c                                        ; $7ac3: $79
	ld   d, d                                        ; $7ac4: $52
	ld   e, c                                        ; $7ac5: $59
	ld   a, b                                        ; $7ac6: $78
	sbc  [hl]                                        ; $7ac7: $9e
	ld   [bc], a                                     ; $7ac8: $02
	jr   nz, jr_043_7ac3                             ; $7ac9: $20 $f8

	ld   [bc], a                                     ; $7acb: $02
	sbc  e                                           ; $7acc: $9b
	ld   a, h                                        ; $7acd: $7c
	ld   [bc], a                                     ; $7ace: $02
	xor  c                                           ; $7acf: $a9
	dec  c                                           ; $7ad0: $0d
	inc  b                                           ; $7ad1: $04
	dec  c                                           ; $7ad2: $0d
	ld   e, d                                        ; $7ad3: $5a
	sub  b                                           ; $7ad4: $90
	ld   [hl], h                                     ; $7ad5: $74
	add  [hl]                                        ; $7ad6: $86
	and  c                                           ; $7ad7: $a1
	ld   [hl], l                                     ; $7ad8: $75
	db   $fc                                         ; $7ad9: $fc
	sbc  a                                           ; $7ada: $9f
	dec  c                                           ; $7adb: $0d
	adc  c                                           ; $7adc: $89
	ld   a, b                                        ; $7add: $78
	sbc  [hl]                                        ; $7ade: $9e
	ld   e, d                                        ; $7adf: $5a
	and  c                                           ; $7ae0: $a1
	ld   a, [hl]                                     ; $7ae1: $7e
	sbc  b                                           ; $7ae2: $98
	sub  d                                           ; $7ae3: $92
	sbc  a                                           ; $7ae4: $9f
	dec  c                                           ; $7ae5: $0d
	nop                                              ; $7ae6: $00
	ld   a, [bc]                                     ; $7ae7: $0a
	dec  c                                           ; $7ae8: $0d
	nop                                              ; $7ae9: $00
	nop                                              ; $7aea: $00
	rrca                                             ; $7aeb: $0f
	nop                                              ; $7aec: $00
	ld   bc, $1e09                                   ; $7aed: $01 $09 $1e
	nop                                              ; $7af0: $00
	rrca                                             ; $7af1: $0f
	nop                                              ; $7af2: $00
	ld   bc, $5801                                   ; $7af3: $01 $01 $58
	ld   a, l                                        ; $7af6: $7d
	sub  [hl]                                        ; $7af7: $96
	ld   d, h                                        ; $7af8: $54
	ld   h, d                                        ; $7af9: $62
	ld   h, h                                        ; $7afa: $64
	ld   d, d                                        ; $7afb: $52
	adc  h                                           ; $7afc: $8c
	ld   h, a                                        ; $7afd: $67
	sbc  a                                           ; $7afe: $9f
	dec  c                                           ; $7aff: $0d
	ld   [bc], a                                     ; $7b00: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b01: $cf
	dec  b                                           ; $7b02: $05
	ld   a, [de]                                     ; $7b03: $1a
	ld   h, e                                        ; $7b04: $63
	and  c                                           ; $7b05: $a1
	sbc  a                                           ; $7b06: $9f
	dec  c                                           ; $7b07: $0d
	inc  b                                           ; $7b08: $04
	adc  a                                           ; $7b09: $8f
	inc  b                                           ; $7b0a: $04
	xor  d                                           ; $7b0b: $aa
	sub  b                                           ; $7b0c: $90
	sub  [hl]                                        ; $7b0d: $96
	sbc  e                                           ; $7b0e: $9b
	ld   h, l                                        ; $7b0f: $65
	ld   e, l                                        ; $7b10: $5d
	ld   e, b                                        ; $7b11: $58
	ld   [bc], a                                     ; $7b12: $02
	add  b                                           ; $7b13: $80
	ld   d, d                                        ; $7b14: $52
	ld   h, l                                        ; $7b15: $65
	adc  h                                           ; $7b16: $8c
	ld   h, a                                        ; $7b17: $67
	sbc  a                                           ; $7b18: $9f
	dec  c                                           ; $7b19: $0d
	nop                                              ; $7b1a: $00
	ld   a, [bc]                                     ; $7b1b: $0a
	inc  e                                           ; $7b1c: $1c
	dec  b                                           ; $7b1d: $05
	ld   bc, $0101                                   ; $7b1e: $01 $01 $01
	ld   e, b                                        ; $7b21: $58
	ld   e, b                                        ; $7b22: $58
	sbc  [hl]                                        ; $7b23: $9e
	ld   h, c                                        ; $7b24: $61
	ld   l, a                                        ; $7b25: $6f
	sub  a                                           ; $7b26: $97
	ld   h, c                                        ; $7b27: $61
	ld   l, e                                        ; $7b28: $6b
	dec  c                                           ; $7b29: $0d
	sub  [hl]                                        ; $7b2a: $96
	sbc  e                                           ; $7b2b: $9b
	ld   h, l                                        ; $7b2c: $65
	sub  e                                           ; $7b2d: $93
	ld   d, h                                        ; $7b2e: $54
	ld   a, c                                        ; $7b2f: $79
	ld   a, b                                        ; $7b30: $78
	sbc  a                                           ; $7b31: $9f
	dec  c                                           ; $7b32: $0d
	nop                                              ; $7b33: $00
	ld   a, [bc]                                     ; $7b34: $0a
	dec  e                                           ; $7b35: $1d
	ld   b, b                                        ; $7b36: $40
	dec  d                                           ; $7b37: $15
	inc  bc                                          ; $7b38: $03
	dec  d                                           ; $7b39: $15
	ld   bc, $2801                                   ; $7b3a: $01 $01 $28
	nop                                              ; $7b3d: $00
	ld   bc, $0008                                   ; $7b3e: $01 $08 $00
	ld   a, l                                        ; $7b41: $7d
	and  c                                           ; $7b42: $a1
	ld   a, l                                        ; $7b43: $7d
	sbc  [hl]                                        ; $7b44: $9e
	ld   e, e                                        ; $7b45: $5b
	ld   l, a                                        ; $7b46: $6f
	ld   [hl], c                                     ; $7b47: $71
	halt                                             ; $7b48: $76
	dec  c                                           ; $7b49: $0d
	ld   d, b                                        ; $7b4a: $50
	ld   d, d                                        ; $7b4b: $52
	ld   h, e                                        ; $7b4c: $63
	ld   [hl], d                                     ; $7b4d: $72
	ld   [hl], l                                     ; $7b4e: $75
	ld   e, e                                        ; $7b4f: $5b
	ld   [hl], h                                     ; $7b50: $74
	sbc  [hl]                                        ; $7b51: $9e
	ld   a, b                                        ; $7b52: $78
	ld   e, c                                        ; $7b53: $59
	ld   a, b                                        ; $7b54: $78
	ld   e, c                                        ; $7b55: $59
	dec  c                                           ; $7b56: $0d
	xor  c                                           ; $7b57: $a9
	db   $eb                                         ; $7b58: $eb
	and  l                                           ; $7b59: $a5
	ld   a, b                                        ; $7b5a: $78
	db   $fc                                         ; $7b5b: $fc
	sbc  a                                           ; $7b5c: $9f
	dec  c                                           ; $7b5d: $0d
	nop                                              ; $7b5e: $00
	ld   a, [bc]                                     ; $7b5f: $0a
	ld   bc, $508c                                   ; $7b60: $01 $8c $50
	sbc  [hl]                                        ; $7b63: $9e
	inc  bc                                          ; $7b64: $03
	inc  c                                           ; $7b65: $0c
	adc  a                                           ; $7b66: $8f
	ld   [hl], h                                     ; $7b67: $74
	ld   a, h                                        ; $7b68: $7c
	ld   h, c                                        ; $7b69: $61
	halt                                             ; $7b6a: $76
	ld   a, [hl]                                     ; $7b6b: $7e
	ld   e, c                                        ; $7b6c: $59
	sbc  b                                           ; $7b6d: $98
	ld   [hl], l                                     ; $7b6e: $75
	dec  c                                           ; $7b6f: $0d
	ld   d, d                                        ; $7b70: $52
	sbc  e                                           ; $7b71: $9b
	ld   d, d                                        ; $7b72: $52
	sbc  e                                           ; $7b73: $9b
	halt                                             ; $7b74: $76
	inc  b                                           ; $7b75: $04
	ld   c, $04                                      ; $7b76: $0e $04
	adc  h                                           ; $7b78: $8c
	sub  d                                           ; $7b79: $92
	sbc  e                                           ; $7b7a: $9b
	ld   e, a                                        ; $7b7b: $5f
	ld   [hl], a                                     ; $7b7c: $77
	sbc  [hl]                                        ; $7b7d: $9e
	dec  c                                           ; $7b7e: $0d
	ld   e, d                                        ; $7b7f: $5a
	and  c                                           ; $7b80: $a1
	ld   a, [hl]                                     ; $7b81: $7e
	sbc  b                                           ; $7b82: $98
	sub  d                                           ; $7b83: $92
	sbc  a                                           ; $7b84: $9f
	adc  c                                           ; $7b85: $89
	ld   a, b                                        ; $7b86: $78
	sbc  [hl]                                        ; $7b87: $9e
	adc  h                                           ; $7b88: $8c
	ld   l, l                                        ; $7b89: $6d
	sbc  a                                           ; $7b8a: $9f
	dec  c                                           ; $7b8b: $0d
	nop                                              ; $7b8c: $00
	ld   a, [bc]                                     ; $7b8d: $0a
	dec  c                                           ; $7b8e: $0d
	nop                                              ; $7b8f: $00
	nop                                              ; $7b90: $00
	rrca                                             ; $7b91: $0f
	nop                                              ; $7b92: $00
	ld   bc, $1e09                                   ; $7b93: $01 $09 $1e
	nop                                              ; $7b96: $00
	rrca                                             ; $7b97: $0f
	nop                                              ; $7b98: $00
	ld   bc, $0201                                   ; $7b99: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b9c: $cf
	dec  b                                           ; $7b9d: $05
	ld   a, [de]                                     ; $7b9e: $1a
	ld   h, e                                        ; $7b9f: $63
	and  c                                           ; $7ba0: $a1
	sbc  a                                           ; $7ba1: $9f
	dec  c                                           ; $7ba2: $0d
	ld   e, b                                        ; $7ba3: $58
	ld   a, l                                        ; $7ba4: $7d
	sub  [hl]                                        ; $7ba5: $96
	ld   d, h                                        ; $7ba6: $54
	or   [hl]                                        ; $7ba7: $b6
	push af                                          ; $7ba8: $f5
	pop  de                                          ; $7ba9: $d1
	ld   [hl], l                                     ; $7baa: $75
	sbc  [hl]                                        ; $7bab: $9e
	dec  c                                           ; $7bac: $0d
	xor  h                                           ; $7bad: $ac
	ei                                               ; $7bae: $fb
	call z, $edd1                                    ; $7baf: $cc $d1 $ed
	ld   a, [$0dfa]                                  ; $7bb2: $fa $fa $0d
	nop                                              ; $7bb5: $00
	ld   a, [bc]                                     ; $7bb6: $0a
	inc  e                                           ; $7bb7: $1c
	dec  b                                           ; $7bb8: $05
	inc  bc                                          ; $7bb9: $03
	inc  bc                                          ; $7bba: $03
	ld   bc, $a178                                   ; $7bbb: $01 $78 $a1
	ld   h, [hl]                                     ; $7bbe: $66
	sub  c                                           ; $7bbf: $91
	ld   l, e                                        ; $7bc0: $6b
	sbc  b                                           ; $7bc1: $98
	sub  c                                           ; $7bc2: $91
	sbc  a                                           ; $7bc3: $9f
	dec  c                                           ; $7bc4: $0d
	nop                                              ; $7bc5: $00
	ld   a, [bc]                                     ; $7bc6: $0a
	inc  e                                           ; $7bc7: $1c
	dec  b                                           ; $7bc8: $05
	ld   bc, $1d01                                   ; $7bc9: $01 $01 $1d
	ld   b, b                                        ; $7bcc: $40
	dec  d                                           ; $7bcd: $15
	inc  bc                                          ; $7bce: $03
	dec  d                                           ; $7bcf: $15
	ld   bc, $2802                                   ; $7bd0: $01 $02 $28
	nop                                              ; $7bd3: $00
	ld   bc, $d0d0                                   ; $7bd4: $01 $d0 $d0
	ret  nc                                          ; $7bd7: $d0

	ret  nc                                          ; $7bd8: $d0

	sbc  [hl]                                        ; $7bd9: $9e
	ld   e, b                                        ; $7bda: $58
	sub  b                                           ; $7bdb: $90
	sbc  e                                           ; $7bdc: $9b
	ld   d, d                                        ; $7bdd: $52
	sub  d                                           ; $7bde: $92
	and  c                                           ; $7bdf: $a1
	ld   e, c                                        ; $7be0: $59
	sbc  a                                           ; $7be1: $9f
	dec  c                                           ; $7be2: $0d
	and  a                                           ; $7be3: $a7
	jp   nz, $0576                                   ; $7be4: $c2 $76 $05

	jr   nz, jr_043_7c50                             ; $7be7: $20 $67

	halt                                             ; $7be9: $76
	ld   e, e                                        ; $7bea: $5b
	ld   a, l                                        ; $7beb: $7d
	dec  c                                           ; $7bec: $0d
	ld   l, e                                        ; $7bed: $6b
	and  c                                           ; $7bee: $a1
	ld   a, b                                        ; $7bef: $78
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7bf0: $cf
	db   $ec                                         ; $7bf1: $ec
	ld   [hl], l                                     ; $7bf2: $75
	sub  b                                           ; $7bf3: $90
	xor  e                                           ; $7bf4: $ab
	call nz, $fbb2                                   ; $7bf5: $c4 $b2 $fb
	sub  d                                           ; $7bf8: $92
	ld   [hl], l                                     ; $7bf9: $75
	sbc  a                                           ; $7bfa: $9f
	dec  c                                           ; $7bfb: $0d
	nop                                              ; $7bfc: $00

jr_043_7bfd:
	ld   a, [bc]                                     ; $7bfd: $0a
	ld   bc, $508c                                   ; $7bfe: $01 $8c $50
	sbc  [hl]                                        ; $7c01: $9e
	ld   [bc], a                                     ; $7c02: $02
	jr   nz, jr_043_7bfd                             ; $7c03: $20 $f8

	ld   [bc], a                                     ; $7c05: $02
	sbc  e                                           ; $7c06: $9b
	ld   l, a                                        ; $7c07: $6f
	sub  e                                           ; $7c08: $93
	ei                                               ; $7c09: $fb
	ld   a, h                                        ; $7c0a: $7c
	ld   a, l                                        ; $7c0b: $7d
	sbc  [hl]                                        ; $7c0c: $9e
	dec  c                                           ; $7c0d: $0d
	inc  bc                                          ; $7c0e: $03
	jp   nc, $9652                                   ; $7c0f: $d2 $52 $96

	ld   d, h                                        ; $7c12: $54
	ld   [hl], l                                     ; $7c13: $75
	sbc  [hl]                                        ; $7c14: $9e
	dec  b                                           ; $7c15: $05
	ld   a, [$9052]                                  ; $7c16: $fa $52 $90
	and  c                                           ; $7c19: $a1
	sub  d                                           ; $7c1a: $92
	sbc  a                                           ; $7c1b: $9f
	dec  c                                           ; $7c1c: $0d
	call nc, $c4b8                                   ; $7c1d: $d4 $b8 $c4
	halt                                             ; $7c20: $76
	ld   e, d                                        ; $7c21: $5a
	and  c                                           ; $7c22: $a1
	ld   a, [hl]                                     ; $7c23: $7e
	sbc  b                                           ; $7c24: $98
	sub  d                                           ; $7c25: $92
	sbc  a                                           ; $7c26: $9f
	adc  c                                           ; $7c27: $89
	ld   a, b                                        ; $7c28: $78
	sbc  a                                           ; $7c29: $9f
	dec  c                                           ; $7c2a: $0d
	nop                                              ; $7c2b: $00
	ld   a, [bc]                                     ; $7c2c: $0a
	dec  c                                           ; $7c2d: $0d
	nop                                              ; $7c2e: $00
	nop                                              ; $7c2f: $00
	rrca                                             ; $7c30: $0f
	nop                                              ; $7c31: $00
	ld   bc, $1e09                                   ; $7c32: $01 $09 $1e
	nop                                              ; $7c35: $00
	inc  e                                           ; $7c36: $1c
	dec  b                                           ; $7c37: $05
	ld   [bc], a                                     ; $7c38: $02
	ld   [bc], a                                     ; $7c39: $02
	ld   bc, $a178                                   ; $7c3a: $01 $78 $a1
	sub  d                                           ; $7c3d: $92
	sbc  [hl]                                        ; $7c3e: $9e
	ld   l, e                                        ; $7c3f: $6b
	ld   a, b                                        ; $7c40: $78
	ld   d, d                                        ; $7c41: $52
	ld   a, c                                        ; $7c42: $79
	ld   [bc], a                                     ; $7c43: $02
	db   $d3                                         ; $7c44: $d3
	inc  b                                           ; $7c45: $04
	ld   h, $0d                                      ; $7c46: $26 $0d
	ld   l, c                                        ; $7c48: $69
	and  c                                           ; $7c49: $a1
	ld   [hl], l                                     ; $7c4a: $75
	sub  b                                           ; $7c4b: $90
	ld   d, [hl]                                     ; $7c4c: $56
	ld   d, [hl]                                     ; $7c4d: $56
	ld   e, d                                        ; $7c4e: $5a
	ld   a, b                                        ; $7c4f: $78

jr_043_7c50:
	sbc  a                                           ; $7c50: $9f
	dec  c                                           ; $7c51: $0d
	nop                                              ; $7c52: $00
	ld   a, [bc]                                     ; $7c53: $0a
	inc  e                                           ; $7c54: $1c
	dec  b                                           ; $7c55: $05
	nop                                              ; $7c56: $00
	nop                                              ; $7c57: $00
	ld   bc, $7190                                   ; $7c58: $01 $90 $71
	halt                                             ; $7c5b: $76
	ld   [bc], a                                     ; $7c5c: $02
	cp   a                                           ; $7c5d: $bf
	ld   a, h                                        ; $7c5e: $7c
	dec  b                                           ; $7c5f: $05
	ld   a, [bc]                                     ; $7c60: $0a
	and  b                                           ; $7c61: $a0
	ld   a, d                                        ; $7c62: $7a
	ld   d, d                                        ; $7c63: $52
	ld   [hl], h                                     ; $7c64: $74
	dec  c                                           ; $7c65: $0d
	ld   [bc], a                                     ; $7c66: $02
	and  c                                           ; $7c67: $a1
	dec  b                                           ; $7c68: $05
	inc  de                                          ; $7c69: $13
	ld   a, c                                        ; $7c6a: $79
	ld   a, b                                        ; $7c6b: $78
	sbc  a                                           ; $7c6c: $9f
	dec  c                                           ; $7c6d: $0d
	nop                                              ; $7c6e: $00
	ld   a, [bc]                                     ; $7c6f: $0a
	ld   bc, $7889                                   ; $7c70: $01 $89 $78
	sbc  [hl]                                        ; $7c73: $9e
	adc  h                                           ; $7c74: $8c
	ld   d, b                                        ; $7c75: $50
	sbc  [hl]                                        ; $7c76: $9e
	ld   e, d                                        ; $7c77: $5a
	and  c                                           ; $7c78: $a1
	ld   a, [hl]                                     ; $7c79: $7e
	sbc  b                                           ; $7c7a: $98
	sub  d                                           ; $7c7b: $92
	sbc  a                                           ; $7c7c: $9f
	dec  c                                           ; $7c7d: $0d
	nop                                              ; $7c7e: $00
	ld   a, [bc]                                     ; $7c7f: $0a
	dec  c                                           ; $7c80: $0d
	nop                                              ; $7c81: $00
	nop                                              ; $7c82: $00
	rrca                                             ; $7c83: $0f
	nop                                              ; $7c84: $00
	ld   bc, $1e09                                   ; $7c85: $01 $09 $1e
	nop                                              ; $7c88: $00
	nop                                              ; $7c89: $00
	rrca                                             ; $7c8a: $0f
	nop                                              ; $7c8b: $00
	ld   bc, $020d                                   ; $7c8c: $01 $0d $02
	nop                                              ; $7c8f: $00
	ld   [bc], a                                     ; $7c90: $02
	rlca                                             ; $7c91: $07
	rst  $10                                         ; $7c92: $d7
	ld   [bc], a                                     ; $7c93: $02
	inc  b                                           ; $7c94: $04
	add  b                                           ; $7c95: $80
	jr   nc, jr_043_7c99                             ; $7c96: $30 $01

	rst  $38                                         ; $7c98: $ff

jr_043_7c99:
	jr   nz, jr_043_7c9d                             ; $7c99: $20 $02

	nop                                              ; $7c9b: $00
	inc  bc                                          ; $7c9c: $03

jr_043_7c9d:
	ld   b, b                                        ; $7c9d: $40
	ld   bc, $2801                                   ; $7c9e: $01 $01 $28
	jr   nz, jr_043_7cbf                             ; $7ca1: $20 $1c

	nop                                              ; $7ca3: $00
	ld   bc, $0301                                   ; $7ca4: $01 $01 $03
	ld   d, b                                        ; $7ca7: $50
	sbc  [hl]                                        ; $7ca8: $9e
	ld   h, a                                        ; $7ca9: $67
	adc  l                                           ; $7caa: $8d
	sbc  d                                           ; $7cab: $9a
	ld   h, e                                        ; $7cac: $63
	and  c                                           ; $7cad: $a1
	ld   l, [hl]                                     ; $7cae: $6e
	ld   bc, $0d04                                   ; $7caf: $01 $04 $0d
	nop                                              ; $7cb2: $00
	ld   a, [bc]                                     ; $7cb3: $0a
	add  hl, de                                      ; $7cb4: $19
	dec  b                                           ; $7cb5: $05
	inc  bc                                          ; $7cb6: $03
	adc  h                                           ; $7cb7: $8c
	ld   h, [hl]                                     ; $7cb8: $66
	adc  a                                           ; $7cb9: $8f
	ld   a, c                                        ; $7cba: $79
	ld   d, b                                        ; $7cbb: $50
	ld   d, d                                        ; $7cbc: $52
	ld   h, e                                        ; $7cbd: $63
	ld   [hl], d                                     ; $7cbe: $72

jr_043_7cbf:
	ld   h, a                                        ; $7cbf: $67
	sbc  c                                           ; $7cc0: $99
	nop                                              ; $7cc1: $00
	nop                                              ; $7cc2: $00
	ld   h, a                                        ; $7cc3: $67
	adc  l                                           ; $7cc4: $8d
	sbc  d                                           ; $7cc5: $9a
	and  b                                           ; $7cc6: $a0
	adc  c                                           ; $7cc7: $89
	adc  a                                           ; $7cc8: $8f
	sbc  c                                           ; $7cc9: $99
	nop                                              ; $7cca: $00
	ld   bc, $8d67                                   ; $7ccb: $01 $67 $8d
	sbc  d                                           ; $7cce: $9a
	and  b                                           ; $7ccf: $a0
	ret  z                                           ; $7cd0: $c8

	and  h                                           ; $7cd1: $a4
	set  7, e                                        ; $7cd2: $cb $fb
	ld   a, c                                        ; $7cd4: $79
	ld   h, e                                        ; $7cd5: $63
	ld   l, e                                        ; $7cd6: $6b
	ld   d, h                                        ; $7cd7: $54
	nop                                              ; $7cd8: $00
	ld   [bc], a                                     ; $7cd9: $02
	rlca                                             ; $7cda: $07
	ld   l, [hl]                                     ; $7cdb: $6e
	nop                                              ; $7cdc: $00
	ld   [bc], a                                     ; $7cdd: $02
	inc  bc                                          ; $7cde: $03
	ld   bc, $2000                                   ; $7cdf: $01 $00 $20
	nop                                              ; $7ce2: $00
	rlca                                             ; $7ce3: $07
	dec  bc                                          ; $7ce4: $0b
	ld   bc, $0302                                   ; $7ce5: $01 $02 $03
	ld   bc, $2001                                   ; $7ce8: $01 $01 $20
	nop                                              ; $7ceb: $00
	rlca                                             ; $7cec: $07
	or   c                                           ; $7ced: $b1
	ld   bc, $0302                                   ; $7cee: $01 $02 $03
	ld   bc, $2002                                   ; $7cf1: $01 $02 $20
	nop                                              ; $7cf4: $00
	ld   b, $7f                                      ; $7cf5: $06 $7f
	ld   [bc], a                                     ; $7cf7: $02
	rrca                                             ; $7cf8: $0f
	nop                                              ; $7cf9: $00
	ld   bc, $6701                                   ; $7cfa: $01 $01 $67
	adc  l                                           ; $7cfd: $8d
	sbc  d                                           ; $7cfe: $9a
	ld   h, e                                        ; $7cff: $63
	and  c                                           ; $7d00: $a1
	sbc  [hl]                                        ; $7d01: $9e
	dec  c                                           ; $7d02: $0d
	ld   e, b                                        ; $7d03: $58
	ld   a, l                                        ; $7d04: $7d
	sub  [hl]                                        ; $7d05: $96
	ld   d, h                                        ; $7d06: $54
	ld   h, d                                        ; $7d07: $62
	ld   h, h                                        ; $7d08: $64
	ld   d, d                                        ; $7d09: $52
	adc  h                                           ; $7d0a: $8c
	ld   h, a                                        ; $7d0b: $67
	sbc  a                                           ; $7d0c: $9f
	dec  c                                           ; $7d0d: $0d
	inc  b                                           ; $7d0e: $04
	adc  a                                           ; $7d0f: $8f
	inc  b                                           ; $7d10: $04
	xor  d                                           ; $7d11: $aa
	sub  b                                           ; $7d12: $90
	sub  [hl]                                        ; $7d13: $96
	sbc  e                                           ; $7d14: $9b
	ld   h, l                                        ; $7d15: $65
	ld   e, l                                        ; $7d16: $5d
	ld   e, b                                        ; $7d17: $58
	ld   [bc], a                                     ; $7d18: $02
	add  b                                           ; $7d19: $80
	ld   d, d                                        ; $7d1a: $52
	ld   h, l                                        ; $7d1b: $65
	adc  h                                           ; $7d1c: $8c
	ld   h, a                                        ; $7d1d: $67
	sbc  a                                           ; $7d1e: $9f
	dec  c                                           ; $7d1f: $0d
	nop                                              ; $7d20: $00
	ld   a, [bc]                                     ; $7d21: $0a
	inc  e                                           ; $7d22: $1c
	ld   [bc], a                                     ; $7d23: $02
	ld   bc, $0101                                   ; $7d24: $01 $01 $01
	ld   a, l                                        ; $7d27: $7d
	ld   d, d                                        ; $7d28: $52
	ld   a, l                                        ; $7d29: $7d
	ld   d, d                                        ; $7d2a: $52
	sbc  [hl]                                        ; $7d2b: $9e
	ld   [$6308], sp                                 ; $7d2c: $08 $08 $63
	and  c                                           ; $7d2f: $a1
	sbc  a                                           ; $7d30: $9f
	dec  c                                           ; $7d31: $0d
	nop                                              ; $7d32: $00
	ld   a, [bc]                                     ; $7d33: $0a
	rrca                                             ; $7d34: $0f
	nop                                              ; $7d35: $00
	ld   bc, $6f01                                   ; $7d36: $01 $01 $6f
	ld   e, d                                        ; $7d39: $5a
	ld   d, d                                        ; $7d3a: $52
	adc  h                                           ; $7d3b: $8c
	ld   h, a                                        ; $7d3c: $67
	sub  [hl]                                        ; $7d3d: $96
	sbc  a                                           ; $7d3e: $9f
	dec  c                                           ; $7d3f: $0d
	inc  b                                           ; $7d40: $04
	ld   l, l                                        ; $7d41: $6d
	ld   a, h                                        ; $7d42: $7c
	inc  b                                           ; $7d43: $04
	rst  ToBoot                                         ; $7d44: $c7
	inc  bc                                          ; $7d45: $03
	ld   c, a                                        ; $7d46: $4f
	ld   a, l                                        ; $7d47: $7d
	sbc  [hl]                                        ; $7d48: $9e
	ld   [$0d00], sp                                 ; $7d49: $08 $00 $0d
	ld   [hl], l                                     ; $7d4c: $75
	ld   h, a                                        ; $7d4d: $67
	sub  [hl]                                        ; $7d4e: $96
	sbc  a                                           ; $7d4f: $9f
	dec  c                                           ; $7d50: $0d
	nop                                              ; $7d51: $00
	ld   a, [bc]                                     ; $7d52: $0a
	inc  e                                           ; $7d53: $1c
	ld   [bc], a                                     ; $7d54: $02
	nop                                              ; $7d55: $00
	nop                                              ; $7d56: $00
	ld   bc, $a16b                                   ; $7d57: $01 $6b $a1
	ld   a, b                                        ; $7d5a: $78
	ld   h, c                                        ; $7d5b: $61
	halt                                             ; $7d5c: $76
	sbc  [hl]                                        ; $7d5d: $9e
	dec  c                                           ; $7d5e: $0d
	ld   [hl], a                                     ; $7d5f: $77
	ld   d, h                                        ; $7d60: $54
	ld   [hl], l                                     ; $7d61: $75
	sub  b                                           ; $7d62: $90
	ld   d, d                                        ; $7d63: $52
	ld   d, d                                        ; $7d64: $52
	ld   h, [hl]                                     ; $7d65: $66
	sub  c                                           ; $7d66: $91
	dec  c                                           ; $7d67: $0d
	ld   d, b                                        ; $7d68: $50
	sbc  b                                           ; $7d69: $98
	adc  h                                           ; $7d6a: $8c
	ld   l, c                                        ; $7d6b: $69
	and  c                                           ; $7d6c: $a1
	ld   a, h                                        ; $7d6d: $7c
	sbc  a                                           ; $7d6e: $9f
	dec  c                                           ; $7d6f: $0d
	nop                                              ; $7d70: $00
	ld   a, [bc]                                     ; $7d71: $0a
	ld   bc, $9166                                   ; $7d72: $01 $66 $91
	ld   d, b                                        ; $7d75: $50
	sbc  [hl]                                        ; $7d76: $9e
	ld   [bc], a                                     ; $7d77: $02
	and  l                                           ; $7d78: $a5
	inc  b                                           ; $7d79: $04
	xor  d                                           ; $7d7a: $aa
	sub  b                                           ; $7d7b: $90
	ld   [bc], a                                     ; $7d7c: $02
	jr   nz, jr_043_7d83                             ; $7d7d: $20 $04

	xor  d                                           ; $7d7f: $aa
	dec  c                                           ; $7d80: $0d
	ld   e, d                                        ; $7d81: $5a
	and  c                                           ; $7d82: $a1

jr_043_7d83:
	ld   a, [hl]                                     ; $7d83: $7e
	sbc  b                                           ; $7d84: $98
	ld   a, b                                        ; $7d85: $78
	ld   h, e                                        ; $7d86: $63
	ld   d, d                                        ; $7d87: $52
	sbc  a                                           ; $7d88: $9f
	dec  c                                           ; $7d89: $0d
	nop                                              ; $7d8a: $00
	ld   a, [bc]                                     ; $7d8b: $0a
	dec  c                                           ; $7d8c: $0d
	nop                                              ; $7d8d: $00
	nop                                              ; $7d8e: $00
	rrca                                             ; $7d8f: $0f
	nop                                              ; $7d90: $00
	ld   bc, $1e09                                   ; $7d91: $01 $09 $1e
	nop                                              ; $7d94: $00
	rrca                                             ; $7d95: $0f
	nop                                              ; $7d96: $00
	ld   bc, $6701                                   ; $7d97: $01 $01 $67
	adc  l                                           ; $7d9a: $8d
	sbc  d                                           ; $7d9b: $9a
	ld   h, e                                        ; $7d9c: $63
	and  c                                           ; $7d9d: $a1
	sbc  [hl]                                        ; $7d9e: $9e
	dec  c                                           ; $7d9f: $0d
	ld   e, b                                        ; $7da0: $58
	ld   a, l                                        ; $7da1: $7d
	sub  [hl]                                        ; $7da2: $96
	ld   d, h                                        ; $7da3: $54
	ld   h, d                                        ; $7da4: $62
	ld   h, h                                        ; $7da5: $64
	ld   d, d                                        ; $7da6: $52
	adc  h                                           ; $7da7: $8c
	ld   h, a                                        ; $7da8: $67
	sbc  a                                           ; $7da9: $9f
	dec  c                                           ; $7daa: $0d
	ld   [bc], a                                     ; $7dab: $02
	and  l                                           ; $7dac: $a5
	inc  b                                           ; $7dad: $04
	xor  d                                           ; $7dae: $aa
	sub  b                                           ; $7daf: $90
	sbc  [hl]                                        ; $7db0: $9e
	ld   e, b                                        ; $7db1: $58
	inc  b                                           ; $7db2: $04
	and  c                                           ; $7db3: $a1
	ld   h, l                                        ; $7db4: $65
	ld   d, d                                        ; $7db5: $52
	rst  $38                                         ; $7db6: $ff
	rst  $38                                         ; $7db7: $ff
	dec  c                                           ; $7db8: $0d
	nop                                              ; $7db9: $00
	ld   a, [bc]                                     ; $7dba: $0a
	inc  e                                           ; $7dbb: $1c
	ld   [bc], a                                     ; $7dbc: $02
	ld   bc, $1d01                                   ; $7dbd: $01 $01 $1d
	ld   b, b                                        ; $7dc0: $40
	ld   [de], a                                     ; $7dc1: $12
	inc  bc                                          ; $7dc2: $03
	ld   [de], a                                     ; $7dc3: $12
	ld   bc, $2802                                   ; $7dc4: $01 $02 $28
	nop                                              ; $7dc7: $00
	ld   bc, $1804                                   ; $7dc8: $01 $04 $18
	inc  bc                                          ; $7dcb: $03
	sbc  c                                           ; $7dcc: $99
	ld   [hl], l                                     ; $7dcd: $75
	ld   h, l                                        ; $7dce: $65
	sub  l                                           ; $7dcf: $95
	sbc  a                                           ; $7dd0: $9f
	dec  c                                           ; $7dd1: $0d
	ld   [$6308], sp                                 ; $7dd2: $08 $08 $63
	and  c                                           ; $7dd5: $a1
	sbc  a                                           ; $7dd6: $9f
	dec  c                                           ; $7dd7: $0d
	nop                                              ; $7dd8: $00
	ld   a, [bc]                                     ; $7dd9: $0a
	rrca                                             ; $7dda: $0f
	nop                                              ; $7ddb: $00
	ld   bc, $6f01                                   ; $7ddc: $01 $01 $6f
	ld   e, d                                        ; $7ddf: $5a
	ld   d, d                                        ; $7de0: $52
	adc  h                                           ; $7de1: $8c
	ld   h, a                                        ; $7de2: $67
	sub  [hl]                                        ; $7de3: $96
	sbc  a                                           ; $7de4: $9f
	dec  c                                           ; $7de5: $0d
	inc  b                                           ; $7de6: $04
	ld   l, l                                        ; $7de7: $6d
	ld   a, h                                        ; $7de8: $7c
	inc  b                                           ; $7de9: $04
	rst  ToBoot                                         ; $7dea: $c7
	inc  bc                                          ; $7deb: $03
	ld   c, a                                        ; $7dec: $4f
	ld   a, l                                        ; $7ded: $7d
	sbc  [hl]                                        ; $7dee: $9e
	ld   [$0d00], sp                                 ; $7def: $08 $00 $0d
	ld   [hl], l                                     ; $7df2: $75
	ld   h, a                                        ; $7df3: $67
	sub  [hl]                                        ; $7df4: $96
	sbc  a                                           ; $7df5: $9f
	dec  c                                           ; $7df6: $0d
	nop                                              ; $7df7: $00
	ld   a, [bc]                                     ; $7df8: $0a
	inc  e                                           ; $7df9: $1c
	ld   [bc], a                                     ; $7dfa: $02
	nop                                              ; $7dfb: $00
	nop                                              ; $7dfc: $00
	ld   bc, $a16b                                   ; $7dfd: $01 $6b $a1
	ld   a, b                                        ; $7e00: $78
	ld   h, c                                        ; $7e01: $61
	halt                                             ; $7e02: $76
	sbc  [hl]                                        ; $7e03: $9e
	dec  c                                           ; $7e04: $0d
	ld   [hl], a                                     ; $7e05: $77
	ld   d, h                                        ; $7e06: $54
	ld   [hl], l                                     ; $7e07: $75
	sub  b                                           ; $7e08: $90
	ld   d, d                                        ; $7e09: $52
	ld   d, d                                        ; $7e0a: $52
	ld   h, [hl]                                     ; $7e0b: $66
	sub  c                                           ; $7e0c: $91
	dec  c                                           ; $7e0d: $0d
	ld   d, b                                        ; $7e0e: $50
	sbc  b                                           ; $7e0f: $98
	adc  h                                           ; $7e10: $8c
	ld   l, c                                        ; $7e11: $69
	and  c                                           ; $7e12: $a1
	ld   a, h                                        ; $7e13: $7c
	sbc  a                                           ; $7e14: $9f
	dec  c                                           ; $7e15: $0d
	nop                                              ; $7e16: $00
	ld   a, [bc]                                     ; $7e17: $0a
	ld   bc, $9166                                   ; $7e18: $01 $66 $91
	ld   d, b                                        ; $7e1b: $50
	sbc  [hl]                                        ; $7e1c: $9e
	ld   [bc], a                                     ; $7e1d: $02
	and  l                                           ; $7e1e: $a5
	inc  b                                           ; $7e1f: $04
	xor  d                                           ; $7e20: $aa
	sub  b                                           ; $7e21: $90
	ld   [bc], a                                     ; $7e22: $02
	jr   nz, jr_043_7e29                             ; $7e23: $20 $04

	xor  d                                           ; $7e25: $aa
	dec  c                                           ; $7e26: $0d
	ld   e, d                                        ; $7e27: $5a
	and  c                                           ; $7e28: $a1

jr_043_7e29:
	ld   a, [hl]                                     ; $7e29: $7e
	sbc  b                                           ; $7e2a: $98
	ld   a, b                                        ; $7e2b: $78
	ld   h, e                                        ; $7e2c: $63
	ld   d, d                                        ; $7e2d: $52
	sbc  a                                           ; $7e2e: $9f
	dec  c                                           ; $7e2f: $0d
	nop                                              ; $7e30: $00
	ld   a, [bc]                                     ; $7e31: $0a
	dec  c                                           ; $7e32: $0d
	nop                                              ; $7e33: $00
	nop                                              ; $7e34: $00
	rrca                                             ; $7e35: $0f
	nop                                              ; $7e36: $00
	ld   bc, $1e09                                   ; $7e37: $01 $09 $1e
	nop                                              ; $7e3a: $00
	rrca                                             ; $7e3b: $0f
	nop                                              ; $7e3c: $00
	ld   bc, $6701                                   ; $7e3d: $01 $01 $67
	adc  l                                           ; $7e40: $8d
	sbc  d                                           ; $7e41: $9a
	ld   h, e                                        ; $7e42: $63
	and  c                                           ; $7e43: $a1
	sbc  [hl]                                        ; $7e44: $9e
	dec  c                                           ; $7e45: $0d
	ld   e, b                                        ; $7e46: $58
	ld   a, l                                        ; $7e47: $7d
	sub  [hl]                                        ; $7e48: $96
	ld   d, h                                        ; $7e49: $54
	ld   h, d                                        ; $7e4a: $62
	ld   h, h                                        ; $7e4b: $64
	ld   d, d                                        ; $7e4c: $52
	adc  h                                           ; $7e4d: $8c
	ld   h, a                                        ; $7e4e: $67
	sbc  a                                           ; $7e4f: $9f
	dec  c                                           ; $7e50: $0d
	ld   d, b                                        ; $7e51: $50
	ld   a, h                                        ; $7e52: $7c
	rst  $38                                         ; $7e53: $ff
	rst  $38                                         ; $7e54: $ff
	ld   [bc], a                                     ; $7e55: $02
	and  l                                           ; $7e56: $a5
	inc  b                                           ; $7e57: $04
	ld   e, d                                        ; $7e58: $5a
	ld   e, b                                        ; $7e59: $58
	add  b                                           ; $7e5a: $80
	adc  h                                           ; $7e5b: $8c
	ld   [hl], l                                     ; $7e5c: $75
	ld   h, a                                        ; $7e5d: $67
	ld   e, c                                        ; $7e5e: $59
	ld   sp, hl                                      ; $7e5f: $f9
	dec  c                                           ; $7e60: $0d
	nop                                              ; $7e61: $00
	ld   a, [bc]                                     ; $7e62: $0a
	inc  e                                           ; $7e63: $1c
	ld   [bc], a                                     ; $7e64: $02
	ld   bc, $0101                                   ; $7e65: $01 $01 $01
	ld   d, b                                        ; $7e68: $50
	sub  a                                           ; $7e69: $97
	sbc  [hl]                                        ; $7e6a: $9e
	ld   [$6308], sp                                 ; $7e6b: $08 $08 $63
	and  c                                           ; $7e6e: $a1
	sbc  a                                           ; $7e6f: $9f
	dec  c                                           ; $7e70: $0d
	ld   l, e                                        ; $7e71: $6b
	sbc  d                                           ; $7e72: $9a
	ld   a, l                                        ; $7e73: $7d
	sbc  [hl]                                        ; $7e74: $9e
	ld   [hl], a                                     ; $7e75: $77
	ld   d, h                                        ; $7e76: $54
	ld   d, d                                        ; $7e77: $52
	ld   d, h                                        ; $7e78: $54
	ld   [hl], d                                     ; $7e79: $72
	sub  b                                           ; $7e7a: $90
	sbc  b                                           ; $7e7b: $98
	ld   sp, hl                                      ; $7e7c: $f9
	dec  c                                           ; $7e7d: $0d
	nop                                              ; $7e7e: $00
	ld   a, [bc]                                     ; $7e7f: $0a
	ld   bc, $6d9d                                   ; $7e80: $01 $9d $6d
	ld   e, l                                        ; $7e83: $5d
	ld   h, l                                        ; $7e84: $65
	and  b                                           ; $7e85: $a0
	ld   h, e                                        ; $7e86: $63
	ld   l, e                                        ; $7e87: $6b
	ld   d, h                                        ; $7e88: $54
	ld   a, b                                        ; $7e89: $78
	and  c                                           ; $7e8a: $a1
	ld   [hl], h                                     ; $7e8b: $74
	dec  c                                           ; $7e8c: $0d
	ld   [de], a                                     ; $7e8d: $12
	ld   de, $0411                                   ; $7e8e: $11 $11 $04
	ld   d, b                                        ; $7e91: $50
	inc  bc                                          ; $7e92: $03
	ld   [hl], b                                     ; $7e93: $70
	ld   d, d                                        ; $7e94: $52
	and  c                                           ; $7e95: $a1
	ld   h, [hl]                                     ; $7e96: $66
	sub  c                                           ; $7e97: $91
	ld   a, b                                        ; $7e98: $78
	ld   e, l                                        ; $7e99: $5d
	ld   [hl], c                                     ; $7e9a: $71
	ld   [hl], h                                     ; $7e9b: $74
	sbc  a                                           ; $7e9c: $9f
	dec  c                                           ; $7e9d: $0d
	nop                                              ; $7e9e: $00
	ld   a, [bc]                                     ; $7e9f: $0a
	inc  e                                           ; $7ea0: $1c
	ld   [bc], a                                     ; $7ea1: $02
	ld   [bc], a                                     ; $7ea2: $02
	ld   [bc], a                                     ; $7ea3: $02
	dec  e                                           ; $7ea4: $1d
	ld   b, b                                        ; $7ea5: $40
	ld   [de], a                                     ; $7ea6: $12
	inc  bc                                          ; $7ea7: $03
	ld   [de], a                                     ; $7ea8: $12
	ld   bc, $2902                                   ; $7ea9: $01 $02 $29
	nop                                              ; $7eac: $00
	ld   bc, $a16b                                   ; $7ead: $01 $6b $a1
	ld   a, b                                        ; $7eb0: $78
	ld   h, c                                        ; $7eb1: $61
	halt                                             ; $7eb2: $76
	sub  [hl]                                        ; $7eb3: $96
	sbc  b                                           ; $7eb4: $98
	sbc  [hl]                                        ; $7eb5: $9e
	inc  bc                                          ; $7eb6: $03
	ld   l, l                                        ; $7eb7: $6d
	dec  b                                           ; $7eb8: $05
	add  hl, de                                      ; $7eb9: $19
	ld   a, c                                        ; $7eba: $79
	dec  c                                           ; $7ebb: $0d
	ld   a, l                                        ; $7ebc: $7d
	ld   h, b                                        ; $7ebd: $60
	adc  l                                           ; $7ebe: $8d
	ld   a, b                                        ; $7ebf: $78
	ld   h, e                                        ; $7ec0: $63
	ld   d, d                                        ; $7ec1: $52
	sbc  a                                           ; $7ec2: $9f
	dec  c                                           ; $7ec3: $0d
	nop                                              ; $7ec4: $00
	ld   a, [bc]                                     ; $7ec5: $0a
	rrca                                             ; $7ec6: $0f
	nop                                              ; $7ec7: $00
	ld   bc, $5001                                   ; $7ec8: $01 $01 $50
	ld   a, h                                        ; $7ecb: $7c
	rst  $38                                         ; $7ecc: $ff
	rst  $38                                         ; $7ecd: $ff
	inc  b                                           ; $7ece: $04
	ld   l, l                                        ; $7ecf: $6d
	ld   a, h                                        ; $7ed0: $7c
	inc  b                                           ; $7ed1: $04
	rst  ToBoot                                         ; $7ed2: $c7
	inc  bc                                          ; $7ed3: $03
	ld   c, a                                        ; $7ed4: $4f
	ld   a, l                                        ; $7ed5: $7d
	sbc  [hl]                                        ; $7ed6: $9e
	dec  c                                           ; $7ed7: $0d
	ld   [$7500], sp                                 ; $7ed8: $08 $00 $75
	ld   h, a                                        ; $7edb: $67
	sub  [hl]                                        ; $7edc: $96
	sbc  a                                           ; $7edd: $9f
	dec  c                                           ; $7ede: $0d
	nop                                              ; $7edf: $00
	ld   a, [bc]                                     ; $7ee0: $0a
	inc  e                                           ; $7ee1: $1c
	ld   [bc], a                                     ; $7ee2: $02
	ld   [bc], a                                     ; $7ee3: $02
	ld   [bc], a                                     ; $7ee4: $02
	ld   bc, $a16b                                   ; $7ee5: $01 $6b $a1
	ld   a, b                                        ; $7ee8: $78
	ld   h, c                                        ; $7ee9: $61
	halt                                             ; $7eea: $76
	sbc  [hl]                                        ; $7eeb: $9e
	dec  c                                           ; $7eec: $0d
	ld   [hl], a                                     ; $7eed: $77
	ld   d, h                                        ; $7eee: $54
	ld   [hl], l                                     ; $7eef: $75
	sub  b                                           ; $7ef0: $90
	ld   d, d                                        ; $7ef1: $52
	ld   d, d                                        ; $7ef2: $52
	ld   h, [hl]                                     ; $7ef3: $66
	sub  c                                           ; $7ef4: $91
	dec  c                                           ; $7ef5: $0d
	ld   d, b                                        ; $7ef6: $50
	sbc  b                                           ; $7ef7: $98
	adc  h                                           ; $7ef8: $8c
	ld   l, c                                        ; $7ef9: $69
	and  c                                           ; $7efa: $a1
	ld   a, h                                        ; $7efb: $7c
	sbc  a                                           ; $7efc: $9f
	dec  c                                           ; $7efd: $0d
	nop                                              ; $7efe: $00
	ld   a, [bc]                                     ; $7eff: $0a
	dec  c                                           ; $7f00: $0d
	nop                                              ; $7f01: $00
	nop                                              ; $7f02: $00
	rrca                                             ; $7f03: $0f
	nop                                              ; $7f04: $00
	ld   bc, $1e09                                   ; $7f05: $01 $09 $1e
	nop                                              ; $7f08: $00
	inc  e                                           ; $7f09: $1c
	ld   [bc], a                                     ; $7f0a: $02
	nop                                              ; $7f0b: $00
	nop                                              ; $7f0c: $00
	ld   bc, $4904                                   ; $7f0d: $01 $04 $49
	db   $dd                                         ; $7f10: $dd
	ei                                               ; $7f11: $fb
	call nz, $6576                                   ; $7f12: $c4 $76 $65
	ld   [hl], h                                     ; $7f15: $74
	ld   d, d                                        ; $7f16: $52
	sbc  c                                           ; $7f17: $99
	ld   a, h                                        ; $7f18: $7c
	ld   sp, hl                                      ; $7f19: $f9
	dec  c                                           ; $7f1a: $0d
	sbc  l                                           ; $7f1b: $9d
	ld   l, l                                        ; $7f1c: $6d
	ld   e, l                                        ; $7f1d: $5d
	ld   h, l                                        ; $7f1e: $65
	ld   a, c                                        ; $7f1f: $79
	ld   [bc], a                                     ; $7f20: $02
	sub  l                                           ; $7f21: $95
	halt                                             ; $7f22: $76
	sbc  d                                           ; $7f23: $9a
	sbc  c                                           ; $7f24: $99
	ld   a, h                                        ; $7f25: $7c
	sub  b                                           ; $7f26: $90
	dec  c                                           ; $7f27: $0d
	ldh  [c], a                                      ; $7f28: $e2
	db   $ec                                         ; $7f29: $ec
	ld   a, b                                        ; $7f2a: $78
	ld   d, d                                        ; $7f2b: $52
	ld   h, c                                        ; $7f2c: $61
	halt                                             ; $7f2d: $76
	ld   [hl], l                                     ; $7f2e: $75
	ld   h, a                                        ; $7f2f: $67
	ld   e, a                                        ; $7f30: $5f
	ld   [hl], a                                     ; $7f31: $77
	rst  $38                                         ; $7f32: $ff
	rst  $38                                         ; $7f33: $ff
	dec  c                                           ; $7f34: $0d
	nop                                              ; $7f35: $00
	ld   a, [bc]                                     ; $7f36: $0a
	inc  e                                           ; $7f37: $1c
	ld   [bc], a                                     ; $7f38: $02
	ld   [bc], a                                     ; $7f39: $02
	ld   [bc], a                                     ; $7f3a: $02
	dec  e                                           ; $7f3b: $1d
	ld   b, b                                        ; $7f3c: $40
	ld   [de], a                                     ; $7f3d: $12
	inc  bc                                          ; $7f3e: $03
	ld   [de], a                                     ; $7f3f: $12
	ld   bc, $2903                                   ; $7f40: $01 $03 $29
	nop                                              ; $7f43: $00
	ld   bc, $5250                                   ; $7f44: $01 $50 $52
	ld   h, e                                        ; $7f47: $63
	ld   [hl], d                                     ; $7f48: $72
	ld   e, [hl]                                     ; $7f49: $5e
	sub  a                                           ; $7f4a: $97
	ld   d, d                                        ; $7f4b: $52
	dec  c                                           ; $7f4c: $0d
	ld   e, e                                        ; $7f4d: $5b
	ld   l, a                                        ; $7f4e: $6f
	and  c                                           ; $7f4f: $a1
	halt                                             ; $7f50: $76
	ld   a, b                                        ; $7f51: $78
	ld   h, e                                        ; $7f52: $63
	ld   d, d                                        ; $7f53: $52
	sbc  a                                           ; $7f54: $9f
	dec  c                                           ; $7f55: $0d
	nop                                              ; $7f56: $00
	ld   a, [bc]                                     ; $7f57: $0a
	dec  c                                           ; $7f58: $0d
	nop                                              ; $7f59: $00
	nop                                              ; $7f5a: $00
	rrca                                             ; $7f5b: $0f
	nop                                              ; $7f5c: $00
	ld   bc, $1e09                                   ; $7f5d: $01 $09 $1e
	nop                                              ; $7f60: $00
	ld   bc, $0301                                   ; $7f61: $01 $01 $03
	ld   h, a                                        ; $7f64: $67
	adc  l                                           ; $7f65: $8d
	sbc  d                                           ; $7f66: $9a
	ld   h, e                                        ; $7f67: $63
	and  c                                           ; $7f68: $a1
	ld   l, [hl]                                     ; $7f69: $6e
	rst  $38                                         ; $7f6a: $ff
	rst  $38                                         ; $7f6b: $ff
	ld   bc, $0d04                                   ; $7f6c: $01 $04 $0d
	nop                                              ; $7f6f: $00
	ld   a, [bc]                                     ; $7f70: $0a
	add  hl, de                                      ; $7f71: $19
	dec  b                                           ; $7f72: $05
	inc  bc                                          ; $7f73: $03
	adc  h                                           ; $7f74: $8c
	ld   h, [hl]                                     ; $7f75: $66
	adc  a                                           ; $7f76: $8f
	ld   a, c                                        ; $7f77: $79
	ld   d, b                                        ; $7f78: $50
	ld   d, d                                        ; $7f79: $52
	ld   h, e                                        ; $7f7a: $63
	ld   [hl], d                                     ; $7f7b: $72
	ld   h, a                                        ; $7f7c: $67
	sbc  c                                           ; $7f7d: $99
	nop                                              ; $7f7e: $00
	nop                                              ; $7f7f: $00
	ld   h, a                                        ; $7f80: $67
	adc  l                                           ; $7f81: $8d
	sbc  d                                           ; $7f82: $9a
	and  b                                           ; $7f83: $a0
	adc  c                                           ; $7f84: $89
	adc  a                                           ; $7f85: $8f
	sbc  c                                           ; $7f86: $99
	nop                                              ; $7f87: $00
	ld   bc, $6b63                                   ; $7f88: $01 $63 $6b
	ld   [hl], c                                     ; $7f8b: $71
	ld   [hl], h                                     ; $7f8c: $74
	adc  l                                           ; $7f8d: $8d
	sbc  c                                           ; $7f8e: $99
	nop                                              ; $7f8f: $00
	ld   [bc], a                                     ; $7f90: $02
	rlca                                             ; $7f91: $07
	dec  h                                           ; $7f92: $25
	inc  bc                                          ; $7f93: $03
	ld   [bc], a                                     ; $7f94: $02
	inc  bc                                          ; $7f95: $03
	ld   bc, $2000                                   ; $7f96: $01 $00 $20
	nop                                              ; $7f99: $00
	rlca                                             ; $7f9a: $07
	inc  bc                                          ; $7f9b: $03
	inc  b                                           ; $7f9c: $04
	ld   [bc], a                                     ; $7f9d: $02
	inc  bc                                          ; $7f9e: $03
	ld   bc, $2001                                   ; $7f9f: $01 $01 $20
	nop                                              ; $7fa2: $00
	rlca                                             ; $7fa3: $07
	rst  $30                                         ; $7fa4: $f7
	inc  b                                           ; $7fa5: $04
	ld   [bc], a                                     ; $7fa6: $02
	inc  bc                                          ; $7fa7: $03
	ld   bc, $2002                                   ; $7fa8: $01 $02 $20
	nop                                              ; $7fab: $00
	ld   b, $d9                                      ; $7fac: $06 $d9
	dec  b                                           ; $7fae: $05
	rrca                                             ; $7faf: $0f
	nop                                              ; $7fb0: $00
	ld   bc, $6701                                   ; $7fb1: $01 $01 $67
	adc  l                                           ; $7fb4: $8d
	sbc  d                                           ; $7fb5: $9a
	ld   h, e                                        ; $7fb6: $63
	and  c                                           ; $7fb7: $a1
	sbc  [hl]                                        ; $7fb8: $9e
	dec  c                                           ; $7fb9: $0d
	ld   e, b                                        ; $7fba: $58
	ld   a, l                                        ; $7fbb: $7d
	sub  [hl]                                        ; $7fbc: $96
	ld   d, h                                        ; $7fbd: $54
	ld   h, d                                        ; $7fbe: $62
	ld   h, h                                        ; $7fbf: $64
	ld   d, d                                        ; $7fc0: $52
	adc  h                                           ; $7fc1: $8c
	ld   h, a                                        ; $7fc2: $67
	sbc  a                                           ; $7fc3: $9f
	dec  c                                           ; $7fc4: $0d
	inc  b                                           ; $7fc5: $04
	adc  a                                           ; $7fc6: $8f
	inc  b                                           ; $7fc7: $04
	xor  d                                           ; $7fc8: $aa
	sub  b                                           ; $7fc9: $90
	sub  [hl]                                        ; $7fca: $96
	sbc  e                                           ; $7fcb: $9b
	ld   h, l                                        ; $7fcc: $65
	ld   e, l                                        ; $7fcd: $5d
	ld   e, b                                        ; $7fce: $58
	ld   [bc], a                                     ; $7fcf: $02
	add  b                                           ; $7fd0: $80
	ld   d, d                                        ; $7fd1: $52
	ld   h, l                                        ; $7fd2: $65
	adc  h                                           ; $7fd3: $8c
	ld   h, a                                        ; $7fd4: $67
	sbc  a                                           ; $7fd5: $9f
	dec  c                                           ; $7fd6: $0d
	nop                                              ; $7fd7: $00
	ld   a, [bc]                                     ; $7fd8: $0a
	inc  e                                           ; $7fd9: $1c
	ld   [bc], a                                     ; $7fda: $02
	nop                                              ; $7fdb: $00
	nop                                              ; $7fdc: $00
	ld   bc, $9750                                   ; $7fdd: $01 $50 $97
	sbc  [hl]                                        ; $7fe0: $9e
	ld   [$6308], sp                                 ; $7fe1: $08 $08 $63
	and  c                                           ; $7fe4: $a1
	sbc  a                                           ; $7fe5: $9f
	dec  c                                           ; $7fe6: $0d
	ld   a, b                                        ; $7fe7: $78
	and  c                                           ; $7fe8: $a1
	ld   [hl], l                                     ; $7fe9: $75
	sub  b                                           ; $7fea: $90
	sbc  [hl]                                        ; $7feb: $9e
	dec  b                                           ; $7fec: $05
	ld   b, l                                        ; $7fed: $45
	inc  b                                           ; $7fee: $04
	xor  d                                           ; $7fef: $aa
	ld   a, l                                        ; $7ff0: $7d
	dec  c                                           ; $7ff1: $0d
	inc  b                                           ; $7ff2: $04
	ld   c, $04                                      ; $7ff3: $0e $04
	adc  h                                           ; $7ff5: $8c
	ld   l, [hl]                                     ; $7ff6: $6e
	ld   [hl], c                                     ; $7ff7: $71
	ld   l, l                                        ; $7ff8: $6d
	ld   l, e                                        ; $7ff9: $6b
	ld   d, h                                        ; $7ffa: $54
	ld   [hl], l                                     ; $7ffb: $75
	rst  $38                                         ; $7ffc: $ff
	dec  c                                           ; $7ffd: $0d
	nop                                              ; $7ffe: $00
	ld   a, [bc]                                     ; $7fff: $0a
