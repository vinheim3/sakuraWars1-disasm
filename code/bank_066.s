; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $066", ROMX[$4000], BANK[$66]

	ld   l, e                                        ; $4000: $6b
	ld   d, h                                        ; $4001: $54
	ld   d, d                                        ; $4002: $52
	ld   d, h                                        ; $4003: $54
	ld   h, c                                        ; $4004: $61
	halt                                             ; $4005: $76
	ld   a, l                                        ; $4006: $7d
	inc  b                                           ; $4007: $04
	dec  hl                                          ; $4008: $2b
	ld   [hl], c                                     ; $4009: $71
	ld   [hl], h                                     ; $400a: $74
	sbc  c                                           ; $400b: $99
	ld   e, c                                        ; $400c: $59
	halt                                             ; $400d: $76
	dec  c                                           ; $400e: $0d
	dec  b                                           ; $400f: $05
	pop  de                                          ; $4010: $d1
	ld   [hl], c                                     ; $4011: $71
	ld   [hl], h                                     ; $4012: $74
	ld   l, l                                        ; $4013: $6d
	and  c                                           ; $4014: $a1
	ld   [hl], l                                     ; $4015: $75
	rst  $38                                         ; $4016: $ff
	rst  $38                                         ; $4017: $ff
	dec  c                                           ; $4018: $0d
	nop                                              ; $4019: $00
	ld   a, [bc]                                     ; $401a: $0a
	ld   b, $a2                                      ; $401b: $06 $a2
	dec  b                                           ; $401d: $05
	inc  e                                           ; $401e: $1c
	dec  c                                           ; $401f: $0d
	ld   bc, $0101                                   ; $4020: $01 $01 $01
	ld   l, e                                        ; $4023: $6b
	ld   d, h                                        ; $4024: $54
	ld   l, e                                        ; $4025: $6b
	ld   d, h                                        ; $4026: $54
	sbc  a                                           ; $4027: $9f
	dec  c                                           ; $4028: $0d
	pop  de                                          ; $4029: $d1
	push bc                                          ; $402a: $c5
	and  b                                           ; $402b: $a0
	inc  b                                           ; $402c: $04
	ld   b, l                                        ; $402d: $45
	sbc  d                                           ; $402e: $9a
	ld   [hl], h                                     ; $402f: $74
	inc  bc                                          ; $4030: $03
	ret  nz                                          ; $4031: $c0

	inc  bc                                          ; $4032: $03
	ld   d, d                                        ; $4033: $52
	dec  b                                           ; $4034: $05
	db   $e4                                         ; $4035: $e4
	ld   l, [hl]                                     ; $4036: $6e
	ld   [hl], c                                     ; $4037: $71
	ld   [hl], h                                     ; $4038: $74
	dec  c                                           ; $4039: $0d
	sbc  l                                           ; $403a: $9d
	ld   e, c                                        ; $403b: $59
	sbc  b                                           ; $403c: $98
	sub  d                                           ; $403d: $92
	ld   h, a                                        ; $403e: $67
	ld   e, l                                        ; $403f: $5d
	ld   h, l                                        ; $4040: $65
	ld   a, b                                        ; $4041: $78
	ld   d, d                                        ; $4042: $52
	halt                                             ; $4043: $76
	ld   a, e                                        ; $4044: $7b
	sbc  a                                           ; $4045: $9f
	dec  c                                           ; $4046: $0d
	nop                                              ; $4047: $00
	ld   a, [bc]                                     ; $4048: $0a
	dec  b                                           ; $4049: $05
	ld   b, b                                        ; $404a: $40
	rst  $38                                         ; $404b: $ff
	inc  bc                                          ; $404c: $03
	rst  $38                                         ; $404d: $ff
	ld   bc, $2801                                   ; $404e: $01 $01 $28
	nop                                              ; $4051: $00
	inc  e                                           ; $4052: $1c
	inc  c                                           ; $4053: $0c
	ld   bc, $0101                                   ; $4054: $01 $01 $01
	ld   [$6300], sp                                 ; $4057: $08 $00 $63
	and  c                                           ; $405a: $a1
	sbc  [hl]                                        ; $405b: $9e
	dec  c                                           ; $405c: $0d
	sub  [hl]                                        ; $405d: $96
	ld   e, l                                        ; $405e: $5d
	ld   h, d                                        ; $405f: $62
	inc  bc                                          ; $4060: $03
	push bc                                          ; $4061: $c5
	ld   h, [hl]                                     ; $4062: $66
	ld   a, b                                        ; $4063: $78
	and  c                                           ; $4064: $a1
	ld   [hl], l                                     ; $4065: $75
	ld   h, a                                        ; $4066: $67
	ld   a, e                                        ; $4067: $7b
	sbc  a                                           ; $4068: $9f
	dec  c                                           ; $4069: $0d
	nop                                              ; $406a: $00
	ld   a, [bc]                                     ; $406b: $0a
	ld   b, $a2                                      ; $406c: $06 $a2
	dec  b                                           ; $406e: $05
	inc  e                                           ; $406f: $1c
	dec  c                                           ; $4070: $0d
	ld   [bc], a                                     ; $4071: $02
	ld   [bc], a                                     ; $4072: $02
	ld   bc, $9789                                   ; $4073: $01 $89 $97
	sbc  [hl]                                        ; $4076: $9e
	db   $dd                                         ; $4077: $dd
	and  $dd                                         ; $4078: $e6 $dd
	and  $65                                         ; $407a: $e6 $65
	ld   a, b                                        ; $407c: $78
	ld   d, d                                        ; $407d: $52
	ld   [hl], l                                     ; $407e: $75
	sbc  [hl]                                        ; $407f: $9e
	dec  c                                           ; $4080: $0d
	inc  bc                                          ; $4081: $03
	ld   d, l                                        ; $4082: $55
	inc  b                                           ; $4083: $04
	ret  c                                           ; $4084: $d8

	ld   a, c                                        ; $4085: $79
	pop  de                                          ; $4086: $d1
	push bc                                          ; $4087: $c5
	inc  b                                           ; $4088: $04
	ld   b, l                                        ; $4089: $45
	sbc  d                                           ; $408a: $9a
	ld   [hl], h                                     ; $408b: $74
	dec  c                                           ; $408c: $0d
	inc  bc                                          ; $408d: $03
	ld   h, b                                        ; $408e: $60
	dec  b                                           ; $408f: $05
	ld   c, c                                        ; $4090: $49
	ld   a, h                                        ; $4091: $7c
	inc  b                                           ; $4092: $04
	add  a                                           ; $4093: $87
	ld   a, c                                        ; $4094: $79
	inc  b                                           ; $4095: $04
	ld   b, l                                        ; $4096: $45
	sbc  d                                           ; $4097: $9a
	sbc  c                                           ; $4098: $99
	ld   a, h                                        ; $4099: $7c
	sub  [hl]                                        ; $409a: $96
	sbc  a                                           ; $409b: $9f
	dec  c                                           ; $409c: $0d
	nop                                              ; $409d: $00
	ld   a, [bc]                                     ; $409e: $0a
	rrca                                             ; $409f: $0f
	nop                                              ; $40a0: $00
	ld   bc, $a206                                   ; $40a1: $01 $06 $a2
	dec  b                                           ; $40a4: $05
	inc  e                                           ; $40a5: $1c
	inc  c                                           ; $40a6: $0c
	nop                                              ; $40a7: $00
	nop                                              ; $40a8: $00
	ld   bc, $7d75                                   ; $40a9: $01 $75 $7d
	inc  bc                                          ; $40ac: $03
	ld   l, b                                        ; $40ad: $68
	ld   a, c                                        ; $40ae: $79
	sbc  [hl]                                        ; $40af: $9e
	inc  bc                                          ; $40b0: $03
	ret  nz                                          ; $40b1: $c0

	inc  bc                                          ; $40b2: $03
	ld   d, d                                        ; $40b3: $52
	dec  b                                           ; $40b4: $05
	db   $e4                                         ; $40b5: $e4
	ld   a, c                                        ; $40b6: $79
	sub  b                                           ; $40b7: $90
	ld   a, b                                        ; $40b8: $78
	sub  a                                           ; $40b9: $97
	ld   a, b                                        ; $40ba: $78
	ld   d, d                                        ; $40bb: $52
	dec  c                                           ; $40bc: $0d
	ld   h, c                                        ; $40bd: $61
	sbc  d                                           ; $40be: $9a
	sub  a                                           ; $40bf: $97
	ld   a, h                                        ; $40c0: $7c
	inc  bc                                          ; $40c1: $03
	ld   d, l                                        ; $40c2: $55
	dec  b                                           ; $40c3: $05
	ld   h, d                                        ; $40c4: $62
	and  b                                           ; $40c5: $a0
	or   l                                           ; $40c6: $b5
	ldh  [rDIV], a                                   ; $40c7: $e0 $04
	add  a                                           ; $40c9: $87
	ld   a, c                                        ; $40ca: $79
	dec  c                                           ; $40cb: $0d
	inc  bc                                          ; $40cc: $03
	ld   a, [hl-]                                    ; $40cd: $3a
	ld   [hl], h                                     ; $40ce: $74
	ld   [hl], h                                     ; $40cf: $74
	ld   d, d                                        ; $40d0: $52
	ld   [hl], c                                     ; $40d1: $71
	ld   [hl], h                                     ; $40d2: $74
	ld   e, l                                        ; $40d3: $5d
	ld   l, [hl]                                     ; $40d4: $6e
	ld   h, e                                        ; $40d5: $63
	ld   d, d                                        ; $40d6: $52
	sbc  a                                           ; $40d7: $9f
	dec  c                                           ; $40d8: $0d
	nop                                              ; $40d9: $00
	ld   a, [bc]                                     ; $40da: $0a
	add  hl, de                                      ; $40db: $19
	dec  b                                           ; $40dc: $05
	ld   [bc], a                                     ; $40dd: $02
	ld   l, e                                        ; $40de: $6b
	ld   a, h                                        ; $40df: $7c
	adc  h                                           ; $40e0: $8c
	adc  h                                           ; $40e1: $8c
	or   l                                           ; $40e2: $b5
	ldh  [rDIV], a                                   ; $40e3: $e0 $04
	add  a                                           ; $40e5: $87
	ld   a, c                                        ; $40e6: $79
	inc  bc                                          ; $40e7: $03
	ld   a, [hl-]                                    ; $40e8: $3a
	ld   [hl], h                                     ; $40e9: $74
	sbc  c                                           ; $40ea: $99
	nop                                              ; $40eb: $00
	nop                                              ; $40ec: $00
	ld   l, a                                        ; $40ed: $6f
	ld   e, h                                        ; $40ee: $5c
	ld   [hl], c                                     ; $40ef: $71
	ld   [hl], h                                     ; $40f0: $74
	or   l                                           ; $40f1: $b5
	ldh  [rDIV], a                                   ; $40f2: $e0 $04
	add  a                                           ; $40f4: $87
	ld   a, c                                        ; $40f5: $79
	inc  bc                                          ; $40f6: $03
	ld   a, [hl-]                                    ; $40f7: $3a
	ld   [hl], h                                     ; $40f8: $74
	sbc  c                                           ; $40f9: $99
	nop                                              ; $40fa: $00
	ld   bc, $0e07                                   ; $40fb: $01 $07 $0e
	ld   b, $02                                      ; $40fe: $06 $02
	inc  bc                                          ; $4100: $03
	ld   bc, $2000                                   ; $4101: $01 $00 $20
	nop                                              ; $4104: $00
	rlca                                             ; $4105: $07
	add  e                                           ; $4106: $83
	ld   b, $02                                      ; $4107: $06 $02
	inc  bc                                          ; $4109: $03
	ld   bc, $2001                                   ; $410a: $01 $01 $20
	nop                                              ; $410d: $00
	ld   b, $d5                                      ; $410e: $06 $d5
	ld   b, $1c                                      ; $4110: $06 $1c
	dec  c                                           ; $4112: $0d
	ld   [bc], a                                     ; $4113: $02
	ld   [bc], a                                     ; $4114: $02
	ld   bc, $956f                                   ; $4115: $01 $6f $95
	ld   [hl], c                                     ; $4118: $71
	halt                                             ; $4119: $76
	ld   a, [$6b0d]                                  ; $411a: $fa $0d $6b
	ld   a, h                                        ; $411d: $7c
	adc  h                                           ; $411e: $8c
	adc  h                                           ; $411f: $8c
	ld   [hl], l                                     ; $4120: $75
	sbc  [hl]                                        ; $4121: $9e
	or   l                                           ; $4122: $b5
	ldh  [rDIV], a                                   ; $4123: $e0 $04
	add  a                                           ; $4125: $87
	ld   a, c                                        ; $4126: $79
	dec  c                                           ; $4127: $0d
	inc  b                                           ; $4128: $04
	ld   b, l                                        ; $4129: $45
	sbc  d                                           ; $412a: $9a
	ld   a, b                                        ; $412b: $78
	ld   d, d                                        ; $412c: $52
	ld   [hl], l                                     ; $412d: $75
	sub  [hl]                                        ; $412e: $96
	sbc  a                                           ; $412f: $9f
	dec  c                                           ; $4130: $0d
	nop                                              ; $4131: $00
	ld   a, [bc]                                     ; $4132: $0a
	ld   bc, $5461                                   ; $4133: $01 $61 $54
	ld   d, d                                        ; $4136: $52
	ld   d, h                                        ; $4137: $54
	inc  bc                                          ; $4138: $03
	ld   d, l                                        ; $4139: $55
	dec  b                                           ; $413a: $05
	ld   h, d                                        ; $413b: $62
	ld   a, l                                        ; $413c: $7d
	sbc  [hl]                                        ; $413d: $9e
	ld   l, a                                        ; $413e: $6f
	sub  c                                           ; $413f: $91
	and  c                                           ; $4140: $a1
	halt                                             ; $4141: $76
	dec  c                                           ; $4142: $0d
	ld   l, a                                        ; $4143: $6f
	ld   e, h                                        ; $4144: $5c
	ld   [hl], c                                     ; $4145: $71
	ld   [hl], h                                     ; $4146: $74
	inc  bc                                          ; $4147: $03
	ld   a, [hl-]                                    ; $4148: $3a
	ld   [hl], h                                     ; $4149: $74
	ld   [hl], h                                     ; $414a: $74
	ld   l, a                                        ; $414b: $6f
	sub  l                                           ; $414c: $95
	ld   d, h                                        ; $414d: $54
	ld   l, [hl]                                     ; $414e: $6e
	ld   d, d                                        ; $414f: $52
	sbc  a                                           ; $4150: $9f
	dec  c                                           ; $4151: $0d
	nop                                              ; $4152: $00
	ld   a, [bc]                                     ; $4153: $0a
	inc  e                                           ; $4154: $1c
	inc  c                                           ; $4155: $0c
	inc  bc                                          ; $4156: $03
	inc  bc                                          ; $4157: $03
	ld   bc, $8f62                                   ; $4158: $01 $62 $8f
	and  c                                           ; $415b: $a1
	ld   a, b                                        ; $415c: $78
	ld   h, e                                        ; $415d: $63
	ld   d, d                                        ; $415e: $52
	rst  $38                                         ; $415f: $ff
	rst  $38                                         ; $4160: $ff
	dec  c                                           ; $4161: $0d
	ld   l, e                                        ; $4162: $6b
	ld   d, h                                        ; $4163: $54
	ld   d, d                                        ; $4164: $52
	ld   d, h                                        ; $4165: $54
	ld   h, c                                        ; $4166: $61
	halt                                             ; $4167: $76
	ld   a, l                                        ; $4168: $7d
	inc  b                                           ; $4169: $04
	dec  hl                                          ; $416a: $2b
	ld   [hl], c                                     ; $416b: $71
	ld   [hl], h                                     ; $416c: $74
	sbc  c                                           ; $416d: $99
	ld   e, c                                        ; $416e: $59
	halt                                             ; $416f: $76
	dec  c                                           ; $4170: $0d
	dec  b                                           ; $4171: $05
	pop  de                                          ; $4172: $d1
	ld   [hl], c                                     ; $4173: $71
	ld   [hl], h                                     ; $4174: $74
	ld   l, l                                        ; $4175: $6d
	and  c                                           ; $4176: $a1
	ld   [hl], l                                     ; $4177: $75
	rst  $38                                         ; $4178: $ff
	rst  $38                                         ; $4179: $ff
	dec  c                                           ; $417a: $0d
	nop                                              ; $417b: $00
	ld   a, [bc]                                     ; $417c: $0a
	dec  c                                           ; $417d: $0d
	nop                                              ; $417e: $00
	nop                                              ; $417f: $00
	rrca                                             ; $4180: $0f
	nop                                              ; $4181: $00
	ld   bc, $0006                                   ; $4182: $01 $06 $00
	rlca                                             ; $4185: $07
	inc  e                                           ; $4186: $1c
	dec  c                                           ; $4187: $0d
	ld   bc, $0101                                   ; $4188: $01 $01 $01
	ld   l, e                                        ; $418b: $6b
	ld   d, h                                        ; $418c: $54
	ld   l, e                                        ; $418d: $6b
	ld   d, h                                        ; $418e: $54
	sbc  a                                           ; $418f: $9f
	dec  c                                           ; $4190: $0d
	ld   h, c                                        ; $4191: $61
	ld   a, h                                        ; $4192: $7c
	inc  bc                                          ; $4193: $03
	ld   l, e                                        ; $4194: $6b
	ld   a, h                                        ; $4195: $7c
	inc  bc                                          ; $4196: $03
	ld   d, l                                        ; $4197: $55
	dec  b                                           ; $4198: $05
	ld   h, d                                        ; $4199: $62
	ld   a, l                                        ; $419a: $7d
	sbc  [hl]                                        ; $419b: $9e
	ld   l, a                                        ; $419c: $6f
	ld   e, h                                        ; $419d: $5c
	ld   [hl], c                                     ; $419e: $71
	ld   [hl], h                                     ; $419f: $74
	dec  c                                           ; $41a0: $0d
	inc  bc                                          ; $41a1: $03
	ld   a, [hl-]                                    ; $41a2: $3a
	ld   [hl], h                                     ; $41a3: $74
	ld   a, b                                        ; $41a4: $78
	ld   d, d                                        ; $41a5: $52
	halt                                             ; $41a6: $76
	ld   a, e                                        ; $41a7: $7b
	sbc  a                                           ; $41a8: $9f
	dec  c                                           ; $41a9: $0d
	nop                                              ; $41aa: $00
	ld   a, [bc]                                     ; $41ab: $0a
	dec  b                                           ; $41ac: $05
	ld   b, b                                        ; $41ad: $40
	rst  $38                                         ; $41ae: $ff
	inc  bc                                          ; $41af: $03
	rst  $38                                         ; $41b0: $ff
	ld   bc, $2801                                   ; $41b1: $01 $01 $28
	nop                                              ; $41b4: $00
	inc  e                                           ; $41b5: $1c
	inc  c                                           ; $41b6: $0c
	ld   bc, $0101                                   ; $41b7: $01 $01 $01
	ld   [$6300], sp                                 ; $41ba: $08 $00 $63
	and  c                                           ; $41bd: $a1
	sbc  [hl]                                        ; $41be: $9e
	dec  c                                           ; $41bf: $0d
	sub  [hl]                                        ; $41c0: $96
	ld   e, l                                        ; $41c1: $5d
	ld   h, d                                        ; $41c2: $62
	inc  bc                                          ; $41c3: $03
	push bc                                          ; $41c4: $c5
	ld   h, [hl]                                     ; $41c5: $66
	ld   a, b                                        ; $41c6: $78
	and  c                                           ; $41c7: $a1
	ld   [hl], l                                     ; $41c8: $75
	ld   h, a                                        ; $41c9: $67
	ld   a, e                                        ; $41ca: $7b
	sbc  a                                           ; $41cb: $9f
	dec  c                                           ; $41cc: $0d
	nop                                              ; $41cd: $00
	ld   a, [bc]                                     ; $41ce: $0a
	dec  c                                           ; $41cf: $0d
	nop                                              ; $41d0: $00
	nop                                              ; $41d1: $00
	rrca                                             ; $41d2: $0f
	nop                                              ; $41d3: $00
	ld   bc, $0006                                   ; $41d4: $01 $06 $00
	rlca                                             ; $41d7: $07
	inc  e                                           ; $41d8: $1c
	dec  c                                           ; $41d9: $0d
	ld   [bc], a                                     ; $41da: $02
	ld   [bc], a                                     ; $41db: $02
	ld   bc, $9789                                   ; $41dc: $01 $89 $97
	sbc  [hl]                                        ; $41df: $9e
	db   $dd                                         ; $41e0: $dd
	and  $dd                                         ; $41e1: $e6 $dd
	and  $65                                         ; $41e3: $e6 $65
	ld   a, b                                        ; $41e5: $78
	ld   d, d                                        ; $41e6: $52
	ld   [hl], l                                     ; $41e7: $75
	sbc  a                                           ; $41e8: $9f
	dec  c                                           ; $41e9: $0d
	ld   l, a                                        ; $41ea: $6f
	ld   e, h                                        ; $41eb: $5c
	ld   [hl], c                                     ; $41ec: $71
	ld   [hl], h                                     ; $41ed: $74
	or   l                                           ; $41ee: $b5
	ldh  [rDIV], a                                   ; $41ef: $e0 $04
	add  a                                           ; $41f1: $87
	ld   a, c                                        ; $41f2: $79
	inc  bc                                          ; $41f3: $03
	ld   a, [hl-]                                    ; $41f4: $3a
	ld   [hl], h                                     ; $41f5: $74
	sbc  c                                           ; $41f6: $99
	ld   a, h                                        ; $41f7: $7c
	sub  [hl]                                        ; $41f8: $96
	sbc  a                                           ; $41f9: $9f
	dec  c                                           ; $41fa: $0d
	nop                                              ; $41fb: $00
	ld   a, [bc]                                     ; $41fc: $0a
	dec  c                                           ; $41fd: $0d
	nop                                              ; $41fe: $00
	nop                                              ; $41ff: $00
	rrca                                             ; $4200: $0f
	nop                                              ; $4201: $00
	ld   bc, $0b0c                                   ; $4202: $01 $0c $0b
	ld   bc, $5483                                   ; $4205: $01 $83 $54
	rst  $38                                         ; $4208: $ff
	rst  $38                                         ; $4209: $ff
	sub  [hl]                                        ; $420a: $96
	ld   d, h                                        ; $420b: $54
	sub  d                                           ; $420c: $92
	ld   e, l                                        ; $420d: $5d
	inc  bc                                          ; $420e: $03
	ld   a, [hl]                                     ; $420f: $7e
	sbc  l                                           ; $4210: $9d
	ld   [hl], c                                     ; $4211: $71
	ld   l, l                                        ; $4212: $6d
	sbc  a                                           ; $4213: $9f
	dec  c                                           ; $4214: $0d
	nop                                              ; $4215: $00
	ld   a, [bc]                                     ; $4216: $0a
	rlca                                             ; $4217: $07
	ld   a, b                                        ; $4218: $78
	rlca                                             ; $4219: $07
	inc  bc                                          ; $421a: $03
	rst  $38                                         ; $421b: $ff
	ld   bc, $2002                                   ; $421c: $01 $02 $20
	nop                                              ; $421f: $00
	rlca                                             ; $4220: $07
	and  [hl]                                        ; $4221: $a6
	rlca                                             ; $4222: $07
	inc  bc                                          ; $4223: $03
	rst  $38                                         ; $4224: $ff
	ld   bc, $2301                                   ; $4225: $01 $01 $23
	nop                                              ; $4228: $00
	inc  e                                           ; $4229: $1c
	inc  c                                           ; $422a: $0c
	ld   bc, $0101                                   ; $422b: $01 $01 $01
	ld   d, b                                        ; $422e: $50
	sbc  b                                           ; $422f: $98
	ld   e, d                                        ; $4230: $5a
	halt                                             ; $4231: $76
	ld   d, h                                        ; $4232: $54
	ld   h, d                                        ; $4233: $62
	ld   h, h                                        ; $4234: $64
	ld   d, d                                        ; $4235: $52
	adc  h                                           ; $4236: $8c
	ld   h, a                                        ; $4237: $67
	sbc  a                                           ; $4238: $9f
	dec  c                                           ; $4239: $0d
	ld   e, b                                        ; $423a: $58
	ld   e, c                                        ; $423b: $59
	ld   h, b                                        ; $423c: $60
	ld   h, e                                        ; $423d: $63
	adc  h                                           ; $423e: $8c
	ld   [hl], l                                     ; $423f: $75
	sbc  [hl]                                        ; $4240: $9e
	ld   h, a                                        ; $4241: $67
	ld   h, d                                        ; $4242: $62
	ld   e, l                                        ; $4243: $5d
	inc  bc                                          ; $4244: $03
	ld   [hl], b                                     ; $4245: $70
	ld   e, l                                        ; $4246: $5d
	dec  c                                           ; $4247: $0d
	inc  bc                                          ; $4248: $03
	ld   a, [hl]                                     ; $4249: $7e
	sbc  l                                           ; $424a: $9d
	sub  a                                           ; $424b: $97
	ld   l, c                                        ; $424c: $69
	sbc  c                                           ; $424d: $99
	ld   h, c                                        ; $424e: $61
	halt                                             ; $424f: $76
	ld   e, d                                        ; $4250: $5a
	ld   [hl], l                                     ; $4251: $75
	ld   e, e                                        ; $4252: $5b
	adc  h                                           ; $4253: $8c
	ld   h, l                                        ; $4254: $65
	ld   l, l                                        ; $4255: $6d
	sbc  a                                           ; $4256: $9f
	dec  c                                           ; $4257: $0d
	nop                                              ; $4258: $00
	ld   a, [bc]                                     ; $4259: $0a
	inc  e                                           ; $425a: $1c
	dec  c                                           ; $425b: $0d
	ld   bc, $0101                                   ; $425c: $01 $01 $01
	inc  b                                           ; $425f: $04
	adc  a                                           ; $4260: $8f
	inc  b                                           ; $4261: $04
	jr   jr_066_42dd                                 ; $4262: $18 $79

	inc  bc                                          ; $4264: $03
	ld   e, e                                        ; $4265: $5b
	ld   e, c                                        ; $4266: $59
	ld   [hl], c                                     ; $4267: $71
	ld   l, l                                        ; $4268: $6d
	sbc  l                                           ; $4269: $9d
	sbc  a                                           ; $426a: $9f
	dec  c                                           ; $426b: $0d
	adc  h                                           ; $426c: $8c
	ld   l, l                                        ; $426d: $6d
	sbc  [hl]                                        ; $426e: $9e
	sub  [hl]                                        ; $426f: $96
	sbc  e                                           ; $4270: $9b
	ld   h, l                                        ; $4271: $65
	ld   e, l                                        ; $4272: $5d
	ld   a, e                                        ; $4273: $7b
	sbc  a                                           ; $4274: $9f
	dec  c                                           ; $4275: $0d
	nop                                              ; $4276: $00
	ld   a, [bc]                                     ; $4277: $0a
	ld   b, $e9                                      ; $4278: $06 $e9
	rlca                                             ; $427a: $07
	inc  e                                           ; $427b: $1c
	inc  c                                           ; $427c: $0c
	nop                                              ; $427d: $00
	nop                                              ; $427e: $00
	ld   bc, $7c61                                   ; $427f: $01 $61 $7c
	ld   e, [hl]                                     ; $4282: $5e
	sub  a                                           ; $4283: $97
	ld   d, d                                        ; $4284: $52
	ld   [hl], l                                     ; $4285: $75
	sbc  [hl]                                        ; $4286: $9e
	ld   e, a                                        ; $4287: $5f
	ld   [hl], c                                     ; $4288: $71
	ld   h, c                                        ; $4289: $61
	ld   d, h                                        ; $428a: $54
	ld   [hl], l                                     ; $428b: $75
	ld   h, a                                        ; $428c: $67
	sbc  a                                           ; $428d: $9f
	dec  c                                           ; $428e: $0d
	ld   d, b                                        ; $428f: $50
	sbc  b                                           ; $4290: $98
	ld   e, d                                        ; $4291: $5a
	halt                                             ; $4292: $76
	ld   d, h                                        ; $4293: $54
	ld   h, d                                        ; $4294: $62
	ld   h, h                                        ; $4295: $64
	ld   d, d                                        ; $4296: $52
	adc  h                                           ; $4297: $8c
	ld   h, l                                        ; $4298: $65
	ld   l, l                                        ; $4299: $6d
	sbc  a                                           ; $429a: $9f
	dec  c                                           ; $429b: $0d
	nop                                              ; $429c: $00
	ld   a, [bc]                                     ; $429d: $0a
	dec  c                                           ; $429e: $0d
	nop                                              ; $429f: $00
	nop                                              ; $42a0: $00
	rrca                                             ; $42a1: $0f
	nop                                              ; $42a2: $00
	ld   bc, $020c                                   ; $42a3: $01 $0c $02
	ld   b, $03                                      ; $42a6: $06 $03
	ld   [$0c1c], sp                                 ; $42a8: $08 $1c $0c
	inc  bc                                          ; $42ab: $03
	inc  bc                                          ; $42ac: $03
	ld   bc, $a502                                   ; $42ad: $01 $02 $a5
	inc  b                                           ; $42b0: $04
	xor  d                                           ; $42b1: $aa
	ld   a, l                                        ; $42b2: $7d
	sbc  [hl]                                        ; $42b3: $9e
	ld   h, c                                        ; $42b4: $61
	sbc  d                                           ; $42b5: $9a
	ld   e, [hl]                                     ; $42b6: $5e
	sub  a                                           ; $42b7: $97
	ld   d, d                                        ; $42b8: $52
	ld   [hl], l                                     ; $42b9: $75
	dec  c                                           ; $42ba: $0d
	ld   e, a                                        ; $42bb: $5f
	ld   [hl], c                                     ; $42bc: $71
	ld   h, c                                        ; $42bd: $61
	ld   d, h                                        ; $42be: $54
	ld   [hl], l                                     ; $42bf: $75
	ld   h, a                                        ; $42c0: $67
	rst  $38                                         ; $42c1: $ff
	rst  $38                                         ; $42c2: $ff
	dec  c                                           ; $42c3: $0d
	nop                                              ; $42c4: $00
	ld   a, [bc]                                     ; $42c5: $0a
	inc  e                                           ; $42c6: $1c
	dec  c                                           ; $42c7: $0d
	ld   [bc], a                                     ; $42c8: $02
	ld   [bc], a                                     ; $42c9: $02
	ld   bc, $5659                                   ; $42ca: $01 $59 $56
	ld   [hl], c                                     ; $42cd: $71
	ld   [hl], h                                     ; $42ce: $74
	inc  bc                                          ; $42cf: $03
	dec  c                                           ; $42d0: $0d
	ld   [bc], a                                     ; $42d1: $02
	jp   $835a                                       ; $42d2: $c3 $5a $83


	ld   d, [hl]                                     ; $42d5: $56
	ld   l, l                                        ; $42d6: $6d
	sbc  l                                           ; $42d7: $9d
	sbc  a                                           ; $42d8: $9f
	dec  c                                           ; $42d9: $0d
	inc  b                                           ; $42da: $04
	ld   c, $03                                      ; $42db: $0e $03

jr_066_42dd:
	sub  b                                           ; $42dd: $90
	ld   h, e                                        ; $42de: $63
	and  c                                           ; $42df: $a1
	halt                                             ; $42e0: $76
	ld   a, l                                        ; $42e1: $7d
	inc  b                                           ; $42e2: $04
	ld   c, $6f                                      ; $42e3: $0e $6f
	ld   e, d                                        ; $42e5: $5a
	ld   d, d                                        ; $42e6: $52
	ld   a, e                                        ; $42e7: $7b
	sbc  a                                           ; $42e8: $9f
	dec  c                                           ; $42e9: $0d
	nop                                              ; $42ea: $00
	ld   a, [bc]                                     ; $42eb: $0a
	inc  e                                           ; $42ec: $1c
	inc  c                                           ; $42ed: $0c
	nop                                              ; $42ee: $00
	nop                                              ; $42ef: $00
	ld   bc, $5d62                                   ; $42f0: $01 $62 $5d
	sbc  e                                           ; $42f3: $9b
	ld   d, h                                        ; $42f4: $54
	ld   h, e                                        ; $42f5: $63
	adc  h                                           ; $42f6: $8c
	ld   [hl], l                                     ; $42f7: $75
	ld   h, l                                        ; $42f8: $65
	ld   l, l                                        ; $42f9: $6d
	sbc  a                                           ; $42fa: $9f
	dec  c                                           ; $42fb: $0d
	nop                                              ; $42fc: $00
	ld   a, [bc]                                     ; $42fd: $0a
	dec  c                                           ; $42fe: $0d
	nop                                              ; $42ff: $00
	nop                                              ; $4300: $00
	rrca                                             ; $4301: $0f
	nop                                              ; $4302: $00
	ld   bc, $020c                                   ; $4303: $01 $0c $02
	ld   c, $5a                                      ; $4306: $0e $5a
	dec  b                                           ; $4308: $05
	ld   b, b                                        ; $4309: $40
	rst  $38                                         ; $430a: $ff
	ld   bc, $0000                                   ; $430b: $01 $00 $00
	ld   bc, $7463                                   ; $430e: $01 $63 $74
	sbc  [hl]                                        ; $4311: $9e
	inc  bc                                          ; $4312: $03
	ld   l, b                                        ; $4313: $68
	ld   a, l                                        ; $4314: $7d
	inc  bc                                          ; $4315: $03
	ld   l, d                                        ; $4316: $6a
	inc  bc                                          ; $4317: $03
	db   $db                                         ; $4318: $db
	ld   a, c                                        ; $4319: $79
	ld   [hl], l                                     ; $431a: $75
	sub  b                                           ; $431b: $90
	dec  c                                           ; $431c: $0d
	ld   [bc], a                                     ; $431d: $02
	ld   a, a                                        ; $431e: $7f
	ld   [hl], c                                     ; $431f: $71
	ld   [hl], h                                     ; $4320: $74
	adc  l                                           ; $4321: $8d
	sbc  c                                           ; $4322: $99
	ld   e, c                                        ; $4323: $59
	ld   a, b                                        ; $4324: $78
	sbc  a                                           ; $4325: $9f
	dec  c                                           ; $4326: $0d
	nop                                              ; $4327: $00
	ld   a, [bc]                                     ; $4328: $0a
	ld   b, $29                                      ; $4329: $06 $29
	ld   [$2623], sp                                 ; $432b: $08 $23 $26
	ld   bc, $6161                                   ; $432e: $01 $61 $61
	ld   a, c                                        ; $4331: $79
	ld   a, l                                        ; $4332: $7d
	inc  bc                                          ; $4333: $03
	xor  c                                           ; $4334: $a9
	sub  b                                           ; $4335: $90
	ld   d, d                                        ; $4336: $52
	ld   a, b                                        ; $4337: $78
	ld   d, d                                        ; $4338: $52
	ld   a, h                                        ; $4339: $7c
	ld   e, c                                        ; $433a: $59
	ld   a, b                                        ; $433b: $78
	ld   sp, hl                                      ; $433c: $f9
	dec  c                                           ; $433d: $0d
	nop                                              ; $433e: $00
	ld   a, [bc]                                     ; $433f: $0a
	inc  e                                           ; $4340: $1c
	inc  bc                                          ; $4341: $03
	nop                                              ; $4342: $00
	nop                                              ; $4343: $00
	ld   bc, $0008                                   ; $4344: $01 $08 $00
	ld   e, l                                        ; $4347: $5d
	and  c                                           ; $4348: $a1
	sbc  a                                           ; $4349: $9f
	dec  c                                           ; $434a: $0d
	nop                                              ; $434b: $00
	ld   a, [bc]                                     ; $434c: $0a
	ld   bc, $956f                                   ; $434d: $01 $6f $95
	ld   d, h                                        ; $4350: $54
	ld   [hl], a                                     ; $4351: $77
	sub  [hl]                                        ; $4352: $96
	ld   e, c                                        ; $4353: $59
	ld   [hl], c                                     ; $4354: $71
	ld   l, l                                        ; $4355: $6d
	sbc  l                                           ; $4356: $9d
	sbc  [hl]                                        ; $4357: $9e
	dec  c                                           ; $4358: $0d
	ld   l, a                                        ; $4359: $6f
	sub  l                                           ; $435a: $95
	ld   [hl], c                                     ; $435b: $71
	halt                                             ; $435c: $76
	inc  bc                                          ; $435d: $03
	ld   l, e                                        ; $435e: $6b
	inc  b                                           ; $435f: $04
	ld   [de], a                                     ; $4360: $12
	ld   [hl], c                                     ; $4361: $71
	ld   [hl], h                                     ; $4362: $74
	adc  c                                           ; $4363: $89
	ld   h, l                                        ; $4364: $65
	ld   d, d                                        ; $4365: $52
	ld   a, h                                        ; $4366: $7c
	sbc  a                                           ; $4367: $9f
	dec  c                                           ; $4368: $0d
	nop                                              ; $4369: $00
	ld   a, [bc]                                     ; $436a: $0a
	add  hl, de                                      ; $436b: $19
	dec  b                                           ; $436c: $05
	ld   [bc], a                                     ; $436d: $02
	ld   [bc], a                                     ; $436e: $02
	inc  l                                           ; $436f: $2c
	ld   e, e                                        ; $4370: $5b
	ld   [bc], a                                     ; $4371: $02
	rst  $38                                         ; $4372: $ff
	ld   e, a                                        ; $4373: $5f
	sbc  c                                           ; $4374: $99
	nop                                              ; $4375: $00
	nop                                              ; $4376: $00
	ld   [bc], a                                     ; $4377: $02
	inc  l                                           ; $4378: $2c
	ld   e, e                                        ; $4379: $5b
	ld   [bc], a                                     ; $437a: $02
	rst  $38                                         ; $437b: $ff
	ld   e, a                                        ; $437c: $5f
	ld   a, b                                        ; $437d: $78
	ld   d, d                                        ; $437e: $52
	nop                                              ; $437f: $00
	ld   bc, $9307                                   ; $4380: $01 $07 $93
	ld   [$0302], sp                                 ; $4383: $08 $02 $03
	ld   bc, $2000                                   ; $4386: $01 $00 $20
	nop                                              ; $4389: $00
	rlca                                             ; $438a: $07
	db   $ed                                         ; $438b: $ed
	ld   [$0302], sp                                 ; $438c: $08 $02 $03
	ld   bc, $2001                                   ; $438f: $01 $01 $20
	nop                                              ; $4392: $00
	ld   b, $2f                                      ; $4393: $06 $2f
	add  hl, bc                                      ; $4395: $09
	rrca                                             ; $4396: $0f
	nop                                              ; $4397: $00
	ld   bc, $9d01                                   ; $4398: $01 $01 $9d
	ld   e, c                                        ; $439b: $59
	sbc  b                                           ; $439c: $98
	adc  h                                           ; $439d: $8c
	ld   h, l                                        ; $439e: $65
	ld   l, l                                        ; $439f: $6d
	sbc  a                                           ; $43a0: $9f
	dec  c                                           ; $43a1: $0d
	sub  [hl]                                        ; $43a2: $96
	sbc  e                                           ; $43a3: $9b
	ld   h, c                                        ; $43a4: $61
	and  c                                           ; $43a5: $a1
	ld   [hl], l                                     ; $43a6: $75
	ld   e, b                                        ; $43a7: $58
	ld   [bc], a                                     ; $43a8: $02
	inc  l                                           ; $43a9: $2c
	ld   e, e                                        ; $43aa: $5b
	ld   [bc], a                                     ; $43ab: $02
	rst  $38                                         ; $43ac: $ff
	ld   e, a                                        ; $43ad: $5f
	ld   h, l                                        ; $43ae: $65
	adc  h                                           ; $43af: $8c
	ld   h, a                                        ; $43b0: $67
	sbc  a                                           ; $43b1: $9f
	dec  c                                           ; $43b2: $0d
	nop                                              ; $43b3: $00
	ld   a, [bc]                                     ; $43b4: $0a
	dec  b                                           ; $43b5: $05
	ld   b, b                                        ; $43b6: $40
	ld   h, l                                        ; $43b7: $65
	inc  bc                                          ; $43b8: $03
	ld   h, l                                        ; $43b9: $65
	ld   bc, $2801                                   ; $43ba: $01 $01 $28
	nop                                              ; $43bd: $00
	inc  e                                           ; $43be: $1c
	inc  bc                                          ; $43bf: $03
	inc  bc                                          ; $43c0: $03
	inc  bc                                          ; $43c1: $03
	dec  e                                           ; $43c2: $1d
	ld   b, b                                        ; $43c3: $40
	inc  de                                          ; $43c4: $13
	inc  bc                                          ; $43c5: $03
	inc  de                                          ; $43c6: $13
	ld   bc, $2802                                   ; $43c7: $01 $02 $28
	nop                                              ; $43ca: $00
	ld   bc, $676d                                   ; $43cb: $01 $6d $67
	ld   e, c                                        ; $43ce: $59
	sbc  c                                           ; $43cf: $99
	sbc  l                                           ; $43d0: $9d
	sbc  a                                           ; $43d1: $9f
	dec  c                                           ; $43d2: $0d
	ld   h, [hl]                                     ; $43d3: $66
	sub  c                                           ; $43d4: $91
	sbc  [hl]                                        ; $43d5: $9e
	ld   l, a                                        ; $43d6: $6f
	sub  l                                           ; $43d7: $95
	ld   [hl], c                                     ; $43d8: $71
	halt                                             ; $43d9: $76
	ld   h, c                                        ; $43da: $61
	ld   [hl], c                                     ; $43db: $71
	ld   l, a                                        ; $43dc: $6f
	ld   a, c                                        ; $43dd: $79
	dec  b                                           ; $43de: $05
	db   $10                                         ; $43df: $10
	ld   [hl], h                                     ; $43e0: $74
	sbc  a                                           ; $43e1: $9f
	dec  c                                           ; $43e2: $0d
	nop                                              ; $43e3: $00
	ld   a, [bc]                                     ; $43e4: $0a
	dec  c                                           ; $43e5: $0d
	nop                                              ; $43e6: $00
	nop                                              ; $43e7: $00
	rrca                                             ; $43e8: $0f
	nop                                              ; $43e9: $00
	ld   bc, $020c                                   ; $43ea: $01 $0c $02
	ld   b, $93                                      ; $43ed: $06 $93
	add  hl, bc                                      ; $43ef: $09
	rrca                                             ; $43f0: $0f
	nop                                              ; $43f1: $00
	ld   bc, $6701                                   ; $43f2: $01 $01 $67
	adc  l                                           ; $43f5: $8d
	adc  h                                           ; $43f6: $8c
	ld   l, c                                        ; $43f7: $69
	and  c                                           ; $43f8: $a1
	sbc  a                                           ; $43f9: $9f
	dec  c                                           ; $43fa: $0d
	inc  b                                           ; $43fb: $04
	ld   e, $79                                      ; $43fc: $1e $79
	sub  d                                           ; $43fe: $92
	sbc  c                                           ; $43ff: $99
	ld   h, c                                        ; $4400: $61
	halt                                             ; $4401: $76
	ld   e, d                                        ; $4402: $5a
	ld   d, b                                        ; $4403: $50
	sbc  c                                           ; $4404: $99
	ld   a, h                                        ; $4405: $7c
	ld   [hl], l                                     ; $4406: $75
	rst  $38                                         ; $4407: $ff
	rst  $38                                         ; $4408: $ff
	dec  c                                           ; $4409: $0d
	nop                                              ; $440a: $00
	ld   a, [bc]                                     ; $440b: $0a
	inc  e                                           ; $440c: $1c
	inc  bc                                          ; $440d: $03
	inc  b                                           ; $440e: $04
	inc  b                                           ; $440f: $04
	dec  e                                           ; $4410: $1d
	ld   b, b                                        ; $4411: $40
	inc  de                                          ; $4412: $13
	inc  bc                                          ; $4413: $03
	inc  de                                          ; $4414: $13
	ld   bc, $2901                                   ; $4415: $01 $01 $29
	nop                                              ; $4418: $00
	ld   bc, $546b                                   ; $4419: $01 $6b $54
	sbc  [hl]                                        ; $441c: $9e
	inc  bc                                          ; $441d: $03
	jr   z, jr_066_4424                              ; $441e: $28 $04

	ld   c, b                                        ; $4420: $48
	ld   l, [hl]                                     ; $4421: $6e
	sbc  l                                           ; $4422: $9d
	sbc  a                                           ; $4423: $9f

jr_066_4424:
	dec  c                                           ; $4424: $0d
	nop                                              ; $4425: $00
	ld   a, [bc]                                     ; $4426: $0a
	dec  c                                           ; $4427: $0d
	nop                                              ; $4428: $00
	nop                                              ; $4429: $00
	rrca                                             ; $442a: $0f
	nop                                              ; $442b: $00
	ld   bc, $1e09                                   ; $442c: $01 $09 $1e
	ld   b, $79                                      ; $442f: $06 $79
	add  hl, bc                                      ; $4431: $09
	rrca                                             ; $4432: $0f
	nop                                              ; $4433: $00
	ld   bc, $ff01                                   ; $4434: $01 $01 $ff
	rst  $38                                         ; $4437: $ff
	rst  $38                                         ; $4438: $ff
	rst  $38                                         ; $4439: $ff
	dec  c                                           ; $443a: $0d
	nop                                              ; $443b: $00
	ld   a, [bc]                                     ; $443c: $0a
	inc  e                                           ; $443d: $1c
	inc  bc                                          ; $443e: $03
	ld   b, $06                                      ; $443f: $06 $06
	dec  e                                           ; $4441: $1d
	ld   b, b                                        ; $4442: $40
	inc  de                                          ; $4443: $13
	inc  bc                                          ; $4444: $03
	inc  de                                          ; $4445: $13
	ld   bc, $2903                                   ; $4446: $01 $03 $29
	nop                                              ; $4449: $00
	ld   bc, $4904                                   ; $444a: $01 $04 $49
	and  b                                           ; $444d: $a0
	ld   l, [hl]                                     ; $444e: $6e
	adc  h                                           ; $444f: $8c
	ld   [hl], c                                     ; $4450: $71
	ld   [hl], h                                     ; $4451: $74
	sbc  c                                           ; $4452: $99
	ld   a, h                                        ; $4453: $7c
	ld   sp, hl                                      ; $4454: $f9
	dec  c                                           ; $4455: $0d
	inc  b                                           ; $4456: $04
	sub  a                                           ; $4457: $97
	ld   [bc], a                                     ; $4458: $02
	jp   $975e                                       ; $4459: $c3 $5e $97


	ld   d, d                                        ; $445c: $52
	ld   l, a                                        ; $445d: $6f
	sub  c                                           ; $445e: $91
	and  c                                           ; $445f: $a1
	halt                                             ; $4460: $76
	ld   h, l                                        ; $4461: $65
	ld   a, b                                        ; $4462: $78
	ld   h, e                                        ; $4463: $63
	ld   d, d                                        ; $4464: $52
	sbc  a                                           ; $4465: $9f
	dec  c                                           ; $4466: $0d
	nop                                              ; $4467: $00
	ld   a, [bc]                                     ; $4468: $0a
	ld   bc, $5490                                   ; $4469: $01 $90 $54
	ld   d, d                                        ; $446c: $52
	ld   d, d                                        ; $446d: $52
	sbc  l                                           ; $446e: $9d
	rst  $38                                         ; $446f: $ff
	rst  $38                                         ; $4470: $ff
	dec  c                                           ; $4471: $0d
	nop                                              ; $4472: $00
	ld   a, [bc]                                     ; $4473: $0a
	dec  c                                           ; $4474: $0d
	nop                                              ; $4475: $00
	nop                                              ; $4476: $00
	rrca                                             ; $4477: $0f
	nop                                              ; $4478: $00
	ld   bc, $1e09                                   ; $4479: $01 $09 $1e
	rrca                                             ; $447c: $0f
	nop                                              ; $447d: $00
	ld   bc, $6301                                   ; $447e: $01 $01 $63
	ld   [hl], h                                     ; $4481: $74
	sbc  [hl]                                        ; $4482: $9e
	inc  bc                                          ; $4483: $03
	ld   l, b                                        ; $4484: $68
	ld   a, l                                        ; $4485: $7d
	ld   [hl], a                                     ; $4486: $77
	ld   h, c                                        ; $4487: $61
	ld   a, c                                        ; $4488: $79
	ld   [bc], a                                     ; $4489: $02
	ld   a, a                                        ; $448a: $7f
	ld   h, c                                        ; $448b: $61
	ld   d, h                                        ; $448c: $54
	ld   e, c                                        ; $448d: $59
	ld   a, b                                        ; $448e: $78
	sbc  a                                           ; $448f: $9f
	dec  c                                           ; $4490: $0d
	nop                                              ; $4491: $00
	ld   a, [bc]                                     ; $4492: $0a
	ld   b, $2e                                      ; $4493: $06 $2e
	dec  c                                           ; $4495: $0d
	ld   c, $88                                      ; $4496: $0e $88
	inc  e                                           ; $4498: $1c
	inc  bc                                          ; $4499: $03
	nop                                              ; $449a: $00
	nop                                              ; $449b: $00
	ld   bc, $a502                                   ; $449c: $01 $02 $a5
	sbc  [hl]                                        ; $449f: $9e
	db   $dd                                         ; $44a0: $dd
	db   $ed                                         ; $44a1: $ed
	cp   b                                           ; $44a2: $b8
	jp   nz, $03a0                                   ; $44a3: $c2 $a0 $03

	xor  h                                           ; $44a6: $ac
	ld   [hl], c                                     ; $44a7: $71
	ld   [hl], h                                     ; $44a8: $74
	sbc  c                                           ; $44a9: $99
	ld   a, h                                        ; $44aa: $7c
	sbc  a                                           ; $44ab: $9f
	dec  c                                           ; $44ac: $0d
	ld   [$5d00], sp                                 ; $44ad: $08 $00 $5d
	and  c                                           ; $44b0: $a1
	ld   a, c                                        ; $44b1: $79
	ld   a, l                                        ; $44b2: $7d
	call z, $b9f5                                    ; $44b3: $cc $f5 $b9
	push af                                          ; $44b6: $f5
	and  b                                           ; $44b7: $a0
	dec  c                                           ; $44b8: $0d
	inc  bc                                          ; $44b9: $03
	dec  de                                          ; $44ba: $1b
	ld   [hl], c                                     ; $44bb: $71
	ld   [hl], h                                     ; $44bc: $74
	sub  b                                           ; $44bd: $90
	sub  a                                           ; $44be: $97
	ld   e, b                                        ; $44bf: $58
	ld   d, h                                        ; $44c0: $54
	ld   e, c                                        ; $44c1: $59
	ld   h, l                                        ; $44c2: $65
	sub  a                                           ; $44c3: $97
	ld   sp, hl                                      ; $44c4: $f9
	dec  c                                           ; $44c5: $0d
	nop                                              ; $44c6: $00
	ld   a, [bc]                                     ; $44c7: $0a
	rrca                                             ; $44c8: $0f
	nop                                              ; $44c9: $00
	ld   bc, $7d01                                   ; $44ca: $01 $01 $7d
	ld   d, d                                        ; $44cd: $52
	sbc  [hl]                                        ; $44ce: $9e
	sbc  l                                           ; $44cf: $9d
	ld   e, c                                        ; $44d0: $59
	sbc  b                                           ; $44d1: $98
	adc  h                                           ; $44d2: $8c
	ld   h, l                                        ; $44d3: $65
	ld   l, l                                        ; $44d4: $6d
	sbc  a                                           ; $44d5: $9f
	dec  c                                           ; $44d6: $0d
	nop                                              ; $44d7: $00
	ld   a, [bc]                                     ; $44d8: $0a
	add  hl, de                                      ; $44d9: $19
	dec  b                                           ; $44da: $05
	inc  bc                                          ; $44db: $03
	adc  l                                           ; $44dc: $8d
	ld   h, [hl]                                     ; $44dd: $66
	and  c                                           ; $44de: $a1
	inc  bc                                          ; $44df: $03
	dec  de                                          ; $44e0: $1b
	sbc  b                                           ; $44e1: $98
	ld   a, c                                        ; $44e2: $79
	ld   h, a                                        ; $44e3: $67
	sbc  c                                           ; $44e4: $99
	nop                                              ; $44e5: $00
	nop                                              ; $44e6: $00
	ld   e, b                                        ; $44e7: $58
	sbc  e                                           ; $44e8: $9b
	ld   h, l                                        ; $44e9: $65
	ld   [bc], a                                     ; $44ea: $02
	dec  sp                                          ; $44eb: $3b
	ld   [hl], l                                     ; $44ec: $75
	ld   e, b                                        ; $44ed: $58
	sbc  e                                           ; $44ee: $9b
	ld   h, a                                        ; $44ef: $67
	nop                                              ; $44f0: $00
	ld   bc, $7204                                   ; $44f1: $01 $04 $72
	ld   [bc], a                                     ; $44f4: $02
	sbc  e                                           ; $44f5: $9b
	inc  bc                                          ; $44f6: $03
	dec  de                                          ; $44f7: $1b
	sbc  b                                           ; $44f8: $98
	ld   a, c                                        ; $44f9: $79
	ld   h, a                                        ; $44fa: $67
	sbc  c                                           ; $44fb: $99
	nop                                              ; $44fc: $00
	ld   [bc], a                                     ; $44fd: $02
	rlca                                             ; $44fe: $07
	add  hl, de                                      ; $44ff: $19
	ld   a, [bc]                                     ; $4500: $0a
	ld   [bc], a                                     ; $4501: $02
	inc  bc                                          ; $4502: $03
	ld   bc, $2000                                   ; $4503: $01 $00 $20
	nop                                              ; $4506: $00
	rlca                                             ; $4507: $07
	jr   c, jr_066_4514                              ; $4508: $38 $0a

	ld   [bc], a                                     ; $450a: $02
	inc  bc                                          ; $450b: $03
	ld   bc, $2001                                   ; $450c: $01 $01 $20
	nop                                              ; $450f: $00
	rlca                                             ; $4510: $07
	ld   d, [hl]                                     ; $4511: $56
	ld   a, [bc]                                     ; $4512: $0a
	ld   [bc], a                                     ; $4513: $02

jr_066_4514:
	inc  bc                                          ; $4514: $03
	ld   bc, $2002                                   ; $4515: $01 $02 $20
	nop                                              ; $4518: $00
	ld   b, $8c                                      ; $4519: $06 $8c
	ld   a, [bc]                                     ; $451b: $0a
	inc  e                                           ; $451c: $1c
	inc  bc                                          ; $451d: $03
	inc  b                                           ; $451e: $04
	inc  b                                           ; $451f: $04
	ld   bc, $a16b                                   ; $4520: $01 $6b $a1
	ld   a, b                                        ; $4523: $78
	ld   a, c                                        ; $4524: $79
	dec  b                                           ; $4525: $05
	push bc                                          ; $4526: $c5
	ld   e, c                                        ; $4527: $59
	ld   e, l                                        ; $4528: $5d
	inc  bc                                          ; $4529: $03
	dec  de                                          ; $452a: $1b
	ld   [hl], c                                     ; $452b: $71
	ld   [hl], h                                     ; $452c: $74
	dec  c                                           ; $452d: $0d
	ld   [hl], a                                     ; $452e: $77
	ld   d, h                                        ; $452f: $54
	ld   h, a                                        ; $4530: $67
	sbc  c                                           ; $4531: $99
	ld   a, h                                        ; $4532: $7c
	rst  $38                                         ; $4533: $ff
	rst  $38                                         ; $4534: $ff
	dec  c                                           ; $4535: $0d
	nop                                              ; $4536: $00
	ld   a, [bc]                                     ; $4537: $0a
	ld   b, $b2                                      ; $4538: $06 $b2
	ld   a, [bc]                                     ; $453a: $0a
	inc  e                                           ; $453b: $1c
	inc  bc                                          ; $453c: $03
	ld   b, $06                                      ; $453d: $06 $06
	ld   bc, $9b58                                   ; $453f: $01 $58 $9b
	ld   h, l                                        ; $4542: $65
	ld   [hl], h                                     ; $4543: $74
	ld   [hl], a                                     ; $4544: $77
	ld   d, h                                        ; $4545: $54
	ld   h, a                                        ; $4546: $67
	sbc  c                                           ; $4547: $99
	ld   a, h                                        ; $4548: $7c
	ld   a, [$dd0d]                                  ; $4549: $fa $0d $dd
	db   $ed                                         ; $454c: $ed
	cp   b                                           ; $454d: $b8
	jp   nz, Jump_066_7c78                           ; $454e: $c2 $78 $7c

	sub  [hl]                                        ; $4551: $96
	ld   sp, hl                                      ; $4552: $f9
	dec  c                                           ; $4553: $0d
	nop                                              ; $4554: $00
	ld   a, [bc]                                     ; $4555: $0a
	ld   b, $b2                                      ; $4556: $06 $b2
	ld   a, [bc]                                     ; $4558: $0a
	inc  e                                           ; $4559: $1c
	inc  bc                                          ; $455a: $03
	inc  bc                                          ; $455b: $03
	inc  bc                                          ; $455c: $03
	ld   bc, $9750                                   ; $455d: $01 $50 $97
	sbc  [hl]                                        ; $4560: $9e
	inc  bc                                          ; $4561: $03
	ld   h, l                                        ; $4562: $65
	inc  bc                                          ; $4563: $03
	ld   l, e                                        ; $4564: $6b
	ld   h, [hl]                                     ; $4565: $66
	sub  c                                           ; $4566: $91
	ld   a, b                                        ; $4567: $78
	ld   d, d                                        ; $4568: $52
	sbc  a                                           ; $4569: $9f
	dec  c                                           ; $456a: $0d
	dec  b                                           ; $456b: $05
	ld   [bc], a                                     ; $456c: $02
	dec  b                                           ; $456d: $05
	ld   de, $757c                                   ; $456e: $11 $7c $75
	ld   e, e                                        ; $4571: $5b
	sbc  c                                           ; $4572: $99
	inc  bc                                          ; $4573: $03
	add  [hl]                                        ; $4574: $86
	ld   [hl], c                                     ; $4575: $71
	ld   [hl], h                                     ; $4576: $74
	dec  c                                           ; $4577: $0d
	ld   [bc], a                                     ; $4578: $02
	scf                                              ; $4579: $37
	inc  bc                                          ; $457a: $03
	ld   [hl], l                                     ; $457b: $75
	ld   h, a                                        ; $457c: $67
	sbc  c                                           ; $457d: $99
	sbc  l                                           ; $457e: $9d
	sbc  a                                           ; $457f: $9f
	dec  c                                           ; $4580: $0d
	nop                                              ; $4581: $00
	ld   a, [bc]                                     ; $4582: $0a
	dec  b                                           ; $4583: $05
	ld   b, b                                        ; $4584: $40
	rst  $38                                         ; $4585: $ff
	inc  bc                                          ; $4586: $03
	rst  $38                                         ; $4587: $ff
	ld   bc, $2801                                   ; $4588: $01 $01 $28
	nop                                              ; $458b: $00
	ld   b, $b2                                      ; $458c: $06 $b2
	ld   a, [bc]                                     ; $458e: $0a
	inc  e                                           ; $458f: $1c
	inc  bc                                          ; $4590: $03
	inc  b                                           ; $4591: $04
	inc  b                                           ; $4592: $04
	ld   bc, $7192                                   ; $4593: $01 $92 $71
	ld   a, a                                        ; $4596: $7f
	sbc  b                                           ; $4597: $98
	sbc  [hl]                                        ; $4598: $9e
	dec  c                                           ; $4599: $0d
	adc  c                                           ; $459a: $89
	ld   d, h                                        ; $459b: $54
	ld   l, a                                        ; $459c: $6f
	sub  l                                           ; $459d: $95
	ld   d, h                                        ; $459e: $54
	and  b                                           ; $459f: $a0
	inc  bc                                          ; $45a0: $03
	xor  [hl]                                        ; $45a1: $ae
	ld   d, h                                        ; $45a2: $54
	ld   a, h                                        ; $45a3: $7c
	ld   a, l                                        ; $45a4: $7d
	dec  c                                           ; $45a5: $0d
	adc  [hl]                                        ; $45a6: $8e
	ld   l, b                                        ; $45a7: $68
	ld   e, c                                        ; $45a8: $59
	ld   h, l                                        ; $45a9: $65
	ld   e, c                                        ; $45aa: $59
	ld   [hl], c                                     ; $45ab: $71
	ld   l, l                                        ; $45ac: $6d
	ld   e, c                                        ; $45ad: $59
	ld   h, l                                        ; $45ae: $65
	sub  a                                           ; $45af: $97
	rst  $38                                         ; $45b0: $ff
	rst  $38                                         ; $45b1: $ff
	dec  c                                           ; $45b2: $0d
	nop                                              ; $45b3: $00
	ld   a, [bc]                                     ; $45b4: $0a
	inc  e                                           ; $45b5: $1c
	inc  bc                                          ; $45b6: $03
	nop                                              ; $45b7: $00
	nop                                              ; $45b8: $00
	ld   bc, $9166                                   ; $45b9: $01 $66 $91
	inc  bc                                          ; $45bc: $03
	ld   l, b                                        ; $45bd: $68
	ld   a, l                                        ; $45be: $7d
	sbc  [hl]                                        ; $45bf: $9e
	ld   e, b                                        ; $45c0: $58
	ld   a, b                                        ; $45c1: $78
	add  a                                           ; $45c2: $87
	and  b                                           ; $45c3: $a0
	ld   [bc], a                                     ; $45c4: $02
	sub  l                                           ; $45c5: $95
	ld   [hl], h                                     ; $45c6: $74
	ld   d, d                                        ; $45c7: $52
	ld   [hl], h                                     ; $45c8: $74
	sbc  a                                           ; $45c9: $9f
	dec  c                                           ; $45ca: $0d
	nop                                              ; $45cb: $00
	ld   a, [bc]                                     ; $45cc: $0a
	add  hl, de                                      ; $45cd: $19
	dec  b                                           ; $45ce: $05
	ld   [bc], a                                     ; $45cf: $02
	and  e                                           ; $45d0: $a3
	or   b                                           ; $45d1: $b0
	and  b                                           ; $45d2: $a0
	ld   h, a                                        ; $45d3: $67
	ld   e, l                                        ; $45d4: $5d
	ld   d, d                                        ; $45d5: $52
	inc  bc                                          ; $45d6: $03
	add  b                                           ; $45d7: $80
	ld   h, a                                        ; $45d8: $67
	nop                                              ; $45d9: $00
	nop                                              ; $45da: $00
	inc  b                                           ; $45db: $04
	jp   nc, $9502                                   ; $45dc: $d2 $02 $95

	and  b                                           ; $45df: $a0
	ld   h, l                                        ; $45e0: $65
	ld   [hl], h                                     ; $45e1: $74
	adc  l                                           ; $45e2: $8d
	sbc  c                                           ; $45e3: $99
	nop                                              ; $45e4: $00
	ld   bc, $f807                                   ; $45e5: $01 $07 $f8
	ld   a, [bc]                                     ; $45e8: $0a
	ld   [bc], a                                     ; $45e9: $02
	inc  bc                                          ; $45ea: $03
	ld   bc, $2000                                   ; $45eb: $01 $00 $20
	nop                                              ; $45ee: $00
	rlca                                             ; $45ef: $07
	ld   e, $0b                                      ; $45f0: $1e $0b
	ld   [bc], a                                     ; $45f2: $02
	inc  bc                                          ; $45f3: $03
	ld   bc, $2001                                   ; $45f4: $01 $01 $20
	nop                                              ; $45f7: $00
	ld   b, $36                                      ; $45f8: $06 $36
	dec  bc                                          ; $45fa: $0b
	inc  e                                           ; $45fb: $1c
	inc  bc                                          ; $45fc: $03
	inc  bc                                          ; $45fd: $03
	inc  bc                                          ; $45fe: $03
	ld   bc, $5d96                                   ; $45ff: $01 $96 $5d
	ld   [bc], a                                     ; $4602: $02
	and  c                                           ; $4603: $a1
	ld   e, d                                        ; $4604: $5a
	ld   [hl], d                                     ; $4605: $72

Jump_066_4606:
	ld   e, l                                        ; $4606: $5d
	ld   a, h                                        ; $4607: $7c
	ld   a, e                                        ; $4608: $7b
	sbc  a                                           ; $4609: $9f
	dec  c                                           ; $460a: $0d
	inc  bc                                          ; $460b: $03
	ld   e, e                                        ; $460c: $5b
	ld   e, c                                        ; $460d: $59
	sbc  c                                           ; $460e: $99
	sbc  l                                           ; $460f: $9d
	rst  $38                                         ; $4610: $ff
	rst  $38                                         ; $4611: $ff
	dec  c                                           ; $4612: $0d
	nop                                              ; $4613: $00
	ld   a, [bc]                                     ; $4614: $0a
	dec  b                                           ; $4615: $05
	ld   b, b                                        ; $4616: $40
	rst  $38                                         ; $4617: $ff
	inc  bc                                          ; $4618: $03
	rst  $38                                         ; $4619: $ff
	ld   bc, $2801                                   ; $461a: $01 $01 $28
	nop                                              ; $461d: $00
	ld   b, $5a                                      ; $461e: $06 $5a
	dec  bc                                          ; $4620: $0b
	inc  e                                           ; $4621: $1c
	inc  bc                                          ; $4622: $03
	inc  b                                           ; $4623: $04
	inc  b                                           ; $4624: $04
	ld   bc, $ffff                                   ; $4625: $01 $ff $ff
	ld   e, b                                        ; $4628: $58
	ld   e, h                                        ; $4629: $5c
	sub  l                                           ; $462a: $95
	ld   d, h                                        ; $462b: $54
	ld   e, h                                        ; $462c: $5c
	ld   [bc], a                                     ; $462d: $02
	jr   z, jr_066_4682                              ; $462e: $28 $52

	sbc  l                                           ; $4630: $9d
	sub  [hl]                                        ; $4631: $96
	sbc  a                                           ; $4632: $9f
	dec  c                                           ; $4633: $0d
	nop                                              ; $4634: $00
	ld   a, [bc]                                     ; $4635: $0a
	ld   b, $5a                                      ; $4636: $06 $5a
	dec  bc                                          ; $4638: $0b
	inc  e                                           ; $4639: $1c
	inc  bc                                          ; $463a: $03
	inc  bc                                          ; $463b: $03
	inc  bc                                          ; $463c: $03
	ld   bc, $d6d6                                   ; $463d: $01 $d6 $d6
	rst  $38                                         ; $4640: $ff
	rst  $38                                         ; $4641: $ff
	dec  c                                           ; $4642: $0d
	ld   l, e                                        ; $4643: $6b
	and  c                                           ; $4644: $a1
	ld   a, b                                        ; $4645: $78
	ld   a, c                                        ; $4646: $79
	cp   c                                           ; $4647: $b9
	call nz, $0276                                   ; $4648: $c4 $76 $02
	sub  l                                           ; $464b: $95
	ld   [hl], h                                     ; $464c: $74
	ld   a, b                                        ; $464d: $78
	ld   e, l                                        ; $464e: $5d
	ld   [hl], h                                     ; $464f: $74
	sub  b                                           ; $4650: $90
	dec  c                                           ; $4651: $0d
	ld   d, d                                        ; $4652: $52
	ld   d, d                                        ; $4653: $52
	ld   a, h                                        ; $4654: $7c
	sub  [hl]                                        ; $4655: $96
	sbc  a                                           ; $4656: $9f
	dec  c                                           ; $4657: $0d
	nop                                              ; $4658: $00
	ld   a, [bc]                                     ; $4659: $0a
	ld   b, $5a                                      ; $465a: $06 $5a
	dec  bc                                          ; $465c: $0b
	inc  e                                           ; $465d: $1c
	inc  bc                                          ; $465e: $03
	nop                                              ; $465f: $00
	nop                                              ; $4660: $00
	ld   bc, $9a6b                                   ; $4661: $01 $6b $9a
	ld   h, [hl]                                     ; $4664: $66
	sub  c                                           ; $4665: $91
	ld   d, b                                        ; $4666: $50
	sbc  [hl]                                        ; $4667: $9e
	inc  bc                                          ; $4668: $03
	ld   l, c                                        ; $4669: $69
	ld   [bc], a                                     ; $466a: $02
	xor  d                                           ; $466b: $aa
	ld   a, c                                        ; $466c: $79
	inc  b                                           ; $466d: $04
	jp   nc, $0da0                                   ; $466e: $d2 $a0 $0d

	halt                                             ; $4671: $76
	halt                                             ; $4672: $76
	ld   a, h                                        ; $4673: $7c
	ld   d, [hl]                                     ; $4674: $56
	adc  h                                           ; $4675: $8c
	ld   h, l                                        ; $4676: $65
	sub  l                                           ; $4677: $95
	ld   d, h                                        ; $4678: $54
	sbc  a                                           ; $4679: $9f
	dec  c                                           ; $467a: $0d
	nop                                              ; $467b: $00
	ld   a, [bc]                                     ; $467c: $0a
	ld   bc, $0008                                   ; $467d: $01 $08 $00
	ld   e, l                                        ; $4680: $5d
	and  c                                           ; $4681: $a1

jr_066_4682:
	sbc  a                                           ; $4682: $9f
	dec  c                                           ; $4683: $0d
	inc  bc                                          ; $4684: $03
	cp   $04                                         ; $4685: $fe $04
	jp   nc, $0205                                   ; $4687: $d2 $05 $02

	and  b                                           ; $468a: $a0
	halt                                             ; $468b: $76
	ld   [hl], c                                     ; $468c: $71
	ld   [hl], h                                     ; $468d: $74
	ld   l, a                                        ; $468e: $6f
	sub  l                                           ; $468f: $95
	ld   d, h                                        ; $4690: $54
	ld   l, [hl]                                     ; $4691: $6e
	ld   d, d                                        ; $4692: $52
	sbc  a                                           ; $4693: $9f
	dec  c                                           ; $4694: $0d
	nop                                              ; $4695: $00
	ld   a, [bc]                                     ; $4696: $0a
	add  hl, de                                      ; $4697: $19
	dec  b                                           ; $4698: $05
	ld   [bc], a                                     ; $4699: $02
	ld   [bc], a                                     ; $469a: $02
	dec  l                                           ; $469b: $2d
	and  b                                           ; $469c: $a0
	sbc  l                                           ; $469d: $9d
	ld   l, l                                        ; $469e: $6d
	ld   h, a                                        ; $469f: $67
	nop                                              ; $46a0: $00
	nop                                              ; $46a1: $00
	ld   h, e                                        ; $46a2: $63
	halt                                             ; $46a3: $76
	ld   d, h                                        ; $46a4: $54
	and  b                                           ; $46a5: $a0
	sbc  l                                           ; $46a6: $9d
	ld   l, l                                        ; $46a7: $6d
	ld   h, a                                        ; $46a8: $67
	nop                                              ; $46a9: $00
	ld   bc, $bd07                                   ; $46aa: $01 $07 $bd
	dec  bc                                          ; $46ad: $0b
	ld   [bc], a                                     ; $46ae: $02
	inc  bc                                          ; $46af: $03
	ld   bc, $2000                                   ; $46b0: $01 $00 $20
	nop                                              ; $46b3: $00
	rlca                                             ; $46b4: $07
	di                                               ; $46b5: $f3
	dec  bc                                          ; $46b6: $0b
	ld   [bc], a                                     ; $46b7: $02
	inc  bc                                          ; $46b8: $03
	ld   bc, $2001                                   ; $46b9: $01 $01 $20
	nop                                              ; $46bc: $00
	ld   b, $29                                      ; $46bd: $06 $29
	inc  c                                           ; $46bf: $0c
	inc  e                                           ; $46c0: $1c
	inc  bc                                          ; $46c1: $03
	inc  bc                                          ; $46c2: $03
	inc  bc                                          ; $46c3: $03
	ld   bc, $546b                                   ; $46c4: $01 $6b $54
	ld   l, e                                        ; $46c7: $6b
	ld   d, h                                        ; $46c8: $54
	sbc  [hl]                                        ; $46c9: $9e
	inc  bc                                          ; $46ca: $03
	ld   l, c                                        ; $46cb: $69
	ld   [bc], a                                     ; $46cc: $02
	xor  d                                           ; $46cd: $aa
	ld   a, l                                        ; $46ce: $7d
	ld   e, b                                        ; $46cf: $58
	ld   [bc], a                                     ; $46d0: $02
	dec  l                                           ; $46d1: $2d
	ld   [hl], l                                     ; $46d2: $75
	dec  c                                           ; $46d3: $0d
	inc  b                                           ; $46d4: $04
	jp   nc, Jump_066_76a0                           ; $46d5: $d2 $a0 $76

	halt                                             ; $46d8: $76
	ld   a, h                                        ; $46d9: $7c
	ld   d, [hl]                                     ; $46da: $56
	sbc  c                                           ; $46db: $99
	ld   a, h                                        ; $46dc: $7c
	sub  [hl]                                        ; $46dd: $96
	sbc  a                                           ; $46de: $9f
	dec  c                                           ; $46df: $0d
	nop                                              ; $46e0: $00
	ld   a, [bc]                                     ; $46e1: $0a
	dec  b                                           ; $46e2: $05
	ld   b, b                                        ; $46e3: $40
	rst  $38                                         ; $46e4: $ff
	inc  bc                                          ; $46e5: $03
	rst  $38                                         ; $46e6: $ff
	ld   bc, $2801                                   ; $46e7: $01 $01 $28
	nop                                              ; $46ea: $00
	dec  c                                           ; $46eb: $0d
	nop                                              ; $46ec: $00
	nop                                              ; $46ed: $00
	rrca                                             ; $46ee: $0f
	nop                                              ; $46ef: $00
	ld   bc, $0b0c                                   ; $46f0: $01 $0c $0b
	ld   b, $59                                      ; $46f3: $06 $59
	inc  c                                           ; $46f5: $0c
	inc  e                                           ; $46f6: $1c
	inc  bc                                          ; $46f7: $03
	inc  b                                           ; $46f8: $04
	inc  b                                           ; $46f9: $04
	ld   bc, $7663                                   ; $46fa: $01 $63 $76
	ld   d, h                                        ; $46fd: $54
	ld   [hl], l                                     ; $46fe: $75
	ld   a, l                                        ; $46ff: $7d
	sbc  [hl]                                        ; $4700: $9e
	inc  b                                           ; $4701: $04
	adc  h                                           ; $4702: $8c
	ld   a, b                                        ; $4703: $78
	inc  b                                           ; $4704: $04
	jp   nc, Jump_066_7879                           ; $4705: $d2 $79 $78

	ld   [hl], c                                     ; $4708: $71
	ld   [hl], h                                     ; $4709: $74
	dec  c                                           ; $470a: $0d
	ld   h, l                                        ; $470b: $65
	adc  h                                           ; $470c: $8c
	ld   d, h                                        ; $470d: $54
	sbc  l                                           ; $470e: $9d
	sbc  a                                           ; $470f: $9f
	ld   e, b                                        ; $4710: $58
	ld   [bc], a                                     ; $4711: $02
	dec  l                                           ; $4712: $2d
	and  b                                           ; $4713: $a0
	halt                                             ; $4714: $76
	ld   [hl], c                                     ; $4715: $71
	ld   [hl], h                                     ; $4716: $74
	dec  c                                           ; $4717: $0d
	ld   l, a                                        ; $4718: $6f
	sub  l                                           ; $4719: $95
	ld   d, h                                        ; $471a: $54
	ld   l, [hl]                                     ; $471b: $6e
	ld   d, d                                        ; $471c: $52
	sbc  a                                           ; $471d: $9f
	dec  c                                           ; $471e: $0d
	nop                                              ; $471f: $00
	ld   a, [bc]                                     ; $4720: $0a
	dec  c                                           ; $4721: $0d
	nop                                              ; $4722: $00
	nop                                              ; $4723: $00
	rrca                                             ; $4724: $0f
	nop                                              ; $4725: $00
	ld   bc, $0b0c                                   ; $4726: $01 $0c $0b
	ld   b, $59                                      ; $4729: $06 $59
	inc  c                                           ; $472b: $0c
	inc  e                                           ; $472c: $1c
	inc  bc                                          ; $472d: $03
	nop                                              ; $472e: $00
	nop                                              ; $472f: $00
	ld   bc, $0258                                   ; $4730: $01 $58 $02
	dec  l                                           ; $4733: $2d
	ld   [hl], l                                     ; $4734: $75
	inc  b                                           ; $4735: $04
	jp   nc, Jump_066_76a0                           ; $4736: $d2 $a0 $76

	halt                                             ; $4739: $76
	ld   a, h                                        ; $473a: $7c
	ld   d, [hl]                                     ; $473b: $56
	sbc  c                                           ; $473c: $99
	ld   a, h                                        ; $473d: $7c
	sub  [hl]                                        ; $473e: $96
	sbc  a                                           ; $473f: $9f
	dec  c                                           ; $4740: $0d
	ld   e, b                                        ; $4741: $58
	ld   [bc], a                                     ; $4742: $02
	dec  l                                           ; $4743: $2d
	and  b                                           ; $4744: $a0
	halt                                             ; $4745: $76
	ld   [hl], c                                     ; $4746: $71
	ld   [hl], h                                     ; $4747: $74
	ld   l, a                                        ; $4748: $6f
	sub  l                                           ; $4749: $95
	ld   d, h                                        ; $474a: $54
	ld   l, [hl]                                     ; $474b: $6e
	ld   d, d                                        ; $474c: $52
	sbc  a                                           ; $474d: $9f
	dec  c                                           ; $474e: $0d
	nop                                              ; $474f: $00
	ld   a, [bc]                                     ; $4750: $0a
	dec  c                                           ; $4751: $0d
	nop                                              ; $4752: $00
	nop                                              ; $4753: $00
	rrca                                             ; $4754: $0f
	nop                                              ; $4755: $00
	ld   bc, $0b0c                                   ; $4756: $01 $0c $0b
	ld   b, $59                                      ; $4759: $06 $59
	inc  c                                           ; $475b: $0c
	rlca                                             ; $475c: $07
	and  l                                           ; $475d: $a5
	inc  c                                           ; $475e: $0c
	inc  bc                                          ; $475f: $03
	rst  $38                                         ; $4760: $ff
	ld   bc, $2002                                   ; $4761: $01 $02 $20
	nop                                              ; $4764: $00
	rlca                                             ; $4765: $07
	jp   z, $030c                                    ; $4766: $ca $0c $03

	rst  $38                                         ; $4769: $ff
	ld   bc, $2301                                   ; $476a: $01 $01 $23
	nop                                              ; $476d: $00
	inc  e                                           ; $476e: $1c
	inc  bc                                          ; $476f: $03
	inc  bc                                          ; $4770: $03
	inc  bc                                          ; $4771: $03
	dec  e                                           ; $4772: $1d
	ld   b, b                                        ; $4773: $40
	inc  de                                          ; $4774: $13
	inc  bc                                          ; $4775: $03
	inc  de                                          ; $4776: $13
	ld   bc, $2803                                   ; $4777: $01 $03 $28
	nop                                              ; $477a: $00
	ld   bc, $7850                                   ; $477b: $01 $50 $78
	ld   l, l                                        ; $477e: $6d
	ld   a, c                                        ; $477f: $79
	inc  bc                                          ; $4780: $03
	ld   l, e                                        ; $4781: $6b
	inc  b                                           ; $4782: $04
	ld   [de], a                                     ; $4783: $12
	ld   [hl], c                                     ; $4784: $71
	ld   [hl], h                                     ; $4785: $74
	sub  b                                           ; $4786: $90
	sub  a                                           ; $4787: $97
	ld   [hl], c                                     ; $4788: $71
	ld   [hl], h                                     ; $4789: $74
	dec  c                                           ; $478a: $0d
	ld   h, a                                        ; $478b: $67
	ld   h, d                                        ; $478c: $62
	ld   e, l                                        ; $478d: $5d
	inc  bc                                          ; $478e: $03
	ld   e, e                                        ; $478f: $5b
	ld   e, c                                        ; $4790: $59
	ld   [hl], c                                     ; $4791: $71
	ld   l, l                                        ; $4792: $6d
	sbc  l                                           ; $4793: $9d
	sbc  a                                           ; $4794: $9f
	dec  c                                           ; $4795: $0d
	inc  b                                           ; $4796: $04
	adc  a                                           ; $4797: $8f
	inc  b                                           ; $4798: $04
	jr   @+$7b                                       ; $4799: $18 $79

	sbc  [hl]                                        ; $479b: $9e
	ld   d, b                                        ; $479c: $50
	sbc  b                                           ; $479d: $98
	ld   e, d                                        ; $479e: $5a
	halt                                             ; $479f: $76
	ld   d, h                                        ; $47a0: $54
	sbc  a                                           ; $47a1: $9f
	dec  c                                           ; $47a2: $0d
	nop                                              ; $47a3: $00
	ld   a, [bc]                                     ; $47a4: $0a
	ld   b, $f2                                      ; $47a5: $06 $f2
	inc  c                                           ; $47a7: $0c
	inc  e                                           ; $47a8: $1c
	inc  bc                                          ; $47a9: $03
	inc  bc                                          ; $47aa: $03
	inc  bc                                          ; $47ab: $03
	dec  e                                           ; $47ac: $1d
	ld   b, b                                        ; $47ad: $40
	inc  de                                          ; $47ae: $13
	inc  bc                                          ; $47af: $03
	inc  de                                          ; $47b0: $13
	ld   bc, $2801                                   ; $47b1: $01 $01 $28
	nop                                              ; $47b4: $00
	ld   bc, $5b03                                   ; $47b5: $01 $03 $5b
	ld   e, c                                        ; $47b8: $59
	ld   [hl], c                                     ; $47b9: $71
	ld   l, l                                        ; $47ba: $6d
	sbc  l                                           ; $47bb: $9d
	sbc  a                                           ; $47bc: $9f
	dec  c                                           ; $47bd: $0d
	adc  h                                           ; $47be: $8c
	ld   l, l                                        ; $47bf: $6d
	sbc  [hl]                                        ; $47c0: $9e
	sub  [hl]                                        ; $47c1: $96
	sbc  e                                           ; $47c2: $9b
	ld   h, l                                        ; $47c3: $65
	ld   e, l                                        ; $47c4: $5d
	ld   a, e                                        ; $47c5: $7b
	sbc  a                                           ; $47c6: $9f
	dec  c                                           ; $47c7: $0d
	nop                                              ; $47c8: $00
	ld   a, [bc]                                     ; $47c9: $0a
	ld   b, $f2                                      ; $47ca: $06 $f2
	inc  c                                           ; $47cc: $0c
	inc  e                                           ; $47cd: $1c
	inc  bc                                          ; $47ce: $03
	inc  b                                           ; $47cf: $04
	inc  b                                           ; $47d0: $04
	dec  e                                           ; $47d1: $1d
	ld   b, b                                        ; $47d2: $40
	inc  de                                          ; $47d3: $13
	inc  bc                                          ; $47d4: $03
	inc  de                                          ; $47d5: $13
	ld   bc, $2902                                   ; $47d6: $01 $02 $29
	nop                                              ; $47d9: $00
	ld   bc, $5490                                   ; $47da: $01 $90 $54
	inc  bc                                          ; $47dd: $03
	ld   l, h                                        ; $47de: $6c
	ld   h, l                                        ; $47df: $65
	ld   [hl], l                                     ; $47e0: $75
	ld   e, e                                        ; $47e1: $5b
	sbc  c                                           ; $47e2: $99
	ld   e, c                                        ; $47e3: $59
	halt                                             ; $47e4: $76
	dec  c                                           ; $47e5: $0d
	dec  b                                           ; $47e6: $05
	pop  de                                          ; $47e7: $d1
	ld   [hl], c                                     ; $47e8: $71
	ld   [hl], h                                     ; $47e9: $74
	ld   l, l                                        ; $47ea: $6d
	sbc  l                                           ; $47eb: $9d
	rst  $38                                         ; $47ec: $ff
	rst  $38                                         ; $47ed: $ff
	dec  c                                           ; $47ee: $0d
	nop                                              ; $47ef: $00
	ld   a, [bc]                                     ; $47f0: $0a
	inc  e                                           ; $47f1: $1c
	inc  bc                                          ; $47f2: $03
	nop                                              ; $47f3: $00
	nop                                              ; $47f4: $00
	ld   bc, $9166                                   ; $47f5: $01 $66 $91
	sbc  [hl]                                        ; $47f8: $9e
	ld   h, d                                        ; $47f9: $62
	ld   e, l                                        ; $47fa: $5d
	sbc  e                                           ; $47fb: $9b
	ld   d, h                                        ; $47fc: $54
	ld   h, e                                        ; $47fd: $63
	adc  h                                           ; $47fe: $8c
	sbc  a                                           ; $47ff: $9f
	dec  c                                           ; $4800: $0d
	nop                                              ; $4801: $00
	ld   a, [bc]                                     ; $4802: $0a
	dec  c                                           ; $4803: $0d
	nop                                              ; $4804: $00
	nop                                              ; $4805: $00
	rrca                                             ; $4806: $0f
	nop                                              ; $4807: $00
	ld   bc, $020c                                   ; $4808: $01 $0c $02
	ld   c, $26                                      ; $480b: $0e $26
	dec  b                                           ; $480d: $05
	ld   b, b                                        ; $480e: $40
	rst  $38                                         ; $480f: $ff
	ld   bc, $0000                                   ; $4810: $01 $00 $00
	ld   bc, $7463                                   ; $4813: $01 $63 $74
	rst  $38                                         ; $4816: $ff
	rst  $38                                         ; $4817: $ff
	sbc  [hl]                                        ; $4818: $9e
	inc  b                                           ; $4819: $04
	dec  bc                                          ; $481a: $0b
	inc  b                                           ; $481b: $04
	rra                                              ; $481c: $1f
	ld   a, c                                        ; $481d: $79
	ld   [hl], l                                     ; $481e: $75
	sub  b                                           ; $481f: $90
	dec  c                                           ; $4820: $0d
	ld   [bc], a                                     ; $4821: $02
	ld   a, a                                        ; $4822: $7f
	ld   [hl], c                                     ; $4823: $71
	ld   [hl], h                                     ; $4824: $74
	adc  l                                           ; $4825: $8d
	sub  [hl]                                        ; $4826: $96
	ld   d, h                                        ; $4827: $54
	ld   e, c                                        ; $4828: $59
	ld   a, b                                        ; $4829: $78
	sbc  a                                           ; $482a: $9f
	dec  c                                           ; $482b: $0d
	nop                                              ; $482c: $00
	ld   a, [bc]                                     ; $482d: $0a
	ld   b, $2e                                      ; $482e: $06 $2e
	dec  c                                           ; $4830: $0d
	inc  hl                                          ; $4831: $23
	sbc  l                                           ; $4832: $9d
	ld   bc, $fca1                                   ; $4833: $01 $a1 $fc
	sbc  [hl]                                        ; $4836: $9e
	ld   d, d                                        ; $4837: $52
	ld   d, d                                        ; $4838: $52
	inc  b                                           ; $4839: $04
	inc  de                                          ; $483a: $13
	ld   [bc], a                                     ; $483b: $02
	and  c                                           ; $483c: $a1
	ld   l, [hl]                                     ; $483d: $6e
	sbc  a                                           ; $483e: $9f
	dec  c                                           ; $483f: $0d
	nop                                              ; $4840: $00
	ld   a, [bc]                                     ; $4841: $0a
	inc  e                                           ; $4842: $1c
	ld   b, $01                                      ; $4843: $06 $01
	ld   bc, $5801                                   ; $4845: $01 $01 $58
	sbc  [hl]                                        ; $4848: $9e
	ld   [$9f00], sp                                 ; $4849: $08 $00 $9f
	dec  c                                           ; $484c: $0d
	inc  b                                           ; $484d: $04
	ld   c, c                                        ; $484e: $49
	sub  d                                           ; $484f: $92
	ld   [hl], c                                     ; $4850: $71
	ld   [hl], h                                     ; $4851: $74
	sbc  c                                           ; $4852: $99
	and  c                                           ; $4853: $a1
	ld   l, [hl]                                     ; $4854: $6e
	ld   sp, hl                                      ; $4855: $f9
	dec  c                                           ; $4856: $0d
	nop                                              ; $4857: $00
	ld   a, [bc]                                     ; $4858: $0a
	ld   bc, $dfd3                                   ; $4859: $01 $d3 $df
	ld   l, [hl]                                     ; $485c: $6e
	ld   [hl], c                                     ; $485d: $71
	ld   l, l                                        ; $485e: $6d
	sub  a                                           ; $485f: $97
	sbc  [hl]                                        ; $4860: $9e
	ld   d, b                                        ; $4861: $50
	ld   l, l                                        ; $4862: $6d
	ld   d, d                                        ; $4863: $52
	ld   a, c                                        ; $4864: $79
	dec  c                                           ; $4865: $0d
	ld   [hl], d                                     ; $4866: $72
	ld   e, e                                        ; $4867: $5b
	ld   d, b                                        ; $4868: $50
	sbc  l                                           ; $4869: $9d
	ld   a, e                                        ; $486a: $7b
	ld   d, [hl]                                     ; $486b: $56
	ld   e, c                                        ; $486c: $59
	ld   sp, hl                                      ; $486d: $f9
	dec  c                                           ; $486e: $0d
	nop                                              ; $486f: $00
	ld   a, [bc]                                     ; $4870: $0a
	add  hl, de                                      ; $4871: $19
	dec  b                                           ; $4872: $05
	ld   [bc], a                                     ; $4873: $02
	ld   [hl], d                                     ; $4874: $72
	ld   e, e                                        ; $4875: $5b
	ld   d, b                                        ; $4876: $50
	ld   d, h                                        ; $4877: $54
	nop                                              ; $4878: $00
	nop                                              ; $4879: $00
	ld   [hl], d                                     ; $487a: $72
	ld   e, e                                        ; $487b: $5b
	ld   d, b                                        ; $487c: $50
	sbc  l                                           ; $487d: $9d
	ld   a, b                                        ; $487e: $78
	ld   d, d                                        ; $487f: $52
	nop                                              ; $4880: $00
	ld   bc, $9407                                   ; $4881: $01 $07 $94
	dec  c                                           ; $4884: $0d
	ld   [bc], a                                     ; $4885: $02
	inc  bc                                          ; $4886: $03
	ld   bc, $2000                                   ; $4887: $01 $00 $20
	nop                                              ; $488a: $00
	rlca                                             ; $488b: $07
	sbc  $0d                                         ; $488c: $de $0d
	ld   [bc], a                                     ; $488e: $02
	inc  bc                                          ; $488f: $03
	ld   bc, $2001                                   ; $4890: $01 $01 $20
	nop                                              ; $4893: $00
	ld   b, $19                                      ; $4894: $06 $19
	ld   c, $0f                                      ; $4896: $0e $0f
	nop                                              ; $4898: $00
	ld   bc, $9d01                                   ; $4899: $01 $01 $9d
	ld   e, c                                        ; $489c: $59
	sbc  b                                           ; $489d: $98
	adc  h                                           ; $489e: $8c
	ld   h, l                                        ; $489f: $65
	ld   l, l                                        ; $48a0: $6d
	sbc  a                                           ; $48a1: $9f
	dec  c                                           ; $48a2: $0d
	ld   a, b                                        ; $48a3: $78
	and  c                                           ; $48a4: $a1
	ld   [hl], l                                     ; $48a5: $75
	sub  b                                           ; $48a6: $90
	ld   e, b                                        ; $48a7: $58
	ld   [hl], d                                     ; $48a8: $72
	ld   e, e                                        ; $48a9: $5b
	ld   d, b                                        ; $48aa: $50
	ld   d, d                                        ; $48ab: $52
	ld   h, l                                        ; $48ac: $65
	adc  h                                           ; $48ad: $8c
	ld   h, a                                        ; $48ae: $67
	sub  [hl]                                        ; $48af: $96
	sbc  a                                           ; $48b0: $9f
	dec  c                                           ; $48b1: $0d
	nop                                              ; $48b2: $00
	ld   a, [bc]                                     ; $48b3: $0a
	dec  b                                           ; $48b4: $05
	ld   b, b                                        ; $48b5: $40
	ld   h, l                                        ; $48b6: $65
	inc  bc                                          ; $48b7: $03
	ld   h, l                                        ; $48b8: $65
	ld   bc, $2801                                   ; $48b9: $01 $01 $28
	nop                                              ; $48bc: $00
	inc  e                                           ; $48bd: $1c
	ld   b, $01                                      ; $48be: $06 $01
	ld   bc, $6b01                                   ; $48c0: $01 $01 $6b
	ld   d, h                                        ; $48c3: $54
	ld   e, c                                        ; $48c4: $59
	ld   a, [$520d]                                  ; $48c5: $fa $0d $52
	ld   h, h                                        ; $48c8: $64
	halt                                             ; $48c9: $76
	ld   a, b                                        ; $48ca: $78
	ld   [hl], c                                     ; $48cb: $71
	ld   [hl], h                                     ; $48cc: $74
	call nc, $99d4                                   ; $48cd: $d4 $d4 $99
	ld   a, b                                        ; $48d0: $78
	sub  [hl]                                        ; $48d1: $96
	sbc  a                                           ; $48d2: $9f
	dec  c                                           ; $48d3: $0d
	nop                                              ; $48d4: $00
	ld   a, [bc]                                     ; $48d5: $0a
	dec  c                                           ; $48d6: $0d
	nop                                              ; $48d7: $00
	nop                                              ; $48d8: $00
	rrca                                             ; $48d9: $0f
	nop                                              ; $48da: $00
	ld   bc, $020c                                   ; $48db: $01 $0c $02
	ld   b, $6c                                      ; $48de: $06 $6c
	ld   c, $0f                                      ; $48e0: $0e $0f
	nop                                              ; $48e2: $00
	ld   bc, $6701                                   ; $48e3: $01 $01 $67
	adc  l                                           ; $48e6: $8d
	adc  h                                           ; $48e7: $8c
	ld   l, c                                        ; $48e8: $69
	and  c                                           ; $48e9: $a1
	sbc  a                                           ; $48ea: $9f
	dec  c                                           ; $48eb: $0d
	inc  b                                           ; $48ec: $04
	ld   e, $79                                      ; $48ed: $1e $79
	sub  d                                           ; $48ef: $92
	sbc  c                                           ; $48f0: $99
	ld   h, c                                        ; $48f1: $61
	halt                                             ; $48f2: $76
	ld   e, d                                        ; $48f3: $5a
	ld   d, b                                        ; $48f4: $50
	sbc  c                                           ; $48f5: $99
	ld   a, h                                        ; $48f6: $7c
	ld   [hl], l                                     ; $48f7: $75
	rst  $38                                         ; $48f8: $ff
	rst  $38                                         ; $48f9: $ff
	dec  c                                           ; $48fa: $0d
	nop                                              ; $48fb: $00
	ld   a, [bc]                                     ; $48fc: $0a
	inc  e                                           ; $48fd: $1c
	ld   b, $00                                      ; $48fe: $06 $00
	nop                                              ; $4900: $00
	ld   bc, $546b                                   ; $4901: $01 $6b $54
	ld   e, c                                        ; $4904: $59
	rst  $38                                         ; $4905: $ff
	rst  $38                                         ; $4906: $ff
	dec  c                                           ; $4907: $0d
	and  c                                           ; $4908: $a1
	ld   h, [hl]                                     ; $4909: $66
	sub  c                                           ; $490a: $91
	sbc  [hl]                                        ; $490b: $9e
	adc  h                                           ; $490c: $8c
	ld   l, l                                        ; $490d: $6d
	ld   a, b                                        ; $490e: $78
	sbc  a                                           ; $490f: $9f
	dec  c                                           ; $4910: $0d
	nop                                              ; $4911: $00
	ld   a, [bc]                                     ; $4912: $0a
	dec  c                                           ; $4913: $0d
	nop                                              ; $4914: $00
	nop                                              ; $4915: $00
	rrca                                             ; $4916: $0f
	nop                                              ; $4917: $00
	ld   bc, $5406                                   ; $4918: $01 $06 $54
	ld   c, $0f                                      ; $491b: $0e $0f
	nop                                              ; $491d: $00
	ld   bc, $ff01                                   ; $491e: $01 $01 $ff
	rst  $38                                         ; $4921: $ff
	rst  $38                                         ; $4922: $ff
	rst  $38                                         ; $4923: $ff
	dec  c                                           ; $4924: $0d
	nop                                              ; $4925: $00
	ld   a, [bc]                                     ; $4926: $0a
	inc  e                                           ; $4927: $1c
	ld   b, $02                                      ; $4928: $06 $02
	ld   [bc], a                                     ; $492a: $02
	dec  e                                           ; $492b: $1d
	ld   b, b                                        ; $492c: $40
	ld   d, $03                                      ; $492d: $16 $03
	ld   d, $01                                      ; $492f: $16 $01
	inc  bc                                          ; $4931: $03
	add  hl, hl                                      ; $4932: $29
	nop                                              ; $4933: $00
	ld   bc, $a178                                   ; $4934: $01 $78 $a1
	ld   l, [hl]                                     ; $4937: $6e
	sub  [hl]                                        ; $4938: $96
	sbc  [hl]                                        ; $4939: $9e
	cp   b                                           ; $493a: $b8
	xor  h                                           ; $493b: $ac
	ret                                              ; $493c: $c9


	ld   e, c                                        ; $493d: $59
	ld   sp, hl                                      ; $493e: $f9
	dec  c                                           ; $493f: $0d
	nop                                              ; $4940: $00
	ld   a, [bc]                                     ; $4941: $0a
	ld   bc, $556f                                   ; $4942: $01 $6f $55
	ld   [hl], c                                     ; $4945: $71
	rst  $38                                         ; $4946: $ff
	rst  $38                                         ; $4947: $ff
	reti                                             ; $4948: $d9


	push af                                          ; $4949: $f5
	ld   a, b                                        ; $494a: $78
	sub  d                                           ; $494b: $92
	ld   [hl], d                                     ; $494c: $72
	sbc  a                                           ; $494d: $9f
	dec  c                                           ; $494e: $0d
	nop                                              ; $494f: $00
	ld   a, [bc]                                     ; $4950: $0a
	dec  c                                           ; $4951: $0d
	nop                                              ; $4952: $00
	nop                                              ; $4953: $00
	rrca                                             ; $4954: $0f
	nop                                              ; $4955: $00
	ld   bc, $000f                                   ; $4956: $01 $0f $00
	ld   bc, $6301                                   ; $4959: $01 $01 $63
	ld   [hl], h                                     ; $495c: $74
	sbc  [hl]                                        ; $495d: $9e
	ld   [hl], a                                     ; $495e: $77
	ld   h, c                                        ; $495f: $61
	add  [hl]                                        ; $4960: $86
	ld   [bc], a                                     ; $4961: $02
	ld   a, a                                        ; $4962: $7f
	ld   h, c                                        ; $4963: $61
	ld   d, h                                        ; $4964: $54
	ld   e, c                                        ; $4965: $59
	ld   a, b                                        ; $4966: $78
	rst  $38                                         ; $4967: $ff
	rst  $38                                         ; $4968: $ff
	dec  c                                           ; $4969: $0d
	nop                                              ; $496a: $00
	ld   a, [bc]                                     ; $496b: $0a
	ld   b, $62                                      ; $496c: $06 $62
	ld   de, $6e0e                                   ; $496e: $11 $0e $6e
	inc  e                                           ; $4971: $1c
	ld   b, $00                                      ; $4972: $06 $00
	nop                                              ; $4974: $00
	ld   bc, $7463                                   ; $4975: $01 $63 $74
	rst  $38                                         ; $4978: $ff
	rst  $38                                         ; $4979: $ff
	ld   a, l                                        ; $497a: $7d
	ld   h, [hl]                                     ; $497b: $66
	adc  a                                           ; $497c: $8f
	sbc  c                                           ; $497d: $99
	ld   e, c                                        ; $497e: $59
	sbc  a                                           ; $497f: $9f
	dec  c                                           ; $4980: $0d
	nop                                              ; $4981: $00
	ld   a, [bc]                                     ; $4982: $0a
	rrca                                             ; $4983: $0f
	nop                                              ; $4984: $00
	ld   bc, $ff01                                   ; $4985: $01 $01 $ff
	rst  $38                                         ; $4988: $ff
	inc  b                                           ; $4989: $04
	ld   c, c                                        ; $498a: $49
	and  b                                           ; $498b: $a0
	ld   [hl], l                                     ; $498c: $75
	ld   h, a                                        ; $498d: $67
	ld   e, c                                        ; $498e: $59
	ld   sp, hl                                      ; $498f: $f9
	dec  c                                           ; $4990: $0d
	nop                                              ; $4991: $00
	ld   a, [bc]                                     ; $4992: $0a
	inc  e                                           ; $4993: $1c
	ld   b, $02                                      ; $4994: $06 $02
	ld   [bc], a                                     ; $4996: $02
	ld   bc, $0003                                   ; $4997: $01 $03 $00
	adc  l                                           ; $499a: $8d
	inc  bc                                          ; $499b: $03
	ld   l, e                                        ; $499c: $6b
	ld   l, [hl]                                     ; $499d: $6e
	sub  [hl]                                        ; $499e: $96
	sbc  [hl]                                        ; $499f: $9e
	inc  bc                                          ; $49a0: $03
	nop                                              ; $49a1: $00
	adc  l                                           ; $49a2: $8d
	inc  bc                                          ; $49a3: $03
	ld   l, e                                        ; $49a4: $6b
	sbc  a                                           ; $49a5: $9f
	dec  c                                           ; $49a6: $0d
	ld   h, e                                        ; $49a7: $63
	sbc  [hl]                                        ; $49a8: $9e
	ld   d, d                                        ; $49a9: $52
	ld   e, l                                        ; $49aa: $5d
	ld   l, h                                        ; $49ab: $6c
	ld   a, [$000d]                                  ; $49ac: $fa $0d $00
	ld   a, [bc]                                     ; $49af: $0a
	add  hl, de                                      ; $49b0: $19
	dec  b                                           ; $49b1: $05
	ld   [bc], a                                     ; $49b2: $02
	inc  bc                                          ; $49b3: $03
	ld   c, d                                        ; $49b4: $4a
	ld   [bc], a                                     ; $49b5: $02
	ld   [hl], c                                     ; $49b6: $71
	ld   [hl], e                                     ; $49b7: $73
	ld   e, e                                        ; $49b8: $5b
	and  b                                           ; $49b9: $a0
	ld   h, a                                        ; $49ba: $67
	sbc  c                                           ; $49bb: $99
	nop                                              ; $49bc: $00
	nop                                              ; $49bd: $00
	ld   h, l                                        ; $49be: $65
	sub  c                                           ; $49bf: $91
	ld   e, d                                        ; $49c0: $5a
	and  c                                           ; $49c1: $a1
	ld   [hl], l                                     ; $49c2: $75
	sub  [hl]                                        ; $49c3: $96
	ld   e, a                                        ; $49c4: $5f
	sbc  c                                           ; $49c5: $99
	nop                                              ; $49c6: $00
	ld   bc, $da07                                   ; $49c7: $01 $07 $da
	ld   c, $02                                      ; $49ca: $0e $02
	inc  bc                                          ; $49cc: $03
	ld   bc, $2000                                   ; $49cd: $01 $00 $20
	nop                                              ; $49d0: $00
	rlca                                             ; $49d1: $07
	ld   bc, $020f                                   ; $49d2: $01 $0f $02
	inc  bc                                          ; $49d5: $03
	ld   bc, $2001                                   ; $49d6: $01 $01 $20
	nop                                              ; $49d9: $00
	ld   b, $2b                                      ; $49da: $06 $2b
	rrca                                             ; $49dc: $0f
	inc  e                                           ; $49dd: $1c
	ld   b, $03                                      ; $49de: $06 $03
	inc  bc                                          ; $49e0: $03
	ld   bc, $7803                                   ; $49e1: $01 $03 $78
	inc  bc                                          ; $49e4: $03
	ld   l, e                                        ; $49e5: $6b
	inc  b                                           ; $49e6: $04
	adc  d                                           ; $49e7: $8a
	inc  bc                                          ; $49e8: $03
	ld   c, [hl]                                     ; $49e9: $4e
	ld   e, c                                        ; $49ea: $59
	ld   sp, hl                                      ; $49eb: $f9
	dec  c                                           ; $49ec: $0d
	sub  d                                           ; $49ed: $92
	sbc  c                                           ; $49ee: $99
	ld   h, [hl]                                     ; $49ef: $66
	sub  c                                           ; $49f0: $91
	ld   a, b                                        ; $49f1: $78
	ld   d, d                                        ; $49f2: $52
	ld   e, c                                        ; $49f3: $59
	sbc  a                                           ; $49f4: $9f
	dec  c                                           ; $49f5: $0d
	nop                                              ; $49f6: $00
	ld   a, [bc]                                     ; $49f7: $0a
	dec  b                                           ; $49f8: $05
	ld   b, b                                        ; $49f9: $40
	rst  $38                                         ; $49fa: $ff
	inc  bc                                          ; $49fb: $03
	rst  $38                                         ; $49fc: $ff
	ld   bc, $2801                                   ; $49fd: $01 $01 $28
	nop                                              ; $4a00: $00
	ld   b, $45                                      ; $4a01: $06 $45
	rrca                                             ; $4a03: $0f
	inc  e                                           ; $4a04: $1c
	ld   b, $02                                      ; $4a05: $06 $02
	ld   [bc], a                                     ; $4a07: $02
	ld   bc, $5258                                   ; $4a08: $01 $58 $52
	ld   e, b                                        ; $4a0b: $58
	ld   d, d                                        ; $4a0c: $52
	rst  $38                                         ; $4a0d: $ff
	rst  $38                                         ; $4a0e: $ff
	sub  [hl]                                        ; $4a0f: $96
	ld   e, a                                        ; $4a10: $5f
	sbc  c                                           ; $4a11: $99
	and  c                                           ; $4a12: $a1
	ld   a, b                                        ; $4a13: $78
	sub  a                                           ; $4a14: $97
	dec  c                                           ; $4a15: $0d
	ld   d, b                                        ; $4a16: $50
	ld   l, l                                        ; $4a17: $6d
	ld   d, d                                        ; $4a18: $52
	ld   e, d                                        ; $4a19: $5a
	ld   [bc], a                                     ; $4a1a: $02
	ld   c, b                                        ; $4a1b: $48
	ld   [bc], a                                     ; $4a1c: $02
	sub  c                                           ; $4a1d: $91
	ld   h, l                                        ; $4a1e: $65
	ld   [hl], h                                     ; $4a1f: $74
	ld   e, c                                        ; $4a20: $59
	sub  a                                           ; $4a21: $97
	ld   a, c                                        ; $4a22: $79
	dec  c                                           ; $4a23: $0d
	ld   h, l                                        ; $4a24: $65
	sbc  e                                           ; $4a25: $9b
	sub  [hl]                                        ; $4a26: $96
	sbc  a                                           ; $4a27: $9f
	dec  c                                           ; $4a28: $0d
	nop                                              ; $4a29: $00
	ld   a, [bc]                                     ; $4a2a: $0a
	ld   b, $45                                      ; $4a2b: $06 $45
	rrca                                             ; $4a2d: $0f
	inc  e                                           ; $4a2e: $1c
	ld   b, $00                                      ; $4a2f: $06 $00
	nop                                              ; $4a31: $00
	ld   bc, $5489                                   ; $4a32: $01 $89 $54
	rst  $38                                         ; $4a35: $ff
	rst  $38                                         ; $4a36: $ff
	dec  c                                           ; $4a37: $0d
	dec  b                                           ; $4a38: $05
	ld   [de], a                                     ; $4a39: $12
	ld   l, a                                        ; $4a3a: $6f
	ld   [hl], d                                     ; $4a3b: $72
	ld   d, d                                        ; $4a3c: $52
	ld   [hl], h                                     ; $4a3d: $74
	sbc  c                                           ; $4a3e: $99
	ld   h, [hl]                                     ; $4a3f: $66
	sub  c                                           ; $4a40: $91
	ld   a, e                                        ; $4a41: $7b
	ld   d, [hl]                                     ; $4a42: $56
	ld   e, c                                        ; $4a43: $59
	sbc  a                                           ; $4a44: $9f
	dec  c                                           ; $4a45: $0d
	nop                                              ; $4a46: $00
	ld   a, [bc]                                     ; $4a47: $0a
	inc  e                                           ; $4a48: $1c
	ld   b, $02                                      ; $4a49: $06 $02
	ld   [bc], a                                     ; $4a4b: $02
	ld   bc, $5d52                                   ; $4a4c: $01 $52 $5d
	ld   l, d                                        ; $4a4f: $6a
	ld   a, [$020d]                                  ; $4a50: $fa $0d $02
	inc  [hl]                                        ; $4a53: $34
	inc  bc                                          ; $4a54: $03
	ret  nc                                          ; $4a55: $d0

	ld   [bc], a                                     ; $4a56: $02
	sub  e                                           ; $4a57: $93
	ld   h, l                                        ; $4a58: $65
	ld   h, b                                        ; $4a59: $60
	sbc  b                                           ; $4a5a: $98
	ld   l, [hl]                                     ; $4a5b: $6e
	ld   a, [$000d]                                  ; $4a5c: $fa $0d $00
	ld   a, [bc]                                     ; $4a5f: $0a
	add  hl, de                                      ; $4a60: $19
	dec  b                                           ; $4a61: $05
	ld   [bc], a                                     ; $4a62: $02
	inc  b                                           ; $4a63: $04
	ld   a, a                                        ; $4a64: $7f
	add  c                                           ; $4a65: $81
	ld   h, b                                        ; $4a66: $60
	sbc  b                                           ; $4a67: $98
	ld   [hl], l                                     ; $4a68: $75
	ld   e, c                                        ; $4a69: $59
	sbc  l                                           ; $4a6a: $9d
	ld   h, a                                        ; $4a6b: $67
	nop                                              ; $4a6c: $00
	nop                                              ; $4a6d: $00
	ld   h, l                                        ; $4a6e: $65
	sub  c                                           ; $4a6f: $91
	ld   e, d                                        ; $4a70: $5a
	and  c                                           ; $4a71: $a1
	ld   [hl], l                                     ; $4a72: $75
	sub  [hl]                                        ; $4a73: $96
	ld   e, a                                        ; $4a74: $5f
	sbc  c                                           ; $4a75: $99
	nop                                              ; $4a76: $00
	ld   bc, $8a07                                   ; $4a77: $01 $07 $8a
	rrca                                             ; $4a7a: $0f
	ld   [bc], a                                     ; $4a7b: $02
	inc  bc                                          ; $4a7c: $03
	ld   bc, $2000                                   ; $4a7d: $01 $00 $20
	nop                                              ; $4a80: $00
	rlca                                             ; $4a81: $07
	and  d                                           ; $4a82: $a2
	rrca                                             ; $4a83: $0f
	ld   [bc], a                                     ; $4a84: $02
	inc  bc                                          ; $4a85: $03
	ld   bc, $2001                                   ; $4a86: $01 $01 $20
	nop                                              ; $4a89: $00
	ld   b, $c7                                      ; $4a8a: $06 $c7
	rrca                                             ; $4a8c: $0f
	inc  e                                           ; $4a8d: $1c
	ld   b, $03                                      ; $4a8e: $06 $03
	inc  bc                                          ; $4a90: $03
	ld   bc, $9d54                                   ; $4a91: $01 $54 $9d
	ld   [hl], c                                     ; $4a94: $71
	ld   a, [$000d]                                  ; $4a95: $fa $0d $00
	ld   a, [bc]                                     ; $4a98: $0a
	dec  b                                           ; $4a99: $05
	ld   b, b                                        ; $4a9a: $40
	rst  $38                                         ; $4a9b: $ff
	inc  bc                                          ; $4a9c: $03
	rst  $38                                         ; $4a9d: $ff
	ld   bc, $2801                                   ; $4a9e: $01 $01 $28
	nop                                              ; $4aa1: $00
	ld   b, $e4                                      ; $4aa2: $06 $e4
	rrca                                             ; $4aa4: $0f
	inc  c                                           ; $4aa5: $0c
	inc  bc                                          ; $4aa6: $03
	inc  e                                           ; $4aa7: $1c
	ld   b, $02                                      ; $4aa8: $06 $02
	ld   [bc], a                                     ; $4aaa: $02
	ld   bc, $acd1                                   ; $4aab: $01 $d1 $ac
	ld   a, [$650d]                                  ; $4aae: $fa $0d $65
	sub  c                                           ; $4ab1: $91
	ld   e, d                                        ; $4ab2: $5a
	and  c                                           ; $4ab3: $a1
	ld   [hl], l                                     ; $4ab4: $75
	ld   [hl], a                                     ; $4ab5: $77
	ld   d, h                                        ; $4ab6: $54
	ld   h, a                                        ; $4ab7: $67
	and  c                                           ; $4ab8: $a1
	ld   l, [hl]                                     ; $4ab9: $6e
	ld   a, [$000d]                                  ; $4aba: $fa $0d $00
	ld   a, [bc]                                     ; $4abd: $0a
	ld   sp, $2040                                   ; $4abe: $31 $40 $20
	inc  bc                                          ; $4ac1: $03
	jr   nz, @+$03                                   ; $4ac2: $20 $01

	jr   z, jr_066_4aef                              ; $4ac4: $28 $29

	nop                                              ; $4ac6: $00
	ld   b, $e4                                      ; $4ac7: $06 $e4
	rrca                                             ; $4ac9: $0f
	inc  c                                           ; $4aca: $0c
	inc  bc                                          ; $4acb: $03
	inc  e                                           ; $4acc: $1c
	ld   b, $02                                      ; $4acd: $06 $02
	ld   [bc], a                                     ; $4acf: $02
	ld   bc, $6b58                                   ; $4ad0: $01 $58 $6b
	ld   d, d                                        ; $4ad3: $52
	and  c                                           ; $4ad4: $a1
	ld   l, [hl]                                     ; $4ad5: $6e
	sub  [hl]                                        ; $4ad6: $96
	ld   a, [$000d]                                  ; $4ad7: $fa $0d $00
	ld   a, [bc]                                     ; $4ada: $0a
	ld   sp, $2040                                   ; $4adb: $31 $40 $20
	inc  bc                                          ; $4ade: $03
	jr   nz, @+$03                                   ; $4adf: $20 $01

	jr   z, jr_066_4b0c                              ; $4ae1: $28 $29

	nop                                              ; $4ae3: $00
	ld   b, $e4                                      ; $4ae4: $06 $e4
	rrca                                             ; $4ae6: $0f
	inc  e                                           ; $4ae7: $1c
	ld   b, $02                                      ; $4ae8: $06 $02
	ld   [bc], a                                     ; $4aea: $02
	ld   bc, $7776                                   ; $4aeb: $01 $76 $77
	adc  a                                           ; $4aee: $8f

jr_066_4aef:
	ld   a, l                                        ; $4aef: $7d
	sbc  [hl]                                        ; $4af0: $9e
	inc  bc                                          ; $4af1: $03
	ld   h, l                                        ; $4af2: $65
	inc  bc                                          ; $4af3: $03
	ret  nc                                          ; $4af4: $d0

	ld   [bc], a                                     ; $4af5: $02
	sub  e                                           ; $4af6: $93
	ld   h, l                                        ; $4af7: $65
	ld   h, b                                        ; $4af8: $60
	sbc  b                                           ; $4af9: $98
	ld   l, [hl]                                     ; $4afa: $6e
	ld   a, [$000d]                                  ; $4afb: $fa $0d $00
	ld   a, [bc]                                     ; $4afe: $0a
	add  hl, de                                      ; $4aff: $19
	dec  b                                           ; $4b00: $05
	ld   [bc], a                                     ; $4b01: $02
	ld   [bc], a                                     ; $4b02: $02
	inc  [hl]                                        ; $4b03: $34
	inc  bc                                          ; $4b04: $03
	ret  nc                                          ; $4b05: $d0

	ld   h, b                                        ; $4b06: $60
	sbc  b                                           ; $4b07: $98
	nop                                              ; $4b08: $00
	nop                                              ; $4b09: $00
	cp   c                                           ; $4b0a: $b9
	push hl                                          ; $4b0b: $e5

jr_066_4b0c:
	push af                                          ; $4b0c: $f5
	ret  c                                           ; $4b0d: $d8

	ld   h, l                                        ; $4b0e: $65
	ld   [hl], h                                     ; $4b0f: $74
	sub  [hl]                                        ; $4b10: $96
	ld   e, a                                        ; $4b11: $5f
	sbc  c                                           ; $4b12: $99
	nop                                              ; $4b13: $00
	ld   bc, $2707                                   ; $4b14: $01 $07 $27
	db   $10                                         ; $4b17: $10
	ld   [bc], a                                     ; $4b18: $02
	inc  bc                                          ; $4b19: $03
	ld   bc, $2000                                   ; $4b1a: $01 $00 $20
	nop                                              ; $4b1d: $00
	rlca                                             ; $4b1e: $07
	ccf                                              ; $4b1f: $3f
	db   $10                                         ; $4b20: $10
	ld   [bc], a                                     ; $4b21: $02
	inc  bc                                          ; $4b22: $03
	ld   bc, $2001                                   ; $4b23: $01 $01 $20
	nop                                              ; $4b26: $00
	ld   b, $69                                      ; $4b27: $06 $69
	db   $10                                         ; $4b29: $10
	inc  e                                           ; $4b2a: $1c
	ld   b, $03                                      ; $4b2b: $06 $03
	inc  bc                                          ; $4b2d: $03
	ld   bc, $9d54                                   ; $4b2e: $01 $54 $9d
	ld   [hl], c                                     ; $4b31: $71
	ld   a, [$000d]                                  ; $4b32: $fa $0d $00
	ld   a, [bc]                                     ; $4b35: $0a
	dec  b                                           ; $4b36: $05
	ld   b, b                                        ; $4b37: $40
	rst  $38                                         ; $4b38: $ff
	inc  bc                                          ; $4b39: $03
	rst  $38                                         ; $4b3a: $ff
	ld   bc, $2801                                   ; $4b3b: $01 $01 $28
	nop                                              ; $4b3e: $00
	ld   b, $86                                      ; $4b3f: $06 $86
	db   $10                                         ; $4b41: $10
	inc  c                                           ; $4b42: $0c
	inc  bc                                          ; $4b43: $03
	inc  e                                           ; $4b44: $1c
	ld   b, $02                                      ; $4b45: $06 $02
	ld   [bc], a                                     ; $4b47: $02
	ld   bc, $acd1                                   ; $4b48: $01 $d1 $ac
	ld   a, [$040d]                                  ; $4b4b: $fa $0d $04
	ld   a, a                                        ; $4b4e: $7f
	and  c                                           ; $4b4f: $a1
	ld   l, [hl]                                     ; $4b50: $6e
	sub  a                                           ; $4b51: $97
	sbc  [hl]                                        ; $4b52: $9e
	db   $e4                                         ; $4b53: $e4
	rst  $28                                         ; $4b54: $ef
	ld   a, c                                        ; $4b55: $79
	inc  b                                           ; $4b56: $04
	jr   jr_066_4bc6                                 ; $4b57: $18 $6d

	sbc  c                                           ; $4b59: $99
	ld   l, [hl]                                     ; $4b5a: $6e
	sbc  e                                           ; $4b5b: $9b
	ld   a, [$000d]                                  ; $4b5c: $fa $0d $00
	ld   a, [bc]                                     ; $4b5f: $0a
	ld   sp, $2040                                   ; $4b60: $31 $40 $20
	inc  bc                                          ; $4b63: $03
	jr   nz, @+$03                                   ; $4b64: $20 $01

	jr   z, jr_066_4b91                              ; $4b66: $28 $29

	nop                                              ; $4b68: $00
	ld   b, $86                                      ; $4b69: $06 $86
	db   $10                                         ; $4b6b: $10
	inc  c                                           ; $4b6c: $0c
	inc  bc                                          ; $4b6d: $03
	inc  e                                           ; $4b6e: $1c
	ld   b, $02                                      ; $4b6f: $06 $02
	ld   [bc], a                                     ; $4b71: $02
	ld   bc, $6b58                                   ; $4b72: $01 $58 $6b
	ld   d, d                                        ; $4b75: $52
	and  c                                           ; $4b76: $a1
	ld   l, [hl]                                     ; $4b77: $6e
	sub  [hl]                                        ; $4b78: $96
	ld   a, [$000d]                                  ; $4b79: $fa $0d $00
	ld   a, [bc]                                     ; $4b7c: $0a
	ld   sp, $2040                                   ; $4b7d: $31 $40 $20
	inc  bc                                          ; $4b80: $03
	jr   nz, @+$03                                   ; $4b81: $20 $01

	jr   z, jr_066_4bae                              ; $4b83: $28 $29

	nop                                              ; $4b85: $00
	ld   b, $86                                      ; $4b86: $06 $86
	db   $10                                         ; $4b88: $10
	dec  c                                           ; $4b89: $0d
	nop                                              ; $4b8a: $00
	nop                                              ; $4b8b: $00
	rrca                                             ; $4b8c: $0f
	nop                                              ; $4b8d: $00
	ld   bc, $0b0c                                   ; $4b8e: $01 $0c $0b

jr_066_4b91:
	rlca                                             ; $4b91: $07
	ldh  [c], a                                      ; $4b92: $e2
	db   $10                                         ; $4b93: $10
	inc  bc                                          ; $4b94: $03
	rst  $38                                         ; $4b95: $ff
	ld   bc, $2002                                   ; $4b96: $01 $02 $20
	nop                                              ; $4b99: $00
	rlca                                             ; $4b9a: $07
	ld   [$0311], sp                                 ; $4b9b: $08 $11 $03
	rst  $38                                         ; $4b9e: $ff
	ld   bc, $2301                                   ; $4b9f: $01 $01 $23
	nop                                              ; $4ba2: $00
	inc  e                                           ; $4ba3: $1c
	ld   b, $03                                      ; $4ba4: $06 $03
	inc  bc                                          ; $4ba6: $03
	dec  e                                           ; $4ba7: $1d
	ld   b, b                                        ; $4ba8: $40
	ld   d, $03                                      ; $4ba9: $16 $03
	ld   d, $01                                      ; $4bab: $16 $01
	inc  bc                                          ; $4bad: $03

jr_066_4bae:
	jr   z, jr_066_4bb0                              ; $4bae: $28 $00

jr_066_4bb0:
	ld   bc, $9252                                   ; $4bb0: $01 $52 $92
	ld   c, a                                        ; $4bb3: $4f
	sbc  [hl]                                        ; $4bb4: $9e
	adc  h                                           ; $4bb5: $8c
	ld   d, d                                        ; $4bb6: $52
	ld   [hl], c                                     ; $4bb7: $71
	ld   l, l                                        ; $4bb8: $6d
	adc  h                                           ; $4bb9: $8c
	ld   d, d                                        ; $4bba: $52
	ld   [hl], c                                     ; $4bbb: $71
	ld   l, l                                        ; $4bbc: $6d
	rst  $38                                         ; $4bbd: $ff
	rst  $38                                         ; $4bbe: $ff
	dec  c                                           ; $4bbf: $0d
	ld   a, b                                        ; $4bc0: $78
	ld   e, c                                        ; $4bc1: $59
	ld   a, b                                        ; $4bc2: $78
	ld   e, c                                        ; $4bc3: $59
	sub  d                                           ; $4bc4: $92
	sbc  c                                           ; $4bc5: $99

jr_066_4bc6:
	ld   a, b                                        ; $4bc6: $78
	db   $fc                                         ; $4bc7: $fc
	sbc  a                                           ; $4bc8: $9f
	dec  c                                           ; $4bc9: $0d
	nop                                              ; $4bca: $00
	ld   a, [bc]                                     ; $4bcb: $0a
	inc  e                                           ; $4bcc: $1c
	ld   b, $01                                      ; $4bcd: $06 $01
	ld   bc, $5801                                   ; $4bcf: $01 $01 $58
	ld   e, c                                        ; $4bd2: $59
	ld   h, b                                        ; $4bd3: $60
	ld   [hl], l                                     ; $4bd4: $75
	sbc  [hl]                                        ; $4bd5: $9e
	ld   d, d                                        ; $4bd6: $52
	ld   d, d                                        ; $4bd7: $52
	ld   d, b                                        ; $4bd8: $50
	ld   l, c                                        ; $4bd9: $69
	ld   e, c                                        ; $4bda: $59
	ld   e, a                                        ; $4bdb: $5f
	ld   l, l                                        ; $4bdc: $6d
	ld   l, d                                        ; $4bdd: $6a
	sbc  a                                           ; $4bde: $9f
	dec  c                                           ; $4bdf: $0d
	nop                                              ; $4be0: $00
	ld   a, [bc]                                     ; $4be1: $0a
	ld   b, $2a                                      ; $4be2: $06 $2a
	ld   de, $061c                                   ; $4be4: $11 $1c $06
	ld   bc, $1d01                                   ; $4be7: $01 $01 $1d
	ld   b, b                                        ; $4bea: $40
	ld   d, $03                                      ; $4beb: $16 $03
	ld   d, $01                                      ; $4bed: $16 $01
	ld   [bc], a                                     ; $4bef: $02
	jr   z, jr_066_4bf2                              ; $4bf0: $28 $00

jr_066_4bf2:
	ld   bc, $5252                                   ; $4bf2: $01 $52 $52
	ld   d, b                                        ; $4bf5: $50
	ld   l, c                                        ; $4bf6: $69
	ld   e, c                                        ; $4bf7: $59
	ld   d, d                                        ; $4bf8: $52
	ld   l, l                                        ; $4bf9: $6d
	ld   l, d                                        ; $4bfa: $6a
	rst  $38                                         ; $4bfb: $ff
	rst  $38                                         ; $4bfc: $ff
	dec  c                                           ; $4bfd: $0d
	or   [hl]                                        ; $4bfe: $b6
	push af                                          ; $4bff: $f5
	xor  [hl]                                        ; $4c00: $ae
	rst  $20                                         ; $4c01: $e7
	ei                                               ; $4c02: $fb
	ld   a, b                                        ; $4c03: $78
	sbc  a                                           ; $4c04: $9f
	dec  c                                           ; $4c05: $0d
	nop                                              ; $4c06: $00
	ld   a, [bc]                                     ; $4c07: $0a
	ld   b, $2a                                      ; $4c08: $06 $2a
	ld   de, $061c                                   ; $4c0a: $11 $1c $06
	dec  b                                           ; $4c0d: $05
	dec  b                                           ; $4c0e: $05
	dec  e                                           ; $4c0f: $1d
	ld   b, b                                        ; $4c10: $40
	ld   d, $03                                      ; $4c11: $16 $03
	ld   d, $01                                      ; $4c13: $16 $01
	ld   [bc], a                                     ; $4c15: $02
	add  hl, hl                                      ; $4c16: $29
	nop                                              ; $4c17: $00
	ld   bc, $7c6d                                   ; $4c18: $01 $6d $7c
	adc  [hl]                                        ; $4c1b: $8e
	ld   [bc], a                                     ; $4c1c: $02
	ld   a, [de]                                     ; $4c1d: $1a
	inc  bc                                          ; $4c1e: $03
	ld   l, e                                        ; $4c1f: $6b
	and  b                                           ; $4c20: $a0
	dec  c                                           ; $4c21: $0d
	adc  h                                           ; $4c22: $8c
	ld   l, a                                        ; $4c23: $6f
	ld   e, d                                        ; $4c24: $5a
	ld   d, [hl]                                     ; $4c25: $56
	ld   l, l                                        ; $4c26: $6d
	sub  [hl]                                        ; $4c27: $96
	rst  $38                                         ; $4c28: $ff
	rst  $38                                         ; $4c29: $ff
	dec  c                                           ; $4c2a: $0d
	nop                                              ; $4c2b: $00
	ld   a, [bc]                                     ; $4c2c: $0a
	ld   bc, $9166                                   ; $4c2d: $01 $66 $91
	sbc  [hl]                                        ; $4c30: $9e
	ld   e, b                                        ; $4c31: $58
	inc  b                                           ; $4c32: $04
	ld   a, e                                        ; $4c33: $7b
	sbc  d                                           ; $4c34: $9a
	ld   h, e                                        ; $4c35: $63
	and  c                                           ; $4c36: $a1
	sbc  a                                           ; $4c37: $9f
	dec  c                                           ; $4c38: $0d
	nop                                              ; $4c39: $00
	ld   a, [bc]                                     ; $4c3a: $0a
	dec  c                                           ; $4c3b: $0d
	nop                                              ; $4c3c: $00
	nop                                              ; $4c3d: $00
	rrca                                             ; $4c3e: $0f
	nop                                              ; $4c3f: $00
	ld   bc, $4005                                   ; $4c40: $01 $05 $40
	rst  $38                                         ; $4c43: $ff
	ld   bc, $0000                                   ; $4c44: $01 $00 $00
	ld   bc, $5483                                   ; $4c47: $01 $83 $54
	rst  $38                                         ; $4c4a: $ff
	rst  $38                                         ; $4c4b: $ff
	ld   l, e                                        ; $4c4c: $6b
	sbc  d                                           ; $4c4d: $9a
	ld   h, [hl]                                     ; $4c4e: $66
	sub  c                                           ; $4c4f: $91
	sbc  [hl]                                        ; $4c50: $9e
	dec  c                                           ; $4c51: $0d
	inc  bc                                          ; $4c52: $03
	ld   l, b                                        ; $4c53: $68
	ld   a, l                                        ; $4c54: $7d
	ld   [hl], a                                     ; $4c55: $77
	ld   h, c                                        ; $4c56: $61
	add  [hl]                                        ; $4c57: $86
	ld   d, d                                        ; $4c58: $52
	ld   h, c                                        ; $4c59: $61
	ld   d, h                                        ; $4c5a: $54
	ld   e, c                                        ; $4c5b: $59
	ld   a, b                                        ; $4c5c: $78
	rst  $38                                         ; $4c5d: $ff
	rst  $38                                         ; $4c5e: $ff
	dec  c                                           ; $4c5f: $0d
	nop                                              ; $4c60: $00
	ld   a, [bc]                                     ; $4c61: $0a
	ld   b, $62                                      ; $4c62: $06 $62
	ld   de, $0423                                   ; $4c64: $11 $23 $04
	inc  e                                           ; $4c67: $1c
	ld   bc, $0000                                   ; $4c68: $01 $00 $00
	ld   bc, $9750                                   ; $4c6b: $01 $50 $97
	sbc  [hl]                                        ; $4c6e: $9e
	ld   [$6300], sp                                 ; $4c6f: $08 $00 $63
	and  c                                           ; $4c72: $a1
	sbc  a                                           ; $4c73: $9f
	dec  c                                           ; $4c74: $0d
	ld   l, a                                        ; $4c75: $6f
	sub  l                                           ; $4c76: $95
	ld   d, h                                        ; $4c77: $54
	ld   [hl], a                                     ; $4c78: $77
	ld   d, d                                        ; $4c79: $52
	ld   d, d                                        ; $4c7a: $52
	halt                                             ; $4c7b: $76
	ld   h, c                                        ; $4c7c: $61
	sbc  e                                           ; $4c7d: $9b
	ld   a, c                                        ; $4c7e: $79
	rst  $38                                         ; $4c7f: $ff
	rst  $38                                         ; $4c80: $ff
	dec  c                                           ; $4c81: $0d
	nop                                              ; $4c82: $00
	ld   a, [bc]                                     ; $4c83: $0a
	inc  e                                           ; $4c84: $1c
	ld   bc, $0505                                   ; $4c85: $01 $05 $05
	ld   bc, $7c50                                   ; $4c88: $01 $50 $7c
	rst  $38                                         ; $4c8b: $ff
	rst  $38                                         ; $4c8c: $ff
	ld   h, a                                        ; $4c8d: $67
	adc  l                                           ; $4c8e: $8d
	adc  h                                           ; $4c8f: $8c
	ld   l, c                                        ; $4c90: $69
	and  c                                           ; $4c91: $a1
	ld   e, d                                        ; $4c92: $5a
	dec  c                                           ; $4c93: $0d
	inc  b                                           ; $4c94: $04
	ld   c, $04                                      ; $4c95: $0e $04
	ld   d, $02                                      ; $4c97: $16 $02
	xor  b                                           ; $4c99: $a8
	inc  b                                           ; $4c9a: $04
	sub  l                                           ; $4c9b: $95
	ld   [bc], a                                     ; $4c9c: $02
	ld   hl, $587c                                   ; $4c9d: $21 $7c $58
	ld   l, e                                        ; $4ca0: $6b
	ld   d, h                                        ; $4ca1: $54
	ld   h, [hl]                                     ; $4ca2: $66
	inc  bc                                          ; $4ca3: $03
	ld   l, e                                        ; $4ca4: $6b
	inc  b                                           ; $4ca5: $04
	ld   [de], a                                     ; $4ca6: $12
	ld   [hl], c                                     ; $4ca7: $71
	ld   [hl], h                                     ; $4ca8: $74
	dec  c                                           ; $4ca9: $0d
	sub  b                                           ; $4caa: $90
	sub  a                                           ; $4cab: $97
	ld   d, [hl]                                     ; $4cac: $56
	adc  h                                           ; $4cad: $8c
	ld   l, c                                        ; $4cae: $69
	and  c                                           ; $4caf: $a1
	ld   e, c                                        ; $4cb0: $59
	ld   sp, hl                                      ; $4cb1: $f9
	dec  c                                           ; $4cb2: $0d
	nop                                              ; $4cb3: $00
	ld   a, [bc]                                     ; $4cb4: $0a
	add  hl, de                                      ; $4cb5: $19
	dec  b                                           ; $4cb6: $05
	ld   [bc], a                                     ; $4cb7: $02
	ld   [bc], a                                     ; $4cb8: $02
	inc  l                                           ; $4cb9: $2c
	ld   e, e                                        ; $4cba: $5b
	ld   [bc], a                                     ; $4cbb: $02
	rst  $38                                         ; $4cbc: $ff
	ld   e, a                                        ; $4cbd: $5f
	sbc  c                                           ; $4cbe: $99
	nop                                              ; $4cbf: $00
	nop                                              ; $4cc0: $00
	ld   [bc], a                                     ; $4cc1: $02
	inc  l                                           ; $4cc2: $2c
	ld   e, e                                        ; $4cc3: $5b
	ld   [bc], a                                     ; $4cc4: $02
	rst  $38                                         ; $4cc5: $ff
	ld   e, a                                        ; $4cc6: $5f
	ld   a, b                                        ; $4cc7: $78
	ld   d, d                                        ; $4cc8: $52
	nop                                              ; $4cc9: $00
	ld   bc, $dd07                                   ; $4cca: $01 $07 $dd
	ld   de, $0302                                   ; $4ccd: $11 $02 $03
	ld   bc, $2000                                   ; $4cd0: $01 $00 $20
	nop                                              ; $4cd3: $00
	rlca                                             ; $4cd4: $07
	inc  a                                           ; $4cd5: $3c
	ld   [de], a                                     ; $4cd6: $12
	ld   [bc], a                                     ; $4cd7: $02
	inc  bc                                          ; $4cd8: $03
	ld   bc, $2001                                   ; $4cd9: $01 $01 $20
	nop                                              ; $4cdc: $00
	ld   b, $91                                      ; $4cdd: $06 $91
	ld   [de], a                                     ; $4cdf: $12
	rrca                                             ; $4ce0: $0f
	nop                                              ; $4ce1: $00
	ld   bc, $9d01                                   ; $4ce2: $01 $01 $9d
	ld   e, c                                        ; $4ce5: $59
	sbc  b                                           ; $4ce6: $98
	adc  h                                           ; $4ce7: $8c
	ld   h, l                                        ; $4ce8: $65
	ld   l, l                                        ; $4ce9: $6d
	sbc  a                                           ; $4cea: $9f
	dec  c                                           ; $4ceb: $0d
	sub  [hl]                                        ; $4cec: $96
	sbc  e                                           ; $4ced: $9b
	ld   h, c                                        ; $4cee: $61
	and  c                                           ; $4cef: $a1
	ld   [hl], l                                     ; $4cf0: $75
	ld   [bc], a                                     ; $4cf1: $02
	inc  l                                           ; $4cf2: $2c
	ld   e, e                                        ; $4cf3: $5b
	ld   [bc], a                                     ; $4cf4: $02
	rst  $38                                         ; $4cf5: $ff
	ld   e, a                                        ; $4cf6: $5f
	adc  h                                           ; $4cf7: $8c
	ld   h, a                                        ; $4cf8: $67
	sbc  a                                           ; $4cf9: $9f
	dec  c                                           ; $4cfa: $0d
	nop                                              ; $4cfb: $00
	ld   a, [bc]                                     ; $4cfc: $0a
	dec  b                                           ; $4cfd: $05
	ld   b, b                                        ; $4cfe: $40
	ld   h, l                                        ; $4cff: $65
	inc  bc                                          ; $4d00: $03
	ld   h, l                                        ; $4d01: $65
	ld   bc, $2801                                   ; $4d02: $01 $01 $28
	nop                                              ; $4d05: $00
	inc  e                                           ; $4d06: $1c
	ld   bc, $0505                                   ; $4d07: $01 $05 $05
	dec  e                                           ; $4d0a: $1d
	ld   b, b                                        ; $4d0b: $40
	ld   de, $1103                                   ; $4d0c: $11 $03 $11
	ld   bc, $2803                                   ; $4d0f: $01 $03 $28
	nop                                              ; $4d12: $00
	ld   bc, $9850                                   ; $4d13: $01 $50 $98
	ld   e, d                                        ; $4d16: $5a
	halt                                             ; $4d17: $76
	ld   d, h                                        ; $4d18: $54
	ld   h, d                                        ; $4d19: $62
	ld   h, h                                        ; $4d1a: $64
	ld   d, d                                        ; $4d1b: $52
	adc  h                                           ; $4d1c: $8c
	ld   h, a                                        ; $4d1d: $67
	sbc  a                                           ; $4d1e: $9f
	dec  c                                           ; $4d1f: $0d
	ld   [$6300], sp                                 ; $4d20: $08 $00 $63
	and  c                                           ; $4d23: $a1
	ld   [hl], h                                     ; $4d24: $74
	sbc  [hl]                                        ; $4d25: $9e
	dec  c                                           ; $4d26: $0d
	sub  d                                           ; $4d27: $92
	ld   h, e                                        ; $4d28: $63
	ld   h, l                                        ; $4d29: $65
	ld   d, d                                        ; $4d2a: $52
	and  c                                           ; $4d2b: $a1
	ld   [hl], l                                     ; $4d2c: $75
	ld   h, a                                        ; $4d2d: $67
	ld   a, e                                        ; $4d2e: $7b
	rst  $38                                         ; $4d2f: $ff
	rst  $38                                         ; $4d30: $ff
	dec  c                                           ; $4d31: $0d
	nop                                              ; $4d32: $00
	ld   a, [bc]                                     ; $4d33: $0a
	dec  c                                           ; $4d34: $0d
	nop                                              ; $4d35: $00
	nop                                              ; $4d36: $00
	rrca                                             ; $4d37: $0f
	nop                                              ; $4d38: $00
	ld   bc, $020c                                   ; $4d39: $01 $0c $02
	ld   b, $23                                      ; $4d3c: $06 $23
	inc  de                                          ; $4d3e: $13
	rrca                                             ; $4d3f: $0f
	nop                                              ; $4d40: $00
	ld   bc, $6701                                   ; $4d41: $01 $01 $67
	adc  l                                           ; $4d44: $8d
	adc  h                                           ; $4d45: $8c
	ld   l, c                                        ; $4d46: $69
	and  c                                           ; $4d47: $a1
	sbc  a                                           ; $4d48: $9f
	dec  c                                           ; $4d49: $0d
	inc  b                                           ; $4d4a: $04
	ld   e, $79                                      ; $4d4b: $1e $79
	sub  d                                           ; $4d4d: $92
	sbc  c                                           ; $4d4e: $99
	ld   h, c                                        ; $4d4f: $61
	halt                                             ; $4d50: $76
	ld   e, d                                        ; $4d51: $5a
	ld   d, b                                        ; $4d52: $50
	sbc  c                                           ; $4d53: $99
	ld   a, h                                        ; $4d54: $7c
	ld   [hl], l                                     ; $4d55: $75
	rst  $38                                         ; $4d56: $ff
	rst  $38                                         ; $4d57: $ff
	dec  c                                           ; $4d58: $0d
	nop                                              ; $4d59: $00
	ld   a, [bc]                                     ; $4d5a: $0a
	inc  e                                           ; $4d5b: $1c
	ld   bc, $0404                                   ; $4d5c: $01 $04 $04
	dec  e                                           ; $4d5f: $1d
	ld   b, b                                        ; $4d60: $40
	ld   de, $1103                                   ; $4d61: $11 $03 $11
	ld   bc, $2901                                   ; $4d64: $01 $01 $29
	nop                                              ; $4d67: $00
	ld   bc, $546b                                   ; $4d68: $01 $6b $54
	ld   [hl], l                                     ; $4d6b: $75
	ld   h, a                                        ; $4d6c: $67
	ld   e, c                                        ; $4d6d: $59
	rst  $38                                         ; $4d6e: $ff
	rst  $38                                         ; $4d6f: $ff
	dec  c                                           ; $4d70: $0d
	ld   l, e                                        ; $4d71: $6b
	sbc  d                                           ; $4d72: $9a
	ld   h, [hl]                                     ; $4d73: $66
	sub  c                                           ; $4d74: $91
	inc  bc                                          ; $4d75: $03
	dec  c                                           ; $4d76: $0d
	inc  b                                           ; $4d77: $04
	ld   a, b                                        ; $4d78: $78
	ld   a, b                                        ; $4d79: $78
	ld   d, d                                        ; $4d7a: $52
	ld   [hl], l                                     ; $4d7b: $75
	ld   h, a                                        ; $4d7c: $67
	sub  [hl]                                        ; $4d7d: $96
	ld   a, e                                        ; $4d7e: $7b
	sbc  a                                           ; $4d7f: $9f
	dec  c                                           ; $4d80: $0d
	ld   l, e                                        ; $4d81: $6b
	sbc  d                                           ; $4d82: $9a
	ld   [hl], l                                     ; $4d83: $75
	ld   a, l                                        ; $4d84: $7d
	sbc  a                                           ; $4d85: $9f
	dec  c                                           ; $4d86: $0d
	nop                                              ; $4d87: $00
	ld   a, [bc]                                     ; $4d88: $0a
	dec  c                                           ; $4d89: $0d
	nop                                              ; $4d8a: $00
	nop                                              ; $4d8b: $00
	rrca                                             ; $4d8c: $0f
	nop                                              ; $4d8d: $00
	ld   bc, $1e09                                   ; $4d8e: $01 $09 $1e
	ld   b, $0b                                      ; $4d91: $06 $0b
	inc  de                                          ; $4d93: $13
	rrca                                             ; $4d94: $0f
	nop                                              ; $4d95: $00
	ld   bc, $ff01                                   ; $4d96: $01 $01 $ff
	rst  $38                                         ; $4d99: $ff
	rst  $38                                         ; $4d9a: $ff
	rst  $38                                         ; $4d9b: $ff
	dec  c                                           ; $4d9c: $0d
	nop                                              ; $4d9d: $00
	ld   a, [bc]                                     ; $4d9e: $0a
	inc  e                                           ; $4d9f: $1c
	ld   bc, $0404                                   ; $4da0: $01 $04 $04
	ld   bc, $5477                                   ; $4da3: $01 $77 $54
	ld   h, l                                        ; $4da6: $65
	ld   l, l                                        ; $4da7: $6d
	and  c                                           ; $4da8: $a1
	ld   [hl], l                                     ; $4da9: $75
	ld   h, a                                        ; $4daa: $67
	ld   e, c                                        ; $4dab: $59
	ld   sp, hl                                      ; $4dac: $f9
	dec  c                                           ; $4dad: $0d
	nop                                              ; $4dae: $00
	ld   a, [bc]                                     ; $4daf: $0a
	ld   bc, $fb8a                                   ; $4db0: $01 $8a $fb
	ld   [hl], c                                     ; $4db3: $71
	halt                                             ; $4db4: $76
	ld   h, l                                        ; $4db5: $65
	ld   [hl], h                                     ; $4db6: $74
	rst  $38                                         ; $4db7: $ff
	rst  $38                                         ; $4db8: $ff
	dec  c                                           ; $4db9: $0d
	nop                                              ; $4dba: $00
	inc  e                                           ; $4dbb: $1c
	ld   bc, $0303                                   ; $4dbc: $01 $03 $03
	ld   bc, $638c                                   ; $4dbf: $01 $8c $63
	ld   e, c                                        ; $4dc2: $59
	ld   b, $04                                      ; $4dc3: $06 $04
	ld   e, d                                        ; $4dc5: $5a
	ld   d, b                                        ; $4dc6: $50
	sbc  c                                           ; $4dc7: $99
	and  c                                           ; $4dc8: $a1
	ld   h, [hl]                                     ; $4dc9: $66
	sub  c                                           ; $4dca: $91
	ld   sp, hl                                      ; $4dcb: $f9
	dec  c                                           ; $4dcc: $0d
	nop                                              ; $4dcd: $00
	ld   a, [bc]                                     ; $4dce: $0a
	inc  e                                           ; $4dcf: $1c
	ld   bc, $0404                                   ; $4dd0: $01 $04 $04
	ld   bc, $7003                                   ; $4dd3: $01 $03 $70
	ld   e, l                                        ; $4dd6: $5d
	ld   e, b                                        ; $4dd7: $58
	inc  b                                           ; $4dd8: $04
	sub  l                                           ; $4dd9: $95
	ld   [bc], a                                     ; $4dda: $02
	ld   hl, $9079                                   ; $4ddb: $21 $79 $90
	ld   [hl], a                                     ; $4dde: $77
	ld   [hl], c                                     ; $4ddf: $71
	ld   l, l                                        ; $4de0: $6d
	adc  c                                           ; $4de1: $89
	ld   d, h                                        ; $4de2: $54
	ld   e, d                                        ; $4de3: $5a
	dec  c                                           ; $4de4: $0d
	ld   d, d                                        ; $4de5: $52
	ld   d, d                                        ; $4de6: $52
	ld   [hl], l                                     ; $4de7: $75
	ld   h, a                                        ; $4de8: $67
	sub  [hl]                                        ; $4de9: $96
	rst  $38                                         ; $4dea: $ff
	rst  $38                                         ; $4deb: $ff
	ld   h, c                                        ; $4dec: $61
	ld   h, c                                        ; $4ded: $61
	ld   a, l                                        ; $4dee: $7d
	sbc  [hl]                                        ; $4def: $9e
	sbc  l                                           ; $4df0: $9d
	ld   l, l                                        ; $4df1: $6d
	ld   h, l                                        ; $4df2: $65
	dec  c                                           ; $4df3: $0d
	add  b                                           ; $4df4: $80
	halt                                             ; $4df5: $76
	sbc  b                                           ; $4df6: $98
	ld   [hl], l                                     ; $4df7: $75
	inc  b                                           ; $4df8: $04
	ld   c, c                                        ; $4df9: $49
	halt                                             ; $4dfa: $76
	ld   e, c                                        ; $4dfb: $59
	ld   h, l                                        ; $4dfc: $65
	adc  h                                           ; $4dfd: $8c
	ld   h, a                                        ; $4dfe: $67
	ld   e, c                                        ; $4dff: $59
	sub  a                                           ; $4e00: $97
	rst  $38                                         ; $4e01: $ff
	rst  $38                                         ; $4e02: $ff
	dec  c                                           ; $4e03: $0d
	nop                                              ; $4e04: $00
	ld   a, [bc]                                     ; $4e05: $0a
	dec  c                                           ; $4e06: $0d
	nop                                              ; $4e07: $00
	nop                                              ; $4e08: $00
	rrca                                             ; $4e09: $0f
	nop                                              ; $4e0a: $00
	ld   bc, $1e09                                   ; $4e0b: $01 $09 $1e
	ld   bc, $efb6                                   ; $4e0e: $01 $b6 $ef
	push af                                          ; $4e11: $f5
	ld   a, c                                        ; $4e12: $79
	ld   [hl], l                                     ; $4e13: $75
	sub  b                                           ; $4e14: $90
	ld   [bc], a                                     ; $4e15: $02
	ld   a, a                                        ; $4e16: $7f
	ld   [hl], c                                     ; $4e17: $71
	ld   [hl], h                                     ; $4e18: $74
	adc  l                                           ; $4e19: $8d
	sub  [hl]                                        ; $4e1a: $96
	ld   d, h                                        ; $4e1b: $54
	dec  c                                           ; $4e1c: $0d
	ld   e, c                                        ; $4e1d: $59
	ld   a, b                                        ; $4e1e: $78
	ld   sp, hl                                      ; $4e1f: $f9
	dec  c                                           ; $4e20: $0d
	nop                                              ; $4e21: $00
	ld   a, [bc]                                     ; $4e22: $0a
	ld   b, $a6                                      ; $4e23: $06 $a6
	ld   d, $0e                                      ; $4e25: $16 $0e
	ld   e, $1c                                      ; $4e27: $1e $1c
	ld   bc, $0101                                   ; $4e29: $01 $01 $01
	ld   bc, $9a6b                                   ; $4e2c: $01 $6b $9a
	ld   h, [hl]                                     ; $4e2f: $66
	sub  c                                           ; $4e30: $91
	sbc  [hl]                                        ; $4e31: $9e
	ld   e, b                                        ; $4e32: $58
	ld   l, e                                        ; $4e33: $6b
	ld   d, h                                        ; $4e34: $54
	ld   h, [hl]                                     ; $4e35: $66
	and  b                                           ; $4e36: $a0
	dec  c                                           ; $4e37: $0d
	dec  b                                           ; $4e38: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e39: $cf
	adc  a                                           ; $4e3a: $8f
	adc  h                                           ; $4e3b: $8c
	ld   h, l                                        ; $4e3c: $65
	sub  l                                           ; $4e3d: $95
	ld   d, h                                        ; $4e3e: $54
	ld   a, [$000d]                                  ; $4e3f: $fa $0d $00
	ld   a, [bc]                                     ; $4e42: $0a
	ld   bc, $688c                                   ; $4e43: $01 $8c $68
	ld   a, l                                        ; $4e46: $7d
	sbc  [hl]                                        ; $4e47: $9e
	inc  bc                                          ; $4e48: $03
	ld   [hl], $a0                                   ; $4e49: $36 $a0
	rst  $38                                         ; $4e4b: $ff
	rst  $38                                         ; $4e4c: $ff
	dec  c                                           ; $4e4d: $0d
	nop                                              ; $4e4e: $00
	ld   a, [bc]                                     ; $4e4f: $0a
	add  hl, de                                      ; $4e50: $19
	dec  b                                           ; $4e51: $05
	ld   [bc], a                                     ; $4e52: $02
	adc  c                                           ; $4e53: $89
	ld   d, h                                        ; $4e54: $54
	ld   e, e                                        ; $4e55: $5b
	ld   [hl], l                                     ; $4e56: $75
	ld   a, l                                        ; $4e57: $7d
	ld   e, l                                        ; $4e58: $5d
	nop                                              ; $4e59: $00
	nop                                              ; $4e5a: $00
	db   $e4                                         ; $4e5b: $e4
	call nz, $a0d8                                   ; $4e5c: $c4 $d8 $a0
	ld   e, c                                        ; $4e5f: $59
	ld   e, a                                        ; $4e60: $5f
	sbc  c                                           ; $4e61: $99
	nop                                              ; $4e62: $00
	ld   bc, $7607                                   ; $4e63: $01 $07 $76
	inc  de                                          ; $4e66: $13
	ld   [bc], a                                     ; $4e67: $02
	inc  bc                                          ; $4e68: $03
	ld   bc, $2000                                   ; $4e69: $01 $00 $20
	nop                                              ; $4e6c: $00
	rlca                                             ; $4e6d: $07
	and  [hl]                                        ; $4e6e: $a6
	inc  de                                          ; $4e6f: $13
	ld   [bc], a                                     ; $4e70: $02
	inc  bc                                          ; $4e71: $03
	ld   bc, $2001                                   ; $4e72: $01 $01 $20
	nop                                              ; $4e75: $00
	ld   b, $c6                                      ; $4e76: $06 $c6
	inc  de                                          ; $4e78: $13
	inc  e                                           ; $4e79: $1c
	ld   bc, $0101                                   ; $4e7a: $01 $01 $01
	ld   bc, $546b                                   ; $4e7d: $01 $6b $54
	ld   [hl], l                                     ; $4e80: $75
	ld   h, a                                        ; $4e81: $67
	ld   a, e                                        ; $4e82: $7b
	sbc  a                                           ; $4e83: $9f
	dec  c                                           ; $4e84: $0d
	adc  h                                           ; $4e85: $8c
	ld   l, b                                        ; $4e86: $68
	sbc  [hl]                                        ; $4e87: $9e
	ld   l, a                                        ; $4e88: $6f
	sub  c                                           ; $4e89: $91
	and  c                                           ; $4e8a: $a1
	halt                                             ; $4e8b: $76
	adc  c                                           ; $4e8c: $89
	ld   h, c                                        ; $4e8d: $61
	sbc  b                                           ; $4e8e: $98
	and  b                                           ; $4e8f: $a0
	dec  c                                           ; $4e90: $0d
	ld   a, l                                        ; $4e91: $7d
	ld   d, d                                        ; $4e92: $52
	ld   [hl], h                                     ; $4e93: $74
	ld   e, b                                        ; $4e94: $58
	ld   e, c                                        ; $4e95: $59
	ld   a, b                                        ; $4e96: $78

jr_066_4e97:
	ld   d, d                                        ; $4e97: $52
	halt                                             ; $4e98: $76
	sbc  a                                           ; $4e99: $9f
	dec  c                                           ; $4e9a: $0d
	nop                                              ; $4e9b: $00
	ld   a, [bc]                                     ; $4e9c: $0a
	dec  b                                           ; $4e9d: $05
	ld   b, b                                        ; $4e9e: $40
	rst  $38                                         ; $4e9f: $ff
	inc  bc                                          ; $4ea0: $03
	rst  $38                                         ; $4ea1: $ff
	ld   bc, $2801                                   ; $4ea2: $01 $01 $28
	nop                                              ; $4ea5: $00
	ld   b, $e8                                      ; $4ea6: $06 $e8
	inc  de                                          ; $4ea8: $13
	inc  e                                           ; $4ea9: $1c
	ld   bc, $0303                                   ; $4eaa: $01 $03 $03
	ld   bc, $9e50                                   ; $4ead: $01 $50 $9e
	ld   [$6300], sp                                 ; $4eb0: $08 $00 $63
	and  c                                           ; $4eb3: $a1
	ld   a, [$8c0d]                                  ; $4eb4: $fa $0d $8c
	ld   l, b                                        ; $4eb7: $68
	adc  c                                           ; $4eb8: $89
	ld   d, h                                        ; $4eb9: $54
	ld   e, e                                        ; $4eba: $5b
	ld   [hl], l                                     ; $4ebb: $75
	ld   a, l                                        ; $4ebc: $7d
	ld   e, c                                        ; $4ebd: $59
	ld   a, b                                        ; $4ebe: $78
	ld   d, d                                        ; $4ebf: $52
	halt                                             ; $4ec0: $76
	rst  $38                                         ; $4ec1: $ff
	rst  $38                                         ; $4ec2: $ff
	dec  c                                           ; $4ec3: $0d
	nop                                              ; $4ec4: $00
	ld   a, [bc]                                     ; $4ec5: $0a
	ld   b, $e8                                      ; $4ec6: $06 $e8
	inc  de                                          ; $4ec8: $13
	inc  e                                           ; $4ec9: $1c
	ld   bc, $0202                                   ; $4eca: $01 $02 $02
	ld   bc, $6b03                                   ; $4ecd: $01 $03 $6b
	inc  b                                           ; $4ed0: $04
	ld   [de], a                                     ; $4ed1: $12
	ld   [hl], c                                     ; $4ed2: $71
	ld   [hl], h                                     ; $4ed3: $74
	ld   e, l                                        ; $4ed4: $5d
	ld   l, [hl]                                     ; $4ed5: $6e
	ld   h, e                                        ; $4ed6: $63
	sbc  c                                           ; $4ed7: $99
	and  c                                           ; $4ed8: $a1
	ld   a, b                                        ; $4ed9: $78
	sub  a                                           ; $4eda: $97
	dec  c                                           ; $4edb: $0d
	ld   l, a                                        ; $4edc: $6f
	sub  c                                           ; $4edd: $91
	and  c                                           ; $4ede: $a1
	halt                                             ; $4edf: $76
	sub  d                                           ; $4ee0: $92
	ld   [hl], c                                     ; $4ee1: $71
	ld   [hl], h                                     ; $4ee2: $74
	ld   e, l                                        ; $4ee3: $5d
	ld   l, [hl]                                     ; $4ee4: $6e
	ld   h, e                                        ; $4ee5: $63
	ld   d, d                                        ; $4ee6: $52
	ld   a, [$000d]                                  ; $4ee7: $fa $0d $00
	ld   a, [bc]                                     ; $4eea: $0a
	inc  e                                           ; $4eeb: $1c
	ld   bc, $0000                                   ; $4eec: $01 $00 $00
	ld   bc, $9166                                   ; $4eef: $01 $66 $91
	sbc  [hl]                                        ; $4ef2: $9e
	inc  bc                                          ; $4ef3: $03
	ld   [hl], $7c                                   ; $4ef4: $36 $7c
	adc  c                                           ; $4ef6: $89
	ld   h, c                                        ; $4ef7: $61
	sbc  b                                           ; $4ef8: $98
	ld   a, l                                        ; $4ef9: $7d
	inc  bc                                          ; $4efa: $03
	jr   jr_066_4e97                                 ; $4efb: $18 $9a

	adc  h                                           ; $4efd: $8c
	ld   h, l                                        ; $4efe: $65
	ld   l, l                                        ; $4eff: $6d
	dec  c                                           ; $4f00: $0d
	ld   a, h                                        ; $4f01: $7c
	ld   [hl], l                                     ; $4f02: $75
	sbc  [hl]                                        ; $4f03: $9e
	inc  bc                                          ; $4f04: $03
	ld   l, b                                        ; $4f05: $68
	ld   a, l                                        ; $4f06: $7d
	rst  $38                                         ; $4f07: $ff
	rst  $38                                         ; $4f08: $ff
	dec  c                                           ; $4f09: $0d
	nop                                              ; $4f0a: $00
	ld   a, [bc]                                     ; $4f0b: $0a
	add  hl, de                                      ; $4f0c: $19
	dec  b                                           ; $4f0d: $05
	ld   [bc], a                                     ; $4f0e: $02
	db   $e4                                         ; $4f0f: $e4
	call nz, $a0d8                                   ; $4f10: $c4 $d8 $a0
	ld   e, c                                        ; $4f13: $59
	ld   e, a                                        ; $4f14: $5f
	sbc  c                                           ; $4f15: $99
	nop                                              ; $4f16: $00
	nop                                              ; $4f17: $00
	ld   l, h                                        ; $4f18: $6c
	ld   d, h                                        ; $4f19: $54
	ld   e, e                                        ; $4f1a: $5b
	and  c                                           ; $4f1b: $a1
	ld   [hl], l                                     ; $4f1c: $75
	xor  h                                           ; $4f1d: $ac
	db   $eb                                         ; $4f1e: $eb
	add  h                                           ; $4f1f: $84
	ld   e, e                                        ; $4f20: $5b
	and  b                                           ; $4f21: $a0
	ld   h, a                                        ; $4f22: $67
	sbc  c                                           ; $4f23: $99
	nop                                              ; $4f24: $00
	ld   bc, $3807                                   ; $4f25: $01 $07 $38
	inc  d                                           ; $4f28: $14
	ld   [bc], a                                     ; $4f29: $02
	inc  bc                                          ; $4f2a: $03
	ld   bc, $2000                                   ; $4f2b: $01 $00 $20
	nop                                              ; $4f2e: $00
	rlca                                             ; $4f2f: $07
	ld   l, b                                        ; $4f30: $68
	inc  d                                           ; $4f31: $14
	ld   [bc], a                                     ; $4f32: $02
	inc  bc                                          ; $4f33: $03
	ld   bc, $2001                                   ; $4f34: $01 $01 $20
	nop                                              ; $4f37: $00
	ld   b, $90                                      ; $4f38: $06 $90
	inc  d                                           ; $4f3a: $14
	inc  e                                           ; $4f3b: $1c
	ld   bc, $0101                                   ; $4f3c: $01 $01 $01
	ld   bc, $546b                                   ; $4f3f: $01 $6b $54
	ld   [hl], l                                     ; $4f42: $75
	ld   h, a                                        ; $4f43: $67
	ld   a, e                                        ; $4f44: $7b
	sbc  a                                           ; $4f45: $9f
	dec  c                                           ; $4f46: $0d
	ld   a, d                                        ; $4f47: $7a
	sbc  d                                           ; $4f48: $9a
	ld   l, l                                        ; $4f49: $6d
	db   $e4                                         ; $4f4a: $e4
	call nz, Call_066_75d8                           ; $4f4b: $c4 $d8 $75
	dec  c                                           ; $4f4e: $0d
	sub  h                                           ; $4f4f: $94
	ld   e, c                                        ; $4f50: $59
	and  b                                           ; $4f51: $a0
	ld   e, e                                        ; $4f52: $5b
	sbc  d                                           ; $4f53: $9a
	ld   d, d                                        ; $4f54: $52
	ld   a, c                                        ; $4f55: $79
	ld   h, l                                        ; $4f56: $65
	adc  h                                           ; $4f57: $8c
	ld   h, l                                        ; $4f58: $65
	sub  l                                           ; $4f59: $95
	ld   d, h                                        ; $4f5a: $54
	sbc  a                                           ; $4f5b: $9f
	dec  c                                           ; $4f5c: $0d
	nop                                              ; $4f5d: $00
	ld   a, [bc]                                     ; $4f5e: $0a
	dec  b                                           ; $4f5f: $05
	ld   b, b                                        ; $4f60: $40
	rst  $38                                         ; $4f61: $ff
	inc  bc                                          ; $4f62: $03
	rst  $38                                         ; $4f63: $ff
	ld   bc, $2801                                   ; $4f64: $01 $01 $28
	nop                                              ; $4f67: $00
	ld   b, $aa                                      ; $4f68: $06 $aa
	inc  d                                           ; $4f6a: $14
	inc  e                                           ; $4f6b: $1c
	ld   bc, $0404                                   ; $4f6c: $01 $04 $04
	ld   bc, $ebac                                   ; $4f6f: $01 $ac $eb
	add  h                                           ; $4f72: $84
	ld   e, e                                        ; $4f73: $5b
	ld   a, l                                        ; $4f74: $7d
	inc  bc                                          ; $4f75: $03
	ld   l, c                                        ; $4f76: $69
	ld   [bc], a                                     ; $4f77: $02
	xor  d                                           ; $4f78: $aa
	ld   [hl], l                                     ; $4f79: $75
	ld   h, a                                        ; $4f7a: $67
	sub  [hl]                                        ; $4f7b: $96
	sbc  a                                           ; $4f7c: $9f
	dec  c                                           ; $4f7d: $0d
	inc  bc                                          ; $4f7e: $03
	ld   a, b                                        ; $4f7f: $78
	ld   a, c                                        ; $4f80: $79
	db   $e4                                         ; $4f81: $e4
	call nz, Call_066_75d8                           ; $4f82: $c4 $d8 $75
	adc  l                                           ; $4f85: $8d
	ld   e, d                                        ; $4f86: $5a
	ld   e, c                                        ; $4f87: $59
	ld   a, b                                        ; $4f88: $78
	ld   d, d                                        ; $4f89: $52
	halt                                             ; $4f8a: $76
	rst  $38                                         ; $4f8b: $ff
	rst  $38                                         ; $4f8c: $ff
	dec  c                                           ; $4f8d: $0d
	nop                                              ; $4f8e: $00
	ld   a, [bc]                                     ; $4f8f: $0a
	ld   b, $aa                                      ; $4f90: $06 $aa
	inc  d                                           ; $4f92: $14
	inc  e                                           ; $4f93: $1c
	ld   bc, $0404                                   ; $4f94: $01 $04 $04
	ld   bc, $9992                                   ; $4f97: $01 $92 $99
	ld   a, h                                        ; $4f9a: $7c
	ld   a, b                                        ; $4f9b: $78
	sub  a                                           ; $4f9c: $97
	dec  c                                           ; $4f9d: $0d
	inc  bc                                          ; $4f9e: $03
	ld   [hl], b                                     ; $4f9f: $70
	ld   e, l                                        ; $4fa0: $5d
	ld   h, a                                        ; $4fa1: $67
	adc  h                                           ; $4fa2: $8c
	ld   l, c                                        ; $4fa3: $69
	adc  h                                           ; $4fa4: $8c
	ld   h, l                                        ; $4fa5: $65
	sub  l                                           ; $4fa6: $95
	ld   d, h                                        ; $4fa7: $54
	sub  [hl]                                        ; $4fa8: $96
	sbc  a                                           ; $4fa9: $9f
	dec  c                                           ; $4faa: $0d
	nop                                              ; $4fab: $00
	ld   a, [bc]                                     ; $4fac: $0a
	inc  e                                           ; $4fad: $1c
	ld   bc, $0000                                   ; $4fae: $01 $00 $00
	ld   bc, $9166                                   ; $4fb1: $01 $66 $91
	sbc  [hl]                                        ; $4fb4: $9e
	inc  bc                                          ; $4fb5: $03
	ld   l, c                                        ; $4fb6: $69
	ld   [bc], a                                     ; $4fb7: $02
	xor  d                                           ; $4fb8: $aa
	ld   a, l                                        ; $4fb9: $7d
	rst  $38                                         ; $4fba: $ff
	rst  $38                                         ; $4fbb: $ff
	dec  c                                           ; $4fbc: $0d
	nop                                              ; $4fbd: $00
	ld   a, [bc]                                     ; $4fbe: $0a
	add  hl, de                                      ; $4fbf: $19
	dec  b                                           ; $4fc0: $05
	ld   [bc], a                                     ; $4fc1: $02
	ld   l, h                                        ; $4fc2: $6c
	ld   d, h                                        ; $4fc3: $54
	ld   e, e                                        ; $4fc4: $5b
	and  c                                           ; $4fc5: $a1
	ld   [hl], l                                     ; $4fc6: $75
	xor  h                                           ; $4fc7: $ac
	db   $eb                                         ; $4fc8: $eb
	add  h                                           ; $4fc9: $84
	ld   e, e                                        ; $4fca: $5b
	and  b                                           ; $4fcb: $a0
	ld   h, a                                        ; $4fcc: $67
	sbc  c                                           ; $4fcd: $99
	nop                                              ; $4fce: $00
	nop                                              ; $4fcf: $00
	inc  bc                                          ; $4fd0: $03
	ld   e, c                                        ; $4fd1: $59
	and  b                                           ; $4fd2: $a0
	add  h                                           ; $4fd3: $84
	ld   l, a                                        ; $4fd4: $6f
	adc  h                                           ; $4fd5: $8c
	ld   e, a                                        ; $4fd6: $5f
	sbc  c                                           ; $4fd7: $99
	nop                                              ; $4fd8: $00
	ld   bc, $ec07                                   ; $4fd9: $01 $07 $ec
	inc  d                                           ; $4fdc: $14
	ld   [bc], a                                     ; $4fdd: $02
	inc  bc                                          ; $4fde: $03
	ld   bc, $2000                                   ; $4fdf: $01 $00 $20
	nop                                              ; $4fe2: $00
	rlca                                             ; $4fe3: $07
	jr   z, jr_066_4ffb                              ; $4fe4: $28 $15

	ld   [bc], a                                     ; $4fe6: $02
	inc  bc                                          ; $4fe7: $03
	ld   bc, $2001                                   ; $4fe8: $01 $01 $20
	nop                                              ; $4feb: $00
	ld   b, $a9                                      ; $4fec: $06 $a9
	dec  d                                           ; $4fee: $15
	inc  e                                           ; $4fef: $1c
	ld   bc, $0101                                   ; $4ff0: $01 $01 $01
	ld   bc, $546b                                   ; $4ff3: $01 $6b $54
	ld   [hl], l                                     ; $4ff6: $75
	ld   h, a                                        ; $4ff7: $67
	ld   a, e                                        ; $4ff8: $7b
	sbc  a                                           ; $4ff9: $9f
	dec  c                                           ; $4ffa: $0d

jr_066_4ffb:
	xor  h                                           ; $4ffb: $ac
	db   $eb                                         ; $4ffc: $eb
	add  h                                           ; $4ffd: $84
	ld   e, e                                        ; $4ffe: $5b
	and  b                                           ; $4fff: $a0
	ld   h, l                                        ; $5000: $65
	ld   [hl], h                                     ; $5001: $74
	sbc  [hl]                                        ; $5002: $9e
	inc  bc                                          ; $5003: $03
	ld   e, c                                        ; $5004: $59
	ld   [bc], a                                     ; $5005: $02
	and  c                                           ; $5006: $a1
	and  b                                           ; $5007: $a0
	dec  c                                           ; $5008: $0d
	nop                                              ; $5009: $00
	dec  b                                           ; $500a: $05
	ld   b, b                                        ; $500b: $40
	rst  $38                                         ; $500c: $ff
	inc  bc                                          ; $500d: $03
	rst  $38                                         ; $500e: $ff
	ld   bc, $2801                                   ; $500f: $01 $01 $28
	nop                                              ; $5012: $00
	ld   bc, $5b83                                   ; $5013: $01 $83 $5b
	halt                                             ; $5016: $76
	sbc  b                                           ; $5017: $98
	adc  h                                           ; $5018: $8c
	ld   h, l                                        ; $5019: $65
	sub  l                                           ; $501a: $95
	ld   d, h                                        ; $501b: $54
	sbc  a                                           ; $501c: $9f
	dec  c                                           ; $501d: $0d
	nop                                              ; $501e: $00
	ld   a, [bc]                                     ; $501f: $0a
	dec  c                                           ; $5020: $0d
	nop                                              ; $5021: $00
	nop                                              ; $5022: $00
	rrca                                             ; $5023: $0f
	nop                                              ; $5024: $00
	ld   bc, $0b0c                                   ; $5025: $01 $0c $0b
	ld   b, $c6                                      ; $5028: $06 $c6
	dec  d                                           ; $502a: $15
	inc  e                                           ; $502b: $1c
	ld   bc, $0202                                   ; $502c: $01 $02 $02
	ld   bc, $9e78                                   ; $502f: $01 $78 $9e
	inc  b                                           ; $5032: $04
	ld   c, c                                        ; $5033: $49
	and  b                                           ; $5034: $a0
	ld   h, a                                        ; $5035: $67
	sbc  c                                           ; $5036: $99
	and  c                                           ; $5037: $a1
	ld   [hl], l                                     ; $5038: $75
	ld   h, a                                        ; $5039: $67
	ld   e, c                                        ; $503a: $59
	ld   a, [$000d]                                  ; $503b: $fa $0d $00
	ld   a, [bc]                                     ; $503e: $0a
	rrca                                             ; $503f: $0f
	nop                                              ; $5040: $00
	ld   bc, $6701                                   ; $5041: $01 $01 $67
	sbc  [hl]                                        ; $5044: $9e
	ld   h, a                                        ; $5045: $67
	adc  l                                           ; $5046: $8d
	adc  h                                           ; $5047: $8c
	ld   l, c                                        ; $5048: $69
	and  c                                           ; $5049: $a1
	sbc  a                                           ; $504a: $9f
	dec  c                                           ; $504b: $0d
	ld   l, a                                        ; $504c: $6f
	sub  l                                           ; $504d: $95
	ld   [hl], c                                     ; $504e: $71
	halt                                             ; $504f: $76
	ld   [hl], d                                     ; $5050: $72
	adc  h                                           ; $5051: $8c
	ld   l, b                                        ; $5052: $68
	ld   d, d                                        ; $5053: $52
	ld   [hl], h                                     ; $5054: $74
	dec  c                                           ; $5055: $0d
	ld   h, l                                        ; $5056: $65
	adc  h                                           ; $5057: $8c
	ld   [hl], c                                     ; $5058: $71
	ld   [hl], h                                     ; $5059: $74

Jump_066_505a:
	rst  $38                                         ; $505a: $ff
	rst  $38                                         ; $505b: $ff
	ld   h, a                                        ; $505c: $67
	ld   e, [hl]                                     ; $505d: $5e
	add  e                                           ; $505e: $83
	ld   e, e                                        ; $505f: $5b
	adc  h                                           ; $5060: $8c
	ld   h, a                                        ; $5061: $67
	sbc  a                                           ; $5062: $9f
	dec  c                                           ; $5063: $0d
	nop                                              ; $5064: $00
	ld   a, [bc]                                     ; $5065: $0a
	inc  e                                           ; $5066: $1c
	ld   bc, $0404                                   ; $5067: $01 $04 $04
	ld   bc, $5490                                   ; $506a: $01 $90 $54
	rst  $38                                         ; $506d: $ff
	rst  $38                                         ; $506e: $ff
	ld   h, l                                        ; $506f: $65
	sub  l                                           ; $5070: $95
	ld   d, h                                        ; $5071: $54
	ld   e, d                                        ; $5072: $5a
	ld   a, b                                        ; $5073: $78
	ld   d, d                                        ; $5074: $52
	ld   [hl], l                                     ; $5075: $75
	ld   h, a                                        ; $5076: $67
	ld   a, e                                        ; $5077: $7b
	sbc  a                                           ; $5078: $9f
	dec  c                                           ; $5079: $0d
	nop                                              ; $507a: $00
	ld   a, [bc]                                     ; $507b: $0a
	inc  e                                           ; $507c: $1c
	ld   bc, $0505                                   ; $507d: $01 $05 $05
	ld   bc, $508c                                   ; $5080: $01 $8c $50
	sbc  [hl]                                        ; $5083: $9e
	sbc  l                                           ; $5084: $9d
	ld   l, l                                        ; $5085: $6d
	ld   h, l                                        ; $5086: $65
	sub  b                                           ; $5087: $90
	jp   z, Jump_066_71b9                            ; $5088: $ca $b9 $71

	ld   [hl], h                                     ; $508b: $74
	sub  [hl]                                        ; $508c: $96
	ld   e, l                                        ; $508d: $5d
	dec  c                                           ; $508e: $0d
	inc  bc                                          ; $508f: $03
	ld   e, c                                        ; $5090: $59
	and  b                                           ; $5091: $a0
	ld   h, c                                        ; $5092: $61
	adc  d                                           ; $5093: $8a
	ld   h, l                                        ; $5094: $65
	ld   l, l                                        ; $5095: $6d
	sbc  b                                           ; $5096: $98
	ld   h, l                                        ; $5097: $65
	adc  h                                           ; $5098: $8c
	ld   h, a                                        ; $5099: $67
	ld   e, a                                        ; $509a: $5f
	ld   [hl], a                                     ; $509b: $77
	rst  $38                                         ; $509c: $ff
	rst  $38                                         ; $509d: $ff
	dec  c                                           ; $509e: $0d
	nop                                              ; $509f: $00
	ld   a, [bc]                                     ; $50a0: $0a
	dec  c                                           ; $50a1: $0d
	nop                                              ; $50a2: $00
	nop                                              ; $50a3: $00
	rrca                                             ; $50a4: $0f
	nop                                              ; $50a5: $00
	ld   bc, $0b0c                                   ; $50a6: $01 $0c $0b
	ld   b, $c6                                      ; $50a9: $06 $c6
	dec  d                                           ; $50ab: $15
	inc  e                                           ; $50ac: $1c
	ld   bc, $0404                                   ; $50ad: $01 $04 $04
	ld   bc, $5490                                   ; $50b0: $01 $90 $54
	inc  b                                           ; $50b3: $04
	ld   a, e                                        ; $50b4: $7b
	sbc  d                                           ; $50b5: $9a
	ld   l, l                                        ; $50b6: $6d
	and  c                                           ; $50b7: $a1
	ld   [hl], l                                     ; $50b8: $75
	ld   h, a                                        ; $50b9: $67
	ld   e, c                                        ; $50ba: $59
	rst  $38                                         ; $50bb: $ff
	rst  $38                                         ; $50bc: $ff
	ld   sp, hl                                      ; $50bd: $f9
	dec  c                                           ; $50be: $0d
	nop                                              ; $50bf: $00
	ld   a, [bc]                                     ; $50c0: $0a
	dec  c                                           ; $50c1: $0d
	nop                                              ; $50c2: $00
	nop                                              ; $50c3: $00
	rrca                                             ; $50c4: $0f
	nop                                              ; $50c5: $00
	ld   bc, $0b0c                                   ; $50c6: $01 $0c $0b
	rlca                                             ; $50c9: $07
	rrca                                             ; $50ca: $0f
	ld   d, $03                                      ; $50cb: $16 $03
	rst  $38                                         ; $50cd: $ff
	ld   bc, $2002                                   ; $50ce: $01 $02 $20
	nop                                              ; $50d1: $00
	rlca                                             ; $50d2: $07
	ld   b, e                                        ; $50d3: $43
	ld   d, $03                                      ; $50d4: $16 $03
	rst  $38                                         ; $50d6: $ff
	ld   bc, $2301                                   ; $50d7: $01 $01 $23
	nop                                              ; $50da: $00
	inc  e                                           ; $50db: $1c
	ld   bc, $0101                                   ; $50dc: $01 $01 $01
	dec  e                                           ; $50df: $1d
	ld   b, b                                        ; $50e0: $40
	ld   de, $1103                                   ; $50e1: $11 $03 $11
	ld   bc, $2803                                   ; $50e4: $01 $03 $28
	nop                                              ; $50e7: $00
	ld   bc, $9850                                   ; $50e8: $01 $50 $98
	ld   e, d                                        ; $50eb: $5a
	halt                                             ; $50ec: $76
	ld   d, h                                        ; $50ed: $54
	ld   h, d                                        ; $50ee: $62
	ld   h, h                                        ; $50ef: $64
	ld   d, d                                        ; $50f0: $52
	adc  h                                           ; $50f1: $8c
	ld   h, l                                        ; $50f2: $65
	ld   l, l                                        ; $50f3: $6d
	ld   a, [$080d]                                  ; $50f4: $fa $0d $08
	nop                                              ; $50f7: $00
	ld   h, e                                        ; $50f8: $63
	and  c                                           ; $50f9: $a1
	ld   [hl], h                                     ; $50fa: $74
	sbc  [hl]                                        ; $50fb: $9e
	dec  c                                           ; $50fc: $0d
	ld   e, b                                        ; $50fd: $58
	ld   l, e                                        ; $50fe: $6b
	ld   d, h                                        ; $50ff: $54
	ld   h, [hl]                                     ; $5100: $66
	ld   a, h                                        ; $5101: $7c
	inc  bc                                          ; $5102: $03
	rst  $30                                         ; $5103: $f7
	inc  bc                                          ; $5104: $03
	add  d                                           ; $5105: $82
	ld   a, b                                        ; $5106: $78
	and  c                                           ; $5107: $a1
	ld   [hl], l                                     ; $5108: $75
	ld   h, a                                        ; $5109: $67
	ld   a, e                                        ; $510a: $7b
	ld   a, [$000d]                                  ; $510b: $fa $0d $00
	ld   a, [bc]                                     ; $510e: $0a
	ld   b, $6f                                      ; $510f: $06 $6f
	ld   d, $1c                                      ; $5111: $16 $1c
	ld   bc, $0101                                   ; $5113: $01 $01 $01
	dec  e                                           ; $5116: $1d
	ld   b, b                                        ; $5117: $40
	ld   de, $1103                                   ; $5118: $11 $03 $11
	ld   bc, $2802                                   ; $511b: $01 $02 $28
	nop                                              ; $511e: $00
	ld   bc, $9850                                   ; $511f: $01 $50 $98
	ld   e, d                                        ; $5122: $5a
	halt                                             ; $5123: $76
	ld   d, h                                        ; $5124: $54
	ld   h, d                                        ; $5125: $62
	ld   h, h                                        ; $5126: $64
	ld   d, d                                        ; $5127: $52
	adc  h                                           ; $5128: $8c
	ld   h, a                                        ; $5129: $67
	sbc  a                                           ; $512a: $9f
	dec  c                                           ; $512b: $0d
	inc  bc                                          ; $512c: $03
	ld   e, e                                        ; $512d: $5b
	ld   e, c                                        ; $512e: $59
	sbc  b                                           ; $512f: $98
	adc  h                                           ; $5130: $8c
	ld   h, l                                        ; $5131: $65
	ld   l, l                                        ; $5132: $6d
	sbc  a                                           ; $5133: $9f
	dec  c                                           ; $5134: $0d
	ld   l, e                                        ; $5135: $6b
	sbc  d                                           ; $5136: $9a
	ld   [hl], l                                     ; $5137: $75
	ld   a, l                                        ; $5138: $7d
	sbc  a                                           ; $5139: $9f
	dec  c                                           ; $513a: $0d
	nop                                              ; $513b: $00
	ld   a, [bc]                                     ; $513c: $0a
	dec  c                                           ; $513d: $0d
	nop                                              ; $513e: $00
	nop                                              ; $513f: $00
	rrca                                             ; $5140: $0f
	nop                                              ; $5141: $00
	ld   bc, $8806                                   ; $5142: $01 $06 $88
	ld   d, $1c                                      ; $5145: $16 $1c
	ld   bc, $0404                                   ; $5147: $01 $04 $04
	dec  e                                           ; $514a: $1d
	ld   b, b                                        ; $514b: $40
	ld   de, $1103                                   ; $514c: $11 $03 $11
	ld   bc, $2902                                   ; $514f: $01 $02 $29
	nop                                              ; $5152: $00
	ld   bc, $8c50                                   ; $5153: $01 $50 $8c
	sbc  b                                           ; $5156: $98
	inc  bc                                          ; $5157: $03
	ld   l, e                                        ; $5158: $6b
	inc  b                                           ; $5159: $04
	ld   [de], a                                     ; $515a: $12
	ld   [hl], c                                     ; $515b: $71
	ld   [hl], h                                     ; $515c: $74
	sub  b                                           ; $515d: $90
	sub  a                                           ; $515e: $97
	ld   [hl], c                                     ; $515f: $71
	ld   l, l                                        ; $5160: $6d
	ld   [bc], a                                     ; $5161: $02
	and  c                                           ; $5162: $a1
	ld   e, d                                        ; $5163: $5a
	dec  c                                           ; $5164: $0d
	ld   h, l                                        ; $5165: $65
	ld   a, b                                        ; $5166: $78
	ld   d, d                                        ; $5167: $52
	and  c                                           ; $5168: $a1
	ld   [hl], l                                     ; $5169: $75
	ld   h, a                                        ; $516a: $67
	ld   e, a                                        ; $516b: $5f
	ld   [hl], a                                     ; $516c: $77
	rst  $38                                         ; $516d: $ff
	rst  $38                                         ; $516e: $ff
	dec  c                                           ; $516f: $0d
	nop                                              ; $5170: $00
	ld   a, [bc]                                     ; $5171: $0a
	ld   bc, $9166                                   ; $5172: $01 $66 $91
	sbc  [hl]                                        ; $5175: $9e
	ld   h, d                                        ; $5176: $62
	ld   e, l                                        ; $5177: $5d
	sbc  e                                           ; $5178: $9b
	ld   d, h                                        ; $5179: $54
	ld   h, e                                        ; $517a: $63
	adc  h                                           ; $517b: $8c
	ld   [hl], l                                     ; $517c: $75
	ld   h, l                                        ; $517d: $65
	ld   l, l                                        ; $517e: $6d
	sbc  a                                           ; $517f: $9f
	dec  c                                           ; $5180: $0d
	nop                                              ; $5181: $00
	ld   a, [bc]                                     ; $5182: $0a
	dec  c                                           ; $5183: $0d
	nop                                              ; $5184: $00
	nop                                              ; $5185: $00
	rrca                                             ; $5186: $0f
	nop                                              ; $5187: $00
	ld   bc, $1e09                                   ; $5188: $01 $09 $1e
	dec  b                                           ; $518b: $05
	ld   b, b                                        ; $518c: $40
	rst  $38                                         ; $518d: $ff
	ld   bc, $0000                                   ; $518e: $01 $00 $00
	ld   bc, $7463                                   ; $5191: $01 $63 $74
	sbc  [hl]                                        ; $5194: $9e
	ld   [hl], d                                     ; $5195: $72
	ld   e, h                                        ; $5196: $5c
	ld   a, l                                        ; $5197: $7d
	ld   [hl], a                                     ; $5198: $77
	ld   h, c                                        ; $5199: $61
	add  [hl]                                        ; $519a: $86
	ld   [bc], a                                     ; $519b: $02
	ld   a, a                                        ; $519c: $7f
	ld   h, c                                        ; $519d: $61
	ld   d, h                                        ; $519e: $54
	dec  c                                           ; $519f: $0d
	ld   e, c                                        ; $51a0: $59
	ld   a, b                                        ; $51a1: $78
	ld   sp, hl                                      ; $51a2: $f9
	dec  c                                           ; $51a3: $0d
	nop                                              ; $51a4: $00
	ld   a, [bc]                                     ; $51a5: $0a
	ld   b, $a6                                      ; $51a6: $06 $a6
	ld   d, $23                                      ; $51a8: $16 $23
	ccf                                              ; $51aa: $3f
	ld   bc, $9a50                                   ; $51ab: $01 $50 $9a
	sbc  [hl]                                        ; $51ae: $9e
	ld   h, c                                        ; $51af: $61
	ld   h, c                                        ; $51b0: $61
	ld   a, c                                        ; $51b1: $79
	ld   a, l                                        ; $51b2: $7d
	inc  bc                                          ; $51b3: $03
	xor  c                                           ; $51b4: $a9
	sub  b                                           ; $51b5: $90
	dec  c                                           ; $51b6: $0d
	ld   d, d                                        ; $51b7: $52
	ld   a, b                                        ; $51b8: $78
	ld   d, d                                        ; $51b9: $52
	ld   a, h                                        ; $51ba: $7c
	ld   e, c                                        ; $51bb: $59
	ld   a, b                                        ; $51bc: $78
	ld   sp, hl                                      ; $51bd: $f9
	dec  c                                           ; $51be: $0d
	nop                                              ; $51bf: $00
	ld   a, [bc]                                     ; $51c0: $0a
	inc  e                                           ; $51c1: $1c
	ld   [bc], a                                     ; $51c2: $02
	nop                                              ; $51c3: $00
	nop                                              ; $51c4: $00
	ld   bc, $fc50                                   ; $51c5: $01 $50 $fc
	sub  a                                           ; $51c8: $97
	ld   [$6300], sp                                 ; $51c9: $08 $00 $63
	and  c                                           ; $51cc: $a1
	sbc  a                                           ; $51cd: $9f
	dec  c                                           ; $51ce: $0d
	nop                                              ; $51cf: $00
	ld   a, [bc]                                     ; $51d0: $0a
	ld   bc, $956f                                   ; $51d1: $01 $6f $95
	ld   d, h                                        ; $51d4: $54
	ld   [hl], a                                     ; $51d5: $77
	ld   d, d                                        ; $51d6: $52
	ld   d, d                                        ; $51d7: $52
	halt                                             ; $51d8: $76
	ld   h, c                                        ; $51d9: $61
	sbc  e                                           ; $51da: $9b
	ld   a, c                                        ; $51db: $79
	rst  $38                                         ; $51dc: $ff
	rst  $38                                         ; $51dd: $ff
	dec  c                                           ; $51de: $0d
	inc  bc                                          ; $51df: $03
	ld   l, h                                        ; $51e0: $6c
	ld   h, l                                        ; $51e1: $65
	ld   [bc], a                                     ; $51e2: $02
	cp   a                                           ; $51e3: $bf
	and  b                                           ; $51e4: $a0
	sub  b                                           ; $51e5: $90
	and  c                                           ; $51e6: $a1
	ld   [hl], l                                     ; $51e7: $75
	ld   [bc], a                                     ; $51e8: $02
	inc  [hl]                                        ; $51e9: $34
	ld   h, e                                        ; $51ea: $63
	sub  a                                           ; $51eb: $97
	ld   a, b                                        ; $51ec: $78
	ld   d, d                                        ; $51ed: $52
	ld   sp, hl                                      ; $51ee: $f9
	dec  c                                           ; $51ef: $0d
	nop                                              ; $51f0: $00
	ld   a, [bc]                                     ; $51f1: $0a
	add  hl, de                                      ; $51f2: $19
	dec  b                                           ; $51f3: $05
	ld   [bc], a                                     ; $51f4: $02
	ld   [bc], a                                     ; $51f5: $02
	inc  l                                           ; $51f6: $2c
	ld   e, e                                        ; $51f7: $5b
	ld   [bc], a                                     ; $51f8: $02
	rst  $38                                         ; $51f9: $ff
	ld   e, a                                        ; $51fa: $5f
	sbc  c                                           ; $51fb: $99
	nop                                              ; $51fc: $00
	nop                                              ; $51fd: $00
	ld   [bc], a                                     ; $51fe: $02
	inc  l                                           ; $51ff: $2c
	ld   e, e                                        ; $5200: $5b
	ld   [bc], a                                     ; $5201: $02
	rst  $38                                         ; $5202: $ff
	ld   e, a                                        ; $5203: $5f
	ld   a, b                                        ; $5204: $78
	ld   d, d                                        ; $5205: $52
	nop                                              ; $5206: $00
	ld   bc, $1a07                                   ; $5207: $01 $07 $1a
	rla                                              ; $520a: $17
	ld   [bc], a                                     ; $520b: $02
	inc  bc                                          ; $520c: $03
	ld   bc, $2000                                   ; $520d: $01 $00 $20
	nop                                              ; $5210: $00
	rlca                                             ; $5211: $07
	ld   a, b                                        ; $5212: $78
	rla                                              ; $5213: $17
	ld   [bc], a                                     ; $5214: $02
	inc  bc                                          ; $5215: $03
	ld   bc, $2001                                   ; $5216: $01 $01 $20
	nop                                              ; $5219: $00
	ld   b, $c4                                      ; $521a: $06 $c4
	rla                                              ; $521c: $17
	rrca                                             ; $521d: $0f
	nop                                              ; $521e: $00
	ld   bc, $9d01                                   ; $521f: $01 $01 $9d
	ld   e, c                                        ; $5222: $59
	sbc  b                                           ; $5223: $98
	adc  h                                           ; $5224: $8c
	ld   h, l                                        ; $5225: $65
	ld   l, l                                        ; $5226: $6d
	sbc  a                                           ; $5227: $9f
	dec  c                                           ; $5228: $0d
	sub  [hl]                                        ; $5229: $96
	sbc  e                                           ; $522a: $9b
	ld   h, c                                        ; $522b: $61
	and  c                                           ; $522c: $a1
	ld   [hl], l                                     ; $522d: $75
	ld   e, b                                        ; $522e: $58
	ld   [bc], a                                     ; $522f: $02
	inc  l                                           ; $5230: $2c
	ld   e, e                                        ; $5231: $5b
	ld   [bc], a                                     ; $5232: $02
	rst  $38                                         ; $5233: $ff
	ld   e, a                                        ; $5234: $5f
	ld   h, l                                        ; $5235: $65
	adc  h                                           ; $5236: $8c
	ld   h, a                                        ; $5237: $67
	sbc  a                                           ; $5238: $9f
	dec  c                                           ; $5239: $0d
	nop                                              ; $523a: $00
	ld   a, [bc]                                     ; $523b: $0a
	dec  b                                           ; $523c: $05
	ld   b, b                                        ; $523d: $40
	ld   h, l                                        ; $523e: $65
	inc  bc                                          ; $523f: $03
	ld   h, l                                        ; $5240: $65
	ld   bc, $2801                                   ; $5241: $01 $01 $28
	nop                                              ; $5244: $00
	inc  e                                           ; $5245: $1c
	ld   [bc], a                                     ; $5246: $02
	ld   bc, $1d01                                   ; $5247: $01 $01 $1d
	ld   b, b                                        ; $524a: $40
	ld   [de], a                                     ; $524b: $12
	inc  bc                                          ; $524c: $03
	ld   [de], a                                     ; $524d: $12
	ld   bc, $2802                                   ; $524e: $01 $02 $28
	nop                                              ; $5251: $00
	ld   bc, $8958                                   ; $5252: $01 $58 $89
	adc  c                                           ; $5255: $89
	adc  c                                           ; $5256: $89
	adc  c                                           ; $5257: $89
	adc  c                                           ; $5258: $89
	rst  $38                                         ; $5259: $ff
	rst  $38                                         ; $525a: $ff
	dec  c                                           ; $525b: $0d
	ld   l, e                                        ; $525c: $6b
	ld   d, h                                        ; $525d: $54
	ld   d, d                                        ; $525e: $52
	ld   d, h                                        ; $525f: $54
	inc  bc                                          ; $5260: $03
	and  [hl]                                        ; $5261: $a6
	inc  bc                                          ; $5262: $03
	jp   c, Jump_066_7678                            ; $5263: $da $78 $76

	ld   h, c                                        ; $5266: $61
	sbc  e                                           ; $5267: $9b
	ld   a, l                                        ; $5268: $7d
	dec  c                                           ; $5269: $0d
	adc  c                                           ; $526a: $89
	adc  a                                           ; $526b: $8f
	ld   [hl], h                                     ; $526c: $74
	ld   h, e                                        ; $526d: $63
	ld   h, l                                        ; $526e: $65
	ld   d, b                                        ; $526f: $50
	ld   h, b                                        ; $5270: $60
	adc  h                                           ; $5271: $8c
	ld   h, a                                        ; $5272: $67
	sbc  l                                           ; $5273: $9d
	sbc  a                                           ; $5274: $9f
	dec  c                                           ; $5275: $0d
	nop                                              ; $5276: $00
	ld   a, [bc]                                     ; $5277: $0a
	ld   b, $51                                      ; $5278: $06 $51
	jr   jr_066_528b                                 ; $527a: $18 $0f

	nop                                              ; $527c: $00
	ld   bc, $6701                                   ; $527d: $01 $01 $67
	adc  l                                           ; $5280: $8d
	adc  h                                           ; $5281: $8c
	ld   l, c                                        ; $5282: $69
	and  c                                           ; $5283: $a1
	sbc  a                                           ; $5284: $9f
	dec  c                                           ; $5285: $0d
	inc  b                                           ; $5286: $04
	ld   e, $79                                      ; $5287: $1e $79
	sub  d                                           ; $5289: $92
	sbc  c                                           ; $528a: $99

jr_066_528b:
	ld   h, c                                        ; $528b: $61
	halt                                             ; $528c: $76
	ld   e, d                                        ; $528d: $5a
	ld   d, b                                        ; $528e: $50
	sbc  c                                           ; $528f: $99
	ld   a, h                                        ; $5290: $7c
	ld   [hl], l                                     ; $5291: $75
	rst  $38                                         ; $5292: $ff
	rst  $38                                         ; $5293: $ff
	dec  c                                           ; $5294: $0d
	nop                                              ; $5295: $00
	ld   a, [bc]                                     ; $5296: $0a
	inc  e                                           ; $5297: $1c
	ld   [bc], a                                     ; $5298: $02
	ld   [bc], a                                     ; $5299: $02
	ld   [bc], a                                     ; $529a: $02
	ld   bc, $a178                                   ; $529b: $01 $78 $a1
	ld   [hl], l                                     ; $529e: $75
	ld   h, a                                        ; $529f: $67
	ld   [hl], c                                     ; $52a0: $71
	ld   [hl], h                                     ; $52a1: $74
	ld   sp, hl                                      ; $52a2: $f9
	dec  c                                           ; $52a3: $0d
	ld   h, c                                        ; $52a4: $61
	ld   a, h                                        ; $52a5: $7c
	sbc  l                                           ; $52a6: $9d
	ld   l, l                                        ; $52a7: $6d
	ld   e, l                                        ; $52a8: $5d
	ld   h, l                                        ; $52a9: $65
	ld   a, h                                        ; $52aa: $7c
	ld   [bc], a                                     ; $52ab: $02
	cp   a                                           ; $52ac: $bf
	sub  b                                           ; $52ad: $90
	adc  l                                           ; $52ae: $8d
	sub  [hl]                                        ; $52af: $96
	sbc  b                                           ; $52b0: $98
	dec  c                                           ; $52b1: $0d
	inc  b                                           ; $52b2: $04
	ld   c, $02                                      ; $52b3: $0e $02
	jp   Jump_066_6178                               ; $52b5: $c3 $78 $61


	halt                                             ; $52b8: $76
	ld   e, d                                        ; $52b9: $5a
	ld   d, b                                        ; $52ba: $50
	sbc  c                                           ; $52bb: $99
	and  c                                           ; $52bc: $a1
	ld   [hl], l                                     ; $52bd: $75
	ld   h, a                                        ; $52be: $67
	ld   a, h                                        ; $52bf: $7c
	ld   sp, hl                                      ; $52c0: $f9
	dec  c                                           ; $52c1: $0d
	nop                                              ; $52c2: $00
	ld   a, [bc]                                     ; $52c3: $0a
	ld   b, $f2                                      ; $52c4: $06 $f2
	rla                                              ; $52c6: $17
	rrca                                             ; $52c7: $0f
	nop                                              ; $52c8: $00
	ld   bc, $ff01                                   ; $52c9: $01 $01 $ff
	rst  $38                                         ; $52cc: $ff
	rst  $38                                         ; $52cd: $ff
	rst  $38                                         ; $52ce: $ff
	dec  c                                           ; $52cf: $0d
	nop                                              ; $52d0: $00
	ld   a, [bc]                                     ; $52d1: $0a
	inc  e                                           ; $52d2: $1c
	ld   [bc], a                                     ; $52d3: $02
	ld   [bc], a                                     ; $52d4: $02
	ld   [bc], a                                     ; $52d5: $02
	ld   bc, $a16b                                   ; $52d6: $01 $6b $a1
	ld   a, b                                        ; $52d9: $78
	ld   a, c                                        ; $52da: $79
	sbc  [hl]                                        ; $52db: $9e
	sbc  l                                           ; $52dc: $9d
	ld   l, l                                        ; $52dd: $6d
	ld   e, l                                        ; $52de: $5d
	ld   h, l                                        ; $52df: $65
	ld   a, h                                        ; $52e0: $7c
	ld   [bc], a                                     ; $52e1: $02
	cp   a                                           ; $52e2: $bf
	and  b                                           ; $52e3: $a0
	dec  c                                           ; $52e4: $0d
	sub  b                                           ; $52e5: $90
	adc  [hl]                                        ; $52e6: $8e
	ld   a, h                                        ; $52e7: $7c
	ld   e, d                                        ; $52e8: $5a
	ld   e, b                                        ; $52e9: $58
	ld   d, d                                        ; $52ea: $52
	sub  d                                           ; $52eb: $92
	ld   [hl], l                                     ; $52ec: $75
	ld   h, a                                        ; $52ed: $67
	ld   a, h                                        ; $52ee: $7c
	rst  $38                                         ; $52ef: $ff
	rst  $38                                         ; $52f0: $ff
	ld   sp, hl                                      ; $52f1: $f9
	dec  c                                           ; $52f2: $0d
	nop                                              ; $52f3: $00
	ld   a, [bc]                                     ; $52f4: $0a
	dec  e                                           ; $52f5: $1d
	ld   b, b                                        ; $52f6: $40
	ld   [de], a                                     ; $52f7: $12
	inc  bc                                          ; $52f8: $03
	ld   [de], a                                     ; $52f9: $12
	ld   bc, $2903                                   ; $52fa: $01 $03 $29
	nop                                              ; $52fd: $00
	ld   bc, $5490                                   ; $52fe: $01 $90 $54
	sbc  [hl]                                        ; $5301: $9e
	ld   e, a                                        ; $5302: $5f
	ld   [hl], c                                     ; $5303: $71
	ld   h, c                                        ; $5304: $61
	ld   d, h                                        ; $5305: $54
	ld   a, [$500d]                                  ; $5306: $fa $0d $50
	ld   a, b                                        ; $5309: $78
	ld   l, l                                        ; $530a: $6d
	ld   a, c                                        ; $530b: $79
	ld   a, l                                        ; $530c: $7d
	ld   b, $09                                      ; $530d: $06 $09
	inc  b                                           ; $530f: $04
	add  hl, hl                                      ; $5310: $29
	halt                                             ; $5311: $76
	dec  c                                           ; $5312: $0d
	ld   l, l                                        ; $5313: $6d
	ld   a, h                                        ; $5314: $7c
	adc  l                                           ; $5315: $8d
	adc  h                                           ; $5316: $8c
	ld   l, c                                        ; $5317: $69
	and  c                                           ; $5318: $a1
	sbc  l                                           ; $5319: $9d
	ld   a, [$000d]                                  ; $531a: $fa $0d $00
	ld   a, [bc]                                     ; $531d: $0a
	dec  c                                           ; $531e: $0d
	nop                                              ; $531f: $00
	nop                                              ; $5320: $00
	rrca                                             ; $5321: $0f
	nop                                              ; $5322: $00
	ld   bc, $1e09                                   ; $5323: $01 $09 $1e
	rrca                                             ; $5326: $0f
	nop                                              ; $5327: $00
	ld   bc, $5001                                   ; $5328: $01 $01 $50
	ei                                               ; $532b: $fb
	ld   d, b                                        ; $532c: $50
	sbc  [hl]                                        ; $532d: $9e
	ld   h, a                                        ; $532e: $67
	adc  l                                           ; $532f: $8d
	sbc  d                                           ; $5330: $9a
	ld   h, e                                        ; $5331: $63
	and  c                                           ; $5332: $a1
	and  b                                           ; $5333: $a0
	inc  bc                                          ; $5334: $03
	ld   hl, sp-$69                                  ; $5335: $f8 $97
	ld   l, c                                        ; $5337: $69
	dec  c                                           ; $5338: $0d
	ld   l, a                                        ; $5339: $6f
	sub  c                                           ; $533a: $91
	ld   [hl], c                                     ; $533b: $71
	ld   l, l                                        ; $533c: $6d
	rst  $38                                         ; $533d: $ff
	rst  $38                                         ; $533e: $ff
	dec  c                                           ; $533f: $0d
	inc  bc                                          ; $5340: $03
	ld   l, b                                        ; $5341: $68
	ld   a, l                                        ; $5342: $7d
	ld   [hl], a                                     ; $5343: $77
	ld   h, c                                        ; $5344: $61
	add  [hl]                                        ; $5345: $86
	ld   [bc], a                                     ; $5346: $02
	ld   a, a                                        ; $5347: $7f
	ld   h, c                                        ; $5348: $61
	ld   d, h                                        ; $5349: $54
	ld   e, c                                        ; $534a: $59
	ld   a, b                                        ; $534b: $78
	rst  $38                                         ; $534c: $ff
	rst  $38                                         ; $534d: $ff
	dec  c                                           ; $534e: $0d
	nop                                              ; $534f: $00
	ld   a, [bc]                                     ; $5350: $0a
	ld   b, $6b                                      ; $5351: $06 $6b
	dec  de                                          ; $5353: $1b
	inc  e                                           ; $5354: $1c
	ld   [bc], a                                     ; $5355: $02
	ld   bc, $0101                                   ; $5356: $01 $01 $01
	ld   l, e                                        ; $5359: $6b
	sbc  d                                           ; $535a: $9a
	ld   [hl], l                                     ; $535b: $75
	ld   a, l                                        ; $535c: $7d
	sbc  [hl]                                        ; $535d: $9e
	ld   e, b                                        ; $535e: $58
	ld   [bc], a                                     ; $535f: $02
	add  b                                           ; $5360: $80
	ld   d, d                                        ; $5361: $52
	ld   h, l                                        ; $5362: $65
	adc  h                                           ; $5363: $8c
	ld   h, a                                        ; $5364: $67
	sbc  l                                           ; $5365: $9d
	sbc  a                                           ; $5366: $9f
	dec  c                                           ; $5367: $0d
	nop                                              ; $5368: $00
	ld   a, [bc]                                     ; $5369: $0a
	add  hl, de                                      ; $536a: $19
	dec  b                                           ; $536b: $05
	inc  bc                                          ; $536c: $03
	ld   [bc], a                                     ; $536d: $02
	call nc, $905d                                   ; $536e: $d4 $5d $90
	adc  [hl]                                        ; $5371: $8e
	nop                                              ; $5372: $00
	nop                                              ; $5373: $00
	sub  d                                           ; $5374: $92
	ld   h, e                                        ; $5375: $63
	ld   h, l                                        ; $5376: $65
	ld   e, l                                        ; $5377: $5d
	sub  b                                           ; $5378: $90
	adc  [hl]                                        ; $5379: $8e
	nop                                              ; $537a: $00
	ld   bc, $6d6d                                   ; $537b: $01 $6d $6d
	ld   e, l                                        ; $537e: $5d
	nop                                              ; $537f: $00
	ld   [bc], a                                     ; $5380: $02
	rlca                                             ; $5381: $07
	sbc  h                                           ; $5382: $9c
	jr   @+$04                                       ; $5383: $18 $02

	inc  bc                                          ; $5385: $03
	ld   bc, $2000                                   ; $5386: $01 $00 $20
	nop                                              ; $5389: $00
	rlca                                             ; $538a: $07
	jp   z, $0218                                    ; $538b: $ca $18 $02

	inc  bc                                          ; $538e: $03
	ld   bc, $2001                                   ; $538f: $01 $01 $20
	nop                                              ; $5392: $00
	rlca                                             ; $5393: $07
	rst  $28                                         ; $5394: $ef
	jr   @+$04                                       ; $5395: $18 $02

	inc  bc                                          ; $5397: $03
	ld   bc, $2002                                   ; $5398: $01 $02 $20
	nop                                              ; $539b: $00
	ld   b, $10                                      ; $539c: $06 $10
	add  hl, de                                      ; $539e: $19
	inc  e                                           ; $539f: $1c
	ld   [bc], a                                     ; $53a0: $02
	inc  b                                           ; $53a1: $04
	inc  b                                           ; $53a2: $04
	ld   bc, $ff50                                   ; $53a3: $01 $50 $ff
	rst  $38                                         ; $53a6: $ff
	dec  c                                           ; $53a7: $0d
	ld   d, d                                        ; $53a8: $52
	ld   d, d                                        ; $53a9: $52
	ld   e, c                                        ; $53aa: $59
	and  c                                           ; $53ab: $a1
	ld   h, [hl]                                     ; $53ac: $66
	ld   [hl], l                                     ; $53ad: $75
	ld   h, a                                        ; $53ae: $67
	sbc  l                                           ; $53af: $9d
	sbc  a                                           ; $53b0: $9f
	dec  c                                           ; $53b1: $0d
	nop                                              ; $53b2: $00
	dec  b                                           ; $53b3: $05
	ld   b, b                                        ; $53b4: $40
	rst  $38                                         ; $53b5: $ff
	inc  bc                                          ; $53b6: $03
	rst  $38                                         ; $53b7: $ff
	ld   bc, $2801                                   ; $53b8: $01 $01 $28
	nop                                              ; $53bb: $00
	ld   bc, $fb02                                   ; $53bc: $01 $02 $fb
	ld   e, a                                        ; $53bf: $5f
	ld   [hl], h                                     ; $53c0: $74
	ld   l, a                                        ; $53c1: $6f
	sub  l                                           ; $53c2: $95
	ld   d, h                                        ; $53c3: $54
	ld   l, [hl]                                     ; $53c4: $6e
	ld   d, d                                        ; $53c5: $52
	sbc  a                                           ; $53c6: $9f
	dec  c                                           ; $53c7: $0d
	nop                                              ; $53c8: $00
	ld   a, [bc]                                     ; $53c9: $0a
	ld   b, $26                                      ; $53ca: $06 $26
	add  hl, de                                      ; $53cc: $19
	inc  e                                           ; $53cd: $1c
	ld   [bc], a                                     ; $53ce: $02
	dec  b                                           ; $53cf: $05
	dec  b                                           ; $53d0: $05
	ld   bc, $5b75                                   ; $53d1: $01 $75 $5b
	sbc  d                                           ; $53d4: $9a
	ld   a, [hl]                                     ; $53d5: $7e
	sbc  [hl]                                        ; $53d6: $9e
	sub  b                                           ; $53d7: $90
	ld   d, h                                        ; $53d8: $54
	inc  bc                                          ; $53d9: $03
	ld   l, h                                        ; $53da: $6c
	ld   h, l                                        ; $53db: $65
	ld   [bc], a                                     ; $53dc: $02
	call nc, $0d5d                                   ; $53dd: $d4 $5d $0d
	sub  b                                           ; $53e0: $90
	and  c                                           ; $53e1: $a1
	ld   [hl], l                                     ; $53e2: $75
	ld   e, l                                        ; $53e3: $5d
	ld   l, [hl]                                     ; $53e4: $6e
	ld   h, e                                        ; $53e5: $63
	sub  a                                           ; $53e6: $97
	ld   a, b                                        ; $53e7: $78
	ld   d, d                                        ; $53e8: $52
	rst  $38                                         ; $53e9: $ff
	rst  $38                                         ; $53ea: $ff
	ld   sp, hl                                      ; $53eb: $f9
	dec  c                                           ; $53ec: $0d
	nop                                              ; $53ed: $00
	ld   a, [bc]                                     ; $53ee: $0a
	ld   b, $26                                      ; $53ef: $06 $26
	add  hl, de                                      ; $53f1: $19
	inc  e                                           ; $53f2: $1c
	ld   [bc], a                                     ; $53f3: $02
	ld   [bc], a                                     ; $53f4: $02
	ld   [bc], a                                     ; $53f5: $02
	ld   bc, $6d9d                                   ; $53f6: $01 $9d $6d
	ld   e, l                                        ; $53f9: $5d
	ld   h, l                                        ; $53fa: $65
	ld   a, l                                        ; $53fb: $7d
	db   $fd                                         ; $53fc: $fd
	sub  b                                           ; $53fd: $90
	and  c                                           ; $53fe: $a1
	ld   [hl], l                                     ; $53ff: $75
	adc  c                                           ; $5400: $89
	ld   h, l                                        ; $5401: $65
	ld   d, d                                        ; $5402: $52
	cp   $76                                         ; $5403: $fe $76
	dec  c                                           ; $5405: $0d
	ld   [bc], a                                     ; $5406: $02
	sbc  l                                           ; $5407: $9d
	ld   [hl], c                                     ; $5408: $71
	ld   l, l                                        ; $5409: $6d
	and  c                                           ; $540a: $a1
	ld   [hl], l                                     ; $540b: $75
	ld   h, a                                        ; $540c: $67
	ld   a, h                                        ; $540d: $7c
	sub  [hl]                                        ; $540e: $96
	sbc  a                                           ; $540f: $9f
	dec  c                                           ; $5410: $0d
	nop                                              ; $5411: $00
	ld   a, [bc]                                     ; $5412: $0a
	inc  e                                           ; $5413: $1c
	ld   [bc], a                                     ; $5414: $02
	ld   [bc], a                                     ; $5415: $02
	ld   [bc], a                                     ; $5416: $02
	ld   bc, $7003                                   ; $5417: $01 $03 $70
	ld   e, l                                        ; $541a: $5d
	sbc  [hl]                                        ; $541b: $9e
	sub  b                                           ; $541c: $90
	and  c                                           ; $541d: $a1
	ld   [hl], l                                     ; $541e: $75
	ld   e, l                                        ; $541f: $5d
	ld   l, [hl]                                     ; $5420: $6e
	ld   h, e                                        ; $5421: $63
	sub  a                                           ; $5422: $97
	ld   a, b                                        ; $5423: $78
	ld   d, d                                        ; $5424: $52
	ld   sp, hl                                      ; $5425: $f9
	dec  c                                           ; $5426: $0d
	nop                                              ; $5427: $00
	ld   a, [bc]                                     ; $5428: $0a
	add  hl, de                                      ; $5429: $19
	dec  b                                           ; $542a: $05
	inc  bc                                          ; $542b: $03
	ld   [bc], a                                     ; $542c: $02
	call nc, $905d                                   ; $542d: $d4 $5d $90
	adc  [hl]                                        ; $5430: $8e
	nop                                              ; $5431: $00
	nop                                              ; $5432: $00
	sub  d                                           ; $5433: $92
	ld   h, e                                        ; $5434: $63
	ld   h, l                                        ; $5435: $65
	ld   e, l                                        ; $5436: $5d
	sub  b                                           ; $5437: $90
	adc  [hl]                                        ; $5438: $8e
	nop                                              ; $5439: $00
	ld   bc, $6d6d                                   ; $543a: $01 $6d $6d
	ld   e, l                                        ; $543d: $5d
	nop                                              ; $543e: $00
	ld   [bc], a                                     ; $543f: $02
	rlca                                             ; $5440: $07
	ld   e, e                                        ; $5441: $5b
	add  hl, de                                      ; $5442: $19
	ld   [bc], a                                     ; $5443: $02
	inc  bc                                          ; $5444: $03
	ld   bc, $2000                                   ; $5445: $01 $00 $20
	nop                                              ; $5448: $00
	rlca                                             ; $5449: $07
	ld   a, h                                        ; $544a: $7c
	add  hl, de                                      ; $544b: $19
	ld   [bc], a                                     ; $544c: $02
	inc  bc                                          ; $544d: $03
	ld   bc, $2001                                   ; $544e: $01 $01 $20
	nop                                              ; $5451: $00
	rlca                                             ; $5452: $07
	and  c                                           ; $5453: $a1
	add  hl, de                                      ; $5454: $19
	ld   [bc], a                                     ; $5455: $02
	inc  bc                                          ; $5456: $03
	ld   bc, $2002                                   ; $5457: $01 $02 $20
	nop                                              ; $545a: $00
	ld   b, $c2                                      ; $545b: $06 $c2
	add  hl, de                                      ; $545d: $19
	inc  e                                           ; $545e: $1c
	ld   [bc], a                                     ; $545f: $02
	inc  b                                           ; $5460: $04

Jump_066_5461:
	inc  b                                           ; $5461: $04
	ld   bc, $ff50                                   ; $5462: $01 $50 $ff
	rst  $38                                         ; $5465: $ff
	dec  c                                           ; $5466: $0d
	ld   d, d                                        ; $5467: $52
	ld   d, d                                        ; $5468: $52
	ld   e, c                                        ; $5469: $59
	and  c                                           ; $546a: $a1
	ld   h, [hl]                                     ; $546b: $66
	ld   [hl], l                                     ; $546c: $75
	ld   h, a                                        ; $546d: $67
	sbc  l                                           ; $546e: $9d
	sbc  a                                           ; $546f: $9f
	dec  c                                           ; $5470: $0d
	nop                                              ; $5471: $00
	ld   a, [bc]                                     ; $5472: $0a
	dec  b                                           ; $5473: $05
	ld   b, b                                        ; $5474: $40
	rst  $38                                         ; $5475: $ff
	inc  bc                                          ; $5476: $03
	rst  $38                                         ; $5477: $ff
	ld   bc, $2801                                   ; $5478: $01 $01 $28
	nop                                              ; $547b: $00
	ld   b, $e0                                      ; $547c: $06 $e0
	add  hl, de                                      ; $547e: $19
	inc  e                                           ; $547f: $1c
	ld   [bc], a                                     ; $5480: $02
	dec  b                                           ; $5481: $05
	dec  b                                           ; $5482: $05
	ld   bc, $5b75                                   ; $5483: $01 $75 $5b
	sbc  d                                           ; $5486: $9a
	ld   a, [hl]                                     ; $5487: $7e
	sbc  [hl]                                        ; $5488: $9e
	sub  b                                           ; $5489: $90
	ld   d, h                                        ; $548a: $54
	inc  bc                                          ; $548b: $03
	ld   l, h                                        ; $548c: $6c
	ld   h, l                                        ; $548d: $65
	ld   [bc], a                                     ; $548e: $02
	call nc, $0d5d                                   ; $548f: $d4 $5d $0d
	sub  b                                           ; $5492: $90
	and  c                                           ; $5493: $a1
	ld   [hl], l                                     ; $5494: $75
	ld   e, l                                        ; $5495: $5d
	ld   l, [hl]                                     ; $5496: $6e
	ld   h, e                                        ; $5497: $63
	sub  a                                           ; $5498: $97
	ld   a, b                                        ; $5499: $78
	ld   d, d                                        ; $549a: $52
	rst  $38                                         ; $549b: $ff
	rst  $38                                         ; $549c: $ff
	ld   sp, hl                                      ; $549d: $f9
	dec  c                                           ; $549e: $0d
	nop                                              ; $549f: $00
	ld   a, [bc]                                     ; $54a0: $0a
	ld   b, $e0                                      ; $54a1: $06 $e0
	add  hl, de                                      ; $54a3: $19
	inc  e                                           ; $54a4: $1c
	ld   [bc], a                                     ; $54a5: $02
	ld   [bc], a                                     ; $54a6: $02
	ld   [bc], a                                     ; $54a7: $02
	ld   bc, $6d9d                                   ; $54a8: $01 $9d $6d
	ld   e, l                                        ; $54ab: $5d
	ld   h, l                                        ; $54ac: $65
	ld   a, l                                        ; $54ad: $7d
	db   $fd                                         ; $54ae: $fd
	sub  b                                           ; $54af: $90
	and  c                                           ; $54b0: $a1
	ld   [hl], l                                     ; $54b1: $75
	adc  c                                           ; $54b2: $89
	ld   h, l                                        ; $54b3: $65
	ld   d, d                                        ; $54b4: $52
	cp   $76                                         ; $54b5: $fe $76
	dec  c                                           ; $54b7: $0d
	ld   [bc], a                                     ; $54b8: $02
	sbc  l                                           ; $54b9: $9d
	ld   [hl], c                                     ; $54ba: $71
	ld   l, l                                        ; $54bb: $6d
	and  c                                           ; $54bc: $a1
	ld   [hl], l                                     ; $54bd: $75
	ld   h, a                                        ; $54be: $67
	ld   a, h                                        ; $54bf: $7c
	sub  [hl]                                        ; $54c0: $96
	sbc  a                                           ; $54c1: $9f
	dec  c                                           ; $54c2: $0d
	nop                                              ; $54c3: $00
	ld   a, [bc]                                     ; $54c4: $0a
	inc  e                                           ; $54c5: $1c
	ld   [bc], a                                     ; $54c6: $02
	ld   [bc], a                                     ; $54c7: $02
	ld   [bc], a                                     ; $54c8: $02
	ld   bc, $4904                                   ; $54c9: $01 $04 $49
	and  b                                           ; $54cc: $a0
	ld   h, l                                        ; $54cd: $65
	ld   [hl], h                                     ; $54ce: $74
	sbc  c                                           ; $54cf: $99
	and  c                                           ; $54d0: $a1
	ld   [hl], l                                     ; $54d1: $75
	ld   h, a                                        ; $54d2: $67
	ld   a, h                                        ; $54d3: $7c
	ld   sp, hl                                      ; $54d4: $f9
	dec  c                                           ; $54d5: $0d
	ld   h, e                                        ; $54d6: $63
	ld   [hl], c                                     ; $54d7: $71
	ld   h, e                                        ; $54d8: $63
	halt                                             ; $54d9: $76
	sub  d                                           ; $54da: $92
	sbc  b                                           ; $54db: $98
	ld   a, b                                        ; $54dc: $78
	ld   h, e                                        ; $54dd: $63
	ld   d, d                                        ; $54de: $52
	sbc  a                                           ; $54df: $9f
	dec  c                                           ; $54e0: $0d
	nop                                              ; $54e1: $00
	ld   a, [bc]                                     ; $54e2: $0a
	add  hl, de                                      ; $54e3: $19
	dec  b                                           ; $54e4: $05
	ld   [bc], a                                     ; $54e5: $02
	ld   [hl], d                                     ; $54e6: $72
	ld   d, d                                        ; $54e7: $52
	ld   [hl], l                                     ; $54e8: $75
	ld   a, c                                        ; $54e9: $79
	inc  bc                                          ; $54ea: $03
	ld   a, h                                        ; $54eb: $7c
	inc  b                                           ; $54ec: $04
	dec  c                                           ; $54ed: $0d
	and  b                                           ; $54ee: $a0
	ld   e, b                                        ; $54ef: $58
	ld   h, c                                        ; $54f0: $61
	ld   a, b                                        ; $54f1: $78
	ld   d, h                                        ; $54f2: $54
	nop                                              ; $54f3: $00
	nop                                              ; $54f4: $00
	inc  b                                           ; $54f5: $04
	ld   e, $7c                                      ; $54f6: $1e $7c
	halt                                             ; $54f8: $76
	ld   h, c                                        ; $54f9: $61
	sbc  e                                           ; $54fa: $9b
	and  b                                           ; $54fb: $a0
	sub  b                                           ; $54fc: $90
	adc  [hl]                                        ; $54fd: $8e
	nop                                              ; $54fe: $00
	ld   bc, $1207                                   ; $54ff: $01 $07 $12
	ld   a, [de]                                     ; $5502: $1a
	ld   [bc], a                                     ; $5503: $02
	inc  bc                                          ; $5504: $03
	ld   bc, $2000                                   ; $5505: $01 $00 $20
	nop                                              ; $5508: $00
	rlca                                             ; $5509: $07
	ld   c, [hl]                                     ; $550a: $4e
	ld   a, [de]                                     ; $550b: $1a
	ld   [bc], a                                     ; $550c: $02
	inc  bc                                          ; $550d: $03
	ld   bc, $2001                                   ; $550e: $01 $01 $20
	nop                                              ; $5511: $00
	ld   b, $7b                                      ; $5512: $06 $7b
	ld   a, [de]                                     ; $5514: $1a
	inc  e                                           ; $5515: $1c
	ld   [bc], a                                     ; $5516: $02
	inc  b                                           ; $5517: $04
	inc  b                                           ; $5518: $04
	ld   bc, $9750                                   ; $5519: $01 $50 $97
	sbc  [hl]                                        ; $551c: $9e
	ld   e, b                                        ; $551d: $58
	inc  bc                                          ; $551e: $03
	ld   h, l                                        ; $551f: $65
	inc  bc                                          ; $5520: $03
	ld   l, e                                        ; $5521: $6b
	rst  $38                                         ; $5522: $ff
	rst  $38                                         ; $5523: $ff
	dec  c                                           ; $5524: $0d
	ld   [hl], a                                     ; $5525: $77
	ld   h, c                                        ; $5526: $61
	ld   [hl], l                                     ; $5527: $75
	ld   l, e                                        ; $5528: $6b
	and  c                                           ; $5529: $a1
	ld   a, b                                        ; $552a: $78
	ld   h, c                                        ; $552b: $61
	halt                                             ; $552c: $76
	and  b                                           ; $552d: $a0
	dec  c                                           ; $552e: $0d
	nop                                              ; $552f: $00
	dec  b                                           ; $5530: $05
	ld   b, b                                        ; $5531: $40
	rst  $38                                         ; $5532: $ff
	inc  bc                                          ; $5533: $03
	rst  $38                                         ; $5534: $ff
	ld   bc, $2801                                   ; $5535: $01 $01 $28
	nop                                              ; $5538: $00
	ld   bc, $9778                                   ; $5539: $01 $78 $97
	ld   [hl], c                                     ; $553c: $71
	ld   l, l                                        ; $553d: $6d
	and  c                                           ; $553e: $a1
	ld   [hl], l                                     ; $553f: $75
	ld   h, a                                        ; $5540: $67
	ld   a, h                                        ; $5541: $7c
	ld   sp, hl                                      ; $5542: $f9
	dec  c                                           ; $5543: $0d
	nop                                              ; $5544: $00
	ld   a, [bc]                                     ; $5545: $0a
	dec  c                                           ; $5546: $0d
	nop                                              ; $5547: $00
	nop                                              ; $5548: $00
	rrca                                             ; $5549: $0f
	nop                                              ; $554a: $00
	ld   bc, $0b0c                                   ; $554b: $01 $0c $0b
	ld   b, $9d                                      ; $554e: $06 $9d
	ld   a, [de]                                     ; $5550: $1a
	inc  e                                           ; $5551: $1c
	ld   [bc], a                                     ; $5552: $02
	inc  bc                                          ; $5553: $03
	inc  bc                                          ; $5554: $03
	ld   bc, $915b                                   ; $5555: $01 $5b $91
	ld   [hl], c                                     ; $5558: $71
	ld   a, [$000d]                                  ; $5559: $fa $0d $00
	add  hl, bc                                      ; $555c: $09
	ld   e, $1c                                      ; $555d: $1e $1c
	ld   [bc], a                                     ; $555f: $02
	ld   [bc], a                                     ; $5560: $02
	ld   [bc], a                                     ; $5561: $02
	ld   bc, $6177                                   ; $5562: $01 $77 $61
	and  b                                           ; $5565: $a0
	ld   h, e                                        ; $5566: $63
	sbc  l                                           ; $5567: $9d
	ld   [hl], c                                     ; $5568: $71
	ld   [hl], h                                     ; $5569: $74
	sbc  c                                           ; $556a: $99
	and  c                                           ; $556b: $a1
	ld   [hl], l                                     ; $556c: $75
	ld   h, a                                        ; $556d: $67
	ld   a, h                                        ; $556e: $7c
	ld   a, [$000d]                                  ; $556f: $fa $0d $00
	ld   a, [bc]                                     ; $5572: $0a
	dec  c                                           ; $5573: $0d
	nop                                              ; $5574: $00
	nop                                              ; $5575: $00
	rrca                                             ; $5576: $0f
	nop                                              ; $5577: $00
	ld   bc, $0b0c                                   ; $5578: $01 $0c $0b
	ld   b, $9d                                      ; $557b: $06 $9d
	ld   a, [de]                                     ; $557d: $1a
	inc  e                                           ; $557e: $1c
	ld   [bc], a                                     ; $557f: $02
	ld   [bc], a                                     ; $5580: $02
	ld   [bc], a                                     ; $5581: $02
	ld   bc, $9750                                   ; $5582: $01 $50 $97
	rst  $38                                         ; $5585: $ff
	rst  $38                                         ; $5586: $ff
	dec  c                                           ; $5587: $0d
	sub  b                                           ; $5588: $90
	ld   d, h                                        ; $5589: $54
	inc  bc                                          ; $558a: $03
	ld   a, [hl]                                     ; $558b: $7e
	sbc  l                                           ; $558c: $9d
	sbc  b                                           ; $558d: $98
	ld   [hl], l                                     ; $558e: $75
	ld   h, a                                        ; $558f: $67
	ld   a, h                                        ; $5590: $7c
	ld   sp, hl                                      ; $5591: $f9
	dec  c                                           ; $5592: $0d
	nop                                              ; $5593: $00
	ld   a, [bc]                                     ; $5594: $0a
	dec  c                                           ; $5595: $0d
	nop                                              ; $5596: $00
	nop                                              ; $5597: $00
	rrca                                             ; $5598: $0f
	nop                                              ; $5599: $00
	ld   bc, $0b0c                                   ; $559a: $01 $0c $0b
	ld   b, $9d                                      ; $559d: $06 $9d
	ld   a, [de]                                     ; $559f: $1a
	rlca                                             ; $55a0: $07
	db   $e4                                         ; $55a1: $e4
	ld   a, [de]                                     ; $55a2: $1a
	inc  bc                                          ; $55a3: $03
	rst  $38                                         ; $55a4: $ff
	ld   bc, $2002                                   ; $55a5: $01 $02 $20
	nop                                              ; $55a8: $00
	rlca                                             ; $55a9: $07
	add  hl, bc                                      ; $55aa: $09
	dec  de                                          ; $55ab: $1b
	inc  bc                                          ; $55ac: $03
	rst  $38                                         ; $55ad: $ff
	ld   bc, $2301                                   ; $55ae: $01 $01 $23
	nop                                              ; $55b1: $00
	inc  e                                           ; $55b2: $1c
	ld   [bc], a                                     ; $55b3: $02
	inc  b                                           ; $55b4: $04
	inc  b                                           ; $55b5: $04
	dec  e                                           ; $55b6: $1d
	ld   b, b                                        ; $55b7: $40
	ld   [de], a                                     ; $55b8: $12
	inc  bc                                          ; $55b9: $03
	ld   [de], a                                     ; $55ba: $12
	ld   bc, $2803                                   ; $55bb: $01 $03 $28
	nop                                              ; $55be: $00
	ld   bc, $6267                                   ; $55bf: $01 $67 $62
	ld   e, l                                        ; $55c2: $5d
	ld   [bc], a                                     ; $55c3: $02
	and  c                                           ; $55c4: $a1
	inc  bc                                          ; $55c5: $03
	and  b                                           ; $55c6: $a0
	ld   l, a                                        ; $55c7: $6f
	sub  [hl]                                        ; $55c8: $96
	ld   e, c                                        ; $55c9: $59
	ld   [hl], c                                     ; $55ca: $71
	ld   l, l                                        ; $55cb: $6d
	ld   [hl], l                                     ; $55cc: $75
	ld   h, a                                        ; $55cd: $67
	sbc  l                                           ; $55ce: $9d
	sbc  a                                           ; $55cf: $9f
	dec  c                                           ; $55d0: $0d
	ld   d, b                                        ; $55d1: $50
	ld   a, b                                        ; $55d2: $78
	ld   l, l                                        ; $55d3: $6d
	ld   [hl], c                                     ; $55d4: $71
	ld   [hl], h                                     ; $55d5: $74
	sbc  [hl]                                        ; $55d6: $9e
	ld   e, b                                        ; $55d7: $58
	inc  bc                                          ; $55d8: $03
	ld   h, l                                        ; $55d9: $65
	inc  bc                                          ; $55da: $03
	ld   l, e                                        ; $55db: $6b
	ld   [hl], l                                     ; $55dc: $75
	ld   h, a                                        ; $55dd: $67
	ld   a, h                                        ; $55de: $7c
	ld   a, e                                        ; $55df: $7b
	sbc  a                                           ; $55e0: $9f
	dec  c                                           ; $55e1: $0d
	nop                                              ; $55e2: $00
	ld   a, [bc]                                     ; $55e3: $0a
	ld   b, $30                                      ; $55e4: $06 $30
	dec  de                                          ; $55e6: $1b
	inc  e                                           ; $55e7: $1c
	ld   [bc], a                                     ; $55e8: $02
	ld   bc, $1d01                                   ; $55e9: $01 $01 $1d
	ld   b, b                                        ; $55ec: $40
	ld   [de], a                                     ; $55ed: $12
	inc  bc                                          ; $55ee: $03
	ld   [de], a                                     ; $55ef: $12
	ld   bc, $2801                                   ; $55f0: $01 $01 $28
	nop                                              ; $55f3: $00
	ld   bc, $4904                                   ; $55f4: $01 $04 $49
	sub  b                                           ; $55f7: $90
	ld   h, l                                        ; $55f8: $65
	ld   a, b                                        ; $55f9: $78
	ld   d, d                                        ; $55fa: $52
	sub  [hl]                                        ; $55fb: $96
	sbc  b                                           ; $55fc: $98
	ld   a, l                                        ; $55fd: $7d
	dec  c                                           ; $55fe: $0d
	rst  JumpTable                                         ; $55ff: $df
	cp   b                                           ; $5600: $b8
	ld   [hl], l                                     ; $5601: $75
	ld   h, l                                        ; $5602: $65
	ld   l, l                                        ; $5603: $6d
	sbc  l                                           ; $5604: $9d
	sbc  a                                           ; $5605: $9f
	dec  c                                           ; $5606: $0d
	nop                                              ; $5607: $00
	ld   a, [bc]                                     ; $5608: $0a
	ld   b, $30                                      ; $5609: $06 $30
	dec  de                                          ; $560b: $1b
	inc  e                                           ; $560c: $1c
	ld   [bc], a                                     ; $560d: $02
	ld   [bc], a                                     ; $560e: $02
	ld   [bc], a                                     ; $560f: $02
	dec  e                                           ; $5610: $1d
	ld   b, b                                        ; $5611: $40
	ld   [de], a                                     ; $5612: $12
	inc  bc                                          ; $5613: $03
	ld   [de], a                                     ; $5614: $12
	ld   bc, $2903                                   ; $5615: $01 $03 $29
	nop                                              ; $5618: $00
	ld   bc, $7850                                   ; $5619: $01 $50 $78
	ld   l, l                                        ; $561c: $6d
	ld   a, c                                        ; $561d: $79
	ld   l, l                                        ; $561e: $6d
	ld   a, h                                        ; $561f: $7c
	and  c                                           ; $5620: $a1
	ld   l, [hl]                                     ; $5621: $6e
	dec  c                                           ; $5622: $0d
	sbc  l                                           ; $5623: $9d
	ld   l, l                                        ; $5624: $6d
	ld   e, l                                        ; $5625: $5d
	ld   h, l                                        ; $5626: $65
	ld   e, d                                        ; $5627: $5a
	pop  de                                          ; $5628: $d1
	xor  h                                           ; $5629: $ac
	ld   [hl], l                                     ; $562a: $75
	ld   h, l                                        ; $562b: $65
	ld   l, l                                        ; $562c: $6d
	sbc  l                                           ; $562d: $9d
	rst  $38                                         ; $562e: $ff
	rst  $38                                         ; $562f: $ff
	dec  c                                           ; $5630: $0d
	nop                                              ; $5631: $00
	ld   a, [bc]                                     ; $5632: $0a
	ld   bc, $9166                                   ; $5633: $01 $66 $91
	sbc  [hl]                                        ; $5636: $9e
	ld   h, d                                        ; $5637: $62
	ld   [bc], a                                     ; $5638: $02
	sub  h                                           ; $5639: $94
	dec  b                                           ; $563a: $05
	rrca                                             ; $563b: $0f
	ld   h, e                                        ; $563c: $63
	adc  h                                           ; $563d: $8c
	ld   [hl], l                                     ; $563e: $75
	ld   h, l                                        ; $563f: $65
	ld   l, l                                        ; $5640: $6d
	sbc  a                                           ; $5641: $9f
	dec  c                                           ; $5642: $0d
	nop                                              ; $5643: $00
	ld   a, [bc]                                     ; $5644: $0a
	dec  c                                           ; $5645: $0d
	nop                                              ; $5646: $00
	nop                                              ; $5647: $00
	rrca                                             ; $5648: $0f
	nop                                              ; $5649: $00
	ld   bc, $1e09                                   ; $564a: $01 $09 $1e
	dec  b                                           ; $564d: $05
	ld   b, b                                        ; $564e: $40
	rst  $38                                         ; $564f: $ff
	ld   bc, $0000                                   ; $5650: $01 $00 $00
	ld   bc, $7463                                   ; $5653: $01 $63 $74
	sbc  [hl]                                        ; $5656: $9e
	ld   [bc], a                                     ; $5657: $02
	and  l                                           ; $5658: $a5
	inc  b                                           ; $5659: $04
	add  hl, hl                                      ; $565a: $29
	ld   a, l                                        ; $565b: $7d
	ld   [hl], a                                     ; $565c: $77
	ld   h, c                                        ; $565d: $61
	add  [hl]                                        ; $565e: $86
	ld   [bc], a                                     ; $565f: $02
	ld   a, a                                        ; $5660: $7f
	ld   h, c                                        ; $5661: $61
	ld   d, h                                        ; $5662: $54
	dec  c                                           ; $5663: $0d
	ld   e, c                                        ; $5664: $59
	ld   a, b                                        ; $5665: $78
	rst  $38                                         ; $5666: $ff
	rst  $38                                         ; $5667: $ff
	dec  c                                           ; $5668: $0d
	nop                                              ; $5669: $00
	ld   a, [bc]                                     ; $566a: $0a
	ld   b, $6b                                      ; $566b: $06 $6b
	dec  de                                          ; $566d: $1b
	inc  hl                                          ; $566e: $23
	ld   h, b                                        ; $566f: $60
	ld   bc, $5965                                   ; $5670: $01 $65 $59
	ld   h, l                                        ; $5673: $65
	sbc  [hl]                                        ; $5674: $9e
	inc  b                                           ; $5675: $04
	xor  d                                           ; $5676: $aa
	inc  b                                           ; $5677: $04
	db   $f4                                         ; $5678: $f4
	inc  b                                           ; $5679: $04
	xor  d                                           ; $567a: $aa
	ld   a, h                                        ; $567b: $7c
	inc  b                                           ; $567c: $04
	ld   [$9202], sp                                 ; $567d: $08 $02 $92
	ld   a, l                                        ; $5680: $7d
	dec  c                                           ; $5681: $0d
	ld   h, l                                        ; $5682: $65
	ld   l, b                                        ; $5683: $68
	ld   e, c                                        ; $5684: $59
	ld   l, [hl]                                     ; $5685: $6e
	ld   a, b                                        ; $5686: $78
	db   $fc                                         ; $5687: $fc
	sbc  a                                           ; $5688: $9f
	dec  c                                           ; $5689: $0d
	nop                                              ; $568a: $00
	ld   a, [bc]                                     ; $568b: $0a
	inc  e                                           ; $568c: $1c
	dec  b                                           ; $568d: $05
	nop                                              ; $568e: $00
	nop                                              ; $568f: $00
	ld   bc, $9e58                                   ; $5690: $01 $58 $9e
	ld   [$7d00], sp                                 ; $5693: $08 $00 $7d
	and  c                                           ; $5696: $a1
	sub  d                                           ; $5697: $92
	ld   a, b                                        ; $5698: $78
	ld   d, d                                        ; $5699: $52
	ld   e, c                                        ; $569a: $59
	sbc  a                                           ; $569b: $9f
	dec  c                                           ; $569c: $0d
	nop                                              ; $569d: $00
	ld   a, [bc]                                     ; $569e: $0a
	ld   bc, $956f                                   ; $569f: $01 $6f $95
	ld   [hl], c                                     ; $56a2: $71
	halt                                             ; $56a3: $76
	sbc  [hl]                                        ; $56a4: $9e
	ld   d, h                                        ; $56a5: $54
	ld   l, a                                        ; $56a6: $6f
	ld   a, h                                        ; $56a7: $7c
	inc  b                                           ; $56a8: $04
	sub  l                                           ; $56a9: $95
	ld   [bc], a                                     ; $56aa: $02
	ld   hl, $0d79                                   ; $56ab: $21 $79 $0d
	sub  [hl]                                        ; $56ae: $96
	ld   [hl], c                                     ; $56af: $71
	ld   [hl], h                                     ; $56b0: $74
	ld   e, a                                        ; $56b1: $5f
	add  [hl]                                        ; $56b2: $86
	and  c                                           ; $56b3: $a1
	ld   sp, hl                                      ; $56b4: $f9
	dec  c                                           ; $56b5: $0d
	nop                                              ; $56b6: $00
	ld   a, [bc]                                     ; $56b7: $0a
	add  hl, de                                      ; $56b8: $19
	dec  b                                           ; $56b9: $05
	ld   [bc], a                                     ; $56ba: $02
	sub  [hl]                                        ; $56bb: $96
	ld   [hl], c                                     ; $56bc: $71
	ld   [hl], h                                     ; $56bd: $74
	ld   d, d                                        ; $56be: $52
	ld   e, l                                        ; $56bf: $5d
	nop                                              ; $56c0: $00
	nop                                              ; $56c1: $00
	sub  [hl]                                        ; $56c2: $96
	ld   [hl], c                                     ; $56c3: $71
	ld   [hl], h                                     ; $56c4: $74
	ld   d, d                                        ; $56c5: $52
	ld   e, c                                        ; $56c6: $59
	ld   a, b                                        ; $56c7: $78
	ld   d, d                                        ; $56c8: $52
	nop                                              ; $56c9: $00
	ld   bc, $dd07                                   ; $56ca: $01 $07 $dd
	dec  de                                          ; $56cd: $1b
	ld   [bc], a                                     ; $56ce: $02
	inc  bc                                          ; $56cf: $03
	ld   bc, $2000                                   ; $56d0: $01 $00 $20
	nop                                              ; $56d3: $00
	rlca                                             ; $56d4: $07
	inc  l                                           ; $56d5: $2c
	inc  e                                           ; $56d6: $1c
	ld   [bc], a                                     ; $56d7: $02
	inc  bc                                          ; $56d8: $03
	ld   bc, $2001                                   ; $56d9: $01 $01 $20
	nop                                              ; $56dc: $00
	ld   b, $8a                                      ; $56dd: $06 $8a
	inc  e                                           ; $56df: $1c
	rrca                                             ; $56e0: $0f
	nop                                              ; $56e1: $00
	ld   bc, $7d01                                   ; $56e2: $01 $01 $7d
	ld   d, d                                        ; $56e5: $52
	sbc  a                                           ; $56e6: $9f
	dec  c                                           ; $56e7: $0d
	ld   e, b                                        ; $56e8: $58
	ld   h, [hl]                                     ; $56e9: $66
	sub  c                                           ; $56ea: $91
	adc  h                                           ; $56eb: $8c
	ld   h, e                                        ; $56ec: $63
	ld   l, c                                        ; $56ed: $69
	ld   [hl], h                                     ; $56ee: $74
	sub  b                                           ; $56ef: $90
	sub  a                                           ; $56f0: $97
	ld   d, d                                        ; $56f1: $52
	adc  h                                           ; $56f2: $8c
	ld   h, a                                        ; $56f3: $67
	sbc  a                                           ; $56f4: $9f
	dec  c                                           ; $56f5: $0d
	nop                                              ; $56f6: $00
	ld   a, [bc]                                     ; $56f7: $0a
	dec  b                                           ; $56f8: $05
	ld   b, b                                        ; $56f9: $40
	ld   h, l                                        ; $56fa: $65
	inc  bc                                          ; $56fb: $03
	ld   h, l                                        ; $56fc: $65
	ld   bc, $2801                                   ; $56fd: $01 $01 $28
	nop                                              ; $5700: $00
	inc  e                                           ; $5701: $1c
	dec  b                                           ; $5702: $05
	ld   bc, $0101                                   ; $5703: $01 $01 $01
	adc  h                                           ; $5706: $8c
	sbc  [hl]                                        ; $5707: $9e
	ld   l, e                                        ; $5708: $6b
	ld   d, h                                        ; $5709: $54
	ld   e, c                                        ; $570a: $59
	ld   l, l                                        ; $570b: $6d
	ld   e, l                                        ; $570c: $5d
	ld   a, b                                        ; $570d: $78
	sub  a                                           ; $570e: $97
	and  c                                           ; $570f: $a1
	ld   [hl], l                                     ; $5710: $75
	sub  b                                           ; $5711: $90
	dec  c                                           ; $5712: $0d
	ld   d, [hl]                                     ; $5713: $56
	ld   d, [hl]                                     ; $5714: $56
	ld   e, c                                        ; $5715: $59
	sub  a                                           ; $5716: $97
	rst  $38                                         ; $5717: $ff
	rst  $38                                         ; $5718: $ff
	dec  c                                           ; $5719: $0d
	ld   h, e                                        ; $571a: $63
	sbc  [hl]                                        ; $571b: $9e
	inc  b                                           ; $571c: $04
	ld   b, l                                        ; $571d: $45
	sbc  b                                           ; $571e: $98
	sub  d                                           ; $571f: $92
	sbc  a                                           ; $5720: $9f
	dec  c                                           ; $5721: $0d
	nop                                              ; $5722: $00
	ld   a, [bc]                                     ; $5723: $0a
	dec  c                                           ; $5724: $0d
	nop                                              ; $5725: $00
	nop                                              ; $5726: $00
	rrca                                             ; $5727: $0f
	nop                                              ; $5728: $00
	ld   bc, $020c                                   ; $5729: $01 $0c $02
	ld   b, $e5                                      ; $572c: $06 $e5
	inc  e                                           ; $572e: $1c
	rrca                                             ; $572f: $0f
	nop                                              ; $5730: $00
	ld   bc, $6701                                   ; $5731: $01 $01 $67
	adc  l                                           ; $5734: $8d
	adc  h                                           ; $5735: $8c
	ld   l, c                                        ; $5736: $69
	and  c                                           ; $5737: $a1
	sbc  a                                           ; $5738: $9f
	dec  c                                           ; $5739: $0d
	inc  b                                           ; $573a: $04
	ld   e, $79                                      ; $573b: $1e $79
	sub  d                                           ; $573d: $92
	sbc  c                                           ; $573e: $99
	ld   h, c                                        ; $573f: $61
	halt                                             ; $5740: $76
	ld   e, d                                        ; $5741: $5a
	ld   d, b                                        ; $5742: $50
	sbc  c                                           ; $5743: $99
	ld   a, h                                        ; $5744: $7c
	ld   [hl], l                                     ; $5745: $75
	rst  $38                                         ; $5746: $ff
	rst  $38                                         ; $5747: $ff
	dec  c                                           ; $5748: $0d
	nop                                              ; $5749: $00
	ld   a, [bc]                                     ; $574a: $0a
	inc  e                                           ; $574b: $1c
	dec  b                                           ; $574c: $05
	ld   [bc], a                                     ; $574d: $02
	ld   [bc], a                                     ; $574e: $02
	ld   bc, $9a6b                                   ; $574f: $01 $6b $9a
	ld   a, l                                        ; $5752: $7d
	ld   h, h                                        ; $5753: $64
	and  c                                           ; $5754: $a1
	ld   a, e                                        ; $5755: $7b
	and  c                                           ; $5756: $a1
	sub  d                                           ; $5757: $92
	ld   a, b                                        ; $5758: $78
	rst  $38                                         ; $5759: $ff
	rst  $38                                         ; $575a: $ff
	dec  c                                           ; $575b: $0d
	adc  h                                           ; $575c: $8c
	sbc  [hl]                                        ; $575d: $9e
	ld   h, c                                        ; $575e: $61
	and  c                                           ; $575f: $a1
	ld   [hl], a                                     ; $5760: $77
	db   $d3                                         ; $5761: $d3
	rst  JumpTable                                         ; $5762: $df
	ld   a, b                                        ; $5763: $78
	halt                                             ; $5764: $76
	ld   e, e                                        ; $5765: $5b
	ld   a, c                                        ; $5766: $79
	ld   [hl], l                                     ; $5767: $75
	sub  b                                           ; $5768: $90
	dec  c                                           ; $5769: $0d
	sub  [hl]                                        ; $576a: $96
	ld   [hl], c                                     ; $576b: $71
	ld   [hl], h                                     ; $576c: $74
	ld   [hl], c                                     ; $576d: $71
	ld   [hl], h                                     ; $576e: $74
	sub  d                                           ; $576f: $92
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
	ld   bc, $7463                                   ; $577c: $01 $63 $74
	rst  $38                                         ; $577f: $ff
	rst  $38                                         ; $5780: $ff
	ld   [hl], a                                     ; $5781: $77
	ld   d, h                                        ; $5782: $54
	ld   h, l                                        ; $5783: $65
	sub  [hl]                                        ; $5784: $96
	ld   d, h                                        ; $5785: $54
	ld   sp, hl                                      ; $5786: $f9
	dec  c                                           ; $5787: $0d
	nop                                              ; $5788: $00
	ld   a, [bc]                                     ; $5789: $0a
	ld   b, $41                                      ; $578a: $06 $41
	jr   nz, @+$11                                   ; $578c: $20 $0f

	nop                                              ; $578e: $00
	ld   bc, $ff01                                   ; $578f: $01 $01 $ff
	rst  $38                                         ; $5792: $ff
	rst  $38                                         ; $5793: $ff
	rst  $38                                         ; $5794: $ff
	dec  c                                           ; $5795: $0d
	nop                                              ; $5796: $00
	ld   a, [bc]                                     ; $5797: $0a
	inc  e                                           ; $5798: $1c
	dec  b                                           ; $5799: $05
	ld   [bc], a                                     ; $579a: $02
	ld   [bc], a                                     ; $579b: $02
	ld   bc, $717d                                   ; $579c: $01 $7d $71
	ld   e, e                                        ; $579f: $5b
	sbc  b                                           ; $57a0: $98
	ld   l, c                                        ; $57a1: $69
	ld   d, [hl]                                     ; $57a2: $56
	add  [hl]                                        ; $57a3: $86
	and  c                                           ; $57a4: $a1
	dec  c                                           ; $57a5: $0d
	sub  d                                           ; $57a6: $92
	ld   [hl], c                                     ; $57a7: $71
	ld   l, a                                        ; $57a8: $6f
	sub  c                                           ; $57a9: $91
	ld   a, b                                        ; $57aa: $78
	rst  $38                                         ; $57ab: $ff
	rst  $38                                         ; $57ac: $ff
	dec  c                                           ; $57ad: $0d
	nop                                              ; $57ae: $00
	ld   a, [bc]                                     ; $57af: $0a
	inc  e                                           ; $57b0: $1c
	dec  b                                           ; $57b1: $05
	ld   bc, $0101                                   ; $57b2: $01 $01 $01
	adc  h                                           ; $57b5: $8c
	sbc  [hl]                                        ; $57b6: $9e
	ld   h, c                                        ; $57b7: $61
	halt                                             ; $57b8: $76
	sbc  l                                           ; $57b9: $9d
	sub  a                                           ; $57ba: $97
	and  c                                           ; $57bb: $a1
	ld   l, a                                        ; $57bc: $6f
	sub  e                                           ; $57bd: $93
	ld   d, h                                        ; $57be: $54
	ld   h, c                                        ; $57bf: $61
	halt                                             ; $57c0: $76
	ld   a, l                                        ; $57c1: $7d
	dec  c                                           ; $57c2: $0d
	ld   h, l                                        ; $57c3: $65
	sub  l                                           ; $57c4: $95
	ld   d, h                                        ; $57c5: $54
	ld   l, a                                        ; $57c6: $6f
	ld   h, l                                        ; $57c7: $65
	ld   l, l                                        ; $57c8: $6d
	ld   [hl], c                                     ; $57c9: $71
	ld   [hl], h                                     ; $57ca: $74
	ld   h, c                                        ; $57cb: $61
	halt                                             ; $57cc: $76
	ld   [hl], l                                     ; $57cd: $75
	rst  $38                                         ; $57ce: $ff
	rst  $38                                         ; $57cf: $ff
	dec  c                                           ; $57d0: $0d
	ld   h, e                                        ; $57d1: $63
	sbc  [hl]                                        ; $57d2: $9e
	ld   a, l                                        ; $57d3: $7d
	sub  [hl]                                        ; $57d4: $96
	ld   d, h                                        ; $57d5: $54
	inc  b                                           ; $57d6: $04
	dec  bc                                          ; $57d7: $0b
	add  [hl]                                        ; $57d8: $86
	sbc  a                                           ; $57d9: $9f
	dec  c                                           ; $57da: $0d
	nop                                              ; $57db: $00
	ld   a, [bc]                                     ; $57dc: $0a
	dec  c                                           ; $57dd: $0d
	nop                                              ; $57de: $00
	nop                                              ; $57df: $00
	rrca                                             ; $57e0: $0f
	nop                                              ; $57e1: $00
	ld   bc, $020c                                   ; $57e2: $01 $0c $02
	ld   b, $e5                                      ; $57e5: $06 $e5
	inc  e                                           ; $57e7: $1c
	ld   c, $54                                      ; $57e8: $0e $54
	inc  e                                           ; $57ea: $1c
	dec  b                                           ; $57eb: $05
	nop                                              ; $57ec: $00
	nop                                              ; $57ed: $00
	ld   bc, $7889                                   ; $57ee: $01 $89 $78
	sbc  [hl]                                        ; $57f1: $9e
	ld   h, e                                        ; $57f2: $63
	ld   [hl], c                                     ; $57f3: $71
	ld   l, e                                        ; $57f4: $6b
	ld   e, l                                        ; $57f5: $5d
	sub  d                                           ; $57f6: $92
	ld   e, a                                        ; $57f7: $5f
	ld   [hl], a                                     ; $57f8: $77
	dec  c                                           ; $57f9: $0d
	ld   h, c                                        ; $57fa: $61
	sbc  d                                           ; $57fb: $9a
	and  b                                           ; $57fc: $a0
	inc  bc                                          ; $57fd: $03
	ret  c                                           ; $57fe: $d8

	ld   a, c                                        ; $57ff: $79
	ld   e, c                                        ; $5800: $59
	add  h                                           ; $5801: $84
	ld   [hl], c                                     ; $5802: $71
	ld   [hl], h                                     ; $5803: $74
	ld   e, l                                        ; $5804: $5d
	sbc  d                                           ; $5805: $9a
	add  [hl]                                        ; $5806: $86
	and  c                                           ; $5807: $a1
	ld   sp, hl                                      ; $5808: $f9
	dec  c                                           ; $5809: $0d
	nop                                              ; $580a: $00
	ld   a, [bc]                                     ; $580b: $0a
	add  hl, de                                      ; $580c: $19
	dec  b                                           ; $580d: $05
	inc  bc                                          ; $580e: $03
	adc  h                                           ; $580f: $8c
	ld   l, b                                        ; $5810: $68
	ld   a, l                                        ; $5811: $7d
	inc  bc                                          ; $5812: $03
	dec  d                                           ; $5813: $15
	inc  b                                           ; $5814: $04
	cp   a                                           ; $5815: $bf
	ld   h, a                                        ; $5816: $67
	sbc  c                                           ; $5817: $99
	nop                                              ; $5818: $00
	nop                                              ; $5819: $00
	halt                                             ; $581a: $76
	ld   a, c                                        ; $581b: $79
	ld   e, c                                        ; $581c: $59
	ld   e, l                                        ; $581d: $5d
	ld   e, c                                        ; $581e: $59
	add  h                                           ; $581f: $84
	sbc  c                                           ; $5820: $99
	nop                                              ; $5821: $00
	ld   bc, $a156                                   ; $5822: $01 $56 $a1
	sbc  b                                           ; $5825: $98
	sub  l                                           ; $5826: $95
	ld   h, a                                        ; $5827: $67
	sbc  c                                           ; $5828: $99
	nop                                              ; $5829: $00
	ld   [bc], a                                     ; $582a: $02
	rlca                                             ; $582b: $07
	ld   b, [hl]                                     ; $582c: $46
	dec  e                                           ; $582d: $1d
	ld   [bc], a                                     ; $582e: $02
	inc  bc                                          ; $582f: $03
	ld   bc, $2000                                   ; $5830: $01 $00 $20
	nop                                              ; $5833: $00
	rlca                                             ; $5834: $07
	xor  a                                           ; $5835: $af
	dec  e                                           ; $5836: $1d
	ld   [bc], a                                     ; $5837: $02
	inc  bc                                          ; $5838: $03
	ld   bc, $2001                                   ; $5839: $01 $01 $20
	nop                                              ; $583c: $00
	rlca                                             ; $583d: $07
	db   $eb                                         ; $583e: $eb
	dec  e                                           ; $583f: $1d
	ld   [bc], a                                     ; $5840: $02
	inc  bc                                          ; $5841: $03
	ld   bc, $2002                                   ; $5842: $01 $02 $20
	nop                                              ; $5845: $00
	ld   b, $29                                      ; $5846: $06 $29
	ld   e, $1c                                      ; $5848: $1e $1c
	dec  b                                           ; $584a: $05
	ld   bc, $0101                                   ; $584b: $01 $01 $01
	sub  [hl]                                        ; $584e: $96
	ld   e, l                                        ; $584f: $5d
	ld   l, h                                        ; $5850: $6c
	ld   e, e                                        ; $5851: $5b
	ld   d, d                                        ; $5852: $52
	ld   [hl], h                                     ; $5853: $74
	ld   e, l                                        ; $5854: $5d
	sbc  d                                           ; $5855: $9a
	ld   a, l                                        ; $5856: $7d
	ld   [hl], c                                     ; $5857: $71
	ld   l, l                                        ; $5858: $6d
	ld   a, [$610d]                                  ; $5859: $fa $0d $61
	sbc  d                                           ; $585c: $9a
	ld   l, h                                        ; $585d: $6c
	ld   d, h                                        ; $585e: $54
	ld   l, a                                        ; $585f: $6f
	ld   a, h                                        ; $5860: $7c
	inc  b                                           ; $5861: $04
	ld   e, [hl]                                     ; $5862: $5e
	inc  b                                           ; $5863: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5864: $cf
	ld   h, l                                        ; $5865: $65
	ld   l, l                                        ; $5866: $6d
	dec  c                                           ; $5867: $0d
	ld   bc, $7807                                   ; $5868: $01 $07 $78
	sbc  b                                           ; $586b: $98
	ld   e, e                                        ; $586c: $5b
	sbc  b                                           ; $586d: $98
	ld   e, l                                        ; $586e: $5d
	and  c                                           ; $586f: $a1
	ld   bc, $9208                                   ; $5870: $01 $08 $92
	ld   a, [$000d]                                  ; $5873: $fa $0d $00
	ld   a, [bc]                                     ; $5876: $0a
	dec  b                                           ; $5877: $05
	ld   b, b                                        ; $5878: $40
	rst  $38                                         ; $5879: $ff
	inc  bc                                          ; $587a: $03
	rst  $38                                         ; $587b: $ff
	ld   bc, $2801                                   ; $587c: $01 $01 $28
	nop                                              ; $587f: $00
	ld   bc, $7c61                                   ; $5880: $01 $61 $7c
	ld   [bc], a                                     ; $5883: $02
	ld   e, b                                        ; $5884: $58
	ld   [bc], a                                     ; $5885: $02
	ld   d, [hl]                                     ; $5886: $56
	ld   e, d                                        ; $5887: $5a
	ld   d, b                                        ; $5888: $50
	sbc  d                                           ; $5889: $9a
	ld   a, [hl]                                     ; $588a: $7e
	dec  c                                           ; $588b: $0d
	inc  b                                           ; $588c: $04
	ld   e, $7c                                      ; $588d: $1e $7c
	inc  bc                                          ; $588f: $03
	add  d                                           ; $5890: $82
	ld   a, c                                        ; $5891: $79
	ld   a, b                                        ; $5892: $78
	sbc  b                                           ; $5893: $98
	ld   e, e                                        ; $5894: $5b
	sbc  c                                           ; $5895: $99
	ld   h, c                                        ; $5896: $61
	halt                                             ; $5897: $76
	ld   e, d                                        ; $5898: $5a
	ld   [hl], l                                     ; $5899: $75
	ld   e, e                                        ; $589a: $5b
	sbc  c                                           ; $589b: $99
	dec  c                                           ; $589c: $0d
	ld   [hl], c                                     ; $589d: $71
	ld   l, a                                        ; $589e: $6f
	sub  e                                           ; $589f: $93

Jump_066_58a0:
	ld   d, h                                        ; $58a0: $54
	ld   b, $14                                      ; $58a1: $06 $14
	dec  b                                           ; $58a3: $05
	ld   b, $78                                      ; $58a4: $06 $78
	sub  b                                           ; $58a6: $90
	and  c                                           ; $58a7: $a1
	ld   a, b                                        ; $58a8: $78
	and  c                                           ; $58a9: $a1
	sub  d                                           ; $58aa: $92
	sbc  a                                           ; $58ab: $9f
	dec  c                                           ; $58ac: $0d
	nop                                              ; $58ad: $00
	ld   a, [bc]                                     ; $58ae: $0a
	ld   b, $53                                      ; $58af: $06 $53
	ld   e, $1c                                      ; $58b1: $1e $1c
	dec  b                                           ; $58b3: $05
	nop                                              ; $58b4: $00
	nop                                              ; $58b5: $00
	ld   bc, $9a61                                   ; $58b6: $01 $61 $9a
	ld   a, l                                        ; $58b9: $7d
	ld   bc, $7807                                   ; $58ba: $01 $07 $78
	sbc  b                                           ; $58bd: $98
	ld   e, e                                        ; $58be: $5b
	sbc  b                                           ; $58bf: $98
	ld   e, l                                        ; $58c0: $5d
	and  c                                           ; $58c1: $a1
	ld   bc, $5208                                   ; $58c2: $01 $08 $52
	ld   d, h                                        ; $58c5: $54
	ld   [hl], h                                     ; $58c6: $74
	dec  c                                           ; $58c7: $0d
	inc  b                                           ; $58c8: $04
	ld   e, $7c                                      ; $58c9: $1e $7c
	inc  bc                                          ; $58cb: $03
	add  d                                           ; $58cc: $82
	ld   a, c                                        ; $58cd: $79
	ld   a, b                                        ; $58ce: $78
	sbc  b                                           ; $58cf: $98
	ld   e, e                                        ; $58d0: $5b
	sbc  c                                           ; $58d1: $99
	ld   h, c                                        ; $58d2: $61
	halt                                             ; $58d3: $76
	ld   e, d                                        ; $58d4: $5a
	ld   [hl], l                                     ; $58d5: $75
	ld   e, e                                        ; $58d6: $5b
	sbc  c                                           ; $58d7: $99
	dec  c                                           ; $58d8: $0d
	ld   [hl], c                                     ; $58d9: $71
	ld   l, a                                        ; $58da: $6f
	sub  e                                           ; $58db: $93
	ld   d, h                                        ; $58dc: $54
	ld   b, $14                                      ; $58dd: $06 $14
	dec  b                                           ; $58df: $05
	ld   b, $78                                      ; $58e0: $06 $78
	sub  b                                           ; $58e2: $90
	and  c                                           ; $58e3: $a1
	ld   a, b                                        ; $58e4: $78
	and  c                                           ; $58e5: $a1
	sub  d                                           ; $58e6: $92
	sbc  a                                           ; $58e7: $9f
	dec  c                                           ; $58e8: $0d
	nop                                              ; $58e9: $00
	ld   a, [bc]                                     ; $58ea: $0a
	ld   b, $53                                      ; $58eb: $06 $53
	ld   e, $1c                                      ; $58ed: $1e $1c
	dec  b                                           ; $58ef: $05
	rlca                                             ; $58f0: $07
	rlca                                             ; $58f1: $07
	ld   bc, $a178                                   ; $58f2: $01 $78 $a1
	sub  d                                           ; $58f5: $92
	ld   sp, hl                                      ; $58f6: $f9
	dec  c                                           ; $58f7: $0d
	ld   d, h                                        ; $58f8: $54
	ld   l, a                                        ; $58f9: $6f
	ld   a, h                                        ; $58fa: $7c
	inc  b                                           ; $58fb: $04
	ld   e, [hl]                                     ; $58fc: $5e
	inc  b                                           ; $58fd: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58fe: $cf
	inc  b                                           ; $58ff: $04
	ld   h, c                                        ; $5900: $61
	and  b                                           ; $5901: $a0
	ld   [bc], a                                     ; $5902: $02
	ld   hl, sp+$04                                  ; $5903: $f8 $04
	di                                               ; $5905: $f3
	ld   h, l                                        ; $5906: $65
	ld   [hl], h                                     ; $5907: $74
	dec  c                                           ; $5908: $0d
	add  [hl]                                        ; $5909: $86
	and  c                                           ; $590a: $a1
	ld   a, h                                        ; $590b: $7c
	ld   e, c                                        ; $590c: $59
	ld   sp, hl                                      ; $590d: $f9
	dec  c                                           ; $590e: $0d
	nop                                              ; $590f: $00
	ld   a, [bc]                                     ; $5910: $0a
	ld   bc, $8772                                   ; $5911: $01 $72 $87
	ld   h, c                                        ; $5914: $61
	add  a                                           ; $5915: $87
	ld   [bc], a                                     ; $5916: $02
	sbc  l                                           ; $5917: $9d
	sbc  l                                           ; $5918: $9d
	ld   l, b                                        ; $5919: $68
	ld   a, c                                        ; $591a: $79
	dec  c                                           ; $591b: $0d
	ld   l, a                                        ; $591c: $6f
	sub  c                                           ; $591d: $91
	ld   [hl], c                                     ; $591e: $71
	ld   l, a                                        ; $591f: $6f
	sub  c                                           ; $5920: $91
	halt                                             ; $5921: $76
	ld   e, c                                        ; $5922: $59
	add  h                                           ; $5923: $84
	sbc  c                                           ; $5924: $99
	ld   a, [$000d]                                  ; $5925: $fa $0d $00
	ld   a, [bc]                                     ; $5928: $0a
	ld   b, $53                                      ; $5929: $06 $53
	ld   e, $1c                                      ; $592b: $1e $1c
	dec  b                                           ; $592d: $05
	ld   [bc], a                                     ; $592e: $02
	ld   [bc], a                                     ; $592f: $02
	ld   bc, $527d                                   ; $5930: $01 $7d $52
	ld   a, l                                        ; $5933: $7d
	ld   d, d                                        ; $5934: $52
	sbc  [hl]                                        ; $5935: $9e
	inc  b                                           ; $5936: $04
	ld   c, c                                        ; $5937: $49
	and  b                                           ; $5938: $a0
	or   c                                           ; $5939: $b1
	cp   e                                           ; $593a: $bb
	or   c                                           ; $593b: $b1
	cp   e                                           ; $593c: $bb
	dec  c                                           ; $593d: $0d
	ld   h, l                                        ; $593e: $65
	ld   [hl], h                                     ; $593f: $74
	and  c                                           ; $5940: $a1
	ld   a, e                                        ; $5941: $7b
	and  c                                           ; $5942: $a1
	ld   a, b                                        ; $5943: $78
	sbc  a                                           ; $5944: $9f
	dec  c                                           ; $5945: $0d
	adc  c                                           ; $5946: $89
	sub  a                                           ; $5947: $97
	sbc  [hl]                                        ; $5948: $9e
	ld   d, h                                        ; $5949: $54
	ld   l, a                                        ; $594a: $6f
	ld   e, d                                        ; $594b: $5a
	ld   e, c                                        ; $594c: $59
	add  h                                           ; $594d: $84
	sub  a                                           ; $594e: $97
	ld   h, l                                        ; $594f: $65
	ld   l, l                                        ; $5950: $6d
	sbc  c                                           ; $5951: $99
	sbc  a                                           ; $5952: $9f
	dec  c                                           ; $5953: $0d
	nop                                              ; $5954: $00
	ld   a, [bc]                                     ; $5955: $0a
	inc  e                                           ; $5956: $1c
	dec  b                                           ; $5957: $05
	nop                                              ; $5958: $00
	nop                                              ; $5959: $00
	ld   bc, $7889                                   ; $595a: $01 $89 $78
	sbc  [hl]                                        ; $595d: $9e
	cp   d                                           ; $595e: $ba
	and  l                                           ; $595f: $a5
	call nz, $a0c2                                   ; $5960: $c4 $c2 $a0
	inc  b                                           ; $5963: $04
	ld   b, l                                        ; $5964: $45
	sbc  d                                           ; $5965: $9a
	sbc  c                                           ; $5966: $99
	ld   [hl], l                                     ; $5967: $75
	rst  $38                                         ; $5968: $ff
	rst  $38                                         ; $5969: $ff
	dec  c                                           ; $596a: $0d
	nop                                              ; $596b: $00
	ld   a, [bc]                                     ; $596c: $0a
	add  hl, de                                      ; $596d: $19
	dec  b                                           ; $596e: $05
	ld   [bc], a                                     ; $596f: $02
	dec  b                                           ; $5970: $05
	pop  de                                          ; $5971: $d1
	sbc  l                                           ; $5972: $9d
	ld   l, b                                        ; $5973: $68
	inc  b                                           ; $5974: $04
	call nc, $04a0                                   ; $5975: $d4 $a0 $04
	ld   l, [hl]                                     ; $5978: $6e
	ld   h, [hl]                                     ; $5979: $66
	sbc  c                                           ; $597a: $99
	nop                                              ; $597b: $00
	nop                                              ; $597c: $00
	inc  bc                                          ; $597d: $03
	ret  c                                           ; $597e: $d8

	ld   e, c                                        ; $597f: $59
	sub  a                                           ; $5980: $97
	ld   a, l                                        ; $5981: $7d
	ld   l, b                                        ; $5982: $68
	ld   h, a                                        ; $5983: $67
	nop                                              ; $5984: $00
	ld   bc, $9807                                   ; $5985: $01 $07 $98
	ld   e, $02                                      ; $5988: $1e $02
	inc  bc                                          ; $598a: $03
	ld   bc, $2000                                   ; $598b: $01 $00 $20
	nop                                              ; $598e: $00
	rlca                                             ; $598f: $07
	sbc  b                                           ; $5990: $98
	ld   e, $02                                      ; $5991: $1e $02
	inc  bc                                          ; $5993: $03
	ld   bc, $2001                                   ; $5994: $01 $01 $20
	nop                                              ; $5997: $00
	ld   b, $e1                                      ; $5998: $06 $e1
	ld   e, $1c                                      ; $599a: $1e $1c
	dec  b                                           ; $599c: $05
	rlca                                             ; $599d: $07
	rlca                                             ; $599e: $07
	ld   bc, $a178                                   ; $599f: $01 $78 $a1
	sub  d                                           ; $59a2: $92
	sbc  [hl]                                        ; $59a3: $9e
	ld   l, e                                        ; $59a4: $6b
	ld   a, h                                        ; $59a5: $7c
	inc  b                                           ; $59a6: $04
	ld   e, h                                        ; $59a7: $5c
	ld   [bc], a                                     ; $59a8: $02
	add  hl, bc                                      ; $59a9: $09
	ld   a, l                                        ; $59aa: $7d
	ld   sp, hl                                      ; $59ab: $f9
	dec  c                                           ; $59ac: $0d
	adc  h                                           ; $59ad: $8c
	ld   h, e                                        ; $59ae: $63
	ld   e, c                                        ; $59af: $59
	pop  de                                          ; $59b0: $d1
	or   b                                           ; $59b1: $b0
	ret  nc                                          ; $59b2: $d0

	push bc                                          ; $59b3: $c5
	ld   h, a                                        ; $59b4: $67
	sbc  c                                           ; $59b5: $99
	halt                                             ; $59b6: $76
	ld   [hl], l                                     ; $59b7: $75
	sub  b                                           ; $59b8: $90
	rst  $38                                         ; $59b9: $ff
	rst  $38                                         ; $59ba: $ff
	dec  c                                           ; $59bb: $0d
	nop                                              ; $59bc: $00
	ld   a, [bc]                                     ; $59bd: $0a
	ld   bc, $527d                                   ; $59be: $01 $7d $52
	ld   a, l                                        ; $59c1: $7d
	ld   d, d                                        ; $59c2: $52
	sbc  [hl]                                        ; $59c3: $9e
	ld   h, [hl]                                     ; $59c4: $66
	sub  e                                           ; $59c5: $93
	and  c                                           ; $59c6: $a1
	add  c                                           ; $59c7: $81
	ld   a, l                                        ; $59c8: $7d
	ld   d, [hl]                                     ; $59c9: $56
	ld   d, [hl]                                     ; $59ca: $56
	ld   e, c                                        ; $59cb: $59
	sbc  a                                           ; $59cc: $9f
	dec  c                                           ; $59cd: $0d
	ld   h, [hl]                                     ; $59ce: $66
	sub  c                                           ; $59cf: $91
	sbc  [hl]                                        ; $59d0: $9e
	ld   [bc], a                                     ; $59d1: $02
	ld   a, a                                        ; $59d2: $7f
	ld   e, l                                        ; $59d3: $5d
	ld   [hl], l                                     ; $59d4: $75
	sbc  a                                           ; $59d5: $9f
	dec  c                                           ; $59d6: $0d
	cp   d                                           ; $59d7: $ba
	and  l                                           ; $59d8: $a5
	call nz, $abc2                                   ; $59d9: $c4 $c2 $ab
	push af                                          ; $59dc: $f5
	ld   a, [$000d]                                  ; $59dd: $fa $0d $00
	ld   a, [bc]                                     ; $59e0: $0a
	ld   b, $10                                      ; $59e1: $06 $10
	rra                                              ; $59e3: $1f
	inc  e                                           ; $59e4: $1c
	dec  b                                           ; $59e5: $05
	ld   bc, $0101                                   ; $59e6: $01 $01 $01
	ld   l, e                                        ; $59e9: $6b
	ld   d, h                                        ; $59ea: $54
	sub  d                                           ; $59eb: $92
	ld   [hl], c                                     ; $59ec: $71
	ld   [hl], h                                     ; $59ed: $74
	sbc  [hl]                                        ; $59ee: $9e
	and  a                                           ; $59ef: $a7
	jp   nz, $02a0                                   ; $59f0: $c2 $a0 $02

	ld   hl, sp-$69                                  ; $59f3: $f8 $97
	ld   d, d                                        ; $59f5: $52
	ld   h, l                                        ; $59f6: $65
	ld   [hl], h                                     ; $59f7: $74
	dec  c                                           ; $59f8: $0d
	ld   e, l                                        ; $59f9: $5d
	sbc  d                                           ; $59fa: $9a
	halt                                             ; $59fb: $76
	sbc  c                                           ; $59fc: $99
	halt                                             ; $59fd: $76
	sbc  [hl]                                        ; $59fe: $9e
	ld   d, h                                        ; $59ff: $54
	sbc  d                                           ; $5a00: $9a
	ld   h, l                                        ; $5a01: $65
	ld   d, d                                        ; $5a02: $52
	ld   a, b                                        ; $5a03: $78
	ld   d, b                                        ; $5a04: $50
	rst  $38                                         ; $5a05: $ff
	rst  $38                                         ; $5a06: $ff
	dec  c                                           ; $5a07: $0d
	nop                                              ; $5a08: $00
	ld   a, [bc]                                     ; $5a09: $0a
	dec  b                                           ; $5a0a: $05
	ld   b, b                                        ; $5a0b: $40
	rst  $38                                         ; $5a0c: $ff
	inc  bc                                          ; $5a0d: $03
	rst  $38                                         ; $5a0e: $ff
	ld   bc, $2801                                   ; $5a0f: $01 $01 $28
	nop                                              ; $5a12: $00
	dec  c                                           ; $5a13: $0d
	nop                                              ; $5a14: $00
	nop                                              ; $5a15: $00
	rrca                                             ; $5a16: $0f
	nop                                              ; $5a17: $00
	ld   bc, $080c                                   ; $5a18: $01 $0c $08
	inc  e                                           ; $5a1b: $1c
	dec  b                                           ; $5a1c: $05
	jr   nz, jr_066_5a27                             ; $5a1d: $20 $08

	ld   sp, $2040                                   ; $5a1f: $31 $40 $20
	inc  bc                                          ; $5a22: $03
	jr   nz, jr_066_5a26                             ; $5a23: $20 $01

	inc  d                                           ; $5a25: $14

jr_066_5a26:
	add  hl, hl                                      ; $5a26: $29

jr_066_5a27:
	nop                                              ; $5a27: $00
	ld   bc, $9252                                   ; $5a28: $01 $52 $92
	ld   c, a                                        ; $5a2b: $4f
	rst  $38                                         ; $5a2c: $ff
	rst  $38                                         ; $5a2d: $ff
	cp   d                                           ; $5a2e: $ba
	rst  JumpTable                                         ; $5a2f: $df
	push af                                          ; $5a30: $f5
	sbc  a                                           ; $5a31: $9f
	dec  c                                           ; $5a32: $0d
	ld   l, a                                        ; $5a33: $6f
	sub  l                                           ; $5a34: $95
	ld   [hl], c                                     ; $5a35: $71
	halt                                             ; $5a36: $76
	inc  bc                                          ; $5a37: $03
	add  e                                           ; $5a38: $83
	inc  b                                           ; $5a39: $04
	sbc  b                                           ; $5a3a: $98
	ld   h, l                                        ; $5a3b: $65
	ld   [hl], h                                     ; $5a3c: $74
	sub  b                                           ; $5a3d: $90
	ld   d, h                                        ; $5a3e: $54
	ld   l, l                                        ; $5a3f: $6d
	sbc  l                                           ; $5a40: $9d
	sbc  a                                           ; $5a41: $9f
	dec  c                                           ; $5a42: $0d
	nop                                              ; $5a43: $00
	ld   a, [bc]                                     ; $5a44: $0a
	rlca                                             ; $5a45: $07
	and  a                                           ; $5a46: $a7
	rra                                              ; $5a47: $1f
	inc  bc                                          ; $5a48: $03
	rst  $38                                         ; $5a49: $ff
	ld   bc, $2001                                   ; $5a4a: $01 $01 $20
	nop                                              ; $5a4d: $00
	rlca                                             ; $5a4e: $07
	reti                                             ; $5a4f: $d9


	rra                                              ; $5a50: $1f
	inc  bc                                          ; $5a51: $03
	rst  $38                                         ; $5a52: $ff
	ld   bc, $2000                                   ; $5a53: $01 $00 $20
	nop                                              ; $5a56: $00
	ld   bc, $a189                                   ; $5a57: $01 $89 $a1
	adc  h                                           ; $5a5a: $8c
	ld   a, c                                        ; $5a5b: $79
	cp   d                                           ; $5a5c: $ba
	rst  JumpTable                                         ; $5a5d: $df
	push af                                          ; $5a5e: $f5
	ld   e, c                                        ; $5a5f: $59
	ld   [hl], c                                     ; $5a60: $71
	ld   l, l                                        ; $5a61: $6d
	ld   a, b                                        ; $5a62: $78
	ld   c, a                                        ; $5a63: $4f
	rst  $38                                         ; $5a64: $ff
	rst  $38                                         ; $5a65: $ff
	dec  c                                           ; $5a66: $0d
	ld   e, c                                        ; $5a67: $59
	sub  a                                           ; $5a68: $97
	ld   l, [hl]                                     ; $5a69: $6e
	ld   a, h                                        ; $5a6a: $7c
	adc  c                                           ; $5a6b: $89
	ld   d, h                                        ; $5a6c: $54
	ld   a, l                                        ; $5a6d: $7d
	inc  b                                           ; $5a6e: $04
	ld   c, c                                        ; $5a6f: $49
	halt                                             ; $5a70: $76
	sub  b                                           ; $5a71: $90
	ld   a, b                                        ; $5a72: $78
	ld   d, d                                        ; $5a73: $52
	ld   e, c                                        ; $5a74: $59
	ld   sp, hl                                      ; $5a75: $f9
	dec  c                                           ; $5a76: $0d
	nop                                              ; $5a77: $00
	ld   a, [bc]                                     ; $5a78: $0a
	dec  e                                           ; $5a79: $1d
	ld   b, b                                        ; $5a7a: $40
	dec  d                                           ; $5a7b: $15
	inc  bc                                          ; $5a7c: $03
	dec  d                                           ; $5a7d: $15
	ld   bc, $2803                                   ; $5a7e: $01 $03 $28
	nop                                              ; $5a81: $00
	ld   bc, $9e8c                                   ; $5a82: $01 $8c $9e
	ld   [hl], l                                     ; $5a85: $75
	sub  b                                           ; $5a86: $90
	ld   d, b                                        ; $5a87: $50
	and  c                                           ; $5a88: $a1
	ld   l, l                                        ; $5a89: $6d
	ld   a, h                                        ; $5a8a: $7c
	ld   e, b                                        ; $5a8b: $58
	ld   e, c                                        ; $5a8c: $59
	ld   h, b                                        ; $5a8d: $60
	ld   [hl], l                                     ; $5a8e: $75
	dec  c                                           ; $5a8f: $0d
	inc  bc                                          ; $5a90: $03
	adc  e                                           ; $5a91: $8b
	ld   [bc], a                                     ; $5a92: $02
	sub  [hl]                                        ; $5a93: $96
	ld   [hl], l                                     ; $5a94: $75
	ld   e, e                                        ; $5a95: $5b
	ld   [hl], h                                     ; $5a96: $74
	inc  bc                                          ; $5a97: $03
	ld   e, e                                        ; $5a98: $5b
	ld   e, c                                        ; $5a99: $59
	ld   [hl], c                                     ; $5a9a: $71
	ld   l, l                                        ; $5a9b: $6d
	sbc  l                                           ; $5a9c: $9d
	sbc  a                                           ; $5a9d: $9f
	dec  c                                           ; $5a9e: $0d
	ld   e, b                                        ; $5a9f: $58
	ld   e, b                                        ; $5aa0: $58
	ld   e, e                                        ; $5aa1: $5b
	ld   a, c                                        ; $5aa2: $79
	sbc  a                                           ; $5aa3: $9f
	dec  c                                           ; $5aa4: $0d
	nop                                              ; $5aa5: $00
	ld   a, [bc]                                     ; $5aa6: $0a
	ld   b, $0d                                      ; $5aa7: $06 $0d
	jr   nz, jr_066_5ac8                             ; $5aa9: $20 $1d

	ld   b, b                                        ; $5aab: $40
	dec  d                                           ; $5aac: $15
	inc  bc                                          ; $5aad: $03
	dec  d                                           ; $5aae: $15
	ld   bc, $2801                                   ; $5aaf: $01 $01 $28
	nop                                              ; $5ab2: $00
	ld   bc, $508c                                   ; $5ab3: $01 $8c $50
	sbc  [hl]                                        ; $5ab6: $9e
	inc  bc                                          ; $5ab7: $03
	add  e                                           ; $5ab8: $83
	inc  b                                           ; $5ab9: $04
	sbc  b                                           ; $5aba: $98
	ld   a, l                                        ; $5abb: $7d
	inc  bc                                          ; $5abc: $03
	ld   [de], a                                     ; $5abd: $12
	ld   [bc], a                                     ; $5abe: $02
	ld   c, h                                        ; $5abf: $4c
	ld   a, h                                        ; $5ac0: $7c
	inc  b                                           ; $5ac1: $04
	add  c                                           ; $5ac2: $81
	dec  c                                           ; $5ac3: $0d
	ld   d, d                                        ; $5ac4: $52
	ld   d, h                                        ; $5ac5: $54
	ld   h, e                                        ; $5ac6: $63
	ld   e, c                                        ; $5ac7: $59

jr_066_5ac8:
	ld   d, d                                        ; $5ac8: $52
	rst  $38                                         ; $5ac9: $ff
	rst  $38                                         ; $5aca: $ff
	dec  c                                           ; $5acb: $0d
	ld   e, c                                        ; $5acc: $59
	and  c                                           ; $5acd: $a1
	ld   a, c                                        ; $5ace: $79
	and  c                                           ; $5acf: $a1
	ld   h, l                                        ; $5ad0: $65
	ld   l, l                                        ; $5ad1: $6d
	ld   [hl], c                                     ; $5ad2: $71
	ld   [hl], h                                     ; $5ad3: $74
	sub  d                                           ; $5ad4: $92
	sbc  a                                           ; $5ad5: $9f
	dec  c                                           ; $5ad6: $0d
	nop                                              ; $5ad7: $00
	ld   a, [bc]                                     ; $5ad8: $0a
	ld   b, $0d                                      ; $5ad9: $06 $0d
	jr   nz, jr_066_5afa                             ; $5adb: $20 $1d

	ld   b, b                                        ; $5add: $40
	dec  d                                           ; $5ade: $15
	inc  bc                                          ; $5adf: $03
	dec  d                                           ; $5ae0: $15
	ld   bc, $2903                                   ; $5ae1: $01 $03 $29
	nop                                              ; $5ae4: $00
	ld   bc, $a150                                   ; $5ae5: $01 $50 $a1
	ld   l, l                                        ; $5ae8: $6d
	ld   e, d                                        ; $5ae9: $5a
	sbc  [hl]                                        ; $5aea: $9e
	ld   d, h                                        ; $5aeb: $54
	ld   l, a                                        ; $5aec: $6f
	and  b                                           ; $5aed: $a0
	ld   [bc], a                                     ; $5aee: $02
	ld   hl, sp+$04                                  ; $5aef: $f8 $04
	di                                               ; $5af1: $f3
	ld   l, c                                        ; $5af2: $69
	ld   d, [hl]                                     ; $5af3: $56
	add  [hl]                                        ; $5af4: $86
	and  c                                           ; $5af5: $a1
	dec  c                                           ; $5af6: $0d
	ld   e, c                                        ; $5af7: $59
	ld   [hl], c                                     ; $5af8: $71
	ld   l, l                                        ; $5af9: $6d

jr_066_5afa:
	ld   e, c                                        ; $5afa: $59
	sub  a                                           ; $5afb: $97
	sbc  [hl]                                        ; $5afc: $9e
	ld   h, c                                        ; $5afd: $61
	and  c                                           ; $5afe: $a1
	ld   a, b                                        ; $5aff: $78
	ld   [bc], a                                     ; $5b00: $02
	reti                                             ; $5b01: $d9


	ld   [bc], a                                     ; $5b02: $02
	ld   h, e                                        ; $5b03: $63
	ld   a, c                                        ; $5b04: $79
	dec  c                                           ; $5b05: $0d
	ld   a, b                                        ; $5b06: $78
	ld   [hl], c                                     ; $5b07: $71
	ld   l, l                                        ; $5b08: $6d
	and  c                                           ; $5b09: $a1
	sub  d                                           ; $5b0a: $92
	rst  $38                                         ; $5b0b: $ff
	rst  $38                                         ; $5b0c: $ff
	dec  c                                           ; $5b0d: $0d
	nop                                              ; $5b0e: $00
	ld   a, [bc]                                     ; $5b0f: $0a
	ld   bc, $7889                                   ; $5b10: $01 $89 $78
	sbc  [hl]                                        ; $5b13: $9e
	ld   e, b                                        ; $5b14: $58
	inc  b                                           ; $5b15: $04
	ld   a, e                                        ; $5b16: $7b
	sbc  d                                           ; $5b17: $9a
	ld   h, e                                        ; $5b18: $63
	and  c                                           ; $5b19: $a1
	ld   [hl], l                                     ; $5b1a: $75
	ld   h, l                                        ; $5b1b: $65
	ld   l, l                                        ; $5b1c: $6d
	sbc  a                                           ; $5b1d: $9f
	dec  c                                           ; $5b1e: $0d
	nop                                              ; $5b1f: $00
	ld   a, [bc]                                     ; $5b20: $0a
	dec  c                                           ; $5b21: $0d
	nop                                              ; $5b22: $00
	nop                                              ; $5b23: $00
	rrca                                             ; $5b24: $0f
	nop                                              ; $5b25: $00
	ld   bc, $1e09                                   ; $5b26: $01 $09 $1e
	dec  b                                           ; $5b29: $05
	ld   b, b                                        ; $5b2a: $40
	rst  $38                                         ; $5b2b: $ff
	ld   bc, $0000                                   ; $5b2c: $01 $00 $00
	ld   c, $60                                      ; $5b2f: $0e $60
	ld   bc, $7463                                   ; $5b31: $01 $63 $74
	rst  $38                                         ; $5b34: $ff
	rst  $38                                         ; $5b35: $ff
	ld   [hl], a                                     ; $5b36: $77
	ld   d, h                                        ; $5b37: $54
	ld   h, l                                        ; $5b38: $65
	sub  [hl]                                        ; $5b39: $96
	ld   d, h                                        ; $5b3a: $54
	ld   e, c                                        ; $5b3b: $59
	ld   a, b                                        ; $5b3c: $78
	ld   sp, hl                                      ; $5b3d: $f9
	dec  c                                           ; $5b3e: $0d
	nop                                              ; $5b3f: $00
	ld   a, [bc]                                     ; $5b40: $0a
	ld   b, $41                                      ; $5b41: $06 $41
	jr   nz, jr_066_5b61                             ; $5b43: $20 $1c

	inc  b                                           ; $5b45: $04
	nop                                              ; $5b46: $00
	nop                                              ; $5b47: $00
	ld   bc, $9e50                                   ; $5b48: $01 $50 $9e
	ld   l, a                                        ; $5b4b: $6f
	ld   d, d                                        ; $5b4c: $52
	ld   [bc], a                                     ; $5b4d: $02
	inc  de                                          ; $5b4e: $13
	ld   l, a                                        ; $5b4f: $6f
	sub  c                                           ; $5b50: $91
	and  c                                           ; $5b51: $a1
	ld   a, [$000d]                                  ; $5b52: $fa $0d $00
	ld   a, [bc]                                     ; $5b55: $0a
	inc  e                                           ; $5b56: $1c
	inc  b                                           ; $5b57: $04
	ld   bc, $0101                                   ; $5b58: $01 $01 $01
	ld   a, e                                        ; $5b5b: $7b
	ld   d, [hl]                                     ; $5b5c: $56
	ld   a, e                                        ; $5b5d: $7b
	ld   d, [hl]                                     ; $5b5e: $56
	sbc  [hl]                                        ; $5b5f: $9e
	and  e                                           ; $5b60: $a3

jr_066_5b61:
	and  l                                           ; $5b61: $a5
	db   $ec                                         ; $5b62: $ec
	cp   d                                           ; $5b63: $ba
	ld   a, h                                        ; $5b64: $7c
	ld   e, b                                        ; $5b65: $58
	ld   a, e                                        ; $5b66: $7b
	ld   e, d                                        ; $5b67: $5a
	ld   d, d                                        ; $5b68: $52
	dec  c                                           ; $5b69: $0d
	ld   e, e                                        ; $5b6a: $5b
	ld   d, d                                        ; $5b6b: $52
	ld   [hl], h                                     ; $5b6c: $74
	ld   e, l                                        ; $5b6d: $5d
	sbc  d                                           ; $5b6e: $9a
	sbc  c                                           ; $5b6f: $99
	ld   sp, hl                                      ; $5b70: $f9
	dec  c                                           ; $5b71: $0d
	nop                                              ; $5b72: $00
	ld   a, [bc]                                     ; $5b73: $0a
	add  hl, de                                      ; $5b74: $19
	dec  b                                           ; $5b75: $05
	ld   [bc], a                                     ; $5b76: $02
	ld   e, e                                        ; $5b77: $5b
	ld   d, d                                        ; $5b78: $52
	ld   [hl], h                                     ; $5b79: $74
	ld   d, b                                        ; $5b7a: $50
	ld   h, b                                        ; $5b7b: $60
	sbc  c                                           ; $5b7c: $99
	nop                                              ; $5b7d: $00
	nop                                              ; $5b7e: $00
	ld   e, e                                        ; $5b7f: $5b
	ld   d, d                                        ; $5b80: $52
	ld   [hl], h                                     ; $5b81: $74
	ld   d, b                                        ; $5b82: $50
	ld   h, b                                        ; $5b83: $60
	ld   a, b                                        ; $5b84: $78
	ld   d, d                                        ; $5b85: $52
	nop                                              ; $5b86: $00
	ld   bc, $9a07                                   ; $5b87: $01 $07 $9a
	jr   nz, @+$04                                   ; $5b8a: $20 $02

	inc  bc                                          ; $5b8c: $03
	ld   bc, $2000                                   ; $5b8d: $01 $00 $20
	nop                                              ; $5b90: $00
	rlca                                             ; $5b91: $07
	ld   a, [$0220]                                  ; $5b92: $fa $20 $02
	inc  bc                                          ; $5b95: $03
	ld   bc, $2001                                   ; $5b96: $01 $01 $20
	nop                                              ; $5b99: $00
	ld   b, $47                                      ; $5b9a: $06 $47
	ld   hl, $000f                                   ; $5b9c: $21 $0f $00
	ld   bc, $5001                                   ; $5b9f: $01 $01 $50
	ld   d, b                                        ; $5ba2: $50
	sbc  [hl]                                        ; $5ba3: $9e
	ld   d, d                                        ; $5ba4: $52
	ld   d, d                                        ; $5ba5: $52
	sub  [hl]                                        ; $5ba6: $96
	sbc  a                                           ; $5ba7: $9f
	dec  c                                           ; $5ba8: $0d
	inc  b                                           ; $5ba9: $04
	ld   l, l                                        ; $5baa: $6d
	ld   a, c                                        ; $5bab: $79
	ld   [hl], l                                     ; $5bac: $75
	ld   e, e                                        ; $5bad: $5b
	sbc  c                                           ; $5bae: $99
	ld   h, c                                        ; $5baf: $61
	halt                                             ; $5bb0: $76
	ld   a, b                                        ; $5bb1: $78
	sub  a                                           ; $5bb2: $97
	sbc  a                                           ; $5bb3: $9f
	dec  c                                           ; $5bb4: $0d
	nop                                              ; $5bb5: $00
	ld   a, [bc]                                     ; $5bb6: $0a
	dec  b                                           ; $5bb7: $05
	ld   b, b                                        ; $5bb8: $40
	ld   h, l                                        ; $5bb9: $65
	inc  bc                                          ; $5bba: $03
	ld   h, l                                        ; $5bbb: $65
	ld   bc, $2801                                   ; $5bbc: $01 $01 $28
	nop                                              ; $5bbf: $00
	inc  e                                           ; $5bc0: $1c
	inc  b                                           ; $5bc1: $04
	dec  b                                           ; $5bc2: $05
	dec  b                                           ; $5bc3: $05
	dec  e                                           ; $5bc4: $1d
	ld   b, b                                        ; $5bc5: $40
	inc  d                                           ; $5bc6: $14
	inc  bc                                          ; $5bc7: $03
	inc  d                                           ; $5bc8: $14
	ld   bc, $2803                                   ; $5bc9: $01 $03 $28
	nop                                              ; $5bcc: $00
	ld   bc, $7192                                   ; $5bcd: $01 $92 $71
	ld   l, l                                        ; $5bd0: $6d
	ld   a, [$6f0d]                                  ; $5bd1: $fa $0d $6f
	ld   d, d                                        ; $5bd4: $52
	ld   [bc], a                                     ; $5bd5: $02
	inc  de                                          ; $5bd6: $13
	ld   l, a                                        ; $5bd7: $6f
	sub  c                                           ; $5bd8: $91
	and  c                                           ; $5bd9: $a1
	sbc  [hl]                                        ; $5bda: $9e
	ld   l, [hl]                                     ; $5bdb: $6e
	ld   d, d                                        ; $5bdc: $52
	ld   h, a                                        ; $5bdd: $67
	ld   e, e                                        ; $5bde: $5b
	ld   a, [$000d]                                  ; $5bdf: $fa $0d $00
	ld   a, [bc]                                     ; $5be2: $0a
	ld   bc, $9166                                   ; $5be3: $01 $66 $91
	sbc  [hl]                                        ; $5be6: $9e
	ld   a, b                                        ; $5be7: $78
	ld   e, c                                        ; $5be8: $59
	ld   a, c                                        ; $5be9: $79
	ld   a, l                                        ; $5bea: $7d
	ld   d, d                                        ; $5beb: $52
	ld   [hl], c                                     ; $5bec: $71
	ld   [hl], h                                     ; $5bed: $74
	sbc  a                                           ; $5bee: $9f
	dec  c                                           ; $5bef: $0d
	nop                                              ; $5bf0: $00
	ld   a, [bc]                                     ; $5bf1: $0a
	dec  c                                           ; $5bf2: $0d
	nop                                              ; $5bf3: $00
	nop                                              ; $5bf4: $00
	rrca                                             ; $5bf5: $0f
	nop                                              ; $5bf6: $00
	ld   bc, $020c                                   ; $5bf7: $01 $0c $02
	ld   b, $aa                                      ; $5bfa: $06 $aa
	ld   hl, $000f                                   ; $5bfc: $21 $0f $00
	ld   bc, $b501                                   ; $5bff: $01 $01 $b5
	db   $e3                                         ; $5c02: $e3
	push af                                          ; $5c03: $f5
	rst  $38                                         ; $5c04: $ff
	rst  $38                                         ; $5c05: $ff
	dec  c                                           ; $5c06: $0d
	inc  b                                           ; $5c07: $04
	ld   e, $79                                      ; $5c08: $1e $79
	sub  d                                           ; $5c0a: $92
	sbc  c                                           ; $5c0b: $99
	ld   h, c                                        ; $5c0c: $61
	halt                                             ; $5c0d: $76
	ld   e, d                                        ; $5c0e: $5a
	ld   d, b                                        ; $5c0f: $50
	sbc  c                                           ; $5c10: $99
	and  c                                           ; $5c11: $a1
	ld   l, [hl]                                     ; $5c12: $6e
	rst  $38                                         ; $5c13: $ff
	rst  $38                                         ; $5c14: $ff
	dec  c                                           ; $5c15: $0d
	nop                                              ; $5c16: $00
	ld   a, [bc]                                     ; $5c17: $0a
	inc  e                                           ; $5c18: $1c
	inc  b                                           ; $5c19: $04
	inc  bc                                          ; $5c1a: $03
	inc  bc                                          ; $5c1b: $03
	dec  e                                           ; $5c1c: $1d
	ld   b, b                                        ; $5c1d: $40
	inc  d                                           ; $5c1e: $14
	inc  bc                                          ; $5c1f: $03
	inc  d                                           ; $5c20: $14
	ld   bc, $2901                                   ; $5c21: $01 $01 $29
	nop                                              ; $5c24: $00
	ld   bc, $546b                                   ; $5c25: $01 $6b $54
	ld   a, b                                        ; $5c28: $78
	and  c                                           ; $5c29: $a1
	ld   l, [hl]                                     ; $5c2a: $6e
	rst  $38                                         ; $5c2b: $ff
	rst  $38                                         ; $5c2c: $ff
	dec  c                                           ; $5c2d: $0d
	ld   d, d                                        ; $5c2e: $52
	ld   d, d                                        ; $5c2f: $52
	sub  b                                           ; $5c30: $90
	and  c                                           ; $5c31: $a1
	sbc  [hl]                                        ; $5c32: $9e
	ld   h, e                                        ; $5c33: $63
	ld   e, l                                        ; $5c34: $5d
	sub  a                                           ; $5c35: $97
	ld   a, c                                        ; $5c36: $79
	dec  c                                           ; $5c37: $0d
	ld   l, l                                        ; $5c38: $6d
	ld   a, h                                        ; $5c39: $7c
	adc  [hl]                                        ; $5c3a: $8e
	ld   e, c                                        ; $5c3b: $59
	sub  a                                           ; $5c3c: $97
	sbc  a                                           ; $5c3d: $9f
	dec  c                                           ; $5c3e: $0d
	nop                                              ; $5c3f: $00
	ld   a, [bc]                                     ; $5c40: $0a
	dec  c                                           ; $5c41: $0d
	nop                                              ; $5c42: $00
	nop                                              ; $5c43: $00
	rrca                                             ; $5c44: $0f
	nop                                              ; $5c45: $00
	ld   bc, $9406                                   ; $5c46: $01 $06 $94
	ld   hl, $000f                                   ; $5c49: $21 $0f $00
	ld   bc, $ff01                                   ; $5c4c: $01 $01 $ff
	rst  $38                                         ; $5c4f: $ff
	rst  $38                                         ; $5c50: $ff
	rst  $38                                         ; $5c51: $ff
	dec  c                                           ; $5c52: $0d
	nop                                              ; $5c53: $00
	ld   a, [bc]                                     ; $5c54: $0a
	inc  e                                           ; $5c55: $1c
	inc  b                                           ; $5c56: $04
	ld   [bc], a                                     ; $5c57: $02
	ld   [bc], a                                     ; $5c58: $02
	ld   bc, $526f                                   ; $5c59: $01 $6f $52
	ld   [bc], a                                     ; $5c5c: $02
	inc  de                                          ; $5c5d: $13
	ld   l, a                                        ; $5c5e: $6f
	sub  c                                           ; $5c5f: $91
	and  c                                           ; $5c60: $a1
	sbc  [hl]                                        ; $5c61: $9e
	ld   [hl], a                                     ; $5c62: $77
	ld   d, h                                        ; $5c63: $54
	ld   h, l                                        ; $5c64: $65
	ld   l, l                                        ; $5c65: $6d
	ld   a, h                                        ; $5c66: $7c
	ld   sp, hl                                      ; $5c67: $f9
	dec  c                                           ; $5c68: $0d
	nop                                              ; $5c69: $00
	ld   a, [bc]                                     ; $5c6a: $0a
	inc  e                                           ; $5c6b: $1c
	inc  b                                           ; $5c6c: $04
	rlca                                             ; $5c6d: $07
	rlca                                             ; $5c6e: $07
	dec  e                                           ; $5c6f: $1d
	ld   b, b                                        ; $5c70: $40
	inc  d                                           ; $5c71: $14
	inc  bc                                          ; $5c72: $03
	inc  d                                           ; $5c73: $14
	ld   bc, $2903                                   ; $5c74: $01 $03 $29
	nop                                              ; $5c77: $00
	ld   bc, $5490                                   ; $5c78: $01 $90 $54
	ld   d, d                                        ; $5c7b: $52
	ld   d, d                                        ; $5c7c: $52
	ld   a, [$6f0d]                                  ; $5c7d: $fa $0d $6f
	ld   d, d                                        ; $5c80: $52
	ld   [bc], a                                     ; $5c81: $02
	inc  de                                          ; $5c82: $13
	ld   l, a                                        ; $5c83: $6f
	sub  c                                           ; $5c84: $91
	and  c                                           ; $5c85: $a1
	ld   a, b                                        ; $5c86: $78
	and  c                                           ; $5c87: $a1
	ld   e, c                                        ; $5c88: $59
	ld   h, l                                        ; $5c89: $65
	sub  a                                           ; $5c8a: $97
	ld   a, b                                        ; $5c8b: $78
	ld   d, d                                        ; $5c8c: $52
	ld   a, [$000d]                                  ; $5c8d: $fa $0d $00
	ld   a, [bc]                                     ; $5c90: $0a
	dec  c                                           ; $5c91: $0d
	nop                                              ; $5c92: $00
	nop                                              ; $5c93: $00
	rrca                                             ; $5c94: $0f
	nop                                              ; $5c95: $00
	ld   bc, $000f                                   ; $5c96: $01 $0f $00
	ld   bc, $1201                                   ; $5c99: $01 $01 $12
	ld   [bc], a                                     ; $5c9c: $02
	ld   e, h                                        ; $5c9d: $5c
	add  [hl]                                        ; $5c9e: $86
	ld   [bc], a                                     ; $5c9f: $02
	ld   a, a                                        ; $5ca0: $7f
	ld   [hl], c                                     ; $5ca1: $71
	ld   [hl], h                                     ; $5ca2: $74
	adc  l                                           ; $5ca3: $8d
	sub  [hl]                                        ; $5ca4: $96
	ld   d, h                                        ; $5ca5: $54
	sbc  a                                           ; $5ca6: $9f
	dec  c                                           ; $5ca7: $0d
	nop                                              ; $5ca8: $00
	ld   a, [bc]                                     ; $5ca9: $0a
	ld   b, $00                                      ; $5caa: $06 $00
	ld   h, $0e                                      ; $5cac: $26 $0e
	ld   d, a                                        ; $5cae: $57
	inc  e                                           ; $5caf: $1c
	inc  b                                           ; $5cb0: $04
	ld   bc, $0101                                   ; $5cb1: $01 $01 $01
	ld   a, e                                        ; $5cb4: $7b
	ld   d, [hl]                                     ; $5cb5: $56
	ld   a, e                                        ; $5cb6: $7b
	ld   d, [hl]                                     ; $5cb7: $56
	sbc  [hl]                                        ; $5cb8: $9e
	adc  [hl]                                        ; $5cb9: $8e
	ld   e, c                                        ; $5cba: $59
	ld   h, l                                        ; $5cbb: $65
	ld   a, [hl]                                     ; $5cbc: $7e
	ld   a, b                                        ; $5cbd: $78
	ld   h, l                                        ; $5cbe: $65
	dec  c                                           ; $5cbf: $0d
	ld   e, e                                        ; $5cc0: $5b
	ld   e, c                                        ; $5cc1: $59
	ld   l, c                                        ; $5cc2: $69
	ld   [hl], h                                     ; $5cc3: $74
	sbc  [hl]                                        ; $5cc4: $9e
	ld   d, [hl]                                     ; $5cc5: $56
	rst  $38                                         ; $5cc6: $ff
	rst  $38                                         ; $5cc7: $ff
	halt                                             ; $5cc8: $76
	dec  c                                           ; $5cc9: $0d
	ld   bc, $9007                                   ; $5cca: $01 $07 $90
	sub  b                                           ; $5ccd: $90
	ld   l, l                                        ; $5cce: $6d
	sbc  e                                           ; $5ccf: $9b
	ld   d, h                                        ; $5cd0: $54
	ld   bc, $5a08                                   ; $5cd1: $01 $08 $5a
	ld   d, d                                        ; $5cd4: $52
	ld   d, d                                        ; $5cd5: $52
	ld   a, b                                        ; $5cd6: $78
	sbc  a                                           ; $5cd7: $9f
	dec  c                                           ; $5cd8: $0d
	nop                                              ; $5cd9: $00
	ld   a, [bc]                                     ; $5cda: $0a
	add  hl, de                                      ; $5cdb: $19
	dec  b                                           ; $5cdc: $05
	inc  bc                                          ; $5cdd: $03
	adc  [hl]                                        ; $5cde: $8e
	ld   e, c                                        ; $5cdf: $59
	ld   h, l                                        ; $5ce0: $65
	adc  [hl]                                        ; $5ce1: $8e
	ld   e, c                                        ; $5ce2: $59
	ld   h, l                                        ; $5ce3: $65
	ld   d, b                                        ; $5ce4: $50
	sbc  c                                           ; $5ce5: $99
	halt                                             ; $5ce6: $76
	ld   h, c                                        ; $5ce7: $61
	sbc  e                                           ; $5ce8: $9b
	ld   a, c                                        ; $5ce9: $79
	rst  $38                                         ; $5cea: $ff
	rst  $38                                         ; $5ceb: $ff
	nop                                              ; $5cec: $00
	nop                                              ; $5ced: $00
	ld   [bc], a                                     ; $5cee: $02
	and  l                                           ; $5cef: $a5
	ld   a, l                                        ; $5cf0: $7d
	adc  [hl]                                        ; $5cf1: $8e
	ld   e, c                                        ; $5cf2: $59
	ld   h, l                                        ; $5cf3: $65
	dec  b                                           ; $5cf4: $05
	rst  $30                                         ; $5cf5: $f7
	inc  bc                                          ; $5cf6: $03
	jr   jr_066_5d75                                 ; $5cf7: $18 $7c

	ld   e, b                                        ; $5cf9: $58
	ld   e, e                                        ; $5cfa: $5b
	ld   a, b                                        ; $5cfb: $78
	halt                                             ; $5cfc: $76
	rst  $38                                         ; $5cfd: $ff
	rst  $38                                         ; $5cfe: $ff
	nop                                              ; $5cff: $00
	ld   bc, $a180                                   ; $5d00: $01 $80 $a1
	ld   e, d                                        ; $5d03: $5a
	ld   h, l                                        ; $5d04: $65
	ld   a, h                                        ; $5d05: $7c
	ld   a, h                                        ; $5d06: $7c
	ld   a, c                                        ; $5d07: $79
	ld   e, c                                        ; $5d08: $59
	ld   e, h                                        ; $5d09: $5c
	sbc  e                                           ; $5d0a: $9b
	ld   d, d                                        ; $5d0b: $52
	ld   a, h                                        ; $5d0c: $7c
	rst  $38                                         ; $5d0d: $ff
	rst  $38                                         ; $5d0e: $ff
	nop                                              ; $5d0f: $00
	ld   [bc], a                                     ; $5d10: $02
	rlca                                             ; $5d11: $07
	inc  l                                           ; $5d12: $2c
	ld   [hl+], a                                    ; $5d13: $22
	ld   [bc], a                                     ; $5d14: $02
	inc  bc                                          ; $5d15: $03
	ld   bc, $2000                                   ; $5d16: $01 $00 $20
	nop                                              ; $5d19: $00
	rlca                                             ; $5d1a: $07
	ld   e, e                                        ; $5d1b: $5b
	ld   [hl+], a                                    ; $5d1c: $22
	ld   [bc], a                                     ; $5d1d: $02
	inc  bc                                          ; $5d1e: $03
	ld   bc, $2001                                   ; $5d1f: $01 $01 $20
	nop                                              ; $5d22: $00
	rlca                                             ; $5d23: $07
	ld   a, [hl]                                     ; $5d24: $7e
	ld   [hl+], a                                    ; $5d25: $22
	ld   [bc], a                                     ; $5d26: $02
	inc  bc                                          ; $5d27: $03
	ld   bc, $2002                                   ; $5d28: $01 $02 $20
	nop                                              ; $5d2b: $00
	ld   b, $9d                                      ; $5d2c: $06 $9d
	ld   [hl+], a                                    ; $5d2e: $22
	inc  e                                           ; $5d2f: $1c
	inc  b                                           ; $5d30: $04
	ld   bc, $0101                                   ; $5d31: $01 $01 $01
	ld   d, h                                        ; $5d34: $54
	and  c                                           ; $5d35: $a1
	ld   d, h                                        ; $5d36: $54
	and  c                                           ; $5d37: $a1
	rst  $38                                         ; $5d38: $ff
	rst  $38                                         ; $5d39: $ff
	dec  c                                           ; $5d3a: $0d
	nop                                              ; $5d3b: $00
	ld   a, [bc]                                     ; $5d3c: $0a
	rrca                                             ; $5d3d: $0f
	nop                                              ; $5d3e: $00
	ld   bc, $5801                                   ; $5d3f: $01 $01 $58
	ld   h, [hl]                                     ; $5d42: $66
	ld   d, d                                        ; $5d43: $52
	ld   h, e                                        ; $5d44: $63
	and  c                                           ; $5d45: $a1
	halt                                             ; $5d46: $76
	sbc  [hl]                                        ; $5d47: $9e
	ld   e, b                                        ; $5d48: $58
	ld   a, [hl]                                     ; $5d49: $7e
	ld   d, b                                        ; $5d4a: $50
	ld   h, e                                        ; $5d4b: $63
	and  c                                           ; $5d4c: $a1
	ld   e, d                                        ; $5d4d: $5a
	dec  c                                           ; $5d4e: $0d
	ld   h, a                                        ; $5d4f: $67
	and  c                                           ; $5d50: $a1
	ld   [hl], l                                     ; $5d51: $75
	ld   d, d                                        ; $5d52: $52
	adc  h                                           ; $5d53: $8c
	ld   h, l                                        ; $5d54: $65
	ld   l, l                                        ; $5d55: $6d
	rst  $38                                         ; $5d56: $ff
	rst  $38                                         ; $5d57: $ff
	dec  c                                           ; $5d58: $0d
	nop                                              ; $5d59: $00
	ld   a, [bc]                                     ; $5d5a: $0a
	ld   b, $b1                                      ; $5d5b: $06 $b1
	ld   [hl+], a                                    ; $5d5d: $22
	inc  e                                           ; $5d5e: $1c
	inc  b                                           ; $5d5f: $04
	inc  bc                                          ; $5d60: $03
	inc  bc                                          ; $5d61: $03
	ld   bc, $526f                                   ; $5d62: $01 $6f $52
	ld   [bc], a                                     ; $5d65: $02
	inc  de                                          ; $5d66: $13
	ld   l, a                                        ; $5d67: $6f
	sub  c                                           ; $5d68: $91
	and  c                                           ; $5d69: $a1
	rst  $38                                         ; $5d6a: $ff
	rst  $38                                         ; $5d6b: $ff
	dec  c                                           ; $5d6c: $0d
	ld   l, e                                        ; $5d6d: $6b
	sbc  d                                           ; $5d6e: $9a
	ld   bc, $5907                                   ; $5d6f: $01 $07 $59
	ld   e, [hl]                                     ; $5d72: $5e
	sub  d                                           ; $5d73: $92
	add  b                                           ; $5d74: $80

jr_066_5d75:
	adc  a                                           ; $5d75: $8f
	ld   bc, $6e08                                   ; $5d76: $01 $08 $6e
	sub  [hl]                                        ; $5d79: $96
	sbc  a                                           ; $5d7a: $9f
	dec  c                                           ; $5d7b: $0d
	nop                                              ; $5d7c: $00
	ld   a, [bc]                                     ; $5d7d: $0a
	ld   b, $d8                                      ; $5d7e: $06 $d8
	ld   hl, $041c                                   ; $5d80: $21 $1c $04
	inc  bc                                          ; $5d83: $03
	inc  bc                                          ; $5d84: $03
	ld   bc, $7978                                   ; $5d85: $01 $78 $79
	ld   l, e                                        ; $5d88: $6b
	sbc  d                                           ; $5d89: $9a
	db   $fc                                         ; $5d8a: $fc
	rst  $38                                         ; $5d8b: $ff
	rst  $38                                         ; $5d8c: $ff
	dec  c                                           ; $5d8d: $0d
	and  e                                           ; $5d8e: $a3
	and  l                                           ; $5d8f: $a5
	db   $ec                                         ; $5d90: $ec
	cp   d                                           ; $5d91: $ba
	sbc  [hl]                                        ; $5d92: $9e
	sbc  l                                           ; $5d93: $9d
	ld   e, c                                        ; $5d94: $59
	and  c                                           ; $5d95: $a1
	ld   a, b                                        ; $5d96: $78
	db   $fc                                         ; $5d97: $fc
	ld   d, d                                        ; $5d98: $52
	sbc  a                                           ; $5d99: $9f
	dec  c                                           ; $5d9a: $0d
	nop                                              ; $5d9b: $00
	ld   a, [bc]                                     ; $5d9c: $0a
	ld   b, $d8                                      ; $5d9d: $06 $d8
	ld   hl, $041c                                   ; $5d9f: $21 $1c $04
	inc  bc                                          ; $5da2: $03
	inc  bc                                          ; $5da3: $03
	ld   bc, $927d                                   ; $5da4: $01 $7d $92
	ld   e, l                                        ; $5da7: $5d
	ld   h, l                                        ; $5da8: $65
	ld   [hl], h                                     ; $5da9: $74
	sub  [hl]                                        ; $5daa: $96
	db   $fc                                         ; $5dab: $fc
	rst  $38                                         ; $5dac: $ff
	rst  $38                                         ; $5dad: $ff
	dec  c                                           ; $5dae: $0d
	nop                                              ; $5daf: $00
	ld   a, [bc]                                     ; $5db0: $0a
	ld   b, $d8                                      ; $5db1: $06 $d8
	ld   hl, $000f                                   ; $5db3: $21 $0f $00
	ld   bc, $e401                                   ; $5db6: $01 $01 $e4
	db   $e4                                         ; $5db9: $e4
	ld   e, c                                        ; $5dba: $59
	sub  a                                           ; $5dbb: $97
	inc  bc                                          ; $5dbc: $03
	ld   d, d                                        ; $5dbd: $52
	adc  h                                           ; $5dbe: $8c
	sbc  d                                           ; $5dbf: $9a
	ld   l, l                                        ; $5dc0: $6d
	ld   b, $03                                      ; $5dc1: $06 $03
	inc  b                                           ; $5dc3: $04
	inc  hl                                          ; $5dc4: $23
	dec  b                                           ; $5dc5: $05
	inc  c                                           ; $5dc6: $0c
	ld   a, l                                        ; $5dc7: $7d
	dec  c                                           ; $5dc8: $0d
	ld   h, a                                        ; $5dc9: $67
	ld   e, l                                        ; $5dca: $5d
	ld   h, a                                        ; $5dcb: $67
	ld   e, l                                        ; $5dcc: $5d
	ld   [bc], a                                     ; $5dcd: $02
	ld   e, $6f                                      ; $5dce: $1e $6f
	sbc  [hl]                                        ; $5dd0: $9e
	sub  d                                           ; $5dd1: $92
	ld   e, d                                        ; $5dd2: $5a
	ld   [hl], h                                     ; $5dd3: $74
	dec  c                                           ; $5dd4: $0d
	ld   [bc], a                                     ; $5dd5: $02
	add  a                                           ; $5dd6: $87
	ld   hl, sp+$03                                  ; $5dd7: $f8 $03
	ld   e, d                                        ; $5dd9: $5a
	add  [hl]                                        ; $5dda: $86
	ld   [bc], a                                     ; $5ddb: $02
	add  a                                           ; $5ddc: $87
	inc  b                                           ; $5ddd: $04
	ld   [bc], a                                     ; $5dde: $02
	inc  bc                                          ; $5ddf: $03
	ld   sp, hl                                      ; $5de0: $f9
	ld   a, c                                        ; $5de1: $79
	ld   d, d                                        ; $5de2: $52
	ld   e, e                                        ; $5de3: $5b
	adc  h                                           ; $5de4: $8c
	ld   h, l                                        ; $5de5: $65
	ld   l, l                                        ; $5de6: $6d
	sbc  a                                           ; $5de7: $9f
	dec  c                                           ; $5de8: $0d
	nop                                              ; $5de9: $00
	ld   a, [bc]                                     ; $5dea: $0a
	ld   bc, $8702                                   ; $5deb: $01 $02 $87
	ld   hl, sp+$03                                  ; $5dee: $f8 $03
	ld   e, d                                        ; $5df0: $5a
	ld   a, c                                        ; $5df1: $79
	ld   [bc], a                                     ; $5df2: $02
	ld   a, a                                        ; $5df3: $7f
	ld   e, l                                        ; $5df4: $5d
	inc  b                                           ; $5df5: $04
	ld   d, $04                                      ; $5df6: $16 $04
	dec  bc                                          ; $5df8: $0b
	sbc  [hl]                                        ; $5df9: $9e
	ld   b, $03                                      ; $5dfa: $06 $03
	inc  b                                           ; $5dfc: $04
	inc  hl                                          ; $5dfd: $23
	dec  b                                           ; $5dfe: $05
	inc  c                                           ; $5dff: $0c
	ld   a, l                                        ; $5e00: $7d
	dec  c                                           ; $5e01: $0d
	ld   e, e                                        ; $5e02: $5b
	add  c                                           ; $5e03: $81
	ld   l, [hl]                                     ; $5e04: $6e
	and  c                                           ; $5e05: $a1
	ld   h, d                                        ; $5e06: $62
	ld   [hl], l                                     ; $5e07: $75
	inc  b                                           ; $5e08: $04
	ld   b, c                                        ; $5e09: $41
	ld   [bc], a                                     ; $5e0a: $02
	xor  c                                           ; $5e0b: $a9
	and  b                                           ; $5e0c: $a0
	inc  bc                                          ; $5e0d: $03
	ld   c, c                                        ; $5e0e: $49
	sub  d                                           ; $5e0f: $92
	ld   h, l                                        ; $5e10: $65
	dec  c                                           ; $5e11: $0d
	adc  h                                           ; $5e12: $8c
	ld   h, l                                        ; $5e13: $65
	ld   l, l                                        ; $5e14: $6d
	sbc  a                                           ; $5e15: $9f
	ld   l, e                                        ; $5e16: $6b
	ld   h, l                                        ; $5e17: $65
	ld   [hl], h                                     ; $5e18: $74
	rst  $38                                         ; $5e19: $ff
	dec  c                                           ; $5e1a: $0d
	nop                                              ; $5e1b: $00
	ld   a, [bc]                                     ; $5e1c: $0a
	add  hl, de                                      ; $5e1d: $19
	dec  b                                           ; $5e1e: $05
	inc  bc                                          ; $5e1f: $03
	and  l                                           ; $5e20: $a5
	call $b69e                                       ; $5e21: $cd $9e $b6
	db   $ed                                         ; $5e24: $ed
	sbc  [hl]                                        ; $5e25: $9e
	xor  [hl]                                        ; $5e26: $ae
	cp   c                                           ; $5e27: $b9
	and  b                                           ; $5e28: $a0
	inc  b                                           ; $5e29: $04
	ld   b, c                                        ; $5e2a: $41
	ld   [bc], a                                     ; $5e2b: $02
	xor  c                                           ; $5e2c: $a9
	ld   a, c                                        ; $5e2d: $79
	nop                                              ; $5e2e: $00
	nop                                              ; $5e2f: $00
	cp   a                                           ; $5e30: $bf
	and  a                                           ; $5e31: $a7
	sbc  [hl]                                        ; $5e32: $9e
	xor  h                                           ; $5e33: $ac
	pop  de                                          ; $5e34: $d1
	sbc  [hl]                                        ; $5e35: $9e
	xor  [hl]                                        ; $5e36: $ae
	db   $ec                                         ; $5e37: $ec
	push af                                          ; $5e38: $f5
	and  b                                           ; $5e39: $a0
	inc  b                                           ; $5e3a: $04
	ld   b, c                                        ; $5e3b: $41
	ld   [bc], a                                     ; $5e3c: $02
	xor  c                                           ; $5e3d: $a9
	ld   a, c                                        ; $5e3e: $79
	nop                                              ; $5e3f: $00
	ld   bc, $bbce                                   ; $5e40: $01 $ce $bb
	ldh  [$9e], a                                    ; $5e43: $e0 $9e
	adc  $b4                                         ; $5e45: $ce $b4
	sbc  [hl]                                        ; $5e47: $9e
	ret  nz                                          ; $5e48: $c0

	or   h                                           ; $5e49: $b4
	and  b                                           ; $5e4a: $a0
	inc  b                                           ; $5e4b: $04
	ld   b, c                                        ; $5e4c: $41
	ld   [bc], a                                     ; $5e4d: $02
	xor  c                                           ; $5e4e: $a9
	ld   a, c                                        ; $5e4f: $79
	nop                                              ; $5e50: $00
	ld   [bc], a                                     ; $5e51: $02
	rlca                                             ; $5e52: $07
	add  [hl]                                        ; $5e53: $86
	inc  hl                                          ; $5e54: $23
	ld   [bc], a                                     ; $5e55: $02
	inc  bc                                          ; $5e56: $03
	ld   bc, $2000                                   ; $5e57: $01 $00 $20
	nop                                              ; $5e5a: $00
	rlca                                             ; $5e5b: $07
	ret  c                                           ; $5e5c: $d8

	inc  hl                                          ; $5e5d: $23
	ld   [bc], a                                     ; $5e5e: $02
	inc  bc                                          ; $5e5f: $03
	ld   bc, $2001                                   ; $5e60: $01 $01 $20
	nop                                              ; $5e63: $00
	rlca                                             ; $5e64: $07
	ld   b, c                                        ; $5e65: $41
	inc  h                                           ; $5e66: $24
	ld   [bc], a                                     ; $5e67: $02
	inc  bc                                          ; $5e68: $03
	ld   bc, $2002                                   ; $5e69: $01 $02 $20
	nop                                              ; $5e6c: $00
	ld   b, $6d                                      ; $5e6d: $06 $6d
	inc  hl                                          ; $5e6f: $23
	inc  e                                           ; $5e70: $1c
	inc  b                                           ; $5e71: $04
	inc  bc                                          ; $5e72: $03
	inc  bc                                          ; $5e73: $03
	ld   bc, $927d                                   ; $5e74: $01 $7d $92
	ld   e, l                                        ; $5e77: $5d
	ld   [hl], d                                     ; $5e78: $72
	ld   [hl], e                                     ; $5e79: $73
	ld   e, e                                        ; $5e7a: $5b
	ld   a, l                                        ; $5e7b: $7d
	ld   a, b                                        ; $5e7c: $78
	ld   h, l                                        ; $5e7d: $65
	ld   [hl], h                                     ; $5e7e: $74
	sub  [hl]                                        ; $5e7f: $96
	db   $fc                                         ; $5e80: $fc
	rst  $38                                         ; $5e81: $ff
	rst  $38                                         ; $5e82: $ff
	dec  c                                           ; $5e83: $0d
	nop                                              ; $5e84: $00
	ld   a, [bc]                                     ; $5e85: $0a
	ld   b, $1a                                      ; $5e86: $06 $1a
	inc  hl                                          ; $5e88: $23
	rrca                                             ; $5e89: $0f
	nop                                              ; $5e8a: $00
	ld   bc, $a501                                   ; $5e8b: $01 $01 $a5
	call $b69e                                       ; $5e8e: $cd $9e $b6
	db   $ed                                         ; $5e91: $ed
	sbc  [hl]                                        ; $5e92: $9e
	xor  [hl]                                        ; $5e93: $ae
	cp   c                                           ; $5e94: $b9
	and  b                                           ; $5e95: $a0
	inc  b                                           ; $5e96: $04
	ld   b, c                                        ; $5e97: $41
	ld   [bc], a                                     ; $5e98: $02
	xor  c                                           ; $5e99: $a9
	ld   a, c                                        ; $5e9a: $79
	ld   h, l                                        ; $5e9b: $65
	ld   l, l                                        ; $5e9c: $6d
	dec  c                                           ; $5e9d: $0d
	ld   b, $03                                      ; $5e9e: $06 $03
	inc  b                                           ; $5ea0: $04
	inc  hl                                          ; $5ea1: $23
	dec  b                                           ; $5ea2: $05
	inc  c                                           ; $5ea3: $0c
	ld   a, l                                        ; $5ea4: $7d
	sbc  [hl]                                        ; $5ea5: $9e
	ld   [bc], a                                     ; $5ea6: $02
	add  a                                           ; $5ea7: $87
	ld   hl, sp+$03                                  ; $5ea8: $f8 $03
	ld   e, d                                        ; $5eaa: $5a
	ld   a, c                                        ; $5eab: $79
	ld   [bc], a                                     ; $5eac: $02
	jp   nc, Jump_066_7159                           ; $5ead: $d2 $59 $71

	ld   [hl], h                                     ; $5eb0: $74
	dec  c                                           ; $5eb1: $0d
	ld   [bc], a                                     ; $5eb2: $02
	jr   nz, jr_066_5eb8                             ; $5eb3: $20 $03

	jp   c, Jump_066_4606                            ; $5eb5: $da $06 $46

jr_066_5eb8:
	ld   a, c                                        ; $5eb8: $79
	ld   h, a                                        ; $5eb9: $67
	ld   h, a                                        ; $5eba: $67
	adc  l                                           ; $5ebb: $8d
	adc  h                                           ; $5ebc: $8c
	ld   h, a                                        ; $5ebd: $67
	sbc  a                                           ; $5ebe: $9f
	dec  c                                           ; $5ebf: $0d
	nop                                              ; $5ec0: $00
	ld   a, [bc]                                     ; $5ec1: $0a
	inc  e                                           ; $5ec2: $1c
	inc  b                                           ; $5ec3: $04
	nop                                              ; $5ec4: $00
	nop                                              ; $5ec5: $00
	ld   bc, $a154                                   ; $5ec6: $01 $54 $a1
	ld   d, h                                        ; $5ec9: $54
	and  c                                           ; $5eca: $a1
	sbc  [hl]                                        ; $5ecb: $9e
	ld   l, e                                        ; $5ecc: $6b
	sbc  d                                           ; $5ecd: $9a
	ld   [hl], l                                     ; $5ece: $75
	ld   [hl], a                                     ; $5ecf: $77
	ld   d, h                                        ; $5ed0: $54
	ld   a, b                                        ; $5ed1: $78
	sbc  c                                           ; $5ed2: $99
	ld   a, h                                        ; $5ed3: $7c
	ld   sp, hl                                      ; $5ed4: $f9
	dec  c                                           ; $5ed5: $0d
	nop                                              ; $5ed6: $00
	ld   a, [bc]                                     ; $5ed7: $0a
	ld   b, $af                                      ; $5ed8: $06 $af
	inc  h                                           ; $5eda: $24
	rrca                                             ; $5edb: $0f
	nop                                              ; $5edc: $00
	ld   bc, $bf01                                   ; $5edd: $01 $01 $bf
	and  a                                           ; $5ee0: $a7
	sbc  [hl]                                        ; $5ee1: $9e
	xor  h                                           ; $5ee2: $ac
	pop  de                                          ; $5ee3: $d1
	sbc  [hl]                                        ; $5ee4: $9e
	xor  [hl]                                        ; $5ee5: $ae
	db   $ec                                         ; $5ee6: $ec
	push af                                          ; $5ee7: $f5
	and  b                                           ; $5ee8: $a0
	inc  b                                           ; $5ee9: $04
	ld   b, c                                        ; $5eea: $41
	ld   [bc], a                                     ; $5eeb: $02
	xor  c                                           ; $5eec: $a9
	ld   a, c                                        ; $5eed: $79
	ld   h, l                                        ; $5eee: $65
	dec  c                                           ; $5eef: $0d
	ld   l, l                                        ; $5ef0: $6d
	ld   b, $03                                      ; $5ef1: $06 $03
	inc  b                                           ; $5ef3: $04
	inc  hl                                          ; $5ef4: $23
	dec  b                                           ; $5ef5: $05
	inc  c                                           ; $5ef6: $0c
	ld   a, l                                        ; $5ef7: $7d
	sbc  [hl]                                        ; $5ef8: $9e
	ld   [bc], a                                     ; $5ef9: $02
	add  a                                           ; $5efa: $87
	ld   hl, sp+$03                                  ; $5efb: $f8 $03
	ld   e, d                                        ; $5efd: $5a
	ld   a, c                                        ; $5efe: $79
	ld   [bc], a                                     ; $5eff: $02
	jp   nc, Jump_066_7159                           ; $5f00: $d2 $59 $71

	ld   [hl], h                                     ; $5f03: $74
	dec  c                                           ; $5f04: $0d
	ld   [bc], a                                     ; $5f05: $02
	jr   nz, jr_066_5f0b                             ; $5f06: $20 $03

	jp   c, Jump_066_4606                            ; $5f08: $da $06 $46

jr_066_5f0b:
	ld   a, c                                        ; $5f0b: $79
	ld   h, a                                        ; $5f0c: $67
	ld   h, a                                        ; $5f0d: $67
	adc  l                                           ; $5f0e: $8d
	adc  h                                           ; $5f0f: $8c
	ld   h, a                                        ; $5f10: $67
	sbc  a                                           ; $5f11: $9f
	dec  c                                           ; $5f12: $0d
	nop                                              ; $5f13: $00
	ld   a, [bc]                                     ; $5f14: $0a
	inc  e                                           ; $5f15: $1c
	inc  b                                           ; $5f16: $04
	ld   bc, $1d01                                   ; $5f17: $01 $01 $1d
	ld   b, b                                        ; $5f1a: $40
	inc  d                                           ; $5f1b: $14
	inc  bc                                          ; $5f1c: $03
	inc  d                                           ; $5f1d: $14
	ld   bc, $2802                                   ; $5f1e: $01 $02 $28
	nop                                              ; $5f21: $00
	ld   bc, $9d54                                   ; $5f22: $01 $54 $9d
	db   $fc                                         ; $5f25: $fc
	sbc  [hl]                                        ; $5f26: $9e
	ld   e, b                                        ; $5f27: $58
	ld   e, b                                        ; $5f28: $58
	ld   e, e                                        ; $5f29: $5b
	ld   a, b                                        ; $5f2a: $78
	ld   a, b                                        ; $5f2b: $78
	ld   e, c                                        ; $5f2c: $59
	adc  h                                           ; $5f2d: $8c
	ld   l, l                                        ; $5f2e: $6d
	ld   l, a                                        ; $5f2f: $6f
	dec  c                                           ; $5f30: $0d
	ld   l, [hl]                                     ; $5f31: $6e
	ld   a, e                                        ; $5f32: $7b
	db   $fc                                         ; $5f33: $fc
	sbc  a                                           ; $5f34: $9f
	ld   l, l                                        ; $5f35: $6d
	ld   a, h                                        ; $5f36: $7c
	ld   h, l                                        ; $5f37: $65
	ld   l, e                                        ; $5f38: $6b
	ld   d, h                                        ; $5f39: $54
	ld   l, [hl]                                     ; $5f3a: $6e
	ld   a, b                                        ; $5f3b: $78
	db   $fc                                         ; $5f3c: $fc
	sbc  a                                           ; $5f3d: $9f
	dec  c                                           ; $5f3e: $0d
	nop                                              ; $5f3f: $00
	ld   a, [bc]                                     ; $5f40: $0a
	ld   b, $af                                      ; $5f41: $06 $af
	inc  h                                           ; $5f43: $24
	rrca                                             ; $5f44: $0f
	nop                                              ; $5f45: $00
	ld   bc, $ce01                                   ; $5f46: $01 $01 $ce
	cp   e                                           ; $5f49: $bb
	ldh  [$9e], a                                    ; $5f4a: $e0 $9e
	adc  $b4                                         ; $5f4c: $ce $b4
	sbc  [hl]                                        ; $5f4e: $9e
	ret  nz                                          ; $5f4f: $c0

	or   h                                           ; $5f50: $b4
	and  b                                           ; $5f51: $a0
	inc  b                                           ; $5f52: $04
	ld   b, c                                        ; $5f53: $41
	ld   [bc], a                                     ; $5f54: $02
	xor  c                                           ; $5f55: $a9
	ld   a, c                                        ; $5f56: $79
	ld   h, l                                        ; $5f57: $65
	dec  c                                           ; $5f58: $0d
	ld   l, l                                        ; $5f59: $6d
	ld   b, $03                                      ; $5f5a: $06 $03
	inc  b                                           ; $5f5c: $04
	inc  hl                                          ; $5f5d: $23
	dec  b                                           ; $5f5e: $05
	inc  c                                           ; $5f5f: $0c
	ld   a, l                                        ; $5f60: $7d
	sbc  [hl]                                        ; $5f61: $9e
	ld   [bc], a                                     ; $5f62: $02
	add  a                                           ; $5f63: $87
	ld   hl, sp+$03                                  ; $5f64: $f8 $03
	ld   e, d                                        ; $5f66: $5a
	ld   a, c                                        ; $5f67: $79
	ld   [bc], a                                     ; $5f68: $02
	jp   nc, Jump_066_7159                           ; $5f69: $d2 $59 $71

	ld   [hl], h                                     ; $5f6c: $74
	dec  c                                           ; $5f6d: $0d
	ld   [bc], a                                     ; $5f6e: $02
	jr   nz, jr_066_5f74                             ; $5f6f: $20 $03

	jp   c, Jump_066_4606                            ; $5f71: $da $06 $46

jr_066_5f74:
	ld   a, c                                        ; $5f74: $79
	ld   h, a                                        ; $5f75: $67
	ld   h, a                                        ; $5f76: $67
	adc  l                                           ; $5f77: $8d
	adc  h                                           ; $5f78: $8c
	ld   h, a                                        ; $5f79: $67
	sbc  a                                           ; $5f7a: $9f
	dec  c                                           ; $5f7b: $0d
	nop                                              ; $5f7c: $00
	ld   a, [bc]                                     ; $5f7d: $0a
	inc  e                                           ; $5f7e: $1c
	inc  b                                           ; $5f7f: $04
	ld   bc, $1d01                                   ; $5f80: $01 $01 $1d
	ld   b, b                                        ; $5f83: $40
	inc  d                                           ; $5f84: $14
	inc  bc                                          ; $5f85: $03
	inc  d                                           ; $5f86: $14
	ld   bc, $2901                                   ; $5f87: $01 $01 $29
	nop                                              ; $5f8a: $00
	ld   bc, $9d54                                   ; $5f8b: $01 $54 $9d
	db   $fc                                         ; $5f8e: $fc
	sbc  [hl]                                        ; $5f8f: $9e
	ld   a, b                                        ; $5f90: $78
	and  c                                           ; $5f91: $a1
	ld   e, c                                        ; $5f92: $59
	reti                                             ; $5f93: $d9


	push af                                          ; $5f94: $f5
	ld   a, b                                        ; $5f95: $78
	dec  c                                           ; $5f96: $0d
	ld   a, b                                        ; $5f97: $78
	ld   e, c                                        ; $5f98: $59
	adc  h                                           ; $5f99: $8c
	ld   l, l                                        ; $5f9a: $6d
	ld   l, a                                        ; $5f9b: $6f
	ld   l, [hl]                                     ; $5f9c: $6e
	ld   a, e                                        ; $5f9d: $7b
	db   $fc                                         ; $5f9e: $fc
	sbc  a                                           ; $5f9f: $9f
	dec  c                                           ; $5fa0: $0d
	ld   l, [hl]                                     ; $5fa1: $6e
	ld   d, d                                        ; $5fa2: $52
	ld   h, [hl]                                     ; $5fa3: $66
	sub  l                                           ; $5fa4: $95
	ei                                               ; $5fa5: $fb
	add  h                                           ; $5fa6: $84
	ld   a, b                                        ; $5fa7: $78
	ld   a, h                                        ; $5fa8: $7c
	ld   e, c                                        ; $5fa9: $59
	ld   a, b                                        ; $5faa: $78
	ld   sp, hl                                      ; $5fab: $f9
	dec  c                                           ; $5fac: $0d
	nop                                              ; $5fad: $00
	ld   a, [bc]                                     ; $5fae: $0a
	ld   b, $af                                      ; $5faf: $06 $af
	inc  h                                           ; $5fb1: $24
	rrca                                             ; $5fb2: $0f
	nop                                              ; $5fb3: $00
	ld   bc, $ff01                                   ; $5fb4: $01 $01 $ff
	rst  $38                                         ; $5fb7: $ff
	ld   l, e                                        ; $5fb8: $6b
	ld   h, l                                        ; $5fb9: $65
	ld   [hl], h                                     ; $5fba: $74
	sbc  [hl]                                        ; $5fbb: $9e
	ld   d, d                                        ; $5fbc: $52
	sbc  e                                           ; $5fbd: $9b
	and  c                                           ; $5fbe: $a1
	ld   a, b                                        ; $5fbf: $78
	ld   h, c                                        ; $5fc0: $61
	halt                                             ; $5fc1: $76
	ld   e, d                                        ; $5fc2: $5a
	dec  c                                           ; $5fc3: $0d
	ld   d, b                                        ; $5fc4: $50
	ld   [hl], c                                     ; $5fc5: $71
	ld   [hl], h                                     ; $5fc6: $74
	sbc  [hl]                                        ; $5fc7: $9e
	ld   [hl], d                                     ; $5fc8: $72
	ld   d, d                                        ; $5fc9: $52
	ld   a, c                                        ; $5fca: $79
	ld   b, $03                                      ; $5fcb: $06 $03
	inc  b                                           ; $5fcd: $04
	inc  hl                                          ; $5fce: $23
	dec  b                                           ; $5fcf: $05
	inc  c                                           ; $5fd0: $0c
	ld   a, l                                        ; $5fd1: $7d
	rst  $38                                         ; $5fd2: $ff
	rst  $38                                         ; $5fd3: $ff
	dec  c                                           ; $5fd4: $0d
	nop                                              ; $5fd5: $00
	ld   a, [bc]                                     ; $5fd6: $0a
	add  hl, de                                      ; $5fd7: $19
	dec  b                                           ; $5fd8: $05
	inc  bc                                          ; $5fd9: $03
	ld   [bc], a                                     ; $5fda: $02
	add  a                                           ; $5fdb: $87
	and  b                                           ; $5fdc: $a0
	inc  b                                           ; $5fdd: $04
	ld   [bc], a                                     ; $5fde: $02
	inc  bc                                          ; $5fdf: $03
	ld   sp, hl                                      ; $5fe0: $f9
	ld   h, l                                        ; $5fe1: $65
	adc  h                                           ; $5fe2: $8c
	ld   h, l                                        ; $5fe3: $65
	ld   l, l                                        ; $5fe4: $6d
	halt                                             ; $5fe5: $76
	ld   h, e                                        ; $5fe6: $63
	nop                                              ; $5fe7: $00
	nop                                              ; $5fe8: $00
	ld   [bc], a                                     ; $5fe9: $02
	sbc  e                                           ; $5fea: $9b
	ld   a, c                                        ; $5feb: $79
	ld   e, c                                        ; $5fec: $59
	ld   d, [hl]                                     ; $5fed: $56
	ld   [hl], c                                     ; $5fee: $71
	ld   [hl], h                                     ; $5fef: $74
	ld   h, l                                        ; $5ff0: $65
	adc  h                                           ; $5ff1: $8c
	ld   d, d                                        ; $5ff2: $52
	adc  h                                           ; $5ff3: $8c
	ld   h, l                                        ; $5ff4: $65
	ld   l, l                                        ; $5ff5: $6d
	nop                                              ; $5ff6: $00
	ld   bc, $9963                                   ; $5ff7: $01 $63 $99
	and  b                                           ; $5ffa: $a0
	sub  d                                           ; $5ffb: $92
	ld   [hl], c                                     ; $5ffc: $71
	ld   [hl], d                                     ; $5ffd: $72
	ld   e, a                                        ; $5ffe: $5f
	adc  h                                           ; $5fff: $8c
	ld   h, l                                        ; $6000: $65
	ld   l, l                                        ; $6001: $6d
	nop                                              ; $6002: $00
	ld   [bc], a                                     ; $6003: $02
	rlca                                             ; $6004: $07
	jr   c, jr_066_602c                              ; $6005: $38 $25

	ld   [bc], a                                     ; $6007: $02
	inc  bc                                          ; $6008: $03
	ld   bc, $2000                                   ; $6009: $01 $00 $20
	nop                                              ; $600c: $00
	rlca                                             ; $600d: $07
	add  l                                           ; $600e: $85
	dec  h                                           ; $600f: $25
	ld   [bc], a                                     ; $6010: $02
	inc  bc                                          ; $6011: $03
	ld   bc, $2001                                   ; $6012: $01 $01 $20
	nop                                              ; $6015: $00
	rlca                                             ; $6016: $07
	add  l                                           ; $6017: $85
	dec  h                                           ; $6018: $25
	ld   [bc], a                                     ; $6019: $02
	inc  bc                                          ; $601a: $03
	ld   bc, $2002                                   ; $601b: $01 $02 $20
	nop                                              ; $601e: $00
	ld   b, $1f                                      ; $601f: $06 $1f
	dec  h                                           ; $6021: $25
	inc  e                                           ; $6022: $1c
	inc  b                                           ; $6023: $04
	inc  bc                                          ; $6024: $03
	inc  bc                                          ; $6025: $03
	ld   bc, $927d                                   ; $6026: $01 $7d $92
	ld   e, l                                        ; $6029: $5d
	ld   [hl], d                                     ; $602a: $72
	ld   [hl], e                                     ; $602b: $73

jr_066_602c:
	ld   e, e                                        ; $602c: $5b
	ld   a, l                                        ; $602d: $7d
	ld   a, b                                        ; $602e: $78
	ld   h, l                                        ; $602f: $65
	ld   [hl], h                                     ; $6030: $74
	sub  [hl]                                        ; $6031: $96
	db   $fc                                         ; $6032: $fc
	rst  $38                                         ; $6033: $ff
	rst  $38                                         ; $6034: $ff
	dec  c                                           ; $6035: $0d
	nop                                              ; $6036: $00
	ld   a, [bc]                                     ; $6037: $0a
	ld   b, $d4                                      ; $6038: $06 $d4
	inc  h                                           ; $603a: $24
	inc  e                                           ; $603b: $1c
	inc  b                                           ; $603c: $04
	ld   bc, $1d01                                   ; $603d: $01 $01 $1d
	ld   b, b                                        ; $6040: $40
	inc  d                                           ; $6041: $14
	inc  bc                                          ; $6042: $03
	inc  d                                           ; $6043: $14
	ld   bc, $2802                                   ; $6044: $01 $02 $28
	nop                                              ; $6047: $00
	ld   bc, $9850                                   ; $6048: $01 $50 $98
	ld   e, d                                        ; $604b: $5a
	halt                                             ; $604c: $76
	ld   d, h                                        ; $604d: $54
	sbc  [hl]                                        ; $604e: $9e
	ld   l, a                                        ; $604f: $6f
	ld   d, d                                        ; $6050: $52
	ld   [bc], a                                     ; $6051: $02
	inc  de                                          ; $6052: $13
	ld   l, a                                        ; $6053: $6f
	sub  c                                           ; $6054: $91
	and  c                                           ; $6055: $a1
	sbc  a                                           ; $6056: $9f
	dec  c                                           ; $6057: $0d
	ld   e, b                                        ; $6058: $58
	sub  b                                           ; $6059: $90
	ld   h, l                                        ; $605a: $65
	sbc  e                                           ; $605b: $9b
	ld   e, c                                        ; $605c: $59
	ld   [hl], c                                     ; $605d: $71
	ld   l, l                                        ; $605e: $6d
	sbc  a                                           ; $605f: $9f
	dec  c                                           ; $6060: $0d
	nop                                              ; $6061: $00
	ld   a, [bc]                                     ; $6062: $0a
	ld   bc, $9a6b                                   ; $6063: $01 $6b $9a
	ld   h, [hl]                                     ; $6066: $66
	sub  c                                           ; $6067: $91
	sbc  [hl]                                        ; $6068: $9e
	and  e                                           ; $6069: $a3
	and  l                                           ; $606a: $a5
	db   $ec                                         ; $606b: $ec
	cp   d                                           ; $606c: $ba
	dec  c                                           ; $606d: $0d
	ld   e, b                                        ; $606e: $58
	sub  d                                           ; $606f: $92
	ld   h, a                                        ; $6070: $67
	adc  l                                           ; $6071: $8d
	ld   l, [hl]                                     ; $6072: $6e
	ld   e, c                                        ; $6073: $59
	sub  a                                           ; $6074: $97
	sbc  [hl]                                        ; $6075: $9e
	adc  h                                           ; $6076: $8c
	ld   l, l                                        ; $6077: $6d
	ld   a, e                                        ; $6078: $7b
	sbc  a                                           ; $6079: $9f
	dec  c                                           ; $607a: $0d
	nop                                              ; $607b: $00
	ld   a, [bc]                                     ; $607c: $0a
	dec  c                                           ; $607d: $0d
	nop                                              ; $607e: $00
	nop                                              ; $607f: $00
	rrca                                             ; $6080: $0f
	nop                                              ; $6081: $00
	ld   bc, $020c                                   ; $6082: $01 $0c $02
	ld   b, $e1                                      ; $6085: $06 $e1
	dec  h                                           ; $6087: $25
	inc  e                                           ; $6088: $1c
	inc  b                                           ; $6089: $04
	ld   bc, $1d01                                   ; $608a: $01 $01 $1d
	ld   b, b                                        ; $608d: $40
	inc  d                                           ; $608e: $14
	inc  bc                                          ; $608f: $03
	inc  d                                           ; $6090: $14
	ld   bc, $2803                                   ; $6091: $01 $03 $28
	nop                                              ; $6094: $00
	ld   bc, $d0a3                                   ; $6095: $01 $a3 $d0
	ret  nc                                          ; $6098: $d0

	ret  nc                                          ; $6099: $d0

	sbc  [hl]                                        ; $609a: $9e
	reti                                             ; $609b: $d9


	push af                                          ; $609c: $f5
	ld   a, b                                        ; $609d: $78
	sub  b                                           ; $609e: $90
	sub  b                                           ; $609f: $90
	ld   l, l                                        ; $60a0: $6d
	sbc  e                                           ; $60a1: $9b
	ld   d, h                                        ; $60a2: $54
	ld   [hl], l                                     ; $60a3: $75
	dec  c                                           ; $60a4: $0d
	ld   e, b                                        ; $60a5: $58
	sub  b                                           ; $60a6: $90
	ld   h, l                                        ; $60a7: $65
	sbc  e                                           ; $60a8: $9b
	ld   e, c                                        ; $60a9: $59
	ld   [hl], c                                     ; $60aa: $71
	ld   l, l                                        ; $60ab: $6d
	sbc  a                                           ; $60ac: $9f
	dec  c                                           ; $60ad: $0d
	ld   d, b                                        ; $60ae: $50
	sbc  b                                           ; $60af: $98
	ld   e, d                                        ; $60b0: $5a
	halt                                             ; $60b1: $76
	ld   d, h                                        ; $60b2: $54
	sbc  [hl]                                        ; $60b3: $9e
	ld   l, a                                        ; $60b4: $6f
	ld   d, d                                        ; $60b5: $52
	ld   [bc], a                                     ; $60b6: $02
	inc  de                                          ; $60b7: $13
	ld   l, a                                        ; $60b8: $6f
	sub  c                                           ; $60b9: $91
	and  c                                           ; $60ba: $a1
	sbc  a                                           ; $60bb: $9f
	dec  c                                           ; $60bc: $0d
	nop                                              ; $60bd: $00
	ld   a, [bc]                                     ; $60be: $0a
	ld   bc, $9a6b                                   ; $60bf: $01 $6b $9a
	ld   h, [hl]                                     ; $60c2: $66
	sub  c                                           ; $60c3: $91
	sbc  [hl]                                        ; $60c4: $9e
	and  e                                           ; $60c5: $a3
	and  l                                           ; $60c6: $a5
	db   $ec                                         ; $60c7: $ec
	cp   d                                           ; $60c8: $ba
	dec  c                                           ; $60c9: $0d
	ld   e, b                                        ; $60ca: $58
	sub  d                                           ; $60cb: $92
	ld   h, a                                        ; $60cc: $67
	adc  l                                           ; $60cd: $8d
	ld   l, [hl]                                     ; $60ce: $6e
	ld   e, c                                        ; $60cf: $59
	sub  a                                           ; $60d0: $97
	sbc  [hl]                                        ; $60d1: $9e
	adc  h                                           ; $60d2: $8c
	ld   l, l                                        ; $60d3: $6d
	ld   a, e                                        ; $60d4: $7b
	sbc  a                                           ; $60d5: $9f
	dec  c                                           ; $60d6: $0d
	nop                                              ; $60d7: $00
	ld   a, [bc]                                     ; $60d8: $0a
	dec  c                                           ; $60d9: $0d
	nop                                              ; $60da: $00
	nop                                              ; $60db: $00
	rrca                                             ; $60dc: $0f
	nop                                              ; $60dd: $00
	ld   bc, $020c                                   ; $60de: $01 $0c $02
	ld   b, $e1                                      ; $60e1: $06 $e1
	dec  h                                           ; $60e3: $25
	ld   c, $61                                      ; $60e4: $0e $61
	rrca                                             ; $60e6: $0f
	nop                                              ; $60e7: $00
	ld   bc, $6301                                   ; $60e8: $01 $01 $63
	ld   [hl], h                                     ; $60eb: $74
	sbc  [hl]                                        ; $60ec: $9e
	ld   [de], a                                     ; $60ed: $12
	ld   [bc], a                                     ; $60ee: $02
	ld   e, h                                        ; $60ef: $5c
	ld   a, c                                        ; $60f0: $79
	ld   [hl], l                                     ; $60f1: $75
	sub  b                                           ; $60f2: $90
	ld   [bc], a                                     ; $60f3: $02
	ld   a, a                                        ; $60f4: $7f
	ld   [hl], c                                     ; $60f5: $71
	ld   [hl], h                                     ; $60f6: $74
	dec  c                                           ; $60f7: $0d
	adc  l                                           ; $60f8: $8d
	sbc  c                                           ; $60f9: $99
	ld   e, c                                        ; $60fa: $59
	ld   a, b                                        ; $60fb: $78
	ld   sp, hl                                      ; $60fc: $f9
	dec  c                                           ; $60fd: $0d
	nop                                              ; $60fe: $00
	ld   a, [bc]                                     ; $60ff: $0a
	ld   b, $00                                      ; $6100: $06 $00
	ld   h, $23                                      ; $6102: $26 $23
	ld   e, e                                        ; $6104: $5b
	ld   bc, $6763                                   ; $6105: $01 $63 $67
	ld   e, d                                        ; $6108: $5a
	ld   a, c                                        ; $6109: $79
	inc  b                                           ; $610a: $04
	rst  $28                                         ; $610b: $ef
	ld   a, c                                        ; $610c: $79
	ld   a, b                                        ; $610d: $78
	sbc  c                                           ; $610e: $99
	halt                                             ; $610f: $76
	ld   h, l                                        ; $6110: $65
	ld   l, b                                        ; $6111: $68
	ld   e, c                                        ; $6112: $59
	dec  c                                           ; $6113: $0d
	ld   l, [hl]                                     ; $6114: $6e
	ld   a, b                                        ; $6115: $78
	db   $fc                                         ; $6116: $fc
	sbc  a                                           ; $6117: $9f
	ld   e, c                                        ; $6118: $59
	ld   h, a                                        ; $6119: $67
	adc  l                                           ; $611a: $8d
	ld   h, e                                        ; $611b: $63
	and  c                                           ; $611c: $a1
	ld   l, l                                        ; $611d: $6d
	ld   l, a                                        ; $611e: $6f
	ld   a, l                                        ; $611f: $7d
	dec  c                                           ; $6120: $0d
	sub  b                                           ; $6121: $90
	ld   d, h                                        ; $6122: $54
	sbc  [hl]                                        ; $6123: $9e
	ld   [bc], a                                     ; $6124: $02
	or   l                                           ; $6125: $b5
	ld   [hl], c                                     ; $6126: $71
	ld   l, l                                        ; $6127: $6d
	sub  [hl]                                        ; $6128: $96
	ld   d, h                                        ; $6129: $54
	ld   l, [hl]                                     ; $612a: $6e
	ld   a, b                                        ; $612b: $78
	sbc  a                                           ; $612c: $9f
	dec  c                                           ; $612d: $0d
	nop                                              ; $612e: $00
	ld   a, [bc]                                     ; $612f: $0a
	inc  e                                           ; $6130: $1c
	ld   a, [bc]                                     ; $6131: $0a
	nop                                              ; $6132: $00
	nop                                              ; $6133: $00
	ld   bc, $9e58                                   ; $6134: $01 $58 $9e
	sub  d                                           ; $6137: $92
	ld   [hl], c                                     ; $6138: $71
	halt                                             ; $6139: $76
	ld   [bc], a                                     ; $613a: $02
	sub  l                                           ; $613b: $95
	ld   [hl], d                                     ; $613c: $72
	ld   e, a                                        ; $613d: $5f
	ld   l, l                                        ; $613e: $6d
	ld   l, h                                        ; $613f: $6c
	dec  c                                           ; $6140: $0d
	ld   [$fa00], sp                                 ; $6141: $08 $00 $fa
	dec  c                                           ; $6144: $0d
	nop                                              ; $6145: $00
	ld   a, [bc]                                     ; $6146: $0a
	ld   bc, $8503                                   ; $6147: $01 $03 $85
	inc  b                                           ; $614a: $04
	xor  e                                           ; $614b: $ab
	inc  bc                                          ; $614c: $03
	add  d                                           ; $614d: $82
	ld   b, $25                                      ; $614e: $06 $25
	dec  b                                           ; $6150: $05
	ld   bc, $ff6e                                   ; $6151: $01 $6e $ff
	rst  $38                                         ; $6154: $ff
	dec  c                                           ; $6155: $0d
	xor  e                                           ; $6156: $ab
	xor  $7c                                         ; $6157: $ee $7c
	inc  bc                                          ; $6159: $03
	jr   nz, jr_066_61d5                             ; $615a: $20 $79

	ld   [hl], d                                     ; $615c: $72
	ld   e, e                                        ; $615d: $5b
	ld   d, b                                        ; $615e: $50
	ld   d, [hl]                                     ; $615f: $56
	ld   a, [$000d]                                  ; $6160: $fa $0d $00
	ld   a, [bc]                                     ; $6163: $0a
	add  hl, de                                      ; $6164: $19
	dec  b                                           ; $6165: $05
	ld   [bc], a                                     ; $6166: $02
	ld   e, b                                        ; $6167: $58
	ld   h, c                                        ; $6168: $61
	halt                                             ; $6169: $76
	sbc  l                                           ; $616a: $9d
	sbc  b                                           ; $616b: $98
	ld   h, l                                        ; $616c: $65
	adc  h                                           ; $616d: $8c
	ld   h, a                                        ; $616e: $67
	nop                                              ; $616f: $00
	nop                                              ; $6170: $00
	ld   [bc], a                                     ; $6171: $02
	rlca                                             ; $6172: $07
	adc  l                                           ; $6173: $8d
	adc  h                                           ; $6174: $8c
	ld   h, l                                        ; $6175: $65
	sub  l                                           ; $6176: $95
	ld   d, h                                        ; $6177: $54

Jump_066_6178:
	nop                                              ; $6178: $00
	ld   bc, $8c07                                   ; $6179: $01 $07 $8c
	ld   h, $02                                      ; $617c: $26 $02
	inc  bc                                          ; $617e: $03
	ld   bc, $2000                                   ; $617f: $01 $00 $20
	nop                                              ; $6182: $00
	rlca                                             ; $6183: $07
	add  a                                           ; $6184: $87
	daa                                              ; $6185: $27
	ld   [bc], a                                     ; $6186: $02
	inc  bc                                          ; $6187: $03
	ld   bc, $2001                                   ; $6188: $01 $01 $20
	nop                                              ; $618b: $00
	ld   b, $58                                      ; $618c: $06 $58
	jr   z, jr_066_619f                              ; $618e: $28 $0f

	nop                                              ; $6190: $00
	ld   bc, $5801                                   ; $6191: $01 $01 $58
	ld   h, c                                        ; $6194: $61
	halt                                             ; $6195: $76
	sbc  l                                           ; $6196: $9d
	sbc  b                                           ; $6197: $98
	ld   h, l                                        ; $6198: $65
	adc  h                                           ; $6199: $8c
	ld   h, a                                        ; $619a: $67
	sbc  a                                           ; $619b: $9f
	dec  c                                           ; $619c: $0d
	inc  bc                                          ; $619d: $03
	sub  h                                           ; $619e: $94

jr_066_619f:
	inc  b                                           ; $619f: $04
	sbc  [hl]                                        ; $61a0: $9e
	ld   a, l                                        ; $61a1: $7d
	adc  h                                           ; $61a2: $8c
	ld   l, [hl]                                     ; $61a3: $6e
	ld   b, $24                                      ; $61a4: $06 $24
	inc  bc                                          ; $61a6: $03
	ld   [de], a                                     ; $61a7: $12
	inc  b                                           ; $61a8: $04
	ld   d, b                                        ; $61a9: $50
	ld   [hl], l                                     ; $61aa: $75
	ld   h, a                                        ; $61ab: $67
	ld   e, c                                        ; $61ac: $59
	sub  a                                           ; $61ad: $97
	rst  $38                                         ; $61ae: $ff
	rst  $38                                         ; $61af: $ff
	dec  c                                           ; $61b0: $0d
	nop                                              ; $61b1: $00
	ld   a, [bc]                                     ; $61b2: $0a
	dec  b                                           ; $61b3: $05
	ld   b, b                                        ; $61b4: $40
	ld   h, l                                        ; $61b5: $65
	inc  bc                                          ; $61b6: $03
	ld   h, l                                        ; $61b7: $65
	ld   bc, $2801                                   ; $61b8: $01 $01 $28
	nop                                              ; $61bb: $00
	inc  e                                           ; $61bc: $1c
	ld   a, [bc]                                     ; $61bd: $0a
	ld   [bc], a                                     ; $61be: $02
	ld   [bc], a                                     ; $61bf: $02
	ld   bc, $a178                                   ; $61c0: $01 $78 $a1
	ld   l, [hl]                                     ; $61c3: $6e
	halt                                             ; $61c4: $76
	ld   d, a                                        ; $61c5: $57
	ld   sp, hl                                      ; $61c6: $f9
	dec  c                                           ; $61c7: $0d
	xor  e                                           ; $61c8: $ab
	xor  $7c                                         ; $61c9: $ee $7c
	inc  bc                                          ; $61cb: $03
	jr   nz, jr_066_6228                             ; $61cc: $20 $5a

	ld   [bc], a                                     ; $61ce: $02
	rlca                                             ; $61cf: $07
	adc  a                                           ; $61d0: $8f
	ld   a, b                                        ; $61d1: $78
	ld   d, d                                        ; $61d2: $52
	ld   [hl], c                                     ; $61d3: $71
	ld   [hl], h                                     ; $61d4: $74

jr_066_61d5:
	ld   a, h                                        ; $61d5: $7c
	ld   e, c                                        ; $61d6: $59
	ld   sp, hl                                      ; $61d7: $f9
	dec  c                                           ; $61d8: $0d
	nop                                              ; $61d9: $00
	ld   a, [bc]                                     ; $61da: $0a
	rrca                                             ; $61db: $0f
	nop                                              ; $61dc: $00
	ld   bc, $6501                                   ; $61dd: $01 $01 $65
	sbc  [hl]                                        ; $61e0: $9e
	ld   h, l                                        ; $61e1: $65
	ld   e, c                                        ; $61e2: $59
	ld   h, l                                        ; $61e3: $65
	rst  $38                                         ; $61e4: $ff
	rst  $38                                         ; $61e5: $ff
	dec  c                                           ; $61e6: $0d
	nop                                              ; $61e7: $00
	ld   a, [bc]                                     ; $61e8: $0a
	inc  e                                           ; $61e9: $1c
	ld   a, [bc]                                     ; $61ea: $0a
	ld   bc, $0101                                   ; $61eb: $01 $01 $01
	ld   a, b                                        ; $61ee: $78
	and  c                                           ; $61ef: $a1
	ld   [hl], h                                     ; $61f0: $74
	ld   a, b                                        ; $61f1: $78
	rst  $38                                         ; $61f2: $ff
	rst  $38                                         ; $61f3: $ff
	dec  c                                           ; $61f4: $0d
	ld   h, [hl]                                     ; $61f5: $66
	sub  l                                           ; $61f6: $95
	ld   d, h                                        ; $61f7: $54
	ld   l, [hl]                                     ; $61f8: $6e
	and  c                                           ; $61f9: $a1
	ld   l, [hl]                                     ; $61fa: $6e
	sub  [hl]                                        ; $61fb: $96
	sbc  [hl]                                        ; $61fc: $9e
	ld   h, [hl]                                     ; $61fd: $66
	sub  l                                           ; $61fe: $95
	ld   d, h                                        ; $61ff: $54
	ld   l, [hl]                                     ; $6200: $6e
	and  c                                           ; $6201: $a1
	sbc  a                                           ; $6202: $9f
	dec  c                                           ; $6203: $0d
	nop                                              ; $6204: $00
	ld   a, [bc]                                     ; $6205: $0a
	ld   bc, $a177                                   ; $6206: $01 $77 $a1
	ld   a, b                                        ; $6209: $78
	inc  b                                           ; $620a: $04
	ld   a, d                                        ; $620b: $7a
	ld   [bc], a                                     ; $620c: $02
	ld   a, e                                        ; $620d: $7b
	ld   a, c                                        ; $620e: $79
	ld   e, b                                        ; $620f: $58
	ld   d, d                                        ; $6210: $52
	ld   [hl], h                                     ; $6211: $74
	sub  b                                           ; $6212: $90
	dec  b                                           ; $6213: $05
	and  d                                           ; $6214: $a2
	dec  b                                           ; $6215: $05
	ld   b, b                                        ; $6216: $40
	and  b                                           ; $6217: $a0
	dec  c                                           ; $6218: $0d
	inc  bc                                          ; $6219: $03
	sub  e                                           ; $621a: $93
	sbc  c                                           ; $621b: $99
	ld   h, c                                        ; $621c: $61
	halt                                             ; $621d: $76
	ld   a, l                                        ; $621e: $7d
	inc  b                                           ; $621f: $04
	ld   c, $03                                      ; $6220: $0e $03
	dec  de                                          ; $6222: $1b
	ld   l, [hl]                                     ; $6223: $6e
	rst  $38                                         ; $6224: $ff
	rst  $38                                         ; $6225: $ff
	ld   e, b                                        ; $6226: $58
	inc  bc                                          ; $6227: $03

jr_066_6228:
	ld   c, a                                        ; $6228: $4f
	ld   a, l                                        ; $6229: $7d
	dec  c                                           ; $622a: $0d
	ld   h, l                                        ; $622b: $65
	ld   [hl], c                                     ; $622c: $71
	ld   e, c                                        ; $622d: $59
	sbc  b                                           ; $622e: $98
	ld   h, l                                        ; $622f: $65
	ld   [hl], h                                     ; $6230: $74
	ld   [hl], h                                     ; $6231: $74
	ld   [bc], a                                     ; $6232: $02
	ld   h, $03                                      ; $6233: $26 $03
	ld   [hl], l                                     ; $6235: $75
	ld   h, l                                        ; $6236: $65
	ld   l, l                                        ; $6237: $6d
	ld   l, d                                        ; $6238: $6a
	sbc  a                                           ; $6239: $9f
	dec  c                                           ; $623a: $0d
	nop                                              ; $623b: $00
	ld   a, [bc]                                     ; $623c: $0a
	ld   bc, $9166                                   ; $623d: $01 $66 $91
	ld   d, b                                        ; $6240: $50
	ld   a, b                                        ; $6241: $78
	sbc  a                                           ; $6242: $9f
	dec  c                                           ; $6243: $0d
	inc  bc                                          ; $6244: $03
	ld   [de], a                                     ; $6245: $12
	inc  bc                                          ; $6246: $03
	add  d                                           ; $6247: $82
	ld   h, l                                        ; $6248: $65
	ld   l, l                                        ; $6249: $6d
	sub  a                                           ; $624a: $97
	sbc  [hl]                                        ; $624b: $9e
	ld   h, c                                        ; $624c: $61
	and  c                                           ; $624d: $a1
	ld   [hl], a                                     ; $624e: $77
	ld   a, l                                        ; $624f: $7d
	ld   l, a                                        ; $6250: $6f
	sub  c                                           ; $6251: $91
	and  c                                           ; $6252: $a1
	halt                                             ; $6253: $76
	dec  c                                           ; $6254: $0d
	ld   [hl], d                                     ; $6255: $72
	ld   e, e                                        ; $6256: $5b
	ld   d, b                                        ; $6257: $50
	ld   d, [hl]                                     ; $6258: $56
	sub  [hl]                                        ; $6259: $96
	sbc  a                                           ; $625a: $9f
	dec  c                                           ; $625b: $0d
	nop                                              ; $625c: $00
	ld   a, [bc]                                     ; $625d: $0a
	ld   bc, $9166                                   ; $625e: $01 $66 $91
	sbc  [hl]                                        ; $6261: $9e
	sub  b                                           ; $6262: $90
	ld   d, h                                        ; $6263: $54
	ld   [bc], a                                     ; $6264: $02
	and  l                                           ; $6265: $a5
	inc  b                                           ; $6266: $04
	xor  d                                           ; $6267: $aa
	ld   a, l                                        ; $6268: $7d
	ld   e, b                                        ; $6269: $58
	ld   l, e                                        ; $626a: $6b
	ld   d, d                                        ; $626b: $52
	ld   e, c                                        ; $626c: $59
	sub  a                                           ; $626d: $97
	dec  c                                           ; $626e: $0d
	inc  b                                           ; $626f: $04
	sub  l                                           ; $6270: $95
	ld   [bc], a                                     ; $6271: $02
	ld   hl, $0486                                   ; $6272: $21 $86 $04
	jp   Jump_066_7471                               ; $6275: $c3 $71 $74


	inc  b                                           ; $6278: $04
	ld   b, d                                        ; $6279: $42
	ld   a, b                                        ; $627a: $78
	sbc  a                                           ; $627b: $9f
	dec  c                                           ; $627c: $0d
	nop                                              ; $627d: $00
	ld   a, [bc]                                     ; $627e: $0a
	dec  c                                           ; $627f: $0d
	nop                                              ; $6280: $00
	nop                                              ; $6281: $00
	rrca                                             ; $6282: $0f
	nop                                              ; $6283: $00
	ld   bc, $020c                                   ; $6284: $01 $0c $02
	ld   b, $f4                                      ; $6287: $06 $f4
	jr   z, jr_066_629a                              ; $6289: $28 $0f

	nop                                              ; $628b: $00
	ld   bc, $0201                                   ; $628c: $01 $01 $02
	rlca                                             ; $628f: $07
	adc  l                                           ; $6290: $8d
	adc  h                                           ; $6291: $8c
	ld   h, l                                        ; $6292: $65
	sub  l                                           ; $6293: $95
	ld   d, h                                        ; $6294: $54
	sbc  a                                           ; $6295: $9f
	dec  c                                           ; $6296: $0d
	inc  bc                                          ; $6297: $03
	add  l                                           ; $6298: $85
	inc  b                                           ; $6299: $04

jr_066_629a:
	xor  e                                           ; $629a: $ab
	inc  bc                                          ; $629b: $03
	add  d                                           ; $629c: $82
	ld   a, h                                        ; $629d: $7c
	inc  bc                                          ; $629e: $03
	jr   nz, jr_066_6319                             ; $629f: $20 $78

	sub  a                                           ; $62a1: $97
	ld   d, d                                        ; $62a2: $52
	ld   e, l                                        ; $62a3: $5d
	sub  a                                           ; $62a4: $97
	ld   [hl], l                                     ; $62a5: $75
	sub  b                                           ; $62a6: $90
	rst  $38                                         ; $62a7: $ff
	rst  $38                                         ; $62a8: $ff
	dec  c                                           ; $62a9: $0d
	nop                                              ; $62aa: $00
	ld   a, [bc]                                     ; $62ab: $0a
	inc  e                                           ; $62ac: $1c
	ld   a, [bc]                                     ; $62ad: $0a
	ld   [bc], a                                     ; $62ae: $02
	ld   [bc], a                                     ; $62af: $02
	ld   bc, $acd1                                   ; $62b0: $01 $d1 $ac
	and  $ef                                         ; $62b3: $e6 $ef
	and  a                                           ; $62b5: $a7
	ld   a, [$580d]                                  ; $62b6: $fa $0d $58
	inc  bc                                          ; $62b9: $03
	ld   c, a                                        ; $62ba: $4f
	ld   a, l                                        ; $62bb: $7d
	adc  h                                           ; $62bc: $8c
	ld   l, [hl]                                     ; $62bd: $6e
	ld   b, $24                                      ; $62be: $06 $24
	inc  bc                                          ; $62c0: $03
	ld   [de], a                                     ; $62c1: $12
	inc  b                                           ; $62c2: $04
	ld   d, b                                        ; $62c3: $50
	ld   l, [hl]                                     ; $62c4: $6e
	sbc  e                                           ; $62c5: $9b
	ld   d, h                                        ; $62c6: $54
	ld   a, [$000d]                                  ; $62c7: $fa $0d $00
	ld   a, [bc]                                     ; $62ca: $0a
	ld   bc, $6d71                                   ; $62cb: $01 $71 $6d
	ld   e, l                                        ; $62ce: $5d
	rst  $38                                         ; $62cf: $ff
	rst  $38                                         ; $62d0: $ff
	ld   l, a                                        ; $62d1: $6f
	sub  l                                           ; $62d2: $95
	ld   [hl], c                                     ; $62d3: $71
	halt                                             ; $62d4: $76
	dec  c                                           ; $62d5: $0d
	ld   h, [hl]                                     ; $62d6: $66
	sub  l                                           ; $62d7: $95
	ld   d, h                                        ; $62d8: $54
	ld   l, [hl]                                     ; $62d9: $6e
	and  c                                           ; $62da: $a1
	ld   d, d                                        ; $62db: $52
	ld   [hl], c                                     ; $62dc: $71
	ld   [hl], h                                     ; $62dd: $74
	adc  l                                           ; $62de: $8d
	sbc  b                                           ; $62df: $98
	sub  c                                           ; $62e0: $91
	dec  c                                           ; $62e1: $0d
	ld   h, a                                        ; $62e2: $67
	ld   e, [hl]                                     ; $62e3: $5e
	inc  bc                                          ; $62e4: $03
	cp   $03                                         ; $62e5: $fe $03
	add  [hl]                                        ; $62e7: $86
	ld   a, c                                        ; $62e8: $79
	ld   a, h                                        ; $62e9: $7c
	sbc  b                                           ; $62ea: $98
	sub  d                                           ; $62eb: $92
	ld   e, d                                        ; $62ec: $5a
	ld   [hl], c                                     ; $62ed: $71
	ld   [hl], h                                     ; $62ee: $74
	rst  $38                                         ; $62ef: $ff
	rst  $38                                         ; $62f0: $ff
	dec  c                                           ; $62f1: $0d
	nop                                              ; $62f2: $00
	ld   a, [bc]                                     ; $62f3: $0a
	inc  e                                           ; $62f4: $1c
	ld   a, [bc]                                     ; $62f5: $0a
	nop                                              ; $62f6: $00
	nop                                              ; $62f7: $00
	ld   bc, $0008                                   ; $62f8: $01 $08 $00
	rst  $38                                         ; $62fb: $ff
	rst  $38                                         ; $62fc: $ff
	dec  c                                           ; $62fd: $0d
	ld   [hl], a                                     ; $62fe: $77
	and  c                                           ; $62ff: $a1
	ld   a, b                                        ; $6300: $78
	inc  b                                           ; $6301: $04
	ld   a, d                                        ; $6302: $7a
	ld   [bc], a                                     ; $6303: $02
	ld   a, e                                        ; $6304: $7b
	ld   a, c                                        ; $6305: $79
	ld   e, b                                        ; $6306: $58
	ld   d, d                                        ; $6307: $52
	ld   [hl], h                                     ; $6308: $74
	sub  b                                           ; $6309: $90
	dec  b                                           ; $630a: $05
	and  d                                           ; $630b: $a2
	dec  b                                           ; $630c: $05
	ld   b, b                                        ; $630d: $40
	and  b                                           ; $630e: $a0
	dec  c                                           ; $630f: $0d
	inc  bc                                          ; $6310: $03
	sub  e                                           ; $6311: $93
	sbc  c                                           ; $6312: $99
	ld   h, c                                        ; $6313: $61
	halt                                             ; $6314: $76
	ld   a, l                                        ; $6315: $7d
	inc  b                                           ; $6316: $04
	ld   c, $03                                      ; $6317: $0e $03

jr_066_6319:
	dec  de                                          ; $6319: $1b
	ld   a, b                                        ; $631a: $78
	ld   h, c                                        ; $631b: $61
	halt                                             ; $631c: $76
	ld   l, [hl]                                     ; $631d: $6e
	rst  $38                                         ; $631e: $ff
	rst  $38                                         ; $631f: $ff
	dec  c                                           ; $6320: $0d
	nop                                              ; $6321: $00
	ld   a, [bc]                                     ; $6322: $0a
	ld   bc, $9a6b                                   ; $6323: $01 $6b $9a
	and  b                                           ; $6326: $a0
	inc  b                                           ; $6327: $04
	and  e                                           ; $6328: $a3
	sbc  d                                           ; $6329: $9a
	sbc  c                                           ; $632a: $99
	ld   a, b                                        ; $632b: $78
	sub  [hl]                                        ; $632c: $96
	rst  $38                                         ; $632d: $ff
	rst  $38                                         ; $632e: $ff
	dec  c                                           ; $632f: $0d
	ld   h, [hl]                                     ; $6330: $66
	sub  c                                           ; $6331: $91
	sbc  [hl]                                        ; $6332: $9e
	sub  b                                           ; $6333: $90
	ld   d, h                                        ; $6334: $54
	ld   [bc], a                                     ; $6335: $02
	and  l                                           ; $6336: $a5

jr_066_6337:
	inc  b                                           ; $6337: $04
	xor  d                                           ; $6338: $aa
	ld   a, l                                        ; $6339: $7d
	ld   e, b                                        ; $633a: $58
	ld   l, e                                        ; $633b: $6b
	ld   d, d                                        ; $633c: $52
	ld   e, c                                        ; $633d: $59
	sub  a                                           ; $633e: $97
	dec  c                                           ; $633f: $0d
	inc  b                                           ; $6340: $04
	sub  l                                           ; $6341: $95
	ld   [bc], a                                     ; $6342: $02
	ld   hl, $0486                                   ; $6343: $21 $86 $04
	jp   Jump_066_7471                               ; $6346: $c3 $71 $74


	inc  b                                           ; $6349: $04
	ld   b, d                                        ; $634a: $42
	ld   a, b                                        ; $634b: $78
	sbc  a                                           ; $634c: $9f
	dec  c                                           ; $634d: $0d
	nop                                              ; $634e: $00
	ld   a, [bc]                                     ; $634f: $0a
	dec  c                                           ; $6350: $0d
	nop                                              ; $6351: $00
	nop                                              ; $6352: $00
	rrca                                             ; $6353: $0f
	nop                                              ; $6354: $00
	ld   bc, $020c                                   ; $6355: $01 $0c $02
	ld   b, $f4                                      ; $6358: $06 $f4
	jr   z, jr_066_636b                              ; $635a: $28 $0f

	nop                                              ; $635c: $00
	ld   bc, $ff01                                   ; $635d: $01 $01 $ff
	rst  $38                                         ; $6360: $ff
	rst  $38                                         ; $6361: $ff
	rst  $38                                         ; $6362: $ff
	dec  c                                           ; $6363: $0d
	nop                                              ; $6364: $00
	ld   a, [bc]                                     ; $6365: $0a
	inc  e                                           ; $6366: $1c
	ld   a, [bc]                                     ; $6367: $0a
	ld   bc, $0101                                   ; $6368: $01 $01 $01

jr_066_636b:
	ret  nc                                          ; $636b: $d0

	ret  nc                                          ; $636c: $d0

	ret  nc                                          ; $636d: $d0

	ret  nc                                          ; $636e: $d0

	ret  nc                                          ; $636f: $d0

	rst  $38                                         ; $6370: $ff
	rst  $38                                         ; $6371: $ff
	dec  c                                           ; $6372: $0d
	ld   h, [hl]                                     ; $6373: $66
	sub  l                                           ; $6374: $95
	ld   d, h                                        ; $6375: $54
	ld   l, [hl]                                     ; $6376: $6e
	and  c                                           ; $6377: $a1
	ld   l, [hl]                                     ; $6378: $6e
	sub  [hl]                                        ; $6379: $96
	sbc  [hl]                                        ; $637a: $9e
	ld   h, [hl]                                     ; $637b: $66
	sub  l                                           ; $637c: $95
	ld   d, h                                        ; $637d: $54
	ld   l, [hl]                                     ; $637e: $6e
	and  c                                           ; $637f: $a1
	sbc  a                                           ; $6380: $9f
	dec  c                                           ; $6381: $0d
	nop                                              ; $6382: $00
	ld   a, [bc]                                     ; $6383: $0a
	ld   bc, $5d52                                   ; $6384: $01 $52 $5d
	sub  a                                           ; $6387: $97
	xor  e                                           ; $6388: $ab
	xor  $75                                         ; $6389: $ee $75
	sub  b                                           ; $638b: $90
	ld   b, $24                                      ; $638c: $06 $24
	inc  bc                                          ; $638e: $03
	ld   [de], a                                     ; $638f: $12
	inc  b                                           ; $6390: $04
	ld   d, b                                        ; $6391: $50
	ld   a, c                                        ; $6392: $79
	dec  c                                           ; $6393: $0d
	inc  bc                                          ; $6394: $03
	jr   nz, jr_066_6337                             ; $6395: $20 $a0

	ld   h, a                                        ; $6397: $67
	ld   h, a                                        ; $6398: $67
	adc  a                                           ; $6399: $8f
	ld   l, l                                        ; $639a: $6d
	sbc  b                                           ; $639b: $98
	ld   h, l                                        ; $639c: $65
	ld   a, b                                        ; $639d: $78
	ld   d, d                                        ; $639e: $52
	ld   h, e                                        ; $639f: $63
	sbc  a                                           ; $63a0: $9f
	dec  c                                           ; $63a1: $0d
	nop                                              ; $63a2: $00
	ld   a, [bc]                                     ; $63a3: $0a
	ld   bc, $9e8c                                   ; $63a4: $01 $8c $9e
	inc  bc                                          ; $63a7: $03
	ld   [de], a                                     ; $63a8: $12
	inc  bc                                          ; $63a9: $03
	add  d                                           ; $63aa: $82
	ld   h, l                                        ; $63ab: $65
	ld   l, l                                        ; $63ac: $6d
	sub  a                                           ; $63ad: $97
	dec  c                                           ; $63ae: $0d
	inc  bc                                          ; $63af: $03
	ld   a, $a1                                      ; $63b0: $3e $a1
	ld   [hl], l                                     ; $63b2: $75
	sub  b                                           ; $63b3: $90
	ld   [hl], d                                     ; $63b4: $72
	ld   e, e                                        ; $63b5: $5b
	ld   d, b                                        ; $63b6: $50
	ld   [hl], c                                     ; $63b7: $71
	ld   [hl], h                                     ; $63b8: $74
	sub  b                                           ; $63b9: $90
	sub  a                                           ; $63ba: $97
	ld   d, h                                        ; $63bb: $54
	dec  c                                           ; $63bc: $0d
	ld   e, c                                        ; $63bd: $59
	sub  a                                           ; $63be: $97
	ld   a, b                                        ; $63bf: $78
	rst  $38                                         ; $63c0: $ff
	rst  $38                                         ; $63c1: $ff
	ret  nc                                          ; $63c2: $d0

	ret  nc                                          ; $63c3: $d0

	ret  nc                                          ; $63c4: $d0

	ret  nc                                          ; $63c5: $d0

	ret  nc                                          ; $63c6: $d0

	sbc  a                                           ; $63c7: $9f
	dec  c                                           ; $63c8: $0d
	nop                                              ; $63c9: $00
	ld   a, [bc]                                     ; $63ca: $0a
	ld   bc, $9166                                   ; $63cb: $01 $66 $91
	sbc  [hl]                                        ; $63ce: $9e
	sub  b                                           ; $63cf: $90
	ld   d, h                                        ; $63d0: $54
	ld   [bc], a                                     ; $63d1: $02
	and  l                                           ; $63d2: $a5
	inc  b                                           ; $63d3: $04
	xor  d                                           ; $63d4: $aa
	ld   a, l                                        ; $63d5: $7d
	ld   e, b                                        ; $63d6: $58
	ld   l, e                                        ; $63d7: $6b
	ld   d, d                                        ; $63d8: $52
	ld   e, c                                        ; $63d9: $59
	sub  a                                           ; $63da: $97
	dec  c                                           ; $63db: $0d
	inc  b                                           ; $63dc: $04
	sub  l                                           ; $63dd: $95
	ld   [bc], a                                     ; $63de: $02
	ld   hl, $0486                                   ; $63df: $21 $86 $04
	jp   Jump_066_7471                               ; $63e2: $c3 $71 $74


	inc  b                                           ; $63e5: $04
	ld   b, d                                        ; $63e6: $42
	ld   a, b                                        ; $63e7: $78
	sbc  a                                           ; $63e8: $9f
	dec  c                                           ; $63e9: $0d
	nop                                              ; $63ea: $00
	ld   a, [bc]                                     ; $63eb: $0a
	dec  c                                           ; $63ec: $0d
	nop                                              ; $63ed: $00
	nop                                              ; $63ee: $00
	rrca                                             ; $63ef: $0f
	nop                                              ; $63f0: $00
	ld   bc, $020c                                   ; $63f1: $01 $0c $02
	ld   b, $f4                                      ; $63f4: $06 $f4
	jr   z, @+$10                                    ; $63f6: $28 $0e

	ld   [bc], a                                     ; $63f8: $02
	rrca                                             ; $63f9: $0f
	nop                                              ; $63fa: $00
	ld   bc, $8301                                   ; $63fb: $01 $01 $83
	ld   d, h                                        ; $63fe: $54
	rst  $38                                         ; $63ff: $ff
	rst  $38                                         ; $6400: $ff
	dec  c                                           ; $6401: $0d
	nop                                              ; $6402: $00
	ld   a, [bc]                                     ; $6403: $0a
	inc  d                                           ; $6404: $14
	ld   b, $01                                      ; $6405: $06 $01
	rrca                                             ; $6407: $0f
	add  hl, bc                                      ; $6408: $09
	ld   bc, $0801                                   ; $6409: $01 $01 $08
	nop                                              ; $640c: $00
	ld   e, l                                        ; $640d: $5d
	and  c                                           ; $640e: $a1
	sbc  a                                           ; $640f: $9f
	dec  c                                           ; $6410: $0d
	ld   d, d                                        ; $6411: $52
	ld   d, d                                        ; $6412: $52
	ld   e, c                                        ; $6413: $59
	ld   a, b                                        ; $6414: $78
	sbc  a                                           ; $6415: $9f
	dec  c                                           ; $6416: $0d
	nop                                              ; $6417: $00
	ld   a, [bc]                                     ; $6418: $0a
	rrca                                             ; $6419: $0f
	nop                                              ; $641a: $00
	ld   bc, $5001                                   ; $641b: $01 $01 $50
	sbc  [hl]                                        ; $641e: $9e
	inc  b                                           ; $641f: $04
	ld   c, $03                                      ; $6420: $0e $03
	sub  b                                           ; $6422: $90
	ld   h, e                                        ; $6423: $63
	and  c                                           ; $6424: $a1
	sbc  a                                           ; $6425: $9f
	dec  c                                           ; $6426: $0d
	ld   [hl], a                                     ; $6427: $77
	ld   d, h                                        ; $6428: $54
	ld   l, h                                        ; $6429: $6c
	sbc  a                                           ; $642a: $9f
	dec  c                                           ; $642b: $0d
	nop                                              ; $642c: $00
	ld   a, [bc]                                     ; $642d: $0a
	inc  d                                           ; $642e: $14
	ld   a, [bc]                                     ; $642f: $0a
	ld   bc, $091c                                   ; $6430: $01 $1c $09
	nop                                              ; $6433: $00
	nop                                              ; $6434: $00
	ld   bc, $5092                                   ; $6435: $01 $92 $50
	rst  $38                                         ; $6438: $ff
	rst  $38                                         ; $6439: $ff
	dec  c                                           ; $643a: $0d
	ld   [bc], a                                     ; $643b: $02
	and  l                                           ; $643c: $a5
	inc  b                                           ; $643d: $04
	xor  d                                           ; $643e: $aa
	ld   a, l                                        ; $643f: $7d
	ld   [bc], a                                     ; $6440: $02
	jr   nz, jr_066_6447                             ; $6441: $20 $04

	xor  d                                           ; $6443: $aa
	ld   h, d                                        ; $6444: $62
	ld   e, l                                        ; $6445: $5d
	sbc  e                                           ; $6446: $9b

jr_066_6447:
	ld   d, h                                        ; $6447: $54
	ld   h, e                                        ; $6448: $63
	and  c                                           ; $6449: $a1
	dec  c                                           ; $644a: $0d
	ld   l, [hl]                                     ; $644b: $6e
	ld   [hl], c                                     ; $644c: $71
	ld   l, l                                        ; $644d: $6d
	ld   a, e                                        ; $644e: $7b
	sbc  a                                           ; $644f: $9f
	dec  c                                           ; $6450: $0d
	nop                                              ; $6451: $00
	ld   a, [bc]                                     ; $6452: $0a
	ld   bc, $5477                                   ; $6453: $01 $77 $54
	ld   l, [hl]                                     ; $6456: $6e
	ld   [hl], c                                     ; $6457: $71
	ld   l, l                                        ; $6458: $6d
	ld   sp, hl                                      ; $6459: $f9
	dec  c                                           ; $645a: $0d
	dec  b                                           ; $645b: $05
	ld   [hl], e                                     ; $645c: $73
	ld   a, h                                        ; $645d: $7c
	inc  bc                                          ; $645e: $03
	sbc  $04                                         ; $645f: $de $04
	db   $ec                                         ; $6461: $ec
	ld   a, l                                        ; $6462: $7d
	rst  $38                                         ; $6463: $ff
	rst  $38                                         ; $6464: $ff
	dec  c                                           ; $6465: $0d
	nop                                              ; $6466: $00
	ld   a, [bc]                                     ; $6467: $0a
	add  hl, de                                      ; $6468: $19
	dec  b                                           ; $6469: $05
	ld   [bc], a                                     ; $646a: $02
	dec  b                                           ; $646b: $05
	inc  de                                          ; $646c: $13
	ld   h, l                                        ; $646d: $65
	ld   e, c                                        ; $646e: $59
	ld   [hl], c                                     ; $646f: $71
	ld   l, l                                        ; $6470: $6d
	ld   [hl], l                                     ; $6471: $75
	ld   h, a                                        ; $6472: $67
	nop                                              ; $6473: $00
	nop                                              ; $6474: $00
	inc  b                                           ; $6475: $04
	ld   c, $04                                      ; $6476: $0e $04
	adc  h                                           ; $6478: $8c
	ld   [hl], l                                     ; $6479: $75
	ld   h, l                                        ; $647a: $65
	ld   l, l                                        ; $647b: $6d
	rst  $38                                         ; $647c: $ff
	rst  $38                                         ; $647d: $ff
	nop                                              ; $647e: $00
	ld   bc, $9207                                   ; $647f: $01 $07 $92
	add  hl, hl                                      ; $6482: $29
	ld   [bc], a                                     ; $6483: $02
	inc  bc                                          ; $6484: $03
	ld   bc, $2000                                   ; $6485: $01 $00 $20
	nop                                              ; $6488: $00
	rlca                                             ; $6489: $07
	dec  de                                          ; $648a: $1b
	ld   a, [hl+]                                    ; $648b: $2a
	ld   [bc], a                                     ; $648c: $02
	inc  bc                                          ; $648d: $03
	ld   bc, $2001                                   ; $648e: $01 $01 $20
	nop                                              ; $6491: $00
	ld   b, $a0                                      ; $6492: $06 $a0
	ld   a, [hl+]                                    ; $6494: $2a
	rrca                                             ; $6495: $0f
	nop                                              ; $6496: $00
	ld   bc, $0501                                   ; $6497: $01 $01 $05
	inc  de                                          ; $649a: $13
	ld   h, l                                        ; $649b: $65
	ld   e, c                                        ; $649c: $59
	ld   [hl], c                                     ; $649d: $71
	ld   l, l                                        ; $649e: $6d
	ld   [hl], l                                     ; $649f: $75
	ld   h, a                                        ; $64a0: $67
	sbc  a                                           ; $64a1: $9f
	dec  c                                           ; $64a2: $0d
	adc  h                                           ; $64a3: $8c
	ld   l, l                                        ; $64a4: $6d
	ld   [hl], l                                     ; $64a5: $75
	ld   e, e                                        ; $64a6: $5b
	sbc  c                                           ; $64a7: $99
	halt                                             ; $64a8: $76
	ld   d, d                                        ; $64a9: $52
	ld   d, d                                        ; $64aa: $52
	ld   [hl], l                                     ; $64ab: $75
	ld   h, a                                        ; $64ac: $67
	ld   a, e                                        ; $64ad: $7b
	sbc  a                                           ; $64ae: $9f
	dec  c                                           ; $64af: $0d
	nop                                              ; $64b0: $00
	ld   a, [bc]                                     ; $64b1: $0a
	rlca                                             ; $64b2: $07
	and  $29                                         ; $64b3: $e6 $29
	inc  bc                                          ; $64b5: $03
	ld   h, l                                        ; $64b6: $65
	ld   bc, $2305                                   ; $64b7: $01 $05 $23
	nop                                              ; $64ba: $00
	inc  e                                           ; $64bb: $1c
	add  hl, bc                                      ; $64bc: $09
	ld   bc, $0101                                   ; $64bd: $01 $01 $01
	ld   l, e                                        ; $64c0: $6b
	sbc  d                                           ; $64c1: $9a
	ld   a, l                                        ; $64c2: $7d
	sub  [hl]                                        ; $64c3: $96
	ld   e, c                                        ; $64c4: $59
	ld   [hl], c                                     ; $64c5: $71
	ld   l, l                                        ; $64c6: $6d
	sbc  a                                           ; $64c7: $9f
	dec  c                                           ; $64c8: $0d
	ld   [bc], a                                     ; $64c9: $02
	jp   z, $9778                                    ; $64ca: $ca $78 $97

	dec  b                                           ; $64cd: $05
	ld   [hl], e                                     ; $64ce: $73
	ld   a, h                                        ; $64cf: $7c
	inc  bc                                          ; $64d0: $03
	sbc  $04                                         ; $64d1: $de $04
	db   $ec                                         ; $64d3: $ec
	ld   e, d                                        ; $64d4: $5a
	ld   [hl], d                                     ; $64d5: $72
	halt                                             ; $64d6: $76
	adc  h                                           ; $64d7: $8c
	sbc  c                                           ; $64d8: $99
	halt                                             ; $64d9: $76
	dec  c                                           ; $64da: $0d
	dec  b                                           ; $64db: $05
	pop  de                                          ; $64dc: $d1
	ld   [hl], c                                     ; $64dd: $71
	ld   l, l                                        ; $64de: $6d
	and  c                                           ; $64df: $a1
	ld   l, [hl]                                     ; $64e0: $6e
	rst  $38                                         ; $64e1: $ff
	rst  $38                                         ; $64e2: $ff
	dec  c                                           ; $64e3: $0d
	nop                                              ; $64e4: $00
	ld   a, [bc]                                     ; $64e5: $0a
	ld   b, $0d                                      ; $64e6: $06 $0d
	dec  hl                                          ; $64e8: $2b
	inc  e                                           ; $64e9: $1c
	add  hl, bc                                      ; $64ea: $09
	ld   [bc], a                                     ; $64eb: $02
	ld   [bc], a                                     ; $64ec: $02
	ld   bc, $ffff                                   ; $64ed: $01 $ff $ff
	dec  b                                           ; $64f0: $05
	inc  de                                          ; $64f1: $13
	ld   h, l                                        ; $64f2: $65
	ld   e, c                                        ; $64f3: $59
	ld   [hl], c                                     ; $64f4: $71
	ld   l, l                                        ; $64f5: $6d
	rst  $38                                         ; $64f6: $ff
	rst  $38                                         ; $64f7: $ff
	ld   e, c                                        ; $64f8: $59
	sbc  [hl]                                        ; $64f9: $9e
	dec  c                                           ; $64fa: $0d
	ld   l, e                                        ; $64fb: $6b
	ld   a, h                                        ; $64fc: $7c
	sbc  l                                           ; $64fd: $9d
	sbc  b                                           ; $64fe: $98
	ld   a, c                                        ; $64ff: $79
	ld   a, l                                        ; $6500: $7d
	sbc  [hl]                                        ; $6501: $9e
	adc  l                                           ; $6502: $8d
	and  c                                           ; $6503: $a1
	ld   a, b                                        ; $6504: $78
	ld   e, c                                        ; $6505: $59
	sub  a                                           ; $6506: $97
	dec  c                                           ; $6507: $0d
	ld   d, d                                        ; $6508: $52
	ld   d, d                                        ; $6509: $52
	inc  b                                           ; $650a: $04
	ld   d, a                                        ; $650b: $57
	dec  b                                           ; $650c: $05
	add  hl, hl                                      ; $650d: $29
	ld   a, l                                        ; $650e: $7d
	ld   e, e                                        ; $650f: $5b
	ld   e, c                                        ; $6510: $59
	ld   a, b                                        ; $6511: $78
	ld   e, c                                        ; $6512: $59
	ld   [hl], c                                     ; $6513: $71
	ld   l, l                                        ; $6514: $6d
	ld   l, h                                        ; $6515: $6c
	rst  $38                                         ; $6516: $ff
	rst  $38                                         ; $6517: $ff
	dec  c                                           ; $6518: $0d
	nop                                              ; $6519: $00
	ld   a, [bc]                                     ; $651a: $0a
	ld   b, $76                                      ; $651b: $06 $76
	dec  hl                                          ; $651d: $2b
	rrca                                             ; $651e: $0f
	nop                                              ; $651f: $00
	ld   bc, $0401                                   ; $6520: $01 $01 $04
	ld   c, $04                                      ; $6523: $0e $04
	adc  h                                           ; $6525: $8c
	ld   [hl], l                                     ; $6526: $75
	ld   h, l                                        ; $6527: $65
	ld   l, l                                        ; $6528: $6d
	rst  $38                                         ; $6529: $ff
	rst  $38                                         ; $652a: $ff
	dec  c                                           ; $652b: $0d
	inc  b                                           ; $652c: $04
	ld   c, $03                                      ; $652d: $0e $03
	sub  b                                           ; $652f: $90
	ld   h, e                                        ; $6530: $63
	and  c                                           ; $6531: $a1
	ld   a, l                                        ; $6532: $7d
	sbc  [hl]                                        ; $6533: $9e
	ld   d, d                                        ; $6534: $52
	ld   [hl], d                                     ; $6535: $72
	sub  b                                           ; $6536: $90
	dec  c                                           ; $6537: $0d
	ld   d, b                                        ; $6538: $50
	and  c                                           ; $6539: $a1
	ld   a, b                                        ; $653a: $78
	ld   h, c                                        ; $653b: $61
	halt                                             ; $653c: $76
	and  b                                           ; $653d: $a0
	rst  $38                                         ; $653e: $ff
	rst  $38                                         ; $653f: $ff
	ld   sp, hl                                      ; $6540: $f9
	dec  c                                           ; $6541: $0d
	nop                                              ; $6542: $00
	ld   a, [bc]                                     ; $6543: $0a
	rlca                                             ; $6544: $07
	ld   l, d                                        ; $6545: $6a
	ld   a, [hl+]                                    ; $6546: $2a
	inc  bc                                          ; $6547: $03
	ld   h, l                                        ; $6548: $65
	ld   bc, $2305                                   ; $6549: $01 $05 $23
	nop                                              ; $654c: $00
	inc  e                                           ; $654d: $1c
	add  hl, bc                                      ; $654e: $09
	ld   bc, $0101                                   ; $654f: $01 $01 $01
	adc  h                                           ; $6552: $8c
	ld   d, b                                        ; $6553: $50
	ld   a, e                                        ; $6554: $7b
	rst  $38                                         ; $6555: $ff
	rst  $38                                         ; $6556: $ff
	dec  c                                           ; $6557: $0d
	ld   [hl], l                                     ; $6558: $75
	sub  b                                           ; $6559: $90
	ld   a, b                                        ; $655a: $78
	sbc  d                                           ; $655b: $9a
	sbc  c                                           ; $655c: $99
	halt                                             ; $655d: $76
	dec  b                                           ; $655e: $05
	inc  de                                          ; $655f: $13
	ld   h, l                                        ; $6560: $65
	ld   d, d                                        ; $6561: $52
	sub  b                                           ; $6562: $90
	and  c                                           ; $6563: $a1
	ld   l, [hl]                                     ; $6564: $6e
	ld   l, h                                        ; $6565: $6c
	sbc  a                                           ; $6566: $9f
	dec  c                                           ; $6567: $0d
	nop                                              ; $6568: $00
	ld   a, [bc]                                     ; $6569: $0a
	ld   b, $0d                                      ; $656a: $06 $0d
	dec  hl                                          ; $656c: $2b
	inc  e                                           ; $656d: $1c
	add  hl, bc                                      ; $656e: $09
	ld   [bc], a                                     ; $656f: $02
	ld   [bc], a                                     ; $6570: $02
	ld   bc, $ffff                                   ; $6571: $01 $ff $ff
	inc  b                                           ; $6574: $04
	ld   c, $04                                      ; $6575: $0e $04
	adc  h                                           ; $6577: $8c
	ld   l, [hl]                                     ; $6578: $6e
	ld   [hl], c                                     ; $6579: $71
	ld   l, l                                        ; $657a: $6d
	rst  $38                                         ; $657b: $ff
	rst  $38                                         ; $657c: $ff
	ld   e, c                                        ; $657d: $59
	sbc  [hl]                                        ; $657e: $9e
	dec  c                                           ; $657f: $0d
	ld   l, e                                        ; $6580: $6b
	ld   a, h                                        ; $6581: $7c
	sbc  l                                           ; $6582: $9d
	sbc  b                                           ; $6583: $98
	ld   a, c                                        ; $6584: $79
	ld   a, l                                        ; $6585: $7d
	sbc  [hl]                                        ; $6586: $9e
	adc  l                                           ; $6587: $8d
	and  c                                           ; $6588: $a1
	ld   a, b                                        ; $6589: $78
	ld   e, c                                        ; $658a: $59
	sub  a                                           ; $658b: $97
	dec  c                                           ; $658c: $0d
	ld   d, d                                        ; $658d: $52
	ld   d, d                                        ; $658e: $52
	inc  b                                           ; $658f: $04
	ld   d, a                                        ; $6590: $57
	dec  b                                           ; $6591: $05
	add  hl, hl                                      ; $6592: $29
	ld   a, l                                        ; $6593: $7d
	ld   e, e                                        ; $6594: $5b
	ld   e, c                                        ; $6595: $59
	ld   a, b                                        ; $6596: $78
	ld   e, c                                        ; $6597: $59
	ld   [hl], c                                     ; $6598: $71
	ld   l, l                                        ; $6599: $6d
	ld   l, h                                        ; $659a: $6c
	rst  $38                                         ; $659b: $ff
	rst  $38                                         ; $659c: $ff
	dec  c                                           ; $659d: $0d
	nop                                              ; $659e: $00
	ld   a, [bc]                                     ; $659f: $0a
	ld   b, $76                                      ; $65a0: $06 $76
	dec  hl                                          ; $65a2: $2b
	inc  e                                           ; $65a3: $1c
	add  hl, bc                                      ; $65a4: $09
	ld   b, $0b                                      ; $65a5: $06 $0b
	ld   bc, $5258                                   ; $65a7: $01 $58 $52
	ld   e, b                                        ; $65aa: $58
	ld   d, d                                        ; $65ab: $52
	rst  $38                                         ; $65ac: $ff
	rst  $38                                         ; $65ad: $ff
	dec  c                                           ; $65ae: $0d
	inc  bc                                          ; $65af: $03
	call c, $9756                                    ; $65b0: $dc $56 $97
	sbc  d                                           ; $65b3: $9a
	ld   a, b                                        ; $65b4: $78
	ld   d, d                                        ; $65b5: $52
	adc  c                                           ; $65b6: $89
	ld   [hl], a                                     ; $65b7: $77
	dec  c                                           ; $65b8: $0d
	inc  b                                           ; $65b9: $04
	ld   c, $04                                      ; $65ba: $0e $04
	adc  h                                           ; $65bc: $8c
	ld   l, [hl]                                     ; $65bd: $6e
	ld   [hl], c                                     ; $65be: $71
	ld   l, l                                        ; $65bf: $6d
	ld   a, h                                        ; $65c0: $7c
	ld   e, c                                        ; $65c1: $59
	ld   d, d                                        ; $65c2: $52
	ld   sp, hl                                      ; $65c3: $f9
	dec  c                                           ; $65c4: $0d
	nop                                              ; $65c5: $00
	ld   a, [bc]                                     ; $65c6: $0a
	rlca                                             ; $65c7: $07
	push hl                                          ; $65c8: $e5
	ld   a, [hl+]                                    ; $65c9: $2a
	inc  bc                                          ; $65ca: $03
	ld   h, l                                        ; $65cb: $65
	ld   bc, $2305                                   ; $65cc: $01 $05 $23
	nop                                              ; $65cf: $00
	inc  e                                           ; $65d0: $1c
	add  hl, bc                                      ; $65d1: $09
	dec  b                                           ; $65d2: $05
	ld   a, [bc]                                     ; $65d3: $0a
	ld   bc, $9a6b                                   ; $65d4: $01 $6b $9a
	ld   a, l                                        ; $65d7: $7d
	ld   [bc], a                                     ; $65d8: $02
	jr   z, @+$54                                    ; $65d9: $28 $52

	ld   h, c                                        ; $65db: $61
	halt                                             ; $65dc: $76
	ld   h, l                                        ; $65dd: $65
	ld   l, l                                        ; $65de: $6d
	ld   a, b                                        ; $65df: $78
	rst  $38                                         ; $65e0: $ff
	rst  $38                                         ; $65e1: $ff
	dec  c                                           ; $65e2: $0d
	nop                                              ; $65e3: $00
	ld   a, [bc]                                     ; $65e4: $0a
	ld   b, $0d                                      ; $65e5: $06 $0d
	dec  hl                                          ; $65e7: $2b
	inc  e                                           ; $65e8: $1c
	add  hl, bc                                      ; $65e9: $09
	ld   [bc], a                                     ; $65ea: $02
	ld   [bc], a                                     ; $65eb: $02
	ld   bc, $7c6b                                   ; $65ec: $01 $6b $7c
	sbc  l                                           ; $65ef: $9d
	sbc  b                                           ; $65f0: $98
	ld   a, c                                        ; $65f1: $79
	ld   a, l                                        ; $65f2: $7d
	sbc  [hl]                                        ; $65f3: $9e
	adc  l                                           ; $65f4: $8d
	and  c                                           ; $65f5: $a1
	ld   a, b                                        ; $65f6: $78
	ld   e, c                                        ; $65f7: $59
	sub  a                                           ; $65f8: $97
	dec  c                                           ; $65f9: $0d
	ld   d, d                                        ; $65fa: $52
	ld   d, d                                        ; $65fb: $52
	inc  b                                           ; $65fc: $04
	ld   d, a                                        ; $65fd: $57
	dec  b                                           ; $65fe: $05
	add  hl, hl                                      ; $65ff: $29
	ld   a, l                                        ; $6600: $7d
	ld   e, e                                        ; $6601: $5b
	ld   e, c                                        ; $6602: $59
	ld   a, b                                        ; $6603: $78
	ld   e, c                                        ; $6604: $59
	ld   [hl], c                                     ; $6605: $71
	ld   l, l                                        ; $6606: $6d
	ld   l, h                                        ; $6607: $6c
	rst  $38                                         ; $6608: $ff
	rst  $38                                         ; $6609: $ff
	dec  c                                           ; $660a: $0d
	nop                                              ; $660b: $00
	ld   a, [bc]                                     ; $660c: $0a
	ld   b, $76                                      ; $660d: $06 $76
	dec  hl                                          ; $660f: $2b
	inc  e                                           ; $6610: $1c
	add  hl, bc                                      ; $6611: $09
	ld   bc, $0101                                   ; $6612: $01 $01 $01
	ld   [bc], a                                     ; $6615: $02
	and  l                                           ; $6616: $a5
	inc  b                                           ; $6617: $04
	xor  d                                           ; $6618: $aa
	ld   a, l                                        ; $6619: $7d
	sbc  [hl]                                        ; $661a: $9e
	adc  c                                           ; $661b: $89
	and  c                                           ; $661c: $a1
	halt                                             ; $661d: $76
	ld   a, c                                        ; $661e: $79
	ld   d, b                                        ; $661f: $50
	sbc  b                                           ; $6620: $98
	ld   e, d                                        ; $6621: $5a
	halt                                             ; $6622: $76
	ld   d, h                                        ; $6623: $54
	sbc  a                                           ; $6624: $9f
	dec  c                                           ; $6625: $0d
	nop                                              ; $6626: $00
	ld   a, [bc]                                     ; $6627: $0a
	dec  b                                           ; $6628: $05
	add  b                                           ; $6629: $80
	adc  a                                           ; $662a: $8f
	ld   bc, $0001                                   ; $662b: $01 $01 $00
	inc  e                                           ; $662e: $1c
	add  hl, bc                                      ; $662f: $09
	nop                                              ; $6630: $00
	nop                                              ; $6631: $00
	ld   bc, $cf04                                   ; $6632: $01 $04 $cf
	inc  b                                           ; $6635: $04
	xor  d                                           ; $6636: $aa
	ld   a, l                                        ; $6637: $7d
	sbc  [hl]                                        ; $6638: $9e
	ld   [$5d00], sp                                 ; $6639: $08 $00 $5d
	and  c                                           ; $663c: $a1
	ld   a, h                                        ; $663d: $7c
	dec  c                                           ; $663e: $0d
	inc  bc                                          ; $663f: $03
	ld   l, c                                        ; $6640: $69
	inc  bc                                          ; $6641: $03
	ld   a, [hl]                                     ; $6642: $7e
	inc  bc                                          ; $6643: $03
	inc  h                                           ; $6644: $24
	ld   [bc], a                                     ; $6645: $02
	sub  [hl]                                        ; $6646: $96
	ld   e, d                                        ; $6647: $5a
	ld   d, b                                        ; $6648: $50
	sbc  c                                           ; $6649: $99
	ld   e, c                                        ; $664a: $59
	sub  a                                           ; $664b: $97
	sbc  [hl]                                        ; $664c: $9e
	dec  c                                           ; $664d: $0d
	sub  [hl]                                        ; $664e: $96
	ld   e, l                                        ; $664f: $5d
	inc  b                                           ; $6650: $04
	ld   b, d                                        ; $6651: $42
	ld   [hl], h                                     ; $6652: $74
	ld   e, b                                        ; $6653: $58
	ld   e, l                                        ; $6654: $5d
	sub  [hl]                                        ; $6655: $96
	ld   d, h                                        ; $6656: $54
	ld   a, c                                        ; $6657: $79
	sbc  a                                           ; $6658: $9f
	dec  c                                           ; $6659: $0d
	nop                                              ; $665a: $00
	ld   a, [bc]                                     ; $665b: $0a
	inc  e                                           ; $665c: $1c
	add  hl, bc                                      ; $665d: $09
	ld   bc, $0101                                   ; $665e: $01 $01 $01
	ld   l, e                                        ; $6661: $6b
	sbc  d                                           ; $6662: $9a
	ld   h, [hl]                                     ; $6663: $66
	sub  c                                           ; $6664: $91
	sbc  [hl]                                        ; $6665: $9e
	ld   e, b                                        ; $6666: $58
	sub  d                                           ; $6667: $92
	ld   h, a                                        ; $6668: $67
	adc  l                                           ; $6669: $8d
	sbc  a                                           ; $666a: $9f
	dec  c                                           ; $666b: $0d
	nop                                              ; $666c: $00
	ld   a, [bc]                                     ; $666d: $0a
	dec  c                                           ; $666e: $0d
	nop                                              ; $666f: $00
	nop                                              ; $6670: $00
	rrca                                             ; $6671: $0f
	nop                                              ; $6672: $00
	ld   bc, $1e09                                   ; $6673: $01 $09 $1e
	add  hl, hl                                      ; $6676: $29
	nop                                              ; $6677: $00
	nop                                              ; $6678: $00
	dec  e                                           ; $6679: $1d
	ld   b, b                                        ; $667a: $40
	ld   de, $1103                                   ; $667b: $11 $03 $11
	ld   bc, $2902                                   ; $667e: $01 $02 $29
	nop                                              ; $6681: $00
	dec  e                                           ; $6682: $1d
	ld   b, b                                        ; $6683: $40
	inc  de                                          ; $6684: $13
	inc  bc                                          ; $6685: $03
	inc  de                                          ; $6686: $13
	ld   bc, $2902                                   ; $6687: $01 $02 $29
	nop                                              ; $668a: $00
	dec  e                                           ; $668b: $1d
	ld   b, b                                        ; $668c: $40
	ld   [de], a                                     ; $668d: $12
	inc  bc                                          ; $668e: $03
	ld   [de], a                                     ; $668f: $12
	ld   bc, $2902                                   ; $6690: $01 $02 $29
	nop                                              ; $6693: $00
	dec  e                                           ; $6694: $1d
	ld   b, b                                        ; $6695: $40
	dec  d                                           ; $6696: $15
	inc  bc                                          ; $6697: $03
	dec  d                                           ; $6698: $15
	ld   bc, $2902                                   ; $6699: $01 $02 $29
	nop                                              ; $669c: $00
	dec  e                                           ; $669d: $1d
	ld   b, b                                        ; $669e: $40
	inc  d                                           ; $669f: $14
	inc  bc                                          ; $66a0: $03
	inc  d                                           ; $66a1: $14
	ld   bc, $2902                                   ; $66a2: $01 $02 $29
	nop                                              ; $66a5: $00
	dec  e                                           ; $66a6: $1d
	ld   b, b                                        ; $66a7: $40
	ld   d, $03                                      ; $66a8: $16 $03
	ld   d, $01                                      ; $66aa: $16 $01
	ld   [bc], a                                     ; $66ac: $02
	add  hl, hl                                      ; $66ad: $29
	nop                                              ; $66ae: $00
	inc  e                                           ; $66af: $1c
	add  hl, bc                                      ; $66b0: $09
	ld   bc, $0101                                   ; $66b1: $01 $01 $01
	halt                                             ; $66b4: $76
	sbc  b                                           ; $66b5: $98
	ld   d, b                                        ; $66b6: $50
	ld   d, [hl]                                     ; $66b7: $56
	ld   l, b                                        ; $66b8: $68
	sbc  [hl]                                        ; $66b9: $9e
	ld   [bc], a                                     ; $66ba: $02
	and  l                                           ; $66bb: $a5
	inc  b                                           ; $66bc: $04
	xor  d                                           ; $66bd: $aa
	ld   a, l                                        ; $66be: $7d
	dec  c                                           ; $66bf: $0d
	nop                                              ; $66c0: $00
	dec  b                                           ; $66c1: $05
	add  b                                           ; $66c2: $80
	adc  a                                           ; $66c3: $8f
	ld   bc, $0001                                   ; $66c4: $01 $01 $00
	ld   bc, $0458                                   ; $66c7: $01 $58 $04
	ld   a, e                                        ; $66ca: $7b
	sbc  d                                           ; $66cb: $9a
	ld   h, e                                        ; $66cc: $63
	adc  h                                           ; $66cd: $8c
	sbc  a                                           ; $66ce: $9f
	dec  c                                           ; $66cf: $0d
	nop                                              ; $66d0: $00
	ld   a, [bc]                                     ; $66d1: $0a
	inc  e                                           ; $66d2: $1c
	add  hl, bc                                      ; $66d3: $09
	nop                                              ; $66d4: $00
	nop                                              ; $66d5: $00
	ld   bc, $cf04                                   ; $66d6: $01 $04 $cf
	inc  b                                           ; $66d9: $04
	xor  d                                           ; $66da: $aa
	ld   a, l                                        ; $66db: $7d
	sbc  [hl]                                        ; $66dc: $9e
	ld   [$5d00], sp                                 ; $66dd: $08 $00 $5d
	and  c                                           ; $66e0: $a1
	ld   a, h                                        ; $66e1: $7c
	dec  c                                           ; $66e2: $0d
	inc  bc                                          ; $66e3: $03
	ld   l, c                                        ; $66e4: $69
	inc  bc                                          ; $66e5: $03
	ld   a, [hl]                                     ; $66e6: $7e
	inc  bc                                          ; $66e7: $03
	inc  h                                           ; $66e8: $24
	ld   [bc], a                                     ; $66e9: $02
	sub  [hl]                                        ; $66ea: $96
	ld   e, d                                        ; $66eb: $5a
	ld   d, b                                        ; $66ec: $50
	sbc  c                                           ; $66ed: $99
	ld   e, c                                        ; $66ee: $59
	sub  a                                           ; $66ef: $97
	sbc  [hl]                                        ; $66f0: $9e
	dec  c                                           ; $66f1: $0d
	sub  [hl]                                        ; $66f2: $96
	ld   e, l                                        ; $66f3: $5d
	inc  b                                           ; $66f4: $04
	ld   b, d                                        ; $66f5: $42
	ld   [hl], h                                     ; $66f6: $74
	ld   e, b                                        ; $66f7: $58
	ld   e, l                                        ; $66f8: $5d
	sub  [hl]                                        ; $66f9: $96
	ld   d, h                                        ; $66fa: $54
	ld   a, c                                        ; $66fb: $79
	sbc  a                                           ; $66fc: $9f
	dec  c                                           ; $66fd: $0d
	nop                                              ; $66fe: $00
	ld   a, [bc]                                     ; $66ff: $0a
	ld   bc, $9a6b                                   ; $6700: $01 $6b $9a
	ld   h, [hl]                                     ; $6703: $66
	sub  c                                           ; $6704: $91
	sbc  [hl]                                        ; $6705: $9e
	ld   e, b                                        ; $6706: $58
	sub  d                                           ; $6707: $92
	ld   h, a                                        ; $6708: $67
	adc  l                                           ; $6709: $8d
	sbc  a                                           ; $670a: $9f
	dec  c                                           ; $670b: $0d
	nop                                              ; $670c: $00
	ld   a, [bc]                                     ; $670d: $0a
	dec  c                                           ; $670e: $0d
	nop                                              ; $670f: $00
	nop                                              ; $6710: $00
	rrca                                             ; $6711: $0f
	nop                                              ; $6712: $00
	ld   bc, $1e09                                   ; $6713: $01 $09 $1e
	add  hl, hl                                      ; $6716: $29
	nop                                              ; $6717: $00
	nop                                              ; $6718: $00
	nop                                              ; $6719: $00
	inc  bc                                          ; $671a: $03
	inc  de                                          ; $671b: $13
	ld   bc, $24b4                                   ; $671c: $01 $b4 $24
	inc  bc                                          ; $671f: $03
	ld   d, b                                        ; $6720: $50
	ld   [bc], a                                     ; $6721: $02
	nop                                              ; $6722: $00
	inc  bc                                          ; $6723: $03
	ld   c, d                                        ; $6724: $4a
	add  hl, hl                                      ; $6725: $29
	add  hl, hl                                      ; $6726: $29
	ld   bc, $2201                                   ; $6727: $01 $01 $22
	inc  e                                           ; $672a: $1c
	inc  b                                           ; $672b: $04
	add  b                                           ; $672c: $80
	inc  l                                           ; $672d: $2c
	ld   bc, $2000                                   ; $672e: $01 $00 $20
	inc  e                                           ; $6731: $1c
	inc  bc                                          ; $6732: $03
	inc  de                                          ; $6733: $13
	ld   bc, $24b4                                   ; $6734: $01 $b4 $24
	inc  bc                                          ; $6737: $03
	ld   d, b                                        ; $6738: $50
	ld   [bc], a                                     ; $6739: $02
	nop                                              ; $673a: $00
	inc  bc                                          ; $673b: $03
	ld   c, d                                        ; $673c: $4a
	add  hl, hl                                      ; $673d: $29
	add  hl, hl                                      ; $673e: $29
	ld   bc, $2201                                   ; $673f: $01 $01 $22
	inc  e                                           ; $6742: $1c
	inc  b                                           ; $6743: $04
	add  b                                           ; $6744: $80
	inc  l                                           ; $6745: $2c
	ld   bc, $20ff                                   ; $6746: $01 $ff $20
	inc  e                                           ; $6749: $1c
	inc  b                                           ; $674a: $04
	add  b                                           ; $674b: $80
	dec  l                                           ; $674c: $2d
	ld   bc, $20ff                                   ; $674d: $01 $ff $20
	inc  e                                           ; $6750: $1c
	ld   [bc], a                                     ; $6751: $02
	nop                                              ; $6752: $00
	ld   bc, $201a                                   ; $6753: $01 $1a $20
	inc  e                                           ; $6756: $1c
	dec  de                                          ; $6757: $1b
	nop                                              ; $6758: $00
	ld   c, $01                                      ; $6759: $0e $01
	rrca                                             ; $675b: $0f
	nop                                              ; $675c: $00
	ld   bc, $0102                                   ; $675d: $01 $02 $01
	ld   d, h                                        ; $6760: $54
	db   $fc                                         ; $6761: $fc
	and  c                                           ; $6762: $a1
	rst  $38                                         ; $6763: $ff
	rst  $38                                         ; $6764: $ff
	inc  bc                                          ; $6765: $03
	ld   d, $59                                      ; $6766: $16 $59
	rst  $38                                         ; $6768: $ff
	rst  $38                                         ; $6769: $ff
	dec  c                                           ; $676a: $0d
	ld   [bc], a                                     ; $676b: $02
	sbc  b                                           ; $676c: $98
	inc  bc                                          ; $676d: $03
	nop                                              ; $676e: $00
	ld   [hl], l                                     ; $676f: $75
	ld   a, h                                        ; $6770: $7c
	inc  b                                           ; $6771: $04
	dec  c                                           ; $6772: $0d
	ld   [bc], a                                     ; $6773: $02
	sub  [hl]                                        ; $6774: $96
	inc  b                                           ; $6775: $04
	ld   b, l                                        ; $6776: $45
	inc  b                                           ; $6777: $04
	ld   a, [bc]                                     ; $6778: $0a
	sub  b                                           ; $6779: $90
	dec  c                                           ; $677a: $0d
	ld   d, b                                        ; $677b: $50
	halt                                             ; $677c: $76
	sbc  l                                           ; $677d: $9d
	ld   l, b                                        ; $677e: $68
	ld   e, c                                        ; $677f: $59
	rst  $38                                         ; $6780: $ff
	ld   e, c                                        ; $6781: $59
	rst  $38                                         ; $6782: $ff
	rst  $38                                         ; $6783: $ff
	dec  c                                           ; $6784: $0d
	nop                                              ; $6785: $00
	ld   a, [bc]                                     ; $6786: $0a
	inc  d                                           ; $6787: $14
	ld   b, $01                                      ; $6788: $06 $01
	rrca                                             ; $678a: $0f
	inc  bc                                          ; $678b: $03
	inc  bc                                          ; $678c: $03
	ld   bc, $0008                                   ; $678d: $01 $08 $00
	ld   e, l                                        ; $6790: $5d
	and  c                                           ; $6791: $a1
	sbc  a                                           ; $6792: $9f
	dec  c                                           ; $6793: $0d
	ld   l, a                                        ; $6794: $6f
	sub  l                                           ; $6795: $95
	ld   [hl], c                                     ; $6796: $71
	halt                                             ; $6797: $76
	ld   d, d                                        ; $6798: $52
	ld   d, d                                        ; $6799: $52
	ld   e, c                                        ; $679a: $59
	ld   h, l                                        ; $679b: $65
	sub  a                                           ; $679c: $97
	sbc  a                                           ; $679d: $9f
	dec  c                                           ; $679e: $0d
	nop                                              ; $679f: $00
	ld   a, [bc]                                     ; $67a0: $0a
	rrca                                             ; $67a1: $0f
	nop                                              ; $67a2: $00
	ld   bc, $7d01                                   ; $67a3: $01 $01 $7d
	ld   d, d                                        ; $67a6: $52
	sbc  [hl]                                        ; $67a7: $9e
	rst  JumpTable                                         ; $67a8: $df
	db   $ec                                         ; $67a9: $ec
	and  e                                           ; $67aa: $a3
	ld   h, e                                        ; $67ab: $63
	and  c                                           ; $67ac: $a1
	sbc  a                                           ; $67ad: $9f
	dec  c                                           ; $67ae: $0d
	inc  b                                           ; $67af: $04
	ld   c, c                                        ; $67b0: $49
	ld   [hl], l                                     ; $67b1: $75
	ld   h, l                                        ; $67b2: $65
	sub  l                                           ; $67b3: $95
	ld   d, h                                        ; $67b4: $54
	ld   e, c                                        ; $67b5: $59
	ld   sp, hl                                      ; $67b6: $f9
	dec  c                                           ; $67b7: $0d
	nop                                              ; $67b8: $00
	ld   a, [bc]                                     ; $67b9: $0a
	inc  d                                           ; $67ba: $14
	ld   a, [bc]                                     ; $67bb: $0a
	ld   bc, $031c                                   ; $67bc: $01 $1c $03
	inc  bc                                          ; $67bf: $03
	inc  bc                                          ; $67c0: $03
	ld   bc, $a502                                   ; $67c1: $01 $02 $a5
	inc  b                                           ; $67c4: $04
	xor  d                                           ; $67c5: $aa
	ld   a, h                                        ; $67c6: $7c
	ld   e, b                                        ; $67c7: $58
	inc  b                                           ; $67c8: $04
	xor  l                                           ; $67c9: $ad
	sbc  [hl]                                        ; $67ca: $9e
	inc  bc                                          ; $67cb: $03
	ld   l, a                                        ; $67cc: $6f
	ld   [bc], a                                     ; $67cd: $02
	xor  c                                           ; $67ce: $a9
	ld   d, b                                        ; $67cf: $50
	sbc  c                                           ; $67d0: $99
	ld   sp, hl                                      ; $67d1: $f9
	dec  c                                           ; $67d2: $0d
	inc  b                                           ; $67d3: $04
	dec  c                                           ; $67d4: $0d
	ld   [bc], a                                     ; $67d5: $02
	sub  [hl]                                        ; $67d6: $96
	inc  b                                           ; $67d7: $04
	ld   b, l                                        ; $67d8: $45
	inc  b                                           ; $67d9: $04
	ld   a, [bc]                                     ; $67da: $0a
	ld   h, l                                        ; $67db: $65
	ld   l, l                                        ; $67dc: $6d
	ld   [bc], a                                     ; $67dd: $02
	sub  a                                           ; $67de: $97
	inc  b                                           ; $67df: $04
	ld   c, b                                        ; $67e0: $48
	halt                                             ; $67e1: $76
	ld   d, d                                        ; $67e2: $52
	ld   d, h                                        ; $67e3: $54
	ld   e, c                                        ; $67e4: $59
	sbc  [hl]                                        ; $67e5: $9e
	dec  c                                           ; $67e6: $0d
	ld   [bc], a                                     ; $67e7: $02
	sbc  b                                           ; $67e8: $98
	inc  bc                                          ; $67e9: $03
	nop                                              ; $67ea: $00
	ld   a, c                                        ; $67eb: $79
	ld   d, d                                        ; $67ec: $52
	ld   l, l                                        ; $67ed: $6d
	inc  b                                           ; $67ee: $04
	ld   a, $76                                      ; $67ef: $3e $76
	ld   h, l                                        ; $67f1: $65
	ld   [hl], h                                     ; $67f2: $74
	dec  c                                           ; $67f3: $0d
	nop                                              ; $67f4: $00
	ld   a, [bc]                                     ; $67f5: $0a
	ld   bc, $c803                                   ; $67f6: $01 $03 $c8
	ld   a, h                                        ; $67f9: $7c
	db   $dd                                         ; $67fa: $dd
	db   $ed                                         ; $67fb: $ed
	cp   b                                           ; $67fc: $b8
	jp   nz, Jump_066_58a0                           ; $67fd: $c2 $a0 $58

	adc  d                                           ; $6800: $8a
	ld   d, [hl]                                     ; $6801: $56
	ld   [hl], h                                     ; $6802: $74
	dec  c                                           ; $6803: $0d
	ld   [bc], a                                     ; $6804: $02
	or   l                                           ; $6805: $b5
	ld   [hl], c                                     ; $6806: $71
	ld   [hl], h                                     ; $6807: $74
	sub  b                                           ; $6808: $90
	sub  a                                           ; $6809: $97
	ld   e, b                                        ; $680a: $58
	ld   d, h                                        ; $680b: $54
	halt                                             ; $680c: $76
	dec  b                                           ; $680d: $05
	pop  de                                          ; $680e: $d1
	ld   [hl], c                                     ; $680f: $71
	ld   [hl], h                                     ; $6810: $74
	rst  $38                                         ; $6811: $ff
	rst  $38                                         ; $6812: $ff
	dec  c                                           ; $6813: $0d
	ld   [hl], a                                     ; $6814: $77
	ld   d, h                                        ; $6815: $54
	ld   e, c                                        ; $6816: $59
	ld   h, l                                        ; $6817: $65
	sub  a                                           ; $6818: $97
	sbc  a                                           ; $6819: $9f
	dec  c                                           ; $681a: $0d
	nop                                              ; $681b: $00
	ld   a, [bc]                                     ; $681c: $0a
	add  hl, de                                      ; $681d: $19
	dec  b                                           ; $681e: $05
	ld   [bc], a                                     ; $681f: $02
	ld   a, l                                        ; $6820: $7d
	ld   d, d                                        ; $6821: $52
	nop                                              ; $6822: $00
	nop                                              ; $6823: $00
	inc  bc                                          ; $6824: $03
	ld   a, b                                        ; $6825: $78
	inc  b                                           ; $6826: $04
	ldh  [$5a], a                                    ; $6827: $e0 $5a
	rst  $38                                         ; $6829: $ff
	rst  $38                                         ; $682a: $ff
	nop                                              ; $682b: $00
	ld   bc, $e907                                   ; $682c: $01 $07 $e9
	nop                                              ; $682f: $00
	ld   [bc], a                                     ; $6830: $02
	inc  bc                                          ; $6831: $03
	ld   bc, $2000                                   ; $6832: $01 $00 $20
	nop                                              ; $6835: $00
	rlca                                             ; $6836: $07
	ld   c, d                                        ; $6837: $4a
	ld   bc, $0302                                   ; $6838: $01 $02 $03
	ld   bc, $2001                                   ; $683b: $01 $01 $20
	nop                                              ; $683e: $00
	ld   b, $9a                                      ; $683f: $06 $9a
	ld   bc, $000f                                   ; $6841: $01 $0f $00
	ld   bc, $5801                                   ; $6844: $01 $01 $58
	inc  b                                           ; $6847: $04
	xor  l                                           ; $6848: $ad
	ld   a, l                                        ; $6849: $7d
	ld   d, b                                        ; $684a: $50
	ld   d, d                                        ; $684b: $52
	ld   [hl], h                                     ; $684c: $74
	ld   d, d                                        ; $684d: $52
	adc  h                                           ; $684e: $8c
	ld   h, a                                        ; $684f: $67
	sbc  a                                           ; $6850: $9f
	dec  c                                           ; $6851: $0d
	ld   l, d                                        ; $6852: $6a
	add  b                                           ; $6853: $80
	sbc  [hl]                                        ; $6854: $9e
	ld   e, b                                        ; $6855: $58
	ld   [bc], a                                     ; $6856: $02
	add  b                                           ; $6857: $80
	ld   d, d                                        ; $6858: $52
	ld   h, l                                        ; $6859: $65
	adc  h                                           ; $685a: $8c
	ld   h, a                                        ; $685b: $67
	sbc  a                                           ; $685c: $9f
	dec  c                                           ; $685d: $0d
	nop                                              ; $685e: $00
	ld   a, [bc]                                     ; $685f: $0a
	inc  e                                           ; $6860: $1c
	inc  bc                                          ; $6861: $03
	inc  bc                                          ; $6862: $03
	inc  bc                                          ; $6863: $03
	ld   bc, $9166                                   ; $6864: $01 $66 $91
	ld   d, b                                        ; $6867: $50
	sbc  [hl]                                        ; $6868: $9e
	ld   [bc], a                                     ; $6869: $02
	and  l                                           ; $686a: $a5
	inc  b                                           ; $686b: $04
	xor  d                                           ; $686c: $aa
	ld   a, h                                        ; $686d: $7c
	ld   e, b                                        ; $686e: $58
	inc  b                                           ; $686f: $04
	xor  l                                           ; $6870: $ad
	dec  c                                           ; $6871: $0d
	inc  bc                                          ; $6872: $03
	db   $f4                                         ; $6873: $f4
	inc  b                                           ; $6874: $04
	ld   e, c                                        ; $6875: $59
	ld   [hl], l                                     ; $6876: $75
	inc  b                                           ; $6877: $04
	rla                                              ; $6878: $17
	ld   [hl], c                                     ; $6879: $71
	ld   [hl], h                                     ; $687a: $74
	sbc  c                                           ; $687b: $99
	ld   e, c                                        ; $687c: $59
	sub  a                                           ; $687d: $97
	sbc  [hl]                                        ; $687e: $9e
	dec  c                                           ; $687f: $0d
	nop                                              ; $6880: $00
	dec  b                                           ; $6881: $05
	add  b                                           ; $6882: $80
	ld   [hl], c                                     ; $6883: $71
	ld   bc, $0001                                   ; $6884: $01 $01 $00
	dec  b                                           ; $6887: $05
	ld   b, b                                        ; $6888: $40
	ld   e, e                                        ; $6889: $5b
	ld   [bc], a                                     ; $688a: $02
	nop                                              ; $688b: $00
	nop                                              ; $688c: $00
	ld   bc, $8a04                                   ; $688d: $01 $04 $8a
	ld   l, b                                        ; $6890: $68
	ld   e, e                                        ; $6891: $5b
	ld   [hl], h                                     ; $6892: $74
	ld   a, e                                        ; $6893: $7b
	sbc  a                                           ; $6894: $9f
	dec  c                                           ; $6895: $0d
	nop                                              ; $6896: $00
	ld   a, [bc]                                     ; $6897: $0a
	dec  c                                           ; $6898: $0d
	nop                                              ; $6899: $00
	nop                                              ; $689a: $00
	rrca                                             ; $689b: $0f
	nop                                              ; $689c: $00
	ld   bc, $1e09                                   ; $689d: $01 $09 $1e
	add  hl, hl                                      ; $68a0: $29
	ld   bc, $0f00                                   ; $68a1: $01 $00 $0f
	nop                                              ; $68a4: $00
	ld   bc, $6701                                   ; $68a5: $01 $01 $67
	adc  l                                           ; $68a8: $8d
	adc  h                                           ; $68a9: $8c
	ld   l, c                                        ; $68aa: $69
	and  c                                           ; $68ab: $a1
	sbc  a                                           ; $68ac: $9f
	dec  c                                           ; $68ad: $0d
	ld   [bc], a                                     ; $68ae: $02
	and  l                                           ; $68af: $a5
	inc  b                                           ; $68b0: $04
	xor  d                                           ; $68b1: $aa
	ld   a, h                                        ; $68b2: $7c
	ld   e, b                                        ; $68b3: $58
	inc  b                                           ; $68b4: $04
	xor  l                                           ; $68b5: $ad
	ld   a, c                                        ; $68b6: $79
	ld   a, l                                        ; $68b7: $7d
	inc  bc                                          ; $68b8: $03
	ld   a, b                                        ; $68b9: $78
	inc  b                                           ; $68ba: $04
	ldh  [$5a], a                                    ; $68bb: $e0 $5a
	dec  c                                           ; $68bd: $0d
	inc  b                                           ; $68be: $04
	ld   b, l                                        ; $68bf: $45
	ld   [hl], c                                     ; $68c0: $71
	ld   [hl], h                                     ; $68c1: $74
	ld   d, d                                        ; $68c2: $52
	adc  h                                           ; $68c3: $8c
	ld   h, l                                        ; $68c4: $65
	ld   [hl], h                                     ; $68c5: $74
	rst  $38                                         ; $68c6: $ff
	rst  $38                                         ; $68c7: $ff
	dec  c                                           ; $68c8: $0d
	nop                                              ; $68c9: $00
	ld   a, [bc]                                     ; $68ca: $0a
	inc  e                                           ; $68cb: $1c
	inc  bc                                          ; $68cc: $03
	inc  b                                           ; $68cd: $04
	inc  b                                           ; $68ce: $04
	ld   bc, $546b                                   ; $68cf: $01 $6b $54
	sbc  [hl]                                        ; $68d2: $9e
	inc  bc                                          ; $68d3: $03
	jr   z, jr_066_68da                              ; $68d4: $28 $04

	ld   c, b                                        ; $68d6: $48
	ld   l, [hl]                                     ; $68d7: $6e
	ld   e, a                                        ; $68d8: $5f
	ld   [hl], a                                     ; $68d9: $77

jr_066_68da:
	rst  $38                                         ; $68da: $ff
	dec  c                                           ; $68db: $0d
	inc  bc                                          ; $68dc: $03
	dec  c                                           ; $68dd: $0d
	inc  b                                           ; $68de: $04
	ld   a, b                                        ; $68df: $78
	ld   a, b                                        ; $68e0: $78
	ld   d, d                                        ; $68e1: $52
	sbc  l                                           ; $68e2: $9d
	ld   a, e                                        ; $68e3: $7b
	sbc  a                                           ; $68e4: $9f
	dec  c                                           ; $68e5: $0d
	nop                                              ; $68e6: $00
	ld   a, [bc]                                     ; $68e7: $0a
	dec  c                                           ; $68e8: $0d
	nop                                              ; $68e9: $00
	nop                                              ; $68ea: $00
	rrca                                             ; $68eb: $0f
	nop                                              ; $68ec: $00
	ld   bc, $1e09                                   ; $68ed: $01 $09 $1e
	add  hl, hl                                      ; $68f0: $29
	ld   bc, $1c00                                   ; $68f1: $01 $00 $1c
	inc  bc                                          ; $68f4: $03
	inc  b                                           ; $68f5: $04
	inc  b                                           ; $68f6: $04
	ld   bc, $5250                                   ; $68f7: $01 $50 $52
	ld   [hl], h                                     ; $68fa: $74
	ld   a, b                                        ; $68fb: $78
	ld   d, d                                        ; $68fc: $52
	ld   a, h                                        ; $68fd: $7c
	ld   a, e                                        ; $68fe: $7b
	rst  $38                                         ; $68ff: $ff
	rst  $38                                         ; $6900: $ff
	sbc  a                                           ; $6901: $9f
	dec  c                                           ; $6902: $0d
	ld   h, [hl]                                     ; $6903: $66
	sub  c                                           ; $6904: $91
	ld   d, b                                        ; $6905: $50
	sbc  [hl]                                        ; $6906: $9e
	inc  bc                                          ; $6907: $03
	dec  c                                           ; $6908: $0d
	inc  b                                           ; $6909: $04
	ld   a, b                                        ; $690a: $78
	ld   a, b                                        ; $690b: $78
	ld   d, d                                        ; $690c: $52
	sbc  l                                           ; $690d: $9d
	sbc  a                                           ; $690e: $9f
	dec  c                                           ; $690f: $0d
	nop                                              ; $6910: $00
	ld   a, [bc]                                     ; $6911: $0a
	dec  c                                           ; $6912: $0d
	nop                                              ; $6913: $00
	nop                                              ; $6914: $00
	rrca                                             ; $6915: $0f
	nop                                              ; $6916: $00
	ld   bc, $1e09                                   ; $6917: $01 $09 $1e
	add  hl, hl                                      ; $691a: $29
	ld   bc, $0000                                   ; $691b: $01 $00 $00
	inc  b                                           ; $691e: $04
	add  b                                           ; $691f: $80
	inc  l                                           ; $6920: $2c
	ld   bc, $20ff                                   ; $6921: $01 $ff $20
	inc  b                                           ; $6924: $04
	add  b                                           ; $6925: $80
	dec  l                                           ; $6926: $2d
	ld   bc, $2000                                   ; $6927: $01 $00 $20
	inc  e                                           ; $692a: $1c
	inc  bc                                          ; $692b: $03
	ld   h, d                                        ; $692c: $62
	ld   [bc], a                                     ; $692d: $02
	nop                                              ; $692e: $00
	ld   bc, $2901                                   ; $692f: $01 $01 $29
	jr   nz, jr_066_6950                             ; $6932: $20 $1c

	nop                                              ; $6934: $00
	ld   c, $01                                      ; $6935: $0e $01
	rrca                                             ; $6937: $0f
	nop                                              ; $6938: $00
	ld   bc, $0102                                   ; $6939: $01 $02 $01
	sub  [hl]                                        ; $693c: $96
	ld   h, l                                        ; $693d: $65
	sbc  [hl]                                        ; $693e: $9e
	ld   [bc], a                                     ; $693f: $02
	and  l                                           ; $6940: $a5
	inc  b                                           ; $6941: $04
	xor  d                                           ; $6942: $aa
	sub  b                                           ; $6943: $90
	ld   d, d                                        ; $6944: $52
	ld   d, d                                        ; $6945: $52
	inc  b                                           ; $6946: $04
	inc  de                                          ; $6947: $13
	ld   [bc], a                                     ; $6948: $02
	and  c                                           ; $6949: $a1
	ld   l, [hl]                                     ; $694a: $6e
	ld   a, [$5a0d]                                  ; $694b: $fa $0d $5a
	and  c                                           ; $694e: $a1
	ld   a, [hl]                                     ; $694f: $7e

jr_066_6950:
	sbc  c                                           ; $6950: $99
	ld   l, h                                        ; $6951: $6c
	ld   a, [$0dfa]                                  ; $6952: $fa $fa $0d
	nop                                              ; $6955: $00
	ld   a, [bc]                                     ; $6956: $0a
	inc  d                                           ; $6957: $14
	ld   b, $01                                      ; $6958: $06 $01
	rrca                                             ; $695a: $0f
	dec  b                                           ; $695b: $05
	ld   bc, $0801                                   ; $695c: $01 $01 $08
	nop                                              ; $695f: $00
	ld   a, l                                        ; $6960: $7d
	and  c                                           ; $6961: $a1
	dec  c                                           ; $6962: $0d
	ld   l, a                                        ; $6963: $6f
	sub  l                                           ; $6964: $95
	ld   [hl], c                                     ; $6965: $71
	halt                                             ; $6966: $76
	xor  c                                           ; $6967: $a9
	xor  c                                           ; $6968: $a9
	ld   e, c                                        ; $6969: $59
	ld   sp, hl                                      ; $696a: $f9
	dec  c                                           ; $696b: $0d
	nop                                              ; $696c: $00
	ld   a, [bc]                                     ; $696d: $0a
	rrca                                             ; $696e: $0f
	nop                                              ; $696f: $00
	ld   bc, $0a14                                   ; $6970: $01 $14 $0a
	ld   bc, $7d01                                   ; $6973: $01 $01 $7d
	ld   d, d                                        ; $6976: $52
	sbc  [hl]                                        ; $6977: $9e
	ld   [hl], a                                     ; $6978: $77
	ld   d, h                                        ; $6979: $54
	ld   l, h                                        ; $697a: $6c
	sbc  a                                           ; $697b: $9f
	dec  c                                           ; $697c: $0d
	nop                                              ; $697d: $00
	ld   a, [bc]                                     ; $697e: $0a
	inc  e                                           ; $697f: $1c
	dec  b                                           ; $6980: $05
	rlca                                             ; $6981: $07
	rlca                                             ; $6982: $07
	ld   bc, $0008                                   ; $6983: $01 $08 $00
	ld   a, l                                        ; $6986: $7d
	and  c                                           ; $6987: $a1
	sbc  a                                           ; $6988: $9f
	dec  c                                           ; $6989: $0d
	ld   a, b                                        ; $698a: $78
	and  c                                           ; $698b: $a1
	ld   e, c                                        ; $698c: $59
	inc  b                                           ; $698d: $04
	and  e                                           ; $698e: $a3
	sbc  d                                           ; $698f: $9a
	ld   [hl], h                                     ; $6990: $74
	add  [hl]                                        ; $6991: $86
	and  c                                           ; $6992: $a1
	ld   sp, hl                                      ; $6993: $f9
	dec  c                                           ; $6994: $0d
	nop                                              ; $6995: $00
	ld   a, [bc]                                     ; $6996: $0a
	ld   bc, wRandomNumStruct                                   ; $6997: $01 $a7 $c2
	halt                                             ; $699a: $76
	ld   a, h                                        ; $699b: $7c
	inc  b                                           ; $699c: $04
	ldh  [$03], a                                    ; $699d: $e0 $03
	dec  hl                                          ; $699f: $2b
	sub  d                                           ; $69a0: $92
	add  h                                           ; $69a1: $84
	ld   [hl], c                                     ; $69a2: $71
	ld   l, l                                        ; $69a3: $6d
	sub  d                                           ; $69a4: $92
	sbc  e                                           ; $69a5: $9b
	sbc  a                                           ; $69a6: $9f
	dec  c                                           ; $69a7: $0d
	dec  b                                           ; $69a8: $05
	ld   b, l                                        ; $69a9: $45
	inc  b                                           ; $69aa: $04
	xor  d                                           ; $69ab: $aa
	ld   a, h                                        ; $69ac: $7c
	inc  b                                           ; $69ad: $04
	rst  $28                                         ; $69ae: $ef
	sbc  [hl]                                        ; $69af: $9e
	and  a                                           ; $69b0: $a7
	jp   nz, $047c                                   ; $69b1: $c2 $7c $04

	sub  l                                           ; $69b4: $95
	ld   [bc], a                                     ; $69b5: $02
	ld   hl, $0d79                                   ; $69b6: $21 $79 $0d
	dec  b                                           ; $69b9: $05
	db   $10                                         ; $69ba: $10
	sbc  c                                           ; $69bb: $99
	ld   [bc], a                                     ; $69bc: $02
	sbc  l                                           ; $69bd: $9d
	ld   d, h                                        ; $69be: $54
	ld   [hl], h                                     ; $69bf: $74
	ld   l, l                                        ; $69c0: $6d
	sub  d                                           ; $69c1: $92
	and  c                                           ; $69c2: $a1
	sbc  a                                           ; $69c3: $9f
	dec  c                                           ; $69c4: $0d
	nop                                              ; $69c5: $00
	ld   a, [bc]                                     ; $69c6: $0a
	dec  e                                           ; $69c7: $1d
	ld   b, b                                        ; $69c8: $40
	dec  d                                           ; $69c9: $15
	inc  bc                                          ; $69ca: $03
	dec  d                                           ; $69cb: $15
	ld   bc, $2903                                   ; $69cc: $01 $03 $29
	nop                                              ; $69cf: $00
	ld   bc, $e004                                   ; $69d0: $01 $04 $e0
	inc  bc                                          ; $69d3: $03
	dec  hl                                          ; $69d4: $2b
	and  b                                           ; $69d5: $a0
	sub  d                                           ; $69d6: $92
	add  h                                           ; $69d7: $84
	sbc  c                                           ; $69d8: $99
	and  c                                           ; $69d9: $a1
	ld   a, l                                        ; $69da: $7d
	dec  c                                           ; $69db: $0d
	inc  bc                                          ; $69dc: $03
	add  d                                           ; $69dd: $82
	halt                                             ; $69de: $76
	ld   h, l                                        ; $69df: $65
	ld   [hl], h                                     ; $69e0: $74
	inc  bc                                          ; $69e1: $03
	ld   l, c                                        ; $69e2: $69
	inc  bc                                          ; $69e3: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69e4: $cf
	sub  d                                           ; $69e5: $92
	ld   [hl], l                                     ; $69e6: $75
	sbc  a                                           ; $69e7: $9f
	dec  c                                           ; $69e8: $0d

jr_066_69e9:
	ld   h, c                                        ; $69e9: $61
	sbc  d                                           ; $69ea: $9a
	ld   e, c                                        ; $69eb: $59
	sub  a                                           ; $69ec: $97
	ld   a, l                                        ; $69ed: $7d
	ld   [bc], a                                     ; $69ee: $02
	and  c                                           ; $69ef: $a1
	ld   d, d                                        ; $69f0: $52
	ld   [hl], d                                     ; $69f1: $72
	ld   e, a                                        ; $69f2: $5f
	ld   [hl], h                                     ; $69f3: $74
	ld   a, b                                        ; $69f4: $78
	sbc  a                                           ; $69f5: $9f
	dec  c                                           ; $69f6: $0d
	nop                                              ; $69f7: $00
	ld   a, [bc]                                     ; $69f8: $0a
	inc  e                                           ; $69f9: $1c
	dec  b                                           ; $69fa: $05
	nop                                              ; $69fb: $00
	nop                                              ; $69fc: $00
	ld   bc, $7889                                   ; $69fd: $01 $89 $78
	sbc  [hl]                                        ; $6a00: $9e
	adc  h                                           ; $6a01: $8c
	ld   l, l                                        ; $6a02: $6d
	ld   a, b                                        ; $6a03: $78
	sbc  a                                           ; $6a04: $9f
	dec  c                                           ; $6a05: $0d
	nop                                              ; $6a06: $00
	ld   a, [bc]                                     ; $6a07: $0a
	dec  c                                           ; $6a08: $0d
	nop                                              ; $6a09: $00
	nop                                              ; $6a0a: $00
	rrca                                             ; $6a0b: $0f
	nop                                              ; $6a0c: $00
	ld   bc, $1e09                                   ; $6a0d: $01 $09 $1e
	add  hl, hl                                      ; $6a10: $29
	ld   bc, $0000                                   ; $6a11: $01 $00 $00
	rrca                                             ; $6a14: $0f
	nop                                              ; $6a15: $00
	ld   bc, $060d                                   ; $6a16: $01 $0d $06
	nop                                              ; $6a19: $00
	ld   [bc], a                                     ; $6a1a: $02
	ld   bc, $7d58                                   ; $6a1b: $01 $58 $7d
	sub  [hl]                                        ; $6a1e: $96
	ld   d, h                                        ; $6a1f: $54
	ld   h, d                                        ; $6a20: $62
	ld   h, h                                        ; $6a21: $64
	ld   d, d                                        ; $6a22: $52
	adc  h                                           ; $6a23: $8c
	ld   h, a                                        ; $6a24: $67
	sbc  a                                           ; $6a25: $9f
	dec  c                                           ; $6a26: $0d
	nop                                              ; $6a27: $00
	ld   a, [bc]                                     ; $6a28: $0a
	inc  e                                           ; $6a29: $1c
	ld   b, $01                                      ; $6a2a: $06 $01
	ld   bc, $5801                                   ; $6a2c: $01 $01 $58
	ld   d, h                                        ; $6a2f: $54
	sbc  [hl]                                        ; $6a30: $9e
	ld   [$9f00], sp                                 ; $6a31: $08 $00 $9f
	dec  c                                           ; $6a34: $0d
	ld   e, b                                        ; $6a35: $58
	ld   a, l                                        ; $6a36: $7d
	sub  [hl]                                        ; $6a37: $96
	ld   d, h                                        ; $6a38: $54
	sbc  a                                           ; $6a39: $9f
	dec  c                                           ; $6a3a: $0d
	nop                                              ; $6a3b: $00
	ld   a, [bc]                                     ; $6a3c: $0a
	rrca                                             ; $6a3d: $0f
	nop                                              ; $6a3e: $00
	ld   bc, $0101                                   ; $6a3f: $01 $01 $01
	inc  bc                                          ; $6a42: $03
	inc  b                                           ; $6a43: $04
	ld   c, c                                        ; $6a44: $49
	ld   a, h                                        ; $6a45: $7c
	dec  b                                           ; $6a46: $05
	jr   nz, jr_066_69e9                             ; $6a47: $20 $a0

	ld   h, l                                        ; $6a49: $65
	sub  [hl]                                        ; $6a4a: $96
	ld   d, h                                        ; $6a4b: $54
	ld   e, c                                        ; $6a4c: $59
	rst  $38                                         ; $6a4d: $ff
	rst  $38                                         ; $6a4e: $ff
	ld   bc, $0d04                                   ; $6a4f: $01 $04 $0d
	nop                                              ; $6a52: $00
	ld   a, [bc]                                     ; $6a53: $0a
	add  hl, de                                      ; $6a54: $19
	dec  b                                           ; $6a55: $05
	inc  bc                                          ; $6a56: $03
	inc  b                                           ; $6a57: $04
	ld   c, $03                                      ; $6a58: $0e $03
	sub  b                                           ; $6a5a: $90
	ld   a, c                                        ; $6a5b: $79
	ld   [hl], d                                     ; $6a5c: $72
	ld   d, d                                        ; $6a5d: $52
	ld   [hl], h                                     ; $6a5e: $74
	ld   [bc], a                                     ; $6a5f: $02
	jp   nz, $005d                                   ; $6a60: $c2 $5d $00

	nop                                              ; $6a63: $00
	inc  b                                           ; $6a64: $04
	rst  $10                                         ; $6a65: $d7
	inc  b                                           ; $6a66: $04
	ld   hl, $7279                                   ; $6a67: $21 $79 $72
	ld   d, d                                        ; $6a6a: $52
	ld   [hl], h                                     ; $6a6b: $74
	ld   [bc], a                                     ; $6a6c: $02
	jp   nz, $005d                                   ; $6a6d: $c2 $5d $00

	ld   bc, $9250                                   ; $6a70: $01 $50 $92
	adc  a                                           ; $6a73: $8f
	ld   a, c                                        ; $6a74: $79
	ld   [hl], d                                     ; $6a75: $72
	ld   d, d                                        ; $6a76: $52
	ld   [hl], h                                     ; $6a77: $74
	ld   [bc], a                                     ; $6a78: $02
	jp   nz, $005d                                   ; $6a79: $c2 $5d $00

	ld   [bc], a                                     ; $6a7c: $02
	rlca                                             ; $6a7d: $07
	xor  b                                           ; $6a7e: $a8
	nop                                              ; $6a7f: $00
	ld   [bc], a                                     ; $6a80: $02
	inc  bc                                          ; $6a81: $03
	ld   bc, $2000                                   ; $6a82: $01 $00 $20
	nop                                              ; $6a85: $00
	rlca                                             ; $6a86: $07
	halt                                             ; $6a87: $76
	ld   [bc], a                                     ; $6a88: $02
	ld   [bc], a                                     ; $6a89: $02
	inc  bc                                          ; $6a8a: $03
	ld   bc, $2001                                   ; $6a8b: $01 $01 $20
	nop                                              ; $6a8e: $00
	rlca                                             ; $6a8f: $07
	add  hl, de                                      ; $6a90: $19
	inc  bc                                          ; $6a91: $03
	ld   [bc], a                                     ; $6a92: $02
	inc  bc                                          ; $6a93: $03
	ld   bc, $2002                                   ; $6a94: $01 $02 $20
	nop                                              ; $6a97: $00
	ld   b, $87                                      ; $6a98: $06 $87
	nop                                              ; $6a9a: $00
	rrca                                             ; $6a9b: $0f
	ld   b, $01                                      ; $6a9c: $06 $01
	ld   bc, $a502                                   ; $6a9e: $01 $02 $a5
	inc  b                                           ; $6aa1: $04
	xor  d                                           ; $6aa2: $aa
	sub  b                                           ; $6aa3: $90
	ld   [bc], a                                     ; $6aa4: $02
	jr   nz, jr_066_6aab                             ; $6aa5: $20 $04

	xor  d                                           ; $6aa7: $aa
	sbc  [hl]                                        ; $6aa8: $9e
	sub  $a2                                         ; $6aa9: $d6 $a2

jr_066_6aab:
	and  l                                           ; $6aab: $a5
	ret                                              ; $6aac: $c9


	ld   l, [hl]                                     ; $6aad: $6e
	ld   l, d                                        ; $6aae: $6a
	sbc  a                                           ; $6aaf: $9f
	dec  c                                           ; $6ab0: $0d
	nop                                              ; $6ab1: $00
	ld   a, [bc]                                     ; $6ab2: $0a
	dec  c                                           ; $6ab3: $0d
	nop                                              ; $6ab4: $00
	nop                                              ; $6ab5: $00
	rrca                                             ; $6ab6: $0f
	nop                                              ; $6ab7: $00
	ld   bc, $1e09                                   ; $6ab8: $01 $09 $1e
	nop                                              ; $6abb: $00
	rrca                                             ; $6abc: $0f
	nop                                              ; $6abd: $00
	ld   bc, $ac01                                   ; $6abe: $01 $01 $ac
	push af                                          ; $6ac1: $f5
	bit  4, e                                        ; $6ac2: $cb $63
	and  c                                           ; $6ac4: $a1
	ld   [hl], h                                     ; $6ac5: $74
	sbc  [hl]                                        ; $6ac6: $9e
	inc  b                                           ; $6ac7: $04
	ld   c, $03                                      ; $6ac8: $0e $03
	sub  b                                           ; $6aca: $90
	inc  b                                           ; $6acb: $04
	ld   a, [bc]                                     ; $6acc: $0a
	inc  bc                                          ; $6acd: $03
	jp   nc, $0d7c                                   ; $6ace: $d2 $7c $0d

	ld   h, c                                        ; $6ad1: $61
	halt                                             ; $6ad2: $76
	and  b                                           ; $6ad3: $a0
	ld   [hl], a                                     ; $6ad4: $77
	ld   d, h                                        ; $6ad5: $54
	dec  b                                           ; $6ad6: $05
	pop  de                                          ; $6ad7: $d1
	ld   d, d                                        ; $6ad8: $52
	adc  h                                           ; $6ad9: $8c
	ld   h, a                                        ; $6ada: $67
	ld   e, c                                        ; $6adb: $59
	ld   sp, hl                                      ; $6adc: $f9
	dec  c                                           ; $6add: $0d
	nop                                              ; $6ade: $00
	ld   a, [bc]                                     ; $6adf: $0a
	inc  e                                           ; $6ae0: $1c
	ld   b, $00                                      ; $6ae1: $06 $00
	nop                                              ; $6ae3: $00
	ld   bc, $546b                                   ; $6ae4: $01 $6b $54
	ld   l, [hl]                                     ; $6ae7: $6e
	ld   a, b                                        ; $6ae8: $78
	rst  $38                                         ; $6ae9: $ff
	rst  $38                                         ; $6aea: $ff
	dec  c                                           ; $6aeb: $0d
	sub  b                                           ; $6aec: $90
	ld   [hl], c                                     ; $6aed: $71
	halt                                             ; $6aee: $76
	inc  b                                           ; $6aef: $04
	dec  c                                           ; $6af0: $0d
	ld   e, e                                        ; $6af1: $5b
	ld   l, l                                        ; $6af2: $6d
	ld   d, [hl]                                     ; $6af3: $56
	ld   a, b                                        ; $6af4: $78
	ld   d, d                                        ; $6af5: $52
	halt                                             ; $6af6: $76
	dec  c                                           ; $6af7: $0d
	ld   d, d                                        ; $6af8: $52
	ld   e, a                                        ; $6af9: $5f
	ld   a, b                                        ; $6afa: $78
	ld   d, d                                        ; $6afb: $52
	ld   a, b                                        ; $6afc: $78
	sbc  a                                           ; $6afd: $9f
	dec  c                                           ; $6afe: $0d
	nop                                              ; $6aff: $00
	ld   a, [bc]                                     ; $6b00: $0a
	add  hl, de                                      ; $6b01: $19
	dec  b                                           ; $6b02: $05
	inc  bc                                          ; $6b03: $03
	ld   d, d                                        ; $6b04: $52
	adc  h                                           ; $6b05: $8c
	ld   [bc], a                                     ; $6b06: $02
	dec  bc                                          ; $6b07: $0b
	inc  bc                                          ; $6b08: $03
	ld   h, l                                        ; $6b09: $65
	ld   a, c                                        ; $6b0a: $79
	ld   a, [$00f9]                                  ; $6b0b: $fa $f9 $00
	nop                                              ; $6b0e: $00
	ld   l, e                                        ; $6b0f: $6b
	ld   d, h                                        ; $6b10: $54
	dec  b                                           ; $6b11: $05
	pop  de                                          ; $6b12: $d1
	ld   d, d                                        ; $6b13: $52
	adc  h                                           ; $6b14: $8c
	ld   h, a                                        ; $6b15: $67
	sub  [hl]                                        ; $6b16: $96
	nop                                              ; $6b17: $00
	ld   bc, $a502                                   ; $6b18: $01 $02 $a5
	ld   [hl], l                                     ; $6b1b: $75
	sub  b                                           ; $6b1c: $90
	xor  h                                           ; $6b1d: $ac
	call nz, $a5b4                                   ; $6b1e: $c4 $b4 $a5
	and  l                                           ; $6b21: $a5
	ld   [hl], l                                     ; $6b22: $75
	ld   h, a                                        ; $6b23: $67
	sub  [hl]                                        ; $6b24: $96
	nop                                              ; $6b25: $00
	ld   [bc], a                                     ; $6b26: $02
	rlca                                             ; $6b27: $07
	ld   sp, $0201                                   ; $6b28: $31 $01 $02
	inc  bc                                          ; $6b2b: $03
	ld   bc, $2000                                   ; $6b2c: $01 $00 $20
	nop                                              ; $6b2f: $00
	rlca                                             ; $6b30: $07
	ld   a, [hl]                                     ; $6b31: $7e
	ld   bc, $0302                                   ; $6b32: $01 $02 $03
	ld   bc, $2001                                   ; $6b35: $01 $01 $20
	nop                                              ; $6b38: $00
	rlca                                             ; $6b39: $07
	add  $01                                         ; $6b3a: $c6 $01
	ld   [bc], a                                     ; $6b3c: $02
	inc  bc                                          ; $6b3d: $03
	ld   bc, $2002                                   ; $6b3e: $01 $02 $20
	nop                                              ; $6b41: $00
	ld   b, $11                                      ; $6b42: $06 $11
	ld   [bc], a                                     ; $6b44: $02
	rrca                                             ; $6b45: $0f
	nop                                              ; $6b46: $00
	ld   bc, $5201                                   ; $6b47: $01 $01 $52
	adc  h                                           ; $6b4a: $8c
	ld   [bc], a                                     ; $6b4b: $02
	dec  bc                                          ; $6b4c: $0b
	inc  bc                                          ; $6b4d: $03
	ld   h, l                                        ; $6b4e: $65
	ld   a, c                                        ; $6b4f: $79
	ld   [hl], l                                     ; $6b50: $75
	ld   h, a                                        ; $6b51: $67
	ld   e, c                                        ; $6b52: $59
	ld   sp, hl                                      ; $6b53: $f9
	dec  c                                           ; $6b54: $0d
	dec  b                                           ; $6b55: $05
	cp   h                                           ; $6b56: $bc
	inc  b                                           ; $6b57: $04
	sbc  [hl]                                        ; $6b58: $9e
	ld   e, e                                        ; $6b59: $5b
	ld   l, l                                        ; $6b5a: $6d
	ld   d, [hl]                                     ; $6b5b: $56
	sub  a                                           ; $6b5c: $97
	sbc  d                                           ; $6b5d: $9a
	ld   [hl], h                                     ; $6b5e: $74
	ld   d, d                                        ; $6b5f: $52
	sbc  c                                           ; $6b60: $99
	ld   h, [hl]                                     ; $6b61: $66
	sub  c                                           ; $6b62: $91
	dec  c                                           ; $6b63: $0d
	ld   a, b                                        ; $6b64: $78
	ld   d, d                                        ; $6b65: $52
	ld   [hl], l                                     ; $6b66: $75
	ld   h, a                                        ; $6b67: $67
	ld   e, c                                        ; $6b68: $59
	sbc  a                                           ; $6b69: $9f
	dec  c                                           ; $6b6a: $0d
	nop                                              ; $6b6b: $00
	ld   a, [bc]                                     ; $6b6c: $0a
	inc  e                                           ; $6b6d: $1c
	ld   b, $02                                      ; $6b6e: $06 $02
	ld   [bc], a                                     ; $6b70: $02
	ld   bc, $e3c1                                   ; $6b71: $01 $c1 $e3
	ld   l, [hl]                                     ; $6b74: $6e
	ld   a, b                                        ; $6b75: $78
	sbc  a                                           ; $6b76: $9f
	inc  b                                           ; $6b77: $04
	ld   a, [bc]                                     ; $6b78: $0a
	inc  bc                                          ; $6b79: $03
	jp   nc, Jump_066_505a                           ; $6b7a: $d2 $5a $50

	and  c                                           ; $6b7d: $a1
	ld   a, b                                        ; $6b7e: $78
	ld   a, c                                        ; $6b7f: $79
	dec  c                                           ; $6b80: $0d
	ld   a, b                                        ; $6b81: $78
	and  c                                           ; $6b82: $a1
	ld   h, [hl]                                     ; $6b83: $66
	sub  c                                           ; $6b84: $91
	ld   e, l                                        ; $6b85: $5d
	ld   h, [hl]                                     ; $6b86: $66
	sub  c                                           ; $6b87: $91
	pop  bc                                          ; $6b88: $c1
	db   $e3                                         ; $6b89: $e3
	ld   l, [hl]                                     ; $6b8a: $6e
	sbc  a                                           ; $6b8b: $9f
	dec  c                                           ; $6b8c: $0d
	nop                                              ; $6b8d: $00
	ld   a, [bc]                                     ; $6b8e: $0a
	ld   b, $11                                      ; $6b8f: $06 $11
	ld   [bc], a                                     ; $6b91: $02
	rrca                                             ; $6b92: $0f
	nop                                              ; $6b93: $00
	ld   bc, $6201                                   ; $6b94: $01 $01 $62
	sub  b                                           ; $6b97: $90
	ld   [hl], c                                     ; $6b98: $71
	halt                                             ; $6b99: $76
	sub  b                                           ; $6b9a: $90
	sbc  a                                           ; $6b9b: $9f
	dec  c                                           ; $6b9c: $0d
	adc  h                                           ; $6b9d: $8c
	ld   h, e                                        ; $6b9e: $63
	ld   a, c                                        ; $6b9f: $79
	sbc  [hl]                                        ; $6ba0: $9e
	inc  b                                           ; $6ba1: $04
	ld   l, l                                        ; $6ba2: $6d
	sub  b                                           ; $6ba3: $90
	ld   l, e                                        ; $6ba4: $6b
	ld   d, h                                        ; $6ba5: $54
	dec  b                                           ; $6ba6: $05
	pop  de                                          ; $6ba7: $d1
	ld   d, d                                        ; $6ba8: $52
	adc  h                                           ; $6ba9: $8c
	ld   h, a                                        ; $6baa: $67
	sub  [hl]                                        ; $6bab: $96
	sbc  a                                           ; $6bac: $9f
	dec  c                                           ; $6bad: $0d
	nop                                              ; $6bae: $00
	ld   a, [bc]                                     ; $6baf: $0a
	inc  e                                           ; $6bb0: $1c
	ld   b, $02                                      ; $6bb1: $06 $02
	ld   [bc], a                                     ; $6bb3: $02
	dec  e                                           ; $6bb4: $1d
	ld   b, b                                        ; $6bb5: $40
	ld   d, $03                                      ; $6bb6: $16 $03
	ld   d, $01                                      ; $6bb8: $16 $01
	ld   [bc], a                                     ; $6bba: $02
	add  hl, hl                                      ; $6bbb: $29
	nop                                              ; $6bbc: $00
	ld   bc, $546b                                   ; $6bbd: $01 $6b $54
	ld   [bc], a                                     ; $6bc0: $02
	sbc  l                                           ; $6bc1: $9d
	ld   d, h                                        ; $6bc2: $54
	ld   e, b                                        ; $6bc3: $58
	inc  bc                                          ; $6bc4: $03
	ld   c, a                                        ; $6bc5: $4f
	sub  b                                           ; $6bc6: $90
	dec  c                                           ; $6bc7: $0d
	sub  b                                           ; $6bc8: $90
	ld   [hl], c                                     ; $6bc9: $71
	halt                                             ; $6bca: $76
	inc  b                                           ; $6bcb: $04
	dec  c                                           ; $6bcc: $0d
	ld   e, e                                        ; $6bcd: $5b
	ld   l, l                                        ; $6bce: $6d
	ld   d, [hl]                                     ; $6bcf: $56
	sbc  e                                           ; $6bd0: $9b
	sub  [hl]                                        ; $6bd1: $96
	ld   a, b                                        ; $6bd2: $78
	ld   a, [$000d]                                  ; $6bd3: $fa $0d $00
	ld   a, [bc]                                     ; $6bd6: $0a
	ld   b, $11                                      ; $6bd7: $06 $11
	ld   [bc], a                                     ; $6bd9: $02
	rrca                                             ; $6bda: $0f
	nop                                              ; $6bdb: $00
	ld   bc, $0201                                   ; $6bdc: $01 $01 $02
	and  l                                           ; $6bdf: $a5
	ld   [hl], l                                     ; $6be0: $75
	sub  b                                           ; $6be1: $90
	dec  b                                           ; $6be2: $05
	cp   h                                           ; $6be3: $bc
	inc  b                                           ; $6be4: $04
	sbc  [hl]                                        ; $6be5: $9e
	xor  h                                           ; $6be6: $ac
	call nz, $a5b4                                   ; $6be7: $c4 $b4 $a5
	and  l                                           ; $6bea: $a5
	dec  c                                           ; $6beb: $0d
	halt                                             ; $6bec: $76
	dec  b                                           ; $6bed: $05
	pop  de                                          ; $6bee: $d1
	ld   d, d                                        ; $6bef: $52
	adc  h                                           ; $6bf0: $8c
	ld   h, a                                        ; $6bf1: $67
	ld   e, a                                        ; $6bf2: $5f
	ld   [hl], a                                     ; $6bf3: $77
	rst  $38                                         ; $6bf4: $ff
	rst  $38                                         ; $6bf5: $ff
	dec  c                                           ; $6bf6: $0d
	nop                                              ; $6bf7: $00
	ld   a, [bc]                                     ; $6bf8: $0a
	inc  e                                           ; $6bf9: $1c
	ld   b, $02                                      ; $6bfa: $06 $02
	ld   [bc], a                                     ; $6bfc: $02
	ld   bc, $c4ac                                   ; $6bfd: $01 $ac $c4
	or   h                                           ; $6c00: $b4
	and  l                                           ; $6c01: $a5
	and  l                                           ; $6c02: $a5
	ld   l, [hl]                                     ; $6c03: $6e
	ld   e, a                                        ; $6c04: $5f
	ld   h, [hl]                                     ; $6c05: $66
	sub  c                                           ; $6c06: $91
	pop  bc                                          ; $6c07: $c1
	db   $e3                                         ; $6c08: $e3
	dec  c                                           ; $6c09: $0d
	ld   a, b                                        ; $6c0a: $78
	and  c                                           ; $6c0b: $a1
	ld   l, [hl]                                     ; $6c0c: $6e
	sub  [hl]                                        ; $6c0d: $96
	ld   a, b                                        ; $6c0e: $78
	sbc  a                                           ; $6c0f: $9f
	dec  c                                           ; $6c10: $0d
	inc  b                                           ; $6c11: $04
	dec  bc                                          ; $6c12: $0b
	inc  b                                           ; $6c13: $04
	pop  de                                          ; $6c14: $d1
	ld   e, d                                        ; $6c15: $5a
	halt                                             ; $6c16: $76
	sub  b                                           ; $6c17: $90
	ld   a, b                                        ; $6c18: $78
	sbc  l                                           ; $6c19: $9d
	ld   a, b                                        ; $6c1a: $78
	ld   d, d                                        ; $6c1b: $52
	halt                                             ; $6c1c: $76
	ld   a, b                                        ; $6c1d: $78
	sbc  a                                           ; $6c1e: $9f
	dec  c                                           ; $6c1f: $0d
	nop                                              ; $6c20: $00
	ld   a, [bc]                                     ; $6c21: $0a
	ld   b, $11                                      ; $6c22: $06 $11
	ld   [bc], a                                     ; $6c24: $02
	inc  e                                           ; $6c25: $1c
	ld   b, $01                                      ; $6c26: $06 $01
	ld   bc, $7501                                   ; $6c28: $01 $01 $75
	sub  b                                           ; $6c2b: $90
	adc  h                                           ; $6c2c: $8c
	ld   d, b                                        ; $6c2d: $50
	sbc  [hl]                                        ; $6c2e: $9e
	ld   [bc], a                                     ; $6c2f: $02
	sbc  b                                           ; $6c30: $98
	inc  bc                                          ; $6c31: $03
	nop                                              ; $6c32: $00
	ld   a, h                                        ; $6c33: $7c
	inc  b                                           ; $6c34: $04
	ld   a, [bc]                                     ; $6c35: $0a
	inc  bc                                          ; $6c36: $03
	jp   nc, $6576                                   ; $6c37: $d2 $76 $65

	ld   [hl], h                                     ; $6c3a: $74
	ld   a, l                                        ; $6c3b: $7d
	dec  c                                           ; $6c3c: $0d
	inc  bc                                          ; $6c3d: $03
	ld   l, c                                        ; $6c3e: $69
	ld   [bc], a                                     ; $6c3f: $02
	cp   [hl]                                        ; $6c40: $be
	ld   a, c                                        ; $6c41: $79
	ret  nc                                          ; $6c42: $d0

	rst  JumpTable                                         ; $6c43: $df
	ld   [hl], c                                     ; $6c44: $71
	ld   [hl], h                                     ; $6c45: $74
	sbc  c                                           ; $6c46: $99
	halt                                             ; $6c47: $76
	dec  b                                           ; $6c48: $05
	pop  de                                          ; $6c49: $d1
	ld   d, h                                        ; $6c4a: $54
	ld   l, d                                        ; $6c4b: $6a
	sbc  a                                           ; $6c4c: $9f
	dec  c                                           ; $6c4d: $0d
	ld   d, b                                        ; $6c4e: $50
	ld   l, l                                        ; $6c4f: $6d
	ld   d, d                                        ; $6c50: $52
	ld   a, l                                        ; $6c51: $7d
	ld   [bc], a                                     ; $6c52: $02
	and  c                                           ; $6c53: $a1
	ld   a, c                                        ; $6c54: $79
	inc  b                                           ; $6c55: $04
	ld   b, l                                        ; $6c56: $45
	ld   [hl], c                                     ; $6c57: $71
	ld   [hl], h                                     ; $6c58: $74
	sbc  c                                           ; $6c59: $99
	sub  [hl]                                        ; $6c5a: $96
	sbc  a                                           ; $6c5b: $9f
	dec  c                                           ; $6c5c: $0d
	nop                                              ; $6c5d: $00
	ld   a, [bc]                                     ; $6c5e: $0a
	inc  e                                           ; $6c5f: $1c
	ld   b, $00                                      ; $6c60: $06 $00
	nop                                              ; $6c62: $00
	ld   bc, $7158                                   ; $6c63: $01 $58 $71
	halt                                             ; $6c66: $76
	sbc  [hl]                                        ; $6c67: $9e
	inc  bc                                          ; $6c68: $03
	ld   l, l                                        ; $6c69: $6d
	dec  b                                           ; $6c6a: $05
	add  hl, de                                      ; $6c6b: $19
	ld   a, h                                        ; $6c6c: $7c
	dec  b                                           ; $6c6d: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c6e: $cf
	adc  h                                           ; $6c6f: $8c
	sbc  c                                           ; $6c70: $99
	dec  c                                           ; $6c71: $0d
	inc  bc                                          ; $6c72: $03
	ld   l, a                                        ; $6c73: $6f
	ld   [bc], a                                     ; $6c74: $02
	xor  c                                           ; $6c75: $a9
	ld   l, [hl]                                     ; $6c76: $6e
	ld   l, d                                        ; $6c77: $6a
	sbc  a                                           ; $6c78: $9f
	ld   d, d                                        ; $6c79: $52
	ld   l, e                                        ; $6c7a: $6b
	ld   h, b                                        ; $6c7b: $60
	sub  [hl]                                        ; $6c7c: $96
	sbc  a                                           ; $6c7d: $9f
	dec  c                                           ; $6c7e: $0d
	nop                                              ; $6c7f: $00
	ld   a, [bc]                                     ; $6c80: $0a
	dec  c                                           ; $6c81: $0d
	nop                                              ; $6c82: $00
	nop                                              ; $6c83: $00
	rrca                                             ; $6c84: $0f
	nop                                              ; $6c85: $00
	ld   bc, $1e09                                   ; $6c86: $01 $09 $1e
	nop                                              ; $6c89: $00
	rrca                                             ; $6c8a: $0f
	nop                                              ; $6c8b: $00
	ld   bc, $0401                                   ; $6c8c: $01 $01 $04
	rst  $10                                         ; $6c8f: $d7
	inc  b                                           ; $6c90: $04
	ld   hl, $0b04                                   ; $6c91: $21 $04 $0b
	inc  bc                                          ; $6c94: $03
	ld   h, h                                        ; $6c95: $64
	ld   [hl], c                                     ; $6c96: $71
	ld   [hl], h                                     ; $6c97: $74
	sbc  [hl]                                        ; $6c98: $9e
	xor  h                                           ; $6c99: $ac
	push af                                          ; $6c9a: $f5
	bit  4, e                                        ; $6c9b: $cb $63
	and  c                                           ; $6c9d: $a1
	ld   e, c                                        ; $6c9e: $59
	sub  a                                           ; $6c9f: $97
	dec  c                                           ; $6ca0: $0d
	ld   [bc], a                                     ; $6ca1: $02
	sub  l                                           ; $6ca2: $95
	ld   [hl], h                                     ; $6ca3: $74
	sbc  [hl]                                        ; $6ca4: $9e
	ld   [hl], a                                     ; $6ca5: $77
	and  c                                           ; $6ca6: $a1
	ld   a, b                                        ; $6ca7: $78
	inc  b                                           ; $6ca8: $04
	ld   a, b                                        ; $6ca9: $78
	ld   [hl], l                                     ; $6caa: $75
	ld   h, a                                        ; $6cab: $67
	ld   e, c                                        ; $6cac: $59
	ld   sp, hl                                      ; $6cad: $f9
	dec  c                                           ; $6cae: $0d
	nop                                              ; $6caf: $00
	ld   a, [bc]                                     ; $6cb0: $0a
	inc  e                                           ; $6cb1: $1c
	ld   b, $01                                      ; $6cb2: $06 $01
	ld   bc, $0301                                   ; $6cb4: $01 $01 $03
	add  l                                           ; $6cb7: $85
	inc  b                                           ; $6cb8: $04
	xor  e                                           ; $6cb9: $ab
	inc  bc                                          ; $6cba: $03
	add  d                                           ; $6cbb: $82
	ld   sp, hl                                      ; $6cbc: $f9
	dec  c                                           ; $6cbd: $0d
	ld   l, e                                        ; $6cbe: $6b
	ld   d, h                                        ; $6cbf: $54
	ld   l, [hl]                                     ; $6cc0: $6e
	ld   a, b                                        ; $6cc1: $78
	sbc  [hl]                                        ; $6cc2: $9e
	adc  h                                           ; $6cc3: $8c
	sbc  [hl]                                        ; $6cc4: $9e
	dec  c                                           ; $6cc5: $0d
	inc  b                                           ; $6cc6: $04
	ret  c                                           ; $6cc7: $d8

	inc  b                                           ; $6cc8: $04
	xor  h                                           ; $6cc9: $ac
	ld   d, d                                        ; $6cca: $52
	ld   e, b                                        ; $6ccb: $58
	ld   [hl], c                                     ; $6ccc: $71
	ld   h, e                                        ; $6ccd: $63
	and  c                                           ; $6cce: $a1
	ld   [hl], l                                     ; $6ccf: $75
	ld   a, l                                        ; $6cd0: $7d
	ld   d, b                                        ; $6cd1: $50
	sbc  c                                           ; $6cd2: $99
	ld   a, b                                        ; $6cd3: $78
	sbc  a                                           ; $6cd4: $9f
	dec  c                                           ; $6cd5: $0d
	nop                                              ; $6cd6: $00
	ld   a, [bc]                                     ; $6cd7: $0a
	ld   bc, $9075                                   ; $6cd8: $01 $75 $90
	sbc  [hl]                                        ; $6cdb: $9e
	inc  bc                                          ; $6cdc: $03
	ld   l, a                                        ; $6cdd: $6f
	ld   bc, $5014                                   ; $6cde: $01 $14 $50
	sbc  d                                           ; $6ce1: $9a
	ld   [hl], l                                     ; $6ce2: $75
	sub  b                                           ; $6ce3: $90
	dec  c                                           ; $6ce4: $0d
	dec  b                                           ; $6ce5: $05
	ld   a, d                                        ; $6ce6: $7a
	inc  bc                                          ; $6ce7: $03
	add  d                                           ; $6ce8: $82
	sub  a                                           ; $6ce9: $97
	ld   h, l                                        ; $6cea: $65
	ld   e, l                                        ; $6ceb: $5d
	sbc  [hl]                                        ; $6cec: $9e
	ld   h, l                                        ; $6ced: $65
	sub  c                                           ; $6cee: $91
	ld   e, e                                        ; $6cef: $5b
	ld   [hl], c                                     ; $6cf0: $71
	ld   [hl], h                                     ; $6cf1: $74
	dec  c                                           ; $6cf2: $0d
	ld   a, b                                        ; $6cf3: $78
	sbc  c                                           ; $6cf4: $99
	ld   h, c                                        ; $6cf5: $61
	halt                                             ; $6cf6: $76
	sub  b                                           ; $6cf7: $90
	ld   d, b                                        ; $6cf8: $50
	sbc  c                                           ; $6cf9: $99
	and  c                                           ; $6cfa: $a1
	ld   l, [hl]                                     ; $6cfb: $6e
	ld   l, d                                        ; $6cfc: $6a
	sbc  a                                           ; $6cfd: $9f
	dec  c                                           ; $6cfe: $0d
	nop                                              ; $6cff: $00
	ld   a, [bc]                                     ; $6d00: $0a
	ld   bc, $7158                                   ; $6d01: $01 $58 $71
	halt                                             ; $6d04: $76
	sbc  [hl]                                        ; $6d05: $9e
	inc  bc                                          ; $6d06: $03
	ld   l, a                                        ; $6d07: $6f
	ld   [bc], a                                     ; $6d08: $02
	xor  c                                           ; $6d09: $a9
	ld   l, [hl]                                     ; $6d0a: $6e
	sbc  a                                           ; $6d0b: $9f
	dec  c                                           ; $6d0c: $0d
	ld   h, [hl]                                     ; $6d0d: $66
	sub  c                                           ; $6d0e: $91
	sbc  [hl]                                        ; $6d0f: $9e
	ld   [bc], a                                     ; $6d10: $02
	and  l                                           ; $6d11: $a5
	inc  b                                           ; $6d12: $04
	xor  d                                           ; $6d13: $aa
	sub  b                                           ; $6d14: $90
	ld   [bc], a                                     ; $6d15: $02
	jr   nz, jr_066_6d1c                             ; $6d16: $20 $04

	xor  d                                           ; $6d18: $aa
	dec  c                                           ; $6d19: $0d
	sub  $a2                                         ; $6d1a: $d6 $a2

jr_066_6d1c:
	and  l                                           ; $6d1c: $a5
	ret                                              ; $6d1d: $c9


	ld   l, [hl]                                     ; $6d1e: $6e
	ld   l, d                                        ; $6d1f: $6a
	ld   a, [$000d]                                  ; $6d20: $fa $0d $00
	ld   a, [bc]                                     ; $6d23: $0a
	dec  c                                           ; $6d24: $0d
	nop                                              ; $6d25: $00
	nop                                              ; $6d26: $00
	rrca                                             ; $6d27: $0f
	nop                                              ; $6d28: $00
	ld   bc, $1e09                                   ; $6d29: $01 $09 $1e
	nop                                              ; $6d2c: $00
	rrca                                             ; $6d2d: $0f
	nop                                              ; $6d2e: $00
	ld   bc, $5001                                   ; $6d2f: $01 $01 $50
	sub  d                                           ; $6d32: $92
	adc  a                                           ; $6d33: $8f
	ld   h, e                                        ; $6d34: $63
	and  c                                           ; $6d35: $a1
	ld   [hl], h                                     ; $6d36: $74
	sbc  [hl]                                        ; $6d37: $9e
	xor  h                                           ; $6d38: $ac
	push af                                          ; $6d39: $f5
	bit  4, e                                        ; $6d3a: $cb $63
	and  c                                           ; $6d3c: $a1
	ld   e, c                                        ; $6d3d: $59
	sub  a                                           ; $6d3e: $97
	dec  c                                           ; $6d3f: $0d
	ld   [bc], a                                     ; $6d40: $02
	sub  l                                           ; $6d41: $95
	ld   [hl], h                                     ; $6d42: $74
	sbc  [hl]                                        ; $6d43: $9e
	ld   [hl], a                                     ; $6d44: $77
	and  c                                           ; $6d45: $a1
	ld   a, b                                        ; $6d46: $78
	inc  b                                           ; $6d47: $04
	ld   a, b                                        ; $6d48: $78
	ld   [hl], l                                     ; $6d49: $75
	ld   h, a                                        ; $6d4a: $67
	ld   e, c                                        ; $6d4b: $59
	ld   sp, hl                                      ; $6d4c: $f9
	dec  c                                           ; $6d4d: $0d
	nop                                              ; $6d4e: $00
	ld   a, [bc]                                     ; $6d4f: $0a
	inc  e                                           ; $6d50: $1c
	ld   b, $00                                      ; $6d51: $06 $00
	nop                                              ; $6d53: $00
	ld   bc, $9250                                   ; $6d54: $01 $50 $92
	adc  a                                           ; $6d57: $8f
	ld   h, e                                        ; $6d58: $63
	and  c                                           ; $6d59: $a1
	ld   a, l                                        ; $6d5a: $7d
	rst  $38                                         ; $6d5b: $ff
	rst  $38                                         ; $6d5c: $ff
	dec  c                                           ; $6d5d: $0d
	inc  bc                                          ; $6d5e: $03
	adc  e                                           ; $6d5f: $8b
	ld   a, l                                        ; $6d60: $7d
	ld   d, b                                        ; $6d61: $50
	ld   d, b                                        ; $6d62: $50
	ld   [bc], a                                     ; $6d63: $02
	sub  l                                           ; $6d64: $95
	ld   d, [hl]                                     ; $6d65: $56
	ld   [hl], h                                     ; $6d66: $74
	sub  b                                           ; $6d67: $90
	dec  c                                           ; $6d68: $0d
	inc  b                                           ; $6d69: $04
	ld   d, d                                        ; $6d6a: $52
	inc  bc                                          ; $6d6b: $03
	db   $10                                         ; $6d6c: $10
	ld   a, h                                        ; $6d6d: $7c
	inc  bc                                          ; $6d6e: $03
	ld   [hl], l                                     ; $6d6f: $75
	ld   b, $02                                      ; $6d70: $06 $02
	ld   e, d                                        ; $6d72: $5a
	ld   d, b                                        ; $6d73: $50
	sbc  c                                           ; $6d74: $99
	and  c                                           ; $6d75: $a1
	ld   l, [hl]                                     ; $6d76: $6e
	ld   l, d                                        ; $6d77: $6a
	sbc  a                                           ; $6d78: $9f
	dec  c                                           ; $6d79: $0d
	nop                                              ; $6d7a: $00
	ld   a, [bc]                                     ; $6d7b: $0a
	ld   bc, $cb04                                   ; $6d7c: $01 $04 $cb
	ld   l, a                                        ; $6d7f: $6f
	sub  l                                           ; $6d80: $95
	ld   [hl], c                                     ; $6d81: $71
	halt                                             ; $6d82: $76
	ld   [bc], a                                     ; $6d83: $02
	sub  l                                           ; $6d84: $95
	ld   l, l                                        ; $6d85: $6d
	ld   e, a                                        ; $6d86: $5f
	ld   [hl], a                                     ; $6d87: $77
	sbc  [hl]                                        ; $6d88: $9e
	dec  c                                           ; $6d89: $0d
	sub  b                                           ; $6d8a: $90
	ld   h, l                                        ; $6d8b: $65
	ld   e, c                                        ; $6d8c: $59
	ld   h, l                                        ; $6d8d: $65
	ld   l, l                                        ; $6d8e: $6d
	sub  a                                           ; $6d8f: $97
	ld   d, b                                        ; $6d90: $50
	ld   l, l                                        ; $6d91: $6d
	ld   d, d                                        ; $6d92: $52
	halt                                             ; $6d93: $76
	dec  c                                           ; $6d94: $0d
	ld   d, d                                        ; $6d95: $52
	ld   d, d                                        ; $6d96: $52
	inc  bc                                          ; $6d97: $03
	ld   c, [hl]                                     ; $6d98: $4e
	inc  b                                           ; $6d99: $04
	ld   a, l                                        ; $6d9a: $7d
	ld   [hl], l                                     ; $6d9b: $75
	ld   e, e                                        ; $6d9c: $5b
	sbc  c                                           ; $6d9d: $99
	ld   e, c                                        ; $6d9e: $59
	sub  b                                           ; $6d9f: $90
	ld   a, b                                        ; $6da0: $78
	rst  $38                                         ; $6da1: $ff
	rst  $38                                         ; $6da2: $ff
	dec  c                                           ; $6da3: $0d
	nop                                              ; $6da4: $00
	ld   a, [bc]                                     ; $6da5: $0a
	ld   bc, $7158                                   ; $6da6: $01 $58 $71
	halt                                             ; $6da9: $76
	sbc  [hl]                                        ; $6daa: $9e
	inc  bc                                          ; $6dab: $03
	ld   l, a                                        ; $6dac: $6f
	ld   [bc], a                                     ; $6dad: $02
	xor  c                                           ; $6dae: $a9
	ld   l, [hl]                                     ; $6daf: $6e
	sbc  a                                           ; $6db0: $9f
	dec  c                                           ; $6db1: $0d
	ld   h, [hl]                                     ; $6db2: $66
	sub  c                                           ; $6db3: $91
	sbc  [hl]                                        ; $6db4: $9e
	ld   [bc], a                                     ; $6db5: $02
	and  l                                           ; $6db6: $a5
	inc  b                                           ; $6db7: $04
	xor  d                                           ; $6db8: $aa
	sub  b                                           ; $6db9: $90
	ld   [bc], a                                     ; $6dba: $02
	jr   nz, jr_066_6dc1                             ; $6dbb: $20 $04

	xor  d                                           ; $6dbd: $aa
	dec  c                                           ; $6dbe: $0d
	sub  $a2                                         ; $6dbf: $d6 $a2

jr_066_6dc1:
	and  l                                           ; $6dc1: $a5
	ret                                              ; $6dc2: $c9


	ld   l, [hl]                                     ; $6dc3: $6e
	ld   l, d                                        ; $6dc4: $6a
	ld   a, [$000d]                                  ; $6dc5: $fa $0d $00
	ld   a, [bc]                                     ; $6dc8: $0a
	dec  c                                           ; $6dc9: $0d
	nop                                              ; $6dca: $00
	nop                                              ; $6dcb: $00
	rrca                                             ; $6dcc: $0f
	nop                                              ; $6dcd: $00
	ld   bc, $1e09                                   ; $6dce: $01 $09 $1e
	nop                                              ; $6dd1: $00
	nop                                              ; $6dd2: $00
	rrca                                             ; $6dd3: $0f
	nop                                              ; $6dd4: $00
	ld   bc, $030d                                   ; $6dd5: $01 $0d $03
	nop                                              ; $6dd8: $00
	ld   [bc], a                                     ; $6dd9: $02
	ld   bc, $7d58                                   ; $6dda: $01 $58 $7d
	sub  [hl]                                        ; $6ddd: $96
	ld   d, h                                        ; $6dde: $54
	ld   h, d                                        ; $6ddf: $62
	ld   h, h                                        ; $6de0: $64
	ld   d, d                                        ; $6de1: $52
	adc  h                                           ; $6de2: $8c
	ld   h, a                                        ; $6de3: $67
	sbc  [hl]                                        ; $6de4: $9e
	dec  c                                           ; $6de5: $0d
	rst  JumpTable                                         ; $6de6: $df
	db   $ec                                         ; $6de7: $ec
	and  e                                           ; $6de8: $a3
	ld   h, e                                        ; $6de9: $63
	and  c                                           ; $6dea: $a1
	sbc  a                                           ; $6deb: $9f
	dec  c                                           ; $6dec: $0d
	nop                                              ; $6ded: $00
	ld   a, [bc]                                     ; $6dee: $0a
	inc  e                                           ; $6def: $1c
	inc  bc                                          ; $6df0: $03
	inc  bc                                          ; $6df1: $03
	inc  bc                                          ; $6df2: $03
	ld   bc, $7d58                                   ; $6df3: $01 $58 $7d
	sub  [hl]                                        ; $6df6: $96
	ld   d, h                                        ; $6df7: $54
	sbc  a                                           ; $6df8: $9f
	dec  c                                           ; $6df9: $0d
	nop                                              ; $6dfa: $00
	ld   a, [bc]                                     ; $6dfb: $0a
	rrca                                             ; $6dfc: $0f
	nop                                              ; $6dfd: $00
	ld   bc, $0101                                   ; $6dfe: $01 $01 $01
	inc  bc                                          ; $6e01: $03
	ld   a, b                                        ; $6e02: $78
	ld   a, c                                        ; $6e03: $79
	and  b                                           ; $6e04: $a0
	ld   [bc], a                                     ; $6e05: $02
	jp   nz, Jump_066_5461                           ; $6e06: $c2 $61 $54

	ld   e, c                                        ; $6e09: $59
	ld   a, b                                        ; $6e0a: $78
	rst  $38                                         ; $6e0b: $ff
	rst  $38                                         ; $6e0c: $ff
	ld   bc, $0d04                                   ; $6e0d: $01 $04 $0d
	nop                                              ; $6e10: $00
	ld   a, [bc]                                     ; $6e11: $0a
	add  hl, de                                      ; $6e12: $19
	dec  b                                           ; $6e13: $05
	ld   [bc], a                                     ; $6e14: $02
	inc  b                                           ; $6e15: $04
	rst  $10                                         ; $6e16: $d7
	inc  b                                           ; $6e17: $04
	ld   hl, $057c                                   ; $6e18: $21 $7c $05
	jr   nz, jr_066_6e1d                             ; $6e1b: $20 $00

jr_066_6e1d:
	nop                                              ; $6e1d: $00
	inc  b                                           ; $6e1e: $04
	ld   c, $03                                      ; $6e1f: $0e $03
	sub  b                                           ; $6e21: $90
	ld   a, h                                        ; $6e22: $7c
	dec  b                                           ; $6e23: $05
	jr   nz, jr_066_6e26                             ; $6e24: $20 $00

jr_066_6e26:
	ld   bc, $9507                                   ; $6e26: $01 $07 $95
	nop                                              ; $6e29: $00
	ld   [bc], a                                     ; $6e2a: $02
	inc  bc                                          ; $6e2b: $03
	ld   bc, $2000                                   ; $6e2c: $01 $00 $20
	nop                                              ; $6e2f: $00
	rlca                                             ; $6e30: $07
	inc  d                                           ; $6e31: $14
	ld   bc, $0302                                   ; $6e32: $01 $02 $03
	ld   bc, $2001                                   ; $6e35: $01 $01 $20
	nop                                              ; $6e38: $00
	ld   b, $69                                      ; $6e39: $06 $69
	nop                                              ; $6e3b: $00
	inc  e                                           ; $6e3c: $1c
	inc  bc                                          ; $6e3d: $03
	nop                                              ; $6e3e: $00
	nop                                              ; $6e3f: $00
	ld   bc, $f304                                   ; $6e40: $01 $04 $f3
	ld   e, d                                        ; $6e43: $5a
	ld   a, b                                        ; $6e44: $78
	ld   d, d                                        ; $6e45: $52
	ld   a, b                                        ; $6e46: $78
	sub  a                                           ; $6e47: $97
	dec  c                                           ; $6e48: $0d
	ld   h, e                                        ; $6e49: $63
	ld   [hl], c                                     ; $6e4a: $71
	ld   h, e                                        ; $6e4b: $63
	halt                                             ; $6e4c: $76
	inc  bc                                          ; $6e4d: $03
	ld   l, l                                        ; $6e4e: $6d
	dec  b                                           ; $6e4f: $05
	add  hl, de                                      ; $6e50: $19
	ld   a, h                                        ; $6e51: $7c
	ld   h, [hl]                                     ; $6e52: $66
	sub  e                                           ; $6e53: $93
	and  c                                           ; $6e54: $a1
	add  c                                           ; $6e55: $81
	dec  c                                           ; $6e56: $0d
	ld   h, l                                        ; $6e57: $65
	ld   a, b                                        ; $6e58: $78
	ld   h, e                                        ; $6e59: $63
	ld   d, d                                        ; $6e5a: $52
	sbc  a                                           ; $6e5b: $9f
	dec  c                                           ; $6e5c: $0d
	nop                                              ; $6e5d: $00
	ld   a, [bc]                                     ; $6e5e: $0a
	dec  c                                           ; $6e5f: $0d
	nop                                              ; $6e60: $00
	nop                                              ; $6e61: $00
	rrca                                             ; $6e62: $0f
	nop                                              ; $6e63: $00
	ld   bc, $1e09                                   ; $6e64: $01 $09 $1e
	nop                                              ; $6e67: $00
	rrca                                             ; $6e68: $0f
	nop                                              ; $6e69: $00
	ld   bc, $df01                                   ; $6e6a: $01 $01 $df
	db   $ec                                         ; $6e6d: $ec
	and  e                                           ; $6e6e: $a3
	ld   h, e                                        ; $6e6f: $63
	and  c                                           ; $6e70: $a1
	ld   e, c                                        ; $6e71: $59
	sub  a                                           ; $6e72: $97
	ld   [bc], a                                     ; $6e73: $02
	sub  l                                           ; $6e74: $95
	ld   [hl], h                                     ; $6e75: $74
	dec  c                                           ; $6e76: $0d
	inc  b                                           ; $6e77: $04
	rst  $10                                         ; $6e78: $d7
	inc  b                                           ; $6e79: $04
	ld   hl, $8503                                   ; $6e7a: $21 $03 $85
	inc  b                                           ; $6e7d: $04
	xor  e                                           ; $6e7e: $ab
	inc  bc                                          ; $6e7f: $03
	add  d                                           ; $6e80: $82
	ld   [hl], c                                     ; $6e81: $71
	ld   [hl], h                                     ; $6e82: $74
	sbc  [hl]                                        ; $6e83: $9e
	dec  c                                           ; $6e84: $0d
	ld   [hl], a                                     ; $6e85: $77
	and  c                                           ; $6e86: $a1
	ld   a, b                                        ; $6e87: $78
	inc  b                                           ; $6e88: $04
	ld   a, b                                        ; $6e89: $78
	ld   [hl], l                                     ; $6e8a: $75
	ld   h, a                                        ; $6e8b: $67
	ld   e, c                                        ; $6e8c: $59
	ld   sp, hl                                      ; $6e8d: $f9
	dec  c                                           ; $6e8e: $0d
	nop                                              ; $6e8f: $00
	ld   a, [bc]                                     ; $6e90: $0a
	inc  e                                           ; $6e91: $1c
	inc  bc                                          ; $6e92: $03
	nop                                              ; $6e93: $00
	nop                                              ; $6e94: $00
	ld   bc, $546b                                   ; $6e95: $01 $6b $54
	ld   a, e                                        ; $6e98: $7b
	rst  $38                                         ; $6e99: $ff
	rst  $38                                         ; $6e9a: $ff
	add  e                                           ; $6e9b: $83
	ld   l, [hl]                                     ; $6e9c: $6e
	and  c                                           ; $6e9d: $a1
	ld   a, l                                        ; $6e9e: $7d
	ld   b, $2b                                      ; $6e9f: $06 $2b
	ld   [bc], a                                     ; $6ea1: $02
	and  c                                           ; $6ea2: $a1
	ld   a, c                                        ; $6ea3: $79
	dec  c                                           ; $6ea4: $0d
	add  e                                           ; $6ea5: $83
	sbc  c                                           ; $6ea6: $99
	adc  h                                           ; $6ea7: $8c
	ld   [hl], c                                     ; $6ea8: $71
	ld   [hl], h                                     ; $6ea9: $74
	ld   d, d                                        ; $6eaa: $52
	sbc  c                                           ; $6eab: $99
	ld   e, a                                        ; $6eac: $5f
	ld   [hl], a                                     ; $6ead: $77
	sbc  [hl]                                        ; $6eae: $9e
	ld   d, d                                        ; $6eaf: $52
	ld   h, h                                        ; $6eb0: $64
	halt                                             ; $6eb1: $76
	dec  c                                           ; $6eb2: $0d
	ld   a, b                                        ; $6eb3: $78
	sbc  c                                           ; $6eb4: $99
	halt                                             ; $6eb5: $76
	ld   l, l                                        ; $6eb6: $6d
	sub  [hl]                                        ; $6eb7: $96
	sbc  b                                           ; $6eb8: $98
	ld   a, c                                        ; $6eb9: $79
	ld   a, b                                        ; $6eba: $78
	sbc  c                                           ; $6ebb: $99
	inc  b                                           ; $6ebc: $04
	ld   a, b                                        ; $6ebd: $78
	sub  [hl]                                        ; $6ebe: $96
	sbc  a                                           ; $6ebf: $9f
	dec  c                                           ; $6ec0: $0d
	nop                                              ; $6ec1: $00
	ld   a, [bc]                                     ; $6ec2: $0a
	inc  e                                           ; $6ec3: $1c
	inc  bc                                          ; $6ec4: $03
	inc  bc                                          ; $6ec5: $03
	inc  bc                                          ; $6ec6: $03
	ld   bc, $0358                                   ; $6ec7: $01 $58 $03
	jr   nz, jr_066_6f45                             ; $6eca: $20 $79

	ld   a, h                                        ; $6ecc: $7c
	adc  h                                           ; $6ecd: $8c
	sbc  d                                           ; $6ece: $9a
	ld   l, a                                        ; $6ecf: $6f
	sub  c                                           ; $6ed0: $91
	ld   d, h                                        ; $6ed1: $54
	halt                                             ; $6ed2: $76
	ld   h, c                                        ; $6ed3: $61
	sbc  e                                           ; $6ed4: $9b
	ld   a, l                                        ; $6ed5: $7d
	dec  c                                           ; $6ed6: $0d
	ld   l, l                                        ; $6ed7: $6d
	adc  h                                           ; $6ed8: $8c
	ld   a, c                                        ; $6ed9: $79
	ld   e, e                                        ; $6eda: $5b
	ld   l, b                                        ; $6edb: $68
	ld   l, [hl]                                     ; $6edc: $6e
	ld   e, a                                        ; $6edd: $5f
	ld   [hl], a                                     ; $6ede: $77
	rst  $38                                         ; $6edf: $ff
	rst  $38                                         ; $6ee0: $ff
	dec  c                                           ; $6ee1: $0d
	nop                                              ; $6ee2: $00
	ld   a, [bc]                                     ; $6ee3: $0a
	ld   b, $89                                      ; $6ee4: $06 $89
	ld   bc, $000f                                   ; $6ee6: $01 $0f $00
	ld   bc, $df01                                   ; $6ee9: $01 $01 $df
	db   $ec                                         ; $6eec: $ec
	and  e                                           ; $6eed: $a3
	ld   h, e                                        ; $6eee: $63
	and  c                                           ; $6eef: $a1
	ld   e, c                                        ; $6ef0: $59
	sub  a                                           ; $6ef1: $97
	ld   [bc], a                                     ; $6ef2: $02
	sub  l                                           ; $6ef3: $95
	ld   [hl], h                                     ; $6ef4: $74
	dec  c                                           ; $6ef5: $0d
	inc  b                                           ; $6ef6: $04
	ld   c, $03                                      ; $6ef7: $0e $03
	sub  b                                           ; $6ef9: $90
	ld   h, e                                        ; $6efa: $63
	and  c                                           ; $6efb: $a1
	ld   [hl], h                                     ; $6efc: $74
	sbc  [hl]                                        ; $6efd: $9e
	dec  c                                           ; $6efe: $0d
	ld   [hl], a                                     ; $6eff: $77
	and  c                                           ; $6f00: $a1
	ld   a, b                                        ; $6f01: $78
	inc  b                                           ; $6f02: $04
	ld   a, b                                        ; $6f03: $78
	ld   [hl], l                                     ; $6f04: $75
	ld   h, a                                        ; $6f05: $67
	ld   e, c                                        ; $6f06: $59
	ld   sp, hl                                      ; $6f07: $f9
	dec  c                                           ; $6f08: $0d
	nop                                              ; $6f09: $00
	ld   a, [bc]                                     ; $6f0a: $0a
	inc  e                                           ; $6f0b: $1c
	inc  bc                                          ; $6f0c: $03
	ld   bc, $0101                                   ; $6f0d: $01 $01 $01
	ld   l, e                                        ; $6f10: $6b
	ld   d, h                                        ; $6f11: $54
	ld   a, e                                        ; $6f12: $7b
	rst  $38                                         ; $6f13: $ff
	rst  $38                                         ; $6f14: $ff
	halt                                             ; $6f15: $76
	ld   [hl], h                                     ; $6f16: $74
	sub  b                                           ; $6f17: $90
	ld   l, l                                        ; $6f18: $6d
	sub  [hl]                                        ; $6f19: $96
	sbc  b                                           ; $6f1a: $98
	ld   a, c                                        ; $6f1b: $79
	ld   a, b                                        ; $6f1c: $78
	sbc  c                                           ; $6f1d: $99
	dec  c                                           ; $6f1e: $0d
	ld   l, l                                        ; $6f1f: $6d
	ld   a, h                                        ; $6f20: $7c
	sub  b                                           ; $6f21: $90
	ld   h, l                                        ; $6f22: $65
	ld   d, d                                        ; $6f23: $52
	inc  b                                           ; $6f24: $04
	ld   a, [bc]                                     ; $6f25: $0a
	inc  bc                                          ; $6f26: $03
	jp   nc, $9f96                                   ; $6f27: $d2 $96 $9f

	dec  c                                           ; $6f2a: $0d
	nop                                              ; $6f2b: $00
	ld   a, [bc]                                     ; $6f2c: $0a
	inc  e                                           ; $6f2d: $1c
	inc  bc                                          ; $6f2e: $03
	inc  b                                           ; $6f2f: $04
	inc  b                                           ; $6f30: $04
	ld   bc, $6e6d                                   ; $6f31: $01 $6d $6e
	sbc  [hl]                                        ; $6f34: $9e
	inc  bc                                          ; $6f35: $03
	ld   l, h                                        ; $6f36: $6c
	ld   h, l                                        ; $6f37: $65
	inc  bc                                          ; $6f38: $03
	ld   l, [hl]                                     ; $6f39: $6e
	ld   [bc], a                                     ; $6f3a: $02
	db   $fc                                         ; $6f3b: $fc
	ld   a, c                                        ; $6f3c: $79
	inc  b                                           ; $6f3d: $04
	dec  b                                           ; $6f3e: $05
	ld   h, l                                        ; $6f3f: $65
	ld   [hl], h                                     ; $6f40: $74
	dec  c                                           ; $6f41: $0d
	inc  b                                           ; $6f42: $04
	rst  $30                                         ; $6f43: $f7
	dec  b                                           ; $6f44: $05

jr_066_6f45:
	or   a                                           ; $6f45: $b7
	inc  b                                           ; $6f46: $04
	and  b                                           ; $6f47: $a0
	inc  b                                           ; $6f48: $04
	inc  h                                           ; $6f49: $24
	ld   a, b                                        ; $6f4a: $78
	ld   a, h                                        ; $6f4b: $7c
	ld   e, d                                        ; $6f4c: $5a
	sbc  [hl]                                        ; $6f4d: $9e
	ld   l, l                                        ; $6f4e: $6d
	adc  h                                           ; $6f4f: $8c
	ld   a, c                                        ; $6f50: $79
	ld   e, e                                        ; $6f51: $5b
	ld   l, b                                        ; $6f52: $68
	dec  c                                           ; $6f53: $0d
	ld   l, [hl]                                     ; $6f54: $6e
	ld   e, a                                        ; $6f55: $5f
	ld   [hl], a                                     ; $6f56: $77
	rst  $38                                         ; $6f57: $ff
	rst  $38                                         ; $6f58: $ff
	dec  c                                           ; $6f59: $0d
	nop                                              ; $6f5a: $00
	ld   a, [bc]                                     ; $6f5b: $0a
	inc  e                                           ; $6f5c: $1c
	inc  bc                                          ; $6f5d: $03
	nop                                              ; $6f5e: $00
	nop                                              ; $6f5f: $00
	ld   bc, $9e63                                   ; $6f60: $01 $63 $9e
	ld   e, b                                        ; $6f63: $58
	ld   h, l                                        ; $6f64: $65
	sub  c                                           ; $6f65: $91
	add  a                                           ; $6f66: $87
	sbc  b                                           ; $6f67: $98
	ld   a, l                                        ; $6f68: $7d
	inc  bc                                          ; $6f69: $03
	ld   a, [hl]                                     ; $6f6a: $7e
	sbc  l                                           ; $6f6b: $9d
	sbc  b                                           ; $6f6c: $98
	sbc  a                                           ; $6f6d: $9f
	dec  c                                           ; $6f6e: $0d
	inc  bc                                          ; $6f6f: $03
	ld   l, l                                        ; $6f70: $6d
	dec  b                                           ; $6f71: $05
	add  hl, de                                      ; $6f72: $19
	ld   e, d                                        ; $6f73: $5a
	dec  b                                           ; $6f74: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f75: $cf
	adc  h                                           ; $6f76: $8c
	sbc  c                                           ; $6f77: $99
	inc  bc                                          ; $6f78: $03
	ld   l, a                                        ; $6f79: $6f
	ld   [bc], a                                     ; $6f7a: $02
	xor  c                                           ; $6f7b: $a9
	sub  [hl]                                        ; $6f7c: $96
	sbc  a                                           ; $6f7d: $9f
	dec  c                                           ; $6f7e: $0d
	nop                                              ; $6f7f: $00
	ld   a, [bc]                                     ; $6f80: $0a
	dec  c                                           ; $6f81: $0d
	nop                                              ; $6f82: $00
	nop                                              ; $6f83: $00
	rrca                                             ; $6f84: $0f
	nop                                              ; $6f85: $00
	ld   bc, $1e09                                   ; $6f86: $01 $09 $1e
	nop                                              ; $6f89: $00
	nop                                              ; $6f8a: $00
	rrca                                             ; $6f8b: $0f
	nop                                              ; $6f8c: $00
	ld   bc, $0102                                   ; $6f8d: $01 $02 $01
	ld   e, b                                        ; $6f90: $58
	ld   a, l                                        ; $6f91: $7d
	sub  [hl]                                        ; $6f92: $96
	ld   d, h                                        ; $6f93: $54
	sbc  [hl]                                        ; $6f94: $9e
	and  e                                           ; $6f95: $a3
	and  l                                           ; $6f96: $a5
	db   $ec                                         ; $6f97: $ec
	cp   d                                           ; $6f98: $ba
	sbc  a                                           ; $6f99: $9f
	dec  c                                           ; $6f9a: $0d
	nop                                              ; $6f9b: $00
	ld   a, [bc]                                     ; $6f9c: $0a
	inc  e                                           ; $6f9d: $1c
	inc  b                                           ; $6f9e: $04
	nop                                              ; $6f9f: $00
	nop                                              ; $6fa0: $00
	ld   bc, $9e50                                   ; $6fa1: $01 $50 $9e
	ld   l, a                                        ; $6fa4: $6f
	ld   d, d                                        ; $6fa5: $52
	ld   [bc], a                                     ; $6fa6: $02
	inc  de                                          ; $6fa7: $13
	ld   l, a                                        ; $6fa8: $6f
	sub  c                                           ; $6fa9: $91
	and  c                                           ; $6faa: $a1
	dec  c                                           ; $6fab: $0d
	ld   e, b                                        ; $6fac: $58
	ld   a, l                                        ; $6fad: $7d
	sub  [hl]                                        ; $6fae: $96
	ld   d, h                                        ; $6faf: $54
	sbc  a                                           ; $6fb0: $9f
	dec  c                                           ; $6fb1: $0d
	nop                                              ; $6fb2: $00
	ld   a, [bc]                                     ; $6fb3: $0a
	rrca                                             ; $6fb4: $0f
	nop                                              ; $6fb5: $00
	ld   bc, $0101                                   ; $6fb6: $01 $01 $01
	inc  bc                                          ; $6fb9: $03
	inc  b                                           ; $6fba: $04
	ld   c, c                                        ; $6fbb: $49
	and  b                                           ; $6fbc: $a0
	ld   [bc], a                                     ; $6fbd: $02
	jp   nz, Jump_066_5461                           ; $6fbe: $c2 $61 $54

	ld   e, c                                        ; $6fc1: $59
	rst  $38                                         ; $6fc2: $ff
	rst  $38                                         ; $6fc3: $ff
	ld   bc, $0d04                                   ; $6fc4: $01 $04 $0d
	nop                                              ; $6fc7: $00
	ld   a, [bc]                                     ; $6fc8: $0a
	add  hl, de                                      ; $6fc9: $19
	dec  b                                           ; $6fca: $05
	inc  bc                                          ; $6fcb: $03
	inc  b                                           ; $6fcc: $04
	ld   c, $03                                      ; $6fcd: $0e $03
	sub  b                                           ; $6fcf: $90
	ld   a, c                                        ; $6fd0: $79
	ld   [hl], d                                     ; $6fd1: $72
	ld   d, d                                        ; $6fd2: $52
	ld   [hl], h                                     ; $6fd3: $74
	ld   [bc], a                                     ; $6fd4: $02
	jp   nz, $005d                                   ; $6fd5: $c2 $5d $00

	nop                                              ; $6fd8: $00
	inc  bc                                          ; $6fd9: $03
	sub  h                                           ; $6fda: $94
	inc  b                                           ; $6fdb: $04
	sbc  [hl]                                        ; $6fdc: $9e
	ld   a, c                                        ; $6fdd: $79
	ld   [hl], d                                     ; $6fde: $72
	ld   d, d                                        ; $6fdf: $52
	ld   [hl], h                                     ; $6fe0: $74
	ld   [bc], a                                     ; $6fe1: $02
	jp   nz, $005d                                   ; $6fe2: $c2 $5d $00

	ld   bc, $d704                                   ; $6fe5: $01 $04 $d7
	inc  b                                           ; $6fe8: $04
	ld   hl, $7279                                   ; $6fe9: $21 $79 $72
	ld   d, d                                        ; $6fec: $52
	ld   [hl], h                                     ; $6fed: $74
	ld   [bc], a                                     ; $6fee: $02
	jp   nz, $005d                                   ; $6fef: $c2 $5d $00

	ld   [bc], a                                     ; $6ff2: $02
	rlca                                             ; $6ff3: $07
	and  b                                           ; $6ff4: $a0
	nop                                              ; $6ff5: $00
	ld   [bc], a                                     ; $6ff6: $02
	inc  bc                                          ; $6ff7: $03
	ld   bc, $2000                                   ; $6ff8: $01 $00 $20
	nop                                              ; $6ffb: $00
	rlca                                             ; $6ffc: $07
	dec  [hl]                                        ; $6ffd: $35
	ld   bc, $0302                                   ; $6ffe: $01 $02 $03
	ld   bc, $2001                                   ; $7001: $01 $01 $20
	nop                                              ; $7004: $00
	rlca                                             ; $7005: $07
	ld   hl, sp+$01                                  ; $7006: $f8 $01
	ld   [bc], a                                     ; $7008: $02
	inc  bc                                          ; $7009: $03
	ld   bc, $2002                                   ; $700a: $01 $02 $20
	nop                                              ; $700d: $00
	ld   b, $86                                      ; $700e: $06 $86
	nop                                              ; $7010: $00
	inc  e                                           ; $7011: $1c
	inc  b                                           ; $7012: $04
	nop                                              ; $7013: $00
	nop                                              ; $7014: $00
	ld   bc, $955b                                   ; $7015: $01 $5b $95
	ld   d, h                                        ; $7018: $54
	sub  b                                           ; $7019: $90
	ld   d, d                                        ; $701a: $52
	ld   l, a                                        ; $701b: $6f
	ld   a, c                                        ; $701c: $79
	ld   l, a                                        ; $701d: $6f
	dec  c                                           ; $701e: $0d
	ld   e, d                                        ; $701f: $5a
	and  c                                           ; $7020: $a1
	ld   a, [hl]                                     ; $7021: $7e
	sbc  e                                           ; $7022: $9b
	ld   d, h                                        ; $7023: $54
	ld   a, e                                        ; $7024: $7b
	ei                                               ; $7025: $fb
	ld   a, [$000d]                                  ; $7026: $fa $0d $00
	ld   a, [bc]                                     ; $7029: $0a
	nop                                              ; $702a: $00
	rrca                                             ; $702b: $0f
	nop                                              ; $702c: $00
	ld   bc, $a301                                   ; $702d: $01 $01 $a3
	and  l                                           ; $7030: $a5
	db   $ec                                         ; $7031: $ec
	cp   d                                           ; $7032: $ba
	ld   e, c                                        ; $7033: $59
	sub  a                                           ; $7034: $97
	ld   [bc], a                                     ; $7035: $02
	sub  l                                           ; $7036: $95
	ld   [hl], h                                     ; $7037: $74
	sbc  [hl]                                        ; $7038: $9e
	dec  c                                           ; $7039: $0d
	inc  b                                           ; $703a: $04
	ld   c, $03                                      ; $703b: $0e $03
	sub  b                                           ; $703d: $90
	ld   h, e                                        ; $703e: $63
	and  c                                           ; $703f: $a1
	ld   [hl], h                                     ; $7040: $74
	dec  c                                           ; $7041: $0d
	ld   [hl], a                                     ; $7042: $77
	and  c                                           ; $7043: $a1
	ld   a, b                                        ; $7044: $78
	inc  bc                                          ; $7045: $03
	add  d                                           ; $7046: $82
	ld   e, c                                        ; $7047: $59
	ld   a, b                                        ; $7048: $78
	ld   sp, hl                                      ; $7049: $f9
	dec  c                                           ; $704a: $0d
	nop                                              ; $704b: $00
	ld   a, [bc]                                     ; $704c: $0a
	inc  e                                           ; $704d: $1c
	inc  b                                           ; $704e: $04
	ld   bc, $0101                                   ; $704f: $01 $01 $01
	ld   l, [hl]                                     ; $7052: $6e
	ld   d, d                                        ; $7053: $52
	ld   h, a                                        ; $7054: $67
	ld   e, e                                        ; $7055: $5b
	ld   a, [$000d]                                  ; $7056: $fa $0d $00
	ld   a, [bc]                                     ; $7059: $0a
	inc  e                                           ; $705a: $1c
	inc  b                                           ; $705b: $04
	dec  b                                           ; $705c: $05
	dec  b                                           ; $705d: $05
	ld   bc, $a5a3                                   ; $705e: $01 $a3 $a5
	db   $ec                                         ; $7061: $ec
	cp   d                                           ; $7062: $ba
	ld   a, l                                        ; $7063: $7d
	ld   a, e                                        ; $7064: $7b
	sbc  [hl]                                        ; $7065: $9e
	ld   e, b                                        ; $7066: $58
	ld   [bc], a                                     ; $7067: $02
	inc  de                                          ; $7068: $13
	ld   l, a                                        ; $7069: $6f
	sub  c                                           ; $706a: $91
	and  c                                           ; $706b: $a1
	halt                                             ; $706c: $76
	dec  c                                           ; $706d: $0d
	ld   e, a                                        ; $706e: $5f
	ld   [hl], c                                     ; $706f: $71
	ld   h, c                                        ; $7070: $61
	and  c                                           ; $7071: $a1
	ld   h, a                                        ; $7072: $67
	sbc  c                                           ; $7073: $99
	and  c                                           ; $7074: $a1
	ld   l, [hl]                                     ; $7075: $6e
	sub  [hl]                                        ; $7076: $96
	sbc  a                                           ; $7077: $9f
	dec  c                                           ; $7078: $0d
	nop                                              ; $7079: $00
	ld   a, [bc]                                     ; $707a: $0a
	ld   bc, $7c6b                                   ; $707b: $01 $6b $7c
	halt                                             ; $707e: $76
	ld   e, e                                        ; $707f: $5b
	ld   a, l                                        ; $7080: $7d
	sbc  [hl]                                        ; $7081: $9e
	ld   l, a                                        ; $7082: $6f
	ld   d, d                                        ; $7083: $52
	ld   [bc], a                                     ; $7084: $02
	inc  de                                          ; $7085: $13
	ld   l, a                                        ; $7086: $6f
	sub  c                                           ; $7087: $91
	and  c                                           ; $7088: $a1
	sub  b                                           ; $7089: $90
	dec  c                                           ; $708a: $0d
	ld   e, a                                        ; $708b: $5f
	ld   [hl], c                                     ; $708c: $71
	ld   h, c                                        ; $708d: $61
	and  c                                           ; $708e: $a1
	ld   h, l                                        ; $708f: $65
	ld   e, e                                        ; $7090: $5b
	ld   a, c                                        ; $7091: $79
	ld   h, l                                        ; $7092: $65
	sub  l                                           ; $7093: $95
	ld   d, h                                        ; $7094: $54
	ld   l, l                                        ; $7095: $6d
	ld   d, d                                        ; $7096: $52
	ld   h, l                                        ; $7097: $65
	ld   [hl], h                                     ; $7098: $74
	dec  c                                           ; $7099: $0d
	ld   d, b                                        ; $709a: $50
	ld   h, b                                        ; $709b: $60
	sbc  c                                           ; $709c: $99
	ld   a, e                                        ; $709d: $7b
	sbc  a                                           ; $709e: $9f
	dec  c                                           ; $709f: $0d
	nop                                              ; $70a0: $00
	ld   a, [bc]                                     ; $70a1: $0a
	inc  e                                           ; $70a2: $1c
	inc  b                                           ; $70a3: $04
	nop                                              ; $70a4: $00
	nop                                              ; $70a5: $00
	ld   bc, $9166                                   ; $70a6: $01 $66 $91
	sbc  [hl]                                        ; $70a9: $9e
	ld   d, d                                        ; $70aa: $52
	ld   h, c                                        ; $70ab: $61
	ld   d, h                                        ; $70ac: $54
	cp   c                                           ; $70ad: $b9
	push hl                                          ; $70ae: $e5
	push af                                          ; $70af: $f5
	sbc  $fb                                         ; $70b0: $de $fb
	db   $ed                                         ; $70b2: $ed
	sbc  a                                           ; $70b3: $9f
	dec  c                                           ; $70b4: $0d
	nop                                              ; $70b5: $00
	ld   a, [bc]                                     ; $70b6: $0a
	dec  c                                           ; $70b7: $0d
	nop                                              ; $70b8: $00
	nop                                              ; $70b9: $00
	rrca                                             ; $70ba: $0f
	nop                                              ; $70bb: $00
	ld   bc, $1e09                                   ; $70bc: $01 $09 $1e
	nop                                              ; $70bf: $00
	rrca                                             ; $70c0: $0f
	nop                                              ; $70c1: $00
	ld   bc, $a301                                   ; $70c2: $01 $01 $a3
	and  l                                           ; $70c5: $a5
	db   $ec                                         ; $70c6: $ec
	cp   d                                           ; $70c7: $ba
	ld   e, c                                        ; $70c8: $59
	sub  a                                           ; $70c9: $97
	ld   [bc], a                                     ; $70ca: $02
	sub  l                                           ; $70cb: $95
	ld   [hl], h                                     ; $70cc: $74
	sbc  [hl]                                        ; $70cd: $9e
	inc  b                                           ; $70ce: $04
	ld   l, l                                        ; $70cf: $6d
	ld   [hl], c                                     ; $70d0: $71
	ld   [hl], h                                     ; $70d1: $74
	dec  c                                           ; $70d2: $0d
	ld   [hl], a                                     ; $70d3: $77
	and  c                                           ; $70d4: $a1
	ld   a, b                                        ; $70d5: $78
	ld   e, c                                        ; $70d6: $59
	and  c                                           ; $70d7: $a1
	ld   h, [hl]                                     ; $70d8: $66
	ld   e, c                                        ; $70d9: $59
	ld   a, b                                        ; $70da: $78
	ld   sp, hl                                      ; $70db: $f9
	dec  c                                           ; $70dc: $0d
	nop                                              ; $70dd: $00
	ld   a, [bc]                                     ; $70de: $0a
	rlca                                             ; $70df: $07
	pop  bc                                          ; $70e0: $c1
	ld   bc, $1403                                   ; $70e1: $01 $03 $14
	ld   bc, $22b4                                   ; $70e4: $01 $b4 $22
	nop                                              ; $70e7: $00
	inc  e                                           ; $70e8: $1c
	inc  b                                           ; $70e9: $04
	dec  b                                           ; $70ea: $05
	dec  b                                           ; $70eb: $05
	ld   bc, $ff56                                   ; $70ec: $01 $56 $ff
	rst  $38                                         ; $70ef: $ff
	halt                                             ; $70f0: $76
	ld   a, e                                        ; $70f1: $7b
	rst  $38                                         ; $70f2: $ff
	rst  $38                                         ; $70f3: $ff
	dec  c                                           ; $70f4: $0d
	ld   l, e                                        ; $70f5: $6b
	ld   d, h                                        ; $70f6: $54
	ld   l, [hl]                                     ; $70f7: $6e
	sbc  [hl]                                        ; $70f8: $9e
	ld   h, c                                        ; $70f9: $61
	ld   d, d                                        ; $70fa: $52
	add  c                                           ; $70fb: $81
	halt                                             ; $70fc: $76
	ld   h, c                                        ; $70fd: $61
	ld   d, h                                        ; $70fe: $54
	adc  c                                           ; $70ff: $89
	ld   a, c                                        ; $7100: $79
	dec  c                                           ; $7101: $0d
	ld   h, l                                        ; $7102: $65
	ld   [hl], h                                     ; $7103: $74
	ld   d, b                                        ; $7104: $50
	ld   h, b                                        ; $7105: $60
	sub  a                                           ; $7106: $97
	sbc  d                                           ; $7107: $9a
	sbc  c                                           ; $7108: $99
	ld   e, [hl]                                     ; $7109: $5e
	sub  a                                           ; $710a: $97
	ld   d, d                                        ; $710b: $52
	ld   e, c                                        ; $710c: $59
	ld   a, b                                        ; $710d: $78
	ld   sp, hl                                      ; $710e: $f9
	dec  c                                           ; $710f: $0d
	nop                                              ; $7110: $00
	ld   a, [bc]                                     ; $7111: $0a
	ld   bc, $596e                                   ; $7112: $01 $6e $59
	sub  a                                           ; $7115: $97
	sbc  [hl]                                        ; $7116: $9e
	ld   e, b                                        ; $7117: $58
	ld   [bc], a                                     ; $7118: $02
	inc  de                                          ; $7119: $13
	ld   l, a                                        ; $711a: $6f
	sub  c                                           ; $711b: $91
	and  c                                           ; $711c: $a1
	ld   a, h                                        ; $711d: $7c
	ld   [hl], d                                     ; $711e: $72
	ld   e, h                                        ; $711f: $5c
	ld   a, c                                        ; $7120: $79
	dec  c                                           ; $7121: $0d
	ld   h, a                                        ; $7122: $67
	ld   e, e                                        ; $7123: $5b
	ld   a, c                                        ; $7124: $79
	ld   a, b                                        ; $7125: $78
	ld   [hl], c                                     ; $7126: $71
	ld   [hl], h                                     ; $7127: $74
	ld   d, b                                        ; $7128: $50
	ld   h, b                                        ; $7129: $60
	sbc  c                                           ; $712a: $99
	sbc  a                                           ; $712b: $9f
	dec  c                                           ; $712c: $0d
	nop                                              ; $712d: $00
	ld   a, [bc]                                     ; $712e: $0a
	inc  e                                           ; $712f: $1c
	inc  b                                           ; $7130: $04
	ld   bc, $0101                                   ; $7131: $01 $01 $01
	ld   h, [hl]                                     ; $7134: $66
	sub  c                                           ; $7135: $91
	sbc  [hl]                                        ; $7136: $9e
	ld   e, e                                        ; $7137: $5b
	sub  l                                           ; $7138: $95
	ld   d, h                                        ; $7139: $54
	sub  b                                           ; $713a: $90
	ld   d, d                                        ; $713b: $52
	ld   l, a                                        ; $713c: $6f
	ld   a, c                                        ; $713d: $79
	ld   l, a                                        ; $713e: $6f
	dec  c                                           ; $713f: $0d
	ld   e, d                                        ; $7140: $5a
	and  c                                           ; $7141: $a1
	ld   a, [hl]                                     ; $7142: $7e
	sbc  e                                           ; $7143: $9b
	ld   d, h                                        ; $7144: $54
	ld   a, e                                        ; $7145: $7b
	ei                                               ; $7146: $fb
	ld   a, [$000d]                                  ; $7147: $fa $0d $00
	ld   a, [bc]                                     ; $714a: $0a
	nop                                              ; $714b: $00
	inc  e                                           ; $714c: $1c
	inc  b                                           ; $714d: $04
	inc  bc                                          ; $714e: $03
	inc  bc                                          ; $714f: $03
	ld   bc, $fc56                                   ; $7150: $01 $56 $fc
	rst  $38                                         ; $7153: $ff
	rst  $38                                         ; $7154: $ff
	dec  c                                           ; $7155: $0d
	ld   l, e                                        ; $7156: $6b
	and  c                                           ; $7157: $a1
	ld   a, b                                        ; $7158: $78

Jump_066_7159:
	ld   h, c                                        ; $7159: $61
	halt                                             ; $715a: $76
	ld   d, d                                        ; $715b: $52
	sbc  l                                           ; $715c: $9d
	sbc  d                                           ; $715d: $9a
	ld   [hl], h                                     ; $715e: $74
	sub  b                                           ; $715f: $90
	dec  c                                           ; $7160: $0d
	sbc  l                                           ; $7161: $9d
	ld   e, c                                        ; $7162: $59
	and  c                                           ; $7163: $a1
	ld   a, b                                        ; $7164: $78
	ld   d, d                                        ; $7165: $52
	sub  [hl]                                        ; $7166: $96
	db   $fc                                         ; $7167: $fc
	rst  $38                                         ; $7168: $ff
	rst  $38                                         ; $7169: $ff
	dec  c                                           ; $716a: $0d
	nop                                              ; $716b: $00
	ld   a, [bc]                                     ; $716c: $0a
	ld   bc, $9166                                   ; $716d: $01 $66 $91
	sbc  [hl]                                        ; $7170: $9e
	sub  b                                           ; $7171: $90
	ld   d, h                                        ; $7172: $54
	ld   d, d                                        ; $7173: $52
	ld   e, l                                        ; $7174: $5d
	ld   a, e                                        ; $7175: $7b
	sbc  a                                           ; $7176: $9f
	dec  c                                           ; $7177: $0d
	nop                                              ; $7178: $00
	ld   a, [bc]                                     ; $7179: $0a
	dec  c                                           ; $717a: $0d
	nop                                              ; $717b: $00
	nop                                              ; $717c: $00
	rrca                                             ; $717d: $0f
	nop                                              ; $717e: $00
	ld   bc, $1e09                                   ; $717f: $01 $09 $1e
	nop                                              ; $7182: $00
	rrca                                             ; $7183: $0f
	nop                                              ; $7184: $00
	ld   bc, $a301                                   ; $7185: $01 $01 $a3
	and  l                                           ; $7188: $a5
	db   $ec                                         ; $7189: $ec
	cp   d                                           ; $718a: $ba
	ld   e, c                                        ; $718b: $59
	sub  a                                           ; $718c: $97
	ld   [bc], a                                     ; $718d: $02
	sub  l                                           ; $718e: $95
	ld   [hl], h                                     ; $718f: $74
	sbc  [hl]                                        ; $7190: $9e
	dec  c                                           ; $7191: $0d
	inc  b                                           ; $7192: $04
	rst  $10                                         ; $7193: $d7
	inc  b                                           ; $7194: $04
	ld   hl, $8503                                   ; $7195: $21 $03 $85
	inc  b                                           ; $7198: $04
	xor  e                                           ; $7199: $ab
	inc  bc                                          ; $719a: $03
	add  d                                           ; $719b: $82
	ld   [hl], c                                     ; $719c: $71
	ld   [hl], h                                     ; $719d: $74
	dec  c                                           ; $719e: $0d
	ld   [hl], a                                     ; $719f: $77
	and  c                                           ; $71a0: $a1
	ld   a, b                                        ; $71a1: $78
	inc  bc                                          ; $71a2: $03
	add  d                                           ; $71a3: $82
	ld   e, c                                        ; $71a4: $59
	ld   a, b                                        ; $71a5: $78
	ld   sp, hl                                      ; $71a6: $f9
	dec  c                                           ; $71a7: $0d
	nop                                              ; $71a8: $00
	ld   a, [bc]                                     ; $71a9: $0a
	inc  e                                           ; $71aa: $1c
	inc  b                                           ; $71ab: $04
	ld   bc, $0101                                   ; $71ac: $01 $01 $01
	ld   e, b                                        ; $71af: $58
	sub  b                                           ; $71b0: $90
	ld   h, l                                        ; $71b1: $65
	sbc  e                                           ; $71b2: $9b
	ld   d, d                                        ; $71b3: $52
	sbc  [hl]                                        ; $71b4: $9e
	ld   e, b                                        ; $71b5: $58
	ld   h, [hl]                                     ; $71b6: $66
	ld   l, a                                        ; $71b7: $6f
	sub  c                                           ; $71b8: $91

Jump_066_71b9:
	and  c                                           ; $71b9: $a1
	sbc  a                                           ; $71ba: $9f
	dec  c                                           ; $71bb: $0d
	sub  [hl]                                        ; $71bc: $96
	ld   [hl], c                                     ; $71bd: $71
	ld   a, a                                        ; $71be: $7f
	sub  a                                           ; $71bf: $97
	ld   [hl], c                                     ; $71c0: $71
	ld   l, l                                        ; $71c1: $6d
	sbc  b                                           ; $71c2: $98
	sbc  [hl]                                        ; $71c3: $9e
	dec  c                                           ; $71c4: $0d
	reti                                             ; $71c5: $d9


	push af                                          ; $71c6: $f5
	ld   a, b                                        ; $71c7: $78
	ld   d, h                                        ; $71c8: $54
	ld   l, l                                        ; $71c9: $6d
	ld   d, h                                        ; $71ca: $54
	ld   l, l                                        ; $71cb: $6d
	ld   [hl], c                                     ; $71cc: $71
	ld   l, l                                        ; $71cd: $6d
	sbc  b                                           ; $71ce: $98
	rst  $38                                         ; $71cf: $ff
	rst  $38                                         ; $71d0: $ff
	dec  c                                           ; $71d1: $0d
	nop                                              ; $71d2: $00
	ld   a, [bc]                                     ; $71d3: $0a
	ld   bc, $9075                                   ; $71d4: $01 $75 $90
	sbc  [hl]                                        ; $71d7: $9e
	ld   h, a                                        ; $71d8: $67
	ld   h, d                                        ; $71d9: $62
	ld   e, l                                        ; $71da: $5d

jr_066_71db:
	sub  d                                           ; $71db: $92
	ld   h, e                                        ; $71dc: $63
	ld   h, l                                        ; $71dd: $65
	ld   d, d                                        ; $71de: $52
	sub  [hl]                                        ; $71df: $96
	sbc  a                                           ; $71e0: $9f
	dec  c                                           ; $71e1: $0d
	nop                                              ; $71e2: $00
	ld   a, [bc]                                     ; $71e3: $0a
	ld   bc, $9166                                   ; $71e4: $01 $66 $91
	sbc  [hl]                                        ; $71e7: $9e
	ld   d, d                                        ; $71e8: $52
	ld   h, c                                        ; $71e9: $61
	ld   d, h                                        ; $71ea: $54
	cp   c                                           ; $71eb: $b9
	push hl                                          ; $71ec: $e5
	push af                                          ; $71ed: $f5
	sbc  $fb                                         ; $71ee: $de $fb
	db   $ed                                         ; $71f0: $ed
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
	nop                                              ; $71fe: $00
	rrca                                             ; $71ff: $0f
	nop                                              ; $7200: $00
	ld   bc, $050d                                   ; $7201: $01 $0d $05
	nop                                              ; $7204: $00
	ld   [bc], a                                     ; $7205: $02
	ld   bc, $7d58                                   ; $7206: $01 $58 $7d
	sub  [hl]                                        ; $7209: $96
	ld   d, h                                        ; $720a: $54
	ld   h, d                                        ; $720b: $62
	ld   h, h                                        ; $720c: $64
	ld   d, d                                        ; $720d: $52
	adc  h                                           ; $720e: $8c
	ld   h, a                                        ; $720f: $67
	sbc  a                                           ; $7210: $9f
	dec  c                                           ; $7211: $0d
	nop                                              ; $7212: $00
	ld   a, [bc]                                     ; $7213: $0a
	dec  b                                           ; $7214: $05
	add  b                                           ; $7215: $80
	or   e                                           ; $7216: $b3
	ld   bc, $0001                                   ; $7217: $01 $01 $00
	inc  e                                           ; $721a: $1c
	dec  b                                           ; $721b: $05
	ld   bc, $0101                                   ; $721c: $01 $01 $01
	ld   [$7d00], sp                                 ; $721f: $08 $00 $7d
	and  c                                           ; $7222: $a1
	sbc  a                                           ; $7223: $9f
	dec  c                                           ; $7224: $0d
	ld   e, b                                        ; $7225: $58
	ld   a, l                                        ; $7226: $7d
	sub  [hl]                                        ; $7227: $96
	ld   d, h                                        ; $7228: $54
	ld   h, e                                        ; $7229: $63
	and  c                                           ; $722a: $a1
	sbc  a                                           ; $722b: $9f
	dec  c                                           ; $722c: $0d
	nop                                              ; $722d: $00
	ld   a, [bc]                                     ; $722e: $0a
	rrca                                             ; $722f: $0f
	nop                                              ; $7230: $00
	ld   bc, $0101                                   ; $7231: $01 $01 $01
	inc  bc                                          ; $7234: $03
	inc  b                                           ; $7235: $04
	ld   c, c                                        ; $7236: $49
	ld   a, h                                        ; $7237: $7c
	dec  b                                           ; $7238: $05
	jr   nz, jr_066_71db                             ; $7239: $20 $a0

	ld   h, l                                        ; $723b: $65
	sub  [hl]                                        ; $723c: $96
	ld   d, h                                        ; $723d: $54
	ld   e, c                                        ; $723e: $59
	ld   a, b                                        ; $723f: $78
	rst  $38                                         ; $7240: $ff
	rst  $38                                         ; $7241: $ff
	ld   bc, $0d04                                   ; $7242: $01 $04 $0d
	nop                                              ; $7245: $00
	ld   a, [bc]                                     ; $7246: $0a
	add  hl, de                                      ; $7247: $19
	dec  b                                           ; $7248: $05
	inc  bc                                          ; $7249: $03
	inc  bc                                          ; $724a: $03
	sub  h                                           ; $724b: $94
	inc  b                                           ; $724c: $04
	sbc  [hl]                                        ; $724d: $9e
	ld   a, h                                        ; $724e: $7c
	ld   [bc], a                                     ; $724f: $02
	jp   $7279                                       ; $7250: $c3 $79 $72


	ld   d, d                                        ; $7253: $52
	ld   [hl], h                                     ; $7254: $74
	ld   [bc], a                                     ; $7255: $02
	jp   nz, $005d                                   ; $7256: $c2 $5d $00

	nop                                              ; $7259: $00
	ret  c                                           ; $725a: $d8

	xor  $bd                                         ; $725b: $ee $bd
	push af                                          ; $725d: $f5
	ret                                              ; $725e: $c9


	and  b                                           ; $725f: $a0
	inc  bc                                          ; $7260: $03
	ld   [$0067], a                                  ; $7261: $ea $67 $00
	ld   bc, $a5a3                                   ; $7264: $01 $a3 $a5
	db   $ec                                         ; $7267: $ec
	cp   d                                           ; $7268: $ba
	ld   a, c                                        ; $7269: $79
	ld   [hl], d                                     ; $726a: $72
	ld   d, d                                        ; $726b: $52
	ld   [hl], h                                     ; $726c: $74
	ld   [bc], a                                     ; $726d: $02
	jp   nz, $005d                                   ; $726e: $c2 $5d $00

	ld   [bc], a                                     ; $7271: $02
	rlca                                             ; $7272: $07
	or   c                                           ; $7273: $b1
	nop                                              ; $7274: $00
	ld   [bc], a                                     ; $7275: $02
	inc  bc                                          ; $7276: $03
	ld   bc, $2000                                   ; $7277: $01 $00 $20
	nop                                              ; $727a: $00
	rlca                                             ; $727b: $07
	and  d                                           ; $727c: $a2
	ld   bc, $0302                                   ; $727d: $01 $02 $03
	ld   bc, $2001                                   ; $7280: $01 $01 $20
	nop                                              ; $7283: $00
	rlca                                             ; $7284: $07
	ld   a, c                                        ; $7285: $79
	inc  bc                                          ; $7286: $03
	ld   [bc], a                                     ; $7287: $02
	inc  bc                                          ; $7288: $03
	ld   bc, $2002                                   ; $7289: $01 $02 $20
	nop                                              ; $728c: $00
	ld   b, $91                                      ; $728d: $06 $91
	nop                                              ; $728f: $00
	rrca                                             ; $7290: $0f
	dec  b                                           ; $7291: $05
	ld   bc, $0201                                   ; $7292: $01 $01 $02
	and  l                                           ; $7295: $a5
	inc  b                                           ; $7296: $04
	xor  d                                           ; $7297: $aa
	sub  b                                           ; $7298: $90
	ld   [bc], a                                     ; $7299: $02
	jr   nz, jr_066_72a0                             ; $729a: $20 $04

	xor  d                                           ; $729c: $aa
	sbc  [hl]                                        ; $729d: $9e
	ld   e, d                                        ; $729e: $5a
	and  c                                           ; $729f: $a1

jr_066_72a0:
	ld   a, [hl]                                     ; $72a0: $7e
	sbc  b                                           ; $72a1: $98
	sub  d                                           ; $72a2: $92
	sbc  a                                           ; $72a3: $9f
	dec  c                                           ; $72a4: $0d
	nop                                              ; $72a5: $00
	ld   a, [bc]                                     ; $72a6: $0a
	dec  c                                           ; $72a7: $0d
	nop                                              ; $72a8: $00
	nop                                              ; $72a9: $00
	rrca                                             ; $72aa: $0f
	nop                                              ; $72ab: $00
	ld   bc, $1e09                                   ; $72ac: $01 $09 $1e
	nop                                              ; $72af: $00
	rrca                                             ; $72b0: $0f
	nop                                              ; $72b1: $00
	ld   bc, $0201                                   ; $72b2: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $72b5: $cf
	dec  b                                           ; $72b6: $05
	ld   a, [de]                                     ; $72b7: $1a
	ld   h, e                                        ; $72b8: $63
	and  c                                           ; $72b9: $a1
	ld   e, c                                        ; $72ba: $59
	sub  a                                           ; $72bb: $97
	ld   [bc], a                                     ; $72bc: $02
	sub  l                                           ; $72bd: $95
	ld   [hl], h                                     ; $72be: $74
	sbc  [hl]                                        ; $72bf: $9e
	dec  c                                           ; $72c0: $0d
	inc  b                                           ; $72c1: $04
	ld   l, l                                        ; $72c2: $6d
	ld   [hl], c                                     ; $72c3: $71
	ld   [hl], h                                     ; $72c4: $74
	ld   [hl], a                                     ; $72c5: $77
	and  c                                           ; $72c6: $a1
	ld   a, b                                        ; $72c7: $78
	ld   [bc], a                                     ; $72c8: $02
	scf                                              ; $72c9: $37
	ld   h, [hl]                                     ; $72ca: $66
	ld   [hl], l                                     ; $72cb: $75
	ld   h, l                                        ; $72cc: $65
	sub  l                                           ; $72cd: $95
	ld   d, h                                        ; $72ce: $54
	ld   sp, hl                                      ; $72cf: $f9
	dec  c                                           ; $72d0: $0d
	nop                                              ; $72d1: $00
	ld   a, [bc]                                     ; $72d2: $0a
	rlca                                             ; $72d3: $07
	push af                                          ; $72d4: $f5
	nop                                              ; $72d5: $00
	inc  bc                                          ; $72d6: $03
	dec  d                                           ; $72d7: $15
	ld   bc, $25b4                                   ; $72d8: $01 $b4 $25
	nop                                              ; $72db: $00
	rlca                                             ; $72dc: $07
	dec  l                                           ; $72dd: $2d
	ld   bc, $1503                                   ; $72de: $01 $03 $15
	ld   bc, $25a0                                   ; $72e1: $01 $a0 $25
	inc  bc                                          ; $72e4: $03
	dec  d                                           ; $72e5: $15
	ld   bc, $22b4                                   ; $72e6: $01 $b4 $22
	inc  e                                           ; $72e9: $1c
	nop                                              ; $72ea: $00
	rlca                                             ; $72eb: $07
	ld   d, c                                        ; $72ec: $51
	ld   bc, $1503                                   ; $72ed: $01 $03 $15
	ld   bc, $239f                                   ; $72f0: $01 $9f $23
	nop                                              ; $72f3: $00
	inc  e                                           ; $72f4: $1c
	dec  b                                           ; $72f5: $05
	inc  b                                           ; $72f6: $04
	inc  b                                           ; $72f7: $04
	dec  e                                           ; $72f8: $1d
	ld   b, b                                        ; $72f9: $40
	dec  d                                           ; $72fa: $15
	inc  bc                                          ; $72fb: $03
	dec  d                                           ; $72fc: $15
	ld   bc, $2802                                   ; $72fd: $01 $02 $28
	nop                                              ; $7300: $00
	ld   bc, $9e78                                   ; $7301: $01 $78 $9e
	ld   a, b                                        ; $7304: $78
	and  c                                           ; $7305: $a1
	sub  d                                           ; $7306: $92
	ld   d, d                                        ; $7307: $52
	ld   e, e                                        ; $7308: $5b
	ld   a, b                                        ; $7309: $78
	sbc  b                                           ; $730a: $98
	sbc  a                                           ; $730b: $9f
	dec  c                                           ; $730c: $0d
	ld   l, e                                        ; $730d: $6b
	ld   d, h                                        ; $730e: $54
	sub  d                                           ; $730f: $92
	ld   a, b                                        ; $7310: $78
	rst  $38                                         ; $7311: $ff
	sbc  [hl]                                        ; $7312: $9e
	ld   e, a                                        ; $7313: $5f
	ld   [hl], c                                     ; $7314: $71
	ld   h, c                                        ; $7315: $61
	ld   d, h                                        ; $7316: $54
	xor  c                                           ; $7317: $a9
	xor  c                                           ; $7318: $a9
	ld   b, $46                                      ; $7319: $06 $46
	dec  c                                           ; $731b: $0d
	ld   d, d                                        ; $731c: $52
	ld   [hl], c                                     ; $731d: $71
	ld   [hl], h                                     ; $731e: $74
	sbc  c                                           ; $731f: $99
	halt                                             ; $7320: $76
	dec  b                                           ; $7321: $05
	pop  de                                          ; $7322: $d1
	ld   d, h                                        ; $7323: $54
	ld   [hl], l                                     ; $7324: $75
	sbc  a                                           ; $7325: $9f
	dec  c                                           ; $7326: $0d
	nop                                              ; $7327: $00
	ld   a, [bc]                                     ; $7328: $0a
	ld   b, $83                                      ; $7329: $06 $83
	ld   bc, $051c                                   ; $732b: $01 $1c $05
	ld   bc, $1d01                                   ; $732e: $01 $01 $1d
	ld   b, b                                        ; $7331: $40
	dec  d                                           ; $7332: $15
	inc  bc                                          ; $7333: $03
	dec  d                                           ; $7334: $15
	ld   bc, $2801                                   ; $7335: $01 $01 $28
	nop                                              ; $7338: $00
	ld   bc, $546b                                   ; $7339: $01 $6b $54
	sub  d                                           ; $733c: $92
	ld   a, b                                        ; $733d: $78
	db   $fc                                         ; $733e: $fc
	rst  $38                                         ; $733f: $ff
	rst  $38                                         ; $7340: $ff
	dec  c                                           ; $7341: $0d
	xor  c                                           ; $7342: $a9
	xor  c                                           ; $7343: $a9
	inc  bc                                          ; $7344: $03
	add  d                                           ; $7345: $82
	rst  $38                                         ; $7346: $ff
	ld   e, c                                        ; $7347: $59
	ld   a, b                                        ; $7348: $78
	db   $fc                                         ; $7349: $fc
	dec  c                                           ; $734a: $0d
	nop                                              ; $734b: $00
	ld   a, [bc]                                     ; $734c: $0a
	ld   b, $83                                      ; $734d: $06 $83
	ld   bc, $051c                                   ; $734f: $01 $1c $05
	ld   [bc], a                                     ; $7352: $02
	ld   [bc], a                                     ; $7353: $02
	ld   bc, $a177                                   ; $7354: $01 $77 $a1
	ld   a, b                                        ; $7357: $78
	ld   [bc], a                                     ; $7358: $02
	scf                                              ; $7359: $37
	ld   h, [hl]                                     ; $735a: $66
	ld   [hl], h                                     ; $735b: $74
	sbc  [hl]                                        ; $735c: $9e
	ld   [bc], a                                     ; $735d: $02
	jp   nz, $9a59                                   ; $735e: $c2 $59 $9a

	ld   [hl], h                                     ; $7361: $74
	sub  b                                           ; $7362: $90
	rst  $38                                         ; $7363: $ff
	rst  $38                                         ; $7364: $ff
	dec  c                                           ; $7365: $0d
	ld   d, b                                        ; $7366: $50
	and  c                                           ; $7367: $a1
	adc  h                                           ; $7368: $8c
	ld   h, l                                        ; $7369: $65
	ld   [bc], a                                     ; $736a: $02
	ld   h, l                                        ; $736b: $65
	ld   d, [hl]                                     ; $736c: $56
	ld   l, l                                        ; $736d: $6d
	ld   h, c                                        ; $736e: $61
	halt                                             ; $736f: $76
	inc  b                                           ; $7370: $04
	sub  $52                                         ; $7371: $d6 $52
	ld   e, c                                        ; $7373: $59
	sub  a                                           ; $7374: $97
	dec  c                                           ; $7375: $0d
	sbc  l                                           ; $7376: $9d
	ld   e, c                                        ; $7377: $59
	sub  a                                           ; $7378: $97
	and  c                                           ; $7379: $a1
	sbc  l                                           ; $737a: $9d
	sbc  a                                           ; $737b: $9f
	dec  c                                           ; $737c: $0d
	nop                                              ; $737d: $00
	ld   a, [bc]                                     ; $737e: $0a
	ld   b, $83                                      ; $737f: $06 $83
	ld   bc, $8901                                   ; $7381: $01 $01 $89
	ld   a, b                                        ; $7384: $78
	sbc  [hl]                                        ; $7385: $9e
	and  a                                           ; $7386: $a7
	jp   nz, Jump_066_7f02                           ; $7387: $c2 $02 $7f

	ld   e, l                                        ; $738a: $5d
	ld   e, c                                        ; $738b: $59
	sub  a                                           ; $738c: $97
	dec  c                                           ; $738d: $0d
	adc  h                                           ; $738e: $8c
	ld   l, l                                        ; $738f: $6d
	ld   [bc], a                                     ; $7390: $02
	xor  d                                           ; $7391: $aa
	ld   [hl], l                                     ; $7392: $75
	rst  $38                                         ; $7393: $ff
	rst  $38                                         ; $7394: $ff
	dec  c                                           ; $7395: $0d
	nop                                              ; $7396: $00
	ld   a, [bc]                                     ; $7397: $0a
	dec  c                                           ; $7398: $0d
	nop                                              ; $7399: $00
	nop                                              ; $739a: $00
	rrca                                             ; $739b: $0f
	nop                                              ; $739c: $00
	ld   bc, $1e09                                   ; $739d: $01 $09 $1e
	nop                                              ; $73a0: $00
	rrca                                             ; $73a1: $0f
	nop                                              ; $73a2: $00
	ld   bc, $0201                                   ; $73a3: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $73a6: $cf
	dec  b                                           ; $73a7: $05
	ld   a, [de]                                     ; $73a8: $1a
	ld   h, e                                        ; $73a9: $63
	and  c                                           ; $73aa: $a1
	sbc  a                                           ; $73ab: $9f
	ld   h, c                                        ; $73ac: $61
	sbc  d                                           ; $73ad: $9a
	inc  b                                           ; $73ae: $04
	ld   hl, $bc03                                   ; $73af: $21 $03 $bc
	ld   e, c                                        ; $73b2: $59
	sub  a                                           ; $73b3: $97
	dec  c                                           ; $73b4: $0d
	inc  bc                                          ; $73b5: $03
	sbc  a                                           ; $73b6: $9f
	ld   [hl], c                                     ; $73b7: $71
	ld   [hl], h                                     ; $73b8: $74
	ld   e, e                                        ; $73b9: $5b
	ld   l, l                                        ; $73ba: $6d
	and  c                                           ; $73bb: $a1
	ld   [hl], l                                     ; $73bc: $75
	ld   h, a                                        ; $73bd: $67
	ld   e, a                                        ; $73be: $5f
	ld   [hl], a                                     ; $73bf: $77
	rst  $38                                         ; $73c0: $ff
	rst  $38                                         ; $73c1: $ff
	dec  c                                           ; $73c2: $0d
	nop                                              ; $73c3: $00
	ld   a, [bc]                                     ; $73c4: $0a
	inc  e                                           ; $73c5: $1c
	dec  b                                           ; $73c6: $05
	nop                                              ; $73c7: $00
	nop                                              ; $73c8: $00
	ld   bc, $f956                                   ; $73c9: $01 $56 $f9
	dec  c                                           ; $73cc: $0d
	and  a                                           ; $73cd: $a7
	jp   nz, $f979                                   ; $73ce: $c2 $79 $f9

	dec  c                                           ; $73d1: $0d
	nop                                              ; $73d2: $00
	ld   a, [bc]                                     ; $73d3: $0a
	rrca                                             ; $73d4: $0f
	nop                                              ; $73d5: $00
	ld   bc, $0101                                   ; $73d6: $01 $01 $01
	inc  bc                                          ; $73d9: $03
	ld   h, e                                        ; $73da: $63
	ld   [hl], h                                     ; $73db: $74
	sbc  [hl]                                        ; $73dc: $9e
	ld   [hl], a                                     ; $73dd: $77
	sbc  d                                           ; $73de: $9a
	and  b                                           ; $73df: $a0
	inc  bc                                          ; $73e0: $03
	ld   [$546b], a                                  ; $73e1: $ea $6b $54
	ld   e, c                                        ; $73e4: $59
	ld   a, b                                        ; $73e5: $78
	ld   sp, hl                                      ; $73e6: $f9
	ld   bc, $0d04                                   ; $73e7: $01 $04 $0d
	nop                                              ; $73ea: $00
	ld   a, [bc]                                     ; $73eb: $0a
	jr   jr_066_73f1                                 ; $73ec: $18 $03

	nop                                              ; $73ee: $00
	ld   [bc], a                                     ; $73ef: $02
	ld   c, a                                        ; $73f0: $4f

jr_066_73f1:
	ld   [bc], a                                     ; $73f1: $02
	xor  b                                           ; $73f2: $a8
	cp   h                                           ; $73f3: $bc
	call nz, $00c9                                   ; $73f4: $c4 $c9 $00
	nop                                              ; $73f7: $00
	ld   [bc], a                                     ; $73f8: $02
	cp   [hl]                                        ; $73f9: $be
	ld   [bc], a                                     ; $73fa: $02
	ld   b, a                                        ; $73fb: $47
	or   [hl]                                        ; $73fc: $b6
	db   $eb                                         ; $73fd: $eb
	cp   h                                           ; $73fe: $bc
	call nz, $00c9                                   ; $73ff: $c4 $c9 $00
	ld   bc, $985b                                   ; $7402: $01 $5b $98
	ld   l, l                                        ; $7405: $6d
	and  c                                           ; $7406: $a1
	adc  e                                           ; $7407: $8b
	nop                                              ; $7408: $00
	ld   [bc], a                                     ; $7409: $02
	rlca                                             ; $740a: $07
	ld   h, $02                                      ; $740b: $26 $02
	ld   [bc], a                                     ; $740d: $02
	ld   [bc], a                                     ; $740e: $02
	ld   bc, $2000                                   ; $740f: $01 $00 $20
	nop                                              ; $7412: $00
	rlca                                             ; $7413: $07
	ld   a, b                                        ; $7414: $78
	ld   [bc], a                                     ; $7415: $02
	ld   [bc], a                                     ; $7416: $02
	ld   [bc], a                                     ; $7417: $02
	ld   bc, $2001                                   ; $7418: $01 $01 $20
	nop                                              ; $741b: $00
	rlca                                             ; $741c: $07
	inc  d                                           ; $741d: $14
	inc  bc                                          ; $741e: $03
	ld   [bc], a                                     ; $741f: $02
	ld   [bc], a                                     ; $7420: $02
	ld   bc, $2002                                   ; $7421: $01 $02 $20
	nop                                              ; $7424: $00
	db   $10                                         ; $7425: $10
	ld   l, $00                                      ; $7426: $2e $00
	rrca                                             ; $7428: $0f
	nop                                              ; $7429: $00
	ld   bc, $0101                                   ; $742a: $01 $01 $01
	rlca                                             ; $742d: $07
	ld   [bc], a                                     ; $742e: $02
	ld   c, a                                        ; $742f: $4f
	ld   [bc], a                                     ; $7430: $02
	xor  b                                           ; $7431: $a8
	cp   h                                           ; $7432: $bc
	call nz, $01c9                                   ; $7433: $c4 $c9 $01
	ld   [$a178], sp                                 ; $7436: $08 $78 $a1
	ld   e, c                                        ; $7439: $59
	dec  c                                           ; $743a: $0d
	ld   d, d                                        ; $743b: $52
	ld   e, c                                        ; $743c: $59
	ld   e, d                                        ; $743d: $5a
	ld   [hl], l                                     ; $743e: $75
	ld   h, a                                        ; $743f: $67
	ld   e, c                                        ; $7440: $59
	ld   sp, hl                                      ; $7441: $f9
	dec  c                                           ; $7442: $0d
	nop                                              ; $7443: $00
	ld   a, [bc]                                     ; $7444: $0a
	rrca                                             ; $7445: $0f
	dec  b                                           ; $7446: $05
	nop                                              ; $7447: $00
	dec  e                                           ; $7448: $1d
	ld   b, b                                        ; $7449: $40
	dec  d                                           ; $744a: $15
	inc  bc                                          ; $744b: $03
	dec  d                                           ; $744c: $15
	ld   bc, $2801                                   ; $744d: $01 $01 $28
	nop                                              ; $7450: $00
	ld   bc, $5858                                   ; $7451: $01 $58 $58
	ld   e, e                                        ; $7454: $5b
	ld   a, c                                        ; $7455: $79
	sbc  a                                           ; $7456: $9f
	dec  c                                           ; $7457: $0d
	ld   [bc], a                                     ; $7458: $02
	ld   c, a                                        ; $7459: $4f
	ld   [bc], a                                     ; $745a: $02
	xor  b                                           ; $745b: $a8
	cp   h                                           ; $745c: $bc
	call nz, Call_066_7dc9                           ; $745d: $c4 $c9 $7d
	ld   d, d                                        ; $7460: $52
	ld   e, l                                        ; $7461: $5d
	ld   [hl], d                                     ; $7462: $72
	ld   d, b                                        ; $7463: $50
	ld   [hl], c                                     ; $7464: $71

Jump_066_7465:
	ld   [hl], h                                     ; $7465: $74
	sub  b                                           ; $7466: $90
	dec  c                                           ; $7467: $0d
	dec  b                                           ; $7468: $05
	sub  [hl]                                        ; $7469: $96
	sub  a                                           ; $746a: $97
	add  [hl]                                        ; $746b: $86
	and  c                                           ; $746c: $a1
	ld   e, c                                        ; $746d: $59
	sub  a                                           ; $746e: $97
	ld   a, b                                        ; $746f: $78
	sbc  a                                           ; $7470: $9f

Jump_066_7471:
	dec  c                                           ; $7471: $0d
	nop                                              ; $7472: $00
	ld   a, [bc]                                     ; $7473: $0a
	ld   b, $4e                                      ; $7474: $06 $4e
	inc  bc                                          ; $7476: $03
	db   $10                                         ; $7477: $10
	cpl                                              ; $7478: $2f
	nop                                              ; $7479: $00
	rrca                                             ; $747a: $0f
	nop                                              ; $747b: $00
	ld   bc, $0201                                   ; $747c: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $747f: $cf
	dec  b                                           ; $7480: $05
	ld   a, [de]                                     ; $7481: $1a
	ld   h, e                                        ; $7482: $63
	and  c                                           ; $7483: $a1
	ld   a, c                                        ; $7484: $79
	ld   a, l                                        ; $7485: $7d
	dec  c                                           ; $7486: $0d
	nop                                              ; $7487: $00
	dec  b                                           ; $7488: $05
	add  b                                           ; $7489: $80
	ld   l, $01                                      ; $748a: $2e $01
	ld   bc, $0100                                   ; $748c: $01 $00 $01
	ld   bc, $0207                                   ; $748f: $01 $07 $02
	cp   [hl]                                        ; $7492: $be
	ld   [bc], a                                     ; $7493: $02
	ld   b, a                                        ; $7494: $47
	or   [hl]                                        ; $7495: $b6
	db   $eb                                         ; $7496: $eb
	cp   h                                           ; $7497: $bc
	call nz, $01c9                                   ; $7498: $c4 $c9 $01
	ld   [$780d], sp                                 ; $749b: $08 $0d $78
	and  c                                           ; $749e: $a1
	ld   e, c                                        ; $749f: $59
	ld   d, d                                        ; $74a0: $52
	ld   e, c                                        ; $74a1: $59
	ld   e, d                                        ; $74a2: $5a
	ld   [hl], l                                     ; $74a3: $75
	ld   h, l                                        ; $74a4: $65
	sub  l                                           ; $74a5: $95
	ld   d, h                                        ; $74a6: $54
	ld   e, c                                        ; $74a7: $59
	ld   sp, hl                                      ; $74a8: $f9
	dec  c                                           ; $74a9: $0d
	nop                                              ; $74aa: $00
	ld   a, [bc]                                     ; $74ab: $0a
	inc  e                                           ; $74ac: $1c
	dec  b                                           ; $74ad: $05
	ld   bc, $1d01                                   ; $74ae: $01 $01 $1d
	ld   b, b                                        ; $74b1: $40
	dec  d                                           ; $74b2: $15
	inc  bc                                          ; $74b3: $03
	dec  d                                           ; $74b4: $15
	ld   bc, $2803                                   ; $74b5: $01 $03 $28
	nop                                              ; $74b8: $00
	ld   bc, $7158                                   ; $74b9: $01 $58 $71
	ld   a, [$a910]                                  ; $74bc: $fa $10 $a9
	xor  c                                           ; $74bf: $a9
	and  c                                           ; $74c0: $a1
	ld   e, c                                        ; $74c1: $59
	ld   sp, hl                                      ; $74c2: $f9
	dec  c                                           ; $74c3: $0d
	ld   h, c                                        ; $74c4: $61
	ld   a, h                                        ; $74c5: $7c
	inc  bc                                          ; $74c6: $03
	ld   l, e                                        ; $74c7: $6b
	ld   a, h                                        ; $74c8: $7c
	or   [hl]                                        ; $74c9: $b6
	db   $eb                                         ; $74ca: $eb
	ld   e, d                                        ; $74cb: $5a
	dec  c                                           ; $74cc: $0d
	inc  b                                           ; $74cd: $04
	db   $e3                                         ; $74ce: $e3
	ld   h, l                                        ; $74cf: $65
	ld   e, c                                        ; $74d0: $59
	ld   [hl], c                                     ; $74d1: $71
	ld   l, l                                        ; $74d2: $6d
	and  c                                           ; $74d3: $a1
	sub  d                                           ; $74d4: $92
	sbc  a                                           ; $74d5: $9f
	dec  c                                           ; $74d6: $0d
	nop                                              ; $74d7: $00
	ld   a, [bc]                                     ; $74d8: $0a
	inc  e                                           ; $74d9: $1c
	dec  b                                           ; $74da: $05
	dec  b                                           ; $74db: $05
	dec  b                                           ; $74dc: $05
	ld   bc, $be02                                   ; $74dd: $01 $02 $be
	ld   [bc], a                                     ; $74e0: $02
	ld   b, a                                        ; $74e1: $47
	ld   [hl], c                                     ; $74e2: $71
	ld   l, a                                        ; $74e3: $6f
	sub  e                                           ; $74e4: $93
	ei                                               ; $74e5: $fb
	halt                                             ; $74e6: $76
	ld   h, c                                        ; $74e7: $61
	sbc  e                                           ; $74e8: $9b
	ld   e, d                                        ; $74e9: $5a
	xor  c                                           ; $74ea: $a9
	xor  c                                           ; $74eb: $a9
	ld   a, b                                        ; $74ec: $78
	sbc  a                                           ; $74ed: $9f
	dec  c                                           ; $74ee: $0d
	or   [hl]                                        ; $74ef: $b6
	db   $eb                                         ; $74f0: $eb
	ld   [bc], a                                     ; $74f1: $02
	sub  e                                           ; $74f2: $93
	ld   h, l                                        ; $74f3: $65
	ld   h, a                                        ; $74f4: $67
	sbc  c                                           ; $74f5: $99
	halt                                             ; $74f6: $76
	ld   e, e                                        ; $74f7: $5b
	ld   a, c                                        ; $74f8: $79
	dec  c                                           ; $74f9: $0d
	xor  c                                           ; $74fa: $a9
	xor  c                                           ; $74fb: $a9
	ld   e, e                                        ; $74fc: $5b
	and  c                                           ; $74fd: $a1
	ld   l, a                                        ; $74fe: $6f
	sub  l                                           ; $74ff: $95
	ld   d, h                                        ; $7500: $54
	ld   [bc], a                                     ; $7501: $02
	scf                                              ; $7502: $37
	ld   e, d                                        ; $7503: $5a
	ld   l, l                                        ; $7504: $6d
	sub  b                                           ; $7505: $90
	ld   [hl], h                                     ; $7506: $74
	sbc  c                                           ; $7507: $99
	sbc  a                                           ; $7508: $9f
	dec  c                                           ; $7509: $0d
	nop                                              ; $750a: $00
	ld   a, [bc]                                     ; $750b: $0a
	inc  e                                           ; $750c: $1c
	dec  b                                           ; $750d: $05
	nop                                              ; $750e: $00
	nop                                              ; $750f: $00
	ld   b, $4e                                      ; $7510: $06 $4e
	inc  bc                                          ; $7512: $03
	db   $10                                         ; $7513: $10
	jr   nc, jr_066_7516                             ; $7514: $30 $00

jr_066_7516:
	rrca                                             ; $7516: $0f
	nop                                              ; $7517: $00
	ld   bc, $0101                                   ; $7518: $01 $01 $01
	rlca                                             ; $751b: $07
	ld   e, e                                        ; $751c: $5b
	sbc  b                                           ; $751d: $98
	ld   l, l                                        ; $751e: $6d
	and  c                                           ; $751f: $a1
	adc  e                                           ; $7520: $8b
	ld   bc, $7508                                   ; $7521: $01 $08 $75
	ld   h, a                                        ; $7524: $67
	sbc  a                                           ; $7525: $9f
	dec  c                                           ; $7526: $0d
	ld   e, b                                        ; $7527: $58
	ld   d, d                                        ; $7528: $52
	ld   h, l                                        ; $7529: $65
	ld   d, d                                        ; $752a: $52
	ld   [hl], l                                     ; $752b: $75
	ld   h, a                                        ; $752c: $67
	sub  [hl]                                        ; $752d: $96
	sbc  a                                           ; $752e: $9f
	dec  c                                           ; $752f: $0d
	nop                                              ; $7530: $00
	ld   a, [bc]                                     ; $7531: $0a
	rrca                                             ; $7532: $0f
	dec  b                                           ; $7533: $05
	nop                                              ; $7534: $00
	ld   bc, $5858                                   ; $7535: $01 $58 $58
	ld   e, e                                        ; $7538: $5b
	ld   a, c                                        ; $7539: $79
	rst  $38                                         ; $753a: $ff
	rst  $38                                         ; $753b: $ff
	sbc  a                                           ; $753c: $9f
	dec  c                                           ; $753d: $0d
	ld   d, b                                        ; $753e: $50
	halt                                             ; $753f: $76
	ld   [hl], l                                     ; $7540: $75
	ld   d, d                                        ; $7541: $52
	ld   l, l                                        ; $7542: $6d
	ld   l, [hl]                                     ; $7543: $6e
	ld   e, l                                        ; $7544: $5d
	sbc  l                                           ; $7545: $9d
	sbc  a                                           ; $7546: $9f
	dec  c                                           ; $7547: $0d
	nop                                              ; $7548: $00
	ld   a, [bc]                                     ; $7549: $0a
	ld   b, $4e                                      ; $754a: $06 $4e
	inc  bc                                          ; $754c: $03
	ld   bc, $9e50                                   ; $754d: $01 $50 $9e
	inc  bc                                          ; $7550: $03
	ld   l, l                                        ; $7551: $6d
	dec  b                                           ; $7552: $05
	add  hl, de                                      ; $7553: $19
	ld   a, h                                        ; $7554: $7c
	inc  bc                                          ; $7555: $03
	ld   l, a                                        ; $7556: $6f
	ld   [bc], a                                     ; $7557: $02
	xor  c                                           ; $7558: $a9
	sub  d                                           ; $7559: $92
	sbc  a                                           ; $755a: $9f
	dec  c                                           ; $755b: $0d
	ld   [bc], a                                     ; $755c: $02
	and  l                                           ; $755d: $a5
	inc  b                                           ; $755e: $04
	xor  d                                           ; $755f: $aa
	sub  b                                           ; $7560: $90
	ld   [bc], a                                     ; $7561: $02
	jr   nz, jr_066_7568                             ; $7562: $20 $04

	xor  d                                           ; $7564: $aa
	sbc  [hl]                                        ; $7565: $9e
	ld   e, d                                        ; $7566: $5a
	and  c                                           ; $7567: $a1

jr_066_7568:
	ld   a, [hl]                                     ; $7568: $7e
	sbc  b                                           ; $7569: $98
	sub  d                                           ; $756a: $92
	sbc  a                                           ; $756b: $9f
	dec  c                                           ; $756c: $0d
	nop                                              ; $756d: $00
	ld   a, [bc]                                     ; $756e: $0a
	dec  c                                           ; $756f: $0d
	nop                                              ; $7570: $00
	nop                                              ; $7571: $00
	rrca                                             ; $7572: $0f
	nop                                              ; $7573: $00
	ld   bc, $1e09                                   ; $7574: $01 $09 $1e
	nop                                              ; $7577: $00
	rrca                                             ; $7578: $0f
	nop                                              ; $7579: $00
	ld   bc, $a301                                   ; $757a: $01 $01 $a3
	and  l                                           ; $757d: $a5
	db   $ec                                         ; $757e: $ec
	cp   d                                           ; $757f: $ba
	ld   [hl], c                                     ; $7580: $71
	ld   [hl], h                                     ; $7581: $74
	sbc  [hl]                                        ; $7582: $9e
	ld   [bc], a                                     ; $7583: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7584: $cf
	dec  b                                           ; $7585: $05
	ld   a, [de]                                     ; $7586: $1a
	ld   h, e                                        ; $7587: $63
	and  c                                           ; $7588: $a1
	ld   e, c                                        ; $7589: $59
	sub  a                                           ; $758a: $97
	dec  c                                           ; $758b: $0d
	ld   [bc], a                                     ; $758c: $02
	sub  l                                           ; $758d: $95
	ld   [hl], h                                     ; $758e: $74
	sbc  [hl]                                        ; $758f: $9e
	ld   [hl], a                                     ; $7590: $77
	and  c                                           ; $7591: $a1
	ld   a, b                                        ; $7592: $78
	inc  bc                                          ; $7593: $03
	add  [hl]                                        ; $7594: $86
	ld   [hl], l                                     ; $7595: $75
	ld   h, a                                        ; $7596: $67
	ld   e, c                                        ; $7597: $59
	ld   sp, hl                                      ; $7598: $f9
	dec  c                                           ; $7599: $0d
	nop                                              ; $759a: $00
	ld   a, [bc]                                     ; $759b: $0a
	inc  e                                           ; $759c: $1c
	dec  b                                           ; $759d: $05
	nop                                              ; $759e: $00
	nop                                              ; $759f: $00
	ld   bc, $a5a3                                   ; $75a0: $01 $a3 $a5
	db   $ec                                         ; $75a3: $ec
	cp   d                                           ; $75a4: $ba
	ld   e, c                                        ; $75a5: $59
	ld   d, d                                        ; $75a6: $52
	ld   a, b                                        ; $75a7: $78
	sbc  a                                           ; $75a8: $9f
	dec  c                                           ; $75a9: $0d
	ld   l, e                                        ; $75aa: $6b
	sub  d                                           ; $75ab: $92
	ld   a, b                                        ; $75ac: $78
	sbc  [hl]                                        ; $75ad: $9e
	adc  h                                           ; $75ae: $8c
	ld   l, [hl]                                     ; $75af: $6e
	inc  bc                                          ; $75b0: $03
	add  [hl]                                        ; $75b1: $86
	ld   [bc], a                                     ; $75b2: $02
	xor  l                                           ; $75b3: $ad
	sub  d                                           ; $75b4: $92
	ld   a, h                                        ; $75b5: $7c
	ld   a, c                                        ; $75b6: $79
	dec  c                                           ; $75b7: $0d
	ld   h, l                                        ; $75b8: $65
	ld   [hl], c                                     ; $75b9: $71
	ld   e, c                                        ; $75ba: $59
	sbc  b                                           ; $75bb: $98
	sub  d                                           ; $75bc: $92
	ld   [hl], c                                     ; $75bd: $71
	ld   [hl], h                                     ; $75be: $74
	sbc  c                                           ; $75bf: $99
	halt                                             ; $75c0: $76
	dec  b                                           ; $75c1: $05
	pop  de                                          ; $75c2: $d1
	ld   d, h                                        ; $75c3: $54
	ld   [hl], l                                     ; $75c4: $75
	sbc  a                                           ; $75c5: $9f
	dec  c                                           ; $75c6: $0d
	nop                                              ; $75c7: $00
	ld   a, [bc]                                     ; $75c8: $0a
	ld   bc, $0458                                   ; $75c9: $01 $58 $04
	ld   l, $63                                      ; $75cc: $2e $63
	and  c                                           ; $75ce: $a1
	sbc  [hl]                                        ; $75cf: $9e
	ld   e, b                                        ; $75d0: $58
	inc  b                                           ; $75d1: $04
	add  c                                           ; $75d2: $81
	ld   h, e                                        ; $75d3: $63
	and  c                                           ; $75d4: $a1
	halt                                             ; $75d5: $76
	ld   a, l                                        ; $75d6: $7d
	ld   a, b                                        ; $75d7: $78

Call_066_75d8:
	sbc  d                                           ; $75d8: $9a
	dec  c                                           ; $75d9: $0d
	ld   [bc], a                                     ; $75da: $02
	jr   nz, jr_066_75e0                             ; $75db: $20 $03

	add  d                                           ; $75dd: $82
	ld   [hl], l                                     ; $75de: $75
	ld   e, d                                        ; $75df: $5a

jr_066_75e0:
	and  c                                           ; $75e0: $a1
	ld   a, [hl]                                     ; $75e1: $7e
	ld   [hl], c                                     ; $75e2: $71
	ld   [hl], h                                     ; $75e3: $74
	sbc  c                                           ; $75e4: $99

Jump_066_75e5:
	ld   a, b                                        ; $75e5: $78
	and  c                                           ; $75e6: $a1
	ld   [hl], h                                     ; $75e7: $74
	sbc  [hl]                                        ; $75e8: $9e
	dec  c                                           ; $75e9: $0d
	xor  c                                           ; $75ea: $a9
	db   $eb                                         ; $75eb: $eb
	and  l                                           ; $75ec: $a5
	halt                                             ; $75ed: $76
	dec  b                                           ; $75ee: $05
	pop  de                                          ; $75ef: $d1
	ld   d, h                                        ; $75f0: $54
	sbc  l                                           ; $75f1: $9d
	sbc  a                                           ; $75f2: $9f
	dec  c                                           ; $75f3: $0d
	nop                                              ; $75f4: $00
	ld   a, [bc]                                     ; $75f5: $0a
	ld   bc, $956f                                   ; $75f6: $01 $6f $95
	ld   [hl], c                                     ; $75f9: $71
	halt                                             ; $75fa: $76
	sbc  l                                           ; $75fb: $9d
	ld   e, d                                        ; $75fc: $5a
	adc  h                                           ; $75fd: $8c
	adc  h                                           ; $75fe: $8c
	ld   a, b                                        ; $75ff: $78
	ld   a, h                                        ; $7600: $7c
	ld   a, l                                        ; $7601: $7d
	dec  c                                           ; $7602: $0d
	ld   e, e                                        ; $7603: $5b
	ld   [hl], c                                     ; $7604: $71
	halt                                             ; $7605: $76
	inc  bc                                          ; $7606: $03
	add  [hl]                                        ; $7607: $86
	ld   [bc], a                                     ; $7608: $02
	xor  l                                           ; $7609: $ad
	ld   e, c                                        ; $760a: $59
	sub  a                                           ; $760b: $97
	inc  b                                           ; $760c: $04
	ld   c, $03                                      ; $760d: $0e $03
	add  d                                           ; $760f: $82
	ld   a, c                                        ; $7610: $79
	dec  c                                           ; $7611: $0d
	inc  bc                                          ; $7612: $03
	ld   [de], a                                     ; $7613: $12
	inc  bc                                          ; $7614: $03
	jp   nc, Jump_066_7465                           ; $7615: $d2 $65 $74

	ld   d, d                                        ; $7618: $52
	sbc  c                                           ; $7619: $99
	ld   e, c                                        ; $761a: $59
	sub  a                                           ; $761b: $97
	sub  d                                           ; $761c: $92
	ld   a, b                                        ; $761d: $78
	sbc  a                                           ; $761e: $9f
	dec  c                                           ; $761f: $0d
	nop                                              ; $7620: $00
	ld   a, [bc]                                     ; $7621: $0a
	ld   bc, $7889                                   ; $7622: $01 $89 $78
	sbc  [hl]                                        ; $7625: $9e
	and  a                                           ; $7626: $a7
	jp   nz, Jump_066_7f02                           ; $7627: $c2 $02 $7f

jr_066_762a:
	ld   e, l                                        ; $762a: $5d
	ld   e, c                                        ; $762b: $59
	sub  a                                           ; $762c: $97
	sbc  a                                           ; $762d: $9f
	dec  c                                           ; $762e: $0d
	ld   [bc], a                                     ; $762f: $02
	and  l                                           ; $7630: $a5
	inc  b                                           ; $7631: $04
	xor  d                                           ; $7632: $aa
	sub  b                                           ; $7633: $90
	ld   [bc], a                                     ; $7634: $02
	jr   nz, jr_066_763b                             ; $7635: $20 $04

	xor  d                                           ; $7637: $aa
	sbc  [hl]                                        ; $7638: $9e
	ld   e, d                                        ; $7639: $5a
	and  c                                           ; $763a: $a1

jr_066_763b:
	ld   a, [hl]                                     ; $763b: $7e
	sbc  b                                           ; $763c: $98
	sub  d                                           ; $763d: $92
	sbc  a                                           ; $763e: $9f
	dec  c                                           ; $763f: $0d
	nop                                              ; $7640: $00
	ld   a, [bc]                                     ; $7641: $0a
	dec  c                                           ; $7642: $0d
	nop                                              ; $7643: $00
	nop                                              ; $7644: $00
	rrca                                             ; $7645: $0f
	nop                                              ; $7646: $00
	ld   bc, $1e09                                   ; $7647: $01 $09 $1e
	nop                                              ; $764a: $00
	nop                                              ; $764b: $00
	rrca                                             ; $764c: $0f
	nop                                              ; $764d: $00
	ld   bc, $020d                                   ; $764e: $01 $0d $02
	nop                                              ; $7651: $00
	ld   [bc], a                                     ; $7652: $02
	ld   bc, $7d58                                   ; $7653: $01 $58 $7d
	sub  [hl]                                        ; $7656: $96
	ld   d, h                                        ; $7657: $54
	ld   h, d                                        ; $7658: $62
	ld   h, h                                        ; $7659: $64
	ld   d, d                                        ; $765a: $52
	adc  h                                           ; $765b: $8c
	ld   h, a                                        ; $765c: $67
	sbc  a                                           ; $765d: $9f
	dec  c                                           ; $765e: $0d
	ld   h, a                                        ; $765f: $67
	adc  l                                           ; $7660: $8d
	sbc  d                                           ; $7661: $9a
	ld   h, e                                        ; $7662: $63
	and  c                                           ; $7663: $a1
	sbc  a                                           ; $7664: $9f
	dec  c                                           ; $7665: $0d
	nop                                              ; $7666: $00
	ld   a, [bc]                                     ; $7667: $0a
	inc  e                                           ; $7668: $1c
	ld   [bc], a                                     ; $7669: $02
	nop                                              ; $766a: $00
	nop                                              ; $766b: $00
	ld   bc, $9750                                   ; $766c: $01 $50 $97
	sbc  [hl]                                        ; $766f: $9e
	ld   [$6300], sp                                 ; $7670: $08 $00 $63
	and  c                                           ; $7673: $a1
	sbc  a                                           ; $7674: $9f
	dec  c                                           ; $7675: $0d
	ld   e, b                                        ; $7676: $58
	ld   a, l                                        ; $7677: $7d

Jump_066_7678:
	sub  [hl]                                        ; $7678: $96
	ld   d, h                                        ; $7679: $54
	sbc  a                                           ; $767a: $9f
	dec  c                                           ; $767b: $0d
	nop                                              ; $767c: $00
	ld   a, [bc]                                     ; $767d: $0a
	rrca                                             ; $767e: $0f
	nop                                              ; $767f: $00
	ld   bc, $0101                                   ; $7680: $01 $01 $01
	inc  bc                                          ; $7683: $03
	inc  b                                           ; $7684: $04
	ld   c, c                                        ; $7685: $49
	ld   a, h                                        ; $7686: $7c
	dec  b                                           ; $7687: $05
	jr   nz, jr_066_762a                             ; $7688: $20 $a0

	ld   h, l                                        ; $768a: $65
	sub  [hl]                                        ; $768b: $96
	ld   d, h                                        ; $768c: $54
	ld   e, c                                        ; $768d: $59
	ld   a, b                                        ; $768e: $78
	rst  $38                                         ; $768f: $ff
	rst  $38                                         ; $7690: $ff
	ld   bc, $0d04                                   ; $7691: $01 $04 $0d

jr_066_7694:
	nop                                              ; $7694: $00
	ld   a, [bc]                                     ; $7695: $0a
	add  hl, de                                      ; $7696: $19
	dec  b                                           ; $7697: $05
	inc  bc                                          ; $7698: $03
	ld   [bc], a                                     ; $7699: $02
	jr   nz, jr_066_7694                             ; $769a: $20 $f8

	ld   [bc], a                                     ; $769c: $02
	sbc  e                                           ; $769d: $9b
	ld   a, h                                        ; $769e: $7c
	ld   [bc], a                                     ; $769f: $02

Jump_066_76a0:
	ld   de, $4c03                                   ; $76a0: $11 $03 $4c
	inc  bc                                          ; $76a3: $03
	sbc  $79                                         ; $76a4: $de $79
	ld   [hl], d                                     ; $76a6: $72
	ld   d, d                                        ; $76a7: $52
	ld   [hl], h                                     ; $76a8: $74
	ld   [bc], a                                     ; $76a9: $02
	jp   nz, $005d                                   ; $76aa: $c2 $5d $00

	nop                                              ; $76ad: $00
	ld   [bc], a                                     ; $76ae: $02
	sbc  d                                           ; $76af: $9a
	adc  l                                           ; $76b0: $8d
	ld   a, h                                        ; $76b1: $7c
	ret  nz                                          ; $76b2: $c0

	and  l                                           ; $76b3: $a5
	ret  c                                           ; $76b4: $d8

	ld   a, c                                        ; $76b5: $79
	ld   [hl], d                                     ; $76b6: $72
	ld   d, d                                        ; $76b7: $52
	ld   [hl], h                                     ; $76b8: $74
	ld   [bc], a                                     ; $76b9: $02
	jp   nz, $005d                                   ; $76ba: $c2 $5d $00

	ld   bc, $d704                                   ; $76bd: $01 $04 $d7
	inc  b                                           ; $76c0: $04
	ld   hl, $7279                                   ; $76c1: $21 $79 $72
	ld   d, d                                        ; $76c4: $52
	ld   [hl], h                                     ; $76c5: $74
	ld   [bc], a                                     ; $76c6: $02
	jp   nz, $005d                                   ; $76c7: $c2 $5d $00

	ld   [bc], a                                     ; $76ca: $02
	rlca                                             ; $76cb: $07
	cp   a                                           ; $76cc: $bf
	nop                                              ; $76cd: $00
	ld   [bc], a                                     ; $76ce: $02
	inc  bc                                          ; $76cf: $03
	ld   bc, $2000                                   ; $76d0: $01 $00 $20
	nop                                              ; $76d3: $00
	rlca                                             ; $76d4: $07
	push bc                                          ; $76d5: $c5
	inc  bc                                          ; $76d6: $03
	ld   [bc], a                                     ; $76d7: $02
	inc  bc                                          ; $76d8: $03
	ld   bc, $2001                                   ; $76d9: $01 $01 $20
	nop                                              ; $76dc: $00
	rlca                                             ; $76dd: $07
	rst  $38                                         ; $76de: $ff
	dec  b                                           ; $76df: $05
	ld   [bc], a                                     ; $76e0: $02
	inc  bc                                          ; $76e1: $03
	ld   bc, $2002                                   ; $76e2: $01 $02 $20
	nop                                              ; $76e5: $00
	ld   b, $9d                                      ; $76e6: $06 $9d
	nop                                              ; $76e8: $00
	rrca                                             ; $76e9: $0f
	ld   [bc], a                                     ; $76ea: $02
	nop                                              ; $76eb: $00
	ld   bc, $a502                                   ; $76ec: $01 $02 $a5
	inc  b                                           ; $76ef: $04
	xor  d                                           ; $76f0: $aa
	sub  b                                           ; $76f1: $90
	ld   [bc], a                                     ; $76f2: $02
	jr   nz, jr_066_76f9                             ; $76f3: $20 $04

	xor  d                                           ; $76f5: $aa
	sbc  [hl]                                        ; $76f6: $9e
	ld   e, d                                        ; $76f7: $5a
	and  c                                           ; $76f8: $a1

jr_066_76f9:
	ld   a, [hl]                                     ; $76f9: $7e
	sbc  b                                           ; $76fa: $98
	ld   a, b                                        ; $76fb: $78
	ld   h, e                                        ; $76fc: $63
	ld   d, d                                        ; $76fd: $52
	sbc  a                                           ; $76fe: $9f
	dec  c                                           ; $76ff: $0d
	nop                                              ; $7700: $00
	ld   a, [bc]                                     ; $7701: $0a
	dec  c                                           ; $7702: $0d
	nop                                              ; $7703: $00
	nop                                              ; $7704: $00
	rrca                                             ; $7705: $0f
	nop                                              ; $7706: $00
	ld   bc, $1e09                                   ; $7707: $01 $09 $1e
	nop                                              ; $770a: $00
	rrca                                             ; $770b: $0f
	nop                                              ; $770c: $00
	ld   bc, $6701                                   ; $770d: $01 $01 $67
	adc  l                                           ; $7710: $8d

jr_066_7711:
	sbc  d                                           ; $7711: $9a
	ld   h, e                                        ; $7712: $63
	and  c                                           ; $7713: $a1
	ld   [hl], h                                     ; $7714: $74
	dec  c                                           ; $7715: $0d
	ld   [bc], a                                     ; $7716: $02
	jr   nz, jr_066_7711                             ; $7717: $20 $f8

	ld   [bc], a                                     ; $7719: $02
	sbc  e                                           ; $771a: $9b
	ld   a, c                                        ; $771b: $79
	ld   [hl], a                                     ; $771c: $77
	sbc  d                                           ; $771d: $9a
	ld   e, l                                        ; $771e: $5d
	sub  a                                           ; $771f: $97
	ld   d, d                                        ; $7720: $52
	ld   a, h                                        ; $7721: $7c
	ld   [bc], a                                     ; $7722: $02
	ld   de, $4c03                                   ; $7723: $11 $03 $4c
	inc  bc                                          ; $7726: $03
	sbc  $a0                                         ; $7727: $de $a0
	dec  c                                           ; $7729: $0d
	inc  bc                                          ; $772a: $03
	xor  [hl]                                        ; $772b: $ae
	ld   d, h                                        ; $772c: $54
	ld   a, h                                        ; $772d: $7c
	ld   [hl], l                                     ; $772e: $75
	ld   h, a                                        ; $772f: $67
	ld   e, c                                        ; $7730: $59
	ld   sp, hl                                      ; $7731: $f9
	dec  c                                           ; $7732: $0d
	nop                                              ; $7733: $00
	ld   a, [bc]                                     ; $7734: $0a
	inc  e                                           ; $7735: $1c
	ld   [bc], a                                     ; $7736: $02
	nop                                              ; $7737: $00
	nop                                              ; $7738: $00
	ld   bc, $9a77                                   ; $7739: $01 $77 $9a
	ld   e, l                                        ; $773c: $5d
	sub  a                                           ; $773d: $97
	ld   d, d                                        ; $773e: $52
	ld   l, [hl]                                     ; $773f: $6e
	halt                                             ; $7740: $76
	dec  b                                           ; $7741: $05
	pop  de                                          ; $7742: $d1
	ld   d, d                                        ; $7743: $52
	adc  h                                           ; $7744: $8c
	ld   h, a                                        ; $7745: $67
	ld   sp, hl                                      ; $7746: $f9
	dec  c                                           ; $7747: $0d
	nop                                              ; $7748: $00
	ld   a, [bc]                                     ; $7749: $0a
	add  hl, de                                      ; $774a: $19
	dec  b                                           ; $774b: $05
	inc  bc                                          ; $774c: $03
	ld   e, b                                        ; $774d: $58
	dec  b                                           ; $774e: $05
	inc  l                                           ; $774f: $2c
	dec  b                                           ; $7750: $05
	ld   [bc], a                                     ; $7751: $02
	ld   a, h                                        ; $7752: $7c
	inc  b                                           ; $7753: $04
	ld   [hl], d                                     ; $7754: $72
	inc  b                                           ; $7755: $04
	sbc  [hl]                                        ; $7756: $9e
	nop                                              ; $7757: $00
	nop                                              ; $7758: $00
	ld   l, e                                        ; $7759: $6b
	and  c                                           ; $775a: $a1
	ld   a, b                                        ; $775b: $78
	ld   a, h                                        ; $775c: $7c
	ld   [bc], a                                     ; $775d: $02
	ccf                                              ; $775e: $3f
	inc  bc                                          ; $775f: $03
	rla                                              ; $7760: $17
	ld   h, l                                        ; $7761: $65
	ld   l, l                                        ; $7762: $6d
	ld   h, c                                        ; $7763: $61
	halt                                             ; $7764: $76
	ld   e, d                                        ; $7765: $5a
	ld   a, b                                        ; $7766: $78
	ld   d, d                                        ; $7767: $52
	nop                                              ; $7768: $00
	ld   bc, $5004                                   ; $7769: $01 $04 $50
	ld   [bc], a                                     ; $776c: $02
	xor  c                                           ; $776d: $a9
	ld   [bc], a                                     ; $776e: $02
	adc  a                                           ; $776f: $8f
	ld   [bc], a                                     ; $7770: $02
	and  [hl]                                        ; $7771: $a6
	dec  b                                           ; $7772: $05
	ld   e, a                                        ; $7773: $5f
	inc  bc                                          ; $7774: $03
	rla                                              ; $7775: $17
	ld   a, h                                        ; $7776: $7c
	inc  b                                           ; $7777: $04
	ld   [hl], d                                     ; $7778: $72
	inc  b                                           ; $7779: $04
	sbc  [hl]                                        ; $777a: $9e
	nop                                              ; $777b: $00
	ld   [bc], a                                     ; $777c: $02
	rlca                                             ; $777d: $07
	ld   c, a                                        ; $777e: $4f
	ld   bc, $0302                                   ; $777f: $01 $02 $03
	ld   bc, $2000                                   ; $7782: $01 $00 $20
	nop                                              ; $7785: $00
	rlca                                             ; $7786: $07
	or   [hl]                                        ; $7787: $b6
	ld   bc, $0302                                   ; $7788: $01 $02 $03
	ld   bc, $2001                                   ; $778b: $01 $01 $20
	nop                                              ; $778e: $00
	rlca                                             ; $778f: $07
	ld   e, c                                        ; $7790: $59
	ld   [bc], a                                     ; $7791: $02
	ld   [bc], a                                     ; $7792: $02
	inc  bc                                          ; $7793: $03
	ld   bc, $2002                                   ; $7794: $01 $02 $20
	nop                                              ; $7797: $00
	ld   b, $e8                                      ; $7798: $06 $e8
	ld   [bc], a                                     ; $779a: $02
	rrca                                             ; $779b: $0f
	nop                                              ; $779c: $00
	ld   bc, $6b01                                   ; $779d: $01 $01 $6b
	ld   d, h                                        ; $77a0: $54
	ld   [hl], l                                     ; $77a1: $75
	ld   h, a                                        ; $77a2: $67
	ld   a, e                                        ; $77a3: $7b
	sbc  [hl]                                        ; $77a4: $9e
	dec  c                                           ; $77a5: $0d
	inc  b                                           ; $77a6: $04
	ld   [$9202], sp                                 ; $77a7: $08 $02 $92
	ld   a, h                                        ; $77aa: $7c
	ld   e, b                                        ; $77ab: $58
	dec  b                                           ; $77ac: $05
	inc  l                                           ; $77ad: $2c
	dec  b                                           ; $77ae: $05
	ld   [bc], a                                     ; $77af: $02
	ld   a, h                                        ; $77b0: $7c
	inc  b                                           ; $77b1: $04
	ld   [hl], d                                     ; $77b2: $72
	inc  b                                           ; $77b3: $04
	sbc  [hl]                                        ; $77b4: $9e
	ld   e, l                                        ; $77b5: $5d
	sub  a                                           ; $77b6: $97
	ld   d, d                                        ; $77b7: $52
	dec  c                                           ; $77b8: $0d
	ld   [hl], l                                     ; $77b9: $75
	ld   h, a                                        ; $77ba: $67
	ld   e, c                                        ; $77bb: $59
	ld   sp, hl                                      ; $77bc: $f9
	dec  c                                           ; $77bd: $0d
	nop                                              ; $77be: $00
	ld   a, [bc]                                     ; $77bf: $0a
	inc  e                                           ; $77c0: $1c
	ld   [bc], a                                     ; $77c1: $02
	ld   bc, $1d01                                   ; $77c2: $01 $01 $1d
	ld   b, b                                        ; $77c5: $40
	ld   [de], a                                     ; $77c6: $12
	inc  bc                                          ; $77c7: $03
	ld   [de], a                                     ; $77c8: $12
	ld   bc, $2802                                   ; $77c9: $01 $02 $28
	nop                                              ; $77cc: $00
	ld   bc, $5252                                   ; $77cd: $01 $52 $52
	ld   l, c                                        ; $77d0: $69
	and  c                                           ; $77d1: $a1
	ld   d, d                                        ; $77d2: $52
	ld   [hl], c                                     ; $77d3: $71
	ld   [hl], h                                     ; $77d4: $74
	adc  h                                           ; $77d5: $8c
	ld   h, a                                        ; $77d6: $67
	sbc  l                                           ; $77d7: $9d
	ld   a, e                                        ; $77d8: $7b
	sbc  a                                           ; $77d9: $9f
	dec  c                                           ; $77da: $0d
	adc  h                                           ; $77db: $8c
	sbc  [hl]                                        ; $77dc: $9e
	ld   e, b                                        ; $77dd: $58
	inc  b                                           ; $77de: $04
	db   $eb                                         ; $77df: $eb
	inc  b                                           ; $77e0: $04
	and  l                                           ; $77e1: $a5
	sub  d                                           ; $77e2: $92
	ld   e, b                                        ; $77e3: $58
	ld   [bc], a                                     ; $77e4: $02
	ld   d, c                                        ; $77e5: $51
	dec  b                                           ; $77e6: $05
	ld   a, [hl-]                                    ; $77e7: $3a
	inc  b                                           ; $77e8: $04
	ld   h, c                                        ; $77e9: $61
	halt                                             ; $77ea: $76
	ld   e, c                                        ; $77eb: $59
	ld   [hl], l                                     ; $77ec: $75
	sbc  [hl]                                        ; $77ed: $9e
	dec  c                                           ; $77ee: $0d
	ld   l, e                                        ; $77ef: $6b
	sbc  d                                           ; $77f0: $9a
	ld   e, l                                        ; $77f1: $5d
	sub  a                                           ; $77f2: $97
	ld   d, d                                        ; $77f3: $52
	ld   e, c                                        ; $77f4: $59
	ld   h, l                                        ; $77f5: $65
	sub  a                                           ; $77f6: $97
	ld   sp, hl                                      ; $77f7: $f9
	dec  c                                           ; $77f8: $0d
	nop                                              ; $77f9: $00
	ld   a, [bc]                                     ; $77fa: $0a
	inc  e                                           ; $77fb: $1c
	ld   [bc], a                                     ; $77fc: $02
	nop                                              ; $77fd: $00
	nop                                              ; $77fe: $00
	ld   b, $52                                      ; $77ff: $06 $52
	inc  bc                                          ; $7801: $03
	rrca                                             ; $7802: $0f
	nop                                              ; $7803: $00
	ld   bc, $6701                                   ; $7804: $01 $01 $67
	adc  l                                           ; $7807: $8d
	sbc  d                                           ; $7808: $9a
	ld   h, e                                        ; $7809: $63
	and  c                                           ; $780a: $a1
	ld   a, h                                        ; $780b: $7c
	ld   h, c                                        ; $780c: $61
	halt                                             ; $780d: $76
	ld   l, [hl]                                     ; $780e: $6e
	ld   e, c                                        ; $780f: $59
	sub  a                                           ; $7810: $97
	sbc  [hl]                                        ; $7811: $9e
	dec  c                                           ; $7812: $0d
	inc  bc                                          ; $7813: $03
	xor  [hl]                                        ; $7814: $ae
	ld   d, d                                        ; $7815: $52
	ld   l, l                                        ; $7816: $6d
	ld   d, d                                        ; $7817: $52
	inc  b                                           ; $7818: $04
	sbc  c                                           ; $7819: $99
	inc  b                                           ; $781a: $04
	dec  d                                           ; $781b: $15
	ld   [hl], l                                     ; $781c: $75
	sbc  [hl]                                        ; $781d: $9e
	ld   l, e                                        ; $781e: $6b
	and  c                                           ; $781f: $a1
	ld   a, b                                        ; $7820: $78
	ld   h, c                                        ; $7821: $61
	halt                                             ; $7822: $76
	dec  c                                           ; $7823: $0d
	ld   [bc], a                                     ; $7824: $02
	ccf                                              ; $7825: $3f
	inc  bc                                          ; $7826: $03
	rla                                              ; $7827: $17
	ld   h, l                                        ; $7828: $65
	ld   l, l                                        ; $7829: $6d
	ld   h, c                                        ; $782a: $61
	halt                                             ; $782b: $76
	ld   a, b                                        ; $782c: $78
	ld   d, d                                        ; $782d: $52
	halt                                             ; $782e: $76
	ld   e, c                                        ; $782f: $59
	rst  $38                                         ; $7830: $ff
	rst  $38                                         ; $7831: $ff
	dec  c                                           ; $7832: $0d
	nop                                              ; $7833: $00
	ld   a, [bc]                                     ; $7834: $0a
	inc  e                                           ; $7835: $1c
	ld   [bc], a                                     ; $7836: $02
	rlca                                             ; $7837: $07
	rlca                                             ; $7838: $07
	dec  e                                           ; $7839: $1d
	ld   b, b                                        ; $783a: $40
	ld   [de], a                                     ; $783b: $12
	inc  bc                                          ; $783c: $03
	ld   [de], a                                     ; $783d: $12
	ld   bc, $2902                                   ; $783e: $01 $02 $29
	nop                                              ; $7841: $00
	ld   bc, $8303                                   ; $7842: $01 $03 $83
	dec  b                                           ; $7845: $05
	dec  c                                           ; $7846: $0d
	ld   [hl], l                                     ; $7847: $75
	ld   h, a                                        ; $7848: $67
	sbc  l                                           ; $7849: $9d
	ld   a, e                                        ; $784a: $7b
	sbc  a                                           ; $784b: $9f
	dec  c                                           ; $784c: $0d
	ld   l, e                                        ; $784d: $6b
	and  c                                           ; $784e: $a1
	ld   a, b                                        ; $784f: $78
	ld   a, c                                        ; $7850: $79
	inc  b                                           ; $7851: $04
	sub  $02                                         ; $7852: $d6 $02
	ccf                                              ; $7854: $3f
	ld   [bc], a                                     ; $7855: $02
	cp   c                                           ; $7856: $b9
	ld   a, b                                        ; $7857: $78
	ld   e, b                                        ; $7858: $58
	ld   [bc], a                                     ; $7859: $02
	dec  sp                                          ; $785a: $3b
	ld   a, h                                        ; $785b: $7c
	dec  c                                           ; $785c: $0d
	inc  bc                                          ; $785d: $03
	xor  [hl]                                        ; $785e: $ae
	ld   d, d                                        ; $785f: $52
	inc  b                                           ; $7860: $04
	ld   a, b                                        ; $7861: $78
	ld   a, l                                        ; $7862: $7d
	ld   h, l                                        ; $7863: $65
	ld   [hl], h                                     ; $7864: $74
	adc  h                                           ; $7865: $8c
	ld   l, c                                        ; $7866: $69
	and  c                                           ; $7867: $a1
	ld   h, c                                        ; $7868: $61
	halt                                             ; $7869: $76
	sub  [hl]                                        ; $786a: $96
	sbc  a                                           ; $786b: $9f
	dec  c                                           ; $786c: $0d
	nop                                              ; $786d: $00
	ld   a, [bc]                                     ; $786e: $0a
	inc  e                                           ; $786f: $1c
	ld   [bc], a                                     ; $7870: $02
	nop                                              ; $7871: $00
	nop                                              ; $7872: $00
	ld   bc, $2002                                   ; $7873: $01 $02 $20
	ld   hl, sp+$02                                  ; $7876: $f8 $02
	sbc  e                                           ; $7878: $9b

Jump_066_7879:
	ld   a, h                                        ; $7879: $7c
	ld   e, b                                        ; $787a: $58
	inc  b                                           ; $787b: $04
	db   $eb                                         ; $787c: $eb
	inc  b                                           ; $787d: $04
	and  l                                           ; $787e: $a5
	inc  bc                                          ; $787f: $03
	sbc  $7d                                         ; $7880: $de $7d
	sbc  [hl]                                        ; $7882: $9e
	dec  c                                           ; $7883: $0d
	ld   e, b                                        ; $7884: $58
	dec  b                                           ; $7885: $05
	inc  l                                           ; $7886: $2c
	dec  b                                           ; $7887: $05
	ld   [bc], a                                     ; $7888: $02
	ld   a, h                                        ; $7889: $7c
	inc  b                                           ; $788a: $04
	ld   [hl], d                                     ; $788b: $72
	inc  b                                           ; $788c: $04
	sbc  [hl]                                        ; $788d: $9e
	ld   e, l                                        ; $788e: $5d
	sub  a                                           ; $788f: $97
	ld   d, d                                        ; $7890: $52
	and  b                                           ; $7891: $a0
	dec  c                                           ; $7892: $0d
	inc  b                                           ; $7893: $04
	call nc, $2602                                   ; $7894: $d4 $02 $26
	ld   a, c                                        ; $7897: $79
	ld   h, l                                        ; $7898: $65
	ld   [hl], h                                     ; $7899: $74
	adc  h                                           ; $789a: $8c
	ld   h, a                                        ; $789b: $67
	ld   a, h                                        ; $789c: $7c
	sub  [hl]                                        ; $789d: $96
	sbc  a                                           ; $789e: $9f
	dec  c                                           ; $789f: $0d
	nop                                              ; $78a0: $00
	ld   a, [bc]                                     ; $78a1: $0a
	ld   b, $52                                      ; $78a2: $06 $52
	inc  bc                                          ; $78a4: $03
	rrca                                             ; $78a5: $0f
	nop                                              ; $78a6: $00
	ld   bc, $6701                                   ; $78a7: $01 $01 $67
	adc  l                                           ; $78aa: $8d
	sbc  d                                           ; $78ab: $9a
	ld   h, e                                        ; $78ac: $63
	and  c                                           ; $78ad: $a1
	ld   a, h                                        ; $78ae: $7c
	ld   h, c                                        ; $78af: $61
	halt                                             ; $78b0: $76
	ld   l, [hl]                                     ; $78b1: $6e
	ld   e, c                                        ; $78b2: $59
	sub  a                                           ; $78b3: $97
	sbc  [hl]                                        ; $78b4: $9e
	dec  c                                           ; $78b5: $0d
	inc  b                                           ; $78b6: $04
	ld   d, b                                        ; $78b7: $50
	ld   [bc], a                                     ; $78b8: $02
	xor  c                                           ; $78b9: $a9
	ld   [bc], a                                     ; $78ba: $02
	adc  a                                           ; $78bb: $8f
	ld   [bc], a                                     ; $78bc: $02
	and  [hl]                                        ; $78bd: $a6
	dec  b                                           ; $78be: $05
	ld   e, a                                        ; $78bf: $5f
	inc  bc                                          ; $78c0: $03
	rla                                              ; $78c1: $17
	ld   a, h                                        ; $78c2: $7c
	inc  b                                           ; $78c3: $04
	ld   [hl], d                                     ; $78c4: $72
	inc  b                                           ; $78c5: $04
	sbc  [hl]                                        ; $78c6: $9e
	adc  c                                           ; $78c7: $89
	ld   [hl], a                                     ; $78c8: $77
	dec  c                                           ; $78c9: $0d
	halt                                             ; $78ca: $76
	ld   e, c                                        ; $78cb: $59
	rst  $38                                         ; $78cc: $ff
	rst  $38                                         ; $78cd: $ff
	dec  c                                           ; $78ce: $0d
	nop                                              ; $78cf: $00
	ld   a, [bc]                                     ; $78d0: $0a
	inc  e                                           ; $78d1: $1c
	ld   [bc], a                                     ; $78d2: $02
	inc  bc                                          ; $78d3: $03
	inc  bc                                          ; $78d4: $03
	ld   bc, $9a6b                                   ; $78d5: $01 $6b $9a
	ld   a, l                                        ; $78d8: $7d
	sbc  [hl]                                        ; $78d9: $9e
	ld   d, d                                        ; $78da: $52
	ld   e, l                                        ; $78db: $5d
	sub  a                                           ; $78dc: $97
	inc  bc                                          ; $78dd: $03
	sub  b                                           ; $78de: $90
	inc  bc                                          ; $78df: $03
	cp   e                                           ; $78e0: $bb
	inc  bc                                          ; $78e1: $03
	cp   d                                           ; $78e2: $ba
	inc  b                                           ; $78e3: $04
	xor  a                                           ; $78e4: $af
	ld   [hl], l                                     ; $78e5: $75
	sub  b                                           ; $78e6: $90
	dec  c                                           ; $78e7: $0d
	ldh  [c], a                                      ; $78e8: $e2
	jp   nz, Jump_066_75e5                           ; $78e9: $c2 $e5 $75

	ld   h, a                                        ; $78ec: $67
	sbc  l                                           ; $78ed: $9d
	sbc  a                                           ; $78ee: $9f
	dec  c                                           ; $78ef: $0d
	ld   a, l                                        ; $78f0: $7d
	ld   h, e                                        ; $78f1: $63
	and  c                                           ; $78f2: $a1
	ld   h, l                                        ; $78f3: $65
	ld   [hl], h                                     ; $78f4: $74
	ld   h, l                                        ; $78f5: $65
	adc  h                                           ; $78f6: $8c
	ld   d, d                                        ; $78f7: $52
	adc  h                                           ; $78f8: $8c
	ld   h, a                                        ; $78f9: $67
	sbc  a                                           ; $78fa: $9f
	dec  c                                           ; $78fb: $0d
	nop                                              ; $78fc: $00
	ld   a, [bc]                                     ; $78fd: $0a
	inc  e                                           ; $78fe: $1c
	ld   [bc], a                                     ; $78ff: $02
	nop                                              ; $7900: $00
	nop                                              ; $7901: $00
	ld   bc, $2002                                   ; $7902: $01 $02 $20
	ld   hl, sp+$02                                  ; $7905: $f8 $02
	sbc  e                                           ; $7907: $9b
	ld   a, h                                        ; $7908: $7c
	ld   e, b                                        ; $7909: $58
	inc  b                                           ; $790a: $04
	db   $eb                                         ; $790b: $eb
	inc  b                                           ; $790c: $04
	and  l                                           ; $790d: $a5
	inc  bc                                          ; $790e: $03
	sbc  $7d                                         ; $790f: $de $7d
	sbc  [hl]                                        ; $7911: $9e
	dec  c                                           ; $7912: $0d
	ld   e, b                                        ; $7913: $58
	dec  b                                           ; $7914: $05
	inc  l                                           ; $7915: $2c
	dec  b                                           ; $7916: $05
	ld   [bc], a                                     ; $7917: $02
	ld   a, h                                        ; $7918: $7c
	inc  b                                           ; $7919: $04
	ld   [hl], d                                     ; $791a: $72
	inc  b                                           ; $791b: $04
	sbc  [hl]                                        ; $791c: $9e
	ld   e, l                                        ; $791d: $5d
	sub  a                                           ; $791e: $97
	ld   d, d                                        ; $791f: $52
	and  b                                           ; $7920: $a0
	dec  c                                           ; $7921: $0d
	inc  b                                           ; $7922: $04
	call nc, $2602                                   ; $7923: $d4 $02 $26
	ld   a, c                                        ; $7926: $79
	ld   h, l                                        ; $7927: $65
	ld   [hl], h                                     ; $7928: $74
	adc  h                                           ; $7929: $8c
	ld   h, a                                        ; $792a: $67
	ld   a, h                                        ; $792b: $7c
	sub  [hl]                                        ; $792c: $96
	sbc  a                                           ; $792d: $9f
	dec  c                                           ; $792e: $0d
	nop                                              ; $792f: $00
	ld   a, [bc]                                     ; $7930: $0a
	ld   b, $52                                      ; $7931: $06 $52
	inc  bc                                          ; $7933: $03
	inc  e                                           ; $7934: $1c
	ld   [bc], a                                     ; $7935: $02
	ld   bc, $0101                                   ; $7936: $01 $01 $01
	adc  h                                           ; $7939: $8c
	ld   d, b                                        ; $793a: $50
	sbc  [hl]                                        ; $793b: $9e
	inc  bc                                          ; $793c: $03
	call nz, $de04                                   ; $793d: $c4 $04 $de
	ld   a, c                                        ; $7940: $79
	sbc  l                                           ; $7941: $9d
	ld   l, l                                        ; $7942: $6d
	ld   e, l                                        ; $7943: $5d
	ld   h, l                                        ; $7944: $65
	ld   a, h                                        ; $7945: $7c
	sub  [hl]                                        ; $7946: $96
	ld   d, h                                        ; $7947: $54
	ld   a, b                                        ; $7948: $78
	dec  c                                           ; $7949: $0d
	inc  b                                           ; $794a: $04
	ld   c, $02                                      ; $794b: $0e $02
	dec  sp                                          ; $794d: $3b
	inc  bc                                          ; $794e: $03
	and  b                                           ; $794f: $a0
	ld   l, a                                        ; $7950: $6f
	ld   a, h                                        ; $7951: $7c
	ld   [bc], a                                     ; $7952: $02
	scf                                              ; $7953: $37
	ld   [bc], a                                     ; $7954: $02
	ld   a, d                                        ; $7955: $7a
	ld   e, d                                        ; $7956: $5a
	sbc  [hl]                                        ; $7957: $9e
	inc  b                                           ; $7958: $04
	sbc  [hl]                                        ; $7959: $9e
	ld   e, c                                        ; $795a: $59
	sbc  c                                           ; $795b: $99
	dec  c                                           ; $795c: $0d
	sbc  l                                           ; $795d: $9d
	ld   e, a                                        ; $795e: $5f
	ld   h, d                                        ; $795f: $62
	ld   h, h                                        ; $7960: $64
	ld   d, d                                        ; $7961: $52
	adc  h                                           ; $7962: $8c
	ld   l, c                                        ; $7963: $69
	and  c                                           ; $7964: $a1
	sbc  l                                           ; $7965: $9d
	ld   a, e                                        ; $7966: $7b
	sbc  a                                           ; $7967: $9f
	dec  c                                           ; $7968: $0d
	nop                                              ; $7969: $00
	ld   a, [bc]                                     ; $796a: $0a
	inc  e                                           ; $796b: $1c
	ld   [bc], a                                     ; $796c: $02
	nop                                              ; $796d: $00
	nop                                              ; $796e: $00
	ld   bc, $2002                                   ; $796f: $01 $02 $20
	ld   hl, sp+$02                                  ; $7972: $f8 $02
	sbc  e                                           ; $7974: $9b
	ld   a, h                                        ; $7975: $7c
	ld   e, b                                        ; $7976: $58
	inc  b                                           ; $7977: $04
	db   $eb                                         ; $7978: $eb
	inc  b                                           ; $7979: $04
	and  l                                           ; $797a: $a5
	inc  bc                                          ; $797b: $03
	sbc  $7d                                         ; $797c: $de $7d
	sbc  [hl]                                        ; $797e: $9e
	dec  c                                           ; $797f: $0d
	ld   e, b                                        ; $7980: $58
	dec  b                                           ; $7981: $05
	inc  l                                           ; $7982: $2c
	dec  b                                           ; $7983: $05
	ld   [bc], a                                     ; $7984: $02
	ld   a, h                                        ; $7985: $7c
	inc  b                                           ; $7986: $04
	ld   [hl], d                                     ; $7987: $72
	inc  b                                           ; $7988: $04
	sbc  [hl]                                        ; $7989: $9e
	ld   e, l                                        ; $798a: $5d
	sub  a                                           ; $798b: $97
	ld   d, d                                        ; $798c: $52
	and  b                                           ; $798d: $a0
	dec  c                                           ; $798e: $0d
	inc  b                                           ; $798f: $04
	call nc, $2602                                   ; $7990: $d4 $02 $26
	ld   a, c                                        ; $7993: $79
	ld   h, l                                        ; $7994: $65
	ld   [hl], h                                     ; $7995: $74
	adc  h                                           ; $7996: $8c
	ld   h, a                                        ; $7997: $67
	ld   a, h                                        ; $7998: $7c
	sub  [hl]                                        ; $7999: $96
	sbc  a                                           ; $799a: $9f
	dec  c                                           ; $799b: $0d
	nop                                              ; $799c: $00
	ld   a, [bc]                                     ; $799d: $0a
	ld   bc, $a161                                   ; $799e: $01 $61 $a1
	ld   a, b                                        ; $79a1: $78
	ld   h, c                                        ; $79a2: $61
	halt                                             ; $79a3: $76
	and  b                                           ; $79a4: $a0
	ld   [bc], a                                     ; $79a5: $02
	jp   nz, $7452                                   ; $79a6: $c2 $52 $74

	dec  c                                           ; $79a9: $0d
	ld   [hl], a                                     ; $79aa: $77
	ld   d, h                                        ; $79ab: $54
	ld   h, l                                        ; $79ac: $65
	adc  h                                           ; $79ad: $8c
	ld   h, a                                        ; $79ae: $67
	ld   a, h                                        ; $79af: $7c
	ld   sp, hl                                      ; $79b0: $f9
	dec  c                                           ; $79b1: $0d
	nop                                              ; $79b2: $00
	ld   a, [bc]                                     ; $79b3: $0a
	rrca                                             ; $79b4: $0f
	nop                                              ; $79b5: $00
	ld   bc, $5201                                   ; $79b6: $01 $01 $52
	ld   d, [hl]                                     ; $79b9: $56
	sbc  [hl]                                        ; $79ba: $9e
	inc  b                                           ; $79bb: $04
	ld   d, h                                        ; $79bc: $54
	ld   a, c                                        ; $79bd: $79
	inc  b                                           ; $79be: $04
	ld   e, $02                                      ; $79bf: $1e $02
	ld   b, $7d                                      ; $79c1: $06 $7d
	ld   d, b                                        ; $79c3: $50
	sbc  b                                           ; $79c4: $98
	adc  h                                           ; $79c5: $8c
	ld   l, c                                        ; $79c6: $69
	and  c                                           ; $79c7: $a1
	sbc  a                                           ; $79c8: $9f
	dec  c                                           ; $79c9: $0d
	ld   l, l                                        ; $79ca: $6d
	ld   l, [hl]                                     ; $79cb: $6e
	sbc  [hl]                                        ; $79cc: $9e
	ld   l, a                                        ; $79cd: $6f
	sub  l                                           ; $79ce: $95
	ld   [hl], c                                     ; $79cf: $71
	halt                                             ; $79d0: $76
	ld   [bc], a                                     ; $79d1: $02
	and  c                                           ; $79d2: $a1
	ld   a, c                                        ; $79d3: $79
	ld   a, b                                        ; $79d4: $78
	ld   [hl], c                                     ; $79d5: $71
	ld   l, l                                        ; $79d6: $6d
	dec  c                                           ; $79d7: $0d
	sub  b                                           ; $79d8: $90
	ld   a, h                                        ; $79d9: $7c
	ld   [hl], l                                     ; $79da: $75
	ld   h, a                                        ; $79db: $67
	ld   e, c                                        ; $79dc: $59
	sub  a                                           ; $79dd: $97
	sbc  a                                           ; $79de: $9f
	dec  c                                           ; $79df: $0d
	nop                                              ; $79e0: $00
	ld   a, [bc]                                     ; $79e1: $0a
	rrca                                             ; $79e2: $0f
	ld   [bc], a                                     ; $79e3: $02
	nop                                              ; $79e4: $00
	ld   bc, $546b                                   ; $79e5: $01 $6b $54
	ld   [hl], l                                     ; $79e8: $75
	ld   h, a                                        ; $79e9: $67
	ld   a, h                                        ; $79ea: $7c
	ld   sp, hl                                      ; $79eb: $f9
	dec  c                                           ; $79ec: $0d
	ld   d, b                                        ; $79ed: $50
	sub  a                                           ; $79ee: $97
	sbc  [hl]                                        ; $79ef: $9e
	ld   l, e                                        ; $79f0: $6b
	sbc  e                                           ; $79f1: $9b
	ld   l, e                                        ; $79f2: $6b
	sbc  e                                           ; $79f3: $9b
	sbc  [hl]                                        ; $79f4: $9e
	inc  bc                                          ; $79f5: $03
	ld   l, l                                        ; $79f6: $6d
	dec  b                                           ; $79f7: $05
	add  hl, de                                      ; $79f8: $19
	ld   a, h                                        ; $79f9: $7c
	inc  bc                                          ; $79fa: $03
	ld   l, a                                        ; $79fb: $6f
	ld   [bc], a                                     ; $79fc: $02
	xor  c                                           ; $79fd: $a9
	dec  c                                           ; $79fe: $0d
	ld   h, [hl]                                     ; $79ff: $66
	sub  c                                           ; $7a00: $91
	ld   a, b                                        ; $7a01: $78
	ld   e, l                                        ; $7a02: $5d
	ld   [hl], h                                     ; $7a03: $74
	ld   sp, hl                                      ; $7a04: $f9
	db   $10                                         ; $7a05: $10
	dec  b                                           ; $7a06: $05
	jr   z, jr_066_7a65                              ; $7a07: $28 $5c

	ld   a, b                                        ; $7a09: $78
	ld   h, e                                        ; $7a0a: $63
	ld   d, d                                        ; $7a0b: $52
	sbc  a                                           ; $7a0c: $9f
	dec  c                                           ; $7a0d: $0d
	nop                                              ; $7a0e: $00
	ld   a, [bc]                                     ; $7a0f: $0a
	nop                                              ; $7a10: $00
	rrca                                             ; $7a11: $0f
	nop                                              ; $7a12: $00
	ld   bc, $6701                                   ; $7a13: $01 $01 $67
	adc  l                                           ; $7a16: $8d
	sbc  d                                           ; $7a17: $9a
	ld   h, e                                        ; $7a18: $63
	and  c                                           ; $7a19: $a1
	ld   a, h                                        ; $7a1a: $7c
	ld   [bc], a                                     ; $7a1b: $02
	sbc  d                                           ; $7a1c: $9a
	adc  l                                           ; $7a1d: $8d
	ld   a, h                                        ; $7a1e: $7c
	ret  nz                                          ; $7a1f: $c0

	and  l                                           ; $7a20: $a5
	ret  c                                           ; $7a21: $d8

	ld   [hl], c                                     ; $7a22: $71
	dec  c                                           ; $7a23: $0d
	ld   [hl], h                                     ; $7a24: $74
	sbc  [hl]                                        ; $7a25: $9e
	ld   [hl], a                                     ; $7a26: $77
	and  c                                           ; $7a27: $a1
	ld   a, b                                        ; $7a28: $78
	inc  bc                                          ; $7a29: $03
	add  d                                           ; $7a2a: $82
	ld   a, b                                        ; $7a2b: $78
	and  c                                           ; $7a2c: $a1
	ld   [hl], l                                     ; $7a2d: $75
	ld   h, l                                        ; $7a2e: $65
	sub  l                                           ; $7a2f: $95
	ld   d, h                                        ; $7a30: $54
	ld   e, c                                        ; $7a31: $59
	sbc  a                                           ; $7a32: $9f
	dec  c                                           ; $7a33: $0d
	nop                                              ; $7a34: $00
	ld   a, [bc]                                     ; $7a35: $0a
	inc  e                                           ; $7a36: $1c
	ld   [bc], a                                     ; $7a37: $02
	nop                                              ; $7a38: $00
	nop                                              ; $7a39: $00
	ld   bc, $546b                                   ; $7a3a: $01 $6b $54
	ld   [hl], l                                     ; $7a3d: $75
	ld   h, a                                        ; $7a3e: $67
	sbc  l                                           ; $7a3f: $9d
	ld   a, e                                        ; $7a40: $7b
	rst  $38                                         ; $7a41: $ff
	rst  $38                                         ; $7a42: $ff
	dec  c                                           ; $7a43: $0d
	adc  h                                           ; $7a44: $8c
	ld   l, b                                        ; $7a45: $68
	ld   a, l                                        ; $7a46: $7d
	sbc  [hl]                                        ; $7a47: $9e
	cp   h                                           ; $7a48: $bc
	push af                                          ; $7a49: $f5
	cp   d                                           ; $7a4a: $ba
	ld   a, h                                        ; $7a4b: $7c
	ld   d, d                                        ; $7a4c: $52
	ld   d, d                                        ; $7a4d: $52
	inc  b                                           ; $7a4e: $04
	ld   a, b                                        ; $7a4f: $78
	ld   a, e                                        ; $7a50: $7b
	sbc  a                                           ; $7a51: $9f
	dec  c                                           ; $7a52: $0d
	ld   l, e                                        ; $7a53: $6b
	sbc  d                                           ; $7a54: $9a
	ld   e, c                                        ; $7a55: $59
	sub  a                                           ; $7a56: $97
	rst  $38                                         ; $7a57: $ff
	rst  $38                                         ; $7a58: $ff
	dec  c                                           ; $7a59: $0d
	nop                                              ; $7a5a: $00
	ld   a, [bc]                                     ; $7a5b: $0a
	ld   bc, $d803                                   ; $7a5c: $01 $03 $d8
	ld   a, h                                        ; $7a5f: $7c
	ld   [bc], a                                     ; $7a60: $02
	sub  e                                           ; $7a61: $93
	inc  b                                           ; $7a62: $04
	inc  sp                                          ; $7a63: $33
	ld   a, h                                        ; $7a64: $7c

jr_066_7a65:
	ld   d, d                                        ; $7a65: $52
	ld   d, d                                        ; $7a66: $52
	inc  b                                           ; $7a67: $04
	ld   a, b                                        ; $7a68: $78
	sbc  a                                           ; $7a69: $9f
	dec  c                                           ; $7a6a: $0d
	ld   l, e                                        ; $7a6b: $6b
	sbc  d                                           ; $7a6c: $9a
	halt                                             ; $7a6d: $76
	sbc  [hl]                                        ; $7a6e: $9e
	sub  d                                           ; $7a6f: $92
	ld   h, e                                        ; $7a70: $63
	ld   h, l                                        ; $7a71: $65
	ld   d, d                                        ; $7a72: $52
	inc  bc                                          ; $7a73: $03
	ld   [hl], l                                     ; $7a74: $75
	and  b                                           ; $7a75: $a0
	inc  bc                                          ; $7a76: $03
	and  b                                           ; $7a77: $a0
	ld   [hl], c                                     ; $7a78: $71
	ld   [hl], h                                     ; $7a79: $74
	dec  c                                           ; $7a7a: $0d
	ld   d, d                                        ; $7a7b: $52
	sbc  c                                           ; $7a7c: $99
	ld   h, c                                        ; $7a7d: $61
	halt                                             ; $7a7e: $76
	rst  $38                                         ; $7a7f: $ff
	rst  $38                                         ; $7a80: $ff
	sbc  [hl]                                        ; $7a81: $9e
	ld   e, c                                        ; $7a82: $59
	ld   h, l                                        ; $7a83: $65
	sub  a                                           ; $7a84: $97
	ld   sp, hl                                      ; $7a85: $f9
	dec  c                                           ; $7a86: $0d
	nop                                              ; $7a87: $00
	ld   a, [bc]                                     ; $7a88: $0a
	ld   bc, $6176                                   ; $7a89: $01 $76 $61
	sbc  e                                           ; $7a8c: $9b
	ld   [hl], l                                     ; $7a8d: $75
	sbc  [hl]                                        ; $7a8e: $9e
	ld   a, b                                        ; $7a8f: $78
	ld   l, d                                        ; $7a90: $6a
	ld   h, c                                        ; $7a91: $61
	and  c                                           ; $7a92: $a1
	ld   a, b                                        ; $7a93: $78
	inc  bc                                          ; $7a94: $03
	dec  d                                           ; $7a95: $15
	inc  b                                           ; $7a96: $04
	cp   a                                           ; $7a97: $bf
	and  b                                           ; $7a98: $a0
	dec  c                                           ; $7a99: $0d
	ld   h, a                                        ; $7a9a: $67
	sbc  c                                           ; $7a9b: $99
	ld   a, h                                        ; $7a9c: $7c
	ld   [hl], l                                     ; $7a9d: $75
	ld   h, a                                        ; $7a9e: $67
	ld   e, c                                        ; $7a9f: $59
	ld   sp, hl                                      ; $7aa0: $f9
	dec  c                                           ; $7aa1: $0d
	nop                                              ; $7aa2: $00
	ld   a, [bc]                                     ; $7aa3: $0a
	add  hl, de                                      ; $7aa4: $19
	dec  b                                           ; $7aa5: $05
	inc  bc                                          ; $7aa6: $03
	inc  bc                                          ; $7aa7: $03
	ld   h, h                                        ; $7aa8: $64
	dec  b                                           ; $7aa9: $05
	db   $10                                         ; $7aaa: $10
	ld   a, h                                        ; $7aab: $7c
	inc  bc                                          ; $7aac: $03
	inc  de                                          ; $7aad: $13
	ld   [bc], a                                     ; $7aae: $02
	ld   h, l                                        ; $7aaf: $65
	ld   a, c                                        ; $7ab0: $79
	nop                                              ; $7ab1: $00
	nop                                              ; $7ab2: $00
	ld   e, e                                        ; $7ab3: $5b
	sub  l                                           ; $7ab4: $95
	ld   d, h                                        ; $7ab5: $54
	adc  l                                           ; $7ab6: $8d
	ld   e, d                                        ; $7ab7: $5a
	ld   d, b                                        ; $7ab8: $50
	ld   [hl], c                                     ; $7ab9: $71
	ld   [hl], h                                     ; $7aba: $74
	nop                                              ; $7abb: $00
	ld   bc, $6692                                   ; $7abc: $01 $92 $66
	inc  b                                           ; $7abf: $04
	ld   d, [hl]                                     ; $7ac0: $56
	ld   [bc], a                                     ; $7ac1: $02
	ld   e, l                                        ; $7ac2: $5d
	ld   [bc], a                                     ; $7ac3: $02
	db   $fc                                         ; $7ac4: $fc
	ld   [hl], l                                     ; $7ac5: $75
	nop                                              ; $7ac6: $00
	ld   [bc], a                                     ; $7ac7: $02
	rlca                                             ; $7ac8: $07
	sbc  d                                           ; $7ac9: $9a
	inc  b                                           ; $7aca: $04
	ld   [bc], a                                     ; $7acb: $02
	inc  bc                                          ; $7acc: $03
	ld   bc, $2000                                   ; $7acd: $01 $00 $20
	nop                                              ; $7ad0: $00
	rlca                                             ; $7ad1: $07
	dec  bc                                          ; $7ad2: $0b
	dec  b                                           ; $7ad3: $05
	ld   [bc], a                                     ; $7ad4: $02
	inc  bc                                          ; $7ad5: $03
	ld   bc, $2001                                   ; $7ad6: $01 $01 $20
	nop                                              ; $7ad9: $00
	rlca                                             ; $7ada: $07
	ld   h, c                                        ; $7adb: $61
	dec  b                                           ; $7adc: $05
	ld   [bc], a                                     ; $7add: $02
	inc  bc                                          ; $7ade: $03
	ld   bc, $2002                                   ; $7adf: $01 $02 $20
	nop                                              ; $7ae2: $00
	ld   b, $bb                                      ; $7ae3: $06 $bb
	dec  b                                           ; $7ae5: $05
	rrca                                             ; $7ae6: $0f
	nop                                              ; $7ae7: $00
	ld   bc, $7d01                                   ; $7ae8: $01 $01 $7d
	ld   d, d                                        ; $7aeb: $52
	sbc  a                                           ; $7aec: $9f
	inc  bc                                          ; $7aed: $03
	ld   h, h                                        ; $7aee: $64
	dec  b                                           ; $7aef: $05
	db   $10                                         ; $7af0: $10
	sbc  [hl]                                        ; $7af1: $9e
	ld   [hl], a                                     ; $7af2: $77
	and  c                                           ; $7af3: $a1
	ld   a, b                                        ; $7af4: $78
	inc  b                                           ; $7af5: $04
	ld   c, $03                                      ; $7af6: $0e $03
	add  d                                           ; $7af8: $82
	and  b                                           ; $7af9: $a0
	dec  c                                           ; $7afa: $0d
	inc  b                                           ; $7afb: $04
	call nc, $2a03                                   ; $7afc: $d4 $03 $2a
	ld   l, c                                        ; $7aff: $69
	ld   a, [hl]                                     ; $7b00: $7e
	ld   d, d                                        ; $7b01: $52
	ld   d, d                                        ; $7b02: $52
	ld   a, h                                        ; $7b03: $7c
	ld   e, c                                        ; $7b04: $59
	sbc  [hl]                                        ; $7b05: $9e
	halt                                             ; $7b06: $76
	ld   d, d                                        ; $7b07: $52
	ld   d, h                                        ; $7b08: $54
	dec  c                                           ; $7b09: $0d
	ld   h, c                                        ; $7b0a: $61
	halt                                             ; $7b0b: $76
	ld   a, h                                        ; $7b0c: $7c
	inc  bc                                          ; $7b0d: $03
	inc  de                                          ; $7b0e: $13
	ld   [bc], a                                     ; $7b0f: $02
	ld   h, l                                        ; $7b10: $65
	ld   a, c                                        ; $7b11: $79
	halt                                             ; $7b12: $76
	dec  b                                           ; $7b13: $05
	pop  de                                          ; $7b14: $d1
	ld   d, d                                        ; $7b15: $52
	adc  h                                           ; $7b16: $8c
	ld   h, l                                        ; $7b17: $65
	ld   [hl], h                                     ; $7b18: $74
	sbc  a                                           ; $7b19: $9f
	dec  c                                           ; $7b1a: $0d
	nop                                              ; $7b1b: $00
	ld   a, [bc]                                     ; $7b1c: $0a
	inc  e                                           ; $7b1d: $1c
	ld   [bc], a                                     ; $7b1e: $02
	ld   bc, $1d01                                   ; $7b1f: $01 $01 $1d
	ld   b, b                                        ; $7b22: $40
	ld   [de], a                                     ; $7b23: $12
	inc  bc                                          ; $7b24: $03
	ld   [de], a                                     ; $7b25: $12
	ld   bc, $2802                                   ; $7b26: $01 $02 $28
	nop                                              ; $7b29: $00
	ld   bc, $546b                                   ; $7b2a: $01 $6b $54
	ld   [hl], l                                     ; $7b2d: $75
	ld   h, a                                        ; $7b2e: $67
	ld   e, c                                        ; $7b2f: $59
	sbc  a                                           ; $7b30: $9f
	dec  c                                           ; $7b31: $0d
	ld   [hl], l                                     ; $7b32: $75
	ld   a, l                                        ; $7b33: $7d
	sbc  [hl]                                        ; $7b34: $9e
	ld   d, d                                        ; $7b35: $52
	sbc  e                                           ; $7b36: $9b
	and  c                                           ; $7b37: $a1
	ld   a, b                                        ; $7b38: $78
	ld   [bc], a                                     ; $7b39: $02
	jp   $02a0                                       ; $7b3a: $c3 $a0 $02


	and  d                                           ; $7b3d: $a2
	and  c                                           ; $7b3e: $a1
	ld   [hl], l                                     ; $7b3f: $75
	dec  c                                           ; $7b40: $0d
	dec  b                                           ; $7b41: $05
	ld   d, $04                                      ; $7b42: $16 $04
	sbc  l                                           ; $7b44: $9d
	ld   a, b                                        ; $7b45: $78
	inc  b                                           ; $7b46: $04
	ld   c, $03                                      ; $7b47: $0e $03
	add  d                                           ; $7b49: $82
	ld   a, c                                        ; $7b4a: $79
	ld   a, b                                        ; $7b4b: $78
	sbc  b                                           ; $7b4c: $98
	ld   a, b                                        ; $7b4d: $78
	ld   h, e                                        ; $7b4e: $63
	ld   d, d                                        ; $7b4f: $52
	sbc  a                                           ; $7b50: $9f
	dec  c                                           ; $7b51: $0d
	nop                                              ; $7b52: $00
	ld   a, [bc]                                     ; $7b53: $0a
	ld   b, $96                                      ; $7b54: $06 $96
	dec  b                                           ; $7b56: $05
	rrca                                             ; $7b57: $0f
	nop                                              ; $7b58: $00
	ld   bc, $6701                                   ; $7b59: $01 $01 $67
	adc  l                                           ; $7b5c: $8d
	sbc  d                                           ; $7b5d: $9a
	ld   h, e                                        ; $7b5e: $63
	and  c                                           ; $7b5f: $a1
	ld   a, h                                        ; $7b60: $7c
	sub  [hl]                                        ; $7b61: $96
	ld   d, h                                        ; $7b62: $54
	ld   a, b                                        ; $7b63: $78
	sbc  [hl]                                        ; $7b64: $9e
	cp   d                                           ; $7b65: $ba
	rst  ToBoot                                         ; $7b66: $c7
	xor  [hl]                                        ; $7b67: $ae
	ld   a, b                                        ; $7b68: $78
	dec  c                                           ; $7b69: $0d
	ld   e, b                                        ; $7b6a: $58
	dec  b                                           ; $7b6b: $05
	add  hl, sp                                      ; $7b6c: $39
	inc  bc                                          ; $7b6d: $03
	sbc  b                                           ; $7b6e: $98
	ld   a, l                                        ; $7b6f: $7d
	sbc  [hl]                                        ; $7b70: $9e
	ld   [hl], a                                     ; $7b71: $77
	and  c                                           ; $7b72: $a1
	ld   a, b                                        ; $7b73: $78
	inc  b                                           ; $7b74: $04
	ld   a, b                                        ; $7b75: $78
	ld   e, d                                        ; $7b76: $5a
	ld   [bc], a                                     ; $7b77: $02
	sbc  d                                           ; $7b78: $9a
	adc  l                                           ; $7b79: $8d
	dec  c                                           ; $7b7a: $0d
	ld   a, b                                        ; $7b7b: $78
	ld   a, h                                        ; $7b7c: $7c
	ld   e, c                                        ; $7b7d: $59
	ld   e, e                                        ; $7b7e: $5b
	sub  l                                           ; $7b7f: $95
	ld   d, h                                        ; $7b80: $54
	adc  l                                           ; $7b81: $8d
	ld   e, d                                        ; $7b82: $5a
	ld   d, b                                        ; $7b83: $50
	sbc  b                                           ; $7b84: $98
	adc  h                                           ; $7b85: $8c
	ld   h, l                                        ; $7b86: $65
	ld   [hl], h                                     ; $7b87: $74
	sbc  a                                           ; $7b88: $9f
	dec  c                                           ; $7b89: $0d
	nop                                              ; $7b8a: $00
	ld   a, [bc]                                     ; $7b8b: $0a
	inc  e                                           ; $7b8c: $1c
	ld   [bc], a                                     ; $7b8d: $02
	inc  b                                           ; $7b8e: $04
	inc  b                                           ; $7b8f: $04
	dec  e                                           ; $7b90: $1d
	ld   b, b                                        ; $7b91: $40
	ld   [de], a                                     ; $7b92: $12
	inc  bc                                          ; $7b93: $03
	ld   [de], a                                     ; $7b94: $12
	ld   bc, $2801                                   ; $7b95: $01 $01 $28
	nop                                              ; $7b98: $00
	ld   bc, $9750                                   ; $7b99: $01 $50 $97
	sbc  [hl]                                        ; $7b9c: $9e
	ld   l, e                                        ; $7b9d: $6b
	ld   d, h                                        ; $7b9e: $54
	ld   [hl], l                                     ; $7b9f: $75
	ld   h, a                                        ; $7ba0: $67
	ld   a, h                                        ; $7ba1: $7c
	ld   sp, hl                                      ; $7ba2: $f9
	dec  c                                           ; $7ba3: $0d
	nop                                              ; $7ba4: $00
	ld   a, [bc]                                     ; $7ba5: $0a
	inc  e                                           ; $7ba6: $1c
	ld   [bc], a                                     ; $7ba7: $02
	nop                                              ; $7ba8: $00
	nop                                              ; $7ba9: $00
	ld   b, $96                                      ; $7baa: $06 $96
	dec  b                                           ; $7bac: $05
	rrca                                             ; $7bad: $0f
	nop                                              ; $7bae: $00
	ld   bc, $0501                                   ; $7baf: $01 $01 $05
	ld   c, l                                        ; $7bb2: $4d
	ld   a, c                                        ; $7bb3: $79
	sub  d                                           ; $7bb4: $92
	ld   h, [hl]                                     ; $7bb5: $66
	inc  b                                           ; $7bb6: $04
	ld   d, [hl]                                     ; $7bb7: $56
	ld   [bc], a                                     ; $7bb8: $02
	ld   e, l                                        ; $7bb9: $5d
	ld   [bc], a                                     ; $7bba: $02
	db   $fc                                         ; $7bbb: $fc
	ld   [hl], l                                     ; $7bbc: $75
	ld   [bc], a                                     ; $7bbd: $02
	jp   nz, $7452                                   ; $7bbe: $c2 $52 $74

	dec  c                                           ; $7bc1: $0d
	adc  l                                           ; $7bc2: $8d
	adc  h                                           ; $7bc3: $8c
	ld   h, l                                        ; $7bc4: $65
	ld   l, l                                        ; $7bc5: $6d
	sbc  a                                           ; $7bc6: $9f
	dec  c                                           ; $7bc7: $0d
	nop                                              ; $7bc8: $00
	ld   a, [bc]                                     ; $7bc9: $0a
	inc  e                                           ; $7bca: $1c
	ld   [bc], a                                     ; $7bcb: $02
	inc  bc                                          ; $7bcc: $03
	inc  bc                                          ; $7bcd: $03
	dec  e                                           ; $7bce: $1d
	ld   b, b                                        ; $7bcf: $40
	ld   [de], a                                     ; $7bd0: $12
	inc  bc                                          ; $7bd1: $03
	ld   [de], a                                     ; $7bd2: $12
	ld   bc, $2902                                   ; $7bd3: $01 $02 $29
	nop                                              ; $7bd6: $00
	ld   bc, $507d                                   ; $7bd7: $01 $7d $50
	ld   sp, hl                                      ; $7bda: $f9
	dec  c                                           ; $7bdb: $0d
	nop                                              ; $7bdc: $00
	ld   a, [bc]                                     ; $7bdd: $0a
	inc  e                                           ; $7bde: $1c
	ld   [bc], a                                     ; $7bdf: $02
	rlca                                             ; $7be0: $07
	rlca                                             ; $7be1: $07
	ld   bc, $9750                                   ; $7be2: $01 $50 $97
	sbc  [hl]                                        ; $7be5: $9e
	ld   l, e                                        ; $7be6: $6b
	sbc  e                                           ; $7be7: $9b
	ld   l, e                                        ; $7be8: $6b
	sbc  e                                           ; $7be9: $9b
	sbc  [hl]                                        ; $7bea: $9e
	inc  bc                                          ; $7beb: $03
	ld   l, l                                        ; $7bec: $6d
	dec  b                                           ; $7bed: $05
	add  hl, de                                      ; $7bee: $19
	ld   a, h                                        ; $7bef: $7c
	inc  bc                                          ; $7bf0: $03
	ld   l, a                                        ; $7bf1: $6f
	ld   [bc], a                                     ; $7bf2: $02
	xor  c                                           ; $7bf3: $a9
	dec  c                                           ; $7bf4: $0d
	ld   h, [hl]                                     ; $7bf5: $66
	sub  c                                           ; $7bf6: $91
	ld   a, b                                        ; $7bf7: $78
	ld   e, l                                        ; $7bf8: $5d
	ld   [hl], h                                     ; $7bf9: $74
	ld   sp, hl                                      ; $7bfa: $f9
	db   $10                                         ; $7bfb: $10
	dec  b                                           ; $7bfc: $05
	jr   z, jr_066_7c5b                              ; $7bfd: $28 $5c

	ld   a, b                                        ; $7bff: $78
	ld   h, e                                        ; $7c00: $63
	ld   d, d                                        ; $7c01: $52
	sbc  a                                           ; $7c02: $9f
	dec  c                                           ; $7c03: $0d
	nop                                              ; $7c04: $00
	ld   a, [bc]                                     ; $7c05: $0a
	nop                                              ; $7c06: $00
	inc  e                                           ; $7c07: $1c
	ld   [bc], a                                     ; $7c08: $02
	ld   [bc], a                                     ; $7c09: $02
	ld   [bc], a                                     ; $7c0a: $02
	dec  e                                           ; $7c0b: $1d
	ld   b, b                                        ; $7c0c: $40
	ld   [de], a                                     ; $7c0d: $12
	inc  bc                                          ; $7c0e: $03
	ld   [de], a                                     ; $7c0f: $12
	ld   bc, $2903                                   ; $7c10: $01 $03 $29
	nop                                              ; $7c13: $00
	ld   bc, $8c6e                                   ; $7c14: $01 $6e $8c
	ld   [hl], c                                     ; $7c17: $71
	ld   [hl], h                                     ; $7c18: $74
	ld   d, d                                        ; $7c19: $52
	ld   [hl], h                                     ; $7c1a: $74
	ld   a, l                                        ; $7c1b: $7d
	dec  c                                           ; $7c1c: $0d
	inc  b                                           ; $7c1d: $04
	sbc  [hl]                                        ; $7c1e: $9e
	ld   e, c                                        ; $7c1f: $59
	sbc  b                                           ; $7c20: $98
	adc  h                                           ; $7c21: $8c
	ld   l, c                                        ; $7c22: $69
	and  c                                           ; $7c23: $a1
	sbc  l                                           ; $7c24: $9d
	ld   a, [$000d]                                  ; $7c25: $fa $0d $00
	ld   a, [bc]                                     ; $7c28: $0a
	ld   bc, $6d03                                   ; $7c29: $01 $03 $6d
	dec  b                                           ; $7c2c: $05
	add  hl, de                                      ; $7c2d: $19
	ld   a, h                                        ; $7c2e: $7c
	dec  b                                           ; $7c2f: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c30: $cf
	adc  h                                           ; $7c31: $8c
	sbc  c                                           ; $7c32: $99
	inc  bc                                          ; $7c33: $03
	ld   l, a                                        ; $7c34: $6f
	ld   [bc], a                                     ; $7c35: $02
	xor  c                                           ; $7c36: $a9
	ld   [hl], l                                     ; $7c37: $75
	ld   h, a                                        ; $7c38: $67
	sbc  l                                           ; $7c39: $9d
	sub  [hl]                                        ; $7c3a: $96
	sbc  a                                           ; $7c3b: $9f
	dec  c                                           ; $7c3c: $0d
	inc  bc                                          ; $7c3d: $03
	ld   [hl], b                                     ; $7c3e: $70
	ld   e, l                                        ; $7c3f: $5d
	ld   [bc], a                                     ; $7c40: $02
	ld   a, a                                        ; $7c41: $7f
	ld   e, e                                        ; $7c42: $5b
	ld   a, b                                        ; $7c43: $78
	ld   h, e                                        ; $7c44: $63
	ld   d, d                                        ; $7c45: $52
	sbc  a                                           ; $7c46: $9f
	dec  c                                           ; $7c47: $0d
	nop                                              ; $7c48: $00
	ld   a, [bc]                                     ; $7c49: $0a
	nop                                              ; $7c4a: $00
	rrca                                             ; $7c4b: $0f
	nop                                              ; $7c4c: $00
	ld   bc, $0401                                   ; $7c4d: $01 $01 $04
	rst  $10                                         ; $7c50: $d7
	inc  b                                           ; $7c51: $04
	ld   hl, $0b04                                   ; $7c52: $21 $04 $0b
	inc  bc                                          ; $7c55: $03
	ld   h, h                                        ; $7c56: $64
	ld   [hl], h                                     ; $7c57: $74
	sbc  [hl]                                        ; $7c58: $9e
	ld   h, a                                        ; $7c59: $67
	adc  l                                           ; $7c5a: $8d

jr_066_7c5b:
	sbc  d                                           ; $7c5b: $9a
	ld   h, e                                        ; $7c5c: $63
	and  c                                           ; $7c5d: $a1
	ld   e, c                                        ; $7c5e: $59
	sub  a                                           ; $7c5f: $97
	dec  c                                           ; $7c60: $0d
	ld   [bc], a                                     ; $7c61: $02
	sub  l                                           ; $7c62: $95
	ld   [hl], h                                     ; $7c63: $74
	sbc  [hl]                                        ; $7c64: $9e
	ld   [hl], a                                     ; $7c65: $77
	and  c                                           ; $7c66: $a1
	ld   a, b                                        ; $7c67: $78
	inc  b                                           ; $7c68: $04
	ld   a, b                                        ; $7c69: $78
	ld   [hl], l                                     ; $7c6a: $75
	ld   h, a                                        ; $7c6b: $67
	ld   e, c                                        ; $7c6c: $59
	ld   sp, hl                                      ; $7c6d: $f9
	dec  c                                           ; $7c6e: $0d
	nop                                              ; $7c6f: $00
	ld   a, [bc]                                     ; $7c70: $0a
	rrca                                             ; $7c71: $0f
	ld   [bc], a                                     ; $7c72: $02
	nop                                              ; $7c73: $00
	ld   bc, $8503                                   ; $7c74: $01 $03 $85
	inc  b                                           ; $7c77: $04

Jump_066_7c78:
	xor  e                                           ; $7c78: $ab
	inc  bc                                          ; $7c79: $03
	add  d                                           ; $7c7a: $82
	rst  $38                                         ; $7c7b: $ff
	rst  $38                                         ; $7c7c: $ff
	ld   [hl], l                                     ; $7c7d: $75
	ld   h, a                                        ; $7c7e: $67
	ld   e, c                                        ; $7c7f: $59
	ld   sp, hl                                      ; $7c80: $f9
	dec  c                                           ; $7c81: $0d
	ld   a, l                                        ; $7c82: $7d
	ld   [hl], c                                     ; $7c83: $71
	ld   e, e                                        ; $7c84: $5b
	sbc  b                                           ; $7c85: $98
	ld   [bc], a                                     ; $7c86: $02
	sbc  l                                           ; $7c87: $9d
	ld   [hl], c                                     ; $7c88: $71
	ld   [hl], h                                     ; $7c89: $74
	dec  c                                           ; $7c8a: $0d
	ld   [hl], d                                     ; $7c8b: $72
	ld   e, c                                        ; $7c8c: $59
	adc  l                                           ; $7c8d: $8d
	inc  bc                                          ; $7c8e: $03
	ld   c, e                                        ; $7c8f: $4b
	ld   a, h                                        ; $7c90: $7c
	ld   a, b                                        ; $7c91: $78
	ld   d, d                                        ; $7c92: $52
	inc  b                                           ; $7c93: $04
	ld   a, b                                        ; $7c94: $78
	ld   [hl], l                                     ; $7c95: $75
	ld   h, a                                        ; $7c96: $67
	sbc  l                                           ; $7c97: $9d
	sbc  a                                           ; $7c98: $9f
	dec  c                                           ; $7c99: $0d
	nop                                              ; $7c9a: $00
	ld   a, [bc]                                     ; $7c9b: $0a
	ld   bc, $7252                                   ; $7c9c: $01 $52 $72
	sub  b                                           ; $7c9f: $90
	sbc  [hl]                                        ; $7ca0: $9e
	add  b                                           ; $7ca1: $80
	sub  l                                           ; $7ca2: $95
	ld   d, h                                        ; $7ca3: $54
	add  b                                           ; $7ca4: $80
	sub  l                                           ; $7ca5: $95
	ld   d, h                                        ; $7ca6: $54
	halt                                             ; $7ca7: $76
	dec  c                                           ; $7ca8: $0d
	ld   h, l                                        ; $7ca9: $65
	ld   [hl], h                                     ; $7caa: $74
	ld   d, d                                        ; $7cab: $52
	ld   [hl], h                                     ; $7cac: $74
	sbc  [hl]                                        ; $7cad: $9e
	inc  b                                           ; $7cae: $04
	ld   c, c                                        ; $7caf: $49
	and  b                                           ; $7cb0: $a0
	ld   [bc], a                                     ; $7cb1: $02
	ld   h, l                                        ; $7cb2: $65
	ld   d, [hl]                                     ; $7cb3: $56
	ld   [hl], h                                     ; $7cb4: $74
	ld   d, d                                        ; $7cb5: $52
	sbc  c                                           ; $7cb6: $99
	ld   a, h                                        ; $7cb7: $7c
	ld   e, c                                        ; $7cb8: $59
	dec  c                                           ; $7cb9: $0d
	inc  b                                           ; $7cba: $04
	sbc  [hl]                                        ; $7cbb: $9e
	ld   e, c                                        ; $7cbc: $59
	sub  a                                           ; $7cbd: $97
	ld   a, b                                        ; $7cbe: $78
	ld   d, d                                        ; $7cbf: $52
	sbc  a                                           ; $7cc0: $9f
	dec  c                                           ; $7cc1: $0d
	nop                                              ; $7cc2: $00
	ld   a, [bc]                                     ; $7cc3: $0a
	ld   bc, $9075                                   ; $7cc4: $01 $75 $90
	sbc  [hl]                                        ; $7cc7: $9e
	ld   d, d                                        ; $7cc8: $52
	ld   h, h                                        ; $7cc9: $64
	halt                                             ; $7cca: $76
	ld   d, d                                        ; $7ccb: $52
	ld   d, h                                        ; $7ccc: $54
	halt                                             ; $7ccd: $76
	ld   e, e                                        ; $7cce: $5b
	ld   a, l                                        ; $7ccf: $7d
	dec  c                                           ; $7cd0: $0d
	ld   l, l                                        ; $7cd1: $6d
	sub  [hl]                                        ; $7cd2: $96
	sbc  b                                           ; $7cd3: $98
	ld   a, c                                        ; $7cd4: $79
	ld   a, b                                        ; $7cd5: $78
	sbc  c                                           ; $7cd6: $99
	ld   a, h                                        ; $7cd7: $7c
	ld   l, [hl]                                     ; $7cd8: $6e
	ld   e, c                                        ; $7cd9: $59
	sub  a                                           ; $7cda: $97
	sbc  [hl]                                        ; $7cdb: $9e
	dec  c                                           ; $7cdc: $0d
	adc  h                                           ; $7cdd: $8c
	sbc  [hl]                                        ; $7cde: $9e
	ld   d, d                                        ; $7cdf: $52
	ld   d, d                                        ; $7ce0: $52
	ld   [hl], l                                     ; $7ce1: $75
	ld   h, a                                        ; $7ce2: $67
	ld   e, a                                        ; $7ce3: $5f
	ld   [hl], a                                     ; $7ce4: $77
	rst  $38                                         ; $7ce5: $ff
	rst  $38                                         ; $7ce6: $ff
	dec  c                                           ; $7ce7: $0d
	nop                                              ; $7ce8: $00
	ld   a, [bc]                                     ; $7ce9: $0a
	ld   bc, $9750                                   ; $7cea: $01 $50 $97
	sbc  [hl]                                        ; $7ced: $9e
	ld   l, e                                        ; $7cee: $6b
	sbc  e                                           ; $7cef: $9b
	ld   l, e                                        ; $7cf0: $6b
	sbc  e                                           ; $7cf1: $9b
	sbc  [hl]                                        ; $7cf2: $9e
	inc  bc                                          ; $7cf3: $03
	ld   l, l                                        ; $7cf4: $6d

jr_066_7cf5:
	dec  b                                           ; $7cf5: $05
	add  hl, de                                      ; $7cf6: $19
	ld   a, h                                        ; $7cf7: $7c
	inc  bc                                          ; $7cf8: $03
	ld   l, a                                        ; $7cf9: $6f
	ld   [bc], a                                     ; $7cfa: $02
	xor  c                                           ; $7cfb: $a9
	dec  c                                           ; $7cfc: $0d
	ld   h, [hl]                                     ; $7cfd: $66
	sub  c                                           ; $7cfe: $91
	ld   a, b                                        ; $7cff: $78
	ld   e, l                                        ; $7d00: $5d
	ld   [hl], h                                     ; $7d01: $74
	ld   sp, hl                                      ; $7d02: $f9
	db   $10                                         ; $7d03: $10
	dec  b                                           ; $7d04: $05
	jr   z, jr_066_7d63                              ; $7d05: $28 $5c

	ld   a, b                                        ; $7d07: $78
	ld   h, e                                        ; $7d08: $63
	ld   d, d                                        ; $7d09: $52
	sbc  a                                           ; $7d0a: $9f
	dec  c                                           ; $7d0b: $0d
	nop                                              ; $7d0c: $00
	ld   a, [bc]                                     ; $7d0d: $0a
	nop                                              ; $7d0e: $00
	nop                                              ; $7d0f: $00
	inc  bc                                          ; $7d10: $03
	ld   c, [hl]                                     ; $7d11: $4e
	ld   [bc], a                                     ; $7d12: $02
	nop                                              ; $7d13: $00
	inc  bc                                          ; $7d14: $03
	ld   c, b                                        ; $7d15: $48
	add  hl, hl                                      ; $7d16: $29
	add  hl, hl                                      ; $7d17: $29
	ld   bc, $2201                                   ; $7d18: $01 $01 $22
	nop                                              ; $7d1b: $00
	rrca                                             ; $7d1c: $0f
	nop                                              ; $7d1d: $00
	ld   bc, $010d                                   ; $7d1e: $01 $0d $01
	nop                                              ; $7d21: $00
	ld   [bc], a                                     ; $7d22: $02
	ld   bc, $7d58                                   ; $7d23: $01 $58 $7d
	sub  [hl]                                        ; $7d26: $96
	ld   d, h                                        ; $7d27: $54
	ld   h, d                                        ; $7d28: $62
	ld   h, h                                        ; $7d29: $64
	ld   d, d                                        ; $7d2a: $52
	adc  h                                           ; $7d2b: $8c
	ld   h, a                                        ; $7d2c: $67
	sbc  a                                           ; $7d2d: $9f
	dec  c                                           ; $7d2e: $0d
	nop                                              ; $7d2f: $00
	ld   a, [bc]                                     ; $7d30: $0a
	inc  e                                           ; $7d31: $1c
	ld   bc, $0000                                   ; $7d32: $01 $00 $00
	ld   bc, $0008                                   ; $7d35: $01 $08 $00
	ld   h, e                                        ; $7d38: $63
	and  c                                           ; $7d39: $a1
	sbc  a                                           ; $7d3a: $9f
	dec  c                                           ; $7d3b: $0d
	ld   e, b                                        ; $7d3c: $58
	ld   a, l                                        ; $7d3d: $7d
	sub  [hl]                                        ; $7d3e: $96
	ld   d, h                                        ; $7d3f: $54
	ld   h, d                                        ; $7d40: $62
	ld   h, h                                        ; $7d41: $64
	ld   d, d                                        ; $7d42: $52
	adc  h                                           ; $7d43: $8c
	ld   h, a                                        ; $7d44: $67
	sbc  a                                           ; $7d45: $9f
	dec  c                                           ; $7d46: $0d
	nop                                              ; $7d47: $00
	ld   a, [bc]                                     ; $7d48: $0a
	rrca                                             ; $7d49: $0f
	nop                                              ; $7d4a: $00
	ld   bc, $0101                                   ; $7d4b: $01 $01 $01
	inc  bc                                          ; $7d4e: $03
	inc  b                                           ; $7d4f: $04
	ld   c, c                                        ; $7d50: $49
	ld   a, h                                        ; $7d51: $7c
	dec  b                                           ; $7d52: $05
	jr   nz, jr_066_7cf5                             ; $7d53: $20 $a0

	ld   h, l                                        ; $7d55: $65
	sub  [hl]                                        ; $7d56: $96
	ld   d, h                                        ; $7d57: $54
	ld   e, c                                        ; $7d58: $59
	ld   a, b                                        ; $7d59: $78
	rst  $38                                         ; $7d5a: $ff
	rst  $38                                         ; $7d5b: $ff
	ld   bc, $0d04                                   ; $7d5c: $01 $04 $0d
	nop                                              ; $7d5f: $00
	ld   a, [bc]                                     ; $7d60: $0a
	add  hl, de                                      ; $7d61: $19
	dec  b                                           ; $7d62: $05

jr_066_7d63:
	inc  bc                                          ; $7d63: $03
	inc  bc                                          ; $7d64: $03
	sub  h                                           ; $7d65: $94
	inc  b                                           ; $7d66: $04
	sbc  [hl]                                        ; $7d67: $9e
	ld   a, h                                        ; $7d68: $7c
	ld   [bc], a                                     ; $7d69: $02
	jp   $7279                                       ; $7d6a: $c3 $79 $72


	ld   d, d                                        ; $7d6d: $52
	ld   [hl], h                                     ; $7d6e: $74
	ld   [bc], a                                     ; $7d6f: $02
	jp   nz, $005d                                   ; $7d70: $c2 $5d $00

	nop                                              ; $7d73: $00
	ld   [bc], a                                     ; $7d74: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7d75: $cf
	dec  b                                           ; $7d76: $05
	ld   a, [de]                                     ; $7d77: $1a
	ld   a, c                                        ; $7d78: $79
	ld   [hl], d                                     ; $7d79: $72
	ld   d, d                                        ; $7d7a: $52
	ld   [hl], h                                     ; $7d7b: $74
	ld   [bc], a                                     ; $7d7c: $02
	jp   nz, $005d                                   ; $7d7d: $c2 $5d $00

	ld   bc, $9250                                   ; $7d80: $01 $50 $92
	adc  a                                           ; $7d83: $8f
	ld   a, c                                        ; $7d84: $79
	ld   [hl], d                                     ; $7d85: $72
	ld   d, d                                        ; $7d86: $52
	ld   [hl], h                                     ; $7d87: $74
	ld   [bc], a                                     ; $7d88: $02
	jp   nz, $005d                                   ; $7d89: $c2 $5d $00

	ld   [bc], a                                     ; $7d8c: $02
	rlca                                             ; $7d8d: $07
	or   h                                           ; $7d8e: $b4
	nop                                              ; $7d8f: $00
	ld   [bc], a                                     ; $7d90: $02
	inc  bc                                          ; $7d91: $03
	ld   bc, $2000                                   ; $7d92: $01 $00 $20
	nop                                              ; $7d95: $00
	rlca                                             ; $7d96: $07
	ld   [hl], c                                     ; $7d97: $71
	ld   bc, $0302                                   ; $7d98: $01 $02 $03
	ld   bc, $2001                                   ; $7d9b: $01 $01 $20
	nop                                              ; $7d9e: $00
	rlca                                             ; $7d9f: $07
	jr   c, jr_066_7da4                              ; $7da0: $38 $02

	ld   [bc], a                                     ; $7da2: $02
	inc  bc                                          ; $7da3: $03

jr_066_7da4:
	ld   bc, $2002                                   ; $7da4: $01 $02 $20
	nop                                              ; $7da7: $00
	ld   b, $8f                                      ; $7da8: $06 $8f
	nop                                              ; $7daa: $00
	inc  e                                           ; $7dab: $1c
	ld   bc, $0000                                   ; $7dac: $01 $00 $00
	ld   bc, $a502                                   ; $7daf: $01 $02 $a5
	inc  b                                           ; $7db2: $04
	xor  d                                           ; $7db3: $aa
	sub  b                                           ; $7db4: $90
	ld   [bc], a                                     ; $7db5: $02
	jr   nz, jr_066_7dbc                             ; $7db6: $20 $04

	xor  d                                           ; $7db8: $aa
	sbc  [hl]                                        ; $7db9: $9e
	dec  c                                           ; $7dba: $0d
	ld   e, d                                        ; $7dbb: $5a

jr_066_7dbc:
	and  c                                           ; $7dbc: $a1
	ld   a, [hl]                                     ; $7dbd: $7e
	sbc  b                                           ; $7dbe: $98
	adc  h                                           ; $7dbf: $8c
	ld   h, l                                        ; $7dc0: $65
	sub  l                                           ; $7dc1: $95
	ld   d, h                                        ; $7dc2: $54
	sbc  a                                           ; $7dc3: $9f
	dec  c                                           ; $7dc4: $0d
	nop                                              ; $7dc5: $00
	ld   a, [bc]                                     ; $7dc6: $0a
	dec  c                                           ; $7dc7: $0d
	nop                                              ; $7dc8: $00

Call_066_7dc9:
	nop                                              ; $7dc9: $00
	rrca                                             ; $7dca: $0f
	nop                                              ; $7dcb: $00
	ld   bc, $1e09                                   ; $7dcc: $01 $09 $1e
	nop                                              ; $7dcf: $00
	rrca                                             ; $7dd0: $0f
	nop                                              ; $7dd1: $00
	ld   bc, $6301                                   ; $7dd2: $01 $01 $63
	ld   e, l                                        ; $7dd5: $5d
	sub  a                                           ; $7dd6: $97
	ld   h, e                                        ; $7dd7: $63
	and  c                                           ; $7dd8: $a1
	ld   e, c                                        ; $7dd9: $59
	sub  a                                           ; $7dda: $97
	ld   [bc], a                                     ; $7ddb: $02
	sub  l                                           ; $7ddc: $95
	ld   [hl], h                                     ; $7ddd: $74
	sbc  [hl]                                        ; $7dde: $9e
	dec  c                                           ; $7ddf: $0d
	inc  b                                           ; $7de0: $04
	ld   l, l                                        ; $7de1: $6d
	ld   [hl], c                                     ; $7de2: $71
	ld   [hl], h                                     ; $7de3: $74
	ld   [hl], a                                     ; $7de4: $77
	and  c                                           ; $7de5: $a1
	ld   a, b                                        ; $7de6: $78
	ld   [bc], a                                     ; $7de7: $02
	scf                                              ; $7de8: $37
	ld   h, [hl]                                     ; $7de9: $66
	ld   [hl], l                                     ; $7dea: $75
	ld   h, l                                        ; $7deb: $65
	sub  l                                           ; $7dec: $95
	ld   d, h                                        ; $7ded: $54
	ld   sp, hl                                      ; $7dee: $f9
	dec  c                                           ; $7def: $0d
	nop                                              ; $7df0: $00
	ld   a, [bc]                                     ; $7df1: $0a
	rlca                                             ; $7df2: $07
	rst  $30                                         ; $7df3: $f7
	nop                                              ; $7df4: $00
	inc  bc                                          ; $7df5: $03
	ld   de, $b401                                   ; $7df6: $11 $01 $b4
	inc  h                                           ; $7df9: $24
	nop                                              ; $7dfa: $00
	rlca                                             ; $7dfb: $07
	ld   de, $0301                                   ; $7dfc: $11 $01 $03
	ld   de, $b401                                   ; $7dff: $11 $01 $b4
	inc  hl                                          ; $7e02: $23
	inc  bc                                          ; $7e03: $03
	ld   de, $a001                                   ; $7e04: $11 $01 $a0
	dec  h                                           ; $7e07: $25
	inc  e                                           ; $7e08: $1c
	nop                                              ; $7e09: $00
	rlca                                             ; $7e0a: $07
	add  hl, hl                                      ; $7e0b: $29
	ld   bc, $1103                                   ; $7e0c: $01 $03 $11
	ld   bc, $22a0                                   ; $7e0f: $01 $a0 $22
	nop                                              ; $7e12: $00
	inc  e                                           ; $7e13: $1c
	ld   bc, $0505                                   ; $7e14: $01 $05 $05
	ld   bc, $7476                                   ; $7e17: $01 $76 $74
	sub  b                                           ; $7e1a: $90
	cp   d                                           ; $7e1b: $ba
	rst  ToBoot                                         ; $7e1c: $c7
	xor  [hl]                                        ; $7e1d: $ae
	ld   l, [hl]                                     ; $7e1e: $6e
	halt                                             ; $7e1f: $76
	dec  b                                           ; $7e20: $05
	pop  de                                          ; $7e21: $d1
	ld   d, d                                        ; $7e22: $52
	adc  h                                           ; $7e23: $8c
	ld   h, a                                        ; $7e24: $67
	sub  [hl]                                        ; $7e25: $96
	sbc  a                                           ; $7e26: $9f
	dec  c                                           ; $7e27: $0d
	nop                                              ; $7e28: $00
	ld   a, [bc]                                     ; $7e29: $0a
	ld   b, $4e                                      ; $7e2a: $06 $4e
	ld   bc, $011c                                   ; $7e2c: $01 $1c $01
	ld   bc, $0101                                   ; $7e2f: $01 $01 $01
	ld   d, d                                        ; $7e32: $52
	ld   d, d                                        ; $7e33: $52
	inc  bc                                          ; $7e34: $03
	add  d                                           ; $7e35: $82
	ld   l, [hl]                                     ; $7e36: $6e
	halt                                             ; $7e37: $76
	dec  b                                           ; $7e38: $05
	pop  de                                          ; $7e39: $d1
	ld   d, d                                        ; $7e3a: $52
	adc  h                                           ; $7e3b: $8c
	ld   h, a                                        ; $7e3c: $67
	sub  [hl]                                        ; $7e3d: $96
	sbc  a                                           ; $7e3e: $9f
	dec  c                                           ; $7e3f: $0d
	nop                                              ; $7e40: $00
	ld   a, [bc]                                     ; $7e41: $0a
	ld   b, $4e                                      ; $7e42: $06 $4e
	ld   bc, $011c                                   ; $7e44: $01 $1c $01
	inc  b                                           ; $7e47: $04
	inc  b                                           ; $7e48: $04
	ld   bc, $5b52                                   ; $7e49: $01 $52 $5b
	ld   a, b                                        ; $7e4c: $78
	sbc  b                                           ; $7e4d: $98
	ld   l, e                                        ; $7e4e: $6b
	ld   d, h                                        ; $7e4f: $54
	ld   d, d                                        ; $7e50: $52
	ld   d, h                                        ; $7e51: $54
	ld   h, c                                        ; $7e52: $61
	halt                                             ; $7e53: $76
	dec  c                                           ; $7e54: $0d
	ld   [bc], a                                     ; $7e55: $02
	jp   nz, $9a59                                   ; $7e56: $c2 $59 $9a

	ld   [hl], h                                     ; $7e59: $74
	sub  b                                           ; $7e5a: $90
	dec  b                                           ; $7e5b: $05
	sub  [hl]                                        ; $7e5c: $96
	sbc  b                                           ; $7e5d: $98
	adc  h                                           ; $7e5e: $8c
	ld   h, a                                        ; $7e5f: $67
	ld   a, e                                        ; $7e60: $7b
	rst  $38                                         ; $7e61: $ff
	rst  $38                                         ; $7e62: $ff
	dec  c                                           ; $7e63: $0d
	nop                                              ; $7e64: $00
	ld   a, [bc]                                     ; $7e65: $0a
	inc  e                                           ; $7e66: $1c
	ld   bc, $0000                                   ; $7e67: $01 $00 $00
	ld   bc, $9166                                   ; $7e6a: $01 $66 $91
	sbc  [hl]                                        ; $7e6d: $9e
	ld   d, b                                        ; $7e6e: $50
	ld   l, l                                        ; $7e6f: $6d
	ld   h, l                                        ; $7e70: $65
	ld   [bc], a                                     ; $7e71: $02
	ld   a, a                                        ; $7e72: $7f
	ld   e, e                                        ; $7e73: $5b
	adc  h                                           ; $7e74: $8c
	ld   h, a                                        ; $7e75: $67
	ld   e, c                                        ; $7e76: $59
	sub  a                                           ; $7e77: $97
	sbc  a                                           ; $7e78: $9f
	dec  c                                           ; $7e79: $0d
	adc  h                                           ; $7e7a: $8c
	ld   l, l                                        ; $7e7b: $6d
	ld   [bc], a                                     ; $7e7c: $02
	xor  d                                           ; $7e7d: $aa
	ld   [hl], l                                     ; $7e7e: $75
	rst  $38                                         ; $7e7f: $ff
	rst  $38                                         ; $7e80: $ff
	dec  c                                           ; $7e81: $0d
	nop                                              ; $7e82: $00
	ld   a, [bc]                                     ; $7e83: $0a
	dec  c                                           ; $7e84: $0d
	nop                                              ; $7e85: $00
	nop                                              ; $7e86: $00
	rrca                                             ; $7e87: $0f
	nop                                              ; $7e88: $00
	ld   bc, $1e09                                   ; $7e89: $01 $09 $1e
	nop                                              ; $7e8c: $00
	rrca                                             ; $7e8d: $0f
	nop                                              ; $7e8e: $00
	ld   bc, $6301                                   ; $7e8f: $01 $01 $63
	ld   e, l                                        ; $7e92: $5d
	sub  a                                           ; $7e93: $97
	ld   h, e                                        ; $7e94: $63
	and  c                                           ; $7e95: $a1
	ld   e, c                                        ; $7e96: $59
	sub  a                                           ; $7e97: $97
	ld   [bc], a                                     ; $7e98: $02
	sub  l                                           ; $7e99: $95
	ld   [hl], h                                     ; $7e9a: $74
	sbc  [hl]                                        ; $7e9b: $9e
	dec  c                                           ; $7e9c: $0d
	ld   [bc], a                                     ; $7e9d: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e9e: $cf
	dec  b                                           ; $7e9f: $05
	ld   a, [de]                                     ; $7ea0: $1a
	ld   h, e                                        ; $7ea1: $63
	and  c                                           ; $7ea2: $a1
	ld   [hl], h                                     ; $7ea3: $74
	ld   [hl], a                                     ; $7ea4: $77
	and  c                                           ; $7ea5: $a1
	ld   a, b                                        ; $7ea6: $78
	inc  b                                           ; $7ea7: $04
	ld   a, b                                        ; $7ea8: $78
	ld   [hl], l                                     ; $7ea9: $75
	ld   h, a                                        ; $7eaa: $67
	ld   e, c                                        ; $7eab: $59
	ld   sp, hl                                      ; $7eac: $f9
	dec  c                                           ; $7ead: $0d
	nop                                              ; $7eae: $00
	ld   a, [bc]                                     ; $7eaf: $0a
	inc  e                                           ; $7eb0: $1c
	ld   bc, $0000                                   ; $7eb1: $01 $00 $00
	ld   bc, $546b                                   ; $7eb4: $01 $6b $54
	ld   [hl], l                                     ; $7eb7: $75
	ld   h, a                                        ; $7eb8: $67
	ld   a, e                                        ; $7eb9: $7b
	rst  $38                                         ; $7eba: $ff
	rst  $38                                         ; $7ebb: $ff
	dec  c                                           ; $7ebc: $0d
	inc  b                                           ; $7ebd: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ebe: $cf
	sbc  c                                           ; $7ebf: $99
	ld   e, l                                        ; $7ec0: $5d
	ld   [hl], h                                     ; $7ec1: $74
	dec  b                                           ; $7ec2: $05
	inc  de                                          ; $7ec3: $13
	ld   h, l                                        ; $7ec4: $65
	ld   e, l                                        ; $7ec5: $5d
	ld   [hl], h                                     ; $7ec6: $74
	sbc  [hl]                                        ; $7ec7: $9e
	ld   l, e                                        ; $7ec8: $6b
	ld   h, l                                        ; $7ec9: $65
	ld   [hl], h                                     ; $7eca: $74
	dec  c                                           ; $7ecb: $0d
	dec  b                                           ; $7ecc: $05
	cp   $05                                         ; $7ecd: $fe $05
	reti                                             ; $7ecf: $d9


	ld   [bc], a                                     ; $7ed0: $02
	db   $fc                                         ; $7ed1: $fc
	ld   a, h                                        ; $7ed2: $7c
	ld   [bc], a                                     ; $7ed3: $02
	call nc, $0352                                   ; $7ed4: $d4 $52 $03
	ld   l, [hl]                                     ; $7ed7: $6e
	ld   a, h                                        ; $7ed8: $7c
	inc  bc                                          ; $7ed9: $03
	add  [hl]                                        ; $7eda: $86
	ld   [hl], l                                     ; $7edb: $75
	ld   h, a                                        ; $7edc: $67
	ld   a, e                                        ; $7edd: $7b
	sbc  a                                           ; $7ede: $9f
	dec  c                                           ; $7edf: $0d
	nop                                              ; $7ee0: $00
	ld   a, [bc]                                     ; $7ee1: $0a
	inc  e                                           ; $7ee2: $1c
	ld   bc, $0101                                   ; $7ee3: $01 $01 $01
	ld   bc, $1d06                                   ; $7ee6: $01 $06 $1d
	inc  bc                                          ; $7ee9: $03
	ld   l, [hl]                                     ; $7eea: $6e
	ld   e, d                                        ; $7eeb: $5a
	ld   d, d                                        ; $7eec: $52
	sbc  c                                           ; $7eed: $99
	halt                                             ; $7eee: $76
	inc  b                                           ; $7eef: $04
	ld   a, d                                        ; $7ef0: $7a
	ld   e, d                                        ; $7ef1: $5a
	dec  b                                           ; $7ef2: $05
	push hl                                          ; $7ef3: $e5
	sbc  b                                           ; $7ef4: $98
	inc  bc                                          ; $7ef5: $03
	ld   h, l                                        ; $7ef6: $65
	ld   e, d                                        ; $7ef7: $5a
	sbc  c                                           ; $7ef8: $99
	dec  c                                           ; $7ef9: $0d
	ld   e, c                                        ; $7efa: $59
	sub  a                                           ; $7efb: $97
	sbc  [hl]                                        ; $7efc: $9e
	ldh  [c], a                                      ; $7efd: $e2
	ei                                               ; $7efe: $fb
	jp   z, $fbe3                                    ; $7eff: $ca $e3 $fb

Jump_066_7f02:
	xor  h                                           ; $7f02: $ac
	ei                                               ; $7f03: $fb
	ld   [hl], l                                     ; $7f04: $75
	sub  b                                           ; $7f05: $90
	dec  c                                           ; $7f06: $0d
	ld   d, b                                        ; $7f07: $50
	sbc  b                                           ; $7f08: $98
	adc  h                                           ; $7f09: $8c
	ld   h, a                                        ; $7f0a: $67
	sub  [hl]                                        ; $7f0b: $96
	sbc  a                                           ; $7f0c: $9f
	dec  c                                           ; $7f0d: $0d
	nop                                              ; $7f0e: $00
	ld   a, [bc]                                     ; $7f0f: $0a
	inc  e                                           ; $7f10: $1c
	ld   bc, $0404                                   ; $7f11: $01 $04 $04
	ld   bc, $ffff                                   ; $7f14: $01 $ff $ff
	ret                                              ; $7f17: $c9


	db   $eb                                         ; $7f18: $eb
	rst  $10                                         ; $7f19: $d7
	db   $ed                                         ; $7f1a: $ed
	db   $e3                                         ; $7f1b: $e3
	ei                                               ; $7f1c: $fb
	xor  h                                           ; $7f1d: $ac
	ei                                               ; $7f1e: $fb
	ld   [hl], l                                     ; $7f1f: $75
	sub  b                                           ; $7f20: $90
	dec  c                                           ; $7f21: $0d
	ld   d, b                                        ; $7f22: $50
	sbc  b                                           ; $7f23: $98
	adc  h                                           ; $7f24: $8c
	ld   h, a                                        ; $7f25: $67
	ld   e, a                                        ; $7f26: $5f
	ld   [hl], a                                     ; $7f27: $77
	rst  $38                                         ; $7f28: $ff
	rst  $38                                         ; $7f29: $ff
	dec  c                                           ; $7f2a: $0d
	nop                                              ; $7f2b: $00
	ld   a, [bc]                                     ; $7f2c: $0a
	inc  e                                           ; $7f2d: $1c
	ld   bc, $0000                                   ; $7f2e: $01 $00 $00
	ld   bc, $9166                                   ; $7f31: $01 $66 $91
	sbc  [hl]                                        ; $7f34: $9e
	ld   d, b                                        ; $7f35: $50
	ld   l, l                                        ; $7f36: $6d
	ld   h, l                                        ; $7f37: $65
	ld   [bc], a                                     ; $7f38: $02
	ld   a, a                                        ; $7f39: $7f
	ld   e, e                                        ; $7f3a: $5b
	adc  h                                           ; $7f3b: $8c
	ld   h, a                                        ; $7f3c: $67
	ld   e, c                                        ; $7f3d: $59
	sub  a                                           ; $7f3e: $97
	sbc  a                                           ; $7f3f: $9f
	dec  c                                           ; $7f40: $0d
	adc  h                                           ; $7f41: $8c
	ld   l, l                                        ; $7f42: $6d
	ld   [bc], a                                     ; $7f43: $02
	xor  d                                           ; $7f44: $aa
	ld   [hl], l                                     ; $7f45: $75
	rst  $38                                         ; $7f46: $ff
	rst  $38                                         ; $7f47: $ff
	dec  c                                           ; $7f48: $0d
	nop                                              ; $7f49: $00
	ld   a, [bc]                                     ; $7f4a: $0a
	dec  c                                           ; $7f4b: $0d
	nop                                              ; $7f4c: $00
	nop                                              ; $7f4d: $00
	rrca                                             ; $7f4e: $0f
	nop                                              ; $7f4f: $00
	ld   bc, $1e09                                   ; $7f50: $01 $09 $1e
	nop                                              ; $7f53: $00
	rrca                                             ; $7f54: $0f
	nop                                              ; $7f55: $00
	ld   bc, $5001                                   ; $7f56: $01 $01 $50
	sub  d                                           ; $7f59: $92
	adc  a                                           ; $7f5a: $8f
	ld   h, e                                        ; $7f5b: $63
	and  c                                           ; $7f5c: $a1
	ld   [hl], h                                     ; $7f5d: $74
	sbc  [hl]                                        ; $7f5e: $9e
	ld   h, e                                        ; $7f5f: $63
	ld   e, l                                        ; $7f60: $5d
	sub  a                                           ; $7f61: $97
	ld   h, e                                        ; $7f62: $63
	and  c                                           ; $7f63: $a1
	ld   e, c                                        ; $7f64: $59
	sub  a                                           ; $7f65: $97
	dec  c                                           ; $7f66: $0d
	ld   [bc], a                                     ; $7f67: $02
	sub  l                                           ; $7f68: $95
	ld   [hl], h                                     ; $7f69: $74
	sbc  [hl]                                        ; $7f6a: $9e
	ld   [hl], a                                     ; $7f6b: $77
	and  c                                           ; $7f6c: $a1
	ld   a, b                                        ; $7f6d: $78
	inc  b                                           ; $7f6e: $04
	ld   a, b                                        ; $7f6f: $78
	ld   [hl], l                                     ; $7f70: $75
	ld   h, a                                        ; $7f71: $67
	ld   e, c                                        ; $7f72: $59
	ld   sp, hl                                      ; $7f73: $f9
	dec  c                                           ; $7f74: $0d
	nop                                              ; $7f75: $00
	ld   a, [bc]                                     ; $7f76: $0a
	inc  e                                           ; $7f77: $1c
	ld   bc, $0000                                   ; $7f78: $01 $00 $00
	ld   bc, $546b                                   ; $7f7b: $01 $6b $54
	ld   [hl], l                                     ; $7f7e: $75
	ld   h, a                                        ; $7f7f: $67
	ld   a, e                                        ; $7f80: $7b
	rst  $38                                         ; $7f81: $ff
	rst  $38                                         ; $7f82: $ff
	dec  c                                           ; $7f83: $0d
	ld   h, a                                        ; $7f84: $67
	ld   h, d                                        ; $7f85: $62
	ld   e, l                                        ; $7f86: $5d
	ld   l, l                                        ; $7f87: $6d
	sub  [hl]                                        ; $7f88: $96
	sbc  b                                           ; $7f89: $98
	ld   a, c                                        ; $7f8a: $79
	ld   a, b                                        ; $7f8b: $78
	sbc  c                                           ; $7f8c: $99
	inc  bc                                          ; $7f8d: $03
	ld   l, [hl]                                     ; $7f8e: $6e
	ld   [bc], a                                     ; $7f8f: $02
	db   $fc                                         ; $7f90: $fc
	ld   [hl], l                                     ; $7f91: $75
	dec  c                                           ; $7f92: $0d
	adc  l                                           ; $7f93: $8d
	and  c                                           ; $7f94: $a1
	ld   a, b                                        ; $7f95: $78
	ld   e, c                                        ; $7f96: $59
	sub  a                                           ; $7f97: $97
	sub  b                                           ; $7f98: $90
	ld   [bc], a                                     ; $7f99: $02
	ld   hl, sp+$05                                  ; $7f9a: $f8 $05
	inc  bc                                          ; $7f9c: $03
	ld   h, e                                        ; $7f9d: $63
	sbc  d                                           ; $7f9e: $9a
	ld   [hl], h                                     ; $7f9f: $74
	adc  h                                           ; $7fa0: $8c
	ld   h, a                                        ; $7fa1: $67
	sbc  a                                           ; $7fa2: $9f
	dec  c                                           ; $7fa3: $0d
	nop                                              ; $7fa4: $00
	ld   a, [bc]                                     ; $7fa5: $0a
	ld   bc, $6d50                                   ; $7fa6: $01 $50 $6d
	ld   h, l                                        ; $7fa9: $65
	ld   a, l                                        ; $7faa: $7d
	sbc  [hl]                                        ; $7fab: $9e
	ld   d, b                                        ; $7fac: $50
	ld   h, c                                        ; $7fad: $61
	ld   e, d                                        ; $7fae: $5a
	sbc  d                                           ; $7faf: $9a
	adc  h                                           ; $7fb0: $8c
	ld   h, a                                        ; $7fb1: $67
	ld   a, e                                        ; $7fb2: $7b
	sbc  a                                           ; $7fb3: $9f
	dec  c                                           ; $7fb4: $0d
	nop                                              ; $7fb5: $00
	ld   a, [bc]                                     ; $7fb6: $0a
	ld   bc, $9166                                   ; $7fb7: $01 $66 $91
	sbc  [hl]                                        ; $7fba: $9e
	ld   d, b                                        ; $7fbb: $50
	ld   l, l                                        ; $7fbc: $6d
	ld   h, l                                        ; $7fbd: $65
	ld   [bc], a                                     ; $7fbe: $02
	ld   a, a                                        ; $7fbf: $7f
	ld   e, e                                        ; $7fc0: $5b
	adc  h                                           ; $7fc1: $8c
	ld   h, a                                        ; $7fc2: $67
	ld   e, c                                        ; $7fc3: $59
	sub  a                                           ; $7fc4: $97
	sbc  a                                           ; $7fc5: $9f
	dec  c                                           ; $7fc6: $0d
	adc  h                                           ; $7fc7: $8c
	ld   l, l                                        ; $7fc8: $6d
	ld   [bc], a                                     ; $7fc9: $02
	xor  d                                           ; $7fca: $aa
	ld   [hl], l                                     ; $7fcb: $75
	rst  $38                                         ; $7fcc: $ff
	rst  $38                                         ; $7fcd: $ff
	dec  c                                           ; $7fce: $0d
	nop                                              ; $7fcf: $00
	ld   a, [bc]                                     ; $7fd0: $0a
	dec  c                                           ; $7fd1: $0d
	nop                                              ; $7fd2: $00
	nop                                              ; $7fd3: $00
	rrca                                             ; $7fd4: $0f
	nop                                              ; $7fd5: $00
	ld   bc, $1e09                                   ; $7fd6: $01 $09 $1e
	nop                                              ; $7fd9: $00
	nop                                              ; $7fda: $00
	rrca                                             ; $7fdb: $0f
	nop                                              ; $7fdc: $00
	ld   bc, $060d                                   ; $7fdd: $01 $0d $06
	nop                                              ; $7fe0: $00
	ld   [bc], a                                     ; $7fe1: $02
	ld   bc, $7d58                                   ; $7fe2: $01 $58 $7d
	sub  [hl]                                        ; $7fe5: $96
	ld   d, h                                        ; $7fe6: $54
	ld   h, d                                        ; $7fe7: $62
	ld   h, h                                        ; $7fe8: $64
	ld   d, d                                        ; $7fe9: $52
	adc  h                                           ; $7fea: $8c
	ld   h, a                                        ; $7feb: $67
	sbc  a                                           ; $7fec: $9f
	dec  c                                           ; $7fed: $0d
	nop                                              ; $7fee: $00
	ld   a, [bc]                                     ; $7fef: $0a
	inc  e                                           ; $7ff0: $1c
	ld   b, $01                                      ; $7ff1: $06 $01
	ld   bc, $5801                                   ; $7ff3: $01 $01 $58
	ld   d, h                                        ; $7ff6: $54
	sbc  [hl]                                        ; $7ff7: $9e
	ld   [$9f00], sp                                 ; $7ff8: $08 $00 $9f
	dec  c                                           ; $7ffb: $0d
	ld   e, b                                        ; $7ffc: $58
	ld   a, l                                        ; $7ffd: $7d
	sub  [hl]                                        ; $7ffe: $96
	ld   d, h                                        ; $7fff: $54
