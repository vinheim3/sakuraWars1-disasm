; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $045", ROMX[$4000], BANK[$45]

	ld   e, $7c                                      ; $4000: $1e $7c
	inc  bc                                          ; $4002: $03
	add  d                                           ; $4003: $82
	ld   a, h                                        ; $4004: $7c
	ld   [bc], a                                     ; $4005: $02
	jp   $02a0                                       ; $4006: $c3 $a0 $02


	jp   nz, $005d                                   ; $4009: $c2 $5d $00

	ld   [bc], a                                     ; $400c: $02
	rlca                                             ; $400d: $07
	sub  l                                           ; $400e: $95
	nop                                              ; $400f: $00
	ld   [bc], a                                     ; $4010: $02
	ld   [bc], a                                     ; $4011: $02
	ld   bc, $2000                                   ; $4012: $01 $00 $20
	nop                                              ; $4015: $00
	rlca                                             ; $4016: $07
	db   $10                                         ; $4017: $10
	ld   bc, $0202                                   ; $4018: $01 $02 $02
	ld   bc, $2001                                   ; $401b: $01 $01 $20
	nop                                              ; $401e: $00
	rlca                                             ; $401f: $07
	adc  h                                           ; $4020: $8c
	ld   bc, $0202                                   ; $4021: $01 $02 $02
	ld   bc, $2002                                   ; $4024: $01 $02 $20
	nop                                              ; $4027: $00
	rrca                                             ; $4028: $0f
	nop                                              ; $4029: $00
	ld   bc, $5001                                   ; $402a: $01 $01 $50
	ld   a, h                                        ; $402d: $7c
	rst  $38                                         ; $402e: $ff
	ld   h, e                                        ; $402f: $63
	ld   e, l                                        ; $4030: $5d
	sub  a                                           ; $4031: $97
	ld   h, e                                        ; $4032: $63
	and  c                                           ; $4033: $a1
	ld   a, h                                        ; $4034: $7c
	ld   [bc], a                                     ; $4035: $02
	jp   Jump_045_7279                               ; $4036: $c3 $79 $72


	ld   d, d                                        ; $4039: $52
	ld   [hl], h                                     ; $403a: $74
	dec  c                                           ; $403b: $0d
	ld   e, b                                        ; $403c: $58
	ld   [bc], a                                     ; $403d: $02
	jp   nz, $655b                                   ; $403e: $c2 $5b $65

	ld   l, l                                        ; $4041: $6d
	ld   d, d                                        ; $4042: $52
	and  c                                           ; $4043: $a1
	ld   [hl], l                                     ; $4044: $75
	ld   h, a                                        ; $4045: $67
	ld   e, a                                        ; $4046: $5f
	ld   [hl], a                                     ; $4047: $77
	rst  $38                                         ; $4048: $ff
	rst  $38                                         ; $4049: $ff
	sbc  a                                           ; $404a: $9f
	dec  c                                           ; $404b: $0d
	nop                                              ; $404c: $00
	ld   a, [bc]                                     ; $404d: $0a
	inc  e                                           ; $404e: $1c
	dec  c                                           ; $404f: $0d
	nop                                              ; $4050: $00
	nop                                              ; $4051: $00
	ld   bc, $5d63                                   ; $4052: $01 $63 $5d
	sub  a                                           ; $4055: $97
	ld   h, e                                        ; $4056: $63
	and  c                                           ; $4057: $a1
	ld   a, b                                        ; $4058: $78
	sub  a                                           ; $4059: $97
	sbc  [hl]                                        ; $405a: $9e
	dec  c                                           ; $405b: $0d
	call c, $edfb                                    ; $405c: $dc $fb $ed
	sub  d                                           ; $405f: $92
	rst  ToBoot                                         ; $4060: $c7
	db   $eb                                         ; $4061: $eb
	cp   d                                           ; $4062: $ba
	ld   a, c                                        ; $4063: $79
	dec  c                                           ; $4064: $0d
	sub  [hl]                                        ; $4065: $96
	ld   e, l                                        ; $4066: $5d
	ld   d, d                                        ; $4067: $52
	sbc  c                                           ; $4068: $99
	sbc  l                                           ; $4069: $9d
	sub  [hl]                                        ; $406a: $96
	sbc  a                                           ; $406b: $9f
	dec  c                                           ; $406c: $0d
	nop                                              ; $406d: $00
	ld   a, [bc]                                     ; $406e: $0a
	ld   a, [hl+]                                    ; $406f: $2a
	ld   bc, $0d1c                                   ; $4070: $01 $1c $0d
	ld   bc, $0101                                   ; $4073: $01 $01 $01
	ld   l, e                                        ; $4076: $6b
	sbc  d                                           ; $4077: $9a
	ld   h, [hl]                                     ; $4078: $66
	sub  c                                           ; $4079: $91
	sbc  [hl]                                        ; $407a: $9e
	ld   d, b                                        ; $407b: $50
	ld   l, l                                        ; $407c: $6d
	ld   h, l                                        ; $407d: $65
	ld   a, l                                        ; $407e: $7d
	dec  c                                           ; $407f: $0d
	inc  bc                                          ; $4080: $03
	dec  c                                           ; $4081: $0d
	ld   [bc], a                                     ; $4082: $02
	jp   Jump_045_505a                               ; $4083: $c3 $5a $50


	sbc  c                                           ; $4086: $99
	ld   e, c                                        ; $4087: $59
	sub  a                                           ; $4088: $97
	sbc  [hl]                                        ; $4089: $9e
	dec  c                                           ; $408a: $0d
	ld   h, c                                        ; $408b: $61
	sbc  d                                           ; $408c: $9a
	ld   [hl], l                                     ; $408d: $75
	inc  bc                                          ; $408e: $03
	add  e                                           ; $408f: $83
	dec  b                                           ; $4090: $05
	dec  c                                           ; $4091: $0d
	ld   h, a                                        ; $4092: $67
	sbc  c                                           ; $4093: $99
	sbc  l                                           ; $4094: $9d
	ld   a, e                                        ; $4095: $7b
	sbc  a                                           ; $4096: $9f
	dec  c                                           ; $4097: $0d
	nop                                              ; $4098: $00
	ld   a, [bc]                                     ; $4099: $0a
	dec  c                                           ; $409a: $0d
	nop                                              ; $409b: $00
	nop                                              ; $409c: $00
	rrca                                             ; $409d: $0f
	nop                                              ; $409e: $00
	ld   bc, $1e09                                   ; $409f: $01 $09 $1e
	nop                                              ; $40a2: $00
	rrca                                             ; $40a3: $0f
	nop                                              ; $40a4: $00
	ld   bc, $5001                                   ; $40a5: $01 $01 $50
	ld   a, h                                        ; $40a8: $7c
	rst  $38                                         ; $40a9: $ff
	ld   h, a                                        ; $40aa: $67
	adc  l                                           ; $40ab: $8d
	sbc  d                                           ; $40ac: $9a
	ld   h, e                                        ; $40ad: $63
	and  c                                           ; $40ae: $a1
	ld   a, h                                        ; $40af: $7c
	ld   [bc], a                                     ; $40b0: $02
	jp   Jump_045_7279                               ; $40b1: $c3 $79 $72


	ld   d, d                                        ; $40b4: $52
	ld   [hl], h                                     ; $40b5: $74
	dec  c                                           ; $40b6: $0d
	ld   e, b                                        ; $40b7: $58
	ld   [bc], a                                     ; $40b8: $02
	jp   nz, $655b                                   ; $40b9: $c2 $5b $65

	ld   l, l                                        ; $40bc: $6d
	ld   d, d                                        ; $40bd: $52
	and  c                                           ; $40be: $a1
	ld   [hl], l                                     ; $40bf: $75
	ld   h, a                                        ; $40c0: $67
	ld   e, a                                        ; $40c1: $5f
	ld   [hl], a                                     ; $40c2: $77
	rst  $38                                         ; $40c3: $ff
	rst  $38                                         ; $40c4: $ff
	sbc  a                                           ; $40c5: $9f
	dec  c                                           ; $40c6: $0d
	nop                                              ; $40c7: $00
	ld   a, [bc]                                     ; $40c8: $0a
	inc  e                                           ; $40c9: $1c
	dec  c                                           ; $40ca: $0d
	nop                                              ; $40cb: $00
	nop                                              ; $40cc: $00
	ld   bc, $8d67                                   ; $40cd: $01 $67 $8d
	sbc  d                                           ; $40d0: $9a
	ld   h, e                                        ; $40d1: $63
	and  c                                           ; $40d2: $a1
	ld   a, b                                        ; $40d3: $78
	sub  a                                           ; $40d4: $97
	sbc  [hl]                                        ; $40d5: $9e
	dec  c                                           ; $40d6: $0d
	or   [hl]                                        ; $40d7: $b6
	rst  $28                                         ; $40d8: $ef
	push af                                          ; $40d9: $f5
	sub  d                                           ; $40da: $92
	inc  b                                           ; $40db: $04
	dec  bc                                          ; $40dc: $0b
	inc  b                                           ; $40dd: $04
	rra                                              ; $40de: $1f
	ld   a, c                                        ; $40df: $79
	dec  c                                           ; $40e0: $0d
	sub  [hl]                                        ; $40e1: $96
	ld   e, l                                        ; $40e2: $5d
	ld   d, d                                        ; $40e3: $52
	sbc  c                                           ; $40e4: $99
	sbc  l                                           ; $40e5: $9d
	sub  [hl]                                        ; $40e6: $96
	sbc  a                                           ; $40e7: $9f
	dec  c                                           ; $40e8: $0d
	nop                                              ; $40e9: $00
	ld   a, [bc]                                     ; $40ea: $0a
	ld   a, [hl+]                                    ; $40eb: $2a
	ld   [bc], a                                     ; $40ec: $02
	inc  e                                           ; $40ed: $1c
	dec  c                                           ; $40ee: $0d
	ld   bc, $0101                                   ; $40ef: $01 $01 $01
	ld   l, e                                        ; $40f2: $6b
	sbc  d                                           ; $40f3: $9a
	ld   h, [hl]                                     ; $40f4: $66
	sub  c                                           ; $40f5: $91
	sbc  [hl]                                        ; $40f6: $9e
	ld   d, b                                        ; $40f7: $50
	ld   l, l                                        ; $40f8: $6d
	ld   h, l                                        ; $40f9: $65
	ld   a, l                                        ; $40fa: $7d
	dec  c                                           ; $40fb: $0d
	inc  bc                                          ; $40fc: $03
	dec  c                                           ; $40fd: $0d
	ld   [bc], a                                     ; $40fe: $02
	jp   Jump_045_505a                               ; $40ff: $c3 $5a $50


	sbc  c                                           ; $4102: $99
	ld   e, c                                        ; $4103: $59
	sub  a                                           ; $4104: $97
	sbc  [hl]                                        ; $4105: $9e
	dec  c                                           ; $4106: $0d
	ld   h, c                                        ; $4107: $61
	sbc  d                                           ; $4108: $9a
	ld   [hl], l                                     ; $4109: $75
	inc  bc                                          ; $410a: $03
	add  e                                           ; $410b: $83
	dec  b                                           ; $410c: $05
	dec  c                                           ; $410d: $0d
	ld   h, a                                        ; $410e: $67
	sbc  c                                           ; $410f: $99
	sbc  l                                           ; $4110: $9d
	ld   a, e                                        ; $4111: $7b
	sbc  a                                           ; $4112: $9f
	dec  c                                           ; $4113: $0d
	nop                                              ; $4114: $00
	ld   a, [bc]                                     ; $4115: $0a
	dec  c                                           ; $4116: $0d
	nop                                              ; $4117: $00
	nop                                              ; $4118: $00
	rrca                                             ; $4119: $0f
	nop                                              ; $411a: $00
	ld   bc, $1e09                                   ; $411b: $01 $09 $1e
	nop                                              ; $411e: $00
	jr   jr_045_4124                                 ; $411f: $18 $03

	ld   bc, $ecdf                                   ; $4121: $01 $df $ec

jr_045_4124:
	and  e                                           ; $4124: $a3
	ld   a, h                                        ; $4125: $7c
	ld   h, c                                        ; $4126: $61
	halt                                             ; $4127: $76
	and  b                                           ; $4128: $a0
	ld   [bc], a                                     ; $4129: $02
	jp   nz, $005d                                   ; $412a: $c2 $5d $00

	nop                                              ; $412d: $00
	xor  h                                           ; $412e: $ac
	push af                                          ; $412f: $f5
	bit  7, h                                        ; $4130: $cb $7c
	ld   h, c                                        ; $4132: $61
	halt                                             ; $4133: $76
	and  b                                           ; $4134: $a0
	ld   [bc], a                                     ; $4135: $02
	jp   nz, $005d                                   ; $4136: $c2 $5d $00

	ld   bc, $1e04                                   ; $4139: $01 $04 $1e
	ld   a, h                                        ; $413c: $7c
	inc  bc                                          ; $413d: $03
	add  d                                           ; $413e: $82
	ld   a, h                                        ; $413f: $7c
	ld   [bc], a                                     ; $4140: $02
	jp   $02a0                                       ; $4141: $c3 $a0 $02


	jp   nz, $005d                                   ; $4144: $c2 $5d $00

	ld   [bc], a                                     ; $4147: $02
	rlca                                             ; $4148: $07
	ret  nc                                          ; $4149: $d0

	ld   bc, $0202                                   ; $414a: $01 $02 $02
	ld   bc, $2000                                   ; $414d: $01 $00 $20
	nop                                              ; $4150: $00
	rlca                                             ; $4151: $07
	ld   c, h                                        ; $4152: $4c
	ld   [bc], a                                     ; $4153: $02
	ld   [bc], a                                     ; $4154: $02
	ld   [bc], a                                     ; $4155: $02
	ld   bc, $2001                                   ; $4156: $01 $01 $20
	nop                                              ; $4159: $00
	rlca                                             ; $415a: $07
	ret                                              ; $415b: $c9


	ld   [bc], a                                     ; $415c: $02
	ld   [bc], a                                     ; $415d: $02
	ld   [bc], a                                     ; $415e: $02
	ld   bc, $2002                                   ; $415f: $01 $02 $20
	nop                                              ; $4162: $00
	rrca                                             ; $4163: $0f
	nop                                              ; $4164: $00
	ld   bc, $5001                                   ; $4165: $01 $01 $50
	ld   a, h                                        ; $4168: $7c
	rst  $38                                         ; $4169: $ff
	rst  JumpTable                                         ; $416a: $df
	db   $ec                                         ; $416b: $ec
	and  e                                           ; $416c: $a3
	ld   h, e                                        ; $416d: $63
	and  c                                           ; $416e: $a1
	ld   a, h                                        ; $416f: $7c
	ld   [bc], a                                     ; $4170: $02
	jp   Jump_045_7279                               ; $4171: $c3 $79 $72


	ld   d, d                                        ; $4174: $52
	ld   [hl], h                                     ; $4175: $74
	dec  c                                           ; $4176: $0d
	ld   e, b                                        ; $4177: $58
	ld   [bc], a                                     ; $4178: $02
	jp   nz, $655b                                   ; $4179: $c2 $5b $65

	ld   l, l                                        ; $417c: $6d
	ld   d, d                                        ; $417d: $52
	and  c                                           ; $417e: $a1
	ld   [hl], l                                     ; $417f: $75
	ld   h, a                                        ; $4180: $67
	ld   e, a                                        ; $4181: $5f
	ld   [hl], a                                     ; $4182: $77
	rst  $38                                         ; $4183: $ff
	rst  $38                                         ; $4184: $ff
	sbc  a                                           ; $4185: $9f
	dec  c                                           ; $4186: $0d
	nop                                              ; $4187: $00
	ld   a, [bc]                                     ; $4188: $0a
	inc  e                                           ; $4189: $1c
	dec  c                                           ; $418a: $0d
	nop                                              ; $418b: $00
	nop                                              ; $418c: $00
	ld   bc, $ecdf                                   ; $418d: $01 $df $ec
	and  e                                           ; $4190: $a3
	ld   h, e                                        ; $4191: $63
	and  c                                           ; $4192: $a1
	ld   a, b                                        ; $4193: $78
	sub  a                                           ; $4194: $97
	sbc  [hl]                                        ; $4195: $9e
	dec  c                                           ; $4196: $0d
	rst  ToBoot                                         ; $4197: $c7
	db   $eb                                         ; $4198: $eb
	cp   d                                           ; $4199: $ba
	sub  d                                           ; $419a: $92
	inc  bc                                          ; $419b: $03
	ld   d, l                                        ; $419c: $55
	ld   [bc], a                                     ; $419d: $02
	ld   e, c                                        ; $419e: $59
	ld   a, c                                        ; $419f: $79
	dec  c                                           ; $41a0: $0d
	sub  [hl]                                        ; $41a1: $96
	ld   e, l                                        ; $41a2: $5d
	ld   d, d                                        ; $41a3: $52
	sbc  c                                           ; $41a4: $99
	sbc  l                                           ; $41a5: $9d
	sub  [hl]                                        ; $41a6: $96
	sbc  a                                           ; $41a7: $9f
	dec  c                                           ; $41a8: $0d
	nop                                              ; $41a9: $00
	ld   a, [bc]                                     ; $41aa: $0a
	ld   a, [hl+]                                    ; $41ab: $2a
	inc  bc                                          ; $41ac: $03
	inc  e                                           ; $41ad: $1c
	dec  c                                           ; $41ae: $0d
	ld   bc, $0101                                   ; $41af: $01 $01 $01
	ld   l, e                                        ; $41b2: $6b
	sbc  d                                           ; $41b3: $9a
	ld   h, [hl]                                     ; $41b4: $66
	sub  c                                           ; $41b5: $91
	sbc  [hl]                                        ; $41b6: $9e
	ld   d, b                                        ; $41b7: $50
	ld   l, l                                        ; $41b8: $6d
	ld   h, l                                        ; $41b9: $65
	ld   a, l                                        ; $41ba: $7d
	dec  c                                           ; $41bb: $0d
	inc  bc                                          ; $41bc: $03
	dec  c                                           ; $41bd: $0d
	ld   [bc], a                                     ; $41be: $02
	jp   Jump_045_505a                               ; $41bf: $c3 $5a $50


	sbc  c                                           ; $41c2: $99
	ld   e, c                                        ; $41c3: $59
	sub  a                                           ; $41c4: $97
	sbc  [hl]                                        ; $41c5: $9e
	dec  c                                           ; $41c6: $0d
	ld   h, c                                        ; $41c7: $61
	sbc  d                                           ; $41c8: $9a
	ld   [hl], l                                     ; $41c9: $75
	inc  bc                                          ; $41ca: $03
	add  e                                           ; $41cb: $83
	dec  b                                           ; $41cc: $05
	dec  c                                           ; $41cd: $0d
	ld   h, a                                        ; $41ce: $67
	sbc  c                                           ; $41cf: $99
	sbc  l                                           ; $41d0: $9d
	ld   a, e                                        ; $41d1: $7b
	sbc  a                                           ; $41d2: $9f
	dec  c                                           ; $41d3: $0d
	nop                                              ; $41d4: $00
	ld   a, [bc]                                     ; $41d5: $0a
	dec  c                                           ; $41d6: $0d
	nop                                              ; $41d7: $00
	nop                                              ; $41d8: $00
	rrca                                             ; $41d9: $0f
	nop                                              ; $41da: $00
	ld   bc, $1e09                                   ; $41db: $01 $09 $1e
	nop                                              ; $41de: $00
	rrca                                             ; $41df: $0f
	nop                                              ; $41e0: $00
	ld   bc, $5001                                   ; $41e1: $01 $01 $50
	ld   a, h                                        ; $41e4: $7c
	rst  $38                                         ; $41e5: $ff
	xor  h                                           ; $41e6: $ac
	push af                                          ; $41e7: $f5
	bit  4, e                                        ; $41e8: $cb $63
	and  c                                           ; $41ea: $a1
	ld   a, h                                        ; $41eb: $7c
	ld   [bc], a                                     ; $41ec: $02
	jp   Jump_045_7279                               ; $41ed: $c3 $79 $72


	ld   d, d                                        ; $41f0: $52
	ld   [hl], h                                     ; $41f1: $74
	dec  c                                           ; $41f2: $0d
	ld   e, b                                        ; $41f3: $58
	ld   [bc], a                                     ; $41f4: $02
	jp   nz, $655b                                   ; $41f5: $c2 $5b $65

	ld   l, l                                        ; $41f8: $6d
	ld   d, d                                        ; $41f9: $52
	and  c                                           ; $41fa: $a1
	ld   [hl], l                                     ; $41fb: $75
	ld   h, a                                        ; $41fc: $67
	ld   e, a                                        ; $41fd: $5f
	ld   [hl], a                                     ; $41fe: $77
	rst  $38                                         ; $41ff: $ff
	rst  $38                                         ; $4200: $ff
	sbc  a                                           ; $4201: $9f
	dec  c                                           ; $4202: $0d
	nop                                              ; $4203: $00
	ld   a, [bc]                                     ; $4204: $0a
	inc  e                                           ; $4205: $1c
	dec  c                                           ; $4206: $0d
	nop                                              ; $4207: $00
	nop                                              ; $4208: $00
	ld   bc, $f5ac                                   ; $4209: $01 $ac $f5
	bit  4, e                                        ; $420c: $cb $63
	and  c                                           ; $420e: $a1
	ld   a, b                                        ; $420f: $78
	sub  a                                           ; $4210: $97
	sbc  [hl]                                        ; $4211: $9e
	dec  c                                           ; $4212: $0d
	inc  bc                                          ; $4213: $03
	ld   l, d                                        ; $4214: $6a
	inc  bc                                          ; $4215: $03
	db   $db                                         ; $4216: $db
	sub  d                                           ; $4217: $92
	inc  b                                           ; $4218: $04
	dec  bc                                          ; $4219: $0b
	inc  b                                           ; $421a: $04
	rra                                              ; $421b: $1f
	ld   a, c                                        ; $421c: $79
	dec  c                                           ; $421d: $0d
	sub  [hl]                                        ; $421e: $96
	ld   e, l                                        ; $421f: $5d
	ld   d, d                                        ; $4220: $52
	sbc  c                                           ; $4221: $99
	sbc  l                                           ; $4222: $9d
	sub  [hl]                                        ; $4223: $96
	sbc  a                                           ; $4224: $9f
	dec  c                                           ; $4225: $0d
	nop                                              ; $4226: $00
	ld   a, [bc]                                     ; $4227: $0a
	ld   a, [hl+]                                    ; $4228: $2a
	ld   b, $1c                                      ; $4229: $06 $1c
	dec  c                                           ; $422b: $0d
	ld   bc, $0101                                   ; $422c: $01 $01 $01
	ld   l, e                                        ; $422f: $6b
	sbc  d                                           ; $4230: $9a
	ld   h, [hl]                                     ; $4231: $66
	sub  c                                           ; $4232: $91
	sbc  [hl]                                        ; $4233: $9e
	ld   d, b                                        ; $4234: $50
	ld   l, l                                        ; $4235: $6d
	ld   h, l                                        ; $4236: $65
	ld   a, l                                        ; $4237: $7d
	dec  c                                           ; $4238: $0d
	inc  bc                                          ; $4239: $03
	dec  c                                           ; $423a: $0d
	ld   [bc], a                                     ; $423b: $02
	jp   Jump_045_505a                               ; $423c: $c3 $5a $50


	sbc  c                                           ; $423f: $99
	ld   e, c                                        ; $4240: $59
	sub  a                                           ; $4241: $97
	sbc  [hl]                                        ; $4242: $9e
	dec  c                                           ; $4243: $0d
	ld   h, c                                        ; $4244: $61
	sbc  d                                           ; $4245: $9a
	ld   [hl], l                                     ; $4246: $75
	inc  bc                                          ; $4247: $03
	add  e                                           ; $4248: $83
	dec  b                                           ; $4249: $05
	dec  c                                           ; $424a: $0d
	ld   h, a                                        ; $424b: $67
	sbc  c                                           ; $424c: $99
	sbc  l                                           ; $424d: $9d
	ld   a, e                                        ; $424e: $7b
	sbc  a                                           ; $424f: $9f
	dec  c                                           ; $4250: $0d
	nop                                              ; $4251: $00
	ld   a, [bc]                                     ; $4252: $0a
	dec  c                                           ; $4253: $0d
	nop                                              ; $4254: $00
	nop                                              ; $4255: $00
	rrca                                             ; $4256: $0f
	nop                                              ; $4257: $00
	ld   bc, $1e09                                   ; $4258: $01 $09 $1e
	nop                                              ; $425b: $00
	jr   jr_045_4261                                 ; $425c: $18 $03

	ld   bc, $cf02                                   ; $425e: $01 $02 $cf

jr_045_4261:
	dec  b                                           ; $4261: $05
	ld   a, [de]                                     ; $4262: $1a
	ld   a, h                                        ; $4263: $7c
	ld   h, c                                        ; $4264: $61
	halt                                             ; $4265: $76
	and  b                                           ; $4266: $a0
	ld   [bc], a                                     ; $4267: $02
	jp   nz, $005d                                   ; $4268: $c2 $5d $00

	nop                                              ; $426b: $00
	and  e                                           ; $426c: $a3
	and  l                                           ; $426d: $a5
	db   $ec                                         ; $426e: $ec
	cp   d                                           ; $426f: $ba
	ld   a, h                                        ; $4270: $7c
	ld   h, c                                        ; $4271: $61
	halt                                             ; $4272: $76
	and  b                                           ; $4273: $a0
	ld   [bc], a                                     ; $4274: $02
	jp   nz, $005d                                   ; $4275: $c2 $5d $00

	ld   bc, $1e04                                   ; $4278: $01 $04 $1e
	ld   a, h                                        ; $427b: $7c
	inc  bc                                          ; $427c: $03
	add  d                                           ; $427d: $82
	ld   a, h                                        ; $427e: $7c
	ld   [bc], a                                     ; $427f: $02
	jp   $02a0                                       ; $4280: $c3 $a0 $02


	jp   nz, $005d                                   ; $4283: $c2 $5d $00

	ld   [bc], a                                     ; $4286: $02
	rlca                                             ; $4287: $07
	rrca                                             ; $4288: $0f
	inc  bc                                          ; $4289: $03
	ld   [bc], a                                     ; $428a: $02
	ld   [bc], a                                     ; $428b: $02
	ld   bc, $2000                                   ; $428c: $01 $00 $20
	nop                                              ; $428f: $00
	rlca                                             ; $4290: $07
	sub  d                                           ; $4291: $92
	inc  bc                                          ; $4292: $03
	ld   [bc], a                                     ; $4293: $02
	ld   [bc], a                                     ; $4294: $02
	ld   bc, $2001                                   ; $4295: $01 $01 $20
	nop                                              ; $4298: $00
	rlca                                             ; $4299: $07
	ld   d, c                                        ; $429a: $51
	nop                                              ; $429b: $00
	ld   [bc], a                                     ; $429c: $02
	ld   [bc], a                                     ; $429d: $02
	ld   bc, $2002                                   ; $429e: $01 $02 $20
	nop                                              ; $42a1: $00
	rrca                                             ; $42a2: $0f
	nop                                              ; $42a3: $00
	ld   bc, $5001                                   ; $42a4: $01 $01 $50
	ld   a, h                                        ; $42a7: $7c
	rst  $38                                         ; $42a8: $ff
	ld   [bc], a                                     ; $42a9: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $42aa: $cf
	dec  b                                           ; $42ab: $05
	ld   a, [de]                                     ; $42ac: $1a
	ld   h, e                                        ; $42ad: $63
	and  c                                           ; $42ae: $a1
	ld   a, h                                        ; $42af: $7c
	ld   [bc], a                                     ; $42b0: $02
	jp   Jump_045_7279                               ; $42b1: $c3 $79 $72


	ld   d, d                                        ; $42b4: $52
	ld   [hl], h                                     ; $42b5: $74
	dec  c                                           ; $42b6: $0d
	ld   e, b                                        ; $42b7: $58
	ld   [bc], a                                     ; $42b8: $02
	jp   nz, $655b                                   ; $42b9: $c2 $5b $65

	ld   l, l                                        ; $42bc: $6d
	ld   d, d                                        ; $42bd: $52
	and  c                                           ; $42be: $a1
	ld   [hl], l                                     ; $42bf: $75
	ld   h, a                                        ; $42c0: $67
	ld   e, a                                        ; $42c1: $5f
	ld   [hl], a                                     ; $42c2: $77
	rst  $38                                         ; $42c3: $ff
	rst  $38                                         ; $42c4: $ff
	sbc  a                                           ; $42c5: $9f
	dec  c                                           ; $42c6: $0d
	nop                                              ; $42c7: $00
	ld   a, [bc]                                     ; $42c8: $0a
	inc  e                                           ; $42c9: $1c
	dec  c                                           ; $42ca: $0d
	nop                                              ; $42cb: $00
	nop                                              ; $42cc: $00
	ld   bc, $cf02                                   ; $42cd: $01 $02 $cf
	dec  b                                           ; $42d0: $05
	ld   a, [de]                                     ; $42d1: $1a
	ld   a, b                                        ; $42d2: $78
	sub  a                                           ; $42d3: $97
	sbc  [hl]                                        ; $42d4: $9e
	dec  c                                           ; $42d5: $0d
	inc  bc                                          ; $42d6: $03
	adc  $02                                         ; $42d7: $ce $02
	inc  [hl]                                        ; $42d9: $34
	ld   [bc], a                                     ; $42da: $02
	ld   [hl], l                                     ; $42db: $75
	inc  b                                           ; $42dc: $04
	dec  a                                           ; $42dd: $3d
	ld   [bc], a                                     ; $42de: $02
	ld   e, c                                        ; $42df: $59
	sub  d                                           ; $42e0: $92
	inc  bc                                          ; $42e1: $03
	ld   d, l                                        ; $42e2: $55
	ld   [bc], a                                     ; $42e3: $02
	ld   e, c                                        ; $42e4: $59
	ld   a, c                                        ; $42e5: $79
	dec  c                                           ; $42e6: $0d
	sub  [hl]                                        ; $42e7: $96
	ld   e, l                                        ; $42e8: $5d
	ld   d, d                                        ; $42e9: $52
	sbc  c                                           ; $42ea: $99
	sbc  l                                           ; $42eb: $9d
	sub  [hl]                                        ; $42ec: $96
	sbc  a                                           ; $42ed: $9f
	dec  c                                           ; $42ee: $0d
	nop                                              ; $42ef: $00
	ld   a, [bc]                                     ; $42f0: $0a
	ld   a, [hl+]                                    ; $42f1: $2a
	dec  b                                           ; $42f2: $05
	inc  e                                           ; $42f3: $1c
	dec  c                                           ; $42f4: $0d
	ld   bc, $0101                                   ; $42f5: $01 $01 $01
	ld   l, e                                        ; $42f8: $6b
	sbc  d                                           ; $42f9: $9a
	ld   h, [hl]                                     ; $42fa: $66
	sub  c                                           ; $42fb: $91
	sbc  [hl]                                        ; $42fc: $9e
	ld   d, b                                        ; $42fd: $50
	ld   l, l                                        ; $42fe: $6d
	ld   h, l                                        ; $42ff: $65
	ld   a, l                                        ; $4300: $7d
	dec  c                                           ; $4301: $0d
	inc  bc                                          ; $4302: $03
	dec  c                                           ; $4303: $0d
	ld   [bc], a                                     ; $4304: $02
	jp   Jump_045_505a                               ; $4305: $c3 $5a $50


	sbc  c                                           ; $4308: $99
	ld   e, c                                        ; $4309: $59
	sub  a                                           ; $430a: $97
	sbc  [hl]                                        ; $430b: $9e
	dec  c                                           ; $430c: $0d
	ld   h, c                                        ; $430d: $61
	sbc  d                                           ; $430e: $9a
	ld   [hl], l                                     ; $430f: $75
	inc  bc                                          ; $4310: $03
	add  e                                           ; $4311: $83
	dec  b                                           ; $4312: $05
	dec  c                                           ; $4313: $0d
	ld   h, a                                        ; $4314: $67
	sbc  c                                           ; $4315: $99
	sbc  l                                           ; $4316: $9d
	ld   a, e                                        ; $4317: $7b
	sbc  a                                           ; $4318: $9f
	dec  c                                           ; $4319: $0d
	nop                                              ; $431a: $00
	ld   a, [bc]                                     ; $431b: $0a
	dec  c                                           ; $431c: $0d
	nop                                              ; $431d: $00
	nop                                              ; $431e: $00
	rrca                                             ; $431f: $0f
	nop                                              ; $4320: $00
	ld   bc, $1e09                                   ; $4321: $01 $09 $1e
	nop                                              ; $4324: $00
	rrca                                             ; $4325: $0f
	nop                                              ; $4326: $00
	ld   bc, $5001                                   ; $4327: $01 $01 $50
	ld   a, h                                        ; $432a: $7c
	rst  $38                                         ; $432b: $ff
	and  e                                           ; $432c: $a3
	and  l                                           ; $432d: $a5
	db   $ec                                         ; $432e: $ec
	cp   d                                           ; $432f: $ba
	ld   a, h                                        ; $4330: $7c
	ld   [bc], a                                     ; $4331: $02
	jp   Jump_045_7279                               ; $4332: $c3 $79 $72


	ld   d, d                                        ; $4335: $52
	ld   [hl], h                                     ; $4336: $74
	dec  c                                           ; $4337: $0d
	ld   e, b                                        ; $4338: $58
	ld   [bc], a                                     ; $4339: $02
	jp   nz, $655b                                   ; $433a: $c2 $5b $65

	ld   l, l                                        ; $433d: $6d
	ld   d, d                                        ; $433e: $52
	and  c                                           ; $433f: $a1
	ld   [hl], l                                     ; $4340: $75
	ld   h, a                                        ; $4341: $67
	ld   e, a                                        ; $4342: $5f
	ld   [hl], a                                     ; $4343: $77
	rst  $38                                         ; $4344: $ff
	rst  $38                                         ; $4345: $ff
	sbc  a                                           ; $4346: $9f
	dec  c                                           ; $4347: $0d
	nop                                              ; $4348: $00
	ld   a, [bc]                                     ; $4349: $0a
	inc  e                                           ; $434a: $1c
	dec  c                                           ; $434b: $0d
	nop                                              ; $434c: $00
	nop                                              ; $434d: $00
	ld   bc, $a5a3                                   ; $434e: $01 $a3 $a5
	db   $ec                                         ; $4351: $ec
	cp   d                                           ; $4352: $ba
	ld   a, b                                        ; $4353: $78
	sub  a                                           ; $4354: $97
	sbc  [hl]                                        ; $4355: $9e
	rst  ToBoot                                         ; $4356: $c7
	db   $eb                                         ; $4357: $eb
	cp   d                                           ; $4358: $ba
	sub  d                                           ; $4359: $92
	dec  b                                           ; $435a: $05
	inc  de                                          ; $435b: $13
	ld   [bc], a                                     ; $435c: $02
	ld   hl, $0d9e                                   ; $435d: $21 $9e $0d
	ld   d, b                                        ; $4360: $50
	halt                                             ; $4361: $76
	sbc  [hl]                                        ; $4362: $9e
	inc  b                                           ; $4363: $04
	dec  bc                                          ; $4364: $0b
	inc  b                                           ; $4365: $04
	rra                                              ; $4366: $1f
	ld   a, b                                        ; $4367: $78
	and  c                                           ; $4368: $a1
	ld   e, c                                        ; $4369: $59
	ld   a, c                                        ; $436a: $79
	sub  b                                           ; $436b: $90
	dec  c                                           ; $436c: $0d
	sub  [hl]                                        ; $436d: $96
	ld   e, l                                        ; $436e: $5d
	ld   d, d                                        ; $436f: $52
	sbc  c                                           ; $4370: $99
	sbc  l                                           ; $4371: $9d
	sub  [hl]                                        ; $4372: $96
	sbc  a                                           ; $4373: $9f
	dec  c                                           ; $4374: $0d
	nop                                              ; $4375: $00
	ld   a, [bc]                                     ; $4376: $0a
	ld   a, [hl+]                                    ; $4377: $2a
	inc  b                                           ; $4378: $04
	inc  e                                           ; $4379: $1c
	dec  c                                           ; $437a: $0d
	ld   bc, $0101                                   ; $437b: $01 $01 $01
	ld   l, e                                        ; $437e: $6b
	sbc  d                                           ; $437f: $9a
	ld   h, [hl]                                     ; $4380: $66
	sub  c                                           ; $4381: $91
	sbc  [hl]                                        ; $4382: $9e
	ld   d, b                                        ; $4383: $50
	ld   l, l                                        ; $4384: $6d
	ld   h, l                                        ; $4385: $65
	ld   a, l                                        ; $4386: $7d
	dec  c                                           ; $4387: $0d
	inc  bc                                          ; $4388: $03
	dec  c                                           ; $4389: $0d
	ld   [bc], a                                     ; $438a: $02
	jp   Jump_045_505a                               ; $438b: $c3 $5a $50


	sbc  c                                           ; $438e: $99
	ld   e, c                                        ; $438f: $59
	sub  a                                           ; $4390: $97
	sbc  [hl]                                        ; $4391: $9e
	dec  c                                           ; $4392: $0d
	ld   h, c                                        ; $4393: $61
	sbc  d                                           ; $4394: $9a
	ld   [hl], l                                     ; $4395: $75
	inc  bc                                          ; $4396: $03
	add  e                                           ; $4397: $83
	dec  b                                           ; $4398: $05
	dec  c                                           ; $4399: $0d
	ld   h, a                                        ; $439a: $67
	sbc  c                                           ; $439b: $99
	sbc  l                                           ; $439c: $9d
	ld   a, e                                        ; $439d: $7b
	sbc  a                                           ; $439e: $9f
	dec  c                                           ; $439f: $0d
	nop                                              ; $43a0: $00
	ld   a, [bc]                                     ; $43a1: $0a
	dec  c                                           ; $43a2: $0d
	nop                                              ; $43a3: $00
	nop                                              ; $43a4: $00
	rrca                                             ; $43a5: $0f
	nop                                              ; $43a6: $00
	ld   bc, $1e09                                   ; $43a7: $01 $09 $1e
	nop                                              ; $43aa: $00
	nop                                              ; $43ab: $00
	ld   [bc], a                                     ; $43ac: $02
	rlca                                             ; $43ad: $07
	ld   sp, $0300                                   ; $43ae: $31 $00 $03
	ld   [de], a                                     ; $43b1: $12
	ld   bc, $2265                                   ; $43b2: $01 $65 $22
	nop                                              ; $43b5: $00
	rlca                                             ; $43b6: $07
	ld   l, c                                        ; $43b7: $69
	nop                                              ; $43b8: $00
	inc  bc                                          ; $43b9: $03
	ld   [de], a                                     ; $43ba: $12
	ld   bc, $2565                                   ; $43bb: $01 $65 $25
	inc  bc                                          ; $43be: $03
	ld   [de], a                                     ; $43bf: $12
	ld   bc, $226e                                   ; $43c0: $01 $6e $22
	inc  e                                           ; $43c3: $1c
	nop                                              ; $43c4: $00
	rlca                                             ; $43c5: $07
	and  d                                           ; $43c6: $a2
	nop                                              ; $43c7: $00
	inc  bc                                          ; $43c8: $03
	ld   [de], a                                     ; $43c9: $12
	ld   bc, $256e                                   ; $43ca: $01 $6e $25
	inc  bc                                          ; $43cd: $03
	ld   [de], a                                     ; $43ce: $12
	ld   bc, $2278                                   ; $43cf: $01 $78 $22
	inc  e                                           ; $43d2: $1c
	nop                                              ; $43d3: $00
	rlca                                             ; $43d4: $07
	dec  c                                           ; $43d5: $0d
	ld   bc, $1203                                   ; $43d6: $01 $03 $12
	ld   bc, $2578                                   ; $43d9: $01 $78 $25
	nop                                              ; $43dc: $00
	rrca                                             ; $43dd: $0f
	nop                                              ; $43de: $00
	ld   bc, $6701                                   ; $43df: $01 $01 $67
	adc  l                                           ; $43e2: $8d
	sbc  d                                           ; $43e3: $9a
	ld   h, e                                        ; $43e4: $63
	and  c                                           ; $43e5: $a1
	sbc  a                                           ; $43e6: $9f
	dec  c                                           ; $43e7: $0d
	nop                                              ; $43e8: $00
	ld   a, [bc]                                     ; $43e9: $0a
	inc  e                                           ; $43ea: $1c
	ld   [bc], a                                     ; $43eb: $02
	nop                                              ; $43ec: $00
	nop                                              ; $43ed: $00
	ld   bc, $8c52                                   ; $43ee: $01 $52 $8c
	sbc  [hl]                                        ; $43f1: $9e
	inc  bc                                          ; $43f2: $03
	ld   l, e                                        ; $43f3: $6b
	ld   e, d                                        ; $43f4: $5a
	inc  b                                           ; $43f5: $04
	sbc  c                                           ; $43f6: $99
	ld   l, c                                        ; $43f7: $69
	adc  h                                           ; $43f8: $8c
	ld   l, c                                        ; $43f9: $69
	and  c                                           ; $43fa: $a1
	ld   a, h                                        ; $43fb: $7c
	sbc  a                                           ; $43fc: $9f
	dec  c                                           ; $43fd: $0d
	ld   d, b                                        ; $43fe: $50
	halt                                             ; $43ff: $76
	ld   a, c                                        ; $4400: $79
	ld   h, l                                        ; $4401: $65
	ld   [hl], h                                     ; $4402: $74
	ld   e, l                                        ; $4403: $5d
	ld   l, [hl]                                     ; $4404: $6e
	ld   h, e                                        ; $4405: $63
	ld   d, d                                        ; $4406: $52
	ld   a, b                                        ; $4407: $78
	sbc  a                                           ; $4408: $9f
	dec  c                                           ; $4409: $0d
	nop                                              ; $440a: $00
	ld   a, [bc]                                     ; $440b: $0a
	dec  c                                           ; $440c: $0d
	nop                                              ; $440d: $00
	nop                                              ; $440e: $00
	rrca                                             ; $440f: $0f
	nop                                              ; $4410: $00
	ld   bc, $1e09                                   ; $4411: $01 $09 $1e
	nop                                              ; $4414: $00
	dec  c                                           ; $4415: $0d
	ld   [bc], a                                     ; $4416: $02
	nop                                              ; $4417: $00
	rrca                                             ; $4418: $0f
	nop                                              ; $4419: $00
	ld   bc, $6701                                   ; $441a: $01 $01 $67
	adc  l                                           ; $441d: $8d
	sbc  d                                           ; $441e: $9a
	ld   h, e                                        ; $441f: $63
	and  c                                           ; $4420: $a1
	sbc  a                                           ; $4421: $9f
	dec  c                                           ; $4422: $0d
	ld   e, b                                        ; $4423: $58
	ld   a, l                                        ; $4424: $7d
	sub  [hl]                                        ; $4425: $96
	ld   d, h                                        ; $4426: $54
	ld   h, d                                        ; $4427: $62
	ld   h, h                                        ; $4428: $64
	ld   d, d                                        ; $4429: $52
	adc  h                                           ; $442a: $8c
	ld   h, a                                        ; $442b: $67
	sbc  a                                           ; $442c: $9f
	dec  c                                           ; $442d: $0d
	nop                                              ; $442e: $00
	ld   a, [bc]                                     ; $442f: $0a
	rrca                                             ; $4430: $0f
	ld   [bc], a                                     ; $4431: $02
	nop                                              ; $4432: $00
	ld   bc, $7d58                                   ; $4433: $01 $58 $7d
	sub  [hl]                                        ; $4436: $96
	ld   d, h                                        ; $4437: $54
	sbc  a                                           ; $4438: $9f
	dec  c                                           ; $4439: $0d
	ld   [hl], l                                     ; $443a: $75
	ld   a, l                                        ; $443b: $7d
	inc  bc                                          ; $443c: $03
	add  e                                           ; $443d: $83
	dec  b                                           ; $443e: $05
	dec  c                                           ; $443f: $0d
	rst  $38                                         ; $4440: $ff
	rst  $38                                         ; $4441: $ff
	dec  c                                           ; $4442: $0d
	nop                                              ; $4443: $00
	ld   a, [bc]                                     ; $4444: $0a
	dec  c                                           ; $4445: $0d
	nop                                              ; $4446: $00
	nop                                              ; $4447: $00
	rrca                                             ; $4448: $0f
	nop                                              ; $4449: $00
	ld   bc, $1e09                                   ; $444a: $01 $09 $1e
	nop                                              ; $444d: $00
	dec  c                                           ; $444e: $0d
	ld   [bc], a                                     ; $444f: $02
	nop                                              ; $4450: $00
	rrca                                             ; $4451: $0f
	nop                                              ; $4452: $00
	ld   bc, $6701                                   ; $4453: $01 $01 $67
	adc  l                                           ; $4456: $8d
	sbc  d                                           ; $4457: $9a
	ld   h, e                                        ; $4458: $63
	and  c                                           ; $4459: $a1
	sbc  a                                           ; $445a: $9f
	dec  c                                           ; $445b: $0d
	ld   e, b                                        ; $445c: $58
	ld   a, l                                        ; $445d: $7d
	sub  [hl]                                        ; $445e: $96
	ld   d, h                                        ; $445f: $54
	ld   h, d                                        ; $4460: $62
	ld   h, h                                        ; $4461: $64
	ld   d, d                                        ; $4462: $52
	adc  h                                           ; $4463: $8c
	ld   h, a                                        ; $4464: $67
	sbc  a                                           ; $4465: $9f
	dec  c                                           ; $4466: $0d
	nop                                              ; $4467: $00
	ld   a, [bc]                                     ; $4468: $0a
	inc  e                                           ; $4469: $1c
	ld   [bc], a                                     ; $446a: $02
	ld   bc, $0101                                   ; $446b: $01 $01 $01
	ld   e, b                                        ; $446e: $58
	ld   a, l                                        ; $446f: $7d
	sub  [hl]                                        ; $4470: $96
	ld   d, h                                        ; $4471: $54
	sbc  a                                           ; $4472: $9f
	dec  c                                           ; $4473: $0d
	ld   [$6308], sp                                 ; $4474: $08 $08 $63
	and  c                                           ; $4477: $a1
	sbc  a                                           ; $4478: $9f
	dec  c                                           ; $4479: $0d
	nop                                              ; $447a: $00
	ld   a, [bc]                                     ; $447b: $0a
	rrca                                             ; $447c: $0f
	nop                                              ; $447d: $00
	ld   bc, $6701                                   ; $447e: $01 $01 $67
	adc  l                                           ; $4481: $8d
	sbc  d                                           ; $4482: $9a
	ld   h, e                                        ; $4483: $63
	and  c                                           ; $4484: $a1
	sbc  a                                           ; $4485: $9f
	inc  b                                           ; $4486: $04
	ld   l, l                                        ; $4487: $6d
	ld   a, h                                        ; $4488: $7c
	inc  b                                           ; $4489: $04
	rst  ToBoot                                         ; $448a: $c7
	inc  bc                                          ; $448b: $03
	ld   c, a                                        ; $448c: $4f
	ld   a, l                                        ; $448d: $7d
	dec  c                                           ; $448e: $0d
	ld   [$7500], sp                                 ; $448f: $08 $00 $75
	ld   h, a                                        ; $4492: $67
	sbc  a                                           ; $4493: $9f
	dec  c                                           ; $4494: $0d
	nop                                              ; $4495: $00
	ld   a, [bc]                                     ; $4496: $0a
	rrca                                             ; $4497: $0f
	ld   [bc], a                                     ; $4498: $02
	ld   bc, $6b01                                   ; $4499: $01 $01 $6b
	ld   d, h                                        ; $449c: $54
	ld   [hl], l                                     ; $449d: $75
	ld   h, l                                        ; $449e: $65
	ld   l, l                                        ; $449f: $6d
	ld   e, c                                        ; $44a0: $59
	ld   h, l                                        ; $44a1: $65
	sub  a                                           ; $44a2: $97
	sbc  a                                           ; $44a3: $9f
	dec  c                                           ; $44a4: $0d
	ld   [hl], l                                     ; $44a5: $75
	ld   a, l                                        ; $44a6: $7d
	inc  bc                                          ; $44a7: $03
	add  e                                           ; $44a8: $83
	dec  b                                           ; $44a9: $05
	dec  c                                           ; $44aa: $0d
	rst  $38                                         ; $44ab: $ff
	rst  $38                                         ; $44ac: $ff
	dec  c                                           ; $44ad: $0d
	nop                                              ; $44ae: $00
	ld   a, [bc]                                     ; $44af: $0a
	dec  c                                           ; $44b0: $0d
	nop                                              ; $44b1: $00
	nop                                              ; $44b2: $00
	rrca                                             ; $44b3: $0f
	nop                                              ; $44b4: $00
	ld   bc, $1e09                                   ; $44b5: $01 $09 $1e
	nop                                              ; $44b8: $00
	inc  e                                           ; $44b9: $1c
	ld   [bc], a                                     ; $44ba: $02
	ld   bc, $0101                                   ; $44bb: $01 $01 $01
	ld   d, b                                        ; $44be: $50
	sub  a                                           ; $44bf: $97
	sbc  [hl]                                        ; $44c0: $9e
	ld   [$6308], sp                                 ; $44c1: $08 $08 $63
	and  c                                           ; $44c4: $a1
	sbc  a                                           ; $44c5: $9f
	dec  c                                           ; $44c6: $0d
	ld   e, b                                        ; $44c7: $58
	ld   a, l                                        ; $44c8: $7d
	sub  [hl]                                        ; $44c9: $96
	ld   d, h                                        ; $44ca: $54
	sbc  a                                           ; $44cb: $9f
	dec  c                                           ; $44cc: $0d
	nop                                              ; $44cd: $00
	ld   a, [bc]                                     ; $44ce: $0a
	rrca                                             ; $44cf: $0f
	nop                                              ; $44d0: $00
	ld   bc, $5801                                   ; $44d1: $01 $01 $58
	ld   a, l                                        ; $44d4: $7d
	sub  [hl]                                        ; $44d5: $96
	ld   d, h                                        ; $44d6: $54
	ld   h, d                                        ; $44d7: $62
	ld   h, h                                        ; $44d8: $64
	ld   d, d                                        ; $44d9: $52
	adc  h                                           ; $44da: $8c
	ld   h, a                                        ; $44db: $67
	sbc  a                                           ; $44dc: $9f
	dec  c                                           ; $44dd: $0d
	ld   h, a                                        ; $44de: $67
	adc  l                                           ; $44df: $8d
	sbc  d                                           ; $44e0: $9a
	ld   h, e                                        ; $44e1: $63
	and  c                                           ; $44e2: $a1
	sbc  a                                           ; $44e3: $9f
	dec  c                                           ; $44e4: $0d
	ld   bc, $0403                                   ; $44e5: $01 $03 $04
	rst  ToBoot                                         ; $44e8: $c7
	inc  bc                                          ; $44e9: $03
	ld   c, a                                        ; $44ea: $4f
	rst  $38                                         ; $44eb: $ff
	rst  $38                                         ; $44ec: $ff
	ld   l, a                                        ; $44ed: $6f
	ld   e, d                                        ; $44ee: $5a
	ld   d, h                                        ; $44ef: $54
	ld   a, h                                        ; $44f0: $7c
	ld   a, c                                        ; $44f1: $79
	rst  $38                                         ; $44f2: $ff
	rst  $38                                         ; $44f3: $ff
	ld   bc, $0d04                                   ; $44f4: $01 $04 $0d
	nop                                              ; $44f7: $00
	ld   a, [bc]                                     ; $44f8: $0a
	rrca                                             ; $44f9: $0f
	ld   [bc], a                                     ; $44fa: $02
	ld   bc, $0201                                   ; $44fb: $01 $01 $02
	and  l                                           ; $44fe: $a5
	inc  b                                           ; $44ff: $04
	xor  d                                           ; $4500: $aa
	sub  b                                           ; $4501: $90
	ld   [bc], a                                     ; $4502: $02
	jr   nz, jr_045_4509                             ; $4503: $20 $04

	xor  d                                           ; $4505: $aa
	sbc  [hl]                                        ; $4506: $9e
	dec  c                                           ; $4507: $0d
	ld   e, d                                        ; $4508: $5a

jr_045_4509:
	and  c                                           ; $4509: $a1
	ld   a, [hl]                                     ; $450a: $7e
	sbc  b                                           ; $450b: $98
	ld   a, b                                        ; $450c: $78
	ld   h, e                                        ; $450d: $63
	ld   d, d                                        ; $450e: $52
	sbc  a                                           ; $450f: $9f
	dec  c                                           ; $4510: $0d
	ld   [hl], l                                     ; $4511: $75
	ld   a, l                                        ; $4512: $7d
	inc  bc                                          ; $4513: $03
	add  e                                           ; $4514: $83
	dec  b                                           ; $4515: $05
	dec  c                                           ; $4516: $0d
	rst  $38                                         ; $4517: $ff
	rst  $38                                         ; $4518: $ff
	dec  c                                           ; $4519: $0d
	nop                                              ; $451a: $00
	ld   a, [bc]                                     ; $451b: $0a
	dec  c                                           ; $451c: $0d
	nop                                              ; $451d: $00
	nop                                              ; $451e: $00
	rrca                                             ; $451f: $0f
	nop                                              ; $4520: $00
	ld   bc, $1e09                                   ; $4521: $01 $09 $1e
	nop                                              ; $4524: $00
	nop                                              ; $4525: $00
	ld   [bc], a                                     ; $4526: $02
	rlca                                             ; $4527: $07
	ld   sp, $0300                                   ; $4528: $31 $00 $03
	ld   de, $6501                                   ; $452b: $11 $01 $65
	ld   [hl+], a                                    ; $452e: $22
	nop                                              ; $452f: $00
	rlca                                             ; $4530: $07
	ld   h, d                                        ; $4531: $62
	nop                                              ; $4532: $00
	inc  bc                                          ; $4533: $03
	ld   de, $6501                                   ; $4534: $11 $01 $65
	dec  h                                           ; $4537: $25
	inc  bc                                          ; $4538: $03
	ld   de, $6e01                                   ; $4539: $11 $01 $6e
	ld   [hl+], a                                    ; $453c: $22
	inc  e                                           ; $453d: $1c
	nop                                              ; $453e: $00
	rlca                                             ; $453f: $07
	sbc  l                                           ; $4540: $9d
	nop                                              ; $4541: $00
	inc  bc                                          ; $4542: $03
	ld   de, $6e01                                   ; $4543: $11 $01 $6e
	dec  h                                           ; $4546: $25
	inc  bc                                          ; $4547: $03
	ld   de, $7801                                   ; $4548: $11 $01 $78
	ld   [hl+], a                                    ; $454b: $22
	inc  e                                           ; $454c: $1c
	nop                                              ; $454d: $00
	rlca                                             ; $454e: $07
	rst  JumpTable                                         ; $454f: $df
	nop                                              ; $4550: $00
	inc  bc                                          ; $4551: $03
	ld   de, $7801                                   ; $4552: $11 $01 $78
	dec  h                                           ; $4555: $25
	nop                                              ; $4556: $00
	rrca                                             ; $4557: $0f
	nop                                              ; $4558: $00
	ld   bc, $6301                                   ; $4559: $01 $01 $63
	ld   e, l                                        ; $455c: $5d
	sub  a                                           ; $455d: $97
	ld   h, e                                        ; $455e: $63
	and  c                                           ; $455f: $a1
	sbc  a                                           ; $4560: $9f
	dec  c                                           ; $4561: $0d
	nop                                              ; $4562: $00
	ld   a, [bc]                                     ; $4563: $0a
	inc  e                                           ; $4564: $1c
	ld   bc, $0000                                   ; $4565: $01 $00 $00
	ld   bc, $8f62                                   ; $4568: $01 $62 $8f
	and  c                                           ; $456b: $a1
	ld   a, b                                        ; $456c: $78
	ld   h, e                                        ; $456d: $63
	ld   d, d                                        ; $456e: $52
	sbc  a                                           ; $456f: $9f
	dec  c                                           ; $4570: $0d
	ld   d, d                                        ; $4571: $52
	adc  h                                           ; $4572: $8c
	dec  b                                           ; $4573: $05
	jr   z, jr_045_45c8                              ; $4574: $28 $52

	ld   [hl], l                                     ; $4576: $75
	sbc  c                                           ; $4577: $99
	and  c                                           ; $4578: $a1
	ld   [hl], l                                     ; $4579: $75
	ld   h, a                                        ; $457a: $67
	sbc  a                                           ; $457b: $9f
	dec  c                                           ; $457c: $0d
	nop                                              ; $457d: $00
	ld   a, [bc]                                     ; $457e: $0a
	dec  c                                           ; $457f: $0d
	nop                                              ; $4580: $00
	nop                                              ; $4581: $00
	rrca                                             ; $4582: $0f
	nop                                              ; $4583: $00
	ld   bc, $1e09                                   ; $4584: $01 $09 $1e
	nop                                              ; $4587: $00
	rrca                                             ; $4588: $0f
	nop                                              ; $4589: $00
	ld   bc, $010d                                   ; $458a: $01 $0d $01
	nop                                              ; $458d: $00
	ld   bc, $5d63                                   ; $458e: $01 $63 $5d
	sub  a                                           ; $4591: $97
	ld   h, e                                        ; $4592: $63
	and  c                                           ; $4593: $a1
	sbc  a                                           ; $4594: $9f
	dec  c                                           ; $4595: $0d
	ld   e, b                                        ; $4596: $58
	ld   a, l                                        ; $4597: $7d
	sub  [hl]                                        ; $4598: $96
	ld   d, h                                        ; $4599: $54
	ld   h, d                                        ; $459a: $62
	ld   h, h                                        ; $459b: $64
	ld   d, d                                        ; $459c: $52
	adc  h                                           ; $459d: $8c
	ld   h, a                                        ; $459e: $67
	sbc  a                                           ; $459f: $9f
	dec  c                                           ; $45a0: $0d
	nop                                              ; $45a1: $00
	ld   a, [bc]                                     ; $45a2: $0a
	rrca                                             ; $45a3: $0f
	ld   bc, $0100                                   ; $45a4: $01 $00 $01
	ld   e, b                                        ; $45a7: $58
	ld   a, l                                        ; $45a8: $7d
	sub  [hl]                                        ; $45a9: $96
	ld   d, h                                        ; $45aa: $54
	ld   h, d                                        ; $45ab: $62
	ld   h, h                                        ; $45ac: $64
	ld   d, d                                        ; $45ad: $52
	adc  h                                           ; $45ae: $8c
	ld   h, a                                        ; $45af: $67
	sbc  a                                           ; $45b0: $9f
	dec  c                                           ; $45b1: $0d
	ld   l, e                                        ; $45b2: $6b
	sbc  d                                           ; $45b3: $9a
	ld   [hl], l                                     ; $45b4: $75
	ld   a, l                                        ; $45b5: $7d
	sbc  a                                           ; $45b6: $9f
	dec  c                                           ; $45b7: $0d
	nop                                              ; $45b8: $00
	ld   a, [bc]                                     ; $45b9: $0a
	dec  c                                           ; $45ba: $0d
	nop                                              ; $45bb: $00
	nop                                              ; $45bc: $00
	rrca                                             ; $45bd: $0f
	nop                                              ; $45be: $00
	ld   bc, $1e09                                   ; $45bf: $01 $09 $1e
	nop                                              ; $45c2: $00
	rrca                                             ; $45c3: $0f
	nop                                              ; $45c4: $00
	ld   bc, $010d                                   ; $45c5: $01 $0d $01

jr_045_45c8:
	nop                                              ; $45c8: $00
	ld   bc, $5d63                                   ; $45c9: $01 $63 $5d
	sub  a                                           ; $45cc: $97
	ld   h, e                                        ; $45cd: $63
	and  c                                           ; $45ce: $a1
	sbc  a                                           ; $45cf: $9f
	dec  c                                           ; $45d0: $0d
	ld   e, b                                        ; $45d1: $58
	ld   a, l                                        ; $45d2: $7d
	sub  [hl]                                        ; $45d3: $96
	ld   d, h                                        ; $45d4: $54
	ld   h, d                                        ; $45d5: $62
	ld   h, h                                        ; $45d6: $64
	ld   d, d                                        ; $45d7: $52
	adc  h                                           ; $45d8: $8c
	ld   h, a                                        ; $45d9: $67
	sbc  a                                           ; $45da: $9f
	dec  c                                           ; $45db: $0d
	nop                                              ; $45dc: $00
	ld   a, [bc]                                     ; $45dd: $0a
	inc  e                                           ; $45de: $1c
	ld   bc, $0101                                   ; $45df: $01 $01 $01
	ld   bc, $7d58                                   ; $45e2: $01 $58 $7d
	sub  [hl]                                        ; $45e5: $96
	ld   d, h                                        ; $45e6: $54
	ld   h, d                                        ; $45e7: $62
	ld   h, h                                        ; $45e8: $64
	ld   d, d                                        ; $45e9: $52
	adc  h                                           ; $45ea: $8c
	ld   h, a                                        ; $45eb: $67
	sbc  a                                           ; $45ec: $9f
	dec  c                                           ; $45ed: $0d
	ld   [$6300], sp                                 ; $45ee: $08 $00 $63
	and  c                                           ; $45f1: $a1
	sbc  a                                           ; $45f2: $9f
	dec  c                                           ; $45f3: $0d
	ld   l, e                                        ; $45f4: $6b
	sbc  d                                           ; $45f5: $9a
	ld   [hl], l                                     ; $45f6: $75
	ld   a, l                                        ; $45f7: $7d
	sbc  a                                           ; $45f8: $9f
	dec  c                                           ; $45f9: $0d
	nop                                              ; $45fa: $00
	ld   a, [bc]                                     ; $45fb: $0a
	dec  c                                           ; $45fc: $0d
	nop                                              ; $45fd: $00
	nop                                              ; $45fe: $00
	rrca                                             ; $45ff: $0f
	nop                                              ; $4600: $00
	ld   bc, $1e09                                   ; $4601: $01 $09 $1e
	nop                                              ; $4604: $00
	inc  e                                           ; $4605: $1c
	ld   bc, $0101                                   ; $4606: $01 $01 $01
	ld   bc, $0008                                   ; $4609: $01 $08 $00
	ld   h, e                                        ; $460c: $63
	and  c                                           ; $460d: $a1
	sbc  a                                           ; $460e: $9f
	dec  c                                           ; $460f: $0d
	ld   e, b                                        ; $4610: $58
	ld   a, l                                        ; $4611: $7d
	sub  [hl]                                        ; $4612: $96
	ld   d, h                                        ; $4613: $54
	ld   h, d                                        ; $4614: $62
	ld   h, h                                        ; $4615: $64
	ld   d, d                                        ; $4616: $52
	adc  h                                           ; $4617: $8c
	ld   h, a                                        ; $4618: $67
	sbc  a                                           ; $4619: $9f
	dec  c                                           ; $461a: $0d
	nop                                              ; $461b: $00
	ld   a, [bc]                                     ; $461c: $0a
	rrca                                             ; $461d: $0f
	nop                                              ; $461e: $00
	ld   bc, $5801                                   ; $461f: $01 $01 $58
	ld   a, l                                        ; $4622: $7d
	sub  [hl]                                        ; $4623: $96
	ld   d, h                                        ; $4624: $54
	ld   h, d                                        ; $4625: $62
	ld   h, h                                        ; $4626: $64
	ld   d, d                                        ; $4627: $52
	adc  h                                           ; $4628: $8c
	ld   h, a                                        ; $4629: $67
	sbc  a                                           ; $462a: $9f
	dec  c                                           ; $462b: $0d
	ld   h, e                                        ; $462c: $63
	ld   e, l                                        ; $462d: $5d
	sub  a                                           ; $462e: $97
	ld   h, e                                        ; $462f: $63
	and  c                                           ; $4630: $a1
	sbc  a                                           ; $4631: $9f
	dec  c                                           ; $4632: $0d
	nop                                              ; $4633: $00
	ld   a, [bc]                                     ; $4634: $0a
	rrca                                             ; $4635: $0f
	ld   bc, $0101                                   ; $4636: $01 $01 $01
	ld   [bc], a                                     ; $4639: $02
	and  l                                           ; $463a: $a5
	inc  b                                           ; $463b: $04
	xor  d                                           ; $463c: $aa
	sub  b                                           ; $463d: $90
	ld   [bc], a                                     ; $463e: $02
	jr   nz, jr_045_4645                             ; $463f: $20 $04

	xor  d                                           ; $4641: $aa
	sbc  [hl]                                        ; $4642: $9e
	dec  c                                           ; $4643: $0d
	ld   e, d                                        ; $4644: $5a

jr_045_4645:
	and  c                                           ; $4645: $a1
	ld   a, [hl]                                     ; $4646: $7e
	sbc  b                                           ; $4647: $98
	adc  h                                           ; $4648: $8c
	ld   h, l                                        ; $4649: $65
	sub  l                                           ; $464a: $95
	ld   d, h                                        ; $464b: $54
	ld   a, e                                        ; $464c: $7b
	sbc  a                                           ; $464d: $9f
	dec  c                                           ; $464e: $0d
	ld   l, e                                        ; $464f: $6b
	sbc  d                                           ; $4650: $9a
	ld   [hl], l                                     ; $4651: $75
	ld   a, l                                        ; $4652: $7d
	adc  h                                           ; $4653: $8c
	ld   l, l                                        ; $4654: $6d
	sbc  a                                           ; $4655: $9f
	dec  c                                           ; $4656: $0d
	nop                                              ; $4657: $00
	ld   a, [bc]                                     ; $4658: $0a
	dec  c                                           ; $4659: $0d
	nop                                              ; $465a: $00
	nop                                              ; $465b: $00
	rrca                                             ; $465c: $0f
	nop                                              ; $465d: $00
	ld   bc, $1e09                                   ; $465e: $01 $09 $1e
	nop                                              ; $4661: $00
	nop                                              ; $4662: $00
	ld   [bc], a                                     ; $4663: $02
	rlca                                             ; $4664: $07
	ld   sp, $0300                                   ; $4665: $31 $00 $03
	inc  de                                          ; $4668: $13
	ld   bc, $2265                                   ; $4669: $01 $65 $22
	nop                                              ; $466c: $00
	rlca                                             ; $466d: $07
	ld   h, c                                        ; $466e: $61
	nop                                              ; $466f: $00
	inc  bc                                          ; $4670: $03
	inc  de                                          ; $4671: $13
	ld   bc, $2566                                   ; $4672: $01 $66 $25
	inc  bc                                          ; $4675: $03
	inc  de                                          ; $4676: $13
	ld   bc, $226e                                   ; $4677: $01 $6e $22
	inc  e                                           ; $467a: $1c
	nop                                              ; $467b: $00
	rlca                                             ; $467c: $07
	sub  a                                           ; $467d: $97
	nop                                              ; $467e: $00
	inc  bc                                          ; $467f: $03
	inc  de                                          ; $4680: $13
	ld   bc, $256e                                   ; $4681: $01 $6e $25
	inc  bc                                          ; $4684: $03
	inc  de                                          ; $4685: $13
	ld   bc, $2278                                   ; $4686: $01 $78 $22
	inc  e                                           ; $4689: $1c
	nop                                              ; $468a: $00
	rlca                                             ; $468b: $07
	push de                                          ; $468c: $d5
	nop                                              ; $468d: $00
	inc  bc                                          ; $468e: $03
	inc  de                                          ; $468f: $13
	ld   bc, $2578                                   ; $4690: $01 $78 $25
	nop                                              ; $4693: $00
	rrca                                             ; $4694: $0f
	nop                                              ; $4695: $00
	ld   bc, $df01                                   ; $4696: $01 $01 $df
	db   $ec                                         ; $4699: $ec
	and  e                                           ; $469a: $a3
	ld   h, e                                        ; $469b: $63
	and  c                                           ; $469c: $a1
	sbc  a                                           ; $469d: $9f
	dec  c                                           ; $469e: $0d
	nop                                              ; $469f: $00
	ld   a, [bc]                                     ; $46a0: $0a
	inc  e                                           ; $46a1: $1c
	inc  bc                                          ; $46a2: $03
	nop                                              ; $46a3: $00
	nop                                              ; $46a4: $00
	ld   bc, $8c52                                   ; $46a5: $01 $52 $8c
	dec  b                                           ; $46a8: $05
	jr   z, @+$54                                    ; $46a9: $28 $52

	ld   [hl], l                                     ; $46ab: $75
	sbc  c                                           ; $46ac: $99
	ld   a, h                                        ; $46ad: $7c
	sbc  a                                           ; $46ae: $9f
	dec  c                                           ; $46af: $0d
	adc  h                                           ; $46b0: $8c
	ld   l, l                                        ; $46b1: $6d
	sbc  [hl]                                        ; $46b2: $9e
	ld   [bc], a                                     ; $46b3: $02
	xor  d                                           ; $46b4: $aa
	ld   [hl], l                                     ; $46b5: $75
	ld   a, e                                        ; $46b6: $7b
	sbc  a                                           ; $46b7: $9f
	dec  c                                           ; $46b8: $0d
	nop                                              ; $46b9: $00
	ld   a, [bc]                                     ; $46ba: $0a
	dec  c                                           ; $46bb: $0d
	nop                                              ; $46bc: $00
	nop                                              ; $46bd: $00
	rrca                                             ; $46be: $0f
	nop                                              ; $46bf: $00
	ld   bc, $1e09                                   ; $46c0: $01 $09 $1e
	nop                                              ; $46c3: $00
	dec  c                                           ; $46c4: $0d
	inc  bc                                          ; $46c5: $03
	nop                                              ; $46c6: $00
	rrca                                             ; $46c7: $0f
	nop                                              ; $46c8: $00
	ld   bc, $df01                                   ; $46c9: $01 $01 $df
	db   $ec                                         ; $46cc: $ec
	and  e                                           ; $46cd: $a3
	ld   h, e                                        ; $46ce: $63
	and  c                                           ; $46cf: $a1
	sbc  [hl]                                        ; $46d0: $9e
	dec  c                                           ; $46d1: $0d
	ld   e, b                                        ; $46d2: $58
	ld   a, l                                        ; $46d3: $7d
	sub  [hl]                                        ; $46d4: $96
	ld   d, h                                        ; $46d5: $54
	ld   h, d                                        ; $46d6: $62
	ld   h, h                                        ; $46d7: $64
	ld   d, d                                        ; $46d8: $52
	adc  h                                           ; $46d9: $8c
	ld   h, a                                        ; $46da: $67
	sbc  a                                           ; $46db: $9f
	dec  c                                           ; $46dc: $0d
	nop                                              ; $46dd: $00
	ld   a, [bc]                                     ; $46de: $0a
	rrca                                             ; $46df: $0f
	inc  bc                                          ; $46e0: $03
	nop                                              ; $46e1: $00
	ld   bc, $7d58                                   ; $46e2: $01 $58 $7d
	sub  [hl]                                        ; $46e5: $96
	ld   d, h                                        ; $46e6: $54
	sbc  a                                           ; $46e7: $9f
	dec  c                                           ; $46e8: $0d
	ld   h, [hl]                                     ; $46e9: $66
	sub  c                                           ; $46ea: $91
	ld   d, b                                        ; $46eb: $50
	ld   a, e                                        ; $46ec: $7b
	sbc  a                                           ; $46ed: $9f
	dec  c                                           ; $46ee: $0d
	nop                                              ; $46ef: $00
	ld   a, [bc]                                     ; $46f0: $0a
	dec  c                                           ; $46f1: $0d
	nop                                              ; $46f2: $00
	nop                                              ; $46f3: $00
	rrca                                             ; $46f4: $0f
	nop                                              ; $46f5: $00
	ld   bc, $1e09                                   ; $46f6: $01 $09 $1e
	nop                                              ; $46f9: $00
	rrca                                             ; $46fa: $0f
	nop                                              ; $46fb: $00
	ld   bc, $030d                                   ; $46fc: $01 $0d $03
	nop                                              ; $46ff: $00
	ld   bc, $ecdf                                   ; $4700: $01 $df $ec
	and  e                                           ; $4703: $a3
	ld   h, e                                        ; $4704: $63
	and  c                                           ; $4705: $a1
	sbc  [hl]                                        ; $4706: $9e
	dec  c                                           ; $4707: $0d
	ld   e, b                                        ; $4708: $58
	ld   a, l                                        ; $4709: $7d
	sub  [hl]                                        ; $470a: $96
	ld   d, h                                        ; $470b: $54
	ld   h, d                                        ; $470c: $62
	ld   h, h                                        ; $470d: $64
	ld   d, d                                        ; $470e: $52
	adc  h                                           ; $470f: $8c
	ld   h, a                                        ; $4710: $67
	sbc  a                                           ; $4711: $9f
	dec  c                                           ; $4712: $0d
	nop                                              ; $4713: $00
	ld   a, [bc]                                     ; $4714: $0a
	rrca                                             ; $4715: $0f
	inc  bc                                          ; $4716: $03
	nop                                              ; $4717: $00
	ld   bc, $7d58                                   ; $4718: $01 $58 $7d
	sub  [hl]                                        ; $471b: $96
	ld   d, h                                        ; $471c: $54
	sbc  a                                           ; $471d: $9f
	dec  c                                           ; $471e: $0d
	ld   [$5d00], sp                                 ; $471f: $08 $00 $5d
	and  c                                           ; $4722: $a1
	sbc  a                                           ; $4723: $9f
	dec  c                                           ; $4724: $0d
	ld   l, e                                        ; $4725: $6b
	sbc  d                                           ; $4726: $9a
	ld   h, [hl]                                     ; $4727: $66
	sub  c                                           ; $4728: $91
	ld   d, b                                        ; $4729: $50
	ld   a, e                                        ; $472a: $7b
	sbc  a                                           ; $472b: $9f
	dec  c                                           ; $472c: $0d
	nop                                              ; $472d: $00
	ld   a, [bc]                                     ; $472e: $0a
	dec  c                                           ; $472f: $0d
	nop                                              ; $4730: $00
	nop                                              ; $4731: $00
	rrca                                             ; $4732: $0f
	nop                                              ; $4733: $00
	ld   bc, $1e09                                   ; $4734: $01 $09 $1e
	nop                                              ; $4737: $00
	inc  e                                           ; $4738: $1c
	inc  bc                                          ; $4739: $03
	inc  bc                                          ; $473a: $03
	inc  bc                                          ; $473b: $03
	ld   bc, $0008                                   ; $473c: $01 $08 $00
	ld   e, l                                        ; $473f: $5d
	and  c                                           ; $4740: $a1
	sbc  a                                           ; $4741: $9f
	dec  c                                           ; $4742: $0d
	ld   e, b                                        ; $4743: $58
	ld   a, l                                        ; $4744: $7d
	sub  [hl]                                        ; $4745: $96
	ld   d, h                                        ; $4746: $54
	sbc  a                                           ; $4747: $9f
	dec  c                                           ; $4748: $0d
	nop                                              ; $4749: $00
	ld   a, [bc]                                     ; $474a: $0a
	rrca                                             ; $474b: $0f
	nop                                              ; $474c: $00
	ld   bc, $5801                                   ; $474d: $01 $01 $58
	ld   a, l                                        ; $4750: $7d
	sub  [hl]                                        ; $4751: $96
	ld   d, h                                        ; $4752: $54
	ld   h, d                                        ; $4753: $62
	ld   h, h                                        ; $4754: $64
	ld   d, d                                        ; $4755: $52
	adc  h                                           ; $4756: $8c
	ld   h, a                                        ; $4757: $67
	sbc  a                                           ; $4758: $9f
	dec  c                                           ; $4759: $0d
	rst  JumpTable                                         ; $475a: $df
	db   $ec                                         ; $475b: $ec
	and  e                                           ; $475c: $a3
	ld   h, e                                        ; $475d: $63
	and  c                                           ; $475e: $a1
	sbc  a                                           ; $475f: $9f
	dec  c                                           ; $4760: $0d
	nop                                              ; $4761: $00
	ld   a, [bc]                                     ; $4762: $0a
	rrca                                             ; $4763: $0f
	inc  bc                                          ; $4764: $03
	inc  bc                                          ; $4765: $03
	ld   bc, $a502                                   ; $4766: $01 $02 $a5
	inc  b                                           ; $4769: $04
	xor  d                                           ; $476a: $aa
	sub  b                                           ; $476b: $90
	ld   [bc], a                                     ; $476c: $02
	jr   nz, jr_045_4773                             ; $476d: $20 $04

	xor  d                                           ; $476f: $aa
	sbc  [hl]                                        ; $4770: $9e
	dec  c                                           ; $4771: $0d
	ld   e, d                                        ; $4772: $5a

jr_045_4773:
	and  c                                           ; $4773: $a1
	ld   a, [hl]                                     ; $4774: $7e
	sbc  b                                           ; $4775: $98
	adc  h                                           ; $4776: $8c
	ld   h, l                                        ; $4777: $65
	sub  l                                           ; $4778: $95
	ld   d, h                                        ; $4779: $54
	sbc  a                                           ; $477a: $9f
	dec  c                                           ; $477b: $0d
	ld   l, e                                        ; $477c: $6b
	sbc  d                                           ; $477d: $9a
	ld   h, [hl]                                     ; $477e: $66
	sub  c                                           ; $477f: $91
	ld   d, b                                        ; $4780: $50
	ld   a, e                                        ; $4781: $7b
	sbc  a                                           ; $4782: $9f
	dec  c                                           ; $4783: $0d
	nop                                              ; $4784: $00
	ld   a, [bc]                                     ; $4785: $0a
	dec  c                                           ; $4786: $0d
	nop                                              ; $4787: $00
	nop                                              ; $4788: $00
	rrca                                             ; $4789: $0f
	nop                                              ; $478a: $00
	ld   bc, $1e09                                   ; $478b: $01 $09 $1e
	nop                                              ; $478e: $00
	nop                                              ; $478f: $00
	ld   [bc], a                                     ; $4790: $02
	rlca                                             ; $4791: $07
	ld   sp, $0300                                   ; $4792: $31 $00 $03
	inc  d                                           ; $4795: $14
	ld   bc, $2364                                   ; $4796: $01 $64 $23
	nop                                              ; $4799: $00
	rlca                                             ; $479a: $07
	ld   l, d                                        ; $479b: $6a
	nop                                              ; $479c: $00
	inc  bc                                          ; $479d: $03
	inc  d                                           ; $479e: $14
	ld   bc, $2565                                   ; $479f: $01 $65 $25
	inc  bc                                          ; $47a2: $03
	inc  d                                           ; $47a3: $14
	ld   bc, $226e                                   ; $47a4: $01 $6e $22
	inc  e                                           ; $47a7: $1c
	nop                                              ; $47a8: $00
	rlca                                             ; $47a9: $07
	sbc  [hl]                                        ; $47aa: $9e
	nop                                              ; $47ab: $00
	inc  bc                                          ; $47ac: $03
	inc  d                                           ; $47ad: $14
	ld   bc, $256e                                   ; $47ae: $01 $6e $25
	inc  bc                                          ; $47b1: $03
	inc  d                                           ; $47b2: $14
	ld   bc, $2278                                   ; $47b3: $01 $78 $22
	inc  e                                           ; $47b6: $1c
	nop                                              ; $47b7: $00
	rlca                                             ; $47b8: $07
	call c, $0300                                    ; $47b9: $dc $00 $03
	inc  d                                           ; $47bc: $14
	ld   bc, $2578                                   ; $47bd: $01 $78 $25
	nop                                              ; $47c0: $00
	rrca                                             ; $47c1: $0f
	nop                                              ; $47c2: $00
	ld   bc, $5801                                   ; $47c3: $01 $01 $58
	ld   a, l                                        ; $47c6: $7d
	sub  [hl]                                        ; $47c7: $96
	ld   d, h                                        ; $47c8: $54
	sbc  [hl]                                        ; $47c9: $9e
	and  e                                           ; $47ca: $a3
	and  l                                           ; $47cb: $a5
	db   $ec                                         ; $47cc: $ec
	cp   d                                           ; $47cd: $ba
	sbc  a                                           ; $47ce: $9f
	dec  c                                           ; $47cf: $0d
	nop                                              ; $47d0: $00
	ld   a, [bc]                                     ; $47d1: $0a
	dec  b                                           ; $47d2: $05
	add  b                                           ; $47d3: $80
	sub  $01                                         ; $47d4: $d6 $01
	ld   bc, $1c00                                   ; $47d6: $01 $00 $1c
	inc  b                                           ; $47d9: $04
	nop                                              ; $47da: $00
	nop                                              ; $47db: $00
	ld   bc, $a5a3                                   ; $47dc: $01 $a3 $a5
	db   $ec                                         ; $47df: $ec
	cp   d                                           ; $47e0: $ba
	sbc  [hl]                                        ; $47e1: $9e
	ld   d, d                                        ; $47e2: $52
	ld   l, e                                        ; $47e3: $6b
	ld   e, d                                        ; $47e4: $5a
	ld   h, l                                        ; $47e5: $65
	ld   d, d                                        ; $47e6: $52
	ld   a, h                                        ; $47e7: $7c
	sbc  a                                           ; $47e8: $9f
	dec  c                                           ; $47e9: $0d
	adc  h                                           ; $47ea: $8c
	ld   l, l                                        ; $47eb: $6d
	ld   a, e                                        ; $47ec: $7b
	sbc  a                                           ; $47ed: $9f
	dec  c                                           ; $47ee: $0d
	nop                                              ; $47ef: $00
	ld   a, [bc]                                     ; $47f0: $0a
	dec  c                                           ; $47f1: $0d
	nop                                              ; $47f2: $00
	nop                                              ; $47f3: $00
	rrca                                             ; $47f4: $0f
	nop                                              ; $47f5: $00
	ld   bc, $1e09                                   ; $47f6: $01 $09 $1e
	nop                                              ; $47f9: $00
	rrca                                             ; $47fa: $0f
	nop                                              ; $47fb: $00
	ld   bc, $040d                                   ; $47fc: $01 $0d $04
	nop                                              ; $47ff: $00
	ld   bc, $7d58                                   ; $4800: $01 $58 $7d
	sub  [hl]                                        ; $4803: $96
	ld   d, h                                        ; $4804: $54
	sbc  [hl]                                        ; $4805: $9e
	and  e                                           ; $4806: $a3
	and  l                                           ; $4807: $a5
	db   $ec                                         ; $4808: $ec
	cp   d                                           ; $4809: $ba
	sbc  a                                           ; $480a: $9f
	dec  c                                           ; $480b: $0d
	nop                                              ; $480c: $00
	ld   a, [bc]                                     ; $480d: $0a
	dec  b                                           ; $480e: $05
	add  b                                           ; $480f: $80
	sub  $01                                         ; $4810: $d6 $01
	ld   bc, $0f00                                   ; $4812: $01 $00 $0f
	inc  b                                           ; $4815: $04
	nop                                              ; $4816: $00
	ld   bc, $7d58                                   ; $4817: $01 $58 $7d
	sub  [hl]                                        ; $481a: $96
	ld   d, h                                        ; $481b: $54
	sbc  a                                           ; $481c: $9f
	dec  c                                           ; $481d: $0d
	adc  h                                           ; $481e: $8c
	ld   l, l                                        ; $481f: $6d
	ld   a, e                                        ; $4820: $7b
	sbc  a                                           ; $4821: $9f
	dec  c                                           ; $4822: $0d
	nop                                              ; $4823: $00
	ld   a, [bc]                                     ; $4824: $0a
	dec  c                                           ; $4825: $0d
	nop                                              ; $4826: $00
	nop                                              ; $4827: $00
	rrca                                             ; $4828: $0f
	nop                                              ; $4829: $00
	ld   bc, $1e09                                   ; $482a: $01 $09 $1e
	nop                                              ; $482d: $00
	rrca                                             ; $482e: $0f
	nop                                              ; $482f: $00
	ld   bc, $040d                                   ; $4830: $01 $0d $04
	nop                                              ; $4833: $00
	ld   bc, $7d58                                   ; $4834: $01 $58 $7d
	sub  [hl]                                        ; $4837: $96
	ld   d, h                                        ; $4838: $54
	sbc  [hl]                                        ; $4839: $9e
	and  e                                           ; $483a: $a3
	and  l                                           ; $483b: $a5
	db   $ec                                         ; $483c: $ec
	cp   d                                           ; $483d: $ba
	sbc  a                                           ; $483e: $9f
	dec  c                                           ; $483f: $0d
	nop                                              ; $4840: $00
	ld   a, [bc]                                     ; $4841: $0a
	dec  b                                           ; $4842: $05
	add  b                                           ; $4843: $80
	sub  $01                                         ; $4844: $d6 $01
	ld   bc, $1c00                                   ; $4846: $01 $00 $1c
	inc  b                                           ; $4849: $04
	ld   bc, $0101                                   ; $484a: $01 $01 $01
	ld   e, b                                        ; $484d: $58
	ld   a, l                                        ; $484e: $7d
	sub  [hl]                                        ; $484f: $96
	ld   d, h                                        ; $4850: $54
	sbc  a                                           ; $4851: $9f
	dec  c                                           ; $4852: $0d
	ld   l, a                                        ; $4853: $6f
	ld   d, d                                        ; $4854: $52
	ld   [bc], a                                     ; $4855: $02
	inc  de                                          ; $4856: $13
	ld   l, a                                        ; $4857: $6f
	sub  c                                           ; $4858: $91
	and  c                                           ; $4859: $a1
	sbc  a                                           ; $485a: $9f
	dec  c                                           ; $485b: $0d
	adc  h                                           ; $485c: $8c
	ld   l, l                                        ; $485d: $6d
	ld   a, e                                        ; $485e: $7b
	sbc  a                                           ; $485f: $9f
	dec  c                                           ; $4860: $0d
	nop                                              ; $4861: $00
	ld   a, [bc]                                     ; $4862: $0a
	dec  c                                           ; $4863: $0d
	nop                                              ; $4864: $00
	nop                                              ; $4865: $00
	rrca                                             ; $4866: $0f
	nop                                              ; $4867: $00
	ld   bc, $1e09                                   ; $4868: $01 $09 $1e
	nop                                              ; $486b: $00
	inc  e                                           ; $486c: $1c
	inc  b                                           ; $486d: $04
	ld   bc, $0101                                   ; $486e: $01 $01 $01
	ld   l, a                                        ; $4871: $6f
	ld   d, d                                        ; $4872: $52
	ld   [bc], a                                     ; $4873: $02
	inc  de                                          ; $4874: $13
	ld   l, a                                        ; $4875: $6f
	sub  c                                           ; $4876: $91
	and  c                                           ; $4877: $a1
	sbc  [hl]                                        ; $4878: $9e
	ld   e, b                                        ; $4879: $58
	ld   a, l                                        ; $487a: $7d
	sub  [hl]                                        ; $487b: $96
	ld   d, h                                        ; $487c: $54
	sbc  a                                           ; $487d: $9f
	dec  c                                           ; $487e: $0d
	nop                                              ; $487f: $00
	ld   a, [bc]                                     ; $4880: $0a
	rrca                                             ; $4881: $0f
	nop                                              ; $4882: $00
	ld   bc, $5801                                   ; $4883: $01 $01 $58
	ld   a, l                                        ; $4886: $7d
	sub  [hl]                                        ; $4887: $96
	ld   d, h                                        ; $4888: $54
	sbc  [hl]                                        ; $4889: $9e
	and  e                                           ; $488a: $a3
	and  l                                           ; $488b: $a5
	db   $ec                                         ; $488c: $ec
	cp   d                                           ; $488d: $ba
	sbc  a                                           ; $488e: $9f
	dec  c                                           ; $488f: $0d
	nop                                              ; $4890: $00
	ld   a, [bc]                                     ; $4891: $0a
	dec  b                                           ; $4892: $05
	add  b                                           ; $4893: $80
	sub  $01                                         ; $4894: $d6 $01
	ld   bc, $0f00                                   ; $4896: $01 $00 $0f
	inc  b                                           ; $4899: $04
	ld   bc, $5b01                                   ; $489a: $01 $01 $5b
	sub  l                                           ; $489d: $95
	ld   d, h                                        ; $489e: $54
	sub  b                                           ; $489f: $90
	sbc  [hl]                                        ; $48a0: $9e
	ld   d, b                                        ; $48a1: $50
	ld   l, e                                        ; $48a2: $6b
	adc  d                                           ; $48a3: $8a
	ld   d, h                                        ; $48a4: $54
	ld   a, e                                        ; $48a5: $7b
	sbc  a                                           ; $48a6: $9f
	dec  c                                           ; $48a7: $0d
	ld   h, [hl]                                     ; $48a8: $66
	sub  c                                           ; $48a9: $91
	sbc  [hl]                                        ; $48aa: $9e
	adc  h                                           ; $48ab: $8c
	ld   l, l                                        ; $48ac: $6d
	ld   a, e                                        ; $48ad: $7b
	sbc  [hl]                                        ; $48ae: $9e
	ld   l, a                                        ; $48af: $6f
	ld   d, d                                        ; $48b0: $52
	ld   [bc], a                                     ; $48b1: $02
	inc  de                                          ; $48b2: $13
	ld   l, a                                        ; $48b3: $6f
	sub  c                                           ; $48b4: $91
	and  c                                           ; $48b5: $a1
	sbc  a                                           ; $48b6: $9f
	dec  c                                           ; $48b7: $0d
	nop                                              ; $48b8: $00
	ld   a, [bc]                                     ; $48b9: $0a
	dec  c                                           ; $48ba: $0d
	nop                                              ; $48bb: $00
	nop                                              ; $48bc: $00
	rrca                                             ; $48bd: $0f
	nop                                              ; $48be: $00
	ld   bc, $1e09                                   ; $48bf: $01 $09 $1e
	nop                                              ; $48c2: $00
	nop                                              ; $48c3: $00
	ld   [bc], a                                     ; $48c4: $02
	rlca                                             ; $48c5: $07
	ld   sp, $0300                                   ; $48c6: $31 $00 $03
	ld   d, $01                                      ; $48c9: $16 $01
	ld   h, h                                        ; $48cb: $64
	inc  hl                                          ; $48cc: $23
	nop                                              ; $48cd: $00
	rlca                                             ; $48ce: $07
	ld   l, c                                        ; $48cf: $69
	nop                                              ; $48d0: $00
	inc  bc                                          ; $48d1: $03
	ld   d, $01                                      ; $48d2: $16 $01
	ld   h, [hl]                                     ; $48d4: $66
	dec  h                                           ; $48d5: $25
	inc  bc                                          ; $48d6: $03
	ld   d, $01                                      ; $48d7: $16 $01
	ld   l, [hl]                                     ; $48d9: $6e
	ld   [hl+], a                                    ; $48da: $22
	inc  e                                           ; $48db: $1c
	nop                                              ; $48dc: $00
	rlca                                             ; $48dd: $07
	sbc  a                                           ; $48de: $9f
	nop                                              ; $48df: $00
	inc  bc                                          ; $48e0: $03
	ld   d, $01                                      ; $48e1: $16 $01
	ld   l, [hl]                                     ; $48e3: $6e
	dec  h                                           ; $48e4: $25
	inc  bc                                          ; $48e5: $03
	ld   d, $01                                      ; $48e6: $16 $01
	ld   a, b                                        ; $48e8: $78
	ld   [hl+], a                                    ; $48e9: $22
	inc  e                                           ; $48ea: $1c
	nop                                              ; $48eb: $00
	rlca                                             ; $48ec: $07
	reti                                             ; $48ed: $d9


	nop                                              ; $48ee: $00
	inc  bc                                          ; $48ef: $03
	ld   d, $01                                      ; $48f0: $16 $01
	ld   a, b                                        ; $48f2: $78
	dec  h                                           ; $48f3: $25
	nop                                              ; $48f4: $00
	rrca                                             ; $48f5: $0f
	nop                                              ; $48f6: $00
	ld   bc, $ac01                                   ; $48f7: $01 $01 $ac
	push af                                          ; $48fa: $f5
	bit  4, e                                        ; $48fb: $cb $63
	and  c                                           ; $48fd: $a1
	sbc  a                                           ; $48fe: $9f
	dec  c                                           ; $48ff: $0d
	nop                                              ; $4900: $00
	ld   a, [bc]                                     ; $4901: $0a
	inc  e                                           ; $4902: $1c
	ld   b, $00                                      ; $4903: $06 $00
	nop                                              ; $4905: $00
	ld   bc, $999d                                   ; $4906: $01 $9d $99
	ld   d, d                                        ; $4909: $52
	sbc  a                                           ; $490a: $9f
	ld   l, a                                        ; $490b: $6f
	sub  l                                           ; $490c: $95
	ld   d, d                                        ; $490d: $52
	halt                                             ; $490e: $76
	dec  b                                           ; $490f: $05
	jr   z, jr_045_496e                              ; $4910: $28 $5c

	ld   a, h                                        ; $4912: $7c
	dec  c                                           ; $4913: $0d
	inc  b                                           ; $4914: $04
	di                                               ; $4915: $f3
	ld   e, d                                        ; $4916: $5a
	ld   d, b                                        ; $4917: $50
	sbc  c                                           ; $4918: $99
	and  c                                           ; $4919: $a1
	ld   l, [hl]                                     ; $491a: $6e
	sbc  a                                           ; $491b: $9f
	dec  c                                           ; $491c: $0d
	adc  h                                           ; $491d: $8c
	ld   l, l                                        ; $491e: $6d
	ld   a, b                                        ; $491f: $78
	sbc  a                                           ; $4920: $9f
	dec  c                                           ; $4921: $0d
	nop                                              ; $4922: $00
	ld   a, [bc]                                     ; $4923: $0a
	dec  c                                           ; $4924: $0d
	nop                                              ; $4925: $00
	nop                                              ; $4926: $00
	rrca                                             ; $4927: $0f
	nop                                              ; $4928: $00
	ld   bc, $1e09                                   ; $4929: $01 $09 $1e
	nop                                              ; $492c: $00
	rrca                                             ; $492d: $0f
	nop                                              ; $492e: $00
	ld   bc, $060d                                   ; $492f: $01 $0d $06
	nop                                              ; $4932: $00
	ld   bc, $f5ac                                   ; $4933: $01 $ac $f5
	bit  4, e                                        ; $4936: $cb $63
	and  c                                           ; $4938: $a1
	sbc  a                                           ; $4939: $9f
	dec  c                                           ; $493a: $0d
	ld   e, b                                        ; $493b: $58
	ld   a, l                                        ; $493c: $7d
	sub  [hl]                                        ; $493d: $96
	ld   d, h                                        ; $493e: $54
	ld   h, d                                        ; $493f: $62
	ld   h, h                                        ; $4940: $64
	ld   d, d                                        ; $4941: $52
	adc  h                                           ; $4942: $8c
	ld   h, a                                        ; $4943: $67
	sbc  a                                           ; $4944: $9f
	dec  c                                           ; $4945: $0d
	nop                                              ; $4946: $00
	ld   a, [bc]                                     ; $4947: $0a
	rrca                                             ; $4948: $0f
	ld   b, $00                                      ; $4949: $06 $00
	ld   bc, $7d58                                   ; $494b: $01 $58 $7d
	sub  [hl]                                        ; $494e: $96
	ld   d, h                                        ; $494f: $54
	sbc  a                                           ; $4950: $9f
	dec  c                                           ; $4951: $0d
	ld   h, [hl]                                     ; $4952: $66
	sub  c                                           ; $4953: $91
	ld   d, b                                        ; $4954: $50
	ld   a, b                                        ; $4955: $78
	sbc  a                                           ; $4956: $9f
	dec  c                                           ; $4957: $0d
	nop                                              ; $4958: $00
	ld   a, [bc]                                     ; $4959: $0a
	dec  c                                           ; $495a: $0d
	nop                                              ; $495b: $00
	nop                                              ; $495c: $00
	rrca                                             ; $495d: $0f
	nop                                              ; $495e: $00
	ld   bc, $1e09                                   ; $495f: $01 $09 $1e
	nop                                              ; $4962: $00
	rrca                                             ; $4963: $0f
	nop                                              ; $4964: $00
	ld   bc, $060d                                   ; $4965: $01 $0d $06
	nop                                              ; $4968: $00
	ld   bc, $f5ac                                   ; $4969: $01 $ac $f5
	bit  4, e                                        ; $496c: $cb $63

jr_045_496e:
	and  c                                           ; $496e: $a1
	sbc  a                                           ; $496f: $9f
	dec  c                                           ; $4970: $0d
	ld   e, b                                        ; $4971: $58
	ld   a, l                                        ; $4972: $7d
	sub  [hl]                                        ; $4973: $96
	ld   d, h                                        ; $4974: $54
	ld   h, d                                        ; $4975: $62
	ld   h, h                                        ; $4976: $64
	ld   d, d                                        ; $4977: $52
	adc  h                                           ; $4978: $8c
	ld   h, a                                        ; $4979: $67
	sbc  a                                           ; $497a: $9f
	dec  c                                           ; $497b: $0d
	nop                                              ; $497c: $00
	ld   a, [bc]                                     ; $497d: $0a
	inc  e                                           ; $497e: $1c
	ld   b, $01                                      ; $497f: $06 $01
	ld   bc, $5801                                   ; $4981: $01 $01 $58
	ld   a, l                                        ; $4984: $7d
	sub  [hl]                                        ; $4985: $96
	ld   d, h                                        ; $4986: $54
	sbc  a                                           ; $4987: $9f
	ld   [$9f00], sp                                 ; $4988: $08 $00 $9f
	dec  c                                           ; $498b: $0d
	ld   h, [hl]                                     ; $498c: $66
	sub  c                                           ; $498d: $91
	ld   d, b                                        ; $498e: $50
	ld   a, b                                        ; $498f: $78
	sbc  a                                           ; $4990: $9f
	dec  c                                           ; $4991: $0d
	nop                                              ; $4992: $00
	ld   a, [bc]                                     ; $4993: $0a
	dec  c                                           ; $4994: $0d
	nop                                              ; $4995: $00
	nop                                              ; $4996: $00
	rrca                                             ; $4997: $0f
	nop                                              ; $4998: $00
	ld   bc, $1e09                                   ; $4999: $01 $09 $1e
	nop                                              ; $499c: $00
	inc  e                                           ; $499d: $1c
	ld   b, $01                                      ; $499e: $06 $01
	ld   bc, $0801                                   ; $49a0: $01 $01 $08
	nop                                              ; $49a3: $00
	sbc  a                                           ; $49a4: $9f
	ld   e, b                                        ; $49a5: $58
	ld   a, l                                        ; $49a6: $7d
	sub  [hl]                                        ; $49a7: $96
	ld   d, h                                        ; $49a8: $54
	sbc  a                                           ; $49a9: $9f
	dec  c                                           ; $49aa: $0d
	nop                                              ; $49ab: $00
	ld   a, [bc]                                     ; $49ac: $0a
	rrca                                             ; $49ad: $0f
	nop                                              ; $49ae: $00
	ld   bc, $5801                                   ; $49af: $01 $01 $58
	ld   a, l                                        ; $49b2: $7d
	sub  [hl]                                        ; $49b3: $96
	ld   d, h                                        ; $49b4: $54
	ld   h, d                                        ; $49b5: $62
	ld   h, h                                        ; $49b6: $64
	ld   d, d                                        ; $49b7: $52
	adc  h                                           ; $49b8: $8c
	ld   h, a                                        ; $49b9: $67
	sbc  a                                           ; $49ba: $9f
	dec  c                                           ; $49bb: $0d
	xor  h                                           ; $49bc: $ac
	push af                                          ; $49bd: $f5
	bit  4, e                                        ; $49be: $cb $63
	and  c                                           ; $49c0: $a1
	sbc  a                                           ; $49c1: $9f
	dec  c                                           ; $49c2: $0d
	nop                                              ; $49c3: $00
	ld   a, [bc]                                     ; $49c4: $0a
	rrca                                             ; $49c5: $0f
	ld   b, $01                                      ; $49c6: $06 $01
	ld   bc, $a502                                   ; $49c8: $01 $02 $a5
	inc  b                                           ; $49cb: $04
	xor  d                                           ; $49cc: $aa
	sub  b                                           ; $49cd: $90
	ld   [bc], a                                     ; $49ce: $02
	jr   nz, jr_045_49d5                             ; $49cf: $20 $04

	xor  d                                           ; $49d1: $aa
	sbc  [hl]                                        ; $49d2: $9e
	dec  c                                           ; $49d3: $0d
	ld   e, d                                        ; $49d4: $5a

jr_045_49d5:
	and  c                                           ; $49d5: $a1
	ld   a, [hl]                                     ; $49d6: $7e
	sbc  e                                           ; $49d7: $9b
	ld   d, h                                        ; $49d8: $54
	ld   l, d                                        ; $49d9: $6a
	sbc  a                                           ; $49da: $9f
	dec  c                                           ; $49db: $0d
	ld   h, [hl]                                     ; $49dc: $66
	sub  c                                           ; $49dd: $91
	ld   d, b                                        ; $49de: $50
	ld   a, b                                        ; $49df: $78
	sbc  a                                           ; $49e0: $9f
	dec  c                                           ; $49e1: $0d
	nop                                              ; $49e2: $00
	ld   a, [bc]                                     ; $49e3: $0a
	dec  c                                           ; $49e4: $0d
	nop                                              ; $49e5: $00
	nop                                              ; $49e6: $00
	rrca                                             ; $49e7: $0f
	nop                                              ; $49e8: $00
	ld   bc, $1e09                                   ; $49e9: $01 $09 $1e
	nop                                              ; $49ec: $00
	nop                                              ; $49ed: $00
	ld   [bc], a                                     ; $49ee: $02
	rlca                                             ; $49ef: $07
	ld   sp, $0300                                   ; $49f0: $31 $00 $03
	dec  d                                           ; $49f3: $15
	ld   bc, $2265                                   ; $49f4: $01 $65 $22
	nop                                              ; $49f7: $00
	rlca                                             ; $49f8: $07
	ld   l, c                                        ; $49f9: $69
	nop                                              ; $49fa: $00
	inc  bc                                          ; $49fb: $03
	dec  d                                           ; $49fc: $15
	ld   bc, $2565                                   ; $49fd: $01 $65 $25
	inc  bc                                          ; $4a00: $03
	dec  d                                           ; $4a01: $15
	ld   bc, $226e                                   ; $4a02: $01 $6e $22
	inc  e                                           ; $4a05: $1c
	nop                                              ; $4a06: $00
	rlca                                             ; $4a07: $07
	and  b                                           ; $4a08: $a0
	nop                                              ; $4a09: $00
	inc  bc                                          ; $4a0a: $03
	dec  d                                           ; $4a0b: $15
	ld   bc, $256e                                   ; $4a0c: $01 $6e $25
	inc  bc                                          ; $4a0f: $03
	dec  d                                           ; $4a10: $15
	ld   bc, $2278                                   ; $4a11: $01 $78 $22
	inc  e                                           ; $4a14: $1c
	nop                                              ; $4a15: $00
	rlca                                             ; $4a16: $07
	sbc  $00                                         ; $4a17: $de $00
	inc  bc                                          ; $4a19: $03
	dec  d                                           ; $4a1a: $15
	ld   bc, $2578                                   ; $4a1b: $01 $78 $25
	nop                                              ; $4a1e: $00
	rrca                                             ; $4a1f: $0f
	nop                                              ; $4a20: $00
	ld   bc, $0201                                   ; $4a21: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a24: $cf
	dec  b                                           ; $4a25: $05
	ld   a, [de]                                     ; $4a26: $1a
	ld   h, e                                        ; $4a27: $63
	and  c                                           ; $4a28: $a1
	sbc  a                                           ; $4a29: $9f
	dec  c                                           ; $4a2a: $0d
	nop                                              ; $4a2b: $00
	ld   a, [bc]                                     ; $4a2c: $0a
	inc  e                                           ; $4a2d: $1c
	dec  b                                           ; $4a2e: $05
	nop                                              ; $4a2f: $00
	nop                                              ; $4a30: $00
	ld   bc, $a502                                   ; $4a31: $01 $02 $a5
	ld   l, a                                        ; $4a34: $6f
	sub  l                                           ; $4a35: $95
	ld   [hl], c                                     ; $4a36: $71
	halt                                             ; $4a37: $76
	sbc  [hl]                                        ; $4a38: $9e
	inc  b                                           ; $4a39: $04
	ld   c, $04                                      ; $4a3a: $0e $04
	adc  h                                           ; $4a3c: $8c
	ld   a, b                                        ; $4a3d: $78
	and  c                                           ; $4a3e: $a1
	sub  d                                           ; $4a3f: $92
	sbc  a                                           ; $4a40: $9f
	dec  c                                           ; $4a41: $0d
	ld   h, a                                        ; $4a42: $67
	adc  h                                           ; $4a43: $8c
	and  c                                           ; $4a44: $a1
	ld   a, b                                        ; $4a45: $78
	db   $fc                                         ; $4a46: $fc
	sbc  a                                           ; $4a47: $9f
	adc  c                                           ; $4a48: $89
	ld   a, b                                        ; $4a49: $78
	sbc  a                                           ; $4a4a: $9f
	dec  c                                           ; $4a4b: $0d
	nop                                              ; $4a4c: $00
	ld   a, [bc]                                     ; $4a4d: $0a
	dec  c                                           ; $4a4e: $0d
	nop                                              ; $4a4f: $00
	nop                                              ; $4a50: $00
	rrca                                             ; $4a51: $0f
	nop                                              ; $4a52: $00
	ld   bc, $1e09                                   ; $4a53: $01 $09 $1e
	nop                                              ; $4a56: $00
	rrca                                             ; $4a57: $0f
	nop                                              ; $4a58: $00
	ld   bc, $050d                                   ; $4a59: $01 $0d $05
	nop                                              ; $4a5c: $00
	ld   bc, $cf02                                   ; $4a5d: $01 $02 $cf
	dec  b                                           ; $4a60: $05
	ld   a, [de]                                     ; $4a61: $1a
	ld   h, e                                        ; $4a62: $63
	and  c                                           ; $4a63: $a1
	sbc  a                                           ; $4a64: $9f
	dec  c                                           ; $4a65: $0d
	ld   e, b                                        ; $4a66: $58
	ld   a, l                                        ; $4a67: $7d
	sub  [hl]                                        ; $4a68: $96
	ld   d, h                                        ; $4a69: $54
	ld   h, d                                        ; $4a6a: $62
	ld   h, h                                        ; $4a6b: $64
	ld   d, d                                        ; $4a6c: $52
	adc  h                                           ; $4a6d: $8c
	ld   h, a                                        ; $4a6e: $67
	sbc  a                                           ; $4a6f: $9f
	dec  c                                           ; $4a70: $0d
	nop                                              ; $4a71: $00
	ld   a, [bc]                                     ; $4a72: $0a
	rrca                                             ; $4a73: $0f
	dec  b                                           ; $4a74: $05
	nop                                              ; $4a75: $00
	ld   bc, $7d58                                   ; $4a76: $01 $58 $7d
	sub  [hl]                                        ; $4a79: $96
	ld   d, h                                        ; $4a7a: $54
	ld   h, e                                        ; $4a7b: $63
	and  c                                           ; $4a7c: $a1
	sbc  a                                           ; $4a7d: $9f
	dec  c                                           ; $4a7e: $0d
	adc  c                                           ; $4a7f: $89
	ld   a, b                                        ; $4a80: $78
	sbc  a                                           ; $4a81: $9f
	dec  c                                           ; $4a82: $0d
	nop                                              ; $4a83: $00
	ld   a, [bc]                                     ; $4a84: $0a
	dec  c                                           ; $4a85: $0d
	nop                                              ; $4a86: $00
	nop                                              ; $4a87: $00
	rrca                                             ; $4a88: $0f
	nop                                              ; $4a89: $00
	ld   bc, $1e09                                   ; $4a8a: $01 $09 $1e
	nop                                              ; $4a8d: $00
	rrca                                             ; $4a8e: $0f
	nop                                              ; $4a8f: $00
	ld   bc, $050d                                   ; $4a90: $01 $0d $05
	nop                                              ; $4a93: $00
	ld   bc, $cf02                                   ; $4a94: $01 $02 $cf
	dec  b                                           ; $4a97: $05
	ld   a, [de]                                     ; $4a98: $1a
	ld   h, e                                        ; $4a99: $63
	and  c                                           ; $4a9a: $a1
	sbc  a                                           ; $4a9b: $9f
	dec  c                                           ; $4a9c: $0d
	ld   e, b                                        ; $4a9d: $58
	ld   a, l                                        ; $4a9e: $7d
	sub  [hl]                                        ; $4a9f: $96
	ld   d, h                                        ; $4aa0: $54
	ld   h, d                                        ; $4aa1: $62
	ld   h, h                                        ; $4aa2: $64
	ld   d, d                                        ; $4aa3: $52
	adc  h                                           ; $4aa4: $8c
	ld   h, a                                        ; $4aa5: $67
	sbc  a                                           ; $4aa6: $9f
	dec  c                                           ; $4aa7: $0d
	nop                                              ; $4aa8: $00
	ld   a, [bc]                                     ; $4aa9: $0a
	inc  e                                           ; $4aaa: $1c
	dec  b                                           ; $4aab: $05
	ld   bc, $0101                                   ; $4aac: $01 $01 $01
	ld   [$7d00], sp                                 ; $4aaf: $08 $00 $7d
	and  c                                           ; $4ab2: $a1
	sbc  a                                           ; $4ab3: $9f
	dec  c                                           ; $4ab4: $0d
	ld   e, b                                        ; $4ab5: $58
	ld   a, l                                        ; $4ab6: $7d
	sub  [hl]                                        ; $4ab7: $96
	ld   d, h                                        ; $4ab8: $54
	ld   h, e                                        ; $4ab9: $63
	and  c                                           ; $4aba: $a1
	sbc  a                                           ; $4abb: $9f
	dec  c                                           ; $4abc: $0d
	adc  c                                           ; $4abd: $89
	ld   a, b                                        ; $4abe: $78
	sbc  a                                           ; $4abf: $9f
	dec  c                                           ; $4ac0: $0d
	nop                                              ; $4ac1: $00
	ld   a, [bc]                                     ; $4ac2: $0a
	dec  c                                           ; $4ac3: $0d
	nop                                              ; $4ac4: $00
	nop                                              ; $4ac5: $00
	rrca                                             ; $4ac6: $0f
	nop                                              ; $4ac7: $00
	ld   bc, $1e09                                   ; $4ac8: $01 $09 $1e
	nop                                              ; $4acb: $00
	inc  e                                           ; $4acc: $1c
	dec  b                                           ; $4acd: $05
	ld   bc, $0101                                   ; $4ace: $01 $01 $01
	ld   e, b                                        ; $4ad1: $58
	ld   a, l                                        ; $4ad2: $7d
	sub  [hl]                                        ; $4ad3: $96
	ld   d, h                                        ; $4ad4: $54
	ld   h, e                                        ; $4ad5: $63
	and  c                                           ; $4ad6: $a1
	sbc  a                                           ; $4ad7: $9f
	dec  c                                           ; $4ad8: $0d
	ld   [$7d00], sp                                 ; $4ad9: $08 $00 $7d
	and  c                                           ; $4adc: $a1
	sbc  a                                           ; $4add: $9f
	dec  c                                           ; $4ade: $0d
	nop                                              ; $4adf: $00
	ld   a, [bc]                                     ; $4ae0: $0a
	rrca                                             ; $4ae1: $0f
	nop                                              ; $4ae2: $00
	ld   bc, $5801                                   ; $4ae3: $01 $01 $58
	ld   a, l                                        ; $4ae6: $7d
	sub  [hl]                                        ; $4ae7: $96
	ld   d, h                                        ; $4ae8: $54
	ld   h, d                                        ; $4ae9: $62
	ld   h, h                                        ; $4aea: $64
	ld   d, d                                        ; $4aeb: $52
	adc  h                                           ; $4aec: $8c
	ld   h, a                                        ; $4aed: $67
	sbc  a                                           ; $4aee: $9f
	dec  c                                           ; $4aef: $0d
	ld   [bc], a                                     ; $4af0: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4af1: $cf
	dec  b                                           ; $4af2: $05
	ld   a, [de]                                     ; $4af3: $1a
	ld   h, e                                        ; $4af4: $63
	and  c                                           ; $4af5: $a1
	sbc  a                                           ; $4af6: $9f
	dec  c                                           ; $4af7: $0d
	nop                                              ; $4af8: $00
	ld   a, [bc]                                     ; $4af9: $0a
	rrca                                             ; $4afa: $0f
	dec  b                                           ; $4afb: $05
	ld   bc, $0201                                   ; $4afc: $01 $01 $02
	and  l                                           ; $4aff: $a5
	inc  b                                           ; $4b00: $04
	xor  d                                           ; $4b01: $aa
	sub  b                                           ; $4b02: $90
	ret  nc                                          ; $4b03: $d0

	db   $ec                                         ; $4b04: $ec
	ld   e, e                                        ; $4b05: $5b
	ld   [hl], c                                     ; $4b06: $71
	ld   [hl], h                                     ; $4b07: $74
	ld   [bc], a                                     ; $4b08: $02
	ld   a, a                                        ; $4b09: $7f
	ld   h, c                                        ; $4b0a: $61
	ld   a, b                                        ; $4b0b: $78
	sbc  a                                           ; $4b0c: $9f
	dec  c                                           ; $4b0d: $0d
	adc  c                                           ; $4b0e: $89
	ld   a, b                                        ; $4b0f: $78
	sbc  a                                           ; $4b10: $9f
	dec  c                                           ; $4b11: $0d
	nop                                              ; $4b12: $00
	ld   a, [bc]                                     ; $4b13: $0a
	dec  c                                           ; $4b14: $0d
	nop                                              ; $4b15: $00
	nop                                              ; $4b16: $00
	rrca                                             ; $4b17: $0f
	nop                                              ; $4b18: $00
	ld   bc, $1e09                                   ; $4b19: $01 $09 $1e
	nop                                              ; $4b1c: $00
	nop                                              ; $4b1d: $00
	ld   [bc], a                                     ; $4b1e: $02
	nop                                              ; $4b1f: $00
	ld   bc, $200e                                   ; $4b20: $01 $0e $20
	ld   [bc], a                                     ; $4b23: $02
	nop                                              ; $4b24: $00
	ld   bc, $201c                                   ; $4b25: $01 $1c $20
	dec  de                                          ; $4b28: $1b
	ld   [bc], a                                     ; $4b29: $02
	nop                                              ; $4b2a: $00
	inc  bc                                          ; $4b2b: $03
	ld   d, h                                        ; $4b2c: $54
	inc  h                                           ; $4b2d: $24
	inc  e                                           ; $4b2e: $1c
	nop                                              ; $4b2f: $00
	inc  e                                           ; $4b30: $1c
	ld   c, $01                                      ; $4b31: $0e $01
	ld   bc, $0102                                   ; $4b33: $01 $02 $01
	ld   d, d                                        ; $4b36: $52
	sub  a                                           ; $4b37: $97
	ld   [hl], c                                     ; $4b38: $71
	ld   h, l                                        ; $4b39: $65
	sub  c                                           ; $4b3a: $91
	ld   d, d                                        ; $4b3b: $52
	adc  h                                           ; $4b3c: $8c
	ld   l, c                                        ; $4b3d: $69
	sbc  a                                           ; $4b3e: $9f
	dec  c                                           ; $4b3f: $0d
	nop                                              ; $4b40: $00
	ld   a, [bc]                                     ; $4b41: $0a
	inc  e                                           ; $4b42: $1c
	ld   c, $00                                      ; $4b43: $0e $00
	nop                                              ; $4b45: $00
	ld   bc, $9750                                   ; $4b46: $01 $50 $97
	sbc  [hl]                                        ; $4b49: $9e
	ld   [$6300], sp                                 ; $4b4a: $08 $00 $63
	and  c                                           ; $4b4d: $a1
	sbc  a                                           ; $4b4e: $9f
	dec  c                                           ; $4b4f: $0d
	sub  b                                           ; $4b50: $90
	ld   h, l                                        ; $4b51: $65
	ld   e, c                                        ; $4b52: $59
	ld   h, l                                        ; $4b53: $65
	ld   [hl], h                                     ; $4b54: $74
	sbc  [hl]                                        ; $4b55: $9e
	rst  $10                                         ; $4b56: $d7
	rst  $28                                         ; $4b57: $ef
	rst  JumpTable                                         ; $4b58: $df
	and  l                                           ; $4b59: $a5
	jp   z, $0da0                                    ; $4b5a: $ca $a0 $0d

	inc  b                                           ; $4b5d: $04
	adc  l                                           ; $4b5e: $8d
	ld   d, d                                        ; $4b5f: $52
	ld   a, c                                        ; $4b60: $79
	ld   d, d                                        ; $4b61: $52
	sub  a                                           ; $4b62: $97
	ld   h, l                                        ; $4b63: $65
	ld   l, l                                        ; $4b64: $6d
	and  c                                           ; $4b65: $a1
	ld   [hl], l                                     ; $4b66: $75
	ld   h, a                                        ; $4b67: $67
	ld   e, c                                        ; $4b68: $59
	ld   sp, hl                                      ; $4b69: $f9
	dec  c                                           ; $4b6a: $0d
	nop                                              ; $4b6b: $00
	ld   a, [bc]                                     ; $4b6c: $0a
	add  hl, de                                      ; $4b6d: $19
	dec  b                                           ; $4b6e: $05
	ld   [bc], a                                     ; $4b6f: $02
	ld   a, l                                        ; $4b70: $7d
	ld   d, d                                        ; $4b71: $52
	nop                                              ; $4b72: $00
	nop                                              ; $4b73: $00
	ld   d, d                                        ; $4b74: $52
	ld   d, d                                        ; $4b75: $52
	ld   d, [hl]                                     ; $4b76: $56
	nop                                              ; $4b77: $00
	ld   bc, $a707                                   ; $4b78: $01 $07 $a7
	ld   bc, $0302                                   ; $4b7b: $01 $02 $03
	ld   bc, $2000                                   ; $4b7e: $01 $00 $20
	nop                                              ; $4b81: $00
	rlca                                             ; $4b82: $07
	ld   e, [hl]                                     ; $4b83: $5e
	nop                                              ; $4b84: $00
	ld   [bc], a                                     ; $4b85: $02
	inc  bc                                          ; $4b86: $03
	ld   bc, $2001                                   ; $4b87: $01 $01 $20
	nop                                              ; $4b8a: $00
	ld   b, $32                                      ; $4b8b: $06 $32
	ld   bc, $000f                                   ; $4b8d: $01 $0f $00
	ld   bc, $5201                                   ; $4b90: $01 $01 $52
	sub  d                                           ; $4b93: $92
	sbc  [hl]                                        ; $4b94: $9e
	ld   b, $5b                                      ; $4b95: $06 $5b
	ld   h, e                                        ; $4b97: $63
	and  c                                           ; $4b98: $a1
	ld   a, h                                        ; $4b99: $7c
	ld   e, b                                        ; $4b9a: $58
	inc  bc                                          ; $4b9b: $03
	dec  c                                           ; $4b9c: $0d
	ld   [bc], a                                     ; $4b9d: $02
	jp   Jump_045_7471                               ; $4b9e: $c3 $71 $74


	dec  c                                           ; $4ba1: $0d
	inc  b                                           ; $4ba2: $04
	ld   c, $04                                      ; $4ba3: $0e $04
	adc  h                                           ; $4ba5: $8c
	ld   l, e                                        ; $4ba6: $6b
	ld   d, h                                        ; $4ba7: $54
	ld   l, [hl]                                     ; $4ba8: $6e
	ld   a, b                                        ; $4ba9: $78
	sbc  [hl]                                        ; $4baa: $9e
	halt                                             ; $4bab: $76
	dec  b                                           ; $4bac: $05
	pop  de                                          ; $4bad: $d1
	ld   d, d                                        ; $4bae: $52
	adc  h                                           ; $4baf: $8c
	ld   h, l                                        ; $4bb0: $65
	ld   [hl], h                                     ; $4bb1: $74
	sbc  a                                           ; $4bb2: $9f
	dec  c                                           ; $4bb3: $0d
	nop                                              ; $4bb4: $00
	ld   a, [bc]                                     ; $4bb5: $0a
	inc  e                                           ; $4bb6: $1c
	ld   c, $00                                      ; $4bb7: $0e $00
	nop                                              ; $4bb9: $00
	ld   bc, $546b                                   ; $4bba: $01 $6b $54
	ld   [hl], l                                     ; $4bbd: $75
	ld   h, a                                        ; $4bbe: $67
	ld   a, e                                        ; $4bbf: $7b
	rst  $38                                         ; $4bc0: $ff
	rst  $38                                         ; $4bc1: $ff
	halt                                             ; $4bc2: $76
	ld   e, l                                        ; $4bc3: $5d
	ld   a, c                                        ; $4bc4: $79
	dec  c                                           ; $4bc5: $0d
	ld   [bc], a                                     ; $4bc6: $02
	sbc  c                                           ; $4bc7: $99
	ld   [bc], a                                     ; $4bc8: $02
	rra                                              ; $4bc9: $1f
	ld   [bc], a                                     ; $4bca: $02
	pop  bc                                          ; $4bcb: $c1
	ld   [bc], a                                     ; $4bcc: $02
	xor  c                                           ; $4bcd: $a9
	inc  b                                           ; $4bce: $04
	dec  bc                                          ; $4bcf: $0b
	ld   a, b                                        ; $4bd0: $78
	and  c                                           ; $4bd1: $a1
	ld   [hl], h                                     ; $4bd2: $74
	sbc  [hl]                                        ; $4bd3: $9e
	ld   e, b                                        ; $4bd4: $58
	ld   [bc], a                                     ; $4bd5: $02
	add  c                                           ; $4bd6: $81
	ld   h, e                                        ; $4bd7: $63
	and  c                                           ; $4bd8: $a1
	sub  b                                           ; $4bd9: $90
	dec  c                                           ; $4bda: $0d
	inc  b                                           ; $4bdb: $04
	rrca                                             ; $4bdc: $0f
	ld   e, l                                        ; $4bdd: $5d
	ld   [hl], h                                     ; $4bde: $74
	inc  b                                           ; $4bdf: $04
	ld   c, $04                                      ; $4be0: $0e $04
	adc  h                                           ; $4be2: $8c
	ld   a, b                                        ; $4be3: $78
	and  c                                           ; $4be4: $a1
	ld   [hl], l                                     ; $4be5: $75
	ld   h, a                                        ; $4be6: $67
	sub  [hl]                                        ; $4be7: $96
	sbc  a                                           ; $4be8: $9f
	dec  c                                           ; $4be9: $0d
	nop                                              ; $4bea: $00
	ld   a, [bc]                                     ; $4beb: $0a
	inc  e                                           ; $4bec: $1c
	ld   c, $01                                      ; $4bed: $0e $01
	ld   bc, $7501                                   ; $4bef: $01 $01 $75
	sub  b                                           ; $4bf2: $90
	sbc  [hl]                                        ; $4bf3: $9e
	ld   e, b                                        ; $4bf4: $58
	ld   [bc], a                                     ; $4bf5: $02
	add  c                                           ; $4bf6: $81
	ld   h, e                                        ; $4bf7: $63
	and  c                                           ; $4bf8: $a1
	ld   a, h                                        ; $4bf9: $7c
	ld   d, h                                        ; $4bfa: $54
	sbc  d                                           ; $4bfb: $9a
	ld   h, l                                        ; $4bfc: $65
	ld   l, e                                        ; $4bfd: $6b
	ld   d, h                                        ; $4bfe: $54
	ld   a, b                                        ; $4bff: $78
	dec  c                                           ; $4c00: $0d
	ld   [bc], a                                     ; $4c01: $02
	ld   [hl], d                                     ; $4c02: $72
	and  b                                           ; $4c03: $a0
	ld   [bc], a                                     ; $4c04: $02
	sub  l                                           ; $4c05: $95
	ld   l, l                                        ; $4c06: $6d
	sub  a                                           ; $4c07: $97
	sbc  [hl]                                        ; $4c08: $9e
	adc  h                                           ; $4c09: $8c
	ld   l, l                                        ; $4c0a: $6d
	inc  b                                           ; $4c0b: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c0c: $cf
	inc  b                                           ; $4c0d: $04
	xor  d                                           ; $4c0e: $aa
	sub  b                                           ; $4c0f: $90
	dec  c                                           ; $4c10: $0d
	ld   e, d                                        ; $4c11: $5a
	and  c                                           ; $4c12: $a1
	ld   a, [hl]                                     ; $4c13: $7e
	sbc  e                                           ; $4c14: $9b
	ld   d, h                                        ; $4c15: $54
	ld   [hl], c                                     ; $4c16: $71
	ld   [hl], h                                     ; $4c17: $74
	dec  b                                           ; $4c18: $05
	pop  de                                          ; $4c19: $d1
	ld   d, [hl]                                     ; $4c1a: $56
	sbc  c                                           ; $4c1b: $99
	and  c                                           ; $4c1c: $a1
	ld   [hl], l                                     ; $4c1d: $75
	ld   h, a                                        ; $4c1e: $67
	sbc  a                                           ; $4c1f: $9f
	dec  c                                           ; $4c20: $0d
	nop                                              ; $4c21: $00
	ld   a, [bc]                                     ; $4c22: $0a
	inc  e                                           ; $4c23: $1c
	ld   c, $00                                      ; $4c24: $0e $00
	nop                                              ; $4c26: $00
	ld   bc, $7150                                   ; $4c27: $01 $50 $71
	sbc  [hl]                                        ; $4c2a: $9e
	ld   l, e                                        ; $4c2b: $6b
	sbc  e                                           ; $4c2c: $9b
	ld   l, e                                        ; $4c2d: $6b
	sbc  e                                           ; $4c2e: $9b
	dec  b                                           ; $4c2f: $05
	cp   b                                           ; $4c30: $b8
	ld   [bc], a                                     ; $4c31: $02
	ld   e, c                                        ; $4c32: $59
	ld   a, h                                        ; $4c33: $7c
	ld   [bc], a                                     ; $4c34: $02
	sbc  a                                           ; $4c35: $9f
	inc  b                                           ; $4c36: $04
	dec  sp                                          ; $4c37: $3b
	and  b                                           ; $4c38: $a0
	dec  c                                           ; $4c39: $0d
	ld   h, l                                        ; $4c3a: $65
	ld   a, b                                        ; $4c3b: $78
	ld   e, l                                        ; $4c3c: $5d
	ld   l, a                                        ; $4c3d: $6f
	sub  c                                           ; $4c3e: $91
	rst  $38                                         ; $4c3f: $ff
	rst  $38                                         ; $4c40: $ff
	ld   l, e                                        ; $4c41: $6b
	sbc  d                                           ; $4c42: $9a
	ld   h, [hl]                                     ; $4c43: $66
	sub  c                                           ; $4c44: $91
	sbc  [hl]                                        ; $4c45: $9e
	dec  c                                           ; $4c46: $0d
	inc  bc                                          ; $4c47: $03
	ret  z                                           ; $4c48: $c8

	ld   a, l                                        ; $4c49: $7d
	inc  bc                                          ; $4c4a: $03
	dec  c                                           ; $4c4b: $0d
	ld   [bc], a                                     ; $4c4c: $02
	jp   $9079                                       ; $4c4d: $c3 $79 $90


	ld   [hl], a                                     ; $4c50: $77
	sbc  b                                           ; $4c51: $98
	adc  h                                           ; $4c52: $8c
	ld   h, a                                        ; $4c53: $67
	ld   a, e                                        ; $4c54: $7b
	sbc  a                                           ; $4c55: $9f
	dec  c                                           ; $4c56: $0d
	nop                                              ; $4c57: $00
	ld   a, [bc]                                     ; $4c58: $0a
	dec  c                                           ; $4c59: $0d
	nop                                              ; $4c5a: $00
	nop                                              ; $4c5b: $00
	rrca                                             ; $4c5c: $0f
	nop                                              ; $4c5d: $00
	ld   bc, $1e09                                   ; $4c5e: $01 $09 $1e
	nop                                              ; $4c61: $00
	inc  e                                           ; $4c62: $1c
	ld   c, $03                                      ; $4c63: $0e $03
	inc  bc                                          ; $4c65: $03
	ld   bc, $5477                                   ; $4c66: $01 $77 $54
	ld   h, l                                        ; $4c69: $65
	ld   l, l                                        ; $4c6a: $6d
	and  c                                           ; $4c6b: $a1
	ld   [hl], l                                     ; $4c6c: $75
	ld   h, a                                        ; $4c6d: $67
	ld   e, c                                        ; $4c6e: $59
	ld   sp, hl                                      ; $4c6f: $f9
	dec  c                                           ; $4c70: $0d
	ld   [bc], a                                     ; $4c71: $02
	xor  b                                           ; $4c72: $a8
	ld   [bc], a                                     ; $4c73: $02
	ld   a, e                                        ; $4c74: $7b
	ld   [hl], l                                     ; $4c75: $75
	sub  b                                           ; $4c76: $90
	ld   [bc], a                                     ; $4c77: $02
	jr   z, jr_045_4ccc                              ; $4c78: $28 $52

	and  c                                           ; $4c7a: $a1
	ld   [hl], l                                     ; $4c7b: $75
	ld   h, a                                        ; $4c7c: $67
	ld   e, c                                        ; $4c7d: $59
	ld   sp, hl                                      ; $4c7e: $f9
	dec  c                                           ; $4c7f: $0d
	nop                                              ; $4c80: $00
	ld   a, [bc]                                     ; $4c81: $0a
	rrca                                             ; $4c82: $0f
	nop                                              ; $4c83: $00
	ld   bc, $5201                                   ; $4c84: $01 $01 $52
	ld   d, [hl]                                     ; $4c87: $56
	sbc  [hl]                                        ; $4c88: $9e
	ld   b, $5b                                      ; $4c89: $06 $5b
	ld   h, e                                        ; $4c8b: $63
	and  c                                           ; $4c8c: $a1
	ld   e, d                                        ; $4c8d: $5a
	ld   d, b                                        ; $4c8e: $50
	adc  h                                           ; $4c8f: $8c
	sbc  b                                           ; $4c90: $98
	ld   a, c                                        ; $4c91: $79
	dec  c                                           ; $4c92: $0d
	ld   e, c                                        ; $4c93: $59
	sbc  l                                           ; $4c94: $9d
	ld   d, d                                        ; $4c95: $52
	ld   d, d                                        ; $4c96: $52
	sub  b                                           ; $4c97: $90
	ld   a, h                                        ; $4c98: $7c
	ld   [hl], l                                     ; $4c99: $75
	sbc  [hl]                                        ; $4c9a: $9e
	ld   [hl], d                                     ; $4c9b: $72
	ld   d, d                                        ; $4c9c: $52
	dec  c                                           ; $4c9d: $0d
	adc  l                                           ; $4c9e: $8d
	halt                                             ; $4c9f: $76
	sbc  d                                           ; $4ca0: $9a
	ld   l, a                                        ; $4ca1: $6f
	sub  c                                           ; $4ca2: $91
	ld   [hl], c                                     ; $4ca3: $71
	ld   [hl], h                                     ; $4ca4: $74
	sbc  a                                           ; $4ca5: $9f
	dec  c                                           ; $4ca6: $0d
	nop                                              ; $4ca7: $00
	ld   a, [bc]                                     ; $4ca8: $0a
	inc  e                                           ; $4ca9: $1c
	ld   c, $01                                      ; $4caa: $0e $01
	ld   bc, $5001                                   ; $4cac: $01 $01 $50
	sub  a                                           ; $4caf: $97
	sbc  [hl]                                        ; $4cb0: $9e
	ld   l, e                                        ; $4cb1: $6b
	and  c                                           ; $4cb2: $a1
	ld   a, b                                        ; $4cb3: $78
	ld   d, h                                        ; $4cb4: $54
	adc  h                                           ; $4cb5: $8c
	ld   d, d                                        ; $4cb6: $52
	ld   [bc], a                                     ; $4cb7: $02
	jp   $9d02                                       ; $4cb8: $c3 $02 $9d


	ld   [hl], c                                     ; $4cbb: $71
	ld   [hl], h                                     ; $4cbc: $74
	sub  b                                           ; $4cbd: $90
	dec  c                                           ; $4cbe: $0d
	ld   a, b                                        ; $4cbf: $78
	ld   a, c                                        ; $4cc0: $79
	sub  b                                           ; $4cc1: $90
	inc  bc                                          ; $4cc2: $03
	add  b                                           ; $4cc3: $80
	adc  h                                           ; $4cc4: $8c
	ld   l, c                                        ; $4cc5: $69
	and  c                                           ; $4cc6: $a1
	sub  [hl]                                        ; $4cc7: $96
	ei                                               ; $4cc8: $fb
	ld   l, [hl]                                     ; $4cc9: $6e
	sbc  a                                           ; $4cca: $9f
	dec  c                                           ; $4ccb: $0d

jr_045_4ccc:
	and  a                                           ; $4ccc: $a7
	sub  $d6                                         ; $4ccd: $d6 $d6
	rst  $38                                         ; $4ccf: $ff
	rst  $38                                         ; $4cd0: $ff
	dec  c                                           ; $4cd1: $0d
	nop                                              ; $4cd2: $00
	ld   a, [bc]                                     ; $4cd3: $0a
	ld   b, $f3                                      ; $4cd4: $06 $f3
	nop                                              ; $4cd6: $00
	rrca                                             ; $4cd7: $0f
	ld   c, $00                                      ; $4cd8: $0e $00
	ld   bc, $efd7                                   ; $4cda: $01 $d7 $ef
	rst  JumpTable                                         ; $4cdd: $df
	and  l                                           ; $4cde: $a5
	jp   z, Jump_045_58a0                            ; $4cdf: $ca $a0 $58

	inc  b                                           ; $4ce2: $04
	adc  l                                           ; $4ce3: $8d
	ld   d, d                                        ; $4ce4: $52
	inc  bc                                          ; $4ce5: $03
	ld   h, l                                        ; $4ce6: $65
	ld   h, b                                        ; $4ce7: $60
	dec  c                                           ; $4ce8: $0d
	ld   [hl], l                                     ; $4ce9: $75
	ld   h, a                                        ; $4cea: $67
	ld   e, c                                        ; $4ceb: $59
	ld   sp, hl                                      ; $4cec: $f9
	dec  c                                           ; $4ced: $0d
	ld   d, b                                        ; $4cee: $50
	sbc  b                                           ; $4cef: $98
	ld   e, d                                        ; $4cf0: $5a
	halt                                             ; $4cf1: $76
	ld   d, h                                        ; $4cf2: $54
	ld   h, d                                        ; $4cf3: $62
	ld   h, h                                        ; $4cf4: $64
	ld   d, d                                        ; $4cf5: $52
	adc  h                                           ; $4cf6: $8c
	ei                                               ; $4cf7: $fb
	ld   h, a                                        ; $4cf8: $67
	ld   a, [$000d]                                  ; $4cf9: $fa $0d $00
	ld   a, [bc]                                     ; $4cfc: $0a
	inc  e                                           ; $4cfd: $1c
	ld   c, $01                                      ; $4cfe: $0e $01
	ld   bc, $6b01                                   ; $4d00: $01 $01 $6b
	sbc  d                                           ; $4d03: $9a
	ld   [hl], l                                     ; $4d04: $75
	ld   a, l                                        ; $4d05: $7d
	sbc  [hl]                                        ; $4d06: $9e
	ld   [de], a                                     ; $4d07: $12
	inc  b                                           ; $4d08: $04
	push bc                                          ; $4d09: $c5
	ld   l, [hl]                                     ; $4d0a: $6e
	ld   e, a                                        ; $4d0b: $5f
	inc  bc                                          ; $4d0c: $03
	ld   sp, $75a1                                   ; $4d0d: $31 $a1 $75
	dec  c                                           ; $4d10: $0d
	ld   e, l                                        ; $4d11: $5d
	ld   l, [hl]                                     ; $4d12: $6e
	ld   h, e                                        ; $4d13: $63
	ld   d, d                                        ; $4d14: $52
	ld   a, e                                        ; $4d15: $7b
	sbc  a                                           ; $4d16: $9f
	dec  c                                           ; $4d17: $0d
	nop                                              ; $4d18: $00
	ld   a, [bc]                                     ; $4d19: $0a
	ld   l, $02                                      ; $4d1a: $2e $02
	nop                                              ; $4d1c: $00
	nop                                              ; $4d1d: $00
	ld   [bc], a                                     ; $4d1e: $02
	nop                                              ; $4d1f: $00
	ld   bc, $2c07                                   ; $4d20: $01 $07 $2c
	ld   bc, $2001                                   ; $4d23: $01 $01 $20
	nop                                              ; $4d26: $00
	ld   c, $01                                      ; $4d27: $0e $01
	rrca                                             ; $4d29: $0f
	nop                                              ; $4d2a: $00
	ld   bc, $0102                                   ; $4d2b: $01 $02 $01
	ld   d, [hl]                                     ; $4d2e: $56
	db   $fc                                         ; $4d2f: $fc
	halt                                             ; $4d30: $76
	rst  $38                                         ; $4d31: $ff
	rst  $38                                         ; $4d32: $ff
	ld   [bc], a                                     ; $4d33: $02
	and  l                                           ; $4d34: $a5
	inc  b                                           ; $4d35: $04
	xor  d                                           ; $4d36: $aa
	ld   a, l                                        ; $4d37: $7d
	inc  b                                           ; $4d38: $04
	xor  d                                           ; $4d39: $aa
	inc  b                                           ; $4d3a: $04
	db   $f4                                         ; $4d3b: $f4
	inc  b                                           ; $4d3c: $04
	xor  d                                           ; $4d3d: $aa
	ld   l, [hl]                                     ; $4d3e: $6e
	ld   e, c                                        ; $4d3f: $59
	sub  a                                           ; $4d40: $97
	dec  c                                           ; $4d41: $0d
	inc  bc                                          ; $4d42: $03
	ld   l, l                                        ; $4d43: $6d
	dec  b                                           ; $4d44: $05
	add  hl, de                                      ; $4d45: $19
	ld   a, l                                        ; $4d46: $7d
	inc  b                                           ; $4d47: $04
	sub  $52                                         ; $4d48: $d6 $52
	and  c                                           ; $4d4a: $a1
	ld   l, [hl]                                     ; $4d4b: $6e
	ld   [hl], c                                     ; $4d4c: $71
	ld   l, l                                        ; $4d4d: $6d
	ld   a, b                                        ; $4d4e: $78
	rst  $38                                         ; $4d4f: $ff
	rst  $38                                         ; $4d50: $ff
	dec  c                                           ; $4d51: $0d
	nop                                              ; $4d52: $00
	ld   a, [bc]                                     ; $4d53: $0a
	ld   bc, $6596                                   ; $4d54: $01 $96 $65
	sbc  [hl]                                        ; $4d57: $9e
	inc  b                                           ; $4d58: $04
	ld   [$9202], sp                                 ; $4d59: $08 $02 $92
	inc  b                                           ; $4d5c: $04
	ld   b, a                                        ; $4d5d: $47
	ld   [hl], l                                     ; $4d5e: $75
	sub  b                                           ; $4d5f: $90
	add  h                                           ; $4d60: $84
	sub  a                                           ; $4d61: $97
	add  h                                           ; $4d62: $84
	sub  a                                           ; $4d63: $97
	dec  c                                           ; $4d64: $0d
	ld   h, l                                        ; $4d65: $65
	ld   [hl], h                                     ; $4d66: $74
	adc  l                                           ; $4d67: $8d
	sbc  c                                           ; $4d68: $99
	ld   e, c                                        ; $4d69: $59
	ld   a, b                                        ; $4d6a: $78
	sbc  a                                           ; $4d6b: $9f
	dec  c                                           ; $4d6c: $0d
	nop                                              ; $4d6d: $00
	ld   a, [bc]                                     ; $4d6e: $0a
	add  hl, hl                                      ; $4d6f: $29
	dec  b                                           ; $4d70: $05
	nop                                              ; $4d71: $00
	nop                                              ; $4d72: $00
	ld   c, $01                                      ; $4d73: $0e $01
	rrca                                             ; $4d75: $0f
	nop                                              ; $4d76: $00
	ld   bc, $0702                                   ; $4d77: $01 $02 $07
	ld   e, c                                        ; $4d7a: $59
	nop                                              ; $4d7b: $00
	ld   [bc], a                                     ; $4d7c: $02
	nop                                              ; $4d7d: $00
	ld   bc, $2002                                   ; $4d7e: $01 $02 $20
	nop                                              ; $4d81: $00
	rlca                                             ; $4d82: $07
	adc  l                                           ; $4d83: $8d
	nop                                              ; $4d84: $00
	ld   [bc], a                                     ; $4d85: $02
	nop                                              ; $4d86: $00
	ld   bc, $2003                                   ; $4d87: $01 $03 $20
	nop                                              ; $4d8a: $00
	rlca                                             ; $4d8b: $07
	add  $00                                         ; $4d8c: $c6 $00
	ld   [bc], a                                     ; $4d8e: $02
	nop                                              ; $4d8f: $00
	ld   bc, $2004                                   ; $4d90: $01 $04 $20
	nop                                              ; $4d93: $00
	rlca                                             ; $4d94: $07
	rst  $38                                         ; $4d95: $ff
	nop                                              ; $4d96: $00
	ld   [bc], a                                     ; $4d97: $02
	nop                                              ; $4d98: $00
	ld   bc, $2005                                   ; $4d99: $01 $05 $20
	nop                                              ; $4d9c: $00
	rlca                                             ; $4d9d: $07
	scf                                              ; $4d9e: $37
	ld   bc, $0002                                   ; $4d9f: $01 $02 $00
	ld   bc, $2006                                   ; $4da2: $01 $06 $20
	nop                                              ; $4da5: $00
	rlca                                             ; $4da6: $07
	ld   [hl], c                                     ; $4da7: $71
	ld   bc, $0002                                   ; $4da8: $01 $02 $00
	ld   bc, $2007                                   ; $4dab: $01 $07 $20
	nop                                              ; $4dae: $00
	rrca                                             ; $4daf: $0f
	nop                                              ; $4db0: $00
	ld   bc, $6301                                   ; $4db1: $01 $01 $63
	ld   [hl], h                                     ; $4db4: $74
	halt                                             ; $4db5: $76
	rst  $38                                         ; $4db6: $ff
	rst  $38                                         ; $4db7: $ff
	dec  c                                           ; $4db8: $0d
	ld   l, e                                        ; $4db9: $6b
	sbc  e                                           ; $4dba: $9b
	ld   l, e                                        ; $4dbb: $6b
	sbc  e                                           ; $4dbc: $9b
	inc  bc                                          ; $4dbd: $03
	ld   l, l                                        ; $4dbe: $6d
	dec  b                                           ; $4dbf: $05
	add  hl, de                                      ; $4dc0: $19
	ld   a, h                                        ; $4dc1: $7c
	inc  bc                                          ; $4dc2: $03
	ld   l, a                                        ; $4dc3: $6f
	ld   [bc], a                                     ; $4dc4: $02
	xor  c                                           ; $4dc5: $a9
	ld   l, [hl]                                     ; $4dc6: $6e
	ld   a, b                                        ; $4dc7: $78
	sbc  a                                           ; $4dc8: $9f
	dec  c                                           ; $4dc9: $0d
	nop                                              ; $4dca: $00
	ld   a, [bc]                                     ; $4dcb: $0a
	ld   bc, $ff56                                   ; $4dcc: $01 $56 $ff
	rst  $38                                         ; $4dcf: $ff
	ld   [hl], c                                     ; $4dd0: $71
	halt                                             ; $4dd1: $76
	sbc  [hl]                                        ; $4dd2: $9e
	dec  c                                           ; $4dd3: $0d
	cp   d                                           ; $4dd4: $ba
	or   d                                           ; $4dd5: $b2
	cp   c                                           ; $4dd6: $b9
	rst  $20                                         ; $4dd7: $e7
	ei                                               ; $4dd8: $fb
	db   $ed                                         ; $4dd9: $ed
	ld   b, $91                                      ; $4dda: $06 $91
	ld   a, c                                        ; $4ddc: $79
	sub  [hl]                                        ; $4ddd: $96
	sbc  d                                           ; $4dde: $9a
	ld   a, [hl]                                     ; $4ddf: $7e
	rst  $38                                         ; $4de0: $ff
	rst  $38                                         ; $4de1: $ff
	dec  c                                           ; $4de2: $0d
	nop                                              ; $4de3: $00
	ld   a, [bc]                                     ; $4de4: $0a
	ld   c, $c2                                      ; $4de5: $0e $c2
	ld   bc, $6903                                   ; $4de7: $01 $03 $69
	inc  bc                                          ; $4dea: $03
	inc  c                                           ; $4deb: $0c
	ld   a, h                                        ; $4dec: $7c
	inc  bc                                          ; $4ded: $03
	ld   l, l                                        ; $4dee: $6d
	dec  b                                           ; $4def: $05
	add  hl, de                                      ; $4df0: $19
	ld   a, l                                        ; $4df1: $7d
	dec  c                                           ; $4df2: $0d
	ld   h, e                                        ; $4df3: $63
	ld   e, l                                        ; $4df4: $5d
	sub  a                                           ; $4df5: $97
	ld   h, e                                        ; $4df6: $63
	and  c                                           ; $4df7: $a1
	ld   e, c                                        ; $4df8: $59
	sbc  a                                           ; $4df9: $9f
	dec  c                                           ; $4dfa: $0d
	nop                                              ; $4dfb: $00
	ld   a, [bc]                                     ; $4dfc: $0a
	ld   b, $aa                                      ; $4dfd: $06 $aa
	ld   bc, $5601                                   ; $4dff: $01 $01 $56
	rst  $38                                         ; $4e02: $ff
	rst  $38                                         ; $4e03: $ff
	ld   [hl], c                                     ; $4e04: $71
	halt                                             ; $4e05: $76
	sbc  [hl]                                        ; $4e06: $9e
	dec  c                                           ; $4e07: $0d
	cp   d                                           ; $4e08: $ba
	or   d                                           ; $4e09: $b2
	cp   c                                           ; $4e0a: $b9
	rst  $20                                         ; $4e0b: $e7
	ei                                               ; $4e0c: $fb
	db   $ed                                         ; $4e0d: $ed
	ld   b, $91                                      ; $4e0e: $06 $91
	ld   a, c                                        ; $4e10: $79
	sub  [hl]                                        ; $4e11: $96
	sbc  d                                           ; $4e12: $9a
	ld   a, [hl]                                     ; $4e13: $7e
	rst  $38                                         ; $4e14: $ff
	rst  $38                                         ; $4e15: $ff
	dec  c                                           ; $4e16: $0d
	nop                                              ; $4e17: $00
	ld   a, [bc]                                     ; $4e18: $0a
	ld   c, $c2                                      ; $4e19: $0e $c2
	ld   bc, $8105                                   ; $4e1b: $01 $05 $81
	inc  b                                           ; $4e1e: $04
	db   $f4                                         ; $4e1f: $f4
	ld   a, h                                        ; $4e20: $7c
	inc  bc                                          ; $4e21: $03
	ld   l, l                                        ; $4e22: $6d
	dec  b                                           ; $4e23: $05
	add  hl, de                                      ; $4e24: $19
	ld   a, h                                        ; $4e25: $7c
	ld   b, $c5                                      ; $4e26: $06 $c5
	inc  b                                           ; $4e28: $04
	jr   @+$7f                                       ; $4e29: $18 $7d

	dec  c                                           ; $4e2b: $0d
	ld   h, a                                        ; $4e2c: $67
	adc  l                                           ; $4e2d: $8d
	sbc  d                                           ; $4e2e: $9a
	ld   h, e                                        ; $4e2f: $63
	and  c                                           ; $4e30: $a1
	ld   e, c                                        ; $4e31: $59
	sbc  a                                           ; $4e32: $9f
	dec  c                                           ; $4e33: $0d
	nop                                              ; $4e34: $00
	ld   a, [bc]                                     ; $4e35: $0a
	ld   b, $aa                                      ; $4e36: $06 $aa
	ld   bc, $5601                                   ; $4e38: $01 $01 $56
	rst  $38                                         ; $4e3b: $ff
	rst  $38                                         ; $4e3c: $ff
	ld   [hl], c                                     ; $4e3d: $71
	halt                                             ; $4e3e: $76
	sbc  [hl]                                        ; $4e3f: $9e
	dec  c                                           ; $4e40: $0d
	cp   d                                           ; $4e41: $ba
	or   d                                           ; $4e42: $b2
	cp   c                                           ; $4e43: $b9
	rst  $20                                         ; $4e44: $e7
	ei                                               ; $4e45: $fb
	db   $ed                                         ; $4e46: $ed
	ld   b, $91                                      ; $4e47: $06 $91
	ld   a, c                                        ; $4e49: $79
	sub  [hl]                                        ; $4e4a: $96
	sbc  d                                           ; $4e4b: $9a
	ld   a, [hl]                                     ; $4e4c: $7e
	rst  $38                                         ; $4e4d: $ff
	rst  $38                                         ; $4e4e: $ff
	dec  c                                           ; $4e4f: $0d
	nop                                              ; $4e50: $00
	ld   a, [bc]                                     ; $4e51: $0a
	ld   c, $c2                                      ; $4e52: $0e $c2
	ld   bc, $5903                                   ; $4e54: $01 $03 $59
	inc  b                                           ; $4e57: $04
	db   $f4                                         ; $4e58: $f4
	ld   a, h                                        ; $4e59: $7c
	inc  bc                                          ; $4e5a: $03
	ld   l, l                                        ; $4e5b: $6d
	dec  b                                           ; $4e5c: $05
	add  hl, de                                      ; $4e5d: $19
	ld   a, h                                        ; $4e5e: $7c
	ld   b, $c5                                      ; $4e5f: $06 $c5
	inc  b                                           ; $4e61: $04
	jr   jr_045_4ee1                                 ; $4e62: $18 $7d

	dec  c                                           ; $4e64: $0d
	rst  JumpTable                                         ; $4e65: $df
	db   $ec                                         ; $4e66: $ec
	and  e                                           ; $4e67: $a3
	ld   h, e                                        ; $4e68: $63
	and  c                                           ; $4e69: $a1
	ld   e, c                                        ; $4e6a: $59
	sbc  a                                           ; $4e6b: $9f
	dec  c                                           ; $4e6c: $0d
	nop                                              ; $4e6d: $00
	ld   a, [bc]                                     ; $4e6e: $0a
	ld   b, $aa                                      ; $4e6f: $06 $aa
	ld   bc, $5601                                   ; $4e71: $01 $01 $56
	rst  $38                                         ; $4e74: $ff
	rst  $38                                         ; $4e75: $ff
	ld   [hl], c                                     ; $4e76: $71
	halt                                             ; $4e77: $76
	sbc  [hl]                                        ; $4e78: $9e
	dec  c                                           ; $4e79: $0d
	cp   d                                           ; $4e7a: $ba
	or   d                                           ; $4e7b: $b2
	cp   c                                           ; $4e7c: $b9
	rst  $20                                         ; $4e7d: $e7
	ei                                               ; $4e7e: $fb
	db   $ed                                         ; $4e7f: $ed
	ld   b, $91                                      ; $4e80: $06 $91
	ld   a, c                                        ; $4e82: $79
	sub  [hl]                                        ; $4e83: $96
	sbc  d                                           ; $4e84: $9a
	ld   a, [hl]                                     ; $4e85: $7e
	rst  $38                                         ; $4e86: $ff
	rst  $38                                         ; $4e87: $ff
	dec  c                                           ; $4e88: $0d
	nop                                              ; $4e89: $00
	ld   a, [bc]                                     ; $4e8a: $0a
	ld   c, $c2                                      ; $4e8b: $0e $c2
	ld   bc, $d504                                   ; $4e8d: $01 $04 $d5
	inc  b                                           ; $4e90: $04
	db   $f4                                         ; $4e91: $f4
	ld   a, h                                        ; $4e92: $7c
	inc  bc                                          ; $4e93: $03
	ld   l, l                                        ; $4e94: $6d
	dec  b                                           ; $4e95: $05
	add  hl, de                                      ; $4e96: $19
	ld   a, h                                        ; $4e97: $7c
	ld   b, $c5                                      ; $4e98: $06 $c5
	inc  b                                           ; $4e9a: $04
	jr   jr_045_4f1a                                 ; $4e9b: $18 $7d

	dec  c                                           ; $4e9d: $0d
	and  e                                           ; $4e9e: $a3
	and  l                                           ; $4e9f: $a5
	db   $ec                                         ; $4ea0: $ec
	cp   d                                           ; $4ea1: $ba
	ld   e, c                                        ; $4ea2: $59
	sbc  a                                           ; $4ea3: $9f
	dec  c                                           ; $4ea4: $0d
	nop                                              ; $4ea5: $00
	ld   a, [bc]                                     ; $4ea6: $0a
	ld   b, $aa                                      ; $4ea7: $06 $aa
	ld   bc, $5601                                   ; $4ea9: $01 $01 $56
	rst  $38                                         ; $4eac: $ff
	rst  $38                                         ; $4ead: $ff
	ld   [hl], c                                     ; $4eae: $71
	halt                                             ; $4eaf: $76
	sbc  [hl]                                        ; $4eb0: $9e
	dec  c                                           ; $4eb1: $0d
	cp   d                                           ; $4eb2: $ba
	or   d                                           ; $4eb3: $b2
	cp   c                                           ; $4eb4: $b9
	rst  $20                                         ; $4eb5: $e7
	ei                                               ; $4eb6: $fb
	db   $ed                                         ; $4eb7: $ed
	ld   b, $91                                      ; $4eb8: $06 $91
	ld   a, c                                        ; $4eba: $79
	sub  [hl]                                        ; $4ebb: $96
	sbc  d                                           ; $4ebc: $9a
	ld   a, [hl]                                     ; $4ebd: $7e
	rst  $38                                         ; $4ebe: $ff
	rst  $38                                         ; $4ebf: $ff
	dec  c                                           ; $4ec0: $0d
	nop                                              ; $4ec1: $00
	ld   a, [bc]                                     ; $4ec2: $0a
	ld   c, $c2                                      ; $4ec3: $0e $c2
	ld   bc, $3b02                                   ; $4ec5: $01 $02 $3b
	inc  b                                           ; $4ec8: $04
	db   $f4                                         ; $4ec9: $f4
	ld   a, h                                        ; $4eca: $7c
	inc  bc                                          ; $4ecb: $03
	ld   l, l                                        ; $4ecc: $6d
	dec  b                                           ; $4ecd: $05
	add  hl, de                                      ; $4ece: $19
	ld   a, h                                        ; $4ecf: $7c
	ld   b, $c5                                      ; $4ed0: $06 $c5
	inc  b                                           ; $4ed2: $04
	db $18, $7d

	dec  c                                           ; $4ed5: $0d
	ld   [bc], a                                     ; $4ed6: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ed7: $cf
	dec  b                                           ; $4ed8: $05
	ld   a, [de]                                     ; $4ed9: $1a
	ld   h, e                                        ; $4eda: $63
	and  c                                           ; $4edb: $a1
	ld   e, c                                        ; $4edc: $59
	sbc  a                                           ; $4edd: $9f
	dec  c                                           ; $4ede: $0d
	nop                                              ; $4edf: $00
	ld   a, [bc]                                     ; $4ee0: $0a

jr_045_4ee1:
	ld   b, $aa                                      ; $4ee1: $06 $aa
	ld   bc, $5601                                   ; $4ee3: $01 $01 $56
	rst  $38                                         ; $4ee6: $ff
	rst  $38                                         ; $4ee7: $ff
	ld   [hl], c                                     ; $4ee8: $71
	halt                                             ; $4ee9: $76
	sbc  [hl]                                        ; $4eea: $9e
	dec  c                                           ; $4eeb: $0d
	cp   d                                           ; $4eec: $ba
	or   d                                           ; $4eed: $b2
	cp   c                                           ; $4eee: $b9
	rst  $20                                         ; $4eef: $e7
	ei                                               ; $4ef0: $fb
	db   $ed                                         ; $4ef1: $ed
	ld   b, $91                                      ; $4ef2: $06 $91
	ld   a, c                                        ; $4ef4: $79
	sub  [hl]                                        ; $4ef5: $96
	sbc  d                                           ; $4ef6: $9a
	ld   a, [hl]                                     ; $4ef7: $7e
	rst  $38                                         ; $4ef8: $ff
	rst  $38                                         ; $4ef9: $ff
	dec  c                                           ; $4efa: $0d
	nop                                              ; $4efb: $00
	ld   a, [bc]                                     ; $4efc: $0a
	ld   c, $c2                                      ; $4efd: $0e $c2
	ld   bc, $3004                                   ; $4eff: $01 $04 $30
	inc  b                                           ; $4f02: $04
	db   $f4                                         ; $4f03: $f4
	ld   a, h                                        ; $4f04: $7c
	inc  bc                                          ; $4f05: $03
	ld   l, l                                        ; $4f06: $6d
	dec  b                                           ; $4f07: $05
	add  hl, de                                      ; $4f08: $19
	ld   a, h                                        ; $4f09: $7c
	ld   b, $c5                                      ; $4f0a: $06 $c5
	inc  b                                           ; $4f0c: $04
	jr   @+$7f                                       ; $4f0d: $18 $7d

	dec  c                                           ; $4f0f: $0d
	xor  h                                           ; $4f10: $ac
	push af                                          ; $4f11: $f5
	bit  4, e                                        ; $4f12: $cb $63
	and  c                                           ; $4f14: $a1
	ld   e, c                                        ; $4f15: $59
	sbc  a                                           ; $4f16: $9f
	dec  c                                           ; $4f17: $0d
	nop                                              ; $4f18: $00
	ld   a, [bc]                                     ; $4f19: $0a

jr_045_4f1a:
	ld   b, $aa                                      ; $4f1a: $06 $aa
	ld   bc, $010e                                   ; $4f1c: $01 $0e $01
	ld   bc, $6596                                   ; $4f1f: $01 $96 $65
	sbc  [hl]                                        ; $4f22: $9e
	ld   e, d                                        ; $4f23: $5a
	and  c                                           ; $4f24: $a1
	ld   a, [hl]                                     ; $4f25: $7e
	sbc  c                                           ; $4f26: $99
	ld   l, h                                        ; $4f27: $6c
	ld   a, [$0dfa]                                  ; $4f28: $fa $fa $0d
	nop                                              ; $4f2b: $00
	ld   a, [bc]                                     ; $4f2c: $0a
	nop                                              ; $4f2d: $00
	nop                                              ; $4f2e: $00
	ld   [bc], a                                     ; $4f2f: $02
	ld   b, $01                                      ; $4f30: $06 $01
	ld   b, $20                                      ; $4f32: $06 $20
	nop                                              ; $4f34: $00


;
	rrca                                             ; $4f35: $0f
	db $00, $01
	db $06
	dw $0007 ; 4f3c
	ld   [bc], a                                     ; $4f3b: $02

	rlca                                             ; $4f3c: $07
	dw $0870 ; 57a5
	db $04
	dw $c680
	db $00
	
	db $0e, $6e
	db $02
	
	db $07
	dw $01a0 ; 50d5
	db $03, $20
	db $01, $20
	db $23 ; lte
	db $00

	db $07
	dw $013e
	db $03, $53
	db $02, $00
	db $03, $4d
	db $29 ; sub
	db $29
	db $01, $01
	db $25 ; gte
	db $00

	db $07
	dw $0059 ; 4f8e
	inc  bc                                          ; $4f61: $03
	ld   b, a                                        ; $4f62: $47
	ld   bc, $2000                                   ; $4f63: $01 $00 $20
	nop                                              ; $4f66: $00
	rlca                                             ; $4f67: $07
	ld   h, l                                        ; $4f68: $65
	dec  b                                           ; $4f69: $05
	inc  bc                                          ; $4f6a: $03
	ld   b, a                                        ; $4f6b: $47
	ld   bc, $2501                                   ; $4f6c: $01 $01 $25
	inc  bc                                          ; $4f6f: $03
	ld   b, a                                        ; $4f70: $47
	ld   bc, $2302                                   ; $4f71: $01 $02 $23
	inc  e                                           ; $4f74: $1c
	nop                                              ; $4f75: $00
	rlca                                             ; $4f76: $07
	add  sp, $05                                     ; $4f77: $e8 $05
	inc  bc                                          ; $4f79: $03
	ld   b, a                                        ; $4f7a: $47
	ld   bc, $2503                                   ; $4f7b: $01 $03 $25
	inc  bc                                          ; $4f7e: $03
	ld   b, a                                        ; $4f7f: $47
	ld   bc, $2305                                   ; $4f80: $01 $05 $23
	inc  e                                           ; $4f83: $1c
	nop                                              ; $4f84: $00
	rlca                                             ; $4f85: $07
	ld   a, $07                                      ; $4f86: $3e $07
	inc  bc                                          ; $4f88: $03
	ld   b, a                                        ; $4f89: $47
	ld   bc, $2506                                   ; $4f8a: $01 $06 $25
	nop                                              ; $4f8d: $00


	inc  e                                           ; $4f8e: $1c
	ld   b, $00                                      ; $4f8f: $06 $00
	nop                                              ; $4f91: $00
	ld   bc, $5896                                   ; $4f92: $01 $96 $58
	sbc  [hl]                                        ; $4f95: $9e
	ld   [$9f00], sp                                 ; $4f96: $08 $00 $9f
	dec  c                                           ; $4f99: $0d
	ld   [hl], a                                     ; $4f9a: $77
	ld   d, h                                        ; $4f9b: $54
	ld   l, [hl]                                     ; $4f9c: $6e
	sbc  [hl]                                        ; $4f9d: $9e
	inc  bc                                          ; $4f9e: $03
	cp   $03                                         ; $4f9f: $fe $03
	add  [hl]                                        ; $4fa1: $86
	ld   a, l                                        ; $4fa2: $7d
	ld   sp, hl                                      ; $4fa3: $f9
	dec  c                                           ; $4fa4: $0d
	ld   l, a                                        ; $4fa5: $6f
	sub  c                                           ; $4fa6: $91
	and  c                                           ; $4fa7: $a1
	halt                                             ; $4fa8: $76
	db   $e3                                         ; $4fa9: $e3
	cp   b                                           ; $4faa: $b8
	inc  bc                                          ; $4fab: $03
	ld   l, d                                        ; $4fac: $6a
	ld   [hl], c                                     ; $4fad: $71
	ld   [hl], h                                     ; $4fae: $74
	sbc  c                                           ; $4faf: $99
	ld   e, c                                        ; $4fb0: $59
	ld   a, [$0df9]                                  ; $4fb1: $fa $f9 $0d
	nop                                              ; $4fb4: $00
	ld   a, [bc]                                     ; $4fb5: $0a
	ld   bc, $6d50                                   ; $4fb6: $01 $50 $6d
	ld   d, d                                        ; $4fb9: $52
	ld   a, h                                        ; $4fba: $7c
	inc  bc                                          ; $4fbb: $03
	ld   l, l                                        ; $4fbc: $6d
	dec  b                                           ; $4fbd: $05
	add  hl, de                                      ; $4fbe: $19
	ld   a, l                                        ; $4fbf: $7d
	sbc  [hl]                                        ; $4fc0: $9e
	dec  c                                           ; $4fc1: $0d
	ld   [bc], a                                     ; $4fc2: $02
	ld   l, e                                        ; $4fc3: $6b
	dec  b                                           ; $4fc4: $05
	ld   a, [bc]                                     ; $4fc5: $0a
	ret                                              ; $4fc6: $c9


	xor  $fb                                         ; $4fc7: $ee $fb
	call z, $b1f5                                    ; $4fc9: $cc $f5 $b1
	ld   l, [hl]                                     ; $4fcc: $6e
	sbc  a                                           ; $4fcd: $9f
	dec  c                                           ; $4fce: $0d
	ld   l, a                                        ; $4fcf: $6f
	sub  l                                           ; $4fd0: $95
	ld   [hl], c                                     ; $4fd1: $71
	halt                                             ; $4fd2: $76
	xor  [hl]                                        ; $4fd3: $ae
	push bc                                          ; $4fd4: $c5
	and  l                                           ; $4fd5: $a5
	ld   l, h                                        ; $4fd6: $6c
	sbc  a                                           ; $4fd7: $9f
	dec  c                                           ; $4fd8: $0d
	nop                                              ; $4fd9: $00
	ld   a, [bc]                                     ; $4fda: $0a
	ld   bc, $7c61                                   ; $4fdb: $01 $61 $7c
	inc  bc                                          ; $4fde: $03
	ld   l, l                                        ; $4fdf: $6d
	dec  b                                           ; $4fe0: $05
	add  hl, de                                      ; $4fe1: $19
	ld   [hl], l                                     ; $4fe2: $75
	sbc  [hl]                                        ; $4fe3: $9e
	pop  de                                          ; $4fe4: $d1
	call nz, $ecc2                                   ; $4fe5: $c4 $c2 $ec
	dec  b                                           ; $4fe8: $05
	xor  c                                           ; $4fe9: $a9
	ld   b, $82                                      ; $4fea: $06 $82
	inc  b                                           ; $4fec: $04
	dec  c                                           ; $4fed: $0d
	dec  b                                           ; $4fee: $05
	ld   a, [bc]                                     ; $4fef: $0a
	dec  c                                           ; $4ff0: $0d
	and  b                                           ; $4ff1: $a0
	ld   [hl], d                                     ; $4ff2: $72
	ld   e, a                                        ; $4ff3: $5f
	ld   [hl], h                                     ; $4ff4: $74
	sub  b                                           ; $4ff5: $90
	sub  a                                           ; $4ff6: $97
	ld   d, h                                        ; $4ff7: $54
	ld   l, d                                        ; $4ff8: $6a
	sbc  a                                           ; $4ff9: $9f
	dec  c                                           ; $4ffa: $0d
	nop                                              ; $4ffb: $00
	ld   a, [bc]                                     ; $4ffc: $0a
	inc  e                                           ; $4ffd: $1c
	ld   b, $07                                      ; $4ffe: $06 $07
	rlca                                             ; $5000: $07
	ld   bc, $9a6b                                   ; $5001: $01 $6b $9a
	ld   h, [hl]                                     ; $5004: $66
	sub  c                                           ; $5005: $91
	sbc  [hl]                                        ; $5006: $9e
	dec  b                                           ; $5007: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5008: $cf
	adc  a                                           ; $5009: $8f
	sbc  c                                           ; $500a: $99
	ld   l, h                                        ; $500b: $6c
	ld   a, [$0dfa]                                  ; $500c: $fa $fa $0d
	nop                                              ; $500f: $00

	ld   a, [bc]                                     ; $5010: $0a
	dec  h                                           ; $5011: $25
	ld   b, $07                                      ; $5012: $06 $07
	push af                                          ; $5014: $f5


	inc  bc                                          ; $5015: $03
	inc  bc                                          ; $5016: $03
	jr   nz, jr_045_501a                             ; $5017: $20 $01

	nop                                              ; $5019: $00

jr_045_501a:
	jr   nz, jr_045_501c                             ; $501a: $20 $00

jr_045_501c:
	inc  e                                           ; $501c: $1c
	ld   b, $00                                      ; $501d: $06 $00
	nop                                              ; $501f: $00
	ld   bc, $0458                                   ; $5020: $01 $58 $04
	ld   a, e                                        ; $5023: $7b
	sbc  d                                           ; $5024: $9a
	ld   h, e                                        ; $5025: $63
	and  c                                           ; $5026: $a1
	sbc  a                                           ; $5027: $9f
	dec  c                                           ; $5028: $0d
	nop                                              ; $5029: $00
	dec  b                                           ; $502a: $05
	ld   b, b                                        ; $502b: $40
	ld   b, a                                        ; $502c: $47
	inc  bc                                          ; $502d: $03
	ld   b, a                                        ; $502e: $47
	ld   bc, $2801                                   ; $502f: $01 $01 $28
	nop                                              ; $5032: $00
	ld   bc, $9e8c                                   ; $5033: $01 $8c $9e
	inc  bc                                          ; $5036: $03
	inc  c                                           ; $5037: $0c
	adc  a                                           ; $5038: $8f
	ld   [hl], h                                     ; $5039: $74
	ld   a, b                                        ; $503a: $78
	sub  a                                           ; $503b: $97
	ld   h, c                                        ; $503c: $61
	and  c                                           ; $503d: $a1
	ld   a, b                                        ; $503e: $78
	dec  c                                           ; $503f: $0d
	sub  b                                           ; $5040: $90
	and  c                                           ; $5041: $a1
	ld   l, [hl]                                     ; $5042: $6e
	ld   a, b                                        ; $5043: $78
	sbc  a                                           ; $5044: $9f
	dec  c                                           ; $5045: $0d
	nop                                              ; $5046: $00
	ld   a, [bc]                                     ; $5047: $0a
	rrca                                             ; $5048: $0f
	ld   b, $00                                      ; $5049: $06 $00
	ld   bc, $9a6b                                   ; $504b: $01 $6b $9a
	ld   h, [hl]                                     ; $504e: $66
	sub  c                                           ; $504f: $91
	sbc  [hl]                                        ; $5050: $9e
	inc  b                                           ; $5051: $04
	adc  a                                           ; $5052: $8f
	inc  b                                           ; $5053: $04
	xor  d                                           ; $5054: $aa
	ld   a, h                                        ; $5055: $7c
	ld   [bc], a                                     ; $5056: $02
	or   d                                           ; $5057: $b2
	inc  bc                                          ; $5058: $03
	ld   c, a                                        ; $5059: $4f

Jump_045_505a:
	ld   a, h                                        ; $505a: $7c
	inc  bc                                          ; $505b: $03
	ld   l, l                                        ; $505c: $6d
	dec  b                                           ; $505d: $05
	add  hl, de                                      ; $505e: $19
	dec  c                                           ; $505f: $0d
	ld   h, c                                        ; $5060: $61
	sbc  d                                           ; $5061: $9a
	ld   a, c                                        ; $5062: $79
	ld   [hl], h                                     ; $5063: $74
	inc  bc                                          ; $5064: $03
	ld   a, [hl]                                     ; $5065: $7e
	dec  b                                           ; $5066: $05
	nop                                              ; $5067: $00
	ld   a, [$000d]                                  ; $5068: $fa $0d $00
	ld   a, [bc]                                     ; $506b: $0a
	dec  c                                           ; $506c: $0d
	nop                                              ; $506d: $00
	nop                                              ; $506e: $00
	rrca                                             ; $506f: $0f
	nop                                              ; $5070: $00
	ld   bc, $1c00                                   ; $5071: $01 $00 $1c
	ld   b, $02                                      ; $5074: $06 $02
	ld   [bc], a                                     ; $5076: $02
	ld   bc, $ffff                                   ; $5077: $01 $ff $ff
	rst  $38                                         ; $507a: $ff
	rst  $38                                         ; $507b: $ff
	ld   h, [hl]                                     ; $507c: $66
	sub  c                                           ; $507d: $91
	sbc  [hl]                                        ; $507e: $9e
	inc  bc                                          ; $507f: $03
	ld   l, l                                        ; $5080: $6d
	dec  b                                           ; $5081: $05
	add  hl, de                                      ; $5082: $19
	and  b                                           ; $5083: $a0
	dec  c                                           ; $5084: $0d
	ld   a, l                                        ; $5085: $7d
	ld   h, [hl]                                     ; $5086: $66
	adc  a                                           ; $5087: $8f
	sbc  c                                           ; $5088: $99
	ld   l, d                                        ; $5089: $6a
	sbc  a                                           ; $508a: $9f
	dec  c                                           ; $508b: $0d
	nop                                              ; $508c: $00
	ld   a, [bc]                                     ; $508d: $0a
	dec  b                                           ; $508e: $05
	ld   b, b                                        ; $508f: $40
	ld   d, e                                        ; $5090: $53
	ld   bc, $0000                                   ; $5091: $01 $00 $00
	dec  h                                           ; $5094: $25
	ld   b, $07                                      ; $5095: $06 $07
	push af                                          ; $5097: $f5
	inc  bc                                          ; $5098: $03
	inc  bc                                          ; $5099: $03
	jr   nz, jr_045_509d                             ; $509a: $20 $01

	nop                                              ; $509c: $00

jr_045_509d:
	jr   nz, jr_045_509f                             ; $509d: $20 $00

jr_045_509f:
	inc  e                                           ; $509f: $1c
	ld   b, $02                                      ; $50a0: $06 $02
	ld   [bc], a                                     ; $50a2: $02
	ld   bc, $0458                                   ; $50a3: $01 $58 $04
	ld   a, e                                        ; $50a6: $7b
	sbc  d                                           ; $50a7: $9a
	rst  $38                                         ; $50a8: $ff
	rst  $38                                         ; $50a9: $ff
	dec  c                                           ; $50aa: $0d
	nop                                              ; $50ab: $00
	ld   a, [bc]                                     ; $50ac: $0a
	dec  c                                           ; $50ad: $0d
	nop                                              ; $50ae: $00
	nop                                              ; $50af: $00
	rrca                                             ; $50b0: $0f
	nop                                              ; $50b1: $00
	ld   bc, $4005                                   ; $50b2: $01 $05 $40
	ld   b, a                                        ; $50b5: $47
	inc  bc                                          ; $50b6: $03
	ld   b, a                                        ; $50b7: $47
	ld   bc, $2801                                   ; $50b8: $01 $01 $28
	nop                                              ; $50bb: $00
	ld   bc, $ffff                                   ; $50bc: $01 $ff $ff
	rst  $38                                         ; $50bf: $ff
	rst  $38                                         ; $50c0: $ff
	xor  h                                           ; $50c1: $ac
	push af                                          ; $50c2: $f5
	bit  4, e                                        ; $50c3: $cb $63
	and  c                                           ; $50c5: $a1
	sbc  [hl]                                        ; $50c6: $9e
	dec  c                                           ; $50c7: $0d
	ld   e, e                                        ; $50c8: $5b
	ld   h, b                                        ; $50c9: $60
	and  c                                           ; $50ca: $a1
	ld   [bc], a                                     ; $50cb: $02
	jr   z, @+$54                                    ; $50cc: $28 $52

	ld   l, h                                        ; $50ce: $6c
	rst  $38                                         ; $50cf: $ff
	rst  $38                                         ; $50d0: $ff
	dec  c                                           ; $50d1: $0d
	nop                                              ; $50d2: $00
	ld   a, [bc]                                     ; $50d3: $0a
	nop                                              ; $50d4: $00
	inc  e                                           ; $50d5: $1c
	ld   b, $00                                      ; $50d6: $06 $00
	nop                                              ; $50d8: $00
	dec  b                                           ; $50d9: $05
	ld   b, b                                        ; $50da: $40
	ld   d, e                                        ; $50db: $53
	ld   bc, $0000                                   ; $50dc: $01 $00 $00
	ld   bc, $5896                                   ; $50df: $01 $96 $58
	sbc  [hl]                                        ; $50e2: $9e
	ld   [$9f00], sp                                 ; $50e3: $08 $00 $9f
	dec  c                                           ; $50e6: $0d
	nop                                              ; $50e7: $00
	inc  e                                           ; $50e8: $1c
	ld   b, $05                                      ; $50e9: $06 $05
	dec  b                                           ; $50eb: $05
	ld   bc, $ffff                                   ; $50ec: $01 $ff $ff
	ld   d, b                                        ; $50ef: $50
	sbc  d                                           ; $50f0: $9a
	ld   sp, hl                                      ; $50f1: $f9
	db   $10                                         ; $50f2: $10
	ld   [hl], a                                     ; $50f3: $77
	ld   d, h                                        ; $50f4: $54
	ld   h, l                                        ; $50f5: $65
	ld   l, l                                        ; $50f6: $6d
	and  c                                           ; $50f7: $a1
	ld   l, [hl]                                     ; $50f8: $6e
	ld   sp, hl                                      ; $50f9: $f9
	dec  c                                           ; $50fa: $0d
	ld   [bc], a                                     ; $50fb: $02
	ld   [hl], d                                     ; $50fc: $72
	inc  bc                                          ; $50fd: $03
	dec  bc                                          ; $50fe: $0b
	sbc  l                                           ; $50ff: $9d
	sbc  c                                           ; $5100: $99
	ld   d, d                                        ; $5101: $52
	ld   l, d                                        ; $5102: $6a
	sbc  a                                           ; $5103: $9f
	dec  c                                           ; $5104: $0d
	nop                                              ; $5105: $00
	ld   a, [bc]                                     ; $5106: $0a
	ld   bc, $6d03                                   ; $5107: $01 $03 $6d
	dec  b                                           ; $510a: $05
	add  hl, de                                      ; $510b: $19
	ld   a, b                                        ; $510c: $78
	and  c                                           ; $510d: $a1
	ld   e, c                                        ; $510e: $59
	ld   h, l                                        ; $510f: $65
	ld   [hl], h                                     ; $5110: $74
	inc  b                                           ; $5111: $04
	ld   c, $03                                      ; $5112: $0e $03
	sbc  l                                           ; $5114: $9d
	inc  b                                           ; $5115: $04
	and  [hl]                                        ; $5116: $a6
	ld   a, b                                        ; $5117: $78
	ld   a, h                                        ; $5118: $7c
	ld   e, c                                        ; $5119: $59
	ld   sp, hl                                      ; $511a: $f9
	dec  c                                           ; $511b: $0d
	nop                                              ; $511c: $00
	ld   a, [bc]                                     ; $511d: $0a
	rlca                                             ; $511e: $07
	adc  $03                                         ; $511f: $ce $03
	ld   [bc], a                                     ; $5121: $02
	nop                                              ; $5122: $00
	ld   bc, $2007                                   ; $5123: $01 $07 $20
	ld   [bc], a                                     ; $5126: $02
	nop                                              ; $5127: $00
	ld   bc, $200e                                   ; $5128: $01 $0e $20
	dec  de                                          ; $512b: $1b
	ld   [bc], a                                     ; $512c: $02
	nop                                              ; $512d: $00
	ld   bc, $2015                                   ; $512e: $01 $15 $20
	dec  de                                          ; $5131: $1b
	ld   [bc], a                                     ; $5132: $02
	nop                                              ; $5133: $00
	ld   bc, $201c                                   ; $5134: $01 $1c $20
	dec  de                                          ; $5137: $1b
	nop                                              ; $5138: $00
	jr   jr_045_513d                                 ; $5139: $18 $02

	nop                                              ; $513b: $00
	inc  bc                                          ; $513c: $03

jr_045_513d:
	and  a                                           ; $513d: $a7
	adc  [hl]                                        ; $513e: $8e
	nop                                              ; $513f: $00
	nop                                              ; $5140: $00
	ld   e, d                                        ; $5141: $5a
	and  c                                           ; $5142: $a1
	ld   a, [hl]                                     ; $5143: $7e
	sbc  c                                           ; $5144: $99
	nop                                              ; $5145: $00
	ld   bc, $2407                                   ; $5146: $01 $07 $24
	ld   [bc], a                                     ; $5149: $02
	ld   [bc], a                                     ; $514a: $02
	ld   [bc], a                                     ; $514b: $02
	ld   bc, $2000                                   ; $514c: $01 $00 $20
	nop                                              ; $514f: $00
	rlca                                             ; $5150: $07
	ldh  a, [c]                                      ; $5151: $f2
	ld   [bc], a                                     ; $5152: $02
	ld   [bc], a                                     ; $5153: $02
	ld   [bc], a                                     ; $5154: $02
	ld   bc, $2001                                   ; $5155: $01 $01 $20
	nop                                              ; $5158: $00
	rrca                                             ; $5159: $0f
	nop                                              ; $515a: $00
	ld   bc, $6701                                   ; $515b: $01 $01 $67
	adc  l                                           ; $515e: $8d
	adc  h                                           ; $515f: $8c
	ld   l, c                                        ; $5160: $69
	and  c                                           ; $5161: $a1
	rst  $38                                         ; $5162: $ff
	rst  $38                                         ; $5163: $ff
	dec  c                                           ; $5164: $0d
	ld   l, e                                        ; $5165: $6b
	sbc  d                                           ; $5166: $9a
	ld   [hl], l                                     ; $5167: $75
	ld   a, l                                        ; $5168: $7d
	sbc  [hl]                                        ; $5169: $9e
	ld   [bc], a                                     ; $516a: $02
	and  l                                           ; $516b: $a5
	inc  b                                           ; $516c: $04
	xor  d                                           ; $516d: $aa
	ld   a, h                                        ; $516e: $7c
	inc  bc                                          ; $516f: $03
	ld   l, l                                        ; $5170: $6d
	dec  b                                           ; $5171: $05
	add  hl, de                                      ; $5172: $19
	ld   a, l                                        ; $5173: $7d
	dec  c                                           ; $5174: $0d
	inc  bc                                          ; $5175: $03
	and  a                                           ; $5176: $a7
	adc  h                                           ; $5177: $8c
	ld   l, c                                        ; $5178: $69
	ld   [hl], h                                     ; $5179: $74
	ld   d, d                                        ; $517a: $52
	ld   l, l                                        ; $517b: $6d
	ld   l, [hl]                                     ; $517c: $6e
	ld   e, e                                        ; $517d: $5b
	adc  h                                           ; $517e: $8c
	ld   h, a                                        ; $517f: $67
	sbc  a                                           ; $5180: $9f
	dec  c                                           ; $5181: $0d
	nop                                              ; $5182: $00
	ld   a, [bc]                                     ; $5183: $0a
	inc  e                                           ; $5184: $1c
	ld   b, $00                                      ; $5185: $06 $00
	nop                                              ; $5187: $00
	ld   bc, $9598                                   ; $5188: $01 $98 $95
	ld   d, h                                        ; $518b: $54
	ld   e, c                                        ; $518c: $59
	ld   d, d                                        ; $518d: $52
	sbc  a                                           ; $518e: $9f
	dec  c                                           ; $518f: $0d
	ld   l, e                                        ; $5190: $6b
	and  c                                           ; $5191: $a1
	ld   h, [hl]                                     ; $5192: $66
	sub  c                                           ; $5193: $91
	sbc  [hl]                                        ; $5194: $9e
	ld   [bc], a                                     ; $5195: $02
	and  l                                           ; $5196: $a5
	inc  b                                           ; $5197: $04
	xor  d                                           ; $5198: $aa
	ld   a, h                                        ; $5199: $7c
	inc  bc                                          ; $519a: $03
	ld   l, l                                        ; $519b: $6d
	dec  b                                           ; $519c: $05
	add  hl, de                                      ; $519d: $19
	ld   a, l                                        ; $519e: $7d
	dec  c                                           ; $519f: $0d
	inc  bc                                          ; $51a0: $03
	and  a                                           ; $51a1: $a7
	adc  l                                           ; $51a2: $8d
	ld   [hl], c                                     ; $51a3: $71
	ld   [hl], h                                     ; $51a4: $74
	ld   h, c                                        ; $51a5: $61
	halt                                             ; $51a6: $76
	ld   a, c                                        ; $51a7: $79
	ld   h, l                                        ; $51a8: $65
	halt                                             ; $51a9: $76
	ld   e, l                                        ; $51aa: $5d
	ld   l, d                                        ; $51ab: $6a
	sbc  a                                           ; $51ac: $9f
	dec  c                                           ; $51ad: $0d
	nop                                              ; $51ae: $00
	ld   a, [bc]                                     ; $51af: $0a
	inc  e                                           ; $51b0: $1c
	ld   b, $07                                      ; $51b1: $06 $07
	rlca                                             ; $51b3: $07
	ld   bc, $916f                                   ; $51b4: $01 $6f $91
	and  c                                           ; $51b7: $a1
	halt                                             ; $51b8: $76
	inc  bc                                          ; $51b9: $03
	and  a                                           ; $51ba: $a7
	and  c                                           ; $51bb: $a1
	ld   [hl], l                                     ; $51bc: $75
	sbc  [hl]                                        ; $51bd: $9e
	dec  c                                           ; $51be: $0d
	ld   h, l                                        ; $51bf: $65
	ld   [hl], c                                     ; $51c0: $71
	ld   e, c                                        ; $51c1: $59
	sbc  b                                           ; $51c2: $98
	ld   a, b                                        ; $51c3: $78
	ld   e, b                                        ; $51c4: $58
	ld   l, c                                        ; $51c5: $69
	sub  [hl]                                        ; $51c6: $96
	sbc  a                                           ; $51c7: $9f
	dec  c                                           ; $51c8: $0d
	nop                                              ; $51c9: $00
	ld   a, [bc]                                     ; $51ca: $0a
	rrca                                             ; $51cb: $0f
	nop                                              ; $51cc: $00
	ld   bc, $7d01                                   ; $51cd: $01 $01 $7d
	ld   d, d                                        ; $51d0: $52
	sbc  [hl]                                        ; $51d1: $9e
	sbc  l                                           ; $51d2: $9d
	ld   e, c                                        ; $51d3: $59
	sbc  b                                           ; $51d4: $98
	adc  h                                           ; $51d5: $8c
	ld   h, l                                        ; $51d6: $65
	ld   l, l                                        ; $51d7: $6d
	sbc  a                                           ; $51d8: $9f
	dec  c                                           ; $51d9: $0d
	ld   l, e                                        ; $51da: $6b
	sbc  d                                           ; $51db: $9a
	ld   [hl], l                                     ; $51dc: $75
	ld   a, l                                        ; $51dd: $7d
	inc  bc                                          ; $51de: $03
	add  e                                           ; $51df: $83
	dec  b                                           ; $51e0: $05
	dec  c                                           ; $51e1: $0d
	ld   h, l                                        ; $51e2: $65
	adc  h                                           ; $51e3: $8c
	ld   h, a                                        ; $51e4: $67
	sbc  a                                           ; $51e5: $9f
	dec  c                                           ; $51e6: $0d
	nop                                              ; $51e7: $00
	ld   a, [bc]                                     ; $51e8: $0a
	dec  c                                           ; $51e9: $0d
	nop                                              ; $51ea: $00
	nop                                              ; $51eb: $00
	inc  hl                                          ; $51ec: $23
	ld   bc, $6b01                                   ; $51ed: $01 $01 $6b
	sbc  d                                           ; $51f0: $9a
	ld   h, [hl]                                     ; $51f1: $66
	sub  c                                           ; $51f2: $91
	sbc  [hl]                                        ; $51f3: $9e
	inc  bc                                          ; $51f4: $03
	ld   l, h                                        ; $51f5: $6c
	ld   h, l                                        ; $51f6: $65
	inc  bc                                          ; $51f7: $03
	and  a                                           ; $51f8: $a7
	adc  [hl]                                        ; $51f9: $8e
	halt                                             ; $51fa: $76
	ld   h, a                                        ; $51fb: $67
	sbc  c                                           ; $51fc: $99
	ld   e, c                                        ; $51fd: $59
	sbc  a                                           ; $51fe: $9f
	dec  c                                           ; $51ff: $0d
	nop                                              ; $5200: $00
	ld   a, [bc]                                     ; $5201: $0a
	dec  h                                           ; $5202: $25
	nop                                              ; $5203: $00
	rrca                                             ; $5204: $0f
	nop                                              ; $5205: $00
	ld   bc, $5401                                   ; $5206: $01 $01 $54
	db   $fc                                         ; $5209: $fc
	and  c                                           ; $520a: $a1
	sub  [hl]                                        ; $520b: $96
	ld   e, l                                        ; $520c: $5d
	inc  b                                           ; $520d: $04
	ld   b, d                                        ; $520e: $42
	ld   l, l                                        ; $520f: $6d
	rst  $38                                         ; $5210: $ff
	rst  $38                                         ; $5211: $ff
	dec  c                                           ; $5212: $0d
	ld   e, c                                        ; $5213: $59
	ld   a, b                                        ; $5214: $78
	sbc  b                                           ; $5215: $98
	inc  b                                           ; $5216: $04
	dec  c                                           ; $5217: $0d
	ld   e, d                                        ; $5218: $5a
	dec  b                                           ; $5219: $05
	inc  de                                          ; $521a: $13
	ld   a, c                                        ; $521b: $79
	ld   a, b                                        ; $521c: $78
	ld   [hl], c                                     ; $521d: $71
	ld   l, l                                        ; $521e: $6d
	ld   l, h                                        ; $521f: $6c
	sbc  a                                           ; $5220: $9f
	dec  c                                           ; $5221: $0d
	nop                                              ; $5222: $00
	ld   a, [bc]                                     ; $5223: $0a
	add  hl, hl                                      ; $5224: $29
	dec  b                                           ; $5225: $05
	nop                                              ; $5226: $00
	rrca                                             ; $5227: $0f
	nop                                              ; $5228: $00
	ld   bc, $5201                                   ; $5229: $01 $01 $52
	ld   d, [hl]                                     ; $522c: $56
	sbc  [hl]                                        ; $522d: $9e
	inc  b                                           ; $522e: $04
	ld   c, $03                                      ; $522f: $0e $03
	sbc  l                                           ; $5231: $9d
	inc  b                                           ; $5232: $04
	and  [hl]                                        ; $5233: $a6
	ld   [hl], l                                     ; $5234: $75
	ld   h, a                                        ; $5235: $67
	sbc  a                                           ; $5236: $9f
	dec  c                                           ; $5237: $0d
	ld   e, d                                        ; $5238: $5a
	and  c                                           ; $5239: $a1
	ld   a, [hl]                                     ; $523a: $7e
	sbc  b                                           ; $523b: $98
	adc  h                                           ; $523c: $8c
	ld   h, a                                        ; $523d: $67
	ld   a, [$000d]                                  ; $523e: $fa $0d $00
	ld   a, [bc]                                     ; $5241: $0a
	rlca                                             ; $5242: $07
	pop  af                                          ; $5243: $f1
	inc  b                                           ; $5244: $04
	inc  bc                                          ; $5245: $03
	ld   b, a                                        ; $5246: $47
	ld   bc, $2000                                   ; $5247: $01 $00 $20
	nop                                              ; $524a: $00
	rrca                                             ; $524b: $0f
	ld   b, $05                                      ; $524c: $06 $05
	ld   bc, $546b                                   ; $524e: $01 $6b $54
	ld   e, c                                        ; $5251: $59
	rst  $38                                         ; $5252: $ff
	rst  $38                                         ; $5253: $ff
	dec  c                                           ; $5254: $0d
	ld   l, e                                        ; $5255: $6b
	and  c                                           ; $5256: $a1
	ld   h, [hl]                                     ; $5257: $66
	sub  c                                           ; $5258: $91
	sbc  [hl]                                        ; $5259: $9e
	inc  bc                                          ; $525a: $03
	ld   l, l                                        ; $525b: $6d
	dec  b                                           ; $525c: $05
	add  hl, de                                      ; $525d: $19
	dec  b                                           ; $525e: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $525f: $cf
	adc  a                                           ; $5260: $8f
	sbc  c                                           ; $5261: $99
	ld   l, d                                        ; $5262: $6a
	ld   a, [$000d]                                  ; $5263: $fa $0d $00
	ld   a, [bc]                                     ; $5266: $0a
	dec  h                                           ; $5267: $25
	ld   b, $05                                      ; $5268: $06 $05
	ld   b, b                                        ; $526a: $40
	ld   b, a                                        ; $526b: $47
	inc  bc                                          ; $526c: $03
	ld   b, a                                        ; $526d: $47
	ld   bc, $2801                                   ; $526e: $01 $01 $28
	nop                                              ; $5271: $00
	inc  e                                           ; $5272: $1c
	ld   b, $05                                      ; $5273: $06 $05
	dec  b                                           ; $5275: $05

Jump_045_5276:
	ld   bc, $0458                                   ; $5276: $01 $58 $04
	ld   a, e                                        ; $5279: $7b
	sbc  d                                           ; $527a: $9a
	ld   h, e                                        ; $527b: $63
	and  c                                           ; $527c: $a1
	sbc  a                                           ; $527d: $9f
	dec  c                                           ; $527e: $0d
	ld   a, b                                        ; $527f: $78
	ld   d, b                                        ; $5280: $50
	rst  $38                                         ; $5281: $ff
	rst  $38                                         ; $5282: $ff
	call c, $c9f5                                    ; $5283: $dc $f5 $c9
	ld   a, c                                        ; $5286: $79
	inc  bc                                          ; $5287: $03
	and  a                                           ; $5288: $a7
	and  c                                           ; $5289: $a1
	ld   l, [hl]                                     ; $528a: $6e
	adc  c                                           ; $528b: $89
	ld   d, h                                        ; $528c: $54
	ld   e, d                                        ; $528d: $5a
	dec  c                                           ; $528e: $0d
	ld   d, d                                        ; $528f: $52
	ld   d, d                                        ; $5290: $52
	halt                                             ; $5291: $76
	dec  b                                           ; $5292: $05
	pop  de                                          ; $5293: $d1
	ld   d, h                                        ; $5294: $54
	ld   l, d                                        ; $5295: $6a
	sbc  a                                           ; $5296: $9f
	dec  c                                           ; $5297: $0d
	nop                                              ; $5298: $00
	ld   a, [bc]                                     ; $5299: $0a
	rlca                                             ; $529a: $07
	sbc  h                                           ; $529b: $9c
	inc  bc                                          ; $529c: $03
	inc  bc                                          ; $529d: $03
	jr   nz, jr_045_52a1                             ; $529e: $20 $01

	nop                                              ; $52a0: $00

jr_045_52a1:
	jr   nz, jr_045_52a3                             ; $52a1: $20 $00

jr_045_52a3:
	inc  e                                           ; $52a3: $1c
	ld   b, $07                                      ; $52a4: $06 $07
	rlca                                             ; $52a6: $07
	ld   bc, $9a6b                                   ; $52a7: $01 $6b $9a
	ld   h, [hl]                                     ; $52aa: $66
	sub  c                                           ; $52ab: $91
	sbc  [hl]                                        ; $52ac: $9e
	inc  b                                           ; $52ad: $04
	adc  a                                           ; $52ae: $8f
	inc  b                                           ; $52af: $04
	xor  d                                           ; $52b0: $aa
	ld   a, h                                        ; $52b1: $7c
	ld   [bc], a                                     ; $52b2: $02
	or   d                                           ; $52b3: $b2
	inc  bc                                          ; $52b4: $03
	ld   c, a                                        ; $52b5: $4f
	ld   a, h                                        ; $52b6: $7c
	inc  bc                                          ; $52b7: $03
	ld   l, l                                        ; $52b8: $6d
	dec  b                                           ; $52b9: $05
	add  hl, de                                      ; $52ba: $19
	dec  c                                           ; $52bb: $0d
	ld   h, c                                        ; $52bc: $61
	sbc  d                                           ; $52bd: $9a
	ld   a, c                                        ; $52be: $79
	ld   [hl], h                                     ; $52bf: $74
	inc  bc                                          ; $52c0: $03
	ld   a, [hl]                                     ; $52c1: $7e
	dec  b                                           ; $52c2: $05
	nop                                              ; $52c3: $00
	ld   a, [$000d]                                  ; $52c4: $fa $0d $00
	ld   a, [bc]                                     ; $52c7: $0a
	rrca                                             ; $52c8: $0f
	nop                                              ; $52c9: $00
	ld   bc, $000d                                   ; $52ca: $01 $0d $00
	nop                                              ; $52cd: $00
	add  hl, bc                                      ; $52ce: $09
	ld   e, $00                                      ; $52cf: $1e $00
	rrca                                             ; $52d1: $0f
	nop                                              ; $52d2: $00
	ld   bc, $7d01                                   ; $52d3: $01 $01 $7d
	ld   d, d                                        ; $52d6: $52
	sbc  [hl]                                        ; $52d7: $9e
	sbc  l                                           ; $52d8: $9d
	ld   e, c                                        ; $52d9: $59
	rst  $38                                         ; $52da: $ff
	sbc  b                                           ; $52db: $98
	rst  $38                                         ; $52dc: $ff
	rst  $38                                         ; $52dd: $ff
	adc  h                                           ; $52de: $8c
	rst  $38                                         ; $52df: $ff
	rst  $38                                         ; $52e0: $ff
	dec  c                                           ; $52e1: $0d
	nop                                              ; $52e2: $00
	dec  c                                           ; $52e3: $0d
	nop                                              ; $52e4: $00
	nop                                              ; $52e5: $00
	inc  c                                           ; $52e6: $0c
	ld   [bc], a                                     ; $52e7: $02
	ld   c, $03                                      ; $52e8: $0e $03
	ld   bc, $9a50                                   ; $52ea: $01 $50 $9a
	rst  $38                                         ; $52ed: $ff
	rst  $38                                         ; $52ee: $ff
	rst  $38                                         ; $52ef: $ff
	ld   sp, hl                                      ; $52f0: $f9
	dec  c                                           ; $52f1: $0d
	ld   e, c                                        ; $52f2: $59
	sub  a                                           ; $52f3: $97
	rst  $38                                         ; $52f4: $ff
	rst  $38                                         ; $52f5: $ff
	ld   l, [hl]                                     ; $52f6: $6e
	rst  $38                                         ; $52f7: $ff
	rst  $38                                         ; $52f8: $ff
	ld   e, d                                        ; $52f9: $5a
	rst  $38                                         ; $52fa: $ff
	rst  $38                                         ; $52fb: $ff
	dec  c                                           ; $52fc: $0d
	nop                                              ; $52fd: $00
	ld   a, [bc]                                     ; $52fe: $0a
	ld   l, $01                                      ; $52ff: $2e $01
	nop                                              ; $5301: $00
	nop                                              ; $5302: $00
	ld   bc, $a502                                   ; $5303: $01 $02 $a5
	inc  b                                           ; $5306: $04
	xor  d                                           ; $5307: $aa
	ld   a, l                                        ; $5308: $7d
	ld   [bc], a                                     ; $5309: $02
	or   d                                           ; $530a: $b2
	ld   [bc], a                                     ; $530b: $02
	xor  d                                           ; $530c: $aa
	ld   e, c                                        ; $530d: $59
	sub  a                                           ; $530e: $97
	inc  bc                                          ; $530f: $03
	inc  h                                           ; $5310: $24
	ld   [bc], a                                     ; $5311: $02
	sub  [hl]                                        ; $5312: $96
	sub  b                                           ; $5313: $90
	ld   d, b                                        ; $5314: $50
	sbc  c                                           ; $5315: $99
	ld   h, l                                        ; $5316: $65
	sbc  [hl]                                        ; $5317: $9e
	dec  c                                           ; $5318: $0d
	inc  bc                                          ; $5319: $03
	and  a                                           ; $531a: $a7
	and  c                                           ; $531b: $a1
	ld   l, [hl]                                     ; $531c: $6e
	inc  b                                           ; $531d: $04
	ld   a, b                                        ; $531e: $78
	ld   e, d                                        ; $531f: $5a
	ld   d, d                                        ; $5320: $52
	ld   d, d                                        ; $5321: $52
	ld   l, d                                        ; $5322: $6a
	sbc  a                                           ; $5323: $9f
	dec  c                                           ; $5324: $0d
	nop                                              ; $5325: $00
	ld   a, [bc]                                     ; $5326: $0a
	ld   b, $24                                      ; $5327: $06 $24
	ld   [bc], a                                     ; $5329: $02
	dec  b                                           ; $532a: $05
	ld   b, b                                        ; $532b: $40
	ld   b, a                                        ; $532c: $47
	inc  bc                                          ; $532d: $03
	ld   b, a                                        ; $532e: $47
	ld   bc, $2801                                   ; $532f: $01 $01 $28
	nop                                              ; $5332: $00
	inc  e                                           ; $5333: $1c
	ld   b, $00                                      ; $5334: $06 $00
	nop                                              ; $5336: $00
	ld   bc, $0458                                   ; $5337: $01 $58 $04
	ld   a, e                                        ; $533a: $7b
	sbc  d                                           ; $533b: $9a
	ld   h, e                                        ; $533c: $63
	and  c                                           ; $533d: $a1
	rst  $38                                         ; $533e: $ff
	rst  $38                                         ; $533f: $ff
	dec  c                                           ; $5340: $0d
	nop                                              ; $5341: $00
	inc  e                                           ; $5342: $1c
	ld   b, $03                                      ; $5343: $06 $03
	inc  bc                                          ; $5345: $03
	ld   bc, $9a50                                   ; $5346: $01 $50 $9a
	ld   sp, hl                                      ; $5349: $f9
	db   $10                                         ; $534a: $10
	ld   [hl], a                                     ; $534b: $77
	ld   d, h                                        ; $534c: $54
	ld   h, l                                        ; $534d: $65
	ld   l, l                                        ; $534e: $6d
	ld   sp, hl                                      ; $534f: $f9
	dec  c                                           ; $5350: $0d
	ld   [bc], a                                     ; $5351: $02
	ld   [hl], d                                     ; $5352: $72
	ld   e, d                                        ; $5353: $5a
	inc  bc                                          ; $5354: $03
	xor  l                                           ; $5355: $ad
	ld   [hl], c                                     ; $5356: $71
	inc  bc                                          ; $5357: $03
	ld   a, [bc]                                     ; $5358: $0a
	ld   l, [hl]                                     ; $5359: $6e
	ld   l, d                                        ; $535a: $6a
	sbc  a                                           ; $535b: $9f
	dec  c                                           ; $535c: $0d
	nop                                              ; $535d: $00
	ld   a, [bc]                                     ; $535e: $0a
	rrca                                             ; $535f: $0f
	nop                                              ; $5360: $00
	ld   bc, $5601                                   ; $5361: $01 $01 $56
	ld   d, [hl]                                     ; $5364: $56
	rst  $38                                         ; $5365: $ff
	rst  $38                                         ; $5366: $ff
	ld   a, b                                        ; $5367: $78
	and  c                                           ; $5368: $a1
	ld   l, [hl]                                     ; $5369: $6e
	ld   e, c                                        ; $536a: $59
	ld   h, e                                        ; $536b: $63
	ld   [hl], c                                     ; $536c: $71
	ld   e, e                                        ; $536d: $5b
	ld   e, c                                        ; $536e: $59
	sub  a                                           ; $536f: $97
	dec  c                                           ; $5370: $0d
	inc  b                                           ; $5371: $04
	dec  c                                           ; $5372: $0d
	ld   e, d                                        ; $5373: $5a
	ld   l, [hl]                                     ; $5374: $6e
	sbc  c                                           ; $5375: $99
	ld   e, l                                        ; $5376: $5d
	ld   [hl], h                                     ; $5377: $74
	rst  $38                                         ; $5378: $ff
	rst  $38                                         ; $5379: $ff
	dec  c                                           ; $537a: $0d
	nop                                              ; $537b: $00
	ld   a, [bc]                                     ; $537c: $0a
	inc  e                                           ; $537d: $1c
	ld   b, $05                                      ; $537e: $06 $05
	dec  b                                           ; $5380: $05
	ld   bc, $5258                                   ; $5381: $01 $58 $52
	ld   e, b                                        ; $5384: $58
	ld   d, d                                        ; $5385: $52
	rst  $38                                         ; $5386: $ff
	rst  $38                                         ; $5387: $ff
	dec  c                                           ; $5388: $0d
	ld   h, l                                        ; $5389: $65
	ld   [hl], c                                     ; $538a: $71
	ld   e, c                                        ; $538b: $59
	sbc  b                                           ; $538c: $98
	ld   h, l                                        ; $538d: $65
	ld   [hl], h                                     ; $538e: $74
	ld   e, l                                        ; $538f: $5d
	sbc  d                                           ; $5390: $9a
	sub  [hl]                                        ; $5391: $96
	db   $fc                                         ; $5392: $fc
	sbc  a                                           ; $5393: $9f
	dec  c                                           ; $5394: $0d
	nop                                              ; $5395: $00
	ld   a, [bc]                                     ; $5396: $0a
	inc  e                                           ; $5397: $1c
	ld   b, $02                                      ; $5398: $06 $02
	ld   [bc], a                                     ; $539a: $02
	ld   bc, $7190                                   ; $539b: $01 $90 $71
	halt                                             ; $539e: $76
	cp   b                                           ; $539f: $b8
	push hl                                          ; $53a0: $e5
	xor  [hl]                                        ; $53a1: $ae
	ld   [hl], c                                     ; $53a2: $71
	halt                                             ; $53a3: $76
	dec  c                                           ; $53a4: $0d
	ld   [bc], a                                     ; $53a5: $02
	and  c                                           ; $53a6: $a1
	ld   [bc], a                                     ; $53a7: $02
	ld   a, e                                        ; $53a8: $7b
	ld   d, d                                        ; $53a9: $52
	inc  b                                           ; $53aa: $04
	ld   b, l                                        ; $53ab: $45
	sbc  d                                           ; $53ac: $9a
	sbc  e                                           ; $53ad: $9b
	ld   a, [$0dfa]                                  ; $53ae: $fa $fa $0d
	nop                                              ; $53b1: $00
	ld   a, [bc]                                     ; $53b2: $0a
	rrca                                             ; $53b3: $0f
	nop                                              ; $53b4: $00
	ld   bc, $7d01                                   ; $53b5: $01 $01 $7d
	rst  $38                                         ; $53b8: $ff
	rst  $38                                         ; $53b9: $ff
	ld   a, l                                        ; $53ba: $7d
	ld   d, d                                        ; $53bb: $52
	ld   [hl], c                                     ; $53bc: $71
	ld   a, [$0dfa]                                  ; $53bd: $fa $fa $0d
	ld   e, d                                        ; $53c0: $5a
	and  c                                           ; $53c1: $a1
	ld   a, [hl]                                     ; $53c2: $7e
	sbc  b                                           ; $53c3: $98
	adc  h                                           ; $53c4: $8c
	ld   h, a                                        ; $53c5: $67
	ld   a, [$0dfa]                                  ; $53c6: $fa $fa $0d
	nop                                              ; $53c9: $00
	ld   a, [bc]                                     ; $53ca: $0a
	inc  d                                           ; $53cb: $14
	ld   de, $0101                                   ; $53cc: $11 $01 $01
	ld   bc, $0411                                   ; $53cf: $01 $11 $04
	dec  c                                           ; $53d2: $0d
	dec  b                                           ; $53d3: $05
	ld   a, [bc]                                     ; $53d4: $0a
	ld   e, d                                        ; $53d5: $5a
	inc  bc                                          ; $53d6: $03
	ld   l, h                                        ; $53d7: $6c
	ld   h, l                                        ; $53d8: $65
	ld   [bc], a                                     ; $53d9: $02
	sub  e                                           ; $53da: $93
	inc  b                                           ; $53db: $04
	ld   a, h                                        ; $53dc: $7c
	ld   h, l                                        ; $53dd: $65
	ld   l, l                                        ; $53de: $6d
	ld   a, [$01fa]                                  ; $53df: $fa $fa $01
	ld   [de], a                                     ; $53e2: $12
	dec  c                                           ; $53e3: $0d
	nop                                              ; $53e4: $00
	ld   a, [bc]                                     ; $53e5: $0a
	ld   sp, $2040                                   ; $53e6: $31 $40 $20
	ld   bc, $0001                                   ; $53e9: $01 $01 $00
	inc  e                                           ; $53ec: $1c
	ld   b, $07                                      ; $53ed: $06 $07
	rlca                                             ; $53ef: $07
	ld   bc, $6596                                   ; $53f0: $01 $96 $65
	sbc  [hl]                                        ; $53f3: $9e
	ld   l, e                                        ; $53f4: $6b
	ld   a, h                                        ; $53f5: $7c
	ld   [bc], a                                     ; $53f6: $02
	ld   b, $02                                      ; $53f7: $06 $02
	and  c                                           ; $53f9: $a1
	ld   l, [hl]                                     ; $53fa: $6e
	ld   a, [$0dfa]                                  ; $53fb: $fa $fa $0d
	ld   [bc], a                                     ; $53fe: $02
	and  l                                           ; $53ff: $a5
	inc  b                                           ; $5400: $04
	xor  d                                           ; $5401: $aa
	ld   a, l                                        ; $5402: $7d
	ld   [bc], a                                     ; $5403: $02
	or   d                                           ; $5404: $b2
	ld   [bc], a                                     ; $5405: $02
	xor  d                                           ; $5406: $aa
	ld   e, c                                        ; $5407: $59
	sub  a                                           ; $5408: $97
	inc  bc                                          ; $5409: $03
	inc  h                                           ; $540a: $24
	ld   [bc], a                                     ; $540b: $02
	sub  [hl]                                        ; $540c: $96
	sub  b                                           ; $540d: $90
	ld   d, b                                        ; $540e: $50
	sbc  c                                           ; $540f: $99
	ld   h, l                                        ; $5410: $65
	sbc  [hl]                                        ; $5411: $9e
	dec  c                                           ; $5412: $0d
	ld   l, e                                        ; $5413: $6b
	ld   a, h                                        ; $5414: $7c
	ld   [bc], a                                     ; $5415: $02
	and  c                                           ; $5416: $a1
	ld   [bc], a                                     ; $5417: $02
	ld   a, e                                        ; $5418: $7b
	ld   d, d                                        ; $5419: $52
	ld   [hl], l                                     ; $541a: $75
	xor  l                                           ; $541b: $ad
	push af                                          ; $541c: $f5
	pop  de                                          ; $541d: $d1
	xor  $96                                         ; $541e: $ee $96
	ld   a, [$0dfa]                                  ; $5420: $fa $fa $0d
	nop                                              ; $5423: $00
	ld   a, [bc]                                     ; $5424: $0a
	nop                                              ; $5425: $00
	rrca                                             ; $5426: $0f
	ld   b, $05                                      ; $5427: $06 $05
	ld   bc, $546b                                   ; $5429: $01 $6b $54
	ld   e, c                                        ; $542c: $59
	rst  $38                                         ; $542d: $ff
	rst  $38                                         ; $542e: $ff
	dec  c                                           ; $542f: $0d
	nop                                              ; $5430: $00
	inc  e                                           ; $5431: $1c
	ld   b, $00                                      ; $5432: $06 $00
	nop                                              ; $5434: $00
	ld   bc, $6596                                   ; $5435: $01 $96 $65
	ld   a, [$000d]                                  ; $5438: $fa $0d $00
	ld   a, [bc]                                     ; $543b: $0a
	ld   bc, $6d50                                   ; $543c: $01 $50 $6d
	ld   d, d                                        ; $543f: $52
	ld   a, h                                        ; $5440: $7c
	inc  bc                                          ; $5441: $03
	ld   l, l                                        ; $5442: $6d
	dec  b                                           ; $5443: $05
	add  hl, de                                      ; $5444: $19
	ld   a, l                                        ; $5445: $7d
	sbc  [hl]                                        ; $5446: $9e
	dec  c                                           ; $5447: $0d
	ld   [bc], a                                     ; $5448: $02
	ld   l, e                                        ; $5449: $6b
	dec  b                                           ; $544a: $05
	ld   a, [bc]                                     ; $544b: $0a
	ret                                              ; $544c: $c9


	xor  $fb                                         ; $544d: $ee $fb
	call z, $b1f5                                    ; $544f: $cc $f5 $b1
	ld   l, [hl]                                     ; $5452: $6e
	sbc  a                                           ; $5453: $9f
	dec  c                                           ; $5454: $0d
	ld   l, a                                        ; $5455: $6f
	sub  l                                           ; $5456: $95
	ld   [hl], c                                     ; $5457: $71
	halt                                             ; $5458: $76
	xor  [hl]                                        ; $5459: $ae
	push bc                                          ; $545a: $c5
	and  l                                           ; $545b: $a5
	ld   l, h                                        ; $545c: $6c
	sbc  a                                           ; $545d: $9f
	dec  c                                           ; $545e: $0d
	nop                                              ; $545f: $00
	ld   a, [bc]                                     ; $5460: $0a
	ld   bc, $7c61                                   ; $5461: $01 $61 $7c
	inc  bc                                          ; $5464: $03
	ld   l, l                                        ; $5465: $6d
	dec  b                                           ; $5466: $05
	add  hl, de                                      ; $5467: $19
	ld   [hl], l                                     ; $5468: $75
	sbc  [hl]                                        ; $5469: $9e
	pop  de                                          ; $546a: $d1
	call nz, $ecc2                                   ; $546b: $c4 $c2 $ec
	dec  b                                           ; $546e: $05
	xor  c                                           ; $546f: $a9
	ld   b, $82                                      ; $5470: $06 $82
	inc  b                                           ; $5472: $04
	dec  c                                           ; $5473: $0d
	dec  b                                           ; $5474: $05
	ld   a, [bc]                                     ; $5475: $0a
	dec  c                                           ; $5476: $0d
	and  b                                           ; $5477: $a0
	ld   [hl], d                                     ; $5478: $72
	ld   e, a                                        ; $5479: $5f
	ld   [hl], h                                     ; $547a: $74
	sub  b                                           ; $547b: $90
	sub  a                                           ; $547c: $97
	ld   d, h                                        ; $547d: $54
	ld   l, d                                        ; $547e: $6a
	sbc  a                                           ; $547f: $9f
	dec  c                                           ; $5480: $0d
	nop                                              ; $5481: $00
	ld   a, [bc]                                     ; $5482: $0a
	inc  e                                           ; $5483: $1c
	ld   b, $07                                      ; $5484: $06 $07
	rlca                                             ; $5486: $07
	ld   bc, $9a6b                                   ; $5487: $01 $6b $9a
	ld   h, [hl]                                     ; $548a: $66
	sub  c                                           ; $548b: $91
	sbc  [hl]                                        ; $548c: $9e
	dec  b                                           ; $548d: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $548e: $cf
	adc  a                                           ; $548f: $8f
	sbc  c                                           ; $5490: $99
	ld   l, h                                        ; $5491: $6c
	ld   a, [$0dfa]                                  ; $5492: $fa $fa $0d
	nop                                              ; $5495: $00
	ld   a, [bc]                                     ; $5496: $0a
	ld   b, $32                                      ; $5497: $06 $32
	inc  bc                                          ; $5499: $03
	inc  e                                           ; $549a: $1c
	ld   b, $00                                      ; $549b: $06 $00
	nop                                              ; $549d: $00
	ld   bc, $5896                                   ; $549e: $01 $96 $58
	sbc  [hl]                                        ; $54a1: $9e
	ld   [$9f00], sp                                 ; $54a2: $08 $00 $9f
	dec  c                                           ; $54a5: $0d
	ld   l, e                                        ; $54a6: $6b
	and  c                                           ; $54a7: $a1
	ld   h, [hl]                                     ; $54a8: $66
	sub  c                                           ; $54a9: $91
	sbc  [hl]                                        ; $54aa: $9e
	ld   h, e                                        ; $54ab: $63
	ld   [hl], c                                     ; $54ac: $71
	ld   l, e                                        ; $54ad: $6b
	ld   e, l                                        ; $54ae: $5d
	inc  bc                                          ; $54af: $03
	ld   l, l                                        ; $54b0: $6d
	dec  b                                           ; $54b1: $05
	add  hl, de                                      ; $54b2: $19
	dec  c                                           ; $54b3: $0d
	dec  b                                           ; $54b4: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $54b5: $cf
	adc  a                                           ; $54b6: $8f
	sbc  c                                           ; $54b7: $99
	ld   l, d                                        ; $54b8: $6a
	ld   a, [$000d]                                  ; $54b9: $fa $0d $00
	ld   a, [bc]                                     ; $54bc: $0a
	dec  h                                           ; $54bd: $25
	ld   b, $07                                      ; $54be: $06 $07
	push af                                          ; $54c0: $f5
	inc  bc                                          ; $54c1: $03
	inc  bc                                          ; $54c2: $03
	jr   nz, jr_045_54c6                             ; $54c3: $20 $01

	nop                                              ; $54c5: $00

jr_045_54c6:
	jr   nz, jr_045_54c8                             ; $54c6: $20 $00

jr_045_54c8:
	inc  e                                           ; $54c8: $1c
	ld   b, $00                                      ; $54c9: $06 $00
	nop                                              ; $54cb: $00
	ld   bc, $0458                                   ; $54cc: $01 $58 $04
	ld   a, e                                        ; $54cf: $7b
	sbc  d                                           ; $54d0: $9a
	ld   h, e                                        ; $54d1: $63
	and  c                                           ; $54d2: $a1
	sbc  a                                           ; $54d3: $9f
	dec  c                                           ; $54d4: $0d
	nop                                              ; $54d5: $00
	dec  b                                           ; $54d6: $05
	ld   b, b                                        ; $54d7: $40
	ld   b, a                                        ; $54d8: $47
	inc  bc                                          ; $54d9: $03
	ld   b, a                                        ; $54da: $47
	ld   bc, $2801                                   ; $54db: $01 $01 $28
	nop                                              ; $54de: $00
	ld   bc, $0008                                   ; $54df: $01 $08 $00
	sbc  [hl]                                        ; $54e2: $9e
	db   $e3                                         ; $54e3: $e3
	cp   b                                           ; $54e4: $b8
	ld   l, [hl]                                     ; $54e5: $6e
	ld   e, a                                        ; $54e6: $5f
	ld   a, l                                        ; $54e7: $7d
	dec  c                                           ; $54e8: $0d
	ld   h, l                                        ; $54e9: $65
	ld   [hl], c                                     ; $54ea: $71
	ld   e, c                                        ; $54eb: $59
	sbc  b                                           ; $54ec: $98
	inc  bc                                          ; $54ed: $03
	ld   l, d                                        ; $54ee: $6a
	ld   d, [hl]                                     ; $54ef: $56
	sub  [hl]                                        ; $54f0: $96
	sbc  a                                           ; $54f1: $9f
	dec  c                                           ; $54f2: $0d
	nop                                              ; $54f3: $00
	ld   a, [bc]                                     ; $54f4: $0a
	ld   bc, $9a6b                                   ; $54f5: $01 $6b $9a
	ld   h, [hl]                                     ; $54f8: $66
	sub  c                                           ; $54f9: $91
	sbc  [hl]                                        ; $54fa: $9e
	inc  b                                           ; $54fb: $04
	adc  a                                           ; $54fc: $8f
	inc  b                                           ; $54fd: $04
	xor  d                                           ; $54fe: $aa
	ld   a, h                                        ; $54ff: $7c
	ld   [bc], a                                     ; $5500: $02
	or   d                                           ; $5501: $b2
	inc  bc                                          ; $5502: $03
	ld   c, a                                        ; $5503: $4f
	ld   a, h                                        ; $5504: $7c
	inc  bc                                          ; $5505: $03
	ld   l, l                                        ; $5506: $6d
	dec  b                                           ; $5507: $05
	add  hl, de                                      ; $5508: $19
	dec  c                                           ; $5509: $0d
	ld   h, c                                        ; $550a: $61
	sbc  d                                           ; $550b: $9a
	ld   a, c                                        ; $550c: $79
	ld   [hl], h                                     ; $550d: $74
	inc  bc                                          ; $550e: $03
	ld   a, [hl]                                     ; $550f: $7e
	dec  b                                           ; $5510: $05
	nop                                              ; $5511: $00
	ld   a, [$000d]                                  ; $5512: $fa $0d $00
	ld   a, [bc]                                     ; $5515: $0a
	dec  c                                           ; $5516: $0d
	nop                                              ; $5517: $00
	nop                                              ; $5518: $00
	rrca                                             ; $5519: $0f
	nop                                              ; $551a: $00
	ld   bc, $0700                                   ; $551b: $01 $00 $07
	sbc  a                                           ; $551e: $9f
	ld   b, $03                                      ; $551f: $06 $03
	ld   b, a                                        ; $5521: $47
	ld   bc, $2504                                   ; $5522: $01 $04 $25
	nop                                              ; $5525: $00
	inc  e                                           ; $5526: $1c
	ld   b, $00                                      ; $5527: $06 $00
	nop                                              ; $5529: $00
	ld   bc, $5896                                   ; $552a: $01 $96 $58
	sbc  [hl]                                        ; $552d: $9e
	ld   [$9f00], sp                                 ; $552e: $08 $00 $9f
	dec  c                                           ; $5531: $0d
	ld   [bc], a                                     ; $5532: $02
	and  l                                           ; $5533: $a5
	ld   [bc], a                                     ; $5534: $02
	sub  e                                           ; $5535: $93
	ld   e, c                                        ; $5536: $59
	sub  a                                           ; $5537: $97
	ld   a, l                                        ; $5538: $7d
	sbc  [hl]                                        ; $5539: $9e
	ld   [bc], a                                     ; $553a: $02
	or   [hl]                                        ; $553b: $b6
	inc  bc                                          ; $553c: $03
	ld   l, e                                        ; $553d: $6b
	ld   a, h                                        ; $553e: $7c
	ld   e, a                                        ; $553f: $5f
	ld   d, d                                        ; $5540: $52
	ld   h, c                                        ; $5541: $61
	ld   l, [hl]                                     ; $5542: $6e
	sbc  a                                           ; $5543: $9f
	dec  c                                           ; $5544: $0d
	nop                                              ; $5545: $00
	ld   a, [bc]                                     ; $5546: $0a
	ld   bc, $a16b                                   ; $5547: $01 $6b $a1
	ld   h, [hl]                                     ; $554a: $66
	sub  c                                           ; $554b: $91
	sbc  [hl]                                        ; $554c: $9e
	ld   h, e                                        ; $554d: $63
	ld   [hl], c                                     ; $554e: $71
	ld   l, e                                        ; $554f: $6b
	ld   e, l                                        ; $5550: $5d
	inc  bc                                          ; $5551: $03
	ld   l, l                                        ; $5552: $6d
	dec  b                                           ; $5553: $05
	add  hl, de                                      ; $5554: $19
	dec  c                                           ; $5555: $0d
	dec  b                                           ; $5556: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5557: $cf
	adc  a                                           ; $5558: $8f
	sbc  c                                           ; $5559: $99
	ld   l, d                                        ; $555a: $6a
	ld   a, [$000d]                                  ; $555b: $fa $0d $00
	ld   a, [bc]                                     ; $555e: $0a
	dec  h                                           ; $555f: $25
	ld   b, $07                                      ; $5560: $06 $07
	push af                                          ; $5562: $f5
	inc  bc                                          ; $5563: $03
	inc  bc                                          ; $5564: $03
	jr   nz, jr_045_5568                             ; $5565: $20 $01

	nop                                              ; $5567: $00

jr_045_5568:
	jr   nz, jr_045_556a                             ; $5568: $20 $00

jr_045_556a:
	inc  e                                           ; $556a: $1c
	ld   b, $00                                      ; $556b: $06 $00
	nop                                              ; $556d: $00
	ld   bc, $956f                                   ; $556e: $01 $6f $95
	ld   [hl], c                                     ; $5571: $71
	halt                                             ; $5572: $76
	jp   nc, $c2f5                                   ; $5573: $d2 $f5 $c2

	ld   e, d                                        ; $5576: $5a
	ld   [bc], a                                     ; $5577: $02
	ld   [hl], $52                                   ; $5578: $36 $52
	ld   e, a                                        ; $557a: $5f
	ld   [hl], a                                     ; $557b: $77
	sbc  [hl]                                        ; $557c: $9e
	dec  c                                           ; $557d: $0d
	inc  bc                                          ; $557e: $03
	inc  c                                           ; $557f: $0c
	inc  bc                                          ; $5580: $03
	ld   [hl], l                                     ; $5581: $75
	inc  bc                                          ; $5582: $03
	or   b                                           ; $5583: $b0
	ld   a, c                                        ; $5584: $79
	ld   h, l                                        ; $5585: $65
	ld   l, a                                        ; $5586: $6f
	sub  c                                           ; $5587: $91
	ld   d, b                                        ; $5588: $50
	sbc  [hl]                                        ; $5589: $9e
	adc  h                                           ; $558a: $8c
	ld   d, b                                        ; $558b: $50
	adc  h                                           ; $558c: $8c
	ld   d, b                                        ; $558d: $50
	ld   a, h                                        ; $558e: $7c
	dec  c                                           ; $558f: $0d
	inc  b                                           ; $5590: $04
	dec  c                                           ; $5591: $0d
	ld   h, e                                        ; $5592: $63
	ld   a, [hl]                                     ; $5593: $7e
	ld   e, e                                        ; $5594: $5b
	ld   l, [hl]                                     ; $5595: $6e
	ld   [hl], c                                     ; $5596: $71
	ld   l, l                                        ; $5597: $6d
	ld   l, d                                        ; $5598: $6a
	sbc  a                                           ; $5599: $9f
	dec  c                                           ; $559a: $0d
	nop                                              ; $559b: $00
	ld   a, [bc]                                     ; $559c: $0a
	inc  e                                           ; $559d: $1c
	ld   b, $01                                      ; $559e: $06 $01
	ld   bc, $6b01                                   ; $55a0: $01 $01 $6b
	sbc  d                                           ; $55a3: $9a
	ld   h, [hl]                                     ; $55a4: $66
	sub  c                                           ; $55a5: $91
	sbc  [hl]                                        ; $55a6: $9e
	inc  b                                           ; $55a7: $04
	adc  a                                           ; $55a8: $8f
	inc  b                                           ; $55a9: $04
	xor  d                                           ; $55aa: $aa
	ld   a, h                                        ; $55ab: $7c
	ld   [bc], a                                     ; $55ac: $02
	or   d                                           ; $55ad: $b2
	inc  bc                                          ; $55ae: $03
	ld   c, a                                        ; $55af: $4f
	ld   a, h                                        ; $55b0: $7c
	inc  bc                                          ; $55b1: $03
	ld   l, l                                        ; $55b2: $6d
	dec  b                                           ; $55b3: $05
	add  hl, de                                      ; $55b4: $19
	dec  c                                           ; $55b5: $0d
	nop                                              ; $55b6: $00
	dec  b                                           ; $55b7: $05
	ld   b, b                                        ; $55b8: $40
	ld   b, a                                        ; $55b9: $47
	inc  bc                                          ; $55ba: $03
	ld   b, a                                        ; $55bb: $47
	ld   bc, $2801                                   ; $55bc: $01 $01 $28
	nop                                              ; $55bf: $00
	ld   bc, $9a61                                   ; $55c0: $01 $61 $9a
	ld   a, c                                        ; $55c3: $79
	ld   [hl], h                                     ; $55c4: $74
	inc  bc                                          ; $55c5: $03
	ld   a, [hl]                                     ; $55c6: $7e
	dec  b                                           ; $55c7: $05
	nop                                              ; $55c8: $00
	ld   a, [$000d]                                  ; $55c9: $fa $0d $00
	ld   a, [bc]                                     ; $55cc: $0a
	dec  c                                           ; $55cd: $0d
	nop                                              ; $55ce: $00
	nop                                              ; $55cf: $00
	rrca                                             ; $55d0: $0f
	nop                                              ; $55d1: $00
	ld   bc, $1c00                                   ; $55d2: $01 $00 $1c
	ld   b, $00                                      ; $55d5: $06 $00
	nop                                              ; $55d7: $00
	ld   bc, $5896                                   ; $55d8: $01 $96 $58
	sbc  [hl]                                        ; $55db: $9e
	ld   [$9f00], sp                                 ; $55dc: $08 $00 $9f
	dec  c                                           ; $55df: $0d
	ld   l, e                                        ; $55e0: $6b
	and  c                                           ; $55e1: $a1
	ld   h, [hl]                                     ; $55e2: $66
	sub  c                                           ; $55e3: $91
	sbc  [hl]                                        ; $55e4: $9e
	ld   h, e                                        ; $55e5: $63
	ld   [hl], c                                     ; $55e6: $71
	ld   l, e                                        ; $55e7: $6b
	ld   e, l                                        ; $55e8: $5d
	inc  bc                                          ; $55e9: $03
	ld   l, l                                        ; $55ea: $6d
	dec  b                                           ; $55eb: $05
	add  hl, de                                      ; $55ec: $19
	dec  c                                           ; $55ed: $0d
	dec  b                                           ; $55ee: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $55ef: $cf
	adc  a                                           ; $55f0: $8f
	sbc  c                                           ; $55f1: $99
	ld   l, d                                        ; $55f2: $6a
	ld   a, [$000d]                                  ; $55f3: $fa $0d $00
	ld   a, [bc]                                     ; $55f6: $0a
	dec  h                                           ; $55f7: $25
	ld   b, $07                                      ; $55f8: $06 $07
	push af                                          ; $55fa: $f5
	inc  bc                                          ; $55fb: $03
	inc  bc                                          ; $55fc: $03
	jr   nz, jr_045_5600                             ; $55fd: $20 $01

	nop                                              ; $55ff: $00

jr_045_5600:
	jr   nz, jr_045_5602                             ; $5600: $20 $00

jr_045_5602:
	inc  e                                           ; $5602: $1c
	ld   b, $00                                      ; $5603: $06 $00
	nop                                              ; $5605: $00
	ld   bc, $0458                                   ; $5606: $01 $58 $04
	ld   a, e                                        ; $5609: $7b
	sbc  d                                           ; $560a: $9a
	ld   h, e                                        ; $560b: $63
	and  c                                           ; $560c: $a1
	sbc  a                                           ; $560d: $9f
	dec  c                                           ; $560e: $0d
	ld   l, b                                        ; $560f: $68
	ld   d, d                                        ; $5610: $52
	add  h                                           ; $5611: $84
	and  c                                           ; $5612: $a1
	and  a                                           ; $5613: $a7
	ret  z                                           ; $5614: $c8

	and  b                                           ; $5615: $a0
	dec  c                                           ; $5616: $0d
	ld   d, b                                        ; $5617: $50
	ld   h, b                                        ; $5618: $60
	ld   l, l                                        ; $5619: $6d
	and  c                                           ; $561a: $a1
	ld   h, [hl]                                     ; $561b: $66
	sub  c                                           ; $561c: $91
	ld   a, e                                        ; $561d: $7b
	ld   d, [hl]                                     ; $561e: $56
	ld   e, c                                        ; $561f: $59
	ld   sp, hl                                      ; $5620: $f9
	dec  c                                           ; $5621: $0d
	nop                                              ; $5622: $00
	ld   a, [bc]                                     ; $5623: $0a
	inc  e                                           ; $5624: $1c
	ld   b, $01                                      ; $5625: $06 $01
	ld   bc, $6101                                   ; $5627: $01 $01 $61
	sbc  d                                           ; $562a: $9a
	ld   e, c                                        ; $562b: $59
	sub  a                                           ; $562c: $97
	sub  b                                           ; $562d: $90
	sbc  [hl]                                        ; $562e: $9e
	ld   h, c                                        ; $562f: $61
	ld   a, h                                        ; $5630: $7c
	inc  bc                                          ; $5631: $03
	cp   $03                                         ; $5632: $fe $03
	add  [hl]                                        ; $5634: $86
	ld   [hl], l                                     ; $5635: $75
	dec  c                                           ; $5636: $0d
	ld   e, d                                        ; $5637: $5a
	and  c                                           ; $5638: $a1
	ld   a, [hl]                                     ; $5639: $7e
	sbc  d                                           ; $563a: $9a
	sub  [hl]                                        ; $563b: $96
	ld   a, [$000d]                                  ; $563c: $fa $0d $00
	ld   a, [bc]                                     ; $563f: $0a
	ld   bc, $9a6b                                   ; $5640: $01 $6b $9a
	ld   h, [hl]                                     ; $5643: $66
	sub  c                                           ; $5644: $91
	sbc  [hl]                                        ; $5645: $9e
	inc  b                                           ; $5646: $04
	adc  a                                           ; $5647: $8f
	inc  b                                           ; $5648: $04
	xor  d                                           ; $5649: $aa
	ld   a, h                                        ; $564a: $7c
	ld   [bc], a                                     ; $564b: $02
	or   d                                           ; $564c: $b2
	inc  bc                                          ; $564d: $03
	ld   c, a                                        ; $564e: $4f
	ld   a, h                                        ; $564f: $7c
	inc  bc                                          ; $5650: $03
	ld   l, l                                        ; $5651: $6d
	dec  b                                           ; $5652: $05
	add  hl, de                                      ; $5653: $19
	dec  c                                           ; $5654: $0d
	nop                                              ; $5655: $00
	dec  b                                           ; $5656: $05
	ld   b, b                                        ; $5657: $40
	ld   b, a                                        ; $5658: $47
	inc  bc                                          ; $5659: $03
	ld   b, a                                        ; $565a: $47
	ld   bc, $2801                                   ; $565b: $01 $01 $28
	nop                                              ; $565e: $00
	ld   bc, $9a61                                   ; $565f: $01 $61 $9a
	ld   a, c                                        ; $5662: $79
	ld   [hl], h                                     ; $5663: $74
	inc  bc                                          ; $5664: $03
	ld   a, [hl]                                     ; $5665: $7e
	dec  b                                           ; $5666: $05
	nop                                              ; $5667: $00
	ld   a, [$000d]                                  ; $5668: $fa $0d $00
	ld   a, [bc]                                     ; $566b: $0a
	dec  c                                           ; $566c: $0d
	nop                                              ; $566d: $00
	nop                                              ; $566e: $00
	rrca                                             ; $566f: $0f
	nop                                              ; $5670: $00
	ld   bc, $0700                                   ; $5671: $01 $00 $07
	or   $07                                         ; $5674: $f6 $07
	inc  bc                                          ; $5676: $03
	ld   b, a                                        ; $5677: $47
	ld   bc, $2507                                   ; $5678: $01 $07 $25
	nop                                              ; $567b: $00
	inc  e                                           ; $567c: $1c
	ld   b, $00                                      ; $567d: $06 $00
	nop                                              ; $567f: $00
	ld   bc, $5896                                   ; $5680: $01 $96 $58
	sbc  [hl]                                        ; $5683: $9e
	ld   [$9f00], sp                                 ; $5684: $08 $00 $9f
	dec  c                                           ; $5687: $0d
	ld   l, e                                        ; $5688: $6b
	and  c                                           ; $5689: $a1
	ld   h, [hl]                                     ; $568a: $66
	sub  c                                           ; $568b: $91
	sbc  [hl]                                        ; $568c: $9e
	ld   h, e                                        ; $568d: $63
	ld   [hl], c                                     ; $568e: $71
	ld   l, e                                        ; $568f: $6b
	ld   e, l                                        ; $5690: $5d
	inc  bc                                          ; $5691: $03
	ld   l, l                                        ; $5692: $6d
	dec  b                                           ; $5693: $05
	add  hl, de                                      ; $5694: $19
	dec  c                                           ; $5695: $0d
	dec  b                                           ; $5696: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5697: $cf
	adc  a                                           ; $5698: $8f
	sbc  c                                           ; $5699: $99
	ld   l, d                                        ; $569a: $6a
	ld   a, [$000d]                                  ; $569b: $fa $0d $00
	ld   a, [bc]                                     ; $569e: $0a
	dec  h                                           ; $569f: $25
	ld   b, $07                                      ; $56a0: $06 $07
	push af                                          ; $56a2: $f5
	inc  bc                                          ; $56a3: $03
	inc  bc                                          ; $56a4: $03
	jr   nz, jr_045_56a8                             ; $56a5: $20 $01

	nop                                              ; $56a7: $00

jr_045_56a8:
	jr   nz, jr_045_56aa                             ; $56a8: $20 $00

jr_045_56aa:
	inc  e                                           ; $56aa: $1c
	ld   b, $03                                      ; $56ab: $06 $03
	inc  bc                                          ; $56ad: $03
	ld   bc, $7167                                   ; $56ae: $01 $67 $71
	ld   h, b                                        ; $56b1: $60
	ld   d, [hl]                                     ; $56b2: $56
	inc  bc                                          ; $56b3: $03
	ld   h, l                                        ; $56b4: $65
	inc  bc                                          ; $56b5: $03
	rst  $30                                         ; $56b6: $f7
	add  h                                           ; $56b7: $84
	sbc  b                                           ; $56b8: $98
	ld   l, [hl]                                     ; $56b9: $6e
	ld   a, b                                        ; $56ba: $78
	ld   d, b                                        ; $56bb: $50
	dec  c                                           ; $56bc: $0d
	ld   [$fa00], sp                                 ; $56bd: $08 $00 $fa
	ld   a, [$000d]                                  ; $56c0: $fa $0d $00
	ld   a, [bc]                                     ; $56c3: $0a
	inc  e                                           ; $56c4: $1c
	ld   b, $07                                      ; $56c5: $06 $07
	rlca                                             ; $56c7: $07
	ld   bc, $9a61                                   ; $56c8: $01 $61 $9a
	ld   a, b                                        ; $56cb: $78
	sub  a                                           ; $56cc: $97
	ld   d, b                                        ; $56cd: $50
	ld   l, l                                        ; $56ce: $6d
	ld   d, d                                        ; $56cf: $52
	ld   a, h                                        ; $56d0: $7c
	dec  c                                           ; $56d1: $0d
	ld   b, $81                                      ; $56d2: $06 $81
	dec  b                                           ; $56d4: $05
	ld   [hl], l                                     ; $56d5: $75
	ld   [bc], a                                     ; $56d6: $02
	or   [hl]                                        ; $56d7: $b6
	inc  bc                                          ; $56d8: $03
	ld   l, e                                        ; $56d9: $6b
	dec  b                                           ; $56da: $05
	or   $03                                         ; $56db: $f6 $03
	ld   e, d                                        ; $56dd: $5a
	dec  b                                           ; $56de: $05
	inc  d                                           ; $56df: $14
	ld   a, h                                        ; $56e0: $7c
	dec  b                                           ; $56e1: $05
	ld   l, c                                        ; $56e2: $69
	ld   [bc], a                                     ; $56e3: $02
	ld   a, c                                        ; $56e4: $79
	and  b                                           ; $56e5: $a0
	dec  c                                           ; $56e6: $0d
	ld   [bc], a                                     ; $56e7: $02
	ret  nc                                          ; $56e8: $d0

	ld   d, [hl]                                     ; $56e9: $56
	ld   [hl], h                                     ; $56ea: $74
	sub  b                                           ; $56eb: $90
	ld   d, d                                        ; $56ec: $52
	ld   d, d                                        ; $56ed: $52
	ld   e, c                                        ; $56ee: $59
	sub  b                                           ; $56ef: $90
	ld   a, b                                        ; $56f0: $78
	ld   a, [$0dfa]                                  ; $56f1: $fa $fa $0d
	nop                                              ; $56f4: $00
	ld   a, [bc]                                     ; $56f5: $0a
	dec  b                                           ; $56f6: $05
	ld   b, b                                        ; $56f7: $40
	ld   b, a                                        ; $56f8: $47
	inc  bc                                          ; $56f9: $03
	ld   b, a                                        ; $56fa: $47
	ld   bc, $2801                                   ; $56fb: $01 $01 $28
	nop                                              ; $56fe: $00
	inc  e                                           ; $56ff: $1c
	ld   b, $00                                      ; $5700: $06 $00
	nop                                              ; $5702: $00
	ld   bc, $9a6b                                   ; $5703: $01 $6b $9a
	ld   h, [hl]                                     ; $5706: $66
	sub  c                                           ; $5707: $91
	sbc  [hl]                                        ; $5708: $9e
	inc  b                                           ; $5709: $04
	adc  a                                           ; $570a: $8f
	inc  b                                           ; $570b: $04
	xor  d                                           ; $570c: $aa
	ld   a, h                                        ; $570d: $7c
	ld   [bc], a                                     ; $570e: $02
	or   d                                           ; $570f: $b2
	inc  bc                                          ; $5710: $03
	ld   c, a                                        ; $5711: $4f
	ld   a, h                                        ; $5712: $7c
	inc  bc                                          ; $5713: $03
	ld   l, l                                        ; $5714: $6d
	dec  b                                           ; $5715: $05
	add  hl, de                                      ; $5716: $19
	dec  c                                           ; $5717: $0d
	ld   h, c                                        ; $5718: $61
	sbc  d                                           ; $5719: $9a
	ld   a, c                                        ; $571a: $79
	ld   [hl], h                                     ; $571b: $74
	inc  bc                                          ; $571c: $03
	ld   a, [hl]                                     ; $571d: $7e
	dec  b                                           ; $571e: $05
	nop                                              ; $571f: $00
	ld   a, [$000d]                                  ; $5720: $fa $0d $00
	ld   a, [bc]                                     ; $5723: $0a
	dec  c                                           ; $5724: $0d
	nop                                              ; $5725: $00
	nop                                              ; $5726: $00
	rrca                                             ; $5727: $0f
	nop                                              ; $5728: $00
	ld   bc, $1c00                                   ; $5729: $01 $00 $1c
	ld   b, $00                                      ; $572c: $06 $00
	nop                                              ; $572e: $00
	ld   bc, $5896                                   ; $572f: $01 $96 $58
	sbc  [hl]                                        ; $5732: $9e
	ld   [$9f00], sp                                 ; $5733: $08 $00 $9f
	dec  c                                           ; $5736: $0d
	ld   l, e                                        ; $5737: $6b
	and  c                                           ; $5738: $a1
	ld   h, [hl]                                     ; $5739: $66
	sub  c                                           ; $573a: $91
	sbc  [hl]                                        ; $573b: $9e
	ld   h, e                                        ; $573c: $63
	ld   [hl], c                                     ; $573d: $71
	ld   l, e                                        ; $573e: $6b
	ld   e, l                                        ; $573f: $5d
	inc  bc                                          ; $5740: $03
	ld   l, l                                        ; $5741: $6d
	dec  b                                           ; $5742: $05
	add  hl, de                                      ; $5743: $19
	dec  c                                           ; $5744: $0d
	dec  b                                           ; $5745: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5746: $cf
	adc  a                                           ; $5747: $8f
	sbc  c                                           ; $5748: $99
	ld   l, d                                        ; $5749: $6a
	ld   a, [$000d]                                  ; $574a: $fa $0d $00
	ld   a, [bc]                                     ; $574d: $0a
	dec  h                                           ; $574e: $25
	ld   b, $07                                      ; $574f: $06 $07
	push af                                          ; $5751: $f5
	inc  bc                                          ; $5752: $03
	inc  bc                                          ; $5753: $03
	jr   nz, jr_045_5757                             ; $5754: $20 $01

	nop                                              ; $5756: $00

jr_045_5757:
	jr   nz, jr_045_5759                             ; $5757: $20 $00

jr_045_5759:
	inc  e                                           ; $5759: $1c
	ld   b, $03                                      ; $575a: $06 $03
	inc  bc                                          ; $575c: $03
	ld   bc, $5252                                   ; $575d: $01 $52 $52
	ld   [bc], a                                     ; $5760: $02
	scf                                              ; $5761: $37
	ld   h, [hl]                                     ; $5762: $66
	ld   l, [hl]                                     ; $5763: $6e
	ld   l, d                                        ; $5764: $6a
	ld   a, [$080d]                                  ; $5765: $fa $0d $08
	nop                                              ; $5768: $00
	ld   a, [$0dfa]                                  ; $5769: $fa $fa $0d
	nop                                              ; $576c: $00
	ld   a, [bc]                                     ; $576d: $0a
	inc  e                                           ; $576e: $1c
	ld   b, $01                                      ; $576f: $06 $01
	ld   bc, $6b01                                   ; $5771: $01 $01 $6b
	sbc  d                                           ; $5774: $9a
	ld   h, [hl]                                     ; $5775: $66
	sub  c                                           ; $5776: $91
	sbc  [hl]                                        ; $5777: $9e
	inc  b                                           ; $5778: $04
	adc  a                                           ; $5779: $8f
	inc  b                                           ; $577a: $04
	xor  d                                           ; $577b: $aa
	ld   a, h                                        ; $577c: $7c
	ld   [bc], a                                     ; $577d: $02
	or   d                                           ; $577e: $b2
	inc  bc                                          ; $577f: $03
	ld   c, a                                        ; $5780: $4f
	ld   a, h                                        ; $5781: $7c
	inc  bc                                          ; $5782: $03
	ld   l, l                                        ; $5783: $6d
	dec  b                                           ; $5784: $05
	add  hl, de                                      ; $5785: $19
	dec  c                                           ; $5786: $0d
	nop                                              ; $5787: $00
	dec  b                                           ; $5788: $05
	ld   b, b                                        ; $5789: $40
	ld   b, a                                        ; $578a: $47
	inc  bc                                          ; $578b: $03
	ld   b, a                                        ; $578c: $47
	ld   bc, $2801                                   ; $578d: $01 $01 $28
	nop                                              ; $5790: $00
	ld   bc, $9a61                                   ; $5791: $01 $61 $9a
	ld   a, c                                        ; $5794: $79
	ld   [hl], h                                     ; $5795: $74
	inc  bc                                          ; $5796: $03
	ld   a, [hl]                                     ; $5797: $7e
	dec  b                                           ; $5798: $05
	nop                                              ; $5799: $00
	ld   a, [$000d]                                  ; $579a: $fa $0d $00
	ld   a, [bc]                                     ; $579d: $0a
	dec  c                                           ; $579e: $0d
	nop                                              ; $579f: $00
	nop                                              ; $57a0: $00
	rrca                                             ; $57a1: $0f
	nop                                              ; $57a2: $00
	ld   bc, $0e00                                   ; $57a3: $01 $00 $0e
	ld   bc, $0702                                   ; $57a6: $01 $02 $07
	or   c                                           ; $57a9: $b1
	ld   [$2003], sp                                 ; $57aa: $08 $03 $20
	ld   bc, $2540                                   ; $57ad: $01 $40 $25
	nop                                              ; $57b0: $00
	dec  b                                           ; $57b1: $05
	ld   b, b                                        ; $57b2: $40
	ld   d, e                                        ; $57b3: $53
	ld   bc, $0000                                   ; $57b4: $01 $00 $00
	ld   bc, $ffff                                   ; $57b7: $01 $ff $ff
	ld   d, h                                        ; $57ba: $54
	db   $fc                                         ; $57bb: $fc
	and  c                                           ; $57bc: $a1
	rst  $38                                         ; $57bd: $ff
	rst  $38                                         ; $57be: $ff
	dec  c                                           ; $57bf: $0d
	ld   a, b                                        ; $57c0: $78
	and  c                                           ; $57c1: $a1
	ld   l, [hl]                                     ; $57c2: $6e
	ld   e, c                                        ; $57c3: $59
	inc  b                                           ; $57c4: $04
	dec  c                                           ; $57c5: $0d
	inc  bc                                          ; $57c6: $03
	cp   $5a                                         ; $57c7: $fe $5a
	ld   [bc], a                                     ; $57c9: $02
	jr   z, jr_045_581e                              ; $57ca: $28 $52

	ld   a, b                                        ; $57cc: $78
	rst  $38                                         ; $57cd: $ff
	rst  $38                                         ; $57ce: $ff
	dec  c                                           ; $57cf: $0d
	ld   [bc], a                                     ; $57d0: $02
	and  l                                           ; $57d1: $a5
	inc  b                                           ; $57d2: $04
	xor  d                                           ; $57d3: $aa
	ld   a, h                                        ; $57d4: $7c
	inc  bc                                          ; $57d5: $03
	ld   l, l                                        ; $57d6: $6d
	dec  b                                           ; $57d7: $05
	add  hl, de                                      ; $57d8: $19
	ld   a, l                                        ; $57d9: $7d
	inc  bc                                          ; $57da: $03
	and  a                                           ; $57db: $a7
	adc  [hl]                                        ; $57dc: $8e
	ld   e, c                                        ; $57dd: $59
	ld   a, b                                        ; $57de: $78
	sbc  a                                           ; $57df: $9f
	dec  c                                           ; $57e0: $0d
	nop                                              ; $57e1: $00
	ld   a, [bc]                                     ; $57e2: $0a
	ld   b, $dc                                      ; $57e3: $06 $dc
	ld   [$0201], sp                                 ; $57e5: $08 $01 $02
	and  l                                           ; $57e8: $a5
	inc  b                                           ; $57e9: $04
	xor  d                                           ; $57ea: $aa
	ld   a, l                                        ; $57eb: $7d
	ld   a, b                                        ; $57ec: $78
	and  c                                           ; $57ed: $a1
	ld   l, [hl]                                     ; $57ee: $6e
	ld   e, c                                        ; $57ef: $59
	inc  bc                                          ; $57f0: $03
	ld   l, l                                        ; $57f1: $6d
	dec  b                                           ; $57f2: $05
	add  hl, de                                      ; $57f3: $19
	ld   a, c                                        ; $57f4: $79
	dec  c                                           ; $57f5: $0d
	ld   [bc], a                                     ; $57f6: $02
	ld   a, a                                        ; $57f7: $7f
	ld   e, e                                        ; $57f8: $5b
	ld   l, l                                        ; $57f9: $6d
	ld   e, l                                        ; $57fa: $5d
	ld   a, b                                        ; $57fb: $78
	ld   d, d                                        ; $57fc: $52
	ld   a, b                                        ; $57fd: $78
	ld   d, b                                        ; $57fe: $50
	rst  $38                                         ; $57ff: $ff
	rst  $38                                         ; $5800: $ff
	dec  c                                           ; $5801: $0d
	inc  bc                                          ; $5802: $03
	ld   l, l                                        ; $5803: $6d
	dec  b                                           ; $5804: $05
	add  hl, de                                      ; $5805: $19
	rst  $38                                         ; $5806: $ff
	rst  $38                                         ; $5807: $ff
	inc  bc                                          ; $5808: $03
	and  a                                           ; $5809: $a7
	adc  [hl]                                        ; $580a: $8e
	ld   e, c                                        ; $580b: $59
	ld   a, b                                        ; $580c: $78
	sbc  a                                           ; $580d: $9f
	dec  c                                           ; $580e: $0d
	nop                                              ; $580f: $00
	ld   a, [bc]                                     ; $5810: $0a
	inc  hl                                          ; $5811: $23
	ld   c, b                                        ; $5812: $48
	inc  d                                           ; $5813: $14
	ld   b, $01                                      ; $5814: $06 $01
	add  hl, bc                                      ; $5816: $09
	ld   e, $01                                      ; $5817: $1e $01
	xor  h                                           ; $5819: $ac
	push af                                          ; $581a: $f5
	bit  4, e                                        ; $581b: $cb $63
	and  c                                           ; $581d: $a1

jr_045_581e:
	sbc  [hl]                                        ; $581e: $9e
	dec  c                                           ; $581f: $0d
	ld   d, d                                        ; $5820: $52
	sub  a                                           ; $5821: $97
	ld   [hl], c                                     ; $5822: $71
	ld   h, l                                        ; $5823: $65
	sub  c                                           ; $5824: $91
	ld   d, d                                        ; $5825: $52
	adc  h                                           ; $5826: $8c
	ld   h, a                                        ; $5827: $67
	ld   e, c                                        ; $5828: $59
	ld   sp, hl                                      ; $5829: $f9
	dec  c                                           ; $582a: $0d
	nop                                              ; $582b: $00
	ld   a, [bc]                                     ; $582c: $0a
	rrca                                             ; $582d: $0f
	ld   b, $00                                      ; $582e: $06 $00
	ld   bc, $5250                                   ; $5830: $01 $50 $52
	sub  [hl]                                        ; $5833: $96
	sbc  a                                           ; $5834: $9f
	dec  c                                           ; $5835: $0d
	ld   l, a                                        ; $5836: $6f
	sub  l                                           ; $5837: $95
	ld   [hl], c                                     ; $5838: $71
	halt                                             ; $5839: $76
	inc  b                                           ; $583a: $04
	rla                                              ; $583b: $17
	ld   [hl], c                                     ; $583c: $71
	ld   [hl], h                                     ; $583d: $74
	ld   a, b                                        ; $583e: $78
	sbc  a                                           ; $583f: $9f
	dec  c                                           ; $5840: $0d
	nop                                              ; $5841: $00
	ld   a, [bc]                                     ; $5842: $0a
	inc  d                                           ; $5843: $14
	ld   a, [bc]                                     ; $5844: $0a
	ld   bc, $490e                                   ; $5845: $01 $0e $49
	inc  e                                           ; $5848: $1c
	ld   b, $01                                      ; $5849: $06 $01
	ld   bc, $9601                                   ; $584b: $01 $01 $96
	ld   e, b                                        ; $584e: $58
	sbc  [hl]                                        ; $584f: $9e
	ld   [$9f00], sp                                 ; $5850: $08 $00 $9f
	dec  c                                           ; $5853: $0d
	ld   e, b                                        ; $5854: $58
	ld   a, l                                        ; $5855: $7d
	sub  [hl]                                        ; $5856: $96
	ld   d, h                                        ; $5857: $54
	ld   h, e                                        ; $5858: $63
	and  c                                           ; $5859: $a1
	sbc  a                                           ; $585a: $9f
	dec  c                                           ; $585b: $0d
	nop                                              ; $585c: $00
	ld   a, [bc]                                     ; $585d: $0a
	rlca                                             ; $585e: $07
	ret  c                                           ; $585f: $d8

	add  hl, bc                                      ; $5860: $09
	inc  bc                                          ; $5861: $03
	jr   nz, jr_045_5865                             ; $5862: $20 $01

	ld   b, b                                        ; $5864: $40

jr_045_5865:
	dec  h                                           ; $5865: $25
	nop                                              ; $5866: $00
	ld   bc, $ffff                                   ; $5867: $01 $ff $ff
	ld   d, b                                        ; $586a: $50
	sbc  b                                           ; $586b: $98
	sub  c                                           ; $586c: $91
	ld   sp, hl                                      ; $586d: $f9
	dec  c                                           ; $586e: $0d
	nop                                              ; $586f: $00
	inc  e                                           ; $5870: $1c
	ld   b, $05                                      ; $5871: $06 $05
	dec  b                                           ; $5873: $05
	ld   bc, $5477                                   ; $5874: $01 $77 $54
	ld   h, l                                        ; $5877: $65
	ld   l, l                                        ; $5878: $6d
	and  c                                           ; $5879: $a1
	ld   l, [hl]                                     ; $587a: $6e
	ld   sp, hl                                      ; $587b: $f9
	dec  c                                           ; $587c: $0d
	ld   a, b                                        ; $587d: $78
	and  c                                           ; $587e: $a1
	ld   l, [hl]                                     ; $587f: $6e
	ld   e, c                                        ; $5880: $59
	ld   [bc], a                                     ; $5881: $02
	ld   [hl], d                                     ; $5882: $72
	inc  bc                                          ; $5883: $03
	dec  bc                                          ; $5884: $0b
	sbc  l                                           ; $5885: $9d
	sbc  b                                           ; $5886: $98
	ld   d, d                                        ; $5887: $52
	ld   l, h                                        ; $5888: $6c
	sbc  a                                           ; $5889: $9f
	dec  c                                           ; $588a: $0d
	nop                                              ; $588b: $00
	ld   a, [bc]                                     ; $588c: $0a
	rrca                                             ; $588d: $0f
	nop                                              ; $588e: $00
	ld   bc, $7d01                                   ; $588f: $01 $01 $7d
	ld   d, d                                        ; $5892: $52
	sbc  [hl]                                        ; $5893: $9e
	ld   l, a                                        ; $5894: $6f
	sub  l                                           ; $5895: $95
	ld   [hl], c                                     ; $5896: $71
	halt                                             ; $5897: $76
	inc  b                                           ; $5898: $04
	dec  c                                           ; $5899: $0d
	inc  bc                                          ; $589a: $03
	cp   $5a                                         ; $589b: $fe $5a
	dec  c                                           ; $589d: $0d
	sbc  l                                           ; $589e: $9d
	sbc  c                                           ; $589f: $99

Jump_045_58a0:
	ld   e, l                                        ; $58a0: $5d
	ld   [hl], h                                     ; $58a1: $74
	rst  $38                                         ; $58a2: $ff
	rst  $38                                         ; $58a3: $ff
	ld   [bc], a                                     ; $58a4: $02
	and  l                                           ; $58a5: $a5
	inc  b                                           ; $58a6: $04
	xor  d                                           ; $58a7: $aa
	ld   a, h                                        ; $58a8: $7c
	inc  bc                                          ; $58a9: $03
	ld   l, l                                        ; $58aa: $6d
	dec  b                                           ; $58ab: $05
	add  hl, de                                      ; $58ac: $19
	ld   a, l                                        ; $58ad: $7d
	dec  c                                           ; $58ae: $0d
	inc  bc                                          ; $58af: $03
	and  a                                           ; $58b0: $a7
	adc  h                                           ; $58b1: $8c
	ld   l, c                                        ; $58b2: $69
	ld   [hl], h                                     ; $58b3: $74
	adc  c                                           ; $58b4: $89
	ld   h, l                                        ; $58b5: $65
	ld   d, d                                        ; $58b6: $52
	ld   a, h                                        ; $58b7: $7c
	ld   [hl], l                                     ; $58b8: $75
	ld   h, a                                        ; $58b9: $67
	ld   e, d                                        ; $58ba: $5a
	rst  $38                                         ; $58bb: $ff
	rst  $38                                         ; $58bc: $ff
	dec  c                                           ; $58bd: $0d
	nop                                              ; $58be: $00
	ld   a, [bc]                                     ; $58bf: $0a
	inc  e                                           ; $58c0: $1c
	ld   b, $00                                      ; $58c1: $06 $00
	nop                                              ; $58c3: $00
	ld   bc, $546b                                   ; $58c4: $01 $6b $54
	ld   e, c                                        ; $58c7: $59
	rst  $38                                         ; $58c8: $ff
	rst  $38                                         ; $58c9: $ff
	dec  c                                           ; $58ca: $0d
	ld   l, e                                        ; $58cb: $6b
	and  c                                           ; $58cc: $a1
	ld   h, [hl]                                     ; $58cd: $66
	sub  c                                           ; $58ce: $91
	sbc  [hl]                                        ; $58cf: $9e
	ld   [bc], a                                     ; $58d0: $02
	and  l                                           ; $58d1: $a5
	inc  b                                           ; $58d2: $04
	xor  d                                           ; $58d3: $aa
	ld   a, h                                        ; $58d4: $7c
	inc  bc                                          ; $58d5: $03
	ld   l, l                                        ; $58d6: $6d
	dec  b                                           ; $58d7: $05
	add  hl, de                                      ; $58d8: $19
	ld   a, l                                        ; $58d9: $7d
	dec  c                                           ; $58da: $0d
	inc  bc                                          ; $58db: $03
	and  a                                           ; $58dc: $a7
	adc  l                                           ; $58dd: $8d
	ld   a, c                                        ; $58de: $79
	ld   h, a                                        ; $58df: $67
	ld   [hl], c                                     ; $58e0: $71
	ld   e, c                                        ; $58e1: $59
	sbc  a                                           ; $58e2: $9f
	dec  c                                           ; $58e3: $0d
	nop                                              ; $58e4: $00
	ld   a, [bc]                                     ; $58e5: $0a
	inc  e                                           ; $58e6: $1c
	ld   b, $07                                      ; $58e7: $06 $07
	rlca                                             ; $58e9: $07
	ld   bc, $9a6b                                   ; $58ea: $01 $6b $9a
	ld   h, [hl]                                     ; $58ed: $66
	sub  c                                           ; $58ee: $91
	ld   d, b                                        ; $58ef: $50
	ld   a, b                                        ; $58f0: $78
	sbc  [hl]                                        ; $58f1: $9e
	ld   [$9f00], sp                                 ; $58f2: $08 $00 $9f
	dec  c                                           ; $58f5: $0d
	inc  bc                                          ; $58f6: $03
	ld   [hl], b                                     ; $58f7: $70
	ld   e, l                                        ; $58f8: $5d
	inc  bc                                          ; $58f9: $03
	ld   sp, hl                                      ; $58fa: $f9
	ld   l, c                                        ; $58fb: $69
	sub  [hl]                                        ; $58fc: $96
	ld   a, [$0dfa]                                  ; $58fd: $fa $fa $0d
	nop                                              ; $5900: $00
	ld   a, [bc]                                     ; $5901: $0a
	dec  c                                           ; $5902: $0d
	nop                                              ; $5903: $00
	nop                                              ; $5904: $00
	rrca                                             ; $5905: $0f
	nop                                              ; $5906: $00
	ld   bc, $1e09                                   ; $5907: $01 $09 $1e
	ld   b, $b7                                      ; $590a: $06 $b7
	ld   [bc], a                                     ; $590c: $02
	inc  e                                           ; $590d: $1c
	ld   b, $00                                      ; $590e: $06 $00
	nop                                              ; $5910: $00
	ld   bc, $a178                                   ; $5911: $01 $78 $a1
	ld   e, c                                        ; $5914: $59
	inc  b                                           ; $5915: $04
	di                                               ; $5916: $f3
	ld   [bc], a                                     ; $5917: $02
	jp   $f959                                       ; $5918: $c3 $59 $f9


	dec  c                                           ; $591b: $0d
	sub  b                                           ; $591c: $90
	ld   d, h                                        ; $591d: $54
	ld   h, a                                        ; $591e: $67
	ld   e, [hl]                                     ; $591f: $5e
	inc  bc                                          ; $5920: $03
	ld   l, l                                        ; $5921: $6d
	dec  b                                           ; $5922: $05
	add  hl, de                                      ; $5923: $19
	ld   a, h                                        ; $5924: $7c
	inc  bc                                          ; $5925: $03
	ld   l, a                                        ; $5926: $6f
	ld   [bc], a                                     ; $5927: $02
	xor  c                                           ; $5928: $a9
	ld   l, [hl]                                     ; $5929: $6e
	ld   l, d                                        ; $592a: $6a
	sbc  a                                           ; $592b: $9f
	dec  c                                           ; $592c: $0d
	nop                                              ; $592d: $00
	ld   a, [bc]                                     ; $592e: $0a
	rrca                                             ; $592f: $0f
	nop                                              ; $5930: $00
	ld   bc, $7d01                                   ; $5931: $01 $01 $7d
	ld   d, d                                        ; $5934: $52
	rst  $38                                         ; $5935: $ff
	rst  $38                                         ; $5936: $ff
	ld   d, b                                        ; $5937: $50
	ld   a, h                                        ; $5938: $7c
	rst  $38                                         ; $5939: $ff
	rst  $38                                         ; $593a: $ff
	dec  c                                           ; $593b: $0d
	ld   [bc], a                                     ; $593c: $02
	and  l                                           ; $593d: $a5
	inc  b                                           ; $593e: $04
	xor  d                                           ; $593f: $aa
	ld   a, h                                        ; $5940: $7c
	inc  bc                                          ; $5941: $03
	ld   l, l                                        ; $5942: $6d
	dec  b                                           ; $5943: $05
	add  hl, de                                      ; $5944: $19
	and  b                                           ; $5945: $a0
	inc  bc                                          ; $5946: $03
	and  a                                           ; $5947: $a7
	adc  h                                           ; $5948: $8c
	ld   l, c                                        ; $5949: $69
	ld   [hl], h                                     ; $594a: $74
	dec  c                                           ; $594b: $0d
	inc  b                                           ; $594c: $04
	db   $e3                                         ; $594d: $e3
	ld   h, l                                        ; $594e: $65
	ld   d, d                                        ; $594f: $52
	ld   a, h                                        ; $5950: $7c
	ld   [hl], l                                     ; $5951: $75
	ld   h, a                                        ; $5952: $67
	ld   e, d                                        ; $5953: $5a
	rst  $38                                         ; $5954: $ff
	rst  $38                                         ; $5955: $ff
	dec  c                                           ; $5956: $0d
	nop                                              ; $5957: $00
	ld   a, [bc]                                     ; $5958: $0a
	inc  e                                           ; $5959: $1c
	ld   b, $05                                      ; $595a: $06 $05
	dec  b                                           ; $595c: $05
	ld   bc, $a703                                   ; $595d: $01 $03 $a7
	adc  [hl]                                        ; $5960: $8e
	ld   a, [$0df9]                                  ; $5961: $fa $f9 $0d
	ld   l, e                                        ; $5964: $6b
	sbc  b                                           ; $5965: $98
	sub  c                                           ; $5966: $91
	adc  h                                           ; $5967: $8c
	ld   l, l                                        ; $5968: $6d
	ld   a, b                                        ; $5969: $78
	and  c                                           ; $596a: $a1
	ld   [hl], l                                     ; $596b: $75
	ld   sp, hl                                      ; $596c: $f9
	dec  c                                           ; $596d: $0d
	nop                                              ; $596e: $00
	ld   a, [bc]                                     ; $596f: $0a
	rrca                                             ; $5970: $0f
	nop                                              ; $5971: $00
	ld   bc, $5201                                   ; $5972: $01 $01 $52
	ld   d, [hl]                                     ; $5975: $56
	sbc  [hl]                                        ; $5976: $9e
	halt                                             ; $5977: $76
	ld   e, l                                        ; $5978: $5d
	ld   a, c                                        ; $5979: $79
	inc  b                                           ; $597a: $04
	di                                               ; $597b: $f3
	ld   [bc], a                                     ; $597c: $02
	jp   Jump_045_505a                               ; $597d: $c3 $5a $50


	sbc  c                                           ; $5980: $99
	dec  c                                           ; $5981: $0d
	sbc  l                                           ; $5982: $9d
	ld   e, a                                        ; $5983: $5f
	ld   [hl], l                                     ; $5984: $75
	sub  b                                           ; $5985: $90
	ld   a, b                                        ; $5986: $78
	ld   d, d                                        ; $5987: $52
	and  c                                           ; $5988: $a1
	ld   [hl], l                                     ; $5989: $75
	ld   h, a                                        ; $598a: $67
	ld   e, d                                        ; $598b: $5a
	rst  $38                                         ; $598c: $ff
	rst  $38                                         ; $598d: $ff
	dec  c                                           ; $598e: $0d
	nop                                              ; $598f: $00
	ld   a, [bc]                                     ; $5990: $0a
	rrca                                             ; $5991: $0f
	ld   b, $05                                      ; $5992: $06 $05
	dec  e                                           ; $5994: $1d
	ld   b, b                                        ; $5995: $40
	ld   d, $03                                      ; $5996: $16 $03
	ld   d, $01                                      ; $5998: $16 $01
	ld   [bc], a                                     ; $599a: $02
	add  hl, hl                                      ; $599b: $29
	nop                                              ; $599c: $00
	ld   bc, $ffff                                   ; $599d: $01 $ff $ff
	add  e                                           ; $59a0: $83
	db   $fc                                         ; $59a1: $fc
	and  c                                           ; $59a2: $a1
	rst  $38                                         ; $59a3: $ff
	rst  $38                                         ; $59a4: $ff
	adc  h                                           ; $59a5: $8c
	sbc  [hl]                                        ; $59a6: $9e
	ld   d, d                                        ; $59a7: $52
	ld   d, d                                        ; $59a8: $52
	ld   l, [hl]                                     ; $59a9: $6e
	sbc  e                                           ; $59aa: $9b
	sbc  a                                           ; $59ab: $9f
	dec  c                                           ; $59ac: $0d
	ld   l, e                                        ; $59ad: $6b
	and  c                                           ; $59ae: $a1
	ld   h, [hl]                                     ; $59af: $66
	sub  c                                           ; $59b0: $91
	sbc  [hl]                                        ; $59b1: $9e
	ld   [bc], a                                     ; $59b2: $02
	and  l                                           ; $59b3: $a5
	inc  b                                           ; $59b4: $04
	xor  d                                           ; $59b5: $aa
	ld   a, h                                        ; $59b6: $7c
	inc  bc                                          ; $59b7: $03
	ld   l, l                                        ; $59b8: $6d
	dec  b                                           ; $59b9: $05
	add  hl, de                                      ; $59ba: $19
	ld   a, l                                        ; $59bb: $7d
	dec  c                                           ; $59bc: $0d
	inc  bc                                          ; $59bd: $03
	and  a                                           ; $59be: $a7
	adc  l                                           ; $59bf: $8d
	ld   [hl], c                                     ; $59c0: $71
	ld   [hl], h                                     ; $59c1: $74
	ld   h, c                                        ; $59c2: $61
	halt                                             ; $59c3: $76
	ld   a, c                                        ; $59c4: $79
	ld   h, l                                        ; $59c5: $65
	ld   [hl], h                                     ; $59c6: $74
	ld   e, b                                        ; $59c7: $58
	ld   e, l                                        ; $59c8: $5d
	ld   l, d                                        ; $59c9: $6a
	sbc  a                                           ; $59ca: $9f
	dec  c                                           ; $59cb: $0d
	nop                                              ; $59cc: $00
	ld   a, [bc]                                     ; $59cd: $0a
	ld   bc, $a16b                                   ; $59ce: $01 $6b $a1
	ld   h, [hl]                                     ; $59d1: $66
	sub  c                                           ; $59d2: $91
	ld   d, b                                        ; $59d3: $50
	ld   a, b                                        ; $59d4: $78
	sbc  a                                           ; $59d5: $9f
	dec  c                                           ; $59d6: $0d
	nop                                              ; $59d7: $00
	ld   a, [bc]                                     ; $59d8: $0a
	dec  c                                           ; $59d9: $0d
	nop                                              ; $59da: $00
	nop                                              ; $59db: $00
	rrca                                             ; $59dc: $0f
	nop                                              ; $59dd: $00
	ld   bc, $1e09                                   ; $59de: $01 $09 $1e
	ld   b, $b7                                      ; $59e1: $06 $b7
	ld   [bc], a                                     ; $59e3: $02
	nop                                              ; $59e4: $00
	ld   [bc], a                                     ; $59e5: $02
	ld   b, $01                                      ; $59e6: $06 $01
	dec  b                                           ; $59e8: $05
	jr   nz, jr_045_59eb                             ; $59e9: $20 $00

jr_045_59eb:
	rrca                                             ; $59eb: $0f
	nop                                              ; $59ec: $00
	ld   bc, $0706                                   ; $59ed: $01 $06 $07
	nop                                              ; $59f0: $00
	ld   [bc], a                                     ; $59f1: $02
	rlca                                             ; $59f2: $07
	ld   d, l                                        ; $59f3: $55
	rlca                                             ; $59f4: $07
	inc  b                                           ; $59f5: $04
	add  b                                           ; $59f6: $80
	add  $00                                         ; $59f7: $c6 $00
	ld   c, $7a                                      ; $59f9: $0e $7a
	ld   [bc], a                                     ; $59fb: $02
	rlca                                             ; $59fc: $07
	ld   a, [hl]                                     ; $59fd: $7e
	ld   bc, $2003                                   ; $59fe: $01 $03 $20
	ld   bc, $2320                                   ; $5a01: $01 $20 $23
	nop                                              ; $5a04: $00
	rlca                                             ; $5a05: $07
	add  hl, de                                      ; $5a06: $19
	ld   bc, $5203                                   ; $5a07: $01 $03 $52
	ld   [bc], a                                     ; $5a0a: $02
	nop                                              ; $5a0b: $00
	inc  bc                                          ; $5a0c: $03
	ld   c, h                                        ; $5a0d: $4c
	add  hl, hl                                      ; $5a0e: $29
	add  hl, hl                                      ; $5a0f: $29
	ld   bc, $2501                                   ; $5a10: $01 $01 $25
	nop                                              ; $5a13: $00
	rlca                                             ; $5a14: $07
	ld   e, c                                        ; $5a15: $59
	nop                                              ; $5a16: $00
	inc  bc                                          ; $5a17: $03
	ld   b, [hl]                                     ; $5a18: $46
	ld   bc, $2000                                   ; $5a19: $01 $00 $20
	nop                                              ; $5a1c: $00
	rlca                                             ; $5a1d: $07
	ld   e, [hl]                                     ; $5a1e: $5e
	inc  b                                           ; $5a1f: $04
	inc  bc                                          ; $5a20: $03
	ld   b, [hl]                                     ; $5a21: $46
	ld   bc, $2501                                   ; $5a22: $01 $01 $25
	inc  bc                                          ; $5a25: $03
	ld   b, [hl]                                     ; $5a26: $46
	ld   bc, $2302                                   ; $5a27: $01 $02 $23
	inc  e                                           ; $5a2a: $1c
	nop                                              ; $5a2b: $00
	rlca                                             ; $5a2c: $07
	reti                                             ; $5a2d: $d9


	inc  b                                           ; $5a2e: $04
	inc  bc                                          ; $5a2f: $03
	ld   b, [hl]                                     ; $5a30: $46
	ld   bc, $2503                                   ; $5a31: $01 $03 $25
	inc  bc                                          ; $5a34: $03
	ld   b, [hl]                                     ; $5a35: $46
	ld   bc, $2305                                   ; $5a36: $01 $05 $23
	inc  e                                           ; $5a39: $1c
	nop                                              ; $5a3a: $00
	rlca                                             ; $5a3b: $07
	ld   e, $06                                      ; $5a3c: $1e $06
	inc  bc                                          ; $5a3e: $03
	ld   b, [hl]                                     ; $5a3f: $46
	ld   bc, $2506                                   ; $5a40: $01 $06 $25
	nop                                              ; $5a43: $00
	inc  e                                           ; $5a44: $1c
	dec  b                                           ; $5a45: $05
	nop                                              ; $5a46: $00
	nop                                              ; $5a47: $00
	ld   bc, $a161                                   ; $5a48: $01 $61 $a1
	ld   a, c                                        ; $5a4b: $79
	ld   l, a                                        ; $5a4c: $6f
	ld   a, l                                        ; $5a4d: $7d
	sbc  [hl]                                        ; $5a4e: $9e
	ld   [$7d00], sp                                 ; $5a4f: $08 $00 $7d
	and  c                                           ; $5a52: $a1
	sbc  a                                           ; $5a53: $9f
	dec  c                                           ; $5a54: $0d
	and  a                                           ; $5a55: $a7
	jp   nz, $037c                                   ; $5a56: $c2 $7c $03

	ld   l, l                                        ; $5a59: $6d
	dec  b                                           ; $5a5a: $05
	add  hl, de                                      ; $5a5b: $19
	ld   a, l                                        ; $5a5c: $7d
	sbc  [hl]                                        ; $5a5d: $9e
	ld   b, $58                                      ; $5a5e: $06 $58
	inc  b                                           ; $5a60: $04
	ld   h, c                                        ; $5a61: $61
	inc  bc                                          ; $5a62: $03
	cp   $02                                         ; $5a63: $fe $02
	ld   a, e                                        ; $5a65: $7b
	sub  d                                           ; $5a66: $92
	sbc  a                                           ; $5a67: $9f
	dec  c                                           ; $5a68: $0d
	nop                                              ; $5a69: $00
	ld   a, [bc]                                     ; $5a6a: $0a
	ld   bc, $7c61                                   ; $5a6b: $01 $61 $7c
	inc  bc                                          ; $5a6e: $03
	ld   l, l                                        ; $5a6f: $6d
	dec  b                                           ; $5a70: $05
	add  hl, de                                      ; $5a71: $19
	ld   [hl], l                                     ; $5a72: $75
	sbc  [hl]                                        ; $5a73: $9e
	ld   [$7d00], sp                                 ; $5a74: $08 $00 $7d
	and  c                                           ; $5a77: $a1
	ld   a, h                                        ; $5a78: $7c
	dec  c                                           ; $5a79: $0d
	inc  b                                           ; $5a7a: $04
	dec  hl                                          ; $5a7b: $2b
	dec  b                                           ; $5a7c: $05
	ld   a, [bc]                                     ; $5a7d: $0a
	and  b                                           ; $5a7e: $a0
	and  e                                           ; $5a7f: $a3
	call nz, Call_045_65d8                           ; $5a80: $c4 $d8 $65
	ld   [hl], h                                     ; $5a83: $74
	sub  b                                           ; $5a84: $90
	sub  a                                           ; $5a85: $97
	ld   e, b                                        ; $5a86: $58
	ld   d, h                                        ; $5a87: $54
	dec  c                                           ; $5a88: $0d
	ld   l, a                                        ; $5a89: $6f
	sub  e                                           ; $5a8a: $93
	ei                                               ; $5a8b: $fb
	sbc  l                                           ; $5a8c: $9d
	ld   e, a                                        ; $5a8d: $5f
	sub  d                                           ; $5a8e: $92
	sbc  a                                           ; $5a8f: $9f
	dec  c                                           ; $5a90: $0d
	nop                                              ; $5a91: $00
	ld   a, [bc]                                     ; $5a92: $0a
	inc  e                                           ; $5a93: $1c
	dec  b                                           ; $5a94: $05
	nop                                              ; $5a95: $00
	nop                                              ; $5a96: $00
	ld   bc, $7889                                   ; $5a97: $01 $89 $78
	sbc  [hl]                                        ; $5a9a: $9e
	dec  b                                           ; $5a9b: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a9c: $cf
	adc  a                                           ; $5a9d: $8f
	sbc  c                                           ; $5a9e: $99
	ld   [hl], l                                     ; $5a9f: $75
	sbc  a                                           ; $5aa0: $9f
	dec  c                                           ; $5aa1: $0d
	nop                                              ; $5aa2: $00
	ld   a, [bc]                                     ; $5aa3: $0a
	dec  h                                           ; $5aa4: $25
	dec  b                                           ; $5aa5: $05
	rlca                                             ; $5aa6: $07
	halt                                             ; $5aa7: $76
	inc  bc                                          ; $5aa8: $03
	inc  bc                                          ; $5aa9: $03
	jr   nz, jr_045_5aad                             ; $5aaa: $20 $01

	nop                                              ; $5aac: $00

jr_045_5aad:
	jr   nz, jr_045_5aaf                             ; $5aad: $20 $00

jr_045_5aaf:
	inc  e                                           ; $5aaf: $1c
	dec  b                                           ; $5ab0: $05
	nop                                              ; $5ab1: $00
	nop                                              ; $5ab2: $00
	ld   bc, $0458                                   ; $5ab3: $01 $58 $04
	ld   a, e                                        ; $5ab6: $7b
	sbc  d                                           ; $5ab7: $9a
	ld   h, e                                        ; $5ab8: $63
	and  c                                           ; $5ab9: $a1
	sbc  a                                           ; $5aba: $9f
	dec  c                                           ; $5abb: $0d
	inc  bc                                          ; $5abc: $03
	inc  c                                           ; $5abd: $0c
	adc  a                                           ; $5abe: $8f
	ld   [hl], h                                     ; $5abf: $74
	ld   a, c                                        ; $5ac0: $79
	ld   h, l                                        ; $5ac1: $65
	ld   [hl], h                                     ; $5ac2: $74
	ld   a, l                                        ; $5ac3: $7d
	sbc  [hl]                                        ; $5ac4: $9e
	adc  h                                           ; $5ac5: $8c
	ld   l, b                                        ; $5ac6: $68
	adc  h                                           ; $5ac7: $8c
	ld   l, b                                        ; $5ac8: $68
	dec  c                                           ; $5ac9: $0d
	sub  d                                           ; $5aca: $92
	ld   [hl], c                                     ; $5acb: $71
	ld   l, l                                        ; $5acc: $6d
	ld   [hl], l                                     ; $5acd: $75
	sbc  a                                           ; $5ace: $9f
	dec  c                                           ; $5acf: $0d
	nop                                              ; $5ad0: $00
	ld   a, [bc]                                     ; $5ad1: $0a
	ld   bc, $7889                                   ; $5ad2: $01 $89 $78
	sbc  [hl]                                        ; $5ad5: $9e
	inc  b                                           ; $5ad6: $04
	adc  a                                           ; $5ad7: $8f
	inc  b                                           ; $5ad8: $04
	xor  d                                           ; $5ad9: $aa
	ld   a, h                                        ; $5ada: $7c
	ld   [bc], a                                     ; $5adb: $02
	or   d                                           ; $5adc: $b2
	inc  bc                                          ; $5add: $03
	ld   c, a                                        ; $5ade: $4f
	ld   a, h                                        ; $5adf: $7c
	inc  bc                                          ; $5ae0: $03
	ld   l, l                                        ; $5ae1: $6d
	dec  b                                           ; $5ae2: $05
	add  hl, de                                      ; $5ae3: $19
	dec  c                                           ; $5ae4: $0d
	nop                                              ; $5ae5: $00
	dec  b                                           ; $5ae6: $05
	ld   b, b                                        ; $5ae7: $40
	ld   b, [hl]                                     ; $5ae8: $46
	inc  bc                                          ; $5ae9: $03
	ld   b, [hl]                                     ; $5aea: $46
	ld   bc, $2801                                   ; $5aeb: $01 $01 $28
	nop                                              ; $5aee: $00
	ld   bc, $9a61                                   ; $5aef: $01 $61 $9a
	ld   a, c                                        ; $5af2: $79
	ld   [hl], h                                     ; $5af3: $74
	inc  bc                                          ; $5af4: $03
	ld   a, [hl]                                     ; $5af5: $7e
	dec  b                                           ; $5af6: $05
	nop                                              ; $5af7: $00
	sub  d                                           ; $5af8: $92
	sbc  a                                           ; $5af9: $9f
	dec  c                                           ; $5afa: $0d
	nop                                              ; $5afb: $00
	ld   a, [bc]                                     ; $5afc: $0a
	dec  c                                           ; $5afd: $0d
	nop                                              ; $5afe: $00
	nop                                              ; $5aff: $00
	rrca                                             ; $5b00: $0f
	nop                                              ; $5b01: $00
	ld   bc, $1c00                                   ; $5b02: $01 $00 $1c
	dec  b                                           ; $5b05: $05
	rlca                                             ; $5b06: $07
	rlca                                             ; $5b07: $07
	ld   bc, $ffff                                   ; $5b08: $01 $ff $ff
	rst  $38                                         ; $5b0b: $ff
	rst  $38                                         ; $5b0c: $ff
	adc  c                                           ; $5b0d: $89
	ld   a, b                                        ; $5b0e: $78
	sbc  [hl]                                        ; $5b0f: $9e
	inc  bc                                          ; $5b10: $03
	ld   l, l                                        ; $5b11: $6d
	dec  b                                           ; $5b12: $05
	add  hl, de                                      ; $5b13: $19
	sbc  [hl]                                        ; $5b14: $9e
	dec  c                                           ; $5b15: $0d
	ld   a, l                                        ; $5b16: $7d
	ld   h, [hl]                                     ; $5b17: $66
	adc  a                                           ; $5b18: $8f
	sbc  c                                           ; $5b19: $99
	ld   [hl], l                                     ; $5b1a: $75
	sbc  a                                           ; $5b1b: $9f
	dec  c                                           ; $5b1c: $0d
	nop                                              ; $5b1d: $00
	ld   a, [bc]                                     ; $5b1e: $0a
	dec  b                                           ; $5b1f: $05
	ld   b, b                                        ; $5b20: $40
	ld   d, d                                        ; $5b21: $52
	ld   bc, $0000                                   ; $5b22: $01 $00 $00
	dec  h                                           ; $5b25: $25
	dec  b                                           ; $5b26: $05
	rlca                                             ; $5b27: $07
	halt                                             ; $5b28: $76
	inc  bc                                          ; $5b29: $03
	inc  bc                                          ; $5b2a: $03
	jr   nz, jr_045_5b2e                             ; $5b2b: $20 $01

	nop                                              ; $5b2d: $00

jr_045_5b2e:
	jr   nz, jr_045_5b30                             ; $5b2e: $20 $00

jr_045_5b30:
	inc  e                                           ; $5b30: $1c
	dec  b                                           ; $5b31: $05
	rlca                                             ; $5b32: $07
	rlca                                             ; $5b33: $07
	ld   bc, $0458                                   ; $5b34: $01 $58 $04
	ld   a, e                                        ; $5b37: $7b
	sbc  d                                           ; $5b38: $9a
	ld   h, e                                        ; $5b39: $63
	and  c                                           ; $5b3a: $a1
	rst  $38                                         ; $5b3b: $ff
	rst  $38                                         ; $5b3c: $ff
	dec  c                                           ; $5b3d: $0d
	nop                                              ; $5b3e: $00
	ld   a, [bc]                                     ; $5b3f: $0a
	dec  c                                           ; $5b40: $0d
	nop                                              ; $5b41: $00
	nop                                              ; $5b42: $00
	rrca                                             ; $5b43: $0f
	nop                                              ; $5b44: $00
	ld   bc, $4005                                   ; $5b45: $01 $05 $40
	ld   b, [hl]                                     ; $5b48: $46
	inc  bc                                          ; $5b49: $03
	ld   b, [hl]                                     ; $5b4a: $46
	ld   bc, $2801                                   ; $5b4b: $01 $01 $28
	nop                                              ; $5b4e: $00
	ld   bc, $ffff                                   ; $5b4f: $01 $ff $ff
	rst  $38                                         ; $5b52: $ff
	rst  $38                                         ; $5b53: $ff
	ld   [bc], a                                     ; $5b54: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b55: $cf
	dec  b                                           ; $5b56: $05
	ld   a, [de]                                     ; $5b57: $1a
	ld   h, e                                        ; $5b58: $63
	and  c                                           ; $5b59: $a1
	sbc  [hl]                                        ; $5b5a: $9e
	dec  c                                           ; $5b5b: $0d
	ld   e, e                                        ; $5b5c: $5b
	ld   h, b                                        ; $5b5d: $60
	and  c                                           ; $5b5e: $a1
	ld   [bc], a                                     ; $5b5f: $02
	jr   z, jr_045_5bb4                              ; $5b60: $28 $52

	ld   l, h                                        ; $5b62: $6c
	rst  $38                                         ; $5b63: $ff
	rst  $38                                         ; $5b64: $ff
	dec  c                                           ; $5b65: $0d
	nop                                              ; $5b66: $00
	ld   a, [bc]                                     ; $5b67: $0a
	nop                                              ; $5b68: $00
	inc  e                                           ; $5b69: $1c
	dec  b                                           ; $5b6a: $05
	nop                                              ; $5b6b: $00
	nop                                              ; $5b6c: $00
	dec  b                                           ; $5b6d: $05
	ld   b, b                                        ; $5b6e: $40
	ld   d, d                                        ; $5b6f: $52
	ld   bc, $0000                                   ; $5b70: $01 $00 $00
	ld   bc, $a161                                   ; $5b73: $01 $61 $a1
	ld   a, c                                        ; $5b76: $79
	ld   l, a                                        ; $5b77: $6f
	ld   a, l                                        ; $5b78: $7d
	rst  $38                                         ; $5b79: $ff
	rst  $38                                         ; $5b7a: $ff
	and  c                                           ; $5b7b: $a1
	ld   sp, hl                                      ; $5b7c: $f9
	dec  c                                           ; $5b7d: $0d
	nop                                              ; $5b7e: $00
	inc  e                                           ; $5b7f: $1c
	dec  b                                           ; $5b80: $05
	inc  bc                                          ; $5b81: $03
	inc  bc                                          ; $5b82: $03
	ld   bc, $a178                                   ; $5b83: $01 $78 $a1
	sub  d                                           ; $5b86: $92
	sbc  [hl]                                        ; $5b87: $9e
	ld   d, [hl]                                     ; $5b88: $56
	sub  a                                           ; $5b89: $97
	ld   d, d                                        ; $5b8a: $52
	ld   [bc], a                                     ; $5b8b: $02
	ld   [hl], d                                     ; $5b8c: $72
	inc  bc                                          ; $5b8d: $03
	dec  bc                                          ; $5b8e: $0b
	dec  c                                           ; $5b8f: $0d
	sbc  l                                           ; $5b90: $9d
	sbc  c                                           ; $5b91: $99
	ld   d, d                                        ; $5b92: $52
	sub  d                                           ; $5b93: $92
	ld   a, b                                        ; $5b94: $78
	ld   d, d                                        ; $5b95: $52
	ld   e, c                                        ; $5b96: $59
	sbc  a                                           ; $5b97: $9f
	dec  c                                           ; $5b98: $0d
	nop                                              ; $5b99: $00
	ld   a, [bc]                                     ; $5b9a: $0a
	inc  e                                           ; $5b9b: $1c
	dec  b                                           ; $5b9c: $05
	ld   [bc], a                                     ; $5b9d: $02
	ld   [bc], a                                     ; $5b9e: $02
	ld   bc, $a502                                   ; $5b9f: $01 $02 $a5
	ld   [bc], a                                     ; $5ba2: $02
	sub  e                                           ; $5ba3: $93
	ld   a, h                                        ; $5ba4: $7c
	inc  bc                                          ; $5ba5: $03
	ld   l, l                                        ; $5ba6: $6d
	dec  b                                           ; $5ba7: $05
	add  hl, de                                      ; $5ba8: $19
	ld   a, l                                        ; $5ba9: $7d
	inc  bc                                          ; $5baa: $03
	and  a                                           ; $5bab: $a7
	and  c                                           ; $5bac: $a1
	ld   l, [hl]                                     ; $5bad: $6e
	inc  b                                           ; $5bae: $04
	ld   a, b                                        ; $5baf: $78
	ld   e, d                                        ; $5bb0: $5a
	dec  c                                           ; $5bb1: $0d
	ld   d, [hl]                                     ; $5bb2: $56
	ld   d, [hl]                                     ; $5bb3: $56

jr_045_5bb4:
	and  c                                           ; $5bb4: $a1
	halt                                             ; $5bb5: $76
	ld   l, a                                        ; $5bb6: $6f
	sub  c                                           ; $5bb7: $91
	ld   d, h                                        ; $5bb8: $54
	ld   e, c                                        ; $5bb9: $59
	ld   sp, hl                                      ; $5bba: $f9
	dec  c                                           ; $5bbb: $0d
	nop                                              ; $5bbc: $00
	ld   a, [bc]                                     ; $5bbd: $0a
	jr   jr_045_5bc2                                 ; $5bbe: $18 $02

	nop                                              ; $5bc0: $00
	inc  bc                                          ; $5bc1: $03

jr_045_5bc2:
	and  a                                           ; $5bc2: $a7
	adc  [hl]                                        ; $5bc3: $8e
	nop                                              ; $5bc4: $00
	nop                                              ; $5bc5: $00
	ld   e, d                                        ; $5bc6: $5a
	and  c                                           ; $5bc7: $a1
	ld   a, [hl]                                     ; $5bc8: $7e
	sbc  c                                           ; $5bc9: $99
	nop                                              ; $5bca: $00
	ld   bc, $f307                                   ; $5bcb: $01 $07 $f3
	ld   bc, $0202                                   ; $5bce: $01 $02 $02
	ld   bc, $2000                                   ; $5bd1: $01 $00 $20
	nop                                              ; $5bd4: $00
	rlca                                             ; $5bd5: $07
	and  b                                           ; $5bd6: $a0
	ld   [bc], a                                     ; $5bd7: $02
	ld   [bc], a                                     ; $5bd8: $02
	ld   [bc], a                                     ; $5bd9: $02
	ld   bc, $2001                                   ; $5bda: $01 $01 $20
	nop                                              ; $5bdd: $00
	rrca                                             ; $5bde: $0f
	nop                                              ; $5bdf: $00
	ld   bc, $6701                                   ; $5be0: $01 $01 $67
	adc  l                                           ; $5be3: $8d
	adc  h                                           ; $5be4: $8c
	ld   l, c                                        ; $5be5: $69
	and  c                                           ; $5be6: $a1
	rst  $38                                         ; $5be7: $ff
	rst  $38                                         ; $5be8: $ff
	dec  c                                           ; $5be9: $0d
	ld   l, e                                        ; $5bea: $6b
	sbc  d                                           ; $5beb: $9a
	ld   [hl], l                                     ; $5bec: $75
	ld   a, l                                        ; $5bed: $7d
	sbc  [hl]                                        ; $5bee: $9e
	ld   [bc], a                                     ; $5bef: $02
	and  l                                           ; $5bf0: $a5
	inc  b                                           ; $5bf1: $04
	xor  d                                           ; $5bf2: $aa
	ld   a, h                                        ; $5bf3: $7c
	inc  bc                                          ; $5bf4: $03
	ld   l, l                                        ; $5bf5: $6d
	dec  b                                           ; $5bf6: $05
	add  hl, de                                      ; $5bf7: $19
	ld   a, l                                        ; $5bf8: $7d
	dec  c                                           ; $5bf9: $0d
	inc  bc                                          ; $5bfa: $03
	and  a                                           ; $5bfb: $a7
	adc  h                                           ; $5bfc: $8c
	ld   l, c                                        ; $5bfd: $69
	ld   [hl], h                                     ; $5bfe: $74
	ld   d, d                                        ; $5bff: $52
	ld   l, l                                        ; $5c00: $6d
	ld   l, [hl]                                     ; $5c01: $6e
	ld   e, e                                        ; $5c02: $5b
	adc  h                                           ; $5c03: $8c
	ld   h, a                                        ; $5c04: $67
	sbc  a                                           ; $5c05: $9f
	dec  c                                           ; $5c06: $0d
	nop                                              ; $5c07: $00
	ld   a, [bc]                                     ; $5c08: $0a
	inc  e                                           ; $5c09: $1c
	dec  b                                           ; $5c0a: $05
	nop                                              ; $5c0b: $00
	nop                                              ; $5c0c: $00
	ld   bc, $a154                                   ; $5c0d: $01 $54 $a1
	sbc  [hl]                                        ; $5c10: $9e
	ld   l, e                                        ; $5c11: $6b
	sbc  d                                           ; $5c12: $9a
	ld   e, d                                        ; $5c13: $5a
	ld   d, [hl]                                     ; $5c14: $56
	ld   d, [hl]                                     ; $5c15: $56
	ld   a, b                                        ; $5c16: $78
	sbc  a                                           ; $5c17: $9f
	dec  c                                           ; $5c18: $0d
	adc  c                                           ; $5c19: $89
	ld   a, b                                        ; $5c1a: $78
	sbc  [hl]                                        ; $5c1b: $9e
	ld   l, a                                        ; $5c1c: $6f
	sub  c                                           ; $5c1d: $91
	and  c                                           ; $5c1e: $a1
	halt                                             ; $5c1f: $76
	inc  bc                                          ; $5c20: $03
	and  a                                           ; $5c21: $a7
	and  c                                           ; $5c22: $a1
	ld   [hl], l                                     ; $5c23: $75
	dec  c                                           ; $5c24: $0d
	ld   a, l                                        ; $5c25: $7d
	sub  [hl]                                        ; $5c26: $96
	inc  bc                                          ; $5c27: $03
	ld   sp, hl                                      ; $5c28: $f9
	ld   h, l                                        ; $5c29: $65
	sub  d                                           ; $5c2a: $92
	sbc  a                                           ; $5c2b: $9f
	dec  c                                           ; $5c2c: $0d
	nop                                              ; $5c2d: $00
	ld   a, [bc]                                     ; $5c2e: $0a
	rrca                                             ; $5c2f: $0f
	nop                                              ; $5c30: $00
	ld   bc, $7d01                                   ; $5c31: $01 $01 $7d
	ld   d, d                                        ; $5c34: $52
	sbc  [hl]                                        ; $5c35: $9e
	sbc  l                                           ; $5c36: $9d
	ld   e, c                                        ; $5c37: $59
	sbc  b                                           ; $5c38: $98
	adc  h                                           ; $5c39: $8c
	ld   h, l                                        ; $5c3a: $65
	ld   l, l                                        ; $5c3b: $6d
	sbc  a                                           ; $5c3c: $9f
	dec  c                                           ; $5c3d: $0d
	ld   l, e                                        ; $5c3e: $6b
	sbc  d                                           ; $5c3f: $9a
	ld   [hl], l                                     ; $5c40: $75
	ld   a, l                                        ; $5c41: $7d
	inc  bc                                          ; $5c42: $03
	add  e                                           ; $5c43: $83
	dec  b                                           ; $5c44: $05
	dec  c                                           ; $5c45: $0d
	ld   h, l                                        ; $5c46: $65
	adc  h                                           ; $5c47: $8c
	ld   h, a                                        ; $5c48: $67
	sbc  a                                           ; $5c49: $9f
	dec  c                                           ; $5c4a: $0d
	nop                                              ; $5c4b: $00
	ld   a, [bc]                                     ; $5c4c: $0a
	dec  c                                           ; $5c4d: $0d
	nop                                              ; $5c4e: $00
	nop                                              ; $5c4f: $00
	inc  hl                                          ; $5c50: $23
	ld   bc, $6b01                                   ; $5c51: $01 $01 $6b
	sbc  d                                           ; $5c54: $9a
	ld   h, [hl]                                     ; $5c55: $66
	sub  c                                           ; $5c56: $91
	sbc  [hl]                                        ; $5c57: $9e
	inc  bc                                          ; $5c58: $03
	ld   l, h                                        ; $5c59: $6c
	ld   h, l                                        ; $5c5a: $65
	inc  bc                                          ; $5c5b: $03
	and  a                                           ; $5c5c: $a7
	adc  [hl]                                        ; $5c5d: $8e
	halt                                             ; $5c5e: $76
	ld   h, a                                        ; $5c5f: $67
	sbc  c                                           ; $5c60: $99
	ld   e, c                                        ; $5c61: $59
	sbc  a                                           ; $5c62: $9f
	dec  c                                           ; $5c63: $0d
	nop                                              ; $5c64: $00
	ld   a, [bc]                                     ; $5c65: $0a
	dec  h                                           ; $5c66: $25
	nop                                              ; $5c67: $00
	rrca                                             ; $5c68: $0f
	nop                                              ; $5c69: $00
	ld   bc, $5401                                   ; $5c6a: $01 $01 $54
	db   $fc                                         ; $5c6d: $fc
	and  c                                           ; $5c6e: $a1
	sub  [hl]                                        ; $5c6f: $96
	ld   e, l                                        ; $5c70: $5d
	inc  b                                           ; $5c71: $04
	ld   b, d                                        ; $5c72: $42
	ld   l, l                                        ; $5c73: $6d
	rst  $38                                         ; $5c74: $ff
	rst  $38                                         ; $5c75: $ff
	dec  c                                           ; $5c76: $0d
	ld   e, c                                        ; $5c77: $59
	ld   a, b                                        ; $5c78: $78
	sbc  b                                           ; $5c79: $98
	inc  b                                           ; $5c7a: $04
	dec  c                                           ; $5c7b: $0d
	ld   e, d                                        ; $5c7c: $5a
	dec  b                                           ; $5c7d: $05
	inc  de                                          ; $5c7e: $13
	ld   a, c                                        ; $5c7f: $79
	ld   a, b                                        ; $5c80: $78
	ld   [hl], c                                     ; $5c81: $71
	ld   l, l                                        ; $5c82: $6d
	ld   l, h                                        ; $5c83: $6c
	sbc  a                                           ; $5c84: $9f
	dec  c                                           ; $5c85: $0d
	nop                                              ; $5c86: $00
	ld   a, [bc]                                     ; $5c87: $0a
	add  hl, hl                                      ; $5c88: $29
	dec  b                                           ; $5c89: $05
	nop                                              ; $5c8a: $00
	rrca                                             ; $5c8b: $0f
	nop                                              ; $5c8c: $00
	ld   bc, $5201                                   ; $5c8d: $01 $01 $52
	ld   d, [hl]                                     ; $5c90: $56
	sbc  [hl]                                        ; $5c91: $9e
	inc  b                                           ; $5c92: $04
	ld   c, $03                                      ; $5c93: $0e $03
	sbc  l                                           ; $5c95: $9d
	inc  b                                           ; $5c96: $04
	and  [hl]                                        ; $5c97: $a6
	ld   [hl], l                                     ; $5c98: $75
	ld   h, a                                        ; $5c99: $67
	sbc  a                                           ; $5c9a: $9f
	dec  c                                           ; $5c9b: $0d
	ld   e, d                                        ; $5c9c: $5a
	and  c                                           ; $5c9d: $a1
	ld   a, [hl]                                     ; $5c9e: $7e
	sbc  b                                           ; $5c9f: $98
	adc  h                                           ; $5ca0: $8c
	ld   h, a                                        ; $5ca1: $67
	ld   a, [$000d]                                  ; $5ca2: $fa $0d $00
	ld   a, [bc]                                     ; $5ca5: $0a
	rlca                                             ; $5ca6: $07
	ld   sp, hl                                      ; $5ca7: $f9
	inc  bc                                          ; $5ca8: $03
	inc  bc                                          ; $5ca9: $03
	ld   b, [hl]                                     ; $5caa: $46
	ld   bc, $2000                                   ; $5cab: $01 $00 $20
	nop                                              ; $5cae: $00
	rrca                                             ; $5caf: $0f
	dec  b                                           ; $5cb0: $05
	ld   [bc], a                                     ; $5cb1: $02
	ld   bc, $546b                                   ; $5cb2: $01 $6b $54
	ld   e, c                                        ; $5cb5: $59
	rst  $38                                         ; $5cb6: $ff
	rst  $38                                         ; $5cb7: $ff
	dec  c                                           ; $5cb8: $0d
	adc  c                                           ; $5cb9: $89
	ld   a, b                                        ; $5cba: $78
	sbc  [hl]                                        ; $5cbb: $9e
	inc  bc                                          ; $5cbc: $03
	ld   l, l                                        ; $5cbd: $6d
	dec  b                                           ; $5cbe: $05
	add  hl, de                                      ; $5cbf: $19
	and  b                                           ; $5cc0: $a0
	dec  b                                           ; $5cc1: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5cc2: $cf
	adc  a                                           ; $5cc3: $8f
	sub  [hl]                                        ; $5cc4: $96
	ld   e, c                                        ; $5cc5: $59
	sbc  a                                           ; $5cc6: $9f
	dec  c                                           ; $5cc7: $0d
	nop                                              ; $5cc8: $00
	ld   a, [bc]                                     ; $5cc9: $0a
	dec  h                                           ; $5cca: $25
	dec  b                                           ; $5ccb: $05
	dec  b                                           ; $5ccc: $05
	ld   b, b                                        ; $5ccd: $40
	ld   b, [hl]                                     ; $5cce: $46
	inc  bc                                          ; $5ccf: $03
	ld   b, [hl]                                     ; $5cd0: $46
	ld   bc, $2801                                   ; $5cd1: $01 $01 $28
	nop                                              ; $5cd4: $00
	inc  e                                           ; $5cd5: $1c
	dec  b                                           ; $5cd6: $05
	ld   [bc], a                                     ; $5cd7: $02
	ld   [bc], a                                     ; $5cd8: $02
	ld   bc, $0458                                   ; $5cd9: $01 $58 $04
	ld   a, e                                        ; $5cdc: $7b
	sbc  d                                           ; $5cdd: $9a
	ld   h, e                                        ; $5cde: $63
	and  c                                           ; $5cdf: $a1
	rst  $38                                         ; $5ce0: $ff
	rst  $38                                         ; $5ce1: $ff
	dec  c                                           ; $5ce2: $0d
	ld   [$7d00], sp                                 ; $5ce3: $08 $00 $7d
	and  c                                           ; $5ce6: $a1
	sbc  [hl]                                        ; $5ce7: $9e
	adc  c                                           ; $5ce8: $89
	and  c                                           ; $5ce9: $a1
	adc  h                                           ; $5cea: $8c
	ld   a, c                                        ; $5ceb: $79
	dec  c                                           ; $5cec: $0d
	ld   a, l                                        ; $5ced: $7d
	sub  [hl]                                        ; $5cee: $96
	inc  bc                                          ; $5cef: $03
	and  a                                           ; $5cf0: $a7
	and  c                                           ; $5cf1: $a1
	ld   l, [hl]                                     ; $5cf2: $6e
	adc  c                                           ; $5cf3: $89
	ld   d, h                                        ; $5cf4: $54
	ld   e, d                                        ; $5cf5: $5a
	ld   d, [hl]                                     ; $5cf6: $56
	ld   d, [hl]                                     ; $5cf7: $56
	ld   [hl], l                                     ; $5cf8: $75
	sbc  a                                           ; $5cf9: $9f
	dec  c                                           ; $5cfa: $0d
	nop                                              ; $5cfb: $00
	ld   a, [bc]                                     ; $5cfc: $0a
	rlca                                             ; $5cfd: $07
	ld   b, h                                        ; $5cfe: $44
	inc  bc                                          ; $5cff: $03
	inc  bc                                          ; $5d00: $03
	jr   nz, jr_045_5d04                             ; $5d01: $20 $01

	nop                                              ; $5d03: $00

jr_045_5d04:
	jr   nz, jr_045_5d06                             ; $5d04: $20 $00

jr_045_5d06:
	ld   bc, $7889                                   ; $5d06: $01 $89 $78
	sbc  [hl]                                        ; $5d09: $9e
	inc  b                                           ; $5d0a: $04
	adc  a                                           ; $5d0b: $8f
	inc  b                                           ; $5d0c: $04
	xor  d                                           ; $5d0d: $aa
	ld   a, h                                        ; $5d0e: $7c
	ld   [bc], a                                     ; $5d0f: $02
	or   d                                           ; $5d10: $b2
	inc  bc                                          ; $5d11: $03
	ld   c, a                                        ; $5d12: $4f
	ld   a, h                                        ; $5d13: $7c
	inc  bc                                          ; $5d14: $03
	ld   l, l                                        ; $5d15: $6d
	dec  b                                           ; $5d16: $05
	add  hl, de                                      ; $5d17: $19
	dec  c                                           ; $5d18: $0d
	ld   h, c                                        ; $5d19: $61
	sbc  d                                           ; $5d1a: $9a
	ld   a, c                                        ; $5d1b: $79
	ld   [hl], h                                     ; $5d1c: $74
	inc  bc                                          ; $5d1d: $03
	ld   a, [hl]                                     ; $5d1e: $7e
	dec  b                                           ; $5d1f: $05
	nop                                              ; $5d20: $00
	sub  d                                           ; $5d21: $92
	sbc  a                                           ; $5d22: $9f
	dec  c                                           ; $5d23: $0d
	nop                                              ; $5d24: $00
	ld   a, [bc]                                     ; $5d25: $0a
	rrca                                             ; $5d26: $0f
	nop                                              ; $5d27: $00
	ld   bc, $000d                                   ; $5d28: $01 $0d $00
	nop                                              ; $5d2b: $00
	add  hl, bc                                      ; $5d2c: $09
	ld   e, $00                                      ; $5d2d: $1e $00
	rrca                                             ; $5d2f: $0f
	nop                                              ; $5d30: $00
	ld   bc, $7d01                                   ; $5d31: $01 $01 $7d
	ld   d, d                                        ; $5d34: $52
	sbc  [hl]                                        ; $5d35: $9e
	sbc  l                                           ; $5d36: $9d
	ld   e, c                                        ; $5d37: $59
	rst  $38                                         ; $5d38: $ff
	sbc  b                                           ; $5d39: $98
	rst  $38                                         ; $5d3a: $ff
	rst  $38                                         ; $5d3b: $ff
	adc  h                                           ; $5d3c: $8c
	rst  $38                                         ; $5d3d: $ff
	rst  $38                                         ; $5d3e: $ff
	dec  c                                           ; $5d3f: $0d
	nop                                              ; $5d40: $00
	dec  c                                           ; $5d41: $0d
	nop                                              ; $5d42: $00
	nop                                              ; $5d43: $00
	inc  c                                           ; $5d44: $0c
	ld   [bc], a                                     ; $5d45: $02
	ld   c, $03                                      ; $5d46: $0e $03
	ld   bc, $9a50                                   ; $5d48: $01 $50 $9a
	rst  $38                                         ; $5d4b: $ff
	rst  $38                                         ; $5d4c: $ff
	rst  $38                                         ; $5d4d: $ff
	ld   sp, hl                                      ; $5d4e: $f9
	dec  c                                           ; $5d4f: $0d
	ld   e, c                                        ; $5d50: $59
	sub  a                                           ; $5d51: $97
	rst  $38                                         ; $5d52: $ff
	rst  $38                                         ; $5d53: $ff
	ld   l, [hl]                                     ; $5d54: $6e
	rst  $38                                         ; $5d55: $ff
	rst  $38                                         ; $5d56: $ff
	ld   e, d                                        ; $5d57: $5a
	rst  $38                                         ; $5d58: $ff
	rst  $38                                         ; $5d59: $ff
	dec  c                                           ; $5d5a: $0d
	nop                                              ; $5d5b: $00
	ld   a, [bc]                                     ; $5d5c: $0a
	ld   l, $01                                      ; $5d5d: $2e $01
	nop                                              ; $5d5f: $00
	nop                                              ; $5d60: $00
	dec  b                                           ; $5d61: $05
	ld   b, b                                        ; $5d62: $40
	ld   b, [hl]                                     ; $5d63: $46
	inc  bc                                          ; $5d64: $03
	ld   b, [hl]                                     ; $5d65: $46
	ld   bc, $2801                                   ; $5d66: $01 $01 $28
	nop                                              ; $5d69: $00
	inc  e                                           ; $5d6a: $1c
	dec  b                                           ; $5d6b: $05
	nop                                              ; $5d6c: $00
	nop                                              ; $5d6d: $00
	ld   bc, $0458                                   ; $5d6e: $01 $58 $04
	ld   a, e                                        ; $5d71: $7b
	sbc  d                                           ; $5d72: $9a
	ld   h, e                                        ; $5d73: $63
	and  c                                           ; $5d74: $a1
	rst  $38                                         ; $5d75: $ff
	rst  $38                                         ; $5d76: $ff
	dec  c                                           ; $5d77: $0d
	nop                                              ; $5d78: $00
	inc  e                                           ; $5d79: $1c
	dec  b                                           ; $5d7a: $05
	inc  bc                                          ; $5d7b: $03
	inc  bc                                          ; $5d7c: $03
	ld   bc, $f9a1                                   ; $5d7d: $01 $a1 $f9
	db   $10                                         ; $5d80: $10
	ld   [hl], a                                     ; $5d81: $77
	ld   a, b                                        ; $5d82: $78
	ld   d, d                                        ; $5d83: $52
	ld   h, l                                        ; $5d84: $65
	and  c                                           ; $5d85: $a1
	ld   l, l                                        ; $5d86: $6d
	and  c                                           ; $5d87: $a1
	ld   sp, hl                                      ; $5d88: $f9
	dec  c                                           ; $5d89: $0d
	ld   [bc], a                                     ; $5d8a: $02
	ld   [hl], d                                     ; $5d8b: $72
	sbc  [hl]                                        ; $5d8c: $9e
	inc  bc                                          ; $5d8d: $03
	xor  l                                           ; $5d8e: $ad
	ld   [hl], c                                     ; $5d8f: $71
	inc  bc                                          ; $5d90: $03
	ld   a, [bc]                                     ; $5d91: $0a
	sub  d                                           ; $5d92: $92
	ld   [hl], l                                     ; $5d93: $75
	sbc  a                                           ; $5d94: $9f
	dec  c                                           ; $5d95: $0d
	nop                                              ; $5d96: $00
	ld   a, [bc]                                     ; $5d97: $0a
	rrca                                             ; $5d98: $0f
	nop                                              ; $5d99: $00
	ld   bc, $5601                                   ; $5d9a: $01 $01 $56
	ld   d, [hl]                                     ; $5d9d: $56
	rst  $38                                         ; $5d9e: $ff
	rst  $38                                         ; $5d9f: $ff
	ld   a, b                                        ; $5da0: $78
	and  c                                           ; $5da1: $a1
	ld   l, [hl]                                     ; $5da2: $6e
	ld   e, c                                        ; $5da3: $59
	ld   h, e                                        ; $5da4: $63
	ld   [hl], c                                     ; $5da5: $71
	ld   e, e                                        ; $5da6: $5b
	ld   e, c                                        ; $5da7: $59
	sub  a                                           ; $5da8: $97
	dec  c                                           ; $5da9: $0d
	inc  b                                           ; $5daa: $04
	dec  c                                           ; $5dab: $0d
	ld   e, d                                        ; $5dac: $5a
	ld   l, [hl]                                     ; $5dad: $6e
	sbc  c                                           ; $5dae: $99
	ld   e, l                                        ; $5daf: $5d
	ld   [hl], h                                     ; $5db0: $74
	rst  $38                                         ; $5db1: $ff
	rst  $38                                         ; $5db2: $ff
	dec  c                                           ; $5db3: $0d
	nop                                              ; $5db4: $00
	ld   a, [bc]                                     ; $5db5: $0a
	ld   bc, $6254                                   ; $5db6: $01 $54 $62
	rst  $38                                         ; $5db9: $ff
	rst  $38                                         ; $5dba: $ff
	ld   e, c                                        ; $5dbb: $59
	rst  $38                                         ; $5dbc: $ff
	rst  $38                                         ; $5dbd: $ff
	ld   a, b                                        ; $5dbe: $78
	rst  $38                                         ; $5dbf: $ff
	rst  $38                                         ; $5dc0: $ff
	dec  c                                           ; $5dc1: $0d
	nop                                              ; $5dc2: $00
	dec  c                                           ; $5dc3: $0d
	nop                                              ; $5dc4: $00
	nop                                              ; $5dc5: $00
	inc  c                                           ; $5dc6: $0c
	ld   [bc], a                                     ; $5dc7: $02
	ld   c, $03                                      ; $5dc8: $0e $03
	ld   bc, $9a50                                   ; $5dca: $01 $50 $9a
	rst  $38                                         ; $5dcd: $ff
	rst  $38                                         ; $5dce: $ff
	rst  $38                                         ; $5dcf: $ff
	ld   sp, hl                                      ; $5dd0: $f9
	dec  c                                           ; $5dd1: $0d
	ld   [hl], a                                     ; $5dd2: $77
	ld   d, h                                        ; $5dd3: $54
	ld   h, l                                        ; $5dd4: $65
	rst  $38                                         ; $5dd5: $ff
	rst  $38                                         ; $5dd6: $ff
	ld   l, l                                        ; $5dd7: $6d
	rst  $38                                         ; $5dd8: $ff
	rst  $38                                         ; $5dd9: $ff
	and  c                                           ; $5dda: $a1
	rst  $38                                         ; $5ddb: $ff
	rst  $38                                         ; $5ddc: $ff
	dec  c                                           ; $5ddd: $0d
	nop                                              ; $5dde: $00
	ld   a, [bc]                                     ; $5ddf: $0a
	ld   l, $01                                      ; $5de0: $2e $01
	nop                                              ; $5de2: $00
	nop                                              ; $5de3: $00
	rrca                                             ; $5de4: $0f
	dec  b                                           ; $5de5: $05
	ld   [bc], a                                     ; $5de6: $02
	ld   bc, $546b                                   ; $5de7: $01 $6b $54
	ld   e, c                                        ; $5dea: $59
	rst  $38                                         ; $5deb: $ff
	rst  $38                                         ; $5dec: $ff
	dec  c                                           ; $5ded: $0d
	nop                                              ; $5dee: $00
	inc  e                                           ; $5def: $1c
	dec  b                                           ; $5df0: $05
	nop                                              ; $5df1: $00
	nop                                              ; $5df2: $00
	ld   bc, $6596                                   ; $5df3: $01 $96 $65
	sbc  a                                           ; $5df6: $9f
	dec  c                                           ; $5df7: $0d
	nop                                              ; $5df8: $00
	ld   a, [bc]                                     ; $5df9: $0a
	ld   bc, wRandomNumStruct                                   ; $5dfa: $01 $a7 $c2
	ld   a, h                                        ; $5dfd: $7c
	inc  bc                                          ; $5dfe: $03
	ld   l, l                                        ; $5dff: $6d
	dec  b                                           ; $5e00: $05
	add  hl, de                                      ; $5e01: $19
	ld   a, l                                        ; $5e02: $7d
	sbc  [hl]                                        ; $5e03: $9e
	ld   b, $58                                      ; $5e04: $06 $58
	inc  b                                           ; $5e06: $04
	ld   h, c                                        ; $5e07: $61
	inc  bc                                          ; $5e08: $03
	cp   $02                                         ; $5e09: $fe $02
	ld   a, e                                        ; $5e0b: $7b
	sub  d                                           ; $5e0c: $92
	sbc  a                                           ; $5e0d: $9f
	dec  c                                           ; $5e0e: $0d
	nop                                              ; $5e0f: $00
	ld   a, [bc]                                     ; $5e10: $0a
	ld   bc, $7c61                                   ; $5e11: $01 $61 $7c
	inc  bc                                          ; $5e14: $03
	ld   l, l                                        ; $5e15: $6d
	dec  b                                           ; $5e16: $05
	add  hl, de                                      ; $5e17: $19
	ld   [hl], l                                     ; $5e18: $75
	sbc  [hl]                                        ; $5e19: $9e
	ld   [$7d00], sp                                 ; $5e1a: $08 $00 $7d
	and  c                                           ; $5e1d: $a1
	ld   a, h                                        ; $5e1e: $7c
	dec  c                                           ; $5e1f: $0d
	inc  b                                           ; $5e20: $04
	dec  hl                                          ; $5e21: $2b
	dec  b                                           ; $5e22: $05
	ld   a, [bc]                                     ; $5e23: $0a
	and  b                                           ; $5e24: $a0
	and  e                                           ; $5e25: $a3
	call nz, Call_045_65d8                           ; $5e26: $c4 $d8 $65
	ld   [hl], h                                     ; $5e29: $74
	sub  b                                           ; $5e2a: $90
	sub  a                                           ; $5e2b: $97
	ld   e, b                                        ; $5e2c: $58
	ld   d, h                                        ; $5e2d: $54
	dec  c                                           ; $5e2e: $0d
	ld   l, a                                        ; $5e2f: $6f
	sub  e                                           ; $5e30: $93
	ei                                               ; $5e31: $fb
	sbc  l                                           ; $5e32: $9d
	ld   e, a                                        ; $5e33: $5f
	sub  d                                           ; $5e34: $92
	sbc  a                                           ; $5e35: $9f
	dec  c                                           ; $5e36: $0d
	nop                                              ; $5e37: $00
	ld   a, [bc]                                     ; $5e38: $0a
	ld   bc, $7889                                   ; $5e39: $01 $89 $78
	sbc  [hl]                                        ; $5e3c: $9e
	dec  b                                           ; $5e3d: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e3e: $cf
	adc  a                                           ; $5e3f: $8f
	sbc  c                                           ; $5e40: $99
	ld   [hl], l                                     ; $5e41: $75
	sbc  a                                           ; $5e42: $9f
	dec  c                                           ; $5e43: $0d
	nop                                              ; $5e44: $00
	ld   a, [bc]                                     ; $5e45: $0a
	ld   b, $df                                      ; $5e46: $06 $df
	ld   [bc], a                                     ; $5e48: $02
	inc  e                                           ; $5e49: $1c
	dec  b                                           ; $5e4a: $05
	nop                                              ; $5e4b: $00
	nop                                              ; $5e4c: $00
	ld   bc, $a161                                   ; $5e4d: $01 $61 $a1
	ld   a, c                                        ; $5e50: $79
	ld   l, a                                        ; $5e51: $6f
	ld   a, l                                        ; $5e52: $7d
	sbc  [hl]                                        ; $5e53: $9e
	ld   [$7d00], sp                                 ; $5e54: $08 $00 $7d
	and  c                                           ; $5e57: $a1
	sbc  a                                           ; $5e58: $9f
	dec  c                                           ; $5e59: $0d
	adc  c                                           ; $5e5a: $89
	ld   a, b                                        ; $5e5b: $78
	sbc  [hl]                                        ; $5e5c: $9e
	inc  bc                                          ; $5e5d: $03
	ld   l, l                                        ; $5e5e: $6d
	dec  b                                           ; $5e5f: $05
	add  hl, de                                      ; $5e60: $19
	dec  b                                           ; $5e61: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e62: $cf
	adc  a                                           ; $5e63: $8f
	sub  [hl]                                        ; $5e64: $96
	ld   e, c                                        ; $5e65: $59
	sbc  a                                           ; $5e66: $9f
	dec  c                                           ; $5e67: $0d
	nop                                              ; $5e68: $00
	ld   a, [bc]                                     ; $5e69: $0a
	dec  h                                           ; $5e6a: $25
	dec  b                                           ; $5e6b: $05
	rlca                                             ; $5e6c: $07
	halt                                             ; $5e6d: $76
	inc  bc                                          ; $5e6e: $03
	inc  bc                                          ; $5e6f: $03
	jr   nz, jr_045_5e73                             ; $5e70: $20 $01

	nop                                              ; $5e72: $00

jr_045_5e73:
	jr   nz, jr_045_5e75                             ; $5e73: $20 $00

jr_045_5e75:
	inc  e                                           ; $5e75: $1c
	dec  b                                           ; $5e76: $05
	nop                                              ; $5e77: $00
	nop                                              ; $5e78: $00
	ld   bc, $0458                                   ; $5e79: $01 $58 $04
	ld   a, e                                        ; $5e7c: $7b
	sbc  d                                           ; $5e7d: $9a
	ld   h, e                                        ; $5e7e: $63
	and  c                                           ; $5e7f: $a1
	sbc  a                                           ; $5e80: $9f
	dec  c                                           ; $5e81: $0d
	nop                                              ; $5e82: $00
	dec  b                                           ; $5e83: $05
	ld   b, b                                        ; $5e84: $40
	ld   b, [hl]                                     ; $5e85: $46
	inc  bc                                          ; $5e86: $03
	ld   b, [hl]                                     ; $5e87: $46
	ld   bc, $2801                                   ; $5e88: $01 $01 $28
	nop                                              ; $5e8b: $00
	ld   bc, $688c                                   ; $5e8c: $01 $8c $68
	adc  h                                           ; $5e8f: $8c
	ld   l, b                                        ; $5e90: $68
	ld   [hl], c                                     ; $5e91: $71
	ld   l, a                                        ; $5e92: $6f
	sub  e                                           ; $5e93: $93
	ei                                               ; $5e94: $fb
	halt                                             ; $5e95: $76
	ld   h, c                                        ; $5e96: $61
	sub  d                                           ; $5e97: $92
	ld   a, b                                        ; $5e98: $78
	sbc  a                                           ; $5e99: $9f
	dec  c                                           ; $5e9a: $0d
	nop                                              ; $5e9b: $00
	ld   a, [bc]                                     ; $5e9c: $0a
	ld   bc, $7889                                   ; $5e9d: $01 $89 $78
	sbc  [hl]                                        ; $5ea0: $9e
	inc  b                                           ; $5ea1: $04
	adc  a                                           ; $5ea2: $8f
	inc  b                                           ; $5ea3: $04
	xor  d                                           ; $5ea4: $aa
	ld   a, h                                        ; $5ea5: $7c
	ld   [bc], a                                     ; $5ea6: $02
	or   d                                           ; $5ea7: $b2
	inc  bc                                          ; $5ea8: $03
	ld   c, a                                        ; $5ea9: $4f
	ld   a, h                                        ; $5eaa: $7c
	inc  bc                                          ; $5eab: $03
	ld   l, l                                        ; $5eac: $6d
	dec  b                                           ; $5ead: $05
	add  hl, de                                      ; $5eae: $19
	dec  c                                           ; $5eaf: $0d
	ld   h, c                                        ; $5eb0: $61
	sbc  d                                           ; $5eb1: $9a
	ld   a, c                                        ; $5eb2: $79
	ld   [hl], h                                     ; $5eb3: $74
	inc  bc                                          ; $5eb4: $03
	ld   a, [hl]                                     ; $5eb5: $7e
	dec  b                                           ; $5eb6: $05
	nop                                              ; $5eb7: $00
	sub  d                                           ; $5eb8: $92
	sbc  a                                           ; $5eb9: $9f
	dec  c                                           ; $5eba: $0d
	nop                                              ; $5ebb: $00
	ld   a, [bc]                                     ; $5ebc: $0a
	dec  c                                           ; $5ebd: $0d
	nop                                              ; $5ebe: $00
	nop                                              ; $5ebf: $00
	rrca                                             ; $5ec0: $0f
	nop                                              ; $5ec1: $00
	ld   bc, $0700                                   ; $5ec2: $01 $00 $07
	add  a                                           ; $5ec5: $87
	dec  b                                           ; $5ec6: $05
	inc  bc                                          ; $5ec7: $03
	ld   b, [hl]                                     ; $5ec8: $46
	ld   bc, $2504                                   ; $5ec9: $01 $04 $25
	nop                                              ; $5ecc: $00
	inc  e                                           ; $5ecd: $1c
	dec  b                                           ; $5ece: $05
	nop                                              ; $5ecf: $00
	nop                                              ; $5ed0: $00
	ld   bc, $a161                                   ; $5ed1: $01 $61 $a1
	ld   a, c                                        ; $5ed4: $79
	ld   l, a                                        ; $5ed5: $6f
	ld   a, l                                        ; $5ed6: $7d
	sbc  [hl]                                        ; $5ed7: $9e
	ld   [$7d00], sp                                 ; $5ed8: $08 $00 $7d
	and  c                                           ; $5edb: $a1
	sbc  a                                           ; $5edc: $9f
	dec  c                                           ; $5edd: $0d
	adc  c                                           ; $5ede: $89
	ld   a, b                                        ; $5edf: $78
	sbc  [hl]                                        ; $5ee0: $9e
	inc  bc                                          ; $5ee1: $03
	ld   l, l                                        ; $5ee2: $6d
	dec  b                                           ; $5ee3: $05
	add  hl, de                                      ; $5ee4: $19
	dec  b                                           ; $5ee5: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ee6: $cf
	adc  a                                           ; $5ee7: $8f
	sub  [hl]                                        ; $5ee8: $96
	ld   e, c                                        ; $5ee9: $59
	sbc  a                                           ; $5eea: $9f
	dec  c                                           ; $5eeb: $0d
	nop                                              ; $5eec: $00
	ld   a, [bc]                                     ; $5eed: $0a
	dec  h                                           ; $5eee: $25
	dec  b                                           ; $5eef: $05
	rlca                                             ; $5ef0: $07
	halt                                             ; $5ef1: $76
	inc  bc                                          ; $5ef2: $03
	inc  bc                                          ; $5ef3: $03
	jr   nz, jr_045_5ef7                             ; $5ef4: $20 $01

	nop                                              ; $5ef6: $00

jr_045_5ef7:
	jr   nz, jr_045_5ef9                             ; $5ef7: $20 $00

jr_045_5ef9:
	inc  e                                           ; $5ef9: $1c
	dec  b                                           ; $5efa: $05
	nop                                              ; $5efb: $00
	nop                                              ; $5efc: $00
	ld   bc, $0458                                   ; $5efd: $01 $58 $04
	ld   a, e                                        ; $5f00: $7b
	sbc  d                                           ; $5f01: $9a
	ld   h, e                                        ; $5f02: $63
	and  c                                           ; $5f03: $a1
	sbc  a                                           ; $5f04: $9f
	dec  c                                           ; $5f05: $0d
	ld   e, a                                        ; $5f06: $5f
	ld   [hl], c                                     ; $5f07: $71
	ld   h, c                                        ; $5f08: $61
	ld   d, h                                        ; $5f09: $54
	sbc  [hl]                                        ; $5f0a: $9e
	xor  c                                           ; $5f0b: $a9
	xor  c                                           ; $5f0c: $a9
	ld   [bc], a                                     ; $5f0d: $02
	scf                                              ; $5f0e: $37
	ld   h, [hl]                                     ; $5f0f: $66
	ld   a, c                                        ; $5f10: $79
	dec  c                                           ; $5f11: $0d
	ld   [hl], l                                     ; $5f12: $75
	ld   e, e                                        ; $5f13: $5b
	sbc  c                                           ; $5f14: $99
	sub  [hl]                                        ; $5f15: $96
	ld   d, h                                        ; $5f16: $54
	ld   a, c                                        ; $5f17: $79
	ld   a, b                                        ; $5f18: $78
	ld   [hl], c                                     ; $5f19: $71
	ld   l, l                                        ; $5f1a: $6d
	sub  d                                           ; $5f1b: $92
	and  c                                           ; $5f1c: $a1
	sbc  a                                           ; $5f1d: $9f
	dec  c                                           ; $5f1e: $0d
	nop                                              ; $5f1f: $00
	ld   a, [bc]                                     ; $5f20: $0a
	inc  e                                           ; $5f21: $1c
	dec  b                                           ; $5f22: $05
	ld   bc, $0101                                   ; $5f23: $01 $01 $01
	ld   h, c                                        ; $5f26: $61
	sbc  d                                           ; $5f27: $9a
	ld   e, c                                        ; $5f28: $59
	sub  a                                           ; $5f29: $97
	sub  b                                           ; $5f2a: $90
	sbc  [hl]                                        ; $5f2b: $9e
	ld   h, c                                        ; $5f2c: $61
	ld   a, h                                        ; $5f2d: $7c
	inc  bc                                          ; $5f2e: $03
	cp   $03                                         ; $5f2f: $fe $03
	add  [hl]                                        ; $5f31: $86
	ld   [hl], l                                     ; $5f32: $75
	dec  c                                           ; $5f33: $0d
	ld   e, d                                        ; $5f34: $5a
	and  c                                           ; $5f35: $a1
	ld   a, [hl]                                     ; $5f36: $7e
	sbc  b                                           ; $5f37: $98
	sub  d                                           ; $5f38: $92
	db   $fc                                         ; $5f39: $fc
	sbc  a                                           ; $5f3a: $9f
	dec  c                                           ; $5f3b: $0d
	nop                                              ; $5f3c: $00
	ld   a, [bc]                                     ; $5f3d: $0a
	dec  b                                           ; $5f3e: $05
	ld   b, b                                        ; $5f3f: $40
	ld   b, [hl]                                     ; $5f40: $46
	inc  bc                                          ; $5f41: $03
	ld   b, [hl]                                     ; $5f42: $46
	ld   bc, $2801                                   ; $5f43: $01 $01 $28
	nop                                              ; $5f46: $00
	inc  e                                           ; $5f47: $1c
	dec  b                                           ; $5f48: $05
	nop                                              ; $5f49: $00
	nop                                              ; $5f4a: $00
	ld   bc, $7889                                   ; $5f4b: $01 $89 $78
	sbc  [hl]                                        ; $5f4e: $9e
	inc  b                                           ; $5f4f: $04
	adc  a                                           ; $5f50: $8f
	inc  b                                           ; $5f51: $04
	xor  d                                           ; $5f52: $aa
	ld   a, h                                        ; $5f53: $7c
	ld   [bc], a                                     ; $5f54: $02
	or   d                                           ; $5f55: $b2
	inc  bc                                          ; $5f56: $03
	ld   c, a                                        ; $5f57: $4f
	ld   a, h                                        ; $5f58: $7c
	inc  bc                                          ; $5f59: $03
	ld   l, l                                        ; $5f5a: $6d
	dec  b                                           ; $5f5b: $05
	add  hl, de                                      ; $5f5c: $19
	dec  c                                           ; $5f5d: $0d
	ld   h, c                                        ; $5f5e: $61
	sbc  d                                           ; $5f5f: $9a
	ld   a, c                                        ; $5f60: $79
	ld   [hl], h                                     ; $5f61: $74
	inc  bc                                          ; $5f62: $03
	ld   a, [hl]                                     ; $5f63: $7e
	dec  b                                           ; $5f64: $05
	nop                                              ; $5f65: $00
	sub  d                                           ; $5f66: $92
	sbc  a                                           ; $5f67: $9f
	dec  c                                           ; $5f68: $0d
	nop                                              ; $5f69: $00
	ld   a, [bc]                                     ; $5f6a: $0a
	dec  c                                           ; $5f6b: $0d
	nop                                              ; $5f6c: $00
	nop                                              ; $5f6d: $00
	rrca                                             ; $5f6e: $0f
	nop                                              ; $5f6f: $00
	ld   bc, $1c00                                   ; $5f70: $01 $00 $1c
	dec  b                                           ; $5f73: $05
	nop                                              ; $5f74: $00
	nop                                              ; $5f75: $00
	ld   bc, $a161                                   ; $5f76: $01 $61 $a1
	ld   a, c                                        ; $5f79: $79
	ld   l, a                                        ; $5f7a: $6f
	ld   a, l                                        ; $5f7b: $7d
	sbc  [hl]                                        ; $5f7c: $9e
	ld   [$7d00], sp                                 ; $5f7d: $08 $00 $7d
	and  c                                           ; $5f80: $a1
	sbc  a                                           ; $5f81: $9f
	dec  c                                           ; $5f82: $0d
	adc  c                                           ; $5f83: $89
	ld   a, b                                        ; $5f84: $78
	sbc  [hl]                                        ; $5f85: $9e
	inc  bc                                          ; $5f86: $03
	ld   l, l                                        ; $5f87: $6d
	dec  b                                           ; $5f88: $05
	add  hl, de                                      ; $5f89: $19
	dec  b                                           ; $5f8a: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f8b: $cf
	adc  a                                           ; $5f8c: $8f
	sub  [hl]                                        ; $5f8d: $96
	ld   e, c                                        ; $5f8e: $59
	sbc  a                                           ; $5f8f: $9f
	dec  c                                           ; $5f90: $0d
	nop                                              ; $5f91: $00
	ld   a, [bc]                                     ; $5f92: $0a
	dec  h                                           ; $5f93: $25
	dec  b                                           ; $5f94: $05
	rlca                                             ; $5f95: $07
	halt                                             ; $5f96: $76
	inc  bc                                          ; $5f97: $03
	inc  bc                                          ; $5f98: $03
	jr   nz, jr_045_5f9c                             ; $5f99: $20 $01

	nop                                              ; $5f9b: $00

jr_045_5f9c:
	jr   nz, jr_045_5f9e                             ; $5f9c: $20 $00

jr_045_5f9e:
	inc  e                                           ; $5f9e: $1c
	dec  b                                           ; $5f9f: $05
	nop                                              ; $5fa0: $00
	nop                                              ; $5fa1: $00
	ld   bc, $0458                                   ; $5fa2: $01 $58 $04
	ld   a, e                                        ; $5fa5: $7b
	sbc  d                                           ; $5fa6: $9a
	ld   h, e                                        ; $5fa7: $63
	and  c                                           ; $5fa8: $a1
	sbc  a                                           ; $5fa9: $9f
	dec  c                                           ; $5faa: $0d
	ld   a, b                                        ; $5fab: $78
	ld   e, c                                        ; $5fac: $59
	ld   a, b                                        ; $5fad: $78
	ld   e, c                                        ; $5fae: $59
	cp   h                                           ; $5faf: $bc
	push af                                          ; $5fb0: $f5
	cp   d                                           ; $5fb1: $ba
	ld   d, b                                        ; $5fb2: $50
	sbc  c                                           ; $5fb3: $99
	sub  d                                           ; $5fb4: $92
	and  c                                           ; $5fb5: $a1
	dec  c                                           ; $5fb6: $0d
	ld   [$7d00], sp                                 ; $5fb7: $08 $00 $7d
	and  c                                           ; $5fba: $a1
	sbc  a                                           ; $5fbb: $9f
	dec  c                                           ; $5fbc: $0d
	nop                                              ; $5fbd: $00
	ld   a, [bc]                                     ; $5fbe: $0a
	inc  e                                           ; $5fbf: $1c
	dec  b                                           ; $5fc0: $05
	ld   bc, $0101                                   ; $5fc1: $01 $01 $01
	ld   h, c                                        ; $5fc4: $61
	ld   a, h                                        ; $5fc5: $7c
	inc  bc                                          ; $5fc6: $03
	cp   $03                                         ; $5fc7: $fe $03
	add  [hl]                                        ; $5fc9: $86
	ld   [hl], l                                     ; $5fca: $75
	sbc  [hl]                                        ; $5fcb: $9e
	ld   e, d                                        ; $5fcc: $5a
	and  c                                           ; $5fcd: $a1
	ld   a, [hl]                                     ; $5fce: $7e
	sbc  b                                           ; $5fcf: $98
	sub  d                                           ; $5fd0: $92
	sbc  a                                           ; $5fd1: $9f
	dec  c                                           ; $5fd2: $0d
	nop                                              ; $5fd3: $00
	ld   a, [bc]                                     ; $5fd4: $0a
	dec  b                                           ; $5fd5: $05
	ld   b, b                                        ; $5fd6: $40
	ld   b, [hl]                                     ; $5fd7: $46
	inc  bc                                          ; $5fd8: $03
	ld   b, [hl]                                     ; $5fd9: $46
	ld   bc, $2801                                   ; $5fda: $01 $01 $28
	nop                                              ; $5fdd: $00
	inc  e                                           ; $5fde: $1c
	dec  b                                           ; $5fdf: $05
	nop                                              ; $5fe0: $00
	nop                                              ; $5fe1: $00
	ld   bc, $7889                                   ; $5fe2: $01 $89 $78
	sbc  [hl]                                        ; $5fe5: $9e
	inc  b                                           ; $5fe6: $04
	adc  a                                           ; $5fe7: $8f
	inc  b                                           ; $5fe8: $04
	xor  d                                           ; $5fe9: $aa
	ld   a, h                                        ; $5fea: $7c
	ld   [bc], a                                     ; $5feb: $02
	or   d                                           ; $5fec: $b2
	inc  bc                                          ; $5fed: $03
	ld   c, a                                        ; $5fee: $4f
	ld   a, h                                        ; $5fef: $7c
	inc  bc                                          ; $5ff0: $03
	ld   l, l                                        ; $5ff1: $6d
	dec  b                                           ; $5ff2: $05
	add  hl, de                                      ; $5ff3: $19
	dec  c                                           ; $5ff4: $0d
	ld   h, c                                        ; $5ff5: $61
	sbc  d                                           ; $5ff6: $9a
	ld   a, c                                        ; $5ff7: $79
	ld   [hl], h                                     ; $5ff8: $74
	inc  bc                                          ; $5ff9: $03
	ld   a, [hl]                                     ; $5ffa: $7e
	dec  b                                           ; $5ffb: $05
	nop                                              ; $5ffc: $00
	sub  d                                           ; $5ffd: $92
	sbc  a                                           ; $5ffe: $9f
	dec  c                                           ; $5fff: $0d
	nop                                              ; $6000: $00
	ld   a, [bc]                                     ; $6001: $0a
	dec  c                                           ; $6002: $0d
	nop                                              ; $6003: $00
	nop                                              ; $6004: $00
	rrca                                             ; $6005: $0f
	nop                                              ; $6006: $00
	ld   bc, $0700                                   ; $6007: $01 $00 $07
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $600a: $cf
	ld   b, $03                                      ; $600b: $06 $03
	ld   b, [hl]                                     ; $600d: $46
	ld   bc, $2507                                   ; $600e: $01 $07 $25
	nop                                              ; $6011: $00
	inc  e                                           ; $6012: $1c
	dec  b                                           ; $6013: $05
	nop                                              ; $6014: $00
	nop                                              ; $6015: $00
	ld   bc, $a161                                   ; $6016: $01 $61 $a1
	ld   a, c                                        ; $6019: $79
	ld   l, a                                        ; $601a: $6f
	ld   a, l                                        ; $601b: $7d
	sbc  [hl]                                        ; $601c: $9e
	ld   [$7d00], sp                                 ; $601d: $08 $00 $7d
	and  c                                           ; $6020: $a1
	sbc  a                                           ; $6021: $9f
	dec  c                                           ; $6022: $0d
	adc  c                                           ; $6023: $89
	ld   a, b                                        ; $6024: $78
	sbc  [hl]                                        ; $6025: $9e
	inc  bc                                          ; $6026: $03
	ld   l, l                                        ; $6027: $6d
	dec  b                                           ; $6028: $05
	add  hl, de                                      ; $6029: $19
	dec  b                                           ; $602a: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $602b: $cf
	adc  a                                           ; $602c: $8f
	sub  [hl]                                        ; $602d: $96
	ld   e, c                                        ; $602e: $59
	sbc  a                                           ; $602f: $9f
	dec  c                                           ; $6030: $0d
	nop                                              ; $6031: $00
	ld   a, [bc]                                     ; $6032: $0a
	dec  h                                           ; $6033: $25
	dec  b                                           ; $6034: $05
	rlca                                             ; $6035: $07
	halt                                             ; $6036: $76
	inc  bc                                          ; $6037: $03
	inc  bc                                          ; $6038: $03
	jr   nz, jr_045_603c                             ; $6039: $20 $01

	nop                                              ; $603b: $00

jr_045_603c:
	jr   nz, jr_045_603e                             ; $603c: $20 $00

jr_045_603e:
	inc  e                                           ; $603e: $1c
	dec  b                                           ; $603f: $05
	ld   bc, $0101                                   ; $6040: $01 $01 $01
	sub  d                                           ; $6043: $92
	sbc  c                                           ; $6044: $99
	ld   a, b                                        ; $6045: $78
	db   $fc                                         ; $6046: $fc
	sbc  [hl]                                        ; $6047: $9e
	ld   [$7d00], sp                                 ; $6048: $08 $00 $7d
	and  c                                           ; $604b: $a1
	sbc  a                                           ; $604c: $9f
	dec  c                                           ; $604d: $0d
	inc  bc                                          ; $604e: $03
	ld   c, d                                        ; $604f: $4a
	inc  bc                                          ; $6050: $03
	jp   c, $d49e                                    ; $6051: $da $9e $d4

	call nz, $ecb0                                   ; $6054: $c4 $b0 $ec
	ld   h, l                                        ; $6057: $65
	ld   l, l                                        ; $6058: $6d
	ld   [hl], l                                     ; $6059: $75
	sbc  a                                           ; $605a: $9f
	dec  c                                           ; $605b: $0d
	nop                                              ; $605c: $00
	ld   a, [bc]                                     ; $605d: $0a
	ld   bc, $a161                                   ; $605e: $01 $61 $a1
	ld   a, b                                        ; $6061: $78
	ld   a, c                                        ; $6062: $79
	sub  d                                           ; $6063: $92
	sbc  c                                           ; $6064: $99
	halt                                             ; $6065: $76
	ld   a, l                                        ; $6066: $7d
	sbc  [hl]                                        ; $6067: $9e
	dec  c                                           ; $6068: $0d
	dec  b                                           ; $6069: $05
	pop  de                                          ; $606a: $d1
	ld   [hl], h                                     ; $606b: $74
	ld   a, b                                        ; $606c: $78
	ld   e, c                                        ; $606d: $59
	ld   [hl], c                                     ; $606e: $71
	ld   l, l                                        ; $606f: $6d
	sbc  l                                           ; $6070: $9d
	db   $fc                                         ; $6071: $fc
	sbc  a                                           ; $6072: $9f
	dec  c                                           ; $6073: $0d
	ld   h, c                                        ; $6074: $61
	sbc  d                                           ; $6075: $9a
	ld   e, c                                        ; $6076: $59
	sub  a                                           ; $6077: $97
	sub  b                                           ; $6078: $90
	sbc  [hl]                                        ; $6079: $9e
	ld   h, c                                        ; $607a: $61
	ld   a, h                                        ; $607b: $7c
	inc  bc                                          ; $607c: $03
	cp   $03                                         ; $607d: $fe $03
	add  [hl]                                        ; $607f: $86
	ld   [hl], l                                     ; $6080: $75
	ld   a, b                                        ; $6081: $78
	sbc  a                                           ; $6082: $9f
	dec  c                                           ; $6083: $0d
	nop                                              ; $6084: $00
	ld   a, [bc]                                     ; $6085: $0a
	dec  b                                           ; $6086: $05
	ld   b, b                                        ; $6087: $40
	ld   b, [hl]                                     ; $6088: $46
	inc  bc                                          ; $6089: $03
	ld   b, [hl]                                     ; $608a: $46
	ld   bc, $2801                                   ; $608b: $01 $01 $28
	nop                                              ; $608e: $00
	inc  e                                           ; $608f: $1c
	dec  b                                           ; $6090: $05
	nop                                              ; $6091: $00
	nop                                              ; $6092: $00
	ld   bc, $7889                                   ; $6093: $01 $89 $78
	sbc  [hl]                                        ; $6096: $9e
	inc  b                                           ; $6097: $04
	adc  a                                           ; $6098: $8f
	inc  b                                           ; $6099: $04
	xor  d                                           ; $609a: $aa
	ld   a, h                                        ; $609b: $7c
	ld   [bc], a                                     ; $609c: $02
	or   d                                           ; $609d: $b2
	inc  bc                                          ; $609e: $03
	ld   c, a                                        ; $609f: $4f
	ld   a, h                                        ; $60a0: $7c
	inc  bc                                          ; $60a1: $03
	ld   l, l                                        ; $60a2: $6d
	dec  b                                           ; $60a3: $05
	add  hl, de                                      ; $60a4: $19
	dec  c                                           ; $60a5: $0d
	ld   h, c                                        ; $60a6: $61
	sbc  d                                           ; $60a7: $9a
	ld   a, c                                        ; $60a8: $79
	ld   [hl], h                                     ; $60a9: $74
	inc  bc                                          ; $60aa: $03
	ld   a, [hl]                                     ; $60ab: $7e
	dec  b                                           ; $60ac: $05
	nop                                              ; $60ad: $00
	sub  d                                           ; $60ae: $92
	sbc  a                                           ; $60af: $9f
	dec  c                                           ; $60b0: $0d
	nop                                              ; $60b1: $00
	ld   a, [bc]                                     ; $60b2: $0a
	dec  c                                           ; $60b3: $0d
	nop                                              ; $60b4: $00
	nop                                              ; $60b5: $00
	rrca                                             ; $60b6: $0f
	nop                                              ; $60b7: $00
	ld   bc, $1c00                                   ; $60b8: $01 $00 $1c
	dec  b                                           ; $60bb: $05
	nop                                              ; $60bc: $00
	nop                                              ; $60bd: $00
	ld   bc, $a161                                   ; $60be: $01 $61 $a1
	ld   a, c                                        ; $60c1: $79
	ld   l, a                                        ; $60c2: $6f
	ld   a, l                                        ; $60c3: $7d
	sbc  [hl]                                        ; $60c4: $9e
	ld   [$7d00], sp                                 ; $60c5: $08 $00 $7d
	and  c                                           ; $60c8: $a1
	sbc  a                                           ; $60c9: $9f
	dec  c                                           ; $60ca: $0d
	adc  c                                           ; $60cb: $89
	ld   a, b                                        ; $60cc: $78
	sbc  [hl]                                        ; $60cd: $9e
	inc  bc                                          ; $60ce: $03
	ld   l, l                                        ; $60cf: $6d
	dec  b                                           ; $60d0: $05
	add  hl, de                                      ; $60d1: $19
	dec  b                                           ; $60d2: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $60d3: $cf
	adc  a                                           ; $60d4: $8f
	sub  [hl]                                        ; $60d5: $96
	ld   e, c                                        ; $60d6: $59
	sbc  a                                           ; $60d7: $9f
	dec  c                                           ; $60d8: $0d
	nop                                              ; $60d9: $00
	ld   a, [bc]                                     ; $60da: $0a
	dec  h                                           ; $60db: $25
	dec  b                                           ; $60dc: $05
	rlca                                             ; $60dd: $07
	halt                                             ; $60de: $76
	inc  bc                                          ; $60df: $03
	inc  bc                                          ; $60e0: $03
	jr   nz, jr_045_60e4                             ; $60e1: $20 $01

	nop                                              ; $60e3: $00

jr_045_60e4:
	jr   nz, jr_045_60e6                             ; $60e4: $20 $00

jr_045_60e6:
	inc  e                                           ; $60e6: $1c
	dec  b                                           ; $60e7: $05
	ld   bc, $0101                                   ; $60e8: $01 $01 $01
	ld   d, [hl]                                     ; $60eb: $56
	ld   d, [hl]                                     ; $60ec: $56
	ld   [bc], a                                     ; $60ed: $02
	scf                                              ; $60ee: $37
	ld   h, [hl]                                     ; $60ef: $66
	sub  d                                           ; $60f0: $92
	ld   [hl], l                                     ; $60f1: $75
	db   $fc                                         ; $60f2: $fc
	sbc  [hl]                                        ; $60f3: $9e
	dec  c                                           ; $60f4: $0d
	ld   [$7d00], sp                                 ; $60f5: $08 $00 $7d
	and  c                                           ; $60f8: $a1
	sbc  a                                           ; $60f9: $9f
	dec  c                                           ; $60fa: $0d
	ld   l, e                                        ; $60fb: $6b
	ld   a, h                                        ; $60fc: $7c
	inc  bc                                          ; $60fd: $03
	cp   $03                                         ; $60fe: $fe $03
	add  [hl]                                        ; $6100: $86
	sbc  [hl]                                        ; $6101: $9e
	ld   l, e                                        ; $6102: $6b
	ld   a, h                                        ; $6103: $7c
	inc  bc                                          ; $6104: $03
	cp   $03                                         ; $6105: $fe $03
	add  [hl]                                        ; $6107: $86
	sbc  a                                           ; $6108: $9f
	dec  c                                           ; $6109: $0d
	nop                                              ; $610a: $00
	ld   a, [bc]                                     ; $610b: $0a
	dec  b                                           ; $610c: $05
	ld   b, b                                        ; $610d: $40
	ld   b, [hl]                                     ; $610e: $46
	inc  bc                                          ; $610f: $03
	ld   b, [hl]                                     ; $6110: $46
	ld   bc, $2801                                   ; $6111: $01 $01 $28
	nop                                              ; $6114: $00
	inc  e                                           ; $6115: $1c
	dec  b                                           ; $6116: $05
	nop                                              ; $6117: $00
	nop                                              ; $6118: $00
	ld   bc, $7889                                   ; $6119: $01 $89 $78
	sbc  [hl]                                        ; $611c: $9e
	inc  b                                           ; $611d: $04
	adc  a                                           ; $611e: $8f
	inc  b                                           ; $611f: $04
	xor  d                                           ; $6120: $aa
	ld   a, h                                        ; $6121: $7c
	ld   [bc], a                                     ; $6122: $02
	or   d                                           ; $6123: $b2
	inc  bc                                          ; $6124: $03
	ld   c, a                                        ; $6125: $4f
	ld   a, h                                        ; $6126: $7c
	inc  bc                                          ; $6127: $03
	ld   l, l                                        ; $6128: $6d
	dec  b                                           ; $6129: $05
	add  hl, de                                      ; $612a: $19
	dec  c                                           ; $612b: $0d
	ld   h, c                                        ; $612c: $61
	sbc  d                                           ; $612d: $9a
	ld   a, c                                        ; $612e: $79
	ld   [hl], h                                     ; $612f: $74
	inc  bc                                          ; $6130: $03
	ld   a, [hl]                                     ; $6131: $7e
	dec  b                                           ; $6132: $05
	nop                                              ; $6133: $00
	sub  d                                           ; $6134: $92
	sbc  a                                           ; $6135: $9f
	dec  c                                           ; $6136: $0d
	nop                                              ; $6137: $00
	ld   a, [bc]                                     ; $6138: $0a
	dec  c                                           ; $6139: $0d
	nop                                              ; $613a: $00
	nop                                              ; $613b: $00
	rrca                                             ; $613c: $0f
	nop                                              ; $613d: $00
	ld   bc, $0e00                                   ; $613e: $01 $00 $0e
	ld   bc, $0702                                   ; $6141: $01 $02 $07
	sub  [hl]                                        ; $6144: $96
	rlca                                             ; $6145: $07
	inc  bc                                          ; $6146: $03
	jr   nz, jr_045_614a                             ; $6147: $20 $01

	ld   b, b                                        ; $6149: $40

jr_045_614a:
	dec  h                                           ; $614a: $25
	nop                                              ; $614b: $00
	dec  b                                           ; $614c: $05
	ld   b, b                                        ; $614d: $40
	ld   d, d                                        ; $614e: $52
	ld   bc, $0000                                   ; $614f: $01 $00 $00
	ld   bc, $ffff                                   ; $6152: $01 $ff $ff
	ld   d, h                                        ; $6155: $54
	db   $fc                                         ; $6156: $fc
	and  c                                           ; $6157: $a1
	rst  $38                                         ; $6158: $ff
	rst  $38                                         ; $6159: $ff
	dec  c                                           ; $615a: $0d
	ld   a, b                                        ; $615b: $78
	and  c                                           ; $615c: $a1
	ld   l, [hl]                                     ; $615d: $6e
	ld   e, c                                        ; $615e: $59
	inc  b                                           ; $615f: $04
	dec  c                                           ; $6160: $0d
	inc  bc                                          ; $6161: $03
	cp   $5a                                         ; $6162: $fe $5a
	ld   [bc], a                                     ; $6164: $02
	jr   z, jr_045_61b9                              ; $6165: $28 $52

	ld   a, b                                        ; $6167: $78
	rst  $38                                         ; $6168: $ff
	rst  $38                                         ; $6169: $ff
	dec  c                                           ; $616a: $0d
	ld   [bc], a                                     ; $616b: $02
	and  l                                           ; $616c: $a5
	inc  b                                           ; $616d: $04
	xor  d                                           ; $616e: $aa
	ld   a, h                                        ; $616f: $7c
	inc  bc                                          ; $6170: $03
	ld   l, l                                        ; $6171: $6d
	dec  b                                           ; $6172: $05
	add  hl, de                                      ; $6173: $19
	ld   a, l                                        ; $6174: $7d
	inc  bc                                          ; $6175: $03
	and  a                                           ; $6176: $a7
	adc  [hl]                                        ; $6177: $8e
	ld   e, c                                        ; $6178: $59
	ld   a, b                                        ; $6179: $78
	sbc  a                                           ; $617a: $9f
	dec  c                                           ; $617b: $0d
	nop                                              ; $617c: $00
	ld   a, [bc]                                     ; $617d: $0a
	ld   b, $c1                                      ; $617e: $06 $c1
	rlca                                             ; $6180: $07
	ld   bc, $a502                                   ; $6181: $01 $02 $a5
	inc  b                                           ; $6184: $04
	xor  d                                           ; $6185: $aa
	ld   a, l                                        ; $6186: $7d
	ld   a, b                                        ; $6187: $78
	and  c                                           ; $6188: $a1
	ld   l, [hl]                                     ; $6189: $6e
	ld   e, c                                        ; $618a: $59
	inc  bc                                          ; $618b: $03
	ld   l, l                                        ; $618c: $6d
	dec  b                                           ; $618d: $05
	add  hl, de                                      ; $618e: $19
	ld   a, c                                        ; $618f: $79
	dec  c                                           ; $6190: $0d
	ld   [bc], a                                     ; $6191: $02
	ld   a, a                                        ; $6192: $7f
	ld   e, e                                        ; $6193: $5b
	ld   l, l                                        ; $6194: $6d
	ld   e, l                                        ; $6195: $5d
	ld   a, b                                        ; $6196: $78
	ld   d, d                                        ; $6197: $52
	ld   a, b                                        ; $6198: $78
	ld   d, b                                        ; $6199: $50
	rst  $38                                         ; $619a: $ff
	rst  $38                                         ; $619b: $ff
	dec  c                                           ; $619c: $0d
	inc  bc                                          ; $619d: $03
	ld   l, l                                        ; $619e: $6d
	dec  b                                           ; $619f: $05
	add  hl, de                                      ; $61a0: $19
	rst  $38                                         ; $61a1: $ff
	rst  $38                                         ; $61a2: $ff
	inc  bc                                          ; $61a3: $03
	and  a                                           ; $61a4: $a7
	adc  [hl]                                        ; $61a5: $8e
	ld   e, c                                        ; $61a6: $59
	ld   a, b                                        ; $61a7: $78
	sbc  a                                           ; $61a8: $9f
	dec  c                                           ; $61a9: $0d
	nop                                              ; $61aa: $00
	ld   a, [bc]                                     ; $61ab: $0a
	inc  hl                                          ; $61ac: $23
	ld   c, h                                        ; $61ad: $4c
	inc  d                                           ; $61ae: $14
	ld   b, $01                                      ; $61af: $06 $01
	add  hl, bc                                      ; $61b1: $09
	ld   e, $01                                      ; $61b2: $1e $01
	ld   [bc], a                                     ; $61b4: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $61b5: $cf
	dec  b                                           ; $61b6: $05
	ld   a, [de]                                     ; $61b7: $1a
	ld   h, e                                        ; $61b8: $63

jr_045_61b9:
	and  c                                           ; $61b9: $a1
	sbc  [hl]                                        ; $61ba: $9e
	dec  c                                           ; $61bb: $0d
	ld   d, d                                        ; $61bc: $52
	sub  a                                           ; $61bd: $97
	ld   [hl], c                                     ; $61be: $71
	ld   h, l                                        ; $61bf: $65
	sub  c                                           ; $61c0: $91
	ld   d, d                                        ; $61c1: $52
	adc  h                                           ; $61c2: $8c
	ld   h, a                                        ; $61c3: $67
	ld   e, c                                        ; $61c4: $59
	ld   sp, hl                                      ; $61c5: $f9
	dec  c                                           ; $61c6: $0d
	nop                                              ; $61c7: $00
	ld   a, [bc]                                     ; $61c8: $0a
	rrca                                             ; $61c9: $0f
	dec  b                                           ; $61ca: $05
	nop                                              ; $61cb: $00
	ld   bc, $fb7d                                   ; $61cc: $01 $7d $fb
	ld   d, d                                        ; $61cf: $52
	sbc  a                                           ; $61d0: $9f
	dec  c                                           ; $61d1: $0d
	ld   l, a                                        ; $61d2: $6f
	sub  l                                           ; $61d3: $95
	ld   [hl], c                                     ; $61d4: $71
	halt                                             ; $61d5: $76
	adc  h                                           ; $61d6: $8c
	ld   [hl], c                                     ; $61d7: $71
	ld   [hl], h                                     ; $61d8: $74
	ld   a, b                                        ; $61d9: $78
	sbc  a                                           ; $61da: $9f
	dec  c                                           ; $61db: $0d
	nop                                              ; $61dc: $00
	ld   a, [bc]                                     ; $61dd: $0a
	inc  d                                           ; $61de: $14
	ld   a, [bc]                                     ; $61df: $0a
	ld   bc, $4d0e                                   ; $61e0: $01 $0e $4d
	rlca                                             ; $61e3: $07
	xor  [hl]                                        ; $61e4: $ae
	ld   [$2003], sp                                 ; $61e5: $08 $03 $20
	ld   bc, $2540                                   ; $61e8: $01 $40 $25
	nop                                              ; $61eb: $00
	inc  e                                           ; $61ec: $1c
	dec  b                                           ; $61ed: $05
	ld   bc, $0101                                   ; $61ee: $01 $01 $01
	ld   h, c                                        ; $61f1: $61
	and  c                                           ; $61f2: $a1
	ld   a, c                                        ; $61f3: $79
	ld   l, a                                        ; $61f4: $6f
	ld   a, l                                        ; $61f5: $7d
	sbc  [hl]                                        ; $61f6: $9e
	dec  c                                           ; $61f7: $0d
	ld   [$7d00], sp                                 ; $61f8: $08 $00 $7d
	and  c                                           ; $61fb: $a1
	sbc  a                                           ; $61fc: $9f
	dec  c                                           ; $61fd: $0d
	nop                                              ; $61fe: $00
	ld   a, [bc]                                     ; $61ff: $0a
	inc  e                                           ; $6200: $1c
	dec  b                                           ; $6201: $05
	ld   [bc], a                                     ; $6202: $02
	ld   [bc], a                                     ; $6203: $02
	ld   bc, $ffff                                   ; $6204: $01 $ff $ff
	and  c                                           ; $6207: $a1
	ld   sp, hl                                      ; $6208: $f9
	dec  c                                           ; $6209: $0d
	ld   a, b                                        ; $620a: $78
	and  c                                           ; $620b: $a1
	sub  d                                           ; $620c: $92
	sbc  [hl]                                        ; $620d: $9e
	ld   d, [hl]                                     ; $620e: $56
	sub  a                                           ; $620f: $97
	ld   d, d                                        ; $6210: $52
	ld   [bc], a                                     ; $6211: $02
	ld   [hl], d                                     ; $6212: $72
	inc  bc                                          ; $6213: $03
	dec  bc                                          ; $6214: $0b
	dec  c                                           ; $6215: $0d
	sbc  l                                           ; $6216: $9d
	sbc  c                                           ; $6217: $99
	ld   d, d                                        ; $6218: $52
	sub  d                                           ; $6219: $92
	ld   a, b                                        ; $621a: $78
	ld   d, d                                        ; $621b: $52
	ld   e, c                                        ; $621c: $59
	sbc  a                                           ; $621d: $9f
	dec  c                                           ; $621e: $0d
	nop                                              ; $621f: $00
	ld   a, [bc]                                     ; $6220: $0a
	rrca                                             ; $6221: $0f
	nop                                              ; $6222: $00
	ld   bc, $7d01                                   ; $6223: $01 $01 $7d
	ld   d, d                                        ; $6226: $52
	sbc  [hl]                                        ; $6227: $9e
	ld   l, a                                        ; $6228: $6f
	sub  l                                           ; $6229: $95
	ld   [hl], c                                     ; $622a: $71
	halt                                             ; $622b: $76
	inc  b                                           ; $622c: $04
	dec  c                                           ; $622d: $0d
	inc  bc                                          ; $622e: $03
	cp   $5a                                         ; $622f: $fe $5a
	dec  c                                           ; $6231: $0d
	sbc  l                                           ; $6232: $9d
	sbc  c                                           ; $6233: $99
	ld   e, l                                        ; $6234: $5d
	ld   [hl], h                                     ; $6235: $74
	rst  $38                                         ; $6236: $ff
	rst  $38                                         ; $6237: $ff
	ld   [bc], a                                     ; $6238: $02
	and  l                                           ; $6239: $a5
	inc  b                                           ; $623a: $04
	xor  d                                           ; $623b: $aa
	ld   a, h                                        ; $623c: $7c
	inc  bc                                          ; $623d: $03
	ld   l, l                                        ; $623e: $6d
	dec  b                                           ; $623f: $05
	add  hl, de                                      ; $6240: $19
	ld   a, l                                        ; $6241: $7d
	dec  c                                           ; $6242: $0d
	inc  bc                                          ; $6243: $03
	and  a                                           ; $6244: $a7
	adc  h                                           ; $6245: $8c
	ld   l, c                                        ; $6246: $69
	ld   [hl], h                                     ; $6247: $74
	adc  c                                           ; $6248: $89
	ld   h, l                                        ; $6249: $65
	ld   d, d                                        ; $624a: $52
	ld   a, h                                        ; $624b: $7c
	ld   [hl], l                                     ; $624c: $75
	ld   h, a                                        ; $624d: $67
	ld   e, d                                        ; $624e: $5a
	rst  $38                                         ; $624f: $ff
	rst  $38                                         ; $6250: $ff
	dec  c                                           ; $6251: $0d
	nop                                              ; $6252: $00
	ld   a, [bc]                                     ; $6253: $0a
	inc  e                                           ; $6254: $1c
	dec  b                                           ; $6255: $05
	nop                                              ; $6256: $00
	nop                                              ; $6257: $00
	ld   bc, $a154                                   ; $6258: $01 $54 $a1
	sbc  [hl]                                        ; $625b: $9e
	ld   l, e                                        ; $625c: $6b
	sbc  d                                           ; $625d: $9a
	ld   e, d                                        ; $625e: $5a
	ld   d, [hl]                                     ; $625f: $56
	ld   d, [hl]                                     ; $6260: $56
	ld   a, b                                        ; $6261: $78
	sbc  a                                           ; $6262: $9f
	dec  c                                           ; $6263: $0d
	ld   l, a                                        ; $6264: $6f
	sub  c                                           ; $6265: $91
	and  c                                           ; $6266: $a1
	halt                                             ; $6267: $76
	inc  bc                                          ; $6268: $03
	and  a                                           ; $6269: $a7
	and  c                                           ; $626a: $a1
	ld   [hl], l                                     ; $626b: $75
	sbc  [hl]                                        ; $626c: $9e
	ld   a, l                                        ; $626d: $7d
	sub  [hl]                                        ; $626e: $96
	inc  bc                                          ; $626f: $03
	ld   sp, hl                                      ; $6270: $f9
	ld   h, l                                        ; $6271: $65
	ld   l, l                                        ; $6272: $6d
	dec  c                                           ; $6273: $0d
	adc  c                                           ; $6274: $89
	ld   d, h                                        ; $6275: $54
	ld   e, d                                        ; $6276: $5a
	ld   d, [hl]                                     ; $6277: $56
	ld   d, [hl]                                     ; $6278: $56
	sbc  a                                           ; $6279: $9f
	dec  c                                           ; $627a: $0d
	nop                                              ; $627b: $00
	ld   a, [bc]                                     ; $627c: $0a
	ld   bc, $9a6b                                   ; $627d: $01 $6b $9a
	ld   h, [hl]                                     ; $6280: $66
	sub  c                                           ; $6281: $91
	sbc  [hl]                                        ; $6282: $9e
	ld   e, b                                        ; $6283: $58
	inc  b                                           ; $6284: $04
	ld   c, $02                                      ; $6285: $0e $02
	jp   Jump_045_7879                               ; $6287: $c3 $79 $78


	sbc  a                                           ; $628a: $9f
	dec  c                                           ; $628b: $0d
	nop                                              ; $628c: $00
	ld   a, [bc]                                     ; $628d: $0a
	dec  c                                           ; $628e: $0d
	nop                                              ; $628f: $00
	nop                                              ; $6290: $00
	rrca                                             ; $6291: $0f
	nop                                              ; $6292: $00
	ld   bc, $1e09                                   ; $6293: $01 $09 $1e
	ld   b, $65                                      ; $6296: $06 $65
	ld   [bc], a                                     ; $6298: $02
	inc  e                                           ; $6299: $1c
	dec  b                                           ; $629a: $05
	nop                                              ; $629b: $00
	nop                                              ; $629c: $00
	ld   bc, $a178                                   ; $629d: $01 $78 $a1
	sub  d                                           ; $62a0: $92
	sbc  [hl]                                        ; $62a1: $9e
	ld   [$7d00], sp                                 ; $62a2: $08 $00 $7d
	and  c                                           ; $62a5: $a1
	sbc  a                                           ; $62a6: $9f
	dec  c                                           ; $62a7: $0d
	sub  b                                           ; $62a8: $90
	ld   d, h                                        ; $62a9: $54
	ld   h, a                                        ; $62aa: $67
	ld   e, [hl]                                     ; $62ab: $5e
	inc  bc                                          ; $62ac: $03
	ld   l, l                                        ; $62ad: $6d
	dec  b                                           ; $62ae: $05
	add  hl, de                                      ; $62af: $19
	ld   a, h                                        ; $62b0: $7c
	inc  bc                                          ; $62b1: $03
	ld   l, a                                        ; $62b2: $6f
	ld   [bc], a                                     ; $62b3: $02
	xor  c                                           ; $62b4: $a9
	sub  d                                           ; $62b5: $92
	ld   [hl], l                                     ; $62b6: $75
	sbc  a                                           ; $62b7: $9f
	dec  c                                           ; $62b8: $0d
	nop                                              ; $62b9: $00
	ld   a, [bc]                                     ; $62ba: $0a
	rrca                                             ; $62bb: $0f
	nop                                              ; $62bc: $00
	ld   bc, $7d01                                   ; $62bd: $01 $01 $7d
	ld   d, d                                        ; $62c0: $52
	rst  $38                                         ; $62c1: $ff
	rst  $38                                         ; $62c2: $ff
	ld   d, b                                        ; $62c3: $50
	ld   a, h                                        ; $62c4: $7c
	rst  $38                                         ; $62c5: $ff
	rst  $38                                         ; $62c6: $ff
	dec  c                                           ; $62c7: $0d
	ld   [bc], a                                     ; $62c8: $02
	and  l                                           ; $62c9: $a5
	inc  b                                           ; $62ca: $04
	xor  d                                           ; $62cb: $aa
	ld   a, h                                        ; $62cc: $7c
	inc  bc                                          ; $62cd: $03
	ld   l, l                                        ; $62ce: $6d
	dec  b                                           ; $62cf: $05
	add  hl, de                                      ; $62d0: $19
	and  b                                           ; $62d1: $a0
	inc  bc                                          ; $62d2: $03
	and  a                                           ; $62d3: $a7
	adc  h                                           ; $62d4: $8c
	ld   l, c                                        ; $62d5: $69
	ld   [hl], h                                     ; $62d6: $74
	dec  c                                           ; $62d7: $0d
	inc  b                                           ; $62d8: $04
	db   $e3                                         ; $62d9: $e3
	ld   h, l                                        ; $62da: $65
	ld   d, d                                        ; $62db: $52
	ld   a, h                                        ; $62dc: $7c
	ld   [hl], l                                     ; $62dd: $75
	ld   h, a                                        ; $62de: $67
	ld   e, d                                        ; $62df: $5a
	rst  $38                                         ; $62e0: $ff
	rst  $38                                         ; $62e1: $ff
	dec  c                                           ; $62e2: $0d
	nop                                              ; $62e3: $00
	ld   a, [bc]                                     ; $62e4: $0a
	inc  e                                           ; $62e5: $1c
	dec  b                                           ; $62e6: $05
	ld   [bc], a                                     ; $62e7: $02
	ld   [bc], a                                     ; $62e8: $02
	ld   bc, $5656                                   ; $62e9: $01 $56 $56
	ld   e, a                                        ; $62ec: $5f
	ld   [hl], a                                     ; $62ed: $77
	rst  $38                                         ; $62ee: $ff
	rst  $38                                         ; $62ef: $ff
	dec  c                                           ; $62f0: $0d
	ld   a, b                                        ; $62f1: $78
	and  c                                           ; $62f2: $a1
	ld   e, c                                        ; $62f3: $59
	inc  b                                           ; $62f4: $04
	di                                               ; $62f5: $f3
	ld   [bc], a                                     ; $62f6: $02
	jp   $9075                                       ; $62f7: $c3 $75 $90


	ld   d, b                                        ; $62fa: $50
	sbc  c                                           ; $62fb: $99
	and  c                                           ; $62fc: $a1
	ld   e, c                                        ; $62fd: $59
	ld   d, d                                        ; $62fe: $52
	ld   a, b                                        ; $62ff: $78
	ld   sp, hl                                      ; $6300: $f9
	dec  c                                           ; $6301: $0d
	nop                                              ; $6302: $00
	ld   a, [bc]                                     ; $6303: $0a
	rrca                                             ; $6304: $0f
	nop                                              ; $6305: $00
	ld   bc, $5201                                   ; $6306: $01 $01 $52
	ld   d, [hl]                                     ; $6309: $56
	sbc  [hl]                                        ; $630a: $9e
	halt                                             ; $630b: $76
	ld   e, l                                        ; $630c: $5d
	ld   a, c                                        ; $630d: $79
	inc  b                                           ; $630e: $04
	di                                               ; $630f: $f3
	ld   [bc], a                                     ; $6310: $02
	jp   Jump_045_5276                               ; $6311: $c3 $76 $52


	ld   d, h                                        ; $6314: $54
	dec  c                                           ; $6315: $0d
	sbc  l                                           ; $6316: $9d
	ld   e, a                                        ; $6317: $5f
	ld   [hl], l                                     ; $6318: $75
	sub  b                                           ; $6319: $90
	ld   a, b                                        ; $631a: $78
	ld   d, d                                        ; $631b: $52
	and  c                                           ; $631c: $a1
	ld   [hl], l                                     ; $631d: $75
	ld   h, a                                        ; $631e: $67
	ld   e, d                                        ; $631f: $5a
	rst  $38                                         ; $6320: $ff
	rst  $38                                         ; $6321: $ff
	dec  c                                           ; $6322: $0d
	nop                                              ; $6323: $00
	ld   a, [bc]                                     ; $6324: $0a
	rrca                                             ; $6325: $0f
	dec  b                                           ; $6326: $05
	ld   [bc], a                                     ; $6327: $02
	dec  e                                           ; $6328: $1d
	ld   b, b                                        ; $6329: $40
	dec  d                                           ; $632a: $15
	inc  bc                                          ; $632b: $03
	dec  d                                           ; $632c: $15
	ld   bc, $2902                                   ; $632d: $01 $02 $29
	nop                                              ; $6330: $00
	ld   bc, $ffff                                   ; $6331: $01 $ff $ff
	rst  $38                                         ; $6334: $ff
	rst  $38                                         ; $6335: $ff
	adc  h                                           ; $6336: $8c
	ld   d, b                                        ; $6337: $50
	ld   d, [hl]                                     ; $6338: $56
	ld   d, [hl]                                     ; $6339: $56
	sub  d                                           ; $633a: $92
	sbc  e                                           ; $633b: $9b
	sbc  a                                           ; $633c: $9f
	dec  c                                           ; $633d: $0d
	adc  c                                           ; $633e: $89
	ld   a, b                                        ; $633f: $78
	sbc  [hl]                                        ; $6340: $9e
	ld   [bc], a                                     ; $6341: $02
	and  l                                           ; $6342: $a5
	inc  b                                           ; $6343: $04
	xor  d                                           ; $6344: $aa
	ld   a, h                                        ; $6345: $7c
	inc  bc                                          ; $6346: $03
	ld   l, l                                        ; $6347: $6d
	dec  b                                           ; $6348: $05
	add  hl, de                                      ; $6349: $19
	ld   a, l                                        ; $634a: $7d
	inc  bc                                          ; $634b: $03
	and  a                                           ; $634c: $a7
	adc  l                                           ; $634d: $8d
	dec  c                                           ; $634e: $0d
	halt                                             ; $634f: $76
	ld   d, d                                        ; $6350: $52
	ld   d, h                                        ; $6351: $54
	ld   h, c                                        ; $6352: $61
	halt                                             ; $6353: $76
	ld   a, c                                        ; $6354: $79
	ld   h, l                                        ; $6355: $65
	halt                                             ; $6356: $76
	ld   e, l                                        ; $6357: $5d
	sbc  l                                           ; $6358: $9d
	sbc  a                                           ; $6359: $9f
	dec  c                                           ; $635a: $0d
	nop                                              ; $635b: $00
	ld   a, [bc]                                     ; $635c: $0a
	ld   bc, $6d8c                                   ; $635d: $01 $8c $6d
	ld   a, b                                        ; $6360: $78
	sbc  a                                           ; $6361: $9f
	dec  c                                           ; $6362: $0d
	nop                                              ; $6363: $00
	ld   a, [bc]                                     ; $6364: $0a
	dec  c                                           ; $6365: $0d
	nop                                              ; $6366: $00
	nop                                              ; $6367: $00
	rrca                                             ; $6368: $0f
	nop                                              ; $6369: $00
	ld   bc, $1e09                                   ; $636a: $01 $09 $1e
	ld   b, $65                                      ; $636d: $06 $65
	ld   [bc], a                                     ; $636f: $02
	nop                                              ; $6370: $00
	ld   [bc], a                                     ; $6371: $02
	ld   b, $01                                      ; $6372: $06 $01
	inc  b                                           ; $6374: $04
	jr   nz, jr_045_6377                             ; $6375: $20 $00

jr_045_6377:
	rrca                                             ; $6377: $0f
	nop                                              ; $6378: $00
	ld   bc, $0706                                   ; $6379: $01 $06 $07
	nop                                              ; $637c: $00
	ld   [bc], a                                     ; $637d: $02
	rlca                                             ; $637e: $07
	ldh  a, [rTAC]                                   ; $637f: $f0 $07
	inc  b                                           ; $6381: $04
	add  b                                           ; $6382: $80
	add  $00                                         ; $6383: $c6 $00
	ld   c, $2d                                      ; $6385: $0e $2d
	ld   [bc], a                                     ; $6387: $02
	rlca                                             ; $6388: $07
	jp   $0301                                       ; $6389: $c3 $01 $03


	jr   nz, @+$03                                   ; $638c: $20 $01

	jr   nz, jr_045_63b3                             ; $638e: $20 $23

	nop                                              ; $6390: $00
	rlca                                             ; $6391: $07
	ld   h, c                                        ; $6392: $61
	ld   bc, $5103                                   ; $6393: $01 $03 $51
	ld   [bc], a                                     ; $6396: $02
	nop                                              ; $6397: $00
	inc  bc                                          ; $6398: $03
	ld   c, e                                        ; $6399: $4b
	add  hl, hl                                      ; $639a: $29
	add  hl, hl                                      ; $639b: $29
	ld   bc, $2501                                   ; $639c: $01 $01 $25
	nop                                              ; $639f: $00
	rlca                                             ; $63a0: $07
	ld   e, c                                        ; $63a1: $59
	nop                                              ; $63a2: $00
	inc  bc                                          ; $63a3: $03
	ld   b, l                                        ; $63a4: $45
	ld   bc, $2000                                   ; $63a5: $01 $00 $20
	nop                                              ; $63a8: $00
	rlca                                             ; $63a9: $07
	and  [hl]                                        ; $63aa: $a6
	inc  b                                           ; $63ab: $04
	inc  bc                                          ; $63ac: $03
	ld   b, l                                        ; $63ad: $45
	ld   bc, $2501                                   ; $63ae: $01 $01 $25
	inc  bc                                          ; $63b1: $03
	ld   b, l                                        ; $63b2: $45

jr_045_63b3:
	ld   bc, $2302                                   ; $63b3: $01 $02 $23
	inc  e                                           ; $63b6: $1c
	nop                                              ; $63b7: $00
	rlca                                             ; $63b8: $07
	dec  de                                          ; $63b9: $1b
	dec  b                                           ; $63ba: $05
	inc  bc                                          ; $63bb: $03
	ld   b, l                                        ; $63bc: $45
	ld   bc, $2503                                   ; $63bd: $01 $03 $25
	inc  bc                                          ; $63c0: $03
	ld   b, l                                        ; $63c1: $45
	ld   bc, $2305                                   ; $63c2: $01 $05 $23
	inc  e                                           ; $63c5: $1c
	nop                                              ; $63c6: $00
	rlca                                             ; $63c7: $07
	add  a                                           ; $63c8: $87
	ld   b, $03                                      ; $63c9: $06 $03
	ld   b, l                                        ; $63cb: $45
	ld   bc, $2506                                   ; $63cc: $01 $06 $25
	nop                                              ; $63cf: $00
	inc  e                                           ; $63d0: $1c
	inc  b                                           ; $63d1: $04
	nop                                              ; $63d2: $00
	nop                                              ; $63d3: $00
	ld   bc, $a161                                   ; $63d4: $01 $61 $a1
	ld   a, c                                        ; $63d7: $79
	ld   l, a                                        ; $63d8: $6f
	ld   a, l                                        ; $63d9: $7d
	sbc  [hl]                                        ; $63da: $9e
	ld   l, a                                        ; $63db: $6f
	ld   d, d                                        ; $63dc: $52
	ld   [bc], a                                     ; $63dd: $02
	inc  de                                          ; $63de: $13
	ld   l, a                                        ; $63df: $6f
	sub  c                                           ; $63e0: $91
	and  c                                           ; $63e1: $a1
	sbc  a                                           ; $63e2: $9f
	dec  c                                           ; $63e3: $0d
	nop                                              ; $63e4: $00
	ld   a, [bc]                                     ; $63e5: $0a
	ld   bc, $a5a3                                   ; $63e6: $01 $a3 $a5
	db   $ec                                         ; $63e9: $ec
	cp   d                                           ; $63ea: $ba
	halt                                             ; $63eb: $76
	ld   a, h                                        ; $63ec: $7c
	ld   e, l                                        ; $63ed: $5d
	and  c                                           ; $63ee: $a1
	sbc  d                                           ; $63ef: $9a
	and  c                                           ; $63f0: $a1
	ld   a, l                                        ; $63f1: $7d
	dec  c                                           ; $63f2: $0d
	sbc  d                                           ; $63f3: $9a
	ld   d, d                                        ; $63f4: $52
	sbc  b                                           ; $63f5: $98
	sub  l                                           ; $63f6: $95
	ld   e, l                                        ; $63f7: $5d
	and  e                                           ; $63f8: $a3
	call nz, Call_045_7cd8                           ; $63f9: $c4 $d8 $7c
	ld   e, l                                        ; $63fc: $5d
	and  c                                           ; $63fd: $a1
	sbc  d                                           ; $63fe: $9a
	and  c                                           ; $63ff: $a1
	dec  c                                           ; $6400: $0d
	ld   l, [hl]                                     ; $6401: $6e
	sub  [hl]                                        ; $6402: $96
	sbc  a                                           ; $6403: $9f
	dec  c                                           ; $6404: $0d
	nop                                              ; $6405: $00
	ld   a, [bc]                                     ; $6406: $0a
	inc  e                                           ; $6407: $1c
	inc  b                                           ; $6408: $04
	nop                                              ; $6409: $00
	nop                                              ; $640a: $00
	ld   bc, $9a6b                                   ; $640b: $01 $6b $9a
	ld   h, [hl]                                     ; $640e: $66
	sub  c                                           ; $640f: $91
	sbc  [hl]                                        ; $6410: $9e
	ld   a, l                                        ; $6411: $7d
	ld   h, [hl]                                     ; $6412: $66
	adc  a                                           ; $6413: $8f
	sbc  c                                           ; $6414: $99
	sub  [hl]                                        ; $6415: $96
	sbc  a                                           ; $6416: $9f
	dec  c                                           ; $6417: $0d
	nop                                              ; $6418: $00
	ld   a, [bc]                                     ; $6419: $0a
	dec  h                                           ; $641a: $25
	inc  b                                           ; $641b: $04
	rlca                                             ; $641c: $07
	call nc, $0303                                   ; $641d: $d4 $03 $03
	jr   nz, jr_045_6423                             ; $6420: $20 $01

	nop                                              ; $6422: $00

jr_045_6423:
	jr   nz, jr_045_6425                             ; $6423: $20 $00

jr_045_6425:
	inc  e                                           ; $6425: $1c
	inc  b                                           ; $6426: $04
	nop                                              ; $6427: $00
	nop                                              ; $6428: $00
	ld   bc, $7258                                   ; $6429: $01 $58 $72
	ld   e, c                                        ; $642c: $59
	sbc  d                                           ; $642d: $9a
	ld   h, e                                        ; $642e: $63
	adc  h                                           ; $642f: $8c
	sbc  [hl]                                        ; $6430: $9e
	ld   l, a                                        ; $6431: $6f
	ld   d, d                                        ; $6432: $52
	ld   [bc], a                                     ; $6433: $02
	inc  de                                          ; $6434: $13
	ld   l, a                                        ; $6435: $6f
	sub  c                                           ; $6436: $91
	and  c                                           ; $6437: $a1
	sbc  a                                           ; $6438: $9f
	dec  c                                           ; $6439: $0d
	nop                                              ; $643a: $00
	inc  e                                           ; $643b: $1c
	inc  b                                           ; $643c: $04
	inc  bc                                          ; $643d: $03
	inc  bc                                          ; $643e: $03
	ld   bc, $ffff                                   ; $643f: $01 $ff $ff
	ld   e, e                                        ; $6442: $5b
	sub  l                                           ; $6443: $95
	ld   d, h                                        ; $6444: $54
	ld   a, l                                        ; $6445: $7d
	sbc  [hl]                                        ; $6446: $9e
	ld   d, b                                        ; $6447: $50
	and  c                                           ; $6448: $a1
	adc  h                                           ; $6449: $8c
	sbc  b                                           ; $644a: $98
	ld   d, h                                        ; $644b: $54
	adc  h                                           ; $644c: $8c
	ld   e, l                                        ; $644d: $5d
	dec  c                                           ; $644e: $0d
	ld   d, d                                        ; $644f: $52
	ld   e, c                                        ; $6450: $59
	ld   a, b                                        ; $6451: $78
	ld   e, c                                        ; $6452: $59
	ld   [hl], c                                     ; $6453: $71
	ld   l, l                                        ; $6454: $6d
	ld   a, e                                        ; $6455: $7b
	rst  $38                                         ; $6456: $ff
	rst  $38                                         ; $6457: $ff
	dec  c                                           ; $6458: $0d
	nop                                              ; $6459: $00
	ld   a, [bc]                                     ; $645a: $0a
	inc  e                                           ; $645b: $1c
	inc  b                                           ; $645c: $04
	nop                                              ; $645d: $00
	nop                                              ; $645e: $00
	ld   bc, $9075                                   ; $645f: $01 $75 $90
	sbc  [hl]                                        ; $6462: $9e
	ld   l, [hl]                                     ; $6463: $6e
	ld   d, d                                        ; $6464: $52
	ld   h, [hl]                                     ; $6465: $66
	sub  l                                           ; $6466: $95
	ld   d, h                                        ; $6467: $54
	add  h                                           ; $6468: $84
	ld   l, [hl]                                     ; $6469: $6e
	sub  [hl]                                        ; $646a: $96
	sbc  a                                           ; $646b: $9f
	dec  c                                           ; $646c: $0d
	ld   l, a                                        ; $646d: $6f
	sub  c                                           ; $646e: $91
	and  c                                           ; $646f: $a1
	halt                                             ; $6470: $76
	ld   e, l                                        ; $6471: $5d
	and  c                                           ; $6472: $a1
	sbc  d                                           ; $6473: $9a
	and  c                                           ; $6474: $a1
	ld   h, l                                        ; $6475: $65
	ld   [hl], h                                     ; $6476: $74
	sbc  d                                           ; $6477: $9a
	ld   a, [hl]                                     ; $6478: $7e
	dec  c                                           ; $6479: $0d
	ld   [hl], l                                     ; $647a: $75
	ld   e, e                                        ; $647b: $5b
	sbc  c                                           ; $647c: $99
	sub  [hl]                                        ; $647d: $96
	ld   d, h                                        ; $647e: $54
	ld   a, c                                        ; $647f: $79
	ld   a, b                                        ; $6480: $78
	sbc  c                                           ; $6481: $99
	ld   e, c                                        ; $6482: $59
	sub  a                                           ; $6483: $97
	sbc  a                                           ; $6484: $9f
	dec  c                                           ; $6485: $0d
	nop                                              ; $6486: $00
	ld   a, [bc]                                     ; $6487: $0a
	inc  e                                           ; $6488: $1c
	inc  b                                           ; $6489: $04
	ld   bc, $0101                                   ; $648a: $01 $01 $01
	ld   l, e                                        ; $648d: $6b
	sbc  d                                           ; $648e: $9a
	adc  h                                           ; $648f: $8c
	ld   [hl], l                                     ; $6490: $75
	sbc  [hl]                                        ; $6491: $9e
	ld   d, d                                        ; $6492: $52
	ld   [hl], c                                     ; $6493: $71
	ld   h, l                                        ; $6494: $65
	sub  l                                           ; $6495: $95
	ld   a, c                                        ; $6496: $79
	dec  c                                           ; $6497: $0d
	ld   e, d                                        ; $6498: $5a
	and  c                                           ; $6499: $a1
	ld   a, [hl]                                     ; $649a: $7e
	sbc  e                                           ; $649b: $9b
	ei                                               ; $649c: $fb
	ld   a, e                                        ; $649d: $7b
	ld   a, [$0dfa]                                  ; $649e: $fa $fa $0d
	ld   l, a                                        ; $64a1: $6f
	ld   d, d                                        ; $64a2: $52
	ld   [bc], a                                     ; $64a3: $02
	inc  de                                          ; $64a4: $13
	ld   l, a                                        ; $64a5: $6f
	sub  c                                           ; $64a6: $91
	and  c                                           ; $64a7: $a1
	ld   a, [$0dfa]                                  ; $64a8: $fa $fa $0d
	nop                                              ; $64ab: $00
	ld   a, [bc]                                     ; $64ac: $0a
	ld   bc, $9a6b                                   ; $64ad: $01 $6b $9a
	ld   h, [hl]                                     ; $64b0: $66
	sub  c                                           ; $64b1: $91
	sbc  [hl]                                        ; $64b2: $9e
	ld   e, e                                        ; $64b3: $5b
	sub  l                                           ; $64b4: $95
	ld   d, h                                        ; $64b5: $54
	ld   a, h                                        ; $64b6: $7c
	ld   e, l                                        ; $64b7: $5d
	and  c                                           ; $64b8: $a1
	sbc  d                                           ; $64b9: $9a
	and  c                                           ; $64ba: $a1
	ld   a, l                                        ; $64bb: $7d
	dec  c                                           ; $64bc: $0d
	ld   h, c                                        ; $64bd: $61
	sbc  d                                           ; $64be: $9a
	ld   [hl], l                                     ; $64bf: $75
	ld   e, b                                        ; $64c0: $58
	ld   h, l                                        ; $64c1: $65
	adc  h                                           ; $64c2: $8c
	ld   d, d                                        ; $64c3: $52
	ld   a, [$000d]                                  ; $64c4: $fa $0d $00
	ld   a, [bc]                                     ; $64c7: $0a
	dec  b                                           ; $64c8: $05
	ld   b, b                                        ; $64c9: $40
	ld   b, l                                        ; $64ca: $45
	inc  bc                                          ; $64cb: $03
	ld   b, l                                        ; $64cc: $45
	ld   bc, $2801                                   ; $64cd: $01 $01 $28
	nop                                              ; $64d0: $00
	dec  c                                           ; $64d1: $0d
	nop                                              ; $64d2: $00
	nop                                              ; $64d3: $00
	rrca                                             ; $64d4: $0f
	nop                                              ; $64d5: $00
	ld   bc, $1c00                                   ; $64d6: $01 $00 $1c
	inc  b                                           ; $64d9: $04
	rlca                                             ; $64da: $07
	rlca                                             ; $64db: $07
	ld   bc, $ffff                                   ; $64dc: $01 $ff $ff
	rst  $38                                         ; $64df: $ff
	rst  $38                                         ; $64e0: $ff
	ld   h, [hl]                                     ; $64e1: $66
	sub  c                                           ; $64e2: $91
	sbc  [hl]                                        ; $64e3: $9e
	ld   e, l                                        ; $64e4: $5d
	and  c                                           ; $64e5: $a1
	sbc  d                                           ; $64e6: $9a
	and  c                                           ; $64e7: $a1
	dec  c                                           ; $64e8: $0d
	ld   a, l                                        ; $64e9: $7d
	ld   h, [hl]                                     ; $64ea: $66
	adc  a                                           ; $64eb: $8f
	sbc  c                                           ; $64ec: $99
	sub  [hl]                                        ; $64ed: $96
	sbc  a                                           ; $64ee: $9f
	dec  c                                           ; $64ef: $0d
	nop                                              ; $64f0: $00
	ld   a, [bc]                                     ; $64f1: $0a
	dec  b                                           ; $64f2: $05
	ld   b, b                                        ; $64f3: $40
	ld   d, c                                        ; $64f4: $51
	ld   bc, $0000                                   ; $64f5: $01 $00 $00
	dec  h                                           ; $64f8: $25
	inc  b                                           ; $64f9: $04
	rlca                                             ; $64fa: $07
	call nc, $0303                                   ; $64fb: $d4 $03 $03
	jr   nz, jr_045_6501                             ; $64fe: $20 $01

	nop                                              ; $6500: $00

jr_045_6501:
	jr   nz, jr_045_6503                             ; $6501: $20 $00

jr_045_6503:
	inc  e                                           ; $6503: $1c
	inc  b                                           ; $6504: $04
	rlca                                             ; $6505: $07
	rlca                                             ; $6506: $07
	ld   bc, $7258                                   ; $6507: $01 $58 $72
	ld   e, c                                        ; $650a: $59
	sbc  d                                           ; $650b: $9a
	ld   h, e                                        ; $650c: $63
	adc  h                                           ; $650d: $8c
	rst  $38                                         ; $650e: $ff
	rst  $38                                         ; $650f: $ff
	dec  c                                           ; $6510: $0d
	nop                                              ; $6511: $00
	ld   a, [bc]                                     ; $6512: $0a
	dec  c                                           ; $6513: $0d
	nop                                              ; $6514: $00
	nop                                              ; $6515: $00
	rrca                                             ; $6516: $0f
	nop                                              ; $6517: $00
	ld   bc, $4005                                   ; $6518: $01 $05 $40
	ld   b, l                                        ; $651b: $45
	inc  bc                                          ; $651c: $03
	ld   b, l                                        ; $651d: $45
	ld   bc, $2801                                   ; $651e: $01 $01 $28
	nop                                              ; $6521: $00
	ld   bc, $ffff                                   ; $6522: $01 $ff $ff
	rst  $38                                         ; $6525: $ff
	rst  $38                                         ; $6526: $ff
	and  e                                           ; $6527: $a3
	and  l                                           ; $6528: $a5
	db   $ec                                         ; $6529: $ec
	cp   d                                           ; $652a: $ba
	sbc  [hl]                                        ; $652b: $9e
	dec  c                                           ; $652c: $0d
	ld   e, e                                        ; $652d: $5b
	ld   h, b                                        ; $652e: $60
	and  c                                           ; $652f: $a1
	ld   [bc], a                                     ; $6530: $02
	jr   z, jr_045_6585                              ; $6531: $28 $52

	ld   l, h                                        ; $6533: $6c
	rst  $38                                         ; $6534: $ff
	rst  $38                                         ; $6535: $ff
	dec  c                                           ; $6536: $0d
	nop                                              ; $6537: $00
	ld   a, [bc]                                     ; $6538: $0a
	nop                                              ; $6539: $00
	inc  e                                           ; $653a: $1c
	inc  b                                           ; $653b: $04
	nop                                              ; $653c: $00
	nop                                              ; $653d: $00
	dec  b                                           ; $653e: $05
	ld   b, b                                        ; $653f: $40
	ld   d, c                                        ; $6540: $51
	ld   bc, $0000                                   ; $6541: $01 $00 $00
	ld   bc, $a161                                   ; $6544: $01 $61 $a1
	ld   a, c                                        ; $6547: $79
	ld   l, a                                        ; $6548: $6f
	ld   a, l                                        ; $6549: $7d
	sbc  [hl]                                        ; $654a: $9e
	ld   l, a                                        ; $654b: $6f
	ld   d, d                                        ; $654c: $52
	ld   [bc], a                                     ; $654d: $02
	inc  de                                          ; $654e: $13
	ld   l, a                                        ; $654f: $6f
	sub  c                                           ; $6550: $91
	and  c                                           ; $6551: $a1
	sbc  a                                           ; $6552: $9f
	dec  c                                           ; $6553: $0d
	nop                                              ; $6554: $00
	inc  e                                           ; $6555: $1c
	inc  b                                           ; $6556: $04
	ld   b, $06                                      ; $6557: $06 $06
	ld   bc, $ffff                                   ; $6559: $01 $ff $ff
	ld   d, b                                        ; $655c: $50
	sbc  d                                           ; $655d: $9a
	ld   sp, hl                                      ; $655e: $f9
	db   $10                                         ; $655f: $10
	ld   [hl], a                                     ; $6560: $77
	ld   d, h                                        ; $6561: $54
	ld   h, l                                        ; $6562: $65
	ld   l, l                                        ; $6563: $6d
	ld   a, h                                        ; $6564: $7c
	ld   sp, hl                                      ; $6565: $f9
	dec  c                                           ; $6566: $0d
	ld   e, c                                        ; $6567: $59
	ld   e, b                                        ; $6568: $58
	ld   d, d                                        ; $6569: $52
	sbc  e                                           ; $656a: $9b
	sbc  [hl]                                        ; $656b: $9e
	ld   h, a                                        ; $656c: $67
	ld   [hl], c                                     ; $656d: $71
	ld   h, d                                        ; $656e: $62
	ld   e, l                                        ; $656f: $5d
	sbc  l                                           ; $6570: $9d
	sbc  c                                           ; $6571: $99
	ld   d, d                                        ; $6572: $52
	sub  [hl]                                        ; $6573: $96
	sbc  a                                           ; $6574: $9f
	dec  c                                           ; $6575: $0d
	nop                                              ; $6576: $00
	ld   a, [bc]                                     ; $6577: $0a
	inc  e                                           ; $6578: $1c
	inc  b                                           ; $6579: $04
	inc  bc                                          ; $657a: $03
	inc  bc                                          ; $657b: $03
	ld   bc, $a15d                                   ; $657c: $01 $5d $a1
	sbc  d                                           ; $657f: $9a
	and  c                                           ; $6580: $a1
	sbc  [hl]                                        ; $6581: $9e
	sub  d                                           ; $6582: $92
	ld   h, a                                        ; $6583: $67
	adc  h                                           ; $6584: $8c

jr_045_6585:
	ld   a, b                                        ; $6585: $78
	ld   e, l                                        ; $6586: $5d
	ld   [hl], c                                     ; $6587: $71
	ld   [hl], h                                     ; $6588: $74
	dec  c                                           ; $6589: $0d
	ld   l, [hl]                                     ; $658a: $6e
	ld   d, d                                        ; $658b: $52
	ld   h, [hl]                                     ; $658c: $66
	sub  l                                           ; $658d: $95
	ld   d, h                                        ; $658e: $54
	add  h                                           ; $658f: $84
	ld   sp, hl                                      ; $6590: $f9
	dec  c                                           ; $6591: $0d
	nop                                              ; $6592: $00
	ld   a, [bc]                                     ; $6593: $0a
	jr   jr_045_6598                                 ; $6594: $18 $02

	nop                                              ; $6596: $00

Call_045_6597:
	inc  bc                                          ; $6597: $03

jr_045_6598:
	and  a                                           ; $6598: $a7
	adc  [hl]                                        ; $6599: $8e
	nop                                              ; $659a: $00
	nop                                              ; $659b: $00
	ld   e, d                                        ; $659c: $5a
	and  c                                           ; $659d: $a1
	ld   a, [hl]                                     ; $659e: $7e
	sbc  c                                           ; $659f: $99
	nop                                              ; $65a0: $00
	ld   bc, $3d07                                   ; $65a1: $01 $07 $3d
	ld   [bc], a                                     ; $65a4: $02
	ld   [bc], a                                     ; $65a5: $02
	ld   [bc], a                                     ; $65a6: $02
	ld   bc, $2000                                   ; $65a7: $01 $00 $20
	nop                                              ; $65aa: $00
	rlca                                             ; $65ab: $07
	ld   a, [$0202]                                  ; $65ac: $fa $02 $02
	ld   [bc], a                                     ; $65af: $02
	ld   bc, $2001                                   ; $65b0: $01 $01 $20
	nop                                              ; $65b3: $00
	rrca                                             ; $65b4: $0f
	nop                                              ; $65b5: $00
	ld   bc, $5001                                   ; $65b6: $01 $01 $50
	sbc  b                                           ; $65b9: $98
	ld   e, d                                        ; $65ba: $5a
	halt                                             ; $65bb: $76
	ld   d, h                                        ; $65bc: $54
	sbc  [hl]                                        ; $65bd: $9e
	and  e                                           ; $65be: $a3
	and  l                                           ; $65bf: $a5
	db   $ec                                         ; $65c0: $ec
	cp   d                                           ; $65c1: $ba
	rst  $38                                         ; $65c2: $ff
	rst  $38                                         ; $65c3: $ff
	dec  c                                           ; $65c4: $0d
	nop                                              ; $65c5: $00
	dec  b                                           ; $65c6: $05
	ld   b, b                                        ; $65c7: $40
	ld   d, c                                        ; $65c8: $51
	ld   bc, $0000                                   ; $65c9: $01 $00 $00
	ld   bc, $9a6b                                   ; $65cc: $01 $6b $9a
	ld   h, [hl]                                     ; $65cf: $66
	sub  c                                           ; $65d0: $91
	sbc  [hl]                                        ; $65d1: $9e
	ld   [bc], a                                     ; $65d2: $02
	and  l                                           ; $65d3: $a5
	inc  b                                           ; $65d4: $04
	xor  d                                           ; $65d5: $aa
	ld   a, h                                        ; $65d6: $7c
	inc  bc                                          ; $65d7: $03

Call_045_65d8:
	ld   l, l                                        ; $65d8: $6d
	dec  b                                           ; $65d9: $05
	add  hl, de                                      ; $65da: $19
	ld   a, l                                        ; $65db: $7d
	dec  c                                           ; $65dc: $0d
	nop                                              ; $65dd: $00
	dec  b                                           ; $65de: $05
	add  b                                           ; $65df: $80
	sub  $01                                         ; $65e0: $d6 $01
	ld   bc, $0100                                   ; $65e2: $01 $00 $01
	inc  bc                                          ; $65e5: $03
	and  a                                           ; $65e6: $a7
	adc  [hl]                                        ; $65e7: $8e
	ld   h, c                                        ; $65e8: $61
	halt                                             ; $65e9: $76
	ld   a, c                                        ; $65ea: $79
	ld   h, a                                        ; $65eb: $67
	sbc  c                                           ; $65ec: $99
	sub  [hl]                                        ; $65ed: $96
	sbc  a                                           ; $65ee: $9f
	dec  c                                           ; $65ef: $0d
	nop                                              ; $65f0: $00
	ld   a, [bc]                                     ; $65f1: $0a
	inc  e                                           ; $65f2: $1c
	inc  b                                           ; $65f3: $04
	nop                                              ; $65f4: $00
	nop                                              ; $65f5: $00
	ld   bc, $a154                                   ; $65f6: $01 $54 $a1
	sbc  [hl]                                        ; $65f9: $9e
	ld   l, e                                        ; $65fa: $6b
	ld   d, h                                        ; $65fb: $54
	ld   l, [hl]                                     ; $65fc: $6e
	ld   a, e                                        ; $65fd: $7b
	sbc  a                                           ; $65fe: $9f
	dec  c                                           ; $65ff: $0d
	ld   l, e                                        ; $6600: $6b
	sbc  d                                           ; $6601: $9a
	ld   h, [hl]                                     ; $6602: $66
	sub  c                                           ; $6603: $91
	sbc  [hl]                                        ; $6604: $9e
	ld   l, a                                        ; $6605: $6f
	ld   d, d                                        ; $6606: $52
	ld   [bc], a                                     ; $6607: $02
	inc  de                                          ; $6608: $13
	ld   l, a                                        ; $6609: $6f
	sub  c                                           ; $660a: $91
	and  c                                           ; $660b: $a1
	dec  c                                           ; $660c: $0d
	ld   l, a                                        ; $660d: $6f
	sub  c                                           ; $660e: $91
	db   $fc                                         ; $660f: $fc
	and  c                                           ; $6610: $a1
	halt                                             ; $6611: $76
	sub  d                                           ; $6612: $92
	ld   h, a                                        ; $6613: $67
	adc  [hl]                                        ; $6614: $8e
	and  c                                           ; $6615: $a1
	ld   l, [hl]                                     ; $6616: $6e
	sub  [hl]                                        ; $6617: $96
	sbc  a                                           ; $6618: $9f
	dec  c                                           ; $6619: $0d
	nop                                              ; $661a: $00
	ld   a, [bc]                                     ; $661b: $0a
	rrca                                             ; $661c: $0f
	nop                                              ; $661d: $00
	ld   bc, $5401                                   ; $661e: $01 $01 $54
	and  c                                           ; $6621: $a1
	sbc  [hl]                                        ; $6622: $9e
	sbc  l                                           ; $6623: $9d
	ld   e, c                                        ; $6624: $59
	ld   [hl], c                                     ; $6625: $71
	ld   l, l                                        ; $6626: $6d
	sub  [hl]                                        ; $6627: $96
	and  e                                           ; $6628: $a3
	and  l                                           ; $6629: $a5
	db   $ec                                         ; $662a: $ec
	cp   d                                           ; $662b: $ba
	sbc  a                                           ; $662c: $9f
	dec  c                                           ; $662d: $0d
	ld   l, e                                        ; $662e: $6b
	sbc  d                                           ; $662f: $9a
	ld   h, [hl]                                     ; $6630: $66
	sub  c                                           ; $6631: $91
	sbc  a                                           ; $6632: $9f
	dec  c                                           ; $6633: $0d
	nop                                              ; $6634: $00
	ld   a, [bc]                                     ; $6635: $0a
	dec  c                                           ; $6636: $0d
	nop                                              ; $6637: $00
	nop                                              ; $6638: $00
	inc  hl                                          ; $6639: $23
	ld   bc, $ff01                                   ; $663a: $01 $01 $ff
	rst  $38                                         ; $663d: $ff
	inc  bc                                          ; $663e: $03
	ld   l, h                                        ; $663f: $6c
	ld   h, l                                        ; $6640: $65
	inc  bc                                          ; $6641: $03
	and  a                                           ; $6642: $a7
	adc  [hl]                                        ; $6643: $8e
	halt                                             ; $6644: $76
	ld   h, a                                        ; $6645: $67
	sbc  c                                           ; $6646: $99
	ld   e, c                                        ; $6647: $59
	sbc  a                                           ; $6648: $9f
	dec  c                                           ; $6649: $0d
	nop                                              ; $664a: $00
	ld   a, [bc]                                     ; $664b: $0a
	dec  h                                           ; $664c: $25
	nop                                              ; $664d: $00
	rrca                                             ; $664e: $0f
	nop                                              ; $664f: $00
	ld   bc, $5401                                   ; $6650: $01 $01 $54
	db   $fc                                         ; $6653: $fc
	and  c                                           ; $6654: $a1
	sub  [hl]                                        ; $6655: $96
	ld   e, l                                        ; $6656: $5d
	inc  b                                           ; $6657: $04
	ld   b, d                                        ; $6658: $42
	ld   l, l                                        ; $6659: $6d
	rst  $38                                         ; $665a: $ff
	rst  $38                                         ; $665b: $ff
	dec  c                                           ; $665c: $0d
	ld   e, c                                        ; $665d: $59
	ld   a, b                                        ; $665e: $78
	sbc  b                                           ; $665f: $98
	inc  b                                           ; $6660: $04
	dec  c                                           ; $6661: $0d
	ld   e, d                                        ; $6662: $5a
	dec  b                                           ; $6663: $05
	inc  de                                          ; $6664: $13
	ld   a, c                                        ; $6665: $79
	ld   a, b                                        ; $6666: $78
	ld   [hl], c                                     ; $6667: $71
	ld   l, l                                        ; $6668: $6d
	ld   l, h                                        ; $6669: $6c
	sbc  a                                           ; $666a: $9f
	dec  c                                           ; $666b: $0d
	nop                                              ; $666c: $00
	ld   a, [bc]                                     ; $666d: $0a
	add  hl, hl                                      ; $666e: $29
	dec  b                                           ; $666f: $05
	nop                                              ; $6670: $00
	rrca                                             ; $6671: $0f
	nop                                              ; $6672: $00
	ld   bc, $5201                                   ; $6673: $01 $01 $52
	sub  d                                           ; $6676: $92
	sbc  [hl]                                        ; $6677: $9e
	inc  b                                           ; $6678: $04
	ld   c, $03                                      ; $6679: $0e $03
	sbc  l                                           ; $667b: $9d
	inc  b                                           ; $667c: $04
	and  [hl]                                        ; $667d: $a6
	ld   l, [hl]                                     ; $667e: $6e
	sub  [hl]                                        ; $667f: $96
	and  e                                           ; $6680: $a3
	and  l                                           ; $6681: $a5
	db   $ec                                         ; $6682: $ec
	cp   d                                           ; $6683: $ba
	sbc  a                                           ; $6684: $9f
	dec  c                                           ; $6685: $0d
	nop                                              ; $6686: $00
	ld   a, [bc]                                     ; $6687: $0a
	dec  b                                           ; $6688: $05
	add  b                                           ; $6689: $80
	sub  $01                                         ; $668a: $d6 $01
	ld   bc, $0500                                   ; $668c: $01 $00 $05
	ld   b, b                                        ; $668f: $40
	ld   d, c                                        ; $6690: $51
	ld   bc, $0000                                   ; $6691: $01 $00 $00
	rlca                                             ; $6694: $07
	ld   d, l                                        ; $6695: $55
	inc  b                                           ; $6696: $04
	inc  bc                                          ; $6697: $03
	ld   b, l                                        ; $6698: $45
	ld   bc, $2000                                   ; $6699: $01 $00 $20
	nop                                              ; $669c: $00
	inc  e                                           ; $669d: $1c
	inc  b                                           ; $669e: $04
	inc  bc                                          ; $669f: $03
	inc  bc                                          ; $66a0: $03
	ld   bc, $546b                                   ; $66a1: $01 $6b $54
	ld   a, b                                        ; $66a4: $78
	ld   a, h                                        ; $66a5: $7c
	rst  $38                                         ; $66a6: $ff
	rst  $38                                         ; $66a7: $ff
	ld   sp, hl                                      ; $66a8: $f9
	dec  c                                           ; $66a9: $0d
	ld   l, e                                        ; $66aa: $6b
	sbc  d                                           ; $66ab: $9a
	ld   h, [hl]                                     ; $66ac: $66
	sub  c                                           ; $66ad: $91
	sbc  [hl]                                        ; $66ae: $9e
	ld   e, l                                        ; $66af: $5d
	and  c                                           ; $66b0: $a1
	sbc  d                                           ; $66b1: $9a
	and  c                                           ; $66b2: $a1
	dec  c                                           ; $66b3: $0d
	ld   a, l                                        ; $66b4: $7d
	ld   h, [hl]                                     ; $66b5: $66
	adc  a                                           ; $66b6: $8f
	sbc  c                                           ; $66b7: $99
	sub  [hl]                                        ; $66b8: $96
	sbc  a                                           ; $66b9: $9f
	dec  c                                           ; $66ba: $0d
	nop                                              ; $66bb: $00
	ld   a, [bc]                                     ; $66bc: $0a
	dec  h                                           ; $66bd: $25
	inc  b                                           ; $66be: $04
	dec  b                                           ; $66bf: $05
	ld   b, b                                        ; $66c0: $40
	ld   b, l                                        ; $66c1: $45
	inc  bc                                          ; $66c2: $03
	ld   b, l                                        ; $66c3: $45
	ld   bc, $2801                                   ; $66c4: $01 $01 $28
	nop                                              ; $66c7: $00
	inc  e                                           ; $66c8: $1c
	inc  b                                           ; $66c9: $04
	inc  bc                                          ; $66ca: $03
	inc  bc                                          ; $66cb: $03
	ld   bc, $7258                                   ; $66cc: $01 $58 $72
	ld   e, c                                        ; $66cf: $59
	sbc  d                                           ; $66d0: $9a
	ld   h, e                                        ; $66d1: $63
	adc  h                                           ; $66d2: $8c
	sbc  [hl]                                        ; $66d3: $9e
	ld   l, a                                        ; $66d4: $6f
	ld   d, d                                        ; $66d5: $52
	ld   [bc], a                                     ; $66d6: $02
	inc  de                                          ; $66d7: $13
	ld   l, a                                        ; $66d8: $6f
	sub  c                                           ; $66d9: $91
	and  c                                           ; $66da: $a1
	sbc  a                                           ; $66db: $9f
	dec  c                                           ; $66dc: $0d
	ld   d, b                                        ; $66dd: $50
	ld   a, h                                        ; $66de: $7c
	ld   a, e                                        ; $66df: $7b
	rst  $38                                         ; $66e0: $ff
	rst  $38                                         ; $66e1: $ff
	sub  d                                           ; $66e2: $92
	ld   [hl], c                                     ; $66e3: $71
	ld   a, a                                        ; $66e4: $7f
	sbc  b                                           ; $66e5: $98
	sub  d                                           ; $66e6: $92
	ld   h, a                                        ; $66e7: $67
	and  c                                           ; $66e8: $a1
	ld   l, [hl]                                     ; $66e9: $6e
	dec  c                                           ; $66ea: $0d
	adc  c                                           ; $66eb: $89
	ld   d, h                                        ; $66ec: $54
	ld   e, d                                        ; $66ed: $5a
	ld   d, d                                        ; $66ee: $52
	ld   d, d                                        ; $66ef: $52
	halt                                             ; $66f0: $76
	ld   e, b                                        ; $66f1: $58
	sub  b                                           ; $66f2: $90
	ld   d, h                                        ; $66f3: $54
	sub  [hl]                                        ; $66f4: $96
	sbc  a                                           ; $66f5: $9f
	dec  c                                           ; $66f6: $0d
	nop                                              ; $66f7: $00
	ld   a, [bc]                                     ; $66f8: $0a
	rlca                                             ; $66f9: $07
	and  d                                           ; $66fa: $a2
	inc  bc                                          ; $66fb: $03
	inc  bc                                          ; $66fc: $03
	jr   nz, jr_045_6700                             ; $66fd: $20 $01

	nop                                              ; $66ff: $00

jr_045_6700:
	jr   nz, jr_045_6702                             ; $6700: $20 $00

jr_045_6702:
	ld   bc, $9166                                   ; $6702: $01 $66 $91
	ld   d, b                                        ; $6705: $50
	ld   a, e                                        ; $6706: $7b
	sbc  [hl]                                        ; $6707: $9e
	pop  de                                          ; $6708: $d1
	and  l                                           ; $6709: $a5
	pop  de                                          ; $670a: $d1
	and  l                                           ; $670b: $a5
	sbc  a                                           ; $670c: $9f
	dec  c                                           ; $670d: $0d
	nop                                              ; $670e: $00
	ld   a, [bc]                                     ; $670f: $0a
	rrca                                             ; $6710: $0f
	nop                                              ; $6711: $00
	ld   bc, $000d                                   ; $6712: $01 $0d $00
	nop                                              ; $6715: $00
	add  hl, bc                                      ; $6716: $09
	ld   e, $00                                      ; $6717: $1e $00
	rrca                                             ; $6719: $0f
	nop                                              ; $671a: $00
	ld   bc, $5401                                   ; $671b: $01 $01 $54
	and  c                                           ; $671e: $a1
	sbc  [hl]                                        ; $671f: $9e
	sbc  l                                           ; $6720: $9d
	ld   e, c                                        ; $6721: $59
	ld   [hl], c                                     ; $6722: $71
	rst  $38                                         ; $6723: $ff
	ld   l, l                                        ; $6724: $6d
	rst  $38                                         ; $6725: $ff
	rst  $38                                         ; $6726: $ff
	rst  $38                                         ; $6727: $ff
	rst  $38                                         ; $6728: $ff
	dec  c                                           ; $6729: $0d
	nop                                              ; $672a: $00
	dec  c                                           ; $672b: $0d
	nop                                              ; $672c: $00
	nop                                              ; $672d: $00
	inc  c                                           ; $672e: $0c
	ld   [bc], a                                     ; $672f: $02
	ld   c, $03                                      ; $6730: $0e $03
	ld   bc, $9a50                                   ; $6732: $01 $50 $9a
	rst  $38                                         ; $6735: $ff
	rst  $38                                         ; $6736: $ff
	rst  $38                                         ; $6737: $ff
	ld   sp, hl                                      ; $6738: $f9
	dec  c                                           ; $6739: $0d
	ld   e, c                                        ; $673a: $59
	sub  a                                           ; $673b: $97
	rst  $38                                         ; $673c: $ff
	rst  $38                                         ; $673d: $ff
	ld   l, [hl]                                     ; $673e: $6e
	rst  $38                                         ; $673f: $ff
	rst  $38                                         ; $6740: $ff
	ld   e, d                                        ; $6741: $5a
	rst  $38                                         ; $6742: $ff
	rst  $38                                         ; $6743: $ff
	dec  c                                           ; $6744: $0d
	nop                                              ; $6745: $00
	ld   a, [bc]                                     ; $6746: $0a
	ld   l, $01                                      ; $6747: $2e $01
	nop                                              ; $6749: $00
	nop                                              ; $674a: $00
	dec  b                                           ; $674b: $05
	ld   b, b                                        ; $674c: $40
	ld   b, l                                        ; $674d: $45
	inc  bc                                          ; $674e: $03
	ld   b, l                                        ; $674f: $45
	ld   bc, $2801                                   ; $6750: $01 $01 $28
	nop                                              ; $6753: $00
	inc  e                                           ; $6754: $1c
	inc  b                                           ; $6755: $04
	nop                                              ; $6756: $00
	nop                                              ; $6757: $00
	ld   bc, $7258                                   ; $6758: $01 $58 $72
	ld   e, c                                        ; $675b: $59
	sbc  d                                           ; $675c: $9a
	ld   h, e                                        ; $675d: $63
	adc  h                                           ; $675e: $8c
	rst  $38                                         ; $675f: $ff
	rst  $38                                         ; $6760: $ff
	dec  c                                           ; $6761: $0d
	nop                                              ; $6762: $00
	inc  e                                           ; $6763: $1c
	inc  b                                           ; $6764: $04
	ld   b, $06                                      ; $6765: $06 $06
	ld   bc, $9a50                                   ; $6767: $01 $50 $9a
	ld   sp, hl                                      ; $676a: $f9
	db   $10                                         ; $676b: $10
	ld   [hl], a                                     ; $676c: $77
	ld   d, h                                        ; $676d: $54
	ld   h, l                                        ; $676e: $65
	ld   l, l                                        ; $676f: $6d
	ld   a, h                                        ; $6770: $7c
	ld   sp, hl                                      ; $6771: $f9
	dec  c                                           ; $6772: $0d
	ld   e, c                                        ; $6773: $59
	ld   e, b                                        ; $6774: $58
	ld   d, d                                        ; $6775: $52
	sbc  e                                           ; $6776: $9b
	sbc  l                                           ; $6777: $9d
	sbc  c                                           ; $6778: $99
	ld   d, d                                        ; $6779: $52
	sub  [hl]                                        ; $677a: $96
	sbc  a                                           ; $677b: $9f
	dec  c                                           ; $677c: $0d
	nop                                              ; $677d: $00
	ld   a, [bc]                                     ; $677e: $0a
	rrca                                             ; $677f: $0f
	nop                                              ; $6780: $00
	ld   bc, $5401                                   ; $6781: $01 $01 $54
	and  c                                           ; $6784: $a1
	sbc  [hl]                                        ; $6785: $9e
	rst  $38                                         ; $6786: $ff
	rst  $38                                         ; $6787: $ff
	ld   a, b                                        ; $6788: $78
	and  c                                           ; $6789: $a1
	ld   l, [hl]                                     ; $678a: $6e
	ld   e, c                                        ; $678b: $59
	ld   h, e                                        ; $678c: $63
	ld   [hl], c                                     ; $678d: $71
	ld   e, e                                        ; $678e: $5b
	ld   e, c                                        ; $678f: $59
	sub  a                                           ; $6790: $97
	dec  c                                           ; $6791: $0d
	inc  b                                           ; $6792: $04
	dec  c                                           ; $6793: $0d
	ld   e, d                                        ; $6794: $5a
	ld   l, [hl]                                     ; $6795: $6e
	sbc  c                                           ; $6796: $99
	ld   e, l                                        ; $6797: $5d
	ld   [hl], h                                     ; $6798: $74
	rst  $38                                         ; $6799: $ff
	rst  $38                                         ; $679a: $ff
	dec  c                                           ; $679b: $0d
	nop                                              ; $679c: $00
	ld   a, [bc]                                     ; $679d: $0a
	ld   bc, $6254                                   ; $679e: $01 $54 $62
	rst  $38                                         ; $67a1: $ff
	rst  $38                                         ; $67a2: $ff
	ld   e, c                                        ; $67a3: $59
	rst  $38                                         ; $67a4: $ff
	rst  $38                                         ; $67a5: $ff
	ld   a, b                                        ; $67a6: $78
	rst  $38                                         ; $67a7: $ff
	rst  $38                                         ; $67a8: $ff
	dec  c                                           ; $67a9: $0d
	nop                                              ; $67aa: $00
	dec  c                                           ; $67ab: $0d
	nop                                              ; $67ac: $00
	nop                                              ; $67ad: $00
	inc  c                                           ; $67ae: $0c
	ld   [bc], a                                     ; $67af: $02
	ld   c, $03                                      ; $67b0: $0e $03
	ld   bc, $9a50                                   ; $67b2: $01 $50 $9a
	rst  $38                                         ; $67b5: $ff
	rst  $38                                         ; $67b6: $ff
	rst  $38                                         ; $67b7: $ff
	ld   sp, hl                                      ; $67b8: $f9
	dec  c                                           ; $67b9: $0d
	ld   [hl], a                                     ; $67ba: $77
	ld   d, h                                        ; $67bb: $54
	ld   h, l                                        ; $67bc: $65
	rst  $38                                         ; $67bd: $ff
	rst  $38                                         ; $67be: $ff
	ld   l, l                                        ; $67bf: $6d
	rst  $38                                         ; $67c0: $ff
	rst  $38                                         ; $67c1: $ff
	and  c                                           ; $67c2: $a1
	rst  $38                                         ; $67c3: $ff
	rst  $38                                         ; $67c4: $ff
	dec  c                                           ; $67c5: $0d
	nop                                              ; $67c6: $00
	ld   a, [bc]                                     ; $67c7: $0a
	ld   l, $01                                      ; $67c8: $2e $01
	nop                                              ; $67ca: $00
	nop                                              ; $67cb: $00
	inc  e                                           ; $67cc: $1c
	inc  b                                           ; $67cd: $04
	inc  bc                                          ; $67ce: $03
	inc  bc                                          ; $67cf: $03
	ld   bc, $546b                                   ; $67d0: $01 $6b $54
	ld   a, b                                        ; $67d3: $78
	ld   a, h                                        ; $67d4: $7c
	rst  $38                                         ; $67d5: $ff
	rst  $38                                         ; $67d6: $ff
	ld   sp, hl                                      ; $67d7: $f9
	dec  c                                           ; $67d8: $0d
	nop                                              ; $67d9: $00
	inc  e                                           ; $67da: $1c
	inc  b                                           ; $67db: $04
	nop                                              ; $67dc: $00
	nop                                              ; $67dd: $00
	ld   bc, $9166                                   ; $67de: $01 $66 $91
	ld   d, b                                        ; $67e1: $50
	rst  $38                                         ; $67e2: $ff
	rst  $38                                         ; $67e3: $ff
	dec  c                                           ; $67e4: $0d
	nop                                              ; $67e5: $00
	ld   a, [bc]                                     ; $67e6: $0a
	ld   bc, $a5a3                                   ; $67e7: $01 $a3 $a5
	db   $ec                                         ; $67ea: $ec
	cp   d                                           ; $67eb: $ba
	ld   a, h                                        ; $67ec: $7c
	ld   e, l                                        ; $67ed: $5d
	and  c                                           ; $67ee: $a1
	sbc  d                                           ; $67ef: $9a
	and  c                                           ; $67f0: $a1
	ld   a, l                                        ; $67f1: $7d
	ld   a, e                                        ; $67f2: $7b
	sbc  [hl]                                        ; $67f3: $9e
	dec  c                                           ; $67f4: $0d
	sbc  d                                           ; $67f5: $9a
	ld   d, d                                        ; $67f6: $52
	sbc  b                                           ; $67f7: $98
	sub  l                                           ; $67f8: $95
	ld   e, l                                        ; $67f9: $5d
	and  e                                           ; $67fa: $a3
	call nz, Call_045_7cd8                           ; $67fb: $c4 $d8 $7c
	dec  c                                           ; $67fe: $0d
	ld   e, l                                        ; $67ff: $5d
	and  c                                           ; $6800: $a1
	sbc  d                                           ; $6801: $9a
	and  c                                           ; $6802: $a1
	ld   a, b                                        ; $6803: $78
	and  c                                           ; $6804: $a1
	ld   l, [hl]                                     ; $6805: $6e
	sub  [hl]                                        ; $6806: $96
	sbc  a                                           ; $6807: $9f
	dec  c                                           ; $6808: $0d
	nop                                              ; $6809: $00
	ld   a, [bc]                                     ; $680a: $0a
	ld   bc, $9a6b                                   ; $680b: $01 $6b $9a
	ld   h, [hl]                                     ; $680e: $66
	sub  c                                           ; $680f: $91
	sbc  [hl]                                        ; $6810: $9e
	ld   a, l                                        ; $6811: $7d
	ld   h, [hl]                                     ; $6812: $66
	adc  a                                           ; $6813: $8f
	sbc  c                                           ; $6814: $99
	sub  [hl]                                        ; $6815: $96
	sbc  a                                           ; $6816: $9f
	dec  c                                           ; $6817: $0d
	nop                                              ; $6818: $00
	ld   a, [bc]                                     ; $6819: $0a
	ld   b, $46                                      ; $681a: $06 $46
	inc  bc                                          ; $681c: $03
	inc  e                                           ; $681d: $1c
	inc  b                                           ; $681e: $04
	nop                                              ; $681f: $00
	nop                                              ; $6820: $00
	ld   bc, $a161                                   ; $6821: $01 $61 $a1
	ld   a, c                                        ; $6824: $79
	ld   l, a                                        ; $6825: $6f
	ld   a, l                                        ; $6826: $7d
	sbc  [hl]                                        ; $6827: $9e
	ld   l, a                                        ; $6828: $6f
	ld   d, d                                        ; $6829: $52
	ld   [bc], a                                     ; $682a: $02
	inc  de                                          ; $682b: $13
	ld   l, a                                        ; $682c: $6f
	sub  c                                           ; $682d: $91
	and  c                                           ; $682e: $a1
	sbc  a                                           ; $682f: $9f
	dec  c                                           ; $6830: $0d
	ld   l, e                                        ; $6831: $6b
	sbc  d                                           ; $6832: $9a
	ld   h, [hl]                                     ; $6833: $66
	sub  c                                           ; $6834: $91
	sbc  [hl]                                        ; $6835: $9e
	ld   e, l                                        ; $6836: $5d
	and  c                                           ; $6837: $a1
	sbc  d                                           ; $6838: $9a
	and  c                                           ; $6839: $a1
	dec  c                                           ; $683a: $0d
	ld   a, l                                        ; $683b: $7d
	ld   h, [hl]                                     ; $683c: $66
	adc  a                                           ; $683d: $8f
	sbc  c                                           ; $683e: $99
	sub  [hl]                                        ; $683f: $96
	ld   a, [$000d]                                  ; $6840: $fa $0d $00
	ld   a, [bc]                                     ; $6843: $0a
	dec  h                                           ; $6844: $25
	inc  b                                           ; $6845: $04
	rlca                                             ; $6846: $07
	call nc, $0303                                   ; $6847: $d4 $03 $03
	jr   nz, jr_045_684d                             ; $684a: $20 $01

	nop                                              ; $684c: $00

jr_045_684d:
	jr   nz, jr_045_684f                             ; $684d: $20 $00

jr_045_684f:
	inc  e                                           ; $684f: $1c
	inc  b                                           ; $6850: $04
	nop                                              ; $6851: $00
	nop                                              ; $6852: $00
	ld   bc, $7258                                   ; $6853: $01 $58 $72
	ld   e, c                                        ; $6856: $59
	sbc  d                                           ; $6857: $9a
	ld   h, e                                        ; $6858: $63
	adc  h                                           ; $6859: $8c
	sbc  [hl]                                        ; $685a: $9e
	dec  c                                           ; $685b: $0d
	nop                                              ; $685c: $00
	dec  b                                           ; $685d: $05
	ld   b, b                                        ; $685e: $40
	ld   b, l                                        ; $685f: $45
	inc  bc                                          ; $6860: $03
	ld   b, l                                        ; $6861: $45
	ld   bc, $2801                                   ; $6862: $01 $01 $28
	nop                                              ; $6865: $00
	ld   bc, $955b                                   ; $6866: $01 $5b $95
	ld   d, h                                        ; $6869: $54
	ld   a, h                                        ; $686a: $7c
	ld   e, l                                        ; $686b: $5d
	and  c                                           ; $686c: $a1
	sbc  d                                           ; $686d: $9a
	and  c                                           ; $686e: $a1
	ld   a, l                                        ; $686f: $7d
	dec  c                                           ; $6870: $0d
	ld   h, c                                        ; $6871: $61
	ld   h, c                                        ; $6872: $61
	adc  h                                           ; $6873: $8c
	ld   [hl], l                                     ; $6874: $75
	ld   l, [hl]                                     ; $6875: $6e
	sub  [hl]                                        ; $6876: $96
	ld   a, [$000d]                                  ; $6877: $fa $0d $00
	ld   a, [bc]                                     ; $687a: $0a
	ld   bc, $6d8c                                   ; $687b: $01 $8c $6d
	ld   a, e                                        ; $687e: $7b
	sbc  [hl]                                        ; $687f: $9e
	ld   l, a                                        ; $6880: $6f
	ld   d, d                                        ; $6881: $52
	ld   [bc], a                                     ; $6882: $02
	inc  de                                          ; $6883: $13
	ld   l, a                                        ; $6884: $6f
	sub  c                                           ; $6885: $91
	and  c                                           ; $6886: $a1
	ld   a, [$000d]                                  ; $6887: $fa $0d $00
	ld   a, [bc]                                     ; $688a: $0a
	dec  c                                           ; $688b: $0d
	nop                                              ; $688c: $00
	nop                                              ; $688d: $00
	rrca                                             ; $688e: $0f
	nop                                              ; $688f: $00
	ld   bc, $0700                                   ; $6890: $01 $00 $07
	push de                                          ; $6893: $d5
	dec  b                                           ; $6894: $05
	inc  bc                                          ; $6895: $03
	ld   b, l                                        ; $6896: $45
	ld   bc, $2504                                   ; $6897: $01 $04 $25
	nop                                              ; $689a: $00
	inc  e                                           ; $689b: $1c
	inc  b                                           ; $689c: $04
	nop                                              ; $689d: $00
	nop                                              ; $689e: $00
	ld   bc, $a161                                   ; $689f: $01 $61 $a1
	ld   a, c                                        ; $68a2: $79
	ld   l, a                                        ; $68a3: $6f
	ld   a, l                                        ; $68a4: $7d
	sbc  [hl]                                        ; $68a5: $9e
	ld   l, a                                        ; $68a6: $6f
	ld   d, d                                        ; $68a7: $52
	ld   [bc], a                                     ; $68a8: $02
	inc  de                                          ; $68a9: $13
	ld   l, a                                        ; $68aa: $6f
	sub  c                                           ; $68ab: $91
	and  c                                           ; $68ac: $a1
	sbc  a                                           ; $68ad: $9f
	dec  c                                           ; $68ae: $0d
	ld   l, e                                        ; $68af: $6b
	sbc  d                                           ; $68b0: $9a
	ld   h, [hl]                                     ; $68b1: $66
	sub  c                                           ; $68b2: $91
	sbc  [hl]                                        ; $68b3: $9e
	ld   e, l                                        ; $68b4: $5d
	and  c                                           ; $68b5: $a1
	sbc  d                                           ; $68b6: $9a
	and  c                                           ; $68b7: $a1
	dec  c                                           ; $68b8: $0d
	ld   a, l                                        ; $68b9: $7d
	ld   h, [hl]                                     ; $68ba: $66
	adc  a                                           ; $68bb: $8f
	sbc  c                                           ; $68bc: $99
	sub  [hl]                                        ; $68bd: $96
	ld   a, [$000d]                                  ; $68be: $fa $0d $00
	ld   a, [bc]                                     ; $68c1: $0a
	dec  h                                           ; $68c2: $25
	inc  b                                           ; $68c3: $04
	rlca                                             ; $68c4: $07
	call nc, $0303                                   ; $68c5: $d4 $03 $03
	jr   nz, jr_045_68cb                             ; $68c8: $20 $01

	nop                                              ; $68ca: $00

jr_045_68cb:
	jr   nz, jr_045_68cd                             ; $68cb: $20 $00

jr_045_68cd:
	inc  e                                           ; $68cd: $1c
	inc  b                                           ; $68ce: $04
	nop                                              ; $68cf: $00
	nop                                              ; $68d0: $00
	ld   bc, $7258                                   ; $68d1: $01 $58 $72
	ld   e, c                                        ; $68d4: $59
	sbc  d                                           ; $68d5: $9a
	ld   h, e                                        ; $68d6: $63
	adc  h                                           ; $68d7: $8c
	sbc  [hl]                                        ; $68d8: $9e
	ld   l, a                                        ; $68d9: $6f
	ld   d, d                                        ; $68da: $52
	ld   [bc], a                                     ; $68db: $02
	inc  de                                          ; $68dc: $13
	ld   l, a                                        ; $68dd: $6f
	sub  c                                           ; $68de: $91
	and  c                                           ; $68df: $a1
	ld   a, [$000d]                                  ; $68e0: $fa $0d $00
	ld   a, [bc]                                     ; $68e3: $0a
	inc  e                                           ; $68e4: $1c
	inc  b                                           ; $68e5: $04
	ld   bc, $0101                                   ; $68e6: $01 $01 $01
	ld   l, a                                        ; $68e9: $6f
	ld   e, c                                        ; $68ea: $59
	sub  a                                           ; $68eb: $97
	ld   a, h                                        ; $68ec: $7c
	ld   [hl], d                                     ; $68ed: $72
	ld   e, c                                        ; $68ee: $59
	ld   d, d                                        ; $68ef: $52
	ld   e, c                                        ; $68f0: $59
	ld   l, l                                        ; $68f1: $6d
	ld   e, d                                        ; $68f2: $5a
	dec  c                                           ; $68f3: $0d
	ld   a, b                                        ; $68f4: $78
	ld   e, c                                        ; $68f5: $59
	ld   a, b                                        ; $68f6: $78
	ld   e, c                                        ; $68f7: $59
	ld   h, [hl]                                     ; $68f8: $66
	sub  l                                           ; $68f9: $95
	ld   d, h                                        ; $68fa: $54
	ld   l, b                                        ; $68fb: $68
	ld   a, c                                        ; $68fc: $79
	dec  c                                           ; $68fd: $0d
	ld   a, b                                        ; $68fe: $78
	ld   [hl], c                                     ; $68ff: $71
	ld   [hl], h                                     ; $6900: $74
	ld   e, e                                        ; $6901: $5b
	ld   l, l                                        ; $6902: $6d
	ld   a, e                                        ; $6903: $7b
	sbc  a                                           ; $6904: $9f
	dec  c                                           ; $6905: $0d
	nop                                              ; $6906: $00
	ld   a, [bc]                                     ; $6907: $0a
	inc  e                                           ; $6908: $1c
	inc  b                                           ; $6909: $04
	nop                                              ; $690a: $00
	nop                                              ; $690b: $00
	ld   bc, $9a6b                                   ; $690c: $01 $6b $9a
	ld   h, [hl]                                     ; $690f: $66
	sub  c                                           ; $6910: $91
	sbc  [hl]                                        ; $6911: $9e
	ld   e, e                                        ; $6912: $5b
	sub  l                                           ; $6913: $95
	ld   d, h                                        ; $6914: $54
	ld   a, h                                        ; $6915: $7c
	ld   e, l                                        ; $6916: $5d
	and  c                                           ; $6917: $a1
	sbc  d                                           ; $6918: $9a
	and  c                                           ; $6919: $a1
	ld   a, l                                        ; $691a: $7d
	dec  c                                           ; $691b: $0d
	nop                                              ; $691c: $00
	dec  b                                           ; $691d: $05
	ld   b, b                                        ; $691e: $40
	ld   b, l                                        ; $691f: $45
	inc  bc                                          ; $6920: $03
	ld   b, l                                        ; $6921: $45
	ld   bc, $2801                                   ; $6922: $01 $01 $28
	nop                                              ; $6925: $00
	ld   bc, $9a61                                   ; $6926: $01 $61 $9a
	ld   [hl], l                                     ; $6929: $75
	ld   e, b                                        ; $692a: $58
	ld   h, l                                        ; $692b: $65
	adc  h                                           ; $692c: $8c
	ld   d, d                                        ; $692d: $52
	ld   a, [$000d]                                  ; $692e: $fa $0d $00
	inc  e                                           ; $6931: $1c
	inc  b                                           ; $6932: $04
	ld   bc, $0101                                   ; $6933: $01 $01 $01
	adc  h                                           ; $6936: $8c
	ld   l, l                                        ; $6937: $6d
	ld   a, e                                        ; $6938: $7b
	sbc  [hl]                                        ; $6939: $9e
	ld   l, a                                        ; $693a: $6f
	ld   d, d                                        ; $693b: $52
	ld   [bc], a                                     ; $693c: $02
	inc  de                                          ; $693d: $13
	ld   l, a                                        ; $693e: $6f
	sub  c                                           ; $693f: $91
	and  c                                           ; $6940: $a1
	ld   a, [$000d]                                  ; $6941: $fa $0d $00
	ld   a, [bc]                                     ; $6944: $0a
	dec  c                                           ; $6945: $0d
	nop                                              ; $6946: $00
	nop                                              ; $6947: $00
	rrca                                             ; $6948: $0f
	nop                                              ; $6949: $00
	ld   bc, $1c00                                   ; $694a: $01 $00 $1c
	inc  b                                           ; $694d: $04
	nop                                              ; $694e: $00
	nop                                              ; $694f: $00
	ld   bc, $a161                                   ; $6950: $01 $61 $a1
	ld   a, c                                        ; $6953: $79
	ld   l, a                                        ; $6954: $6f
	ld   a, l                                        ; $6955: $7d
	sbc  [hl]                                        ; $6956: $9e
	ld   l, a                                        ; $6957: $6f
	ld   d, d                                        ; $6958: $52
	ld   [bc], a                                     ; $6959: $02
	inc  de                                          ; $695a: $13
	ld   l, a                                        ; $695b: $6f
	sub  c                                           ; $695c: $91
	and  c                                           ; $695d: $a1
	sbc  a                                           ; $695e: $9f
	dec  c                                           ; $695f: $0d
	ld   l, e                                        ; $6960: $6b
	sbc  d                                           ; $6961: $9a
	ld   h, [hl]                                     ; $6962: $66
	sub  c                                           ; $6963: $91
	sbc  [hl]                                        ; $6964: $9e
	ld   e, l                                        ; $6965: $5d
	and  c                                           ; $6966: $a1
	sbc  d                                           ; $6967: $9a
	and  c                                           ; $6968: $a1
	dec  c                                           ; $6969: $0d
	ld   a, l                                        ; $696a: $7d
	ld   h, [hl]                                     ; $696b: $66
	adc  a                                           ; $696c: $8f
	sbc  c                                           ; $696d: $99
	sub  [hl]                                        ; $696e: $96
	ld   a, [$000d]                                  ; $696f: $fa $0d $00
	ld   a, [bc]                                     ; $6972: $0a
	dec  h                                           ; $6973: $25
	inc  b                                           ; $6974: $04
	rlca                                             ; $6975: $07
	call nc, $0303                                   ; $6976: $d4 $03 $03
	jr   nz, jr_045_697c                             ; $6979: $20 $01

	nop                                              ; $697b: $00

jr_045_697c:
	jr   nz, jr_045_697e                             ; $697c: $20 $00

jr_045_697e:
	inc  e                                           ; $697e: $1c
	inc  b                                           ; $697f: $04
	nop                                              ; $6980: $00
	nop                                              ; $6981: $00
	ld   bc, $7258                                   ; $6982: $01 $58 $72
	ld   e, c                                        ; $6985: $59
	sbc  d                                           ; $6986: $9a
	ld   h, e                                        ; $6987: $63
	adc  h                                           ; $6988: $8c
	sbc  [hl]                                        ; $6989: $9e
	ld   l, a                                        ; $698a: $6f
	ld   d, d                                        ; $698b: $52
	ld   [bc], a                                     ; $698c: $02
	inc  de                                          ; $698d: $13
	ld   l, a                                        ; $698e: $6f
	sub  c                                           ; $698f: $91
	and  c                                           ; $6990: $a1
	ld   a, [$000d]                                  ; $6991: $fa $0d $00
	ld   a, [bc]                                     ; $6994: $0a
	inc  e                                           ; $6995: $1c
	inc  b                                           ; $6996: $04
	ld   bc, $0101                                   ; $6997: $01 $01 $01
	ld   l, a                                        ; $699a: $6f
	ld   e, c                                        ; $699b: $59
	sub  a                                           ; $699c: $97
	ld   a, h                                        ; $699d: $7c
	ld   [hl], d                                     ; $699e: $72
	ld   e, c                                        ; $699f: $59
	ld   d, d                                        ; $69a0: $52
	ld   e, c                                        ; $69a1: $59
	ld   l, l                                        ; $69a2: $6d
	sbc  [hl]                                        ; $69a3: $9e
	dec  c                                           ; $69a4: $0d
	ld   h, a                                        ; $69a5: $67
	ld   [hl], c                                     ; $69a6: $71
	ld   h, d                                        ; $69a7: $62
	ld   e, l                                        ; $69a8: $5d
	ld   h, [hl]                                     ; $69a9: $66
	sub  l                                           ; $69aa: $95
	ld   d, h                                        ; $69ab: $54
	ld   l, b                                        ; $69ac: $68
	ld   a, c                                        ; $69ad: $79
	dec  c                                           ; $69ae: $0d
	ld   a, b                                        ; $69af: $78
	ld   [hl], c                                     ; $69b0: $71
	ld   [hl], h                                     ; $69b1: $74
	ld   e, e                                        ; $69b2: $5b
	ld   l, l                                        ; $69b3: $6d
	ld   a, e                                        ; $69b4: $7b
	ei                                               ; $69b5: $fb
	ld   a, [$000d]                                  ; $69b6: $fa $0d $00
	ld   a, [bc]                                     ; $69b9: $0a
	inc  e                                           ; $69ba: $1c
	inc  b                                           ; $69bb: $04
	nop                                              ; $69bc: $00
	nop                                              ; $69bd: $00
	ld   bc, $9a6b                                   ; $69be: $01 $6b $9a
	ld   h, [hl]                                     ; $69c1: $66
	sub  c                                           ; $69c2: $91
	sbc  [hl]                                        ; $69c3: $9e
	ld   e, e                                        ; $69c4: $5b
	sub  l                                           ; $69c5: $95
	ld   d, h                                        ; $69c6: $54
	ld   a, h                                        ; $69c7: $7c
	ld   e, l                                        ; $69c8: $5d
	and  c                                           ; $69c9: $a1
	sbc  d                                           ; $69ca: $9a
	and  c                                           ; $69cb: $a1
	ld   a, l                                        ; $69cc: $7d
	dec  c                                           ; $69cd: $0d
	nop                                              ; $69ce: $00
	dec  b                                           ; $69cf: $05
	ld   b, b                                        ; $69d0: $40
	ld   b, l                                        ; $69d1: $45
	inc  bc                                          ; $69d2: $03
	ld   b, l                                        ; $69d3: $45
	ld   bc, $2801                                   ; $69d4: $01 $01 $28
	nop                                              ; $69d7: $00
	ld   bc, $9a61                                   ; $69d8: $01 $61 $9a
	ld   [hl], l                                     ; $69db: $75
	ld   e, b                                        ; $69dc: $58
	ld   h, l                                        ; $69dd: $65
	adc  h                                           ; $69de: $8c
	ld   d, d                                        ; $69df: $52
	ld   a, [$000d]                                  ; $69e0: $fa $0d $00
	inc  e                                           ; $69e3: $1c
	inc  b                                           ; $69e4: $04
	ld   bc, $0101                                   ; $69e5: $01 $01 $01
	adc  h                                           ; $69e8: $8c
	ld   l, l                                        ; $69e9: $6d
	ld   a, e                                        ; $69ea: $7b
	sbc  [hl]                                        ; $69eb: $9e
	ld   l, a                                        ; $69ec: $6f
	ld   d, d                                        ; $69ed: $52
	ld   [bc], a                                     ; $69ee: $02
	inc  de                                          ; $69ef: $13
	ld   l, a                                        ; $69f0: $6f
	sub  c                                           ; $69f1: $91
	and  c                                           ; $69f2: $a1
	ld   a, [$000d]                                  ; $69f3: $fa $0d $00
	ld   a, [bc]                                     ; $69f6: $0a
	dec  c                                           ; $69f7: $0d
	nop                                              ; $69f8: $00
	nop                                              ; $69f9: $00
	rrca                                             ; $69fa: $0f
	nop                                              ; $69fb: $00
	ld   bc, $0700                                   ; $69fc: $01 $00 $07
	ld   b, e                                        ; $69ff: $43
	rlca                                             ; $6a00: $07
	inc  bc                                          ; $6a01: $03
	ld   b, l                                        ; $6a02: $45
	ld   bc, $2507                                   ; $6a03: $01 $07 $25
	nop                                              ; $6a06: $00
	inc  e                                           ; $6a07: $1c
	inc  b                                           ; $6a08: $04
	nop                                              ; $6a09: $00
	nop                                              ; $6a0a: $00
	ld   bc, $a161                                   ; $6a0b: $01 $61 $a1
	ld   a, c                                        ; $6a0e: $79
	ld   l, a                                        ; $6a0f: $6f
	ld   a, l                                        ; $6a10: $7d
	sbc  [hl]                                        ; $6a11: $9e
	ld   l, a                                        ; $6a12: $6f
	ld   d, d                                        ; $6a13: $52
	ld   [bc], a                                     ; $6a14: $02
	inc  de                                          ; $6a15: $13
	ld   l, a                                        ; $6a16: $6f
	sub  c                                           ; $6a17: $91
	and  c                                           ; $6a18: $a1
	sbc  a                                           ; $6a19: $9f
	dec  c                                           ; $6a1a: $0d
	ld   l, e                                        ; $6a1b: $6b
	sbc  d                                           ; $6a1c: $9a
	ld   h, [hl]                                     ; $6a1d: $66
	sub  c                                           ; $6a1e: $91
	sbc  [hl]                                        ; $6a1f: $9e
	ld   e, l                                        ; $6a20: $5d
	and  c                                           ; $6a21: $a1
	sbc  d                                           ; $6a22: $9a
	and  c                                           ; $6a23: $a1
	dec  c                                           ; $6a24: $0d
	ld   a, l                                        ; $6a25: $7d
	ld   h, [hl]                                     ; $6a26: $66
	adc  a                                           ; $6a27: $8f
	sbc  c                                           ; $6a28: $99
	sub  [hl]                                        ; $6a29: $96
	ld   a, [$000d]                                  ; $6a2a: $fa $0d $00
	ld   a, [bc]                                     ; $6a2d: $0a
	dec  h                                           ; $6a2e: $25
	inc  b                                           ; $6a2f: $04
	rlca                                             ; $6a30: $07
	call nc, $0303                                   ; $6a31: $d4 $03 $03
	jr   nz, jr_045_6a37                             ; $6a34: $20 $01

	nop                                              ; $6a36: $00

jr_045_6a37:
	jr   nz, jr_045_6a39                             ; $6a37: $20 $00

jr_045_6a39:
	inc  e                                           ; $6a39: $1c
	inc  b                                           ; $6a3a: $04
	ld   b, $06                                      ; $6a3b: $06 $06
	ld   bc, $526f                                   ; $6a3d: $01 $6f $52
	ld   [bc], a                                     ; $6a40: $02
	inc  de                                          ; $6a41: $13
	ld   l, a                                        ; $6a42: $6f
	sub  c                                           ; $6a43: $91
	and  c                                           ; $6a44: $a1
	sbc  [hl]                                        ; $6a45: $9e
	ld   h, a                                        ; $6a46: $67
	ld   [hl], c                                     ; $6a47: $71
	ld   h, d                                        ; $6a48: $62
	ei                                               ; $6a49: $fb
	ld   d, d                                        ; $6a4a: $52
	ld   a, [$0dfa]                                  ; $6a4b: $fa $fa $0d
	nop                                              ; $6a4e: $00
	ld   a, [bc]                                     ; $6a4f: $0a
	inc  e                                           ; $6a50: $1c
	inc  b                                           ; $6a51: $04
	ld   bc, $0101                                   ; $6a52: $01 $01 $01
	ld   h, a                                        ; $6a55: $67
	ld   [hl], c                                     ; $6a56: $71
	ld   h, d                                        ; $6a57: $62
	ld   e, l                                        ; $6a58: $5d
	sbc  [hl]                                        ; $6a59: $9e
	ld   l, l                                        ; $6a5a: $6d
	ld   e, l                                        ; $6a5b: $5d
	ld   h, e                                        ; $6a5c: $63
	and  c                                           ; $6a5d: $a1
	ld   a, h                                        ; $6a5e: $7c
	dec  c                                           ; $6a5f: $0d
	ld   l, a                                        ; $6a60: $6f
	ld   e, c                                        ; $6a61: $59
	sub  a                                           ; $6a62: $97
	and  b                                           ; $6a63: $a0
	ld   [hl], d                                     ; $6a64: $72
	ld   e, c                                        ; $6a65: $59
	ld   d, [hl]                                     ; $6a66: $56
	sbc  c                                           ; $6a67: $99
	sub  [hl]                                        ; $6a68: $96
	ld   d, h                                        ; $6a69: $54
	ld   a, c                                        ; $6a6a: $79
	dec  c                                           ; $6a6b: $0d
	ld   a, b                                        ; $6a6c: $78
	ld   [hl], c                                     ; $6a6d: $71
	ld   l, l                                        ; $6a6e: $6d
	ld   a, e                                        ; $6a6f: $7b
	ei                                               ; $6a70: $fb
	ld   a, [$0dfa]                                  ; $6a71: $fa $fa $0d
	nop                                              ; $6a74: $00
	ld   a, [bc]                                     ; $6a75: $0a
	inc  e                                           ; $6a76: $1c
	inc  b                                           ; $6a77: $04
	nop                                              ; $6a78: $00
	nop                                              ; $6a79: $00
	ld   bc, $9a6b                                   ; $6a7a: $01 $6b $9a
	ld   h, [hl]                                     ; $6a7d: $66
	sub  c                                           ; $6a7e: $91
	sbc  [hl]                                        ; $6a7f: $9e
	ld   e, e                                        ; $6a80: $5b
	sub  l                                           ; $6a81: $95
	ld   d, h                                        ; $6a82: $54
	ld   a, h                                        ; $6a83: $7c
	ld   e, l                                        ; $6a84: $5d
	and  c                                           ; $6a85: $a1
	sbc  d                                           ; $6a86: $9a
	and  c                                           ; $6a87: $a1
	ld   a, l                                        ; $6a88: $7d
	dec  c                                           ; $6a89: $0d
	nop                                              ; $6a8a: $00
	dec  b                                           ; $6a8b: $05
	ld   b, b                                        ; $6a8c: $40
	ld   b, l                                        ; $6a8d: $45
	inc  bc                                          ; $6a8e: $03
	ld   b, l                                        ; $6a8f: $45
	ld   bc, $2801                                   ; $6a90: $01 $01 $28
	nop                                              ; $6a93: $00
	ld   bc, $9a61                                   ; $6a94: $01 $61 $9a
	ld   [hl], l                                     ; $6a97: $75
	ld   e, b                                        ; $6a98: $58
	ld   h, l                                        ; $6a99: $65
	adc  h                                           ; $6a9a: $8c
	ld   d, d                                        ; $6a9b: $52
	ld   a, [$000d]                                  ; $6a9c: $fa $0d $00
	inc  e                                           ; $6a9f: $1c
	inc  b                                           ; $6aa0: $04
	ld   bc, $0101                                   ; $6aa1: $01 $01 $01
	adc  h                                           ; $6aa4: $8c
	ld   l, l                                        ; $6aa5: $6d
	ld   a, e                                        ; $6aa6: $7b
	sbc  [hl]                                        ; $6aa7: $9e
	ld   l, a                                        ; $6aa8: $6f
	ld   d, d                                        ; $6aa9: $52
	ld   [bc], a                                     ; $6aaa: $02
	inc  de                                          ; $6aab: $13
	ld   l, a                                        ; $6aac: $6f
	sub  c                                           ; $6aad: $91
	and  c                                           ; $6aae: $a1
	ld   a, [$000d]                                  ; $6aaf: $fa $0d $00
	ld   a, [bc]                                     ; $6ab2: $0a
	dec  c                                           ; $6ab3: $0d
	nop                                              ; $6ab4: $00
	nop                                              ; $6ab5: $00
	rrca                                             ; $6ab6: $0f
	nop                                              ; $6ab7: $00
	ld   bc, $1c00                                   ; $6ab8: $01 $00 $1c
	inc  b                                           ; $6abb: $04
	nop                                              ; $6abc: $00
	nop                                              ; $6abd: $00
	ld   bc, $a161                                   ; $6abe: $01 $61 $a1
	ld   a, c                                        ; $6ac1: $79
	ld   l, a                                        ; $6ac2: $6f
	ld   a, l                                        ; $6ac3: $7d
	sbc  [hl]                                        ; $6ac4: $9e
	ld   l, a                                        ; $6ac5: $6f
	ld   d, d                                        ; $6ac6: $52
	ld   [bc], a                                     ; $6ac7: $02
	inc  de                                          ; $6ac8: $13
	ld   l, a                                        ; $6ac9: $6f
	sub  c                                           ; $6aca: $91
	and  c                                           ; $6acb: $a1
	sbc  a                                           ; $6acc: $9f
	dec  c                                           ; $6acd: $0d
	ld   l, e                                        ; $6ace: $6b
	sbc  d                                           ; $6acf: $9a
	ld   h, [hl]                                     ; $6ad0: $66
	sub  c                                           ; $6ad1: $91
	sbc  [hl]                                        ; $6ad2: $9e
	ld   e, l                                        ; $6ad3: $5d
	and  c                                           ; $6ad4: $a1
	sbc  d                                           ; $6ad5: $9a
	and  c                                           ; $6ad6: $a1
	dec  c                                           ; $6ad7: $0d
	ld   a, l                                        ; $6ad8: $7d
	ld   h, [hl]                                     ; $6ad9: $66
	adc  a                                           ; $6ada: $8f
	sbc  c                                           ; $6adb: $99
	sub  [hl]                                        ; $6adc: $96
	ld   a, [$000d]                                  ; $6add: $fa $0d $00
	ld   a, [bc]                                     ; $6ae0: $0a
	dec  h                                           ; $6ae1: $25
	inc  b                                           ; $6ae2: $04
	rlca                                             ; $6ae3: $07
	call nc, $0303                                   ; $6ae4: $d4 $03 $03
	jr   nz, jr_045_6aea                             ; $6ae7: $20 $01

	nop                                              ; $6ae9: $00

jr_045_6aea:
	jr   nz, jr_045_6aec                             ; $6aea: $20 $00

jr_045_6aec:
	inc  e                                           ; $6aec: $1c
	inc  b                                           ; $6aed: $04
	ld   b, $06                                      ; $6aee: $06 $06
	ld   bc, $526f                                   ; $6af0: $01 $6f $52
	ld   [bc], a                                     ; $6af3: $02
	inc  de                                          ; $6af4: $13
	ld   l, a                                        ; $6af5: $6f
	sub  c                                           ; $6af6: $91
	and  c                                           ; $6af7: $a1
	sbc  [hl]                                        ; $6af8: $9e
	ld   h, a                                        ; $6af9: $67
	ld   [hl], c                                     ; $6afa: $71
	ld   h, d                                        ; $6afb: $62
	ei                                               ; $6afc: $fb
	ld   d, d                                        ; $6afd: $52
	ld   a, [$0dfa]                                  ; $6afe: $fa $fa $0d
	nop                                              ; $6b01: $00
	ld   a, [bc]                                     ; $6b02: $0a
	inc  e                                           ; $6b03: $1c
	inc  b                                           ; $6b04: $04
	ld   bc, $0101                                   ; $6b05: $01 $01 $01
	ld   d, d                                        ; $6b08: $52
	ld   d, d                                        ; $6b09: $52
	ld   e, c                                        ; $6b0a: $59
	and  c                                           ; $6b0b: $a1
	ld   h, [hl]                                     ; $6b0c: $66
	ld   l, [hl]                                     ; $6b0d: $6e
	sub  [hl]                                        ; $6b0e: $96
	ei                                               ; $6b0f: $fb
	ld   a, [$610d]                                  ; $6b10: $fa $0d $61
	ld   a, h                                        ; $6b13: $7c
	ld   l, a                                        ; $6b14: $6f
	sub  l                                           ; $6b15: $95
	ld   d, h                                        ; $6b16: $54
	ld   h, l                                        ; $6b17: $65
	sbc  [hl]                                        ; $6b18: $9e
	ld   h, c                                        ; $6b19: $61
	ld   a, h                                        ; $6b1a: $7c
	ld   l, a                                        ; $6b1b: $6f
	sub  l                                           ; $6b1c: $95
	ld   d, h                                        ; $6b1d: $54
	ld   h, l                                        ; $6b1e: $65
	sbc  a                                           ; $6b1f: $9f
	dec  c                                           ; $6b20: $0d
	nop                                              ; $6b21: $00
	ld   a, [bc]                                     ; $6b22: $0a
	inc  e                                           ; $6b23: $1c
	inc  b                                           ; $6b24: $04
	nop                                              ; $6b25: $00
	nop                                              ; $6b26: $00
	ld   bc, $9a6b                                   ; $6b27: $01 $6b $9a
	ld   h, [hl]                                     ; $6b2a: $66
	sub  c                                           ; $6b2b: $91
	sbc  [hl]                                        ; $6b2c: $9e
	ld   e, e                                        ; $6b2d: $5b
	sub  l                                           ; $6b2e: $95
	ld   d, h                                        ; $6b2f: $54
	ld   a, h                                        ; $6b30: $7c
	ld   e, l                                        ; $6b31: $5d
	and  c                                           ; $6b32: $a1
	sbc  d                                           ; $6b33: $9a
	and  c                                           ; $6b34: $a1
	ld   a, l                                        ; $6b35: $7d
	dec  c                                           ; $6b36: $0d
	nop                                              ; $6b37: $00
	dec  b                                           ; $6b38: $05
	ld   b, b                                        ; $6b39: $40
	ld   b, l                                        ; $6b3a: $45
	inc  bc                                          ; $6b3b: $03
	ld   b, l                                        ; $6b3c: $45
	ld   bc, $2801                                   ; $6b3d: $01 $01 $28
	nop                                              ; $6b40: $00
	ld   bc, $9a61                                   ; $6b41: $01 $61 $9a
	ld   [hl], l                                     ; $6b44: $75
	ld   e, b                                        ; $6b45: $58
	ld   h, l                                        ; $6b46: $65
	adc  h                                           ; $6b47: $8c
	ld   d, d                                        ; $6b48: $52
	ld   a, [$000d]                                  ; $6b49: $fa $0d $00
	inc  e                                           ; $6b4c: $1c
	inc  b                                           ; $6b4d: $04
	ld   bc, $0101                                   ; $6b4e: $01 $01 $01
	adc  h                                           ; $6b51: $8c
	ld   l, l                                        ; $6b52: $6d
	ld   a, e                                        ; $6b53: $7b
	sbc  [hl]                                        ; $6b54: $9e
	ld   l, a                                        ; $6b55: $6f
	ld   d, d                                        ; $6b56: $52
	ld   [bc], a                                     ; $6b57: $02
	inc  de                                          ; $6b58: $13
	ld   l, a                                        ; $6b59: $6f
	sub  c                                           ; $6b5a: $91
	and  c                                           ; $6b5b: $a1
	ld   a, [$000d]                                  ; $6b5c: $fa $0d $00
	ld   a, [bc]                                     ; $6b5f: $0a
	dec  c                                           ; $6b60: $0d
	nop                                              ; $6b61: $00
	nop                                              ; $6b62: $00
	rrca                                             ; $6b63: $0f
	nop                                              ; $6b64: $00
	ld   bc, $0e00                                   ; $6b65: $01 $00 $0e
	ld   bc, $0702                                   ; $6b68: $01 $02 $07
	ld   sp, $0308                                   ; $6b6b: $31 $08 $03
	jr   nz, jr_045_6b71                             ; $6b6e: $20 $01

	ld   b, b                                        ; $6b70: $40

jr_045_6b71:
	dec  h                                           ; $6b71: $25
	nop                                              ; $6b72: $00
	dec  b                                           ; $6b73: $05
	ld   b, b                                        ; $6b74: $40
	ld   d, c                                        ; $6b75: $51
	ld   bc, $0000                                   ; $6b76: $01 $00 $00
	ld   bc, $ffff                                   ; $6b79: $01 $ff $ff
	ld   d, h                                        ; $6b7c: $54
	db   $fc                                         ; $6b7d: $fc
	and  c                                           ; $6b7e: $a1
	rst  $38                                         ; $6b7f: $ff
	rst  $38                                         ; $6b80: $ff
	dec  c                                           ; $6b81: $0d
	ld   a, b                                        ; $6b82: $78
	and  c                                           ; $6b83: $a1
	ld   l, [hl]                                     ; $6b84: $6e
	ld   e, c                                        ; $6b85: $59
	inc  b                                           ; $6b86: $04
	dec  c                                           ; $6b87: $0d
	inc  bc                                          ; $6b88: $03
	cp   $5a                                         ; $6b89: $fe $5a
	ld   [bc], a                                     ; $6b8b: $02
	jr   z, jr_045_6be0                              ; $6b8c: $28 $52

	ld   a, b                                        ; $6b8e: $78
	rst  $38                                         ; $6b8f: $ff
	rst  $38                                         ; $6b90: $ff
	dec  c                                           ; $6b91: $0d
	ld   [bc], a                                     ; $6b92: $02
	and  l                                           ; $6b93: $a5
	inc  b                                           ; $6b94: $04
	xor  d                                           ; $6b95: $aa
	ld   a, h                                        ; $6b96: $7c
	inc  bc                                          ; $6b97: $03
	ld   l, l                                        ; $6b98: $6d
	dec  b                                           ; $6b99: $05
	add  hl, de                                      ; $6b9a: $19
	ld   a, l                                        ; $6b9b: $7d
	inc  bc                                          ; $6b9c: $03
	and  a                                           ; $6b9d: $a7
	adc  [hl]                                        ; $6b9e: $8e
	ld   e, c                                        ; $6b9f: $59
	ld   a, b                                        ; $6ba0: $78
	sbc  a                                           ; $6ba1: $9f
	dec  c                                           ; $6ba2: $0d
	nop                                              ; $6ba3: $00
	ld   a, [bc]                                     ; $6ba4: $0a
	ld   b, $5c                                      ; $6ba5: $06 $5c
	ld   [$0201], sp                                 ; $6ba7: $08 $01 $02
	and  l                                           ; $6baa: $a5
	inc  b                                           ; $6bab: $04
	xor  d                                           ; $6bac: $aa
	ld   a, l                                        ; $6bad: $7d
	ld   a, b                                        ; $6bae: $78
	and  c                                           ; $6baf: $a1
	ld   l, [hl]                                     ; $6bb0: $6e
	ld   e, c                                        ; $6bb1: $59
	inc  bc                                          ; $6bb2: $03
	ld   l, l                                        ; $6bb3: $6d
	dec  b                                           ; $6bb4: $05
	add  hl, de                                      ; $6bb5: $19
	ld   a, c                                        ; $6bb6: $79
	dec  c                                           ; $6bb7: $0d
	ld   [bc], a                                     ; $6bb8: $02
	ld   a, a                                        ; $6bb9: $7f
	ld   e, e                                        ; $6bba: $5b
	ld   l, l                                        ; $6bbb: $6d
	ld   e, l                                        ; $6bbc: $5d
	ld   a, b                                        ; $6bbd: $78
	ld   d, d                                        ; $6bbe: $52
	ld   a, b                                        ; $6bbf: $78
	ld   d, b                                        ; $6bc0: $50
	rst  $38                                         ; $6bc1: $ff
	rst  $38                                         ; $6bc2: $ff
	dec  c                                           ; $6bc3: $0d
	inc  bc                                          ; $6bc4: $03
	ld   l, l                                        ; $6bc5: $6d
	dec  b                                           ; $6bc6: $05
	add  hl, de                                      ; $6bc7: $19
	rst  $38                                         ; $6bc8: $ff
	rst  $38                                         ; $6bc9: $ff
	inc  bc                                          ; $6bca: $03
	and  a                                           ; $6bcb: $a7
	adc  [hl]                                        ; $6bcc: $8e
	ld   e, c                                        ; $6bcd: $59
	ld   a, b                                        ; $6bce: $78
	sbc  a                                           ; $6bcf: $9f
	dec  c                                           ; $6bd0: $0d
	nop                                              ; $6bd1: $00
	ld   a, [bc]                                     ; $6bd2: $0a
	inc  hl                                          ; $6bd3: $23
	ld   c, d                                        ; $6bd4: $4a
	inc  d                                           ; $6bd5: $14
	ld   b, $01                                      ; $6bd6: $06 $01
	add  hl, bc                                      ; $6bd8: $09
	ld   e, $01                                      ; $6bd9: $1e $01
	and  e                                           ; $6bdb: $a3
	and  l                                           ; $6bdc: $a5
	db   $ec                                         ; $6bdd: $ec
	cp   d                                           ; $6bde: $ba
	sbc  [hl]                                        ; $6bdf: $9e

jr_045_6be0:
	ld   d, d                                        ; $6be0: $52
	sbc  c                                           ; $6be1: $99
	ld   e, c                                        ; $6be2: $59
	ld   d, d                                        ; $6be3: $52
	ld   sp, hl                                      ; $6be4: $f9
	dec  c                                           ; $6be5: $0d
	nop                                              ; $6be6: $00
	ld   a, [bc]                                     ; $6be7: $0a
	rrca                                             ; $6be8: $0f
	inc  b                                           ; $6be9: $04
	nop                                              ; $6bea: $00
	ld   bc, $fb7d                                   ; $6beb: $01 $7d $fb
	ld   d, d                                        ; $6bee: $52
	sbc  a                                           ; $6bef: $9f
	dec  c                                           ; $6bf0: $0d
	ld   d, d                                        ; $6bf1: $52
	adc  h                                           ; $6bf2: $8c
	ld   d, b                                        ; $6bf3: $50
	ld   e, a                                        ; $6bf4: $5f
	adc  h                                           ; $6bf5: $8c
	db   $fc                                         ; $6bf6: $fc
	ld   h, a                                        ; $6bf7: $67
	sbc  a                                           ; $6bf8: $9f
	dec  c                                           ; $6bf9: $0d
	nop                                              ; $6bfa: $00
	ld   a, [bc]                                     ; $6bfb: $0a
	inc  d                                           ; $6bfc: $14
	ld   a, [bc]                                     ; $6bfd: $0a
	ld   bc, $4b0e                                   ; $6bfe: $01 $0e $4b
	inc  e                                           ; $6c01: $1c
	inc  b                                           ; $6c02: $04
	ld   bc, $0101                                   ; $6c03: $01 $01 $01
	ld   e, b                                        ; $6c06: $58
	ld   a, l                                        ; $6c07: $7d
	sub  [hl]                                        ; $6c08: $96
	ld   d, h                                        ; $6c09: $54
	sbc  a                                           ; $6c0a: $9f
	dec  c                                           ; $6c0b: $0d
	ld   l, a                                        ; $6c0c: $6f
	ld   d, d                                        ; $6c0d: $52
	ld   [bc], a                                     ; $6c0e: $02
	inc  de                                          ; $6c0f: $13
	ld   l, a                                        ; $6c10: $6f
	sub  c                                           ; $6c11: $91
	and  c                                           ; $6c12: $a1
	sbc  a                                           ; $6c13: $9f
	dec  c                                           ; $6c14: $0d
	nop                                              ; $6c15: $00
	ld   a, [bc]                                     ; $6c16: $0a
	rlca                                             ; $6c17: $07
	ld   c, l                                        ; $6c18: $4d
	add  hl, bc                                      ; $6c19: $09
	inc  bc                                          ; $6c1a: $03
	jr   nz, jr_045_6c1e                             ; $6c1b: $20 $01

	ld   b, b                                        ; $6c1d: $40

jr_045_6c1e:
	dec  h                                           ; $6c1e: $25
	nop                                              ; $6c1f: $00
	ld   bc, $ffff                                   ; $6c20: $01 $ff $ff
	ld   d, b                                        ; $6c23: $50
	sbc  d                                           ; $6c24: $9a
	ld   sp, hl                                      ; $6c25: $f9
	dec  c                                           ; $6c26: $0d
	nop                                              ; $6c27: $00
	inc  e                                           ; $6c28: $1c
	inc  b                                           ; $6c29: $04
	inc  bc                                          ; $6c2a: $03
	inc  bc                                          ; $6c2b: $03
	ld   bc, $fb77                                   ; $6c2c: $01 $77 $fb
	ld   h, l                                        ; $6c2f: $65
	ld   l, l                                        ; $6c30: $6d
	ld   a, h                                        ; $6c31: $7c
	ld   sp, hl                                      ; $6c32: $f9
	dec  c                                           ; $6c33: $0d
	ld   e, c                                        ; $6c34: $59
	ld   e, b                                        ; $6c35: $58
	ld   d, d                                        ; $6c36: $52
	sbc  e                                           ; $6c37: $9b
	sbc  [hl]                                        ; $6c38: $9e
	sbc  l                                           ; $6c39: $9d
	sbc  c                                           ; $6c3a: $99
	ld   d, d                                        ; $6c3b: $52
	sub  [hl]                                        ; $6c3c: $96
	rst  $38                                         ; $6c3d: $ff
	rst  $38                                         ; $6c3e: $ff
	ld   sp, hl                                      ; $6c3f: $f9
	dec  c                                           ; $6c40: $0d
	nop                                              ; $6c41: $00
	ld   a, [bc]                                     ; $6c42: $0a
	rrca                                             ; $6c43: $0f
	nop                                              ; $6c44: $00
	ld   bc, $5401                                   ; $6c45: $01 $01 $54
	and  c                                           ; $6c48: $a1
	sbc  [hl]                                        ; $6c49: $9e
	ld   l, a                                        ; $6c4a: $6f
	sub  l                                           ; $6c4b: $95
	ld   [hl], c                                     ; $6c4c: $71
	halt                                             ; $6c4d: $76
	inc  b                                           ; $6c4e: $04
	dec  c                                           ; $6c4f: $0d
	inc  bc                                          ; $6c50: $03
	cp   $5a                                         ; $6c51: $fe $5a
	dec  c                                           ; $6c53: $0d
	sbc  l                                           ; $6c54: $9d
	sbc  c                                           ; $6c55: $99
	ld   e, l                                        ; $6c56: $5d
	ld   [hl], h                                     ; $6c57: $74
	ld   a, e                                        ; $6c58: $7b
	rst  $38                                         ; $6c59: $ff
	rst  $38                                         ; $6c5a: $ff
	ld   [bc], a                                     ; $6c5b: $02
	and  l                                           ; $6c5c: $a5
	inc  b                                           ; $6c5d: $04
	xor  d                                           ; $6c5e: $aa
	ld   a, h                                        ; $6c5f: $7c
	inc  bc                                          ; $6c60: $03
	ld   l, l                                        ; $6c61: $6d
	dec  b                                           ; $6c62: $05
	add  hl, de                                      ; $6c63: $19
	ld   a, l                                        ; $6c64: $7d
	dec  c                                           ; $6c65: $0d
	inc  bc                                          ; $6c66: $03
	and  a                                           ; $6c67: $a7
	sub  b                                           ; $6c68: $90
	ld   d, h                                        ; $6c69: $54
	halt                                             ; $6c6a: $76
	dec  b                                           ; $6c6b: $05
	pop  de                                          ; $6c6c: $d1
	ld   d, h                                        ; $6c6d: $54
	and  c                                           ; $6c6e: $a1
	ld   l, [hl]                                     ; $6c6f: $6e
	ld   e, a                                        ; $6c70: $5f
	ld   [hl], a                                     ; $6c71: $77
	rst  $38                                         ; $6c72: $ff
	rst  $38                                         ; $6c73: $ff
	dec  c                                           ; $6c74: $0d
	nop                                              ; $6c75: $00
	ld   a, [bc]                                     ; $6c76: $0a
	inc  e                                           ; $6c77: $1c
	inc  b                                           ; $6c78: $04
	nop                                              ; $6c79: $00
	nop                                              ; $6c7a: $00
	ld   bc, $ffff                                   ; $6c7b: $01 $ff $ff
	ld   d, h                                        ; $6c7e: $54
	and  c                                           ; $6c7f: $a1
	sbc  [hl]                                        ; $6c80: $9e
	ld   l, e                                        ; $6c81: $6b
	ld   d, h                                        ; $6c82: $54
	ld   l, [hl]                                     ; $6c83: $6e
	ld   a, e                                        ; $6c84: $7b
	sbc  a                                           ; $6c85: $9f
	dec  c                                           ; $6c86: $0d
	ld   l, e                                        ; $6c87: $6b
	sbc  d                                           ; $6c88: $9a
	ld   h, [hl]                                     ; $6c89: $66
	sub  c                                           ; $6c8a: $91
	ld   d, b                                        ; $6c8b: $50
	sbc  [hl]                                        ; $6c8c: $9e
	ld   e, e                                        ; $6c8d: $5b
	sub  l                                           ; $6c8e: $95
	ld   d, h                                        ; $6c8f: $54
	ld   a, h                                        ; $6c90: $7c
	ld   e, l                                        ; $6c91: $5d
	and  c                                           ; $6c92: $a1
	sbc  d                                           ; $6c93: $9a
	and  c                                           ; $6c94: $a1
	dec  c                                           ; $6c95: $0d
	ld   a, l                                        ; $6c96: $7d
	sbc  [hl]                                        ; $6c97: $9e
	ld   e, b                                        ; $6c98: $58
	sub  d                                           ; $6c99: $92
	ld   h, a                                        ; $6c9a: $67
	adc  l                                           ; $6c9b: $8d
	ld   a, c                                        ; $6c9c: $79
	ld   h, l                                        ; $6c9d: $65
	adc  h                                           ; $6c9e: $8c
	ei                                               ; $6c9f: $fb
	ld   h, a                                        ; $6ca0: $67
	sbc  a                                           ; $6ca1: $9f
	dec  c                                           ; $6ca2: $0d
	nop                                              ; $6ca3: $00
	ld   a, [bc]                                     ; $6ca4: $0a
	ld   bc, $9a6b                                   ; $6ca5: $01 $6b $9a
	ld   h, [hl]                                     ; $6ca8: $66
	sub  c                                           ; $6ca9: $91
	sbc  [hl]                                        ; $6caa: $9e
	ld   a, l                                        ; $6cab: $7d
	sub  d                                           ; $6cac: $92
	ld   e, l                                        ; $6cad: $5d
	ld   h, b                                        ; $6cae: $60
	and  c                                           ; $6caf: $a1
	ld   e, e                                        ; $6cb0: $5b
	ld   a, c                                        ; $6cb1: $79
	dec  c                                           ; $6cb2: $0d
	ld   a, b                                        ; $6cb3: $78
	ld   [hl], c                                     ; $6cb4: $71
	ld   [hl], h                                     ; $6cb5: $74
	ld   a, e                                        ; $6cb6: $7b
	sbc  a                                           ; $6cb7: $9f
	dec  c                                           ; $6cb8: $0d
	nop                                              ; $6cb9: $00
	ld   a, [bc]                                     ; $6cba: $0a
	dec  c                                           ; $6cbb: $0d
	nop                                              ; $6cbc: $00
	nop                                              ; $6cbd: $00
	rrca                                             ; $6cbe: $0f
	nop                                              ; $6cbf: $00
	ld   bc, $c206                                   ; $6cc0: $01 $06 $c2
	ld   [bc], a                                     ; $6cc3: $02
	inc  e                                           ; $6cc4: $1c
	inc  b                                           ; $6cc5: $04
	nop                                              ; $6cc6: $00
	nop                                              ; $6cc7: $00
	ld   bc, $5078                                   ; $6cc8: $01 $78 $50
	ld   a, c                                        ; $6ccb: $79
	ld   sp, hl                                      ; $6ccc: $f9
	db   $10                                         ; $6ccd: $10
	ld   l, a                                        ; $6cce: $6f
	ld   d, d                                        ; $6ccf: $52
	ld   [bc], a                                     ; $6cd0: $02
	inc  de                                          ; $6cd1: $13
	ld   l, a                                        ; $6cd2: $6f
	sub  c                                           ; $6cd3: $91
	and  c                                           ; $6cd4: $a1
	sbc  a                                           ; $6cd5: $9f
	dec  c                                           ; $6cd6: $0d
	sub  b                                           ; $6cd7: $90
	ld   d, h                                        ; $6cd8: $54
	ld   h, a                                        ; $6cd9: $67
	ld   e, [hl]                                     ; $6cda: $5e
	sbc  [hl]                                        ; $6cdb: $9e
	ld   e, l                                        ; $6cdc: $5d
	and  c                                           ; $6cdd: $a1
	sbc  d                                           ; $6cde: $9a
	and  c                                           ; $6cdf: $a1
	ld   a, h                                        ; $6ce0: $7c
	dec  c                                           ; $6ce1: $0d
	ld   h, [hl]                                     ; $6ce2: $66
	ld   e, c                                        ; $6ce3: $59
	and  c                                           ; $6ce4: $a1
	ld   l, [hl]                                     ; $6ce5: $6e
	sub  [hl]                                        ; $6ce6: $96
	sbc  a                                           ; $6ce7: $9f
	dec  c                                           ; $6ce8: $0d
	nop                                              ; $6ce9: $00
	ld   a, [bc]                                     ; $6cea: $0a
	rrca                                             ; $6ceb: $0f
	nop                                              ; $6cec: $00
	ld   bc, $5401                                   ; $6ced: $01 $01 $54
	and  c                                           ; $6cf0: $a1
	rst  $38                                         ; $6cf1: $ff
	rst  $38                                         ; $6cf2: $ff
	ld   d, b                                        ; $6cf3: $50
	ld   a, h                                        ; $6cf4: $7c
	rst  $38                                         ; $6cf5: $ff
	rst  $38                                         ; $6cf6: $ff
	dec  c                                           ; $6cf7: $0d
	ld   [bc], a                                     ; $6cf8: $02
	and  l                                           ; $6cf9: $a5
	inc  b                                           ; $6cfa: $04
	xor  d                                           ; $6cfb: $aa
	ld   a, l                                        ; $6cfc: $7d
	inc  bc                                          ; $6cfd: $03
	ld   l, l                                        ; $6cfe: $6d
	dec  b                                           ; $6cff: $05
	add  hl, de                                      ; $6d00: $19
	and  b                                           ; $6d01: $a0
	inc  bc                                          ; $6d02: $03
	and  a                                           ; $6d03: $a7
	sub  b                                           ; $6d04: $90
	ld   d, h                                        ; $6d05: $54
	ld   e, c                                        ; $6d06: $59
	halt                                             ; $6d07: $76
	dec  c                                           ; $6d08: $0d
	dec  b                                           ; $6d09: $05
	pop  de                                          ; $6d0a: $d1
	ld   [hl], c                                     ; $6d0b: $71
	ld   [hl], h                                     ; $6d0c: $74
	rst  $38                                         ; $6d0d: $ff
	rst  $38                                         ; $6d0e: $ff
	dec  c                                           ; $6d0f: $0d
	nop                                              ; $6d10: $00
	ld   a, [bc]                                     ; $6d11: $0a
	inc  e                                           ; $6d12: $1c
	inc  b                                           ; $6d13: $04
	inc  bc                                          ; $6d14: $03
	inc  bc                                          ; $6d15: $03
	ld   bc, $5252                                   ; $6d16: $01 $52 $52
	ld   e, a                                        ; $6d19: $5f
	ld   [hl], a                                     ; $6d1a: $77
	rst  $38                                         ; $6d1b: $ff
	rst  $38                                         ; $6d1c: $ff
	ld   [hl], a                                     ; $6d1d: $77
	ld   d, h                                        ; $6d1e: $54
	ld   h, l                                        ; $6d1f: $65
	ld   [hl], h                                     ; $6d20: $74
	ld   sp, hl                                      ; $6d21: $f9
	dec  c                                           ; $6d22: $0d
	nop                                              ; $6d23: $00
	ld   a, [bc]                                     ; $6d24: $0a
	rrca                                             ; $6d25: $0f
	nop                                              ; $6d26: $00
	ld   bc, $5201                                   ; $6d27: $01 $01 $52
	sub  d                                           ; $6d2a: $92
	sbc  [hl]                                        ; $6d2b: $9e
	halt                                             ; $6d2c: $76
	ld   e, l                                        ; $6d2d: $5d
	ld   a, c                                        ; $6d2e: $79
	dec  b                                           ; $6d2f: $05
	ld   de, $e104                                   ; $6d30: $11 $04 $e1
	ld   e, d                                        ; $6d33: $5a
	ld   d, b                                        ; $6d34: $50
	sbc  c                                           ; $6d35: $99
	dec  c                                           ; $6d36: $0d
	sbc  l                                           ; $6d37: $9d
	ld   e, a                                        ; $6d38: $5f
	ld   [hl], l                                     ; $6d39: $75
	sub  b                                           ; $6d3a: $90
	ld   a, b                                        ; $6d3b: $78
	ld   d, d                                        ; $6d3c: $52
	and  c                                           ; $6d3d: $a1
	ld   l, [hl]                                     ; $6d3e: $6e
	rst  $38                                         ; $6d3f: $ff
	rst  $38                                         ; $6d40: $ff
	dec  c                                           ; $6d41: $0d
	nop                                              ; $6d42: $00
	ld   a, [bc]                                     ; $6d43: $0a
	rrca                                             ; $6d44: $0f
	inc  b                                           ; $6d45: $04
	inc  bc                                          ; $6d46: $03
	dec  e                                           ; $6d47: $1d
	ld   b, b                                        ; $6d48: $40
	inc  d                                           ; $6d49: $14
	inc  bc                                          ; $6d4a: $03
	inc  d                                           ; $6d4b: $14
	ld   bc, $2902                                   ; $6d4c: $01 $02 $29
	nop                                              ; $6d4f: $00
	ld   bc, $ffff                                   ; $6d50: $01 $ff $ff
	rst  $38                                         ; $6d53: $ff
	sbc  l                                           ; $6d54: $9d
	ld   e, c                                        ; $6d55: $59
	ld   [hl], c                                     ; $6d56: $71
	ld   l, l                                        ; $6d57: $6d
	rst  $38                                         ; $6d58: $ff
	rst  $38                                         ; $6d59: $ff
	dec  c                                           ; $6d5a: $0d
	ld   h, [hl]                                     ; $6d5b: $66
	sub  c                                           ; $6d5c: $91
	ld   d, b                                        ; $6d5d: $50
	sbc  [hl]                                        ; $6d5e: $9e
	ld   e, e                                        ; $6d5f: $5b
	sub  l                                           ; $6d60: $95
	ld   d, h                                        ; $6d61: $54
	ld   a, h                                        ; $6d62: $7c
	ld   e, l                                        ; $6d63: $5d
	and  c                                           ; $6d64: $a1
	sbc  d                                           ; $6d65: $9a
	and  c                                           ; $6d66: $a1
	ld   a, l                                        ; $6d67: $7d
	dec  c                                           ; $6d68: $0d
	ld   e, b                                        ; $6d69: $58
	sub  d                                           ; $6d6a: $92
	ld   h, a                                        ; $6d6b: $67
	adc  l                                           ; $6d6c: $8d
	ld   l, [hl]                                     ; $6d6d: $6e
	ld   a, e                                        ; $6d6e: $7b
	rst  $38                                         ; $6d6f: $ff
	rst  $38                                         ; $6d70: $ff
	dec  c                                           ; $6d71: $0d
	nop                                              ; $6d72: $00
	ld   a, [bc]                                     ; $6d73: $0a
	ld   bc, $6d8c                                   ; $6d74: $01 $8c $6d
	ld   a, e                                        ; $6d77: $7b
	sbc  [hl]                                        ; $6d78: $9e
	ld   l, a                                        ; $6d79: $6f
	ld   d, d                                        ; $6d7a: $52
	ld   [bc], a                                     ; $6d7b: $02
	inc  de                                          ; $6d7c: $13
	ld   l, a                                        ; $6d7d: $6f
	sub  c                                           ; $6d7e: $91
	and  c                                           ; $6d7f: $a1
	sbc  a                                           ; $6d80: $9f
	dec  c                                           ; $6d81: $0d
	nop                                              ; $6d82: $00
	ld   a, [bc]                                     ; $6d83: $0a
	dec  c                                           ; $6d84: $0d
	nop                                              ; $6d85: $00
	nop                                              ; $6d86: $00
	rrca                                             ; $6d87: $0f
	nop                                              ; $6d88: $00
	ld   bc, $1e09                                   ; $6d89: $01 $09 $1e
	ld   b, $c2                                      ; $6d8c: $06 $c2
	ld   [bc], a                                     ; $6d8e: $02
	nop                                              ; $6d8f: $00
	ld   [bc], a                                     ; $6d90: $02
	ld   b, $01                                      ; $6d91: $06 $01
	inc  bc                                          ; $6d93: $03
	jr   nz, jr_045_6d96                             ; $6d94: $20 $00

jr_045_6d96:
	rrca                                             ; $6d96: $0f
	nop                                              ; $6d97: $00
	ld   bc, $0706                                   ; $6d98: $01 $06 $07
	nop                                              ; $6d9b: $00
	ld   [bc], a                                     ; $6d9c: $02
	rlca                                             ; $6d9d: $07
	sbc  l                                           ; $6d9e: $9d
	rlca                                             ; $6d9f: $07
	inc  b                                           ; $6da0: $04
	add  b                                           ; $6da1: $80
	add  $00                                         ; $6da2: $c6 $00
	ld   c, $7a                                      ; $6da4: $0e $7a
	ld   [bc], a                                     ; $6da6: $02
	rlca                                             ; $6da7: $07
	sub  [hl]                                        ; $6da8: $96
	ld   bc, $2003                                   ; $6da9: $01 $03 $20
	ld   bc, $2320                                   ; $6dac: $01 $20 $23
	nop                                              ; $6daf: $00
	rlca                                             ; $6db0: $07
	jr   z, jr_045_6db4                              ; $6db1: $28 $01

	inc  bc                                          ; $6db3: $03

jr_045_6db4:
	ld   d, b                                        ; $6db4: $50
	ld   [bc], a                                     ; $6db5: $02
	nop                                              ; $6db6: $00
	inc  bc                                          ; $6db7: $03
	ld   c, d                                        ; $6db8: $4a
	add  hl, hl                                      ; $6db9: $29
	add  hl, hl                                      ; $6dba: $29
	ld   bc, $2501                                   ; $6dbb: $01 $01 $25
	nop                                              ; $6dbe: $00
	rlca                                             ; $6dbf: $07
	ld   e, c                                        ; $6dc0: $59
	nop                                              ; $6dc1: $00
	inc  bc                                          ; $6dc2: $03
	ld   b, h                                        ; $6dc3: $44
	ld   bc, $2000                                   ; $6dc4: $01 $00 $20
	nop                                              ; $6dc7: $00
	rlca                                             ; $6dc8: $07
	cp   b                                           ; $6dc9: $b8
	inc  b                                           ; $6dca: $04
	inc  bc                                          ; $6dcb: $03
	ld   b, h                                        ; $6dcc: $44
	ld   bc, $2501                                   ; $6dcd: $01 $01 $25
	inc  bc                                          ; $6dd0: $03
	ld   b, h                                        ; $6dd1: $44
	ld   bc, $2302                                   ; $6dd2: $01 $02 $23
	inc  e                                           ; $6dd5: $1c
	nop                                              ; $6dd6: $00
	rlca                                             ; $6dd7: $07
	inc  a                                           ; $6dd8: $3c
	dec  b                                           ; $6dd9: $05
	inc  bc                                          ; $6dda: $03
	ld   b, h                                        ; $6ddb: $44
	ld   bc, $2503                                   ; $6ddc: $01 $03 $25
	inc  bc                                          ; $6ddf: $03
	ld   b, h                                        ; $6de0: $44
	ld   bc, $2305                                   ; $6de1: $01 $05 $23
	inc  e                                           ; $6de4: $1c
	nop                                              ; $6de5: $00
	rlca                                             ; $6de6: $07
	ld   [hl], l                                     ; $6de7: $75
	ld   b, $03                                      ; $6de8: $06 $03
	ld   b, h                                        ; $6dea: $44
	ld   bc, $2506                                   ; $6deb: $01 $06 $25
	nop                                              ; $6dee: $00
	inc  e                                           ; $6def: $1c
	inc  bc                                          ; $6df0: $03
	nop                                              ; $6df1: $00
	nop                                              ; $6df2: $00
	ld   bc, $a161                                   ; $6df3: $01 $61 $a1
	ld   a, c                                        ; $6df6: $79
	ld   l, a                                        ; $6df7: $6f
	ld   a, l                                        ; $6df8: $7d
	sbc  [hl]                                        ; $6df9: $9e
	ld   [$5d00], sp                                 ; $6dfa: $08 $00 $5d
	and  c                                           ; $6dfd: $a1
	sbc  a                                           ; $6dfe: $9f
	dec  c                                           ; $6dff: $0d
	inc  bc                                          ; $6e00: $03
	ret  z                                           ; $6e01: $c8

	halt                                             ; $6e02: $76
	ld   a, h                                        ; $6e03: $7c
	inc  bc                                          ; $6e04: $03
	ld   l, l                                        ; $6e05: $6d
	dec  b                                           ; $6e06: $05
	add  hl, de                                      ; $6e07: $19
	ld   a, l                                        ; $6e08: $7d
	inc  bc                                          ; $6e09: $03
	daa                                              ; $6e0a: $27
	ld   [bc], a                                     ; $6e0b: $02
	sub  c                                           ; $6e0c: $91
	sub  [hl]                                        ; $6e0d: $96
	sbc  a                                           ; $6e0e: $9f
	dec  c                                           ; $6e0f: $0d
	nop                                              ; $6e10: $00
	ld   a, [bc]                                     ; $6e11: $0a
	ld   bc, $7c61                                   ; $6e12: $01 $61 $7c
	inc  bc                                          ; $6e15: $03
	ld   l, l                                        ; $6e16: $6d
	dec  b                                           ; $6e17: $05
	add  hl, de                                      ; $6e18: $19
	ld   [hl], l                                     ; $6e19: $75
	ld   a, l                                        ; $6e1a: $7d
	sbc  [hl]                                        ; $6e1b: $9e
	ld   b, $25                                      ; $6e1c: $06 $25
	inc  b                                           ; $6e1e: $04
	dec  bc                                          ; $6e1f: $0b
	ld   b, $80                                      ; $6e20: $06 $80
	and  b                                           ; $6e22: $a0
	ld   [bc], a                                     ; $6e23: $02
	cp   [hl]                                        ; $6e24: $be
	adc  a                                           ; $6e25: $8f
	sbc  c                                           ; $6e26: $99
	dec  c                                           ; $6e27: $0d
	halt                                             ; $6e28: $76
	halt                                             ; $6e29: $76
	sub  b                                           ; $6e2a: $90
	ld   a, c                                        ; $6e2b: $79
	sbc  [hl]                                        ; $6e2c: $9e
	inc  bc                                          ; $6e2d: $03
	ld   h, d                                        ; $6e2e: $62
	inc  b                                           ; $6e2f: $04
	dec  bc                                          ; $6e30: $0b
	dec  b                                           ; $6e31: $05
	ld   a, [bc]                                     ; $6e32: $0a
	and  b                                           ; $6e33: $a0
	inc  b                                           ; $6e34: $04
	pop  de                                          ; $6e35: $d1
	ld   a, c                                        ; $6e36: $79
	ld   [hl], d                                     ; $6e37: $72
	ld   e, a                                        ; $6e38: $5f
	ld   [hl], h                                     ; $6e39: $74
	dec  c                                           ; $6e3a: $0d
	sub  b                                           ; $6e3b: $90
	sub  a                                           ; $6e3c: $97
	ld   d, d                                        ; $6e3d: $52
	adc  h                                           ; $6e3e: $8c
	ld   h, a                                        ; $6e3f: $67
	sbc  a                                           ; $6e40: $9f
	dec  c                                           ; $6e41: $0d
	nop                                              ; $6e42: $00
	ld   a, [bc]                                     ; $6e43: $0a
	inc  e                                           ; $6e44: $1c
	inc  bc                                          ; $6e45: $03
	nop                                              ; $6e46: $00
	nop                                              ; $6e47: $00
	ld   bc, $9a6b                                   ; $6e48: $01 $6b $9a
	ld   h, [hl]                                     ; $6e4b: $66
	sub  c                                           ; $6e4c: $91
	sbc  [hl]                                        ; $6e4d: $9e
	dec  b                                           ; $6e4e: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e4f: $cf
	adc  a                                           ; $6e50: $8f
	sbc  c                                           ; $6e51: $99
	sbc  l                                           ; $6e52: $9d
	sub  [hl]                                        ; $6e53: $96
	sbc  a                                           ; $6e54: $9f
	dec  c                                           ; $6e55: $0d
	nop                                              ; $6e56: $00
	ld   a, [bc]                                     ; $6e57: $0a
	dec  h                                           ; $6e58: $25
	inc  bc                                          ; $6e59: $03
	rlca                                             ; $6e5a: $07
	jp   nz, $0303                                   ; $6e5b: $c2 $03 $03

	jr   nz, jr_045_6e61                             ; $6e5e: $20 $01

	nop                                              ; $6e60: $00

jr_045_6e61:
	jr   nz, jr_045_6e63                             ; $6e61: $20 $00

jr_045_6e63:
	inc  e                                           ; $6e63: $1c
	inc  bc                                          ; $6e64: $03
	nop                                              ; $6e65: $00
	nop                                              ; $6e66: $00
	ld   bc, $0458                                   ; $6e67: $01 $58 $04
	ld   a, e                                        ; $6e6a: $7b
	sbc  d                                           ; $6e6b: $9a
	ld   h, e                                        ; $6e6c: $63
	adc  h                                           ; $6e6d: $8c
	rst  $38                                         ; $6e6e: $ff
	rst  $38                                         ; $6e6f: $ff
	sbc  a                                           ; $6e70: $9f
	dec  c                                           ; $6e71: $0d
	inc  bc                                          ; $6e72: $03
	inc  c                                           ; $6e73: $0c
	adc  a                                           ; $6e74: $8f
	ld   [hl], h                                     ; $6e75: $74
	ld   a, c                                        ; $6e76: $79
	ld   h, l                                        ; $6e77: $65
	ld   [hl], h                                     ; $6e78: $74
	ld   a, l                                        ; $6e79: $7d
	sbc  [hl]                                        ; $6e7a: $9e
	adc  h                                           ; $6e7b: $8c
	ld   l, b                                        ; $6e7c: $68
	adc  h                                           ; $6e7d: $8c
	ld   l, b                                        ; $6e7e: $68
	dec  c                                           ; $6e7f: $0d
	halt                                             ; $6e80: $76
	ld   d, d                                        ; $6e81: $52
	ld   [hl], c                                     ; $6e82: $71
	ld   l, l                                        ; $6e83: $6d
	halt                                             ; $6e84: $76
	ld   h, c                                        ; $6e85: $61
	sbc  e                                           ; $6e86: $9b
	ld   a, e                                        ; $6e87: $7b
	sbc  a                                           ; $6e88: $9f
	dec  c                                           ; $6e89: $0d
	nop                                              ; $6e8a: $00
	ld   a, [bc]                                     ; $6e8b: $0a
	ld   bc, $9a6b                                   ; $6e8c: $01 $6b $9a
	ld   [hl], l                                     ; $6e8f: $75
	ld   a, l                                        ; $6e90: $7d
	sbc  [hl]                                        ; $6e91: $9e
	inc  b                                           ; $6e92: $04
	adc  a                                           ; $6e93: $8f
	inc  b                                           ; $6e94: $04
	xor  d                                           ; $6e95: $aa
	ld   a, h                                        ; $6e96: $7c
	ld   [bc], a                                     ; $6e97: $02
	or   d                                           ; $6e98: $b2
	inc  bc                                          ; $6e99: $03
	ld   c, a                                        ; $6e9a: $4f
	ld   a, h                                        ; $6e9b: $7c
	inc  bc                                          ; $6e9c: $03
	ld   l, l                                        ; $6e9d: $6d
	dec  b                                           ; $6e9e: $05
	add  hl, de                                      ; $6e9f: $19
	and  b                                           ; $6ea0: $a0
	dec  c                                           ; $6ea1: $0d
	nop                                              ; $6ea2: $00
	dec  b                                           ; $6ea3: $05
	ld   b, b                                        ; $6ea4: $40
	ld   b, h                                        ; $6ea5: $44
	inc  bc                                          ; $6ea6: $03
	ld   b, h                                        ; $6ea7: $44
	ld   bc, $2801                                   ; $6ea8: $01 $01 $28
	nop                                              ; $6eab: $00
	ld   bc, $7e03                                   ; $6eac: $01 $03 $7e
	sbc  l                                           ; $6eaf: $9d
	sbc  b                                           ; $6eb0: $98
	adc  h                                           ; $6eb1: $8c
	ld   h, a                                        ; $6eb2: $67
	sbc  a                                           ; $6eb3: $9f
	dec  c                                           ; $6eb4: $0d
	nop                                              ; $6eb5: $00
	ld   a, [bc]                                     ; $6eb6: $0a
	dec  c                                           ; $6eb7: $0d
	nop                                              ; $6eb8: $00
	nop                                              ; $6eb9: $00
	rrca                                             ; $6eba: $0f
	nop                                              ; $6ebb: $00
	ld   bc, $1c00                                   ; $6ebc: $01 $00 $1c
	inc  bc                                          ; $6ebf: $03
	ld   [bc], a                                     ; $6ec0: $02
	ld   [bc], a                                     ; $6ec1: $02
	ld   bc, $ffff                                   ; $6ec2: $01 $ff $ff
	rst  $38                                         ; $6ec5: $ff
	rst  $38                                         ; $6ec6: $ff
	ld   l, e                                        ; $6ec7: $6b
	sbc  d                                           ; $6ec8: $9a
	ld   [hl], l                                     ; $6ec9: $75
	ld   a, l                                        ; $6eca: $7d
	inc  bc                                          ; $6ecb: $03
	ld   l, l                                        ; $6ecc: $6d
	dec  b                                           ; $6ecd: $05
	add  hl, de                                      ; $6ece: $19
	and  b                                           ; $6ecf: $a0
	dec  c                                           ; $6ed0: $0d
	ld   a, l                                        ; $6ed1: $7d
	ld   h, [hl]                                     ; $6ed2: $66
	adc  a                                           ; $6ed3: $8f
	adc  h                                           ; $6ed4: $8c
	ld   h, a                                        ; $6ed5: $67
	sbc  a                                           ; $6ed6: $9f
	dec  c                                           ; $6ed7: $0d
	nop                                              ; $6ed8: $00
	ld   a, [bc]                                     ; $6ed9: $0a
	dec  b                                           ; $6eda: $05
	ld   b, b                                        ; $6edb: $40
	ld   d, b                                        ; $6edc: $50
	ld   bc, $0000                                   ; $6edd: $01 $00 $00
	dec  h                                           ; $6ee0: $25
	inc  bc                                          ; $6ee1: $03
	rlca                                             ; $6ee2: $07
	jp   nz, $0303                                   ; $6ee3: $c2 $03 $03

	jr   nz, jr_045_6ee9                             ; $6ee6: $20 $01

	nop                                              ; $6ee8: $00

jr_045_6ee9:
	jr   nz, jr_045_6eeb                             ; $6ee9: $20 $00

jr_045_6eeb:
	inc  e                                           ; $6eeb: $1c
	inc  bc                                          ; $6eec: $03
	ld   [bc], a                                     ; $6eed: $02
	ld   [bc], a                                     ; $6eee: $02
	ld   bc, $0458                                   ; $6eef: $01 $58 $04
	ld   a, e                                        ; $6ef2: $7b
	sbc  d                                           ; $6ef3: $9a
	ld   h, e                                        ; $6ef4: $63
	adc  h                                           ; $6ef5: $8c
	ld   [hl], l                                     ; $6ef6: $75
	ld   h, l                                        ; $6ef7: $65
	ld   l, l                                        ; $6ef8: $6d
	rst  $38                                         ; $6ef9: $ff
	rst  $38                                         ; $6efa: $ff
	dec  c                                           ; $6efb: $0d
	nop                                              ; $6efc: $00
	ld   a, [bc]                                     ; $6efd: $0a
	dec  c                                           ; $6efe: $0d
	nop                                              ; $6eff: $00
	nop                                              ; $6f00: $00
	rrca                                             ; $6f01: $0f
	nop                                              ; $6f02: $00
	ld   bc, $4005                                   ; $6f03: $01 $05 $40
	ld   b, h                                        ; $6f06: $44
	inc  bc                                          ; $6f07: $03
	ld   b, h                                        ; $6f08: $44
	ld   bc, $2801                                   ; $6f09: $01 $01 $28
	nop                                              ; $6f0c: $00
	ld   bc, $ffff                                   ; $6f0d: $01 $ff $ff
	rst  $38                                         ; $6f10: $ff
	rst  $38                                         ; $6f11: $ff
	rst  JumpTable                                         ; $6f12: $df
	db   $ec                                         ; $6f13: $ec
	and  e                                           ; $6f14: $a3
	ld   h, e                                        ; $6f15: $63
	and  c                                           ; $6f16: $a1
	sbc  [hl]                                        ; $6f17: $9e
	dec  c                                           ; $6f18: $0d
	ld   e, e                                        ; $6f19: $5b
	ld   h, b                                        ; $6f1a: $60
	and  c                                           ; $6f1b: $a1
	ld   [bc], a                                     ; $6f1c: $02
	jr   z, jr_045_6f71                              ; $6f1d: $28 $52

	ld   l, h                                        ; $6f1f: $6c
	rst  $38                                         ; $6f20: $ff
	rst  $38                                         ; $6f21: $ff
	dec  c                                           ; $6f22: $0d
	nop                                              ; $6f23: $00
	ld   a, [bc]                                     ; $6f24: $0a
	dec  b                                           ; $6f25: $05
	ld   b, b                                        ; $6f26: $40
	ld   d, b                                        ; $6f27: $50
	ld   bc, $0000                                   ; $6f28: $01 $00 $00
	nop                                              ; $6f2b: $00
	inc  e                                           ; $6f2c: $1c
	inc  bc                                          ; $6f2d: $03
	nop                                              ; $6f2e: $00
	nop                                              ; $6f2f: $00
	dec  b                                           ; $6f30: $05
	ld   b, b                                        ; $6f31: $40
	ld   d, b                                        ; $6f32: $50
	ld   bc, $0000                                   ; $6f33: $01 $00 $00
	ld   bc, $a161                                   ; $6f36: $01 $61 $a1
	ld   a, c                                        ; $6f39: $79
	ld   l, a                                        ; $6f3a: $6f
	ld   a, l                                        ; $6f3b: $7d
	rst  $38                                         ; $6f3c: $ff
	rst  $38                                         ; $6f3d: $ff
	ld   d, b                                        ; $6f3e: $50
	sub  a                                           ; $6f3f: $97
	ld   sp, hl                                      ; $6f40: $f9
	dec  c                                           ; $6f41: $0d
	nop                                              ; $6f42: $00
	inc  e                                           ; $6f43: $1c
	inc  bc                                          ; $6f44: $03
	rlca                                             ; $6f45: $07
	rlca                                             ; $6f46: $07
	ld   bc, $5477                                   ; $6f47: $01 $77 $54
	ld   h, l                                        ; $6f4a: $65
	ld   l, l                                        ; $6f4b: $6d
	ld   a, h                                        ; $6f4c: $7c
	sbc  [hl]                                        ; $6f4d: $9e
	ld   [$5d00], sp                                 ; $6f4e: $08 $00 $5d
	and  c                                           ; $6f51: $a1
	dec  c                                           ; $6f52: $0d
	ld   [bc], a                                     ; $6f53: $02
	ld   [hl], d                                     ; $6f54: $72
	inc  bc                                          ; $6f55: $03
	dec  bc                                          ; $6f56: $0b
	ld   e, d                                        ; $6f57: $5a
	sbc  l                                           ; $6f58: $9d
	sbc  c                                           ; $6f59: $99
	ld   d, d                                        ; $6f5a: $52
	sbc  l                                           ; $6f5b: $9d
	sub  [hl]                                        ; $6f5c: $96
	sbc  a                                           ; $6f5d: $9f
	dec  c                                           ; $6f5e: $0d
	nop                                              ; $6f5f: $00
	ld   a, [bc]                                     ; $6f60: $0a
	inc  e                                           ; $6f61: $1c
	inc  bc                                          ; $6f62: $03
	inc  b                                           ; $6f63: $04
	inc  b                                           ; $6f64: $04
	ld   bc, $a502                                   ; $6f65: $01 $02 $a5
	ld   [bc], a                                     ; $6f68: $02
	sub  e                                           ; $6f69: $93
	ld   a, h                                        ; $6f6a: $7c
	inc  bc                                          ; $6f6b: $03
	ld   l, l                                        ; $6f6c: $6d
	dec  b                                           ; $6f6d: $05
	add  hl, de                                      ; $6f6e: $19
	ld   a, l                                        ; $6f6f: $7d
	inc  bc                                          ; $6f70: $03

jr_045_6f71:
	and  a                                           ; $6f71: $a7
	and  c                                           ; $6f72: $a1
	ld   l, [hl]                                     ; $6f73: $6e
	inc  b                                           ; $6f74: $04
	ld   a, b                                        ; $6f75: $78
	ld   e, d                                        ; $6f76: $5a
	dec  c                                           ; $6f77: $0d
	ld   d, d                                        ; $6f78: $52
	ld   d, d                                        ; $6f79: $52
	and  c                                           ; $6f7a: $a1
	ld   h, [hl]                                     ; $6f7b: $66
	sub  c                                           ; $6f7c: $91
	ld   a, b                                        ; $6f7d: $78
	ld   d, d                                        ; $6f7e: $52
	ld   e, c                                        ; $6f7f: $59
	ld   h, l                                        ; $6f80: $65
	sub  a                                           ; $6f81: $97
	sbc  a                                           ; $6f82: $9f
	dec  c                                           ; $6f83: $0d
	nop                                              ; $6f84: $00
	ld   a, [bc]                                     ; $6f85: $0a
	jr   jr_045_6f8a                                 ; $6f86: $18 $02

	nop                                              ; $6f88: $00
	inc  bc                                          ; $6f89: $03

jr_045_6f8a:
	and  a                                           ; $6f8a: $a7
	adc  [hl]                                        ; $6f8b: $8e
	nop                                              ; $6f8c: $00
	nop                                              ; $6f8d: $00
	ld   e, d                                        ; $6f8e: $5a
	and  c                                           ; $6f8f: $a1
	ld   a, [hl]                                     ; $6f90: $7e
	sbc  c                                           ; $6f91: $99
	nop                                              ; $6f92: $00
	ld   bc, $1007                                   ; $6f93: $01 $07 $10
	ld   [bc], a                                     ; $6f96: $02
	ld   [bc], a                                     ; $6f97: $02
	ld   [bc], a                                     ; $6f98: $02
	ld   bc, $2000                                   ; $6f99: $01 $00 $20
	nop                                              ; $6f9c: $00
	rlca                                             ; $6f9d: $07
	jp   hl                                          ; $6f9e: $e9


	ld   [bc], a                                     ; $6f9f: $02
	ld   [bc], a                                     ; $6fa0: $02
	ld   [bc], a                                     ; $6fa1: $02
	ld   bc, $2001                                   ; $6fa2: $01 $01 $20
	nop                                              ; $6fa5: $00
	rrca                                             ; $6fa6: $0f
	nop                                              ; $6fa7: $00
	ld   bc, $6701                                   ; $6fa8: $01 $01 $67
	adc  l                                           ; $6fab: $8d
	adc  h                                           ; $6fac: $8c
	ld   l, c                                        ; $6fad: $69
	and  c                                           ; $6fae: $a1
	rst  $38                                         ; $6faf: $ff
	rst  $38                                         ; $6fb0: $ff
	dec  c                                           ; $6fb1: $0d
	ld   l, e                                        ; $6fb2: $6b
	sbc  d                                           ; $6fb3: $9a
	ld   [hl], l                                     ; $6fb4: $75
	ld   a, l                                        ; $6fb5: $7d
	sbc  [hl]                                        ; $6fb6: $9e
	ld   [bc], a                                     ; $6fb7: $02
	and  l                                           ; $6fb8: $a5
	inc  b                                           ; $6fb9: $04
	xor  d                                           ; $6fba: $aa
	ld   a, h                                        ; $6fbb: $7c
	inc  bc                                          ; $6fbc: $03
	ld   l, l                                        ; $6fbd: $6d
	dec  b                                           ; $6fbe: $05
	add  hl, de                                      ; $6fbf: $19
	ld   a, l                                        ; $6fc0: $7d
	dec  c                                           ; $6fc1: $0d
	inc  bc                                          ; $6fc2: $03
	and  a                                           ; $6fc3: $a7
	adc  h                                           ; $6fc4: $8c
	ld   l, c                                        ; $6fc5: $69
	ld   [hl], h                                     ; $6fc6: $74
	ld   d, d                                        ; $6fc7: $52
	ld   l, l                                        ; $6fc8: $6d
	ld   l, [hl]                                     ; $6fc9: $6e
	ld   e, e                                        ; $6fca: $5b
	adc  h                                           ; $6fcb: $8c
	ld   h, a                                        ; $6fcc: $67
	sbc  a                                           ; $6fcd: $9f
	dec  c                                           ; $6fce: $0d
	nop                                              ; $6fcf: $00
	ld   a, [bc]                                     ; $6fd0: $0a
	inc  e                                           ; $6fd1: $1c
	inc  bc                                          ; $6fd2: $03
	nop                                              ; $6fd3: $00
	nop                                              ; $6fd4: $00
	ld   bc, $9a6b                                   ; $6fd5: $01 $6b $9a
	ld   e, d                                        ; $6fd8: $5a
	ld   d, d                                        ; $6fd9: $52
	ld   d, d                                        ; $6fda: $52
	sbc  l                                           ; $6fdb: $9d
	sbc  a                                           ; $6fdc: $9f
	dec  c                                           ; $6fdd: $0d
	ld   [hl], l                                     ; $6fde: $75
	ld   a, l                                        ; $6fdf: $7d
	sbc  [hl]                                        ; $6fe0: $9e
	ld   [bc], a                                     ; $6fe1: $02
	and  l                                           ; $6fe2: $a5
	inc  b                                           ; $6fe3: $04
	xor  d                                           ; $6fe4: $aa
	ld   a, l                                        ; $6fe5: $7d
	ld   e, b                                        ; $6fe6: $58
	inc  bc                                          ; $6fe7: $03
	and  a                                           ; $6fe8: $a7
	adc  l                                           ; $6fe9: $8d
	halt                                             ; $6fea: $76
	ld   d, d                                        ; $6feb: $52
	ld   d, h                                        ; $6fec: $54
	dec  c                                           ; $6fed: $0d
	ld   h, c                                        ; $6fee: $61
	halt                                             ; $6fef: $76
	ld   a, c                                        ; $6ff0: $79
	ld   h, l                                        ; $6ff1: $65
	adc  h                                           ; $6ff2: $8c
	ld   h, l                                        ; $6ff3: $65
	sub  l                                           ; $6ff4: $95
	ld   d, h                                        ; $6ff5: $54
	sbc  a                                           ; $6ff6: $9f
	dec  c                                           ; $6ff7: $0d
	nop                                              ; $6ff8: $00
	ld   a, [bc]                                     ; $6ff9: $0a
	inc  e                                           ; $6ffa: $1c
	inc  bc                                          ; $6ffb: $03
	inc  b                                           ; $6ffc: $04
	inc  b                                           ; $6ffd: $04
	ld   bc, $a15a                                   ; $6ffe: $01 $5a $a1
	ld   a, [hl]                                     ; $7001: $7e
	sbc  c                                           ; $7002: $99
	ld   a, h                                        ; $7003: $7c
	sub  b                                           ; $7004: $90
	ld   d, d                                        ; $7005: $52
	ld   d, d                                        ; $7006: $52
	ld   e, a                                        ; $7007: $5f
	sbc  d                                           ; $7008: $9a
	ld   [hl], a                                     ; $7009: $77
	sbc  [hl]                                        ; $700a: $9e
	dec  c                                           ; $700b: $0d
	inc  b                                           ; $700c: $04
	dec  c                                           ; $700d: $0d
	inc  bc                                          ; $700e: $03
	cp   $02                                         ; $700f: $fe $02
	ld   l, b                                        ; $7011: $68
	dec  b                                           ; $7012: $05
	ld   de, $6f7d                                   ; $7013: $11 $7d $6f
	sub  c                                           ; $7016: $91
	and  c                                           ; $7017: $a1
	halt                                             ; $7018: $76
	dec  c                                           ; $7019: $0d
	ld   h, l                                        ; $701a: $65
	ld   a, b                                        ; $701b: $78
	ld   h, e                                        ; $701c: $63
	ld   d, d                                        ; $701d: $52
	ld   a, e                                        ; $701e: $7b
	sbc  a                                           ; $701f: $9f
	dec  c                                           ; $7020: $0d
	nop                                              ; $7021: $00
	ld   a, [bc]                                     ; $7022: $0a
	rrca                                             ; $7023: $0f
	nop                                              ; $7024: $00
	ld   bc, $7d01                                   ; $7025: $01 $01 $7d
	ld   d, d                                        ; $7028: $52
	sbc  [hl]                                        ; $7029: $9e
	sbc  l                                           ; $702a: $9d
	ld   e, c                                        ; $702b: $59
	sbc  b                                           ; $702c: $98
	adc  h                                           ; $702d: $8c
	ld   h, l                                        ; $702e: $65
	ld   l, l                                        ; $702f: $6d
	sbc  a                                           ; $7030: $9f
	dec  c                                           ; $7031: $0d
	ld   l, e                                        ; $7032: $6b
	sbc  d                                           ; $7033: $9a
	ld   [hl], l                                     ; $7034: $75
	ld   a, l                                        ; $7035: $7d
	inc  bc                                          ; $7036: $03
	add  e                                           ; $7037: $83
	dec  b                                           ; $7038: $05
	dec  c                                           ; $7039: $0d
	ld   h, l                                        ; $703a: $65
	adc  h                                           ; $703b: $8c
	ld   h, a                                        ; $703c: $67
	sbc  a                                           ; $703d: $9f
	dec  c                                           ; $703e: $0d
	nop                                              ; $703f: $00
	ld   a, [bc]                                     ; $7040: $0a
	dec  c                                           ; $7041: $0d
	nop                                              ; $7042: $00
	nop                                              ; $7043: $00
	inc  hl                                          ; $7044: $23
	ld   bc, $6b01                                   ; $7045: $01 $01 $6b
	sbc  d                                           ; $7048: $9a
	ld   h, [hl]                                     ; $7049: $66
	sub  c                                           ; $704a: $91
	sbc  [hl]                                        ; $704b: $9e
	inc  bc                                          ; $704c: $03
	ld   l, h                                        ; $704d: $6c
	ld   h, l                                        ; $704e: $65
	inc  bc                                          ; $704f: $03
	and  a                                           ; $7050: $a7
	adc  [hl]                                        ; $7051: $8e
	halt                                             ; $7052: $76
	ld   h, a                                        ; $7053: $67
	sbc  c                                           ; $7054: $99
	ld   e, c                                        ; $7055: $59
	sbc  a                                           ; $7056: $9f
	dec  c                                           ; $7057: $0d
	nop                                              ; $7058: $00
	ld   a, [bc]                                     ; $7059: $0a
	dec  h                                           ; $705a: $25
	nop                                              ; $705b: $00
	rrca                                             ; $705c: $0f
	nop                                              ; $705d: $00
	ld   bc, $5401                                   ; $705e: $01 $01 $54
	db   $fc                                         ; $7061: $fc
	and  c                                           ; $7062: $a1
	sub  [hl]                                        ; $7063: $96
	ld   e, l                                        ; $7064: $5d
	inc  b                                           ; $7065: $04
	ld   b, d                                        ; $7066: $42
	ld   l, l                                        ; $7067: $6d
	rst  $38                                         ; $7068: $ff
	rst  $38                                         ; $7069: $ff
	dec  c                                           ; $706a: $0d
	ld   e, c                                        ; $706b: $59
	ld   a, b                                        ; $706c: $78
	sbc  b                                           ; $706d: $98
	inc  b                                           ; $706e: $04
	dec  c                                           ; $706f: $0d
	ld   e, d                                        ; $7070: $5a
	dec  b                                           ; $7071: $05
	inc  de                                          ; $7072: $13
	ld   a, c                                        ; $7073: $79
	ld   a, b                                        ; $7074: $78
	ld   [hl], c                                     ; $7075: $71
	ld   l, l                                        ; $7076: $6d
	ld   l, h                                        ; $7077: $6c
	sbc  a                                           ; $7078: $9f
	dec  c                                           ; $7079: $0d
	nop                                              ; $707a: $00
	ld   a, [bc]                                     ; $707b: $0a
	add  hl, hl                                      ; $707c: $29
	dec  b                                           ; $707d: $05
	nop                                              ; $707e: $00
	rrca                                             ; $707f: $0f
	nop                                              ; $7080: $00
	ld   bc, $5201                                   ; $7081: $01 $01 $52
	ld   d, [hl]                                     ; $7084: $56
	sbc  [hl]                                        ; $7085: $9e
	inc  b                                           ; $7086: $04
	ld   c, $03                                      ; $7087: $0e $03
	sbc  l                                           ; $7089: $9d
	inc  b                                           ; $708a: $04
	and  [hl]                                        ; $708b: $a6
	ld   [hl], l                                     ; $708c: $75
	ld   h, a                                        ; $708d: $67
	sbc  a                                           ; $708e: $9f
	dec  c                                           ; $708f: $0d
	ld   e, d                                        ; $7090: $5a
	and  c                                           ; $7091: $a1
	ld   a, [hl]                                     ; $7092: $7e
	sbc  b                                           ; $7093: $98
	adc  h                                           ; $7094: $8c
	ld   h, a                                        ; $7095: $67
	ld   a, [$000d]                                  ; $7096: $fa $0d $00
	ld   a, [bc]                                     ; $7099: $0a
	rlca                                             ; $709a: $07
	ld   b, [hl]                                     ; $709b: $46
	inc  b                                           ; $709c: $04
	inc  bc                                          ; $709d: $03
	ld   b, h                                        ; $709e: $44
	ld   bc, $2000                                   ; $709f: $01 $00 $20
	nop                                              ; $70a2: $00
	rrca                                             ; $70a3: $0f
	inc  bc                                          ; $70a4: $03
	inc  b                                           ; $70a5: $04
	ld   bc, $546b                                   ; $70a6: $01 $6b $54
	rst  $38                                         ; $70a9: $ff
	rst  $38                                         ; $70aa: $ff
	dec  c                                           ; $70ab: $0d
	ld   l, e                                        ; $70ac: $6b
	sbc  d                                           ; $70ad: $9a
	ld   h, [hl]                                     ; $70ae: $66
	sub  c                                           ; $70af: $91
	sbc  [hl]                                        ; $70b0: $9e
	dec  b                                           ; $70b1: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $70b2: $cf
	adc  a                                           ; $70b3: $8f
	sbc  c                                           ; $70b4: $99
	sbc  l                                           ; $70b5: $9d
	sub  [hl]                                        ; $70b6: $96
	sbc  a                                           ; $70b7: $9f
	dec  c                                           ; $70b8: $0d
	nop                                              ; $70b9: $00
	ld   a, [bc]                                     ; $70ba: $0a
	dec  h                                           ; $70bb: $25
	inc  bc                                          ; $70bc: $03
	dec  b                                           ; $70bd: $05
	ld   b, b                                        ; $70be: $40
	ld   b, h                                        ; $70bf: $44
	inc  bc                                          ; $70c0: $03
	ld   b, h                                        ; $70c1: $44
	ld   bc, $2801                                   ; $70c2: $01 $01 $28
	nop                                              ; $70c5: $00
	inc  e                                           ; $70c6: $1c
	inc  bc                                          ; $70c7: $03
	inc  b                                           ; $70c8: $04
	inc  b                                           ; $70c9: $04
	ld   bc, $0458                                   ; $70ca: $01 $58 $04
	ld   a, e                                        ; $70cd: $7b
	sbc  d                                           ; $70ce: $9a
	ld   h, e                                        ; $70cf: $63
	adc  h                                           ; $70d0: $8c
	rst  $38                                         ; $70d1: $ff
	rst  $38                                         ; $70d2: $ff
	dec  c                                           ; $70d3: $0d
	ld   [$5d00], sp                                 ; $70d4: $08 $00 $5d
	and  c                                           ; $70d7: $a1
	sbc  [hl]                                        ; $70d8: $9e
	call c, $c9f5                                    ; $70d9: $dc $f5 $c9
	ld   a, c                                        ; $70dc: $79
	dec  c                                           ; $70dd: $0d
	inc  b                                           ; $70de: $04
	ld   c, $03                                      ; $70df: $0e $03
	sbc  l                                           ; $70e1: $9d
	inc  b                                           ; $70e2: $04
	and  [hl]                                        ; $70e3: $a6
	ld   a, b                                        ; $70e4: $78
	ld   a, h                                        ; $70e5: $7c
	ld   sp, hl                                      ; $70e6: $f9
	dec  c                                           ; $70e7: $0d
	nop                                              ; $70e8: $00
	ld   a, [bc]                                     ; $70e9: $0a
	rlca                                             ; $70ea: $07
	adc  [hl]                                        ; $70eb: $8e
	inc  bc                                          ; $70ec: $03
	inc  bc                                          ; $70ed: $03
	jr   nz, jr_045_70f1                             ; $70ee: $20 $01

	nop                                              ; $70f0: $00

jr_045_70f1:
	jr   nz, jr_045_70f3                             ; $70f1: $20 $00

jr_045_70f3:
	ld   bc, $a502                                   ; $70f3: $01 $02 $a5
	inc  b                                           ; $70f6: $04
	xor  d                                           ; $70f7: $aa
	ld   a, l                                        ; $70f8: $7d
	sub  b                                           ; $70f9: $90
	ld   d, h                                        ; $70fa: $54
	inc  bc                                          ; $70fb: $03
	and  a                                           ; $70fc: $a7
	and  c                                           ; $70fd: $a1
	ld   l, [hl]                                     ; $70fe: $6e
	inc  b                                           ; $70ff: $04
	ld   a, b                                        ; $7100: $78
	ld   e, d                                        ; $7101: $5a
	dec  c                                           ; $7102: $0d
	ld   d, d                                        ; $7103: $52
	ld   d, d                                        ; $7104: $52
	halt                                             ; $7105: $76
	dec  b                                           ; $7106: $05
	pop  de                                          ; $7107: $d1
	ld   d, h                                        ; $7108: $54
	sbc  l                                           ; $7109: $9d
	sbc  a                                           ; $710a: $9f
	dec  c                                           ; $710b: $0d
	ld   l, e                                        ; $710c: $6b
	sbc  d                                           ; $710d: $9a
	ld   h, [hl]                                     ; $710e: $66
	sub  c                                           ; $710f: $91
	sbc  [hl]                                        ; $7110: $9e
	ld   e, b                                        ; $7111: $58
	inc  b                                           ; $7112: $04
	ld   a, e                                        ; $7113: $7b
	sbc  d                                           ; $7114: $9a
	ld   h, e                                        ; $7115: $63
	adc  h                                           ; $7116: $8c
	sbc  a                                           ; $7117: $9f
	dec  c                                           ; $7118: $0d
	nop                                              ; $7119: $00
	ld   a, [bc]                                     ; $711a: $0a
	rrca                                             ; $711b: $0f
	nop                                              ; $711c: $00
	ld   bc, $000d                                   ; $711d: $01 $0d $00
	nop                                              ; $7120: $00
	add  hl, bc                                      ; $7121: $09
	ld   e, $00                                      ; $7122: $1e $00
	rrca                                             ; $7124: $0f
	nop                                              ; $7125: $00
	ld   bc, $7d01                                   ; $7126: $01 $01 $7d
	ld   d, d                                        ; $7129: $52
	sbc  [hl]                                        ; $712a: $9e
	ld   l, [hl]                                     ; $712b: $6e
	ld   d, d                                        ; $712c: $52
	ld   h, [hl]                                     ; $712d: $66
	sub  l                                           ; $712e: $95
	rst  $38                                         ; $712f: $ff
	ld   d, h                                        ; $7130: $54
	rst  $38                                         ; $7131: $ff
	rst  $38                                         ; $7132: $ff
	add  h                                           ; $7133: $84
	rst  $38                                         ; $7134: $ff
	rst  $38                                         ; $7135: $ff
	dec  c                                           ; $7136: $0d
	nop                                              ; $7137: $00
	dec  c                                           ; $7138: $0d
	nop                                              ; $7139: $00
	nop                                              ; $713a: $00
	inc  c                                           ; $713b: $0c
	ld   [bc], a                                     ; $713c: $02
	ld   c, $03                                      ; $713d: $0e $03
	ld   bc, $9a50                                   ; $713f: $01 $50 $9a
	rst  $38                                         ; $7142: $ff
	rst  $38                                         ; $7143: $ff
	rst  $38                                         ; $7144: $ff
	ld   sp, hl                                      ; $7145: $f9
	dec  c                                           ; $7146: $0d
	ld   e, c                                        ; $7147: $59
	sub  a                                           ; $7148: $97
	rst  $38                                         ; $7149: $ff
	rst  $38                                         ; $714a: $ff
	ld   l, [hl]                                     ; $714b: $6e
	rst  $38                                         ; $714c: $ff
	rst  $38                                         ; $714d: $ff
	ld   e, d                                        ; $714e: $5a
	rst  $38                                         ; $714f: $ff
	rst  $38                                         ; $7150: $ff
	dec  c                                           ; $7151: $0d
	nop                                              ; $7152: $00
	ld   a, [bc]                                     ; $7153: $0a
	ld   l, $01                                      ; $7154: $2e $01
	nop                                              ; $7156: $00
	nop                                              ; $7157: $00
	dec  b                                           ; $7158: $05
	ld   b, b                                        ; $7159: $40
	ld   b, h                                        ; $715a: $44
	inc  bc                                          ; $715b: $03
	ld   b, h                                        ; $715c: $44
	ld   bc, $2801                                   ; $715d: $01 $01 $28
	nop                                              ; $7160: $00
	inc  e                                           ; $7161: $1c
	inc  bc                                          ; $7162: $03
	nop                                              ; $7163: $00
	nop                                              ; $7164: $00
	ld   bc, $0458                                   ; $7165: $01 $58 $04
	ld   a, e                                        ; $7168: $7b
	sbc  d                                           ; $7169: $9a
	ld   h, e                                        ; $716a: $63
	adc  h                                           ; $716b: $8c
	rst  $38                                         ; $716c: $ff
	rst  $38                                         ; $716d: $ff
	dec  c                                           ; $716e: $0d
	nop                                              ; $716f: $00
	inc  e                                           ; $7170: $1c
	inc  bc                                          ; $7171: $03
	rlca                                             ; $7172: $07
	rlca                                             ; $7173: $07
	ld   bc, $9750                                   ; $7174: $01 $50 $97
	ld   sp, hl                                      ; $7177: $f9
	db   $10                                         ; $7178: $10
	ld   [hl], a                                     ; $7179: $77
	ld   d, h                                        ; $717a: $54
	ld   h, l                                        ; $717b: $65
	ld   l, l                                        ; $717c: $6d
	ld   a, h                                        ; $717d: $7c
	ld   sp, hl                                      ; $717e: $f9
	dec  c                                           ; $717f: $0d
	ld   [bc], a                                     ; $7180: $02
	ld   [hl], d                                     ; $7181: $72
	ld   e, d                                        ; $7182: $5a
	inc  bc                                          ; $7183: $03
	xor  l                                           ; $7184: $ad
	ld   [hl], c                                     ; $7185: $71
	inc  bc                                          ; $7186: $03
	ld   a, [bc]                                     ; $7187: $0a
	sub  [hl]                                        ; $7188: $96
	sbc  a                                           ; $7189: $9f
	dec  c                                           ; $718a: $0d
	nop                                              ; $718b: $00
	ld   a, [bc]                                     ; $718c: $0a
	rrca                                             ; $718d: $0f
	nop                                              ; $718e: $00
	ld   bc, $030d                                   ; $718f: $01 $0d $03
	inc  b                                           ; $7192: $04
	ld   bc, $5656                                   ; $7193: $01 $56 $56
	rst  $38                                         ; $7196: $ff
	rst  $38                                         ; $7197: $ff
	ld   a, b                                        ; $7198: $78
	and  c                                           ; $7199: $a1
	ld   l, [hl]                                     ; $719a: $6e
	ld   e, c                                        ; $719b: $59
	ld   h, e                                        ; $719c: $63
	ld   [hl], c                                     ; $719d: $71
	ld   e, e                                        ; $719e: $5b
	ld   e, c                                        ; $719f: $59
	sub  a                                           ; $71a0: $97
	dec  c                                           ; $71a1: $0d
	inc  b                                           ; $71a2: $04
	dec  c                                           ; $71a3: $0d
	ld   e, d                                        ; $71a4: $5a
	ld   l, [hl]                                     ; $71a5: $6e
	sbc  c                                           ; $71a6: $99
	ld   e, l                                        ; $71a7: $5d
	ld   [hl], h                                     ; $71a8: $74
	rst  $38                                         ; $71a9: $ff
	rst  $38                                         ; $71aa: $ff
	dec  c                                           ; $71ab: $0d
	nop                                              ; $71ac: $00
	ld   a, [bc]                                     ; $71ad: $0a
	ld   bc, $6254                                   ; $71ae: $01 $54 $62
	rst  $38                                         ; $71b1: $ff
	rst  $38                                         ; $71b2: $ff
	ld   e, c                                        ; $71b3: $59
	rst  $38                                         ; $71b4: $ff
	rst  $38                                         ; $71b5: $ff
	ld   a, b                                        ; $71b6: $78
	rst  $38                                         ; $71b7: $ff
	rst  $38                                         ; $71b8: $ff
	dec  c                                           ; $71b9: $0d
	nop                                              ; $71ba: $00
	dec  c                                           ; $71bb: $0d
	nop                                              ; $71bc: $00
	nop                                              ; $71bd: $00
	inc  c                                           ; $71be: $0c
	ld   [bc], a                                     ; $71bf: $02
	ld   c, $03                                      ; $71c0: $0e $03
	ld   bc, $9a50                                   ; $71c2: $01 $50 $9a
	rst  $38                                         ; $71c5: $ff
	rst  $38                                         ; $71c6: $ff
	rst  $38                                         ; $71c7: $ff
	ld   sp, hl                                      ; $71c8: $f9
	dec  c                                           ; $71c9: $0d
	ld   [hl], a                                     ; $71ca: $77
	ld   d, h                                        ; $71cb: $54
	ld   h, l                                        ; $71cc: $65
	rst  $38                                         ; $71cd: $ff
	rst  $38                                         ; $71ce: $ff
	ld   l, l                                        ; $71cf: $6d
	rst  $38                                         ; $71d0: $ff
	rst  $38                                         ; $71d1: $ff
	and  c                                           ; $71d2: $a1
	rst  $38                                         ; $71d3: $ff
	rst  $38                                         ; $71d4: $ff
	dec  c                                           ; $71d5: $0d
	nop                                              ; $71d6: $00
	ld   a, [bc]                                     ; $71d7: $0a
	ld   l, $01                                      ; $71d8: $2e $01
	nop                                              ; $71da: $00
	nop                                              ; $71db: $00
	rrca                                             ; $71dc: $0f
	inc  bc                                          ; $71dd: $03
	inc  b                                           ; $71de: $04
	ld   bc, $546b                                   ; $71df: $01 $6b $54
	rst  $38                                         ; $71e2: $ff
	rst  $38                                         ; $71e3: $ff
	dec  c                                           ; $71e4: $0d
	sbc  l                                           ; $71e5: $9d
	ld   e, c                                        ; $71e6: $59
	ld   [hl], c                                     ; $71e7: $71
	ld   l, l                                        ; $71e8: $6d
	sbc  l                                           ; $71e9: $9d
	sbc  a                                           ; $71ea: $9f
	dec  c                                           ; $71eb: $0d
	nop                                              ; $71ec: $00
	ld   a, [bc]                                     ; $71ed: $0a
	inc  e                                           ; $71ee: $1c
	inc  bc                                          ; $71ef: $03
	nop                                              ; $71f0: $00
	nop                                              ; $71f1: $00
	ld   bc, $c803                                   ; $71f2: $01 $03 $c8
	halt                                             ; $71f5: $76
	ld   a, h                                        ; $71f6: $7c
	inc  bc                                          ; $71f7: $03
	ld   l, l                                        ; $71f8: $6d
	dec  b                                           ; $71f9: $05
	add  hl, de                                      ; $71fa: $19
	ld   a, l                                        ; $71fb: $7d
	inc  bc                                          ; $71fc: $03
	daa                                              ; $71fd: $27
	ld   [bc], a                                     ; $71fe: $02
	sub  c                                           ; $71ff: $91
	sub  [hl]                                        ; $7200: $96
	sbc  a                                           ; $7201: $9f
	dec  c                                           ; $7202: $0d
	nop                                              ; $7203: $00
	ld   a, [bc]                                     ; $7204: $0a
	ld   bc, $7c61                                   ; $7205: $01 $61 $7c
	inc  bc                                          ; $7208: $03
	ld   l, l                                        ; $7209: $6d
	dec  b                                           ; $720a: $05
	add  hl, de                                      ; $720b: $19
	ld   [hl], l                                     ; $720c: $75
	ld   a, l                                        ; $720d: $7d
	sbc  [hl]                                        ; $720e: $9e
	ld   b, $25                                      ; $720f: $06 $25
	inc  b                                           ; $7211: $04
	dec  bc                                          ; $7212: $0b
	ld   b, $80                                      ; $7213: $06 $80
	and  b                                           ; $7215: $a0
	ld   [bc], a                                     ; $7216: $02
	cp   [hl]                                        ; $7217: $be
	adc  a                                           ; $7218: $8f
	sbc  c                                           ; $7219: $99
	dec  c                                           ; $721a: $0d
	halt                                             ; $721b: $76
	halt                                             ; $721c: $76
	sub  b                                           ; $721d: $90
	ld   a, c                                        ; $721e: $79
	sbc  [hl]                                        ; $721f: $9e
	inc  bc                                          ; $7220: $03
	ld   h, d                                        ; $7221: $62
	inc  b                                           ; $7222: $04
	dec  bc                                          ; $7223: $0b
	dec  b                                           ; $7224: $05
	ld   a, [bc]                                     ; $7225: $0a
	and  b                                           ; $7226: $a0
	inc  b                                           ; $7227: $04
	pop  de                                          ; $7228: $d1
	ld   a, c                                        ; $7229: $79
	ld   [hl], d                                     ; $722a: $72
	ld   e, a                                        ; $722b: $5f
	ld   [hl], h                                     ; $722c: $74
	dec  c                                           ; $722d: $0d
	sub  b                                           ; $722e: $90
	sub  a                                           ; $722f: $97
	ld   d, d                                        ; $7230: $52
	adc  h                                           ; $7231: $8c
	ld   h, a                                        ; $7232: $67
	sbc  a                                           ; $7233: $9f
	dec  c                                           ; $7234: $0d
	nop                                              ; $7235: $00
	ld   a, [bc]                                     ; $7236: $0a
	inc  e                                           ; $7237: $1c
	inc  bc                                          ; $7238: $03
	nop                                              ; $7239: $00
	nop                                              ; $723a: $00
	ld   bc, $9a6b                                   ; $723b: $01 $6b $9a
	ld   h, [hl]                                     ; $723e: $66
	sub  c                                           ; $723f: $91
	sbc  [hl]                                        ; $7240: $9e
	dec  b                                           ; $7241: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7242: $cf
	adc  a                                           ; $7243: $8f
	sbc  c                                           ; $7244: $99
	sbc  l                                           ; $7245: $9d
	sub  [hl]                                        ; $7246: $96
	sbc  a                                           ; $7247: $9f
	dec  c                                           ; $7248: $0d
	nop                                              ; $7249: $00
	ld   a, [bc]                                     ; $724a: $0a
	ld   b, $25                                      ; $724b: $06 $25
	inc  bc                                          ; $724d: $03
	inc  e                                           ; $724e: $1c
	inc  bc                                          ; $724f: $03
	nop                                              ; $7250: $00
	nop                                              ; $7251: $00
	ld   bc, $a161                                   ; $7252: $01 $61 $a1
	ld   a, c                                        ; $7255: $79
	ld   l, a                                        ; $7256: $6f
	ld   a, l                                        ; $7257: $7d
	sbc  [hl]                                        ; $7258: $9e
	ld   [$5d00], sp                                 ; $7259: $08 $00 $5d
	and  c                                           ; $725c: $a1
	sbc  a                                           ; $725d: $9f
	dec  c                                           ; $725e: $0d
	ld   [hl], l                                     ; $725f: $75
	ld   a, l                                        ; $7260: $7d
	sbc  [hl]                                        ; $7261: $9e
	inc  bc                                          ; $7262: $03
	ld   l, l                                        ; $7263: $6d
	dec  b                                           ; $7264: $05
	add  hl, de                                      ; $7265: $19
	and  b                                           ; $7266: $a0
	dec  b                                           ; $7267: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7268: $cf
	adc  a                                           ; $7269: $8f
	adc  h                                           ; $726a: $8c
	ld   h, a                                        ; $726b: $67
	sbc  a                                           ; $726c: $9f
	dec  c                                           ; $726d: $0d
	nop                                              ; $726e: $00
	ld   a, [bc]                                     ; $726f: $0a
	dec  h                                           ; $7270: $25
	inc  bc                                          ; $7271: $03
	rlca                                             ; $7272: $07
	jp   nz, $0303                                   ; $7273: $c2 $03 $03

	jr   nz, jr_045_7279                             ; $7276: $20 $01

	nop                                              ; $7278: $00

Jump_045_7279:
jr_045_7279:
	jr   nz, jr_045_727b                             ; $7279: $20 $00

jr_045_727b:
	inc  e                                           ; $727b: $1c
	inc  bc                                          ; $727c: $03
	nop                                              ; $727d: $00
	nop                                              ; $727e: $00
	ld   bc, $0458                                   ; $727f: $01 $58 $04
	ld   a, e                                        ; $7282: $7b
	sbc  d                                           ; $7283: $9a
	ld   h, e                                        ; $7284: $63
	adc  h                                           ; $7285: $8c
	sbc  a                                           ; $7286: $9f
	dec  c                                           ; $7287: $0d
	nop                                              ; $7288: $00
	dec  b                                           ; $7289: $05
	ld   b, b                                        ; $728a: $40
	ld   b, h                                        ; $728b: $44
	inc  bc                                          ; $728c: $03
	ld   b, h                                        ; $728d: $44
	ld   bc, $2801                                   ; $728e: $01 $01 $28
	nop                                              ; $7291: $00
	ld   bc, $a502                                   ; $7292: $01 $02 $a5
	inc  b                                           ; $7295: $04
	xor  d                                           ; $7296: $aa
	ld   a, l                                        ; $7297: $7d
	ld   h, c                                        ; $7298: $61
	sbc  d                                           ; $7299: $9a
	ld   e, l                                        ; $729a: $5d
	sub  a                                           ; $729b: $97
	ld   d, d                                        ; $729c: $52
	ld   a, c                                        ; $729d: $79
	dec  c                                           ; $729e: $0d
	ld   h, l                                        ; $729f: $65
	ld   [hl], h                                     ; $72a0: $74
	ld   e, b                                        ; $72a1: $58
	ld   e, e                                        ; $72a2: $5b
	adc  h                                           ; $72a3: $8c
	ld   h, l                                        ; $72a4: $65
	sub  l                                           ; $72a5: $95
	ld   d, h                                        ; $72a6: $54
	sbc  a                                           ; $72a7: $9f
	dec  c                                           ; $72a8: $0d
	nop                                              ; $72a9: $00
	ld   a, [bc]                                     ; $72aa: $0a
	ld   bc, $9a6b                                   ; $72ab: $01 $6b $9a
	ld   [hl], l                                     ; $72ae: $75
	ld   a, l                                        ; $72af: $7d
	sbc  [hl]                                        ; $72b0: $9e
	inc  b                                           ; $72b1: $04
	adc  a                                           ; $72b2: $8f
	inc  b                                           ; $72b3: $04
	xor  d                                           ; $72b4: $aa
	ld   a, h                                        ; $72b5: $7c
	ld   [bc], a                                     ; $72b6: $02
	or   d                                           ; $72b7: $b2
	inc  bc                                          ; $72b8: $03
	ld   c, a                                        ; $72b9: $4f
	ld   a, h                                        ; $72ba: $7c
	inc  bc                                          ; $72bb: $03
	ld   l, l                                        ; $72bc: $6d
	dec  b                                           ; $72bd: $05
	add  hl, de                                      ; $72be: $19
	and  b                                           ; $72bf: $a0
	dec  c                                           ; $72c0: $0d
	inc  bc                                          ; $72c1: $03
	ld   a, [hl]                                     ; $72c2: $7e
	sbc  l                                           ; $72c3: $9d
	sbc  b                                           ; $72c4: $98
	adc  h                                           ; $72c5: $8c
	ld   h, a                                        ; $72c6: $67
	sbc  a                                           ; $72c7: $9f
	dec  c                                           ; $72c8: $0d
	nop                                              ; $72c9: $00
	ld   a, [bc]                                     ; $72ca: $0a
	dec  c                                           ; $72cb: $0d
	nop                                              ; $72cc: $00
	nop                                              ; $72cd: $00
	rrca                                             ; $72ce: $0f
	nop                                              ; $72cf: $00
	ld   bc, $0700                                   ; $72d0: $01 $00 $07
	jp   hl                                          ; $72d3: $e9


	dec  b                                           ; $72d4: $05
	inc  bc                                          ; $72d5: $03
	ld   b, h                                        ; $72d6: $44
	ld   bc, $2504                                   ; $72d7: $01 $04 $25
	nop                                              ; $72da: $00
	inc  e                                           ; $72db: $1c
	inc  bc                                          ; $72dc: $03
	nop                                              ; $72dd: $00
	nop                                              ; $72de: $00
	ld   bc, $a161                                   ; $72df: $01 $61 $a1
	ld   a, c                                        ; $72e2: $79
	ld   l, a                                        ; $72e3: $6f
	ld   a, l                                        ; $72e4: $7d
	sbc  [hl]                                        ; $72e5: $9e
	ld   [$5d00], sp                                 ; $72e6: $08 $00 $5d
	and  c                                           ; $72e9: $a1
	sbc  a                                           ; $72ea: $9f
	dec  c                                           ; $72eb: $0d
	ld   [hl], l                                     ; $72ec: $75
	ld   a, l                                        ; $72ed: $7d
	sbc  [hl]                                        ; $72ee: $9e
	inc  bc                                          ; $72ef: $03
	ld   l, l                                        ; $72f0: $6d
	dec  b                                           ; $72f1: $05
	add  hl, de                                      ; $72f2: $19
	and  b                                           ; $72f3: $a0
	dec  b                                           ; $72f4: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $72f5: $cf
	adc  a                                           ; $72f6: $8f
	adc  h                                           ; $72f7: $8c
	ld   h, a                                        ; $72f8: $67
	sbc  a                                           ; $72f9: $9f
	dec  c                                           ; $72fa: $0d
	nop                                              ; $72fb: $00
	ld   a, [bc]                                     ; $72fc: $0a
	dec  h                                           ; $72fd: $25
	inc  bc                                          ; $72fe: $03
	rlca                                             ; $72ff: $07
	jp   nz, $0303                                   ; $7300: $c2 $03 $03

	jr   nz, jr_045_7306                             ; $7303: $20 $01

	nop                                              ; $7305: $00

jr_045_7306:
	jr   nz, jr_045_7308                             ; $7306: $20 $00

jr_045_7308:
	inc  e                                           ; $7308: $1c
	inc  bc                                          ; $7309: $03
	nop                                              ; $730a: $00
	nop                                              ; $730b: $00
	ld   bc, $0458                                   ; $730c: $01 $58 $04
	ld   a, e                                        ; $730f: $7b
	sbc  d                                           ; $7310: $9a
	ld   h, e                                        ; $7311: $63
	adc  h                                           ; $7312: $8c
	sbc  a                                           ; $7313: $9f
	dec  c                                           ; $7314: $0d
	ld   e, c                                        ; $7315: $59
	ld   a, b                                        ; $7316: $78
	sbc  b                                           ; $7317: $98
	ld   b, $25                                      ; $7318: $06 $25
	inc  b                                           ; $731a: $04
	dec  bc                                          ; $731b: $0b
	ld   h, a                                        ; $731c: $67
	sbc  c                                           ; $731d: $99
	sub  [hl]                                        ; $731e: $96
	ld   d, h                                        ; $731f: $54
	ld   a, c                                        ; $7320: $79
	dec  c                                           ; $7321: $0d
	ld   a, b                                        ; $7322: $78
	ld   [hl], c                                     ; $7323: $71
	ld   l, l                                        ; $7324: $6d
	sbc  l                                           ; $7325: $9d
	ld   a, e                                        ; $7326: $7b
	rst  $38                                         ; $7327: $ff
	rst  $38                                         ; $7328: $ff
	sbc  a                                           ; $7329: $9f
	dec  c                                           ; $732a: $0d
	nop                                              ; $732b: $00
	ld   a, [bc]                                     ; $732c: $0a
	inc  e                                           ; $732d: $1c
	inc  bc                                          ; $732e: $03
	inc  bc                                          ; $732f: $03
	inc  bc                                          ; $7330: $03
	ld   bc, $9a61                                   ; $7331: $01 $61 $9a
	ld   e, c                                        ; $7334: $59
	sub  a                                           ; $7335: $97
	sub  b                                           ; $7336: $90
	sbc  [hl]                                        ; $7337: $9e
	ld   h, c                                        ; $7338: $61
	ld   a, h                                        ; $7339: $7c
	inc  bc                                          ; $733a: $03
	cp   $03                                         ; $733b: $fe $03
	add  [hl]                                        ; $733d: $86
	ld   [hl], l                                     ; $733e: $75
	dec  c                                           ; $733f: $0d
	ld   e, d                                        ; $7340: $5a
	and  c                                           ; $7341: $a1
	ld   a, [hl]                                     ; $7342: $7e
	sbc  b                                           ; $7343: $98
	ld   a, b                                        ; $7344: $78
	ld   h, e                                        ; $7345: $63
	ld   d, d                                        ; $7346: $52
	sbc  a                                           ; $7347: $9f
	dec  c                                           ; $7348: $0d
	nop                                              ; $7349: $00
	ld   a, [bc]                                     ; $734a: $0a
	dec  b                                           ; $734b: $05
	ld   b, b                                        ; $734c: $40
	ld   b, h                                        ; $734d: $44
	inc  bc                                          ; $734e: $03
	ld   b, h                                        ; $734f: $44
	ld   bc, $2801                                   ; $7350: $01 $01 $28
	nop                                              ; $7353: $00
	inc  e                                           ; $7354: $1c
	inc  bc                                          ; $7355: $03
	nop                                              ; $7356: $00
	nop                                              ; $7357: $00
	ld   bc, $9a6b                                   ; $7358: $01 $6b $9a
	ld   [hl], l                                     ; $735b: $75
	ld   a, l                                        ; $735c: $7d
	sbc  [hl]                                        ; $735d: $9e
	inc  b                                           ; $735e: $04
	adc  a                                           ; $735f: $8f
	inc  b                                           ; $7360: $04
	xor  d                                           ; $7361: $aa
	ld   a, h                                        ; $7362: $7c
	ld   [bc], a                                     ; $7363: $02
	or   d                                           ; $7364: $b2
	inc  bc                                          ; $7365: $03
	ld   c, a                                        ; $7366: $4f
	ld   a, h                                        ; $7367: $7c
	inc  bc                                          ; $7368: $03
	ld   l, l                                        ; $7369: $6d
	dec  b                                           ; $736a: $05
	add  hl, de                                      ; $736b: $19
	and  b                                           ; $736c: $a0
	dec  c                                           ; $736d: $0d
	inc  bc                                          ; $736e: $03
	ld   a, [hl]                                     ; $736f: $7e
	sbc  l                                           ; $7370: $9d
	sbc  b                                           ; $7371: $98
	adc  h                                           ; $7372: $8c
	ld   h, a                                        ; $7373: $67
	sbc  a                                           ; $7374: $9f
	dec  c                                           ; $7375: $0d
	nop                                              ; $7376: $00
	ld   a, [bc]                                     ; $7377: $0a
	dec  c                                           ; $7378: $0d
	nop                                              ; $7379: $00
	nop                                              ; $737a: $00
	rrca                                             ; $737b: $0f
	nop                                              ; $737c: $00
	ld   bc, $1c00                                   ; $737d: $01 $00 $1c
	inc  bc                                          ; $7380: $03
	nop                                              ; $7381: $00
	nop                                              ; $7382: $00
	ld   bc, $a161                                   ; $7383: $01 $61 $a1
	ld   a, c                                        ; $7386: $79
	ld   l, a                                        ; $7387: $6f
	ld   a, l                                        ; $7388: $7d
	sbc  [hl]                                        ; $7389: $9e
	ld   [$5d00], sp                                 ; $738a: $08 $00 $5d
	and  c                                           ; $738d: $a1
	sbc  a                                           ; $738e: $9f
	dec  c                                           ; $738f: $0d
	ld   [hl], l                                     ; $7390: $75
	ld   a, l                                        ; $7391: $7d
	sbc  [hl]                                        ; $7392: $9e
	inc  bc                                          ; $7393: $03
	ld   l, l                                        ; $7394: $6d
	dec  b                                           ; $7395: $05
	add  hl, de                                      ; $7396: $19
	and  b                                           ; $7397: $a0
	dec  b                                           ; $7398: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7399: $cf
	adc  a                                           ; $739a: $8f
	adc  h                                           ; $739b: $8c
	ld   h, a                                        ; $739c: $67
	sbc  a                                           ; $739d: $9f
	dec  c                                           ; $739e: $0d
	nop                                              ; $739f: $00
	ld   a, [bc]                                     ; $73a0: $0a
	dec  h                                           ; $73a1: $25
	inc  bc                                          ; $73a2: $03
	rlca                                             ; $73a3: $07
	jp   nz, $0303                                   ; $73a4: $c2 $03 $03

	jr   nz, jr_045_73aa                             ; $73a7: $20 $01

	nop                                              ; $73a9: $00

jr_045_73aa:
	jr   nz, jr_045_73ac                             ; $73aa: $20 $00

jr_045_73ac:
	inc  e                                           ; $73ac: $1c
	inc  bc                                          ; $73ad: $03
	inc  bc                                          ; $73ae: $03
	inc  bc                                          ; $73af: $03
	ld   bc, $0458                                   ; $73b0: $01 $58 $04
	ld   a, e                                        ; $73b3: $7b
	sbc  d                                           ; $73b4: $9a
	ld   h, e                                        ; $73b5: $63
	adc  h                                           ; $73b6: $8c
	sbc  a                                           ; $73b7: $9f
	dec  c                                           ; $73b8: $0d
	ld   a, b                                        ; $73b9: $78
	ld   e, c                                        ; $73ba: $59
	ld   a, b                                        ; $73bb: $78
	ld   e, c                                        ; $73bc: $59
	ld   d, d                                        ; $73bd: $52
	ld   d, d                                        ; $73be: $52
	ld   [bc], a                                     ; $73bf: $02
	scf                                              ; $73c0: $37
	ld   h, [hl]                                     ; $73c1: $66
	sub  [hl]                                        ; $73c2: $96
	sbc  a                                           ; $73c3: $9f
	dec  c                                           ; $73c4: $0d
	ld   h, c                                        ; $73c5: $61
	ld   a, h                                        ; $73c6: $7c
	inc  bc                                          ; $73c7: $03
	cp   $03                                         ; $73c8: $fe $03
	add  [hl]                                        ; $73ca: $86
	ld   [hl], l                                     ; $73cb: $75
	ld   e, d                                        ; $73cc: $5a
	and  c                                           ; $73cd: $a1
	ld   a, [hl]                                     ; $73ce: $7e
	sbc  b                                           ; $73cf: $98
	ld   a, b                                        ; $73d0: $78
	ld   h, e                                        ; $73d1: $63
	ld   d, d                                        ; $73d2: $52
	sbc  a                                           ; $73d3: $9f
	dec  c                                           ; $73d4: $0d
	nop                                              ; $73d5: $00
	ld   a, [bc]                                     ; $73d6: $0a
	dec  b                                           ; $73d7: $05
	ld   b, b                                        ; $73d8: $40
	ld   b, h                                        ; $73d9: $44
	inc  bc                                          ; $73da: $03
	ld   b, h                                        ; $73db: $44
	ld   bc, $2801                                   ; $73dc: $01 $01 $28
	nop                                              ; $73df: $00
	inc  e                                           ; $73e0: $1c
	inc  bc                                          ; $73e1: $03
	nop                                              ; $73e2: $00
	nop                                              ; $73e3: $00
	ld   bc, $9a6b                                   ; $73e4: $01 $6b $9a
	ld   [hl], l                                     ; $73e7: $75
	ld   a, l                                        ; $73e8: $7d
	sbc  [hl]                                        ; $73e9: $9e
	inc  b                                           ; $73ea: $04
	adc  a                                           ; $73eb: $8f
	inc  b                                           ; $73ec: $04
	xor  d                                           ; $73ed: $aa
	ld   a, h                                        ; $73ee: $7c
	ld   [bc], a                                     ; $73ef: $02
	or   d                                           ; $73f0: $b2
	inc  bc                                          ; $73f1: $03
	ld   c, a                                        ; $73f2: $4f
	ld   a, h                                        ; $73f3: $7c
	inc  bc                                          ; $73f4: $03
	ld   l, l                                        ; $73f5: $6d
	dec  b                                           ; $73f6: $05
	add  hl, de                                      ; $73f7: $19
	and  b                                           ; $73f8: $a0
	dec  c                                           ; $73f9: $0d
	inc  bc                                          ; $73fa: $03
	ld   a, [hl]                                     ; $73fb: $7e
	sbc  l                                           ; $73fc: $9d
	sbc  b                                           ; $73fd: $98
	adc  h                                           ; $73fe: $8c
	ld   h, a                                        ; $73ff: $67
	sbc  a                                           ; $7400: $9f
	dec  c                                           ; $7401: $0d
	nop                                              ; $7402: $00
	ld   a, [bc]                                     ; $7403: $0a
	dec  c                                           ; $7404: $0d
	nop                                              ; $7405: $00
	nop                                              ; $7406: $00
	rrca                                             ; $7407: $0f
	nop                                              ; $7408: $00
	ld   bc, $0700                                   ; $7409: $01 $00 $07
	ld   [hl+], a                                    ; $740c: $22
	rlca                                             ; $740d: $07
	inc  bc                                          ; $740e: $03
	ld   b, h                                        ; $740f: $44
	ld   bc, $2507                                   ; $7410: $01 $07 $25
	nop                                              ; $7413: $00
	inc  e                                           ; $7414: $1c
	inc  bc                                          ; $7415: $03
	nop                                              ; $7416: $00
	nop                                              ; $7417: $00
	ld   bc, $a161                                   ; $7418: $01 $61 $a1
	ld   a, c                                        ; $741b: $79
	ld   l, a                                        ; $741c: $6f
	ld   a, l                                        ; $741d: $7d
	sbc  [hl]                                        ; $741e: $9e
	ld   [$5d00], sp                                 ; $741f: $08 $00 $5d
	and  c                                           ; $7422: $a1
	sbc  a                                           ; $7423: $9f
	dec  c                                           ; $7424: $0d
	ld   l, e                                        ; $7425: $6b
	sbc  d                                           ; $7426: $9a
	ld   h, [hl]                                     ; $7427: $66
	sub  c                                           ; $7428: $91
	sbc  [hl]                                        ; $7429: $9e
	dec  b                                           ; $742a: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $742b: $cf
	adc  a                                           ; $742c: $8f
	sbc  c                                           ; $742d: $99
	sbc  l                                           ; $742e: $9d
	sub  [hl]                                        ; $742f: $96
	sbc  a                                           ; $7430: $9f
	dec  c                                           ; $7431: $0d
	nop                                              ; $7432: $00
	ld   a, [bc]                                     ; $7433: $0a
	dec  h                                           ; $7434: $25
	inc  bc                                          ; $7435: $03
	rlca                                             ; $7436: $07
	jp   nz, $0303                                   ; $7437: $c2 $03 $03

	jr   nz, jr_045_743d                             ; $743a: $20 $01

	nop                                              ; $743c: $00

jr_045_743d:
	jr   nz, jr_045_743f                             ; $743d: $20 $00

jr_045_743f:
	inc  e                                           ; $743f: $1c
	inc  bc                                          ; $7440: $03
	inc  bc                                          ; $7441: $03
	inc  bc                                          ; $7442: $03
	ld   bc, $a603                                   ; $7443: $01 $03 $a6
	dec  b                                           ; $7446: $05
	call nc, Call_045_6597                           ; $7447: $d4 $97 $65
	ld   d, d                                        ; $744a: $52
	inc  bc                                          ; $744b: $03
	ld   h, l                                        ; $744c: $65
	inc  bc                                          ; $744d: $03
	rst  $30                                         ; $744e: $f7
	add  h                                           ; $744f: $84
	sbc  b                                           ; $7450: $98
	ld   a, e                                        ; $7451: $7b
	sbc  a                                           ; $7452: $9f
	dec  c                                           ; $7453: $0d
	nop                                              ; $7454: $00
	ld   a, [bc]                                     ; $7455: $0a
	ld   bc, $9a61                                   ; $7456: $01 $61 $9a
	ld   a, b                                        ; $7459: $78
	sub  a                                           ; $745a: $97
	ld   [bc], a                                     ; $745b: $02
	ld   h, $03                                      ; $745c: $26 $03
	ld   [hl], l                                     ; $745e: $75
	ld   h, l                                        ; $745f: $65
	ld   [hl], h                                     ; $7460: $74
	dec  c                                           ; $7461: $0d
	inc  bc                                          ; $7462: $03
	ret  z                                           ; $7463: $c8

	ld   a, h                                        ; $7464: $7c
	dec  b                                           ; $7465: $05
	ld   d, e                                        ; $7466: $53
	inc  b                                           ; $7467: $04
	dec  bc                                          ; $7468: $0b
	and  b                                           ; $7469: $a0
	adc  h                                           ; $746a: $8c
	ld   e, c                                        ; $746b: $59
	ld   l, c                                        ; $746c: $69
	sub  a                                           ; $746d: $97
	sbc  d                                           ; $746e: $9a
	sbc  c                                           ; $746f: $99
	sub  [hl]                                        ; $7470: $96

Jump_045_7471:
	ld   d, h                                        ; $7471: $54
	ld   a, c                                        ; $7472: $79
	dec  c                                           ; $7473: $0d
	ld   a, b                                        ; $7474: $78
	sbc  c                                           ; $7475: $99
	ld   e, c                                        ; $7476: $59
	sub  b                                           ; $7477: $90
	ld   h, l                                        ; $7478: $65
	sbc  d                                           ; $7479: $9a
	ld   a, b                                        ; $747a: $78
	ld   d, d                                        ; $747b: $52
	sbc  l                                           ; $747c: $9d
	sbc  a                                           ; $747d: $9f
	sub  $d6                                         ; $747e: $d6 $d6
	sbc  a                                           ; $7480: $9f
	dec  c                                           ; $7481: $0d
	nop                                              ; $7482: $00
	ld   a, [bc]                                     ; $7483: $0a
	dec  b                                           ; $7484: $05
	ld   b, b                                        ; $7485: $40
	ld   b, h                                        ; $7486: $44
	inc  bc                                          ; $7487: $03
	ld   b, h                                        ; $7488: $44
	ld   bc, $2801                                   ; $7489: $01 $01 $28
	nop                                              ; $748c: $00
	inc  e                                           ; $748d: $1c
	inc  bc                                          ; $748e: $03
	nop                                              ; $748f: $00
	nop                                              ; $7490: $00
	ld   bc, $9a6b                                   ; $7491: $01 $6b $9a
	ld   [hl], l                                     ; $7494: $75
	ld   a, l                                        ; $7495: $7d
	sbc  [hl]                                        ; $7496: $9e
	inc  b                                           ; $7497: $04
	adc  a                                           ; $7498: $8f
	inc  b                                           ; $7499: $04
	xor  d                                           ; $749a: $aa
	ld   a, h                                        ; $749b: $7c
	ld   [bc], a                                     ; $749c: $02
	or   d                                           ; $749d: $b2
	inc  bc                                          ; $749e: $03
	ld   c, a                                        ; $749f: $4f
	ld   a, h                                        ; $74a0: $7c
	inc  bc                                          ; $74a1: $03
	ld   l, l                                        ; $74a2: $6d
	dec  b                                           ; $74a3: $05
	add  hl, de                                      ; $74a4: $19
	and  b                                           ; $74a5: $a0
	dec  c                                           ; $74a6: $0d
	inc  bc                                          ; $74a7: $03
	ld   a, [hl]                                     ; $74a8: $7e
	sbc  l                                           ; $74a9: $9d
	sbc  b                                           ; $74aa: $98
	adc  h                                           ; $74ab: $8c
	ld   h, a                                        ; $74ac: $67
	sbc  a                                           ; $74ad: $9f
	dec  c                                           ; $74ae: $0d
	nop                                              ; $74af: $00
	ld   a, [bc]                                     ; $74b0: $0a
	dec  c                                           ; $74b1: $0d
	nop                                              ; $74b2: $00
	nop                                              ; $74b3: $00
	rrca                                             ; $74b4: $0f
	nop                                              ; $74b5: $00
	ld   bc, $1c00                                   ; $74b6: $01 $00 $1c
	inc  bc                                          ; $74b9: $03
	nop                                              ; $74ba: $00
	nop                                              ; $74bb: $00
	ld   bc, $a161                                   ; $74bc: $01 $61 $a1
	ld   a, c                                        ; $74bf: $79
	ld   l, a                                        ; $74c0: $6f
	ld   a, l                                        ; $74c1: $7d
	sbc  [hl]                                        ; $74c2: $9e
	ld   [$5d00], sp                                 ; $74c3: $08 $00 $5d
	and  c                                           ; $74c6: $a1
	sbc  a                                           ; $74c7: $9f
	dec  c                                           ; $74c8: $0d
	ld   l, e                                        ; $74c9: $6b
	sbc  d                                           ; $74ca: $9a
	ld   h, [hl]                                     ; $74cb: $66
	sub  c                                           ; $74cc: $91
	sbc  [hl]                                        ; $74cd: $9e
	dec  b                                           ; $74ce: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $74cf: $cf
	adc  a                                           ; $74d0: $8f
	sbc  c                                           ; $74d1: $99
	sbc  l                                           ; $74d2: $9d
	sub  [hl]                                        ; $74d3: $96
	sbc  a                                           ; $74d4: $9f
	dec  c                                           ; $74d5: $0d
	nop                                              ; $74d6: $00
	ld   a, [bc]                                     ; $74d7: $0a
	dec  h                                           ; $74d8: $25
	inc  bc                                          ; $74d9: $03
	rlca                                             ; $74da: $07
	jp   nz, $0303                                   ; $74db: $c2 $03 $03

	jr   nz, jr_045_74e1                             ; $74de: $20 $01

	nop                                              ; $74e0: $00

jr_045_74e1:
	jr   nz, jr_045_74e3                             ; $74e1: $20 $00

jr_045_74e3:
	inc  e                                           ; $74e3: $1c
	inc  bc                                          ; $74e4: $03
	inc  bc                                          ; $74e5: $03
	inc  bc                                          ; $74e6: $03
	ld   bc, $0458                                   ; $74e7: $01 $58 $04
	ld   a, e                                        ; $74ea: $7b
	sbc  d                                           ; $74eb: $9a
	ld   h, e                                        ; $74ec: $63
	adc  h                                           ; $74ed: $8c
	sbc  a                                           ; $74ee: $9f
	dec  c                                           ; $74ef: $0d
	ld   d, d                                        ; $74f0: $52
	ld   d, d                                        ; $74f1: $52
	ld   [bc], a                                     ; $74f2: $02
	scf                                              ; $74f3: $37
	ld   h, [hl]                                     ; $74f4: $66
	sub  [hl]                                        ; $74f5: $96
	sbc  [hl]                                        ; $74f6: $9e
	ld   [$5d00], sp                                 ; $74f7: $08 $00 $5d
	and  c                                           ; $74fa: $a1
	sbc  a                                           ; $74fb: $9f
	dec  c                                           ; $74fc: $0d
	nop                                              ; $74fd: $00
	ld   a, [bc]                                     ; $74fe: $0a
	dec  b                                           ; $74ff: $05
	ld   b, b                                        ; $7500: $40
	ld   b, h                                        ; $7501: $44
	inc  bc                                          ; $7502: $03
	ld   b, h                                        ; $7503: $44
	ld   bc, $2801                                   ; $7504: $01 $01 $28
	nop                                              ; $7507: $00
	inc  e                                           ; $7508: $1c
	inc  bc                                          ; $7509: $03
	nop                                              ; $750a: $00
	nop                                              ; $750b: $00
	ld   bc, $9a6b                                   ; $750c: $01 $6b $9a
	ld   [hl], l                                     ; $750f: $75
	ld   a, l                                        ; $7510: $7d
	sbc  [hl]                                        ; $7511: $9e
	inc  b                                           ; $7512: $04
	adc  a                                           ; $7513: $8f
	inc  b                                           ; $7514: $04
	xor  d                                           ; $7515: $aa
	ld   a, h                                        ; $7516: $7c
	ld   [bc], a                                     ; $7517: $02
	or   d                                           ; $7518: $b2
	inc  bc                                          ; $7519: $03
	ld   c, a                                        ; $751a: $4f
	ld   a, h                                        ; $751b: $7c
	inc  bc                                          ; $751c: $03
	ld   l, l                                        ; $751d: $6d
	dec  b                                           ; $751e: $05
	add  hl, de                                      ; $751f: $19
	and  b                                           ; $7520: $a0
	dec  c                                           ; $7521: $0d
	inc  bc                                          ; $7522: $03
	ld   a, [hl]                                     ; $7523: $7e
	sbc  l                                           ; $7524: $9d
	sbc  b                                           ; $7525: $98
	adc  h                                           ; $7526: $8c
	ld   h, a                                        ; $7527: $67
	sbc  a                                           ; $7528: $9f
	dec  c                                           ; $7529: $0d
	nop                                              ; $752a: $00
	ld   a, [bc]                                     ; $752b: $0a
	dec  c                                           ; $752c: $0d
	nop                                              ; $752d: $00
	nop                                              ; $752e: $00
	rrca                                             ; $752f: $0f
	nop                                              ; $7530: $00
	ld   bc, $0e00                                   ; $7531: $01 $00 $0e
	ld   bc, $0702                                   ; $7534: $01 $02 $07
	sbc  $07                                         ; $7537: $de $07
	inc  bc                                          ; $7539: $03
	jr   nz, jr_045_753d                             ; $753a: $20 $01

	ld   b, b                                        ; $753c: $40

jr_045_753d:
	dec  h                                           ; $753d: $25
	nop                                              ; $753e: $00
	dec  b                                           ; $753f: $05
	ld   b, b                                        ; $7540: $40
	ld   d, b                                        ; $7541: $50
	ld   bc, $0000                                   ; $7542: $01 $00 $00
	ld   bc, $ffff                                   ; $7545: $01 $ff $ff
	ld   d, h                                        ; $7548: $54
	db   $fc                                         ; $7549: $fc
	and  c                                           ; $754a: $a1
	rst  $38                                         ; $754b: $ff
	rst  $38                                         ; $754c: $ff
	dec  c                                           ; $754d: $0d
	ld   a, b                                        ; $754e: $78
	and  c                                           ; $754f: $a1
	ld   l, [hl]                                     ; $7550: $6e
	ld   e, c                                        ; $7551: $59
	inc  b                                           ; $7552: $04
	dec  c                                           ; $7553: $0d
	inc  bc                                          ; $7554: $03
	cp   $5a                                         ; $7555: $fe $5a
	ld   [bc], a                                     ; $7557: $02
	jr   z, jr_045_75ac                              ; $7558: $28 $52

	ld   a, b                                        ; $755a: $78
	rst  $38                                         ; $755b: $ff
	rst  $38                                         ; $755c: $ff
	dec  c                                           ; $755d: $0d
	ld   [bc], a                                     ; $755e: $02
	and  l                                           ; $755f: $a5
	inc  b                                           ; $7560: $04
	xor  d                                           ; $7561: $aa
	ld   a, h                                        ; $7562: $7c
	inc  bc                                          ; $7563: $03
	ld   l, l                                        ; $7564: $6d
	dec  b                                           ; $7565: $05
	add  hl, de                                      ; $7566: $19
	ld   a, l                                        ; $7567: $7d
	inc  bc                                          ; $7568: $03
	and  a                                           ; $7569: $a7
	adc  [hl]                                        ; $756a: $8e
	ld   e, c                                        ; $756b: $59
	ld   a, b                                        ; $756c: $78
	sbc  a                                           ; $756d: $9f
	dec  c                                           ; $756e: $0d
	nop                                              ; $756f: $00
	ld   a, [bc]                                     ; $7570: $0a
	ld   b, $09                                      ; $7571: $06 $09
	ld   [$0201], sp                                 ; $7573: $08 $01 $02
	and  l                                           ; $7576: $a5
	inc  b                                           ; $7577: $04
	xor  d                                           ; $7578: $aa
	ld   a, l                                        ; $7579: $7d
	ld   a, b                                        ; $757a: $78
	and  c                                           ; $757b: $a1
	ld   l, [hl]                                     ; $757c: $6e
	ld   e, c                                        ; $757d: $59
	inc  bc                                          ; $757e: $03
	ld   l, l                                        ; $757f: $6d
	dec  b                                           ; $7580: $05
	add  hl, de                                      ; $7581: $19
	ld   a, c                                        ; $7582: $79
	dec  c                                           ; $7583: $0d
	ld   [bc], a                                     ; $7584: $02
	ld   a, a                                        ; $7585: $7f
	ld   e, e                                        ; $7586: $5b
	ld   l, l                                        ; $7587: $6d
	ld   e, l                                        ; $7588: $5d
	ld   a, b                                        ; $7589: $78
	ld   d, d                                        ; $758a: $52
	ld   a, b                                        ; $758b: $78
	ld   d, b                                        ; $758c: $50
	rst  $38                                         ; $758d: $ff
	rst  $38                                         ; $758e: $ff
	dec  c                                           ; $758f: $0d
	inc  bc                                          ; $7590: $03
	ld   l, l                                        ; $7591: $6d
	dec  b                                           ; $7592: $05
	add  hl, de                                      ; $7593: $19
	rst  $38                                         ; $7594: $ff
	rst  $38                                         ; $7595: $ff
	inc  bc                                          ; $7596: $03
	and  a                                           ; $7597: $a7
	adc  [hl]                                        ; $7598: $8e
	ld   e, c                                        ; $7599: $59
	ld   a, b                                        ; $759a: $78
	sbc  a                                           ; $759b: $9f
	dec  c                                           ; $759c: $0d
	nop                                              ; $759d: $00
	ld   a, [bc]                                     ; $759e: $0a
	inc  hl                                          ; $759f: $23
	ld   b, [hl]                                     ; $75a0: $46
	inc  d                                           ; $75a1: $14
	ld   b, $01                                      ; $75a2: $06 $01
	add  hl, bc                                      ; $75a4: $09
	ld   e, $01                                      ; $75a5: $1e $01
	rst  JumpTable                                         ; $75a7: $df
	db   $ec                                         ; $75a8: $ec
	and  e                                           ; $75a9: $a3
	ld   h, e                                        ; $75aa: $63
	and  c                                           ; $75ab: $a1

jr_045_75ac:
	sbc  [hl]                                        ; $75ac: $9e
	dec  c                                           ; $75ad: $0d
	ld   d, d                                        ; $75ae: $52
	sub  a                                           ; $75af: $97
	ld   [hl], c                                     ; $75b0: $71
	ld   h, l                                        ; $75b1: $65
	sub  c                                           ; $75b2: $91
	ld   d, d                                        ; $75b3: $52
	adc  h                                           ; $75b4: $8c
	ld   h, a                                        ; $75b5: $67
	ld   e, c                                        ; $75b6: $59
	ld   sp, hl                                      ; $75b7: $f9
	dec  c                                           ; $75b8: $0d
	nop                                              ; $75b9: $00
	ld   a, [bc]                                     ; $75ba: $0a
	rrca                                             ; $75bb: $0f
	inc  bc                                          ; $75bc: $03
	nop                                              ; $75bd: $00
	ld   bc, $0008                                   ; $75be: $01 $08 $00
	ld   e, l                                        ; $75c1: $5d
	and  c                                           ; $75c2: $a1
	ld   sp, hl                                      ; $75c3: $f9
	dec  c                                           ; $75c4: $0d
	ld   d, d                                        ; $75c5: $52
	adc  h                                           ; $75c6: $8c
	ld   [bc], a                                     ; $75c7: $02
	adc  b                                           ; $75c8: $88
	ld   e, a                                        ; $75c9: $5f
	sbc  c                                           ; $75ca: $99
	sbc  l                                           ; $75cb: $9d
	sbc  a                                           ; $75cc: $9f
	dec  c                                           ; $75cd: $0d
	nop                                              ; $75ce: $00
	ld   a, [bc]                                     ; $75cf: $0a
	inc  d                                           ; $75d0: $14
	ld   a, [bc]                                     ; $75d1: $0a
	ld   bc, $470e                                   ; $75d2: $01 $0e $47
	dec  c                                           ; $75d5: $0d
	inc  bc                                          ; $75d6: $03
	nop                                              ; $75d7: $00
	ld   bc, $7d58                                   ; $75d8: $01 $58 $7d
	sub  [hl]                                        ; $75db: $96
	ld   d, h                                        ; $75dc: $54
	sbc  [hl]                                        ; $75dd: $9e
	ld   [$5d00], sp                                 ; $75de: $08 $00 $5d
	and  c                                           ; $75e1: $a1
	sbc  a                                           ; $75e2: $9f
	dec  c                                           ; $75e3: $0d
	nop                                              ; $75e4: $00
	ld   a, [bc]                                     ; $75e5: $0a
	rlca                                             ; $75e6: $07
	push af                                          ; $75e7: $f5
	ld   [$2003], sp                                 ; $75e8: $08 $03 $20
	ld   bc, $2540                                   ; $75eb: $01 $40 $25
	nop                                              ; $75ee: $00
	ld   bc, $ffff                                   ; $75ef: $01 $ff $ff
	ld   d, b                                        ; $75f2: $50
	sub  a                                           ; $75f3: $97
	ld   sp, hl                                      ; $75f4: $f9
	dec  c                                           ; $75f5: $0d
	nop                                              ; $75f6: $00
	inc  e                                           ; $75f7: $1c
	inc  bc                                          ; $75f8: $03
	inc  b                                           ; $75f9: $04
	inc  b                                           ; $75fa: $04
	ld   bc, $5477                                   ; $75fb: $01 $77 $54
	ld   e, c                                        ; $75fe: $59
	ld   h, l                                        ; $75ff: $65
	ld   l, l                                        ; $7600: $6d
	ld   a, h                                        ; $7601: $7c
	ld   sp, hl                                      ; $7602: $f9
	dec  c                                           ; $7603: $0d
	ld   [bc], a                                     ; $7604: $02
	ld   [hl], d                                     ; $7605: $72
	inc  bc                                          ; $7606: $03
	dec  bc                                          ; $7607: $0b
	ld   e, d                                        ; $7608: $5a
	sbc  l                                           ; $7609: $9d
	sbc  c                                           ; $760a: $99
	ld   d, d                                        ; $760b: $52
	sbc  l                                           ; $760c: $9d
	sub  [hl]                                        ; $760d: $96
	sbc  a                                           ; $760e: $9f
	dec  c                                           ; $760f: $0d
	nop                                              ; $7610: $00
	ld   a, [bc]                                     ; $7611: $0a
	rrca                                             ; $7612: $0f
	nop                                              ; $7613: $00
	ld   bc, $7d01                                   ; $7614: $01 $01 $7d
	ld   d, d                                        ; $7617: $52
	sbc  [hl]                                        ; $7618: $9e
	ld   l, a                                        ; $7619: $6f
	sub  l                                           ; $761a: $95
	ld   [hl], c                                     ; $761b: $71
	halt                                             ; $761c: $76
	inc  b                                           ; $761d: $04
	dec  c                                           ; $761e: $0d
	inc  bc                                          ; $761f: $03
	cp   $5a                                         ; $7620: $fe $5a
	dec  c                                           ; $7622: $0d
	sbc  l                                           ; $7623: $9d
	sbc  c                                           ; $7624: $99
	ld   e, l                                        ; $7625: $5d
	ld   [hl], h                                     ; $7626: $74
	rst  $38                                         ; $7627: $ff
	rst  $38                                         ; $7628: $ff
	ld   [bc], a                                     ; $7629: $02
	and  l                                           ; $762a: $a5
	inc  b                                           ; $762b: $04
	xor  d                                           ; $762c: $aa
	ld   a, h                                        ; $762d: $7c
	inc  bc                                          ; $762e: $03
	ld   l, l                                        ; $762f: $6d
	dec  b                                           ; $7630: $05
	add  hl, de                                      ; $7631: $19
	ld   a, l                                        ; $7632: $7d
	dec  c                                           ; $7633: $0d
	inc  bc                                          ; $7634: $03
	and  a                                           ; $7635: $a7
	adc  h                                           ; $7636: $8c
	ld   l, c                                        ; $7637: $69
	ld   [hl], h                                     ; $7638: $74
	adc  c                                           ; $7639: $89
	ld   h, l                                        ; $763a: $65
	ld   d, d                                        ; $763b: $52
	ld   a, h                                        ; $763c: $7c
	ld   [hl], l                                     ; $763d: $75
	ld   h, a                                        ; $763e: $67
	ld   e, d                                        ; $763f: $5a
	rst  $38                                         ; $7640: $ff
	rst  $38                                         ; $7641: $ff
	dec  c                                           ; $7642: $0d
	nop                                              ; $7643: $00
	ld   a, [bc]                                     ; $7644: $0a
	inc  e                                           ; $7645: $1c
	inc  bc                                          ; $7646: $03
	nop                                              ; $7647: $00
	nop                                              ; $7648: $00
	ld   bc, $5965                                   ; $7649: $01 $65 $59
	ld   l, l                                        ; $764c: $6d
	ld   a, b                                        ; $764d: $78
	ld   d, d                                        ; $764e: $52
	sbc  l                                           ; $764f: $9d
	ld   a, e                                        ; $7650: $7b
	rst  $38                                         ; $7651: $ff
	rst  $38                                         ; $7652: $ff
	dec  c                                           ; $7653: $0d
	ld   [hl], l                                     ; $7654: $75
	ld   a, l                                        ; $7655: $7d
	sbc  [hl]                                        ; $7656: $9e
	ld   [bc], a                                     ; $7657: $02
	and  l                                           ; $7658: $a5
	inc  b                                           ; $7659: $04
	xor  d                                           ; $765a: $aa
	ld   a, h                                        ; $765b: $7c
	inc  bc                                          ; $765c: $03
	ld   l, l                                        ; $765d: $6d
	dec  b                                           ; $765e: $05
	add  hl, de                                      ; $765f: $19
	ld   a, l                                        ; $7660: $7d
	dec  c                                           ; $7661: $0d
	ld   e, b                                        ; $7662: $58
	inc  bc                                          ; $7663: $03
	and  a                                           ; $7664: $a7
	adc  l                                           ; $7665: $8d
	ld   a, c                                        ; $7666: $79
	ld   h, l                                        ; $7667: $65
	adc  h                                           ; $7668: $8c
	ld   h, l                                        ; $7669: $65
	sub  l                                           ; $766a: $95
	ld   d, h                                        ; $766b: $54
	sbc  a                                           ; $766c: $9f
	dec  c                                           ; $766d: $0d
	nop                                              ; $766e: $00
	ld   a, [bc]                                     ; $766f: $0a
	ld   bc, $9a6b                                   ; $7670: $01 $6b $9a
	ld   [hl], l                                     ; $7673: $75
	ld   a, l                                        ; $7674: $7d
	sbc  [hl]                                        ; $7675: $9e
	ld   e, b                                        ; $7676: $58
	inc  b                                           ; $7677: $04
	ld   c, $02                                      ; $7678: $0e $02
	jp   $9f79                                       ; $767a: $c3 $79 $9f


	dec  c                                           ; $767d: $0d
	nop                                              ; $767e: $00
	ld   a, [bc]                                     ; $767f: $0a
	dec  c                                           ; $7680: $0d
	nop                                              ; $7681: $00
	nop                                              ; $7682: $00
	rrca                                             ; $7683: $0f
	nop                                              ; $7684: $00
	ld   bc, $1e09                                   ; $7685: $01 $09 $1e
	ld   b, $ae                                      ; $7688: $06 $ae
	ld   [bc], a                                     ; $768a: $02
	ld   bc, $7978                                   ; $768b: $01 $78 $79
	ld   e, c                                        ; $768e: $59
	inc  b                                           ; $768f: $04
	di                                               ; $7690: $f3
	ld   [bc], a                                     ; $7691: $02
	jp   $9075                                       ; $7692: $c3 $75 $90


	ld   sp, hl                                      ; $7695: $f9
	dec  c                                           ; $7696: $0d
	sub  b                                           ; $7697: $90
	ld   d, h                                        ; $7698: $54
	ld   h, a                                        ; $7699: $67
	ld   e, [hl]                                     ; $769a: $5e
	inc  bc                                          ; $769b: $03
	ld   l, l                                        ; $769c: $6d
	dec  b                                           ; $769d: $05
	add  hl, de                                      ; $769e: $19
	ld   a, h                                        ; $769f: $7c
	inc  bc                                          ; $76a0: $03
	ld   l, a                                        ; $76a1: $6f
	ld   [bc], a                                     ; $76a2: $02
	xor  c                                           ; $76a3: $a9
	sub  [hl]                                        ; $76a4: $96
	sbc  a                                           ; $76a5: $9f
	dec  c                                           ; $76a6: $0d
	nop                                              ; $76a7: $00
	ld   a, [bc]                                     ; $76a8: $0a
	rrca                                             ; $76a9: $0f
	nop                                              ; $76aa: $00
	ld   bc, $7d01                                   ; $76ab: $01 $01 $7d
	ld   d, d                                        ; $76ae: $52
	rst  $38                                         ; $76af: $ff
	rst  $38                                         ; $76b0: $ff
	ld   d, b                                        ; $76b1: $50
	ld   a, h                                        ; $76b2: $7c
	rst  $38                                         ; $76b3: $ff
	rst  $38                                         ; $76b4: $ff
	dec  c                                           ; $76b5: $0d
	ld   [bc], a                                     ; $76b6: $02
	and  l                                           ; $76b7: $a5
	inc  b                                           ; $76b8: $04
	xor  d                                           ; $76b9: $aa
	ld   a, h                                        ; $76ba: $7c
	inc  bc                                          ; $76bb: $03
	ld   l, l                                        ; $76bc: $6d
	dec  b                                           ; $76bd: $05
	add  hl, de                                      ; $76be: $19
	and  b                                           ; $76bf: $a0
	inc  bc                                          ; $76c0: $03
	and  a                                           ; $76c1: $a7
	adc  h                                           ; $76c2: $8c
	ld   l, c                                        ; $76c3: $69
	ld   [hl], h                                     ; $76c4: $74
	dec  c                                           ; $76c5: $0d
	inc  b                                           ; $76c6: $04
	db   $e3                                         ; $76c7: $e3
	ld   h, l                                        ; $76c8: $65
	ld   d, d                                        ; $76c9: $52
	ld   a, h                                        ; $76ca: $7c
	ld   [hl], l                                     ; $76cb: $75
	ld   h, a                                        ; $76cc: $67
	ld   e, d                                        ; $76cd: $5a
	rst  $38                                         ; $76ce: $ff
	rst  $38                                         ; $76cf: $ff
	dec  c                                           ; $76d0: $0d
	nop                                              ; $76d1: $00
	ld   a, [bc]                                     ; $76d2: $0a
	inc  e                                           ; $76d3: $1c
	inc  bc                                          ; $76d4: $03
	inc  b                                           ; $76d5: $04
	inc  b                                           ; $76d6: $04
	ld   bc, $ffff                                   ; $76d7: $01 $ff $ff
	rst  $38                                         ; $76da: $ff
	rst  $38                                         ; $76db: $ff
	dec  c                                           ; $76dc: $0d
	ld   a, b                                        ; $76dd: $78
	ld   a, c                                        ; $76de: $79
	ld   e, c                                        ; $76df: $59
	inc  b                                           ; $76e0: $04
	di                                               ; $76e1: $f3
	ld   [bc], a                                     ; $76e2: $02
	jp   $9075                                       ; $76e3: $c3 $75 $90


	ld   sp, hl                                      ; $76e6: $f9
	dec  c                                           ; $76e7: $0d
	nop                                              ; $76e8: $00
	ld   a, [bc]                                     ; $76e9: $0a
	rrca                                             ; $76ea: $0f
	nop                                              ; $76eb: $00
	ld   bc, $5201                                   ; $76ec: $01 $01 $52
	ld   d, [hl]                                     ; $76ef: $56
	sbc  [hl]                                        ; $76f0: $9e
	halt                                             ; $76f1: $76
	ld   e, l                                        ; $76f2: $5d
	ld   a, c                                        ; $76f3: $79
	inc  b                                           ; $76f4: $04
	di                                               ; $76f5: $f3
	ld   [bc], a                                     ; $76f6: $02
	jp   Jump_045_5276                               ; $76f7: $c3 $76 $52


	ld   d, h                                        ; $76fa: $54
	dec  c                                           ; $76fb: $0d
	sbc  l                                           ; $76fc: $9d
	ld   e, a                                        ; $76fd: $5f
	ld   [hl], l                                     ; $76fe: $75
	sub  b                                           ; $76ff: $90
	ld   a, b                                        ; $7700: $78
	ld   d, d                                        ; $7701: $52
	and  c                                           ; $7702: $a1
	ld   [hl], l                                     ; $7703: $75
	ld   h, a                                        ; $7704: $67
	ld   e, d                                        ; $7705: $5a
	rst  $38                                         ; $7706: $ff
	rst  $38                                         ; $7707: $ff
	dec  c                                           ; $7708: $0d
	nop                                              ; $7709: $00
	ld   a, [bc]                                     ; $770a: $0a
	rrca                                             ; $770b: $0f
	inc  bc                                          ; $770c: $03
	inc  b                                           ; $770d: $04
	dec  e                                           ; $770e: $1d
	ld   b, b                                        ; $770f: $40
	inc  de                                          ; $7710: $13
	inc  bc                                          ; $7711: $03
	inc  de                                          ; $7712: $13
	ld   bc, $2902                                   ; $7713: $01 $02 $29
	nop                                              ; $7716: $00
	ld   bc, $ffff                                   ; $7717: $01 $ff $ff
	rst  $38                                         ; $771a: $ff
	rst  $38                                         ; $771b: $ff
	ld   l, e                                        ; $771c: $6b
	ld   d, h                                        ; $771d: $54
	rst  $38                                         ; $771e: $ff
	rst  $38                                         ; $771f: $ff
	rst  $38                                         ; $7720: $ff
	dec  c                                           ; $7721: $0d
	ld   [hl], l                                     ; $7722: $75
	ld   a, l                                        ; $7723: $7d
	sbc  [hl]                                        ; $7724: $9e
	ld   [bc], a                                     ; $7725: $02
	and  l                                           ; $7726: $a5
	inc  b                                           ; $7727: $04
	xor  d                                           ; $7728: $aa
	ld   a, h                                        ; $7729: $7c
	inc  bc                                          ; $772a: $03
	ld   l, l                                        ; $772b: $6d
	dec  b                                           ; $772c: $05
	add  hl, de                                      ; $772d: $19
	ld   a, l                                        ; $772e: $7d
	ld   e, b                                        ; $772f: $58
	inc  bc                                          ; $7730: $03
	and  a                                           ; $7731: $a7
	adc  l                                           ; $7732: $8d
	dec  c                                           ; $7733: $0d
	halt                                             ; $7734: $76
	ld   d, d                                        ; $7735: $52
	ld   d, h                                        ; $7736: $54
	ld   h, c                                        ; $7737: $61
	halt                                             ; $7738: $76
	ld   a, c                                        ; $7739: $79
	ld   h, l                                        ; $773a: $65
	ld   [hl], h                                     ; $773b: $74
	ld   e, b                                        ; $773c: $58
	ld   e, e                                        ; $773d: $5b
	adc  h                                           ; $773e: $8c
	ld   h, a                                        ; $773f: $67
	sbc  a                                           ; $7740: $9f
	dec  c                                           ; $7741: $0d
	nop                                              ; $7742: $00
	ld   a, [bc]                                     ; $7743: $0a
	ld   bc, $9a6b                                   ; $7744: $01 $6b $9a
	ld   [hl], l                                     ; $7747: $75
	ld   a, l                                        ; $7748: $7d
	rst  $38                                         ; $7749: $ff
	rst  $38                                         ; $774a: $ff
	sbc  a                                           ; $774b: $9f
	dec  c                                           ; $774c: $0d
	nop                                              ; $774d: $00
	ld   a, [bc]                                     ; $774e: $0a
	dec  c                                           ; $774f: $0d
	nop                                              ; $7750: $00
	nop                                              ; $7751: $00
	rrca                                             ; $7752: $0f
	nop                                              ; $7753: $00
	ld   bc, $1e09                                   ; $7754: $01 $09 $1e
	ld   b, $ae                                      ; $7757: $06 $ae
	ld   [bc], a                                     ; $7759: $02
	nop                                              ; $775a: $00
	ld   [bc], a                                     ; $775b: $02
	ld   b, $01                                      ; $775c: $06 $01
	ld   [bc], a                                     ; $775e: $02
	jr   nz, jr_045_7761                             ; $775f: $20 $00

jr_045_7761:
	rrca                                             ; $7761: $0f
	nop                                              ; $7762: $00
	ld   bc, $0706                                   ; $7763: $01 $06 $07
	nop                                              ; $7766: $00
	ld   [bc], a                                     ; $7767: $02
	rlca                                             ; $7768: $07
	ei                                               ; $7769: $fb
	add  hl, bc                                      ; $776a: $09
	inc  b                                           ; $776b: $04
	add  b                                           ; $776c: $80
	add  $00                                         ; $776d: $c6 $00
	ld   c, $9d                                      ; $776f: $0e $9d
	ld   [bc], a                                     ; $7771: $02
	rlca                                             ; $7772: $07
	push hl                                          ; $7773: $e5
	ld   bc, $2003                                   ; $7774: $01 $03 $20
	ld   bc, $2320                                   ; $7777: $01 $20 $23
	nop                                              ; $777a: $00
	rlca                                             ; $777b: $07
	ld   a, a                                        ; $777c: $7f
	ld   bc, $4f03                                   ; $777d: $01 $03 $4f
	ld   [bc], a                                     ; $7780: $02
	nop                                              ; $7781: $00
	inc  bc                                          ; $7782: $03
	ld   c, c                                        ; $7783: $49
	add  hl, hl                                      ; $7784: $29
	add  hl, hl                                      ; $7785: $29
	ld   bc, $2501                                   ; $7786: $01 $01 $25
	nop                                              ; $7789: $00
	rlca                                             ; $778a: $07
	ld   e, c                                        ; $778b: $59
	nop                                              ; $778c: $00
	inc  bc                                          ; $778d: $03
	ld   b, e                                        ; $778e: $43
	ld   bc, $2000                                   ; $778f: $01 $00 $20
	nop                                              ; $7792: $00
	rlca                                             ; $7793: $07
	add  $05                                         ; $7794: $c6 $05
	inc  bc                                          ; $7796: $03
	ld   b, e                                        ; $7797: $43
	ld   bc, $2501                                   ; $7798: $01 $01 $25
	inc  bc                                          ; $779b: $03
	ld   b, e                                        ; $779c: $43
	ld   bc, $2302                                   ; $779d: $01 $02 $23
	inc  e                                           ; $77a0: $1c
	nop                                              ; $77a1: $00
	rlca                                             ; $77a2: $07
	adc  c                                           ; $77a3: $89
	ld   b, $03                                      ; $77a4: $06 $03
	ld   b, e                                        ; $77a6: $43
	ld   bc, $2503                                   ; $77a7: $01 $03 $25
	inc  bc                                          ; $77aa: $03
	ld   b, e                                        ; $77ab: $43
	ld   bc, $2305                                   ; $77ac: $01 $05 $23
	inc  e                                           ; $77af: $1c
	nop                                              ; $77b0: $00
	rlca                                             ; $77b1: $07
	cp   $07                                         ; $77b2: $fe $07
	inc  bc                                          ; $77b4: $03
	ld   b, e                                        ; $77b5: $43
	ld   bc, $2506                                   ; $77b6: $01 $06 $25
	nop                                              ; $77b9: $00
	rlca                                             ; $77ba: $07
	ld   a, b                                        ; $77bb: $78
	nop                                              ; $77bc: $00
	ld   [bc], a                                     ; $77bd: $02
	nop                                              ; $77be: $00
	ld   bc, $2208                                   ; $77bf: $01 $08 $22
	nop                                              ; $77c2: $00
	inc  e                                           ; $77c3: $1c
	ld   [bc], a                                     ; $77c4: $02
	nop                                              ; $77c5: $00
	nop                                              ; $77c6: $00
	ld   bc, $a161                                   ; $77c7: $01 $61 $a1
	ld   a, c                                        ; $77ca: $79
	ld   l, a                                        ; $77cb: $6f
	ld   a, l                                        ; $77cc: $7d
	sbc  [hl]                                        ; $77cd: $9e
	ld   [$6300], sp                                 ; $77ce: $08 $00 $63
	and  c                                           ; $77d1: $a1
	sbc  a                                           ; $77d2: $9f
	dec  c                                           ; $77d3: $0d
	nop                                              ; $77d4: $00
	ld   a, [bc]                                     ; $77d5: $0a
	ld   b, $c8                                      ; $77d6: $06 $c8
	nop                                              ; $77d8: $00
	inc  e                                           ; $77d9: $1c
	ld   [bc], a                                     ; $77da: $02
	nop                                              ; $77db: $00
	nop                                              ; $77dc: $00
	ld   bc, $a161                                   ; $77dd: $01 $61 $a1
	ld   a, c                                        ; $77e0: $79
	ld   l, a                                        ; $77e1: $6f
	ld   a, l                                        ; $77e2: $7d
	sbc  [hl]                                        ; $77e3: $9e
	ld   [$6308], sp                                 ; $77e4: $08 $08 $63
	and  c                                           ; $77e7: $a1
	sbc  a                                           ; $77e8: $9f
	dec  c                                           ; $77e9: $0d
	nop                                              ; $77ea: $00
	ld   a, [bc]                                     ; $77eb: $0a
	rrca                                             ; $77ec: $0f
	nop                                              ; $77ed: $00
	ld   bc, $6f01                                   ; $77ee: $01 $01 $6f
	ld   e, d                                        ; $77f1: $5a
	ld   d, d                                        ; $77f2: $52
	adc  h                                           ; $77f3: $8c
	ld   h, a                                        ; $77f4: $67
	sub  [hl]                                        ; $77f5: $96
	sbc  a                                           ; $77f6: $9f
	dec  c                                           ; $77f7: $0d
	inc  b                                           ; $77f8: $04
	ld   l, l                                        ; $77f9: $6d
	ld   a, h                                        ; $77fa: $7c
	inc  b                                           ; $77fb: $04
	rst  ToBoot                                         ; $77fc: $c7
	inc  bc                                          ; $77fd: $03
	ld   c, a                                        ; $77fe: $4f
	ld   a, l                                        ; $77ff: $7d
	sbc  [hl]                                        ; $7800: $9e
	ld   [$0d00], sp                                 ; $7801: $08 $00 $0d
	ld   [hl], l                                     ; $7804: $75
	ld   h, a                                        ; $7805: $67
	sub  [hl]                                        ; $7806: $96
	sbc  a                                           ; $7807: $9f
	dec  c                                           ; $7808: $0d
	nop                                              ; $7809: $00
	ld   a, [bc]                                     ; $780a: $0a
	inc  e                                           ; $780b: $1c
	ld   [bc], a                                     ; $780c: $02
	nop                                              ; $780d: $00
	nop                                              ; $780e: $00
	ld   bc, $a16b                                   ; $780f: $01 $6b $a1
	ld   a, b                                        ; $7812: $78
	ld   h, c                                        ; $7813: $61
	halt                                             ; $7814: $76
	sbc  [hl]                                        ; $7815: $9e
	ld   [hl], a                                     ; $7816: $77
	ld   d, h                                        ; $7817: $54
	ld   [hl], l                                     ; $7818: $75
	sub  b                                           ; $7819: $90
	ld   d, d                                        ; $781a: $52
	ld   d, d                                        ; $781b: $52
	ld   h, [hl]                                     ; $781c: $66
	sub  c                                           ; $781d: $91
	dec  c                                           ; $781e: $0d
	ld   d, b                                        ; $781f: $50
	sbc  b                                           ; $7820: $98
	adc  h                                           ; $7821: $8c
	ld   l, c                                        ; $7822: $69
	and  c                                           ; $7823: $a1
	ld   a, h                                        ; $7824: $7c
	sbc  a                                           ; $7825: $9f
	dec  c                                           ; $7826: $0d
	nop                                              ; $7827: $00
	ld   a, [bc]                                     ; $7828: $0a
	ld   bc, $6d9d                                   ; $7829: $01 $9d $6d
	ld   e, l                                        ; $782c: $5d
	ld   h, l                                        ; $782d: $65
	ld   a, h                                        ; $782e: $7c
	inc  bc                                          ; $782f: $03
	ld   l, l                                        ; $7830: $6d
	dec  b                                           ; $7831: $05
	add  hl, de                                      ; $7832: $19
	ld   a, l                                        ; $7833: $7d
	sbc  [hl]                                        ; $7834: $9e
	dec  c                                           ; $7835: $0d
	inc  bc                                          ; $7836: $03
	jp   nc, $2c04                                   ; $7837: $d2 $04 $2c

	ld   [hl], l                                     ; $783a: $75
	ld   h, a                                        ; $783b: $67
	sbc  l                                           ; $783c: $9d
	sub  [hl]                                        ; $783d: $96
	sbc  a                                           ; $783e: $9f
	dec  c                                           ; $783f: $0d
	nop                                              ; $7840: $00
	ld   a, [bc]                                     ; $7841: $0a
	ld   bc, $9003                                   ; $7842: $01 $03 $90
	inc  bc                                          ; $7845: $03
	cp   e                                           ; $7846: $bb
	inc  b                                           ; $7847: $04
	ld   [hl], a                                     ; $7848: $77
	inc  bc                                          ; $7849: $03
	or   l                                           ; $784a: $b5
	dec  b                                           ; $784b: $05
	inc  d                                           ; $784c: $14
	ld   a, h                                        ; $784d: $7c
	inc  bc                                          ; $784e: $03
	jp   nc, $2c04                                   ; $784f: $d2 $04 $2c

	inc  bc                                          ; $7852: $03
	db   $10                                         ; $7853: $10
	and  b                                           ; $7854: $a0
	ld   [bc], a                                     ; $7855: $02
	and  d                                           ; $7856: $a2
	add  h                                           ; $7857: $84
	dec  c                                           ; $7858: $0d
	ld   h, c                                        ; $7859: $61
	halt                                             ; $785a: $76
	ld   [hl], l                                     ; $785b: $75
	sbc  [hl]                                        ; $785c: $9e
	inc  bc                                          ; $785d: $03
	and  [hl]                                        ; $785e: $a6
	inc  bc                                          ; $785f: $03
	ld   [hl], b                                     ; $7860: $70
	ld   h, e                                        ; $7861: $63
	and  b                                           ; $7862: $a0
	inc  b                                           ; $7863: $04
	pop  de                                          ; $7864: $d1
	ld   a, c                                        ; $7865: $79
	ld   [hl], d                                     ; $7866: $72
	ld   e, a                                        ; $7867: $5f
	ld   [hl], h                                     ; $7868: $74
	dec  c                                           ; $7869: $0d
	ld   d, d                                        ; $786a: $52
	ld   l, l                                        ; $786b: $6d
	ld   l, [hl]                                     ; $786c: $6e
	ld   e, e                                        ; $786d: $5b
	adc  h                                           ; $786e: $8c
	ld   h, a                                        ; $786f: $67
	sbc  l                                           ; $7870: $9d
	sbc  a                                           ; $7871: $9f
	dec  c                                           ; $7872: $0d
	nop                                              ; $7873: $00
	ld   a, [bc]                                     ; $7874: $0a
	inc  e                                           ; $7875: $1c
	ld   [bc], a                                     ; $7876: $02
	ld   [bc], a                                     ; $7877: $02
	ld   [bc], a                                     ; $7878: $02

Jump_045_7879:
	ld   bc, $7d75                                   ; $7879: $01 $75 $7d
	sbc  [hl]                                        ; $787c: $9e
	adc  h                                           ; $787d: $8c
	ld   d, d                                        ; $787e: $52
	sbc  b                                           ; $787f: $98
	adc  h                                           ; $7880: $8c
	ld   h, a                                        ; $7881: $67
	sbc  l                                           ; $7882: $9d
	sub  [hl]                                        ; $7883: $96
	ld   a, [$000d]                                  ; $7884: $fa $0d $00
	ld   a, [bc]                                     ; $7887: $0a
	dec  h                                           ; $7888: $25
	ld   [bc], a                                     ; $7889: $02
	rlca                                             ; $788a: $07
	cp   a                                           ; $788b: $bf
	inc  b                                           ; $788c: $04
	inc  bc                                          ; $788d: $03
	jr   nz, jr_045_7891                             ; $788e: $20 $01

	nop                                              ; $7890: $00

jr_045_7891:
	jr   nz, jr_045_7893                             ; $7891: $20 $00

jr_045_7893:
	inc  e                                           ; $7893: $1c
	ld   [bc], a                                     ; $7894: $02
	nop                                              ; $7895: $00
	nop                                              ; $7896: $00
	ld   bc, $508c                                   ; $7897: $01 $8c $50
	sbc  [hl]                                        ; $789a: $9e
	inc  bc                                          ; $789b: $03
	ld   l, c                                        ; $789c: $69
	inc  bc                                          ; $789d: $03
	inc  c                                           ; $789e: $0c
	ld   a, l                                        ; $789f: $7d
	ld   h, c                                        ; $78a0: $61
	and  c                                           ; $78a1: $a1
	ld   a, b                                        ; $78a2: $78
	sub  b                                           ; $78a3: $90
	ld   a, h                                        ; $78a4: $7c
	dec  c                                           ; $78a5: $0d
	ld   [hl], l                                     ; $78a6: $75
	ld   h, a                                        ; $78a7: $67
	sbc  l                                           ; $78a8: $9d
	ld   a, e                                        ; $78a9: $7b
	sbc  a                                           ; $78aa: $9f
	dec  c                                           ; $78ab: $0d
	nop                                              ; $78ac: $00
	ld   a, [bc]                                     ; $78ad: $0a
	ld   bc, $9a6b                                   ; $78ae: $01 $6b $9a
	ld   [hl], l                                     ; $78b1: $75
	ld   a, l                                        ; $78b2: $7d
	sbc  [hl]                                        ; $78b3: $9e
	inc  b                                           ; $78b4: $04
	adc  a                                           ; $78b5: $8f
	inc  b                                           ; $78b6: $04
	xor  d                                           ; $78b7: $aa
	ld   a, h                                        ; $78b8: $7c
	ld   [bc], a                                     ; $78b9: $02
	or   d                                           ; $78ba: $b2
	inc  bc                                          ; $78bb: $03
	ld   c, a                                        ; $78bc: $4f
	ld   a, h                                        ; $78bd: $7c
	inc  bc                                          ; $78be: $03
	ld   l, l                                        ; $78bf: $6d
	dec  b                                           ; $78c0: $05
	add  hl, de                                      ; $78c1: $19
	and  b                                           ; $78c2: $a0
	dec  c                                           ; $78c3: $0d
	nop                                              ; $78c4: $00
	dec  b                                           ; $78c5: $05
	ld   b, b                                        ; $78c6: $40
	ld   b, e                                        ; $78c7: $43
	inc  bc                                          ; $78c8: $03
	ld   b, e                                        ; $78c9: $43
	ld   bc, $2801                                   ; $78ca: $01 $01 $28
	nop                                              ; $78cd: $00
	ld   bc, $7e03                                   ; $78ce: $01 $03 $7e
	sbc  l                                           ; $78d1: $9d
	sbc  b                                           ; $78d2: $98
	adc  h                                           ; $78d3: $8c
	ld   h, a                                        ; $78d4: $67
	sbc  a                                           ; $78d5: $9f
	dec  c                                           ; $78d6: $0d
	nop                                              ; $78d7: $00
	ld   a, [bc]                                     ; $78d8: $0a
	dec  c                                           ; $78d9: $0d
	nop                                              ; $78da: $00
	nop                                              ; $78db: $00
	rrca                                             ; $78dc: $0f
	nop                                              ; $78dd: $00
	ld   bc, $1c00                                   ; $78de: $01 $00 $1c
	ld   [bc], a                                     ; $78e1: $02
	rlca                                             ; $78e2: $07
	rlca                                             ; $78e3: $07
	ld   bc, $9a6b                                   ; $78e4: $01 $6b $9a
	ld   [hl], l                                     ; $78e7: $75
	ld   a, l                                        ; $78e8: $7d
	inc  bc                                          ; $78e9: $03
	ld   l, l                                        ; $78ea: $6d
	dec  b                                           ; $78eb: $05
	add  hl, de                                      ; $78ec: $19
	and  b                                           ; $78ed: $a0
	dec  c                                           ; $78ee: $0d
	ld   a, l                                        ; $78ef: $7d
	ld   h, [hl]                                     ; $78f0: $66
	adc  a                                           ; $78f1: $8f
	adc  h                                           ; $78f2: $8c
	ld   h, a                                        ; $78f3: $67
	sbc  l                                           ; $78f4: $9d
	sub  [hl]                                        ; $78f5: $96
	rst  $38                                         ; $78f6: $ff
	rst  $38                                         ; $78f7: $ff
	dec  c                                           ; $78f8: $0d
	nop                                              ; $78f9: $00
	ld   a, [bc]                                     ; $78fa: $0a
	dec  b                                           ; $78fb: $05
	ld   b, b                                        ; $78fc: $40
	ld   c, a                                        ; $78fd: $4f
	ld   bc, $0000                                   ; $78fe: $01 $00 $00
	dec  h                                           ; $7901: $25
	ld   [bc], a                                     ; $7902: $02
	rlca                                             ; $7903: $07
	cp   a                                           ; $7904: $bf
	inc  b                                           ; $7905: $04
	inc  bc                                          ; $7906: $03
	jr   nz, jr_045_790a                             ; $7907: $20 $01

	nop                                              ; $7909: $00

jr_045_790a:
	jr   nz, jr_045_790c                             ; $790a: $20 $00

jr_045_790c:
	inc  e                                           ; $790c: $1c
	ld   [bc], a                                     ; $790d: $02
	rlca                                             ; $790e: $07
	rlca                                             ; $790f: $07
	ld   bc, $0458                                   ; $7910: $01 $58 $04
	ld   a, e                                        ; $7913: $7b
	sbc  d                                           ; $7914: $9a
	ld   h, e                                        ; $7915: $63
	adc  h                                           ; $7916: $8c
	rst  $38                                         ; $7917: $ff
	rst  $38                                         ; $7918: $ff
	dec  c                                           ; $7919: $0d
	nop                                              ; $791a: $00
	ld   a, [bc]                                     ; $791b: $0a
	dec  c                                           ; $791c: $0d
	nop                                              ; $791d: $00
	nop                                              ; $791e: $00
	rrca                                             ; $791f: $0f
	nop                                              ; $7920: $00
	ld   bc, $4005                                   ; $7921: $01 $05 $40
	ld   b, e                                        ; $7924: $43
	inc  bc                                          ; $7925: $03
	ld   b, e                                        ; $7926: $43
	ld   bc, $2801                                   ; $7927: $01 $01 $28
	nop                                              ; $792a: $00
	ld   bc, $ffff                                   ; $792b: $01 $ff $ff
	rst  $38                                         ; $792e: $ff
	rst  $38                                         ; $792f: $ff
	ld   h, a                                        ; $7930: $67
	adc  l                                           ; $7931: $8d
	sbc  d                                           ; $7932: $9a
	ld   h, e                                        ; $7933: $63
	and  c                                           ; $7934: $a1
	sbc  [hl]                                        ; $7935: $9e
	dec  c                                           ; $7936: $0d
	ld   e, e                                        ; $7937: $5b
	ld   h, b                                        ; $7938: $60
	and  c                                           ; $7939: $a1
	ld   [bc], a                                     ; $793a: $02
	jr   z, jr_045_798f                              ; $793b: $28 $52

	ld   l, h                                        ; $793d: $6c
	rst  $38                                         ; $793e: $ff
	rst  $38                                         ; $793f: $ff
	rst  $38                                         ; $7940: $ff
	rst  $38                                         ; $7941: $ff
	dec  c                                           ; $7942: $0d
	nop                                              ; $7943: $00
	ld   a, [bc]                                     ; $7944: $0a
	nop                                              ; $7945: $00
	inc  e                                           ; $7946: $1c
	ld   [bc], a                                     ; $7947: $02
	nop                                              ; $7948: $00
	nop                                              ; $7949: $00
	dec  b                                           ; $794a: $05
	ld   b, b                                        ; $794b: $40
	ld   c, a                                        ; $794c: $4f
	ld   bc, $0000                                   ; $794d: $01 $00 $00
	ld   bc, $a161                                   ; $7950: $01 $61 $a1
	ld   a, c                                        ; $7953: $79
	ld   l, a                                        ; $7954: $6f
	ld   a, l                                        ; $7955: $7d
	rst  $38                                         ; $7956: $ff
	rst  $38                                         ; $7957: $ff
	ld   d, b                                        ; $7958: $50
	sub  a                                           ; $7959: $97
	sbc  [hl]                                        ; $795a: $9e
	dec  c                                           ; $795b: $0d
	nop                                              ; $795c: $00
	inc  e                                           ; $795d: $1c
	ld   [bc], a                                     ; $795e: $02
	inc  bc                                          ; $795f: $03
	inc  bc                                          ; $7960: $03
	ld   bc, $5477                                   ; $7961: $01 $77 $54
	ld   a, b                                        ; $7964: $78
	ld   h, e                                        ; $7965: $63
	ld   d, d                                        ; $7966: $52
	adc  h                                           ; $7967: $8c
	ld   h, l                                        ; $7968: $65
	ld   l, l                                        ; $7969: $6d
	ld   a, h                                        ; $796a: $7c
	ld   sp, hl                                      ; $796b: $f9
	dec  c                                           ; $796c: $0d
	ld   [bc], a                                     ; $796d: $02
	ld   [hl], d                                     ; $796e: $72
	inc  bc                                          ; $796f: $03
	dec  bc                                          ; $7970: $0b
	ld   e, d                                        ; $7971: $5a
	sbc  l                                           ; $7972: $9d
	sbc  c                                           ; $7973: $99
	ld   d, d                                        ; $7974: $52
	ld   [hl], l                                     ; $7975: $75
	ld   h, a                                        ; $7976: $67
	sbc  l                                           ; $7977: $9d
	sub  [hl]                                        ; $7978: $96
	sbc  a                                           ; $7979: $9f
	dec  c                                           ; $797a: $0d
	nop                                              ; $797b: $00
	ld   a, [bc]                                     ; $797c: $0a
	inc  e                                           ; $797d: $1c
	ld   [bc], a                                     ; $797e: $02
	dec  b                                           ; $797f: $05
	dec  b                                           ; $7980: $05
	ld   bc, $a502                                   ; $7981: $01 $02 $a5
	ld   [bc], a                                     ; $7984: $02
	sub  e                                           ; $7985: $93
	ld   a, h                                        ; $7986: $7c
	inc  bc                                          ; $7987: $03
	ld   l, l                                        ; $7988: $6d
	dec  b                                           ; $7989: $05
	add  hl, de                                      ; $798a: $19
	ld   a, l                                        ; $798b: $7d
	inc  bc                                          ; $798c: $03
	and  a                                           ; $798d: $a7
	and  c                                           ; $798e: $a1

jr_045_798f:
	ld   l, [hl]                                     ; $798f: $6e
	inc  b                                           ; $7990: $04
	ld   a, b                                        ; $7991: $78
	ld   e, d                                        ; $7992: $5a
	dec  c                                           ; $7993: $0d
	sub  [hl]                                        ; $7994: $96
	sbc  e                                           ; $7995: $9b
	ld   h, l                                        ; $7996: $65
	ld   d, d                                        ; $7997: $52
	and  c                                           ; $7998: $a1
	ld   h, [hl]                                     ; $7999: $66
	sub  c                                           ; $799a: $91
	ld   d, b                                        ; $799b: $50
	sbc  b                                           ; $799c: $98
	adc  h                                           ; $799d: $8c
	ld   l, c                                        ; $799e: $69
	and  c                                           ; $799f: $a1
	dec  c                                           ; $79a0: $0d
	ld   h, c                                        ; $79a1: $61
	halt                                             ; $79a2: $76
	ld   sp, hl                                      ; $79a3: $f9
	dec  c                                           ; $79a4: $0d
	nop                                              ; $79a5: $00
	ld   a, [bc]                                     ; $79a6: $0a
	jr   jr_045_79ab                                 ; $79a7: $18 $02

	nop                                              ; $79a9: $00
	inc  bc                                          ; $79aa: $03

jr_045_79ab:
	and  a                                           ; $79ab: $a7
	adc  [hl]                                        ; $79ac: $8e
	nop                                              ; $79ad: $00
	nop                                              ; $79ae: $00
	ld   e, d                                        ; $79af: $5a
	and  c                                           ; $79b0: $a1
	ld   a, [hl]                                     ; $79b1: $7e
	sbc  c                                           ; $79b2: $99
	nop                                              ; $79b3: $00
	ld   bc, $6607                                   ; $79b4: $01 $07 $66
	ld   [bc], a                                     ; $79b7: $02
	ld   [bc], a                                     ; $79b8: $02
	ld   [bc], a                                     ; $79b9: $02
	ld   bc, $2000                                   ; $79ba: $01 $00 $20
	nop                                              ; $79bd: $00
	rlca                                             ; $79be: $07
	ld   de, $0203                                   ; $79bf: $11 $03 $02
	ld   [bc], a                                     ; $79c2: $02
	ld   bc, $2001                                   ; $79c3: $01 $01 $20
	nop                                              ; $79c6: $00
	rrca                                             ; $79c7: $0f
	nop                                              ; $79c8: $00
	ld   bc, $6701                                   ; $79c9: $01 $01 $67
	adc  l                                           ; $79cc: $8d
	adc  h                                           ; $79cd: $8c
	ld   l, c                                        ; $79ce: $69
	and  c                                           ; $79cf: $a1
	rst  $38                                         ; $79d0: $ff
	rst  $38                                         ; $79d1: $ff
	dec  c                                           ; $79d2: $0d
	ld   l, e                                        ; $79d3: $6b
	sbc  d                                           ; $79d4: $9a
	ld   [hl], l                                     ; $79d5: $75
	ld   a, l                                        ; $79d6: $7d
	sbc  [hl]                                        ; $79d7: $9e
	ld   [bc], a                                     ; $79d8: $02
	and  l                                           ; $79d9: $a5
	inc  b                                           ; $79da: $04
	xor  d                                           ; $79db: $aa
	ld   a, h                                        ; $79dc: $7c
	inc  bc                                          ; $79dd: $03
	ld   l, l                                        ; $79de: $6d
	dec  b                                           ; $79df: $05
	add  hl, de                                      ; $79e0: $19
	ld   a, l                                        ; $79e1: $7d
	dec  c                                           ; $79e2: $0d
	inc  bc                                          ; $79e3: $03
	and  a                                           ; $79e4: $a7
	adc  h                                           ; $79e5: $8c
	ld   l, c                                        ; $79e6: $69
	ld   [hl], h                                     ; $79e7: $74
	ld   d, d                                        ; $79e8: $52
	ld   l, l                                        ; $79e9: $6d
	ld   l, [hl]                                     ; $79ea: $6e
	ld   e, e                                        ; $79eb: $5b
	adc  h                                           ; $79ec: $8c
	ld   h, a                                        ; $79ed: $67
	sbc  a                                           ; $79ee: $9f
	dec  c                                           ; $79ef: $0d
	nop                                              ; $79f0: $00
	ld   a, [bc]                                     ; $79f1: $0a
	inc  e                                           ; $79f2: $1c
	ld   [bc], a                                     ; $79f3: $02
	nop                                              ; $79f4: $00
	nop                                              ; $79f5: $00
	ld   bc, $599d                                   ; $79f6: $01 $9d $59
	sbc  b                                           ; $79f9: $98
	adc  h                                           ; $79fa: $8c
	ld   h, l                                        ; $79fb: $65
	ld   l, l                                        ; $79fc: $6d
	sbc  a                                           ; $79fd: $9f
	dec  c                                           ; $79fe: $0d
	ld   l, e                                        ; $79ff: $6b
	sbc  d                                           ; $7a00: $9a
	ld   [hl], l                                     ; $7a01: $75
	ld   a, l                                        ; $7a02: $7d
	sbc  [hl]                                        ; $7a03: $9e
	ld   [bc], a                                     ; $7a04: $02
	and  l                                           ; $7a05: $a5
	inc  b                                           ; $7a06: $04
	xor  d                                           ; $7a07: $aa
	ld   a, l                                        ; $7a08: $7d
	ld   e, b                                        ; $7a09: $58
	inc  bc                                          ; $7a0a: $03
	and  a                                           ; $7a0b: $a7
	adc  l                                           ; $7a0c: $8d
	halt                                             ; $7a0d: $76
	ld   d, d                                        ; $7a0e: $52
	ld   d, h                                        ; $7a0f: $54
	dec  c                                           ; $7a10: $0d
	ld   h, c                                        ; $7a11: $61
	halt                                             ; $7a12: $76
	ld   a, c                                        ; $7a13: $79
	ld   h, l                                        ; $7a14: $65
	ld   [hl], h                                     ; $7a15: $74
	ld   e, b                                        ; $7a16: $58
	ld   e, e                                        ; $7a17: $5b
	adc  h                                           ; $7a18: $8c
	ld   h, a                                        ; $7a19: $67
	sbc  l                                           ; $7a1a: $9d
	sbc  a                                           ; $7a1b: $9f
	dec  c                                           ; $7a1c: $0d
	nop                                              ; $7a1d: $00
	ld   a, [bc]                                     ; $7a1e: $0a
	ld   bc, $9a6b                                   ; $7a1f: $01 $6b $9a
	ld   [hl], l                                     ; $7a22: $75
	ld   a, l                                        ; $7a23: $7d
	sbc  [hl]                                        ; $7a24: $9e
	ld   h, d                                        ; $7a25: $62
	ld   e, e                                        ; $7a26: $5b
	ld   h, b                                        ; $7a27: $60
	and  c                                           ; $7a28: $a1
	sub  [hl]                                        ; $7a29: $96
	ld   d, h                                        ; $7a2a: $54
	sbc  a                                           ; $7a2b: $9f
	dec  c                                           ; $7a2c: $0d
	nop                                              ; $7a2d: $00
	ld   a, [bc]                                     ; $7a2e: $0a
	rrca                                             ; $7a2f: $0f
	nop                                              ; $7a30: $00
	ld   bc, $000d                                   ; $7a31: $01 $0d $00
	nop                                              ; $7a34: $00
	add  hl, bc                                      ; $7a35: $09
	ld   e, $23                                      ; $7a36: $1e $23
	ld   bc, $6b01                                   ; $7a38: $01 $01 $6b
	sbc  d                                           ; $7a3b: $9a
	ld   h, [hl]                                     ; $7a3c: $66
	sub  c                                           ; $7a3d: $91
	sbc  [hl]                                        ; $7a3e: $9e
	inc  bc                                          ; $7a3f: $03
	ld   l, h                                        ; $7a40: $6c
	ld   h, l                                        ; $7a41: $65
	inc  bc                                          ; $7a42: $03
	and  a                                           ; $7a43: $a7
	adc  [hl]                                        ; $7a44: $8e
	halt                                             ; $7a45: $76
	ld   h, a                                        ; $7a46: $67
	sbc  c                                           ; $7a47: $99
	ld   e, c                                        ; $7a48: $59
	sbc  a                                           ; $7a49: $9f
	dec  c                                           ; $7a4a: $0d
	nop                                              ; $7a4b: $00
	ld   a, [bc]                                     ; $7a4c: $0a
	dec  h                                           ; $7a4d: $25
	nop                                              ; $7a4e: $00
	rrca                                             ; $7a4f: $0f
	nop                                              ; $7a50: $00
	ld   bc, $5401                                   ; $7a51: $01 $01 $54
	db   $fc                                         ; $7a54: $fc
	and  c                                           ; $7a55: $a1
	sub  [hl]                                        ; $7a56: $96
	ld   e, l                                        ; $7a57: $5d
	inc  b                                           ; $7a58: $04
	ld   b, d                                        ; $7a59: $42
	ld   l, l                                        ; $7a5a: $6d
	rst  $38                                         ; $7a5b: $ff
	rst  $38                                         ; $7a5c: $ff
	dec  c                                           ; $7a5d: $0d
	ld   e, c                                        ; $7a5e: $59
	ld   a, b                                        ; $7a5f: $78
	sbc  b                                           ; $7a60: $98
	inc  b                                           ; $7a61: $04
	dec  c                                           ; $7a62: $0d
	ld   e, d                                        ; $7a63: $5a
	dec  b                                           ; $7a64: $05
	inc  de                                          ; $7a65: $13
	ld   a, c                                        ; $7a66: $79
	ld   a, b                                        ; $7a67: $78
	ld   [hl], c                                     ; $7a68: $71
	ld   l, l                                        ; $7a69: $6d
	ld   l, h                                        ; $7a6a: $6c
	sbc  a                                           ; $7a6b: $9f
	dec  c                                           ; $7a6c: $0d
	nop                                              ; $7a6d: $00
	ld   a, [bc]                                     ; $7a6e: $0a
	add  hl, hl                                      ; $7a6f: $29
	dec  b                                           ; $7a70: $05
	nop                                              ; $7a71: $00
	rrca                                             ; $7a72: $0f
	nop                                              ; $7a73: $00
	ld   bc, $5201                                   ; $7a74: $01 $01 $52
	ld   d, [hl]                                     ; $7a77: $56
	sbc  [hl]                                        ; $7a78: $9e
	inc  b                                           ; $7a79: $04
	ld   c, $03                                      ; $7a7a: $0e $03
	sbc  l                                           ; $7a7c: $9d
	inc  b                                           ; $7a7d: $04
	and  [hl]                                        ; $7a7e: $a6
	ld   [hl], l                                     ; $7a7f: $75
	ld   h, a                                        ; $7a80: $67
	sbc  a                                           ; $7a81: $9f
	dec  c                                           ; $7a82: $0d
	ld   e, d                                        ; $7a83: $5a
	and  c                                           ; $7a84: $a1
	ld   a, [hl]                                     ; $7a85: $7e
	sbc  b                                           ; $7a86: $98
	adc  h                                           ; $7a87: $8c
	ld   h, a                                        ; $7a88: $67
	ld   a, [$000d]                                  ; $7a89: $fa $0d $00
	ld   a, [bc]                                     ; $7a8c: $0a
	rlca                                             ; $7a8d: $07
	ld   c, c                                        ; $7a8e: $49
	dec  b                                           ; $7a8f: $05
	inc  bc                                          ; $7a90: $03
	ld   b, e                                        ; $7a91: $43
	ld   bc, $2000                                   ; $7a92: $01 $00 $20
	nop                                              ; $7a95: $00
	rrca                                             ; $7a96: $0f
	ld   [bc], a                                     ; $7a97: $02
	dec  b                                           ; $7a98: $05
	ld   bc, $546b                                   ; $7a99: $01 $6b $54
	ld   [hl], l                                     ; $7a9c: $75
	ld   h, a                                        ; $7a9d: $67
	ld   e, c                                        ; $7a9e: $59
	rst  $38                                         ; $7a9f: $ff
	rst  $38                                         ; $7aa0: $ff
	ld   l, e                                        ; $7aa1: $6b
	sbc  d                                           ; $7aa2: $9a
	ld   [hl], l                                     ; $7aa3: $75
	ld   a, l                                        ; $7aa4: $7d
	sbc  [hl]                                        ; $7aa5: $9e
	dec  c                                           ; $7aa6: $0d
	inc  bc                                          ; $7aa7: $03
	ld   l, l                                        ; $7aa8: $6d
	dec  b                                           ; $7aa9: $05
	add  hl, de                                      ; $7aaa: $19
	and  b                                           ; $7aab: $a0
	dec  b                                           ; $7aac: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7aad: $cf
	adc  a                                           ; $7aae: $8f
	adc  h                                           ; $7aaf: $8c
	ld   h, a                                        ; $7ab0: $67
	sbc  l                                           ; $7ab1: $9d
	sub  [hl]                                        ; $7ab2: $96
	sbc  a                                           ; $7ab3: $9f
	dec  c                                           ; $7ab4: $0d
	nop                                              ; $7ab5: $00
	ld   a, [bc]                                     ; $7ab6: $0a
	dec  h                                           ; $7ab7: $25
	ld   [bc], a                                     ; $7ab8: $02
	dec  b                                           ; $7ab9: $05
	ld   b, b                                        ; $7aba: $40
	ld   b, e                                        ; $7abb: $43
	inc  bc                                          ; $7abc: $03
	ld   b, e                                        ; $7abd: $43
	ld   bc, $2801                                   ; $7abe: $01 $01 $28
	nop                                              ; $7ac1: $00
	rlca                                             ; $7ac2: $07
	dec  c                                           ; $7ac3: $0d
	inc  b                                           ; $7ac4: $04
	ld   [bc], a                                     ; $7ac5: $02
	nop                                              ; $7ac6: $00
	ld   bc, $2208                                   ; $7ac7: $01 $08 $22
	nop                                              ; $7aca: $00
	inc  e                                           ; $7acb: $1c
	ld   [bc], a                                     ; $7acc: $02
	dec  b                                           ; $7acd: $05
	dec  b                                           ; $7ace: $05
	ld   bc, $0458                                   ; $7acf: $01 $58 $04
	ld   a, e                                        ; $7ad2: $7b
	sbc  d                                           ; $7ad3: $9a
	ld   h, e                                        ; $7ad4: $63
	adc  h                                           ; $7ad5: $8c
	ld   [hl], l                                     ; $7ad6: $75
	ld   h, l                                        ; $7ad7: $65
	ld   l, l                                        ; $7ad8: $6d
	rst  $38                                         ; $7ad9: $ff
	rst  $38                                         ; $7ada: $ff
	dec  c                                           ; $7adb: $0d
	ld   [$6300], sp                                 ; $7adc: $08 $00 $63
	and  c                                           ; $7adf: $a1
	sbc  [hl]                                        ; $7ae0: $9e
	call c, $c9f5                                    ; $7ae1: $dc $f5 $c9
	ld   a, c                                        ; $7ae4: $79
	dec  c                                           ; $7ae5: $0d
	ld   [bc], a                                     ; $7ae6: $02
	ld   [hl], d                                     ; $7ae7: $72
	inc  bc                                          ; $7ae8: $03
	dec  bc                                          ; $7ae9: $0b
	ld   e, d                                        ; $7aea: $5a
	sbc  l                                           ; $7aeb: $9d
	sbc  c                                           ; $7aec: $99
	ld   d, d                                        ; $7aed: $52
	ld   [hl], l                                     ; $7aee: $75
	ld   h, a                                        ; $7aef: $67
	sbc  l                                           ; $7af0: $9d
	sbc  a                                           ; $7af1: $9f
	dec  c                                           ; $7af2: $0d
	nop                                              ; $7af3: $00
	ld   a, [bc]                                     ; $7af4: $0a
	ld   bc, $7003                                   ; $7af5: $01 $03 $70
	ld   e, l                                        ; $7af8: $5d
	inc  b                                           ; $7af9: $04
	sub  l                                           ; $7afa: $95
	ld   [bc], a                                     ; $7afb: $02
	ld   hl, $9079                                   ; $7afc: $21 $79 $90
	ld   [hl], a                                     ; $7aff: $77
	ld   [hl], c                                     ; $7b00: $71
	ld   [hl], h                                     ; $7b01: $74
	dec  c                                           ; $7b02: $0d
	inc  bc                                          ; $7b03: $03
	and  a                                           ; $7b04: $a7
	adc  [hl]                                        ; $7b05: $8e
	ld   h, c                                        ; $7b06: $61
	halt                                             ; $7b07: $76
	and  b                                           ; $7b08: $a0
	ld   e, b                                        ; $7b09: $58
	ld   h, a                                        ; $7b0a: $67
	ld   h, a                                        ; $7b0b: $67
	adc  a                                           ; $7b0c: $8f
	dec  c                                           ; $7b0d: $0d
	ld   h, l                                        ; $7b0e: $65
	adc  h                                           ; $7b0f: $8c
	ld   h, a                                        ; $7b10: $67
	sbc  l                                           ; $7b11: $9d
	sbc  a                                           ; $7b12: $9f
	dec  c                                           ; $7b13: $0d
	nop                                              ; $7b14: $00
	ld   a, [bc]                                     ; $7b15: $0a
	rlca                                             ; $7b16: $07
	reti                                             ; $7b17: $d9


	inc  bc                                          ; $7b18: $03
	inc  bc                                          ; $7b19: $03
	jr   nz, jr_045_7b1d                             ; $7b1a: $20 $01

	nop                                              ; $7b1c: $00

jr_045_7b1d:
	jr   nz, jr_045_7b1f                             ; $7b1d: $20 $00

jr_045_7b1f:
	ld   bc, $9a6b                                   ; $7b1f: $01 $6b $9a
	ld   [hl], l                                     ; $7b22: $75
	ld   a, l                                        ; $7b23: $7d
	sbc  [hl]                                        ; $7b24: $9e
	ld   h, d                                        ; $7b25: $62
	ld   e, e                                        ; $7b26: $5b
	ld   h, b                                        ; $7b27: $60
	and  c                                           ; $7b28: $a1
	sub  [hl]                                        ; $7b29: $96
	ld   d, h                                        ; $7b2a: $54
	sbc  a                                           ; $7b2b: $9f
	dec  c                                           ; $7b2c: $0d
	nop                                              ; $7b2d: $00
	ld   a, [bc]                                     ; $7b2e: $0a
	rrca                                             ; $7b2f: $0f
	nop                                              ; $7b30: $00
	ld   bc, $000d                                   ; $7b31: $01 $0d $00
	nop                                              ; $7b34: $00
	add  hl, bc                                      ; $7b35: $09
	ld   e, $29                                      ; $7b36: $1e $29
	dec  b                                           ; $7b38: $05
	nop                                              ; $7b39: $00
	rrca                                             ; $7b3a: $0f
	nop                                              ; $7b3b: $00
	ld   bc, $7d01                                   ; $7b3c: $01 $01 $7d
	ld   d, d                                        ; $7b3f: $52
	sbc  [hl]                                        ; $7b40: $9e
	sbc  l                                           ; $7b41: $9d
	ld   e, c                                        ; $7b42: $59
	rst  $38                                         ; $7b43: $ff
	sbc  b                                           ; $7b44: $98
	rst  $38                                         ; $7b45: $ff
	rst  $38                                         ; $7b46: $ff
	adc  h                                           ; $7b47: $8c
	rst  $38                                         ; $7b48: $ff
	rst  $38                                         ; $7b49: $ff
	dec  c                                           ; $7b4a: $0d
	nop                                              ; $7b4b: $00
	dec  c                                           ; $7b4c: $0d
	nop                                              ; $7b4d: $00
	nop                                              ; $7b4e: $00
	inc  c                                           ; $7b4f: $0c
	ld   [bc], a                                     ; $7b50: $02
	ld   c, $03                                      ; $7b51: $0e $03
	ld   bc, $9a50                                   ; $7b53: $01 $50 $9a
	rst  $38                                         ; $7b56: $ff
	rst  $38                                         ; $7b57: $ff
	rst  $38                                         ; $7b58: $ff
	ld   sp, hl                                      ; $7b59: $f9
	dec  c                                           ; $7b5a: $0d
	ld   e, c                                        ; $7b5b: $59
	sub  a                                           ; $7b5c: $97
	rst  $38                                         ; $7b5d: $ff
	rst  $38                                         ; $7b5e: $ff
	ld   l, [hl]                                     ; $7b5f: $6e
	rst  $38                                         ; $7b60: $ff
	rst  $38                                         ; $7b61: $ff
	ld   e, d                                        ; $7b62: $5a
	rst  $38                                         ; $7b63: $ff
	rst  $38                                         ; $7b64: $ff
	dec  c                                           ; $7b65: $0d
	nop                                              ; $7b66: $00
	ld   a, [bc]                                     ; $7b67: $0a
	ld   l, $01                                      ; $7b68: $2e $01
	nop                                              ; $7b6a: $00
	add  hl, hl                                      ; $7b6b: $29
	ld   b, $00                                      ; $7b6c: $06 $00
	dec  b                                           ; $7b6e: $05
	ld   b, b                                        ; $7b6f: $40
	ld   b, e                                        ; $7b70: $43
	inc  bc                                          ; $7b71: $03
	ld   b, e                                        ; $7b72: $43
	ld   bc, $2801                                   ; $7b73: $01 $01 $28
	nop                                              ; $7b76: $00
	inc  e                                           ; $7b77: $1c
	ld   [bc], a                                     ; $7b78: $02
	dec  b                                           ; $7b79: $05
	dec  b                                           ; $7b7a: $05
	ld   bc, $0458                                   ; $7b7b: $01 $58 $04
	ld   a, e                                        ; $7b7e: $7b
	sbc  d                                           ; $7b7f: $9a
	ld   h, e                                        ; $7b80: $63
	adc  h                                           ; $7b81: $8c
	ld   [hl], l                                     ; $7b82: $75
	ld   h, l                                        ; $7b83: $65
	ld   l, l                                        ; $7b84: $6d
	rst  $38                                         ; $7b85: $ff
	rst  $38                                         ; $7b86: $ff
	dec  c                                           ; $7b87: $0d
	ld   [$6308], sp                                 ; $7b88: $08 $08 $63
	and  c                                           ; $7b8b: $a1
	sbc  [hl]                                        ; $7b8c: $9e
	call c, $c9f5                                    ; $7b8d: $dc $f5 $c9
	ld   a, c                                        ; $7b90: $79
	dec  c                                           ; $7b91: $0d
	ld   [bc], a                                     ; $7b92: $02
	ld   [hl], d                                     ; $7b93: $72
	inc  bc                                          ; $7b94: $03
	dec  bc                                          ; $7b95: $0b
	ld   e, d                                        ; $7b96: $5a
	sbc  l                                           ; $7b97: $9d
	sbc  c                                           ; $7b98: $99
	ld   d, d                                        ; $7b99: $52
	ld   [hl], l                                     ; $7b9a: $75
	ld   h, a                                        ; $7b9b: $67
	sbc  l                                           ; $7b9c: $9d
	sbc  a                                           ; $7b9d: $9f
	dec  c                                           ; $7b9e: $0d
	nop                                              ; $7b9f: $00
	ld   a, [bc]                                     ; $7ba0: $0a
	ld   bc, $7003                                   ; $7ba1: $01 $03 $70
	ld   e, l                                        ; $7ba4: $5d
	inc  b                                           ; $7ba5: $04
	sub  l                                           ; $7ba6: $95
	ld   [bc], a                                     ; $7ba7: $02
	ld   hl, $9079                                   ; $7ba8: $21 $79 $90
	ld   [hl], a                                     ; $7bab: $77
	ld   [hl], c                                     ; $7bac: $71
	ld   [hl], h                                     ; $7bad: $74
	dec  c                                           ; $7bae: $0d
	inc  bc                                          ; $7baf: $03
	and  a                                           ; $7bb0: $a7
	adc  [hl]                                        ; $7bb1: $8e
	ld   h, c                                        ; $7bb2: $61
	halt                                             ; $7bb3: $76
	and  b                                           ; $7bb4: $a0
	ld   e, b                                        ; $7bb5: $58
	ld   h, a                                        ; $7bb6: $67
	ld   h, a                                        ; $7bb7: $67
	adc  a                                           ; $7bb8: $8f
	dec  c                                           ; $7bb9: $0d
	ld   h, l                                        ; $7bba: $65
	adc  h                                           ; $7bbb: $8c
	ld   h, a                                        ; $7bbc: $67
	sbc  l                                           ; $7bbd: $9d
	sbc  a                                           ; $7bbe: $9f
	dec  c                                           ; $7bbf: $0d
	nop                                              ; $7bc0: $00
	ld   a, [bc]                                     ; $7bc1: $0a
	rlca                                             ; $7bc2: $07
	cp   [hl]                                        ; $7bc3: $be
	inc  bc                                          ; $7bc4: $03
	inc  bc                                          ; $7bc5: $03
	jr   nz, @+$03                                   ; $7bc6: $20 $01

	ld   bc, $0025                                   ; $7bc8: $01 $25 $00
	rrca                                             ; $7bcb: $0f
	nop                                              ; $7bcc: $00
	ld   bc, $7d01                                   ; $7bcd: $01 $01 $7d
	ld   d, d                                        ; $7bd0: $52
	sbc  [hl]                                        ; $7bd1: $9e
	sbc  l                                           ; $7bd2: $9d
	ld   e, c                                        ; $7bd3: $59
	sbc  b                                           ; $7bd4: $98
	adc  h                                           ; $7bd5: $8c
	ld   h, l                                        ; $7bd6: $65
	ld   l, l                                        ; $7bd7: $6d
	sbc  a                                           ; $7bd8: $9f
	dec  c                                           ; $7bd9: $0d
	ld   l, e                                        ; $7bda: $6b
	ld   d, h                                        ; $7bdb: $54
	ld   h, l                                        ; $7bdc: $65
	adc  h                                           ; $7bdd: $8c
	ld   h, a                                        ; $7bde: $67
	sbc  a                                           ; $7bdf: $9f
	dec  c                                           ; $7be0: $0d
	nop                                              ; $7be1: $00
	ld   a, [bc]                                     ; $7be2: $0a
	rrca                                             ; $7be3: $0f
	nop                                              ; $7be4: $00
	ld   bc, $7601                                   ; $7be5: $01 $01 $76
	ld   h, c                                        ; $7be8: $61
	sbc  e                                           ; $7be9: $9b
	ld   [hl], l                                     ; $7bea: $75
	ld   h, a                                        ; $7beb: $67
	adc  l                                           ; $7bec: $8d
	sbc  d                                           ; $7bed: $9a
	ld   h, e                                        ; $7bee: $63
	and  c                                           ; $7bef: $a1
	sbc  a                                           ; $7bf0: $9f
	dec  c                                           ; $7bf1: $0d
	inc  b                                           ; $7bf2: $04
	ld   l, l                                        ; $7bf3: $6d
	ld   a, h                                        ; $7bf4: $7c
	ld   a, b                                        ; $7bf5: $78
	adc  h                                           ; $7bf6: $8c
	rst  $38                                         ; $7bf7: $ff
	ld   d, [hl]                                     ; $7bf8: $56
	rst  $38                                         ; $7bf9: $ff
	rst  $38                                         ; $7bfa: $ff
	ld   a, l                                        ; $7bfb: $7d
	rst  $38                                         ; $7bfc: $ff
	rst  $38                                         ; $7bfd: $ff
	rst  $38                                         ; $7bfe: $ff
	dec  c                                           ; $7bff: $0d
	nop                                              ; $7c00: $00
	dec  c                                           ; $7c01: $0d
	nop                                              ; $7c02: $00
	nop                                              ; $7c03: $00
	inc  c                                           ; $7c04: $0c
	ld   [bc], a                                     ; $7c05: $02
	ld   c, $03                                      ; $7c06: $0e $03
	ld   bc, $9a50                                   ; $7c08: $01 $50 $9a
	rst  $38                                         ; $7c0b: $ff
	rst  $38                                         ; $7c0c: $ff
	ld   sp, hl                                      ; $7c0d: $f9
	db   $10                                         ; $7c0e: $10
	ld   e, c                                        ; $7c0f: $59
	sub  a                                           ; $7c10: $97
	rst  $38                                         ; $7c11: $ff
	ld   l, [hl]                                     ; $7c12: $6e
	rst  $38                                         ; $7c13: $ff
	ld   e, d                                        ; $7c14: $5a
	rst  $38                                         ; $7c15: $ff
	rst  $38                                         ; $7c16: $ff
	dec  c                                           ; $7c17: $0d
	nop                                              ; $7c18: $00
	ld   a, [bc]                                     ; $7c19: $0a
	ld   l, $01                                      ; $7c1a: $2e $01
	nop                                              ; $7c1c: $00
	add  hl, hl                                      ; $7c1d: $29
	ld   b, $00                                      ; $7c1e: $06 $00
	dec  b                                           ; $7c20: $05
	ld   b, b                                        ; $7c21: $40
	ld   b, e                                        ; $7c22: $43
	inc  bc                                          ; $7c23: $03
	ld   b, e                                        ; $7c24: $43
	ld   bc, $2801                                   ; $7c25: $01 $01 $28
	nop                                              ; $7c28: $00
	inc  e                                           ; $7c29: $1c
	ld   [bc], a                                     ; $7c2a: $02
	nop                                              ; $7c2b: $00
	nop                                              ; $7c2c: $00
	ld   bc, $0458                                   ; $7c2d: $01 $58 $04
	ld   a, e                                        ; $7c30: $7b
	sbc  d                                           ; $7c31: $9a
	ld   h, e                                        ; $7c32: $63
	adc  h                                           ; $7c33: $8c
	ld   [hl], l                                     ; $7c34: $75
	ld   h, l                                        ; $7c35: $65
	ld   l, l                                        ; $7c36: $6d
	rst  $38                                         ; $7c37: $ff
	rst  $38                                         ; $7c38: $ff
	dec  c                                           ; $7c39: $0d
	nop                                              ; $7c3a: $00
	inc  e                                           ; $7c3b: $1c
	ld   [bc], a                                     ; $7c3c: $02
	inc  bc                                          ; $7c3d: $03
	inc  bc                                          ; $7c3e: $03
	ld   bc, $9750                                   ; $7c3f: $01 $50 $97
	ld   sp, hl                                      ; $7c42: $f9
	db   $10                                         ; $7c43: $10
	ld   [hl], a                                     ; $7c44: $77
	ld   d, h                                        ; $7c45: $54
	ld   h, l                                        ; $7c46: $65
	ld   l, l                                        ; $7c47: $6d
	and  c                                           ; $7c48: $a1
	ld   [hl], l                                     ; $7c49: $75
	ld   h, a                                        ; $7c4a: $67
	ld   a, h                                        ; $7c4b: $7c
	ld   sp, hl                                      ; $7c4c: $f9
	dec  c                                           ; $7c4d: $0d
	ld   [bc], a                                     ; $7c4e: $02
	ld   [hl], d                                     ; $7c4f: $72
	ld   e, d                                        ; $7c50: $5a
	inc  bc                                          ; $7c51: $03
	xor  l                                           ; $7c52: $ad
	ld   [hl], c                                     ; $7c53: $71
	inc  bc                                          ; $7c54: $03
	ld   a, [bc]                                     ; $7c55: $0a
	ld   [hl], l                                     ; $7c56: $75
	ld   h, a                                        ; $7c57: $67
	sbc  l                                           ; $7c58: $9d
	sub  [hl]                                        ; $7c59: $96
	sbc  a                                           ; $7c5a: $9f
	dec  c                                           ; $7c5b: $0d
	nop                                              ; $7c5c: $00
	ld   a, [bc]                                     ; $7c5d: $0a
	rrca                                             ; $7c5e: $0f
	nop                                              ; $7c5f: $00
	ld   bc, $5601                                   ; $7c60: $01 $01 $56
	ld   d, [hl]                                     ; $7c63: $56
	rst  $38                                         ; $7c64: $ff
	rst  $38                                         ; $7c65: $ff
	ld   a, b                                        ; $7c66: $78
	and  c                                           ; $7c67: $a1
	ld   l, [hl]                                     ; $7c68: $6e
	ld   e, c                                        ; $7c69: $59
	ld   h, e                                        ; $7c6a: $63
	ld   [hl], c                                     ; $7c6b: $71
	ld   e, e                                        ; $7c6c: $5b
	ld   e, c                                        ; $7c6d: $59
	sub  a                                           ; $7c6e: $97
	dec  c                                           ; $7c6f: $0d
	inc  b                                           ; $7c70: $04
	dec  c                                           ; $7c71: $0d
	ld   e, d                                        ; $7c72: $5a
	ld   l, [hl]                                     ; $7c73: $6e
	sbc  c                                           ; $7c74: $99
	ld   e, l                                        ; $7c75: $5d
	ld   [hl], h                                     ; $7c76: $74
	rst  $38                                         ; $7c77: $ff
	rst  $38                                         ; $7c78: $ff
	dec  c                                           ; $7c79: $0d
	nop                                              ; $7c7a: $00
	ld   a, [bc]                                     ; $7c7b: $0a
	ld   bc, $6254                                   ; $7c7c: $01 $54 $62
	rst  $38                                         ; $7c7f: $ff
	rst  $38                                         ; $7c80: $ff
	ld   e, c                                        ; $7c81: $59
	rst  $38                                         ; $7c82: $ff
	rst  $38                                         ; $7c83: $ff
	ld   a, b                                        ; $7c84: $78
	rst  $38                                         ; $7c85: $ff
	rst  $38                                         ; $7c86: $ff
	dec  c                                           ; $7c87: $0d
	nop                                              ; $7c88: $00
	dec  c                                           ; $7c89: $0d
	nop                                              ; $7c8a: $00
	nop                                              ; $7c8b: $00
	inc  c                                           ; $7c8c: $0c
	ld   [bc], a                                     ; $7c8d: $02
	ld   c, $03                                      ; $7c8e: $0e $03
	ld   bc, $9a50                                   ; $7c90: $01 $50 $9a
	rst  $38                                         ; $7c93: $ff
	rst  $38                                         ; $7c94: $ff
	rst  $38                                         ; $7c95: $ff
	ld   sp, hl                                      ; $7c96: $f9
	dec  c                                           ; $7c97: $0d
	ld   [hl], a                                     ; $7c98: $77
	ld   d, h                                        ; $7c99: $54
	ld   h, l                                        ; $7c9a: $65
	rst  $38                                         ; $7c9b: $ff
	rst  $38                                         ; $7c9c: $ff
	ld   l, l                                        ; $7c9d: $6d
	rst  $38                                         ; $7c9e: $ff
	rst  $38                                         ; $7c9f: $ff
	and  c                                           ; $7ca0: $a1
	rst  $38                                         ; $7ca1: $ff
	rst  $38                                         ; $7ca2: $ff
	dec  c                                           ; $7ca3: $0d
	nop                                              ; $7ca4: $00
	ld   a, [bc]                                     ; $7ca5: $0a
	ld   l, $01                                      ; $7ca6: $2e $01
	nop                                              ; $7ca8: $00
	nop                                              ; $7ca9: $00
	rrca                                             ; $7caa: $0f
	ld   [bc], a                                     ; $7cab: $02
	dec  b                                           ; $7cac: $05
	ld   bc, $546b                                   ; $7cad: $01 $6b $54
	ld   [hl], l                                     ; $7cb0: $75
	ld   h, a                                        ; $7cb1: $67
	ld   e, c                                        ; $7cb2: $59
	rst  $38                                         ; $7cb3: $ff
	rst  $38                                         ; $7cb4: $ff
	dec  c                                           ; $7cb5: $0d
	sbc  l                                           ; $7cb6: $9d
	ld   e, c                                        ; $7cb7: $59
	sbc  b                                           ; $7cb8: $98
	adc  h                                           ; $7cb9: $8c
	ld   h, l                                        ; $7cba: $65
	ld   l, l                                        ; $7cbb: $6d
	sbc  l                                           ; $7cbc: $9d
	sbc  a                                           ; $7cbd: $9f
	dec  c                                           ; $7cbe: $0d
	nop                                              ; $7cbf: $00
	ld   a, [bc]                                     ; $7cc0: $0a
	inc  e                                           ; $7cc1: $1c
	ld   [bc], a                                     ; $7cc2: $02
	nop                                              ; $7cc3: $00
	nop                                              ; $7cc4: $00
	ld   bc, $6d9d                                   ; $7cc5: $01 $9d $6d
	ld   e, l                                        ; $7cc8: $5d
	ld   h, l                                        ; $7cc9: $65
	ld   a, h                                        ; $7cca: $7c
	inc  bc                                          ; $7ccb: $03
	ld   l, l                                        ; $7ccc: $6d
	dec  b                                           ; $7ccd: $05
	add  hl, de                                      ; $7cce: $19
	ld   a, l                                        ; $7ccf: $7d
	sbc  [hl]                                        ; $7cd0: $9e
	dec  c                                           ; $7cd1: $0d
	inc  bc                                          ; $7cd2: $03
	jp   nc, $2c04                                   ; $7cd3: $d2 $04 $2c

	ld   [hl], l                                     ; $7cd6: $75
	ld   h, a                                        ; $7cd7: $67

Call_045_7cd8:
	sbc  l                                           ; $7cd8: $9d
	sub  [hl]                                        ; $7cd9: $96
	sbc  a                                           ; $7cda: $9f
	dec  c                                           ; $7cdb: $0d
	nop                                              ; $7cdc: $00
	ld   a, [bc]                                     ; $7cdd: $0a
	ld   bc, $9003                                   ; $7cde: $01 $03 $90
	inc  bc                                          ; $7ce1: $03
	cp   e                                           ; $7ce2: $bb
	inc  b                                           ; $7ce3: $04
	ld   [hl], a                                     ; $7ce4: $77
	inc  bc                                          ; $7ce5: $03
	or   l                                           ; $7ce6: $b5
	dec  b                                           ; $7ce7: $05
	inc  d                                           ; $7ce8: $14
	ld   a, h                                        ; $7ce9: $7c
	inc  bc                                          ; $7cea: $03
	jp   nc, $2c04                                   ; $7ceb: $d2 $04 $2c

	inc  bc                                          ; $7cee: $03
	db   $10                                         ; $7cef: $10
	and  b                                           ; $7cf0: $a0
	ld   [bc], a                                     ; $7cf1: $02
	and  d                                           ; $7cf2: $a2
	add  h                                           ; $7cf3: $84
	dec  c                                           ; $7cf4: $0d
	ld   h, c                                        ; $7cf5: $61
	halt                                             ; $7cf6: $76
	ld   [hl], l                                     ; $7cf7: $75
	sbc  [hl]                                        ; $7cf8: $9e
	inc  bc                                          ; $7cf9: $03
	and  [hl]                                        ; $7cfa: $a6
	inc  bc                                          ; $7cfb: $03
	ld   [hl], b                                     ; $7cfc: $70
	ld   h, e                                        ; $7cfd: $63
	and  b                                           ; $7cfe: $a0
	inc  b                                           ; $7cff: $04
	pop  de                                          ; $7d00: $d1
	ld   a, c                                        ; $7d01: $79
	ld   [hl], d                                     ; $7d02: $72
	ld   e, a                                        ; $7d03: $5f
	ld   [hl], h                                     ; $7d04: $74
	dec  c                                           ; $7d05: $0d
	ld   d, d                                        ; $7d06: $52
	ld   l, l                                        ; $7d07: $6d
	ld   l, [hl]                                     ; $7d08: $6e
	ld   e, e                                        ; $7d09: $5b
	adc  h                                           ; $7d0a: $8c
	ld   h, a                                        ; $7d0b: $67
	sbc  l                                           ; $7d0c: $9d
	sbc  a                                           ; $7d0d: $9f
	dec  c                                           ; $7d0e: $0d
	nop                                              ; $7d0f: $00
	ld   a, [bc]                                     ; $7d10: $0a
	inc  e                                           ; $7d11: $1c
	ld   [bc], a                                     ; $7d12: $02
	ld   [bc], a                                     ; $7d13: $02
	ld   [bc], a                                     ; $7d14: $02
	ld   bc, $7d75                                   ; $7d15: $01 $75 $7d
	sbc  [hl]                                        ; $7d18: $9e
	adc  h                                           ; $7d19: $8c
	ld   d, d                                        ; $7d1a: $52
	sbc  b                                           ; $7d1b: $98
	adc  h                                           ; $7d1c: $8c
	ld   h, a                                        ; $7d1d: $67
	sbc  l                                           ; $7d1e: $9d
	sub  [hl]                                        ; $7d1f: $96
	ld   a, [$000d]                                  ; $7d20: $fa $0d $00
	ld   a, [bc]                                     ; $7d23: $0a
	ld   b, $56                                      ; $7d24: $06 $56
	inc  bc                                          ; $7d26: $03
	rlca                                             ; $7d27: $07
	ld   e, e                                        ; $7d28: $5b
	ld   b, $02                                      ; $7d29: $06 $02
	nop                                              ; $7d2b: $00
	ld   bc, $2208                                   ; $7d2c: $01 $08 $22
	nop                                              ; $7d2f: $00
	inc  e                                           ; $7d30: $1c
	ld   [bc], a                                     ; $7d31: $02
	nop                                              ; $7d32: $00
	nop                                              ; $7d33: $00
	ld   bc, $a161                                   ; $7d34: $01 $61 $a1
	ld   a, c                                        ; $7d37: $79
	ld   l, a                                        ; $7d38: $6f
	ld   a, l                                        ; $7d39: $7d
	sbc  [hl]                                        ; $7d3a: $9e
	ld   [$6300], sp                                 ; $7d3b: $08 $00 $63
	and  c                                           ; $7d3e: $a1
	sbc  a                                           ; $7d3f: $9f
	dec  c                                           ; $7d40: $0d
	ld   l, e                                        ; $7d41: $6b
	sbc  d                                           ; $7d42: $9a
	ld   [hl], l                                     ; $7d43: $75
	ld   a, l                                        ; $7d44: $7d
	sbc  [hl]                                        ; $7d45: $9e
	ld   h, e                                        ; $7d46: $63
	ld   [hl], c                                     ; $7d47: $71
	ld   l, e                                        ; $7d48: $6b
	ld   e, l                                        ; $7d49: $5d
	inc  bc                                          ; $7d4a: $03
	ld   l, l                                        ; $7d4b: $6d
	dec  b                                           ; $7d4c: $05
	add  hl, de                                      ; $7d4d: $19
	and  b                                           ; $7d4e: $a0
	dec  c                                           ; $7d4f: $0d
	dec  b                                           ; $7d50: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7d51: $cf
	adc  a                                           ; $7d52: $8f
	adc  h                                           ; $7d53: $8c
	ld   h, a                                        ; $7d54: $67
	sbc  l                                           ; $7d55: $9d
	sub  [hl]                                        ; $7d56: $96
	sbc  a                                           ; $7d57: $9f
	dec  c                                           ; $7d58: $0d
	nop                                              ; $7d59: $00
	ld   a, [bc]                                     ; $7d5a: $0a
	dec  h                                           ; $7d5b: $25
	ld   [bc], a                                     ; $7d5c: $02
	rlca                                             ; $7d5d: $07
	cp   a                                           ; $7d5e: $bf
	inc  b                                           ; $7d5f: $04
	inc  bc                                          ; $7d60: $03
	jr   nz, jr_045_7d64                             ; $7d61: $20 $01

	nop                                              ; $7d63: $00

jr_045_7d64:
	jr   nz, jr_045_7d66                             ; $7d64: $20 $00

jr_045_7d66:
	inc  e                                           ; $7d66: $1c
	ld   [bc], a                                     ; $7d67: $02
	nop                                              ; $7d68: $00
	nop                                              ; $7d69: $00
	ld   bc, $0458                                   ; $7d6a: $01 $58 $04
	ld   a, e                                        ; $7d6d: $7b
	sbc  d                                           ; $7d6e: $9a
	ld   h, e                                        ; $7d6f: $63
	adc  h                                           ; $7d70: $8c
	sbc  a                                           ; $7d71: $9f
	dec  c                                           ; $7d72: $0d
	nop                                              ; $7d73: $00
	dec  b                                           ; $7d74: $05
	ld   b, b                                        ; $7d75: $40
	ld   b, e                                        ; $7d76: $43
	inc  bc                                          ; $7d77: $03
	ld   b, e                                        ; $7d78: $43
	ld   bc, $2801                                   ; $7d79: $01 $01 $28
	nop                                              ; $7d7c: $00
	ld   bc, $a502                                   ; $7d7d: $01 $02 $a5
	inc  b                                           ; $7d80: $04
	xor  d                                           ; $7d81: $aa
	ld   a, l                                        ; $7d82: $7d
	ld   h, c                                        ; $7d83: $61
	sbc  d                                           ; $7d84: $9a
	ld   e, l                                        ; $7d85: $5d
	sub  a                                           ; $7d86: $97
	ld   d, d                                        ; $7d87: $52
	ld   a, c                                        ; $7d88: $79
	dec  c                                           ; $7d89: $0d
	ld   h, l                                        ; $7d8a: $65
	ld   [hl], h                                     ; $7d8b: $74
	ld   e, b                                        ; $7d8c: $58
	ld   e, e                                        ; $7d8d: $5b
	adc  h                                           ; $7d8e: $8c
	ld   h, a                                        ; $7d8f: $67
	sbc  l                                           ; $7d90: $9d
	sbc  a                                           ; $7d91: $9f
	dec  c                                           ; $7d92: $0d
	nop                                              ; $7d93: $00
	ld   a, [bc]                                     ; $7d94: $0a
	ld   bc, $9a6b                                   ; $7d95: $01 $6b $9a
	ld   [hl], l                                     ; $7d98: $75
	ld   a, l                                        ; $7d99: $7d
	sbc  [hl]                                        ; $7d9a: $9e
	inc  b                                           ; $7d9b: $04
	adc  a                                           ; $7d9c: $8f
	inc  b                                           ; $7d9d: $04
	xor  d                                           ; $7d9e: $aa
	ld   a, h                                        ; $7d9f: $7c
	ld   [bc], a                                     ; $7da0: $02
	or   d                                           ; $7da1: $b2
	inc  bc                                          ; $7da2: $03
	ld   c, a                                        ; $7da3: $4f
	ld   a, h                                        ; $7da4: $7c
	inc  bc                                          ; $7da5: $03
	ld   l, l                                        ; $7da6: $6d
	dec  b                                           ; $7da7: $05
	add  hl, de                                      ; $7da8: $19
	and  b                                           ; $7da9: $a0
	dec  c                                           ; $7daa: $0d
	inc  bc                                          ; $7dab: $03
	ld   a, [hl]                                     ; $7dac: $7e
	sbc  l                                           ; $7dad: $9d
	sbc  b                                           ; $7dae: $98
	adc  h                                           ; $7daf: $8c
	ld   h, a                                        ; $7db0: $67
	sbc  a                                           ; $7db1: $9f
	dec  c                                           ; $7db2: $0d
	nop                                              ; $7db3: $00
	ld   a, [bc]                                     ; $7db4: $0a
	dec  c                                           ; $7db5: $0d
	nop                                              ; $7db6: $00
	nop                                              ; $7db7: $00
	rrca                                             ; $7db8: $0f
	nop                                              ; $7db9: $00
	ld   bc, $1c00                                   ; $7dba: $01 $00 $1c
	ld   [bc], a                                     ; $7dbd: $02
	nop                                              ; $7dbe: $00
	nop                                              ; $7dbf: $00
	ld   bc, $a161                                   ; $7dc0: $01 $61 $a1
	ld   a, c                                        ; $7dc3: $79
	ld   l, a                                        ; $7dc4: $6f
	ld   a, l                                        ; $7dc5: $7d
	sbc  [hl]                                        ; $7dc6: $9e
	ld   [$6308], sp                                 ; $7dc7: $08 $08 $63
	and  c                                           ; $7dca: $a1
	sbc  a                                           ; $7dcb: $9f
	dec  c                                           ; $7dcc: $0d
	ld   l, e                                        ; $7dcd: $6b
	sbc  d                                           ; $7dce: $9a
	ld   [hl], l                                     ; $7dcf: $75
	ld   a, l                                        ; $7dd0: $7d
	sbc  [hl]                                        ; $7dd1: $9e
	ld   h, e                                        ; $7dd2: $63
	ld   [hl], c                                     ; $7dd3: $71
	ld   l, e                                        ; $7dd4: $6b
	ld   e, l                                        ; $7dd5: $5d
	inc  bc                                          ; $7dd6: $03
	ld   l, l                                        ; $7dd7: $6d
	dec  b                                           ; $7dd8: $05
	add  hl, de                                      ; $7dd9: $19
	and  b                                           ; $7dda: $a0
	dec  c                                           ; $7ddb: $0d
	dec  b                                           ; $7ddc: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ddd: $cf
	adc  a                                           ; $7dde: $8f
	adc  h                                           ; $7ddf: $8c
	ld   h, a                                        ; $7de0: $67
	sbc  l                                           ; $7de1: $9d
	sub  [hl]                                        ; $7de2: $96
	sbc  a                                           ; $7de3: $9f
	dec  c                                           ; $7de4: $0d
	nop                                              ; $7de5: $00
	ld   a, [bc]                                     ; $7de6: $0a
	ld   b, $fa                                      ; $7de7: $06 $fa
	dec  b                                           ; $7de9: $05
	rlca                                             ; $7dea: $07
	ld   [hl], d                                     ; $7deb: $72
	rlca                                             ; $7dec: $07
	inc  bc                                          ; $7ded: $03
	ld   b, e                                        ; $7dee: $43
	ld   bc, $2504                                   ; $7def: $01 $04 $25
	nop                                              ; $7df2: $00
	inc  e                                           ; $7df3: $1c
	ld   [bc], a                                     ; $7df4: $02
	nop                                              ; $7df5: $00
	nop                                              ; $7df6: $00
	ld   bc, $a161                                   ; $7df7: $01 $61 $a1
	ld   a, c                                        ; $7dfa: $79
	ld   l, a                                        ; $7dfb: $6f
	ld   a, l                                        ; $7dfc: $7d
	sbc  [hl]                                        ; $7dfd: $9e
	ld   [$6300], sp                                 ; $7dfe: $08 $00 $63
	and  c                                           ; $7e01: $a1
	sbc  a                                           ; $7e02: $9f
	dec  c                                           ; $7e03: $0d
	ld   l, e                                        ; $7e04: $6b
	sbc  d                                           ; $7e05: $9a
	ld   [hl], l                                     ; $7e06: $75
	ld   a, l                                        ; $7e07: $7d
	sbc  [hl]                                        ; $7e08: $9e
	ld   h, e                                        ; $7e09: $63
	ld   [hl], c                                     ; $7e0a: $71
	ld   l, e                                        ; $7e0b: $6b
	ld   e, l                                        ; $7e0c: $5d
	inc  bc                                          ; $7e0d: $03
	ld   l, l                                        ; $7e0e: $6d
	dec  b                                           ; $7e0f: $05
	add  hl, de                                      ; $7e10: $19
	and  b                                           ; $7e11: $a0
	dec  c                                           ; $7e12: $0d
	dec  b                                           ; $7e13: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e14: $cf
	adc  a                                           ; $7e15: $8f
	adc  h                                           ; $7e16: $8c
	ld   h, a                                        ; $7e17: $67
	sbc  l                                           ; $7e18: $9d
	sub  [hl]                                        ; $7e19: $96
	sbc  a                                           ; $7e1a: $9f
	dec  c                                           ; $7e1b: $0d
	nop                                              ; $7e1c: $00
	ld   a, [bc]                                     ; $7e1d: $0a
	dec  h                                           ; $7e1e: $25
	ld   [bc], a                                     ; $7e1f: $02
	rlca                                             ; $7e20: $07
	cp   a                                           ; $7e21: $bf
	inc  b                                           ; $7e22: $04
	inc  bc                                          ; $7e23: $03
	jr   nz, jr_045_7e27                             ; $7e24: $20 $01

	nop                                              ; $7e26: $00

jr_045_7e27:
	jr   nz, jr_045_7e29                             ; $7e27: $20 $00

jr_045_7e29:
	inc  e                                           ; $7e29: $1c
	ld   [bc], a                                     ; $7e2a: $02
	nop                                              ; $7e2b: $00
	nop                                              ; $7e2c: $00
	ld   bc, $5978                                   ; $7e2d: $01 $78 $59
	ld   a, b                                        ; $7e30: $78
	ld   e, c                                        ; $7e31: $59
	or   [hl]                                        ; $7e32: $b6
	rst  JumpTable                                         ; $7e33: $df
	ld   a, c                                        ; $7e34: $79
	ld   a, b                                        ; $7e35: $78
	ld   [hl], c                                     ; $7e36: $71
	ld   [hl], h                                     ; $7e37: $74
	dec  c                                           ; $7e38: $0d
	ld   e, e                                        ; $7e39: $5b
	ld   l, l                                        ; $7e3a: $6d
	and  c                                           ; $7e3b: $a1
	ld   h, [hl]                                     ; $7e3c: $66
	sub  c                                           ; $7e3d: $91
	ld   d, b                                        ; $7e3e: $50
	sbc  b                                           ; $7e3f: $98
	adc  h                                           ; $7e40: $8c
	ld   l, c                                        ; $7e41: $69
	and  c                                           ; $7e42: $a1
	ld   h, c                                        ; $7e43: $61
	halt                                             ; $7e44: $76
	ld   sp, hl                                      ; $7e45: $f9
	dec  c                                           ; $7e46: $0d
	nop                                              ; $7e47: $00
	ld   a, [bc]                                     ; $7e48: $0a
	ld   bc, $508c                                   ; $7e49: $01 $8c $50
	sbc  [hl]                                        ; $7e4c: $9e
	ld   h, c                                        ; $7e4d: $61
	ld   a, h                                        ; $7e4e: $7c
	sbc  l                                           ; $7e4f: $9d
	ld   l, l                                        ; $7e50: $6d
	ld   e, l                                        ; $7e51: $5d
	ld   h, l                                        ; $7e52: $65
	ld   e, d                                        ; $7e53: $5a
	ld   [bc], a                                     ; $7e54: $02
	ret  nc                                          ; $7e55: $d0

	ld   d, [hl]                                     ; $7e56: $56
	ld   [hl], h                                     ; $7e57: $74
	ld   d, d                                        ; $7e58: $52
	dec  c                                           ; $7e59: $0d
	sbc  c                                           ; $7e5a: $99
	ld   a, h                                        ; $7e5b: $7c
	ld   [hl], l                                     ; $7e5c: $75
	ld   h, a                                        ; $7e5d: $67
	ld   e, c                                        ; $7e5e: $59
	sub  a                                           ; $7e5f: $97
	sbc  [hl]                                        ; $7e60: $9e
	inc  b                                           ; $7e61: $04
	jr   jr_045_7e67                                 ; $7e62: $18 $03

	sbc  c                                           ; $7e64: $99
	ld   [hl], l                                     ; $7e65: $75
	ld   h, a                                        ; $7e66: $67

jr_045_7e67:
	sbc  l                                           ; $7e67: $9d
	ld   a, e                                        ; $7e68: $7b
	sbc  a                                           ; $7e69: $9f
	dec  c                                           ; $7e6a: $0d
	nop                                              ; $7e6b: $00
	inc  e                                           ; $7e6c: $1c
	ld   [bc], a                                     ; $7e6d: $02
	jr   nc, jr_045_7e89                             ; $7e6e: $30 $19

	ld   bc, $fb58                                   ; $7e70: $01 $58 $fb
	adc  c                                           ; $7e73: $89
	adc  c                                           ; $7e74: $89
	adc  c                                           ; $7e75: $89
	adc  c                                           ; $7e76: $89
	adc  c                                           ; $7e77: $89
	adc  c                                           ; $7e78: $89
	sbc  a                                           ; $7e79: $9f
	dec  c                                           ; $7e7a: $0d
	nop                                              ; $7e7b: $00
	ld   a, [bc]                                     ; $7e7c: $0a
	inc  e                                           ; $7e7d: $1c
	ld   [bc], a                                     ; $7e7e: $02
	ld   bc, $0101                                   ; $7e7f: $01 $01 $01
	ld   h, c                                        ; $7e82: $61
	sbc  d                                           ; $7e83: $9a
	ld   e, c                                        ; $7e84: $59
	sub  a                                           ; $7e85: $97
	sub  b                                           ; $7e86: $90
	sbc  [hl]                                        ; $7e87: $9e
	ld   h, c                                        ; $7e88: $61

jr_045_7e89:
	ld   a, h                                        ; $7e89: $7c
	inc  bc                                          ; $7e8a: $03
	cp   $03                                         ; $7e8b: $fe $03
	add  [hl]                                        ; $7e8d: $86
	ld   [hl], l                                     ; $7e8e: $75
	dec  c                                           ; $7e8f: $0d
	ld   e, d                                        ; $7e90: $5a
	and  c                                           ; $7e91: $a1
	ld   a, [hl]                                     ; $7e92: $7e
	sbc  c                                           ; $7e93: $99
	ld   a, h                                        ; $7e94: $7c
	ld   [hl], l                                     ; $7e95: $75
	ld   h, a                                        ; $7e96: $67
	sbc  l                                           ; $7e97: $9d
	sub  [hl]                                        ; $7e98: $96
	sbc  a                                           ; $7e99: $9f
	dec  c                                           ; $7e9a: $0d
	nop                                              ; $7e9b: $00
	ld   a, [bc]                                     ; $7e9c: $0a
	inc  e                                           ; $7e9d: $1c
	ld   [bc], a                                     ; $7e9e: $02
	nop                                              ; $7e9f: $00
	nop                                              ; $7ea0: $00
	ld   bc, $9a6b                                   ; $7ea1: $01 $6b $9a
	ld   [hl], l                                     ; $7ea4: $75
	ld   a, l                                        ; $7ea5: $7d
	sbc  [hl]                                        ; $7ea6: $9e
	inc  b                                           ; $7ea7: $04
	adc  a                                           ; $7ea8: $8f
	inc  b                                           ; $7ea9: $04
	xor  d                                           ; $7eaa: $aa
	ld   a, h                                        ; $7eab: $7c
	ld   [bc], a                                     ; $7eac: $02
	or   d                                           ; $7ead: $b2
	inc  bc                                          ; $7eae: $03
	ld   c, a                                        ; $7eaf: $4f
	ld   a, h                                        ; $7eb0: $7c
	inc  bc                                          ; $7eb1: $03
	ld   l, l                                        ; $7eb2: $6d
	dec  b                                           ; $7eb3: $05
	add  hl, de                                      ; $7eb4: $19
	and  b                                           ; $7eb5: $a0
	dec  c                                           ; $7eb6: $0d
	nop                                              ; $7eb7: $00
	dec  b                                           ; $7eb8: $05
	ld   b, b                                        ; $7eb9: $40
	ld   b, e                                        ; $7eba: $43
	inc  bc                                          ; $7ebb: $03
	ld   b, e                                        ; $7ebc: $43
	ld   bc, $2801                                   ; $7ebd: $01 $01 $28
	nop                                              ; $7ec0: $00
	ld   bc, $7e03                                   ; $7ec1: $01 $03 $7e
	sbc  l                                           ; $7ec4: $9d
	sbc  b                                           ; $7ec5: $98
	adc  h                                           ; $7ec6: $8c
	ld   h, a                                        ; $7ec7: $67
	sbc  a                                           ; $7ec8: $9f
	dec  c                                           ; $7ec9: $0d
	nop                                              ; $7eca: $00
	ld   a, [bc]                                     ; $7ecb: $0a
	dec  c                                           ; $7ecc: $0d
	nop                                              ; $7ecd: $00
	nop                                              ; $7ece: $00
	rrca                                             ; $7ecf: $0f
	nop                                              ; $7ed0: $00
	ld   bc, $1c00                                   ; $7ed1: $01 $00 $1c
	ld   [bc], a                                     ; $7ed4: $02
	nop                                              ; $7ed5: $00
	nop                                              ; $7ed6: $00
	ld   bc, $a161                                   ; $7ed7: $01 $61 $a1
	ld   a, c                                        ; $7eda: $79
	ld   l, a                                        ; $7edb: $6f
	ld   a, l                                        ; $7edc: $7d
	sbc  [hl]                                        ; $7edd: $9e
	ld   [$6300], sp                                 ; $7ede: $08 $00 $63
	and  c                                           ; $7ee1: $a1
	sbc  a                                           ; $7ee2: $9f
	dec  c                                           ; $7ee3: $0d
	ld   l, e                                        ; $7ee4: $6b
	sbc  d                                           ; $7ee5: $9a
	ld   [hl], l                                     ; $7ee6: $75
	ld   a, l                                        ; $7ee7: $7d
	sbc  [hl]                                        ; $7ee8: $9e
	ld   h, e                                        ; $7ee9: $63
	ld   [hl], c                                     ; $7eea: $71
	ld   l, e                                        ; $7eeb: $6b
	ld   e, l                                        ; $7eec: $5d
	inc  bc                                          ; $7eed: $03
	ld   l, l                                        ; $7eee: $6d
	dec  b                                           ; $7eef: $05
	add  hl, de                                      ; $7ef0: $19
	and  b                                           ; $7ef1: $a0
	dec  c                                           ; $7ef2: $0d
	dec  b                                           ; $7ef3: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ef4: $cf
	adc  a                                           ; $7ef5: $8f
	adc  h                                           ; $7ef6: $8c
	ld   h, a                                        ; $7ef7: $67
	sbc  l                                           ; $7ef8: $9d
	sub  [hl]                                        ; $7ef9: $96
	sbc  a                                           ; $7efa: $9f
	dec  c                                           ; $7efb: $0d
	nop                                              ; $7efc: $00
	ld   a, [bc]                                     ; $7efd: $0a
	dec  h                                           ; $7efe: $25
	ld   [bc], a                                     ; $7eff: $02
	rlca                                             ; $7f00: $07
	cp   a                                           ; $7f01: $bf
	inc  b                                           ; $7f02: $04
	inc  bc                                          ; $7f03: $03
	jr   nz, jr_045_7f07                             ; $7f04: $20 $01

	nop                                              ; $7f06: $00

jr_045_7f07:
	jr   nz, jr_045_7f09                             ; $7f07: $20 $00

jr_045_7f09:
	inc  e                                           ; $7f09: $1c
	ld   [bc], a                                     ; $7f0a: $02
	ld   bc, $0101                                   ; $7f0b: $01 $01 $01
	ld   a, b                                        ; $7f0e: $78
	ld   e, c                                        ; $7f0f: $59
	ld   a, b                                        ; $7f10: $78
	ld   e, c                                        ; $7f11: $59
	ld   [hl], l                                     ; $7f12: $75
	ld   h, a                                        ; $7f13: $67
	sbc  l                                           ; $7f14: $9d
	sbc  a                                           ; $7f15: $9f
	dec  c                                           ; $7f16: $0d
	ld   h, c                                        ; $7f17: $61
	ld   a, h                                        ; $7f18: $7c
	inc  bc                                          ; $7f19: $03
	cp   $03                                         ; $7f1a: $fe $03
	add  [hl]                                        ; $7f1c: $86
	ld   [hl], l                                     ; $7f1d: $75
	ld   e, d                                        ; $7f1e: $5a
	and  c                                           ; $7f1f: $a1
	ld   a, [hl]                                     ; $7f20: $7e
	sbc  b                                           ; $7f21: $98
	ld   a, b                                        ; $7f22: $78
	ld   h, e                                        ; $7f23: $63
	ld   d, d                                        ; $7f24: $52
	sbc  a                                           ; $7f25: $9f
	dec  c                                           ; $7f26: $0d
	nop                                              ; $7f27: $00
	ld   a, [bc]                                     ; $7f28: $0a
	inc  e                                           ; $7f29: $1c
	ld   [bc], a                                     ; $7f2a: $02
	nop                                              ; $7f2b: $00
	nop                                              ; $7f2c: $00
	ld   bc, $9a6b                                   ; $7f2d: $01 $6b $9a
	ld   [hl], l                                     ; $7f30: $75
	ld   a, l                                        ; $7f31: $7d
	sbc  [hl]                                        ; $7f32: $9e
	inc  b                                           ; $7f33: $04
	adc  a                                           ; $7f34: $8f
	inc  b                                           ; $7f35: $04
	xor  d                                           ; $7f36: $aa
	ld   a, h                                        ; $7f37: $7c
	ld   [bc], a                                     ; $7f38: $02
	or   d                                           ; $7f39: $b2
	inc  bc                                          ; $7f3a: $03
	ld   c, a                                        ; $7f3b: $4f
	ld   a, h                                        ; $7f3c: $7c
	inc  bc                                          ; $7f3d: $03
	ld   l, l                                        ; $7f3e: $6d
	dec  b                                           ; $7f3f: $05
	add  hl, de                                      ; $7f40: $19
	and  b                                           ; $7f41: $a0
	dec  c                                           ; $7f42: $0d
	nop                                              ; $7f43: $00
	dec  b                                           ; $7f44: $05
	ld   b, b                                        ; $7f45: $40
	ld   b, e                                        ; $7f46: $43
	inc  bc                                          ; $7f47: $03
	ld   b, e                                        ; $7f48: $43
	ld   bc, $2801                                   ; $7f49: $01 $01 $28
	nop                                              ; $7f4c: $00
	ld   bc, $7e03                                   ; $7f4d: $01 $03 $7e
	sbc  l                                           ; $7f50: $9d
	sbc  b                                           ; $7f51: $98
	adc  h                                           ; $7f52: $8c
	ld   h, a                                        ; $7f53: $67
	sbc  a                                           ; $7f54: $9f
	dec  c                                           ; $7f55: $0d
	nop                                              ; $7f56: $00
	ld   a, [bc]                                     ; $7f57: $0a
	dec  c                                           ; $7f58: $0d
	nop                                              ; $7f59: $00
	nop                                              ; $7f5a: $00
	rrca                                             ; $7f5b: $0f
	nop                                              ; $7f5c: $00
	ld   bc, $0700                                   ; $7f5d: $01 $00 $07
	db   $ec                                         ; $7f60: $ec
	ld   [$4303], sp                                 ; $7f61: $08 $03 $43
	ld   bc, $2507                                   ; $7f64: $01 $07 $25
	nop                                              ; $7f67: $00
	rlca                                             ; $7f68: $07
	ld   a, d                                        ; $7f69: $7a
	add  hl, bc                                      ; $7f6a: $09
	inc  bc                                          ; $7f6b: $03
	ld   b, e                                        ; $7f6c: $43
	ld   bc, $250d                                   ; $7f6d: $01 $0d $25
	nop                                              ; $7f70: $00
	inc  e                                           ; $7f71: $1c
	ld   [bc], a                                     ; $7f72: $02
	nop                                              ; $7f73: $00
	nop                                              ; $7f74: $00
	ld   bc, $a161                                   ; $7f75: $01 $61 $a1
	ld   a, c                                        ; $7f78: $79
	ld   l, a                                        ; $7f79: $6f
	ld   a, l                                        ; $7f7a: $7d
	sbc  [hl]                                        ; $7f7b: $9e
	ld   [$6300], sp                                 ; $7f7c: $08 $00 $63
	and  c                                           ; $7f7f: $a1
	sbc  a                                           ; $7f80: $9f
	dec  c                                           ; $7f81: $0d
	ld   l, e                                        ; $7f82: $6b
	sbc  d                                           ; $7f83: $9a
	ld   [hl], l                                     ; $7f84: $75
	ld   a, l                                        ; $7f85: $7d
	sbc  [hl]                                        ; $7f86: $9e
	ld   h, e                                        ; $7f87: $63
	ld   [hl], c                                     ; $7f88: $71
	ld   l, e                                        ; $7f89: $6b
	ld   e, l                                        ; $7f8a: $5d
	inc  bc                                          ; $7f8b: $03
	ld   l, l                                        ; $7f8c: $6d
	dec  b                                           ; $7f8d: $05
	add  hl, de                                      ; $7f8e: $19
	and  b                                           ; $7f8f: $a0
	dec  c                                           ; $7f90: $0d
	dec  b                                           ; $7f91: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f92: $cf
	adc  a                                           ; $7f93: $8f
	adc  h                                           ; $7f94: $8c
	ld   h, a                                        ; $7f95: $67
	sbc  l                                           ; $7f96: $9d
	sub  [hl]                                        ; $7f97: $96
	sbc  a                                           ; $7f98: $9f
	dec  c                                           ; $7f99: $0d
	nop                                              ; $7f9a: $00
	ld   a, [bc]                                     ; $7f9b: $0a
	dec  h                                           ; $7f9c: $25
	ld   [bc], a                                     ; $7f9d: $02
	rlca                                             ; $7f9e: $07
	cp   a                                           ; $7f9f: $bf
	inc  b                                           ; $7fa0: $04
	inc  bc                                          ; $7fa1: $03
	jr   nz, jr_045_7fa5                             ; $7fa2: $20 $01

	nop                                              ; $7fa4: $00

jr_045_7fa5:
	jr   nz, jr_045_7fa7                             ; $7fa5: $20 $00

jr_045_7fa7:
	inc  e                                           ; $7fa7: $1c
	ld   [bc], a                                     ; $7fa8: $02
	ld   bc, $0101                                   ; $7fa9: $01 $01 $01
	inc  bc                                          ; $7fac: $03
	and  [hl]                                        ; $7fad: $a6
	dec  b                                           ; $7fae: $05
	call nc, Call_045_6597                           ; $7faf: $d4 $97 $65
	ld   d, d                                        ; $7fb2: $52
	inc  bc                                          ; $7fb3: $03
	ld   h, l                                        ; $7fb4: $65
	inc  bc                                          ; $7fb5: $03
	rst  $30                                         ; $7fb6: $f7
	add  h                                           ; $7fb7: $84
	sbc  b                                           ; $7fb8: $98
	ld   [hl], l                                     ; $7fb9: $75
	ld   h, a                                        ; $7fba: $67
	sbc  l                                           ; $7fbb: $9d
	dec  c                                           ; $7fbc: $0d
	ld   [$6300], sp                                 ; $7fbd: $08 $00 $63
	and  c                                           ; $7fc0: $a1
	sbc  a                                           ; $7fc1: $9f
	dec  c                                           ; $7fc2: $0d
	nop                                              ; $7fc3: $00
	ld   a, [bc]                                     ; $7fc4: $0a
	inc  e                                           ; $7fc5: $1c
	ld   [bc], a                                     ; $7fc6: $02
	nop                                              ; $7fc7: $00
	nop                                              ; $7fc8: $00
	ld   bc, $7c61                                   ; $7fc9: $01 $61 $7c
	adc  h                                           ; $7fcc: $8c
	adc  h                                           ; $7fcd: $8c
	ld   e, d                                        ; $7fce: $5a
	and  c                                           ; $7fcf: $a1
	ld   a, [hl]                                     ; $7fd0: $7e
	sbc  d                                           ; $7fd1: $9a
	ld   a, [hl]                                     ; $7fd2: $7e
	sbc  [hl]                                        ; $7fd3: $9e
	dec  c                                           ; $7fd4: $0d
	inc  bc                                          ; $7fd5: $03
	sub  b                                           ; $7fd6: $90
	inc  bc                                          ; $7fd7: $03
	cp   e                                           ; $7fd8: $bb
	inc  b                                           ; $7fd9: $04
	ld   [hl], a                                     ; $7fda: $77
	inc  bc                                          ; $7fdb: $03
	or   l                                           ; $7fdc: $b5
	dec  b                                           ; $7fdd: $05
	inc  d                                           ; $7fde: $14
	ld   a, h                                        ; $7fdf: $7c
	inc  b                                           ; $7fe0: $04
	call c, $8a02                                    ; $7fe1: $dc $02 $8a
	ld   [bc], a                                     ; $7fe4: $02
	sbc  $04                                         ; $7fe5: $de $04
	ld   [de], a                                     ; $7fe7: $12
	sub  b                                           ; $7fe8: $90
	dec  c                                           ; $7fe9: $0d
	inc  b                                           ; $7fea: $04
	cp   [hl]                                        ; $7feb: $be
	ld   [hl], l                                     ; $7fec: $75
	ld   a, l                                        ; $7fed: $7d
	ld   d, b                                        ; $7fee: $50
	sbc  b                                           ; $7fef: $98
	adc  h                                           ; $7ff0: $8c
	ld   l, c                                        ; $7ff1: $69
	and  c                                           ; $7ff2: $a1
	sbc  l                                           ; $7ff3: $9d
	sub  [hl]                                        ; $7ff4: $96
	sbc  a                                           ; $7ff5: $9f
	dec  c                                           ; $7ff6: $0d
	nop                                              ; $7ff7: $00
	ld   a, [bc]                                     ; $7ff8: $0a
	inc  e                                           ; $7ff9: $1c
	ld   [bc], a                                     ; $7ffa: $02
	jr   nc, @+$1b                                   ; $7ffb: $30 $19

	ld   bc, $8958                                   ; $7ffd: $01 $58 $89
